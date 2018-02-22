USE `silobolsas`;

# ================================================================================================

INSERT INTO `spears` (`id`, `id_silobag`, `description`, `active`, `created_at`) VALUES
	(1, 1, 'spear#0001 - silobag#0001 - Las Gaviotas', 1, '2018-02-21 09:23:11'),
	(2, 1, 'spear#0002 - silobag#0001 - Las Gaviotas', 1, '2018-02-21 09:26:28'),
	(3, 1, 'spear#0003 - silobag#0001 - Las Gaviotas', 1, '2018-02-21 09:29:42');


INSERT INTO `spear_attributes` (`id`, `description`) VALUES
    (1, 'latitude'),
    (2, 'longitude'),
    (3, 'identification-number');


INSERT INTO `spear_attribute_values` (`id`, `id_spear`, `id_spear_attribute`, `description`) VALUES
	(null, 1, 1, '-34.866293'),
	(null, 1, 2, '-60.213415'),
	(null, 1, 3, 'd41d8cd98f00b'),
	(null, 2, 1, '-34.866289'),
	(null, 2, 2, '-60.213420'),
	(null, 2, 3, '74be16979710d'),
	(null, 3, 1, '-34.866274'),
	(null, 3, 2, '-60.213432'),
	(null, 3, 3, 'acf7ef943fdeb');


INSERT INTO `spear_criticality` (`id`, `id_spear`, `id_metric_type`, `id_metric_status`, `min_amount`, `max_amount`) VALUES
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






