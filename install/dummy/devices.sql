USE `silobolsas`;

# ================================================================================================

INSERT INTO `devices` (`id`, `less_id`, `silobag`, `description`, `type`, `active`, `activated_at`, `created_at`) VALUES
	(1, 67125560, 1, 'Lanza Test', 1, 1, '2018-02-21 09:23:11', '2017-02-21 09:23:11');


INSERT INTO `device_attributes` (`id`, `description`, `created_at`) VALUES
    (1, 'latitude', '2018-02-21 09:23:11'),
    (2, 'longitude', '2018-02-21 09:23:11'),
    (3, 'identification-number', '2018-02-21 09:23:11');


INSERT INTO `device_types` (`id`, `name`, `description`, `created_at`) VALUES
    (1, 'lanza', 'Lanza', '2018-02-21 09:23:11');

INSERT INTO `device_attribute_values` (`id`, `device`, `device_attribute`, `description`, `created_at`) VALUES
	(null, 1, 1, '-34.866293', '2018-02-21 09:23:11'),
	(null, 1, 2, '-60.213415', '2018-02-21 09:23:11'),
	(null, 1, 3, '67125560', '2018-02-21 09:23:11');
