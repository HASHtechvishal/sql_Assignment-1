# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.26)
# Database: sql_ Assignment1
# Generation Time: 2023-08-06 21:22:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Orders`;

CREATE TABLE `Orders` (
  `Onum` int(11) NOT NULL,
  `AMT` float NOT NULL,
  `Odate` date NOT NULL,
  `Cnum` int(11) NOT NULL,
  `Snum` int(11) NOT NULL,
  PRIMARY KEY (`Onum`),
  KEY `Cnum` (`Cnum`),
  KEY `Snum` (`Snum`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Cnum`) REFERENCES `Customers` (`Cnum`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Snum`) REFERENCES `SalesPeople` (`Snum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;

INSERT INTO `Orders` (`Onum`, `AMT`, `Odate`, `Cnum`, `Snum`)
VALUES
	(3001,18.69,'1990-10-03',2008,1007),
	(3002,1900.1,'1990-10-03',2007,1004),
	(3003,767.19,'1990-10-03',2001,1001),
	(3005,5160.45,'1990-10-03',2003,1002),
	(3006,1098.16,'1990-10-03',2008,1007),
	(3007,75.75,'1990-10-04',2004,1002),
	(3008,4273,'1990-10-05',2006,1001),
	(3009,1713.23,'1990-10-04',2002,1003),
	(3010,1309.95,'1990-10-06',2004,1002),
	(3011,9891.88,'1990-10-06',2006,1001);

/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;