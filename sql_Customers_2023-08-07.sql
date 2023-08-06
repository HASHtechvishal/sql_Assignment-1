# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.26)
# Database: sql_ Assignment1
# Generation Time: 2023-08-06 21:16:09 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Customers`;

CREATE TABLE `Customers` (
  `Cnum` int(11) NOT NULL,
  `Cname` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Snum` int(11) NOT NULL,
  PRIMARY KEY (`Cnum`),
  KEY `Snum` (`Snum`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`Snum`) REFERENCES `SalesPeople` (`Snum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;

INSERT INTO `Customers` (`Cnum`, `Cname`, `City`, `Snum`)
VALUES
	(2001,'Hoffman','London',1001),
	(2002,'Giovanni','Rome',1003),
	(2003,'Liu','SanJose',1002),
	(2004,'Grass','Brelin',1002),
	(2006,'Clemens','London',1001),
	(2007,'Pereira','Rome',1004),
	(2008,'Cisneros','Sanjose',1007);

/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
