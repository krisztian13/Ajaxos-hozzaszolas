-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2018. Jan 21. 14:53
-- Kiszolgáló verziója: 10.1.29-MariaDB
-- PHP verzió: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vendegkonyv`
--
CREATE DATABASE IF NOT EXISTS `vendegkonyv` DEFAULT CHARACTER SET latin2 COLLATE latin2_bin;
USE `vendegkonyv`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vendegkonyv`
--

CREATE TABLE `vendegkonyv` (
  `id` int(11) NOT NULL,
  `datum` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nev` varchar(50) COLLATE latin2_bin NOT NULL,
  `hozzaszolas` text COLLATE latin2_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin2 COLLATE=latin2_bin;

--
-- A tábla adatainak kiíratása `vendegkonyv`
--

INSERT INTO `vendegkonyv` (`id`, `datum`, `nev`, `hozzaszolas`) VALUES
(1, '2018-01-21 11:52:43', 'Asztalos Péter', 'Sziasztok!&#13;&#10;Ez az első hozzászólásom.'),
(2, '2018-01-21 12:02:22', 'Kiss Bubu', 'aaa&#13;&#10;bbb'),
(3, '2018-01-21 13:42:40', 'Nagy Éva', 'wiozf oiw zgowis&#10;sdgoisu gdu gfps udp'),
(4, '2018-01-21 14:04:06', 'Kiss Gizi', 'weiog oiwe gioweg&#10;sdou fopsdu gposd ugp'),
(5, '2018-01-21 14:04:44', 'Varga Károly', 'psu gpw ugélog&#10;sdéoig oésdui gséou gspé'),
(6, '2018-01-21 14:26:58', 'Asztalos Péter', 'ri gi ugpweog&#10;dosgi os igősd'),
(7, '2018-01-21 14:45:55', 'Kiss Bubu', 'aaaaaaa&#10;bbbbbbb'),
(8, '2018-01-21 14:46:04', 'Kiss Bubu', 'aaaaaaa&#10;bbbbbbb'),
(9, '2018-01-21 14:47:48', 'Kiss Bubu', 'aaaaaaa&#10;bbbbbbb');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `vendegkonyv`
--
ALTER TABLE `vendegkonyv`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `vendegkonyv`
--
ALTER TABLE `vendegkonyv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
