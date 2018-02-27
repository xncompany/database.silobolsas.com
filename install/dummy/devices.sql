USE `silobolsas`;

# ================================================================================================

INSERT INTO `devices` (`id`, `less_id`, `silobag`, `description`, `type`, `active`, `activated_at`, `created_at`) VALUES
	(1, 67110023, 1, 'spear#0001 - silobag#0001 - Las Gaviotas', 1, 1, '2018-02-21 09:23:11', '2017-02-21 09:23:11'),
	(2, 67112058, 1, 'spear#0002 - silobag#0001 - Las Gaviotas', 1, 1, '2018-02-21 09:23:11', '2017-02-21 09:26:28'),
	(3, 67112069, 1, 'spear#0003 - silobag#0001 - Las Gaviotas', 1, 1, '2018-02-21 09:23:11', '2017-02-21 09:29:42');


INSERT INTO `device_attributes` (`id`, `description`) VALUES
    (1, 'latitude'),
    (2, 'longitude'),
    (3, 'identification-number');

INSERT INTO `device_types` (`id`, `name`, `description`) VALUES
    (1, 'lanza', 'Lanza');

INSERT INTO `device_attribute_values` (`id`, `device`, `device_attribute`, `description`) VALUES
	(null, 1, 1, '-34.866293'),
	(null, 1, 2, '-60.213415'),
	(null, 1, 3, 'd41d8cd98f00b'),
	(null, 2, 1, '-34.866289'),
	(null, 2, 2, '-60.213420'),
	(null, 2, 3, '74be16979710d'),
	(null, 3, 1, '-34.866274'),
	(null, 3, 2, '-60.213432'),
	(null, 3, 3, 'acf7ef943fdeb');


INSERT INTO `device_criticality` (`id`, `device`, `metric_type`, `metric_status`, `min_amount`, `max_amount`) VALUES
	(null, 1, 1, 1, 10.00, 30.00),
	(null, 1, 1, 2, 30.01, 1000.00),
	(null, 1, 1, 3, 0.00, 9.99),
	(null, 1, 2, 1, 20.00, 80.00),
	(null, 1, 2, 2, 80.01, 1000.00),
	(null, 1, 2, 3, 0.00, 19.99),
	(null, 1, 3, 1, 0.00, 1.00),
	(null, 1, 3, 2, 20.00, 1000.00),
	(null, 1, 3, 3, 1.01, 19.99),
	(null, 1, 4, 1, 0.00, 0.50),
	(null, 1, 4, 2, 0.51, 2.50),
	(null, 1, 4, 3, 5.01, 1000.00),
	(null, 2, 1, 1, 10.00, 30.00),
	(null, 2, 1, 2, 30.01, 1000.00),
	(null, 2, 1, 3, 0.00, 9.99),
	(null, 2, 2, 1, 20.00, 80.00),
	(null, 2, 2, 2, 80.01, 1000.00),
	(null, 2, 2, 3, 0.00, 19.99),
	(null, 2, 3, 1, 0.00, 1.00),
	(null, 2, 3, 2, 20.00, 1000.00),
	(null, 2, 3, 3, 1.01, 19.99),
	(null, 2, 4, 1, 0.00, 0.50),
	(null, 2, 4, 2, 0.51, 2.50),
	(null, 2, 4, 3, 5.01, 1000.00),
	(null, 3, 1, 1, 10.00, 30.00),
	(null, 3, 1, 2, 30.01, 1000.00),
	(null, 3, 1, 3, 0.00, 9.99),
	(null, 3, 2, 1, 20.00, 80.00),
	(null, 3, 2, 2, 80.01, 1000.00),
	(null, 3, 2, 3, 0.00, 19.99),
	(null, 3, 3, 1, 0.00, 1.00),
	(null, 3, 3, 2, 20.00, 1000.00),
	(null, 3, 3, 3, 1.01, 19.99),
	(null, 3, 4, 1, 0.00, 0.50),
	(null, 3, 4, 2, 0.51, 2.50),
	(null, 3, 4, 3, 5.01, 1000.00);

