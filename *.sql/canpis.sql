SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `canpis` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_ver_id` int(10) UNSIGNED NOT NULL,
  `target_ver_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `remote_console_id` int(10) UNSIGNED DEFAULT NULL,
  `conf` json NOT NULL,
  `last_changed_utc` timestamp NULL DEFAULT NULL,
  `last_active_utc` timestamp NULL DEFAULT NULL,
  `last_sps_upload_utc` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `canpis` (`id`, `name`, `comment`, `current_ver_id`, `target_ver_id`, `channel_id`, `remote_console_id`, `conf`, `last_changed_utc`, `last_active_utc`, `last_sps_upload_utc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '004D58', 'Demo CANPi', 3, NULL, 3, NULL, '{\"ecu\": {\"events\": {\"5C61BD90\": {\"cmd\": \"readID\", \"utc\": \"2019-02-11 18:23:12\", \"stat\": {\"numCOMMFailures\": 0, \"numCOMMRetryAttempts\": 0, \"numCOMMInvalidReadData\": 0}, \"type\": \"stat\", \"status\": \"status\"}, \"5C61C5DE\": {\"cmd\": \"readID\", \"utc\": \"2019-02-11 18:58:38\", \"stat\": {\"numCOMMFailures\": 0, \"numCOMMRetryAttempts\": 0, \"numCOMMInvalidReadData\": 0}, \"type\": \"stat\", \"status\": \"status\"}, \"5C61CA89\": {\"cmd\": \"readID\", \"utc\": \"2019-02-11 19:18:33\", \"stat\": {\"numCOMMFailures\": 0, \"numCOMMRetryAttempts\": 0, \"numCOMMInvalidReadData\": 0}, \"type\": \"stat\", \"status\": \"status\"}, \"5C61CAF6\": {\"cmd\": \"readID\", \"utc\": \"2019-02-11 19:20:22\", \"stat\": {\"numCOMMFailures\": 0, \"numCOMMRetryAttempts\": 0, \"numCOMMInvalidReadData\": 0}, \"type\": \"stat\", \"status\": \"status\"}, \"5C893129\": {\"cmd\": \"readID\", \"utc\": \"2019-03-13 16:34:49\", \"stat\": {\"numCOMMFailures\": 0, \"numCOMMRetryAttempts\": 0, \"numCOMMInvalidReadData\": 0}, \"type\": \"config\", \"status\": \"failure\", \"ecu-config\": {\"data\": \"F8CD02BE004F0C19031302163448000F00001A9818118A080000000000000000000000004D580100001A98000000000000019002FFFFFFFF0006FFFFFFFF000AFFFFFFFF000EFFFFFFFF0022FFFFFFFF0026FFFFFFFF002AFFFFFFFF0000FFFFFFFF0042FFFFFFFF0046FFFFFFFF004AFFFFFFFF004EFFFFFFFF0062FFFFFFFF0066FFFFFFFF006AFFFFFFFF006EFFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF00D794\", \"timestamp\": \"5C893129\"}, \"read-response\": \"LS0tLSBFQ1UgRmlybXdhcmUgSGFyZHdhcmUgTW9kZWwgIlFZMTE5NS1BNCIgbm90IHN1cHBvcnRlZCAtLS0tCkFOIEVSUk9SIE9DQ1VSUkVEIFdISUxFIENPTU1VTklDQVRJTkcgV0lUSCBFQ1UhLi4uUE9TU0lCTEUgSEFSRFdBUkUgRkFJTFVSRQ==\"}, \"5CADF743\": {\"cmd\": \"readID\", \"utc\": \"2019-04-10 14:01:39\", \"stat\": {\"numCOMMFailures\": 0, \"numCOMMRetryAttempts\": 0, \"numCOMMInvalidReadData\": 0}, \"type\": \"config\", \"status\": \"success\", \"ecu-config\": {\"data\": \"F8CD02BE004F0C19041002140201000F00001A9818118A080000000000000000000000004D580100001A98000000000000019002FFFFFFFF0006FFFFFFFF000AFFFFFFFF000EFFFFFFFF0022FFFFFFFF0026FFFFFFFF002AFFFFFFFF0000FFFFFFFF0042FFFFFFFF0046FFFFFFFF004AFFFFFFFF004EFFFFFFFF0062FFFFFFFF0066FFFFFFFF006AFFFFFFFF006EFFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF00231A\", \"timestamp\": \"5CADF739\"}, \"read-response\": \"F8CD0E05001100004D58E67A\"}, \"5CADF7C4\": {\"cmd\": \"readID\", \"utc\": \"2019-04-10 14:03:48\", \"stat\": {\"numCOMMFailures\": 0, \"numCOMMRetryAttempts\": 0, \"numCOMMInvalidReadData\": 0}, \"type\": \"config\", \"status\": \"success\", \"ecu-config\": {\"data\": \"F8CD02BE004F0C19041002140410000F00001A9818118A080000000000000000000000004D580100001A98000000000000019002FFFFFFFF0006FFFFFFFF000AFFFFFFFF000EFFFFFFFF0022FFFFFFFF0026FFFFFFFF002AFFFFFFFF0000FFFFFFFF0042FFFFFFFF0046FFFFFFFF004AFFFFFFFF004EFFFFFFFF0062FFFFFFFF0066FFFFFFFF006AFFFFFFFF006EFFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF0000FFFFFFFF003573\", \"timestamp\": \"5CADF7BA\"}, \"read-response\": \"F8CD0E05001100004D58E67A\"}, \"UI_Index\": [\"5C893129\", \"5CADF743\", \"5CADF7C4\"]}, \"current\": {\"event\": \"5CADF7C4\", \"stats\": {\"HISTORY-COMMFailures\": [], \"HISTORY-InvalidReadData\": [], \"HISTORY-COMMRetryAttempts\": []}, \"updated\": \"2019-04-10 14:03:58\", \"defaultBaseline\": \"55\"}}}', '2019-03-12 22:00:09', '2019-04-10 18:40:02', '2019-03-12 00:59:26', '2018-12-03 22:17:26', '2019-04-10 18:40:02', NULL);


ALTER TABLE `canpis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `canpis_name_index` (`name`);


ALTER TABLE `canpis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
