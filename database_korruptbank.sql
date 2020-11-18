-- --------------------------------------------------------
-- Vært:                         127.0.0.1
-- Server-version:               5.7.30-log - MySQL Community Server (GPL)
-- ServerOS:                     Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for bank
DROP DATABASE IF EXISTS `bank`;
CREATE DATABASE IF NOT EXISTS `bank` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bank`;

-- Dumping structure for tabel bank.konti
DROP TABLE IF EXISTS `konti`;
CREATE TABLE IF NOT EXISTS `konti` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `kunde_id` int(255) NOT NULL,
  `navn` varchar(250) NOT NULL,
  `lavet` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `slettet` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for tabel bank.kort
DROP TABLE IF EXISTS `kort`;
CREATE TABLE IF NOT EXISTS `kort` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `konto_id` int(255) NOT NULL,
  `kortnummer` bigint(16) NOT NULL DEFAULT '0',
  `udloebsdato` int(255) NOT NULL,
  `cvv` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for tabel bank.kunder
DROP TABLE IF EXISTS `kunder`;
CREATE TABLE IF NOT EXISTS `kunder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `BIRTHDAY` date NOT NULL,
  `ADDRESS` varchar(250) NOT NULL,
  `ZIPCODE` int(4) NOT NULL,
  `CITY` varchar(100) NOT NULL,
  `PHONE` int(8) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tilmeldt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `udmeldt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for tabel bank.transaktioner
DROP TABLE IF EXISTS `transaktioner`;
CREATE TABLE IF NOT EXISTS `transaktioner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `konto_fra` int(11) NOT NULL,
  `konto_til` int(11) NOT NULL,
  `dato` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `beloeb` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
