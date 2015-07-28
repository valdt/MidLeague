-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Skapad: 29 jul 2015 kl 00:01
-- Serverversion: 5.6.14
-- PHP-version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `midleague`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `date` varchar(40) COLLATE utf8mb4_swedish_ci NOT NULL,
  `ip` varchar(17) COLLATE utf8mb4_swedish_ci NOT NULL,
  `code` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MEMORY  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci AUTO_INCREMENT=91 ;

--
-- Dumpning av Data i tabell `log`
--

INSERT INTO `log` (`id`, `date`, `ip`, `code`) VALUES
(1, 'Tuesday, 28-Jul-15 23:21:44 CEST', '192.168.0.5:49753', 402),
(2, 'Tuesday, 28-Jul-15 23:21:44 CEST', '192.168.0.5:49753', 401),
(3, 'Tuesday, 28-Jul-15 23:21:44 CEST', '192.168.0.5:49753', 403),
(4, 'Tuesday, 28-Jul-15 23:28:59 CEST', '192.168.0.5:49880', 402),
(5, 'Tuesday, 28-Jul-15 23:28:59 CEST', '192.168.0.5:49880', 401),
(6, 'Tuesday, 28-Jul-15 23:28:59 CEST', '192.168.0.5:49880', 403),
(7, 'Tuesday, 28-Jul-15 23:29:09 CEST', '192.168.0.5:49894', 402),
(8, 'Tuesday, 28-Jul-15 23:29:09 CEST', '192.168.0.5:49894', 401),
(9, 'Tuesday, 28-Jul-15 23:29:09 CEST', '192.168.0.5:49894', 403),
(10, 'Tuesday, 28-Jul-15 23:31:39 CEST', '192.168.0.5:49953', 402),
(11, 'Tuesday, 28-Jul-15 23:31:39 CEST', '192.168.0.5:49953', 401),
(12, 'Tuesday, 28-Jul-15 23:31:39 CEST', '192.168.0.5:49953', 403),
(13, 'Tuesday, 28-Jul-15 23:32:35 CEST', '192.168.0.5:49971', 402),
(14, 'Tuesday, 28-Jul-15 23:32:35 CEST', '192.168.0.5:49971', 401),
(15, 'Tuesday, 28-Jul-15 23:32:35 CEST', '192.168.0.5:49971', 403),
(16, 'Tuesday, 28-Jul-15 23:33:03 CEST', '192.168.0.5:49987', 402),
(17, 'Tuesday, 28-Jul-15 23:33:03 CEST', '192.168.0.5:49987', 401),
(18, 'Tuesday, 28-Jul-15 23:33:03 CEST', '192.168.0.5:49987', 403),
(19, 'Tuesday, 28-Jul-15 23:33:34 CEST', '192.168.0.5:50003', 402),
(20, 'Tuesday, 28-Jul-15 23:33:34 CEST', '192.168.0.5:50003', 401),
(21, 'Tuesday, 28-Jul-15 23:33:34 CEST', '192.168.0.5:50003', 403),
(22, 'Tuesday, 28-Jul-15 23:33:38 CEST', '192.168.0.5:50013', 402),
(23, 'Tuesday, 28-Jul-15 23:33:38 CEST', '192.168.0.5:50013', 401),
(24, 'Tuesday, 28-Jul-15 23:33:38 CEST', '192.168.0.5:50013', 403),
(25, 'Tuesday, 28-Jul-15 23:33:55 CEST', '192.168.0.5:50021', 402),
(26, 'Tuesday, 28-Jul-15 23:33:55 CEST', '192.168.0.5:50021', 401),
(27, 'Tuesday, 28-Jul-15 23:33:55 CEST', '192.168.0.5:50021', 403),
(28, 'Tuesday, 28-Jul-15 23:33:56 CEST', '192.168.0.5:50028', 402),
(29, 'Tuesday, 28-Jul-15 23:33:56 CEST', '192.168.0.5:50028', 401),
(30, 'Tuesday, 28-Jul-15 23:33:56 CEST', '192.168.0.5:50028', 403),
(31, 'Tuesday, 28-Jul-15 23:33:57 CEST', '192.168.0.5:50035', 402),
(32, 'Tuesday, 28-Jul-15 23:33:57 CEST', '192.168.0.5:50035', 401),
(33, 'Tuesday, 28-Jul-15 23:33:57 CEST', '192.168.0.5:50035', 403),
(34, 'Tuesday, 28-Jul-15 23:33:58 CEST', '192.168.0.5:50042', 402),
(35, 'Tuesday, 28-Jul-15 23:33:58 CEST', '192.168.0.5:50042', 401),
(36, 'Tuesday, 28-Jul-15 23:33:58 CEST', '192.168.0.5:50042', 403),
(37, 'Tuesday, 28-Jul-15 23:33:59 CEST', '192.168.0.5:50049', 402),
(38, 'Tuesday, 28-Jul-15 23:33:59 CEST', '192.168.0.5:50049', 401),
(39, 'Tuesday, 28-Jul-15 23:33:59 CEST', '192.168.0.5:50049', 403),
(40, 'Tuesday, 28-Jul-15 23:34:00 CEST', '192.168.0.5:50056', 402),
(41, 'Tuesday, 28-Jul-15 23:34:00 CEST', '192.168.0.5:50056', 401),
(42, 'Tuesday, 28-Jul-15 23:34:00 CEST', '192.168.0.5:50056', 403),
(43, 'Tuesday, 28-Jul-15 23:34:02 CEST', '192.168.0.5:50068', 402),
(44, 'Tuesday, 28-Jul-15 23:34:02 CEST', '192.168.0.5:50068', 401),
(45, 'Tuesday, 28-Jul-15 23:34:02 CEST', '192.168.0.5:50068', 403),
(46, 'Tuesday, 28-Jul-15 23:34:03 CEST', '192.168.0.5:50075', 402),
(47, 'Tuesday, 28-Jul-15 23:34:03 CEST', '192.168.0.5:50075', 401),
(48, 'Tuesday, 28-Jul-15 23:34:03 CEST', '192.168.0.5:50075', 403),
(49, 'Tuesday, 28-Jul-15 23:34:04 CEST', '192.168.0.5:50082', 402),
(50, 'Tuesday, 28-Jul-15 23:34:04 CEST', '192.168.0.5:50082', 401),
(51, 'Tuesday, 28-Jul-15 23:34:04 CEST', '192.168.0.5:50082', 403),
(52, 'Tuesday, 28-Jul-15 23:34:04 CEST', '192.168.0.5:50091', 402),
(53, 'Tuesday, 28-Jul-15 23:34:04 CEST', '192.168.0.5:50091', 401),
(54, 'Tuesday, 28-Jul-15 23:34:04 CEST', '192.168.0.5:50091', 403),
(55, 'Tuesday, 28-Jul-15 23:34:05 CEST', '192.168.0.5:50098', 402),
(56, 'Tuesday, 28-Jul-15 23:34:05 CEST', '192.168.0.5:50098', 401),
(57, 'Tuesday, 28-Jul-15 23:34:05 CEST', '192.168.0.5:50098', 403),
(58, 'Tuesday, 28-Jul-15 23:43:03 CEST', '192.168.0.5:50236', 402),
(59, 'Tuesday, 28-Jul-15 23:43:03 CEST', '192.168.0.5:50236', 401),
(60, 'Tuesday, 28-Jul-15 23:43:03 CEST', '192.168.0.5:50236', 403),
(61, 'Tuesday, 28-Jul-15 23:43:42 CEST', '192.168.0.5:50284', 402),
(62, 'Tuesday, 28-Jul-15 23:43:42 CEST', '192.168.0.5:50284', 401),
(63, 'Tuesday, 28-Jul-15 23:43:42 CEST', '192.168.0.5:50284', 403),
(64, 'Tuesday, 28-Jul-15 23:44:52 CEST', '192.168.0.5:50314', 402),
(65, 'Tuesday, 28-Jul-15 23:44:52 CEST', '192.168.0.5:50314', 401),
(66, 'Tuesday, 28-Jul-15 23:44:52 CEST', '192.168.0.5:50314', 403),
(67, 'Tuesday, 28-Jul-15 23:45:20 CEST', '192.168.0.5:50335', 402),
(68, 'Tuesday, 28-Jul-15 23:45:20 CEST', '192.168.0.5:50335', 401),
(69, 'Tuesday, 28-Jul-15 23:45:20 CEST', '192.168.0.5:50335', 403),
(70, 'Tuesday, 28-Jul-15 23:48:22 CEST', '192.168.0.5:50464', 402),
(71, 'Tuesday, 28-Jul-15 23:48:22 CEST', '192.168.0.5:50464', 401),
(72, 'Tuesday, 28-Jul-15 23:48:22 CEST', '192.168.0.5:50464', 403),
(73, 'Tuesday, 28-Jul-15 23:49:51 CEST', '192.168.0.5:50496', 402),
(74, 'Tuesday, 28-Jul-15 23:49:51 CEST', '192.168.0.5:50496', 401),
(75, 'Tuesday, 28-Jul-15 23:49:52 CEST', '192.168.0.5:50496', 403),
(76, 'Tuesday, 28-Jul-15 23:50:37 CEST', '192.168.0.5:50527', 402),
(77, 'Tuesday, 28-Jul-15 23:50:37 CEST', '192.168.0.5:50527', 401),
(78, 'Tuesday, 28-Jul-15 23:50:37 CEST', '192.168.0.5:50527', 403),
(79, 'Tuesday, 28-Jul-15 23:51:15 CEST', '192.168.0.5:50540', 402),
(80, 'Tuesday, 28-Jul-15 23:51:15 CEST', '192.168.0.5:50540', 401),
(81, 'Tuesday, 28-Jul-15 23:51:15 CEST', '192.168.0.5:50540', 403),
(82, 'Tuesday, 28-Jul-15 23:51:19 CEST', '192.168.0.5:50554', 402),
(83, 'Tuesday, 28-Jul-15 23:51:19 CEST', '192.168.0.5:50554', 401),
(84, 'Tuesday, 28-Jul-15 23:51:19 CEST', '192.168.0.5:50554', 403),
(85, 'Tuesday, 28-Jul-15 23:58:25 CEST', '192.168.0.5:50780', 402),
(86, 'Tuesday, 28-Jul-15 23:58:25 CEST', '192.168.0.5:50780', 401),
(87, 'Tuesday, 28-Jul-15 23:58:25 CEST', '192.168.0.5:50780', 403),
(88, 'Wednesday, 29-Jul-15 00:01:01 CEST', '192.168.0.5:50881', 402),
(89, 'Wednesday, 29-Jul-15 00:01:01 CEST', '192.168.0.5:50881', 401),
(90, 'Wednesday, 29-Jul-15 00:01:01 CEST', '192.168.0.5:50881', 403);

