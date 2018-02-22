USE `silobolsas`;

# ================================================================================================

DROP TABLE IF EXISTS `metrics`;

CREATE TABLE `metrics` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_silobag` bigint(20) NOT NULL,
 `id_spear` bigint(20) NOT NULL,
 `id_metric_type` tinyint(10) NOT NULL,
 `id_metric_status` tinyint(10) NOT NULL,
 `amount` decimal(20,6) NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `id_silobag` (`id_silobag`),
 KEY `id_spear` (`id_spear`),
 KEY `id_metric_type` (`id_metric_type`),
 KEY `id_metric_status` (`id_metric_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `metric_types`;

CREATE TABLE `metric_types` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(64) NOT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `metric_status`;

CREATE TABLE `metric_status` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(64) NOT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

