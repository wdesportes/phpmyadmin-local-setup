#!/bin/bash
echo "checking..."
mysql --host=127.0.0.1 -u ssluser -pssluser --ssl-ca=ca-cert.pem --ssl-cert=client-cert.pem --ssl-key=client-key.pem -e 'status'
echo "done."
