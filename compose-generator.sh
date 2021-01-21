#!/bin/bash

function renderTemplate() {
    TEMPLATE_NAME="${1}"
    envsubst < compose-templates/${TEMPLATE_NAME}.ymlt
}

function getMariaDbVersions() {
	jq -c -r '.mariadb | .[]' compose-services.json
}

function getMySQLVersions() {
	jq -c -r '.mysql | .[]' compose-services.json
}

function getPHPFPMVersions() {
	jq -c -r '.phpfpm | .[]' compose-services.json
}

function renderVersionBlock() {
    TEMPLATE_NAME="${1}"
    INPUT="${2}"
    CONTAINER_IMAGE_PREFIX="${3}"
	for VERSION in ${INPUT}; do
		export VERSION_STRING=$(jq -r '.versionName' <<< ${VERSION})
		export VERSION_INT=$(jq -r '.versionCode' <<< ${VERSION})
		export CONTAINER_IMAGE=$(jq -r '.containerImage | select (.!=null)' <<< ${VERSION})
		echo -e '\n'
		renderTemplate "${TEMPLATE_NAME}"
	done
}

export COMPOSE_SERVICES=""

export VERSION_INT="104"
COMPOSE_SERVICES+=$(renderTemplate "MariaDBRocks")

COMPOSE_SERVICES+=$(renderVersionBlock "MariaDB" "$(getMariaDbVersions)")

COMPOSE_SERVICES+=$(renderTemplate "Nginx")

COMPOSE_SERVICES+=$(renderVersionBlock "PHPFPM" "$(getPHPFPMVersions)")

COMPOSE_SERVICES+=$(renderTemplate "MySQL-replication")

COMPOSE_SERVICES+=$(renderVersionBlock "MySQL" "$(getMySQLVersions)")

COMPOSE_SERVICES+=$(renderTemplate "DisabledContainers")
renderTemplate "ComposeStructure" > docker-compose.yml
