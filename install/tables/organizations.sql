USE `silobolsas`;

# ================================================================================================

DROP TABLE IF EXISTS `organizations`;

CREATE TABLE `organizations` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` varchar(128) NOT NULL,
 `active` tinyint(1) unsigned NOT NULL,
 `created_at` datetime DEFAULT NULL,

 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;