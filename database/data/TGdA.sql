-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2024 at 12:27 PM
-- Server version: 8.0.36
-- PHP Version: 8.2.10-2ubuntu1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TGdA`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `podcast` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `image`, `youtube`, `instagram`, `podcast`, `webpage`, `language`, `created_at`, `updated_at`) VALUES
('030b4c4a-7181-4984-bb52-d42e27bac320', 'Sergio Ojeda', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/350336513_919625422486310_7259271351860857845_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=wK0x6I3CX3YAX-jWW_5&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDyfqkuYxMM82U7jfpx82XOTMl_6WjdSOLzoi2FCfkqjQ&oe=65DB9F3D&_nc_sid=8b3546', NULL, 'https://www.instagram.com/sergiojeda/', NULL, NULL, 'ES', '2024-04-09 10:23:36', '2024-04-09 10:23:36'),
('12e8a3e3-193d-4a93-8e9d-10d56a074947', 'Bárbara González', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/385737066_3764102673819469_2195876015940246441_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=101&_nc_ohc=nrKkFMrpe_gAX81dmBy&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfA1akJI_otnE0dWkRYPhRw-uKxzzuQAB0yGi1HLUZEDTw&oe=65DB04F9&_nc_sid=8b3546', 'https://www.youtube.com/@barbarapgs', 'https://www.instagram.com/barbarapgs/', 'https://open.spotify.com/show/0aHzsp1r7bulvko3GwDYjh?si=5ba1ab20beeb4df8', 'https://www.barbarapgs.com/', 'ES', '2024-04-09 10:22:25', '2024-04-09 10:22:25'),
('1c4483d4-28dc-4e41-9bbd-5990345acb8b', 'Patri Medio Limón', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/66245068_2498045080257698_4840186756840030208_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=Xsb95vvTAb4AX_awN6d&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAlPdBxwVxdLOEfrLAaLfxoohJv2UE48Qfra76XtfYV-A&oe=65DB9803&_nc_sid=8b3546', 'https://www.youtube.com/@mediolimon9859', 'https://www.instagram.com/patrimediolimon/', NULL, 'https://patrimediolimon.wordpress.com/', 'ES', '2024-04-09 10:23:11', '2024-04-09 10:23:11'),
('1f26f04c-3890-47f7-b98d-2765dc14c55e', 'Cristian Alonso', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/338702821_232199792629994_6012486732924488122_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=fmUNBc-gjz8AX-0ulsD&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDldENe-Z-NSbvspvHUY0AjLDreTZFfLidfLUt80OKGig&oe=65DB3A4C&_nc_sid=8b3546', 'https://www.youtube.com/@lapastanoengorda', 'https://www.instagram.com/lapastanoengorda/', NULL, NULL, 'ES', '2024-04-09 10:23:45', '2024-04-09 10:23:45'),
('55b29068-3e97-4d0f-b1d4-4006c31c2819', 'Aitor Sánchez', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/154813118_2776451139271770_5490745995274426601_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=OUqUF-ndgEAAX-WF7yU&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCQK8EZDaYwg-Hjbc0EO11hvMrPfF1CCF37DuO1vUuTzg&oe=65DCE8FE&_nc_sid=8b3546', 'https://www.youtube.com/@Midietacojea', 'https://www.instagram.com/midietacojea/', 'https://open.spotify.com/show/4KXdIPTglWS0YgSY4QVThy?si=5545c9814326418b', 'https://www.midietacojea.com/', 'ES', '2024-04-09 10:22:50', '2024-04-09 10:22:50'),
('58491205-7c12-4b61-81cb-d4cfac79483b', 'Izaskun Unibaso', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/342091290_274603108227344_1034654882491162809_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=108&_nc_ohc=t6SPQepa5Q8AX_FbqB2&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDOfzwdTFrMG6avZhSDZE4Q8UjJSU2ke9Ej30ANyptGiw&oe=65DCDE84&_nc_sid=8b3546', 'https://www.youtube.com/@peacelovevegan9679', 'https://www.instagram.com/peace_l0ve_vegan/', NULL, 'https://peacelovevegan.es/', 'ES', '2024-04-09 10:24:08', '2024-04-09 10:24:08'),
('5f12cf40-8d27-4f48-b947-b07ce52880a9', 'Xavi Animal', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/329343072_757438599292211_9084144257047356787_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=111&_nc_ohc=9R7xKz5e9SoAX-HB1bN&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBXllN-C6LY6jdOzK0qREkLtR7NP2_4jjL_5Te0ZU3RLA&oe=65DD118D&_nc_sid=8b3546', 'https://www.youtube.com/@Xavi.animal', 'https://www.instagram.com/xavi.animal/', NULL, 'https://jaguartorg.com/', 'ES', '2024-04-09 10:23:00', '2024-04-09 10:23:00'),
('bfb6735a-dbb8-49d6-b0fd-1fe0e613c6dd', 'Earthling Ed', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-09 10:27:06', '2024-04-09 10:27:06'),
('c650c571-c1ec-45b8-a3a1-8ff0c161e138', 'Una Familia Vegana y Normal', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/422199339_835453838337348_3517216423484841209_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=100&_nc_ohc=wRyKBOk52wAAX9XcMUM&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfD81PT8TGPzttnk8dStanXRAWDbzXeSfjDH381M9Trivg&oe=65DA2729&_nc_sid=8b3546', 'http://www.youtube.com/@VeganaYNormal', 'https://www.instagram.com/veganaynormal/', 'https://open.spotify.com/show/7CWPtRMSXL4SQOg3pHLoYk?si=821ea0b28e5d498a', 'https://unafamiliaveganaynormal.com/', 'ES', '2024-04-09 10:22:11', '2024-04-09 10:22:11'),
('cd2975af-dcf9-484e-84c9-089b02e38949', 'Gloria Carrión', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/412605642_1040664343864030_4343688827637105008_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=110&_nc_ohc=zB3cfnrZBD4AX8eHcsR&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfB2w8cgj4wyV2X9yv39r5BFU2BJjJqiDwMgeCQT5TuH6w&oe=65DCF6AE&_nc_sid=8b3546', NULL, 'https://www.instagram.com/lagloriavegana/', NULL, 'https://www.lagloriavegana.com/', 'ES', '2024-04-09 10:23:57', '2024-04-09 10:23:57'),
('db0c1471-4620-4a0a-8ea7-58e74effdb69', 'Tamara Alonso', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/123993541_388932265635129_1809530183460074216_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=109&_nc_ohc=Ae4s1Y48wB4AX_0DzRc&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCxV2047v5ecLFnwq0V9aOBoWZwhdsWcdc_7EZh3DeTDQ&oe=65DBE4F8&_nc_sid=8b3546', 'https://www.youtube.com/@dedondesacolasproteinas', 'https://www.instagram.com/dedondesacolasproteinas/', NULL, 'https://www.dedondesacolasproteinas.com/', 'ES', '2024-04-09 10:22:37', '2024-04-09 10:22:37'),
('e0da729b-5e05-43c3-a09f-19d909faa25e', 'Ally Vispo', 'https://scontent-fra5-1.cdninstagram.com/v/t51.2885-19/402722218_1076849743329638_8629351511766891753_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent-fra5-1.cdninstagram.com&_nc_cat=102&_nc_ohc=Kv4dSrkOVWoAX-T_dxl&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAcOxoytV508EaC4ylEfku9rhlCfRDVWYgI_vilDN09yQ&oe=65D8FCA3&_nc_sid=8b3546', NULL, 'https://www.instagram.com/ally_viamalama/', 'https://open.spotify.com/show/0zRwFhHPYXGiL5QgzS7njF?si=5d466960be47494b', 'https://www.viamalama.com/blog/', 'ES', '2024-04-09 10:21:58', '2024-04-09 10:21:58'),
('e1f26919-f377-491c-be1f-cfdb5d603642', 'Paula González Carracedo', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/357430850_291005613317251_1999450405857728412_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=GOH2WTZlz_AAX_WGF18&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBPVdOCj2wSSQ8qplfElCRZRuoSAWqeKyZpfltb-Yp-DA&oe=65DB8F5A&_nc_sid=8b3546', 'https://www.youtube.com/@PaulitaVegan', 'https://www.instagram.com/paulitavegan/', NULL, 'https://theveganagency.es/', 'ES', '2024-04-09 10:23:23', '2024-04-09 10:23:23'),
('f1506ee9-7002-41ec-85a3-d78dab6ab2e9', 'Ibai Vegan', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/369151063_776111384529635_2069081655520627842_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=111&_nc_ohc=ywHmnM4k4EYAX804hET&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBrkZHyxlsPe-1IHo9IoiGlPuqp3V_BPY41jFVunGGt7g&oe=65DB45FC&_nc_sid=8b3546', 'https://www.youtube.com/@animaleshumanos', 'https://www.instagram.com/ibaivegan/', NULL, NULL, 'ES', '2024-04-09 10:24:21', '2024-04-09 10:24:21'),
('fcc90903-7da7-431c-bdf6-8cb22e035d8d', 'Seaspiracy', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-09 10:26:33', '2024-04-09 10:26:33');

-- --------------------------------------------------------

--
-- Table structure for table `author_theme`
--

CREATE TABLE `author_theme` (
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `author_theme`
--

INSERT INTO `author_theme` (`author_id`, `theme_id`, `created_at`, `updated_at`) VALUES
('030b4c4a-7181-4984-bb52-d42e27bac320', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:23:36', '2024-04-09 10:23:36'),
('030b4c4a-7181-4984-bb52-d42e27bac320', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:23:36', '2024-04-09 10:23:36'),
('12e8a3e3-193d-4a93-8e9d-10d56a074947', '3cc7e632-74ff-41f9-b7d0-2936ed4b7480', '2024-04-09 10:22:25', '2024-04-09 10:22:25'),
('12e8a3e3-193d-4a93-8e9d-10d56a074947', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:22:25', '2024-04-09 10:22:25'),
('12e8a3e3-193d-4a93-8e9d-10d56a074947', '79a08877-7ca8-40f5-9c4f-c9459fdb899f', '2024-04-09 10:22:25', '2024-04-09 10:22:25'),
('12e8a3e3-193d-4a93-8e9d-10d56a074947', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:22:25', '2024-04-09 10:22:25'),
('12e8a3e3-193d-4a93-8e9d-10d56a074947', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:22:25', '2024-04-09 10:22:25'),
('1c4483d4-28dc-4e41-9bbd-5990345acb8b', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:23:11', '2024-04-09 10:23:11'),
('1c4483d4-28dc-4e41-9bbd-5990345acb8b', '6ba419b0-109f-4be3-b7f4-bedb444f6faf', '2024-04-09 10:23:11', '2024-04-09 10:23:11'),
('1c4483d4-28dc-4e41-9bbd-5990345acb8b', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:23:11', '2024-04-09 10:23:11'),
('1f26f04c-3890-47f7-b98d-2765dc14c55e', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:23:45', '2024-04-09 10:23:45'),
('1f26f04c-3890-47f7-b98d-2765dc14c55e', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:23:45', '2024-04-09 10:23:45'),
('55b29068-3e97-4d0f-b1d4-4006c31c2819', '3cc7e632-74ff-41f9-b7d0-2936ed4b7480', '2024-04-09 10:22:50', '2024-04-09 10:22:50'),
('55b29068-3e97-4d0f-b1d4-4006c31c2819', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:22:50', '2024-04-09 10:22:50'),
('55b29068-3e97-4d0f-b1d4-4006c31c2819', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:22:50', '2024-04-09 10:22:50'),
('55b29068-3e97-4d0f-b1d4-4006c31c2819', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:22:50', '2024-04-09 10:22:50'),
('58491205-7c12-4b61-81cb-d4cfac79483b', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:24:08', '2024-04-09 10:24:08'),
('58491205-7c12-4b61-81cb-d4cfac79483b', '6ba419b0-109f-4be3-b7f4-bedb444f6faf', '2024-04-09 10:24:08', '2024-04-09 10:24:08'),
('58491205-7c12-4b61-81cb-d4cfac79483b', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:24:08', '2024-04-09 10:24:08'),
('58491205-7c12-4b61-81cb-d4cfac79483b', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:24:08', '2024-04-09 10:24:08'),
('5f12cf40-8d27-4f48-b947-b07ce52880a9', '1b679138-269b-4eee-b168-995257bd7afa', '2024-04-09 10:23:00', '2024-04-09 10:23:00'),
('5f12cf40-8d27-4f48-b947-b07ce52880a9', '52d09292-24a4-459a-8c7f-d2f3cc04f3a8', '2024-04-09 10:23:00', '2024-04-09 10:23:00'),
('5f12cf40-8d27-4f48-b947-b07ce52880a9', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:23:00', '2024-04-09 10:23:00'),
('5f12cf40-8d27-4f48-b947-b07ce52880a9', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:23:00', '2024-04-09 10:23:00'),
('c650c571-c1ec-45b8-a3a1-8ff0c161e138', '6ba419b0-109f-4be3-b7f4-bedb444f6faf', '2024-04-09 10:22:11', '2024-04-09 10:22:11'),
('c650c571-c1ec-45b8-a3a1-8ff0c161e138', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:22:11', '2024-04-09 10:22:11'),
('c650c571-c1ec-45b8-a3a1-8ff0c161e138', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:22:11', '2024-04-09 10:22:11'),
('cd2975af-dcf9-484e-84c9-089b02e38949', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:23:57', '2024-04-09 10:23:57'),
('cd2975af-dcf9-484e-84c9-089b02e38949', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:23:57', '2024-04-09 10:23:57'),
('cd2975af-dcf9-484e-84c9-089b02e38949', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:23:57', '2024-04-09 10:23:57'),
('db0c1471-4620-4a0a-8ea7-58e74effdb69', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:22:37', '2024-04-09 10:22:37'),
('db0c1471-4620-4a0a-8ea7-58e74effdb69', '6ba419b0-109f-4be3-b7f4-bedb444f6faf', '2024-04-09 10:22:37', '2024-04-09 10:22:37'),
('db0c1471-4620-4a0a-8ea7-58e74effdb69', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:22:37', '2024-04-09 10:22:37'),
('db0c1471-4620-4a0a-8ea7-58e74effdb69', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:22:37', '2024-04-09 10:22:37'),
('e0da729b-5e05-43c3-a09f-19d909faa25e', '1f776ade-3146-4694-bdb2-a57f474e8783', '2024-04-09 10:21:58', '2024-04-09 10:21:58'),
('e0da729b-5e05-43c3-a09f-19d909faa25e', '2a361483-3e3b-4c83-a85e-6c8465bbdeaf', '2024-04-09 10:21:58', '2024-04-09 10:21:58'),
('e0da729b-5e05-43c3-a09f-19d909faa25e', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:21:58', '2024-04-09 10:21:58'),
('e0da729b-5e05-43c3-a09f-19d909faa25e', '79a08877-7ca8-40f5-9c4f-c9459fdb899f', '2024-04-09 10:21:58', '2024-04-09 10:21:58'),
('e0da729b-5e05-43c3-a09f-19d909faa25e', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:21:58', '2024-04-09 10:21:58'),
('e1f26919-f377-491c-be1f-cfdb5d603642', '3cc7e632-74ff-41f9-b7d0-2936ed4b7480', '2024-04-09 10:23:23', '2024-04-09 10:23:23'),
('e1f26919-f377-491c-be1f-cfdb5d603642', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:23:23', '2024-04-09 10:23:23'),
('e1f26919-f377-491c-be1f-cfdb5d603642', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:23:23', '2024-04-09 10:23:23'),
('e1f26919-f377-491c-be1f-cfdb5d603642', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:23:23', '2024-04-09 10:23:23'),
('f1506ee9-7002-41ec-85a3-d78dab6ab2e9', '3cc7e632-74ff-41f9-b7d0-2936ed4b7480', '2024-04-09 10:24:21', '2024-04-09 10:24:21'),
('f1506ee9-7002-41ec-85a3-d78dab6ab2e9', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:24:21', '2024-04-09 10:24:21'),
('f1506ee9-7002-41ec-85a3-d78dab6ab2e9', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:24:21', '2024-04-09 10:24:21'),
('f1506ee9-7002-41ec-85a3-d78dab6ab2e9', '79a08877-7ca8-40f5-9c4f-c9459fdb899f', '2024-04-09 10:24:21', '2024-04-09 10:24:21'),
('f1506ee9-7002-41ec-85a3-d78dab6ab2e9', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:24:21', '2024-04-09 10:24:21'),
('f1506ee9-7002-41ec-85a3-d78dab6ab2e9', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:24:21', '2024-04-09 10:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_14_135404_create_authors_table', 1),
(6, '2024_02_15_135350_create_posts_table', 1),
(7, '2024_02_15_135419_create_themes_table', 1),
(8, '2024_02_16_131833_create_post_theme_table', 1),
(9, '2024_02_19_140248_create_author_theme_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(1024) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `type`, `url`, `image`, `author`, `author_id`, `language`, `created_at`, `updated_at`) VALUES
('37766245-9338-451e-87a8-bab140860070', 'Bruno León (Activista Trans) | Transexualidad, veganismo y más', 'Hoy tenemos a Bruno León con quién aprenderemos y escucharemos la historia de una persona trans', 'podcast', 'https://open.spotify.com/episode/10dOWUhvVWTwS5ynojjAqt?si=sdYlLMjETzW98VAbOCfEbA', 'https://i.scdn.co/image/ab6765630000ba8ab76ffafb73ee09b9227a1ce9', 'Ibai Vegan', 'f1506ee9-7002-41ec-85a3-d78dab6ab2e9', 'ES', '2024-04-09 10:25:29', '2024-04-09 10:25:29'),
('4130fed5-2fa7-46e6-9e79-292b05225aca', 'Las 5 acciones que más reducirían el impacto medioambiental de los españoles', 'A veces parece que vivimos en el día de la marmota. No hace ni 3 meses que estaba escribiendo sobre cómo evitar olas de calor a corto plazo. Más de 500 muertes. Más de 30 incendios. Así llevamos la ola de calor de julio. ¿Desolador? Sin duda. Pero en medio de todas las emociones sigue la acción y la ciencia. Varios estudios muestran que estas situaciones extremas son el punto de inflexión que mucha gente necesita para empezar a actuar. Para todas esas personas escribo este artículo. Una recopilación de las acciones más importantes. ¿Y cómo sé que son las más importantes? Porque me voy a basar en los datos. Concretamente la referencia de este artículo es el Informe de Sostenibilidad de Consumo de España (2022). Cómo por ahora ningún gobierno me ha pedido un informe de las medidas efectivas, lo que te voy a proponer son las acciones que podemos poner en práctica la gente corriente.', 'webpage', 'https://www.barbarapgs.com/blog/las-5-acciones-que-ms-reduciran-el-impacto-medioambiental-de-los-espaoles', 'https://images.squarespace-cdn.com/content/v1/622f84208feb0027729013ad/929a2570-105e-43cf-b0d3-99ecd4c5031f/grafico_sectores.jpg?format=2500w', 'Bárbara González', '12e8a3e3-193d-4a93-8e9d-10d56a074947', 'ES', '2024-04-09 10:25:47', '2024-04-09 10:25:47'),
('560b08d9-12d0-46ed-b507-5e1647a73475', 'Entrevista a Irene Montero', 'La invitada 142 del Podcast es la política y ex Ministra de Igualdad Irene Montero. En esta entrevista tenemos una política que no deja indiferente a nadie, llegó con el anterior gobierno de España a ser Ministra de igualdad. Primera vez que hay un ministerio de igualdad y un gobierno de coalición, nos contará cómo lo ha vivido desde dentro. Le montaron otro partido acercándose las elecciones, el partido “Sumar” liderado por Yolanda Díaz, cómo lo vivió? Cuál es su relación con ella? Además, pusieron como requisito para las elecciones donde iban Sumar y Podemos, que ella, Irene Montero, no estuviera en las listas. ¿Cuál fue el motivo y quien lo decidió así? Una entrevista donde conocer el lado mas personal de Irene, pero también donde le preguntaremos por temas polémicos y leyes polémicas como la del “sólo el Si es Si” o la “ley trans”.', 'youtube', 'https://i.ytimg.com/vi/tgOxJKKarV8/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&amp;rs=AOn4CLD5J3sjlwXs6sSs4niOHWYaZUrGJw', 'https://www.youtube.com/watch?v=tgOxJKKarV8', 'Ibai Vegan', 'f1506ee9-7002-41ec-85a3-d78dab6ab2e9', 'ES', '2024-04-09 10:26:50', '2024-04-09 10:26:50'),
('752f65f8-3c76-47ad-a34b-b8636a38b96f', 'Mascletá en Madrid', 'Ningún ser inteligente destrozaría el planeta donde vive. No solo no nos ponemos a protegerlo sino que cada día destrozamos más y más y más la naturaleza y a todos sus habitantes. Vergüenza de toda la gente que lleva banderitas pero está destruyendo su tierra; patriota es quien defiende su tierra, quien destruye su tierra es antipatriota', 'instagram', 'https://www.tiktok.com/@xavi.animal/video/7337017354112568581', 'https://www.instagram.com/reel/C3fWFBQtlS6/?igsh=MWJpZzh3eW5wdWxyZA==', 'Xavi Animal', '5f12cf40-8d27-4f48-b947-b07ce52880a9', 'ES', '2024-04-09 10:26:16', '2024-04-09 10:26:16'),
('a62deeb5-0ad0-4c8c-96b3-4ceba2917950', 'Nunca verás tu vida de la misma manera - Discurso que te abrirá los ojos', 'Mira el discurso que fue dado a miles de estudiantes en universidades del Reino Unido.', 'youtube', 'https://i.ytimg.com/vi/Z3u7hXpOm58/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLAbfO7-oOFBlohJBXjCbvrIX6lKaw', 'https://www.youtube.com/watch?v=Z3u7hXpOm58', 'Earthling Ed', 'bfb6735a-dbb8-49d6-b0fd-1fe0e613c6dd', 'EN', '2024-04-09 10:27:06', '2024-04-09 10:27:06'),
('abf68b19-5488-4119-bd48-fe661b72f2cc', 'Albóndigas Veganas en Salsa', 'Tiempo de preparación: 40 mins, Tiempo de cocina: 45 mins, INGREDIENTES PARA LAS ALBÓNDIGAS: 185 gr Copos de avena finos, 80 gr Proteína de guisante, 600 gr Caldo vegetal, 50 gr Salsa de soja, 1 Cucharada de lino molido, 2 rebanadas de pan de molde untadas den leche vegetal sin azúcares (45 gr de leche), 1/2 Cebolla, 2 Dientes de ajo sin el nervio, 1 Manojo de perejil fresco muy picadito, 80 gr Harina de garbanzo, 65 gr Pan rallado, Sal, Harina de arroz (para rebozarlas), INGREDIENTES PARA LA SALSA: 4 Cebollas, 2 Zanahorias, 3 Dientes de ajo, 2 Puerros, 2 Cucharadas de harina, 1 Litro de Caldo vegetal, 1/2 Taza de salsa de tomate, Pimienta, Sal', 'youtube', 'https://peacelovevegan.es/recetas/albondigas-veganas-en-salsa/', 'https://www.youtube.com/watch?v=BdD_-u7grQw', 'Izaskun Unibaso', '58491205-7c12-4b61-81cb-d4cfac79483b', 'ES', '2024-04-09 10:26:00', '2024-04-09 10:26:00'),
('cea29889-bc1c-471e-904f-aaf7b684e963', 'Seaspiracy', 'Un director apasionado de los océanos decide realizar un documental en el que se demuestre el daño que el ser humano causa a las especies marinas, desvelando en el proceso una alarmante corrupción mundial.', 'película', 'https://www.netflix.com/cl/title/81014008', 'https://www.youtube.com/watch?v=t6eT33o66dA', 'Seaspiracy', 'fcc90903-7da7-431c-bdf6-8cb22e035d8d', 'ES', '2024-04-09 10:26:33', '2024-04-09 10:26:33'),
('e1c19025-38c0-4d5a-b6a7-852b48c2f5ad', 'Mi dieta cojea: Los mitos sobre nutrición que te han hecho creer', 'Quién no ha oído, y repetido, muchas veces frases como «La grasa engorda», «Para adelgazar debemos tomar menos calorías», «Desayunar es obligatorio para llevar una dieta saludable» o «Los huevos suben el colesterol». En Mi dieta cojea, Aitor Sánchez desmonta muchos de los mitos relacionados con la alimentación y nos explica qué verdades y mentiras se esconden detrás de muchas creencias que suelen provenir de la falta de información rigurosa, la manipulación de los mensajes publicitarios por parte de la industria alimentaria e incluso de los dogmas sociales. El principal objetivo es que el lector pueda desarrollar una conciencia crítica y profundizar en el aprendizaje de los principales conceptos de lo que debe ser una alimentación saludable.', 'libro', 'https://www.goodreads.com/es/book/show/32176802', 'https://m.media-amazon.com/images/I/91jlW4R+pfL._AC_UF1000,1000_QL80_.jpg', 'Aitor Sánchez', '55b29068-3e97-4d0f-b1d4-4006c31c2819', 'ES', '2024-04-09 10:25:01', '2024-04-09 10:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `post_theme`
--

CREATE TABLE `post_theme` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `post_theme`
--

INSERT INTO `post_theme` (`post_id`, `theme_id`, `created_at`, `updated_at`) VALUES
('37766245-9338-451e-87a8-bab140860070', '1b09baf6-2eb7-42d6-bf1b-e34da736692b', '2024-04-09 10:25:29', '2024-04-09 10:25:29'),
('37766245-9338-451e-87a8-bab140860070', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:25:29', '2024-04-09 10:25:29'),
('37766245-9338-451e-87a8-bab140860070', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:25:29', '2024-04-09 10:25:29'),
('4130fed5-2fa7-46e6-9e79-292b05225aca', '3cc7e632-74ff-41f9-b7d0-2936ed4b7480', '2024-04-09 10:25:47', '2024-04-09 10:25:47'),
('4130fed5-2fa7-46e6-9e79-292b05225aca', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:25:47', '2024-04-09 10:25:47'),
('4130fed5-2fa7-46e6-9e79-292b05225aca', '79a08877-7ca8-40f5-9c4f-c9459fdb899f', '2024-04-09 10:25:47', '2024-04-09 10:25:47'),
('4130fed5-2fa7-46e6-9e79-292b05225aca', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:25:47', '2024-04-09 10:25:47'),
('4130fed5-2fa7-46e6-9e79-292b05225aca', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:25:47', '2024-04-09 10:25:47'),
('560b08d9-12d0-46ed-b507-5e1647a73475', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:26:50', '2024-04-09 10:26:50'),
('560b08d9-12d0-46ed-b507-5e1647a73475', '79a08877-7ca8-40f5-9c4f-c9459fdb899f', '2024-04-09 10:26:50', '2024-04-09 10:26:50'),
('560b08d9-12d0-46ed-b507-5e1647a73475', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:26:50', '2024-04-09 10:26:50'),
('752f65f8-3c76-47ad-a34b-b8636a38b96f', '52d09292-24a4-459a-8c7f-d2f3cc04f3a8', '2024-04-09 10:26:16', '2024-04-09 10:26:16'),
('752f65f8-3c76-47ad-a34b-b8636a38b96f', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:26:16', '2024-04-09 10:26:16'),
('752f65f8-3c76-47ad-a34b-b8636a38b96f', '79a08877-7ca8-40f5-9c4f-c9459fdb899f', '2024-04-09 10:26:16', '2024-04-09 10:26:16'),
('752f65f8-3c76-47ad-a34b-b8636a38b96f', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:26:16', '2024-04-09 10:26:16'),
('a62deeb5-0ad0-4c8c-96b3-4ceba2917950', '1b09baf6-2eb7-42d6-bf1b-e34da736692b', '2024-04-09 10:27:06', '2024-04-09 10:27:06'),
('a62deeb5-0ad0-4c8c-96b3-4ceba2917950', '3cc7e632-74ff-41f9-b7d0-2936ed4b7480', '2024-04-09 10:27:06', '2024-04-09 10:27:06'),
('a62deeb5-0ad0-4c8c-96b3-4ceba2917950', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:27:06', '2024-04-09 10:27:06'),
('a62deeb5-0ad0-4c8c-96b3-4ceba2917950', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:27:06', '2024-04-09 10:27:06'),
('a62deeb5-0ad0-4c8c-96b3-4ceba2917950', '79a08877-7ca8-40f5-9c4f-c9459fdb899f', '2024-04-09 10:27:06', '2024-04-09 10:27:06'),
('a62deeb5-0ad0-4c8c-96b3-4ceba2917950', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:27:06', '2024-04-09 10:27:06'),
('abf68b19-5488-4119-bd48-fe661b72f2cc', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:26:00', '2024-04-09 10:26:00'),
('abf68b19-5488-4119-bd48-fe661b72f2cc', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:26:00', '2024-04-09 10:26:00'),
('cea29889-bc1c-471e-904f-aaf7b684e963', '1b09baf6-2eb7-42d6-bf1b-e34da736692b', '2024-04-09 10:26:33', '2024-04-09 10:26:33'),
('cea29889-bc1c-471e-904f-aaf7b684e963', '52d09292-24a4-459a-8c7f-d2f3cc04f3a8', '2024-04-09 10:26:33', '2024-04-09 10:26:33'),
('cea29889-bc1c-471e-904f-aaf7b684e963', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:26:33', '2024-04-09 10:26:33'),
('cea29889-bc1c-471e-904f-aaf7b684e963', '79a08877-7ca8-40f5-9c4f-c9459fdb899f', '2024-04-09 10:26:33', '2024-04-09 10:26:33'),
('cea29889-bc1c-471e-904f-aaf7b684e963', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:26:33', '2024-04-09 10:26:33'),
('cea29889-bc1c-471e-904f-aaf7b684e963', 'ef4af49b-8f56-425c-832b-790bf026467a', '2024-04-09 10:26:33', '2024-04-09 10:26:33'),
('e1c19025-38c0-4d5a-b6a7-852b48c2f5ad', '1b09baf6-2eb7-42d6-bf1b-e34da736692b', '2024-04-09 10:25:01', '2024-04-09 10:25:01'),
('e1c19025-38c0-4d5a-b6a7-852b48c2f5ad', '3cc7e632-74ff-41f9-b7d0-2936ed4b7480', '2024-04-09 10:25:01', '2024-04-09 10:25:01'),
('e1c19025-38c0-4d5a-b6a7-852b48c2f5ad', '54331009-2542-4923-8941-2433d51c835f', '2024-04-09 10:25:01', '2024-04-09 10:25:01'),
('e1c19025-38c0-4d5a-b6a7-852b48c2f5ad', '71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', '2024-04-09 10:25:01', '2024-04-09 10:25:01'),
('e1c19025-38c0-4d5a-b6a7-852b48c2f5ad', '7d0d3a4b-70b5-4443-b374-fe9884047866', '2024-04-09 10:25:01', '2024-04-09 10:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `created_at`, `updated_at`) VALUES
('1b09baf6-2eb7-42d6-bf1b-e34da736692b', 'salud', '2024-04-09 10:20:43', '2024-04-09 10:20:43'),
('1b679138-269b-4eee-b168-995257bd7afa', 'ayuda', '2024-04-09 10:20:27', '2024-04-09 10:20:27'),
('1f776ade-3146-4694-bdb2-a57f474e8783', 'belleza', '2024-04-09 10:19:45', '2024-04-09 10:19:45'),
('2a361483-3e3b-4c83-a85e-6c8465bbdeaf', 'moda', '2024-04-09 10:20:01', '2024-04-09 10:20:01'),
('3cc7e632-74ff-41f9-b7d0-2936ed4b7480', 'investigación', '2024-04-09 10:20:14', '2024-04-09 10:20:14'),
('52d09292-24a4-459a-8c7f-d2f3cc04f3a8', 'animales', '2024-04-09 10:20:55', '2024-04-09 10:20:55'),
('54331009-2542-4923-8941-2433d51c835f', 'alimentación', '2024-04-09 10:20:08', '2024-04-09 10:20:08'),
('6ba419b0-109f-4be3-b7f4-bedb444f6faf', 'crianza', '2024-04-09 10:20:36', '2024-04-09 10:20:36'),
('71b0f422-36c5-4d3b-b4c2-0f5c1eabc2db', 'veganismo', '2024-04-09 10:19:37', '2024-04-09 10:19:37'),
('79a08877-7ca8-40f5-9c4f-c9459fdb899f', 'medioambiente', '2024-04-09 10:19:53', '2024-04-09 10:19:53'),
('7d0d3a4b-70b5-4443-b374-fe9884047866', 'sostenibilidad', '2024-04-09 10:20:49', '2024-04-09 10:20:49'),
('ef4af49b-8f56-425c-832b-790bf026467a', 'activismo', '2024-04-09 10:20:21', '2024-04-09 10:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_name_unique` (`name`);

--
-- Indexes for table `author_theme`
--
ALTER TABLE `author_theme`
  ADD PRIMARY KEY (`author_id`,`theme_id`),
  ADD KEY `author_theme_theme_id_foreign` (`theme_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Indexes for table `post_theme`
--
ALTER TABLE `post_theme`
  ADD PRIMARY KEY (`post_id`,`theme_id`),
  ADD KEY `post_theme_theme_id_foreign` (`theme_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `themes_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author_theme`
--
ALTER TABLE `author_theme`
  ADD CONSTRAINT `author_theme_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_theme_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_theme`
--
ALTER TABLE `post_theme`
  ADD CONSTRAINT `post_theme_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_theme_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
