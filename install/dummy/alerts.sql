USE `silobolsas`;

# ================================================================================================

INSERT INTO `alerts` (`id`, `metric`, `min_amount`, `max_amount`) VALUES
	(null, 1, 10.00, 30.00),
	(null, 2, 10.00, 30.00),
	(null, 3, 10.00, 30.00),
	(null, 4, 20.00, 1000.00),
	(null, 5, 1.01, 19.99),
	(null, 6, 0.00, 0.50),
	(null, 7, 0.51, 2.50),
	(null, 8, 5.01, 1000.00);
