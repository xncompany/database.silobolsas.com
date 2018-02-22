USE `silobolsas`;

# ================================================================================================

DROP TABLE IF EXISTS `spears`;

CREATE TABLE `spears` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_silobag` bigint(20) NOT NULL,
 `description` varchar(128) NOT NULL,
 `active` tinyint(1) unsigned NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `id_silobag` (`id_silobag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `spear_attributes`;

CREATE TABLE `spear_attributes` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(64) NOT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `spear_attribute_values`;

CREATE TABLE `spear_attribute_values` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_spear` bigint(20) unsigned NOT NULL,
 `id_spear_attribute` tinyint(10) unsigned NOT NULL,
 `description` text NOT NULL,

 PRIMARY KEY (`id`),
 KEY `id_spear` (`id_spear`),
 KEY `id_spear_attribute` (`id_spear_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================


DROP TABLE IF EXISTS `spear_criticality`;

CREATE TABLE `spear_criticality` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_spear` bigint(20) NOT NULL,
 `id_metric_type` tinyint(10) NOT NULL,
 `id_metric_status` tinyint(10) NOT NULL,
 `min_amount` decimal(20,6) NOT NULL,
 `max_amount` decimal(20,6) NOT NULL,

 PRIMARY KEY (`id`),
 KEY `id_spear` (`id_spear`),
 UNIQUE `id_spear.id_metric_type.id_metric_status` (`id_spear`, `id_metric_type`, `id_metric_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
