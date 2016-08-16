CREATE DATABASE  IF NOT EXISTS `mb508` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mb508`;
-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: achilles.mcscw3.le.ac.uk    Database: mb508
-- ------------------------------------------------------
-- Server version	5.1.38

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
-- Table structure for table `hero_matchups`
--

DROP TABLE IF EXISTS `hero_matchups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hero_matchups` (
  `hero_id` int(3) NOT NULL,
  `id1` int(6) NOT NULL,
  `id2` int(6) NOT NULL,
  `id3` int(6) NOT NULL,
  `id4` int(6) NOT NULL,
  `id5` int(6) NOT NULL,
  `id6` int(6) NOT NULL,
  `id7` int(6) NOT NULL,
  `id8` int(6) NOT NULL,
  `id9` int(6) NOT NULL,
  `id10` int(6) NOT NULL,
  `id11` int(6) NOT NULL,
  `id12` int(6) NOT NULL,
  `id13` int(6) NOT NULL,
  `id14` int(6) NOT NULL,
  `id15` int(6) NOT NULL,
  `id16` int(6) NOT NULL,
  `id17` int(6) NOT NULL,
  `id18` int(6) NOT NULL,
  `id19` int(6) NOT NULL,
  `id20` int(6) NOT NULL,
  `id21` int(6) NOT NULL,
  `id22` int(6) NOT NULL,
  `id23` int(6) NOT NULL,
  `id24` int(6) NOT NULL,
  `id25` int(6) NOT NULL,
  `id26` int(6) NOT NULL,
  `id27` int(6) NOT NULL,
  `id28` int(6) NOT NULL,
  `id29` int(6) NOT NULL,
  `id30` int(6) NOT NULL,
  `id31` int(6) NOT NULL,
  `id32` int(6) NOT NULL,
  `id33` int(6) NOT NULL,
  `id34` int(6) NOT NULL,
  `id35` int(6) NOT NULL,
  `id36` int(6) NOT NULL,
  `id37` int(6) NOT NULL,
  `id38` int(6) NOT NULL,
  `id39` int(6) NOT NULL,
  `id40` int(6) NOT NULL,
  `id41` int(6) NOT NULL,
  `id42` int(6) NOT NULL,
  `id43` int(6) NOT NULL,
  `id44` int(6) NOT NULL,
  `id45` int(6) NOT NULL,
  `id46` int(6) NOT NULL,
  `id47` int(6) NOT NULL,
  `id48` int(6) NOT NULL,
  `id49` int(6) NOT NULL,
  `id50` int(6) NOT NULL,
  `id51` int(6) NOT NULL,
  `id52` int(6) NOT NULL,
  `id53` int(6) NOT NULL,
  `id54` int(6) NOT NULL,
  `id55` int(6) NOT NULL,
  `id56` int(6) NOT NULL,
  `id57` int(6) NOT NULL,
  `id58` int(6) NOT NULL,
  `id59` int(6) NOT NULL,
  `id60` int(6) NOT NULL,
  `id61` int(6) NOT NULL,
  `id62` int(6) NOT NULL,
  `id63` int(6) NOT NULL,
  `id64` int(6) NOT NULL,
  `id65` int(6) NOT NULL,
  `id66` int(6) NOT NULL,
  `id67` int(6) NOT NULL,
  `id68` int(6) NOT NULL,
  `id69` int(6) NOT NULL,
  `id70` int(6) NOT NULL,
  `id71` int(6) NOT NULL,
  `id72` int(6) NOT NULL,
  `id73` int(6) NOT NULL,
  `id74` int(6) NOT NULL,
  `id75` int(6) NOT NULL,
  `id76` int(6) NOT NULL,
  `id77` int(6) NOT NULL,
  `id78` int(6) NOT NULL,
  `id79` int(6) NOT NULL,
  `id80` int(6) NOT NULL,
  `id81` int(6) NOT NULL,
  `id82` int(6) NOT NULL,
  `id83` int(6) NOT NULL,
  `id84` int(6) NOT NULL,
  `id85` int(6) NOT NULL,
  `id86` int(6) NOT NULL,
  `id87` int(6) NOT NULL,
  `id88` int(6) NOT NULL,
  `id89` int(6) NOT NULL,
  `id90` int(6) NOT NULL,
  `id91` int(6) NOT NULL,
  `id92` int(6) NOT NULL,
  `id93` int(6) NOT NULL,
  `id94` int(6) NOT NULL,
  `id95` int(6) NOT NULL,
  `id96` int(6) NOT NULL,
  `id97` int(6) NOT NULL,
  `id98` int(6) NOT NULL,
  `id99` int(6) NOT NULL,
  `id100` int(6) NOT NULL,
  `id101` int(6) NOT NULL,
  `id102` int(6) NOT NULL,
  `id103` int(6) NOT NULL,
  `id104` int(6) NOT NULL,
  `id105` int(6) NOT NULL,
  `id106` int(6) NOT NULL,
  `id107` int(6) NOT NULL,
  `id108` int(6) NOT NULL,
  `id109` int(6) NOT NULL,
  `id110` int(6) NOT NULL,
  `id111` int(6) NOT NULL,
  PRIMARY KEY (`hero_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hero_matchups`
--

LOCK TABLES `hero_matchups` WRITE;
/*!40000 ALTER TABLE `hero_matchups` DISABLE KEYS */;
INSERT INTO `hero_matchups` VALUES (1,0,57,17,45,30,45,45,52,48,19,25,34,27,113,31,30,30,29,27,29,36,39,34,0,42,37,28,14,36,43,20,46,14,27,77,32,13,8,33,19,87,47,29,202,15,22,41,19,17,23,22,9,38,28,8,27,27,12,33,14,14,33,31,16,13,3,18,17,38,28,32,18,27,63,34,21,12,12,8,10,19,10,9,30,14,39,19,25,14,20,13,12,58,23,19,17,19,19,26,14,39,13,14,41,20,20,5,0,16,13,102),(2,83,0,49,128,75,149,107,188,138,35,86,96,65,334,76,93,89,106,86,79,116,94,101,0,96,108,72,81,88,120,52,156,43,88,201,120,39,27,71,71,186,95,80,839,41,68,138,51,68,81,63,30,79,77,38,60,98,27,107,30,44,112,83,77,37,18,52,58,82,103,129,47,52,174,89,41,34,44,27,31,54,36,45,133,53,87,44,58,29,38,24,14,161,35,62,66,53,77,96,46,98,75,20,107,54,95,37,0,58,33,333),(3,17,36,0,18,11,27,16,30,31,11,10,18,15,51,6,20,14,9,14,21,23,16,10,0,22,25,16,13,11,19,5,32,7,18,37,24,10,4,12,16,29,26,15,106,21,23,19,13,12,13,12,5,23,18,6,8,13,3,19,5,11,15,13,19,9,3,15,8,14,13,24,8,6,21,20,9,9,3,5,13,10,12,10,23,8,12,9,12,5,4,5,3,15,7,7,16,13,18,14,12,18,10,7,30,9,21,8,0,7,1,54),(4,55,129,25,0,54,111,65,81,76,24,30,60,42,165,51,47,35,51,41,49,46,48,46,0,51,55,34,46,52,63,31,118,27,48,140,51,21,7,33,27,106,40,38,388,17,32,52,35,28,43,31,16,47,36,15,35,42,15,74,30,19,71,44,29,18,13,31,35,38,54,96,22,27,75,34,24,32,17,20,15,21,23,21,78,12,45,17,42,15,20,10,10,114,26,37,40,22,31,38,19,43,26,14,60,28,27,10,0,23,12,194),(5,36,94,24,52,0,63,58,78,66,27,43,46,20,133,34,33,31,40,35,45,49,36,45,0,38,36,29,34,37,53,28,60,18,26,90,50,16,12,29,31,64,59,35,252,14,33,53,31,24,32,29,13,45,36,12,31,40,17,35,23,17,55,35,37,11,6,27,25,38,33,51,26,23,80,46,24,23,26,14,13,21,17,11,64,12,36,15,25,24,18,19,6,60,17,32,34,25,30,30,17,42,28,8,61,33,42,18,0,20,10,122),(6,47,138,29,84,48,0,63,139,72,36,57,66,41,212,104,65,46,101,61,77,90,105,59,0,84,94,38,40,50,90,57,125,19,44,252,62,36,4,40,34,122,67,68,342,21,60,123,49,65,37,27,16,42,54,16,42,62,23,66,28,27,141,57,41,17,8,21,34,30,65,98,29,32,84,41,25,24,27,11,17,31,21,19,67,20,36,22,31,12,24,14,13,84,21,41,39,17,41,52,18,51,31,15,65,27,41,20,0,27,23,187),(7,55,137,25,58,47,74,0,111,100,25,48,90,43,212,38,60,49,65,48,58,74,50,52,0,60,65,50,46,77,80,31,82,31,46,127,81,29,12,53,29,119,62,55,358,20,48,64,29,27,42,37,14,64,45,18,41,57,12,51,17,27,77,44,51,24,10,30,36,47,49,60,31,28,99,50,22,21,25,9,16,35,44,19,99,29,49,27,35,24,21,10,5,116,24,35,46,42,51,43,19,56,28,14,80,39,67,15,0,50,17,209),(8,69,169,48,95,52,155,107,0,111,34,63,64,48,270,87,83,73,96,75,106,112,104,70,0,84,116,62,52,77,122,61,119,33,60,252,95,40,19,59,47,164,104,82,623,38,43,115,41,56,50,43,27,72,63,34,51,92,22,80,24,28,113,67,42,23,13,37,34,74,55,97,27,55,122,60,41,29,30,22,22,30,33,32,109,30,63,32,57,31,27,14,8,123,44,44,66,34,59,87,31,64,40,15,95,44,70,23,0,31,15,239),(9,65,164,34,57,57,83,103,118,0,37,59,58,56,224,33,77,65,70,55,59,73,63,62,0,65,69,60,66,61,97,37,90,26,60,160,101,14,11,46,37,112,61,55,424,32,55,58,39,33,51,38,17,78,45,23,43,75,21,55,21,18,79,66,54,26,15,35,42,64,39,77,29,43,137,82,33,22,39,13,26,34,33,24,107,20,57,37,42,29,22,22,9,122,33,28,54,41,51,62,27,80,34,16,88,37,66,27,0,36,30,245),(10,11,26,6,19,13,20,19,46,29,0,12,20,12,51,17,22,11,17,13,20,29,15,14,0,17,17,12,11,13,18,15,20,8,12,26,32,9,4,14,10,33,18,15,124,8,13,13,9,13,12,12,7,17,14,4,9,10,1,16,3,4,16,14,9,6,1,7,11,14,9,22,8,8,44,10,5,5,10,7,7,9,3,6,27,4,14,2,11,3,11,4,6,14,5,10,10,12,11,10,10,14,8,5,17,8,16,5,0,11,5,50),(11,31,82,14,32,28,53,44,60,56,23,0,26,24,104,21,36,33,38,24,26,42,34,41,0,27,35,21,21,25,43,17,54,17,35,81,44,15,3,18,19,67,22,28,207,13,25,28,27,18,22,22,12,33,24,15,16,32,12,25,9,14,34,24,24,11,3,19,18,30,26,30,17,17,71,32,11,14,22,9,11,17,17,10,39,14,28,14,12,15,14,8,10,55,21,20,24,18,28,28,5,27,16,12,42,19,38,16,0,11,16,113),(12,38,80,17,50,19,58,76,69,36,21,25,0,19,99,27,27,26,36,34,25,31,31,32,0,32,35,25,20,37,36,19,67,16,27,98,35,7,8,38,18,75,66,18,220,12,29,43,17,26,15,19,6,36,32,11,28,27,12,41,18,17,40,26,21,11,7,21,12,23,33,44,13,21,39,26,13,15,13,8,15,17,12,16,42,8,25,17,25,12,11,15,8,47,21,20,21,14,19,26,12,29,26,11,40,21,27,6,0,17,9,107),(13,23,36,10,25,20,37,28,37,33,12,17,13,0,83,8,16,24,17,17,15,26,23,22,0,19,27,10,6,16,24,10,25,8,11,41,27,6,1,17,13,23,19,13,119,9,21,15,8,11,12,22,7,18,18,6,16,24,7,15,5,10,12,19,12,6,4,6,10,17,11,29,11,13,45,21,9,6,11,5,8,13,10,6,26,9,23,8,21,6,4,6,1,48,8,12,16,11,13,19,10,19,10,3,24,8,13,12,0,6,9,87),(14,122,348,60,182,114,223,183,229,240,75,125,114,109,0,112,124,118,118,118,131,160,138,149,0,173,169,102,107,111,179,88,213,50,134,372,175,55,21,109,79,295,134,86,993,59,99,145,96,70,93,85,38,153,131,38,94,126,35,137,51,47,163,90,80,42,25,57,65,93,112,161,55,81,310,107,70,57,67,30,47,58,67,58,180,33,138,57,83,52,54,40,20,240,52,80,105,56,93,111,54,125,62,25,178,87,125,51,0,67,32,511),(15,30,67,16,41,24,88,35,70,37,13,29,32,26,96,0,38,35,47,24,27,51,48,36,0,40,54,20,25,32,44,21,57,12,22,95,36,20,2,22,22,66,45,32,216,9,18,63,24,36,25,20,11,40,27,22,29,25,14,41,16,14,52,21,21,11,3,13,24,23,35,37,18,14,54,36,18,14,13,10,9,20,12,9,35,17,26,12,26,8,10,10,3,34,16,17,25,12,21,26,15,33,21,6,45,16,20,8,0,17,6,88),(16,34,86,14,36,26,55,55,58,58,18,27,37,19,108,34,0,28,51,28,27,46,48,30,0,19,49,25,22,43,62,24,43,17,37,83,36,15,5,17,10,68,41,32,205,11,24,51,26,25,22,19,6,41,33,12,23,27,5,30,4,18,51,29,21,10,11,15,21,27,27,40,11,12,72,33,23,16,24,8,14,20,15,8,56,11,25,18,29,9,16,11,5,55,12,24,27,10,28,39,16,35,26,5,45,22,29,10,0,17,7,125),(17,32,78,24,40,28,42,41,65,67,18,34,28,18,109,27,25,0,24,23,35,39,38,29,0,41,27,15,24,44,45,24,51,11,26,70,39,14,9,22,19,59,34,21,179,11,30,39,23,21,22,26,7,32,27,11,23,30,13,25,15,6,30,28,30,5,3,20,26,30,24,51,16,17,78,42,19,11,16,5,10,20,8,14,48,9,28,24,13,10,11,7,5,48,20,14,30,11,30,33,14,30,21,1,52,18,39,13,0,19,11,120),(18,30,89,19,50,40,95,61,92,68,24,45,49,24,131,45,45,23,0,35,39,67,67,44,0,43,59,42,31,38,59,44,71,24,34,142,52,22,7,28,26,68,65,48,253,22,27,74,40,38,25,22,8,44,46,15,33,35,14,51,21,20,82,35,44,14,14,19,23,33,36,67,33,27,76,37,18,21,23,15,11,32,16,16,53,21,33,30,22,14,11,14,9,63,27,25,29,21,30,36,16,30,28,7,49,25,37,10,0,24,7,145),(19,34,70,20,35,27,39,50,80,41,16,29,36,19,86,22,33,32,31,0,17,31,31,35,0,30,35,24,17,17,42,15,53,10,26,74,41,17,8,23,23,58,30,24,181,14,21,29,23,15,25,27,7,33,22,10,34,30,16,29,11,18,32,31,27,11,6,8,15,25,24,42,13,17,59,24,17,17,11,10,14,27,16,11,38,6,28,20,23,8,16,12,5,59,11,20,26,16,30,25,15,23,22,5,32,22,26,11,0,20,9,100),(20,33,102,25,51,36,81,70,92,70,27,26,42,26,154,39,50,42,53,49,0,71,66,50,0,42,58,36,38,37,74,48,57,28,53,121,60,25,12,29,23,100,52,45,263,19,41,67,29,35,26,26,16,52,34,19,33,52,10,53,20,20,68,42,36,12,0,23,30,31,35,48,29,35,76,44,9,17,25,12,14,21,26,22,67,18,36,26,27,17,16,11,6,73,23,33,36,21,38,45,16,45,26,10,48,25,36,13,0,22,10,151),(21,33,79,24,44,33,66,43,71,61,21,39,29,27,119,38,44,30,49,26,37,0,35,40,0,37,56,22,21,27,55,30,42,10,29,113,37,21,9,30,19,74,38,40,227,13,28,43,23,23,29,28,13,39,29,14,23,37,19,27,19,13,54,32,31,16,8,19,24,20,33,38,23,21,64,32,21,14,9,8,10,19,22,5,50,21,22,12,21,14,15,11,10,57,26,23,23,23,35,36,18,38,14,8,42,13,35,18,0,18,13,121),(22,47,116,25,50,57,113,68,114,90,34,49,43,38,155,60,62,38,58,45,51,83,0,41,0,54,80,60,40,54,84,37,95,23,49,183,80,25,13,33,28,100,64,62,395,27,37,80,33,37,28,36,12,57,26,19,40,46,18,51,17,19,91,49,33,14,13,30,17,41,40,68,30,38,104,59,17,24,21,19,20,28,27,18,77,19,47,32,40,15,16,16,6,90,11,35,29,27,44,35,26,54,25,8,60,28,49,10,0,30,20,173),(23,29,85,19,38,37,54,50,61,53,14,24,48,28,119,21,23,19,38,32,33,28,32,0,0,36,34,13,18,24,56,29,53,22,23,88,49,24,4,25,26,70,39,20,213,14,29,43,34,24,31,16,10,43,26,19,26,40,15,34,10,16,34,31,20,12,2,24,22,29,25,47,20,26,46,31,11,19,10,12,18,22,16,12,40,16,29,17,14,10,21,13,6,55,18,19,28,23,37,28,15,35,18,4,44,23,37,11,0,16,11,94),(24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(25,32,90,19,51,36,50,39,59,47,20,36,32,33,88,27,44,21,32,26,31,43,41,41,0,0,51,25,21,33,51,25,72,16,28,85,39,21,8,27,21,51,33,27,227,29,31,36,17,18,27,27,7,34,32,15,29,33,14,30,16,13,47,31,21,13,11,20,18,35,32,37,20,21,89,31,21,8,16,8,15,15,26,14,38,15,33,18,16,15,12,10,7,64,20,19,22,21,32,37,17,31,22,6,40,24,22,15,0,22,12,124),(26,41,118,25,59,39,82,57,88,71,27,39,39,30,137,41,49,45,44,33,47,62,64,43,0,47,0,36,34,41,67,46,64,37,35,137,53,15,11,21,26,91,48,42,278,33,39,65,25,33,31,23,16,60,37,16,38,56,21,42,8,19,56,38,28,23,5,20,25,35,42,48,19,22,79,43,18,19,15,9,11,24,19,11,67,18,43,18,31,10,14,11,9,74,28,24,34,20,30,32,20,26,26,13,65,18,37,17,0,21,14,145),(27,32,69,23,32,24,52,40,45,57,19,25,29,15,103,31,30,27,32,30,27,36,33,38,0,37,34,0,20,31,51,32,40,19,20,68,43,15,6,17,24,55,44,29,166,18,16,37,20,21,22,24,10,26,24,12,28,32,10,36,15,12,27,27,30,8,4,15,20,16,32,47,13,19,51,18,14,17,15,9,7,29,13,6,33,14,17,21,22,10,7,10,9,54,17,21,19,17,28,26,14,34,15,7,30,10,33,9,0,16,10,103),(28,24,82,14,48,17,40,42,48,56,21,25,25,24,120,20,23,24,31,26,28,35,32,27,0,22,36,20,0,21,38,17,75,8,26,65,33,16,8,14,18,57,30,17,186,13,27,34,16,13,17,24,14,23,30,15,27,29,12,31,10,15,62,34,15,11,8,17,27,25,23,41,19,18,45,28,14,15,13,13,16,17,6,11,39,13,26,12,18,6,12,8,6,49,9,23,24,17,26,30,19,29,18,4,43,12,18,8,0,19,15,94),(29,30,98,20,56,36,69,76,91,79,30,32,37,32,146,34,47,34,42,35,40,48,55,40,0,51,60,46,30,0,71,26,46,20,39,88,60,14,6,22,21,89,47,37,240,15,32,44,21,26,32,26,11,47,26,14,24,41,7,29,17,7,62,26,22,19,3,24,29,39,28,63,29,28,81,46,20,15,21,10,18,26,18,13,72,19,45,20,29,27,14,10,12,59,19,25,46,26,24,43,19,43,26,10,50,20,38,23,0,24,16,136),(30,60,148,30,72,52,90,89,104,89,33,52,48,36,198,55,61,45,45,49,74,80,67,49,0,68,76,55,34,52,0,61,79,28,28,148,71,22,16,41,38,117,76,60,355,25,42,88,39,38,44,26,18,63,40,29,41,70,16,55,26,22,71,47,48,18,12,33,35,45,41,60,33,28,110,61,29,32,32,17,22,29,23,28,92,21,64,32,47,10,17,18,4,108,27,36,47,32,40,59,22,53,28,11,72,31,58,23,0,17,19,194),(31,29,67,10,42,33,58,41,52,56,24,20,27,22,92,37,29,38,39,32,37,48,37,34,0,27,44,21,16,37,64,0,52,16,19,77,43,19,6,19,20,57,32,35,177,12,19,39,19,28,30,17,10,25,34,12,19,28,8,28,10,18,38,20,22,17,3,14,16,27,30,22,21,21,60,31,14,17,20,8,9,17,27,12,31,11,35,17,21,13,11,11,4,51,21,24,34,17,22,23,11,28,9,5,27,15,29,11,0,21,13,118),(32,66,170,41,102,57,151,80,135,89,27,58,76,39,233,56,49,51,62,58,57,66,75,73,0,69,77,40,90,44,80,42,0,27,45,223,77,32,5,43,45,133,66,50,453,35,56,84,47,38,38,37,15,78,61,19,63,45,23,89,28,31,156,67,40,22,10,27,33,42,77,103,33,36,101,56,26,29,26,17,24,39,26,25,65,20,51,33,45,18,21,20,8,133,22,40,37,24,45,64,25,44,38,21,96,42,47,18,0,29,15,209),(33,13,52,12,24,23,26,26,41,36,7,16,23,19,64,12,24,19,20,10,23,29,26,21,0,28,21,15,12,18,33,9,29,0,18,38,35,8,3,23,18,38,20,23,118,7,8,20,12,11,16,13,5,26,22,6,11,25,6,17,9,8,16,19,19,3,3,12,11,16,14,25,11,12,37,21,12,6,9,7,9,18,11,10,28,4,40,15,15,7,5,6,7,34,9,12,23,7,12,22,13,24,11,4,26,15,20,9,0,9,6,61),(34,27,47,13,24,15,31,41,41,29,13,15,19,22,94,18,27,22,19,32,16,32,24,20,0,21,33,18,17,20,30,14,32,12,0,53,30,10,5,16,15,34,27,13,147,9,12,24,14,7,23,19,9,33,16,5,19,18,11,21,14,14,28,15,17,6,2,13,9,15,17,22,11,13,56,30,12,12,9,4,10,17,3,9,31,9,20,12,20,6,12,12,4,35,10,6,17,13,22,18,3,24,16,5,26,14,18,4,0,8,5,78),(35,89,210,60,152,72,240,124,204,131,59,94,94,63,357,115,101,63,131,88,105,137,126,86,0,133,135,66,62,72,111,71,203,34,80,0,121,57,16,74,59,226,140,95,622,28,74,177,69,91,48,50,31,92,76,38,91,75,41,97,40,38,181,73,60,26,9,39,54,70,109,136,52,60,176,82,47,39,42,27,43,74,37,34,108,25,78,39,71,36,34,25,12,144,45,78,72,49,67,82,46,102,52,17,109,62,86,31,0,45,31,320),(36,43,159,20,84,46,95,92,112,99,45,60,35,29,223,57,69,67,67,56,56,62,48,55,0,80,64,32,59,61,89,42,89,34,53,132,0,23,10,34,41,126,69,56,480,29,42,63,28,33,51,35,20,54,56,21,37,77,16,59,29,25,74,57,48,29,9,46,54,69,50,69,40,43,141,77,28,27,31,24,19,34,13,32,113,26,57,30,48,18,22,18,9,122,39,41,61,27,54,66,30,65,36,14,77,35,51,27,0,35,16,258),(37,18,54,11,28,28,41,27,49,46,10,17,12,15,54,20,18,8,28,15,18,40,27,26,0,24,27,20,15,18,32,20,30,14,19,56,29,0,6,11,16,37,28,27,122,15,12,31,20,16,20,16,5,29,23,14,14,24,8,23,6,8,28,23,14,12,3,5,12,17,23,29,13,10,34,17,8,9,13,4,8,14,8,10,22,7,20,7,17,7,3,4,6,42,5,10,11,15,19,18,9,14,5,4,24,8,25,3,0,8,11,74),(38,6,15,5,8,4,13,5,14,8,4,10,10,6,25,2,8,4,4,9,6,11,7,12,0,13,6,9,5,6,9,4,5,6,7,20,8,7,0,6,1,13,11,3,60,2,7,7,9,6,10,7,3,7,8,4,2,4,4,9,3,3,8,7,6,3,0,7,7,6,7,8,7,3,16,6,6,6,3,1,3,11,4,3,8,3,5,1,5,2,4,1,1,12,2,6,8,4,6,7,1,11,6,3,10,4,7,5,0,5,4,28),(39,23,47,13,24,14,27,27,33,37,7,20,19,30,69,24,25,17,26,14,17,35,19,17,0,25,35,13,19,22,25,10,22,8,22,48,29,11,4,0,15,41,18,17,135,4,22,17,14,13,13,20,8,31,14,9,13,24,5,21,4,11,27,17,17,6,5,12,12,19,9,29,12,10,40,21,16,10,13,11,6,10,6,11,30,12,28,10,15,6,7,8,1,36,15,14,18,5,14,15,13,18,11,5,33,13,22,9,0,14,3,70),(40,25,78,12,33,34,47,37,48,47,14,22,20,11,85,22,34,27,21,30,21,31,31,32,0,39,47,18,17,28,40,17,36,15,15,54,39,11,10,17,0,58,31,24,159,10,31,31,22,19,26,14,10,25,14,13,18,33,6,26,15,12,29,21,21,8,4,13,18,21,18,28,11,15,49,32,17,14,13,8,13,18,19,9,28,14,18,12,16,9,12,12,7,43,9,14,21,13,18,27,12,19,15,8,43,10,29,14,0,22,6,102),(41,88,173,36,109,63,121,118,145,141,44,67,62,57,265,56,65,80,84,59,72,95,70,81,0,77,83,48,50,60,107,52,118,40,60,205,81,37,23,49,44,0,101,51,710,50,65,77,43,53,58,46,20,80,63,28,49,82,22,74,38,35,78,70,54,20,9,43,39,76,68,90,35,39,160,103,35,30,33,22,25,37,30,38,122,30,74,39,56,23,40,20,11,139,30,52,65,31,62,67,27,72,60,10,111,33,75,28,0,39,23,291),(42,62,139,22,57,47,108,70,105,70,28,44,36,36,155,56,58,50,64,32,51,60,64,60,0,69,85,32,34,52,69,46,71,23,35,154,69,23,13,31,28,111,0,52,331,19,37,90,29,43,36,37,16,51,40,21,30,48,16,57,19,14,70,42,42,14,7,28,26,34,36,71,24,27,93,40,19,32,27,9,19,21,23,19,74,17,40,17,37,15,23,6,7,78,24,31,45,24,44,31,21,49,19,17,56,29,55,13,0,22,17,141),(43,31,81,25,31,29,59,44,76,57,15,34,23,23,98,47,40,28,38,28,37,50,49,35,0,25,51,31,26,39,47,38,38,18,30,110,37,23,7,20,16,73,41,0,177,13,21,51,30,26,21,19,10,41,26,11,18,26,11,33,17,14,47,26,28,16,6,13,13,33,29,42,17,16,64,31,5,20,19,4,7,20,9,14,54,14,27,13,22,9,14,9,10,44,20,21,30,11,23,28,11,29,28,2,45,16,28,16,0,19,7,94),(44,290,802,118,380,198,418,346,624,385,176,229,279,173,957,195,227,231,256,233,203,281,288,242,0,308,306,177,188,234,355,154,441,118,240,676,379,91,46,195,146,701,291,189,0,91,201,299,180,143,151,148,53,283,236,73,200,207,84,269,103,90,288,252,147,80,40,155,147,210,228,372,112,126,478,241,106,113,111,58,89,139,128,81,362,91,202,105,191,79,87,60,33,495,108,187,221,98,206,236,99,223,145,50,340,161,235,86,0,130,75,877),(45,14,35,7,17,14,12,21,19,22,8,12,10,9,43,12,26,14,11,12,14,17,17,20,0,23,17,12,14,17,24,15,18,7,12,27,22,8,3,12,13,24,12,6,78,0,10,10,14,8,11,11,8,15,14,7,10,11,6,14,9,8,16,16,6,1,1,6,6,6,13,15,5,7,37,14,12,9,10,1,5,8,9,13,23,4,10,9,9,4,7,5,5,27,14,8,6,7,10,22,6,29,11,5,26,9,15,5,0,6,6,53),(46,30,65,13,42,20,43,40,52,40,10,22,21,23,98,21,28,22,32,27,28,27,29,21,0,33,34,14,20,18,34,20,47,13,18,66,31,9,3,30,22,51,40,25,163,9,0,32,13,20,17,18,1,26,16,10,19,31,13,39,14,5,35,26,21,10,5,11,16,22,29,41,15,15,53,27,8,13,7,4,9,15,11,8,43,10,24,16,24,11,14,9,8,45,17,26,20,14,19,12,9,23,15,3,35,16,21,9,0,15,10,101),(47,39,112,23,54,45,114,66,111,71,27,46,35,31,155,63,55,35,56,40,61,74,85,50,0,51,71,35,38,56,69,39,81,16,41,180,55,34,8,37,25,92,73,57,313,16,50,0,38,39,24,24,14,50,40,11,42,44,15,62,19,21,93,43,33,15,7,28,29,35,42,54,23,34,70,45,18,37,23,13,18,24,22,10,76,18,41,14,23,19,12,12,10,77,24,39,29,20,30,45,19,44,31,12,42,25,40,15,0,20,12,155),(48,27,58,18,39,18,63,31,60,45,16,27,23,10,76,27,27,24,26,28,28,30,35,26,0,34,32,23,16,22,35,24,47,8,25,67,46,14,6,22,18,51,36,25,191,11,24,29,0,25,15,14,13,33,33,11,20,31,18,25,16,18,38,24,17,15,1,13,15,16,30,34,12,22,41,25,8,12,16,14,7,20,15,14,38,10,18,12,17,10,14,6,4,42,17,27,21,10,25,21,10,25,19,6,25,16,24,8,0,13,8,83),(49,18,50,14,20,16,49,28,47,23,9,19,23,19,59,26,27,16,24,19,25,26,33,24,0,23,40,14,11,15,27,19,34,14,25,82,29,8,4,15,18,31,33,28,113,13,18,33,14,0,12,13,9,31,10,12,12,22,11,19,6,8,36,19,8,13,3,7,6,9,20,34,7,10,29,18,15,10,10,7,3,15,16,8,17,9,15,5,10,10,9,6,2,25,10,11,9,11,18,18,8,21,7,8,16,11,15,8,0,13,5,58),(50,22,78,20,32,29,34,39,57,45,11,24,29,21,113,17,33,30,27,21,28,32,31,25,0,30,32,28,18,29,35,16,35,15,35,54,59,14,6,25,13,55,33,24,166,15,23,32,24,23,0,22,9,35,27,11,10,40,7,24,9,11,26,27,28,14,5,17,23,16,27,42,18,17,53,40,18,10,20,10,8,15,21,15,45,17,33,13,24,5,11,11,7,40,16,18,29,11,26,25,11,32,23,8,39,18,26,13,0,15,6,99),(51,13,52,10,28,21,19,38,38,40,19,25,14,18,72,16,11,22,21,21,27,20,26,24,0,25,28,20,29,27,31,15,21,5,16,60,28,8,4,18,9,47,21,14,120,11,13,30,20,26,17,0,4,25,16,9,19,33,6,18,8,9,29,19,17,8,2,10,21,17,11,28,14,17,41,17,6,14,13,11,10,13,11,5,32,12,13,13,14,8,9,10,5,37,20,13,28,11,18,18,10,21,12,6,35,15,24,8,0,10,4,60),(52,7,30,10,16,11,13,21,15,15,6,14,17,4,38,14,7,10,18,12,11,14,15,15,0,17,19,13,14,9,18,8,14,2,13,20,22,7,0,9,12,10,12,10,45,9,8,12,11,15,6,5,0,18,11,1,8,12,5,8,3,3,9,9,9,7,3,4,6,6,12,10,7,10,14,14,4,6,8,4,5,10,6,4,14,2,11,3,13,6,9,1,3,15,8,3,8,7,8,5,8,11,7,4,9,7,17,10,0,7,4,32),(53,32,75,16,40,31,51,51,57,57,22,32,27,34,88,36,47,35,36,33,37,42,35,36,0,44,46,33,29,26,48,18,43,19,35,71,40,13,11,23,15,66,34,37,169,9,23,37,31,38,31,18,11,0,23,15,33,41,14,16,18,15,40,36,28,10,4,22,20,24,24,32,18,24,78,27,14,19,12,8,10,21,16,17,43,15,28,13,24,17,26,6,5,55,16,15,26,18,30,35,8,44,24,9,41,18,38,12,0,20,9,114),(54,25,63,7,39,23,45,42,41,36,13,26,17,22,93,19,20,17,24,17,18,26,31,22,0,31,26,22,22,22,30,20,39,10,19,63,26,11,5,22,14,51,28,20,158,22,20,17,15,13,16,17,6,24,0,12,16,24,6,25,8,14,36,21,21,8,6,11,16,24,14,23,13,22,48,23,17,11,15,6,9,13,10,6,34,8,21,12,20,12,14,4,4,37,14,21,20,9,17,22,10,20,6,9,38,16,30,8,0,10,10,84),(55,4,13,4,13,6,10,9,17,17,6,10,10,4,27,6,7,6,9,9,6,10,4,12,0,12,9,10,13,13,20,7,8,2,12,21,11,8,1,4,7,18,16,7,64,6,6,16,9,4,9,8,3,14,5,0,9,18,8,5,6,8,13,2,8,3,1,9,5,5,7,7,6,8,13,14,7,3,3,6,3,3,3,4,15,2,4,10,4,4,1,3,1,15,5,7,11,3,8,12,3,12,5,1,10,6,9,3,0,5,4,31),(56,17,47,10,26,19,34,36,38,29,9,22,12,16,76,15,20,23,21,21,18,18,20,28,0,22,27,15,23,23,41,22,39,7,20,55,28,7,3,25,12,46,25,15,117,3,14,30,9,11,14,15,6,19,25,8,0,24,10,28,11,9,37,28,13,7,2,10,11,13,20,38,10,10,32,20,4,9,5,4,10,4,4,8,28,3,21,12,17,5,8,3,8,44,14,12,16,9,21,17,15,18,9,4,31,15,34,11,0,10,9,89),(57,40,160,17,74,55,72,84,107,93,37,33,40,33,180,39,45,31,56,48,51,66,59,38,0,54,57,42,46,60,85,35,69,22,50,129,95,21,10,32,32,126,61,43,315,25,36,63,36,31,63,33,12,54,50,20,33,0,14,42,23,14,66,52,38,17,3,27,47,58,39,77,26,36,91,55,30,21,19,12,17,26,23,21,86,24,48,40,31,21,22,14,11,93,27,27,44,29,33,56,22,56,34,15,56,32,41,24,0,22,15,170),(58,7,19,9,15,9,16,11,16,15,5,6,5,4,23,7,9,10,8,9,5,13,10,9,0,12,10,6,11,9,7,5,15,2,8,29,14,4,1,7,7,18,12,10,41,4,6,16,5,4,9,8,2,17,3,4,6,8,0,8,4,7,9,8,9,5,1,2,7,9,5,5,2,6,19,13,3,8,3,6,3,6,2,3,11,7,7,3,8,5,3,3,4,19,7,5,6,2,7,7,6,14,4,2,13,7,8,2,0,8,2,25),(59,27,76,11,45,22,61,45,56,33,16,17,27,17,106,27,21,14,36,34,19,34,44,16,0,31,43,23,12,26,35,20,66,11,24,85,39,11,7,22,12,55,37,27,189,9,21,50,17,18,15,18,5,26,23,9,25,16,8,0,16,12,43,22,14,12,4,11,14,12,41,41,16,16,52,22,12,12,11,7,10,20,13,6,50,14,20,22,16,6,11,17,4,48,20,21,16,10,25,27,14,22,18,7,34,16,20,13,0,13,8,87),(60,16,26,7,15,16,21,17,16,20,10,9,9,13,48,11,20,10,21,7,11,19,15,7,0,14,16,13,9,12,14,4,26,6,9,34,17,3,5,10,10,34,10,9,81,4,10,14,10,12,6,8,6,5,14,5,9,8,3,16,0,8,18,16,8,9,2,7,4,11,11,12,13,9,19,17,7,7,7,4,6,16,7,10,14,13,13,11,15,2,4,2,7,22,7,7,7,3,10,11,5,15,8,3,19,7,17,5,0,12,4,47),(61,11,24,10,18,13,21,24,21,14,7,10,15,7,41,13,15,4,13,13,15,11,12,10,0,6,25,11,7,7,19,9,21,8,7,40,6,6,3,9,12,26,9,10,56,5,6,22,15,13,4,8,4,6,15,4,8,7,4,12,7,0,26,15,12,7,3,3,7,4,8,14,10,9,22,8,5,7,5,6,2,11,3,3,10,8,9,3,9,4,8,3,1,26,10,4,9,2,8,6,3,16,9,2,12,7,10,3,0,8,7,37),(62,26,71,21,40,28,99,40,76,61,24,25,33,30,119,46,50,33,41,27,52,53,53,41,0,40,59,23,34,38,57,33,119,17,27,121,38,24,5,25,14,46,49,41,209,13,31,62,28,36,18,26,12,40,16,15,43,25,8,43,12,21,0,36,25,10,8,17,16,25,39,38,16,16,56,40,13,18,15,6,12,21,15,8,26,13,20,13,31,8,11,9,10,44,14,18,22,15,40,33,17,29,20,6,45,21,26,11,0,22,13,127),(63,34,81,10,31,23,43,51,61,52,19,29,22,23,121,19,25,27,30,41,29,37,27,35,0,43,36,21,22,21,36,31,48,22,32,75,41,10,5,22,20,55,40,19,259,21,18,41,17,18,22,24,12,38,28,11,17,35,10,32,16,13,39,0,23,14,8,21,22,32,20,22,16,15,61,27,13,13,13,7,12,17,13,15,55,12,24,14,19,10,17,6,7,59,12,20,18,18,29,30,11,41,29,3,38,22,43,10,0,21,12,122),(64,26,62,7,22,28,36,43,57,56,12,25,28,22,94,19,24,27,21,21,26,31,17,25,0,35,31,21,17,35,32,18,32,18,30,60,38,16,8,16,25,55,26,16,142,11,13,35,11,23,29,16,8,41,20,8,14,25,12,19,8,9,18,30,0,13,3,14,22,27,23,33,17,16,51,30,7,14,16,7,11,21,12,11,34,13,25,16,17,11,11,10,5,30,10,13,27,17,14,22,14,30,14,6,30,18,20,10,0,19,8,100),(65,14,27,13,9,15,14,18,17,14,6,11,10,7,40,12,9,8,11,10,11,20,7,13,0,12,11,12,20,12,17,11,15,10,8,30,12,7,0,9,9,9,13,10,53,4,11,8,7,9,14,8,2,10,12,7,10,14,7,11,4,3,13,11,5,0,2,5,6,8,12,8,5,7,19,14,4,2,5,0,1,7,4,4,12,5,13,3,5,7,2,1,5,24,8,5,15,9,10,12,3,11,7,5,20,2,8,6,0,7,2,29),(66,3,11,3,7,7,7,9,15,3,8,8,4,5,20,4,4,7,2,3,4,3,6,4,0,6,3,7,3,5,10,2,6,4,3,8,6,3,3,4,5,8,5,7,30,1,2,3,5,2,3,4,2,5,3,2,3,8,2,5,3,1,12,4,3,1,0,3,2,7,4,5,5,2,11,6,8,2,1,1,3,6,1,1,9,3,10,2,5,3,1,1,1,7,3,6,12,1,7,2,3,4,1,1,6,5,6,1,0,5,2,19),(67,12,60,17,29,29,29,37,35,36,12,22,17,15,90,23,30,25,14,25,23,16,26,25,0,27,35,23,22,26,22,21,33,8,19,55,29,7,5,22,9,61,17,21,171,13,19,23,16,18,19,24,5,31,17,7,14,24,2,26,14,11,37,16,16,13,3,0,18,22,26,36,10,17,51,23,12,7,5,11,4,9,10,12,43,11,24,11,21,4,10,4,3,37,18,9,21,17,24,19,14,27,12,6,28,14,18,4,0,7,6,70),(68,18,48,12,18,18,36,42,42,33,14,25,14,20,65,16,29,22,30,21,23,28,18,23,0,19,20,11,15,14,28,19,28,9,16,52,36,9,4,13,14,37,17,15,124,13,15,21,19,15,20,17,10,17,14,7,15,23,10,31,5,11,28,23,21,9,2,7,0,22,16,27,12,13,52,24,9,14,13,11,6,8,9,9,38,10,22,8,15,11,8,10,3,33,7,16,22,18,24,33,8,32,18,6,35,11,25,10,0,15,11,77),(69,27,73,13,32,20,30,52,43,35,27,15,14,17,71,17,28,31,23,17,17,20,19,23,0,36,26,15,22,32,40,14,31,15,24,51,36,16,6,22,15,58,31,21,196,13,23,25,17,8,26,21,10,21,16,7,17,30,3,24,5,10,25,26,14,10,3,10,14,0,16,29,17,13,53,27,8,6,10,5,7,18,10,10,36,13,28,10,19,12,7,7,3,48,12,15,19,21,31,31,12,27,17,7,26,10,25,15,0,9,14,101),(70,31,93,17,59,28,72,39,81,47,19,39,42,33,145,27,32,32,35,34,39,43,43,43,0,46,39,23,31,32,45,20,80,24,31,107,30,19,9,20,25,69,50,34,244,12,26,53,31,26,24,20,13,32,36,14,30,27,11,68,15,13,50,35,28,14,8,16,11,28,0,54,21,24,53,24,16,13,16,5,16,18,15,9,41,19,24,19,29,11,18,7,5,61,25,35,28,13,28,31,15,25,14,11,56,20,23,8,0,24,13,107),(71,54,133,16,102,42,102,64,109,64,26,39,60,45,210,41,39,48,61,47,53,59,61,52,0,58,76,51,37,43,68,25,116,18,45,162,63,15,9,35,26,100,60,52,407,17,28,64,39,20,46,28,13,63,49,13,39,49,16,58,19,26,75,46,27,14,7,24,27,44,51,0,21,29,83,40,24,23,23,16,20,25,21,22,71,9,49,26,35,13,21,8,15,78,24,48,40,30,43,40,17,50,30,13,65,29,33,18,0,23,13,160),(72,17,42,9,19,14,21,17,19,28,9,10,14,15,59,11,19,14,17,9,23,20,17,20,0,20,21,13,12,23,24,11,32,4,21,29,19,5,4,20,11,47,20,8,111,3,12,22,13,10,15,14,8,14,10,8,18,15,4,17,13,7,17,14,18,6,3,2,16,14,12,17,0,8,28,22,7,8,13,8,3,12,8,6,21,7,10,9,13,5,9,4,5,31,12,7,10,13,14,23,4,9,5,5,24,8,22,8,0,5,1,37),(73,19,29,6,14,18,18,17,30,30,6,13,14,7,50,11,14,7,12,10,15,14,11,26,0,13,16,8,11,14,21,12,26,8,16,27,23,7,2,9,10,25,23,15,84,4,6,18,8,12,7,11,4,16,20,2,12,13,5,9,4,4,24,16,6,12,2,9,12,16,12,15,9,0,29,14,7,2,7,7,2,13,7,4,20,7,14,13,10,3,4,4,2,21,7,10,9,10,13,20,13,16,8,2,18,3,11,4,0,6,8,46),(74,70,133,28,73,55,69,79,100,97,29,47,42,46,217,39,54,61,57,48,44,71,56,68,0,55,65,45,42,52,77,32,47,37,42,112,64,24,7,53,32,124,61,38,350,13,49,62,34,32,40,37,7,69,44,17,34,57,14,51,13,25,64,43,56,26,12,29,40,49,36,63,25,32,0,50,23,20,29,12,19,38,19,18,76,17,49,24,37,14,25,12,7,102,18,36,53,40,55,49,19,55,31,5,77,20,58,24,0,29,18,211),(75,54,127,25,73,39,48,71,113,74,28,33,43,30,149,42,49,64,44,35,52,61,41,51,0,65,59,47,41,62,68,47,58,43,37,102,75,25,10,32,22,126,64,41,284,20,28,54,31,24,37,43,6,44,43,24,24,69,14,34,20,15,52,52,41,12,8,32,30,60,37,53,22,28,110,0,20,14,14,13,17,15,14,23,95,28,39,28,45,17,23,11,10,93,24,33,35,29,44,45,22,52,41,18,63,30,39,13,0,22,13,191),(76,21,34,10,18,11,25,22,21,21,5,4,20,12,47,8,15,13,16,10,17,17,17,18,0,15,21,11,7,13,23,13,29,7,10,35,19,14,4,7,7,30,19,15,72,11,8,16,11,5,13,14,4,16,13,10,8,16,7,11,5,5,17,14,11,4,3,10,9,7,19,21,6,15,16,8,0,5,7,4,5,10,5,9,23,6,8,12,14,4,8,2,3,30,11,1,12,9,8,16,8,13,5,4,16,5,8,4,0,9,3,41),(77,13,44,10,23,13,32,21,37,21,9,14,20,10,48,15,13,15,15,26,9,23,16,20,0,25,27,14,14,14,16,12,29,8,15,45,25,14,2,11,15,21,14,19,85,8,13,25,10,15,7,17,6,18,17,7,22,20,11,16,6,10,17,15,14,13,4,4,10,11,13,21,16,16,30,12,5,0,12,2,4,11,6,6,13,3,11,5,17,12,8,3,5,16,13,7,10,9,20,14,13,17,5,3,26,12,12,4,0,12,7,62),(78,23,53,14,31,24,26,31,23,28,11,22,21,16,59,13,26,23,19,17,22,23,23,19,0,21,28,13,10,18,28,15,38,11,19,39,22,13,3,10,14,51,14,23,119,8,11,28,20,22,16,24,9,13,18,7,11,16,5,21,9,14,24,21,13,14,6,8,16,22,17,33,8,14,36,25,6,11,0,11,7,6,5,8,20,10,18,10,13,9,6,4,4,37,16,10,20,9,18,23,6,20,8,6,33,9,20,5,0,10,4,63),(79,16,20,9,6,7,12,14,11,6,5,8,11,5,22,7,11,8,6,6,4,9,8,5,0,9,9,6,3,7,7,2,16,3,6,20,11,6,1,6,8,12,6,4,48,5,7,11,9,6,1,7,2,9,4,6,4,10,4,11,3,4,7,10,7,6,1,4,5,7,9,16,6,2,19,10,6,7,4,0,1,6,3,2,12,5,4,2,6,3,3,4,1,12,2,5,4,5,7,6,3,8,4,3,11,6,4,4,0,4,3,30),(80,7,23,7,12,12,8,14,16,11,8,6,4,6,34,7,3,12,11,9,10,8,11,10,0,11,8,8,9,10,10,9,10,4,3,14,16,2,0,5,9,17,13,3,34,4,5,9,3,4,1,7,4,12,9,2,7,6,0,16,3,5,9,8,8,2,5,6,5,6,3,9,6,6,21,8,3,6,5,1,0,6,3,5,9,11,11,4,7,4,0,3,3,17,5,5,5,6,5,9,2,8,4,1,13,6,6,3,0,7,6,32),(81,20,45,12,31,20,40,41,32,22,11,17,16,20,74,15,17,17,17,18,21,19,22,24,0,16,31,17,23,7,19,14,41,11,15,49,24,9,2,24,19,39,25,17,115,11,16,26,16,11,12,22,11,21,20,10,14,19,6,25,14,13,23,12,17,9,3,8,13,19,19,15,12,20,31,15,10,8,17,9,3,0,9,6,14,6,20,12,19,10,5,9,3,31,12,15,17,10,10,18,12,12,14,5,28,10,20,9,0,15,4,57),(82,21,49,20,17,16,29,47,38,23,14,14,25,7,75,15,11,16,19,10,22,20,17,16,0,23,25,14,16,17,30,18,27,8,22,50,25,7,2,13,9,46,14,13,123,4,13,18,16,13,16,5,6,26,21,7,15,12,3,19,3,6,18,12,12,4,4,9,11,18,16,19,5,10,33,18,5,6,5,6,3,12,0,9,25,8,10,12,9,6,4,7,4,30,5,16,9,6,13,12,9,12,7,0,25,13,23,8,0,14,6,59),(83,11,41,5,18,19,23,23,28,22,8,14,13,18,53,8,20,12,12,18,19,18,11,16,0,20,19,11,17,13,18,8,21,5,13,32,16,5,2,18,14,26,15,12,92,9,9,17,14,7,9,8,2,18,14,4,7,21,6,12,6,6,16,12,8,8,0,10,13,12,10,19,10,10,38,16,5,10,7,5,8,7,3,0,19,5,11,11,8,5,5,5,5,31,13,12,19,11,7,13,5,18,10,3,24,7,16,6,0,9,6,51),(84,59,171,33,85,65,93,111,132,130,53,52,46,58,242,62,81,73,66,63,69,75,60,69,0,73,101,48,42,82,121,45,86,40,58,130,92,29,12,50,41,145,75,45,471,25,44,80,38,29,40,33,19,83,58,23,53,81,20,57,24,28,69,68,61,23,9,41,53,60,38,86,38,35,133,79,28,23,36,20,28,26,32,23,0,26,63,38,54,17,34,19,11,120,30,40,65,33,49,71,28,82,40,17,100,32,69,22,0,25,22,244),(85,17,33,6,20,19,21,35,23,21,10,21,20,12,44,12,20,19,15,15,17,18,20,20,0,20,23,13,15,15,19,13,15,11,17,31,24,10,3,13,15,33,20,19,105,10,8,11,15,15,8,17,10,22,9,8,8,21,8,19,6,6,12,16,17,9,1,8,20,17,13,25,11,11,40,14,11,7,9,5,6,10,6,13,36,0,13,6,18,11,12,7,7,29,13,12,18,16,15,18,7,16,16,10,26,11,7,7,0,9,1,52),(86,28,63,20,30,29,32,54,57,55,20,21,22,25,109,17,36,16,32,27,22,34,29,34,0,23,39,20,15,30,45,17,25,21,18,57,38,15,7,26,17,42,25,18,130,10,21,13,14,19,13,20,4,23,21,10,15,26,5,24,9,13,22,20,22,14,2,13,14,22,21,31,18,15,58,21,6,8,10,7,7,15,7,13,41,10,0,20,15,2,11,14,6,40,12,14,17,17,20,19,10,20,16,6,25,19,31,5,0,13,1,94),(87,22,48,25,30,21,24,31,39,27,16,19,15,20,61,17,21,20,25,15,32,22,26,24,0,16,34,23,12,29,35,21,18,8,21,52,24,13,9,22,17,45,27,23,123,12,14,24,18,22,16,19,10,21,20,6,14,18,5,16,9,11,22,19,20,12,3,10,15,21,15,26,13,17,28,16,11,6,18,6,7,11,8,10,50,7,21,0,22,3,5,12,5,43,12,13,18,11,17,19,13,28,11,3,25,11,24,7,0,10,4,79),(88,21,35,17,22,20,32,26,29,45,17,16,15,15,69,19,33,19,27,14,22,30,22,21,0,32,21,17,19,20,31,18,30,7,26,67,26,11,2,19,13,40,19,18,138,9,14,22,14,10,15,20,7,27,18,11,22,17,3,17,9,8,27,22,13,12,6,7,23,12,17,28,16,17,59,28,13,9,10,4,12,8,6,10,43,7,24,15,0,13,6,5,5,40,14,13,18,13,18,24,6,20,11,5,35,21,25,5,0,11,5,85),(89,15,14,5,16,11,18,17,21,19,6,13,14,6,36,10,12,8,11,16,12,15,11,15,0,10,19,16,12,10,15,6,23,9,7,24,6,5,1,10,10,18,11,10,68,3,11,12,13,3,7,2,5,10,13,7,8,15,1,8,4,6,15,11,5,8,3,6,12,8,10,20,11,9,28,6,10,8,4,1,4,7,6,6,20,8,7,8,9,0,5,4,3,17,8,7,11,8,10,19,11,18,7,5,18,5,16,3,0,15,5,35),(90,14,37,7,23,7,20,25,28,29,8,18,17,8,38,12,15,14,10,17,14,20,20,16,0,15,21,8,13,11,18,12,19,6,13,30,12,5,3,16,5,30,18,12,76,6,7,13,10,15,14,15,2,15,19,8,11,4,4,14,7,6,16,9,13,3,3,6,7,8,11,17,8,10,25,10,8,12,6,5,8,8,10,3,24,13,12,10,12,6,0,7,8,25,6,8,6,4,12,15,6,15,10,1,11,13,11,9,0,10,1,40),(91,1,14,3,12,7,7,8,12,7,1,7,9,5,31,4,7,8,4,8,10,10,5,3,0,11,4,7,4,9,9,5,8,1,7,18,9,2,1,5,3,14,9,10,33,6,6,5,4,11,10,3,1,14,7,2,8,9,2,6,3,0,7,7,8,0,2,3,2,7,7,12,5,4,18,6,3,2,3,1,2,7,2,4,6,4,4,2,14,2,4,0,2,15,1,4,7,4,8,8,4,8,5,0,10,7,1,4,0,2,1,25),(92,4,6,6,5,10,9,8,7,7,3,6,9,2,17,10,7,7,5,4,8,9,4,2,0,5,6,8,4,10,8,2,11,3,7,8,5,2,1,3,3,9,2,5,30,0,5,6,7,5,2,5,5,8,12,2,6,4,6,6,2,1,3,5,2,5,1,0,3,3,0,8,3,6,5,6,1,2,4,3,1,7,3,1,4,2,7,2,7,3,3,3,0,13,6,4,1,5,6,7,2,4,6,4,9,3,4,3,0,4,2,20),(93,53,183,26,107,54,87,92,157,111,48,66,66,47,236,54,66,67,62,57,63,81,69,66,0,87,88,38,61,59,104,40,87,27,53,144,70,24,22,53,37,133,80,61,514,23,57,56,40,39,54,44,24,70,74,20,42,52,18,65,34,23,82,61,37,32,9,51,51,67,43,79,40,48,146,76,22,26,37,13,28,34,19,30,99,35,51,31,45,22,22,30,4,0,38,44,53,35,53,74,22,59,37,12,97,47,62,34,0,30,19,260),(94,38,45,15,26,19,29,24,45,35,14,17,23,23,66,20,17,18,31,24,24,20,17,19,0,25,34,29,20,22,30,16,27,14,23,61,31,12,5,22,14,37,37,16,142,8,15,24,20,16,20,15,9,17,25,9,26,25,7,19,13,6,30,21,11,7,6,9,22,23,26,22,11,16,39,26,9,9,12,3,5,13,16,7,38,15,16,10,15,16,13,10,2,40,0,9,16,10,16,23,13,26,12,4,32,21,24,5,0,15,4,73),(95,21,59,2,39,16,43,23,49,32,10,18,34,18,75,18,23,18,23,22,17,31,27,24,0,15,32,16,17,18,30,19,35,6,22,69,25,11,9,14,16,45,20,21,195,9,22,40,25,9,18,16,12,28,26,7,21,18,12,39,12,15,31,20,13,7,4,13,14,27,24,40,12,22,41,16,6,17,14,9,8,15,16,14,35,12,14,15,21,8,11,6,3,33,13,0,13,19,20,30,9,24,12,4,33,11,26,9,0,18,6,86),(96,40,96,23,46,34,53,61,65,62,23,27,32,22,127,38,42,36,44,31,37,31,41,39,0,44,38,35,35,35,49,26,51,28,38,83,45,20,12,24,19,85,40,34,273,17,31,40,26,28,25,24,17,43,33,14,37,43,13,38,15,15,39,43,30,20,5,19,24,35,30,56,21,25,82,33,25,15,24,9,18,17,13,8,67,15,30,18,28,16,18,10,2,69,23,20,0,21,32,45,23,37,26,9,53,29,43,13,0,11,14,123),(97,20,42,16,20,10,21,26,30,24,7,21,9,11,45,13,16,13,16,21,15,19,12,14,0,18,24,16,9,22,26,14,21,8,7,34,36,9,5,16,17,30,11,19,97,6,5,10,12,9,10,15,6,19,19,10,13,17,7,18,7,10,10,19,17,5,4,9,16,12,8,20,11,8,44,12,4,4,9,10,9,8,9,9,35,6,25,13,12,7,7,7,3,24,5,12,15,0,14,21,5,17,10,6,15,4,22,6,0,12,2,64),(98,22,77,25,37,27,34,42,48,42,17,25,26,18,96,33,31,23,21,30,28,33,18,34,0,35,29,14,25,43,31,19,38,16,14,57,30,14,8,11,13,55,23,19,182,8,22,34,17,16,19,27,5,30,30,6,18,26,9,20,7,12,30,19,15,9,5,15,21,26,22,30,12,19,60,25,10,18,21,7,10,13,12,10,40,13,19,16,21,7,14,6,5,45,15,15,19,23,0,22,10,31,29,9,38,19,28,7,0,15,2,94),(99,17,83,13,40,23,46,42,48,38,9,25,21,25,97,31,25,20,26,28,33,41,29,36,0,31,31,19,17,27,38,17,40,9,18,62,49,18,9,14,11,66,32,22,174,10,25,25,23,21,20,18,6,30,31,13,13,25,5,26,12,16,36,26,28,6,5,16,18,23,25,41,13,14,46,27,17,13,13,4,9,20,15,8,47,13,25,17,18,14,17,6,8,50,14,21,26,16,27,0,10,36,15,10,45,21,23,7,0,8,12,75),(100,10,30,9,12,17,28,20,23,23,10,7,6,11,46,13,11,11,15,15,13,16,13,11,0,13,19,10,5,10,17,8,21,6,9,29,17,7,4,7,13,31,11,11,70,4,7,11,8,12,6,7,3,11,10,1,7,12,14,14,7,7,19,14,3,8,1,7,7,4,5,10,10,10,22,10,11,10,6,4,9,11,5,6,14,5,10,6,9,2,7,3,3,17,4,7,8,7,18,6,0,19,10,2,17,6,5,7,0,12,7,49),(101,37,81,13,34,39,48,51,71,65,13,33,30,31,114,19,31,33,27,25,30,39,44,37,0,38,31,25,21,37,41,17,57,20,31,93,32,14,7,16,16,69,35,32,216,18,26,38,27,14,20,21,8,40,22,21,20,27,13,30,14,14,27,29,30,14,5,23,15,39,20,30,16,24,61,40,23,16,21,9,15,18,12,15,71,12,36,20,28,10,12,13,7,58,19,16,26,22,37,35,11,0,21,8,41,10,49,13,0,23,10,128),(102,31,75,14,45,13,32,38,39,28,19,16,17,23,72,22,21,28,22,24,24,26,27,15,0,27,31,25,16,24,25,14,42,15,24,52,38,13,7,13,19,53,21,28,142,9,19,30,19,15,17,13,10,30,18,9,18,29,12,21,9,9,26,37,18,13,3,15,16,19,17,49,16,15,46,26,13,17,14,9,9,21,9,5,40,10,27,18,13,8,9,4,4,35,15,11,23,10,25,28,7,17,0,5,54,16,20,10,0,9,7,91),(103,9,23,3,12,7,12,21,22,13,10,13,8,4,38,12,11,8,10,8,16,7,12,17,0,15,10,10,9,10,17,7,10,3,5,17,14,5,1,6,11,21,5,4,48,5,6,8,6,6,9,10,6,11,7,5,5,14,4,7,6,2,8,19,9,6,1,4,6,10,8,14,9,6,17,10,5,3,8,3,2,7,9,3,10,7,15,6,13,6,4,5,3,13,8,4,8,6,7,7,2,11,7,0,13,3,6,4,0,10,7,37),(104,37,86,28,38,38,67,47,83,69,22,29,41,31,117,30,37,24,48,35,28,44,34,47,0,49,43,32,29,39,49,27,59,20,40,108,43,20,11,28,32,81,47,29,251,19,25,48,27,27,24,29,12,52,36,16,32,39,13,29,18,18,57,37,27,14,7,20,19,32,35,46,25,21,84,42,22,23,19,8,20,17,20,16,55,24,28,17,25,14,12,13,9,79,16,21,30,23,27,35,14,34,20,3,0,22,40,10,0,17,15,127),(105,21,48,8,28,19,31,39,43,33,15,35,18,21,90,14,16,13,21,12,13,27,25,25,0,24,26,12,10,30,37,15,31,13,19,53,32,14,6,19,15,47,30,13,159,15,12,34,13,9,9,14,7,31,15,6,14,16,7,16,13,12,23,25,11,13,7,6,11,13,20,20,14,16,48,24,8,13,11,4,9,11,11,6,30,11,17,10,20,10,15,12,2,31,18,14,10,7,14,18,3,30,11,8,29,0,17,3,0,7,8,70),(106,33,89,16,26,18,39,35,59,53,19,24,24,19,98,21,29,35,29,24,30,35,30,37,0,34,39,26,17,30,43,13,30,14,28,58,45,15,3,24,15,72,34,21,183,14,23,31,26,18,21,27,5,32,21,12,26,25,6,27,13,11,42,26,23,17,1,22,19,22,23,31,20,23,80,31,11,12,13,7,8,18,15,8,49,6,25,17,21,12,12,6,5,52,11,17,24,12,10,22,13,39,25,3,45,15,0,12,0,10,7,134),(107,10,29,9,19,12,7,22,17,20,4,13,8,9,24,8,14,13,8,5,5,10,12,12,0,16,9,2,5,13,16,11,19,4,6,23,11,5,0,9,10,26,10,10,63,5,9,10,5,4,9,9,4,17,7,3,3,9,6,10,1,3,9,6,7,7,1,11,7,13,11,10,3,5,25,11,3,5,5,6,4,9,8,5,15,8,15,8,9,5,3,1,1,25,6,11,5,5,9,8,3,15,4,4,11,4,13,0,0,4,3,45),(108,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(109,11,33,12,19,14,25,29,26,17,9,12,8,10,45,17,10,12,18,16,17,14,10,12,0,16,16,16,15,10,20,12,14,4,19,28,9,4,4,14,6,32,11,10,83,7,12,18,12,10,8,11,8,17,15,5,8,8,5,16,6,7,14,13,11,10,3,8,6,12,12,16,9,9,24,13,5,5,10,4,4,8,4,9,19,12,14,10,9,8,4,5,4,18,9,3,8,9,7,11,10,15,7,4,23,9,17,5,0,0,3,50),(110,9,32,11,15,16,17,22,21,25,6,10,12,12,39,13,15,7,12,8,15,17,18,16,0,7,11,14,4,17,20,13,24,6,8,25,14,6,5,16,8,31,14,17,84,6,11,18,9,8,11,8,5,15,10,4,11,6,5,12,8,7,13,13,14,8,1,5,13,16,10,9,3,2,25,17,6,7,3,6,2,6,9,4,21,4,19,6,8,5,7,5,2,27,9,8,6,5,5,6,8,13,6,2,16,9,17,7,0,5,0,37),(111,83,249,52,121,80,135,126,188,171,51,81,80,63,341,74,90,80,87,87,83,91,89,112,0,109,125,74,65,88,133,51,161,43,101,239,127,35,14,73,62,224,107,76,578,33,72,115,59,59,64,50,27,104,70,35,51,124,32,83,46,26,126,83,66,42,12,62,69,84,64,112,47,50,190,105,36,39,33,26,27,55,35,37,126,31,87,46,66,22,39,32,15,152,40,46,63,52,77,68,32,109,55,29,115,60,92,34,0,40,26,0);
/*!40000 ALTER TABLE `hero_matchups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-08 15:57:53