USE `silobolsas`;

# ================================================================================================

INSERT INTO `silobags` (`id`, `land`, `description`, `active`, `created_at`) VALUES
	(null, 1, 'Silobolsa Test - Maiz', 1, '2018-02-21 09:23:11');


INSERT INTO `silobag_attributes` (`id`, `description`) VALUES
    (1, 'latitude'),
    (2, 'longitude');


INSERT INTO `silobag_attribute_values` (`id`, `silobag`, `silobag_attribute`, `description`) VALUES
	(null, 1, 1, '-34.864185'),
	(null, 1, 2, '-61.217895');