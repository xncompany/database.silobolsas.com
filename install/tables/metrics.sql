USE `silobolsas`;

# ================================================================================================

DROP TABLE IF EXISTS `metrics`;

CREATE TABLE `metrics` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `device` bigint(20) NOT NULL,
 `metric_type` tinyint(10) NOT NULL,
 `metric_status` tinyint(10) NOT NULL,
 `metric_unit` tinyint(10) NOT NULL,
 `amount` decimal(20,6) NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `device` (`device`),
 KEY `metric_type` (`metric_type`),
 KEY `metric_status` (`metric_status`),
 KEY `metric_unit` (`metric_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `metric_types`;

CREATE TABLE `metric_types` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `device_type` tinyint(10) unsigned NOT NULL,
 `description` varchar(64) NOT NULL,

 PRIMARY KEY (`id`),
 KEY `device_type` (`device_type`)
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

