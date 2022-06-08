-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: project-df
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communicationrules`
--

DROP TABLE IF EXISTS `communicationrules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communicationrules` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `riskthreshold` int DEFAULT NULL,
  `costthreshold` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communicationrules`
--

LOCK TABLES `communicationrules` WRITE;
/*!40000 ALTER TABLE `communicationrules` DISABLE KEYS */;
INSERT INTO `communicationrules` VALUES (8,1,'shahnawaz','shahnawaz.shaikh@acceron.in','IT','Supplier',45,50000,'2021-05-10 23:04:54');
/*!40000 ALTER TABLE `communicationrules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CustomerName` longtext,
  `address` longtext,
  `city` longtext,
  `state` longtext,
  `pincode` longtext,
  `country` longtext,
  `CustomerSegment` longtext,
  `location` longtext,
  `domain` varchar(45) DEFAULT NULL,
  `NumberOfWarehouses` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Marah Lara','8665 Sunny Deer Woods','Baltimore','Maryland','21226','USA','Corporate','POINT(43.18824005 -77.56706238)','automobile',3),(2,'Taylor Wood','9879 Harvest Deer Farms','Dallas','Texas','75211','USA','Corporate','POINT(32.753685 -96.86553955)','automobile',5),(3,'Patricia Petersen','3675 Emerald Goose Bank','Baltimore','Maryland','21226','USA','Consumer','POINT(40.65486527 -73.58707428)',NULL,NULL),(4,'Karen Smith','7573 Cozy Goose Road','Cincinnati','Ohio','45238','USA','Consumer','POINT(39.28849411 -84.3551178)',NULL,NULL),(5,'Mary Silva','1230 Crystal Lookout','Carrollton','Texas','75006','USA','Consumer','POINT(32.96593094 -96.84902191)',NULL,NULL),(6,'Shawn Smith','5985 Silent Leaf Vale','Germantown','Maryland','20874','USA','Consumer','POINT(39.1836586 -77.26545715)',NULL,NULL),(7,'Betty Roberts','4255 Silver Gate Vale','Rochester','New York','14609','USA','Consumer','POINT(43.18824005 -77.56706238)',NULL,NULL),(8,'Arthur Alvarez','8665 Sunny Deer Woods','Rochester','New York','14609','USA','Home Office','POINT(26.19762421 -98.19145203)',NULL,NULL),(9,'Katherine Bailey','3481 Wishing Port','Germantown','Maryland','20874','USA','Consumer','POINT(39.19226837 -77.24241638)',NULL,NULL),(10,'Wynter Wynn','5198 Colonial Loop','Baltimore','Maryland','21226','USA','Consumer','POINT(32.93148804 -96.81433868)',NULL,NULL),(11,'Jason Dixon','7494 Emerald Terrace','Dallas','Texas','75211','USA','Consumer','POINT(32.76312256 -96.69212341)',NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distwarehouse`
--

DROP TABLE IF EXISTS `distwarehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distwarehouse` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `distributor` varchar(255) DEFAULT NULL,
  `user_id` double DEFAULT NULL,
  `address` longtext,
  `city` longtext,
  `state` longtext,
  `country` longtext,
  `pincode` longtext,
  `location` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distwarehouse`
--

LOCK TABLES `distwarehouse` WRITE;
/*!40000 ALTER TABLE `distwarehouse` DISABLE KEYS */;
INSERT INTO `distwarehouse` VALUES (1,'ThayerMahan',1,'120B Leonard Drive','Groton','Connecticut','USA','6340','POINT (-72.046993 41.338769)'),(2,'ABB INC',1,'901 Main Campus Drive','Raleigh','North Carolina','USA','27606','POINT (-78.677296 35.772531)'),(3,'Impalloy Ltd',1,'1433 Hwy 34 Suite B1','Farmingdale','New Jersey','USA','7727','POINT (-74.12417 40.208168)');
/*!40000 ALTER TABLE `distwarehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-03-26 16:52:02.635579'),(2,'auth','0001_initial','2021-03-26 16:52:02.806148'),(3,'admin','0001_initial','2021-03-26 16:52:03.261875'),(4,'admin','0002_logentry_remove_auto_add','2021-03-26 16:52:03.409821'),(5,'admin','0003_logentry_add_action_flag_choices','2021-03-26 16:52:03.424180'),(6,'contenttypes','0002_remove_content_type_name','2021-03-26 16:52:03.538627'),(7,'auth','0002_alter_permission_name_max_length','2021-03-26 16:52:03.618149'),(8,'auth','0003_alter_user_email_max_length','2021-03-26 16:52:03.658712'),(9,'auth','0004_alter_user_username_opts','2021-03-26 16:52:03.670316'),(10,'auth','0005_alter_user_last_login_null','2021-03-26 16:52:03.732894'),(11,'auth','0006_require_contenttypes_0002','2021-03-26 16:52:03.737898'),(12,'auth','0007_alter_validators_add_error_messages','2021-03-26 16:52:03.749672'),(13,'auth','0008_alter_user_username_max_length','2021-03-26 16:52:03.817507'),(14,'auth','0009_alter_user_last_name_max_length','2021-03-26 16:52:03.884281'),(15,'auth','0010_alter_group_name_max_length','2021-03-26 16:52:03.909245'),(16,'auth','0011_update_proxy_permissions','2021-03-26 16:52:03.920246'),(17,'auth','0012_alter_user_first_name_max_length','2021-03-26 16:52:03.984973'),(18,'sessions','0001_initial','2021-03-26 16:52:04.012482');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('974wwstosmigocuoqltwacy3zvxnybdz','.eJxdjEELwjAMhf9KybnM0y696X0n8SQiYQ2zrutmmk3G2H83U1DwlEe-974FWMBB8mCh9uAW4JDbq8wDgTtDQhkZo_EhYxZiuFjtfigQstweI7ak4wmjvsqi1Bz7WvMBo4Su543SREn-J6HDZvO8b979WHEfGuWJnllxhY0zKjZfoTUV8hwxeWtOxz2s6wuXlkF8:1likgM:x085VD-l1ez9Vt3ysxEK2TkWnM7AY72cuRR7MiKjybo','2021-05-31 21:21:46.507914'),('wouzkdq9x7l8xxdnyh3gv51eliu827ej','.eJxdjbEKwkAQRH_lmPqwS3Od9qnESkSW3BKPXC662URCyL-7IlrYPXb2zawQRUCJ8GgiwgpJY3fV5c4IZxTSSSi7mEYalQUXb7-fFEyit8dEHZs8U7ZTtauM89AYHyhr6gd5pzxz0X8l9dTyd7zwczSuqQ3OWtzP9q4mWTKV6N3puMe2vQC3kToP:1lnjag:aOwClvj5VDKznD_egP8VDRgrJ75BgBPK3A3_TMsJpvw','2021-06-14 15:12:30.498923');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialimpact`
--

DROP TABLE IF EXISTS `financialimpact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financialimpact` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `event` varchar(255) DEFAULT NULL,
  `class` varchar(45) DEFAULT NULL,
  `impact` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialimpact`
--

LOCK TABLES `financialimpact` WRITE;
/*!40000 ALTER TABLE `financialimpact` DISABLE KEYS */;
INSERT INTO `financialimpact` VALUES (1,'stock','low',10),(2,'stock','moderate',30),(3,'stock','high',80),(4,'bankrupt','high',100),(5,'merger or acquisition','low',5),(6,'domain','high',60),(7,'domain','moderate',20),(8,'domain','low',5),(9,'legal','low',20),(10,'penalties','low',20),(11,'person','low',15);
/*!40000 ALTER TABLE `financialimpact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `warehouseTable` varchar(100) DEFAULT NULL,
  `warehouseTableID` int DEFAULT NULL,
  `inventoryType` varchar(255) DEFAULT NULL,
  `inventoryTypeID` int DEFAULT NULL,
  `inventoryCount` int DEFAULT NULL,
  `LastUpdated` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'warehouse',1,'part',1,10,'2021-03-23 20:10:55'),(2,'warehouse',1,'part',2,5,'2021-03-23 20:11:26'),(3,'warehouse',1,'part',3,15,'2021-03-23 20:12:29'),(4,'warehouse',6,'part',1,5,'2021-03-23 20:13:06'),(5,'warehouse',6,'part',2,5,'2021-03-23 20:14:03'),(6,'warehouse',1,'product',1,5,'2021-03-23 20:14:45'),(7,'distwarehouse',1,'product',1,3,'2021-03-23 20:15:33'),(8,'distwarehouse',2,'product',3,5,'2021-03-23 20:16:20'),(9,'distwarehouse',3,'product',2,4,'2021-03-23 20:17:21'),(10,'warehouse',6,'product',2,10,'2021-03-24 23:57:28'),(11,'warehouse',1,'part',25,7,'2021-05-24 18:52:43'),(12,'warehouse',6,'part',28,9,'2021-05-24 18:52:43'),(13,'warehouse',6,'product',3,3,'2021-05-24 18:52:43'),(15,'warehouse',1,'part',40,8,'2021-05-24 23:01:26'),(16,'warehouse',1,'part',43,11,'2021-05-24 23:01:26'),(17,'warehouse',6,'part',47,12,'2021-05-24 23:01:26'),(18,'warehouse',1,'product',8,7,'2021-05-24 23:01:26');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `naturaldisaster`
--

DROP TABLE IF EXISTS `naturaldisaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `naturaldisaster` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ndtype` longtext,
  `metric` longtext,
  `min_metric_value` double DEFAULT NULL,
  `max_metric_value` double DEFAULT NULL,
  `class` longtext,
  `impact` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `naturaldisaster`
--

LOCK TABLES `naturaldisaster` WRITE;
/*!40000 ALTER TABLE `naturaldisaster` DISABLE KEYS */;
INSERT INTO `naturaldisaster` VALUES (1,'earthquake','magnitude',3,3.9,'minor',0),(2,'earthquake','magnitude',4,4.9,'light',10),(3,'earthquake','magnitude',5,5.9,'moderate',60),(4,'earthquake','magnitude',6,6.9,'strong',80),(5,'earthquake','magnitude',7,7.9,'major',100),(6,'earthquake','magnitude',8,NULL,'great',100),(7,'flood','NA',NULL,NULL,'NA',100),(8,'hurricane','mph',74,95,'category 1',30),(9,'hurricane','mph',96,110,'category 2',60),(10,'hurricane','mph',111,129,'category 3',80),(11,'hurricane','mph',130,156,'category 4',100),(12,'hurricane','mph',157,NULL,'category 5',100);
/*!40000 ALTER TABLE `naturaldisaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderedunits`
--

DROP TABLE IF EXISTS `orderedunits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderedunits` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ordertype` varchar(455) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `unitType` varchar(100) DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `No_of_units` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderedunits`
--

LOCK TABLES `orderedunits` WRITE;
/*!40000 ALTER TABLE `orderedunits` DISABLE KEYS */;
INSERT INTO `orderedunits` VALUES (1,'sales',1,'product',1,8),(2,'sales',2,'product',1,5),(3,'sales',2,'product',2,3),(4,'sales',3,'product',3,9),(5,'sales',4,'product',7,6),(6,'sales',5,'product',8,7),(7,'sales',6,'product',9,15);
/*!40000 ALTER TABLE `orderedunits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `part` varchar(255) DEFAULT NULL,
  `partType` varchar(255) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES (1,'Electric interconnectors','NonConsumable','2021-03-23 21:22:44'),(2,'Housings','NonConsumable','2021-03-23 21:26:02'),(3,'Magnets','NonConsumable','2021-03-23 21:26:02'),(4,'Rotors','NonConsumable','2021-03-23 21:26:02'),(5,'Stators','NonConsumable','2021-03-23 21:26:02'),(6,'Wire','NonConsumable','2021-03-23 21:26:02'),(7,'Insulation Paper','Consumable','2021-03-23 21:26:02'),(8,'Varnish','Consumable','2021-03-23 21:26:02'),(9,'Insulation Sleeve','Consumable','2021-03-23 21:26:02'),(10,'Beads','NonConsumable','2021-03-23 21:28:20'),(11,'Belt','NonConsumable','2021-03-23 21:28:20'),(12,'Body Ply','NonConsumable','2021-03-23 21:28:20'),(13,'Sidewall','NonConsumable','2021-03-23 21:28:20'),(14,'Apex','NonConsumable','2021-03-23 21:28:20'),(15,'Tread','NonConsumable','2021-03-23 21:28:20'),(16,'Inner Liner','NonConsumable','2021-03-23 21:28:20'),(17,'Engine Block','NonConsumable','2021-03-23 21:30:30'),(18,'Pistons','NonConsumable','2021-03-23 21:30:30'),(19,'Crankshaft','NonConsumable','2021-03-23 21:30:30'),(20,'Camshaft','NonConsumable','2021-03-23 21:30:30'),(21,'Cylinder Head','NonConsumable','2021-03-23 21:30:30'),(22,'Timing Belt/Chain','NonConsumable','2021-03-23 21:30:30'),(23,'Engine Oil','Consumable','2021-03-23 21:30:30'),(24,'Lubricants','Consumable','2021-03-23 21:30:30'),(25,'Motherboard','NonConsumable','2021-05-24 18:20:52'),(26,'Processor','NonConsumable','2021-05-24 18:20:52'),(27,'RAM','NonConsumable','2021-05-24 18:20:52'),(28,'SSD/HDD','NonConsumable','2021-05-24 18:20:52'),(29,'PSU','NonConsumable','2021-05-24 18:20:52'),(30,'Cabinet','NonConsumable','2021-05-24 18:20:52'),(31,'Thermal Paste','Consumable','2021-05-24 18:20:52'),(32,'Housing','NonConsumable','2021-05-24 18:23:49'),(33,'Audio Receptor','NonConsumable','2021-05-24 18:23:49'),(34,'Speaker System','NonConsumable','2021-05-24 18:23:49'),(35,'Picture Tube','NonConsumable','2021-05-24 18:23:49'),(36,'Computer Chip','NonConsumable','2021-05-24 18:23:49'),(37,'IR Reciever','NonConsumable','2021-05-24 18:23:49'),(38,'Antenna','NonConsumable','2021-05-24 18:23:49'),(39,'Display Panel','NonConsumable','2021-05-24 18:24:46'),(40,'Ebike Kit','NonConsumable','2021-05-24 22:48:33'),(41,'Ebike Motor','NonConsumable','2021-05-24 22:48:33'),(42,'Ebike Battery','NonConsumable','2021-05-24 22:48:33'),(43,'Mechanical Accessories','NonConsumable','2021-05-24 22:48:33'),(44,'Electronic Accessories','NonConsumable','2021-05-24 22:48:33'),(45,'Lubricant','Consumable','2021-05-24 22:48:33'),(46,'Bridge Rectifier','NonConsumable','2021-05-24 22:48:33'),(47,'Voltage Regulators','NonConsumable','2021-05-24 22:48:33'),(48,'Voltage Divider','NonConsumable','2021-05-24 22:48:33'),(49,'Error Amplifier','NonConsumable','2021-05-24 22:48:33'),(50,'Charging rate regulator','NonConsumable','2021-05-24 22:48:33'),(51,'Fuse','NonConsumable','2021-05-24 22:48:33'),(52,'Ebike Controller','NonConsumable','2021-05-24 23:11:59');
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productparts_mapping`
--

DROP TABLE IF EXISTS `productparts_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productparts_mapping` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `part_id` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productparts_mapping`
--

LOCK TABLES `productparts_mapping` WRITE;
/*!40000 ALTER TABLE `productparts_mapping` DISABLE KEYS */;
INSERT INTO `productparts_mapping` VALUES (1,1,1,'2021-03-26 20:42:23'),(2,1,2,'2021-03-26 20:42:23'),(3,1,3,'2021-03-26 20:42:23'),(4,1,4,'2021-03-26 20:42:23'),(5,1,5,'2021-03-26 20:42:23'),(6,1,6,'2021-03-26 20:42:23'),(7,1,7,'2021-03-26 20:42:23'),(8,1,8,'2021-03-26 20:42:23'),(9,1,9,'2021-03-26 20:42:23'),(10,2,10,'2021-03-26 20:44:13'),(11,2,11,'2021-03-26 20:44:13'),(12,2,12,'2021-03-26 20:44:13'),(13,2,13,'2021-03-26 20:44:13'),(14,2,14,'2021-03-26 20:44:13'),(15,2,15,'2021-03-26 20:44:13'),(16,2,16,'2021-03-26 20:44:13'),(17,6,17,'2021-03-26 20:45:01'),(18,6,18,'2021-03-26 20:45:01'),(19,6,19,'2021-03-26 20:45:01'),(20,6,20,'2021-03-26 20:45:01'),(21,6,21,'2021-03-26 20:45:01'),(22,6,22,'2021-03-26 20:45:01'),(23,6,23,'2021-03-26 20:45:01'),(24,6,24,'2021-03-26 20:45:01'),(25,3,25,'2021-05-24 18:32:13'),(26,3,26,'2021-05-24 18:32:13'),(27,3,27,'2021-05-24 18:32:13'),(28,3,28,'2021-05-24 18:32:13'),(29,3,29,'2021-05-24 18:32:13'),(30,3,30,'2021-05-24 18:32:13'),(31,3,31,'2021-05-24 18:32:13'),(32,7,32,'2021-05-24 18:33:20'),(33,7,33,'2021-05-24 18:33:20'),(34,7,34,'2021-05-24 18:33:20'),(35,7,35,'2021-05-24 18:33:20'),(36,7,36,'2021-05-24 18:33:20'),(37,7,37,'2021-05-24 18:33:20'),(38,7,38,'2021-05-24 18:33:20'),(39,7,39,'2021-05-24 18:33:20'),(40,8,40,'2021-05-24 22:50:25'),(41,8,41,'2021-05-24 22:50:25'),(42,8,42,'2021-05-24 22:50:25'),(43,8,43,'2021-05-24 22:50:25'),(44,8,44,'2021-05-24 22:50:25'),(45,8,45,'2021-05-24 22:50:25'),(46,9,46,'2021-05-24 22:50:25'),(47,9,47,'2021-05-24 22:50:25'),(48,9,48,'2021-05-24 22:50:25'),(49,9,49,'2021-05-24 22:50:25'),(50,9,50,'2021-05-24 22:50:25'),(51,9,51,'2021-05-24 22:50:25'),(52,8,52,'2021-05-24 23:12:24');
/*!40000 ALTER TABLE `productparts_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Product` text,
  `NonConsumableParts` text,
  `ConsumableParts` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Electric Motor','1, 2, 3, 4, 5, 6','7, 8, 9'),(2,'Tyre','10, 11, 12, 13, 14, 15, 16',NULL),(3,'Computer','Motherboard, CPU, Ram, Memory installation, HDD/SDD.',NULL),(4,'Lathe Machine','Refrigerant, Compressor, Evaporator Coil, Expansion valve, Condenser Coil.',NULL),(5,'Pen ','Brass, Aluminium, Ink, spring, plastic.',NULL),(6,'Engine','17, 18, 19, 20, 21, 22','23, 24'),(7,'Television','Housing, Audio reception, Speaker system, Picture tube, Computer chips, remote controller reciever, anteena',NULL),(8,'E-Bike','Ebike kit, Ebike motor and Controller, Ebike battery, Mechanical accessories, Electronic accessories.',NULL),(9,'Battery charger','bridge rectifier, voltage regulators, voltage divider, error amplifier, charging rate regulator, fuse',NULL),(10,'Screw driver','Fan Blades, Fan Motors, Protective guard, Electric wiring.',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorders`
--

DROP TABLE IF EXISTS `purchaseorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchaseorders` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `user_id` double DEFAULT NULL,
  `supplier_id` double DEFAULT NULL,
  `OrderDate` longtext,
  `address` longtext,
  `city` longtext,
  `state` longtext,
  `pincode` longtext,
  `country` longtext,
  `location` longtext,
  `status` longtext,
  `value` longtext,
  `DeliveryDate` longtext,
  `currency` longtext,
  `DeliveryDays` longtext,
  `grn` varchar(50) DEFAULT NULL,
  `parts` varchar(45) DEFAULT NULL,
  `transporter_id` int DEFAULT NULL,
  `route` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorders`
--

LOCK TABLES `purchaseorders` WRITE;
/*!40000 ALTER TABLE `purchaseorders` DISABLE KEYS */;
INSERT INTO `purchaseorders` VALUES (1,1,1,'16/03/2021','1037 Power road','conklin','New York','13748','USA',NULL,'Approved','50000','18/03/2021','USD','2','1',NULL,NULL,NULL),(2,1,3,'15/03/2021','1037 Power road','conklin','New York','13748','USA',NULL,'Approved','25000','20/03/2021','USD','5','0',NULL,NULL,NULL),(7,1,6,'24/05/2021','1037 Power road','conklin','New York','13748','USA',NULL,'Approved','70000','27/05/2021','USD','3','0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `purchaseorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesorders`
--

DROP TABLE IF EXISTS `salesorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesorders` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `customer_id` double DEFAULT NULL,
  `seller_id` double DEFAULT NULL,
  `OrderDate` longtext,
  `address` longtext,
  `city` longtext,
  `state` longtext,
  `pincode` longtext,
  `country` longtext,
  `location` longtext,
  `status` longtext,
  `value` longtext,
  `DeliveryDate` longtext,
  `currency` longtext,
  `DeliveryDays` longtext,
  `DeliveryChallan` int DEFAULT NULL,
  `transporter_id` int DEFAULT NULL,
  `route` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesorders`
--

LOCK TABLES `salesorders` WRITE;
/*!40000 ALTER TABLE `salesorders` DISABLE KEYS */;
INSERT INTO `salesorders` VALUES (1,1,1,'2021-03-12','8665 Sunny Deer Woods','Baltimore','Maryland','21226','USA','POINT(43.18824005 -77.56706238)','Approved','50000','2021-03-15','usd','3',0,1,'{\'src\': \'Baltimore\', \'dest\': \'Baltimore\'}'),(2,2,1,'2021-03-12','9879 Harvest Deer Farms','Dallas','Texas','75211','USA','POINT(32.753685 -96.86553955)','Approved','100000','2021-03-14','usd','2',0,1,'{\'src\': \'Jamestown\', \'hub1\': \'Harriburg\', \'hub2\': \'Baltimore\', \'hub3\': \'Washington\', \'hub4\': \'Baltimore\', \'hub5\': \'Charlotte\', \'hub6\': \'Atlanta\', \'dest\': \'Dallas\'}'),(3,3,1,'2021-03-12','3675 Emerald Goose Bank','Freeport','New York','11520','USA','POINT(40.65486527 -73.58707428)','Approved','78000','2021-03-16','usd','4',0,NULL,NULL),(4,6,1,'2021-03-12','5985 Silent Leaf Vale','Germantown','Maryland','20874','USA','POINT(39.1836586 -77.26545715)','Approved','140000','2021-03-15','usd','3',0,NULL,NULL),(5,8,1,'2021-03-12','8665 Sunny Deer Woods','Rochester','New York','14609','USA','POINT(26.19762421 -98.19145203)','Approved','190000','2021-03-15','usd','3',0,NULL,NULL),(6,7,1,'2021-03-13','3675 Emerald Goose Bank','Baltimore','Maryland','21226','USA','POINT(40.65486527 -73.58707428)','Approved','28000','2021-03-15','usd','3',0,NULL,NULL);
/*!40000 ALTER TABLE `salesorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialimpact`
--

DROP TABLE IF EXISTS `socialimpact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialimpact` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `event` varchar(455) DEFAULT NULL,
  `class` varchar(455) DEFAULT NULL,
  `impact` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialimpact`
--

LOCK TABLES `socialimpact` WRITE;
/*!40000 ALTER TABLE `socialimpact` DISABLE KEYS */;
INSERT INTO `socialimpact` VALUES (1,'labour','low',15),(2,'human rights violation','low',10),(3,'geopolitical','moderate',45),(4,'public health','high',70),(5,'cyber','low',15),(6,'manmade','high',80),(7,'labour','high',75),(8,'grr','low',15);
/*!40000 ALTER TABLE `socialimpact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplierparts_mapping`
--

DROP TABLE IF EXISTS `supplierparts_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplierparts_mapping` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `supplier_id` int DEFAULT NULL,
  `part_id` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplierparts_mapping`
--

LOCK TABLES `supplierparts_mapping` WRITE;
/*!40000 ALTER TABLE `supplierparts_mapping` DISABLE KEYS */;
INSERT INTO `supplierparts_mapping` VALUES (1,1,1,'2021-03-26 20:48:30'),(2,1,2,'2021-03-26 20:48:30'),(3,1,3,'2021-03-26 20:48:30'),(4,1,4,'2021-03-26 20:48:30'),(5,1,5,'2021-03-26 20:48:30'),(6,1,6,'2021-03-26 20:48:30'),(7,3,10,'2021-03-26 20:49:54'),(8,3,11,'2021-03-26 20:49:54'),(9,3,12,'2021-03-26 20:49:54'),(10,3,13,'2021-03-26 20:49:54'),(11,3,14,'2021-03-26 20:49:54'),(12,3,15,'2021-03-26 20:49:54'),(13,3,16,'2021-03-26 20:49:54'),(14,1,7,'2021-03-26 23:21:26'),(15,1,8,'2021-03-26 23:21:26'),(16,1,9,'2021-03-26 23:21:26'),(17,2,1,'2021-03-31 00:12:48'),(18,2,2,'2021-03-31 00:12:48'),(19,2,3,'2021-03-31 00:12:48'),(20,2,4,'2021-03-31 00:13:25'),(21,2,5,'2021-03-31 00:13:25'),(22,2,6,'2021-03-31 00:13:25'),(23,2,7,'2021-03-31 00:13:25'),(24,2,8,'2021-03-31 00:13:25'),(25,2,9,'2021-03-31 00:13:25'),(26,4,25,'2021-03-31 00:36:56'),(27,4,26,'2021-03-31 00:36:56'),(28,4,27,'2021-03-31 00:36:56'),(29,4,28,'2021-03-31 00:36:56'),(30,4,29,'2021-03-31 00:36:56'),(31,4,30,'2021-03-31 00:36:56'),(32,4,31,'2021-03-31 00:36:56'),(33,1,10,'2021-05-12 01:01:16'),(34,6,25,'2021-05-24 18:35:47'),(35,6,26,'2021-05-24 18:35:47'),(36,6,27,'2021-05-24 18:35:47'),(37,6,28,'2021-05-24 18:35:47'),(38,6,29,'2021-05-24 18:35:47'),(39,6,30,'2021-05-24 18:35:47'),(40,6,31,'2021-05-24 18:35:47'),(41,6,34,'2021-05-24 18:35:47'),(42,6,32,'2021-05-24 18:36:44'),(43,6,39,'2021-05-24 18:36:44'),(44,5,40,'2021-05-24 22:52:54'),(45,5,41,'2021-05-24 22:52:54'),(46,5,42,'2021-05-24 22:52:54'),(47,5,43,'2021-05-24 22:52:54'),(48,5,44,'2021-05-24 22:52:54'),(49,5,45,'2021-05-24 22:52:54'),(50,5,46,'2021-05-24 22:52:54'),(51,5,47,'2021-05-24 22:52:54'),(52,5,48,'2021-05-24 22:52:54'),(53,5,49,'2021-05-24 22:52:54'),(54,5,50,'2021-05-24 22:52:54'),(55,5,51,'2021-05-24 22:52:54'),(56,5,52,'2021-05-24 23:14:17');
/*!40000 ALTER TABLE `supplierparts_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `supplierName` longtext,
  `domain` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` longtext,
  `pincode` double DEFAULT NULL,
  `state` longtext,
  `country` longtext,
  `location` longtext,
  `email` longtext,
  `YearsOfOperation` longtext,
  `SupplyType` longtext,
  `CustomiseProductServices` double DEFAULT NULL,
  `ResponseTime` longtext,
  `NumberOfWarehouses` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Blackstone LLC','automobile','100 Blackstone Avenue','Baltimore',21226,'New York','USA','POINT (-79.214259 42.109261)','','4','Manufacturer',1,'Immediate',1),(2,'APC Company','','100 Remington Avenue','Norfolk',13667,'New York','USA','POINT (-74.99508300000001 44.804881)','','7','Manufacturer',1,'Usual',2),(3,'Hi-Lume Corporation','automobile','414 Commerce Road','Baltimore',21226,'New York','USA','POINT (-75.98849 42.106212)','','5','Manufacturer',1,'Usual',2),(4,'Gearcor, Inc.',NULL,'1037 Powers Rd.','Conklin',13748,'New York','USA','POINT (-75.816772 42.064244)','carol@gearcor.com','8','Distributor',0,'Immediate',4),(5,'W. Kintz','automobile','165 Caverns Road','Howes Cave',12092,'New York','USA','POINT (-74.39783 42.685101)','','4','Manufacturer',1,'Usual',1),(6,'Buzzards Bay','electronics','43 Bates Road','Rochester',2770,'Massachusetts','USA','POINT (-70.802925 41.748085)','eric@buzzardsbaytransfers.com','3','Distributor',0,'Late',1);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporters`
--

DROP TABLE IF EXISTS `transporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporters` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `transporterName` longtext,
  `domain` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` longtext,
  `pincode` double DEFAULT NULL,
  `state` longtext,
  `country` longtext,
  `location` longtext,
  `email` longtext,
  `YearsOfOperation` longtext,
  `ModeOfTransport` longtext,
  `ResponseTime` longtext,
  `NumberOfWarehouses` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporters`
--

LOCK TABLES `transporters` WRITE;
/*!40000 ALTER TABLE `transporters` DISABLE KEYS */;
INSERT INTO `transporters` VALUES (1,'Worley Group Inc.',NULL,'575 North Dairy Ashford St','Houston',77079,'Texas','USA','POINT (-95.615094 29.786539)',NULL,'3','road','immediate',1),(2,'Blue Water Shipping',NULL,'295 Main Street','Richmondville',12149,'New York','USA','POINT (-74.562827 42.634438)',NULL,'5','water',NULL,NULL),(3,'Self-Reliance',NULL,'P.O. Box 396','North Falmouth',2556,'Massachusetts','USA',NULL,NULL,'2','all',NULL,NULL);
/*!40000 ALTER TABLE `transporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userproduct_mapping`
--

DROP TABLE IF EXISTS `userproduct_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userproduct_mapping` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userproduct_mapping`
--

LOCK TABLES `userproduct_mapping` WRITE;
/*!40000 ALTER TABLE `userproduct_mapping` DISABLE KEYS */;
INSERT INTO `userproduct_mapping` VALUES (1,1,2,'2021-04-10 01:17:12'),(2,1,6,'2021-04-10 01:17:12'),(3,1,3,'2021-05-24 18:46:31'),(4,1,7,'2021-05-24 18:46:31'),(5,1,8,'2021-05-24 23:18:05'),(6,1,9,'2021-05-24 23:18:05');
/*!40000 ALTER TABLE `userproduct_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `organisation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `NumberOfWarehouses` int DEFAULT NULL,
  `product_id` varchar(500) DEFAULT NULL,
  `product` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'acceron','Gearcor, Inc','df@123','Gearcor, Inc','1037 powers road','Conklin','New York','USA',13748,NULL,2,'1',NULL),(2,'omega','Omega wire','df@123','Omega wire','572 stateRows13','Williomstown','New York','USA',13493,NULL,1,'6',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `user_id` double DEFAULT NULL,
  `address` longtext,
  `city` longtext,
  `state` longtext,
  `country` longtext,
  `pincode` longtext,
  `inventory` longtext,
  `location` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,1,'1080 East 2nd Street','Jamestown','New York','USA','14701','Cast iron, Phosphorous bronze, alloy steels','POINT (-79.219845 42.109844)'),(2,5,'165 Caverns Road','Howes Cave','New York','USA','12092','plastic products','POINT (-74.39783 42.685101)'),(3,6,'43 Bates Road','Rochester','Massachusetts','USA','2770','Gyro Compass, ARPA, Speed and Distance Log Device, Forecastle Bell','POINT (-70.802925 41.748085)'),(4,8,'572 State Route 13','Williamstown','New York','USA','13493','Fine & Ultrafine Enamelled Copper Wires, Triple Insulated Winding (TIW) Wires, Self Bonding Enamelled Wires, Nylon Coated Enamelled Wires','POINT (-75.89409 43.425626)'),(5,2,'100 Remington Avenue','Norfolk','New York','USA','13667','Pcopper wire','POINT (-74.99508300000001 44.804881)'),(6,1,'1850 Frankfurst Ave','Baltimore','Maryland','USA','21226','alloys, steel, cast iron, sand paper, bronze','POINT (-76.575824 39.241877)'),(7,3,'414 Commerce Road','Vestal','New York','USA','13850','Steel plate, Structural steel, Pipes and Tubes, Nails, nuts and bolts, wire rope','POINT (-75.98849 42.106212)'),(8,3,'6309 Ft.Smallwood Rd','Baltimore','Maryland','USA','21226','Steel plate, Structural steel, Pipes and Tubes, Nails, nuts and bolts, wire rope','POINT (-76.575824 39.241877)'),(9,4,'1037 Powers Rd.','Conklin','New York','USA','13748','safety glasses, gloves, safety boots, overalls and protective aprons','POINT (-75.816772 42.064244)'),(10,4,'50 Milk Street','Boston','Massachusetts','USA','2110','respirators and masks, earmuffs and earpieces, safety glasses, gloves, safety boots, overalls and protective aprons','POINT (-71.05760500000001 42.356738)'),(11,4,'1285 Central Avenue','Hillside','New Jersey','USA','7205','earmuffs and earpieces, safety glasses, gloves, safety boots, overalls and protective aprons','POINT (-74.226307 40.693683)'),(12,4,'11767 Katy Freeway','Houston','Texas','USA','77079','respirators and masks, earmuffs and earpieces, safety glasses, gloves, safety boots, overalls and protective aprons','POINT (-95.593577 29.784198999999997)'),(13,7,'547A Sissonville Road','Potsdam','New York','USA','13676','Dona Paper Roll, Craft Paper Roll, book paper, mechanical paper, Paperboard, Facial tissue, bath tissue','POINT (-75.000682 44.706216)'),(14,7,'16600 Park Row','Houston','Texas','USA','77084','Chromo Gum Sheet,	Photocopier Paper, Printer Paper, Digital Printing Paper, book paper, mechanical paper, Paperboard, Facial tissue, bath tissue','POINT (-75.000682 44.706216)'),(15,7,'1800 Washington Blvd','Baltimore','Maryland','USA','21230','Chromo Gum Sheet,	Photocopier Paper, Printer Paper, Digital Printing Paper, book paper, mechanical paper, Paperboard, Facial tissue, bath tissue','POINT (-76.642543 39.275038)');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-01 20:35:37
