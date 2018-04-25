USE `silobolsas`;

# ================================================================================================

# Password 00e8579911e947913fa6a5f5cf60abe7 is equivalent to 'xncompany'


INSERT INTO `users` VALUES
    (1, 'ariel@xncompany.com', '00e8579911e947913fa6a5f5cf60abe7', 1, 1,  1, '2017-01-09 01:55:12'),
    (2, 'lverardo@xncompany.com', '00e8579911e947913fa6a5f5cf60abe7', 1, 2, 1, '2017-01-09 01:55:12'),
    (3, 'osvaldo@xncompany.com', '00e8579911e947913fa6a5f5cf60abe7', 1, 1,  1, '2017-01-09 01:55:12'),
    (4, 'mguillen@xncompany.com', '00e8579911e947913fa6a5f5cf60abe7', 1, 1,  1, '2017-01-09 01:55:12'),
    (5, 'marcelo@barrilli.com.ar', '00e8579911e947913fa6a5f5cf60abe7', 1, 1,  2, '2017-01-09 01:55:12'),
    (6, 'juan.perez@barrilli.com.ar', '00e8579911e947913fa6a5f5cf60abe7', 1, 2,  2, '2017-01-09 01:55:12');

INSERT INTO `user_types` (`id`, `description`) VALUES
    (1, 'admin'),
    (2, 'read');

INSERT INTO `user_attributes` (`id`, `description`, `created_at`) VALUES
    (1, 'fullname', '2017-01-09 01:55:12'),
    (2, 'profile-picture-url', '2017-01-09 01:55:12');

INSERT INTO `user_attribute_values` (`id`, `user`, `user_attribute`, `description`, `created_at`) VALUES
	(null, 1, 1, 'Ariel Scaliter', '2017-01-09 01:55:12'),
	(null, 1, 2, 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAL1AAAAJDg5YmJjMzMyLTE5OWQtNGQ1NS1hYTVkLTY1M2M4NmRmYTEwNQ.jpg', '2017-01-09 01:55:12'),
    (null, 2, 1, 'Luciano Verardo', '2017-01-09 01:55:12'),
    (null, 2, 2, 'https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAKpAAAAJDJiZGE4YzhmLTVhNDQtNDY2ZC1hNGJiLTQ1MzA0MGZmNGVhMw.jpg', '2017-01-09 01:55:12'),
    (null, 3, 1, 'Osvaldo Ivani', '2017-01-09 01:55:12'),
    (null, 3, 2, 'https://0.academia-photos.com/9161846/10048698/11209377/s200_osvaldo.ivani.jpg', '2017-01-09 01:55:12'),
    (null, 4, 1, 'Martin Guillen', '2017-01-09 01:55:12'),
    (null, 4, 2, 'https://i.stack.imgur.com/Lkn5a.png?s=328&g=1', '2017-01-09 01:55:12'),
    (null, 5, 1, 'Marcelo Barrilli', '2017-01-09 01:55:12'),
    (null, 5, 2, 'http://www.acopiadores.com/sites/default/files/imagecache/noticia_detalle/noticias/97884-53704.jpg', '2017-01-09 01:55:12'),
    (null, 6, 1, 'Juan Perez', '2017-01-09 01:55:12'),
    (null, 6, 2, 'http://www.instituteofhypnotherapy.com/wp-content/uploads/2016/01/tutor-8.jpg', '2017-01-09 01:55:12');