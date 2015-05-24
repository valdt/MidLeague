-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Skapad: 24 maj 2015 kl 20:57
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci AUTO_INCREMENT=5 ;

--
-- Dumpning av Data i tabell `log`
--

INSERT INTO `log` (`id`, `date`, `ip`, `code`) VALUES
(3, 'Sunday, 24-May-15 20:56:20 CEST', '192.168.0.5:49605', 402),
(4, 'Sunday, 24-May-15 20:56:20 CEST', '192.168.0.5:49605', 401);

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
(1, 'Thursday, 16-Oct-14 20:09:38 CEST', 'https://placekitten.com/g/700/250', 'What is this ?', 'Le_Dtc', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.\n\nThis a haven where players can compete seriously at their own level. Its a perfect training ground to sharpen your skills until you and you’re team are ready for the big league. Beside hosting tournaments we will also have a live-betting system bringing you statistics and taking the action on step further. Also we plan on rewarding our early followers with a handful of free subscriptions during the beta period.\n\nSite is planned to launch late 2013 or early 2014. *cough* 2016 *cough*', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.', '2'),
(2, 'Thursday, 16-Oct-14 20:09:38 CEST', 'https://placekitten.com/g/225/125', 'What is this ?', 'yoieh', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.\r\n\r\nThis a haven where players can compete seriously at their own level. Its a perfect training ground to sharpen your skills until you and you’re team are ready for the big league. Beside hosting tournaments we will also have a live-betting system bringing you statistics and taking the action on step further. Also we plan on rewarding our early followers with a handful of free subscriptions during the beta period.\r\n\r\nSite is planned to launch late 2013 or early 2014. *cough* 2016 *cough*', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.', '3'),
(3, 'Thursday, 16-Oct-14 20:09:38 CEST', 'https://placekitten.com/g/225/125', 'What is this ?', 'bigbuddha', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.\r\n\r\nThis a haven where players can compete seriously at their own level. Its a perfect training ground to sharpen your skills until you and you’re team are ready for the big league. Beside hosting tournaments we will also have a live-betting system bringing you statistics and taking the action on step further. Also we plan on rewarding our early followers with a handful of free subscriptions during the beta period.\r\n\r\nSite is planned to launch late 2013 or early 2014. *cough* 2016 *cough*', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.', '2'),
(4, 'Thursday, 16-Oct-14 20:09:38 CEST', 'https://placekitten.com/g/225/125', 'What is this ?', 'yoieh', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.\r\n\r\nThis a haven where players can compete seriously at their own level. Its a perfect training ground to sharpen your skills until you and you’re team are ready for the big league. Beside hosting tournaments we will also have a live-betting system bringing you statistics and taking the action on step further. Also we plan on rewarding our early followers with a handful of free subscriptions during the beta period.\r\n\r\nSite is planned to launch late 2013 or early 2014. *cough* 2016 *cough*', 'Midleague is a non-profit gaming community under construction, that focus on giving the real e-sport experience to mid level players around the world. We will be hosting tournaments with prize pools.', '3');

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
