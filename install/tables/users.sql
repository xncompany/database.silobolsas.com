USE `silobolsas`;

# ================================================================================================

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `email` varchar(128) NOT NULL,
 `password` varchar(32) NOT NULL,
 `active` tinyint(1) unsigned NOT NULL,
 `user_type` tinyint(10) NOT NULL,
 `organization` int(10) NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `user_types`;

CREATE TABLE `user_types` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(10) NOT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `user_attributes`;

CREATE TABLE `user_attributes` (
 `id` tinyint(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(64) NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================

DROP TABLE IF EXISTS `user_attribute_values`;

CREATE TABLE `user_attribute_values` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `user` bigint(20) unsigned NOT NULL,
 `user_attribute` tinyint(10) unsigned NOT NULL,
 `description` text NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `user` (`user`),
 KEY `user_attribute` (`user_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

