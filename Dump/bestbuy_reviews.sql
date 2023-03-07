-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: bestbuy
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `ReviewID` int NOT NULL AUTO_INCREMENT,
  `ProductID` int DEFAULT NULL,
  `Reviewer` varchar(45) DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  `Comment` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ReviewID`),
  UNIQUE KEY `ReviewID_UNIQUE` (`ReviewID`),
  KEY `fk_productid_idx` (`ProductID`),
  CONSTRAINT `fk_productid` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,4,'Anthony',1,'Too expensive for only half the mouse buttons.  Where\'s the USB port?'),(2,2,'Kristine',5,'So much better than my old Mac!! Why did it take me so long to realize the hype for Apple was totally empty???'),(3,688,'John',3,'Clothes came out more dry than when I put them in…'),(4,436,'Dorothy',4,'Can\'t find the home button or where to plug in my headphones.'),(5,562,'Jose',5,'Still using mine that I bought in 1877.'),(6,626,'Jacob',2,'Gives me a headache.'),(7,857,'Della',1,'DOA. Thankfully was able to get a refund!  STAY AWAY!'),(8,857,'Holly',5,'Best TV I\'ve ever had! Must buy!!!'),(9,846,'Patricia',5,'Best game I\'ve ever played, can\'t wait for the sequel!!!'),(10,254,'Shannon',4,'GET OVER HERE!'),(11,867,'Martha',5,'A great remake for a classic title!'),(12,785,'Fadi',5,'Bought for my kid and they love it.'),(13,233,'Kathie',4,'Your review is in another castle.'),(14,379,'Bob',2,'I still can\'t figure out how to beat the first boss'),(15,379,'Orlando',5,'GIT GUD'),(16,278,'Frances',4,'A great Christmas present for your child'),(17,181,'David',5,'My favourite album to listen to during tea time.'),(18,47,'Abigail',4,'So chill, like me at all times'),(19,520,'Douglas',1,'bought this for my gf but she left me and also it didnt come wiht power calbe so gotta return'),(20,586,'Betty',2,'Too crunchy!'),(21,419,'Roger',5,'I\'m a sucker for fresh seafood!'),(22,674,'James',2,'I\'ve had like 100 of these and I\'m not any skinnier. FALSE ADVERTISING!!!!!!!!!!!!!!!!!!!');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07 17:49:56