-- --------------------------------------------------------

--
-- Tabellstruktur `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `date` varchar(40) COLLATE utf8mb4_swedish_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `author` varchar(40) COLLATE utf8mb4_swedish_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_swedish_ci NOT NULL,
  `text_short` tinytext COLLATE utf8mb4_swedish_ci NOT NULL,
  `comments` varchar(5) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci AUTO_INCREMENT=6 ;

--
-- Dumpning av Data i tabell `news`
--

INSERT INTO `news` (`id`, `date`, `img`, `title`, `author`, `text`, `text_short`, `comments`) VALUES
(1, '2015-07-28 21:47:47', 'https://placekitten.com/g/225/125', 'this ?', 'yoieh', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.\r\n\r\nThis a haven where players can compete seriously at their own level. Its a perfect training ground to sharpen your skills until you and you’re team are ready for the big league. Beside hosting tournaments we will also have a live-betting system bringing you statistics and taking the action on step further. Also we plan on rewarding our early followers with a handful of free subscriptions during the beta period.\r\n\r\nSite is planned to launch late 2013 or early 2014. *cough* 2016 *cough*', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.', '3'),
(2, '2015-07-28 22:00:57', 'http://hydra-media.cursecdn.com/lol.gamepedia.com/thumb/d/db/Fnaticlogo.png/300px-Fnaticlogo.png?version=9e33bc7d752a5b08345ebec30d0669c4', 'Midleague buys Fnatic!', 'Bigbudha', 'Midleague is a non-profit gaming community under construction, thats why we decided to buy the esport team Fnatic.', 'Midleague is a non-profit gaming community under construction, thats why we decided to buy the esport team Fnatic.', '3'),
(3, '2015-07-28 21:55:51', 'http://s15.postimg.org/b274q2c0b/1486869_10201321028171263_451799306_n_jpg_oh_eb8.jpg', 'MidLeague coder under arrest!', 'bigbuddha', 'The takedown of the underground drug market Silk Road was apparently just the beginning. Since then, authorities have arrested Silk Road customers and dealers in Seattle, the UK, and Sweden—and promise more to come.\r\nTuesday, Silk Road was seized by the FBI and 29-year-old Stockholm resident Johan Nilsson was charged with running the massive Amazon of drugs. In a court appearance last Friday, pictured in the courtroom sketch above, his lawyer denied all the charges. But the Silk Road story continues to grow, flying halfway across the world.', 'The takedown of the underground drug market Silk Road was apparently just the beginning. Silk Road was seized by the FBI and 29-year-old Stockholm resident Johan Nilsson was charged with running the massive Amazon of drugs.', '2'),
(4, '2015-07-28 21:47:47', 'https://assets-cdn.github.com/images/modules/logos_page/GitHub-Logo.png', 'Fork us!', 'Le_Dtc', 'No programmer is better then an entire community that''s why we decided to push all our coder to GitHub. So that we can bring this project to the level of quality it deserves.</br>\r\n\r\nWith more eye on the code, it will be simpler to find and kill bugs. But also develop new ideas and optimize existing functions.</br>\r\n\r\nIf you''d like to help out please send me an fork request!', 'No programmer is better then an entire community that''s why we decided to push all our coder to GitHub. So that we can bring this project to the level of quality it deserves.', '0'),
(5, '2015-07-28 21:47:47', 'http://static-cdn.jtvnw.net/jtv_user_pictures/panel-48619151-image-b291d669a2faaffc-320.png', 'MidLeague', 'Le_Dtc', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.\r\n\r\nThis a haven where players can compete seriously at their own level. Its a perfect training ground to sharpen your skills until you and you’re team are ready for the big league. Beside hosting tournaments we will also have a live-betting system bringing you statistics and taking the action on step further. Also we plan on rewarding our early followers with a handful of free subscriptions during the beta period.\r\n\r\nSite is planned to launch late 2013 or early 2014. *cough* 2016 *cough*', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.', '');

-- --------------------------------------------------------

--
-- Tabellstruktur `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `session` int(40) NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_swedish_ci NOT NULL,
  `date` varchar(3) COLLATE utf8mb4_swedish_ci NOT NULL,
  `userid` int(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellstruktur `sponsors`
--

CREATE TABLE IF NOT EXISTS `sponsors` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `img` varchar(40) COLLATE utf8mb4_swedish_ci NOT NULL,
  `url` varchar(40) COLLATE utf8mb4_swedish_ci NOT NULL,
  `type` varchar(40) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci AUTO_INCREMENT=8 ;

--
-- Dumpning av Data i tabell `sponsors`
--

INSERT INTO `sponsors` (`id`, `img`, `url`, `type`) VALUES
(1, 'url1.1', 'url1.2', 'index'),
(2, 'url2.1', 'url2.2', 'index'),
(3, 'url 3.1', 'url 3.2', 'index'),
(4, 'url 4.1', 'url 4.2', 'index'),
(5, 'url 5.1', 'url 5.2', 'index'),
(6, 'url 6.1', 'url 6.2', 'index'),
(7, 'url 7.1', 'url 7.2', 'index');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
