-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: online_cab_booking
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `driver_cab_details`
--

DROP TABLE IF EXISTS `driver_cab_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_cab_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cab_no` varchar(20) DEFAULT NULL,
  `cab_type` varchar(20) DEFAULT NULL,
  `no_of_seats` varchar(10) DEFAULT NULL,
  `driver_id` varchar(45) DEFAULT NULL,
  `driver_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_cab_details`
--

LOCK TABLES `driver_cab_details` WRITE;
/*!40000 ALTER TABLE `driver_cab_details` DISABLE KEYS */;
INSERT INTO `driver_cab_details` VALUES (1,'MH10CW9049','Baleno','4',NULL,'Pratik Sanjay Patil');
/*!40000 ALTER TABLE `driver_cab_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_registration`
--

DROP TABLE IF EXISTS `driver_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_registration` (
  `id` int(11) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `license_no` varchar(50) DEFAULT NULL,
  `Adhar_no` varchar(20) DEFAULT NULL,
  `UserId` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  `image` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_registration`
--

LOCK TABLES `driver_registration` WRITE;
/*!40000 ALTER TABLE `driver_registration` DISABLE KEYS */;
INSERT INTO `driver_registration` VALUES (NULL,'Pratik Sanjay Patil','A/P budhgoan','Pratikpatil3120@gmail.com','MH/10/000002002','885522114477','Pratik3120','Pratik3120','9145490750',1,'Ideal','');
/*!40000 ALTER TABLE `driver_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_upload_status`
--

DROP TABLE IF EXISTS `driver_upload_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_upload_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_status` varchar(10) DEFAULT NULL,
  `driver_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_upload_status`
--

LOCK TABLES `driver_upload_status` WRITE;
/*!40000 ALTER TABLE `driver_upload_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `driver_upload_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_cab_booking`
--

DROP TABLE IF EXISTS `user_cab_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_cab_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Full_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `pickup_point` varchar(100) DEFAULT NULL,
  `drop_point` varchar(100) DEFAULT NULL,
  `kilo_meter` varchar(100) DEFAULT NULL,
  `No_of_passenger` varchar(10) DEFAULT NULL,
  `booking_date` varchar(100) DEFAULT NULL,
  `booking_time` varchar(100) DEFAULT NULL,
  `pakage` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `driver_id` varchar(45) DEFAULT NULL,
  `driver_name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `driver_contact` varchar(45) DEFAULT NULL,
  `cab_no` varchar(45) DEFAULT NULL,
  `cab_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_cab_booking`
--

LOCK TABLES `user_cab_booking` WRITE;
/*!40000 ALTER TABLE `user_cab_booking` DISABLE KEYS */;
INSERT INTO `user_cab_booking` VALUES (1,'sagar','7500858070','Kolhapur','sangli','50','3','2022-05-30','13:29','Ganeral','416301','1',NULL,'Pratik Sanjay Patil','Completed','','9145490750','MH10CW9049','Baleno'),(2,'Shuham Tatyaso Patil','1234567890','Kolhapur','Sangli','10','5','2022-12-31','23:59','Ganeral','416301','1',NULL,'Pratik Sanjay Patil','Pending','500','9145490750','MH10CW9049','Baleno');
/*!40000 ALTER TABLE `user_cab_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_card_payment`
--

DROP TABLE IF EXISTS `user_card_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_card_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `card_number` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_card_payment`
--

LOCK TABLES `user_card_payment` WRITE;
/*!40000 ALTER TABLE `user_card_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_card_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_driver_fpassword`
--

DROP TABLE IF EXISTS `user_driver_fpassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_driver_fpassword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `otp` varchar(20) DEFAULT NULL,
  `Rpassword` varchar(10) DEFAULT NULL,
  `cpassword` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_driver_fpassword`
--

LOCK TABLES `user_driver_fpassword` WRITE;
/*!40000 ALTER TABLE `user_driver_fpassword` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_driver_fpassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payment`
--

DROP TABLE IF EXISTS `user_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Amount` varchar(100) DEFAULT NULL,
  `Full_name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment`
--

LOCK TABLES `user_payment` WRITE;
/*!40000 ALTER TABLE `user_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_registration`
--

DROP TABLE IF EXISTS `user_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `mobile_no` varchar(10) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `cpass` varchar(50) DEFAULT NULL,
  `birth_date` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_registration`
--

LOCK TABLES `user_registration` WRITE;
/*!40000 ALTER TABLE `user_registration` DISABLE KEYS */;
INSERT INTO `user_registration` VALUES (1,'Sagar Basgonda Patil','A/p Sangli','Sagarpatil0010@gmail.com','738508550','sagar','sagar','2002-02-02','male',NULL);
/*!40000 ALTER TABLE `user_registration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-29 16:20:25
