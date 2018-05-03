USE `silobolsas`;

# ================================================================================================

-- INSERT INTO `metrics` (`id`, `device`, `metric_type`, `metric_status`, `metric_unit`, `amount`, `created_at`) VALUES
-- 	(null, 1, 1, 1, 1, 35.31, '2018-03-01 11:34:15'),
-- 	(null, 1, 2, 1, 2, 60.41, '2018-03-01 11:34:16'),
-- 	(null, 1, 3, 1, 2, 1.15, '2018-03-01 11:34:19'),
-- 	(null, 1, 4, 1, 2, 30, '2018-03-01 11:34:19'),
-- 	(null, 1, 5, 1, 3, 3586, '2018-03-01 11:34:19'),
-- 	(null, 2, 1, 1, 1, 33.16, '2018-03-01 11:39:25'),
-- 	(null, 2, 2, 1, 2, 59.24, '2018-03-01 11:39:45'),
-- 	(null, 2, 3, 1, 2, 1.42, '2018-03-01 11:39:46'),
-- 	(null, 2, 4, 1, 2, 25, '2018-03-01 11:34:19'),
-- 	(null, 2, 5, 1, 3, 3600, '2018-03-01 11:34:19'),
-- 	(null, 3, 1, 1, 1, 34.21, '2018-03-01 11:40:08'),
-- 	(null, 3, 2, 1, 2, 61.65, '2018-03-01 11:40:13'),
-- 	(null, 3, 3, 1, 2, 1.61, '2018-03-01 11:40:15'),
-- 	(null, 3, 4, 1, 2, 70, '2018-03-01 11:34:19'),
-- 	(null, 3, 5, 1, 3, 5500, '2018-03-01 11:34:19');


INSERT INTO `metric_types` (`id`, `device_type`, `description`, `created_at`) VALUES
    (1, 1, 'temperature', '2018-03-01 11:39:45'),
    (2, 1, 'humidity', '2018-03-01 11:39:45'),
    (3, 1, 'CO2', '2018-03-01 11:39:45'),
    (4, 1, 'battery_charge', '2018-03-01 11:39:45'),
    (5, 1, 'battery_voltage', '2018-03-01 11:39:45');

INSERT INTO `metric_units` (`id`, `description`, `created_at`) VALUES
    (1, 'C', '2018-03-01 11:39:45'),
    (2, '%', '2018-03-01 11:39:45'),
    (3, 'mV', '2018-03-01 11:39:45');

INSERT INTO `metric_status` (`id`, `description`) VALUES
    (1, 'normal'),
    (2, 'warning'),
    (3, 'critical');

INSERT INTO `metric_configuration_types` (`id`, `description`) VALUES
    (1, 'range'),
    (2, 'delta');


INSERT INTO `metric_configurations` (`id`, `id_metric_type`, `id_metric_status`, `id_metric_configuration_type`, `rangeA`, `rangeB`, `updated_at`) VALUES
    (111, 1, 1, 1, 0, 10, '2018-03-01 11:39:45'),
    (121, 1, 2, 1, 10.01, 35, '2018-03-01 11:39:45'),
    (131, 1, 3, 1, 35.01, 100, '2018-03-01 11:39:45'),
    (211, 2, 1, 1, 0, 14.0, '2018-03-01 11:39:45'),
    (221, 2, 2, 1, 14.01, 16.0, '2018-03-01 11:39:45'),
    (231, 2, 3, 1, 16.01, 100, '2018-03-01 11:39:45'),
    (311, 3, 1, 1, 0, 4.40, '2018-03-01 11:39:45'),
    (321, 3, 2, 1, 4.41, 4.99, '2018-03-01 11:39:45'),
    (331, 3, 3, 1, 5.00, 100, '2018-03-01 11:39:45'),
    (122, 1, 2, 2, 1, 2.0, '2018-03-01 11:39:45'),
    (222, 2, 2, 2, 1, 1.0, '2018-03-01 11:39:45'),
    (322, 3, 2, 2, 0, 0.5,'2018-03-01 11:39:45');
