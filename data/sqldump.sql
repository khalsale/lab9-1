-- MySQL dump 10.13  Distrib 5.5.52, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: views
-- ------------------------------------------------------
-- Server version	5.5.52-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES ('d','Drinks','Purees made from the finest of Venusian insects, government-inspected.','catd.png'),('m','Mains','Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium \"meat\".','catm.png'),('s','Sides','Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.','cats.png');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Menu`
--

DROP TABLE IF EXISTS `Menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Menu` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `category` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menu`
--

LOCK TABLES `Menu` WRITE;
/*!40000 ALTER TABLE `Menu` DISABLE KEYS */;
INSERT INTO `Menu` VALUES (1,'Cheese','Leave this raw milk, beefy and sweet cheese out for an hour before serving and pair with pear jam.',2.95,'1.png','s'),(2,'Turkey','Roasted, succulent, stuffed, lovingly sliced turkey breast',5.95,'2.png','m'),(6,'Donut','Disgustingly sweet, topped with artery clogging chocolate and then sprinkled with Pixie dust',1.25,'6.png','s'),(10,'Bubbly','1964 Moet Charmon, made from grapes crushed by elves with clean feet, perfectly chilled.',14.50,'10.png','d'),(11,'Ice Cream','Combination of decadent chocolate topped with luscious strawberry, churned by gifted virgins using only cream from the Tajima strain of wagyu cattle',3.75,'11.png','s'),(8,'Hot Dog','Pork trimmings mixed with powdered preservatives, flavourings, red colouring and drenched in water before being squeezed into plastic tubes. Topped with onions, bacon, chili or cheese - no extra charge.',6.90,'8.png','m'),(25,'Burger','Half-pound of beef, topped with bacon and served with your choice of a slice of American cheese, red onion, sliced tomato, and Heart Attack Grill\'s own unique special sauce.',9.99,'burger.png','m'),(21,'Coffee','A delicious cup of the nectar of life, saviour of students, morning kick-starter; made with freshly grounds that you don\'t want to know where they came from!',2.95,'coffee.png','d');
/*!40000 ALTER TABLE `Menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orderitems`
--

DROP TABLE IF EXISTS `Orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL,
  PRIMARY KEY (`order`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orderitems`
--

LOCK TABLES `Orderitems` WRITE;
/*!40000 ALTER TABLE `Orderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `Orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('a8739f101ceaba9ab1a3cd36e183215d1e4471b2','192.168.33.1',1478215234,'__ci_last_regenerate|i:1478215234;'),('37ae643bf892fad5a09e183ec14fea335009d82d','192.168.33.1',1478215785,'__ci_last_regenerate|i:1478215785;userrole|s:4:\"user\";'),('98fbc35b880281d62e82e5be2acf124be48591ed','192.168.33.1',1478216824,'__ci_last_regenerate|i:1478216824;'),('05e0d6ecac7d07f3909d72f189d5915e199ec25f','192.168.33.1',1478216094,'__ci_last_regenerate|i:1478216094;userrole|s:4:\"user\";'),('16206df00316bd479f2aeecdfa66335e6e528886','192.168.33.1',1478216535,'__ci_last_regenerate|i:1478216535;userrole|s:4:\"user\";'),('b6e70e4e6032d7c4a43428be1a3d324c91736f50','192.168.33.1',1478216792,'__ci_last_regenerate|i:1478216535;userrole|s:5:\"admin\";'),('d7ac8d3340389fcdb46b64f5658f0fab7a5f8ac5','192.168.33.1',1478217392,'__ci_last_regenerate|i:1478217392;'),('f1a2edbee141a23e90524669bf19d8965e10642c','192.168.33.1',1478217518,'__ci_last_regenerate|i:1478217392;');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-04  0:02:31
