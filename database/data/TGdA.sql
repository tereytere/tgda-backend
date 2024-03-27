-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2024 at 11:43 AM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `image`, `youtube`, `instagram`, `podcast`, `webpage`, `language`, `created_at`, `updated_at`) VALUES
('29f9ac69-efde-4f7d-a454-33b8535505a7', 'Xavi Animal', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/329343072_757438599292211_9084144257047356787_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=111&_nc_ohc=9R7xKz5e9SoAX-HB1bN&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBXllN-C6LY6jdOzK0qREkLtR7NP2_4jjL_5Te0ZU3RLA&oe=65DD118D&_nc_sid=8b3546', 'https://www.youtube.com/@Xavi.animal', 'https://www.instagram.com/xavi.animal/', NULL, 'https://jaguartorg.com/', 'ES', '2024-03-27 07:56:09', '2024-03-27 07:56:09'),
('3939bec1-31d2-4890-8d58-c087515d6262', 'Aitor Sánchez', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/154813118_2776451139271770_5490745995274426601_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=OUqUF-ndgEAAX-WF7yU&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCQK8EZDaYwg-Hjbc0EO11hvMrPfF1CCF37DuO1vUuTzg&oe=65DCE8FE&_nc_sid=8b3546', 'https://www.youtube.com/@Midietacojea', 'https://www.instagram.com/midietacojea/', 'https://open.spotify.com/show/4KXdIPTglWS0YgSY4QVThy?si=5545c9814326418b', 'https://www.midietacojea.com/', 'ES', '2024-03-27 07:55:54', '2024-03-27 07:55:54'),
('3c3dbef2-b080-4efb-8a9e-731fb4d71c40', 'Earthling Ed', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 08:00:08', '2024-03-27 08:00:08'),
('42b88635-4425-4cb3-81db-e0f20fcc294e', 'Ibai Vegan', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/369151063_776111384529635_2069081655520627842_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=111&_nc_ohc=ywHmnM4k4EYAX804hET&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBrkZHyxlsPe-1IHo9IoiGlPuqp3V_BPY41jFVunGGt7g&oe=65DB45FC&_nc_sid=8b3546', 'https://www.youtube.com/@animaleshumanos', 'https://www.instagram.com/ibaivegan/', NULL, NULL, 'ES', '2024-03-27 07:51:12', '2024-03-27 07:51:12'),
('479c6320-a3ec-4be2-b98c-dcc713793146', 'Gloria Carrión', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/412605642_1040664343864030_4343688827637105008_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=110&_nc_ohc=zB3cfnrZBD4AX8eHcsR&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfB2w8cgj4wyV2X9yv39r5BFU2BJjJqiDwMgeCQT5TuH6w&oe=65DCF6AE&_nc_sid=8b3546', NULL, 'https://www.instagram.com/lagloriavegana/', NULL, 'https://www.lagloriavegana.com/', 'ES', '2024-03-27 07:50:42', '2024-03-27 07:50:42'),
('4c610054-34c3-4446-8602-597297b4bd24', 'Ally Vispo', 'https://scontent-fra5-1.cdninstagram.com/v/t51.2885-19/402722218_1076849743329638_8629351511766891753_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent-fra5-1.cdninstagram.com&_nc_cat=102&_nc_ohc=Kv4dSrkOVWoAX-T_dxl&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAcOxoytV508EaC4ylEfku9rhlCfRDVWYgI_vilDN09yQ&oe=65D8FCA3&_nc_sid=8b3546', NULL, 'https://www.instagram.com/ally_viamalama/', 'https://open.spotify.com/show/0zRwFhHPYXGiL5QgzS7njF?si=5d466960be47494b', 'https://www.viamalama.com/blog/', 'ES', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('5a65a553-2d22-47a0-b859-50c63118f1ae', 'Aitor Sánchez', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/154813118_2776451139271770_5490745995274426601_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=106&_nc_ohc=OUqUF-ndgEAAX-WF7yU&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCQK8EZDaYwg-Hjbc0EO11hvMrPfF1CCF37DuO1vUuTzg&oe=65DCE8FE&_nc_sid=8b3546', 'https://www.youtube.com/@Midietacojea', 'https://www.instagram.com/midietacojea/', 'https://open.spotify.com/show/4KXdIPTglWS0YgSY4QVThy?si=5545c9814326418b', 'https://www.midietacojea.com/', 'ES', '2024-03-27 07:49:24', '2024-03-27 07:49:24'),
('7362b4c3-52af-41be-9845-3e332573126f', 'Sergio Ojeda', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/350336513_919625422486310_7259271351860857845_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=wK0x6I3CX3YAX-jWW_5&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDyfqkuYxMM82U7jfpx82XOTMl_6WjdSOLzoi2FCfkqjQ&oe=65DB9F3D&_nc_sid=8b3546', NULL, 'https://www.instagram.com/sergiojeda/', NULL, NULL, 'ES', '2024-03-27 07:56:45', '2024-03-27 07:56:45'),
('813c650f-59a1-4136-a5aa-c8a2c945adbd', 'Patri Medio Limón', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/66245068_2498045080257698_4840186756840030208_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=Xsb95vvTAb4AX_awN6d&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAlPdBxwVxdLOEfrLAaLfxoohJv2UE48Qfra76XtfYV-A&oe=65DB9803&_nc_sid=8b3546', 'https://www.youtube.com/@mediolimon9859', 'https://www.instagram.com/patrimediolimon/', NULL, 'https://patrimediolimon.wordpress.com/', 'ES', '2024-03-27 07:49:48', '2024-03-27 07:49:48'),
('8b22b59a-9299-4565-b3ba-6873c7c9f172', 'Izaskun Unibaso', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/342091290_274603108227344_1034654882491162809_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=108&_nc_ohc=t6SPQepa5Q8AX_FbqB2&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDOfzwdTFrMG6avZhSDZE4Q8UjJSU2ke9Ej30ANyptGiw&oe=65DCDE84&_nc_sid=8b3546', 'https://www.youtube.com/@peacelovevegan9679', 'https://www.instagram.com/peace_l0ve_vegan/', NULL, 'https://peacelovevegan.es/', 'ES', '2024-03-27 07:50:59', '2024-03-27 07:50:59'),
('9153c375-0365-4c78-b3c8-7f0f74fe6064', 'Paula González Carracedo', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/357430850_291005613317251_1999450405857728412_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=GOH2WTZlz_AAX_WGF18&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBPVdOCj2wSSQ8qplfElCRZRuoSAWqeKyZpfltb-Yp-DA&oe=65DB8F5A&_nc_sid=8b3546', 'https://www.youtube.com/@PaulitaVegan', 'https://www.instagram.com/paulitavegan/', NULL, 'https://theveganagency.es/', 'ES', '2024-03-27 07:50:03', '2024-03-27 07:50:03'),
('966c997e-8290-42b0-9919-42680d3f4a27', 'Tamara Alonso', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/123993541_388932265635129_1809530183460074216_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=109&_nc_ohc=Ae4s1Y48wB4AX_0DzRc&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCxV2047v5ecLFnwq0V9aOBoWZwhdsWcdc_7EZh3DeTDQ&oe=65DBE4F8&_nc_sid=8b3546', 'https://www.youtube.com/@dedondesacolasproteinas', 'https://www.instagram.com/dedondesacolasproteinas/', NULL, 'https://www.dedondesacolasproteinas.com/', 'ES', '2024-03-27 07:49:11', '2024-03-27 07:49:11'),
('9d60ac52-f64a-44c6-8c9a-fd41257f75c6', 'Ally Vispo', 'https://scontent-fra5-1.cdninstagram.com/v/t51.2885-19/402722218_1076849743329638_8629351511766891753_n.jpg?stp=dst-jpg_s150x150&_nc_ht=scontent-fra5-1.cdninstagram.com&_nc_cat=102&_nc_ohc=Kv4dSrkOVWoAX-T_dxl&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAcOxoytV508EaC4ylEfku9rhlCfRDVWYgI_vilDN09yQ&oe=65D8FCA3&_nc_sid=8b3546', NULL, 'https://www.instagram.com/ally_viamalama/', 'https://open.spotify.com/show/0zRwFhHPYXGiL5QgzS7njF?si=5d466960be47494b', 'https://www.viamalama.com/blog/', 'ES', '2024-03-27 07:55:09', '2024-03-27 07:55:09'),
('a33fbf92-d33b-47d1-be90-b532ffa98c40', 'Tamara Alonso', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/123993541_388932265635129_1809530183460074216_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=109&_nc_ohc=Ae4s1Y48wB4AX_0DzRc&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfCxV2047v5ecLFnwq0V9aOBoWZwhdsWcdc_7EZh3DeTDQ&oe=65DBE4F8&_nc_sid=8b3546', 'https://www.youtube.com/@dedondesacolasproteinas', 'https://www.instagram.com/dedondesacolasproteinas/', NULL, 'https://www.dedondesacolasproteinas.com/', 'ES', '2024-03-27 07:55:42', '2024-03-27 07:55:42'),
('a52fcaea-2824-4ac6-9be6-311db358fbef', 'Una Familia Vegana y Normal', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/422199339_835453838337348_3517216423484841209_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=100&_nc_ohc=wRyKBOk52wAAX9XcMUM&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfD81PT8TGPzttnk8dStanXRAWDbzXeSfjDH381M9Trivg&oe=65DA2729&_nc_sid=8b3546', 'http://www.youtube.com/@VeganaYNormal', 'https://www.instagram.com/veganaynormal/', 'https://open.spotify.com/show/7CWPtRMSXL4SQOg3pHLoYk?si=821ea0b28e5d498a', 'https://unafamiliaveganaynormal.com/', 'ES', '2024-03-27 07:55:20', '2024-03-27 07:55:20'),
('a9640068-db7c-4c05-8d9f-adb9f890daee', 'Ibai Vegan', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/369151063_776111384529635_2069081655520627842_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=111&_nc_ohc=ywHmnM4k4EYAX804hET&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBrkZHyxlsPe-1IHo9IoiGlPuqp3V_BPY41jFVunGGt7g&oe=65DB45FC&_nc_sid=8b3546', 'https://www.youtube.com/@animaleshumanos', 'https://www.instagram.com/ibaivegan/', NULL, NULL, 'ES', '2024-03-27 07:57:38', '2024-03-27 07:57:38'),
('ab03eeb3-1170-4fc1-aeac-e27ce35c6daf', 'Seaspiracy', NULL, NULL, NULL, NULL, NULL, NULL, '2024-03-27 07:59:39', '2024-03-27 07:59:39'),
('acb1664b-5cfe-4eda-9fe4-746d9ec214f5', 'Izaskun Unibaso', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/342091290_274603108227344_1034654882491162809_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=108&_nc_ohc=t6SPQepa5Q8AX_FbqB2&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDOfzwdTFrMG6avZhSDZE4Q8UjJSU2ke9Ej30ANyptGiw&oe=65DCDE84&_nc_sid=8b3546', 'https://www.youtube.com/@peacelovevegan9679', 'https://www.instagram.com/peace_l0ve_vegan/', NULL, 'https://peacelovevegan.es/', 'ES', '2024-03-27 07:57:21', '2024-03-27 07:57:21'),
('adb4aa7e-e63b-4d4f-adf3-59770f4fac48', 'Una Familia Vegana y Normal', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/422199339_835453838337348_3517216423484841209_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=100&_nc_ohc=wRyKBOk52wAAX9XcMUM&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfD81PT8TGPzttnk8dStanXRAWDbzXeSfjDH381M9Trivg&oe=65DA2729&_nc_sid=8b3546', 'http://www.youtube.com/@VeganaYNormal', 'https://www.instagram.com/veganaynormal/', 'https://open.spotify.com/show/7CWPtRMSXL4SQOg3pHLoYk?si=821ea0b28e5d498a', 'https://unafamiliaveganaynormal.com/', 'ES', '2024-03-27 07:48:28', '2024-03-27 07:48:28'),
('d0681c2a-be4b-45a1-afb9-6b8778fbeb81', 'Xavi Animal', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/329343072_757438599292211_9084144257047356787_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=111&_nc_ohc=9R7xKz5e9SoAX-HB1bN&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBXllN-C6LY6jdOzK0qREkLtR7NP2_4jjL_5Te0ZU3RLA&oe=65DD118D&_nc_sid=8b3546', 'https://www.youtube.com/@Xavi.animal', 'https://www.instagram.com/xavi.animal/', NULL, 'https://jaguartorg.com/', 'ES', '2024-03-27 07:49:37', '2024-03-27 07:49:37'),
('d124db6d-f620-469d-b621-5e891523bb0b', 'Gloria Carrión', 'https://scontent-mad2-1.cdninstagram.com/v/t51.2885-19/412605642_1040664343864030_4343688827637105008_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad2-1.cdninstagram.com&_nc_cat=110&_nc_ohc=zB3cfnrZBD4AX8eHcsR&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfB2w8cgj4wyV2X9yv39r5BFU2BJjJqiDwMgeCQT5TuH6w&oe=65DCF6AE&_nc_sid=8b3546', NULL, 'https://www.instagram.com/lagloriavegana/', NULL, 'https://www.lagloriavegana.com/', 'ES', '2024-03-27 07:57:10', '2024-03-27 07:57:10'),
('d1da1cc0-fb60-4325-8e48-5d7dfc8bdc19', 'Sergio Ojeda', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/350336513_919625422486310_7259271351860857845_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=wK0x6I3CX3YAX-jWW_5&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDyfqkuYxMM82U7jfpx82XOTMl_6WjdSOLzoi2FCfkqjQ&oe=65DB9F3D&_nc_sid=8b3546', NULL, 'https://www.instagram.com/sergiojeda/', NULL, NULL, 'ES', '2024-03-27 07:50:16', '2024-03-27 07:50:16'),
('d4555a2e-8b97-4a79-a494-e35558462c08', 'Bárbara González', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/385737066_3764102673819469_2195876015940246441_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=101&_nc_ohc=nrKkFMrpe_gAX81dmBy&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfA1akJI_otnE0dWkRYPhRw-uKxzzuQAB0yGi1HLUZEDTw&oe=65DB04F9&_nc_sid=8b3546', 'https://www.youtube.com/@barbarapgs', 'https://www.instagram.com/barbarapgs/', 'https://open.spotify.com/show/0aHzsp1r7bulvko3GwDYjh?si=5ba1ab20beeb4df8', 'https://www.barbarapgs.com/', 'ES', '2024-03-27 07:55:32', '2024-03-27 07:55:32'),
('d7bd1e40-1971-48db-b9e7-63e779332167', 'Cristian Alonso', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/338702821_232199792629994_6012486732924488122_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=fmUNBc-gjz8AX-0ulsD&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDldENe-Z-NSbvspvHUY0AjLDreTZFfLidfLUt80OKGig&oe=65DB3A4C&_nc_sid=8b3546', 'https://www.youtube.com/@lapastanoengorda', 'https://www.instagram.com/lapastanoengorda/', NULL, NULL, 'ES', '2024-03-27 07:56:56', '2024-03-27 07:56:56'),
('df9953fe-9340-4d51-9a93-91ed0d33d1a0', 'Bárbara González', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/385737066_3764102673819469_2195876015940246441_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=101&_nc_ohc=nrKkFMrpe_gAX81dmBy&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfA1akJI_otnE0dWkRYPhRw-uKxzzuQAB0yGi1HLUZEDTw&oe=65DB04F9&_nc_sid=8b3546', 'https://www.youtube.com/@barbarapgs', 'https://www.instagram.com/barbarapgs/', 'https://open.spotify.com/show/0aHzsp1r7bulvko3GwDYjh?si=5ba1ab20beeb4df8', 'https://www.barbarapgs.com/', 'ES', '2024-03-27 07:48:43', '2024-03-27 07:48:43'),
('dfa56b77-f799-4c21-a8c0-dfc4c1295416', 'Patri Medio Limón', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/66245068_2498045080257698_4840186756840030208_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=Xsb95vvTAb4AX_awN6d&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfAlPdBxwVxdLOEfrLAaLfxoohJv2UE48Qfra76XtfYV-A&oe=65DB9803&_nc_sid=8b3546', 'https://www.youtube.com/@mediolimon9859', 'https://www.instagram.com/patrimediolimon/', NULL, 'https://patrimediolimon.wordpress.com/', 'ES', '2024-03-27 07:56:21', '2024-03-27 07:56:21'),
('f2184ee3-8485-450f-aa71-0a565269cfb2', 'Cristian Alonso', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/338702821_232199792629994_6012486732924488122_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=102&_nc_ohc=fmUNBc-gjz8AX-0ulsD&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfDldENe-Z-NSbvspvHUY0AjLDreTZFfLidfLUt80OKGig&oe=65DB3A4C&_nc_sid=8b3546', 'https://www.youtube.com/@lapastanoengorda', 'https://www.instagram.com/lapastanoengorda/', NULL, NULL, 'ES', '2024-03-27 07:50:29', '2024-03-27 07:50:29'),
('fe0393a8-249c-4133-a020-4c921316b267', 'Paula González Carracedo', 'https://scontent-mad1-1.cdninstagram.com/v/t51.2885-19/357430850_291005613317251_1999450405857728412_n.jpg?stp=dst-jpg_s320x320&_nc_ht=scontent-mad1-1.cdninstagram.com&_nc_cat=107&_nc_ohc=GOH2WTZlz_AAX_WGF18&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBPVdOCj2wSSQ8qplfElCRZRuoSAWqeKyZpfltb-Yp-DA&oe=65DB8F5A&_nc_sid=8b3546', 'https://www.youtube.com/@PaulitaVegan', 'https://www.instagram.com/paulitavegan/', NULL, 'https://theveganagency.es/', 'ES', '2024-03-27 07:56:34', '2024-03-27 07:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `author_theme`
--

CREATE TABLE `author_theme` (
  `author_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author_theme`
--

INSERT INTO `author_theme` (`author_id`, `theme_id`, `created_at`, `updated_at`) VALUES
('29f9ac69-efde-4f7d-a454-33b8535505a7', '0247102e-8803-4051-969c-1aae9a977019', '2024-03-27 07:56:09', '2024-03-27 07:56:09'),
('29f9ac69-efde-4f7d-a454-33b8535505a7', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:56:09', '2024-03-27 07:56:09'),
('29f9ac69-efde-4f7d-a454-33b8535505a7', '66db0cfb-1c5b-4790-9a75-1fe50e2a97e0', '2024-03-27 07:56:09', '2024-03-27 07:56:09'),
('29f9ac69-efde-4f7d-a454-33b8535505a7', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:56:09', '2024-03-27 07:56:09'),
('3939bec1-31d2-4890-8d58-c087515d6262', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:55:54', '2024-03-27 07:55:54'),
('3939bec1-31d2-4890-8d58-c087515d6262', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:55:54', '2024-03-27 07:55:54'),
('3939bec1-31d2-4890-8d58-c087515d6262', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 07:55:54', '2024-03-27 07:55:54'),
('3939bec1-31d2-4890-8d58-c087515d6262', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:55:54', '2024-03-27 07:55:54'),
('42b88635-4425-4cb3-81db-e0f20fcc294e', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:51:12', '2024-03-27 07:51:12'),
('42b88635-4425-4cb3-81db-e0f20fcc294e', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:51:12', '2024-03-27 07:51:12'),
('42b88635-4425-4cb3-81db-e0f20fcc294e', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 07:51:12', '2024-03-27 07:51:12'),
('42b88635-4425-4cb3-81db-e0f20fcc294e', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 07:51:12', '2024-03-27 07:51:12'),
('42b88635-4425-4cb3-81db-e0f20fcc294e', 'ac2a335f-c811-43e1-b70f-c1d69891ed4b', '2024-03-27 07:51:12', '2024-03-27 07:51:12'),
('42b88635-4425-4cb3-81db-e0f20fcc294e', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:51:12', '2024-03-27 07:51:12'),
('479c6320-a3ec-4be2-b98c-dcc713793146', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:50:42', '2024-03-27 07:50:42'),
('479c6320-a3ec-4be2-b98c-dcc713793146', 'ac2a335f-c811-43e1-b70f-c1d69891ed4b', '2024-03-27 07:50:42', '2024-03-27 07:50:42'),
('479c6320-a3ec-4be2-b98c-dcc713793146', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:50:42', '2024-03-27 07:50:42'),
('4c610054-34c3-4446-8602-597297b4bd24', '5749a031-e68a-466a-b1d2-c499bf16c52d', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('4c610054-34c3-4446-8602-597297b4bd24', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('4c610054-34c3-4446-8602-597297b4bd24', 'a1b566d7-743d-4d63-95c3-ac0d932b74cf', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('4c610054-34c3-4446-8602-597297b4bd24', 'ac2a335f-c811-43e1-b70f-c1d69891ed4b', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('4c610054-34c3-4446-8602-597297b4bd24', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('5a65a553-2d22-47a0-b859-50c63118f1ae', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:49:24', '2024-03-27 07:49:24'),
('5a65a553-2d22-47a0-b859-50c63118f1ae', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 07:49:24', '2024-03-27 07:49:24'),
('5a65a553-2d22-47a0-b859-50c63118f1ae', 'ac2a335f-c811-43e1-b70f-c1d69891ed4b', '2024-03-27 07:49:24', '2024-03-27 07:49:24'),
('5a65a553-2d22-47a0-b859-50c63118f1ae', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:49:24', '2024-03-27 07:49:24'),
('7362b4c3-52af-41be-9845-3e332573126f', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:56:45', '2024-03-27 07:56:45'),
('7362b4c3-52af-41be-9845-3e332573126f', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:56:45', '2024-03-27 07:56:45'),
('813c650f-59a1-4136-a5aa-c8a2c945adbd', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:49:48', '2024-03-27 07:49:48'),
('813c650f-59a1-4136-a5aa-c8a2c945adbd', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:49:48', '2024-03-27 07:49:48'),
('813c650f-59a1-4136-a5aa-c8a2c945adbd', 'e134ec46-811e-408a-9d03-9d60c26b6932', '2024-03-27 07:49:48', '2024-03-27 07:49:48'),
('8b22b59a-9299-4565-b3ba-6873c7c9f172', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:50:59', '2024-03-27 07:50:59'),
('8b22b59a-9299-4565-b3ba-6873c7c9f172', 'ac2a335f-c811-43e1-b70f-c1d69891ed4b', '2024-03-27 07:50:59', '2024-03-27 07:50:59'),
('8b22b59a-9299-4565-b3ba-6873c7c9f172', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:50:59', '2024-03-27 07:50:59'),
('8b22b59a-9299-4565-b3ba-6873c7c9f172', 'e134ec46-811e-408a-9d03-9d60c26b6932', '2024-03-27 07:50:59', '2024-03-27 07:50:59'),
('9153c375-0365-4c78-b3c8-7f0f74fe6064', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:50:03', '2024-03-27 07:50:03'),
('9153c375-0365-4c78-b3c8-7f0f74fe6064', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 07:50:03', '2024-03-27 07:50:03'),
('9153c375-0365-4c78-b3c8-7f0f74fe6064', 'ac2a335f-c811-43e1-b70f-c1d69891ed4b', '2024-03-27 07:50:03', '2024-03-27 07:50:03'),
('9153c375-0365-4c78-b3c8-7f0f74fe6064', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:50:03', '2024-03-27 07:50:03'),
('966c997e-8290-42b0-9919-42680d3f4a27', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:49:11', '2024-03-27 07:49:11'),
('966c997e-8290-42b0-9919-42680d3f4a27', 'ac2a335f-c811-43e1-b70f-c1d69891ed4b', '2024-03-27 07:49:11', '2024-03-27 07:49:11'),
('966c997e-8290-42b0-9919-42680d3f4a27', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:49:11', '2024-03-27 07:49:11'),
('966c997e-8290-42b0-9919-42680d3f4a27', 'e134ec46-811e-408a-9d03-9d60c26b6932', '2024-03-27 07:49:11', '2024-03-27 07:49:11'),
('9d60ac52-f64a-44c6-8c9a-fd41257f75c6', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:55:09', '2024-03-27 07:55:09'),
('9d60ac52-f64a-44c6-8c9a-fd41257f75c6', '32b9aa3e-f0cb-4e17-8421-975d2dabfd7e', '2024-03-27 07:55:09', '2024-03-27 07:55:09'),
('9d60ac52-f64a-44c6-8c9a-fd41257f75c6', '5749a031-e68a-466a-b1d2-c499bf16c52d', '2024-03-27 07:55:09', '2024-03-27 07:55:09'),
('9d60ac52-f64a-44c6-8c9a-fd41257f75c6', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 07:55:09', '2024-03-27 07:55:09'),
('9d60ac52-f64a-44c6-8c9a-fd41257f75c6', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:55:09', '2024-03-27 07:55:09'),
('a33fbf92-d33b-47d1-be90-b532ffa98c40', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:55:42', '2024-03-27 07:55:42'),
('a33fbf92-d33b-47d1-be90-b532ffa98c40', '04d2d72d-f3fb-4031-858c-cf4037355204', '2024-03-27 07:55:42', '2024-03-27 07:55:42'),
('a33fbf92-d33b-47d1-be90-b532ffa98c40', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:55:42', '2024-03-27 07:55:42'),
('a33fbf92-d33b-47d1-be90-b532ffa98c40', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:55:42', '2024-03-27 07:55:42'),
('a52fcaea-2824-4ac6-9be6-311db358fbef', '04d2d72d-f3fb-4031-858c-cf4037355204', '2024-03-27 07:55:20', '2024-03-27 07:55:20'),
('a52fcaea-2824-4ac6-9be6-311db358fbef', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:55:20', '2024-03-27 07:55:20'),
('a52fcaea-2824-4ac6-9be6-311db358fbef', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:55:20', '2024-03-27 07:55:20'),
('a9640068-db7c-4c05-8d9f-adb9f890daee', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:57:38', '2024-03-27 07:57:38'),
('a9640068-db7c-4c05-8d9f-adb9f890daee', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:57:38', '2024-03-27 07:57:38'),
('a9640068-db7c-4c05-8d9f-adb9f890daee', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:57:38', '2024-03-27 07:57:38'),
('a9640068-db7c-4c05-8d9f-adb9f890daee', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 07:57:38', '2024-03-27 07:57:38'),
('a9640068-db7c-4c05-8d9f-adb9f890daee', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 07:57:38', '2024-03-27 07:57:38'),
('a9640068-db7c-4c05-8d9f-adb9f890daee', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:57:38', '2024-03-27 07:57:38'),
('acb1664b-5cfe-4eda-9fe4-746d9ec214f5', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:57:21', '2024-03-27 07:57:21'),
('acb1664b-5cfe-4eda-9fe4-746d9ec214f5', '04d2d72d-f3fb-4031-858c-cf4037355204', '2024-03-27 07:57:21', '2024-03-27 07:57:21'),
('acb1664b-5cfe-4eda-9fe4-746d9ec214f5', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:57:21', '2024-03-27 07:57:21'),
('acb1664b-5cfe-4eda-9fe4-746d9ec214f5', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:57:21', '2024-03-27 07:57:21'),
('adb4aa7e-e63b-4d4f-adf3-59770f4fac48', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:48:28', '2024-03-27 07:48:28'),
('adb4aa7e-e63b-4d4f-adf3-59770f4fac48', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:48:28', '2024-03-27 07:48:28'),
('adb4aa7e-e63b-4d4f-adf3-59770f4fac48', 'e134ec46-811e-408a-9d03-9d60c26b6932', '2024-03-27 07:48:28', '2024-03-27 07:48:28'),
('d0681c2a-be4b-45a1-afb9-6b8778fbeb81', '0e916773-12be-4840-ade7-263cb57f484c', '2024-03-27 07:49:37', '2024-03-27 07:49:37'),
('d0681c2a-be4b-45a1-afb9-6b8778fbeb81', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:49:37', '2024-03-27 07:49:37'),
('d0681c2a-be4b-45a1-afb9-6b8778fbeb81', '679de0eb-1575-4bd7-a5b5-92845f1bc2eb', '2024-03-27 07:49:37', '2024-03-27 07:49:37'),
('d0681c2a-be4b-45a1-afb9-6b8778fbeb81', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:49:37', '2024-03-27 07:49:37'),
('d124db6d-f620-469d-b621-5e891523bb0b', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:57:10', '2024-03-27 07:57:10'),
('d124db6d-f620-469d-b621-5e891523bb0b', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:57:10', '2024-03-27 07:57:10'),
('d124db6d-f620-469d-b621-5e891523bb0b', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:57:10', '2024-03-27 07:57:10'),
('d1da1cc0-fb60-4325-8e48-5d7dfc8bdc19', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:50:16', '2024-03-27 07:50:16'),
('d1da1cc0-fb60-4325-8e48-5d7dfc8bdc19', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:50:16', '2024-03-27 07:50:16'),
('d4555a2e-8b97-4a79-a494-e35558462c08', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:55:32', '2024-03-27 07:55:32'),
('d4555a2e-8b97-4a79-a494-e35558462c08', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:55:32', '2024-03-27 07:55:32'),
('d4555a2e-8b97-4a79-a494-e35558462c08', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 07:55:32', '2024-03-27 07:55:32'),
('d4555a2e-8b97-4a79-a494-e35558462c08', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 07:55:32', '2024-03-27 07:55:32'),
('d4555a2e-8b97-4a79-a494-e35558462c08', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:55:32', '2024-03-27 07:55:32'),
('d7bd1e40-1971-48db-b9e7-63e779332167', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:56:56', '2024-03-27 07:56:56'),
('d7bd1e40-1971-48db-b9e7-63e779332167', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:56:56', '2024-03-27 07:56:56'),
('df9953fe-9340-4d51-9a93-91ed0d33d1a0', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:48:43', '2024-03-27 07:48:43'),
('df9953fe-9340-4d51-9a93-91ed0d33d1a0', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 07:48:43', '2024-03-27 07:48:43'),
('df9953fe-9340-4d51-9a93-91ed0d33d1a0', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 07:48:43', '2024-03-27 07:48:43'),
('df9953fe-9340-4d51-9a93-91ed0d33d1a0', 'ac2a335f-c811-43e1-b70f-c1d69891ed4b', '2024-03-27 07:48:43', '2024-03-27 07:48:43'),
('df9953fe-9340-4d51-9a93-91ed0d33d1a0', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:48:43', '2024-03-27 07:48:43'),
('dfa56b77-f799-4c21-a8c0-dfc4c1295416', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:56:21', '2024-03-27 07:56:21'),
('dfa56b77-f799-4c21-a8c0-dfc4c1295416', '04d2d72d-f3fb-4031-858c-cf4037355204', '2024-03-27 07:56:21', '2024-03-27 07:56:21'),
('dfa56b77-f799-4c21-a8c0-dfc4c1295416', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:56:21', '2024-03-27 07:56:21'),
('f2184ee3-8485-450f-aa71-0a565269cfb2', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:50:29', '2024-03-27 07:50:29'),
('f2184ee3-8485-450f-aa71-0a565269cfb2', 'cf29c2fa-6b2a-470f-be1d-ef258e239929', '2024-03-27 07:50:29', '2024-03-27 07:50:29'),
('fe0393a8-249c-4133-a020-4c921316b267', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:56:34', '2024-03-27 07:56:34'),
('fe0393a8-249c-4133-a020-4c921316b267', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:56:34', '2024-03-27 07:56:34'),
('fe0393a8-249c-4133-a020-4c921316b267', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 07:56:34', '2024-03-27 07:56:34'),
('fe0393a8-249c-4133-a020-4c921316b267', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:56:34', '2024-03-27 07:56:34');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `type`, `url`, `image`, `author`, `author_id`, `language`, `created_at`, `updated_at`) VALUES
('12fa8409-fc17-4603-ace2-cd6fcbd85e80', 'Entrevista a Irene Montero', 'La invitada 142 del Podcast es la política y ex Ministra de Igualdad Irene Montero. En esta entrevista tenemos una política que no deja indiferente a nadie, llegó con el anterior gobierno de España a ser Ministra de igualdad. Primera vez que hay un ministerio de igualdad y un gobierno de coalición, nos contará cómo lo ha vivido desde dentro. Le montaron otro partido acercándose las elecciones, el partido “Sumar” liderado por Yolanda Díaz, cómo lo vivió? Cuál es su relación con ella? Además, pusieron como requisito para las elecciones donde iban Sumar y Podemos, que ella, Irene Montero, no estuviera en las listas. ¿Cuál fue el motivo y quien lo decidió así? Una entrevista donde conocer el lado mas personal de Irene, pero también donde le preguntaremos por temas polémicos y leyes polémicas como la del “sólo el Si es Si” o la “ley trans”.', 'youtube', 'https://i.ytimg.com/vi/tgOxJKKarV8/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&amp;rs=AOn4CLD5J3sjlwXs6sSs4niOHWYaZUrGJw', 'https://www.youtube.com/watch?v=tgOxJKKarV8', 'Ibai Vegan', '42b88635-4425-4cb3-81db-e0f20fcc294e', 'ES', '2024-03-27 07:59:53', '2024-03-27 07:59:53'),
('28832be3-0b20-4c0a-94c9-ec505a80f76b', 'Las 5 acciones que más reducirían el impacto medioambiental de los españoles', 'A veces parece que vivimos en el día de la marmota. No hace ni 3 meses que estaba escribiendo sobre cómo evitar olas de calor a corto plazo. Más de 500 muertes. Más de 30 incendios. Así llevamos la ola de calor de julio. ¿Desolador? Sin duda. Pero en medio de todas las emociones sigue la acción y la ciencia. Varios estudios muestran que estas situaciones extremas son el punto de inflexión que mucha gente necesita para empezar a actuar. Para todas esas personas escribo este artículo. Una recopilación de las acciones más importantes. ¿Y cómo sé que son las más importantes? Porque me voy a basar en los datos. Concretamente la referencia de este artículo es el Informe de Sostenibilidad de Consumo de España (2022). Cómo por ahora ningún gobierno me ha pedido un informe de las medidas efectivas, lo que te voy a proponer son las acciones que podemos poner en práctica la gente corriente.', 'webpage', 'https://www.barbarapgs.com/blog/las-5-acciones-que-ms-reduciran-el-impacto-medioambiental-de-los-espaoles', 'https://images.squarespace-cdn.com/content/v1/622f84208feb0027729013ad/929a2570-105e-43cf-b0d3-99ecd4c5031f/grafico_sectores.jpg?format=2500w', 'Bárbara González', 'd4555a2e-8b97-4a79-a494-e35558462c08', 'ES', '2024-03-27 07:58:52', '2024-03-27 07:58:52'),
('4128d037-6159-41f0-a7d9-bfb80edf947b', 'Mascletá en Madrid', 'Ningún ser inteligente destrozaría el planeta donde vive. No solo no nos ponemos a protegerlo sino que cada día destrozamos más y más y más la naturaleza y a todos sus habitantes. Vergüenza de toda la gente que lleva banderitas pero está destruyendo su tierra; patriota es quien defiende su tierra, quien destruye su tierra es antipatriota', 'instagram', 'https://www.tiktok.com/@xavi.animal/video/7337017354112568581', 'https://www.instagram.com/reel/C3fWFBQtlS6/?igsh=MWJpZzh3eW5wdWxyZA==', 'Xavi Animal', '29f9ac69-efde-4f7d-a454-33b8535505a7', 'ES', '2024-03-27 07:59:25', '2024-03-27 07:59:25'),
('42e7620d-22b7-4f59-aff2-a1be91d261ef', 'Bruno León (Activista Trans) | Transexualidad, veganismo y más', 'Hoy tenemos a Bruno León con quién aprenderemos y escucharemos la historia de una persona trans', 'podcast', 'https://open.spotify.com/episode/10dOWUhvVWTwS5ynojjAqt?si=sdYlLMjETzW98VAbOCfEbA', 'https://i.scdn.co/image/ab6765630000ba8ab76ffafb73ee09b9227a1ce9', 'Ibai Vegan', '42b88635-4425-4cb3-81db-e0f20fcc294e', 'ES', '2024-03-27 07:58:32', '2024-03-27 07:58:32'),
('5e3789d2-4498-4065-9186-f17911a7d04c', 'Nunca verás tu vida de la misma manera - Discurso que te abrirá los ojos', 'Mira el discurso que fue dado a miles de estudiantes en universidades del Reino Unido.', 'youtube', 'https://i.ytimg.com/vi/Z3u7hXpOm58/hqdefault.jpg?s…AFwAcABBg==&rs=AOn4CLAbfO7-oOFBlohJBXjCbvrIX6lKaw', 'https://www.youtube.com/watch?v=Z3u7hXpOm58', 'Earthling Ed', '3c3dbef2-b080-4efb-8a9e-731fb4d71c40', 'EN', '2024-03-27 08:00:08', '2024-03-27 08:00:08'),
('77426ca2-4a27-438e-b904-c5fde3c1a733', 'Albóndigas Veganas en Salsa', 'Tiempo de preparación: 40 mins, Tiempo de cocina: 45 mins, INGREDIENTES PARA LAS ALBÓNDIGAS: 185 gr Copos de avena finos, 80 gr Proteína de guisante, 600 gr Caldo vegetal, 50 gr Salsa de soja, 1 Cucharada de lino molido, 2 rebanadas de pan de molde untadas den leche vegetal sin azúcares (45 gr de leche), 1/2 Cebolla, 2 Dientes de ajo sin el nervio, 1 Manojo de perejil fresco muy picadito, 80 gr Harina de garbanzo, 65 gr Pan rallado, Sal, Harina de arroz (para rebozarlas), INGREDIENTES PARA LA SALSA: 4 Cebollas, 2 Zanahorias, 3 Dientes de ajo, 2 Puerros, 2 Cucharadas de harina, 1 Litro de Caldo vegetal, 1/2 Taza de salsa de tomate, Pimienta, Sal', 'youtube', 'https://peacelovevegan.es/recetas/albondigas-veganas-en-salsa/', 'https://www.youtube.com/watch?v=BdD_-u7grQw', 'Izaskun Unibaso', '8b22b59a-9299-4565-b3ba-6873c7c9f172', 'ES', '2024-03-27 07:59:08', '2024-03-27 07:59:08'),
('7fee26e0-d524-4442-8884-8ecb84b45547', 'Mi dieta cojea: Los mitos sobre nutrición que te han hecho creer', 'Quién no ha oído, y repetido, muchas veces frases como «La grasa engorda», «Para adelgazar debemos tomar menos calorías», «Desayunar es obligatorio para llevar una dieta saludable» o «Los huevos suben el colesterol». En Mi dieta cojea, Aitor Sánchez desmonta muchos de los mitos relacionados con la alimentación y nos explica qué verdades y mentiras se esconden detrás de muchas creencias que suelen provenir de la falta de información rigurosa, la manipulación de los mensajes publicitarios por parte de la industria alimentaria e incluso de los dogmas sociales. El principal objetivo es que el lector pueda desarrollar una conciencia crítica y profundizar en el aprendizaje de los principales conceptos de lo que debe ser una alimentación saludable.', 'libro', 'https://www.goodreads.com/es/book/show/32176802', 'https://m.media-amazon.com/images/I/91jlW4R+pfL._AC_UF1000,1000_QL80_.jpg', 'Aitor Sánchez', '3939bec1-31d2-4890-8d58-c087515d6262', 'ES', '2024-03-27 07:58:11', '2024-03-27 07:58:11'),
('cac0ac72-62d3-4855-b8ae-34f4525464db', 'Seaspiracy', 'Un director apasionado de los océanos decide realizar un documental en el que se demuestre el daño que el ser humano causa a las especies marinas, desvelando en el proceso una alarmante corrupción mundial.', 'película', 'https://www.netflix.com/cl/title/81014008', 'https://www.youtube.com/watch?v=t6eT33o66dA', 'Seaspiracy', 'ab03eeb3-1170-4fc1-aeac-e27ce35c6daf', 'ES', '2024-03-27 07:59:39', '2024-03-27 07:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `post_theme`
--

CREATE TABLE `post_theme` (
  `post_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_theme`
--

INSERT INTO `post_theme` (`post_id`, `theme_id`, `created_at`, `updated_at`) VALUES
('12fa8409-fc17-4603-ace2-cd6fcbd85e80', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:59:53', '2024-03-27 07:59:53'),
('12fa8409-fc17-4603-ace2-cd6fcbd85e80', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 07:59:53', '2024-03-27 07:59:53'),
('12fa8409-fc17-4603-ace2-cd6fcbd85e80', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:59:53', '2024-03-27 07:59:53'),
('28832be3-0b20-4c0a-94c9-ec505a80f76b', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:58:52', '2024-03-27 07:58:52'),
('28832be3-0b20-4c0a-94c9-ec505a80f76b', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:58:52', '2024-03-27 07:58:52'),
('28832be3-0b20-4c0a-94c9-ec505a80f76b', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 07:58:52', '2024-03-27 07:58:52'),
('28832be3-0b20-4c0a-94c9-ec505a80f76b', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 07:58:52', '2024-03-27 07:58:52'),
('28832be3-0b20-4c0a-94c9-ec505a80f76b', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:58:52', '2024-03-27 07:58:52'),
('4128d037-6159-41f0-a7d9-bfb80edf947b', '0247102e-8803-4051-969c-1aae9a977019', '2024-03-27 07:59:25', '2024-03-27 07:59:25'),
('4128d037-6159-41f0-a7d9-bfb80edf947b', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:59:25', '2024-03-27 07:59:25'),
('4128d037-6159-41f0-a7d9-bfb80edf947b', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 07:59:25', '2024-03-27 07:59:25'),
('4128d037-6159-41f0-a7d9-bfb80edf947b', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:59:25', '2024-03-27 07:59:25'),
('42e7620d-22b7-4f59-aff2-a1be91d261ef', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:58:32', '2024-03-27 07:58:32'),
('42e7620d-22b7-4f59-aff2-a1be91d261ef', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:58:32', '2024-03-27 07:58:32'),
('42e7620d-22b7-4f59-aff2-a1be91d261ef', 'f4cd0727-d5ad-4d1e-a4a3-be5b39451af4', '2024-03-27 07:58:32', '2024-03-27 07:58:32'),
('5e3789d2-4498-4065-9186-f17911a7d04c', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 08:00:08', '2024-03-27 08:00:08'),
('5e3789d2-4498-4065-9186-f17911a7d04c', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 08:00:08', '2024-03-27 08:00:08'),
('5e3789d2-4498-4065-9186-f17911a7d04c', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 08:00:08', '2024-03-27 08:00:08'),
('5e3789d2-4498-4065-9186-f17911a7d04c', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 08:00:08', '2024-03-27 08:00:08'),
('5e3789d2-4498-4065-9186-f17911a7d04c', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 08:00:08', '2024-03-27 08:00:08'),
('5e3789d2-4498-4065-9186-f17911a7d04c', 'f4cd0727-d5ad-4d1e-a4a3-be5b39451af4', '2024-03-27 08:00:08', '2024-03-27 08:00:08'),
('77426ca2-4a27-438e-b904-c5fde3c1a733', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:59:08', '2024-03-27 07:59:08'),
('77426ca2-4a27-438e-b904-c5fde3c1a733', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:59:08', '2024-03-27 07:59:08'),
('7fee26e0-d524-4442-8884-8ecb84b45547', '00e94954-0856-4dc6-a6b7-73dd9fbbbf45', '2024-03-27 07:58:11', '2024-03-27 07:58:11'),
('7fee26e0-d524-4442-8884-8ecb84b45547', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:58:11', '2024-03-27 07:58:11'),
('7fee26e0-d524-4442-8884-8ecb84b45547', '61c52365-98e2-4f96-bb69-51eea833cab4', '2024-03-27 07:58:11', '2024-03-27 07:58:11'),
('7fee26e0-d524-4442-8884-8ecb84b45547', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:58:11', '2024-03-27 07:58:11'),
('7fee26e0-d524-4442-8884-8ecb84b45547', 'f4cd0727-d5ad-4d1e-a4a3-be5b39451af4', '2024-03-27 07:58:11', '2024-03-27 07:58:11'),
('cac0ac72-62d3-4855-b8ae-34f4525464db', '0247102e-8803-4051-969c-1aae9a977019', '2024-03-27 07:59:39', '2024-03-27 07:59:39'),
('cac0ac72-62d3-4855-b8ae-34f4525464db', '05149a3a-37e2-4366-89d7-49af72f82465', '2024-03-27 07:59:39', '2024-03-27 07:59:39'),
('cac0ac72-62d3-4855-b8ae-34f4525464db', '1327b304-cd5e-443c-89ad-ffd4b43633aa', '2024-03-27 07:59:39', '2024-03-27 07:59:39'),
('cac0ac72-62d3-4855-b8ae-34f4525464db', '8b510b32-ded1-409b-9ebf-60e0b4816b94', '2024-03-27 07:59:39', '2024-03-27 07:59:39'),
('cac0ac72-62d3-4855-b8ae-34f4525464db', 'b17582d9-81b2-4520-9d8d-f917c9a8b02e', '2024-03-27 07:59:39', '2024-03-27 07:59:39'),
('cac0ac72-62d3-4855-b8ae-34f4525464db', 'f4cd0727-d5ad-4d1e-a4a3-be5b39451af4', '2024-03-27 07:59:39', '2024-03-27 07:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `name`, `created_at`, `updated_at`) VALUES
('00e94954-0856-4dc6-a6b7-73dd9fbbbf45', 'alimentación', '2024-03-27 07:49:11', '2024-03-27 07:49:11'),
('0247102e-8803-4051-969c-1aae9a977019', 'animales', '2024-03-27 07:53:37', '2024-03-27 07:53:37'),
('04d2d72d-f3fb-4031-858c-cf4037355204', 'crianza', '2024-03-27 07:53:19', '2024-03-27 07:53:19'),
('05149a3a-37e2-4366-89d7-49af72f82465', 'sostenibilidad', '2024-03-27 07:53:31', '2024-03-27 07:53:31'),
('0e916773-12be-4840-ade7-263cb57f484c', 'animales', '2024-03-27 07:49:37', '2024-03-27 07:49:37'),
('1327b304-cd5e-443c-89ad-ffd4b43633aa', 'activismo', '2024-03-27 07:48:28', '2024-03-27 07:48:28'),
('32b9aa3e-f0cb-4e17-8421-975d2dabfd7e', 'moda', '2024-03-27 07:52:38', '2024-03-27 07:52:38'),
('5749a031-e68a-466a-b1d2-c499bf16c52d', 'belleza', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('61c52365-98e2-4f96-bb69-51eea833cab4', 'investigación', '2024-03-27 07:48:43', '2024-03-27 07:48:43'),
('66db0cfb-1c5b-4790-9a75-1fe50e2a97e0', 'ayuda', '2024-03-27 07:53:12', '2024-03-27 07:53:12'),
('679de0eb-1575-4bd7-a5b5-92845f1bc2eb', 'ayuda', '2024-03-27 07:49:37', '2024-03-27 07:49:37'),
('8b510b32-ded1-409b-9ebf-60e0b4816b94', 'medioambiente', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('9c459541-dbfe-4cad-bfb7-206815a5fa42', 'medioambiente', '2024-03-27 07:52:26', '2024-03-27 07:52:26'),
('a1b566d7-743d-4d63-95c3-ac0d932b74cf', 'moda', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('ab9c91ec-f48a-41d2-b641-1638e45bc9d2', 'alimentación', '2024-03-27 07:52:51', '2024-03-27 07:52:51'),
('ac2a335f-c811-43e1-b70f-c1d69891ed4b', 'sostenibilidad', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('b17582d9-81b2-4520-9d8d-f917c9a8b02e', 'veganismo', '2024-03-27 07:52:05', '2024-03-27 07:52:05'),
('c45d5f7a-e20f-4687-917c-a4c3546ac7b2', 'belleza', '2024-03-27 07:52:16', '2024-03-27 07:52:16'),
('cf29c2fa-6b2a-470f-be1d-ef258e239929', 'veganismo', '2024-03-27 07:48:09', '2024-03-27 07:48:09'),
('e11b6685-78fb-47a7-8c63-e953da118657', 'activismo', '2024-03-27 07:53:06', '2024-03-27 07:53:06'),
('e134ec46-811e-408a-9d03-9d60c26b6932', 'crianza', '2024-03-27 07:48:28', '2024-03-27 07:48:28'),
('f4cd0727-d5ad-4d1e-a4a3-be5b39451af4', 'salud', '2024-03-27 07:53:25', '2024-03-27 07:53:25');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
