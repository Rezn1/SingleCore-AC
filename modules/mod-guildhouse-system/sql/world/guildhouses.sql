-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.10-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for world
CREATE DATABASE IF NOT EXISTS `world` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `world`;

-- Dumping structure for table world.guildhouses
CREATE TABLE IF NOT EXISTS `guildhouses` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `guildid` bigint(20) NOT NULL DEFAULT 0,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL,
  `map` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Guild House System';

-- Dumping data for table world.guildhouses: ~37 rows (approximately)
/*!40000 ALTER TABLE `guildhouses` DISABLE KEYS */;
INSERT INTO `guildhouses` (`id`, `guildid`, `x`, `y`, `z`, `map`, `comment`) VALUES
	(1, 0, 16222, 16266, 14.2, 1, 'GM Island'),
	(2, 0, -10711, 2483, 8, 1, 'Tauren village at Veiled Sea (Silithus)'),
	(3, 0, -8323, -343, 146, 0, 'Fishing outside an Northshire Abbey (Elwynn Forest'),
	(4, 0, 7368, -1560, 163, 1, 'Troll Village in mountains (Darkshore)'),
	(5, 0, -4151, -1400, 198, 0, 'Dwarven village outside Ironforge (Wetlands)'),
	(6, 0, -1840, -4233, 2.14, 0, 'Dwarven village (Arathi Highlands, Forbidding Sea)'),
	(8, 0, -723, -1076, 179, 1, 'Tauren camp (Mulgore, Red Rock)'),
	(9, 0, -206, 1666, 80, 0, 'Shadowfang Keep an outside instance (Silverpine Forest)'),
	(10, 0, -6374, 1262, 7, 0, 'Harbor house outside Stormwind (Elwynn Forest)'),
	(11, 0, -8640, 580, 96, 0, 'Empty jail between canals (Stormwind)'),
	(12, 0, -4844, -1066, 502, 0, 'Old Ironforge'),
	(13, 0, -4863, -1658, 503.5, 0, 'Ironforge Airport'),
	(14, 0, 1146, -165, 313, 37, 'Azshara Crater instance (Alliance entrance)'),
	(15, 0, -123, 858, 298, 37, 'Azshara Crater instance (Horde entrance)'),
	(16, 0, 4303, -2760, 16.8, 0, 'Quel\'Thalas Tower'),
	(17, 0, -6161, -790, 423, 0, 'Crashed gnome airplane (between Dun Morogh and Searing Gorge)'),
	(18, 0, -11790, -1640, 54.7, 0, 'Zul\'Gurub an outside instance (Stranglethorn Vale)'),
	(19, 0, -11805, -4754, 6, 1, 'Goblin village (Tanaris, South Seas)'),
	(20, 0, -9296, 670, 132, 0, 'Villains camp outside an Stormwind (Elwynn Forest)'),
	(21, 0, 3414, -3380, 142.2, 0, 'Stratholm an outside instance'),
	(22, 0, 4654, -3772, 944, 1, 'Kalimdor Hyjal (Aka World Tree)'),
	(23, 0, 2176, -4766, 55, 1, 'The Ring of Valor (Aka. Orgrimmar Arena)'),
	(24, 0, 1951.512085, 1530.475586, 247.288147, 1, 'Stonetalon Logging Camp'),
	(25, 0, 2813.660645, 2248.552979, 215.524643, 1, 'Stonetalon Ruins'),
	(28, 0, 9725.27, -21.43, 20.03, 1, 'Teldrassil Furbold camp'),
	(29, 0, -3855, -3479, 579, 0, 'Wetlands mountain camp'),
	(30, 0, -5362, -2540, 485, 0, 'Ortell\'s Hideout'),
	(31, 0, -12865, -1396, 115, 0, 'Stranglethorn Secret Cave'),
	(32, 0, -11073, -1956, 39, 0, 'Karazhan Smiley'),
	(33, 0, -11084, -1801, 53, 0, 'Well of the Forgotten (Aka. Karazhan Crypt or Lower Karazhan)'),
	(34, 0, 1683.235474, 286.458801, -45.451775, 0, 'Undercity Top Tier'),
	(35, 0, -8521.3, 599.5, 101.399338, 0, 'Stormwind Cut-Throat Alley'),
	(36, 0, -5933, 452, 509, 0, 'Forgotten gnome camp'),
	(37, 0, -920.231323, 7096.489258, 170.35289, 530, 'Outland Nagrand : Newton\'s Remains'),
	(38, 0, -2140.501953, 9142.6875, 137.041855, 530, 'Outland Nagrand : Tomb'),
	(39, 0, -483.401794, 7461.944824, 186.120987, 530, 'Outland Nagrand: Challe\'s Home for Little Tykes'),
	(40, 0, 2387.753906, 3191.757324, 152.669388, 530, 'Outland Netherstorm: Nova\'s Shrine');
/*!40000 ALTER TABLE `guildhouses` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
