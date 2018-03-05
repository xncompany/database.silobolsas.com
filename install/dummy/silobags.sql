USE `silobolsas`;

# ================================================================================================

INSERT INTO `silobags` (`id`, `land`, `description`, `active`, `created_at`) VALUES
	(null, 1, 'silo#0001 - Las Gaviotas', 1, '2018-02-21 09:23:11'),
	(null, 1, 'silo#0002 - Las Gaviotas', 1, '2018-02-22 10:24:12'),
	(null, 2, 'silo#0001 - Las Eliana', 1, '2018-02-23 11:25:13'),
	(null, 3, 'silo#0001 - El Payé', 1, '2018-02-24 12:26:14'),
	(null, 3, 'silo#0002 - El Payé', 1, '2018-02-25 13:27:15');


INSERT INTO `silobag_attributes` (`id`, `description`) VALUES
    (1, 'latitude'),
    (2, 'longitude');


INSERT INTO `silobag_attribute_values` (`id`, `silobag`, `silobag_attribute`, `description`) VALUES
	(null, 1, 1, '-34.864185'),
	(null, 1, 2, '-61.217895'),
	(null, 2, 1, '-33.866285'),
	(null, 2, 2, '-59.213495'),
	(null, 3, 1, '-37.869885'),
	(null, 3, 2, '-62.211295'),
	(null, 4, 1, '-36.826285'),
	(null, 4, 2, '-63.213295'),
	(null, 5, 1, '-32.865185'),
	(null, 5, 2, '-62.256495');