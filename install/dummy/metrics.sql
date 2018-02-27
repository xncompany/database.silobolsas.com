USE `silobolsas`;

# ================================================================================================

INSERT INTO `metrics` (`id`, `device`, `metric_type`, `metric_status`, `metric_unit`, `amount`, `created_at`) VALUES
	(null, 1, 1, 1, 1, 35.31, '2018-03-01 11:34:15'),
	(null, 1, 2, 1, 2, 60.41, '2018-03-01 11:34:16'),
	(null, 1, 3, 1, 2, 1.15, '2018-03-01 11:34:19'),
	(null, 1, 4, 1, 2, 30, '2018-03-01 11:34:19'),
	(null, 1, 5, 1, 3, 3586, '2018-03-01 11:34:19'),
	(null, 2, 1, 1, 1, 33.16, '2018-03-01 11:39:25'),
	(null, 2, 2, 1, 2, 59.24, '2018-03-01 11:39:45'),
	(null, 2, 3, 1, 2, 1.42, '2018-03-01 11:39:46'),
	(null, 2, 4, 1, 2, 25, '2018-03-01 11:34:19'),
	(null, 2, 5, 1, 3, 3600, '2018-03-01 11:34:19'),
	(null, 3, 1, 1, 1, 34.21, '2018-03-01 11:40:08'),
	(null, 3, 2, 1, 2, 61.65, '2018-03-01 11:40:13'),
	(null, 3, 3, 1, 2, 1.61, '2018-03-01 11:40:15'),
	(null, 3, 4, 1, 2, 70, '2018-03-01 11:34:19'),
	(null, 3, 5, 1, 3, 5500, '2018-03-01 11:34:19');


INSERT INTO `metric_types` (`id`, `device_type`, `description`) VALUES
    (1, 1, 'temperature'),
    (2, 1, 'humidity'),
    (3, 1, 'CO2'),
    (4, 1, 'battery_charge'),
    (5, 1, 'battery_voltage');

INSERT INTO `metric_units` (`id`, `description`) VALUES
    (1, 'C'),
    (2, '%'),
    (3, 'mV');

INSERT INTO `metric_status` (`id`, `description`) VALUES
    (1, 'normal'),
    (2, 'critical'),
    (3, 'risk');