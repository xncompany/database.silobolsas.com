USE `silobolsas`;

# ================================================================================================

DROP TABLE IF EXISTS `lands`;

CREATE TABLE `lands` (
 `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
 `user` bigint(20) NOT NULL,
 `description` varchar(128) NOT NULL,
 `active` tinyint(1) unsigned NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`),
 KEY `user` (`user`),
 KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

# ================================================================================================
