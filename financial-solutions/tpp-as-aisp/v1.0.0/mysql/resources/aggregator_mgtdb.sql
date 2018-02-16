-- MySQL dump 10.13  Distrib 5.7.18, for osx10.12 (x86_64)
--
-- Host: 192.168.49.113    Database: aggregator_mgtdb
-- ------------------------------------------------------
-- Server version	5.5.56-log

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

CREATE DATABASE `aggregator_mgtdb`;
USE `aggregator_mgtdb`;
--
-- Table structure for table `ACCESS_TOKENS`
--

DROP TABLE IF EXISTS `ACCESS_TOKENS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACCESS_TOKENS` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) NOT NULL,
  `BANK_UID` varchar(255) NOT NULL,
  `PRIMARY_TOKEN` varchar(255) NOT NULL,
  `REFRESH_TOKEN` varchar(255) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VALID_TILL` date NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  PRIMARY KEY (`UID`),
  KEY `USERNAME` (`USERNAME`),
  KEY `BANK_UID` (`BANK_UID`),
  CONSTRAINT `ACCESS_TOKENS_ibfk_1` FOREIGN KEY (`USERNAME`) REFERENCES `AGGREGATOR_USER` (`USERNAME`) ON DELETE CASCADE,
  CONSTRAINT `ACCESS_TOKENS_ibfk_2` FOREIGN KEY (`BANK_UID`) REFERENCES `BANKS` (`BANK_UID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCESS_TOKENS`
--

LOCK TABLES `ACCESS_TOKENS` WRITE;
/*!40000 ALTER TABLE `ACCESS_TOKENS` DISABLE KEYS */;
INSERT INTO `ACCESS_TOKENS` VALUES (1,'thilo@gmail.com','goldbank','ac30e47c-2e0a-338a-b854-acc23016386e','154a19b2-0aa8-3e03-8bb4-f7bf607e9a31','2018-02-06 09:12:44','2018-02-06','New Token'),(2,'thilo@gmail.com','goldbank','0f985481-21f1-3f9b-bdb2-02665eb221a9','49741fd8-3bca-36cd-9592-f9b6a4893e98','2018-02-06 09:18:52','2018-02-06','New Token'),(3,'test2@test.com','goldbank','6fe4b251-0426-3ce9-b632-e0105ca703bc','1c3e7a81-e93e-3cc9-be74-c076f42445ed','2018-02-06 09:32:44','2018-02-06','New Token'),(4,'amalka@wso2.com','goldbank','22e86da1-2313-3935-8284-634c8560332b','2adfa1b7-d7dc-3869-b602-d3e0341bb190','2018-02-06 09:37:03','2018-02-06','New Token'),(5,'amalka@wso2.com','goldbank','1b75896b-d739-31a6-949f-5418dbdeaf24','d70c77d9-d11c-310b-9620-7b2d53ff9f21','2018-02-06 09:38:36','2018-02-06','New Token'),(6,'thilo@gmail.com','goldbank','b750ce2e-37e8-347f-9319-6de82f8fcbe8','069c450b-53c5-3d73-a21e-be2642e33287','2018-02-06 09:45:59','2018-02-06','New Token'),(7,'thilo@gmail.com','goldbank','4fa69c22-ed4f-3147-b358-c96bd625d446','807c5aef-8653-3660-88eb-bcb49eaab48f','2018-02-06 09:48:57','2018-02-06','New Token'),(8,'amalka@wso2.com','goldbank','b9d55dc6-7a19-3f57-8ce1-559777bd2b2c','34d924f0-9fce-3a83-a05e-678c25937ea8','2018-02-06 10:32:18','2018-02-06','New Token'),(9,'thilo@gmail.com','goldbank','70ba758d-ae86-3f11-b4b9-762e66da2b2d','8773709a-dd63-30ef-825f-4a5962bb4518','2018-02-06 10:56:49','2018-02-06','New Token'),(10,'thilo@gmail.com','goldbank','1de731a9-5acb-3d36-a7d6-b2a9130e0068','2449b498-eb4f-3ddc-a5d0-b8e2df08bae2','2018-02-06 11:07:12','2018-02-06','New Token'),(11,'thilo@gmail.com','goldbank','aab2d82d-31d2-320c-bcd4-96f9c6b971d6','da2bdd10-7291-3e1b-a256-d42271d1e270','2018-02-06 11:52:01','2018-02-06','New Token'),(12,'lalaji@wso2.com','goldbank','8ac91abd-90f7-3b1a-885c-a79d5fcf73db','60cda727-1cba-35be-9a48-016ae087550c','2018-02-06 11:53:39','2018-02-06','New Token'),(14,'amalka@wso2.com','goldbank','c81ac8b6-ddea-313c-be3e-a4275e41542b','805f2db7-aa5c-3940-9659-8fecce263a7b','2018-02-06 13:24:07','2018-02-06','New Token'),(15,'amalka@wso2.com','goldbank','91d196bf-1476-3cb2-9ca3-3d0c84e4471c','2f648204-6fce-33c1-9583-4f5a25b6db06','2018-02-06 14:53:15','2018-02-06','New Token'),(16,'amalka@wso2.com','goldbank','0623d3fd-b1b4-348c-9129-ec061efa4434','ae15ae0a-58dc-3439-ba23-6c7a9034c51a','2018-02-06 15:29:24','2018-02-06','New Token'),(17,'amalka@wso2.com','goldbank','5aeed340-3cdc-31df-8fe8-e0d9cd291275','e005cff9-be06-3896-8a6f-da3ceb85d353','2018-02-06 16:22:34','2018-02-06','New Token'),(18,'amalka@wso2.com','goldbank','7df9845a-adae-3644-becb-8133a4b709d6','fd668417-6832-39de-8970-4e89cd370c4e','2018-02-06 16:28:55','2018-02-06','New Token'),(19,'amalka@wso2.com','goldbank','1937c620-36f8-3420-ae70-990b35070aad','e421d35d-fcfb-3278-a804-09b312514d23','2018-02-06 16:45:30','2018-02-06','New Token'),(20,'amalka@wso2.com','goldbank','d80ac0da-17da-31d5-bf7b-d8765dfe3831','1aa7b1f4-de8b-3fd2-be8e-ab57fc2c7725','2018-02-06 16:54:21','2018-02-06','New Token'),(21,'amalka@wso2.com','goldbank','8c014a58-dc70-3b9a-aeac-32dcb81b9f02','3c927913-7bab-3281-97aa-77282928244a','2018-02-06 17:09:44','2018-02-06','New Token'),(22,'amalka@wso2.com','goldbank','02cf78c7-e326-3366-be2d-79a3e3bf9cee','683f467b-1c3e-394f-9bc2-a482803ac937','2018-02-06 20:18:19','2018-02-06','New Token'),(23,'thilo@gmail.com','goldbank','00dc6202-385a-3d89-8a8b-607c24edc4a0','1cf964dc-52be-34dd-9254-ec64c4b89a61','2018-02-07 04:58:56','2018-02-07','New Token'),(24,'amalka@wso2.com','goldbank','5ff8e6e3-8fa4-38de-b808-2589203e34e0','b8321ac6-cb13-3cf1-ab9a-895ed082a328','2018-02-07 07:37:41','2018-02-07','New Token'),(25,'amalka@wso2.com','goldbank','a7787253-bcb7-3656-9576-a757815b4dbc','c64e5e4a-611d-300d-b7e4-7fe78aad5913','2018-02-07 07:40:35','2018-02-07','New Token'),(26,'thilo@gmail.com','goldbank','25b6c838-c22b-3f81-8f29-66aa2429523f','d3d5c74c-00c7-3f31-b79c-51de07a446fc','2018-02-07 08:14:53','2018-02-07','New Token'),(27,'thilo@gmail.com','goldbank','827c4833-7345-3a41-abf9-c8bfb1add2b6','f86e2a40-a63f-3035-b120-cc02c1dd7971','2018-02-07 08:16:09','2018-02-07','New Token'),(28,'amalka@wso2.com','goldbank','de1f4f1a-704c-34d8-a227-04b061a5c17e','27db0db7-b62b-320c-a1a6-870bcba573e5','2018-02-07 08:52:34','2018-02-07','New Token'),(29,'amalka@wso2.com','goldbank','cbaf724e-e70e-37e2-96f2-07b44df58a69','f9d11dc5-7909-3780-b5ca-fea0fd12702d','2018-02-07 10:12:54','2018-02-07','New Token'),(30,'sumedhas@wso2.com','goldbank','56d3117f-8ac6-3389-be12-381c0787e131','90221123-c62a-39fb-8293-514b877060dd','2018-02-09 08:23:23','2018-02-09','New Token'),(31,'sumedhas@wso2.com','goldbank','cf6dc3a7-3915-3b0f-9baa-72af105c2481','3e98fb26-52a3-307c-9341-219f8b8fe7df','2018-02-12 07:12:41','2018-02-12','New Token'),(32,'sumedhas@wso2.com','goldbank','c73123e6-fabe-385f-a3d0-29228ad85481','17d6c032-6241-3823-994b-aa3a4c4ddf4c','2018-02-13 07:08:14','2018-02-13','New Token');
/*!40000 ALTER TABLE `ACCESS_TOKENS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AGGREGATOR_USER`
--

DROP TABLE IF EXISTS `AGGREGATOR_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AGGREGATOR_USER` (
  `NAME` varchar(255) NOT NULL,
  `USERNAME` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `ADDITIONAL_DETAILS` varchar(255) DEFAULT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AGGREGATOR_USER`
