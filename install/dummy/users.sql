USE `silobolsas`;

# ================================================================================================

# Password 00e8579911e947913fa6a5f5cf60abe7 is equivalent to 'xncompany'

INSERT INTO `users` (`id`, `email`, `password`, `active`, `user_type`, `created_at`) VALUES
    (1, 'lverardo@xncompany.com', '00e8579911e947913fa6a5f5cf60abe7', 1, 1, '2017-01-09 01:55:12'),
    (2, 'ariel@xncompany.com', '00e8579911e947913fa6a5f5cf60abe7', 1, 2, '2017-01-09 01:55:12');

INSERT INTO `user_types` (`id`, `description`) VALUES
    (1, 'admin'),
    (2, 'read');

INSERT INTO `user_attributes` (`id`, `description`) VALUES
    (1, 'fullname'),
    (2, 'countryside'),
    (3, 'profile-picture-url');


INSERT INTO `user_attribute_values` (`id`, `user`, `user_attribute`, `description`) VALUES
	(null, 1, 1, 'Luciano Verardo'),
	(null, 1, 2, 'Las Gaviotas'),
	(null, 1, 3, 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAKpAAAAJDJiZGE4YzhmLTVhNDQtNDY2ZC1hNGJiLTQ1MzA0MGZmNGVhMw.jpg'),
	(null, 2, 1, 'Ariel Scaliter'),
	(null, 2, 2, 'Campo 3 de Febrero'),
	(null, 2, 3, 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAL1AAAAJDg5YmJjMzMyLTE5OWQtNGQ1NS1hYTVkLTY1M2M4NmRmYTEwNQ.jpg');