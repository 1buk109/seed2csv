DROP TABLE IF EXISTS `sequences`;
CREATE TABLE `sequences` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(40) DEFAULT NULL,
  `family` varchar(40) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'seed配列名',
  `sequence` text DEFAULT NULL COMMENT 'RNA配列',
  `length` int(11) DEFAULT NULL COMMENT '配列長',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `family` (`family`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
