USE `silobolsas`;

# ================================================================================================

DROP TABLE IF EXISTS `silobags`;

CREATE TABLE `silobags` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_land` bigint(20) unsigned NOT NULL,
 `description` varchar(128) NOT NULL,
 `active` tinyint(1) unsigned NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `id_land` (`id_land`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


# ================================================================================================

DROP TABLE IF EXISTS `silobag_attributes`;

CREATE TABLE `silobag_attributes` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(64) NOT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `silobag_attribute_values`;

CREATE TABLE `silobag_attribute_values` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `id_silobag` bigint(20) unsigned NOT NULL,
 `id_silobag_attribute` tinyint(10) unsigned NOT NULL,
 `description` text NOT NULL,

 PRIMARY KEY (`id`),
 KEY `id_silobag` (`id_silobag`),
 KEY `id_silobag_attribute` (`id_silobag_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

