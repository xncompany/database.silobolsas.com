USE `silobolsas`;

# ================================================================================================

DROP TABLE IF EXISTS `metrics`;

CREATE TABLE `metrics` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_device` bigint(20) NOT NULL,
 `id_metric_type` tinyint(10) NOT NULL,
 `id_metric_status` tinyint(10) NOT NULL,
 `id_metric_unit` tinyint(10) NOT NULL,
 `amount` decimal(20,6) NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `id_device` (`id_device`),
 KEY `id_metric_type` (`id_metric_type`),
 KEY `id_metric_status` (`id_metric_status`),
 KEY `id_metric_unit` (`id_metric_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `metric_types`;

CREATE TABLE `metric_types` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_device_type` tinyint(10) unsigned NOT NULL,
 `description` varchar(64) NOT NULL,

 PRIMARY KEY (`id`),
 KEY `id_device_type` (`id_device_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `metric_units`;

CREATE TABLE `metric_units` (
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

