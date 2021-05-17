-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 20 apr 2021 om 14:08
-- Serverversie: 10.4.8-MariaDB
-- PHP-versie: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin_user`
--

CREATE TABLE `admin_user` (
  `admin_user_id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_token` varchar(255) DEFAULT NULL,
  `password_changed` timestamp NULL DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `admin_user`
--

INSERT INTO `admin_user` (`admin_user_id`, `email`, `password`, `password_token`, `password_changed`, `datetime`) VALUES
(1, 'test@test.nl', '$2y$10$3eJXM2NBYpOH8opTNAHVye/uRtxMhWNLS0NX9qpp1WqygPBnX4vjS', '', '2021-02-18 16:06:05', '2021-02-17 15:32:17'),
(2, 'test2@test2.nl', '', NULL, NULL, '2021-03-08 10:59:42'),
(3, 'test3@test3.nl', '', NULL, NULL, '2021-03-08 11:01:04'),
(4, 'admin@test.nlhhh', '$2y$10$WUJ9A5IFhfClk.e6buceIOAmb/UP73HqIfuhrp6FHfAOPIsF8BZXm', '', '2021-03-11 09:54:37', '2021-03-08 11:10:26'),
(5, 'z@z.nl', '$2y$10$taQE4.CfCBrkf.UWaRFUH.TQdgyn/KyYEEKYmXX.j3M71u4Rb1YVa', '', '2021-03-19 06:17:44', '2021-03-19 06:15:53'),
(12, 'asdf@asdfl.nl', '', NULL, NULL, '2021-03-25 19:33:03'),
(14, 'dddd@els.nl', '', NULL, NULL, '2021-03-26 09:25:18');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`category_id`, `name`, `description`, `active`) VALUES
(1, 'tafellamp', 'Tafellampen zijn binnenlampen ', 1),
(2, 'buitenlamp', 'Buitenlampen zijn lampen voor ', 1),
(3, 'designlamp', 'Design lampen zijn mooie lampe', 1),
(4, 'bureaulamp', 'Bureaulamp is lekker voor op j', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `price` decimal(4,2) NOT NULL,
  `color` varchar(30) NOT NULL,
  `weight` decimal(4,2) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `category_id`, `price`, `color`, `weight`, `active`) VALUES
(1, 'Arstid', 'De lampenkap van textiel geeft warm licht', 2, '20.00', 'wit', '99.63', 1),
(2, 'buitenlamp', 'De lampenkap van textiel geeft mooi lichtsdfsdf', 4, '40.02', 'wit', '89.96', 1),
(3, 'gans-lamp', 'De lampenkap van textiel geeft', 1, '40.00', 'wit', '99.99', 1),
(4, 'giraf-lampssss', 'DDDDDDDe lampenkap van textiel geeft', 3, '40.00', 'wit', '99.99', 1),
(5, 'hektarssss', 'dddddddddddDe lampenkap van textiel geeft', 4, '40.00', 'wit', '99.99', 1),
(6, 'jesse', 'De lampenkap van textiel geeft', 1, '40.00', 'wit', '99.99', 1),
(7, 'lampje', 'De lampenkap van textiel geeft', 1, '40.00', 'wit', '99.99', 1),
(8, 'llahra', 'De lampenkap van textiel geeft', 2, '40.00', 'wit', '99.99', 1),
(9, 'struisvogel-lamp', 'De lampenkap van textiel geeft', 3, '40.00', 'wit', '99.99', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product_image`
--

CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(30) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `product_image`
--

INSERT INTO `product_image` (`product_image_id`, `product_id`, `image`, `active`) VALUES
(1, 1, 'arstid.jpg', 1),
(2, 2, 'buitenlamp.jpg', 1),
(3, 3, 'gans.jpg', 1),
(4, 4, 'giraf.jpg', 1),
(5, 5, 'hektar.jpg', 1),
(6, 6, 'jesse.jpg', 1),
(7, 7, 'lampje.jpg', 1),
(8, 8, 'llahra.jpg', 1),
(9, 9, 'struisvogel.jpg', 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`admin_user_id`);

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexen voor tabel `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_image_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `admin_user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `product_image`
--
ALTER TABLE `product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
