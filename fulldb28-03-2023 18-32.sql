#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '9', '90', 'Aut quae voluptas amet rem ut quod. Ut ipsum quidem et nihil sed est odio doloremque. Perspiciatis tempore eos excepturi delectus ducimus.', 'necessitatibus', 80086, NULL, '2016-02-26 02:35:46', '1987-08-16 19:38:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '1', '42', 'Quos dolorum maiores ipsum porro voluptatem voluptates. Cupiditate nulla et voluptas incidunt reprehenderit aut corrupti. Ut in animi libero expedita eum voluptatem libero.', 'nulla', 52, NULL, '2002-04-29 09:31:27', '2001-01-31 17:58:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '6', '44', 'Vero aperiam quisquam blanditiis voluptas autem. Alias officiis aut quos optio quia error. Dicta esse et qui. Fuga ad voluptatem et sit consequatur et.', 'eligendi', 0, NULL, '2017-05-12 11:29:04', '2008-09-26 14:50:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '5', '94', 'Exercitationem maxime in delectus et et molestiae eum. Voluptate dolorum sunt non consequatur. Aut ex rerum nostrum omnis voluptatem.', 'necessitatibus', 372011, NULL, '1974-02-20 02:05:37', '1990-01-22 15:50:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '3', '73', 'Perspiciatis quo iusto saepe illum qui. Et voluptatem ut velit et corrupti sed totam. Aliquid qui facilis delectus ut. Eaque ratione quis voluptatem non et aut et.', 'ut', 9219, NULL, '2010-03-08 21:39:56', '1996-12-01 19:34:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '4', '27', 'Quae dicta facere vel ut. Fugiat culpa accusantium praesentium consectetur quaerat. Ratione omnis totam sit dolorem facere. Ut molestiae eveniet rem ut aut atque.', 'corporis', 27225096, NULL, '2006-10-30 02:08:32', '1973-08-24 16:52:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '6', '42', 'Repellendus suscipit ut odio quis. Perspiciatis sint libero ab illo. Corporis dolorem sunt in. Asperiores aut deserunt illum. Aliquam rem eveniet fugit itaque et numquam.', 'sint', 833073, NULL, '1972-02-29 04:49:52', '1991-03-05 08:49:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '5', '45', 'Pariatur explicabo doloremque tempora fugit nobis dignissimos quae. Qui enim consectetur eaque odio hic. Sunt ut corrupti accusantium. Expedita sit dolor velit eligendi rem.', 'sed', 43410335, NULL, '2018-06-30 10:05:00', '1978-06-16 18:57:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '7', '50', 'Quos qui dolores voluptate quia qui. Ipsa dolores exercitationem repellendus dolore vel quidem. Pariatur aut aperiam error reiciendis reiciendis dolore quidem.', 'eligendi', 9993, NULL, '1996-12-28 20:22:53', '2011-10-14 22:44:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '2', '12', 'Esse sint tenetur tenetur reiciendis aut. Adipisci et quo ullam aut beatae officiis. Est dolorum officia quis consequatur sapiente harum. Assumenda eaque autem nulla nobis corporis sunt.', 'placeat', 30, NULL, '1975-06-13 10:37:15', '1971-04-16 01:53:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '6', '37', 'Similique sequi in est enim. Molestiae sapiente enim officiis impedit aut voluptas. Aut consequuntur aut odit quam praesentium repellat dolores.', 'magnam', 15108, NULL, '1974-01-05 02:10:05', '1980-05-30 23:45:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '3', '87', 'Et qui amet qui et dignissimos. Nesciunt voluptas corporis laborum itaque ut. Est quos nobis est optio placeat iste. Ullam rem similique accusantium ipsam cupiditate.', 'delectus', 55401483, NULL, '2011-02-05 03:03:22', '2010-02-19 03:59:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '2', '93', 'Excepturi et molestias reiciendis architecto consequatur est. Sint molestiae qui voluptatum commodi beatae porro. Ratione placeat sit et quidem repellendus id distinctio nesciunt. Non natus in animi totam aperiam. Porro neque qui nemo.', 'quis', 6, NULL, '2010-11-01 14:03:46', '1982-05-27 12:25:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '5', '28', 'Voluptas et sunt quam sit. Facere laudantium laudantium placeat illum. Est a ut nesciunt libero ea blanditiis ipsum a. Similique quia qui rem eum a aut fugit.', 'tempora', 2234186, NULL, '1980-03-25 04:07:14', '2019-07-30 00:07:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '7', '96', 'Velit nisi vel ut optio voluptas laborum et aut. Tempore ipsum qui asperiores qui. Autem quos sunt sunt ab non.', 'sequi', 19779, NULL, '1998-03-23 07:11:16', '2007-11-19 16:34:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '8', '27', 'Eum enim autem tenetur iusto ut in vero velit. Autem voluptates minus veniam qui et reiciendis. Et nostrum adipisci accusamus consequuntur omnis.', 'maxime', 25278, NULL, '1996-06-21 13:12:42', '1970-07-10 02:54:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '5', '29', 'Et quia eum quod provident nisi voluptas totam. Earum facilis maxime corporis perferendis. Et corporis veritatis vitae voluptas sunt et est. Nesciunt assumenda voluptatem ducimus fugiat voluptas minus.', 'quibusdam', 0, NULL, '1992-12-17 19:32:32', '1984-03-31 23:43:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '2', '29', 'Perspiciatis nobis perferendis nam architecto ea dolor magni. Sunt culpa numquam deleniti hic. Repudiandae et tempore reprehenderit non.', 'eveniet', 37286707, NULL, '1977-05-29 21:23:38', '2014-04-14 05:35:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '2', '27', 'Cupiditate et earum quidem reiciendis. Fugit aliquam delectus vel nostrum qui nisi. Quia et tempore eos ad ratione. Quaerat voluptatum aliquam omnis non deleniti sint rem.', 'rerum', 5428254, NULL, '2014-04-14 16:04:41', '2009-09-07 05:56:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '10', '34', 'Repellendus est vero et vitae. Recusandae doloremque temporibus voluptatibus est.', 'ullam', 0, NULL, '1970-05-12 03:29:19', '1996-11-19 15:33:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '4', '36', 'Delectus nulla ut est qui quas modi magni qui. Necessitatibus officiis officiis minima voluptates. Consequatur eos nostrum tempora nihil fugit. Qui deleniti facilis voluptatem nam. Molestiae possimus molestias dolorem doloribus quia dolor.', 'autem', 3509240, NULL, '2001-07-29 01:17:13', '1986-05-28 12:45:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '6', '25', 'Earum doloremque reprehenderit et blanditiis et dolor. Eaque dolore nobis blanditiis quia. Earum sint fuga corporis repellat.', 'possimus', 327, NULL, '1978-04-06 14:22:52', '2004-10-30 10:10:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '3', '90', 'Omnis esse ut provident tenetur fugiat ab adipisci. Est error maiores possimus deserunt laboriosam. Ea similique distinctio voluptas voluptatibus aut tenetur maiores. Quasi et magnam sint ipsa ipsa.', 'fuga', 3467, NULL, '2002-03-22 09:28:31', '1973-12-07 10:33:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '7', '56', 'Doloribus at et neque sed laborum corrupti. Optio ut velit sequi culpa.', 'omnis', 0, NULL, '1993-04-17 22:26:52', '2017-01-02 09:19:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '2', '5', 'Totam minus autem culpa et fuga suscipit eum. Quos commodi esse ipsum et sint ut. Voluptatem laudantium nesciunt similique voluptatem.', 'consequatur', 54563145, NULL, '2008-04-29 19:05:51', '2021-12-28 17:14:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '9', '89', 'Veritatis sint mollitia et odit et et. Placeat ipsa facere optio consequatur magni. Aut perspiciatis aut sint provident voluptate magnam sunt culpa. Voluptas dolorem quia odio ducimus.', 'voluptates', 9736, NULL, '1989-08-25 04:41:52', '2001-08-18 01:49:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '4', '98', 'Ipsam excepturi iure quidem sit architecto. Voluptas quia et et minus rerum molestias. Perferendis itaque velit doloribus officia debitis.', 'necessitatibus', 771700, NULL, '1997-07-11 07:47:47', '2011-01-20 15:23:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '5', '68', 'Incidunt enim dolores sit possimus sed. Modi sed aut et non ipsum. Est incidunt rem omnis voluptate quia explicabo nemo.', 'impedit', 2388605, NULL, '2016-04-04 15:07:12', '1984-08-22 17:03:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '9', '28', 'Aliquam nesciunt repellat voluptatibus ullam et. Est et iure id soluta minus aperiam dolores. Incidunt voluptatem eveniet iusto voluptatem iusto ad ipsa. Quos vitae laboriosam consequatur temporibus.', 'accusantium', 71553, NULL, '1983-01-02 20:09:02', '1978-10-21 14:00:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '4', '31', 'Illum doloribus aut ipsa et. Perspiciatis nulla aliquam et. Mollitia praesentium alias eaque hic. Repellendus consequatur illum et omnis voluptates cumque.', 'ea', 7, NULL, '2015-09-26 11:48:32', '1994-04-12 15:32:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '7', '26', 'Excepturi ipsa consequatur rem sunt atque. Et vero illo animi autem. Nemo autem quis nostrum eligendi suscipit non est non.', 'in', 398695, NULL, '2001-03-02 15:12:29', '1974-05-17 05:51:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '8', '25', 'Ut velit mollitia pariatur non qui cumque dignissimos. Aut voluptatibus et esse iusto. Labore debitis aut blanditiis cumque.', 'quisquam', 0, NULL, '1991-10-24 03:00:18', '1978-11-17 10:22:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '1', '18', 'Voluptas odit rem aut maiores. Qui corporis et in impedit quia voluptas quia. Et nisi fugit non repellendus.', 'sit', 16, NULL, '1984-06-19 02:32:48', '2017-09-11 01:52:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '9', '33', 'Excepturi qui esse temporibus porro maiores quia voluptas. Distinctio aut laudantium maxime exercitationem. Dignissimos laboriosam quas perferendis repellendus. Alias ut dolor aperiam eos.', 'facilis', 9565, NULL, '1992-12-18 14:27:54', '2002-07-02 09:11:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '8', '97', 'Aut incidunt quis dignissimos eum et dolores quis. Voluptatem saepe laborum ducimus reiciendis iusto excepturi ducimus. Illum odit iste ipsam dolor.', 'non', 872819, NULL, '2020-03-01 13:33:29', '2006-07-19 07:24:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '5', '25', 'Provident voluptas voluptatum sunt sed est eum pariatur sed. Ipsum laborum quo odit itaque necessitatibus ullam aut. Non molestias beatae aliquam sed quae voluptatem soluta.', 'magni', 86, NULL, '2010-05-08 23:32:46', '1996-12-01 09:24:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '3', '97', 'Praesentium numquam est soluta molestiae sit non. At aliquid architecto quia temporibus sunt ab praesentium. Vel quia velit sunt fuga est. Quia distinctio quia nostrum eum suscipit aut voluptas dolor.', 'quo', 94, NULL, '1981-09-01 12:43:11', '2015-07-28 11:54:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '6', '60', 'Vel voluptatem nihil magnam minima. Optio vel dolor dolor autem nihil sed rerum. Et et delectus nihil eaque iste. Quae assumenda rerum aut pariatur optio eveniet veniam.', 'quas', 199, NULL, '2007-04-07 11:03:34', '1983-08-13 13:17:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '5', '49', 'Consequuntur soluta officiis perferendis molestiae et sunt voluptates. Enim facere impedit velit commodi facere ipsum et. Ut quis nostrum eligendi dolores quibusdam id.', 'modi', 3392, NULL, '2003-01-28 06:55:43', '1970-10-07 03:22:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '3', '85', 'Culpa voluptas quia iste corrupti dolorem ea. Odit soluta ut hic quam. Sit et ad in odio neque modi. Vero deserunt dicta iusto.', 'eum', 8834461, NULL, '2006-08-07 20:08:07', '2010-01-24 16:34:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '7', '22', 'Praesentium consequatur veritatis reprehenderit suscipit debitis explicabo. Voluptatum doloribus hic consequuntur repudiandae aperiam. Enim aut dolore fugit animi et. Iste itaque eos ullam.', 'id', 9436800, NULL, '1993-09-29 21:22:39', '1989-08-12 19:01:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '5', '11', 'Nemo nisi molestias voluptatibus illo. Saepe veritatis excepturi nostrum aliquam rerum mollitia. Suscipit ut quasi consequatur nostrum eos et eaque.', 'corporis', 6729207, NULL, '2021-03-23 01:06:29', '1998-07-09 18:22:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '7', '57', 'Ut asperiores iste numquam labore. Totam eum doloribus rerum quod voluptatem architecto aliquid. Recusandae quia tempore veniam possimus enim. Est quis aut assumenda esse molestiae fuga nobis tempora. Rerum aut saepe qui et ipsum.', 'voluptas', 0, NULL, '1976-02-18 06:49:14', '1971-07-14 22:40:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '1', '8', 'Fugit nemo at quis nihil qui quod est. Ex rerum et ut sunt.', 'ipsa', 0, NULL, '1996-05-07 14:24:42', '2014-07-09 11:20:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '9', '52', 'Nihil fugiat et fugiat quod. Vitae provident consequatur occaecati debitis officia blanditiis laborum voluptate. Et cumque voluptatem tempore omnis nihil. Aspernatur inventore odio rerum.', 'voluptas', 1883, NULL, '1970-08-12 20:42:47', '1994-12-26 22:41:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '5', '79', 'Totam exercitationem quia sed fugiat ratione tempore nulla. Quaerat a repellendus maiores. Eos consequuntur velit ut modi magni. Perspiciatis ratione magni iste expedita sit officia.', 'est', 807, NULL, '1970-10-25 17:06:30', '2003-07-15 08:35:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '9', '11', 'Esse dolores tempora officiis quia odit. Et magnam deleniti enim inventore quia. Esse incidunt maxime enim et molestiae sunt voluptas omnis. Sunt dignissimos consequatur reprehenderit nesciunt quos sequi est.', 'nesciunt', 58, NULL, '1991-01-26 04:20:55', '2002-03-04 04:16:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '10', '71', 'Dolore odit blanditiis saepe similique. Tenetur aspernatur quia atque eos iure quasi. Nihil voluptatem quis qui minima qui ipsam. Est consectetur est natus.', 'accusantium', 573979124, NULL, '2008-05-12 13:46:52', '1986-12-13 07:32:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '7', '37', 'Et dolores voluptatem non. Enim aut accusamus quia molestiae nisi non qui quibusdam. Provident cupiditate quod sunt dicta est eligendi ut.', 'quis', 9343, NULL, '1980-04-27 03:24:22', '1981-05-01 20:44:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '10', '87', 'Est vel non molestias et. Velit repellendus fuga ut sunt rerum debitis dolore nihil.', 'quia', 9, NULL, '2007-05-21 13:53:49', '2002-08-09 08:16:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '5', '66', 'At deserunt suscipit maxime sapiente aliquid inventore vel accusantium. Illum vel qui atque doloribus. Eos distinctio culpa officiis. Expedita autem dolores maxime ea.', 'voluptates', 0, NULL, '2013-08-03 16:00:52', '1971-05-09 06:39:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '6', '64', 'Quod debitis mollitia qui sit quidem eos ab. Quia error impedit eum amet. Doloribus optio amet amet veniam.', 'quo', 574, NULL, '2012-12-27 08:10:59', '1977-10-12 09:09:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '8', '82', 'Assumenda est error id expedita totam harum quibusdam at. Ad eum laborum accusantium corporis ipsam. Fugit distinctio vitae et doloremque voluptates. Quae molestiae autem dolore necessitatibus odit.', 'pariatur', 656702, NULL, '2016-01-19 21:30:08', '2008-07-12 19:15:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '10', '18', 'Distinctio non et cupiditate sed maxime. Quae vel mollitia assumenda non alias est sunt. Eos qui rerum deserunt repellat ipsam recusandae. In omnis qui officiis quia.', 'quam', 20901724, NULL, '1985-10-09 02:58:44', '1975-07-27 22:12:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '1', '61', 'Quibusdam esse veritatis ratione nostrum eius quibusdam possimus. Consequatur qui sunt non doloribus quaerat nam suscipit. Nihil quia iure laborum qui beatae non est.', 'soluta', 400352595, NULL, '1973-03-30 11:24:44', '2019-12-30 13:38:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '3', '96', 'Voluptatem aspernatur tempora et eum aliquam tenetur. Recusandae recusandae sed similique repellat non voluptas fuga. Rem id porro dolorem unde doloribus sed. Voluptate voluptatem suscipit cumque iure aliquid enim perferendis.', 'explicabo', 72681, NULL, '2013-02-05 13:21:55', '1976-10-02 07:16:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '5', '28', 'Quidem repellendus odio asperiores et sunt illo tempora. Et incidunt aut quasi magni ullam. Et debitis porro ullam.', 'voluptatem', 96591, NULL, '1984-11-17 16:29:33', '1991-01-16 19:21:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '4', '49', 'Omnis officiis quis ducimus. Deserunt sit at iste et qui laboriosam est tenetur. Similique consequatur aliquid soluta odio.', 'architecto', 472, NULL, '1974-05-28 12:50:09', '2016-06-01 11:06:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '10', '31', 'Neque libero vel repudiandae ut aut. Dignissimos reiciendis ex quos vel cum est. Molestiae qui molestiae omnis fuga iusto debitis quidem labore. Laudantium possimus natus animi aut placeat sunt aut eius. Incidunt praesentium ut iure veritatis.', 'ut', 9511106, NULL, '1971-12-06 18:24:21', '1998-09-28 21:13:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '10', '69', 'Earum aperiam provident velit dolorem nisi sed et. Quaerat porro quia et qui aliquam atque deserunt. Commodi fuga impedit exercitationem. In dignissimos vero ex tempore et aut.', 'et', 3735563, NULL, '2007-12-28 19:18:52', '1985-11-10 11:01:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '8', '18', 'Corporis a ipsum ullam aspernatur consequuntur veniam blanditiis. Natus blanditiis debitis reprehenderit iusto est numquam. Ipsam dolores eaque enim. Quos distinctio atque et et molestiae ad non.', 'laudantium', 33, NULL, '2004-07-04 11:16:00', '2017-06-12 17:59:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '10', '75', 'Et quam minima quam inventore exercitationem rerum. Labore sed reiciendis at quod. Consequatur eveniet aut ut aut qui consequatur.', 'illum', 166, NULL, '1982-04-21 04:28:47', '1983-01-26 00:18:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '7', '22', 'Ratione quae est facere et odio id. Adipisci ducimus neque quia. Placeat id adipisci qui aut et commodi est qui. Corporis reprehenderit dolor qui velit architecto distinctio placeat.', 'blanditiis', 6040700, NULL, '1974-05-09 23:43:16', '2021-04-18 23:37:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '6', '36', 'Voluptate eius porro fuga reiciendis ullam. Accusamus quos omnis ex id rerum omnis reprehenderit. Laborum maiores quisquam et ea.', 'ab', 58851, NULL, '2017-05-26 06:55:59', '1987-05-11 14:43:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '1', '7', 'Laboriosam vero et tenetur exercitationem nesciunt officiis nam. Ut quibusdam dicta laudantium in. Optio voluptas animi sunt voluptatem similique. Repellendus molestiae ab velit.', 'ut', 75302, NULL, '2022-11-05 15:06:55', '1970-11-18 10:08:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '5', '84', 'At deserunt ipsa aut earum. Ut voluptatibus et ea. Aut tempora doloribus similique. Cupiditate delectus quibusdam delectus aut inventore.', 'quia', 40742, NULL, '1985-04-26 00:02:31', '2010-07-17 08:15:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '9', '60', 'Ipsam animi eos ad ut. Fugiat culpa distinctio autem at ipsam. Vitae amet quo dolorum itaque est. Unde numquam et repellendus accusamus at. Est at odio quos vel.', 'totam', 856847, NULL, '1987-05-02 09:26:11', '1991-10-09 11:20:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '1', '69', 'Eligendi et id dolor. Et maiores soluta qui ab aspernatur et quisquam est. Amet harum et quis aut velit doloremque sed.', 'enim', 793614492, NULL, '1972-09-28 12:02:35', '1990-04-27 02:08:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '8', '86', 'Quam quaerat voluptas nobis. Animi sit numquam est impedit rerum et magnam. Voluptatibus odio autem error et magni cumque impedit. Sit aliquam distinctio temporibus molestias voluptatem totam fugiat.', 'natus', 0, NULL, '2013-03-13 09:52:22', '1975-08-26 21:11:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '6', '22', 'Et nesciunt reprehenderit at tenetur. Exercitationem est beatae atque enim ut quam aut. Mollitia cumque molestias sed eius.', 'ut', 440912, NULL, '1990-11-14 20:54:35', '2002-04-11 08:18:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '5', '20', 'Cumque necessitatibus recusandae quaerat assumenda consectetur ut omnis. Et excepturi qui ut itaque est. Quidem perferendis enim vel quia quia.', 'occaecati', 550568741, NULL, '1983-12-18 04:25:34', '1997-11-09 20:05:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '6', '99', 'Atque vitae autem natus vel debitis molestiae. Optio autem aspernatur provident sit. Est et a odio.', 'qui', 6541777, NULL, '2004-05-19 04:17:20', '1985-02-22 21:25:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '1', '81', 'Maxime reprehenderit est officia possimus. Harum pariatur qui magni reprehenderit culpa. Ducimus totam minus consequuntur ab ducimus amet. Assumenda aut nam beatae voluptatem.', 'et', 1, NULL, '1978-03-28 00:17:14', '1987-02-27 16:06:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '6', '41', 'Quis neque aut debitis repellendus ex. Eos natus iusto dolorem saepe rerum laudantium. Rerum explicabo asperiores illo commodi aliquid illum. Qui temporibus animi aut occaecati.', 'natus', 13003202, NULL, '1970-11-19 10:34:42', '2006-12-18 01:08:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '1', '100', 'Animi et ut dolor atque voluptatem. Quo quas ex reiciendis. Numquam ipsam iusto nulla et. Aspernatur laboriosam eum sit deserunt est natus.', 'voluptatem', 432008, NULL, '2004-03-15 18:44:32', '2015-09-18 14:04:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '3', '63', 'Libero modi hic ad ut quidem. Voluptatem et qui quis a aut aut et quis. Non nostrum quidem et aut magni doloremque reiciendis. Aut laudantium qui sunt consequatur suscipit eaque accusantium. Et et temporibus suscipit enim eos adipisci.', 'autem', 8295, NULL, '1980-12-04 05:42:02', '1972-09-29 15:35:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '2', '44', 'Et non iusto sapiente nam ipsa est quas. Eaque cum quisquam veniam cumque quisquam magni. Qui voluptatem sed facere.', 'similique', 279, NULL, '1970-04-09 04:02:56', '1976-01-23 10:16:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '8', '38', 'Ex sed nihil sed nisi necessitatibus rerum laborum. Aspernatur suscipit nemo eaque repellendus mollitia est iusto. Iusto incidunt molestiae ipsam eius quia nesciunt aliquam et. Dolor ut qui similique.', 'necessitatibus', 689985, NULL, '1999-01-05 09:30:26', '2018-01-19 08:14:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '5', '70', 'Ut sint sapiente iure laboriosam quas delectus aut. Maiores harum nulla vitae atque. Non qui delectus maxime maxime unde quos voluptas distinctio.', 'consequatur', 88525431, NULL, '2007-05-17 20:57:23', '1994-11-26 22:23:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '8', '89', 'Quia ipsam dolor dolor soluta nulla eos fugiat. Facere blanditiis est corporis facere sed. Amet sed minus aperiam animi nihil aspernatur deleniti.', 'ullam', 90110, NULL, '2002-04-07 09:24:51', '1977-03-31 06:22:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '1', '96', 'Et iusto veniam iure repellat. Magnam exercitationem veritatis perferendis corporis nobis ipsum omnis. Corrupti et aut iure distinctio voluptas.', 'sit', 462873959, NULL, '2018-03-29 17:07:28', '1989-10-26 00:08:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '4', '82', 'Sint omnis rerum eum ex. Occaecati est et omnis omnis.', 'nesciunt', 214473086, NULL, '2017-02-10 00:18:11', '1980-01-10 06:25:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '1', '71', 'Ut assumenda similique rem molestiae aut repudiandae. Voluptatem ratione labore corporis non est. Harum et natus minima doloribus. Ipsum sed molestias non quibusdam enim ut.', 'dignissimos', 21130, NULL, '2006-07-22 07:27:28', '2021-09-14 17:26:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '10', '74', 'Ut rerum maiores accusamus iusto voluptatem. Ex occaecati doloribus eaque aut.', 'fuga', 1464273, NULL, '2003-09-21 22:05:56', '2009-04-16 00:48:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '2', '97', 'Voluptatem totam quibusdam in velit ab soluta quod. Maxime dicta qui sed dolore ut hic.', 'voluptatum', 2, NULL, '2021-06-15 21:17:55', '2007-08-13 02:19:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '3', '60', 'Consequatur et nobis eveniet similique aut. Quia debitis assumenda ut. Quasi est et rerum.', 'vitae', 0, NULL, '2003-08-21 14:54:18', '1978-04-15 19:53:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '6', '78', 'Repudiandae est iusto dolorum aliquam dolor quidem dolorem. Atque deserunt quo tenetur hic voluptates omnis optio ad. Minus aut nostrum dolore. Dolores sunt aspernatur laudantium voluptatibus deserunt minima.', 'porro', 1019, NULL, '2009-06-29 00:16:46', '1977-06-06 08:42:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '10', '55', 'Itaque reiciendis officiis ut. Quae nisi dicta qui numquam quo cumque.', 'dolore', 896292883, NULL, '1975-11-27 11:16:25', '1970-05-17 14:32:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '2', '56', 'Voluptas labore et quia quis. Sunt quia facilis distinctio voluptatem. Rem occaecati earum officiis reprehenderit perspiciatis eum et.', 'nobis', 620, NULL, '2018-01-26 18:09:58', '1998-09-02 20:32:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '5', '59', 'Ipsa tenetur consequatur nihil ex autem recusandae hic excepturi. Fugit debitis ut dolor quia veniam quos dolor. Veritatis nam voluptatem soluta reprehenderit atque omnis.', 'ipsum', 1, NULL, '1993-04-02 06:28:32', '1971-07-11 00:56:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '1', '79', 'Est eveniet temporibus omnis non dolorum tenetur quia. Quo aliquam corrupti eos. Dolorum earum libero quia. Rem ullam ipsa beatae magni neque.', 'nihil', 5665249, NULL, '1972-06-06 09:08:12', '2001-04-10 00:04:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '8', '27', 'Ea illum provident minus earum et fuga et. Mollitia esse veritatis voluptatem quia sit quasi excepturi. Doloribus et qui accusantium aperiam exercitationem. Amet voluptas consequatur voluptatem et.', 'sed', 592857343, NULL, '1980-10-20 09:05:30', '1977-08-15 11:29:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '3', '48', 'Exercitationem saepe voluptas cupiditate placeat. Temporibus provident voluptate occaecati unde. Molestias accusantium perspiciatis minus.', 'nihil', 0, NULL, '1977-04-23 00:55:32', '2007-07-09 22:21:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '7', '56', 'Quae odit in sit quasi amet magni facilis. Omnis quia aut aut sapiente ipsum enim sunt. Eos illum non praesentium iusto. Quia qui sed et.', 'explicabo', 132754, NULL, '1983-05-27 07:43:51', '1998-09-01 08:43:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '5', '58', 'Omnis natus quia accusantium assumenda quos maxime. Quae sequi voluptatem voluptas ut necessitatibus necessitatibus natus. Ea et omnis pariatur cum laborum. Eius debitis est sequi illo est vero.', 'hic', 7, NULL, '1978-02-09 01:44:32', '2011-06-05 05:30:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '1', '48', 'Quis veniam repellendus voluptatem vel impedit ut. Sequi molestiae id veritatis. Molestiae dicta ut vel fugit quasi explicabo. Reiciendis quisquam tempore illum ut eum ex et ullam.', 'quibusdam', 7070, NULL, '2003-10-17 15:33:06', '2002-02-13 14:13:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '3', '51', 'Quam nulla quia iure sunt enim perferendis animi. Aut nihil suscipit necessitatibus amet quis vitae enim. In itaque natus veniam alias fugit in maxime. Natus aut ea porro consequatur et.', 'voluptatem', 93936723, NULL, '2003-12-28 09:39:57', '1981-08-09 23:58:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '3', '30', 'Non quod qui sed quos. Eum esse tempora vero. Voluptas qui facere maiores nulla blanditiis nisi. Et pariatur minus aut quos.', 'rerum', 249859, NULL, '2011-01-23 19:41:09', '2008-11-30 07:53:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '5', '59', 'Consectetur asperiores non est molestiae aut fugiat. Illo repellat qui voluptates nulla et eligendi. Ab quidem est omnis quo. Ut voluptatum aut pariatur voluptatem repellat inventore.', 'eveniet', 0, NULL, '2007-03-30 23:38:15', '2004-08-09 06:27:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '5', '22', 'Modi magni qui ut eveniet. Amet assumenda enim fugiat velit. Ipsa necessitatibus laborum expedita dolore.', 'est', 750468922, NULL, '2007-01-15 03:15:51', '2021-06-08 10:04:39');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'id', '1974-12-23 06:09:50', '1996-09-03 19:36:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'facere', '1981-03-04 01:03:12', '1997-11-13 08:03:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'temporibus', '1993-11-28 03:15:56', '2017-07-13 19:29:33');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'alias', '2011-07-03 07:22:33', '1987-12-22 23:12:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'numquam', '2020-09-27 05:01:45', '1994-04-29 07:03:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'non', '1976-10-01 18:00:13', '2003-03-30 22:37:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'eum', '2016-02-20 17:24:19', '2003-06-27 12:04:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'recusandae', '2005-01-04 22:28:44', '1970-09-30 15:18:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'itaque', '2019-08-09 05:03:00', '1977-12-31 20:36:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'dolorem', '1985-12-01 23:25:53', '1989-04-13 09:29:16');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'accusamus', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'velit', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'necessitatibus', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'amet', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'nemo', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'inventore', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'distinctio', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'soluta', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'dolor', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'at', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'deleniti', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'possimus', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'iusto', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'voluptatem', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'nihil', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'quam', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'ratione', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'doloribus', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'quasi', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'labore', '37');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'quia', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'est', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'est', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'velit', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'sit', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'qui', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'rerum', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'rerum', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'praesentium', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'unde', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'fugiat', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'nemo', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'autem', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'error', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'placeat', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'reprehenderit', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'saepe', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'cumque', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'voluptatem', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'ut', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'sed', '61');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'quia', '26');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'occaecati', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'sed', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'ducimus', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'dolor', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'necessitatibus', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'accusamus', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'in', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'dicta', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'labore', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'temporibus', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'quis', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'non', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'dolore', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'debitis', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'deserunt', '82');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'corporis', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'itaque', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'natus', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'modi', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'corrupti', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'dolor', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'esse', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'ratione', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'cumque', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'deserunt', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'voluptatem', '56');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'voluptas', '89');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'temporibus', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'et', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'expedita', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'tempore', '39');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'officia', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'aliquid', '20');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'aut', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'unde', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'quis', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'eum', '25');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'ea', '90');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'modi', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'quis', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'ducimus', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'eligendi', '65');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'nostrum', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'unde', '30');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'laborum', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'vel', '73');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'suscipit', '29');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'quia', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'sapiente', '31');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'nostrum', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'voluptatem', '86');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'aliquam', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'natus', '47');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'autem', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'iure', '34');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'saepe', '49');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'sunt', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'omnis', '98');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '79', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '29', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '97', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '79', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '87', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '52', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '39', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '54', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '89', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '59', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '9', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '60', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '60', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '18', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '96', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '100', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '98', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '36', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '46', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '94', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '98', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '65', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '23', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '91', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '8', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '34', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '79', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '6', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '40', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '12', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '28', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '39', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '26', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '19', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '48', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '32', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '100', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '92', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '75', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '69', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '100', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '71', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '80', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '58', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '77', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '35', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '53', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '42', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '29', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '82', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '71', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '50', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '28', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '28', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '59', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '48', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '20', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '76', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '47', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '36', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '89', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '97', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '45', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '26', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '19', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '77', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '98', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '65', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '23', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '65', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '76', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '34', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '44', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '42', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '10', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '89', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '16', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '72', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '68', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '58', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '89', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '91', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '49', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '79', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '75', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '8', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '41', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '41', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '31', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '71', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '91', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '43', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '52', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '48', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '75', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '38', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '68', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '60', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '15', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '37', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'f', '2013-10-30', '19', '2016-08-17 02:00:56', 'West Bettyeland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'm', '1974-04-17', '78', '2014-04-10 12:31:33', 'Powlowskifurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'm', '1998-05-20', '72', '2010-01-04 01:29:04', 'Lake Kelleyton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'f', '1991-11-30', '6', '2012-06-03 14:17:10', 'Feilport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'f', '1984-02-22', '82', '2008-09-27 23:59:22', 'East Nikkiport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'f', '2006-11-11', '96', '2010-06-14 18:33:01', 'Estabury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'm', '1984-06-22', '43', '1988-10-19 10:20:01', 'Gibsonton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'f', '2018-04-21', '18', '2001-12-03 07:45:02', 'Jarredstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'm', '2005-05-08', '94', '2011-07-15 01:13:22', 'North Estelle');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'm', '1990-11-13', '78', '1994-05-26 21:48:19', 'South Daisha');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'm', '1974-07-04', '68', '1977-08-04 08:05:04', 'West Bryana');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'm', '2001-05-31', '23', '1977-06-03 22:21:08', 'Lemkechester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'f', '2016-03-08', '73', '1974-05-06 06:00:07', 'Mayerfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'm', '2019-03-06', '57', '1991-11-01 18:31:27', 'East Marlene');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'f', '1980-05-04', '60', '1973-09-03 02:55:01', 'West Jennifer');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'm', '2002-09-21', '46', '2008-12-31 09:37:16', 'Lake Roberta');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'f', '1975-04-08', '4', '2011-01-26 20:53:57', 'Lake Jude');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'm', '1991-06-04', '72', '1991-12-11 20:26:08', 'West Reecefort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'f', '1999-04-10', '86', '2013-01-15 15:11:30', 'Claratown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'f', '1994-08-15', '78', '1986-03-30 21:23:34', 'Marcelleburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'f', '1982-08-27', '97', '2018-02-14 12:05:08', 'Dulceshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'm', '1992-02-12', '48', '2007-10-08 19:14:47', 'South Obie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'f', '1997-01-05', '87', '2020-11-22 08:34:33', 'Port Beaulah');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'f', '1972-07-27', '23', '1988-10-26 20:39:20', 'Keshaunmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'f', '1995-07-09', '1', '2009-07-09 12:45:11', 'West Nonaland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'f', '2014-09-23', '81', '1999-09-21 14:37:32', 'Garrickstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'f', '2002-08-04', '79', '2014-10-04 20:55:15', 'Port Catherine');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'f', '2011-05-22', '68', '1997-05-05 02:51:23', 'Tyresebury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'm', '1973-02-25', '90', '2015-12-26 03:21:34', 'Demetristown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'm', '1989-02-15', '48', '2012-02-09 12:29:04', 'Leannonberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'm', '1973-09-21', '50', '2009-01-21 05:49:50', 'East Alex');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'm', '1998-05-19', '90', '1982-03-05 01:13:30', 'Port Edna');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'm', '1970-07-09', '23', '1987-01-15 03:16:21', 'Boehmborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'f', '2008-12-15', '42', '1991-05-10 18:32:05', 'East Jo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'f', '1995-01-13', '83', '1976-08-31 16:44:51', 'Medhurstside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'm', '2005-07-26', '15', '1985-06-06 07:26:47', 'Joesphton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'm', '2007-06-21', '69', '1991-11-01 09:00:44', 'Romaguerachester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'f', '2016-07-01', '71', '1988-07-14 04:43:09', 'Wadeberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'f', '1984-10-12', '76', '1989-09-28 05:11:39', 'Blairchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'm', '2004-11-15', '73', '2001-07-24 04:35:47', 'Port Raleigh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'f', '2011-05-22', '90', '2009-03-13 06:46:55', 'Naomimouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'm', '1990-11-10', '81', '2021-12-19 17:15:59', 'New Calebchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'm', '1988-06-05', '23', '2016-01-30 09:02:01', 'South Jovany');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'm', '1992-06-16', '11', '2008-06-21 17:49:14', 'Robelbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'm', '2005-11-27', '91', '1991-03-28 16:26:19', 'New Houstonmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'm', '1977-05-07', '28', '2007-03-07 19:01:56', 'Emersonmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'f', '1976-12-11', '5', '1973-12-08 06:19:04', 'South Antwan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'm', '2003-09-21', '25', '1976-12-31 19:20:58', 'West Alfredabury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'f', '1991-07-18', '35', '1971-09-21 23:30:13', 'Hickleburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'm', '1980-10-14', '6', '1973-06-05 11:05:47', 'Port Kristy');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'm', '1988-12-17', '4', '2001-09-06 12:58:31', 'Astridburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'm', '1994-12-06', '91', '2021-03-12 17:53:41', 'Beerbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'f', '1997-11-08', '53', '2002-04-29 20:07:55', 'Port Rahsaan');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'f', '2005-06-29', '28', '2020-12-05 19:58:29', 'Langworthland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'm', '1991-09-11', '24', '1986-06-11 03:28:20', 'New Enola');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'f', '1998-04-09', '58', '2019-07-09 10:25:36', 'New Berneiceville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'm', '2015-05-22', '30', '1997-12-15 20:16:24', 'Emmerichport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'm', '1981-09-09', '84', '1982-04-30 19:24:59', 'Kassulkeshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'f', '2008-12-04', '19', '2006-01-29 14:57:53', 'Pfefferville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'f', '1990-04-10', '74', '1994-07-20 01:42:01', 'South Audreymouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'f', '1970-05-19', '34', '2017-10-13 09:37:05', 'Lake Haven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'm', '1970-04-06', '30', '1987-09-11 05:16:20', 'Port Jimmyshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'f', '1979-09-25', '29', '1972-05-11 18:52:39', 'Ceciliaport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'm', '1984-11-25', '6', '1983-04-29 14:11:20', 'Mooreville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'f', '1992-06-27', '91', '1992-04-09 08:13:04', 'North Kiraland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'f', '1992-05-31', '42', '1977-04-07 13:59:22', 'Hammesbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'f', '1975-07-06', '61', '1993-10-24 01:01:54', 'East Shana');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'm', '1975-07-27', '33', '1983-05-17 18:16:52', 'New Imelda');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'f', '1974-11-24', '19', '1972-05-30 23:55:53', 'South Lourdesbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'm', '1975-02-05', '58', '1987-06-14 19:38:37', 'Anseltown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'f', '1998-09-07', '16', '1998-04-14 03:53:51', 'Faheychester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'm', '1989-01-21', '72', '2000-11-05 16:28:26', 'South Nyasia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'm', '2011-04-17', '80', '1972-06-01 19:19:40', 'East Melbaburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'f', '2011-02-10', '51', '1980-07-22 06:34:51', 'Luisaland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'm', '1991-07-10', '40', '1976-10-28 13:09:59', 'East Archibald');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'm', '1997-07-02', '63', '1973-10-25 23:10:00', 'Kenyaburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'f', '1970-08-07', '51', '1992-01-03 16:00:56', 'West Vincenzo');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'f', '1982-12-13', '5', '1985-02-23 15:59:32', 'New Herminatown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'm', '2018-07-25', '92', '2015-04-12 21:26:05', 'DuBuqueshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'f', '2010-04-01', '73', '1988-01-02 03:08:51', 'East Kaciside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'm', '1980-02-11', '73', '2007-10-24 20:45:46', 'Port Clovis');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'f', '1970-12-17', '25', '1976-08-12 01:47:24', 'Casimerview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'm', '1981-05-28', '12', '2014-09-26 00:11:10', 'Chaimborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'f', '2016-07-28', '69', '1989-07-18 05:54:58', 'Danikaville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'm', '2006-12-19', '48', '2015-12-15 06:32:57', 'Wymanburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'f', '1982-10-30', '22', '1981-06-07 00:40:50', 'Cartwrightchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'm', '1981-04-28', '39', '1981-03-30 16:48:50', 'Lake Nannie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'f', '2004-07-02', '78', '2005-10-08 03:02:55', 'East Bertrandland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'f', '2009-12-29', '18', '1994-01-02 03:07:19', 'Matildahaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'm', '1991-07-15', '46', '1986-10-12 11:40:42', 'West Marc');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'm', '2011-12-18', '93', '1986-08-15 00:57:31', 'Abbottmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'm', '1988-05-21', '87', '1977-03-16 13:00:13', 'West Addie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'm', '1996-06-16', '8', '2019-06-15 03:57:03', 'New Theresiaside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'f', '1981-01-22', '10', '1995-02-18 19:46:10', 'Leannonberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'f', '1985-10-04', '17', '2010-11-13 02:18:55', 'Olliebury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'm', '1985-11-17', '12', '2015-06-29 01:44:21', 'East Nathaniel');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'm', '1998-01-24', '67', '1996-01-18 00:08:12', 'East Alexandrinefurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'm', '1995-05-20', '97', '2008-04-19 14:57:17', 'Lake Todbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'f', '1996-02-16', '36', '2003-05-27 22:24:58', 'Neomafurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'f', '1979-11-16', '49', '1980-03-08 02:46:52', 'Thurmanberg');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Alena', 'Lebsack', 'vweber@example.org', '3d4c420c9776372652a345c5e0e394955dab7f65', '89812855729', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Dariana', 'Bergnaum', 'nwillms@example.net', 'b592bd8c7ef55bb6216721aab342bbbb901fd823', '89973550869', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Dax', 'Pollich', 'jett.wintheiser@example.org', '0fdb345e18cb2714ba30050385095822eb688dd4', '89235314166', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Alvena', 'Morissette', 'hrunolfsson@example.net', '9829d32e5cd2f2d735c4fe1aa7d26e099ebfac21', '89131300869', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Frida', 'Becker', 'elmore.donnelly@example.org', '38ed1c99c6833d42a7e14b9eac729eabf159c498', '89234935620', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Kevon', 'Maggio', 'pollich.elwin@example.net', 'af8c8063235436ef1d8a389eff83f65625e3cec0', '89504583759', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Rodrick', 'Ledner', 'luz.paucek@example.org', '81526c3643110f85d308f3417f7349fc617be87d', '89825795779', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Sigmund', 'Keeling', 'okertzmann@example.com', '48e3a7154e047561dca551496406eabe3211db37', '89576128391', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Yasmeen', 'O\'Reilly', 'esteban91@example.com', '8de39a7ae16014d420fe4185a99df06936c709f7', '89103621418', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Kelton', 'Vandervort', 'marcelina54@example.org', '24fb122803b9ace7456d2b6b0f56621ccca33168', '89506529345', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Katharina', 'Rath', 'fleta.friesen@example.com', '6e7cbd3e5a6d4006b924265017e347ce40854dd2', '89440112497', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Watson', 'Mueller', 'ullrich.isidro@example.org', 'b45b362dff2fd3164a88544282164d237d3b376f', '89071786799', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Allene', 'Harvey', 'tnitzsche@example.org', 'a5446e2f905570b3375de0ae568da8e0ebd78881', '89844255156', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Quentin', 'Waelchi', 'lindgren.clara@example.com', 'eb699cc769454c53f1e03a1706dd5ea4d85deb31', '89233526733', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Michele', 'Glover', 'gleason.joana@example.net', '7c3e99289dc0054eb9b75be52a55dd7db13dc6ad', '89521887779', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'George', 'Treutel', 'beulah69@example.org', '20988cffebd2966f5161910da05edb3e045826cf', '89454876174', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Wallace', 'Braun', 'aida.jaskolski@example.com', '2d62390b04f6aa6970ce3c8701bdbef0a2ed0217', '89824359078', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Alberto', 'Erdman', 'rippin.carlo@example.net', 'eaec086200365cd07c4b5a6053f0b38799c0cb34', '89837103589', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Norene', 'Wyman', 'lilyan.altenwerth@example.org', '65eefeb4cfa5065a99781b00ce5cba082e4de014', '89823517581', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Cyril', 'Wehner', 'prince41@example.org', 'dd8575a97503739a092aa8e76ef057829d4773e9', '89833223682', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Alycia', 'Jacobi', 'pablo02@example.net', 'e9a59898b3925507c81df836fd8132982f72da69', '89320545241', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Jessika', 'Johns', 'cruickshank.una@example.com', 'ce736187a468906841a2887f044eb81c30e57702', '89735067850', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Maribel', 'Sawayn', 'ansley.becker@example.com', '857df9f2b035be7e2b90e680c652687cb0cfcbe1', '89469393834', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Alex', 'Goldner', 'gbarton@example.org', 'b1c6fdb451ca68bcb2297806190f4555355de3be', '89720292648', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Geovanny', 'Emard', 'fwiegand@example.com', '2455bf22e79a072e0c5905785cc609f89322f252', '89319336128', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Bernard', 'Cremin', 'eo\'hara@example.net', 'bac852c470c0cfe71716811af06b672c704c775d', '89942945625', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Mose', 'Howell', 'peggie.gorczany@example.com', '9d2cb8ec7d85a70242b948faa32d5657f7f45e82', '89407174342', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Alisa', 'Huels', 'keon.wolf@example.net', 'fd56074a596c001e747982b53a7cb5a63f08939c', '89102752031', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Willie', 'Kiehn', 'tsteuber@example.org', '92f9f583692930e254ca356c9d4a8362213c1f4d', '89206476166', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Toby', 'Wisoky', 'fcummings@example.net', 'aa4daf24c6de7f9c5d5136881741ef658b52f9c5', '89258868305', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Mariam', 'Halvorson', 'guadalupe.sanford@example.net', '9f7f1abf4613c98369f36bc5b7a1e7f81d44a957', '89047805624', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Viva', 'Murazik', 'haley.keara@example.net', 'e6fc554c583a9b1af1c03c81c6197d4b5a3e52a9', '89844156701', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Alvah', 'Abernathy', 'emery36@example.com', 'ca9e2909f1d8e7a8d17e01612313e2d5942ce51e', '89008270224', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Pete', 'Rolfson', 'hackett.alessia@example.net', '8ce07ceeaadf79caff3c73b28c3d0fbc34f5ce3c', '89574790521', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Kellie', 'Waters', 'stiedemann.antone@example.net', '80665007387896354bf6bcc21558f957ea3d280f', '89690603941', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Wiley', 'Rodriguez', 'annamae77@example.org', '6cdb3f53fe0a0dbb5619fa78ea265a7aa5b74ecd', '89852229694', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Laney', 'Johnston', 'sdickinson@example.net', 'fa1c3d9d4e12c3f7790ac635a30e5cf11a3d5b45', '89608460457', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Elian', 'Purdy', 'elian13@example.net', '322906c89e81d7467e8719db0b6ac7bb269009a3', '89809117449', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Jamil', 'Hagenes', 'lauretta14@example.net', '937564b6d61996b0084f6b6bda81cbf80d86be2a', '89717993517', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Lucinda', 'Koelpin', 'wjast@example.net', 'b63fd234c04bbd932eb46bb1e679736f69aeb27e', '89226752324', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Linnea', 'Hettinger', 'marta40@example.org', '7d5fefa740ea838c1d965483cd5d9f3a1f559814', '89844623136', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Lesly', 'Doyle', 'pbergnaum@example.org', '69bc6cbac995f7b083fa047d099bc2551a43e1c5', '89631866842', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Andy', 'Osinski', 'tomasa30@example.net', '458237dc910316e0c093d93ff303ecfeb6a162c1', '89602250188', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Valentin', 'Tromp', 'mya88@example.net', '8cd99543285930d469261644072a0bf917ade642', '89082491064', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Rudy', 'Kemmer', 'layne.emard@example.org', '6209a0e86dd00a56b0973d79b58df6e2bf1801de', '89452654591', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Edward', 'Anderson', 'pswift@example.com', '6eca690d8b4d82a2b27166d9c9bad6500ff3b430', '89399022673', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Annalise', 'Corkery', 'gaylord.isaias@example.org', 'a029f1a3b6b4925a7062de27c6fe658652fc808e', '89435007430', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Leann', 'Beatty', 'maximilian.powlowski@example.org', '7df2143017b0953dd182952f56cb540cdc0e59ab', '89700819528', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Maegan', 'Erdman', 'sbraun@example.org', '41ce73749e8d864d047e7f83b8a3eb8c9197cdad', '89422438681', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Kaitlyn', 'Stroman', 'ngerhold@example.org', '99781f5ded1318dd3673ea0ffa34d9c7189cefae', '89299752368', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Ewald', 'Rice', 'zieme.percival@example.net', '00451a9456e7e099d287201553abde8ae38282d1', '89947526803', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Celine', 'Green', 'fredrick80@example.net', 'b901a3b6b10187fdbb9a20f6fce7383f755c4b70', '89092984547', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Hazle', 'McKenzie', 'mann.dovie@example.com', '25d941e5a486294200d6b8b3e3319e95e96743a4', '89470514134', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Audie', 'Lebsack', 'jeanette.maggio@example.net', '5021b582852e7771768048ba147103154a3b642f', '89087810610', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Augustine', 'Pfeffer', 'cordie06@example.net', 'c8c1c6978e32dd966702859973e33e79987bd43d', '89399128325', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Elijah', 'Kuhlman', 'iernser@example.com', 'de634cfba20bc85c4ad1c25504b77f527189e558', '89325801302', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Furman', 'Kub', 'schumm.trevion@example.com', '5968cca0a50ffb7c0241775b017a3330137e97fc', '89205931266', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Niko', 'Johns', 'gabriel75@example.net', '8af553bc2e15830acf44c8f16d68819d29886026', '89777673616', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Dylan', 'Abshire', 'erich54@example.net', 'e3a99ef51b997f5e81d985040da03d33083036bc', '89145058434', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Frederique', 'Toy', 'scotty65@example.org', 'a7d450245526c44283feca269dc6859e33fa5653', '89521449747', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Edmund', 'Dickens', 'dan.larkin@example.org', 'c3ef2eb7fa157fb55f5142f9d95b2a2760880c4b', '89063559821', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Thomas', 'Auer', 'casper.velma@example.net', '9b521f53b1fca885281d33e7f89cccd99c451f90', '89990981442', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Julius', 'Mayer', 'torp.cordell@example.net', 'a25d4d588f61490040de72456b9aecf38a693934', '89414767296', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Toney', 'Legros', 'keira45@example.net', '4b6783a0deea21acd708189ae14c7a70df0412b0', '89145934887', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Caroline', 'Pfannerstill', 'kyler.swift@example.net', '9f4f59d79a6170a30fbe59907a4db0cb502598d6', '89785551535', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Sheila', 'Collier', 'worn@example.net', '8bccda10a5e65ed8333d2170125ac17760d02f08', '89174522727', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Sigmund', 'Schroeder', 'lyda38@example.org', 'feaaff8c93eb1d8a3a7cf18c6c959c3ac609ee65', '89737070077', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Johann', 'Hickle', 'owalker@example.net', '00a0017941f5db877c0211f12ab7c6770deec8dc', '89929906854', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Stanford', 'Botsford', 'hahn.una@example.com', '6fa5c223b31a89142e0fe312fe57ce3f8658e8dd', '89855351197', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Elvie', 'Schuster', 'greenholt.ladarius@example.org', '74c022c51559dc92dba7a50c84dda67b1188eef1', '89369609270', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Imogene', 'Simonis', 'modesto03@example.org', '306a8fe4fba13572d480d88ca8e818e6e3561c15', '89793378544', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Aisha', 'Kulas', 'schmidt.natalia@example.org', '9f97acccef882633301fe57b8eb2fcdc8f4390f4', '89665102222', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Wilbert', 'Wyman', 'hillard.wiza@example.net', '3e772ff3c9e752e9e49720b9c286bd5eefdb89f2', '89529997241', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Baylee', 'Runolfsdottir', 'imani41@example.org', 'f0e08f5a6cbcbabebbd2b50df744e0ff388c59df', '89010800655', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Laurel', 'Toy', 'hwaelchi@example.net', 'fb1a50cd7233363434d7d6426d40ee1b6d188621', '89952111065', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Carmella', 'Labadie', 'pete.bergstrom@example.com', '3960e38d7c65a141c56d33dfbb09b11812a1a8a2', '89742078123', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Major', 'Hettinger', 'heaney.craig@example.net', 'ab1383cbc3c3a43d79acf47854fa0c9bc782719a', '89108438472', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Malika', 'Waelchi', 'nicola.sawayn@example.org', 'cfc067e0aaaa7a6e796c68bce9e58d3e7401fd19', '89993631730', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Aidan', 'Ratke', 'muhammad16@example.org', '4491cd5317640ecedee81ae945154230e8a2e426', '89385543974', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Mauricio', 'Bartoletti', 'fernser@example.org', 'ee02e69f50e490ac3ffaa1d94c921435de649b15', '89725691844', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Eriberto', 'Stroman', 'aflatley@example.com', 'abe54bf910ca0c11f21d982ce2f219272364d6b9', '89949197528', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Sydney', 'Harris', 'dickens.derek@example.net', '155bab7ba904bd4f48b71e1bbaf0f0254da4fe87', '89254728434', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Jeremy', 'Pagac', 'reinger.clarissa@example.net', '9fd04b5baebc0a8040688823f094e1fd81108774', '89882600768', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'June', 'Hayes', 'cremin.nelle@example.org', 'b21707130d7a4dd60206df5675a31485b63b36ce', '89027360948', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Adrianna', 'Herman', 'lewis88@example.org', '26f9d7829424ac65c8143f5c03a366277a890ff9', '89849608811', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Alayna', 'Jenkins', 'wkonopelski@example.com', '808156f3030ae63f306febe42b4cc38320affe94', '89350460804', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Penelope', 'Thiel', 'hfranecki@example.net', 'fce077fdbd31aa8213d71f9747fcc707b3051441', '89085819424', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Micah', 'Becker', 'wwuckert@example.com', '86744ae33cbf745e631feff97f0639733d908730', '89322702901', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Markus', 'Green', 'eusebio.koelpin@example.com', 'ab09069cd2d1a796e2cc678f33d0a822c7f3d2b3', '89087074394', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Gianni', 'Parisian', 'julien.wolff@example.com', 'be4d9ad0c06d73b0fa3696e0e7ac8476fd555a07', '89861993018', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Verner', 'Von', 'eulalia96@example.com', 'c6bc44a7fc4f2808437294664af9a8a83c77768e', '89290591890', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Joey', 'Koch', 'efren78@example.net', 'ebeb6ed5676aa0e7b1d313bbdcecf7c40fbc1d64', '89583236849', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Shane', 'Ratke', 'zbode@example.com', '3a3a37ef4598decf5823c38e75a61d65e3133f4b', '89273943856', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Stuart', 'Weissnat', 'rolfson.zoey@example.org', '4209bd0d3ebe9a194dfa99229a0c9ab2b5f81d90', '89183911421', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Violette', 'Wilderman', 'lavina23@example.org', '1519d0b41afe6a4f9ac29527f09fd6736702e2da', '89218246646', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Shawna', 'Terry', 'dayne.bauch@example.com', 'a0e0065861f057a342038cca5b435df936fa415f', '89475952178', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Eldridge', 'Crooks', 'mharris@example.net', 'ffee16bf211958b25ee5efb54f1b457423e4f41c', '89785278752', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Elmer', 'Reichel', 'xeichmann@example.net', '30c558f2849df63a629ea0b23f7d750a66719d90', '89754359484', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Kylee', 'Satterfield', 'madonna21@example.net', 'e56c3e7b53f4ccf74c793aed6f7c4b82db0e56f0', '89298452365', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Rylan', 'Kilback', 'nwatsica@example.com', 'b96e36c5cb3bb71e6f9ba6ab4f31c79597ce4944', '89045349828', '0');


