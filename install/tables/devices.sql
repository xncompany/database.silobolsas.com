USE `silobolsas`;

# ================================================================================================

DROP TABLE IF EXISTS `devices`;

CREATE TABLE `devices` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `less` bigint(20) unsigned NOT NULL,
 `silobag` bigint(20) NOT NULL,
 `description` varchar(128) NOT NULL,
 `type` tinyint(10) NOT NULL,
 `active` tinyint(1) unsigned NOT NULL,
 `activated_at` datetime DEFAULT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `silobag` (`silobag`),
 KEY `less` (`less`),
 KEY `type` (`type`),
 KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `device_attributes`;

CREATE TABLE `device_attributes` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(64) NOT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `device_types`;

CREATE TABLE `device_types` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `name` varchar(16) NOT NULL,
 `description` varchar(64) NOT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `device_attribute_values`;

CREATE TABLE `device_attribute_values` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `device` bigint(20) unsigned NOT NULL,
 `device_attribute` tinyint(10) unsigned NOT NULL,
 `description` text NOT NULL,

 PRIMARY KEY (`id`),
 KEY `device` (`device`),
 KEY `device_attribute` (`device_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================


DROP TABLE IF EXISTS `device_criticality`;

CREATE TABLE `device_criticality` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `device` bigint(20) NOT NULL,
 `metric_type` tinyint(10) NOT NULL,
 `metric_status` tinyint(10) NOT NULL,
 `min_amount` decimal(20,6) NOT NULL,
 `max_amount` decimal(20,6) NOT NULL,

 PRIMARY KEY (`id`),
 KEY `device` (`device`),
 UNIQUE `device.metric_type.metric_status` (`device`, `metric_type`, `metric_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
