USE `silobolsas`;

# ================================================================================================

DROP TABLE IF EXISTS `alerts`;

CREATE TABLE `alerts` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `metric` bigint(20) unsigned NOT NULL,
 `min_amount` decimal(20,6) NOT NULL,
 `max_amount` decimal(20,6) NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `metric` (`metric`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