--

LOCK TABLES `AGGREGATOR_USER` WRITE;
/*!40000 ALTER TABLE `AGGREGATOR_USER` DISABLE KEYS */;
INSERT INTO `AGGREGATOR_USER` VALUES ('Amalka','amalka@wso2.com','Admin123','{}','2018-02-06 09:35:19'),('lalaji','lalaji@wso2.com','test123','{}','2018-02-06 09:15:06'),('Sumedha Kodithuwakku','sumedhas@wso2.com','Admin@123','{}','2018-02-09 08:15:06'),('Test2','test2@test.com','test','{}','2018-02-06 09:31:50'),('Test','test@test.com','test','{}','2018-02-06 09:22:07'),('Thiloshon','thilo@gmail.com','thilo123','{}','2018-02-06 04:54:57');
/*!40000 ALTER TABLE `AGGREGATOR_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BANKS`
--

DROP TABLE IF EXISTS `BANKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BANKS` (
  `BANK_NAME` varchar(255) NOT NULL,
  `BANK_UID` varchar(255) NOT NULL,
  `BANK_STANDARD` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `CLIENT_SECRET` varchar(255) NOT NULL,
  `CREDENTIALS_EXPIRY_DATE` date DEFAULT NULL,
  `ADDITIONAL_DETAILS` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`BANK_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BANKS`
--

LOCK TABLES `BANKS` WRITE;
/*!40000 ALTER TABLE `BANKS` DISABLE KEYS */;
INSERT INTO `BANKS` VALUES ('Gold Bank of UK','goldbank','open_banking_uk','aeeK9HS8B505NVcuRhrttIWxEL4a','5szRum3lfL8SI3tVQ4Skubxupoga',NULL,'{\"Data\":[{\"accountInitiationsURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/account-initiations\"},{\"accountsURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/accounts\"},{\"authorizeAPIURL\":\"https://api-openbanking.wso2.com/AuthorizeAPI/v1.0.0/\"},{\"balancesAPIURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/accounts/{AccountId}/balances\"},{\"debitsAPIURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/accounts/{AccountId}/direct-debits\"},{\"standingOrdersURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/accounts/{AccountId}/standing-orders\"},{\"tokenAPIURL\":\"https://api-openbanking.wso2.com/TokenAPI/v1.0.0/\"},{\"transactionsURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/accounts/{AccountId}/transactions\"}]}'),('Central Silver Bank','siverbank','open_banking_uk','78gfhgfg76cgfcgfgsdeslop','aspsapsHJDF67FDSFJHF',NULL,'{\"Data\":[{\"accountInitiationsURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/account-initiations\"},{\"accountsURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/accounts\"},{\"authorizeAPIURL\":\"https://api-openbanking.wso2.com/AuthorizeAPI/v1.0.0/\"},{\"balancesAPIURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/accounts/{AccountId}/balances\"},{\"debitsAPIURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/accounts/{AccountId}/direct-debits\"},{\"standingOrdersURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/accounts/{AccountId}/standing-orders\"},{\"tokenAPIURL\":\"https://api-openbanking.wso2.com/TokenAPI/v1.0.0/\"},{\"transactionsURL\":\"https://api-openbanking.wso2.com/AccountsInfoAPI/v2.0.0/accounts/{AccountId}/transactions\"}]}');
/*!40000 ALTER TABLE `BANKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INITIATION_IDS`
--

DROP TABLE IF EXISTS `INITIATION_IDS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INITIATION_IDS` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) NOT NULL,
  `BANK_UID` varchar(255) NOT NULL,
  `INITIATION_ID` varchar(255) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `STATUS` varchar(255) NOT NULL,
  PRIMARY KEY (`UID`),
  KEY `USERNAME` (`USERNAME`),
  KEY `BANK_UID` (`BANK_UID`),
  CONSTRAINT `INITIATION_IDS_ibfk_1` FOREIGN KEY (`USERNAME`) REFERENCES `AGGREGATOR_USER` (`USERNAME`) ON DELETE CASCADE,
  CONSTRAINT `INITIATION_IDS_ibfk_2` FOREIGN KEY (`BANK_UID`) REFERENCES `BANKS` (`BANK_UID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INITIATION_IDS`
--

LOCK TABLES `INITIATION_IDS` WRITE;
/*!40000 ALTER TABLE `INITIATION_IDS` DISABLE KEYS */;
INSERT INTO `INITIATION_IDS` VALUES (3,'thilo@gmail.com','goldbank','60164c43-1320-4482-b628-0ef000acf630','2018-02-06 05:10:44','Initiation ID'),(4,'thilo@gmail.com','goldbank','cb354cbd-f8d3-444b-84cc-19a0a9e284ae','2018-02-06 05:17:26','Initiation ID'),(5,'thilo@gmail.com','goldbank','0224e189-e315-4335-a8da-09f17e686cd8','2018-02-06 05:17:35','Initiation ID'),(6,'thilo@gmail.com','goldbank','ab662db4-4a20-4aaf-81bc-3f935dcf9d8a','2018-02-06 05:18:34','Initiation ID'),(7,'thilo@gmail.com','goldbank','5ca1dc71-4538-40f4-b869-331fd0f272be','2018-02-06 05:18:40','Initiation ID'),(8,'thilo@gmail.com','goldbank','abdf24cf-ff7b-43bb-8c92-0385756baf44','2018-02-06 08:44:15','Initiation ID'),(9,'thilo@gmail.com','goldbank','aa0fce2b-fb7e-4452-8b05-a129a5787e1a','2018-02-06 08:46:44','Initiation ID'),(10,'thilo@gmail.com','goldbank','e1b7dc86-e2e5-4705-bf93-d23a623e64c5','2018-02-06 08:47:54','Initiation ID'),(12,'thilo@gmail.com','goldbank','53da6d59-b066-4fda-bd33-604965c24587','2018-02-06 09:03:39','Initiation ID'),(14,'thilo@gmail.com','goldbank','f0cafe88-63f5-4145-8a03-86f45d49812d','2018-02-06 09:12:07','Initiation ID'),(15,'lalaji@wso2.com','goldbank','bbbd790f-ada3-4afb-8110-9e16d9ed26db','2018-02-06 09:15:07','Initiation ID'),(17,'thilo@gmail.com','goldbank','2b2d7eaf-ef90-4407-86e5-f86c8a93d733','2018-02-06 09:18:21','Initiation ID'),(18,'test@test.com','goldbank','22ce6470-151e-472c-b98c-009f3f98cbdf','2018-02-06 09:22:08','Initiation ID'),(20,'test2@test.com','goldbank','637dd540-0242-4cec-badd-0f0b66bdc025','2018-02-06 09:31:51','Initiation ID'),(22,'amalka@wso2.com','goldbank','a596590f-405e-4194-a974-92d22b5d7599','2018-02-06 09:35:20','Initiation ID'),(23,'amalka@wso2.com','goldbank','7e39d12a-1ac9-486d-b8fd-1e38ff858311','2018-02-06 09:35:27','Initiation ID'),(24,'amalka@wso2.com','goldbank','b0b81e5c-c6cc-471b-a638-d3828a22eda1','2018-02-06 09:35:32','Initiation ID'),(25,'amalka@wso2.com','goldbank','3004df45-12a6-42ac-ab84-0f371a71a4fc','2018-02-06 09:35:35','Initiation ID'),(27,'amalka@wso2.com','goldbank','8cf6e43b-f6df-44c4-9187-c57dd29316eb','2018-02-06 09:36:34','Initiation ID'),(28,'amalka@wso2.com','goldbank','05c9bd29-8070-4536-8296-995a6938635a','2018-02-06 09:36:37','Initiation ID'),(29,'amalka@wso2.com','goldbank','6c9b2dc5-3ff6-4947-bf71-f2964a6407cf','2018-02-06 09:38:09','Initiation ID'),(30,'test2@test.com','goldbank','d38e8855-018d-4240-9bd2-2006852f0175','2018-02-06 09:41:22','Initiation ID'),(31,'thilo@gmail.com','goldbank','2564a940-1917-4a51-bb54-aeaf3cc6c9f1','2018-02-06 09:45:20','Initiation ID'),(32,'thilo@gmail.com','goldbank','79b45ea8-350f-43f0-a164-d6ec19485877','2018-02-06 09:48:12','Initiation ID'),(33,'amalka@wso2.com','goldbank','d3e28bc8-c1ce-41e6-9eaa-84a5cb6c1b7c','2018-02-06 10:22:40','Initiation ID'),(34,'amalka@wso2.com','goldbank','7ab9f0b2-1005-4a56-b6d1-d9ad7c30f15c','2018-02-06 10:23:09','Initiation ID'),(35,'amalka@wso2.com','goldbank','f2dfa952-5407-4293-8c2e-e813477d12fb','2018-02-06 10:30:33','Initiation ID'),(37,'amalka@wso2.com','goldbank','1491e11c-4c0d-4a43-a777-c485e69f7753','2018-02-06 10:31:57','Initiation ID'),(38,'thilo@gmail.com','goldbank','aba7db7c-f951-4b42-a2ba-35accef1c3c2','2018-02-06 10:56:18','Initiation ID'),(39,'thilo@gmail.com','goldbank','deab6aa6-3ed0-4e7d-a46a-5f95c6a159ab','2018-02-06 11:06:41','Initiation ID'),(40,'thilo@gmail.com','goldbank','38c1369d-1ad1-483c-9c97-f4db6810a6ad','2018-02-06 11:49:34','Initiation ID'),(41,'thilo@gmail.com','goldbank','a31f0e07-addc-468c-88a0-c9ea2980ce1a','2018-02-06 11:51:24','Initiation ID'),(42,'thilo@gmail.com','goldbank','74be13be-5faf-4c9a-bcd5-3beeffc575b5','2018-02-06 11:51:25','Initiation ID'),(43,'lalaji@wso2.com','goldbank','054ea475-9573-4bd4-9bb6-122ad41de83d','2018-02-06 11:52:56','Initiation ID'),(44,'amalka@wso2.com','goldbank','6db5b632-9e57-4714-a832-530830c1d17b','2018-02-06 13:22:00','Initiation ID'),(46,'amalka@wso2.com','goldbank','e3e889f3-dec9-4e97-8e22-b57a881176d5','2018-02-06 13:23:40','Initiation ID'),(47,'amalka@wso2.com','goldbank','c7b1f490-b499-49e8-8c99-96f7536f69bd','2018-02-06 14:51:38','Initiation ID'),(48,'amalka@wso2.com','goldbank','b09b12d7-e970-431c-92f3-2da898fe3925','2018-02-06 15:09:34','Initiation ID'),(49,'amalka@wso2.com','goldbank','7c983a3a-97dd-4baa-8b46-08363d7583c4','2018-02-06 15:15:52','Initiation ID'),(50,'amalka@wso2.com','goldbank','9cb1f410-210c-4f5e-8b15-8873ac323922','2018-02-06 15:23:13','Initiation ID'),(51,'amalka@wso2.com','goldbank','cec03f62-da2f-4955-b57c-b37e4dfccbc4','2018-02-06 15:27:38','Initiation ID'),(52,'amalka@wso2.com','goldbank','cbffb4ed-94e3-4e1d-9989-65042718ba2f','2018-02-06 16:20:52','Initiation ID'),(53,'amalka@wso2.com','goldbank','190d6ab9-32f0-440b-a782-67994f727c43','2018-02-06 16:27:39','Initiation ID'),(54,'amalka@wso2.com','goldbank','8660b76f-7f01-4793-b90c-38aaf83dbc39','2018-02-06 16:44:06','Initiation ID'),(55,'amalka@wso2.com','goldbank','6f825ba4-f931-4ed6-891f-109517aad67d','2018-02-06 16:53:12','Initiation ID'),(56,'amalka@wso2.com','goldbank','b16be798-3d2e-47d5-b493-21986d8bfebd','2018-02-06 17:08:17','Initiation ID'),(57,'amalka@wso2.com','goldbank','7350b8db-5205-4e5b-b542-f43b2c2565c7','2018-02-06 20:16:23','Initiation ID'),(58,'amalka@wso2.com','goldbank','97036c1f-72af-450f-85d6-d608abb5c16b','2018-02-07 01:56:41','Initiation ID'),(59,'amalka@wso2.com','goldbank','41d570fa-bdbb-41f0-8a70-1e42706e2e66','2018-02-07 02:16:06','Initiation ID'),(60,'thilo@gmail.com','goldbank','b54a7d9e-af27-4973-8cb1-412341b37433','2018-02-07 04:58:06','Initiation ID'),(61,'amalka@wso2.com','goldbank','6e1df3e5-d291-4815-845f-5155807915e1','2018-02-07 07:36:53','Initiation ID'),(62,'amalka@wso2.com','goldbank','3b3d9ba9-ece2-4ca7-8e44-dd306c264ef3','2018-02-07 07:39:33','Initiation ID'),(63,'thilo@gmail.com','goldbank','3dde0fa4-c12e-4688-8d29-840f11065600','2018-02-07 08:14:22','Initiation ID'),(64,'thilo@gmail.com','goldbank','25299edd-1b58-419e-878f-2defc267e101','2018-02-07 08:15:37','Initiation ID'),(65,'amalka@wso2.com','goldbank','6d2ba7bc-1526-4eaa-b5f6-bf816961b5c5','2018-02-07 08:51:20','Initiation ID'),(66,'amalka@wso2.com','goldbank','cfea6840-7006-4c4d-b2e2-019819a6a227','2018-02-07 09:44:55','Initiation ID'),(67,'amalka@wso2.com','goldbank','502ab1c2-40c0-4c1d-b90f-ebaf4f7deded','2018-02-07 10:11:22','Initiation ID'),(68,'sumedhas@wso2.com','goldbank','83cdcf1f-cda4-4605-bf62-ee260d99870c','2018-02-09 08:15:08','Initiation ID'),(69,'sumedhas@wso2.com','goldbank','a71fb402-975e-404a-843d-5712a1022d4c','2018-02-09 08:15:50','Initiation ID'),(70,'sumedhas@wso2.com','goldbank','e9568f8e-9786-4c8c-831e-dbab73729092','2018-02-09 08:15:57','Initiation ID'),(71,'sumedhas@wso2.com','goldbank','2f26e53c-5aec-4679-9313-eba04fd5192a','2018-02-09 08:16:10','Initiation ID'),(72,'sumedhas@wso2.com','goldbank','d71f88a1-432a-4869-9925-c5309c2b0dd7','2018-02-09 08:16:22','Initiation ID'),(74,'sumedhas@wso2.com','goldbank','c2e2aabc-4af6-4285-ad36-a3de208dac06','2018-02-09 08:17:08','Initiation ID'),(75,'sumedhas@wso2.com','goldbank','f4eee5dc-d09f-405e-8696-c60d13bae54d','2018-02-09 08:17:16','Initiation ID'),(76,'sumedhas@wso2.com','goldbank','2ac20eb7-f9e9-4ab2-9751-f24425aee54c','2018-02-09 08:21:04','Initiation ID'),(77,'sumedhas@wso2.com','goldbank','aa089067-a988-4bb9-8eb0-a7175346e9f7','2018-02-09 08:21:09','Initiation ID'),(78,'sumedhas@wso2.com','goldbank','69f92695-4665-4f70-9c97-a67dfb786ee4','2018-02-12 07:11:54','Initiation ID'),(79,'sumedhas@wso2.com','goldbank','f9df742f-2850-4e93-9492-f5b092fcd216','2018-02-12 07:12:04','Initiation ID'),(80,'sumedhas@wso2.com','goldbank','ee74bea8-6042-4224-8966-aac633fda4ba','2018-02-13 07:07:40','Initiation ID'),(81,'sumedhas@wso2.com','goldbank','63047cc4-dd85-4686-a965-c5b36ce7c932','2018-02-13 07:13:10','Initiation ID'),(82,'sumedhas@wso2.com','goldbank','0dd94dc9-69c5-4833-9fce-ea6adc5070d2','2018-02-14 05:24:26','Initiation ID'),(83,'sumedhas@wso2.com','goldbank','1111804e-e427-4c9b-99a5-1f028d7958e7','2018-02-14 05:24:39','Initiation ID'),(84,'sumedhas@wso2.com','goldbank','aa4c2f3b-cec6-4204-b521-b8f7cdc71714','2018-02-15 09:34:01','Initiation ID'),(85,'sumedhas@wso2.com','goldbank','33f446ee-7492-40df-8ebf-cbd4d81f0ce7','2018-02-16 06:36:57','Initiation ID');
/*!40000 ALTER TABLE `INITIATION_IDS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-16 14:18:21
