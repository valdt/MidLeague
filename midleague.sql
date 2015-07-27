-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Skapad: 28 jul 2015 kl 01:37
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
) ENGINE=MEMORY  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci AUTO_INCREMENT=25 ;

--
-- Dumpning av Data i tabell `log`
--

INSERT INTO `log` (`id`, `date`, `ip`, `code`) VALUES
(1, 'Tuesday, 28-Jul-15 01:31:12 CEST', '192.168.0.5:55238', 402),
(2, 'Tuesday, 28-Jul-15 01:31:12 CEST', '192.168.0.5:55238', 401),
(3, 'Tuesday, 28-Jul-15 01:31:12 CEST', '192.168.0.5:55238', 403),
(4, 'Tuesday, 28-Jul-15 01:32:58 CEST', '192.168.0.5:55298', 402),
(5, 'Tuesday, 28-Jul-15 01:32:58 CEST', '192.168.0.5:55298', 401),
(6, 'Tuesday, 28-Jul-15 01:32:58 CEST', '192.168.0.5:55298', 403),
(7, 'Tuesday, 28-Jul-15 01:34:05 CEST', '192.168.0.5:55328', 402),
(8, 'Tuesday, 28-Jul-15 01:34:05 CEST', '192.168.0.5:55328', 401),
(9, 'Tuesday, 28-Jul-15 01:34:05 CEST', '192.168.0.5:55328', 403),
(10, 'Tuesday, 28-Jul-15 01:35:33 CEST', '192.168.0.5:55347', 402),
(11, 'Tuesday, 28-Jul-15 01:35:33 CEST', '192.168.0.5:55347', 401),
(12, 'Tuesday, 28-Jul-15 01:35:33 CEST', '192.168.0.5:55347', 403),
(13, 'Tuesday, 28-Jul-15 01:35:42 CEST', '192.168.0.5:55358', 402),
(14, 'Tuesday, 28-Jul-15 01:35:42 CEST', '192.168.0.5:55358', 401),
(15, 'Tuesday, 28-Jul-15 01:35:42 CEST', '192.168.0.5:55358', 403),
(16, 'Tuesday, 28-Jul-15 01:35:46 CEST', '192.168.0.5:55369', 402),
(17, 'Tuesday, 28-Jul-15 01:35:46 CEST', '192.168.0.5:55369', 401),
(18, 'Tuesday, 28-Jul-15 01:35:46 CEST', '192.168.0.5:55369', 403),
(19, 'Tuesday, 28-Jul-15 01:35:51 CEST', '192.168.0.5:55376', 402),
(20, 'Tuesday, 28-Jul-15 01:35:51 CEST', '192.168.0.5:55376', 401),
(21, 'Tuesday, 28-Jul-15 01:35:51 CEST', '192.168.0.5:55376', 403),
(22, 'Tuesday, 28-Jul-15 01:36:48 CEST', '192.168.0.5:55439', 402),
(23, 'Tuesday, 28-Jul-15 01:36:48 CEST', '192.168.0.5:55439', 401),
(24, 'Tuesday, 28-Jul-15 01:36:48 CEST', '192.168.0.5:55439', 403);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci AUTO_INCREMENT=5 ;

--
-- Dumpning av Data i tabell `news`
--

INSERT INTO `news` (`id`, `date`, `img`, `title`, `author`, `text`, `text_short`, `comments`) VALUES
(1, 'Thursday, 16-Oct-14 20:09:38 CEST', 'https://placekitten.com/g/700/250', 'Is this ?', 'Le_Dtc', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.\n\nThis a haven where players can compete seriously at their own level. Its a perfect training ground to sharpen your skills until you and you’re team are ready for the big league. Beside hosting tournaments we will also have a live-betting system bringing you statistics and taking the action on step further. Also we plan on rewarding our early followers with a handful of free subscriptions during the beta period.\n\nSite is planned to launch late 2013 or early 2014. *cough* 2016 *cough*', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.', '2'),
(2, 'Thursday, 16-Oct-14 20:09:38 CEST', 'https://placekitten.com/g/225/125', 'What is?', 'Haddes', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.\r\n\r\nThis a haven where players can compete seriously at their own level. Its a perfect training ground to sharpen your skills until you and you’re team are ready for the big league. Beside hosting tournaments we will also have a live-betting system bringing you statistics and taking the action on step further. Also we plan on rewarding our early followers with a handful of free subscriptions during the beta period.\r\n\r\nSite is planned to launch late 2013 or early 2014. *cough* 2016 *cough*', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.', '3'),
(3, 'Thursday, 16-Oct-14 20:09:38 CEST', 'https://placekitten.com/g/225/125', 'What is this ?', 'bigbuddha', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.\r\n\r\nThis a haven where players can compete seriously at their own level. Its a perfect training ground to sharpen your skills until you and you’re team are ready for the big league. Beside hosting tournaments we will also have a live-betting system bringing you statistics and taking the action on step further. Also we plan on rewarding our early followers with a handful of free subscriptions during the beta period.\r\n\r\nSite is planned to launch late 2013 or early 2014. *cough* 2016 *cough*', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.', '2'),
(4, 'Thursday, 16-Oct-14 20:09:38 CEST', 'https://placekitten.com/g/225/125', 'this ?', 'yoieh', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.\r\n\r\nThis a haven where players can compete seriously at their own level. Its a perfect training ground to sharpen your skills until you and you’re team are ready for the big league. Beside hosting tournaments we will also have a live-betting system bringing you statistics and taking the action on step further. Also we plan on rewarding our early followers with a handful of free subscriptions during the beta period.\r\n\r\nSite is planned to launch late 2013 or early 2014. *cough* 2016 *cough*', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.', '3');

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
