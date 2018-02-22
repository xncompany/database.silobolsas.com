USE `silobolsas`;

# ================================================================================================

INSERT INTO `silobags` (`id`, `id_user`, `description`, `active`, `created_at`) VALUES
	(1, 1, 'silo#0001 - Las Gaviotas', 1, '2018-02-21 09:23:11');


INSERT INTO `silobag_attributes` (`id`, `description`) VALUES
    (1, 'latitude'),
    (2, 'longitude');


INSERT INTO `silobag_attribute_values` (`id`, `id_silobag`, `id_silobag_attribute`, `description`) VALUES
	(null, 1, 1, '-34.866285'),
	(null, 1, 2, '-60.213495');