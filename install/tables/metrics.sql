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
 KEY `metric_unit` (`metric_unit`),
 KEY `metrics_idx` (`device`,`metric_type`,`metric_unit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `metrics_history`;

CREATE TABLE `metrics_history` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `device` bigint(20) NOT NULL,
 `metric_type` tinyint(10) NOT NULL,
 `metric_status` tinyint(10) NOT NULL,
 `metric_unit` tinyint(10) NOT NULL,
 `amount` decimal(20,6) NOT NULL,
 `alert_sent` tinyint(1) DEFAULT 0,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `metrics_history_idx` (`device`,`metric_type`,`metric_unit`),
 KEY `metrics_history_idx_2` (`metric_status`,`alert_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `metric_types`;

CREATE TABLE `metric_types` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `device_type` tinyint(10) unsigned NOT NULL,
 `description` varchar(64) NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `device_type` (`device_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `metric_units`;

CREATE TABLE `metric_units` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(64) NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `metric_status`;

CREATE TABLE `metric_status` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(64) NOT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `metric_configuration_types`;

CREATE TABLE `metric_configuration_types` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(64) NOT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `metric_configurations`;

CREATE TABLE `metric_configurations` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `id_metric_type` tinyint(10) unsigned NOT NULL,
 `id_metric_status` tinyint(10) unsigned NOT NULL,
 `id_metric_configuration_type` tinyint(10) unsigned NOT NULL,
 `rangeA` decimal(20,2) NOT NULL,
 `rangeB` decimal(20,2) NOT NULL,
 `updated_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `metric_configurations_idx` (`id_metric_type`,`id_metric_configuration_type`,`rangeA`,`rangeB`),
 KEY `metric_configurations_idx_2` (`id_metric_type`,`id_metric_configuration_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
