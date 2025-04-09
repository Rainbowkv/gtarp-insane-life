/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: QBCoreFramework_5297D5
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB-ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apartments`
--

DROP TABLE IF EXISTS `apartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartments`
--

LOCK TABLES `apartments` WRITE;
/*!40000 ALTER TABLE `apartments` DISABLE KEYS */;
INSERT INTO `apartments` VALUES
(1,'apartment41947','apartment1','新市民福利房','XRR77997'),
(2,'apartment54535','apartment4','Tinsel Towers','LTI10935'),
(3,'apartment34653','apartment3','Integrity Way 4653','LYX25359'),
(4,'apartment22951','apartment1','新市民福利房','YBR81778'),
(5,'apartment1297','apartment1','新市民福利房 297','ELD02040'),
(6,'apartment11035','apartment1','新市民福利房 1035','VQR49601'),
(7,'apartment16132','apartment1','新市民福利房 6132','RKL40161'),
(8,'apartment14870','apartment1','新市民福利房 4870','VCA51839'),
(9,'apartment13263','apartment1','新市民福利房 3263','QAR82324'),
(10,'apartment16400','apartment1','新市民福利房 6400','OZH56762'),
(11,'apartment15689','apartment1','新市民福利房 5689','ICW34676'),
(12,'apartment17728','apartment1','新市民福利房 7728','ZLI86272'),
(14,'apartment16809','apartment1','新市民福利房 6809','SLG58971'),
(15,'apartment11177','apartment1','新市民福利房 1177','WZK17535'),
(16,'apartment1509','apartment1','新市民福利房 509','COM31167'),
(19,'apartment13839','apartment1','新市民福利房 3839','QHK11612'),
(20,'apartment15221','apartment1','新市民福利房 5221','VCV61562'),
(21,'apartment11134','apartment1','新市民福利房 1134','DJT70814'),
(22,'apartment14183','apartment1','新市民福利房 4183','RRU27752'),
(24,'apartment11483','apartment1','新市民福利房 1483','KZY58745'),
(25,'apartment19032','apartment1','新市民福利房 9032','CCU80978'),
(26,'apartment11481','apartment1','新市民福利房 1481','GID66771'),
(28,'apartment17222','apartment1','新市民福利房 7222','CDV27651'),
(29,'apartment13670','apartment1','新市民福利房 3670','JJX03484'),
(30,'apartment12667','apartment1','新市民福利房 2667','BDN59221'),
(31,'apartment19635','apartment1','新市民福利房 9635','PZN63640'),
(32,'apartment11316','apartment1','新市民福利房 1316','PAE88769'),
(34,'apartment18604','apartment1','新市民福利房 8604','RHT93297'),
(35,'apartment12016','apartment1','新市民福利房 2016','UXH40238'),
(36,'apartment1453','apartment1','新市民福利房 453','QLU88274'),
(37,'apartment1342','apartment1','新市民福利房 342','MTK83241'),
(38,'apartment13043','apartment1','新市民福利房','WYU58551'),
(39,'apartment14736','apartment1','新市民福利房 4736','UUU52761'),
(40,'apartment15103','apartment1','新市民福利房 5103','IMN66507'),
(41,'apartment1490','apartment1','新市民福利房 490','YBN39722');
/*!40000 ALTER TABLE `apartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banSys_security`
--

DROP TABLE IF EXISTS `banSys_security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `banSys_security` (
  `identifier` varchar(100) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `lastOffense` int(11) NOT NULL DEFAULT 0,
  `warnings` text NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banSys_security`
--

LOCK TABLES `banSys_security` WRITE;
/*!40000 ALTER TABLE `banSys_security` DISABLE KEYS */;
/*!40000 ALTER TABLE `banSys_security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ban_system`
--

DROP TABLE IF EXISTS `ban_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ban_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ban_id` varchar(12) NOT NULL,
  `identifiers` text NOT NULL,
  `target_name` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_identifier` varchar(100) NOT NULL,
  `ban_date` timestamp NULL DEFAULT current_timestamp(),
  `unban_date` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `duration` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban_system`
--

LOCK TABLES `ban_system` WRITE;
/*!40000 ALTER TABLE `ban_system` DISABLE KEYS */;
INSERT INTO `ban_system` VALUES
(1,'1FJ-2B5-ZWX','[\"license:73d405d75d123b100bb91af1e2a71002ea30cf43\",\"license2:4bc41e49126c6ede52cb26bf6b807866ad8845e2\",\"ip:223.74.0.161\"]','小 丑','调戏我','842122356','license:7be1a5d5107a0f8aa4b254ae6379f999a57357a3','2025-03-18 15:55:20','2025-03-18 16:55:20',0,'1h'),
(2,'B53-F0I-WN2','[\"license:1e839bec02ccd946ae235d79d54c7dc0adc653e7\",\"xbl:2535426120829072\",\"live:1055518512178014\",\"fivem:14445658\",\"license2:7a8f5336d2343912281ea02326e342ccd1863761\",\"ip:16.162.172.95\"]','布莱恩特 约翰','测试','凡少','license:1e839bec02ccd946ae235d79d54c7dc0adc653e7','2025-03-28 05:42:54','2025-03-28 06:42:54',0,'1h'),
(3,'4R2-28Y-SNE','[\"license:1d66e7c15b365459c984da5e633f19963a296d90\",\"xbl:2535457122245388\",\"live:844431553316974\",\"license2:1fef0b7a5a3c84346a48006bbe13fb12bbafe247\",\"ip:117.61.108.186\"]','亚力 雷吉','服务器未开放，见q群','rainbowkv','license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','2025-04-02 10:40:03','2025-04-02 19:40:03',0,'1h');
/*!40000 ALTER TABLE `ban_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_accounts`
--

DROP TABLE IF EXISTS `bank_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `account_balance` int(11) NOT NULL DEFAULT 0,
  `account_type` enum('shared','job','gang') NOT NULL,
  `users` longtext DEFAULT _utf8mb4'[]',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `account_name` (`account_name`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_accounts`
--

LOCK TABLES `bank_accounts` WRITE;
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
INSERT INTO `bank_accounts` VALUES
(1,NULL,'mechanic',0,'job','[]'),
(2,NULL,'ambulance',64000,'job','[]'),
(3,NULL,'judge',0,'job','[]'),
(4,NULL,'lawyer',0,'job','[]'),
(5,NULL,'bennys',0,'job','[]'),
(6,NULL,'mechanic2',0,'job','[]'),
(7,NULL,'unemployed',0,'job','[]'),
(8,NULL,'garbage',0,'job','[]'),
(9,NULL,'taxi',0,'job','[]'),
(10,NULL,'hotdog',0,'job','[]'),
(11,NULL,'cardealer',0,'job','[]'),
(12,NULL,'vineyard',0,'job','[]'),
(13,NULL,'police',0,'job','[]'),
(14,NULL,'realestate',0,'job','[]'),
(15,NULL,'bus',0,'job','[]'),
(16,NULL,'reporter',0,'job','[]'),
(17,NULL,'beeker',0,'job','[]'),
(18,NULL,'tow',0,'job','[]'),
(19,NULL,'mechanic3',0,'job','[]'),
(20,NULL,'trucker',0,'job','[]'),
(21,NULL,'lostmc',0,'gang','[]');
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_statements`
--

DROP TABLE IF EXISTS `bank_statements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bank_statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT 'checking',
  `amount` int(11) DEFAULT NULL,
  `reason` varchar(50) DEFAULT NULL,
  `statement_type` enum('deposit','withdraw') DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_statements`
--

LOCK TABLES `bank_statements` WRITE;
/*!40000 ALTER TABLE `bank_statements` DISABLE KEYS */;
INSERT INTO `bank_statements` VALUES
(1,'XRR77997','checking',5000,'Bank Withdrawal','withdraw','2024-12-07 14:54:21'),
(2,'XRR77997','checking',50000,'1','deposit','2024-12-07 15:25:38'),
(3,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-10 09:34:57'),
(4,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-10 09:50:02'),
(5,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-10 10:03:08'),
(6,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-10 10:10:32'),
(7,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-10 10:19:30'),
(8,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-10 11:37:48'),
(9,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-10 11:38:45'),
(10,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-10 11:56:04'),
(11,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-10 12:10:18'),
(12,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-10 13:52:51'),
(13,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-11 04:59:36'),
(14,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-11 13:34:58'),
(15,'LTI10935','checking',800000,'Bank Deposit','deposit','2024-12-11 16:09:47'),
(16,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-13 15:10:28'),
(17,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-14 11:22:12'),
(18,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-14 11:52:27'),
(19,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-14 14:34:19'),
(20,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-14 14:49:41'),
(21,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-14 14:53:38'),
(22,'XRR77997','checking',5000,'Bank Withdrawal','withdraw','2024-12-15 10:34:05'),
(23,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-18 07:05:50'),
(24,'LTI10935','checking',10000,'Bank Withdrawal','withdraw','2024-12-18 16:54:10'),
(25,'LTI10935','checking',50000,'Bank Withdrawal','withdraw','2024-12-18 16:54:19'),
(26,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-20 04:44:25'),
(27,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-25 05:50:12'),
(28,'XRR77997','checking',300000,'Bank Deposit','deposit','2024-12-25 12:52:42'),
(29,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-27 09:26:04'),
(30,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-27 11:07:51'),
(31,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-27 11:11:53'),
(32,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-30 04:47:33'),
(33,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-30 04:47:34'),
(34,NULL,'ambulance',2000,'Player treatment','deposit','2024-12-30 06:05:26'),
(35,'YBR81778','checking',1000,'Bank Withdrawal','withdraw','2025-01-01 04:32:40'),
(36,'YBR81778','checking',2000,'Bank Withdrawal','withdraw','2025-01-01 06:22:51'),
(37,NULL,'ambulance',500,'Player treatment','deposit','2025-01-07 11:44:49'),
(38,NULL,'ambulance',500,'Player treatment','deposit','2025-01-08 04:52:12'),
(39,NULL,'ambulance',500,'Player treatment','deposit','2025-01-08 04:58:50'),
(40,NULL,'ambulance',500,'Player treatment','deposit','2025-01-08 10:35:03'),
(41,'YBR81778','checking',1000,'取款','withdraw','2025-01-09 11:15:09'),
(42,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 11:26:05'),
(43,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 12:37:35'),
(44,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 12:54:33'),
(45,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 13:44:19'),
(46,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 13:44:51'),
(47,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 13:46:26'),
(48,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 14:42:59'),
(49,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 14:43:22'),
(50,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 14:45:53'),
(51,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 14:46:15'),
(52,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 15:00:21'),
(53,NULL,'ambulance',500,'Player treatment','deposit','2025-01-09 15:15:10'),
(54,'YBR81778','checking',1000,'取款','withdraw','2025-01-10 09:53:21'),
(55,NULL,'ambulance',500,'Player treatment','deposit','2025-01-10 11:02:12'),
(56,NULL,'ambulance',500,'Player treatment','deposit','2025-01-12 12:00:38'),
(57,'XRR77997','checking',100000,'存款','deposit','2025-01-12 13:14:16'),
(58,'YBR81778','checking',500,'存款','deposit','2025-01-13 09:24:28'),
(59,NULL,'ambulance',500,'Player treatment','deposit','2025-01-13 09:45:07'),
(60,NULL,'ambulance',500,'Player treatment','deposit','2025-01-13 11:55:24');
/*!40000 ALTER TABLE `bank_statements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer',
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `discord` (`discord`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `black_money_transactions`
--

DROP TABLE IF EXISTS `black_money_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `black_money_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trader` varchar(100) DEFAULT NULL,
  `seller_name` varchar(100) DEFAULT NULL,
  `citizen_id` varchar(100) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `black_money_transactions`
--

LOCK TABLES `black_money_transactions` WRITE;
/*!40000 ALTER TABLE `black_money_transactions` DISABLE KEYS */;
INSERT INTO `black_money_transactions` VALUES
(1,'Auto Parts Trader','莫同学','YBR81778','可卡因砖',990,3,'2025-04-05 22:05:47'),
(2,'Auto Parts Trader','mada','IMN66507','可卡因砖',990,3,'2025-04-05 22:05:51'),
(3,'Auto Parts Trader','杰克','JJX03484','可卡因砖',330,1,'2025-04-05 22:05:54'),
(4,'Auto Parts Trader','LENOVO-PC','UUU52761','可卡因砖',660,2,'2025-04-05 22:05:56'),
(5,'Auto Parts Trader','吉贝','UXH40238','可卡因砖',990,3,'2025-04-05 22:06:12'),
(6,'Auto Parts Trader','LENOVO-PC','UUU52761','冰毒',1150,5,'2025-04-05 23:10:35'),
(7,'Auto Parts Trader','HUAWEI','QLU88274','冰毒',2300,10,'2025-04-05 23:10:41'),
(8,'Auto Parts Trader','司肃','YBN39722','冰毒',1150,5,'2025-04-05 23:10:48'),
(9,'Auto Parts Trader','mada','IMN66507','冰毒',2300,10,'2025-04-05 23:11:05'),
(10,'Auto Parts Trader','HUAWEI','QLU88274','可卡因砖',990,3,'2025-04-05 23:22:01'),
(11,'Auto Parts Trader','mada','IMN66507','可卡因砖',660,2,'2025-04-05 23:22:20'),
(12,'Auto Parts Trader','mada','IMN66507','冰毒',1610,7,'2025-04-06 22:58:08'),
(13,'Auto Parts Trader','mada','IMN66507','冰毒',17500,50,'2025-04-07 00:07:27'),
(14,'Auto Parts Trader','杰克','JJX03484','可卡因砖',800,2,'2025-04-07 13:04:15'),
(15,'Auto Parts Trader','杰克','JJX03484','可卡因砖',1600,4,'2025-04-07 14:14:07'),
(16,'Auto Parts Trader','mada','IMN66507','可卡因砖',1600,4,'2025-04-07 14:14:09'),
(17,'Auto Parts Trader','莫同学','YBR81778','可卡因砖',1600,4,'2025-04-07 14:14:11'),
(18,'Auto Parts Trader','杰克','JJX03484','可卡因砖',800,2,'2025-04-08 23:41:26'),
(19,'Auto Parts Trader','杰克','JJX03484','冰毒',4200,12,'2025-04-08 23:41:36');
/*!40000 ALTER TABLE `black_money_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crypto`
--

DROP TABLE IF EXISTS `crypto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `crypto` (
  `crypto` varchar(50) NOT NULL DEFAULT 'qbit',
  `worth` int(11) NOT NULL DEFAULT 0,
  `history` text DEFAULT NULL,
  PRIMARY KEY (`crypto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crypto`
--

LOCK TABLES `crypto` WRITE;
/*!40000 ALTER TABLE `crypto` DISABLE KEYS */;
INSERT INTO `crypto` VALUES
('qbit',1255,'[{\"PreviousWorth\":1250,\"NewWorth\":1250},{\"PreviousWorth\":1250,\"NewWorth\":1250},{\"PreviousWorth\":1250,\"NewWorth\":1250},{\"NewWorth\":1255,\"PreviousWorth\":1250}]');
/*!40000 ALTER TABLE `crypto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crypto_transactions`
--

DROP TABLE IF EXISTS `crypto_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `crypto_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crypto_transactions`
--

LOCK TABLES `crypto_transactions` WRITE;
/*!40000 ALTER TABLE `crypto_transactions` DISABLE KEYS */;
INSERT INTO `crypto_transactions` VALUES
(1,'QHK11612','Credit','你已购买 1 Qbit!','2025-03-17 14:09:15'),
(2,'QHK11612','Debit','你已出售 1 Qbit!','2025-03-17 14:09:59'),
(3,'QHK11612','Credit','你已购买 3 Qbit!','2025-03-17 14:22:30'),
(4,'QHK11612','Credit','你已购买 1 Qbit!','2025-03-17 14:26:02'),
(5,'QHK11612','Debit','你已出售 1 Qbit!','2025-03-18 15:49:28'),
(6,'QHK11612','Debit','你已出售 1 Qbit!','2025-03-22 13:52:13'),
(7,'JJX03484','Credit','你已购买 1 Qbit!','2025-03-24 09:55:29'),
(8,'JJX03484','Debit','你已出售 1 Qbit!','2025-03-27 11:35:03'),
(9,'QHK11612','Debit','你已出售 2 Qbit!','2025-03-27 17:45:09');
/*!40000 ALTER TABLE `crypto_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealers`
--

DROP TABLE IF EXISTS `dealers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `dealers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealers`
--

LOCK TABLES `dealers` WRITE;
/*!40000 ALTER TABLE `dealers` DISABLE KEYS */;
INSERT INTO `dealers` VALUES
(1,'7260','{\"y\":-658.10107421875,\"x\":-1399.3714599609376,\"z\":28.6732177734375}','{\"min\":0,\"max\":24}','XRR77997');
/*!40000 ALTER TABLE `dealers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graffitis`
--

DROP TABLE IF EXISTS `graffitis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `graffitis` (
  `key` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text DEFAULT NULL,
  `model` text DEFAULT NULL,
  `coords` varchar(150) DEFAULT NULL,
  `rotation` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graffitis`
--

LOCK TABLES `graffitis` WRITE;
/*!40000 ALTER TABLE `graffitis` DISABLE KEYS */;
INSERT INTO `graffitis` VALUES
(1,'XRR77997','1172285959','{\"x\":976.8800048828125,\"y\":-133.3000030517578,\"z\":75.29000091552735}','{\"x\":0.0,\"y\":0.0,\"z\":-120.58999633789063}');
/*!40000 ALTER TABLE `graffitis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `house_plants`
--

DROP TABLE IF EXISTS `house_plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `house_plants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building` varchar(50) DEFAULT NULL,
  `stage` int(11) DEFAULT 1,
  `sort` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `food` int(11) DEFAULT 100,
  `health` int(11) DEFAULT 100,
  `progress` int(11) DEFAULT 0,
  `coords` text DEFAULT NULL,
  `plantid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building` (`building`),
  KEY `plantid` (`plantid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `house_plants`
--

LOCK TABLES `house_plants` WRITE;
/*!40000 ALTER TABLE `house_plants` DISABLE KEYS */;
/*!40000 ALTER TABLE `house_plants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houselocations`
--

DROP TABLE IF EXISTS `houselocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `houselocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `owned` tinyint(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tier` tinyint(4) DEFAULT NULL,
  `garage` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houselocations`
--

LOCK TABLES `houselocations` WRITE;
/*!40000 ALTER TABLE `houselocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `houselocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `answers` longtext NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `date_submitted` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_reviewed` timestamp NULL DEFAULT NULL,
  `reviewer_id` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job` (`job`),
  KEY `citizenid` (`citizenid`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applications`
--

LOCK TABLES `job_applications` WRITE;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
INSERT INTO `job_applications` VALUES
(11,'JJX03484','police','亚力 雷吉','[{\"answer\":\"好\",\"question\":\"1个词（最多2个）形容你最突出的性格特点。\"},{\"answer\":\"好\",\"question\":\"为什么您想成为LSPD的一员？您如何理解LSPD的职责\"},{\"answer\":\"好\",\"question\":\"您经常与人产生冲突吗？如果与人冲突，您一般如何解决？\"},{\"answer\":\"好\",\"question\":\"您如何看待有案底的人员？如何看待帮派分子？\"},{\"answer\":\"好\",\"question\":\"您如何评价自己在ravens的这段生活，符合您预期吗？您期望什么样的生活？\"},{\"answer\":\"好\",\"question\":\"您是一位有耐心的人吗？\"},{\"answer\":\"(520) 099-4498\",\"question\":\"IC号码和OOC联系方式:\"}]','rejected','2025-04-08 16:25:05','2025-04-08 22:04:10','XRR77997',''),
(12,'JJX03484','ambulance','亚力 雷吉','[{\"answer\":\"好\",\"question\":\"1个词（最多2个）形容你最突出的性格特点。\"},{\"answer\":\"好\",\"question\":\"为什么您想成为Ravens医疗急救的一员？您如何理解急救人员的职责\"},{\"answer\":\"好\",\"question\":\"您如何处理高压环境下的突发情况？\"},{\"answer\":\"好\",\"question\":\"您有过急救经验吗？如何评价自己的急救技能？\"},{\"answer\":\"好\",\"question\":\"您如何看待患者的不同需求？如何确保为每位患者提供最佳的护理？\"},{\"answer\":\"好\",\"question\":\"您认为团队合作在医疗急救中有多重要？如何与团队成员有效协作？\"},{\"answer\":\"(520) 099-4498\",\"question\":\"IC号码和OOC联系方式:\"}]','pending','2025-04-08 16:25:33',NULL,NULL,NULL),
(13,'JJX03484','mechanic','亚力 雷吉','[{\"answer\":\"好\",\"question\":\"1个词（最多2个）形容你最突出的性格特点。\"},{\"answer\":\"好\",\"question\":\"为什么您想成为Ravens市技工的一员？您如何理解技工的职责\"},{\"answer\":\"好\",\"question\":\"您有过哪些车辆维修经验？能否分享一项最具挑战性的维修案例？\"},{\"answer\":\"好\",\"question\":\"您如何确保车辆维修质量和效率？\"},{\"answer\":\"好\",\"question\":\"您认为与客户的沟通在工作中有多重要？如何处理客户的不同需求和问题？\"},{\"answer\":\"好\",\"question\":\"您如何看待技术进步和新工具的应用？您是否愿意不断学习新技能？\"},{\"answer\":\"(520) 099-4498\",\"question\":\"IC号码和OOC联系方式:\"}]','pending','2025-04-08 16:25:53',NULL,NULL,NULL),
(14,'IMN66507','police','马卡斯 保罗','[{\"answer\":\"正义。\",\"question\":\"1个词（最多2个）形容你最突出的性格特点。\"},{\"answer\":\"我从小就想当一名正义的LSPD警员保护市民安全。\",\"question\":\"为什么您想成为LSPD的一员？您如何理解LSPD的职责\"},{\"answer\":\"我不经常和人产生冲突，但如果产生我会合理解决。\",\"question\":\"您经常与人产生冲突吗？如果与人冲突，您一般如何解决？\"},{\"answer\":\"两个字很坏\",\"question\":\"您如何看待有案底的人员？如何看待帮派分子？\"},{\"answer\":\"在ravens的这个国家我感觉到了这里的激情还有老末的指导\",\"question\":\"您如何评价自己在ravens的这段生活，符合您预期吗？您期望什么样的生活？\"},{\"answer\":\"是的\",\"question\":\"您是一位有耐心的人吗？\"},{\"answer\":\"IC6020877537,OOC企鹅615509698\",\"question\":\"IC号码和OOC联系方式:\"}]','accepted','2025-04-08 16:28:06','2025-04-08 16:55:22','XRR77997','');
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lapraces`
--

DROP TABLE IF EXISTS `lapraces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lapraces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raceid` (`raceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lapraces`
--

LOCK TABLES `lapraces` WRITE;
/*!40000 ALTER TABLE `lapraces` DISABLE KEYS */;
/*!40000 ALTER TABLE `lapraces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lunar_fishing`
--

DROP TABLE IF EXISTS `lunar_fishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `lunar_fishing` (
  `user_identifier` varchar(50) NOT NULL,
  `xp` float NOT NULL,
  PRIMARY KEY (`user_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lunar_fishing`
--

LOCK TABLES `lunar_fishing` WRITE;
/*!40000 ALTER TABLE `lunar_fishing` DISABLE KEYS */;
INSERT INTO `lunar_fishing` VALUES
('BDN59221',1),
('CCU80978',1),
('CDV27651',1),
('CIZ48115',1),
('COM31167',1),
('DJT70814',1),
('ELD02040',1),
('GHT37439',1),
('GID66771',1),
('ICW34676',1),
('IMN66507',1.45),
('INS15918',1),
('JJX03484',1.2),
('KZY58745',1),
('LTI10935',1.2),
('LYX25359',1),
('MTK83241',1),
('OZH56762',1),
('PAE88769',1),
('PZN63640',1),
('QAR82324',1),
('QHK11612',1),
('QLU88274',1),
('RHT93297',1),
('RKL40161',1),
('RRU27752',1),
('SLG58971',1),
('TNW15994',1),
('UUU52761',1.15),
('UXH40238',1),
('VCA51839',1),
('VCV61562',1.45),
('VQR49601',1),
('WCR75409',1),
('WYU58551',1),
('WZK17535',1),
('XRR77997',1.45),
('YBN39722',1),
('YBR81778',1.05),
('YFP15926',1),
('ZLI86272',1);
/*!40000 ALTER TABLE `lunar_fishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occasion_vehicles`
--

DROP TABLE IF EXISTS `occasion_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `occasion_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `occasionId` (`occasionid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occasion_vehicles`
--

LOCK TABLES `occasion_vehicles` WRITE;
/*!40000 ALTER TABLE `occasion_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `occasion_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_metadata`
--

DROP TABLE IF EXISTS `origen_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_metadata` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `data` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_metadata`
--

LOCK TABLES `origen_metadata` WRITE;
/*!40000 ALTER TABLE `origen_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `origen_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_police_alerts`
--

DROP TABLE IF EXISTS `origen_police_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_police_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `job` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_police_alerts`
--

LOCK TABLES `origen_police_alerts` WRITE;
/*!40000 ALTER TABLE `origen_police_alerts` DISABLE KEYS */;
INSERT INTO `origen_police_alerts` VALUES
(157,404,-1004,'police'),
(158,477,-1014,'police'),
(159,477,-1010,'police'),
(160,484,-1008,'police'),
(161,477,-985,'police'),
(162,477,-985,'police'),
(163,-1468,66,'police'),
(164,-1476,80,'police'),
(165,-1440,31,'police'),
(166,-1445,61,'police'),
(167,-1445,61,'police'),
(168,-1372,203,'police'),
(169,-1559,90,'police'),
(170,-1574,98,'police'),
(171,-1543,113,'police'),
(172,-1565,99,'police'),
(173,-1592,83,'police'),
(174,-1592,83,'police'),
(175,-1592,82,'police'),
(176,-1592,82,'police'),
(177,-1592,83,'police'),
(178,-1593,83,'police'),
(179,-1575,84,'police'),
(180,-1565,106,'police'),
(181,-1381,271,'police'),
(182,-1564,107,'police'),
(183,-1376,265,'police'),
(184,-1567,107,'police'),
(185,-1561,107,'police'),
(186,-1379,271,'police'),
(187,-1560,111,'police'),
(188,-1543,83,'police'),
(189,-1543,82,'police'),
(190,-1545,85,'police'),
(191,461,-1018,'police'),
(192,439,-1003,'police'),
(193,440,-1002,'police'),
(194,439,-1002,'police'),
(195,430,-1001,'police'),
(196,430,-999,'police'),
(197,430,-1001,'police'),
(198,424,-1027,'police'),
(199,401,-1000,'police'),
(200,405,-1022,'police'),
(201,408,-1000,'police'),
(202,367,-1038,'police'),
(203,1997,2890,'police'),
(204,453,-1000,'police'),
(205,406,-1023,'police'),
(206,451,-1014,'police'),
(207,432,-1022,'police'),
(208,23,-1107,'police'),
(209,23,-1107,'police'),
(210,-1637,-157,'police'),
(211,-1323,-41,'police'),
(212,-1140,-158,'police'),
(213,-1122,-156,'police'),
(214,-1141,-157,'police'),
(215,-1150,-154,'police'),
(216,215,-860,'police'),
(217,215,-860,'police'),
(218,215,-860,'police'),
(219,-1584,101,'police'),
(220,-1566,152,'police'),
(221,-1584,134,'police'),
(222,395,-1023,'police'),
(223,383,-1062,'police'),
(224,398,-1067,'police'),
(225,398,-1056,'police'),
(226,398,-1056,'police'),
(227,-53,-749,'police'),
(228,-48,-751,'police'),
(229,20,-858,'police'),
(230,364,-1039,'police'),
(231,462,-1021,'police'),
(232,472,-1010,'police'),
(233,461,-1019,'police'),
(234,444,-995,'police'),
(235,441,-1005,'police'),
(236,438,-1016,'police'),
(237,42,-1443,'police'),
(238,2561,5153,'police'),
(239,-436,-942,'police'),
(240,223,-828,'police'),
(241,391,316,'police'),
(242,2338,3197,'police'),
(243,411,-1011,'police'),
(244,462,-993,'police'),
(245,418,-965,'police'),
(246,387,-903,'police'),
(247,289,-517,'police'),
(248,-246,-1306,'police'),
(249,-357,-927,'police'),
(250,390,-760,'police'),
(251,-659,-263,'police'),
(252,-648,-232,'police'),
(253,-501,-777,'police'),
(254,471,-987,'police'),
(255,-670,-229,'police'),
(256,258,2589,'ambulance');
/*!40000 ALTER TABLE `origen_police_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_police_ankle`
--

DROP TABLE IF EXISTS `origen_police_ankle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_police_ankle` (
  `citizenid` varchar(50) NOT NULL,
  `policeOwner` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `lastShock` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`citizenid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_police_ankle`
--

LOCK TABLES `origen_police_ankle` WRITE;
/*!40000 ALTER TABLE `origen_police_ankle` DISABLE KEYS */;
INSERT INTO `origen_police_ankle` VALUES
('YBN39722','JJX03484','2025-04-05 10:48:27',NULL);
/*!40000 ALTER TABLE `origen_police_ankle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_police_bills`
--

DROP TABLE IF EXISTS `origen_police_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_police_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `concepts` text DEFAULT '[]',
  `price` int(11) DEFAULT 0,
  `job` varchar(50) DEFAULT '',
  `author` varchar(255) DEFAULT '',
  `payed` int(1) DEFAULT 0,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `months` int(11) DEFAULT 0,
  `reportid` int(11) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_police_bills`
--

LOCK TABLES `origen_police_bills` WRITE;
/*!40000 ALTER TABLE `origen_police_bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `origen_police_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_police_clocks`
--

DROP TABLE IF EXISTS `origen_police_clocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_police_clocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(60) NOT NULL,
  `name` varchar(50) NOT NULL,
  `clockin` varchar(50) NOT NULL,
  `clockout` varchar(50) NOT NULL,
  `minutes` int(11) NOT NULL DEFAULT 0,
  `job` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_police_clocks`
--

LOCK TABLES `origen_police_clocks` WRITE;
/*!40000 ALTER TABLE `origen_police_clocks` DISABLE KEYS */;
INSERT INTO `origen_police_clocks` VALUES
(1,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 16:41','03/04/2025 - 16:43',2,'police'),
(2,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 16:48','03/04/2025 - 16:51',3,'police'),
(3,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 16:48','03/04/2025 - 16:51',3,'police'),
(4,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 16:55','03/04/2025 - 17:15',20,'police'),
(5,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 16:55','03/04/2025 - 17:15',20,'police'),
(6,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 17:14','03/04/2025 - 17:20',6,'police'),
(7,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 17:14','03/04/2025 - 17:20',6,'police'),
(8,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 17:15','03/04/2025 - 17:21',7,'police'),
(9,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 17:15','03/04/2025 - 17:21',7,'police'),
(10,'YBR81778','马克 康格里 (0000)','03/04/2025 - 17:10','03/04/2025 - 17:31',21,'police'),
(11,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 17:20','03/04/2025 - 17:47',28,'police'),
(12,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 17:52','03/04/2025 - 18:01',9,'police'),
(13,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 17:52','03/04/2025 - 18:01',9,'police'),
(14,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 18:01','03/04/2025 - 18:04',4,'police'),
(15,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 17:21','03/04/2025 - 18:42',82,'police'),
(16,'YBR81778','马克 康格里 (0000)','03/04/2025 - 17:34','03/04/2025 - 18:45',71,'police'),
(17,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 18:35','03/04/2025 - 18:49',15,'police'),
(18,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 18:35','03/04/2025 - 18:49',15,'police'),
(19,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 18:49','03/04/2025 - 18:53',4,'police'),
(20,'VQR49601','阿伦 勒布朗 (0000)','03/04/2025 - 18:53','03/04/2025 - 19:01',9,'police'),
(21,'VQR49601','阿伦 勒布朗 (0000)','03/04/2025 - 19:11','03/04/2025 - 19:14',3,'police'),
(22,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 19:12','03/04/2025 - 19:15',4,'police'),
(23,'BDN59221','卡尔 马布里 (0000)','03/04/2025 - 19:12','03/04/2025 - 19:17',5,'police'),
(24,'BDN59221','卡尔 马布里 (0000)','03/04/2025 - 19:12','03/04/2025 - 19:17',5,'police'),
(25,'VQR49601','阿伦 勒布朗 (0000)','03/04/2025 - 19:16','03/04/2025 - 19:27',12,'police'),
(26,'VQR49601','阿伦 勒布朗 (0000)','03/04/2025 - 19:29','03/04/2025 - 19:44',16,'police'),
(27,'CDV27651','托尼 乔治 (0000)','03/04/2025 - 19:35','03/04/2025 - 20:05',30,'ambulance'),
(28,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 19:17','03/04/2025 - 20:05',49,'police'),
(29,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 19:16','03/04/2025 - 20:26',71,'police'),
(30,'JJX03484','亚力 雷吉 (0000)','03/04/2025 - 20:33','03/04/2025 - 20:42',9,'police'),
(31,'BDN59221','卡尔 马布里 (0000)','03/04/2025 - 19:17','03/04/2025 - 20:46',90,'police'),
(32,'VQR49601','阿伦 勒布朗 (0000)','03/04/2025 - 20:12','03/04/2025 - 21:04',53,'police'),
(33,'QHK11612','小 丑 (0000)','03/04/2025 - 19:11','03/04/2025 - 22:03',172,'police'),
(34,'VQR49601','阿伦 勒布朗 (0000)','03/04/2025 - 22:33','03/04/2025 - 23:05',32,'ambulance'),
(35,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 22:31','03/04/2025 - 23:05',34,'ambulance'),
(36,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 23:06','03/04/2025 - 23:24',18,'ambulance'),
(37,'VQR49601','阿伦 勒布朗 (0000)','03/04/2025 - 23:26','04/04/2025 - 00:22',56,'ambulance'),
(38,'XRR77997','谢尔比 邦德 (0000)','03/04/2025 - 23:26','04/04/2025 - 00:22',56,'ambulance'),
(39,'XRR77997','谢尔比 邦德 (0000)','04/04/2025 - 00:34','04/04/2025 - 00:51',18,'ambulance'),
(40,'VQR49601','阿伦 勒布朗 (0000)','04/04/2025 - 00:40','04/04/2025 - 00:52',12,'ambulance'),
(41,'BDN59221','卡尔 马布里 (0000)','04/04/2025 - 11:02','04/04/2025 - 11:18',16,'police'),
(42,'YBR81778','马克 康格里 (0000)','04/04/2025 - 12:43','04/04/2025 - 12:46',4,'police'),
(43,'XRR77997','谢尔比 邦德 (0000)','04/04/2025 - 12:52','04/04/2025 - 13:02',11,'police'),
(44,'YBR81778','马克 康格里 (0000)','04/04/2025 - 12:46','04/04/2025 - 13:25',39,'police'),
(45,'BDN59221','卡尔 马布里 (0000)','04/04/2025 - 11:20','04/04/2025 - 13:31',131,'police'),
(46,'XRR77997','谢尔比 邦德 (0000)','04/04/2025 - 13:46','04/04/2025 - 13:55',9,'police'),
(47,'XRR77997','谢尔比 邦德 (0000)','04/04/2025 - 15:29','04/04/2025 - 15:31',2,'police'),
(48,'QHK11612','小 丑 (0000)','04/04/2025 - 11:27','04/04/2025 - 18:56',449,'police'),
(49,'QHK11612','小 丑 (0000)','04/04/2025 - 19:00','04/04/2025 - 19:03',3,'police'),
(50,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 19:17','04/04/2025 - 19:22',6,'police'),
(51,'YBR81778','马克 康格里 (0000)','04/04/2025 - 13:26','04/04/2025 - 20:14',408,'police'),
(52,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 19:49','04/04/2025 - 20:35',46,'police'),
(53,'YBR81778','马克 康格里 (0000)','04/04/2025 - 20:18','04/04/2025 - 20:39',21,'police'),
(54,'QHK11612','小 丑 (0000)','04/04/2025 - 19:05','04/04/2025 - 20:42',98,'police'),
(55,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 20:37','04/04/2025 - 20:49',12,'police'),
(56,'XRR77997','谢尔比 邦德 (0000)','04/04/2025 - 20:19','04/04/2025 - 20:55',36,'police'),
(57,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 20:50','04/04/2025 - 20:56',6,'police'),
(58,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 20:57','04/04/2025 - 20:58',2,'police'),
(59,'YBR81778','马克 康格里 (0000)','04/04/2025 - 20:40','04/04/2025 - 21:03',23,'police'),
(60,'UXH40238','约瑟夫 麦克 (0000)','04/04/2025 - 21:02','04/04/2025 - 21:09',8,'police'),
(61,'QHK11612','小 丑 (0000)','04/04/2025 - 22:21','04/04/2025 - 22:23',2,'police'),
(62,'XRR77997','谢尔比 邦德 (0000)','04/04/2025 - 20:55','04/04/2025 - 22:38',103,'police'),
(63,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 22:05','04/04/2025 - 22:50',45,'police'),
(64,'WYU58551','摩根 杰克 (0000)','04/04/2025 - 22:55','04/04/2025 - 22:59',4,'police'),
(65,'XRR77997','谢尔比 邦德 (0000)','04/04/2025 - 22:57','04/04/2025 - 23:02',5,'police'),
(66,'WYU58551','摩根 杰克 (0000)','04/04/2025 - 23:03','04/04/2025 - 23:05',2,'police'),
(67,'WYU58551','摩根 杰克 (0000)','04/04/2025 - 23:12','04/04/2025 - 23:14',3,'police'),
(68,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 22:52','04/04/2025 - 23:25',34,'police'),
(69,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 22:52','04/04/2025 - 23:25',34,'police'),
(70,'QHK11612','小 丑 (0000)','04/04/2025 - 22:25','04/04/2025 - 23:35',71,'police'),
(71,'VCV61562','布莱恩特 约翰 (0000)','04/04/2025 - 23:20','04/04/2025 - 23:36',17,'police'),
(72,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 23:29','04/04/2025 - 23:48',19,'police'),
(73,'UXH40238','约瑟夫 麦克 (0000)','04/04/2025 - 22:09','04/04/2025 - 23:48',99,'police'),
(74,'YBR81778','马克 康格里 (0000)','04/04/2025 - 21:11','04/04/2025 - 23:49',158,'police'),
(75,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 23:49','04/04/2025 - 23:51',3,'police'),
(76,'YBR81778','马克 康格里 (0000)','04/04/2025 - 23:51','05/04/2025 - 00:28',38,'police'),
(77,'UXH40238','约瑟夫 麦克 (0000)','04/04/2025 - 23:49','05/04/2025 - 00:46',57,'police'),
(78,'JJX03484','亚力 雷吉 (0000)','04/04/2025 - 23:53','05/04/2025 - 00:48',56,'police'),
(79,'VCV61562','布莱恩特 约翰 (0000)','04/04/2025 - 23:38','05/04/2025 - 00:53',75,'police'),
(80,'UXH40238','约瑟夫 麦克 (0000)','05/04/2025 - 00:48','05/04/2025 - 01:06',18,'police'),
(81,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 01:05','05/04/2025 - 01:09',4,'police'),
(82,'JJX03484','亚力 雷吉 (0000)','05/04/2025 - 00:59','05/04/2025 - 01:36',38,'police'),
(83,'XRR77997','谢尔比 邦德 (0000)','05/04/2025 - 01:39','05/04/2025 - 01:42',3,'police'),
(84,'UXH40238','约瑟夫 麦克 (0000)','05/04/2025 - 01:08','05/04/2025 - 02:21',73,'police'),
(85,'UXH40238','约瑟夫 麦克 (0000)','05/04/2025 - 02:23','05/04/2025 - 02:31',9,'police'),
(86,'JJX03484','亚力 雷吉 (0000)','05/04/2025 - 01:38','05/04/2025 - 02:51',74,'police'),
(87,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 01:09','05/04/2025 - 02:52',103,'police'),
(88,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 02:52','05/04/2025 - 02:53',2,'police'),
(89,'UXH40238','约瑟夫 麦克 (0000)','05/04/2025 - 02:33','05/04/2025 - 02:53',20,'police'),
(90,'YBR81778','马克 康格里 (0000)','05/04/2025 - 00:29','05/04/2025 - 04:05',216,'police'),
(91,'XRR77997','谢尔比 邦德 (0000)','05/04/2025 - 04:30','05/04/2025 - 04:46',16,'police'),
(92,'XRR77997','谢尔比 邦德 (0000)','05/04/2025 - 04:47','05/04/2025 - 04:53',6,'police'),
(93,'XRR77997','谢尔比 邦德 (0000)','05/04/2025 - 04:54','05/04/2025 - 04:58',5,'police'),
(94,'XRR77997','谢尔比 邦德 (0000)','05/04/2025 - 05:17','05/04/2025 - 07:17',120,'ambulance'),
(95,'XRR77997','谢尔比 邦德 (0000)','05/04/2025 - 08:26','05/04/2025 - 08:32',7,'police'),
(96,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 12:25','05/04/2025 - 12:43',19,'police'),
(97,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 12:25','05/04/2025 - 12:43',19,'police'),
(98,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 12:43','05/04/2025 - 13:01',18,'police'),
(99,'YBR81778','马克 康格里 (0000)','05/04/2025 - 13:08','05/04/2025 - 13:34',26,'police'),
(100,'YBR81778','马克 康格里 (0000)','05/04/2025 - 13:36','05/04/2025 - 13:40',5,'police'),
(101,'YBR81778','马克 康格里 (0000)','05/04/2025 - 13:43','05/04/2025 - 14:22',39,'police'),
(102,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 13:47','05/04/2025 - 14:25',38,'police'),
(103,'JJX03484','亚力 雷吉 (0000)','05/04/2025 - 13:22','05/04/2025 - 14:36',74,'police'),
(104,'YBR81778','马克 康格里 (0000)','05/04/2025 - 14:25','05/04/2025 - 14:39',14,'police'),
(105,'YBR81778','马克 康格里 (0000)','05/04/2025 - 14:41','05/04/2025 - 14:57',17,'police'),
(106,'JJX03484','亚力 雷吉 (0000)','05/04/2025 - 14:37','05/04/2025 - 14:57',21,'police'),
(107,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 14:31','05/04/2025 - 14:59',29,'police'),
(108,'WYU58551','摩根 杰克 (0000)','05/04/2025 - 16:18','05/04/2025 - 16:27',9,'police'),
(109,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 16:06','05/04/2025 - 16:31',25,'police'),
(110,'XRR77997','谢尔比 邦德 (0000)','05/04/2025 - 15:45','05/04/2025 - 16:55',71,'ambulance'),
(111,'WYU58551','摩根 杰克 (0000)','05/04/2025 - 17:02','05/04/2025 - 17:05',4,'police'),
(112,'XRR77997','谢尔比 邦德 (0000)','05/04/2025 - 16:58','05/04/2025 - 17:09',12,'ambulance'),
(113,'WYU58551','摩根 杰克 (0000)','05/04/2025 - 17:07','05/04/2025 - 17:16',9,'police'),
(114,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 16:44','05/04/2025 - 17:28',45,'police'),
(115,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 17:28','05/04/2025 - 19:15',107,'police'),
(116,'JJX03484','亚力 雷吉 (0000)','05/04/2025 - 16:23','05/04/2025 - 19:53',211,'police'),
(117,'JJX03484','亚力 雷吉 (0000)','05/04/2025 - 19:59','05/04/2025 - 20:19',21,'police'),
(118,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 19:15','05/04/2025 - 20:19',65,'police'),
(119,'YBR81778','马克 康格里 (0000)','05/04/2025 - 19:04','05/04/2025 - 20:25',81,'police'),
(120,'WYU58551','摩根 杰克 (0000)','05/04/2025 - 19:44','05/04/2025 - 20:29',46,'police'),
(121,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 20:23','05/04/2025 - 20:40',18,'police'),
(122,'JJX03484','亚力 雷吉 (0000)','05/04/2025 - 20:21','05/04/2025 - 20:40',20,'police'),
(123,'WYU58551','摩根 杰克 (0000)','05/04/2025 - 20:33','05/04/2025 - 20:40',8,'police'),
(124,'WYU58551','摩根 杰克 (0000)','05/04/2025 - 20:44','05/04/2025 - 21:12',28,'police'),
(125,'UXH40238','约瑟夫 麦克 (0000)','05/04/2025 - 20:48','05/04/2025 - 21:14',26,'police'),
(126,'UXH40238','约瑟夫 麦克 (0000)','05/04/2025 - 20:48','05/04/2025 - 21:14',26,'police'),
(127,'WYU58551','摩根 杰克 (0000)','05/04/2025 - 21:13','05/04/2025 - 21:50',38,'police'),
(128,'UXH40238','约瑟夫 麦克 (0000)','05/04/2025 - 21:14','05/04/2025 - 22:07',53,'police'),
(129,'QHK11612','小 丑 (0000)','05/04/2025 - 21:21','05/04/2025 - 22:20',60,'police'),
(130,'JJX03484','亚力 雷吉 (0000)','05/04/2025 - 20:44','05/04/2025 - 22:36',112,'police'),
(131,'QHK11612','小 丑 (0000)','05/04/2025 - 22:24','05/04/2025 - 22:47',24,'police'),
(132,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 20:44','05/04/2025 - 22:49',125,'police'),
(133,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 22:51','05/04/2025 - 22:52',2,'police'),
(134,'JJX03484','亚力 雷吉 (0000)','05/04/2025 - 22:54','05/04/2025 - 22:57',3,'police'),
(135,'JJX03484','亚力 雷吉 (0000)','05/04/2025 - 22:59','05/04/2025 - 23:05',6,'police'),
(136,'XRR77997','谢尔比 邦德 (0000)','05/04/2025 - 20:45','05/04/2025 - 23:35',171,'ambulance'),
(137,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 22:52','05/04/2025 - 23:51',59,'police'),
(138,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 23:53','05/04/2025 - 23:55',3,'police'),
(139,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 23:53','05/04/2025 - 23:55',3,'police'),
(140,'XRR77997','谢尔比 邦德 (0000)','05/04/2025 - 23:38','05/04/2025 - 23:56',19,'police'),
(141,'YBR81778','马克 康格里 (0000)','05/04/2025 - 21:08','06/04/2025 - 00:01',174,'police'),
(142,'YBR81778','马克 康格里 (0000)','05/04/2025 - 21:08','06/04/2025 - 00:01',174,'police'),
(143,'QHK11612','小 丑 (0000)','05/04/2025 - 23:40','06/04/2025 - 00:07',27,'police'),
(144,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 23:55','06/04/2025 - 00:09',15,'police'),
(145,'IMN66507','马卡斯 保罗 (0000)','05/04/2025 - 23:55','06/04/2025 - 00:09',15,'police'),
(146,'IMN66507','马卡斯 保罗 (0000)','06/04/2025 - 00:09','06/04/2025 - 00:20',11,'police'),
(147,'IMN66507','马卡斯 保罗 (0000)','06/04/2025 - 00:09','06/04/2025 - 00:20',11,'police'),
(148,'OZH56762','迪亚 詹姆斯 (0000)','06/04/2025 - 08:58','06/04/2025 - 09:02',5,'ambulance'),
(149,'XRR77997','谢尔比 邦德 (0000)','06/04/2025 - 09:52','06/04/2025 - 09:53',2,'police'),
(150,'OZH56762','迪亚 詹姆斯 (0000)','06/04/2025 - 11:20','06/04/2025 - 11:48',29,'ambulance'),
(151,'JJX03484','亚力 雷吉 (0000)','06/04/2025 - 11:39','06/04/2025 - 12:00',22,'police'),
(152,'JJX03484','亚力 雷吉 (0000)','06/04/2025 - 12:02','06/04/2025 - 12:07',6,'police'),
(153,'IMN66507','马卡斯 保罗 (0000)','06/04/2025 - 12:25','06/04/2025 - 13:19',55,'police'),
(154,'OZH56762','迪亚 詹姆斯 (0000)','06/04/2025 - 12:56','06/04/2025 - 13:29',34,'ambulance'),
(155,'IMN66507','马卡斯 保罗 (0000)','06/04/2025 - 13:21','06/04/2025 - 13:39',19,'police'),
(156,'JJX03484','亚力 雷吉 (0000)','06/04/2025 - 13:12','06/04/2025 - 15:04',113,'tow'),
(157,'YBR81778','马克 康格里 (0000)','06/04/2025 - 12:25','06/04/2025 - 15:41',197,'police'),
(158,'OZH56762','迪亚 詹姆斯 (0000)','06/04/2025 - 14:45','06/04/2025 - 16:05',80,'ambulance'),
(159,'YBR81778','马克 康格里 (0000)','06/04/2025 - 15:43','06/04/2025 - 18:18',155,'police'),
(160,'YBR81778','马克 康格里 (0000)','06/04/2025 - 18:19','06/04/2025 - 18:38',19,'police'),
(161,'XRR77997','谢尔比 邦德 (0000)','06/04/2025 - 18:37','06/04/2025 - 18:47',10,'police'),
(162,'IMN66507','马卡斯 保罗 (0000)','06/04/2025 - 13:39','06/04/2025 - 20:08',390,'police'),
(163,'OZH56762','迪亚 詹姆斯 (0000)','06/04/2025 - 16:07','06/04/2025 - 20:11',245,'ambulance'),
(164,'BDN59221','卡尔 马布里 (0000)','06/04/2025 - 18:25','06/04/2025 - 20:12',107,'police'),
(165,'IMN66507','马卡斯 保罗 (0000)','06/04/2025 - 20:10','06/04/2025 - 20:17',7,'police'),
(166,'IMN66507','马卡斯 保罗 (0000)','06/04/2025 - 20:19','06/04/2025 - 20:22',3,'police'),
(167,'OZH56762','迪亚 詹姆斯 (0000)','06/04/2025 - 20:12','06/04/2025 - 21:07',55,'ambulance'),
(168,'IMN66507','马卡斯 保罗 (0000)','06/04/2025 - 20:27','06/04/2025 - 21:30',64,'police'),
(169,'YBR81778','马克 康格里 (0000)','06/04/2025 - 21:07','06/04/2025 - 21:30',24,'police'),
(170,'XRR77997','谢尔比 邦德 (0000)','06/04/2025 - 21:42','06/04/2025 - 21:53',12,'ambulance'),
(171,'XRR77997','谢尔比 邦德 (0000)','06/04/2025 - 21:55','06/04/2025 - 23:24',89,'ambulance'),
(172,'XRR77997','谢尔比 邦德 (0000)','06/04/2025 - 23:30','06/04/2025 - 23:32',2,'ambulance'),
(173,'XRR77997','谢尔比 邦德 (0000)','06/04/2025 - 23:34','07/04/2025 - 00:21',47,'ambulance'),
(174,'VQR49601','阿伦 勒布朗 (0000)','07/04/2025 - 00:08','07/04/2025 - 00:21',14,'ambulance'),
(175,'IMN66507','马卡斯 保罗 (0000)','06/04/2025 - 22:44','07/04/2025 - 00:22',98,'police'),
(176,'YBR81778','马克 康格里 (0000)','06/04/2025 - 22:20','07/04/2025 - 10:27',727,'police'),
(177,'XRR77997','谢尔比 邦德 (0000)','07/04/2025 - 10:30','07/04/2025 - 10:41',11,'ambulance'),
(178,'IMN66507','马卡斯 保罗 (0000)','07/04/2025 - 13:08','07/04/2025 - 13:46',39,'police'),
(179,'IMN66507','马卡斯 保罗 (0000)','07/04/2025 - 15:17','07/04/2025 - 15:18',2,'police'),
(180,'YBR81778','马克 康格里 (0000)','07/04/2025 - 15:16','07/04/2025 - 15:19',3,'police'),
(181,'YBR81778','马克 康格里 (0000)','07/04/2025 - 15:22','07/04/2025 - 15:33',12,'police'),
(182,'XRR77997','谢尔比 邦德 (0000)','07/04/2025 - 15:21','07/04/2025 - 16:16',56,'police'),
(183,'UXH40238','约瑟夫 麦克 (0000)','07/04/2025 - 16:25','07/04/2025 - 16:44',20,'police'),
(184,'YBR81778','马克 康格里 (0000)','07/04/2025 - 15:35','07/04/2025 - 16:58',84,'police'),
(185,'IMN66507','马卡斯 保罗 (0000)','07/04/2025 - 15:21','07/04/2025 - 17:00',100,'police'),
(186,'YBR81778','马克 康格里 (0000)','07/04/2025 - 19:39','07/04/2025 - 20:36',57,'police'),
(187,'IMN66507','马卡斯 保罗 (0000)','07/04/2025 - 20:59','07/04/2025 - 22:21',83,'police'),
(188,'IMN66507','马卡斯 保罗 (0000)','07/04/2025 - 23:16','07/04/2025 - 23:22',7,'police'),
(189,'IMN66507','马卡斯 保罗 (0000)','07/04/2025 - 23:16','07/04/2025 - 23:22',7,'police'),
(190,'XRR77997','谢尔比 邦德 (0000)','07/04/2025 - 23:14','07/04/2025 - 23:35',21,'taxi'),
(191,'IMN66507','马卡斯 保罗 (0000)','07/04/2025 - 23:22','07/04/2025 - 23:48',26,'taxi'),
(192,'XRR77997','谢尔比 邦德 (0000)','08/04/2025 - 13:13','08/04/2025 - 13:15',3,'police'),
(193,'XRR77997','谢尔比 邦德 (0000)','08/04/2025 - 13:22','08/04/2025 - 13:43',22,'police'),
(194,'XRR77997','谢尔比 邦德 (0000)','08/04/2025 - 13:50','08/04/2025 - 14:02',13,'police'),
(195,'XRR77997','谢尔比 邦德 (0000)','08/04/2025 - 14:10','08/04/2025 - 14:13',3,'police'),
(196,'OZH56762','迪亚 詹姆斯 (0000)','08/04/2025 - 15:24','08/04/2025 - 15:38',15,'ambulance'),
(197,'XRR77997','谢尔比 邦德 (0000)','08/04/2025 - 15:51','08/04/2025 - 16:06',16,'police'),
(198,'OZH56762','迪亚 詹姆斯 (0000)','08/04/2025 - 15:51','08/04/2025 - 16:23',32,'ambulance'),
(199,'XRR77997','谢尔比 邦德 (0000)','08/04/2025 - 16:43','08/04/2025 - 16:57',14,'police'),
(200,'VQR49601','阿伦 勒布朗 (0000)','08/04/2025 - 16:58','08/04/2025 - 17:05',8,'ambulance'),
(201,'YBR81778','马克 康格里 (0000)','08/04/2025 - 15:24','08/04/2025 - 18:16',172,'police'),
(202,'YBR81778','马克 康格里 (0000)','08/04/2025 - 19:58','08/04/2025 - 20:01',3,'police'),
(203,'XRR77997','谢尔比 邦德 (0000)','08/04/2025 - 20:05','08/04/2025 - 20:12',8,'police'),
(204,'OZH56762','迪亚 詹姆斯 (0000)','08/04/2025 - 19:29','08/04/2025 - 22:31',183,'ambulance'),
(205,'IMN66507','马卡斯 保罗 (0000)','08/04/2025 - 20:42','08/04/2025 - 22:42',120,'police'),
(206,'IMN66507','马卡斯 保罗 (0000)','08/04/2025 - 20:42','08/04/2025 - 22:42',120,'police'),
(207,'XRR77997','谢尔比 邦德 (0000)','08/04/2025 - 21:26','08/04/2025 - 22:47',81,'ambulance'),
(208,'JJX03484','亚力 雷吉 (0000)','08/04/2025 - 23:09','08/04/2025 - 23:58',50,'police'),
(209,'XRR77997','谢尔比 邦德 (0000)','09/04/2025 - 08:55','09/04/2025 - 08:57',2,'ambulance'),
(210,'XRR77997','谢尔比 邦德 (0000)','09/04/2025 - 08:59','09/04/2025 - 09:43',44,'ambulance'),
(211,'XRR77997','谢尔比 邦德 (0000)','09/04/2025 - 09:45','09/04/2025 - 09:50',6,'ambulance'),
(212,'XRR77997','谢尔比 邦德 (0000)','09/04/2025 - 09:52','09/04/2025 - 10:06',15,'ambulance'),
(213,'XRR77997','谢尔比 邦德 (0000)','09/04/2025 - 10:08','09/04/2025 - 10:11',4,'ambulance');
/*!40000 ALTER TABLE `origen_police_clocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_police_federal`
--

DROP TABLE IF EXISTS `origen_police_federal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_police_federal` (
  `citizenid` varchar(50) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `initial` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `danger` varchar(50) DEFAULT 'NP',
  `joinedfrom` varchar(50) DEFAULT 'Mission Row',
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_police_federal`
--

LOCK TABLES `origen_police_federal` WRITE;
/*!40000 ALTER TABLE `origen_police_federal` DISABLE KEYS */;
/*!40000 ALTER TABLE `origen_police_federal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_police_notes`
--

DROP TABLE IF EXISTS `origen_police_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_police_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(60) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `description` text DEFAULT '',
  `author` varchar(255) DEFAULT '',
  `date` timestamp NULL DEFAULT current_timestamp(),
  `fixed` int(1) DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_police_notes`
--

LOCK TABLES `origen_police_notes` WRITE;
/*!40000 ALTER TABLE `origen_police_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `origen_police_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_police_penalc`
--

DROP TABLE IF EXISTS `origen_police_penalc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_police_penalc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT 'Error',
  `description` varchar(255) NOT NULL DEFAULT 'Error',
  `price` int(11) NOT NULL DEFAULT 0,
  `month` int(11) NOT NULL DEFAULT 0,
  `cap` int(1) NOT NULL DEFAULT 0,
  `job` varchar(50) DEFAULT 'police',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_police_penalc`
--

LOCK TABLES `origen_police_penalc` WRITE;
/*!40000 ALTER TABLE `origen_police_penalc` DISABLE KEYS */;
/*!40000 ALTER TABLE `origen_police_penalc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_police_reports`
--

DROP TABLE IF EXISTS `origen_police_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_police_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `description` text DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `cops` text DEFAULT '[]',
  `implicated` text DEFAULT '[]',
  `date` timestamp NULL DEFAULT current_timestamp(),
  `evidences` text DEFAULT '[]',
  `tags` text DEFAULT '["Caso Abierto"]',
  `location` varchar(255) NOT NULL DEFAULT 'Sin ubicacion asignada',
  `victims` mediumtext DEFAULT '[]',
  `vehicles` mediumtext DEFAULT '[]',
  `job` varchar(50) DEFAULT 'police',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_police_reports`
--

LOCK TABLES `origen_police_reports` WRITE;
/*!40000 ALTER TABLE `origen_police_reports` DISABLE KEYS */;
INSERT INTO `origen_police_reports` VALUES
(1,'亚力 雷击非法持有武器（无枪证）','亚力 雷击非法持有武器（无枪证） 无需没收','谢尔比 邦德 (0000)','[]','[]','2025-04-03 10:01:06','[]','[]','1','[]','[]','police'),
(2,'请输入姓名','','亚力 雷吉 (0000)','[]','[]','2025-04-03 10:04:22','[]','[\"Caso Abierto\"]','没有分配位置','[]','[]','police'),
(3,'请输入姓名','','亚力 雷吉 (0000)','[]','[]','2025-04-04 15:17:52','[]','[\"Caso Abierto\"]','没有1分配位置','[]','[]','police');
/*!40000 ALTER TABLE `origen_police_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origen_police_shapes`
--

DROP TABLE IF EXISTS `origen_police_shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `origen_police_shapes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `data` text NOT NULL,
  `radius` float DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origen_police_shapes`
--

LOCK TABLES `origen_police_shapes` WRITE;
/*!40000 ALTER TABLE `origen_police_shapes` DISABLE KEYS */;
/*!40000 ALTER TABLE `origen_police_shapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ox_inventory`
--

DROP TABLE IF EXISTS `ox_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ox_inventory` (
  `owner` varchar(60) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  UNIQUE KEY `owner` (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ox_inventory`
--

LOCK TABLES `ox_inventory` WRITE;
/*!40000 ALTER TABLE `ox_inventory` DISABLE KEYS */;
INSERT INTO `ox_inventory` VALUES
('','medicalBag_f5b7d587720fa72348aff8cb418bbfd7e3282d63','[{\"metadata\":{\"durability\":70},\"count\":1,\"name\":\"defibrillator\",\"slot\":1},{\"metadata\":{\"durability\":80},\"count\":1,\"name\":\"bandage\",\"slot\":2},{\"metadata\":{\"durability\":60},\"count\":1,\"name\":\"tweezers\",\"slot\":3},{\"count\":1,\"name\":\"burncream\",\"slot\":4},{\"count\":1,\"name\":\"suturekit\",\"slot\":5},{\"metadata\":{\"durability\":80},\"count\":1,\"name\":\"icepack\",\"slot\":6},{\"metadata\":{\"durability\":70},\"count\":1,\"name\":\"defibrillator\",\"slot\":7},{\"count\":1,\"name\":\"burncream\",\"slot\":8}]','2025-04-08 14:35:00'),
('','boss_ambulance',NULL,'2025-04-05 08:15:00'),
('','boss_police','[{\"count\":1,\"name\":\"water\",\"slot\":1}]','2025-04-08 08:10:00'),
('','apartment41947','[{\"name\":\"weedkey\",\"count\":1,\"slot\":1},{\"name\":\"cocainekey\",\"count\":1,\"slot\":2},{\"name\":\"methkey\",\"count\":3,\"slot\":3}]','2025-04-05 00:32:14'),
('','medicalBag_b2825554d4b29a6d8d807fc4180ae99c59e1fdae','[{\"name\":\"defibrillator\",\"slot\":1,\"count\":2},{\"name\":\"bandage\",\"slot\":2,\"count\":2},{\"name\":\"suturekit\",\"slot\":3,\"count\":2},{\"name\":\"tweezers\",\"slot\":4,\"count\":2},{\"name\":\"icepack\",\"slot\":6,\"count\":2},{\"name\":\"burncream\",\"slot\":7,\"count\":2}]','2025-04-05 15:30:00'),
('','apartment13670','[{\"metadata\":{\"serie\":\"90RFo9sT905BBSA\",\"ammo\":30,\"serial\":\"90RFo9sT905BBSA\",\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"},{\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\",\"label\":\"3x Scope\"}],\"components\":[],\"durability\":48.99999999999952,\"registered\":\"亚力 雷吉\"},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":1},{\"count\":1,\"name\":\"cryptostick\",\"slot\":16},{\"count\":1,\"name\":\"weedkey\",\"slot\":17},{\"count\":1,\"name\":\"methkey\",\"slot\":18},{\"count\":1,\"name\":\"cryptostick\",\"slot\":21},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"methkey\",\"slot\":22},{\"count\":2,\"name\":\"poppyresin\",\"slot\":8},{\"count\":2,\"name\":\"joint\",\"slot\":2},{\"metadata\":{\"serie\":\"55dTU2Hj285SHkd\",\"ammo\":232,\"serial\":\"55dTU2Hj285SHkd\",\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"}],\"components\":[],\"registered\":\"亚力 雷吉\",\"durability\":95.60000000000012},\"count\":1,\"name\":\"WEAPON_PUMPSHOTGUN\",\"slot\":11},{\"metadata\":{\"durability\":100},\"count\":1,\"name\":\"handcuffs\",\"slot\":12},{\"count\":1,\"name\":\"trimming_scissors\",\"slot\":13},{\"count\":1,\"name\":\"finescale\",\"slot\":7},{\"count\":1,\"name\":\"medicalbag\",\"slot\":6}]','2025-04-08 13:00:00');
/*!40000 ALTER TABLE `ox_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_backups`
--

DROP TABLE IF EXISTS `phone_backups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_backups` (
  `id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_backups_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_backups`
--

LOCK TABLES `phone_backups` WRITE;
/*!40000 ALTER TABLE `phone_backups` DISABLE KEYS */;
INSERT INTO `phone_backups` VALUES
('BDN59221','9073255767'),
('CCU80978','2058988224'),
('CDV27651','2058918551'),
('ICW34676','9078452467'),
('IMN66507','6020877537'),
('JJX03484','5200994498'),
('LYX25359','4809588447'),
('OZH56762','4807732359'),
('QHK11612','5203186772'),
('QLU88274','5206792450'),
('RHT93297','6023092057'),
('UUU52761','6025376235'),
('UXH40238','4801033134'),
('VCV61562','9079691273'),
('VQR49601','9076482773'),
('WYU58551','6029765848'),
('XRR77997','6029709718'),
('YBN39722','9075569526'),
('YBR81778','4800137041');
/*!40000 ALTER TABLE `phone_backups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_clock_alarms`
--

DROP TABLE IF EXISTS `phone_clock_alarms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_clock_alarms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `hours` int(2) NOT NULL DEFAULT 0,
  `minutes` int(2) NOT NULL DEFAULT 0,
  `label` varchar(50) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_clock_alarms_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_clock_alarms`
--

LOCK TABLES `phone_clock_alarms` WRITE;
/*!40000 ALTER TABLE `phone_clock_alarms` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_clock_alarms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_crypto`
--

DROP TABLE IF EXISTS `phone_crypto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_crypto` (
  `id` varchar(100) NOT NULL,
  `coin` varchar(15) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `invested` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`coin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_crypto`
--

LOCK TABLES `phone_crypto` WRITE;
/*!40000 ALTER TABLE `phone_crypto` DISABLE KEYS */;
INSERT INTO `phone_crypto` VALUES
('QHK11612','binancecoin',330.5867087839549,200000);
/*!40000 ALTER TABLE `phone_crypto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_darkchat_accounts`
--

DROP TABLE IF EXISTS `phone_darkchat_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_darkchat_accounts` (
  `phone_number` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_darkchat_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_darkchat_accounts`
--

LOCK TABLES `phone_darkchat_accounts` WRITE;
/*!40000 ALTER TABLE `phone_darkchat_accounts` DISABLE KEYS */;
INSERT INTO `phone_darkchat_accounts` VALUES
('5200994498','111','$2a$11$A5YdNEldM460sUAt/T.oeuz2q6kw33un0KN0rCDYkR3SuI4ypTL4W');
/*!40000 ALTER TABLE `phone_darkchat_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_darkchat_channels`
--

DROP TABLE IF EXISTS `phone_darkchat_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_darkchat_channels` (
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_darkchat_channels`
--

LOCK TABLES `phone_darkchat_channels` WRITE;
/*!40000 ALTER TABLE `phone_darkchat_channels` DISABLE KEYS */;
INSERT INTO `phone_darkchat_channels` VALUES
('666');
/*!40000 ALTER TABLE `phone_darkchat_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_darkchat_members`
--

DROP TABLE IF EXISTS `phone_darkchat_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_darkchat_members` (
  `channel_name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`channel_name`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_darkchat_members_ibfk_1` FOREIGN KEY (`channel_name`) REFERENCES `phone_darkchat_channels` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_darkchat_members_ibfk_2` FOREIGN KEY (`username`) REFERENCES `phone_darkchat_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_darkchat_members`
--

LOCK TABLES `phone_darkchat_members` WRITE;
/*!40000 ALTER TABLE `phone_darkchat_members` DISABLE KEYS */;
INSERT INTO `phone_darkchat_members` VALUES
('666','111');
/*!40000 ALTER TABLE `phone_darkchat_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_darkchat_messages`
--

DROP TABLE IF EXISTS `phone_darkchat_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_darkchat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(50) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel` (`channel`),
  KEY `sender` (`sender`),
  CONSTRAINT `phone_darkchat_messages_ibfk_1` FOREIGN KEY (`channel`) REFERENCES `phone_darkchat_channels` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_darkchat_messages_ibfk_2` FOREIGN KEY (`sender`) REFERENCES `phone_darkchat_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_darkchat_messages`
--

LOCK TABLES `phone_darkchat_messages` WRITE;
/*!40000 ALTER TABLE `phone_darkchat_messages` DISABLE KEYS */;
INSERT INTO `phone_darkchat_messages` VALUES
(1,'666','111','r','2025-04-08 13:00:23'),
(2,'666','111','u','2025-04-08 13:00:24'),
(3,'666','111','u','2025-04-08 13:00:26'),
(4,'666','111','1','2025-04-08 13:00:29');
/*!40000 ALTER TABLE `phone_darkchat_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_instagram_accounts`
--

DROP TABLE IF EXISTS `phone_instagram_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_accounts` (
  `display_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` varchar(500) DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `post_count` int(11) NOT NULL DEFAULT 0,
  `story_count` int(11) NOT NULL DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(15) NOT NULL,
  `private` tinyint(1) DEFAULT 0,
  `verified` tinyint(1) DEFAULT 0,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_instagram_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_accounts`
--

LOCK TABLES `phone_instagram_accounts` WRITE;
/*!40000 ALTER TABLE `phone_instagram_accounts` DISABLE KEYS */;
INSERT INTO `phone_instagram_accounts` VALUES
('1','niandou','$2a$11$U/VJ8DoL7Um3TbA86Jg/huB4HmLXpFh2xCHIfffJMr.gxLUBC.BHG',NULL,NULL,0,0,0,0,'6029765848',0,0,'2025-04-01 06:09:26');
/*!40000 ALTER TABLE `phone_instagram_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_instagram_comments`
--

DROP TABLE IF EXISTS `phone_instagram_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_comments` (
  `id` varchar(10) NOT NULL,
  `post_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` varchar(500) NOT NULL DEFAULT '',
  `like_count` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `phone_instagram_posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_instagram_comments_ibfk_2` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_comments`
--

LOCK TABLES `phone_instagram_comments` WRITE;
/*!40000 ALTER TABLE `phone_instagram_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_instagram_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_increment_comment_count
AFTER INSERT ON phone_instagram_comments
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_posts
    SET comment_count = comment_count + 1
    WHERE id = NEW.post_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_decrement_comment_count
AFTER DELETE ON phone_instagram_comments
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_posts
    SET comment_count = comment_count - 1
    WHERE id = OLD.post_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_instagram_follow_requests`
--

DROP TABLE IF EXISTS `phone_instagram_follow_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_follow_requests` (
  `requester` varchar(20) NOT NULL,
  `requestee` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`requester`,`requestee`),
  KEY `requestee` (`requestee`),
  CONSTRAINT `phone_instagram_follow_requests_ibfk_1` FOREIGN KEY (`requester`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_follow_requests_ibfk_2` FOREIGN KEY (`requestee`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_follow_requests`
--

LOCK TABLES `phone_instagram_follow_requests` WRITE;
/*!40000 ALTER TABLE `phone_instagram_follow_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_instagram_follow_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_instagram_follows`
--

DROP TABLE IF EXISTS `phone_instagram_follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_instagram_follows_ibfk_1` FOREIGN KEY (`followed`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_follows_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_follows`
--

LOCK TABLES `phone_instagram_follows` WRITE;
/*!40000 ALTER TABLE `phone_instagram_follows` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_instagram_follows` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_update_counts_after_follow
AFTER INSERT ON phone_instagram_follows
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    UPDATE phone_instagram_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_update_counts_after_unfollow
AFTER DELETE ON phone_instagram_follows
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    UPDATE phone_instagram_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_instagram_likes`
--

DROP TABLE IF EXISTS `phone_instagram_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_likes` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `is_comment` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_likes`
--

LOCK TABLES `phone_instagram_likes` WRITE;
/*!40000 ALTER TABLE `phone_instagram_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_instagram_likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_increment_like_count
AFTER INSERT ON phone_instagram_likes
FOR EACH ROW
BEGIN
    IF NEW.is_comment = 0 THEN
        UPDATE phone_instagram_posts
        SET like_count = like_count + 1
        WHERE id = NEW.id;
    ELSE
        UPDATE phone_instagram_comments
        SET like_count = like_count + 1
        WHERE id = NEW.id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_decrement_like_count
AFTER DELETE ON phone_instagram_likes
FOR EACH ROW
BEGIN
    IF OLD.is_comment = 0 THEN
        UPDATE phone_instagram_posts
        SET like_count = like_count - 1
        WHERE id = OLD.id;
    ELSE
        UPDATE phone_instagram_comments
        SET like_count = like_count - 1
        WHERE id = OLD.id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_instagram_messages`
--

DROP TABLE IF EXISTS `phone_instagram_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_messages` (
  `id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_instagram_messages_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_messages_ibfk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_messages`
--

LOCK TABLES `phone_instagram_messages` WRITE;
/*!40000 ALTER TABLE `phone_instagram_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_instagram_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_instagram_notifications`
--

DROP TABLE IF EXISTS `phone_instagram_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_notifications` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `post_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  CONSTRAINT `phone_instagram_notifications_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_instagram_notifications_ibfk_2` FOREIGN KEY (`from`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_notifications`
--

LOCK TABLES `phone_instagram_notifications` WRITE;
/*!40000 ALTER TABLE `phone_instagram_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_instagram_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_instagram_posts`
--

DROP TABLE IF EXISTS `phone_instagram_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_posts` (
  `id` varchar(10) NOT NULL,
  `media` text DEFAULT NULL,
  `caption` varchar(500) NOT NULL DEFAULT '',
  `location` varchar(50) DEFAULT NULL,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `comment_count` int(11) NOT NULL DEFAULT 0,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_posts_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_posts`
--

LOCK TABLES `phone_instagram_posts` WRITE;
/*!40000 ALTER TABLE `phone_instagram_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_instagram_posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_increment_post_count
AFTER INSERT ON phone_instagram_posts
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET post_count = post_count + 1
    WHERE username = NEW.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_decrement_post_count
AFTER DELETE ON phone_instagram_posts
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET post_count = post_count - 1
    WHERE username = OLD.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_instagram_stories`
--

DROP TABLE IF EXISTS `phone_instagram_stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_stories` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `image` varchar(500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_instagram_stories_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_stories`
--

LOCK TABLES `phone_instagram_stories` WRITE;
/*!40000 ALTER TABLE `phone_instagram_stories` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_instagram_stories` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_increment_story_count
AFTER INSERT ON phone_instagram_stories
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET story_count = story_count + 1
    WHERE username = NEW.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_instagram_decrement_story_count
AFTER DELETE ON phone_instagram_stories
FOR EACH ROW
BEGIN
    UPDATE phone_instagram_accounts
    SET story_count = story_count - 1
    WHERE username = OLD.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_instagram_stories_views`
--

DROP TABLE IF EXISTS `phone_instagram_stories_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_instagram_stories_views` (
  `story_id` varchar(50) NOT NULL,
  `viewer` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`story_id`,`viewer`),
  KEY `viewer` (`viewer`),
  CONSTRAINT `phone_instagram_stories_views_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `phone_instagram_stories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_instagram_stories_views_ibfk_2` FOREIGN KEY (`viewer`) REFERENCES `phone_instagram_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_instagram_stories_views`
--

LOCK TABLES `phone_instagram_stories_views` WRITE;
/*!40000 ALTER TABLE `phone_instagram_stories_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_instagram_stories_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_last_phone`
--

DROP TABLE IF EXISTS `phone_last_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_last_phone` (
  `id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_last_phone_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_last_phone`
--

LOCK TABLES `phone_last_phone` WRITE;
/*!40000 ALTER TABLE `phone_last_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_last_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_logged_in_accounts`
--

DROP TABLE IF EXISTS `phone_logged_in_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_logged_in_accounts` (
  `phone_number` varchar(15) NOT NULL,
  `app` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`phone_number`,`app`,`username`),
  CONSTRAINT `phone_logged_in_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_logged_in_accounts`
--

LOCK TABLES `phone_logged_in_accounts` WRITE;
/*!40000 ALTER TABLE `phone_logged_in_accounts` DISABLE KEYS */;
INSERT INTO `phone_logged_in_accounts` VALUES
('4800137041','Mail','123456@lbscripts.com',1),
('4800137041','TikTok','mo123',1),
('4800137041','Twitter','mo123',1),
('4801033134','Mail','12345@lbscripts.com',1),
('4801033134','TikTok','zpy',1),
('4801033134','Twitter','zpy',1),
('4807732359','TikTok','123',1),
('5200994498','DarkChat','111',1),
('5200994498','Mail','11112313@lbscripts.com',0),
('5200994498','Mail','123411@lbscripts.com',1),
('5200994498','TikTok','1234',1),
('5200994498','Twitter','1111',1),
('5203186772','TikTok','xiaocho',1),
('5203186772','Twitter','xiaocho',1),
('5206792450','TikTok','wzw',1),
('5206792450','Twitter','wzw',1),
('6020877537','Mail','nnnnnnnnnnnnnnnn@lbscripts.com',1),
('6023092057','Mail','162613@lbscripts.com',1),
('6023092057','TikTok','mo123',1),
('6025376235','Mail','luo@lbscripts.com',1),
('6025376235','TikTok','lonely',1),
('6025376235','Twitter','lonely',1),
('6029709718','Mail','rainbowkv@lbscripts.com',1),
('6029709718','TikTok','rainbowkv',1),
('6029709718','Twitter','rainbowkv',1),
('6029765848','Instagram','niandou',1),
('6029765848','Twitter','niandou',1),
('9073255767','Mail','domain.com@lbscripts.com',1),
('9073255767','Twitter','dwad',1),
('9076482773','TikTok','richyoung',1),
('9076482773','Twitter','rcyoung',1);
/*!40000 ALTER TABLE `phone_logged_in_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_mail_accounts`
--

DROP TABLE IF EXISTS `phone_mail_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_mail_accounts` (
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_mail_accounts`
--

LOCK TABLES `phone_mail_accounts` WRITE;
/*!40000 ALTER TABLE `phone_mail_accounts` DISABLE KEYS */;
INSERT INTO `phone_mail_accounts` VALUES
('11112313@lbscripts.com','$2a$11$VA8GyfyHo/Qd/2.yN9aD8OjJWzyGAqwkJDOE2ww6NAlM/CQcEYZlq'),
('1234@lbscripts.com','$2a$11$O8NMDkFaWsGvskLFYvjMr.O7JtAeKEosd2SwwEqp/GDgUSOaoEO.C'),
('123411@lbscripts.com','$2a$11$eMg480Pn/z.Yh7YM0z5QiOXNSt1odvXmPFYubvE1GcIYTdwiuozim'),
('12345@lbscripts.com','$2a$11$v3rIVrKvSjAacnKYfupSl.qscUFfGLLnRUYQQeDAHqx5Pd1SKzb0y'),
('123456@lbscripts.com','$2a$11$YnDam21tAlmSoL/Dxys/FeO9gvnZsOFiCRqPlP3qcLFsgxAoy/WI2'),
('162613@lbscripts.com','$2a$11$XY.p/lznuwO1ivv8hq5GvObbPeK1BsXw89cjGElon1DcBJFr7hfxa'),
('domain.com@lbscripts.com','$2a$11$9GCDpq4KoOGkeXWDGIbhh.AmzHjtHYtU7E.hnsqtaLb0Xy9knRknS'),
('luo@lbscripts.com','$2a$11$WjxZz2uI0oKFT.K5nchjQOazH3cuER/CNHZYFkpxR.wpGeXBM/NCO'),
('nnnnnnnnnnnnnnnn@lbscripts.com','$2a$11$XKQH2/JjZQAUMelPWK6cfeswmWxhUSNUZHsszkvifjsQDKxKMxtwS'),
('rainbowkv@lbscripts.com','$2a$11$n.siz9CyUxis45DDclOzveclcworlq1kKJmR.OjsDiNSaMxIx13ge');
/*!40000 ALTER TABLE `phone_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_mail_deleted`
--

DROP TABLE IF EXISTS `phone_mail_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_mail_deleted` (
  `message_id` int(10) unsigned NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`message_id`,`address`),
  KEY `address` (`address`),
  CONSTRAINT `phone_mail_deleted_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `phone_mail_messages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_mail_deleted_ibfk_2` FOREIGN KEY (`address`) REFERENCES `phone_mail_accounts` (`address`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_mail_deleted`
--

LOCK TABLES `phone_mail_deleted` WRITE;
/*!40000 ALTER TABLE `phone_mail_deleted` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_mail_deleted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_mail_messages`
--

DROP TABLE IF EXISTS `phone_mail_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_mail_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipient` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `attachments` longtext DEFAULT NULL,
  `actions` longtext DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_mail_messages`
--

LOCK TABLES `phone_mail_messages` WRITE;
/*!40000 ALTER TABLE `phone_mail_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_mail_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_maps_locations`
--

DROP TABLE IF EXISTS `phone_maps_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_maps_locations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `x_pos` float NOT NULL,
  `y_pos` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_maps_locations_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_maps_locations`
--

LOCK TABLES `phone_maps_locations` WRITE;
/*!40000 ALTER TABLE `phone_maps_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_maps_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_marketplace_posts`
--

DROP TABLE IF EXISTS `phone_marketplace_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_marketplace_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `attachments` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_marketplace_posts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_marketplace_posts`
--

LOCK TABLES `phone_marketplace_posts` WRITE;
/*!40000 ALTER TABLE `phone_marketplace_posts` DISABLE KEYS */;
INSERT INTO `phone_marketplace_posts` VALUES
(1,'5200994498','1','1','[\"https://r2.fivemanage.com/image/bCqSsXJpAyqc.webp\"]',100000,'2025-04-08 12:48:34'),
(2,'5200994498','11','1','[\"https://r2.fivemanage.com/image/vhR1cZx30jKR.webp\"]',1,'2025-04-08 12:49:57');
/*!40000 ALTER TABLE `phone_marketplace_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_message_channels`
--

DROP TABLE IF EXISTS `phone_message_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_message_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_group` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  `last_message` varchar(50) NOT NULL DEFAULT '',
  `last_message_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_message_channels`
--

LOCK TABLES `phone_message_channels` WRITE;
/*!40000 ALTER TABLE `phone_message_channels` DISABLE KEYS */;
INSERT INTO `phone_message_channels` VALUES
(1,0,NULL,'<!CALL-NO-ANSWER!>','2025-03-30 09:00:41'),
(2,0,NULL,'<!SENT-PAYMENT-66666!>','2025-03-30 09:12:53'),
(3,0,NULL,'<!CALL-NO-ANSWER!>','2025-04-04 17:41:58'),
(4,0,NULL,'<!SENT-PAYMENT-100000!>','2025-03-31 05:12:25'),
(5,0,NULL,'<!SENT-PAYMENT-100!>','2025-03-31 06:34:29'),
(6,0,NULL,'<!SENT-PAYMENT-40000!>','2025-03-31 08:23:59'),
(7,0,NULL,'<!CALL-NO-ANSWER!>','2025-03-31 15:11:12'),
(8,0,NULL,'<!CALL-NO-ANSWER!>','2025-04-07 07:45:48'),
(9,0,NULL,'<!CALL-NO-ANSWER!>','2025-04-04 10:13:08'),
(10,0,NULL,'rj','2025-04-08 12:30:45'),
(11,0,NULL,'<!CALL-NO-ANSWER!>','2025-04-05 09:10:40'),
(12,0,NULL,'<!SENT-PAYMENT-4000!>','2025-04-06 03:52:17'),
(13,0,NULL,'<!SENT-PAYMENT-5000!>','2025-04-06 07:30:38');
/*!40000 ALTER TABLE `phone_message_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_message_members`
--

DROP TABLE IF EXISTS `phone_message_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_message_members` (
  `channel_id` int(11) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `is_owner` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `unread` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`channel_id`,`phone_number`),
  CONSTRAINT `phone_message_members_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_message_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_message_members`
--

LOCK TABLES `phone_message_members` WRITE;
/*!40000 ALTER TABLE `phone_message_members` DISABLE KEYS */;
INSERT INTO `phone_message_members` VALUES
(1,'6023092057',0,0,0),
(1,'6029709718',0,0,0),
(2,'4807732359',0,0,0),
(2,'6029709718',0,0,0),
(3,'4801033134',0,0,0),
(3,'5200994498',0,0,0),
(4,'4801033134',0,0,0),
(4,'6029709718',0,0,0),
(5,'2058918551',0,0,0),
(5,'4801033134',0,0,0),
(6,'6029709718',0,0,0),
(6,'9079691273',0,0,0),
(7,'5200994498',0,0,0),
(7,'9073255767',0,1,0),
(8,'4800137041',0,0,1),
(8,'6029709718',0,0,0),
(9,'4800137041',0,0,1),
(9,'5203186772',0,0,0),
(10,'4807732359',0,0,1),
(10,'5200994498',0,0,0),
(11,'6029709718',0,0,2),
(11,'6029765848',0,0,0),
(12,'5200994498',0,0,0),
(12,'6023092057',0,0,0),
(13,'4807732359',0,0,0),
(13,'6020877537',0,0,0);
/*!40000 ALTER TABLE `phone_message_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_message_messages`
--

DROP TABLE IF EXISTS `phone_message_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_message_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `sender` varchar(15) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_message_messages_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_message_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_message_messages`
--

LOCK TABLES `phone_message_messages` WRITE;
/*!40000 ALTER TABLE `phone_message_messages` DISABLE KEYS */;
INSERT INTO `phone_message_messages` VALUES
(1,1,'6029709718','<!CALL-NO-ANSWER!>',NULL,'2025-03-30 09:00:40'),
(2,2,'6029709718','<!SENT-PAYMENT-66666!>',NULL,'2025-03-30 09:12:53'),
(3,3,'5200994498','<!SENT-LOCATION-X=-1283.18Y=-370.74!>',NULL,'2025-03-31 05:12:16'),
(4,4,'6029709718','<!SENT-PAYMENT-100000!>',NULL,'2025-03-31 05:12:25'),
(5,3,'5200994498','🙃',NULL,'2025-03-31 05:12:32'),
(6,5,'2058918551','<!SENT-PAYMENT-100!>',NULL,'2025-03-31 06:34:29'),
(7,6,'6029709718','<!SENT-PAYMENT-40000!>',NULL,'2025-03-31 08:23:59'),
(8,6,'6029709718','<!SENT-PAYMENT-40000!>',NULL,'2025-03-31 08:27:22'),
(9,3,'5200994498','<!CALL-NO-ANSWER!>',NULL,'2025-03-31 11:54:22'),
(10,3,'4801033134','<!CALL-NO-ANSWER!>',NULL,'2025-03-31 13:04:51'),
(11,7,'5200994498','<!CALL-NO-ANSWER!>',NULL,'2025-03-31 15:11:12'),
(12,7,'9073255767','<!CALL-NO-ANSWER!>',NULL,'2025-03-31 15:11:26'),
(13,7,'9073255767','<!CALL-NO-ANSWER!>',NULL,'2025-03-31 15:11:30'),
(14,7,'9073255767','<!CALL-NO-ANSWER!>',NULL,'2025-03-31 15:11:31'),
(15,7,'9073255767','<!CALL-NO-ANSWER!>',NULL,'2025-03-31 15:11:33'),
(16,7,'9073255767','<!CALL-NO-ANSWER!>',NULL,'2025-03-31 15:11:36'),
(17,7,'9073255767','<!CALL-NO-ANSWER!>',NULL,'2025-03-31 15:11:39'),
(18,3,'5200994498','<!CALL-NO-ANSWER!>',NULL,'2025-04-02 13:14:48'),
(19,8,'6029709718','<!SENT-PAYMENT-66666!>',NULL,'2025-04-03 10:32:14'),
(20,8,'4800137041','<!SENT-PAYMENT-1!>',NULL,'2025-04-03 10:32:43'),
(21,9,'5203186772','1',NULL,'2025-04-03 10:34:20'),
(22,9,'4800137041','<!SENT-PAYMENT-10!>',NULL,'2025-04-03 10:34:49'),
(23,7,'9073255767','<!CALL-NO-ANSWER!>',NULL,'2025-04-04 03:17:30'),
(24,8,'4800137041','<!CALL-NO-ANSWER!>',NULL,'2025-04-04 06:26:10'),
(25,8,'4800137041','🤪🤪🤪🤪🤪🤪',NULL,'2025-04-04 06:27:25'),
(26,9,'5203186772','<!CALL-NO-ANSWER!>',NULL,'2025-04-04 10:13:08'),
(27,10,'4807732359','<!SENT-PAYMENT-100000!>',NULL,'2025-04-04 11:59:15'),
(28,3,'5200994498','Attachment','[\"https://r2.fivemanage.com/image/bCqSsXJpAyqc.webp\"]','2025-04-04 15:55:41'),
(29,3,'5200994498','Attachment','[\"https://r2.fivemanage.com/image/bCqSsXJpAyqc.webp\"]','2025-04-04 15:55:47'),
(30,3,'5200994498','Attachment','[\"https://r2.fivemanage.com/image/bCqSsXJpAyqc.webp\"]','2025-04-04 15:56:29'),
(31,3,'5200994498','<!REQUESTED-PAYMENT-111111!>',NULL,'2025-04-04 15:56:35'),
(32,3,'5200994498','<!SENT-PAYMENT-1!>',NULL,'2025-04-04 15:56:43'),
(33,3,'5200994498','Attachment','[\"https://r2.fivemanage.com/image/bCqSsXJpAyqc.webp\"]','2025-04-04 16:02:49'),
(34,3,'5200994498','<!SENT-PAYMENT-1!>',NULL,'2025-04-04 16:02:55'),
(35,3,'5200994498','<!CALL-NO-ANSWER!>',NULL,'2025-04-04 17:41:58'),
(36,11,'6029765848','<!CALL-NO-ANSWER!>',NULL,'2025-04-05 09:10:40'),
(37,11,'6029765848','<!CALL-NO-ANSWER!>',NULL,'2025-04-05 09:10:46'),
(38,12,'5200994498','<!SENT-PAYMENT-1!>',NULL,'2025-04-06 03:51:53'),
(39,12,'6023092057','<!SENT-PAYMENT-4000!>',NULL,'2025-04-06 03:52:17'),
(40,13,'6020877537','<!SENT-PAYMENT-5000!>',NULL,'2025-04-06 07:30:38'),
(41,8,'6029709718','<!CALL-NO-ANSWER!>',NULL,'2025-04-07 07:45:48'),
(42,10,'4807732359','<!SENT-PAYMENT-10000!>',NULL,'2025-04-08 08:05:28'),
(43,10,'5200994498','rj',NULL,'2025-04-08 12:30:45');
/*!40000 ALTER TABLE `phone_message_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_music_playlists`
--

DROP TABLE IF EXISTS `phone_music_playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_music_playlists` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cover` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_music_playlists_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_music_playlists`
--

LOCK TABLES `phone_music_playlists` WRITE;
/*!40000 ALTER TABLE `phone_music_playlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_music_playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_music_saved_playlists`
--

DROP TABLE IF EXISTS `phone_music_saved_playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_music_saved_playlists` (
  `playlist_id` int(10) unsigned NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`playlist_id`,`phone_number`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_music_saved_playlists_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phone_music_saved_playlists_ibfk_2` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_music_saved_playlists`
--

LOCK TABLES `phone_music_saved_playlists` WRITE;
/*!40000 ALTER TABLE `phone_music_saved_playlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_music_saved_playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_music_songs`
--

DROP TABLE IF EXISTS `phone_music_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_music_songs` (
  `song_id` varchar(100) NOT NULL,
  `playlist_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`song_id`,`playlist_id`),
  KEY `playlist_id` (`playlist_id`),
  CONSTRAINT `phone_music_songs_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `phone_music_playlists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_music_songs`
--

LOCK TABLES `phone_music_songs` WRITE;
/*!40000 ALTER TABLE `phone_music_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_music_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_notes`
--

DROP TABLE IF EXISTS `phone_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` longtext DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_notes_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_notes`
--

LOCK TABLES `phone_notes` WRITE;
/*!40000 ALTER TABLE `phone_notes` DISABLE KEYS */;
INSERT INTO `phone_notes` VALUES
(1,'6029709718','新建笔记','3/31凌晨更新了服务器ssh登陆方式和端口，加固安全。','2025-03-30 19:32:05');
/*!40000 ALTER TABLE `phone_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_notifications`
--

DROP TABLE IF EXISTS `phone_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `app` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `show_avatar` tinyint(1) DEFAULT 0,
  `custom_data` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_notifications_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_notifications`
--

LOCK TABLES `phone_notifications` WRITE;
/*!40000 ALTER TABLE `phone_notifications` DISABLE KEYS */;
INSERT INTO `phone_notifications` VALUES
(249,'6025376235','Twitter','谢尔比 邦德 点赞了：',' 第二天，虽然有些无聊，但我愿意为此浪费时间。','https://r2.fivemanage.com/image/Zgjzb9cVjp5u.webp',NULL,NULL,NULL,'2025-04-06 15:40:56'),
(250,'6025376235','Twitter','谢尔比 邦德 回复：','慢生活',NULL,NULL,NULL,NULL,'2025-04-06 15:41:06'),
(254,'9076482773','Services','新消息','市民求救:sos',NULL,NULL,NULL,NULL,'2025-04-06 16:13:29'),
(305,'4807732359','Messages','亚力 的手机 ','rj',NULL,NULL,1,NULL,'2025-04-08 12:30:45'),
(314,'4807732359','Services','新消息','市民求救:111',NULL,NULL,NULL,NULL,'2025-04-08 14:13:47');
/*!40000 ALTER TABLE `phone_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_phone_blocked_numbers`
--

DROP TABLE IF EXISTS `phone_phone_blocked_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_phone_blocked_numbers` (
  `phone_number` varchar(15) NOT NULL,
  `blocked_number` varchar(15) NOT NULL,
  PRIMARY KEY (`phone_number`,`blocked_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_phone_blocked_numbers`
--

LOCK TABLES `phone_phone_blocked_numbers` WRITE;
/*!40000 ALTER TABLE `phone_phone_blocked_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_phone_blocked_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_phone_calls`
--

DROP TABLE IF EXISTS `phone_phone_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_phone_calls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caller` varchar(15) NOT NULL,
  `callee` varchar(15) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `answered` tinyint(1) DEFAULT 0,
  `hide_caller_id` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_phone_calls`
--

LOCK TABLES `phone_phone_calls` WRITE;
/*!40000 ALTER TABLE `phone_phone_calls` DISABLE KEYS */;
INSERT INTO `phone_phone_calls` VALUES
(1,'6029709718','6023092057',47,1,0,'2025-03-30 06:45:03'),
(2,'6023092057','6029709718',83,1,0,'2025-03-30 06:46:32'),
(3,'6029709718','6023092057',36,1,0,'2025-03-30 06:47:17'),
(4,'6023092057','6029709718',13,1,0,'2025-03-30 06:47:51'),
(5,'6029709718','6023092057',11,1,0,'2025-03-30 06:48:32'),
(6,'6029709718','6023092057',0,0,0,'2025-03-30 09:00:40'),
(7,'5200994498','4807732359',8,1,0,'2025-03-30 11:55:24'),
(8,'5200994498','9073255767',11,0,0,'2025-03-30 14:56:29'),
(9,'4801033134','6029709718',5,1,0,'2025-03-31 05:12:11'),
(10,'5200994498','4801033134',16,1,0,'2025-03-31 08:34:04'),
(11,'5200994498','4801033134',0,0,0,'2025-03-31 11:54:22'),
(12,'9076482773','911',0,0,0,'2025-03-31 13:04:14'),
(13,'4801033134','5200994498',0,0,0,'2025-03-31 13:04:51'),
(14,'6029709718','9076482773',20,1,0,'2025-03-31 13:06:18'),
(15,'4801033134','5200994498',117,1,0,'2025-03-31 13:06:51'),
(16,'5200994498','9073255767',6,0,0,'2025-03-31 15:11:12'),
(17,'9073255767','5200994498',0,0,0,'2025-03-31 15:11:26'),
(18,'9073255767','5200994498',0,0,0,'2025-03-31 15:11:30'),
(19,'9073255767','5200994498',0,0,0,'2025-03-31 15:11:31'),
(20,'9073255767','5200994498',0,0,0,'2025-03-31 15:11:33'),
(21,'9073255767','5200994498',0,0,0,'2025-03-31 15:11:36'),
(22,'9073255767','5200994498',0,0,0,'2025-03-31 15:11:39'),
(23,'5200994498','4801033134',31,1,0,'2025-03-31 15:11:46'),
(24,'5200994498','9073255767',25,1,0,'2025-03-31 15:12:19'),
(25,'6029709718','9076482773',12,1,0,'2025-04-01 10:20:27'),
(26,'5200994498','4801033134',8,0,0,'2025-04-02 13:14:48'),
(27,'9073255767','5200994498',0,0,0,'2025-04-04 03:17:30'),
(28,'4800137041','6029709718',0,0,0,'2025-04-04 06:26:10'),
(29,'5203186772','4800137041',18,0,0,'2025-04-04 10:13:08'),
(30,'5206792450','911',0,0,0,'2025-04-04 10:53:23'),
(31,'6029709718','5203186772',56,1,0,'2025-04-04 14:32:21'),
(32,'5200994498','4801033134',22,1,0,'2025-04-04 15:55:36'),
(33,'5200994498','4801033134',7,0,0,'2025-04-04 17:41:58'),
(34,'5200994498','4800137041',17,1,0,'2025-04-05 06:56:28'),
(35,'6029765848','6029709718',0,0,0,'2025-04-05 09:10:40'),
(36,'6029765848','6029709718',0,0,0,'2025-04-05 09:10:46'),
(37,'6029709718','4800137041',45,1,0,'2025-04-05 13:46:32'),
(38,'6029709718','4800137041',4,0,0,'2025-04-07 07:45:48'),
(39,'4800137041','6029709718',19,1,0,'2025-04-07 07:53:34');
/*!40000 ALTER TABLE `phone_phone_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_phone_contacts`
--

DROP TABLE IF EXISTS `phone_phone_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_phone_contacts` (
  `contact_phone_number` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `profile_image` varchar(500) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `favourite` tinyint(1) DEFAULT 0,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`contact_phone_number`,`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_phone_contacts`
--

LOCK TABLES `phone_phone_contacts` WRITE;
/*!40000 ALTER TABLE `phone_phone_contacts` DISABLE KEYS */;
INSERT INTO `phone_phone_contacts` VALUES
('4800137041','马克 的手机','',NULL,NULL,NULL,0,'4807732359'),
('4800137041','马克 的手机','',NULL,NULL,NULL,0,'5203186772'),
('4800137041','马克 的手机','',NULL,NULL,NULL,0,'6029709718'),
('4801033134','约瑟夫 的手机','',NULL,NULL,NULL,0,'2058918551'),
('4801033134','约瑟夫 的手机','',NULL,NULL,NULL,0,'5200994498'),
('4801033134','约瑟夫 的手机','',NULL,NULL,NULL,0,'6029709718'),
('4801033134','约瑟夫 的手机','',NULL,NULL,NULL,0,'9079691273'),
('4807732359','迪亚 的手机','',NULL,NULL,NULL,0,'6020877537'),
('4807732359','迪亚 的手机','',NULL,NULL,NULL,0,'6029709718'),
('4807732359','迪亚 的手机','',NULL,NULL,NULL,0,'9076482773'),
('5200994498','亚力 的手机','',NULL,NULL,NULL,0,'4807732359'),
('5200994498','亚力 的手机','',NULL,NULL,NULL,0,'5206792450'),
('5200994498','亚力 的手机','',NULL,NULL,NULL,0,'6023092057'),
('5200994498','亚力 的手机','',NULL,NULL,NULL,0,'6025376235'),
('5200994498','亚力 的手机','',NULL,NULL,NULL,0,'9079691273'),
('5203186772','小丑的手机','',NULL,NULL,NULL,0,'4800137041'),
('5203186772','小 的手机','',NULL,NULL,NULL,0,'6029709718'),
('6023092057','亚瑟 的手机','',NULL,NULL,NULL,0,'5200994498'),
('6023092057','亚瑟 的手机','',NULL,NULL,NULL,0,'6029709718'),
('6025376235','罗妮菈。克劳德 的手机','',NULL,NULL,NULL,0,'5200994498'),
('6025376235','罗妮菈。克劳德 的手机','',NULL,NULL,NULL,0,'6029709718'),
('6029709718','谢尔比 的手机','',NULL,NULL,NULL,0,'4800137041'),
('6029709718','谢尔比 的手机','',NULL,NULL,NULL,0,'4801033134'),
('6029709718','谢尔比 的手机','',NULL,NULL,NULL,0,'4807732359'),
('6029709718','谢尔比 的手机','',NULL,NULL,NULL,0,'6023092057'),
('6029709718','谢尔比 的手机',' LANMAO',NULL,NULL,NULL,0,'6025376235'),
('6029709718','谢尔比 的手机','',NULL,NULL,NULL,0,'6029765848'),
('6029709718','谢尔比 的手机','',NULL,NULL,NULL,0,'9076482773'),
('6029709718','谢尔比 的手机','',NULL,NULL,NULL,0,'9079691273'),
('9073255767','卡尔 的手机','',NULL,NULL,NULL,0,'4801033134'),
('9073255767','卡尔 的手机','',NULL,NULL,NULL,0,'5200994498'),
('9076482773','阿伦 的手机','',NULL,NULL,NULL,0,'6029709718'),
('9079691273','布莱恩特 的手机','',NULL,NULL,NULL,0,'4801033134'),
('9079691273','布莱恩特 的手机','',NULL,NULL,NULL,0,'5200994498'),
('9079691273','布莱恩特 的手机','',NULL,NULL,NULL,0,'6029709718');
/*!40000 ALTER TABLE `phone_phone_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_phone_voicemail`
--

DROP TABLE IF EXISTS `phone_phone_voicemail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_phone_voicemail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `caller` varchar(15) NOT NULL,
  `callee` varchar(15) NOT NULL,
  `url` varchar(500) NOT NULL,
  `duration` int(11) NOT NULL,
  `hide_caller_id` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_phone_voicemail`
--

LOCK TABLES `phone_phone_voicemail` WRITE;
/*!40000 ALTER TABLE `phone_phone_voicemail` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_phone_voicemail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_phones`
--

DROP TABLE IF EXISTS `phone_phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_phones` (
  `id` varchar(100) NOT NULL,
  `owner_id` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `pin` varchar(4) DEFAULT NULL,
  `face_id` varchar(100) DEFAULT NULL,
  `settings` longtext DEFAULT NULL,
  `is_setup` tinyint(1) DEFAULT 0,
  `assigned` tinyint(1) DEFAULT 0,
  `battery` int(11) NOT NULL DEFAULT 100,
  `last_seen` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_phones`
--

LOCK TABLES `phone_phones` WRITE;
/*!40000 ALTER TABLE `phone_phones` DISABLE KEYS */;
INSERT INTO `phone_phones` VALUES
('BDN59221','BDN59221','9073255767','卡尔 的手机',NULL,NULL,'{\"name\":\"卡尔 的手机\",\"storage\":{\"total\":128000000,\"used\":8833382.05},\"doNotDisturb\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"Twitter\"]],\"latestVersion\":\"2.1.17\",\"display\":{\"brightness\":1,\"size\":0.7,\"automatic\":false,\"theme\":\"light\"},\"locale\":\"zh-cn\",\"wallpaper\":{\"blur\":false,\"background\":\"cloud8\"},\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"airplaneMode\":false,\"sound\":{\"ringtone\":\"default\",\"texttone\":\"default\",\"silent\":false,\"volume\":0.5},\"security\":{\"pinCode\":false,\"faceId\":false},\"notifications\":[],\"weather\":{\"celcius\":false},\"time\":{\"twelveHourClock\":false},\"version\":\"2.1.17\",\"lockscreen\":{\"color\":\"gradient\",\"layout\":1,\"fontStyle\":1}}',1,0,100,'2025-04-06 10:25:48'),
('CCU80978','CCU80978','2058988224','克莉丝 的手机','5749','CCU80978','{\"phone\":{\"showCallerId\":true},\"storage\":{\"total\":128000000,\"used\":8576331},\"doNotDisturb\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\"]],\"latestVersion\":\"2.1.17\",\"display\":{\"brightness\":1,\"size\":0.7,\"theme\":\"light\",\"automatic\":false},\"locale\":\"zh-cn\",\"wallpaper\":{\"blur\":false,\"background\":\"cloud8\"},\"weather\":{\"celcius\":false},\"sound\":{\"ringtone\":\"default\",\"texttone\":\"default\",\"silent\":false,\"volume\":0.5},\"streamerMode\":false,\"lockscreen\":{\"color\":\"gradient\",\"layout\":1,\"fontStyle\":1},\"airplaneMode\":false,\"name\":\"克莉丝 的手机\",\"time\":{\"twelveHourClock\":false},\"security\":{\"pinCode\":true,\"faceId\":true},\"version\":\"2.1.17\",\"notifications\":[]}',1,0,100,'2025-04-04 10:09:28'),
('CDV27651','CDV27651','2058918551','托尼 的手机','1234','CDV27651','{\"weather\":{\"celcius\":false},\"streamerMode\":false,\"doNotDisturb\":false,\"storage\":{\"used\":8833031,\"total\":128000000},\"version\":\"2.1.17\",\"time\":{\"twelveHourClock\":false},\"notifications\":[],\"display\":{\"brightness\":1,\"automatic\":false,\"theme\":\"dark\",\"size\":0.7},\"lockscreen\":{\"fontStyle\":1,\"layout\":1,\"color\":\"gradient\"},\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"blur\":false,\"background\":\"cloud8\"},\"security\":{\"pinCode\":true,\"faceId\":true},\"airplaneMode\":false,\"sound\":{\"volume\":1,\"texttone\":\"default\",\"silent\":false,\"ringtone\":\"default\"},\"latestVersion\":\"2.1.17\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"Twitter\",\"TikTok\"]],\"name\":\"托尼 的手机\",\"locale\":\"zh-cn\"}',1,0,100,'2025-04-03 11:35:57'),
('ICW34676','ICW34676','9078452467','希尔 的手机',NULL,NULL,'{\"version\":\"2.1.17\",\"wallpaper\":{\"blur\":false,\"background\":\"cloud8\"},\"time\":{\"twelveHourClock\":false},\"streamerMode\":false,\"doNotDisturb\":false,\"weather\":{\"celcius\":false},\"lockscreen\":{\"color\":\"gradient\",\"fontStyle\":1,\"layout\":1},\"name\":\"希尔 的手机\",\"security\":{\"faceId\":false,\"pinCode\":false},\"locale\":\"zh-cn\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"Instagram\",\"YellowPages\",\"MarketPlace\",\"Crypto\",\"TikTok\",\"Twitter\",\"DarkChat\",\"Tinder\"]],\"notifications\":[],\"display\":{\"theme\":\"light\",\"size\":0.7,\"brightness\":1,\"automatic\":false},\"phone\":{\"showCallerId\":true},\"storage\":{\"total\":128000000,\"used\":8576331},\"airplaneMode\":false,\"latestVersion\":\"2.1.17\",\"sound\":{\"texttone\":\"default\",\"silent\":false,\"volume\":0.5,\"ringtone\":\"default\"}}',1,0,100,'2025-04-04 08:54:18'),
('IMN66507','IMN66507','6020877537','马卡斯 的手机','2222','IMN66507','{\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"Crypto\"]],\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"airplaneMode\":false,\"lockscreen\":{\"layout\":1,\"fontStyle\":1,\"color\":\"gradient\"},\"storage\":{\"used\":8576331,\"total\":128000000},\"display\":{\"brightness\":1,\"automatic\":false,\"size\":0.7,\"theme\":\"light\"},\"latestVersion\":\"2.1.17\",\"doNotDisturb\":false,\"sound\":{\"silent\":false,\"ringtone\":\"default\",\"volume\":0.5,\"texttone\":\"default\"},\"phone\":{\"showCallerId\":true},\"notifications\":[],\"name\":\"马卡斯 的手机\",\"locale\":\"zh-cn\",\"weather\":{\"celcius\":false},\"streamerMode\":false,\"version\":\"2.1.17\",\"time\":{\"twelveHourClock\":false},\"security\":{\"pinCode\":true,\"faceId\":true}}',1,0,100,'2025-04-08 12:42:53'),
('JJX03484','JJX03484','5200994498','亚力 的手机',NULL,NULL,'{\"airplaneMode\":false,\"streamerMode\":false,\"latestVersion\":\"2.1.17\",\"sound\":{\"silent\":false,\"texttone\":\"default\",\"volume\":1,\"ringtone\":\"sencha\"},\"name\":\"亚力 的手机\",\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"notifications\":[],\"doNotDisturb\":false,\"locale\":\"zh-cn\",\"storage\":{\"used\":9326394.7,\"total\":128000000},\"weather\":{\"celcius\":false},\"version\":\"2.1.17\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"Twitter\",\"TikTok\",\"MarketPlace\",\"DarkChat\",\"Crypto\"],[\"Instagram\",\"YellowPages\",\"Tinder\"]],\"time\":{\"twelveHourClock\":false},\"display\":{\"size\":0.7,\"theme\":\"dark\",\"brightness\":1,\"automatic\":false},\"security\":{\"faceId\":false,\"pinCode\":false},\"lockscreen\":{\"fontStyle\":1,\"color\":\"gradient\",\"layout\":1},\"phone\":{\"showCallerId\":true}}',1,0,100,'2025-04-08 15:09:12'),
('KZY58745','KZY58745','9079719058',NULL,NULL,NULL,NULL,0,0,100,'2025-04-08 03:03:05'),
('LYX25359','LYX25359','4809588447','艾伦 的手机',NULL,NULL,'{\"phone\":{\"showCallerId\":true},\"storage\":{\"total\":128000000,\"used\":8576331},\"notifications\":[],\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\"]],\"latestVersion\":\"2.1.17\",\"display\":{\"brightness\":1,\"theme\":\"light\",\"automatic\":false,\"size\":0.7},\"locale\":\"zh-cn\",\"wallpaper\":{\"blur\":false,\"background\":\"cloud8\"},\"streamerMode\":false,\"name\":\"艾伦 的手机\",\"doNotDisturb\":false,\"airplaneMode\":false,\"sound\":{\"ringtone\":\"default\",\"silent\":false,\"texttone\":\"default\",\"volume\":0.5},\"weather\":{\"celcius\":false},\"time\":{\"twelveHourClock\":false},\"security\":{\"pinCode\":false,\"faceId\":false},\"version\":\"2.1.17\",\"lockscreen\":{\"layout\":1,\"color\":\"gradient\",\"fontStyle\":1}}',1,0,100,'2025-04-05 12:51:01'),
('MTK83241','MTK83241','5204514201',NULL,NULL,NULL,NULL,0,0,100,'2025-03-31 14:59:02'),
('OZH56762','OZH56762','4807732359','迪亚 的手机','5749','OZH56762','{\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"doNotDisturb\":false,\"security\":{\"pinCode\":true,\"faceId\":true},\"display\":{\"size\":0.7,\"theme\":\"dark\",\"brightness\":1,\"automatic\":false},\"name\":\"迪亚 的手机\",\"latestVersion\":\"2.1.17\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"TikTok\"]],\"time\":{\"twelveHourClock\":false},\"notifications\":[],\"lockscreen\":{\"color\":\"gradient\",\"layout\":1,\"fontStyle\":1},\"phone\":{\"showCallerId\":true},\"storage\":{\"total\":128000000,\"used\":8805631.26},\"locale\":\"zh-cn\",\"weather\":{\"celcius\":false},\"airplaneMode\":false,\"version\":\"2.1.17\",\"sound\":{\"ringtone\":\"default\",\"volume\":0.5,\"texttone\":\"default\",\"silent\":false},\"streamerMode\":false}',1,0,100,'2025-04-08 11:29:14'),
('QHK11612','QHK11612','5203186772','小 的手机',NULL,NULL,'{\"lockscreen\":{\"layout\":1,\"color\":\"gradient\",\"fontStyle\":1},\"security\":{\"pinCode\":false,\"faceId\":false},\"notifications\":[],\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"Crypto\",\"Twitter\",\"TikTok\",\"MarketPlace\"]],\"latestVersion\":\"2.1.17\",\"display\":{\"brightness\":1,\"theme\":\"light\",\"size\":0.7,\"automatic\":false},\"locale\":\"zh-cn\",\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"streamerMode\":false,\"name\":\"小 的手机\",\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"sound\":{\"ringtone\":\"default\",\"silent\":false,\"texttone\":\"default\",\"volume\":0.5},\"doNotDisturb\":false,\"storage\":{\"total\":128000000,\"used\":9072570.260000002},\"time\":{\"twelveHourClock\":false},\"version\":\"2.1.17\",\"phone\":{\"showCallerId\":true}}',1,0,100,'2025-04-05 15:40:41'),
('QLU88274','QLU88274','5206792450','杰罗姆 的手机','0808','QLU88274','{\"phone\":{\"showCallerId\":true},\"security\":{\"pinCode\":true,\"faceId\":true},\"doNotDisturb\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"Twitter\",\"Tinder\",\"Instagram\",\"YellowPages\",\"TikTok\",\"MarketPlace\",\"Crypto\",\"DarkChat\"]],\"latestVersion\":\"2.1.17\",\"display\":{\"brightness\":1,\"automatic\":false,\"theme\":\"light\",\"size\":0.7},\"locale\":\"zh-cn\",\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"streamerMode\":false,\"storage\":{\"total\":128000000,\"used\":8802275.189999998},\"sound\":{\"ringtone\":\"default\",\"texttone\":\"default\",\"silent\":false,\"volume\":0.5},\"lockscreen\":{\"layout\":1,\"color\":\"gradient\",\"fontStyle\":1},\"airplaneMode\":false,\"time\":{\"twelveHourClock\":false},\"weather\":{\"celcius\":false},\"notifications\":[],\"version\":\"2.1.17\",\"name\":\"杰罗姆 的手机\"}',1,0,100,'2025-04-08 12:11:49'),
('RHT93297','RHT93297','6023092057','亚瑟 的手机','0000',NULL,'{\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"locale\":\"zh-cn\",\"doNotDisturb\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"Twitter\",\"MarketPlace\",\"TikTok\"]],\"streamerMode\":false,\"lockscreen\":{\"layout\":1,\"fontStyle\":1,\"color\":\"gradient\"},\"sound\":{\"texttone\":\"default\",\"volume\":0.5,\"ringtone\":\"default\",\"silent\":false},\"latestVersion\":\"2.1.17\",\"phone\":{\"showCallerId\":true},\"time\":{\"twelveHourClock\":false},\"security\":{\"faceId\":false,\"pinCode\":true},\"display\":{\"theme\":\"light\",\"automatic\":false,\"brightness\":1,\"size\":0.7},\"weather\":{\"celcius\":false},\"airplaneMode\":false,\"name\":\"亚瑟 的手机\",\"storage\":{\"total\":128000000,\"used\":8799420.13},\"notifications\":[],\"version\":\"2.1.17\"}',1,0,100,'2025-04-08 14:32:50'),
('UUU52761','UUU52761','6025376235','罗妮菈。克劳德 的手机','2005','UUU52761','{\"streamerMode\":false,\"weather\":{\"celcius\":false},\"doNotDisturb\":false,\"latestVersion\":\"2.1.17\",\"name\":\"罗妮菈。克劳德 的手机\",\"storage\":{\"total\":128000000,\"used\":8799906.360000002},\"version\":\"2.1.17\",\"locale\":\"zh-cn\",\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"TikTok\",\"Twitter\"]],\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"blur\":false,\"background\":\"underwater\"},\"notifications\":[],\"airplaneMode\":false,\"security\":{\"pinCode\":true,\"faceId\":true},\"display\":{\"size\":0.7,\"brightness\":1,\"theme\":\"dark\",\"frameColor\":\"#318133\",\"automatic\":false},\"time\":{\"twelveHourClock\":false},\"lockscreen\":{\"color\":\"gradient\",\"layout\":1,\"fontStyle\":1},\"sound\":{\"texttone\":\"default\",\"volume\":0.45,\"silent\":false,\"ringtone\":\"default\"}}',1,0,100,'2025-04-06 12:05:44'),
('UXH40238','UXH40238','4801033134','约瑟夫 的手机','1357','UXH40238','{\"security\":{\"faceId\":true,\"pinCode\":true},\"version\":\"2.1.17\",\"phone\":{\"showCallerId\":true},\"locale\":\"zh-cn\",\"latestVersion\":\"2.1.17\",\"display\":{\"size\":0.7,\"theme\":\"dark\",\"automatic\":false,\"brightness\":1},\"notifications\":[],\"weather\":{\"celcius\":false},\"wallpaper\":{\"blur\":false,\"background\":\"cloud8\"},\"lockscreen\":{\"layout\":1,\"fontStyle\":1,\"color\":\"gradient\"},\"doNotDisturb\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"Twitter\",\"TikTok\"]],\"name\":\"约瑟夫 的手机\",\"airplaneMode\":false,\"time\":{\"twelveHourClock\":false},\"sound\":{\"volume\":0.5,\"ringtone\":\"default\",\"silent\":false,\"texttone\":\"default\"},\"storage\":{\"total\":128000000,\"used\":8800170.210000003},\"streamerMode\":false}',1,0,100,'2025-04-07 08:25:54'),
('VCV61562','VCV61562','9079691273','布莱恩特 的手机',NULL,NULL,'{\"weather\":{\"celcius\":false},\"streamerMode\":false,\"doNotDisturb\":false,\"storage\":{\"used\":8576331,\"total\":128000000},\"version\":\"2.1.17\",\"time\":{\"twelveHourClock\":false},\"notifications\":[],\"display\":{\"automatic\":false,\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"lockscreen\":{\"layout\":1,\"fontStyle\":1,\"color\":\"gradient\"},\"phone\":{\"showCallerId\":true},\"wallpaper\":{\"blur\":false,\"background\":\"cloud8\"},\"security\":{\"pinCode\":false,\"faceId\":false},\"sound\":{\"volume\":0.5,\"texttone\":\"default\",\"ringtone\":\"default\",\"silent\":false},\"name\":\"布莱恩特 的手机\",\"latestVersion\":\"2.1.17\",\"airplaneMode\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\"]],\"locale\":\"zh-cn\"}',1,0,100,'2025-04-04 15:38:45'),
('VQR49601','VQR49601','9076482773','阿伦 的手机','1818','VQR49601','{\"lockscreen\":{\"color\":\"gradient\",\"fontStyle\":1,\"layout\":1},\"streamerMode\":false,\"airplaneMode\":false,\"storage\":{\"used\":8832554.320000003,\"total\":128000000},\"name\":\"阿伦 的手机\",\"notifications\":[],\"phone\":{\"showCallerId\":true},\"latestVersion\":\"2.1.17\",\"locale\":\"zh-cn\",\"time\":{\"twelveHourClock\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"TikTok\",\"Instagram\",\"Twitter\",\"Crypto\",\"DarkChat\",\"YellowPages\",\"MarketPlace\",\"Tinder\"]],\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"security\":{\"pinCode\":true,\"faceId\":true},\"version\":\"2.1.17\",\"weather\":{\"celcius\":false},\"sound\":{\"texttone\":\"default\",\"silent\":false,\"ringtone\":\"default\",\"volume\":0.5},\"doNotDisturb\":false,\"display\":{\"theme\":\"light\",\"size\":0.7,\"brightness\":1,\"automatic\":false}}',1,0,100,'2025-04-08 08:58:34'),
('WYU58551','WYU58551','6029765848','摩根 的手机',NULL,NULL,'{\"time\":{\"twelveHourClock\":false},\"locale\":\"zh-cn\",\"phone\":{\"showCallerId\":true},\"display\":{\"brightness\":1,\"automatic\":false,\"size\":0.7,\"theme\":\"dark\"},\"sound\":{\"silent\":false,\"ringtone\":\"default\",\"texttone\":\"default\",\"volume\":0.5},\"doNotDisturb\":false,\"name\":\"摩根 的手机\",\"security\":{\"faceId\":false,\"pinCode\":false},\"version\":\"2.1.17\",\"latestVersion\":\"2.1.17\",\"lockscreen\":{\"fontStyle\":1,\"color\":\"gradient\",\"layout\":1},\"storage\":{\"used\":8576331,\"total\":128000000},\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"weather\":{\"celcius\":false},\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"Twitter\",\"Instagram\"]],\"streamerMode\":false,\"airplaneMode\":false,\"notifications\":[]}',1,0,100,'2025-04-05 13:13:21'),
('XRR77997','XRR77997','6029709718','谢尔比 的手机','7777','XRR77997','{\"weather\":{\"celcius\":false},\"lockscreen\":{\"color\":\"gradient\",\"layout\":1,\"fontStyle\":1},\"sound\":{\"texttone\":\"default\",\"ringtone\":\"default\",\"volume\":0.5,\"silent\":false},\"wallpaper\":{\"background\":\"wallpaper3\",\"blur\":false},\"security\":{\"pinCode\":true,\"faceId\":true},\"latestVersion\":\"2.1.17\",\"streamerMode\":false,\"phone\":{\"showCallerId\":true},\"time\":{\"twelveHourClock\":false},\"locale\":\"zh-cn\",\"name\":\"谢尔比 的手机\",\"doNotDisturb\":false,\"notifications\":[],\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"TikTok\",\"Twitter\"]],\"storage\":{\"used\":8826521.440000005,\"total\":128000000},\"version\":\"2.1.17\",\"display\":{\"brightness\":1,\"theme\":\"dark\",\"frameColor\":\"#465281\",\"size\":0.7,\"automatic\":false},\"airplaneMode\":false}',1,0,100,'2025-04-09 02:08:08'),
('YBN39722','YBN39722','9075569526','司 的手机',NULL,NULL,'{\"streamerMode\":false,\"display\":{\"automatic\":false,\"brightness\":1,\"theme\":\"light\",\"size\":0.7},\"phone\":{\"showCallerId\":true},\"name\":\"司 的手机\",\"version\":\"2.1.17\",\"locale\":\"zh-cn\",\"notifications\":[],\"doNotDisturb\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\"]],\"airplaneMode\":false,\"weather\":{\"celcius\":false},\"lockscreen\":{\"layout\":1,\"fontStyle\":1,\"color\":\"gradient\"},\"sound\":{\"silent\":false,\"ringtone\":\"default\",\"volume\":0.5,\"texttone\":\"default\"},\"latestVersion\":\"2.1.17\",\"time\":{\"twelveHourClock\":false},\"wallpaper\":{\"background\":\"cloud8\",\"blur\":false},\"storage\":{\"total\":128000000,\"used\":8576331},\"security\":{\"faceId\":false,\"pinCode\":false}}',1,0,100,'2025-04-07 15:54:43'),
('YBR81778','YBR81778','4800137041','马克 的手机','0000',NULL,'{\"time\":{\"twelveHourClock\":false},\"storage\":{\"total\":128000000,\"used\":8799331},\"doNotDisturb\":false,\"apps\":[[\"Phone\",\"Messages\",\"Camera\",\"Photos\"],[\"Settings\",\"AppStore\",\"Clock\",\"Mail\",\"Weather\",\"Wallet\",\"Garage\",\"Home\",\"Maps\",\"Notes\",\"Calculator\",\"VoiceMemo\",\"Music\",\"Services\",\"TikTok\",\"MarketPlace\",\"Twitter\",\"Crypto\"]],\"latestVersion\":\"2.1.17\",\"display\":{\"brightness\":1,\"size\":0.7,\"automatic\":false,\"theme\":\"light\"},\"locale\":\"zh-cn\",\"wallpaper\":{\"blur\":false,\"background\":\"cloud8\"},\"streamerMode\":false,\"security\":{\"pinCode\":true,\"faceId\":false},\"sound\":{\"ringtone\":\"default\",\"silent\":false,\"texttone\":\"default\",\"volume\":0.5},\"notifications\":[],\"lockscreen\":{\"layout\":1,\"color\":\"gradient\",\"fontStyle\":1},\"airplaneMode\":false,\"phone\":{\"showCallerId\":true},\"name\":\"马克 的手机\",\"version\":\"2.1.17\",\"weather\":{\"celcius\":false}}',1,0,100,'2025-04-08 11:58:56');
/*!40000 ALTER TABLE `phone_phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_photo_album_photos`
--

DROP TABLE IF EXISTS `phone_photo_album_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_photo_album_photos` (
  `album_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  PRIMARY KEY (`album_id`,`photo_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `phone_photo_album_photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `phone_photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_photo_album_photos_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `phone_photos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_photo_album_photos`
--

LOCK TABLES `phone_photo_album_photos` WRITE;
/*!40000 ALTER TABLE `phone_photo_album_photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_photo_album_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_photo_albums`
--

DROP TABLE IF EXISTS `phone_photo_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_photo_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_photo_albums_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_photo_albums`
--

LOCK TABLES `phone_photo_albums` WRITE;
/*!40000 ALTER TABLE `phone_photo_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_photo_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_photos`
--

DROP TABLE IF EXISTS `phone_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `link` varchar(500) NOT NULL,
  `is_video` tinyint(1) DEFAULT 0,
  `size` float NOT NULL DEFAULT 0,
  `metadata` varchar(20) DEFAULT NULL,
  `is_favourite` tinyint(1) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_photos_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_photos`
--

LOCK TABLES `phone_photos` WRITE;
/*!40000 ALTER TABLE `phone_photos` DISABLE KEYS */;
INSERT INTO `phone_photos` VALUES
(1,'6029709718','https://r2.fivemanage.com/image/Y8gc6ikZs9Fx.webp',0,114.9,'selfie',0,'2025-03-29 14:12:27'),
(4,'6029709718','https://r2.fivemanage.com/video/WY4q3FJucPlo.mp4',1,4936.96,NULL,0,'2025-03-29 14:56:53'),
(5,'6023092057','https://r2.fivemanage.com/image/QVe59FOoeECK.webp',0,89.13,'selfie',0,'2025-03-30 06:38:00'),
(6,'4807732359','https://r2.fivemanage.com/image/V8z7nMxvkVvh.webp',0,193.8,'selfie',0,'2025-03-30 08:52:49'),
(7,'4807732359','https://r2.fivemanage.com/image/Oe4oX4fkHUhn.webp',0,196.44,'selfie',0,'2025-03-30 08:53:22'),
(8,'4807732359','https://r2.fivemanage.com/video/r4pHvi4hvswg.mp4',1,0,NULL,0,'2025-03-30 11:55:54'),
(9,'5200994498','https://r2.fivemanage.com/image/BHfs6VMoIRrB.webp',0,288.61,NULL,0,'2025-03-30 13:47:09'),
(10,'5200994498','https://r2.fivemanage.com/image/UWcqWoBN2LXH.webp',0,270.78,NULL,0,'2025-03-30 14:00:29'),
(11,'6029709718','https://r2.fivemanage.com/image/RStO90k4roxz.webp',0,91.96,'selfie',0,'2025-03-30 17:41:26'),
(12,'6029709718','https://r2.fivemanage.com/image/0I6Z1UYzRExW.webp',0,104.89,'selfie',0,'2025-03-30 18:08:33'),
(13,'6029709718','https://r2.fivemanage.com/image/UtGNcbZGPA0U.webp',0,106.5,'selfie',0,'2025-03-30 18:08:36'),
(14,'6029709718','https://r2.fivemanage.com/image/Y8P6Kw0hCR6g.webp',0,104.8,'selfie',0,'2025-03-30 18:09:09'),
(15,'4801033134','https://r2.fivemanage.com/image/AbfNEbOWCMc2.webp',0,232.83,NULL,0,'2025-03-31 05:14:23'),
(16,'5200994498','https://r2.fivemanage.com/image/he6jftWzPGbs.webp',0,90.46,NULL,0,'2025-03-31 06:30:39'),
(17,'4801033134','https://r2.fivemanage.com/image/AbfNEbOWCMc2.webp',0,232.83,'import',0,'2025-03-31 06:31:09'),
(18,'4801033134','https://r2.fivemanage.com/image/he6jftWzPGbs.webp',0,90.46,'import',0,'2025-03-31 06:31:13'),
(19,'5200994498','https://r2.fivemanage.com/video/NfLbUeANjnwj.mp4',1,0,NULL,0,'2025-03-31 06:31:49'),
(20,'4801033134','https://r2.fivemanage.com/image/he6jftWzPGbs.webp',0,90.46,'import',0,'2025-03-31 06:32:57'),
(21,'5200994498','https://r2.fivemanage.com/image/byquNKnERa3F.webp',0,100.24,NULL,0,'2025-03-31 07:33:53'),
(22,'5200994498','https://r2.fivemanage.com/image/50OcOcIoQZVQ.webp',0,95.19,'selfie',0,'2025-03-31 07:35:19'),
(23,'9079691273','https://r2.fivemanage.com/image/794HVtL8ZX5u.webp',0,137.72,'selfie',0,'2025-03-31 08:00:48'),
(24,'9076482773','https://r2.fivemanage.com/image/jTy0ORMAeIuu.webp',0,75.14,'selfie',0,'2025-03-31 10:50:48'),
(25,'5200994498','https://r2.fivemanage.com/video/rcT7NseqtwIG.mp4',1,0,NULL,0,'2025-03-31 10:51:10'),
(26,'5200994498','https://r2.fivemanage.com/video/oEzxKiA0GAAc.mp4',1,1099.13,NULL,0,'2025-03-31 10:51:30'),
(27,'5200994498','https://r2.fivemanage.com/image/vhR1cZx30jKR.webp',0,103.33,NULL,0,'2025-03-31 11:06:21'),
(28,'9073255767','https://r2.fivemanage.com/image/rIOuj1uhd6qS.webp',0,77.82,'selfie',0,'2025-03-31 12:31:54'),
(29,'6029709718','https://r2.fivemanage.com/image/ASgXPmZzjORL.webp',0,176.23,NULL,0,'2025-03-31 13:16:51'),
(30,'9076482773','https://r2.fivemanage.com/image/ASgXPmZzjORL.webp',0,176.23,'import',0,'2025-03-31 13:17:12'),
(31,'5206792450','https://r2.fivemanage.com/image/S51Q4j3hKJIW.webp',0,312.91,NULL,0,'2025-03-31 13:51:02'),
(32,'5206792450','https://r2.fivemanage.com/image/vXfPRJU9tTMx.webp',0,393.67,NULL,0,'2025-03-31 13:51:35'),
(33,'5206792450','https://r2.fivemanage.com/image/skTRLTGDcPL2.webp',0,119.67,'selfie',0,'2025-03-31 13:52:18'),
(34,'5206792450','https://r2.fivemanage.com/image/C0SFXmzuImB7.webp',0,246.06,NULL,0,'2025-03-31 13:52:48'),
(35,'5206792450','https://r2.fivemanage.com/video/mvQdN60q8fy3.webm',1,1088.6,NULL,0,'2025-03-31 13:53:17'),
(36,'5200994498','https://r2.fivemanage.com/image/N4GV8cmb3FSG.webp',0,158.09,NULL,0,'2025-03-31 13:53:39'),
(37,'5206792450','https://r2.fivemanage.com/image/OzHbfpZAuBQC.webp',0,153.31,'selfie',0,'2025-03-31 14:44:08'),
(38,'5206792450','https://r2.fivemanage.com/image/sJIw04p9YFft.webp',0,158.15,'selfie',0,'2025-03-31 14:44:26'),
(39,'5200994498','https://r2.fivemanage.com/image/fzDfP5qUDZEg.webp',0,127.59,NULL,0,'2025-03-31 14:46:16'),
(40,'5206792450','https://r2.fivemanage.com/image/GeOZEKilrVvP.webp',0,254.38,'selfie',0,'2025-03-31 14:46:40'),
(41,'5206792450','https://r2.fivemanage.com/image/SsW1sCvKlQBo.webp',0,172.54,NULL,0,'2025-03-31 14:49:20'),
(42,'5206792450','https://r2.fivemanage.com/image/fAYwIlGYgwQO.webp',0,257.45,NULL,0,'2025-03-31 14:49:28'),
(43,'5206792450','https://r2.fivemanage.com/image/1WaNCOQZsq6t.webp',0,152.17,'selfie',0,'2025-03-31 14:49:36'),
(44,'4801033134','https://r2.fivemanage.com/image/sU0jUHVWXpHw.webp',0,192.63,'selfie',0,'2025-03-31 14:50:09'),
(45,'9073255767','https://r2.fivemanage.com/image/CZiXFmZry2hW.webp',0,133.42,NULL,0,'2025-03-31 14:50:39'),
(46,'5200994498','https://r2.fivemanage.com/image/EF9IQbLiOVD2.webp',0,135.64,NULL,0,'2025-03-31 14:50:40'),
(47,'9073255767','https://r2.fivemanage.com/image/pKGo2Zn0xsDZ.webp',0,139.81,NULL,0,'2025-03-31 14:50:43'),
(48,'9076482773','https://r2.fivemanage.com/image/2muIMFVCeVwL.webp',0,213.97,NULL,0,'2025-03-31 17:21:35'),
(49,'5203186772','https://r2.fivemanage.com/image/Zaix2yqjlet5.webp',0,82.5,NULL,0,'2025-03-31 17:28:06'),
(50,'6029709718','https://r2.fivemanage.com/image/5C5P0F7UmAPC.webp',0,301.73,NULL,0,'2025-03-31 17:28:32'),
(51,'5203186772','https://r2.fivemanage.com/image/d2RZtkyzHKYM.webp',0,202.88,NULL,0,'2025-03-31 17:28:38'),
(52,'6029709718','https://r2.fivemanage.com/image/Aeq1mNILgUUX.webp',0,321.7,NULL,0,'2025-03-31 17:28:50'),
(53,'5203186772','https://r2.fivemanage.com/image/iw7Ztdw9MsQ2.webp',0,208.65,NULL,0,'2025-03-31 17:31:18'),
(54,'6029709718','https://r2.fivemanage.com/video/hJkrLeGPkeYj.webm',1,7021.18,NULL,0,'2025-03-31 17:38:54'),
(55,'9076482773','https://r2.fivemanage.com/video/y8v0rOuYEoKF.webm',1,15664.6,NULL,0,'2025-03-31 17:39:22'),
(56,'5203186772','https://r2.fivemanage.com/video/hJkrLeGPkeYj.webm',1,7021.18,'import',0,'2025-03-31 17:39:44'),
(57,'9076482773','https://r2.fivemanage.com/video/hJkrLeGPkeYj.webm',1,7021.18,'import',0,'2025-03-31 17:39:45'),
(58,'5203186772','https://r2.fivemanage.com/video/BHGEJQpOMVIV.webm',1,8774.32,NULL,0,'2025-03-31 17:43:10'),
(59,'5203186772','https://r2.fivemanage.com/image/phSjmbhok4h9.webp',0,249.73,NULL,0,'2025-03-31 17:43:51'),
(60,'6029709718','https://r2.fivemanage.com/video/BHGEJQpOMVIV.webm',1,8774.32,'import',0,'2025-03-31 17:45:35'),
(61,'6029709718','https://r2.fivemanage.com/image/phSjmbhok4h9.webp',0,249.73,'import',0,'2025-03-31 17:45:51'),
(62,'9076482773','https://r2.fivemanage.com/image/phSjmbhok4h9.webp',0,249.73,'import',0,'2025-03-31 17:47:09'),
(63,'9076482773','https://r2.fivemanage.com/video/BHGEJQpOMVIV.webm',1,8774.32,'import',0,'2025-03-31 17:47:52'),
(64,'9076482773','https://r2.fivemanage.com/image/Rk3Mz2Yda7WP.webp',0,544.53,NULL,0,'2025-03-31 17:48:42'),
(65,'9076482773','https://r2.fivemanage.com/image/kvbhbsRgGEaj.webp',0,503.64,NULL,0,'2025-03-31 17:49:40'),
(66,'4807732359','https://r2.fivemanage.com/video/kG9aiSPedx0S.mp4',1,5910.02,NULL,0,'2025-04-02 11:32:13'),
(67,'5200994498','https://r2.fivemanage.com/image/bCqSsXJpAyqc.webp',0,68.5,NULL,0,'2025-04-02 13:19:32'),
(68,'5200994498','https://r2.fivemanage.com/image/BZgaX2ELSVKf.webp',0,146.02,NULL,0,'2025-04-03 09:30:44'),
(69,'5206792450','https://r2.fivemanage.com/video/aTLUHVC42owM.mp4',1,2859.86,NULL,0,'2025-04-04 10:10:04'),
(70,'5206792450','https://r2.fivemanage.com/image/DdMdB0Lwb6y8.webp',0,349.43,'selfie',0,'2025-04-04 10:34:25'),
(72,'5206792450','https://r2.fivemanage.com/video/SUxtuhiNIs4O.mp4',1,0,NULL,0,'2025-04-04 13:55:35'),
(73,'5206792450','https://r2.fivemanage.com/image/CSYenBAV9vsF.webp',0,490.27,'selfie',0,'2025-04-04 13:55:41'),
(74,'5206792450','https://r2.fivemanage.com/video/HvVyIe8dgHNM.mp4',1,18138.9,NULL,0,'2025-04-04 13:58:00'),
(75,'5206792450','https://r2.fivemanage.com/video/PJ0RKfCqA9hy.mp4',1,0,NULL,0,'2025-04-04 13:58:48'),
(76,'5206792450','https://r2.fivemanage.com/image/S1bwT9tJWW6h.webp',0,161.18,NULL,0,'2025-04-04 13:58:55'),
(77,'5206792450','https://r2.fivemanage.com/image/mfSkQgj8ZhQ8.webp',0,484.08,NULL,0,'2025-04-04 13:59:07'),
(78,'5206792450','https://r2.fivemanage.com/image/FpDNHpHbd9YS.webp',0,466.37,NULL,0,'2025-04-04 13:59:23'),
(79,'5206792450','https://r2.fivemanage.com/video/EJGsdQHPCCTO.mp4',1,4080.3,NULL,0,'2025-04-04 13:59:49'),
(80,'6025376235','https://r2.fivemanage.com/image/WxoaEKuww2h1.webp',0,125.08,NULL,0,'2025-04-04 14:02:27'),
(81,'5206792450','https://r2.fivemanage.com/video/cA6rZnu0rkO6.mp4',1,7237.01,NULL,0,'2025-04-04 14:04:25'),
(82,'5206792450','https://r2.fivemanage.com/image/7Q0FlX2wa9Xk.webp',0,356.66,'selfie',0,'2025-04-04 14:04:32'),
(83,'5206792450','https://r2.fivemanage.com/image/dpqsXOENJRR6.webp',0,511.25,NULL,0,'2025-04-04 14:04:43'),
(84,'6029709718','https://r2.fivemanage.com/image/72ZhLeYfJRey.webp',0,167.24,'selfie',0,'2025-04-04 14:05:04'),
(85,'5200994498','https://r2.fivemanage.com/image/mBGdsJU7Ut0q.webp',0,182.49,NULL,0,'2025-04-05 06:39:06'),
(87,'6029709718','https://r2.fivemanage.com/image/N8ss1n5MXyZs.webp',0,278.27,'selfie',0,'2025-04-05 13:42:23'),
(88,'6029709718','https://r2.fivemanage.com/image/9CbTotghHju9.webp',0,324.71,NULL,0,'2025-04-05 13:42:29'),
(89,'6029709718','https://r2.fivemanage.com/image/mrENy1eSDx5G.webp',0,303.52,'selfie',0,'2025-04-05 13:44:14'),
(90,'6029709718','https://r2.fivemanage.com/image/f2RM9TEKJBE0.webp',0,306.9,'selfie',0,'2025-04-05 13:44:35'),
(92,'6025376235','https://r2.fivemanage.com/image/Zgjzb9cVjp5u.webp',0,108.73,NULL,0,'2025-04-05 15:05:09'),
(93,'6029709718','https://r2.fivemanage.com/image/nFjGjpP52unq.webp',0,190.88,'selfie',0,'2025-04-06 15:40:30'),
(94,'6029709718','https://r2.fivemanage.com/image/ihmwgtviXzBY.webp',0,246.18,'selfie',0,'2025-04-06 15:40:41'),
(95,'6029709718','https://r2.fivemanage.com/image/OZEaIIfCzd23.webp',0,292.61,'selfie',0,'2025-04-06 15:40:44'),
(96,'5200994498','https://r2.fivemanage.com/video/3SvLJky13A2S.mp4',1,197.63,NULL,0,'2025-04-08 08:28:50');
/*!40000 ALTER TABLE `phone_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_services_channels`
--

DROP TABLE IF EXISTS `phone_services_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_services_channels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `company` varchar(50) NOT NULL,
  `last_message` varchar(100) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_services_channels`
--

LOCK TABLES `phone_services_channels` WRITE;
/*!40000 ALTER TABLE `phone_services_channels` DISABLE KEYS */;
INSERT INTO `phone_services_channels` VALUES
(1,'4801033134','police',NULL,'2025-03-31 08:55:01'),
(2,'4800137041','ambulance',NULL,'2025-04-01 13:08:25'),
(3,'6029709718','ambulance','市民求救:救命','2025-04-05 15:19:18'),
(4,'6020877537','ambulance','市民求救:sios','2025-04-07 08:30:51'),
(5,'5200994498','ambulance','市民求救:111','2025-04-08 14:13:47'),
(6,'5200994498','mechanic',NULL,'2025-04-05 08:42:58'),
(7,'4801033134','ambulance','市民求救:1','2025-04-05 13:16:53'),
(8,'5203186772','ambulance','市民求救:7228','2025-04-05 15:44:21'),
(9,'9073255767','ambulance','市民求救:dwd ','2025-04-06 11:47:46'),
(10,'5200994498','police',NULL,'2025-04-08 12:11:06');
/*!40000 ALTER TABLE `phone_services_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_services_messages`
--

DROP TABLE IF EXISTS `phone_services_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_services_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) unsigned NOT NULL,
  `sender` varchar(15) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `x_pos` int(11) DEFAULT NULL,
  `y_pos` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_services_messages_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_services_channels` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_services_messages`
--

LOCK TABLES `phone_services_messages` WRITE;
/*!40000 ALTER TABLE `phone_services_messages` DISABLE KEYS */;
INSERT INTO `phone_services_messages` VALUES
(1,3,'6029709718','市民求救:嘻嘻',-1186,-446,'2025-04-04 21:55:12'),
(2,3,'6029709718','市民求救:哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇哇大无畏1',238,-596,'2025-04-04 22:14:19'),
(3,3,'6029709718','市民求救:111',236,-609,'2025-04-04 22:15:02'),
(4,3,'6029709718','市民求救:11',226,-613,'2025-04-04 22:17:23'),
(5,4,'6020877537','市民求救:sos',-84,-818,'2025-04-05 05:43:19'),
(6,4,'6020877537','市民求救:sos',-139,-837,'2025-04-05 05:44:13'),
(7,5,'5200994498','市民求救:111',-144,-806,'2025-04-05 05:49:06'),
(8,4,'6020877537','市民求救:sos',-159,-932,'2025-04-05 05:56:25'),
(9,4,'6020877537','市民求救:dsososoada',394,-954,'2025-04-05 06:03:29'),
(10,4,'6020877537','市民求救:sos',405,-954,'2025-04-05 06:04:53'),
(11,4,'6020877537','市民求救:sos',404,-897,'2025-04-05 06:11:11'),
(12,4,'6020877537','市民求救:sos',403,-830,'2025-04-05 06:16:06'),
(13,5,'5200994498','市民求救:1',295,-658,'2025-04-05 06:24:49'),
(14,4,'6020877537','市民求救:sos',411,-981,'2025-04-05 08:21:34'),
(15,5,'5200994498','市民求救:111',2752,3463,'2025-04-05 08:40:12'),
(16,7,'4801033134','市民求救:111',-78,-817,'2025-04-05 12:53:33'),
(17,7,'4801033134','市民求救:jiu',-140,-862,'2025-04-05 12:55:44'),
(18,7,'4801033134','市民求救:1',442,-1000,'2025-04-05 13:16:53'),
(19,3,'6029709718','市民求救:救命',406,-932,'2025-04-05 15:19:18'),
(20,8,'5203186772','市民求救:7228',-687,-199,'2025-04-05 15:44:21'),
(21,4,'6020877537','市民求救:sos',447,-1023,'2025-04-06 05:45:18'),
(22,5,'5200994498','市民求救:111',481,-1008,'2025-04-06 07:42:51'),
(23,5,'5200994498','市民求救:1111111',479,-1008,'2025-04-06 07:43:17'),
(24,9,'9073255767','市民求救:SOS',408,-1000,'2025-04-06 10:44:40'),
(25,9,'9073255767','市民求救:eqwe',449,-1046,'2025-04-06 11:15:43'),
(26,9,'9073255767','市民求救:dwd ',215,-860,'2025-04-06 11:47:46'),
(27,4,'6020877537','市民求救:SOS',398,-1056,'2025-04-06 12:15:36'),
(28,4,'6020877537','市民求救:sos',-1093,4910,'2025-04-06 15:36:00'),
(29,4,'6020877537','市民求救:sos',381,-905,'2025-04-06 16:13:29'),
(30,4,'6020877537','市民求救:sos',404,-945,'2025-04-07 08:16:37'),
(31,7,'4801033134','市民求救:1',1008,-130,'2025-04-07 08:26:37'),
(32,4,'6020877537','市民求救:sios',974,-132,'2025-04-07 08:30:51'),
(33,5,'5200994498','市民求救:111',347,-1898,'2025-04-08 14:13:47');
/*!40000 ALTER TABLE `phone_services_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tiktok_accounts`
--

DROP TABLE IF EXISTS `phone_tiktok_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_accounts` (
  `name` varchar(30) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `like_count` int(11) NOT NULL DEFAULT 0,
  `video_count` int(11) NOT NULL DEFAULT 0,
  `twitter` varchar(20) DEFAULT NULL,
  `instagram` varchar(20) DEFAULT NULL,
  `show_likes` tinyint(1) DEFAULT 1,
  `phone_number` varchar(15) NOT NULL,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_tiktok_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_accounts`
--

LOCK TABLES `phone_tiktok_accounts` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_accounts` DISABLE KEYS */;
INSERT INTO `phone_tiktok_accounts` VALUES
('zhanmusi',NULL,NULL,'123','$2a$11$t3BiCHUaVRI3uSm.CmjjJeXXAIUaP6wqNxwFL5FOhCn2xLk7N0McG',0,0,0,2,1,NULL,NULL,1,'4807732359','2025-03-30 11:55:03'),
('1',NULL,NULL,'1234','$2a$11$CvmmkaQmXoCI24zl571YPeIt49VWSDAPM6M41z.HB6Rw0PPmotkrm',0,0,1,2,3,NULL,NULL,1,'5200994498','2025-03-31 05:14:05'),
('LONELY',NULL,NULL,'lonely','$2a$11$iG6iT1T6Uur.eOG57rnKfue/MR268c6KOrNm2th.he3Qmapeb/uRG',0,0,0,0,0,NULL,NULL,1,'6025376235','2025-04-05 06:48:47'),
('马克康格里',NULL,'https://r2.fivemanage.com/image/QVe59FOoeECK.webp','mo123','$2a$11$uOOisjiBJVmLEnczxw37CuHZywywwNBFb9Qb8ZjJojgCF5lr0iznq',0,0,0,0,0,NULL,NULL,0,'6023092057','2025-03-30 06:35:50'),
('谢尔比 邦德',NULL,NULL,'rainbowkv','$2a$11$H2xlWzPMZetufYzdP5x9ZeLjqegVMWW1k4sUXwCWsomtF4926W3gm',0,1,0,6,1,NULL,NULL,1,'6029709718','2025-03-29 15:04:14'),
('阿伦勒布朗',NULL,NULL,'richyoung','$2a$11$/NspUorBRd36lfYifUXVoeBTuMhnne9K2AU7o4L2gk0ti/0Cp2HFu',0,0,0,0,0,NULL,NULL,1,'9076482773','2025-03-30 08:11:10'),
('杰罗姆约翰',NULL,NULL,'wzw','$2a$11$w8CnjbTLSGVmpIxO2wy7OOi6reBDYwwBptqHube0RpFTF2EpJ8caG',0,0,0,1,1,NULL,NULL,1,'5206792450','2025-04-04 13:53:15'),
('小丑',NULL,NULL,'xiaocho','$2a$11$X3UkSUMHCOqVL.O/KVEPBuhGyPE9VRcg.1gh8gWHZi.c94r1W6/JS',0,0,0,0,0,NULL,NULL,1,'5203186772','2025-03-31 17:39:35'),
('111',NULL,NULL,'zpy','$2a$11$PAJ3DrhtA3vNQDFilkZC5uM6AQ5DfQnpy/Ohc6nf0T8m529.Q/8fm',0,0,0,0,0,NULL,NULL,1,'4801033134','2025-03-31 05:15:59');
/*!40000 ALTER TABLE `phone_tiktok_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tiktok_channels`
--

DROP TABLE IF EXISTS `phone_tiktok_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_channels` (
  `id` varchar(10) NOT NULL,
  `last_message` varchar(50) NOT NULL,
  `member_1` varchar(20) NOT NULL,
  `member_2` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `member_1` (`member_1`,`member_2`),
  KEY `member_2` (`member_2`),
  CONSTRAINT `phone_tiktok_channels_ibfk_1` FOREIGN KEY (`member_1`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_channels_ibfk_2` FOREIGN KEY (`member_2`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_channels`
--

LOCK TABLES `phone_tiktok_channels` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tiktok_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tiktok_comments`
--

DROP TABLE IF EXISTS `phone_tiktok_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_comments` (
  `id` varchar(10) NOT NULL,
  `reply_to` varchar(10) DEFAULT NULL,
  `video_id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `comment` varchar(550) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `replies` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `video_id` (`video_id`),
  KEY `username` (`username`),
  KEY `reply_to` (`reply_to`),
  CONSTRAINT `phone_tiktok_comments_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_ibfk_2` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_ibfk_3` FOREIGN KEY (`reply_to`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_comments`
--

LOCK TABLES `phone_tiktok_comments` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_comments` DISABLE KEYS */;
INSERT INTO `phone_tiktok_comments` VALUES
('1ZFA6',NULL,'Z39g5','mo123','太帅了😂',0,1,'2025-03-30 06:39:44'),
('62o26',NULL,'dAA75','1234','1',0,0,'2025-03-31 10:56:12'),
('872kI',NULL,'Z39g5','rainbowkv','牛逼',0,0,'2025-03-29 15:05:55'),
('8qQ58',NULL,'Y6959','rainbowkv','666',0,0,'2025-04-03 10:33:11'),
('SkHn1',NULL,'Z39g5','zpy','RJ',0,0,'2025-03-31 06:33:20'),
('VMLL9','1ZFA6','Z39g5','rainbowkv','你也帅',0,0,'2025-03-30 06:40:16');
/*!40000 ALTER TABLE `phone_tiktok_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_video_comments
AFTER INSERT ON phone_tiktok_comments
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET comments = comments + 1
    WHERE id = NEW.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_comments
BEFORE DELETE ON phone_tiktok_comments
FOR EACH ROW
BEGIN
    DECLARE v_replies_count INT;

    -- Count the replies for the comment
    SELECT COUNT(*) INTO v_replies_count
    FROM phone_tiktok_comments
    WHERE reply_to = OLD.id;

    -- Update the video's comments count
    UPDATE phone_tiktok_videos
    SET comments = comments - (1 + v_replies_count)
    WHERE id = OLD.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_comments_likes`
--

DROP TABLE IF EXISTS `phone_tiktok_comments_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_comments_likes` (
  `username` varchar(20) NOT NULL,
  `comment_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`comment_id`),
  KEY `comment_id` (`comment_id`),
  CONSTRAINT `phone_tiktok_comments_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_comments_likes_ibfk_2` FOREIGN KEY (`comment_id`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_comments_likes`
--

LOCK TABLES `phone_tiktok_comments_likes` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_comments_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tiktok_comments_likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_comment_likes
AFTER INSERT ON phone_tiktok_comments_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_comments
    SET likes = likes + 1
    WHERE id = NEW.comment_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_decrement_comment_likes
AFTER DELETE ON phone_tiktok_comments_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_comments
    SET likes = likes - 1
    WHERE id = OLD.comment_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_follows`
--

DROP TABLE IF EXISTS `phone_tiktok_follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_tiktok_follows_ibfk_1` FOREIGN KEY (`followed`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_follows_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_follows`
--

LOCK TABLES `phone_tiktok_follows` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_follows` DISABLE KEYS */;
INSERT INTO `phone_tiktok_follows` VALUES
('rainbowkv','1234');
/*!40000 ALTER TABLE `phone_tiktok_follows` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_update_counts_after_follow
AFTER INSERT ON phone_tiktok_follows
FOR EACH ROW
BEGIN
    -- Increment the follower_count for the followed user
    UPDATE phone_tiktok_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    -- Increment the following_count for the follower user
    UPDATE phone_tiktok_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_update_counts_after_unfollow
AFTER DELETE ON phone_tiktok_follows
FOR EACH ROW
BEGIN
    -- Decrement the follower_count for the followed user
    UPDATE phone_tiktok_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    -- Decrement the following_count for the follower user
    UPDATE phone_tiktok_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_likes`
--

DROP TABLE IF EXISTS `phone_tiktok_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_likes` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_likes_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_likes`
--

LOCK TABLES `phone_tiktok_likes` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_likes` DISABLE KEYS */;
INSERT INTO `phone_tiktok_likes` VALUES
('123','dAA75'),
('123','Y6959'),
('123','Z39g5'),
('1234','dAA75'),
('1234','Z39g5'),
('mo123','Z39g5'),
('rainbowkv','1K61Z'),
('rainbowkv','Y6959'),
('rainbowkv','Z39g5'),
('richyoung','Z39g5'),
('zpy','Z39g5');
/*!40000 ALTER TABLE `phone_tiktok_likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_video_likes
AFTER INSERT ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET likes = likes + 1
    WHERE id = NEW.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_account_likes
AFTER INSERT ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    JOIN phone_tiktok_videos ON phone_tiktok_videos.username = phone_tiktok_accounts.username
    SET phone_tiktok_accounts.like_count = phone_tiktok_accounts.like_count + 1
    WHERE phone_tiktok_videos.id = NEW.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_likes
AFTER DELETE ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET likes = likes - 1
    WHERE id = OLD.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_decrement_account_likes
AFTER DELETE ON phone_tiktok_likes
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    JOIN phone_tiktok_videos ON phone_tiktok_videos.username = phone_tiktok_accounts.username
    SET phone_tiktok_accounts.like_count = phone_tiktok_accounts.like_count - 1
    WHERE phone_tiktok_videos.id = OLD.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_messages`
--

DROP TABLE IF EXISTS `phone_tiktok_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_messages` (
  `id` varchar(10) NOT NULL,
  `channel_id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `content` varchar(500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `sender` (`sender`),
  CONSTRAINT `phone_tiktok_messages_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `phone_tiktok_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_messages_ibfk_2` FOREIGN KEY (`sender`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_messages`
--

LOCK TABLES `phone_tiktok_messages` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tiktok_messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_update_last_message
AFTER INSERT ON phone_tiktok_messages
FOR EACH ROW
BEGIN
    DECLARE modified_content TEXT CHARACTER SET utf8mb4;

    IF NEW.content LIKE '<!SHARED-VIDEO-URL%' THEN
        SET modified_content = 'Shared a video';
    ELSEIF LENGTH(NEW.content) > 50 THEN
        SET modified_content = CONCAT(SUBSTR(NEW.content, 1, 17), '...');
    ELSE
        SET modified_content = NEW.content;
    END IF;

    UPDATE phone_tiktok_channels
    SET last_message = modified_content
    WHERE id = NEW.channel_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_notifications`
--

DROP TABLE IF EXISTS `phone_tiktok_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `video_id` varchar(10) DEFAULT NULL,
  `comment_id` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  KEY `video_id` (`video_id`),
  KEY `comment_id` (`comment_id`),
  CONSTRAINT `phone_tiktok_notifications_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_ibfk_2` FOREIGN KEY (`from`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_ibfk_3` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_notifications_ibfk_4` FOREIGN KEY (`comment_id`) REFERENCES `phone_tiktok_comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_notifications`
--

LOCK TABLES `phone_tiktok_notifications` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_notifications` DISABLE KEYS */;
INSERT INTO `phone_tiktok_notifications` VALUES
(9,'1234','123','like','dAA75',NULL,'2025-04-02 11:31:24'),
(10,'rainbowkv','123','like','Z39g5',NULL,'2025-04-02 11:31:27'),
(11,'123','rainbowkv','like','Y6959',NULL,'2025-04-03 10:33:00'),
(12,'123','rainbowkv','comment','Y6959','8qQ58','2025-04-03 10:33:11'),
(13,'wzw','rainbowkv','like','1K61Z',NULL,'2025-04-05 13:46:47');
/*!40000 ALTER TABLE `phone_tiktok_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tiktok_pinned_videos`
--

DROP TABLE IF EXISTS `phone_tiktok_pinned_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_pinned_videos` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_pinned_videos_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_pinned_videos_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_pinned_videos`
--

LOCK TABLES `phone_tiktok_pinned_videos` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_pinned_videos` DISABLE KEYS */;
INSERT INTO `phone_tiktok_pinned_videos` VALUES
('1234','dAA75');
/*!40000 ALTER TABLE `phone_tiktok_pinned_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tiktok_saves`
--

DROP TABLE IF EXISTS `phone_tiktok_saves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_saves` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_saves_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_saves_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_saves`
--

LOCK TABLES `phone_tiktok_saves` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_saves` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tiktok_saves` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_video_saves
AFTER INSERT ON phone_tiktok_saves
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET saves = saves + 1
    WHERE id = NEW.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_decrement_video_saves
AFTER DELETE ON phone_tiktok_saves
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET saves = saves - 1
    WHERE id = OLD.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_unread_messages`
--

DROP TABLE IF EXISTS `phone_tiktok_unread_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_unread_messages` (
  `username` varchar(20) NOT NULL,
  `channel_id` varchar(10) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`username`,`channel_id`),
  KEY `channel_id` (`channel_id`),
  CONSTRAINT `phone_tiktok_unread_messages_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_unread_messages_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `phone_tiktok_channels` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_unread_messages`
--

LOCK TABLES `phone_tiktok_unread_messages` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_unread_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tiktok_unread_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tiktok_videos`
--

DROP TABLE IF EXISTS `phone_tiktok_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_videos` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `src` varchar(500) NOT NULL,
  `caption` varchar(100) DEFAULT NULL,
  `metadata` longtext DEFAULT NULL,
  `music` text DEFAULT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `comments` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `saves` int(11) NOT NULL DEFAULT 0,
  `pinned_comment` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_tiktok_videos_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_videos`
--

LOCK TABLES `phone_tiktok_videos` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_videos` DISABLE KEYS */;
INSERT INTO `phone_tiktok_videos` VALUES
('1K61Z','wzw','https://r2.fivemanage.com/video/cA6rZnu0rkO6.mp4','美丽的风景',NULL,NULL,1,0,5,0,NULL,'2025-04-04 14:05:18'),
('dAA75','1234','https://r2.fivemanage.com/video/oEzxKiA0GAAc.mp4','1',NULL,NULL,2,1,9,0,NULL,'2025-03-31 10:55:01'),
('Y6959','123','https://r2.fivemanage.com/video/kG9aiSPedx0S.mp4','帅气小新',NULL,NULL,2,1,5,0,NULL,'2025-04-02 11:32:35'),
('Z39g5','rainbowkv','https://r2.fivemanage.com/video/WY4q3FJucPlo.mp4','嘻嘻',NULL,NULL,6,4,9,0,NULL,'2025-03-29 15:05:40');
/*!40000 ALTER TABLE `phone_tiktok_videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_video_count
AFTER INSERT ON phone_tiktok_videos
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_accounts
    SET video_count = video_count + 1
    WHERE username = NEW.username;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tiktok_views`
--

DROP TABLE IF EXISTS `phone_tiktok_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tiktok_views` (
  `username` varchar(20) NOT NULL,
  `video_id` varchar(10) NOT NULL,
  PRIMARY KEY (`username`,`video_id`),
  KEY `video_id` (`video_id`),
  CONSTRAINT `phone_tiktok_views_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_tiktok_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tiktok_views_ibfk_2` FOREIGN KEY (`video_id`) REFERENCES `phone_tiktok_videos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tiktok_views`
--

LOCK TABLES `phone_tiktok_views` WRITE;
/*!40000 ALTER TABLE `phone_tiktok_views` DISABLE KEYS */;
INSERT INTO `phone_tiktok_views` VALUES
('123','dAA75'),
('123','Z39g5'),
('1234','1K61Z'),
('1234','dAA75'),
('1234','Y6959'),
('1234','Z39g5'),
('lonely','1K61Z'),
('lonely','dAA75'),
('lonely','Y6959'),
('lonely','Z39g5'),
('mo123','dAA75'),
('mo123','Z39g5'),
('rainbowkv','1K61Z'),
('rainbowkv','dAA75'),
('rainbowkv','Y6959'),
('rainbowkv','Z39g5'),
('richyoung','dAA75'),
('richyoung','Z39g5'),
('wzw','1K61Z'),
('wzw','dAA75'),
('wzw','Y6959'),
('wzw','Z39g5'),
('xiaocho','1K61Z'),
('xiaocho','dAA75'),
('xiaocho','Y6959'),
('xiaocho','Z39g5'),
('zpy','dAA75'),
('zpy','Z39g5');
/*!40000 ALTER TABLE `phone_tiktok_views` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_tiktok_increment_video_views
AFTER INSERT ON phone_tiktok_views
FOR EACH ROW
BEGIN
    UPDATE phone_tiktok_videos
    SET views = views + 1
    WHERE id = NEW.video_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_tinder_accounts`
--

DROP TABLE IF EXISTS `phone_tinder_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tinder_accounts` (
  `name` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `photos` text DEFAULT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `dob` date NOT NULL,
  `is_male` tinyint(1) NOT NULL,
  `interested_men` tinyint(1) NOT NULL,
  `interested_women` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`phone_number`),
  CONSTRAINT `phone_tinder_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tinder_accounts`
--

LOCK TABLES `phone_tinder_accounts` WRITE;
/*!40000 ALTER TABLE `phone_tinder_accounts` DISABLE KEYS */;
INSERT INTO `phone_tinder_accounts` VALUES
('11111','5200994498','[\"https://r2.fivemanage.com/image/bCqSsXJpAyqc.webp\"]','11111111111','2001-11-10',1,1,1,1);
/*!40000 ALTER TABLE `phone_tinder_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tinder_matches`
--

DROP TABLE IF EXISTS `phone_tinder_matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tinder_matches` (
  `phone_number_1` varchar(15) NOT NULL,
  `phone_number_2` varchar(15) NOT NULL,
  `latest_message` varchar(1000) DEFAULT NULL,
  `latest_message_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`phone_number_1`,`phone_number_2`),
  KEY `phone_number_2` (`phone_number_2`),
  CONSTRAINT `phone_tinder_matches_ibfk_1` FOREIGN KEY (`phone_number_1`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_matches_ibfk_2` FOREIGN KEY (`phone_number_2`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tinder_matches`
--

LOCK TABLES `phone_tinder_matches` WRITE;
/*!40000 ALTER TABLE `phone_tinder_matches` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tinder_matches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tinder_messages`
--

DROP TABLE IF EXISTS `phone_tinder_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tinder_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(15) NOT NULL,
  `recipient` varchar(15) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_tinder_messages_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_messages_ibfk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tinder_messages`
--

LOCK TABLES `phone_tinder_messages` WRITE;
/*!40000 ALTER TABLE `phone_tinder_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tinder_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_tinder_swipes`
--

DROP TABLE IF EXISTS `phone_tinder_swipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_tinder_swipes` (
  `swiper` varchar(15) NOT NULL,
  `swipee` varchar(15) NOT NULL,
  `liked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`swiper`,`swipee`),
  KEY `swipee` (`swipee`),
  CONSTRAINT `phone_tinder_swipes_ibfk_1` FOREIGN KEY (`swiper`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_tinder_swipes_ibfk_2` FOREIGN KEY (`swipee`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_tinder_swipes`
--

LOCK TABLES `phone_tinder_swipes` WRITE;
/*!40000 ALTER TABLE `phone_tinder_swipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_tinder_swipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_twitter_accounts`
--

DROP TABLE IF EXISTS `phone_twitter_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_accounts` (
  `display_name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `profile_image` varchar(500) DEFAULT NULL,
  `profile_header` varchar(500) DEFAULT NULL,
  `pinned_tweet` varchar(50) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT 0,
  `follower_count` int(11) NOT NULL DEFAULT 0,
  `following_count` int(11) NOT NULL DEFAULT 0,
  `private` tinyint(1) DEFAULT 0,
  `date_joined` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`username`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_twitter_accounts_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_accounts`
--

LOCK TABLES `phone_twitter_accounts` WRITE;
/*!40000 ALTER TABLE `phone_twitter_accounts` DISABLE KEYS */;
INSERT INTO `phone_twitter_accounts` VALUES
('1','1111','$2a$11$X9m0T6y0JPYK4oLDqghUc.jN/MsrHXLIvqnklgH2cLYQYfwbW/0ZW','5200994498',NULL,NULL,NULL,NULL,0,0,0,0,'2025-03-30 13:47:53'),
('wdw','dwad','$2a$11$SlSB70CQpzw.VGVgiSKqVeFMSxeNmMVpQTtjS05eGjUFYMD6TFkYK','9073255767',NULL,NULL,NULL,NULL,0,0,0,0,'2025-03-31 12:32:41'),
('lo\'nei\'ra','lonely','$2a$11$I3oEKLdCuqF8TTcGFAQXl.1PYRKeaLcFMRqvABa0R3vAo14zK9V.q','6025376235',NULL,NULL,NULL,NULL,0,0,0,0,'2025-04-04 13:54:45'),
('马克康格里','mo123','$2a$11$MxEgJXH4CCpBSFQ.LtTDEOkCERtbMRNZwLHQriKjRKAFqDgqvp.iW','4800137041',NULL,NULL,NULL,NULL,0,0,0,0,'2025-03-31 12:32:45'),
('1','niandou','$2a$11$N3DplyYFh/3sxbBUse7gGuuwHtuK9VOODy6vtZC/fqssBiMoxXbfa','6029765848',NULL,NULL,NULL,NULL,0,0,0,0,'2025-04-01 06:10:05'),
('谢尔比 邦德','rainbowkv','$2a$11$W8bh6ijXhi89JcH/8jBYIubXvhSE7plonMITRpd9ag3jJMws2JFNO','6029709718',NULL,NULL,NULL,NULL,0,0,0,0,'2025-03-31 05:14:14'),
('rcyoung','rcyoung','$2a$11$cXkp691ZbrrS1kydTq.G5OtxwkkJUSS0xl75NYo1juH2IooGhpyKC','9076482773',NULL,NULL,NULL,NULL,0,0,0,0,'2025-03-31 17:33:29'),
('杰罗姆约翰','wzw','$2a$11$t4s5qBHFTtNt5gkZ5xfCK.e/QeMwOeaWacG3DwCMGdSIO8AF6GOmy','5206792450',NULL,NULL,NULL,NULL,0,0,0,0,'2025-04-04 13:57:52'),
('小丑','xiaocho','$2a$11$NyZzjbglhcK0IBajVi9jhuJ6/hsPYuA3G7QcTO/lA3/NShJ8hkujS','5203186772',NULL,NULL,NULL,NULL,0,0,0,0,'2025-03-31 17:29:55'),
('zpy','zpy','$2a$11$EdCuim9y1swPW5qmM/jhe.gyC4UbsFytbL53zSAMSON1JqiVrxanG','4801033134',NULL,NULL,NULL,NULL,0,0,0,0,'2025-03-31 05:13:54');
/*!40000 ALTER TABLE `phone_twitter_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_twitter_follow_requests`
--

DROP TABLE IF EXISTS `phone_twitter_follow_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_follow_requests` (
  `requester` varchar(20) NOT NULL,
  `requestee` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`requester`,`requestee`),
  KEY `requestee` (`requestee`),
  CONSTRAINT `phone_twitter_follow_requests_ibfk_1` FOREIGN KEY (`requester`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_follow_requests_ibfk_2` FOREIGN KEY (`requestee`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_follow_requests`
--

LOCK TABLES `phone_twitter_follow_requests` WRITE;
/*!40000 ALTER TABLE `phone_twitter_follow_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_twitter_follow_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_twitter_follows`
--

DROP TABLE IF EXISTS `phone_twitter_follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_follows` (
  `followed` varchar(20) NOT NULL,
  `follower` varchar(20) NOT NULL,
  `notifications` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`followed`,`follower`),
  KEY `follower` (`follower`),
  CONSTRAINT `phone_twitter_follows_ibfk_1` FOREIGN KEY (`followed`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_follows_ibfk_2` FOREIGN KEY (`follower`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_follows`
--

LOCK TABLES `phone_twitter_follows` WRITE;
/*!40000 ALTER TABLE `phone_twitter_follows` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_twitter_follows` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_counts_after_follow
AFTER INSERT ON phone_twitter_follows
FOR EACH ROW
BEGIN
    -- Increment the follower_count for the followed user
    UPDATE phone_twitter_accounts
    SET follower_count = follower_count + 1
    WHERE username = NEW.followed;

    -- Increment the following_count for the follower user
    UPDATE phone_twitter_accounts
    SET following_count = following_count + 1
    WHERE username = NEW.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_counts_after_unfollow
AFTER DELETE ON phone_twitter_follows
FOR EACH ROW
BEGIN
    -- Decrement the follower_count for the followed user
    UPDATE phone_twitter_accounts
    SET follower_count = follower_count - 1
    WHERE username = OLD.followed;

    -- Decrement the following_count for the follower user
    UPDATE phone_twitter_accounts
    SET following_count = following_count - 1
    WHERE username = OLD.follower;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_twitter_hashtags`
--

DROP TABLE IF EXISTS `phone_twitter_hashtags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_hashtags` (
  `hashtag` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `last_used` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`hashtag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_hashtags`
--

LOCK TABLES `phone_twitter_hashtags` WRITE;
/*!40000 ALTER TABLE `phone_twitter_hashtags` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_twitter_hashtags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_twitter_likes`
--

DROP TABLE IF EXISTS `phone_twitter_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_likes` (
  `tweet_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`tweet_id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_likes_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_likes`
--

LOCK TABLES `phone_twitter_likes` WRITE;
/*!40000 ALTER TABLE `phone_twitter_likes` DISABLE KEYS */;
INSERT INTO `phone_twitter_likes` VALUES
('174gm','dwad','2025-03-31 12:33:02'),
('1L194','rainbowkv','2025-04-03 10:33:59'),
('3e37i','mo123','2025-04-06 15:42:01'),
('3e37i','rainbowkv','2025-04-06 15:42:07'),
('4MAE8','rainbowkv','2025-03-31 05:14:55'),
('4MQE8','rainbowkv','2025-04-06 15:40:56'),
('5Y1cA','1111','2025-03-31 11:07:48'),
('64XWq','rainbowkv','2025-04-05 13:45:24'),
('6549q','rainbowkv','2025-03-31 05:14:57'),
('6ig8Z','dwad','2025-03-31 14:56:09'),
('6ig8Z','rainbowkv','2025-03-31 17:33:52'),
('95gM8','rainbowkv','2025-03-31 17:33:27'),
('K6OJ4','rainbowkv','2025-03-31 17:33:29'),
('Wo346','rainbowkv','2025-03-31 05:15:02'),
('Ymcav','1111','2025-03-31 15:10:50'),
('Ymcav','dwad','2025-03-31 15:11:47'),
('Ymcav','rainbowkv','2025-03-31 17:34:18'),
('yPQTq','rainbowkv','2025-03-31 17:34:02');
/*!40000 ALTER TABLE `phone_twitter_likes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_like_count_after_like
AFTER INSERT ON phone_twitter_likes
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET like_count = like_count + 1
    WHERE id = NEW.tweet_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_like_count_after_unlike
AFTER DELETE ON phone_twitter_likes
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET like_count = like_count - 1
    WHERE id = OLD.tweet_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_twitter_messages`
--

DROP TABLE IF EXISTS `phone_twitter_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_messages` (
  `id` varchar(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `recipient` varchar(20) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `sender` (`sender`),
  KEY `recipient` (`recipient`),
  CONSTRAINT `phone_twitter_messages_ibfk_1` FOREIGN KEY (`sender`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_messages_ibfk_2` FOREIGN KEY (`recipient`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_messages`
--

LOCK TABLES `phone_twitter_messages` WRITE;
/*!40000 ALTER TABLE `phone_twitter_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_twitter_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_twitter_notifications`
--

DROP TABLE IF EXISTS `phone_twitter_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_notifications` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `from` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `tweet_id` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `from` (`from`),
  CONSTRAINT `phone_twitter_notifications_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `phone_twitter_notifications_ibfk_2` FOREIGN KEY (`from`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_notifications`
--

LOCK TABLES `phone_twitter_notifications` WRITE;
/*!40000 ALTER TABLE `phone_twitter_notifications` DISABLE KEYS */;
INSERT INTO `phone_twitter_notifications` VALUES
('11H9U','dwad','rainbowkv','like','Ymcav','2025-03-31 17:34:18'),
('1Uvf1','zpy','rainbowkv','like','4MAE8','2025-03-31 05:14:55'),
('2ByqX','1111','rainbowkv','like','6ig8Z','2025-03-31 17:33:52'),
('2kW74','rainbowkv','mo123','like','3e37i','2025-04-06 15:42:01'),
('48B8K','1111','dwad','like','6ig8Z','2025-03-31 14:56:09'),
('49F5y','1111','rainbowkv','like','Wo346','2025-03-31 05:15:02'),
('5qo3S','xiaocho','rainbowkv','like','K6OJ4','2025-03-31 17:33:29'),
('72hMe','dwad','1111','like','Ymcav','2025-03-31 15:10:50'),
('A3n3O','lonely','rainbowkv','reply','t55cp','2025-04-06 15:41:06'),
('Bu77u','1111','rainbowkv','like','6549q','2025-03-31 05:14:57'),
('c8l39','zpy','rainbowkv','reply','828P9','2025-03-31 17:34:11'),
('hi3rZ','xiaocho','rainbowkv','like','95gM8','2025-03-31 17:33:27'),
('J15L6','lonely','rainbowkv','like','4MQE8','2025-04-06 15:40:56'),
('J4o7D','zpy','rainbowkv','like','yPQTq','2025-03-31 17:34:02'),
('P69mg','1111','rainbowkv','reply','H5vs1','2025-03-31 17:33:50'),
('SeU39','1111','rainbowkv','like','1L194','2025-04-03 10:33:59');
/*!40000 ALTER TABLE `phone_twitter_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_twitter_promoted`
--

DROP TABLE IF EXISTS `phone_twitter_promoted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_promoted` (
  `tweet_id` varchar(50) NOT NULL,
  `promotions` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`tweet_id`),
  CONSTRAINT `phone_twitter_promoted_ibfk_1` FOREIGN KEY (`tweet_id`) REFERENCES `phone_twitter_tweets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_promoted`
--

LOCK TABLES `phone_twitter_promoted` WRITE;
/*!40000 ALTER TABLE `phone_twitter_promoted` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_twitter_promoted` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_twitter_retweets`
--

DROP TABLE IF EXISTS `phone_twitter_retweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_retweets` (
  `tweet_id` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`tweet_id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_retweets_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_retweets`
--

LOCK TABLES `phone_twitter_retweets` WRITE;
/*!40000 ALTER TABLE `phone_twitter_retweets` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_twitter_retweets` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_retweet_count_after_retweet
AFTER INSERT ON phone_twitter_retweets
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET retweet_count = retweet_count + 1
    WHERE id = NEW.tweet_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`%`*/ /*!50003 TRIGGER IF NOT EXISTS phone_twitter_update_retweet_count_after_unretweet
AFTER DELETE ON phone_twitter_retweets
FOR EACH ROW
BEGIN
    UPDATE phone_twitter_tweets
    SET retweet_count = retweet_count - 1
    WHERE id = OLD.tweet_id;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phone_twitter_tweets`
--

DROP TABLE IF EXISTS `phone_twitter_tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_twitter_tweets` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `content` varchar(280) DEFAULT NULL,
  `attachments` text DEFAULT NULL,
  `reply_to` varchar(50) DEFAULT NULL,
  `like_count` int(11) DEFAULT 0,
  `reply_count` int(11) DEFAULT 0,
  `retweet_count` int(11) DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  CONSTRAINT `phone_twitter_tweets_ibfk_1` FOREIGN KEY (`username`) REFERENCES `phone_twitter_accounts` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_twitter_tweets`
--

LOCK TABLES `phone_twitter_tweets` WRITE;
/*!40000 ALTER TABLE `phone_twitter_tweets` DISABLE KEYS */;
INSERT INTO `phone_twitter_tweets` VALUES
('174gm','dwad','也是培训上了','[\"https://r2.fivemanage.com/image/rIOuj1uhd6qS.webp\"]',NULL,1,0,0,'2025-03-31 12:32:55'),
('1L194','1111','','[\"https://r2.fivemanage.com/image/BZgaX2ELSVKf.webp\"]',NULL,1,0,0,'2025-04-03 09:30:58'),
('29ZJ5','lonely','逃离的第一天。新的城市，新的生活。','[\"https://r2.fivemanage.com/image/WxoaEKuww2h1.webp\"]',NULL,0,0,0,'2025-04-04 15:12:27'),
('3e37i','rainbowkv','夺命司机','[\"https://r2.fivemanage.com/image/nFjGjpP52unq.webp\"]',NULL,2,0,0,'2025-04-06 15:41:38'),
('498a6','1111','😁','[\"https://r2.fivemanage.com/image/N4GV8cmb3FSG.webp\"]',NULL,0,0,0,'2025-03-31 13:53:52'),
('4MAE8','zpy','','[\"https://r2.fivemanage.com/image/AbfNEbOWCMc2.webp\"]',NULL,1,0,0,'2025-03-31 05:14:39'),
('4MQE8','lonely',' 第二天，虽然有些无聊，但我愿意为此浪费时间。','[\"https://r2.fivemanage.com/image/Zgjzb9cVjp5u.webp\"]',NULL,1,1,0,'2025-04-05 15:11:18'),
('5AXp8','1111','','[\"https://r2.fivemanage.com/video/oEzxKiA0GAAc.mp4\"]',NULL,0,0,0,'2025-03-31 10:58:13'),
('5Y1cA','1111','1😁😁','[\"https://r2.fivemanage.com/image/vhR1cZx30jKR.webp\"]',NULL,1,0,0,'2025-03-31 11:07:41'),
('64XWq','rainbowkv','四位帅哥合影~','[\"https://r2.fivemanage.com/image/f2RM9TEKJBE0.webp\"]',NULL,1,0,0,'2025-04-05 13:45:20'),
('6549q','1111','6','[\"https://r2.fivemanage.com/image/UWcqWoBN2LXH.webp\"]',NULL,1,0,0,'2025-03-30 14:02:26'),
('6ig8Z','1111','😁','[\"https://r2.fivemanage.com/image/EF9IQbLiOVD2.webp\"]',NULL,2,1,0,'2025-03-31 14:50:52'),
('6q71R','1111','1','[\"https://r2.fivemanage.com/image/byquNKnERa3F.webp\"]',NULL,0,0,0,'2025-03-31 07:34:04'),
('828P9','rainbowkv','糙汉子',NULL,'yPQTq',0,0,0,'2025-03-31 17:34:11'),
('8Z9IK','1111','','[\"https://r2.fivemanage.com/image/mBGdsJU7Ut0q.webp\"]',NULL,0,0,0,'2025-04-05 06:39:28'),
('9427m','1111','😀','[\"https://r2.fivemanage.com/image/bCqSsXJpAyqc.webp\"]',NULL,0,0,0,'2025-04-02 13:19:57'),
('95gM8','xiaocho','今天的工作就 到此为止吧明天依旧光芒万丈哦宝贝','[\"https://r2.fivemanage.com/image/iw7Ztdw9MsQ2.webp\"]',NULL,1,0,0,'2025-03-31 17:32:54'),
('9t7I4','zpy','','[\"https://r2.fivemanage.com/image/he6jftWzPGbs.webp\"]',NULL,0,0,0,'2025-03-31 14:49:53'),
('G5gNl','rainbowkv','啦啦啦','[\"https://r2.fivemanage.com/image/72ZhLeYfJRey.webp\"]',NULL,0,0,0,'2025-04-04 14:08:59'),
('H5vs1','rainbowkv','小鲜肉',NULL,'6ig8Z',0,0,0,'2025-03-31 17:33:50'),
('K6OJ4','xiaocho','当工具人的一天\n','[\"https://r2.fivemanage.com/image/d2RZtkyzHKYM.webp\"]',NULL,1,0,0,'2025-03-31 17:30:30'),
('t55cp','rainbowkv','慢生活',NULL,'4MQE8',0,0,0,'2025-04-06 15:41:06'),
('Wo346','1111','6','[\"https://r2.fivemanage.com/image/BHfs6VMoIRrB.webp\"]',NULL,1,0,0,'2025-03-30 13:48:04'),
('XHm39','wzw','','[\"https://r2.fivemanage.com/image/dpqsXOENJRR6.webp\"]',NULL,0,0,0,'2025-04-04 14:06:03'),
('y6U11','1111','1','[\"https://r2.fivemanage.com/image/he6jftWzPGbs.webp\"]',NULL,0,0,0,'2025-03-31 06:30:52'),
('Ymcav','dwad','😀','[\"https://r2.fivemanage.com/image/pKGo2Zn0xsDZ.webp\"]',NULL,3,0,0,'2025-03-31 14:51:08'),
('yPQTq','zpy','','[\"https://r2.fivemanage.com/image/sU0jUHVWXpHw.webp\"]',NULL,1,1,0,'2025-03-31 14:50:29');
/*!40000 ALTER TABLE `phone_twitter_tweets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_voice_memos_recordings`
--

DROP TABLE IF EXISTS `phone_voice_memos_recordings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_voice_memos_recordings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_url` varchar(500) NOT NULL,
  `file_length` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_voice_memos_recordings_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_voice_memos_recordings`
--

LOCK TABLES `phone_voice_memos_recordings` WRITE;
/*!40000 ALTER TABLE `phone_voice_memos_recordings` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_voice_memos_recordings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_wallet_transactions`
--

DROP TABLE IF EXISTS `phone_wallet_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_wallet_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `amount` int(11) NOT NULL,
  `company` varchar(50) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `phone_number` (`phone_number`),
  CONSTRAINT `phone_wallet_transactions_ibfk_1` FOREIGN KEY (`phone_number`) REFERENCES `phone_phones` (`phone_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_wallet_transactions`
--

LOCK TABLES `phone_wallet_transactions` WRITE;
/*!40000 ALTER TABLE `phone_wallet_transactions` DISABLE KEYS */;
INSERT INTO `phone_wallet_transactions` VALUES
(1,'6029709718',-66666,'迪亚 的手机 ',NULL,'2025-03-30 09:12:53'),
(2,'4807732359',66666,'谢尔比 的手机 ',NULL,'2025-03-30 09:12:53'),
(3,'6029709718',-100000,'约瑟夫 的手机 ',NULL,'2025-03-31 05:12:25'),
(4,'4801033134',100000,'谢尔比 的手机 ',NULL,'2025-03-31 05:12:25'),
(5,'2058918551',-100,'约瑟夫 的手机 ',NULL,'2025-03-31 06:34:29'),
(6,'4801033134',100,'2058918551',NULL,'2025-03-31 06:34:29'),
(7,'6029709718',-40000,'布莱恩特 的手机 ',NULL,'2025-03-31 08:23:59'),
(8,'9079691273',40000,'谢尔比 的手机 ',NULL,'2025-03-31 08:23:59'),
(9,'9079691273',40000,'谢尔比 的手机 ',NULL,'2025-03-31 08:27:22'),
(10,'6029709718',-40000,'布莱恩特 的手机 ',NULL,'2025-03-31 08:27:22'),
(11,'6029709718',-66666,'马克 的手机 ',NULL,'2025-04-03 10:32:14'),
(12,'4800137041',66666,'谢尔比 的手机 ',NULL,'2025-04-03 10:32:14'),
(13,'4800137041',-1,'谢尔比 的手机 ',NULL,'2025-04-03 10:32:43'),
(14,'6029709718',1,'马克 的手机 ',NULL,'2025-04-03 10:32:43'),
(15,'5203186772',10,'马克 的手机 ',NULL,'2025-04-03 10:34:49'),
(16,'4800137041',-10,'小 的手机 ',NULL,'2025-04-03 10:34:49'),
(17,'4807732359',-100000,'亚力 的手机 ',NULL,'2025-04-04 11:59:15'),
(18,'5200994498',100000,'4807732359',NULL,'2025-04-04 11:59:15'),
(19,'5200994498',-1,'约瑟夫 的手机 ',NULL,'2025-04-04 15:56:43'),
(20,'4801033134',1,'5200994498',NULL,'2025-04-04 15:56:43'),
(21,'5200994498',-1,'约瑟夫 的手机 ',NULL,'2025-04-04 16:02:55'),
(22,'4801033134',1,'5200994498',NULL,'2025-04-04 16:02:55'),
(23,'5200994498',-1,'亚瑟 的手机 ',NULL,'2025-04-06 03:51:53'),
(24,'6023092057',1,'亚力 的手机 ',NULL,'2025-04-06 03:51:53'),
(25,'6023092057',-4000,'亚力 的手机 ',NULL,'2025-04-06 03:52:17'),
(26,'5200994498',4000,'亚瑟 的手机 ',NULL,'2025-04-06 03:52:17'),
(27,'6020877537',-5000,'迪亚 的手机 ',NULL,'2025-04-06 07:30:38'),
(28,'4807732359',5000,'6020877537',NULL,'2025-04-06 07:30:38'),
(29,'4807732359',-10000,'亚力 的手机 ',NULL,'2025-04-08 08:05:28'),
(30,'5200994498',10000,'4807732359',NULL,'2025-04-08 08:05:28');
/*!40000 ALTER TABLE `phone_wallet_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_yellow_pages_posts`
--

DROP TABLE IF EXISTS `phone_yellow_pages_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_yellow_pages_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `attachment` varchar(500) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_yellow_pages_posts`
--

LOCK TABLES `phone_yellow_pages_posts` WRITE;
/*!40000 ALTER TABLE `phone_yellow_pages_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_yellow_pages_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_contacts`
--

DROP TABLE IF EXISTS `player_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `iban` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_contacts`
--

LOCK TABLES `player_contacts` WRITE;
/*!40000 ALTER TABLE `player_contacts` DISABLE KEYS */;
INSERT INTO `player_contacts` VALUES
(1,'XRR77997','艾伦 克特','1934821841','US02QBCore8022890922'),
(2,'XRR77997','马克 康格里','4508773563','US01QBCore5348334270'),
(3,'YBR81778','谢尔比 邦德','8188537309','US03QBCore7588679357'),
(4,'LTI10935','谢尔比 邦德','8188537309','US03QBCore7588679357'),
(5,'XRR77997','比尔 卡门','9676896146','US03QBCore4512136414'),
(6,'XRR77997','厄莎 克雷吉','3131592050','US06QBCore3862745031'),
(7,'VQR49601','谢尔比 邦德','8188537309','US03QBCore7588679357'),
(8,'XRR77997','阿伦 勒布朗','1441966647','US05QBCore8195671547'),
(9,'XRR77997','汉三 黄','7643029699','US01QBCore8233421940'),
(10,'OZH56762','911','8188537309','US03QBCore7588679357'),
(11,'XRR77997','911','6513832261','US08QBCore2355191882'),
(12,'ICW34676','马克 康格里','4508773563','US01QBCore5348334270');
/*!40000 ALTER TABLE `player_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_houses`
--

DROP TABLE IF EXISTS `player_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_houses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house` varchar(50) NOT NULL,
  `identifier` varchar(50) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `keyholders` text DEFAULT NULL,
  `decorations` text DEFAULT NULL,
  `stash` text DEFAULT NULL,
  `outfit` text DEFAULT NULL,
  `logout` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `house` (`house`),
  KEY `citizenid` (`citizenid`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_houses`
--

LOCK TABLES `player_houses` WRITE;
/*!40000 ALTER TABLE `player_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_mails`
--

DROP TABLE IF EXISTS `player_mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_mails`
--

LOCK TABLES `player_mails` WRITE;
/*!40000 ALTER TABLE `player_mails` DISABLE KEYS */;
INSERT INTO `player_mails` VALUES
(1,'LTI10935','Pillbox Hospital','Hospital Costs','Dear Mr. 卡门, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$2000</strong><br /><br />We wish you a quick recovery!',0,722742,'2024-12-10 09:35:01','[]'),
(2,'LTI10935','Pillbox Hospital','Hospital Costs','Dear Mr. 卡门, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$2000</strong><br /><br />We wish you a quick recovery!',0,974903,'2024-12-10 09:50:05','[]'),
(3,'LTI10935','Pillbox Hospital','Hospital Costs','Dear Mr. 卡门, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$2000</strong><br /><br />We wish you a quick recovery!',0,159335,'2024-12-10 10:03:11','[]'),
(4,'LTI10935','Pillbox Hospital','Hospital Costs','Dear Mr. 卡门, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$2000</strong><br /><br />We wish you a quick recovery!',0,207215,'2024-12-10 10:10:35','[]'),
(5,'LTI10935','Pillbox Hospital','Hospital Costs','Dear Mr. 卡门, <br /><br />Hereby you received an email with the costs of the last hospital visit.<br />The final costs have become: <strong>$2000</strong><br /><br />We wish you a quick recovery!',0,129934,'2024-12-10 10:19:33','[]'),
(6,'LTI10935','皮尔博医院','医院费用','亲爱的 先生 卡门，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,633772,'2024-12-10 11:37:51','[]'),
(7,'LTI10935','皮尔博医院','医院费用','亲爱的 先生 卡门，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,519826,'2024-12-10 11:38:48','[]'),
(8,'LTI10935','皮尔博医院','医院费用','亲爱的 先生 卡门，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,962974,'2024-12-10 11:56:08','[]'),
(9,'LTI10935','皮尔博医院','医院费用','亲爱的 先生 卡门，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,433212,'2024-12-10 12:10:21','[]'),
(10,'XRR77997','皮尔博医院','医院费用','亲爱的 先生 邦德，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,934483,'2024-12-10 13:52:54',''),
(11,'XRR77997','Tyrone','修理','你的 Pistol XM3 已修理完成，可以在指定位置取回。<br><br> 再见，傻逼',0,844720,'2024-12-11 01:33:46',NULL),
(12,'XRR77997','Tyrone','修理','你的 Pistol 已修理完成，可以在指定位置取回。<br><br> 再见，傻逼',0,981830,'2024-12-11 01:42:28',NULL),
(13,'LTI10935','Tyrone','修理','你的 Pistol XM3 已修理完成，可以在指定位置取回。<br><br> 再见，傻逼',0,523780,'2024-12-11 04:09:08',NULL),
(14,'LYX25359','皮尔博医院','医院费用','亲爱的 先生 克特，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,832176,'2024-12-11 04:59:40','[]'),
(15,'LTI10935','皮尔博医院','医院费用','亲爱的 先生 卡门，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,188678,'2024-12-11 13:35:01','[]'),
(16,'LYX25359','皮尔博医院','医院费用','亲爱的 先生 克特，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,915497,'2024-12-13 15:10:32','[]'),
(17,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,147899,'2024-12-14 11:22:15','[]'),
(18,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,738053,'2024-12-14 11:52:30','[]'),
(19,'LTI10935','皮尔博医院','医院费用','亲爱的 先生 卡门，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,378047,'2024-12-14 14:34:22','[]'),
(20,'DJD56142','Township','Driving lessons request','Hello,<br><br>We have just received a message that someone wants to take driving lessons.<br>If you are willing to teach, please contact them:<br>Name: <strong>比尔 卡门<br />Phone Number: <strong>9676896146</strong><br><br>Kind regards,<br>Township Los Santos',0,715269,'2024-12-14 14:40:41','[]'),
(21,'DXT09752','Township','Driving lessons request','Hello,<br><br>We have just received a message that someone wants to take driving lessons.<br>If you are willing to teach, please contact them:<br>Name: <strong>比尔 卡门<br />Phone Number: <strong>9676896146</strong><br><br>Kind regards,<br>Township Los Santos',0,575670,'2024-12-14 14:40:41','[]'),
(22,'SRI85140','Township','Driving lessons request','Hello,<br><br>We have just received a message that someone wants to take driving lessons.<br>If you are willing to teach, please contact them:<br>Name: <strong>比尔 卡门<br />Phone Number: <strong>9676896146</strong><br><br>Kind regards,<br>Township Los Santos',0,155836,'2024-12-14 14:40:41','[]'),
(23,'LTI10935','皮尔博医院','医院费用','亲爱的 先生 卡门，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,611550,'2024-12-14 14:49:45','[]'),
(24,'LTI10935','皮尔博医院','医院费用','亲爱的 先生 卡门，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,549288,'2024-12-14 14:53:41','[]'),
(25,'XRR77997','皮尔博医院','医院费用','亲爱的 先生 邦德，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,564990,'2024-12-18 07:05:53','[]'),
(26,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,284719,'2024-12-20 04:44:28','[]'),
(27,'DXT09752','Township','Driving lessons request','Hello,<br><br>We have just received a message that someone wants to take driving lessons.<br>If you are willing to teach, please contact them:<br>Name: <strong>马克 康格里<br />Phone Number: <strong>4508773563</strong><br><br>Kind regards,<br>Township Los Santos',0,746350,'2024-12-20 10:06:01','[]'),
(28,'DJD56142','Township','Driving lessons request','Hello,<br><br>We have just received a message that someone wants to take driving lessons.<br>If you are willing to teach, please contact them:<br>Name: <strong>马克 康格里<br />Phone Number: <strong>4508773563</strong><br><br>Kind regards,<br>Township Los Santos',0,342171,'2024-12-20 10:06:01','[]'),
(29,'SRI85140','Township','Driving lessons request','Hello,<br><br>We have just received a message that someone wants to take driving lessons.<br>If you are willing to teach, please contact them:<br>Name: <strong>马克 康格里<br />Phone Number: <strong>4508773563</strong><br><br>Kind regards,<br>Township Los Santos',0,292162,'2024-12-20 10:06:01','[]'),
(30,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,121446,'2024-12-25 05:50:16','[]'),
(31,'XRR77997','皮尔博医院','医院费用','亲爱的 先生 邦德，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,585522,'2024-12-27 09:26:08','[]'),
(32,'LTI10935','皮尔博医院','医院费用','亲爱的 先生 卡门，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,893987,'2024-12-27 11:07:54','[]'),
(33,'LTI10935','皮尔博医院','医院费用','亲爱的 先生 卡门，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,815702,'2024-12-27 11:11:57','[]'),
(34,'XRR77997','皮尔博医院','医院费用','亲爱的 先生 邦德，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,646637,'2024-12-30 04:47:36','[]'),
(36,'ELD02040','皮尔博医院','医院费用','亲爱的 先生 克雷吉，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$2000</strong><br /><br />祝你早日康复！',0,414228,'2024-12-30 06:05:29','[]'),
(37,'YBR81778','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 1x 大麻砖<br><br>请按时到达',0,453460,'2024-12-31 15:34:15',''),
(38,'YBR81778','7260','Delivery','你做得很好，希望再见！<br><br>问候，7260',0,566599,'2024-12-31 15:37:44',NULL),
(39,'XRR77997','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 3x 可卡因砖<br><br>请按时到达',0,748690,'2024-12-31 15:40:02',''),
(40,'YBR81778','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 2x 大麻砖<br><br>请按时到达',0,196725,'2024-12-31 15:40:05',''),
(41,'XRR77997','7260','Delivery','你做得很好，希望再见！<br><br>问候，7260',0,779075,'2024-12-31 15:41:38',NULL),
(42,'YBR81778','7260','Delivery','你没有按时送达。你有比生意更重要的事情吗？',0,484128,'2024-12-31 15:48:33',NULL),
(43,'YBR81778','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 3x 大麻砖<br><br>请按时到达',0,300821,'2025-01-01 01:41:48',''),
(44,'YBR81778','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 1x 可卡因砖<br><br>请按时到达',0,220532,'2025-01-01 04:08:52',''),
(45,'XRR77997','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 1x 可卡因砖<br><br>请按时到达',0,717617,'2025-01-01 05:52:31',''),
(46,'XRR77997','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 1x 大麻砖<br><br>请按时到达',0,307158,'2025-01-01 05:57:34',''),
(47,'YBR81778','Tyrone','修理','你的 Vintage Pistol 已修理完成，可以在指定位置取回。<br><br> 再见，傻逼',0,360464,'2025-01-01 06:34:32',NULL),
(48,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,349817,'2025-01-07 11:44:53','[]'),
(49,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,927103,'2025-01-08 04:52:16','[]'),
(50,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,748683,'2025-01-08 04:58:54','[]'),
(51,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,290836,'2025-01-08 10:35:07','[]'),
(52,'XRR77997','Larry的房车销售','你已售出一辆车！','你通过出售你的警用越野车赚了$0。',0,267990,'2025-01-08 12:47:23',NULL),
(53,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,869421,'2025-01-09 11:26:08','[]'),
(54,'LYX25359','皮尔博医院','医院费用','亲爱的 先生 克特，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,872755,'2025-01-09 12:37:38','[]'),
(55,'LYX25359','皮尔博医院','医院费用','亲爱的 先生 克特，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,342783,'2025-01-09 12:54:36','[]'),
(56,'LYX25359','皮尔博医院','医院费用','亲爱的 先生 克特，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,801854,'2025-01-09 13:44:22','[]'),
(57,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,559580,'2025-01-09 13:44:54','[]'),
(58,'LYX25359','皮尔博医院','医院费用','亲爱的 先生 克特，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,849343,'2025-01-09 13:46:30','[]'),
(59,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,121770,'2025-01-09 14:43:03','[]'),
(60,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,420067,'2025-01-09 14:43:26','[]'),
(61,'XRR77997','皮尔博医院','医院费用','亲爱的 先生 邦德，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,673912,'2025-01-09 14:45:56','[]'),
(62,'XRR77997','皮尔博医院','医院费用','亲爱的 先生 邦德，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,498332,'2025-01-09 14:46:18','[]'),
(63,'LYX25359','皮尔博医院','医院费用','亲爱的 先生 克特，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,579468,'2025-01-09 15:00:23','[]'),
(64,'LYX25359','皮尔博医院','医院费用','亲爱的 先生 克特，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,369759,'2025-01-09 15:15:13','[]'),
(65,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,996701,'2025-01-10 11:02:16','[]'),
(66,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,962251,'2025-01-12 12:00:41','[]'),
(67,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,548466,'2025-01-13 09:45:11','[]'),
(68,'YBR81778','皮尔博医院','医院费用','亲爱的 先生 康格里，<br /><br />你收到了一封关于最近医院就诊费用的邮件。<br />最终费用为：<strong>$500</strong><br /><br />祝你早日康复！',0,202351,'2025-01-13 11:55:27',''),
(69,'XRR77997','Larry的房车销售','你已售出一辆车！','你通过出售你的警用越野车赚了$0。',0,352733,'2025-03-15 16:22:00',NULL),
(70,'XRR77997','Larry的房车销售','你已售出一辆车！','你通过出售你的RS7赚了$0。',0,265656,'2025-03-18 12:36:34',NULL),
(71,'XRR77997','Larry的房车销售','你已售出一辆车！','你通过出售你的GL8赚了$0。',0,342777,'2025-03-18 16:59:52',NULL),
(72,'XRR77997','Larry的房车销售','你已售出一辆车！','你通过出售你的GL8赚了$0。',0,126795,'2025-03-18 17:01:26',NULL),
(73,'XRR77997','Larry的房车销售','你已售出一辆车！','你通过出售你的lafa赚了$0。',0,925591,'2025-03-22 15:50:48',NULL),
(75,'XRR77997','Larry的房车销售','你已售出一辆车！','你通过出售你的库里南赚了$0。',0,139019,'2025-03-24 13:45:02',NULL),
(93,'YBR81778','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 1x 大麻砖<br><br>请按时到达',0,233264,'2025-03-28 04:41:25',''),
(94,'XRR77997','Larry的房车销售','你已售出一辆车！','你通过出售你的曼切兹赚了$0。',0,512432,'2025-03-28 11:08:54',NULL),
(95,'XRR77997','Larry的房车销售','你已售出一辆车！','你通过出售你的大拖车赚了$0。',0,429019,'2025-03-28 11:09:31',NULL),
(96,'XRR77997','Larry的房车销售','你已售出一辆车！','你通过出售你的装甲箱式货车赚了$0。',0,665473,'2025-03-28 11:10:22',NULL),
(97,'OZH56762','Larry的房车销售','你已售出一辆车！','你通过出售你的装甲箱式货车赚了$0。',0,895763,'2025-03-28 12:34:26',NULL),
(100,'JJX03484','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 3x 可卡因砖<br><br>请按时到达',0,315751,'2025-03-29 02:58:27',''),
(101,'JJX03484','7260','Delivery','你做得很好，希望再见！<br><br>问候，7260',0,784221,'2025-03-29 02:59:37',NULL),
(102,'JJX03484','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 1x 可卡因砖<br><br>请按时到达',0,563437,'2025-03-29 03:00:05',''),
(103,'JJX03484','7260','Delivery','你做得很好，希望再见！<br><br>问候，7260',0,188197,'2025-03-29 03:01:52',NULL),
(104,'JJX03484','7260','Delivery Location','这是所有的交货信息，<br>物品: <br> 2x 可卡因砖<br><br>请按时到达',0,548327,'2025-03-29 03:02:28',''),
(105,'JJX03484','7260','Delivery','你做得很好，希望再见！<br><br>问候，7260',0,290150,'2025-03-29 03:03:14',NULL);
/*!40000 ALTER TABLE `player_mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_outfits`
--

DROP TABLE IF EXISTS `player_outfits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` varchar(1000) DEFAULT NULL,
  `components` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  KEY `citizenid` (`citizenid`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_outfits`
--

LOCK TABLES `player_outfits` WRITE;
/*!40000 ALTER TABLE `player_outfits` DISABLE KEYS */;
INSERT INTO `player_outfits` VALUES
(28,'OZH56762','西服','mp_m_freemode_01','[{\"prop_id\":0,\"drawable\":-1,\"texture\":-1},{\"prop_id\":1,\"drawable\":42,\"texture\":0},{\"prop_id\":2,\"drawable\":-1,\"texture\":-1},{\"prop_id\":6,\"drawable\":12,\"texture\":0},{\"prop_id\":7,\"drawable\":0,\"texture\":0}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":48,\"component_id\":2},{\"texture\":0,\"drawable\":1,\"component_id\":3},{\"texture\":0,\"drawable\":24,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":10,\"component_id\":6},{\"texture\":0,\"drawable\":197,\"component_id\":7},{\"texture\":0,\"drawable\":150,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":31,\"component_id\":11}]'),
(29,'YBR81778','特警','mp_m_freemode_01','[{\"texture\":0,\"drawable\":119,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":35},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":3,\"texture\":0,\"drawable\":19},{\"component_id\":4,\"texture\":0,\"drawable\":121},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":24},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":265},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":320}]'),
(30,'OZH56762','黄色','mp_m_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":38,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":0,\"drawable\":9,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":48},{\"component_id\":3,\"texture\":0,\"drawable\":5},{\"component_id\":4,\"texture\":0,\"drawable\":12},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":99},{\"component_id\":7,\"texture\":0,\"drawable\":92},{\"component_id\":8,\"texture\":0,\"drawable\":57},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":1,\"drawable\":17}]'),
(31,'YBR81778','超人','mp_m_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":43,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":168,\"component_id\":3},{\"texture\":0,\"drawable\":115,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":91,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":15,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":291,\"component_id\":11}]'),
(32,'YBR81778','绿人','mp_m_freemode_01','[{\"texture\":0,\"drawable\":57,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":45,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":100,\"component_id\":3},{\"texture\":0,\"drawable\":113,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":90,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":2,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":286,\"component_id\":11}]'),
(33,'KZY58745','Beauty','mp_f_freemode_01','[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":86},{\"component_id\":3,\"texture\":0,\"drawable\":4},{\"component_id\":4,\"texture\":13,\"drawable\":9},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":6},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":15},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":11,\"drawable\":2}]'),
(34,'VCV61562','123','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":0,\"drawable\":0},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":2,\"drawable\":6},{\"prop_id\":7,\"texture\":0,\"drawable\":5}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":76},{\"component_id\":3,\"texture\":0,\"drawable\":19},{\"component_id\":4,\"texture\":0,\"drawable\":47},{\"component_id\":5,\"texture\":0,\"drawable\":113},{\"component_id\":6,\"texture\":14,\"drawable\":73},{\"component_id\":7,\"texture\":0,\"drawable\":186},{\"component_id\":8,\"texture\":0,\"drawable\":218},{\"component_id\":9,\"texture\":0,\"drawable\":54},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":593}]'),
(35,'VCV61562','黑帮','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":9,\"drawable\":28},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":2,\"drawable\":6},{\"prop_id\":7,\"texture\":0,\"drawable\":5}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":17,\"drawable\":169},{\"component_id\":2,\"texture\":0,\"drawable\":76},{\"component_id\":3,\"texture\":0,\"drawable\":2},{\"component_id\":4,\"texture\":0,\"drawable\":132},{\"component_id\":5,\"texture\":5,\"drawable\":85},{\"component_id\":6,\"texture\":2,\"drawable\":8},{\"component_id\":7,\"texture\":0,\"drawable\":172},{\"component_id\":8,\"texture\":0,\"drawable\":15},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":357}]'),
(36,'BDN59221','平常','mp_m_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":38,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":0,\"drawable\":46,\"prop_id\":6},{\"texture\":0,\"drawable\":1,\"prop_id\":7}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":80},{\"component_id\":3,\"texture\":0,\"drawable\":19},{\"component_id\":4,\"texture\":0,\"drawable\":155},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":32},{\"component_id\":7,\"texture\":0,\"drawable\":7},{\"component_id\":8,\"texture\":0,\"drawable\":163},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":545}]'),
(37,'CCU80978','医生','mp_f_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":21,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":0,\"drawable\":3,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":11},{\"component_id\":3,\"texture\":0,\"drawable\":14},{\"component_id\":4,\"texture\":0,\"drawable\":99},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":14},{\"component_id\":7,\"texture\":0,\"drawable\":96},{\"component_id\":8,\"texture\":3,\"drawable\":67},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":258}]'),
(38,'CCU80978','红西装','mp_f_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":21,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":0,\"drawable\":3,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":11},{\"component_id\":3,\"texture\":0,\"drawable\":3},{\"component_id\":4,\"texture\":6,\"drawable\":8},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":6,\"drawable\":19},{\"component_id\":7,\"texture\":0,\"drawable\":6},{\"component_id\":8,\"texture\":3,\"drawable\":67},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":25}]'),
(42,'BDN59221','警服','mp_m_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":38,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":0,\"drawable\":46,\"prop_id\":6},{\"texture\":0,\"drawable\":1,\"prop_id\":7}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":80},{\"component_id\":3,\"texture\":0,\"drawable\":4},{\"component_id\":4,\"texture\":0,\"drawable\":13},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":147},{\"component_id\":7,\"texture\":0,\"drawable\":9},{\"component_id\":8,\"texture\":0,\"drawable\":265},{\"component_id\":9,\"texture\":0,\"drawable\":105},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":8,\"drawable\":587}]'),
(43,'ICW34676','1','mp_f_freemode_01','[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":0,\"prop_id\":2,\"drawable\":14},{\"texture\":1,\"prop_id\":6,\"drawable\":19},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":-1},{\"component_id\":2,\"texture\":0,\"drawable\":41},{\"component_id\":3,\"texture\":0,\"drawable\":11},{\"component_id\":4,\"texture\":0,\"drawable\":154},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":2,\"drawable\":6},{\"component_id\":7,\"texture\":0,\"drawable\":11},{\"component_id\":8,\"texture\":0,\"drawable\":14},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":117}]'),
(44,'QHK11612','行政','mp_m_freemode_01','[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":4,\"prop_id\":1,\"drawable\":5},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":0,\"prop_id\":6,\"drawable\":4},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":3},{\"component_id\":3,\"texture\":0,\"drawable\":1},{\"component_id\":4,\"texture\":0,\"drawable\":10},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":10},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":10},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":499}]'),
(45,'YBR81778','红人','mp_m_freemode_01','[{\"texture\":0,\"prop_id\":0,\"drawable\":129},{\"texture\":0,\"prop_id\":1,\"drawable\":25},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":3,\"texture\":0,\"drawable\":165},{\"component_id\":4,\"texture\":0,\"drawable\":109},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":87},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":15},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":278}]'),
(46,'GID66771','黑衣','mp_m_freemode_01','[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":0,\"prop_id\":1,\"drawable\":38},{\"texture\":0,\"prop_id\":2,\"drawable\":25},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":3,\"drawable\":4},{\"component_id\":3,\"texture\":0,\"drawable\":1},{\"component_id\":4,\"texture\":0,\"drawable\":3},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":5},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":115},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":142}]'),
(47,'OZH56762','面具个','mp_m_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":38,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":0,\"drawable\":9,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":44},{\"component_id\":2,\"texture\":0,\"drawable\":48},{\"component_id\":3,\"texture\":0,\"drawable\":2},{\"component_id\":4,\"texture\":0,\"drawable\":31},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":96},{\"component_id\":7,\"texture\":0,\"drawable\":92},{\"component_id\":8,\"texture\":0,\"drawable\":5},{\"component_id\":9,\"texture\":0,\"drawable\":93},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":63}]'),
(48,'JJX03484','1','mp_m_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":2,\"drawable\":34,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":80},{\"component_id\":3,\"texture\":0,\"drawable\":6},{\"component_id\":4,\"texture\":25,\"drawable\":138},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":2},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":69}]'),
(50,'GID66771','小女孩','mp_m_freemode_01','[{\"texture\":0,\"prop_id\":0,\"drawable\":40},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":0,\"prop_id\":2,\"drawable\":25},{\"texture\":0,\"prop_id\":6,\"drawable\":7},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":44},{\"component_id\":2,\"texture\":3,\"drawable\":4},{\"component_id\":3,\"texture\":0,\"drawable\":2},{\"component_id\":4,\"texture\":0,\"drawable\":31},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":96},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":5},{\"component_id\":9,\"texture\":0,\"drawable\":93},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":63}]'),
(54,'JJX03484','2','mp_m_freemode_01','[{\"drawable\":-1,\"prop_id\":0,\"texture\":-1},{\"drawable\":-1,\"prop_id\":1,\"texture\":-1},{\"drawable\":-1,\"prop_id\":2,\"texture\":-1},{\"drawable\":-1,\"prop_id\":6,\"texture\":-1},{\"drawable\":-1,\"prop_id\":7,\"texture\":-1}]','[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":0,\"component_id\":1,\"texture\":0},{\"drawable\":80,\"component_id\":2,\"texture\":0},{\"drawable\":20,\"component_id\":3,\"texture\":0},{\"drawable\":64,\"component_id\":4,\"texture\":10},{\"drawable\":0,\"component_id\":5,\"texture\":0},{\"drawable\":51,\"component_id\":6,\"texture\":0},{\"drawable\":14,\"component_id\":7,\"texture\":0},{\"drawable\":58,\"component_id\":8,\"texture\":0},{\"drawable\":0,\"component_id\":9,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":86,\"component_id\":11,\"texture\":0}]'),
(55,'OZH56762','拍戏','mp_m_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":38,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":0,\"drawable\":9,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":48,\"component_id\":2},{\"texture\":0,\"drawable\":96,\"component_id\":3},{\"texture\":0,\"drawable\":21,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":99,\"component_id\":6},{\"texture\":0,\"drawable\":96,\"component_id\":7},{\"texture\":0,\"drawable\":15,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":200,\"component_id\":11}]'),
(56,'RHT93297','哥哥','mp_m_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":80,\"component_id\":2},{\"texture\":0,\"drawable\":1,\"component_id\":3},{\"texture\":1,\"drawable\":24,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":21,\"component_id\":6},{\"texture\":0,\"drawable\":17,\"component_id\":7},{\"texture\":0,\"drawable\":57,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":3,\"drawable\":111,\"component_id\":11}]'),
(57,'RHT93297','手枪','mp_m_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":80,\"component_id\":2},{\"texture\":0,\"drawable\":1,\"component_id\":3},{\"texture\":1,\"drawable\":24,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":21,\"component_id\":6},{\"texture\":0,\"drawable\":17,\"component_id\":7},{\"texture\":0,\"drawable\":221,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":3,\"drawable\":111,\"component_id\":11}]'),
(59,'RHT93297','特警','mp_m_freemode_01','[{\"texture\":0,\"drawable\":119,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":80,\"component_id\":2},{\"texture\":0,\"drawable\":1,\"component_id\":3},{\"texture\":1,\"drawable\":24,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":21,\"component_id\":6},{\"texture\":0,\"drawable\":17,\"component_id\":7},{\"texture\":0,\"drawable\":221,\"component_id\":8},{\"texture\":0,\"drawable\":93,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":3,\"drawable\":111,\"component_id\":11}]'),
(60,'UXH40238','111','mp_m_freemode_01','[{\"drawable\":12,\"texture\":0,\"prop_id\":0},{\"drawable\":4,\"texture\":0,\"prop_id\":1},{\"drawable\":2,\"texture\":0,\"prop_id\":2},{\"drawable\":0,\"texture\":0,\"prop_id\":6},{\"drawable\":5,\"texture\":0,\"prop_id\":7}]','[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":240,\"texture\":0,\"component_id\":1},{\"drawable\":1,\"texture\":3,\"component_id\":2},{\"drawable\":1,\"texture\":0,\"component_id\":3},{\"drawable\":10,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":10,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":3,\"texture\":0,\"component_id\":8},{\"drawable\":0,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":4,\"texture\":0,\"component_id\":11}]'),
(61,'UXH40238','jing  cha','mp_m_freemode_01','[{\"drawable\":222,\"prop_id\":0,\"texture\":0},{\"drawable\":58,\"prop_id\":1,\"texture\":0},{\"drawable\":4,\"prop_id\":2,\"texture\":0},{\"drawable\":0,\"prop_id\":6,\"texture\":0},{\"drawable\":5,\"prop_id\":7,\"texture\":0}]','[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":1,\"texture\":3,\"component_id\":2},{\"drawable\":19,\"texture\":0,\"component_id\":3},{\"drawable\":10,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":10,\"texture\":0,\"component_id\":6},{\"drawable\":0,\"texture\":0,\"component_id\":7},{\"drawable\":58,\"texture\":0,\"component_id\":8},{\"drawable\":105,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":583,\"texture\":0,\"component_id\":11}]'),
(62,'JJX03484','110','mp_m_freemode_01','[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]','[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":0,\"component_id\":1,\"texture\":0},{\"drawable\":80,\"component_id\":2,\"texture\":0},{\"drawable\":19,\"component_id\":3,\"texture\":0},{\"drawable\":10,\"component_id\":4,\"texture\":0},{\"drawable\":0,\"component_id\":5,\"texture\":0},{\"drawable\":10,\"component_id\":6,\"texture\":0},{\"drawable\":-1,\"component_id\":7,\"texture\":0},{\"drawable\":58,\"component_id\":8,\"texture\":0},{\"drawable\":105,\"component_id\":9,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":583,\"component_id\":11,\"texture\":0}]'),
(63,'BDN59221','警服111统一','mp_m_freemode_01','[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":38,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":0,\"drawable\":46,\"prop_id\":6},{\"texture\":0,\"drawable\":1,\"prop_id\":7}]','[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":80},{\"texture\":0,\"component_id\":3,\"drawable\":11},{\"texture\":0,\"component_id\":4,\"drawable\":10},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":10},{\"texture\":0,\"component_id\":7,\"drawable\":9},{\"texture\":0,\"component_id\":8,\"drawable\":58},{\"texture\":0,\"component_id\":9,\"drawable\":105},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":11,\"drawable\":583}]'),
(65,'QLU88274','911','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":239},{\"component_id\":2,\"texture\":4,\"drawable\":19},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":10},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":10},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":58},{\"component_id\":9,\"texture\":0,\"drawable\":105},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":583}]'),
(66,'QLU88274','1','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":0,\"drawable\":7},{\"prop_id\":2,\"texture\":0,\"drawable\":2},{\"prop_id\":6,\"texture\":0,\"drawable\":1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":4,\"drawable\":19},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":7},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":10},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":58},{\"component_id\":9,\"texture\":0,\"drawable\":1},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":582}]'),
(67,'YBR81778','警察','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":0,\"drawable\":222},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":15},{\"component_id\":3,\"texture\":0,\"drawable\":19},{\"component_id\":4,\"texture\":0,\"drawable\":10},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":10},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":265},{\"component_id\":9,\"texture\":0,\"drawable\":105},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":583}]'),
(69,'QLU88274','jf1','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":0,\"drawable\":7},{\"prop_id\":2,\"texture\":0,\"drawable\":2},{\"prop_id\":6,\"texture\":0,\"drawable\":1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":169},{\"component_id\":2,\"texture\":4,\"drawable\":19},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":55},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":22},{\"component_id\":7,\"texture\":0,\"drawable\":2},{\"component_id\":8,\"texture\":0,\"drawable\":60},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":346}]'),
(70,'QLU88274','jf2','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":0,\"drawable\":2},{\"prop_id\":6,\"texture\":0,\"drawable\":1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":169},{\"component_id\":2,\"texture\":4,\"drawable\":19},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":55},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":22},{\"component_id\":7,\"texture\":0,\"drawable\":2},{\"component_id\":8,\"texture\":0,\"drawable\":76},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":346}]'),
(71,'QHK11612','特','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":0,\"drawable\":231},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":0,\"drawable\":0},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":52},{\"component_id\":2,\"texture\":0,\"drawable\":21},{\"component_id\":3,\"texture\":0,\"drawable\":179},{\"component_id\":4,\"texture\":0,\"drawable\":121},{\"component_id\":5,\"texture\":9,\"drawable\":56},{\"component_id\":6,\"texture\":0,\"drawable\":25},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":153},{\"component_id\":9,\"texture\":0,\"drawable\":83},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":12,\"drawable\":588}]'),
(72,'UUU52761','1','mp_f_freemode_01','[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":0,\"drawable\":37},{\"prop_id\":2,\"texture\":0,\"drawable\":0},{\"prop_id\":6,\"texture\":4,\"drawable\":35},{\"prop_id\":7,\"texture\":0,\"drawable\":14}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":15},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":3},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":51},{\"component_id\":7,\"texture\":2,\"drawable\":15},{\"component_id\":8,\"texture\":1,\"drawable\":71},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":2,\"drawable\":1}]'),
(73,'QLU88274','11111','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":0,\"drawable\":25},{\"prop_id\":2,\"texture\":0,\"drawable\":2},{\"prop_id\":6,\"texture\":0,\"drawable\":1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":169},{\"component_id\":2,\"texture\":4,\"drawable\":19},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":55},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":22},{\"component_id\":7,\"texture\":0,\"drawable\":2},{\"component_id\":8,\"texture\":0,\"drawable\":76},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":346}]'),
(74,'YBR81778','1','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":0,\"drawable\":28},{\"prop_id\":1,\"texture\":0,\"drawable\":3},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":15},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":1},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":1},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":2},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":6}]'),
(75,'IMN66507','LSPD','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":0,\"drawable\":222},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":10},{\"component_id\":3,\"texture\":0,\"drawable\":19},{\"component_id\":4,\"texture\":0,\"drawable\":10},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":10},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":265},{\"component_id\":9,\"texture\":0,\"drawable\":105},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":583}]'),
(76,'XRR77997','ems','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":1,\"drawable\":9}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":121},{\"component_id\":2,\"texture\":0,\"drawable\":69},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":96},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":27},{\"component_id\":7,\"texture\":0,\"drawable\":183},{\"component_id\":8,\"texture\":0,\"drawable\":15},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":218},{\"component_id\":11,\"texture\":0,\"drawable\":250}]'),
(77,'LYX25359','123','mp_m_freemode_01','[{\"prop_id\":0,\"texture\":0,\"drawable\":2},{\"prop_id\":1,\"texture\":0,\"drawable\":3},{\"prop_id\":2,\"texture\":0,\"drawable\":0},{\"prop_id\":6,\"texture\":0,\"drawable\":0},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":3,\"texture\":0,\"drawable\":6},{\"component_id\":4,\"texture\":1,\"drawable\":5},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":1,\"drawable\":7},{\"component_id\":7,\"texture\":0,\"drawable\":7},{\"component_id\":8,\"texture\":0,\"drawable\":13},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":4}]'),
(78,'QLU88274','9111','mp_m_freemode_01','[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":0,\"prop_id\":1,\"drawable\":2},{\"texture\":0,\"prop_id\":2,\"drawable\":2},{\"texture\":-1,\"prop_id\":6,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":239,\"component_id\":1},{\"texture\":4,\"drawable\":19,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":10,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":10,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":58,\"component_id\":8},{\"texture\":0,\"drawable\":105,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":583,\"component_id\":11}]'),
(79,'QLU88274','jjjjj','mp_m_freemode_01','[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":7,\"prop_id\":1,\"drawable\":45},{\"texture\":0,\"prop_id\":2,\"drawable\":2},{\"texture\":0,\"prop_id\":6,\"drawable\":1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":169,\"component_id\":1},{\"texture\":4,\"drawable\":19,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":55,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":22,\"component_id\":6},{\"texture\":0,\"drawable\":2,\"component_id\":7},{\"texture\":0,\"drawable\":76,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":346,\"component_id\":11}]'),
(80,'UUU52761','22','mp_f_freemode_01','[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":0,\"prop_id\":1,\"drawable\":37},{\"texture\":0,\"prop_id\":2,\"drawable\":0},{\"texture\":4,\"prop_id\":6,\"drawable\":35},{\"texture\":0,\"prop_id\":7,\"drawable\":14}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":15,\"component_id\":2},{\"texture\":0,\"drawable\":1,\"component_id\":3},{\"texture\":7,\"drawable\":25,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":57,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":1,\"drawable\":59,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":4,\"drawable\":1,\"component_id\":11}]'),
(81,'UUU52761','110','mp_f_freemode_01','[{\"texture\":0,\"prop_id\":0,\"drawable\":45},{\"texture\":0,\"prop_id\":1,\"drawable\":37},{\"texture\":0,\"prop_id\":2,\"drawable\":0},{\"texture\":4,\"prop_id\":6,\"drawable\":35},{\"texture\":0,\"prop_id\":7,\"drawable\":14}]','[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":15,\"component_id\":2},{\"texture\":0,\"drawable\":2,\"component_id\":3},{\"texture\":0,\"drawable\":34,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":64,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":159,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":329,\"component_id\":11}]'),
(82,'QLU88274','00','mp_m_freemode_01','[{\"drawable\":8,\"texture\":0,\"prop_id\":0},{\"drawable\":2,\"texture\":0,\"prop_id\":1},{\"drawable\":2,\"texture\":0,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}]','[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":240},{\"component_id\":2,\"texture\":4,\"drawable\":19},{\"component_id\":3,\"texture\":0,\"drawable\":1},{\"component_id\":4,\"texture\":0,\"drawable\":10},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":10},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":60},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":4}]');
/*!40000 ALTER TABLE `player_outfits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_vehicles`
--

DROP TABLE IF EXISTS `player_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(11) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(8) NOT NULL,
  `fakeplate` varchar(8) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(11) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `paymentamount` int(11) NOT NULL DEFAULT 0,
  `paymentsleft` int(11) NOT NULL DEFAULT 0,
  `financetime` int(11) NOT NULL DEFAULT 0,
  `parking` varchar(60) DEFAULT NULL,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  `wanted` int(1) DEFAULT 0,
  `billPrice` int(6) DEFAULT 0,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `plate` (`plate`),
  KEY `citizenid` (`citizenid`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_vehicles`
--

LOCK TABLES `player_vehicles` WRITE;
/*!40000 ALTER TABLE `player_vehicles` DISABLE KEYS */;
INSERT INTO `player_vehicles` VALUES
(1,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','XRR77997','bati','-114291515','{\"modTank\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"extras\":[],\"wheelSize\":1.0,\"modVanityPlate\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"modArmor\":-1,\"modDial\":-1,\"color2\":0,\"modStruts\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":false,\"modSideSkirt\":-1,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"liveryRoof\":-1,\"modKit19\":-1,\"modHorns\":-1,\"modEngine\":-1,\"modTurbo\":1,\"modTrimA\":-1,\"modKit17\":-1,\"modXenon\":false,\"xenonColor\":255,\"modAPlate\":-1,\"plateIndex\":0,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"color1\":143,\"modSpeakers\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":false},\"tireHealth\":{\"1\":1000.0,\"2\":0.0,\"3\":0.0,\"0\":1000.0},\"windowTint\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"oilLevel\":4.76596940834568,\"wheels\":6,\"modSteeringWheel\":-1,\"bodyHealth\":927.7753781579608,\"modBrakes\":-1,\"wheelWidth\":1.0,\"tankHealth\":3974.02415832558,\"modAerials\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"plate\":\"8LO099WT\",\"modHood\":-1,\"modWindows\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit21\":-1,\"modKit47\":-1,\"modTrimB\":-1,\"interiorColor\":0,\"dirtLevel\":0.0,\"modPlateHolder\":-1,\"engineHealth\":985.7613392928333,\"modKit49\":-1,\"modCustomTiresR\":false,\"neonEnabled\":[false,false,false,false],\"modOrnaments\":-1,\"modGrille\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"model\":-114291515,\"wheelColor\":156,\"modBackWheels\":-1,\"modExhaust\":-1,\"pearlescentColor\":111,\"modLivery\":-1,\"fuelLevel\":44.48238114455976,\"dashboardColor\":0,\"modCustomTiresF\":false,\"modArchCover\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modRearBumper\":-1,\"modRightFender\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modRoof\":-1}','8LO099WT',NULL,'pillboxgarage',44,986,928,1,0,101893,'{\"radiator\":100,\"axle\":100,\"fuel\":100,\"clutch\":100,\"brakes\":100}',0,0,0,0,NULL,'[]','[]',0,0,''),
(2,'license:821cf5790625f4290620b46a9a5f230f4ee6913c','LTI10935','bati','-114291515','{\"modSpeakers\":-1,\"modOrnaments\":-1,\"model\":-114291515,\"modDoorSpeaker\":-1,\"color1\":5,\"modXenon\":false,\"modHood\":-1,\"modDashboard\":-1,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"modFrontWheels\":-1,\"modKit47\":-1,\"wheelSize\":1.0,\"modStruts\":-1,\"interiorColor\":0,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSpoilers\":-1,\"modHorns\":-1,\"modArmor\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modHydrolic\":-1,\"modEngineBlock\":-1,\"modKit21\":-1,\"modDial\":-1,\"extras\":[],\"modVanityPlate\":-1,\"modGrille\":-1,\"wheelWidth\":1.0,\"modLivery\":-1,\"engineHealth\":1000.0592475178704,\"pearlescentColor\":111,\"modAerials\":-1,\"dirtLevel\":7.14895411251853,\"tankHealth\":1000.0592475178704,\"modBackWheels\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":0.0,\"3\":0.0,\"0\":1000.0},\"modEngine\":-1,\"modFrame\":-1,\"modKit17\":-1,\"fuelLevel\":99.29102934053518,\"modFender\":-1,\"modWindows\":-1,\"modTurbo\":false,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"xenonColor\":255,\"modFrontBumper\":-1,\"modTrimA\":-1,\"modKit19\":-1,\"modTrunk\":-1,\"wheelColor\":156,\"modExhaust\":-1,\"modArchCover\":-1,\"dashboardColor\":0,\"neonColor\":[255,0,255],\"neonEnabled\":[false,false,false,false],\"modRoof\":-1,\"modTank\":-1,\"bodyHealth\":1000.0592475178704,\"modRearBumper\":-1,\"plate\":\"2NK994NL\",\"modTrimB\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":false},\"color2\":41,\"modCustomTiresR\":false,\"windowTint\":-1,\"wheels\":6,\"tyreSmokeColor\":[255,255,255],\"modRightFender\":-1,\"modSeats\":-1,\"modCustomTiresF\":false,\"modSteeringWheel\":-1,\"modTransmission\":-1,\"modAPlate\":-1,\"plateIndex\":3,\"modSmokeEnabled\":false,\"modKit49\":-1,\"modSuspension\":-1,\"modAirFilter\":-1,\"liveryRoof\":-1,\"oilLevel\":4.76596940834568}','2NK994NL',NULL,'pillboxgarage',99,1001,1001,0,4000,NULL,'{\"radiator\":100,\"axle\":100,\"brakes\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(3,'license:6eb02558b24cdb83cc9c7e52fad120be37b1bbf9','LYX25359','entity3','1748565021','{\"modCustomTiresR\":false,\"dirtLevel\":0.0,\"modXenon\":false,\"modRoof\":-1,\"modArchCover\":-1,\"pearlescentColor\":5,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSteeringWheel\":-1,\"modRearBumper\":-1,\"xenonColor\":255,\"modTransmission\":-1,\"modHydrolic\":-1,\"modKit17\":-1,\"modKit19\":-1,\"modWindows\":-1,\"modSpeakers\":-1,\"interiorColor\":7,\"modHorns\":-1,\"modKit47\":-1,\"modTrimB\":-1,\"modTurbo\":false,\"fuelLevel\":43.68805290983548,\"wheelSize\":1.0,\"modLivery\":8,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"modAPlate\":-1,\"liveryRoof\":-1,\"modSeats\":-1,\"modAerials\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"extras\":[],\"modDial\":-1,\"modSideSkirt\":-1,\"modFrontWheels\":-1,\"modShifterLeavers\":-1,\"windowStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"plateIndex\":0,\"modDashboard\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modCustomTiresF\":false,\"modTrimA\":-1,\"modTank\":-1,\"wheels\":7,\"windowTint\":-1,\"modEngine\":-1,\"engineHealth\":1000.0592475178704,\"modStruts\":-1,\"modVanityPlate\":-1,\"modArmor\":-1,\"modSmokeEnabled\":false,\"modFrontBumper\":-1,\"modSuspension\":-1,\"modRightFender\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,255],\"color1\":38,\"neonColor\":[255,0,255],\"modSpoilers\":-1,\"modFrame\":-1,\"tankHealth\":4000.2369900714818,\"modTrunk\":-1,\"plate\":\"9IT487EA\",\"modKit49\":-1,\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"oilLevel\":4.76596940834568,\"model\":1748565021,\"wheelWidth\":1.0,\"bodyHealth\":1000.0592475178704,\"modFender\":-1,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"modExhaust\":-1,\"modGrille\":-1,\"modKit21\":-1,\"wheelColor\":0,\"modAirFilter\":-1,\"dashboardColor\":89,\"modHood\":-1,\"color2\":8}','9IT487EA',NULL,'pillboxgarage',36,455,280,0,4000,59664,'{\"radiator\":100,\"brakes\":100,\"axle\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,'[]',NULL,0,0,''),
(4,'license:821cf5790625f4290620b46a9a5f230f4ee6913c','LTI10935','su7','-637952606','{\"modSideSkirt\":-1,\"wheelColor\":29,\"modBrakes\":-1,\"modDial\":-1,\"oilLevel\":4.76596940834568,\"plateIndex\":3,\"interiorColor\":111,\"modRoof\":-1,\"modAirFilter\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"modLivery\":-1,\"modDashboard\":-1,\"modSteeringWheel\":-1,\"modKit21\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"tireHealth\":{\"1\":999.75,\"2\":994.0527954101563,\"3\":1000.0,\"0\":999.5},\"dashboardColor\":0,\"liveryRoof\":-1,\"modTurbo\":false,\"modTrimB\":-1,\"modArmor\":-1,\"modTank\":-1,\"modKit49\":-1,\"modFrame\":-1,\"modGrille\":-1,\"modExhaust\":-1,\"modSuspension\":-1,\"tyreSmokeColor\":[255,255,255],\"modKit17\":-1,\"modWindows\":-1,\"modKit47\":-1,\"wheels\":7,\"modPlateHolder\":-1,\"modShifterLeavers\":-1,\"modFrontBumper\":-1,\"modDoorSpeaker\":-1,\"modXenon\":false,\"fuelLevel\":57.98596113487255,\"modOrnaments\":-1,\"xenonColor\":255,\"wheelWidth\":0.0,\"modRearBumper\":-1,\"modFrontWheels\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAPlate\":-1,\"modTrimA\":-1,\"wheelSize\":0.0,\"modCustomTiresF\":false,\"tankHealth\":3980.3787842033746,\"plate\":\"6HT512KZ\",\"modHood\":-1,\"modAerials\":-1,\"modFender\":-1,\"windowTint\":-1,\"modBackWheels\":-1,\"pearlescentColor\":0,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"model\":-637952606,\"color1\":111,\"engineHealth\":983.3783545886605,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"modEngineBlock\":-1,\"modTrunk\":-1,\"color2\":0,\"modHydrolic\":-1,\"modRightFender\":-1,\"modKit19\":-1,\"modSmokeEnabled\":false,\"modCustomTiresR\":false,\"extras\":{\"4\":false,\"6\":true},\"modSeats\":-1,\"modSpoilers\":-1,\"modStruts\":-1,\"modVanityPlate\":-1,\"bodyHealth\":845.1652417466355,\"dirtLevel\":0.0,\"modSpeakers\":-1,\"modEngine\":-1,\"neonColor\":[255,0,255]}','6HT512KZ',NULL,'police',58,984,845,1,0,3174,'{\"axle\":100,\"radiator\":100,\"fuel\":100,\"clutch\":100,\"brakes\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(5,'license:6eb02558b24cdb83cc9c7e52fad120be37b1bbf9','LYX25359','su7','-637952606','{\"modExhaust\":-1,\"modBackWheels\":-1,\"modLivery\":-1,\"modTank\":-1,\"modDoorSpeaker\":-1,\"modArmor\":-1,\"color2\":0,\"modArchCover\":-1,\"xenonColor\":255,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"extras\":{\"6\":false,\"4\":false},\"modPlateHolder\":-1,\"wheels\":7,\"color1\":111,\"modSmokeEnabled\":false,\"modBrakes\":-1,\"modSeats\":-1,\"plate\":\"0AZ946NK\",\"wheelWidth\":0.0,\"modAirFilter\":-1,\"modCustomTiresR\":false,\"modKit47\":-1,\"modRearBumper\":-1,\"modEngineBlock\":-1,\"tankHealth\":4000.2369900714818,\"modTransmission\":-1,\"model\":-637952606,\"neonColor\":[255,0,255],\"modTrimA\":-1,\"modTrunk\":-1,\"modSpoilers\":-1,\"liveryRoof\":-1,\"modSteeringWheel\":-1,\"modHydrolic\":-1,\"interiorColor\":111,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"dashboardColor\":0,\"modRoof\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"modStruts\":-1,\"modTurbo\":false,\"modGrille\":-1,\"modFender\":-1,\"modXenon\":false,\"modVanityPlate\":-1,\"modKit21\":-1,\"dirtLevel\":0.0,\"bodyHealth\":1000.0592475178704,\"pearlescentColor\":0,\"modCustomTiresF\":false,\"fuelLevel\":10.32626705141565,\"modSuspension\":-1,\"modKit17\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"modKit19\":-1,\"modSideSkirt\":-1,\"modShifterLeavers\":-1,\"modHood\":-1,\"modTrimB\":-1,\"wheelSize\":0.0,\"modEngine\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"windowTint\":-1,\"engineHealth\":1000.0592475178704,\"modAPlate\":-1,\"modWindows\":-1,\"plateIndex\":0,\"modFrontWheels\":-1,\"modOrnaments\":-1,\"oilLevel\":4.76596940834568,\"modKit49\":-1,\"modRightFender\":-1,\"modFrontBumper\":-1,\"modSpeakers\":-1,\"modAerials\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modHorns\":-1,\"wheelColor\":29,\"modDial\":-1}','0AZ946NK',NULL,'pillboxgarage',56,1000,1000,0,4000,36875,'{\"radiator\":100,\"fuel\":100,\"brakes\":100,\"clutch\":100,\"axle\":100}',0,0,0,0,NULL,'[]',NULL,0,0,''),
(6,'license:6eb02558b24cdb83cc9c7e52fad120be37b1bbf9','LYX25359','hauler','1518533038','{\"plateIndex\":3,\"modDial\":-1,\"modTransmission\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modFrame\":-1,\"modTrimA\":-1,\"modVanityPlate\":-1,\"modEngine\":-1,\"modKit17\":-1,\"modCustomTiresR\":false,\"modGrille\":-1,\"modKit19\":-1,\"modKit47\":-1,\"modHood\":-1,\"xenonColor\":255,\"modFender\":-1,\"modSpeakers\":-1,\"pearlescentColor\":93,\"plate\":\"5TN781NM\",\"interiorColor\":0,\"oilLevel\":4.76596940834568,\"modArchCover\":-1,\"modAirFilter\":-1,\"modAerials\":-1,\"modWindows\":-1,\"modBrakes\":-1,\"modKit21\":-1,\"wheelColor\":156,\"wheels\":0,\"modHydrolic\":-1,\"modSuspension\":-1,\"modSpoilers\":-1,\"windowTint\":-1,\"modFrontWheels\":-1,\"wheelSize\":0.0,\"modDoorSpeaker\":-1,\"windowStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modFrontBumper\":-1,\"dirtLevel\":4.76596940834568,\"fuelLevel\":100.08535757525947,\"modHorns\":-1,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"engineHealth\":1000.0592475178704,\"modBackWheels\":-1,\"modXenon\":false,\"modSeats\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"color1\":98,\"modSmokeEnabled\":false,\"tyreSmokeColor\":[255,255,255],\"modRearBumper\":-1,\"modSideSkirt\":-1,\"bodyHealth\":1000.0592475178704,\"modLivery\":-1,\"model\":1518533038,\"extras\":{\"1\":false},\"modStruts\":-1,\"modTurbo\":false,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modArmor\":-1,\"wheelWidth\":0.0,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modTank\":-1,\"modOrnaments\":-1,\"color2\":107,\"liveryRoof\":-1,\"modTrunk\":-1,\"modDashboard\":-1,\"modExhaust\":-1,\"modShifterLeavers\":-1,\"modTrimB\":-1,\"modRightFender\":-1,\"modKit49\":-1,\"dashboardColor\":0,\"tankHealth\":1000.0592475178704,\"modCustomTiresF\":false,\"neonColor\":[255,0,255],\"modRoof\":-1,\"modPlateHolder\":-1}','5TN781NM',NULL,'pillboxgarage',100,1000,1000,0,4000,8793,'{\"radiator\":100,\"brakes\":100,\"axle\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(7,'license:0b693a368c37a6bb1f97291e1e3fc4e078ed3a33','YBR81778','su7','-637952606','{\"windowTint\":-1,\"oilLevel\":4.76596940834568,\"wheelColor\":29,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modKit49\":-1,\"modArchCover\":-1,\"modHood\":-1,\"tankHealth\":3927.1587924768475,\"modFrontWheels\":-1,\"modKit19\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"modSteeringWheel\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modKit17\":-1,\"tyreSmokeColor\":[255,255,255],\"modArmor\":-1,\"modTurbo\":false,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"xenonColor\":255,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"dirtLevel\":7.14895411251853,\"modAirFilter\":-1,\"modBrakes\":-1,\"wheels\":7,\"modSmokeEnabled\":false,\"plate\":\"9VU149NQ\",\"color2\":0,\"modDial\":-1,\"wheelWidth\":0.0,\"fuelLevel\":38.12775526676551,\"pearlescentColor\":0,\"modFender\":-1,\"modSideSkirt\":-1,\"model\":-637952606,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"color1\":111,\"modWindows\":-1,\"dashboardColor\":0,\"modBackWheels\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSeats\":-1,\"modCustomTiresR\":false,\"bodyHealth\":96.11371640163806,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":-1,\"liveryRoof\":-1,\"modDashboard\":-1,\"modSpeakers\":-1,\"modTransmission\":-1,\"modSpoilers\":-1,\"modExhaust\":-1,\"modPlateHolder\":-1,\"modRearBumper\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modKit21\":-1,\"modStruts\":-1,\"modHorns\":-1,\"wheelSize\":0.0,\"engineHealth\":458.3273914359104,\"modGrille\":-1,\"extras\":{\"4\":false,\"6\":true},\"modXenon\":false,\"modCustomTiresF\":false,\"modTrunk\":-1,\"interiorColor\":111,\"modSuspension\":-1,\"modFrontBumper\":-1,\"modKit47\":-1,\"modEngineBlock\":-1,\"plateIndex\":3,\"modTrimB\":-1,\"modRightFender\":-1}','9VU149NQ',NULL,'police',38,459,97,1,0,768941,'{\"radiator\":100,\"brakes\":100,\"fuel\":100,\"axle\":100,\"clutch\":100}',0,0,0,0,NULL,'[{\"count\":30,\"name\":\"lockpick\",\"slot\":1},{\"metadata\":{\"components\":[],\"durability\":75.80000000000138,\"registered\":false},\"count\":1,\"name\":\"WEAPON_DAGGER\",\"slot\":3},{\"metadata\":{\"registered\":false,\"components\":[],\"durability\":99.20000000000005,\"ammo\":12},\"count\":1,\"name\":\"WEAPON_CERAMICPISTOL\",\"slot\":4},{\"count\":1,\"name\":\"parachute\",\"slot\":5},{\"metadata\":{\"ammo\":0,\"serial\":\"929792POL859822\",\"components\":[\"at_flashlight\"],\"registered\":\"谢尔比 邦德\",\"durability\":87.93999999999953},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":6},{\"count\":1,\"name\":\"cocainekey\",\"slot\":7},{\"count\":1,\"name\":\"methkey\",\"slot\":8},{\"count\":2590,\"name\":\"black_money\",\"slot\":9}]','[{\"count\":1,\"name\":\"megaphone\",\"slot\":1},{\"count\":1,\"name\":\"finescale\",\"slot\":2},{\"count\":1,\"name\":\"trimming_scissors\",\"slot\":3},{\"metadata\":{\"serie\":\"87zHi9Rk873TGkY\",\"ammo\":30,\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"},{\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\",\"label\":\"3x Scope\"}],\"components\":[],\"durability\":57.87999999999967,\"serial\":\"87zHi9Rk873TGkY\"},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":4},{\"count\":1,\"name\":\"radio\",\"slot\":5},{\"count\":1,\"name\":\"hydrochloric_acid\",\"slot\":6},{\"count\":2,\"name\":\"sulfuric_acid\",\"slot\":7},{\"count\":1,\"name\":\"panties\",\"slot\":31}]',0,0,''),
(8,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','XRR77997','rs721','1989114523','{\"modEngine\":3,\"modDoorSpeaker\":-1,\"modSuspension\":3,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modSmokeEnabled\":false,\"color2\":27,\"modKit19\":-1,\"bodyHealth\":996.8819345789732,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modFender\":-1,\"tankHealth\":1000.0592475178704,\"modFrame\":-1,\"interiorColor\":2,\"modTank\":-1,\"oilLevel\":4.76596940834568,\"modKit49\":-1,\"modFrontWheels\":-1,\"wheels\":0,\"modArmor\":-1,\"modExhaust\":-1,\"modAirFilter\":-1,\"plate\":\"69RQQ072\",\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"modEngineBlock\":-1,\"modGrille\":-1,\"modBackWheels\":-1,\"modAerials\":-1,\"dirtLevel\":0.0,\"xenonColor\":255,\"modSideSkirt\":-1,\"wheelSize\":1.0,\"modKit47\":-1,\"modRightFender\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"modHorns\":-1,\"modTrunk\":-1,\"wheelWidth\":1.0,\"liveryRoof\":-1,\"modSeats\":-1,\"modDial\":-1,\"modDashboard\":-1,\"model\":1989114523,\"modTrimB\":-1,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modXenon\":false,\"extras\":{\"1\":true,\"6\":false,\"5\":false,\"2\":true},\"modAPlate\":-1,\"fuelLevel\":55.6029764306997,\"modOrnaments\":-1,\"modRoof\":-1,\"modCustomTiresR\":false,\"plateIndex\":1,\"dashboardColor\":0,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTransmission\":2,\"modKit21\":-1,\"modCustomTiresF\":false,\"wheelColor\":27,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"windowTint\":0,\"engineHealth\":980.2010416497633,\"modWindows\":-1,\"modTrimA\":-1,\"modArchCover\":-1,\"modBrakes\":2,\"modKit17\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"pearlescentColor\":156,\"color1\":0,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modTurbo\":1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false}}','69RQQ072',NULL,'pillboxgarage',56,981,997,1,0,60552,'{\"brakes\":100,\"radiator\":100,\"axle\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,NULL,'[{\"count\":1,\"metadata\":{\"registered\":\"谢尔比 邦德\",\"components\":[],\"durability\":100,\"ammo\":0,\"serial\":\"956465WGI783509\"},\"name\":\"WEAPON_PUMPSHOTGUN\",\"slot\":1}]',0,0,''),
(9,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','XRR77997','su7','-637952606','{\"modEngine\":-1,\"modDoorSpeaker\":-1,\"modAPlate\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modSmokeEnabled\":false,\"color2\":0,\"modKit19\":-1,\"bodyHealth\":893.6192640648167,\"modSpeakers\":-1,\"modPlateHolder\":-1,\"modFender\":-1,\"tankHealth\":847.5482264508083,\"modFrame\":-1,\"interiorColor\":111,\"modTank\":-1,\"oilLevel\":4.76596940834568,\"modKit49\":-1,\"color1\":111,\"wheels\":7,\"modArmor\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAirFilter\":-1,\"plate\":\"60QZH082\",\"neonEnabled\":[false,false,false,false],\"modVanityPlate\":-1,\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"modEngineBlock\":-1,\"modGrille\":-1,\"modKit17\":-1,\"modAerials\":-1,\"dirtLevel\":0.0,\"xenonColor\":255,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"wheelSize\":0.0,\"modKit47\":-1,\"modRightFender\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"modFrontBumper\":-1,\"modHorns\":-1,\"modTrunk\":-1,\"wheelWidth\":0.0,\"liveryRoof\":-1,\"modSeats\":-1,\"modDial\":-1,\"modRearBumper\":-1,\"model\":-637952606,\"modHydrolic\":-1,\"modTrimB\":-1,\"engineHealth\":965.9031334247262,\"modSteeringWheel\":-1,\"modLivery\":-1,\"modXenon\":false,\"extras\":{\"6\":true,\"4\":true},\"wheelColor\":29,\"fuelLevel\":19.06387763338275,\"modOrnaments\":-1,\"modRoof\":-1,\"modCustomTiresR\":false,\"plateIndex\":1,\"dashboardColor\":0,\"modBackWheels\":-1,\"modTransmission\":-1,\"modCustomTiresF\":false,\"modSideSkirt\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modDashboard\":-1,\"modKit21\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modWindows\":-1,\"modTrimA\":-1,\"modArchCover\":-1,\"modExhaust\":-1,\"modBrakes\":-1,\"modFrontWheels\":-1,\"modSuspension\":-1,\"pearlescentColor\":0,\"windowTint\":-1,\"modTurbo\":false,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false}}','60QZH082',NULL,'pillboxgarage',19,967,894,1,0,36618,'{\"axle\":100,\"brakes\":100,\"fuel\":100,\"radiator\":100,\"clutch\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(10,'license:4f020416a321dc57f151e3c34e524b1048009b9c','ELD02040','su7','-637952606','{\"dirtLevel\":2.38298470417284,\"modSteeringWheel\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBackWheels\":-1,\"modTurbo\":false,\"modFrontBumper\":-1,\"modKit47\":-1,\"modXenon\":false,\"bodyHealth\":1000.0592475178704,\"modSideSkirt\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modDial\":-1,\"modGrille\":-1,\"modCustomTiresF\":false,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modDoorSpeaker\":-1,\"modTrunk\":-1,\"modLivery\":-1,\"fuelLevel\":100.08535757525947,\"tyreSmokeColor\":[255,255,255],\"modHood\":-1,\"windowTint\":-1,\"extras\":{\"12\":false,\"11\":true,\"2\":false,\"1\":true},\"neonColor\":[255,0,255],\"modStruts\":-1,\"liveryRoof\":-1,\"modRoof\":-1,\"modAerials\":-1,\"modSpoilers\":-1,\"xenonColor\":255,\"modVanityPlate\":-1,\"plate\":\"3RN142JT\",\"modTank\":-1,\"modAirFilter\":-1,\"modSeats\":-1,\"wheelColor\":29,\"modFrontWheels\":-1,\"dashboardColor\":0,\"modTrimA\":-1,\"modFender\":-1,\"wheelSize\":0.0,\"wheelWidth\":0.0,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"modDashboard\":-1,\"modKit49\":-1,\"modArmor\":-1,\"modHorns\":-1,\"model\":-637952606,\"oilLevel\":4.76596940834568,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"modTransmission\":-1,\"modArchCover\":-1,\"color1\":111,\"neonEnabled\":[false,false,false,false],\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAPlate\":-1,\"modTrimB\":-1,\"wheels\":7,\"pearlescentColor\":0,\"interiorColor\":111,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"modKit21\":-1,\"modFrame\":-1,\"modKit19\":-1,\"modSuspension\":-1,\"modExhaust\":-1,\"modOrnaments\":-1,\"tankHealth\":1000.0592475178704,\"modWindows\":-1,\"color2\":0,\"modSpeakers\":-1,\"engineHealth\":1000.0592475178704,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modRearBumper\":-1,\"modRightFender\":-1,\"modCustomTiresR\":false,\"modKit17\":-1,\"plateIndex\":0}','3RN142JT',NULL,'pillboxgarage',100,1000,1000,0,4000,10086,'{\"fuel\":100,\"radiator\":100,\"brakes\":100,\"clutch\":100,\"axle\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(11,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','XRR77997','gp1','1234311532','{\"modDial\":-1,\"modBrakes\":2,\"modAerials\":-1,\"modKit17\":-1,\"modKit19\":-1,\"modTrimB\":-1,\"modHood\":-1,\"modFender\":-1,\"modFrame\":-1,\"wheels\":7,\"modTrimA\":-1,\"modShifterLeavers\":-1,\"liveryRoof\":-1,\"modWindows\":-1,\"modKit21\":-1,\"wheelWidth\":1.0,\"modArmor\":-1,\"color1\":29,\"modTurbo\":1,\"modHorns\":-1,\"modHydrolic\":-1,\"modEngine\":3,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":-1,\"engineHealth\":761.7607771005859,\"interiorColor\":112,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"tyreSmokeColor\":[255,255,255],\"modXenon\":false,\"modFrontBumper\":-1,\"fuelLevel\":54.01431996125114,\"modSmokeEnabled\":false,\"plate\":\"8KA515XR\",\"modGrille\":-1,\"neonEnabled\":[false,false,false,false],\"bodyHealth\":667.2357171683964,\"model\":1234311532,\"modFrontWheels\":-1,\"windowTint\":0,\"modLivery\":-1,\"modSteeringWheel\":-1,\"modKit47\":-1,\"dashboardColor\":0,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTank\":-1,\"modRearBumper\":-1,\"plateIndex\":0,\"modSuspension\":-1,\"extras\":[],\"modSpeakers\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBackWheels\":-1,\"modSeats\":-1,\"modSideSkirt\":-1,\"modAPlate\":-1,\"modPlateHolder\":-1,\"dirtLevel\":2.38298470417284,\"wheelSize\":1.0,\"modEngineBlock\":-1,\"pearlescentColor\":6,\"modTrunk\":-1,\"modVanityPlate\":-1,\"modKit49\":-1,\"modExhaust\":-1,\"xenonColor\":255,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":true},\"oilLevel\":4.76596940834568,\"modDoorSpeaker\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"modCustomTiresR\":false,\"wheelColor\":111,\"tankHealth\":960.3428357816563,\"modDashboard\":-1,\"modTransmission\":2,\"modCustomTiresF\":false,\"modArchCover\":-1,\"modRightFender\":-1,\"modSpoilers\":-1,\"modRoof\":-1,\"modAirFilter\":-1,\"color2\":111}','8KA515XR',NULL,'pillboxgarage',54,763,668,1,0,85855,'{\"radiator\":100,\"axle\":100,\"brakes\":100,\"fuel\":100,\"clutch\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(12,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','XRR77997','gp1','1234311532','{\"modArchCover\":-1,\"modTrimB\":-1,\"tankHealth\":4000.2369900714818,\"modAPlate\":-1,\"extras\":[],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modRearBumper\":-1,\"modKit21\":-1,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":2,\"modDial\":-1,\"modKit47\":-1,\"modTrunk\":-1,\"modKit17\":-1,\"neonEnabled\":[false,false,false,false],\"modSmokeEnabled\":false,\"modTransmission\":2,\"modAerials\":-1,\"modExhaust\":-1,\"modGrille\":-1,\"modFrontBumper\":-1,\"modFrame\":-1,\"modPlateHolder\":-1,\"modCustomTiresR\":false,\"oilLevel\":4.76596940834568,\"modTurbo\":1,\"modSideSkirt\":-1,\"modHood\":-1,\"modDashboard\":-1,\"dirtLevel\":0.0,\"modCustomTiresF\":false,\"wheelWidth\":1.0,\"modOrnaments\":-1,\"interiorColor\":111,\"pearlescentColor\":6,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"engineHealth\":969.0804463636234,\"xenonColor\":255,\"modLivery\":-1,\"plateIndex\":1,\"model\":1234311532,\"modHorns\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAirFilter\":-1,\"modEngineBlock\":-1,\"modSuspension\":-1,\"modSpeakers\":-1,\"modSpoilers\":-1,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modWindows\":-1,\"modRoof\":-1,\"bodyHealth\":991.3216369359033,\"modSteeringWheel\":-1,\"modStruts\":-1,\"wheels\":7,\"modSeats\":-1,\"plate\":\"9NI363OO\",\"modEngine\":3,\"modFender\":-1,\"modKit19\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modRightFender\":-1,\"color1\":8,\"color2\":38,\"modDoorSpeaker\":-1,\"fuelLevel\":19.85820586810703,\"modBackWheels\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":true},\"modTank\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modXenon\":false,\"windowTint\":-1,\"liveryRoof\":-1,\"wheelColor\":111,\"wheelSize\":1.0,\"modTrimA\":-1,\"dashboardColor\":0,\"modKit49\":-1}','9NI363OO',NULL,'pillboxgarage',19,970,992,1,0,36911,'{\"radiator\":100,\"axle\":100,\"brakes\":100,\"fuel\":100,\"clutch\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(14,'license:0b693a368c37a6bb1f97291e1e3fc4e078ed3a33','YBR81778','2vd_vscout','-1073688847','{\"windowTint\":-1,\"bodyHealth\":827.6900205827013,\"wheelColor\":0,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modRoof\":-1,\"model\":-1073688847,\"modSpoilers\":-1,\"modTransmission\":-1,\"tankHealth\":989.7329804664547,\"modFrontWheels\":-1,\"modKit19\":-1,\"modSuspension\":-1,\"modSteeringWheel\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modKit17\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArmor\":-1,\"plate\":\"85LQD783\",\"tireHealth\":{\"1\":1000.0,\"2\":995.1124267578125,\"3\":1000.0,\"0\":1000.0},\"xenonColor\":255,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modRearBumper\":-1,\"modSmokeEnabled\":false,\"dashboardColor\":0,\"modRightFender\":-1,\"modDial\":-1,\"wheelWidth\":1.0,\"modTrunk\":-1,\"pearlescentColor\":0,\"modFender\":-1,\"modArchCover\":-1,\"modTurbo\":false,\"modShifterLeavers\":-1,\"modLivery\":1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"oilLevel\":7.94328234724281,\"color2\":112,\"modKit47\":-1,\"modBackWheels\":-1,\"liveryRoof\":-1,\"modSeats\":-1,\"dirtLevel\":2.38298470417284,\"fuelLevel\":80.22715170715243,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":true},\"modKit49\":-1,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"plateIndex\":4,\"wheels\":4,\"modWindows\":-1,\"modFrontBumper\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modKit21\":-1,\"modStruts\":-1,\"extras\":{\"6\":true,\"7\":true,\"4\":true,\"5\":true,\"2\":true,\"3\":true,\"8\":true,\"1\":true},\"wheelSize\":1.0,\"modAirFilter\":-1,\"modHorns\":-1,\"color1\":0,\"modXenon\":false,\"modCustomTiresF\":false,\"neonEnabled\":[false,false,false,false],\"modCustomTiresR\":false,\"modHood\":-1,\"neonColor\":[255,0,255],\"interiorColor\":0,\"tyreSmokeColor\":[255,255,255],\"engineHealth\":903.151202881508,\"modTrimB\":-1,\"modExhaust\":-1}','85LQD783',NULL,'police',6,903,828,1,0,337255,'{\"brakes\":100,\"axle\":100,\"radiator\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,'[{\"count\":1,\"name\":\"phone\",\"slot\":2}]','[{\"metadata\":{\"serie\":\"78crI6gy878leCl\",\"ammo\":35,\"serial\":\"78crI6gy878leCl\",\"components\":[],\"durability\":91.75,\"attachments\":[{\"component\":\"COMPONENT_AT_PI_FLSH\",\"label\":\"Flashlight\"}]},\"count\":1,\"name\":\"WEAPON_PISTOL\",\"slot\":1},{\"metadata\":{\"serie\":\"24aPO3Yg604owfq\",\"ammo\":-1,\"serial\":\"24aPO3Yg604owfq\",\"components\":[],\"durability\":100,\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"}]},\"count\":1,\"name\":\"WEAPON_STUNGUN\",\"slot\":2}]',0,0,''),
(16,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','XRR77997','oycm5cs','830381660','{\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modEngineBlock\":-1,\"modVanityPlate\":-1,\"modExhaust\":-1,\"modSeats\":-1,\"tyreSmokeColor\":[255,255,255],\"dashboardColor\":28,\"dirtLevel\":3.17731293889712,\"modArchCover\":-1,\"modKit21\":-1,\"modKit19\":-1,\"neonColor\":[255,0,255],\"modCustomTiresR\":false,\"tankHealth\":957.1655228427592,\"modKit47\":-1,\"modOrnaments\":-1,\"fuelLevel\":30.97880115424697,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modFrontBumper\":-1,\"modEngine\":3,\"modGrille\":-1,\"oilLevel\":4.76596940834568,\"modSmokeEnabled\":false,\"modTrimA\":-1,\"modAirFilter\":-1,\"modTrimB\":-1,\"modWindows\":-1,\"modCustomTiresF\":false,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modSteeringWheel\":-1,\"neonEnabled\":[false,false,false,false],\"plateIndex\":2,\"color1\":52,\"modAerials\":-1,\"plate\":\"61WIJ412\",\"modSpeakers\":-1,\"modPlateHolder\":-1,\"model\":830381660,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"interiorColor\":28,\"modTurbo\":1,\"wheelWidth\":1.0,\"windowTint\":-1,\"wheelSize\":1.0,\"modBackWheels\":-1,\"modTrunk\":-1,\"modDoorSpeaker\":-1,\"modKit17\":-1,\"liveryRoof\":-1,\"modKit49\":-1,\"modShifterLeavers\":-1,\"modAPlate\":-1,\"color2\":28,\"modArmor\":-1,\"modTank\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modXenon\":false,\"wheelColor\":111,\"engineHealth\":682.3279536281577,\"modRearBumper\":-1,\"modTransmission\":2,\"pearlescentColor\":5,\"modLivery\":-1,\"modDashboard\":-1,\"modSideSkirt\":-1,\"modFrame\":-1,\"modStruts\":-1,\"extras\":{\"5\":false,\"6\":true,\"3\":false,\"4\":true,\"1\":false},\"modHydrolic\":-1,\"modSpoilers\":-1,\"modDial\":-1,\"modHood\":-1,\"modSuspension\":3,\"modRightFender\":-1,\"xenonColor\":255,\"modFender\":0,\"bodyHealth\":849.1368829202569,\"modBrakes\":2,\"wheels\":0,\"modHorns\":-1,\"modFrontWheels\":-1,\"modRoof\":-1}','61WIJ412',NULL,'pillboxgarage',31,683,850,1,0,70148,'{\"brakes\":100,\"radiator\":100,\"clutch\":100,\"axle\":100,\"fuel\":100}',0,0,0,0,NULL,NULL,'[{\"name\":\"goldbar\",\"slot\":8,\"count\":1},{\"name\":\"goldbar\",\"slot\":9,\"count\":1},{\"name\":\"goldbar\",\"slot\":10,\"count\":1}]',0,0,''),
(17,'license:7be1a5d5107a0f8aa4b254ae6379f999a57357a3','VQR49601','nero','1034187331','{\"modKit47\":-1,\"plate\":\"2FL598AA\",\"modVanityPlate\":-1,\"modSteeringWheel\":-1,\"modFender\":-1,\"color1\":112,\"modTrunk\":-1,\"modBackWheels\":-1,\"modRoof\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"wheelSize\":0.0,\"modAerials\":-1,\"modFrontBumper\":-1,\"extras\":[],\"wheelColor\":112,\"fuelLevel\":100.08535757525947,\"pearlescentColor\":18,\"oilLevel\":4.76596940834568,\"windowStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modHood\":-1,\"model\":1034187331,\"engineHealth\":1000.0592475178704,\"modTurbo\":false,\"wheels\":7,\"modArchCover\":-1,\"dashboardColor\":65,\"tyreSmokeColor\":[255,255,255],\"modHydrolic\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modTransmission\":-1,\"modDial\":-1,\"modKit49\":-1,\"modFrontWheels\":-1,\"modFrame\":-1,\"modCustomTiresF\":false,\"modSuspension\":-1,\"modRearBumper\":-1,\"bodyHealth\":1000.0592475178704,\"modRightFender\":-1,\"wheelWidth\":0.0,\"modKit21\":-1,\"modDoorSpeaker\":-1,\"modKit17\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modExhaust\":-1,\"color2\":70,\"modAirFilter\":-1,\"xenonColor\":255,\"tankHealth\":1000.0592475178704,\"modLivery\":-1,\"modGrille\":-1,\"modEngine\":-1,\"windowTint\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTrimB\":-1,\"neonEnabled\":[false,false,false,false],\"modArmor\":-1,\"dirtLevel\":2.38298470417284,\"modBrakes\":-1,\"modStruts\":-1,\"modDashboard\":-1,\"plateIndex\":0,\"modHorns\":-1,\"modSeats\":-1,\"modSmokeEnabled\":false,\"modShifterLeavers\":-1,\"interiorColor\":93,\"modSpeakers\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSpoilers\":-1,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modKit19\":-1,\"modAPlate\":-1,\"modXenon\":false,\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"modTrimA\":-1,\"modCustomTiresR\":false,\"liveryRoof\":-1}','2FL598AA',NULL,'pillboxgarage',100,1000,1000,1,0,639,'{\"fuel\":100,\"radiator\":100,\"axle\":100,\"clutch\":100,\"brakes\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(18,'license:7be1a5d5107a0f8aa4b254ae6379f999a57357a3','VQR49601','tenf2','274946574','{\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArchCover\":-1,\"modVanityPlate\":-1,\"bodyHealth\":997.6762628136975,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTrimA\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modDial\":-1,\"extras\":[],\"modRoof\":-1,\"modSuspension\":-1,\"plate\":\"3ZH851YF\",\"fuelLevel\":55.6029764306997,\"dirtLevel\":5.56029764306997,\"modDashboard\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"wheels\":7,\"color1\":19,\"modKit21\":-1,\"modHydrolic\":-1,\"xenonColor\":255,\"modShifterLeavers\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"color2\":0,\"modTank\":-1,\"modFrame\":-1,\"modHood\":-1,\"modStruts\":-1,\"interiorColor\":37,\"modKit47\":-1,\"modHorns\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modOrnaments\":-1,\"plateIndex\":0,\"tireHealth\":{\"1\":1000.0,\"2\":999.75,\"3\":1000.0,\"0\":1000.0},\"wheelSize\":1.0,\"oilLevel\":4.76596940834568,\"modCustomTiresR\":false,\"modFrontBumper\":-1,\"modFender\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modExhaust\":-1,\"modTransmission\":-1,\"pearlescentColor\":4,\"modDoorSpeaker\":-1,\"dashboardColor\":156,\"modFrontWheels\":-1,\"tankHealth\":997.6762628136975,\"modBackWheels\":-1,\"model\":274946574,\"modTurbo\":false,\"modKit17\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"modArmor\":-1,\"modAPlate\":-1,\"modRearBumper\":-1,\"windowStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modKit19\":-1,\"modTrunk\":-1,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"modAirFilter\":-1,\"wheelColor\":0,\"wheelWidth\":1.0,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modRightFender\":-1,\"engineHealth\":996.8819345789732,\"modCustomTiresF\":false,\"modWindows\":-1,\"liveryRoof\":-1,\"modLivery\":-1,\"modKit49\":-1}','3ZH851YF',NULL,'pillboxgarage',55,998,999,1,0,761,'{\"clutch\":100,\"radiator\":100,\"axle\":100,\"brakes\":100,\"fuel\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(19,'license:7be1a5d5107a0f8aa4b254ae6379f999a57357a3','VQR49601','italirsx','-1149725334','{\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArchCover\":-1,\"modVanityPlate\":-1,\"bodyHealth\":830.8673335215984,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTrimA\":-1,\"modSeats\":-1,\"modBrakes\":-1,\"modDial\":-1,\"extras\":[],\"modRoof\":-1,\"modSuspension\":-1,\"plate\":\"3WM968ZW\",\"fuelLevel\":82.61013641132527,\"dirtLevel\":0.79432823472428,\"modDashboard\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modSteeringWheel\":-1,\"wheels\":7,\"color1\":72,\"modKit21\":-1,\"modHydrolic\":-1,\"xenonColor\":255,\"modShifterLeavers\":-1,\"windowTint\":-1,\"tyreSmokeColor\":[255,255,255],\"modGrille\":-1,\"color2\":122,\"modTank\":-1,\"modFrame\":-1,\"modHood\":-1,\"modStruts\":-1,\"interiorColor\":18,\"modKit47\":-1,\"modHorns\":-1,\"modXenon\":false,\"modSpeakers\":-1,\"modOrnaments\":-1,\"plateIndex\":0,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"wheelSize\":1.0,\"oilLevel\":4.76596940834568,\"modCustomTiresR\":false,\"modFrontBumper\":-1,\"modFender\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modExhaust\":-1,\"modTransmission\":-1,\"pearlescentColor\":8,\"modDoorSpeaker\":-1,\"dashboardColor\":156,\"modFrontWheels\":-1,\"tankHealth\":974.6407440066934,\"modBackWheels\":-1,\"model\":-1149725334,\"modTurbo\":false,\"modKit17\":-1,\"modAerials\":-1,\"modSmokeEnabled\":false,\"modArmor\":-1,\"modAPlate\":-1,\"modRearBumper\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"modSideSkirt\":-1,\"modSpoilers\":-1,\"modKit19\":-1,\"modTrunk\":-1,\"modEngine\":-1,\"neonEnabled\":[false,false,false,false],\"modAirFilter\":-1,\"wheelColor\":0,\"wheelWidth\":1.0,\"neonColor\":[255,0,255],\"modEngineBlock\":-1,\"modRightFender\":-1,\"engineHealth\":903.151202881508,\"modCustomTiresF\":false,\"modWindows\":-1,\"liveryRoof\":-1,\"modLivery\":-1,\"modKit49\":-1}','3WM968ZW',NULL,'pillboxgarage',82,903,832,1,0,41996,'{\"radiator\":100,\"clutch\":100,\"fuel\":100,\"brakes\":100,\"axle\":100}',0,0,0,0,NULL,'[]',NULL,0,0,''),
(20,'license:b2825554d4b29a6d8d807fc4180ae99c59e1fdae','OZH56762','2vd_vscout','-1073688847','{\"engineHealth\":876.1440429008825,\"bodyHealth\":315.34830918553976,\"wheelColor\":0,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modKit49\":-1,\"modArchCover\":-1,\"modTransmission\":-1,\"tankHealth\":981.7896981192118,\"modFrontWheels\":-1,\"modKit19\":-1,\"modSuspension\":-1,\"modCustomTiresR\":false,\"modEngine\":-1,\"modHydrolic\":-1,\"modKit17\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArmor\":-1,\"modTurbo\":false,\"tireHealth\":{\"1\":990.7622680664063,\"2\":1000.0,\"3\":994.0899658203125,\"0\":1000.0},\"xenonColor\":255,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modBrakes\":-1,\"modBackWheels\":-1,\"modSmokeEnabled\":false,\"windowTint\":-1,\"wheels\":3,\"modDial\":-1,\"wheelWidth\":1.0,\"liveryRoof\":-1,\"pearlescentColor\":0,\"modFender\":-1,\"oilLevel\":7.94328234724281,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modLivery\":8,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"dashboardColor\":0,\"modEngineBlock\":-1,\"modPlateHolder\":-1,\"modSeats\":-1,\"modStruts\":-1,\"color2\":112,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":-1,\"dirtLevel\":0.79432823472428,\"interiorColor\":0,\"modSpeakers\":-1,\"modKit47\":-1,\"plate\":\"47FUR662\",\"modWindows\":-1,\"modTrunk\":-1,\"model\":-1073688847,\"modSideSkirt\":-1,\"modTank\":-1,\"modKit21\":-1,\"fuelLevel\":30.18447291952269,\"modHorns\":-1,\"wheelSize\":1.0,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"plateIndex\":4,\"modXenon\":false,\"modCustomTiresF\":false,\"extras\":{\"6\":true,\"7\":true,\"4\":true,\"5\":true,\"2\":true,\"3\":true,\"8\":true,\"1\":true},\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modSpoilers\":-1,\"windowStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":true},\"color1\":0,\"modHood\":-1,\"modTrimB\":-1,\"modExhaust\":-1}','47FUR662',NULL,'pillboxgarage',30,876,316,1,0,85251,'{\"brakes\":100,\"radiator\":100,\"axle\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,'[]','[{\"metadata\":{\"ammo\":0,\"serial\":\"355389ORY321181\",\"components\":[],\"registered\":\"谢尔比 邦德\",\"durability\":100},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":1},{\"metadata\":{\"ammo\":0,\"serial\":\"491869AVW590019\",\"components\":[],\"registered\":\"谢尔比 邦德\",\"durability\":100},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":2},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"phone\",\"slot\":3},{\"metadata\":{\"ammo\":0,\"serial\":\"420098FIX971724\",\"components\":[],\"registered\":\"谢尔比 邦德\",\"durability\":100},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":6},{\"metadata\":{\"quality\":100},\"count\":3,\"name\":\"weedkey\",\"slot\":17},{\"metadata\":{\"quality\":100},\"count\":3,\"name\":\"cocainekey\",\"slot\":18},{\"metadata\":{\"quality\":100},\"count\":2,\"name\":\"methkey\",\"slot\":19},{\"metadata\":{\"quality\":0},\"count\":3,\"name\":\"diamond_ring\",\"slot\":21},{\"count\":1,\"name\":\"goldbar\",\"slot\":22},{\"count\":1,\"name\":\"rolex\",\"slot\":23},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"diamond_ring\",\"slot\":24},{\"count\":1,\"name\":\"tenkgoldchain\",\"slot\":25},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"rolling_paper\",\"slot\":26},{\"count\":295,\"name\":\"ammo-rifle\",\"slot\":33},{\"metadata\":{\"ammo\":0,\"serial\":\"578876ACV723376\",\"components\":[],\"registered\":\"谢尔比 邦德\",\"durability\":100},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":34}]',0,0,''),
(21,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','XRR77997','ardent','159274291','{\"modCustomTiresR\":false,\"plateIndex\":0,\"xenonColor\":255,\"modKit49\":-1,\"modKit17\":-1,\"wheels\":1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modFrontWheels\":-1,\"modAerials\":-1,\"tankHealth\":995.2932781095246,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAPlate\":-1,\"modSideSkirt\":-1,\"modStruts\":-1,\"model\":159274291,\"modRearBumper\":-1,\"windowStatus\":{\"1\":true,\"2\":false,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modFender\":-1,\"modHorns\":-1,\"wheelSize\":0.0,\"modDoorSpeaker\":-1,\"modSmokeEnabled\":false,\"modHydrolic\":-1,\"wheelColor\":112,\"wheelWidth\":0.0,\"modSpoilers\":-1,\"modSteeringWheel\":-1,\"modEngineBlock\":-1,\"modWindows\":-1,\"modArmor\":-1,\"oilLevel\":6.35462587779425,\"modTank\":-1,\"liveryRoof\":-1,\"pearlescentColor\":87,\"engineHealth\":980.2010416497633,\"fuelLevel\":77.84416700297959,\"color2\":0,\"modDial\":-1,\"modArchCover\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"modGrille\":-1,\"modTrimB\":-1,\"modTurbo\":false,\"modKit19\":-1,\"modSuspension\":-1,\"interiorColor\":93,\"modTrunk\":-1,\"windowTint\":-1,\"bodyHealth\":0.0,\"modTransmission\":-1,\"modRoof\":-1,\"modDashboard\":-1,\"modLivery\":-1,\"modFrame\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":995.1124267578125,\"3\":1000.0,\"0\":999.0224609375},\"tyreSmokeColor\":[255,255,255],\"plate\":\"3HT776XP\",\"neonColor\":[255,0,255],\"modVanityPlate\":-1,\"color1\":88,\"modBrakes\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modSeats\":-1,\"neonEnabled\":[false,false,false,false],\"modBackWheels\":-1,\"modEngine\":-1,\"modKit21\":-1,\"dirtLevel\":3.9716411736214,\"modCustomTiresF\":false,\"dashboardColor\":93,\"modXenon\":false,\"modExhaust\":-1,\"modRightFender\":-1,\"modTrimA\":-1,\"modKit47\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"extras\":[],\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modOrnaments\":-1}','3HT776XP',NULL,'pillboxgarage',78,980,0,1,0,3394,'{\"axle\":100,\"brakes\":100,\"radiator\":100,\"fuel\":100,\"clutch\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(25,'license:1e839bec02ccd946ae235d79d54c7dc0adc653e7','VCV61562','century24','-120324718','{\"modXenon\":false,\"modHorns\":-1,\"modFrontWheels\":29,\"modStruts\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modKit19\":-1,\"modTrimA\":-1,\"modBackWheels\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modKit21\":-1,\"modEngineBlock\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"4\":false,\"6\":false},\"neonEnabled\":[false,false,false,false],\"bodyHealth\":1000.0592475178704,\"tankHealth\":4000.2369900714818,\"modGrille\":-1,\"modSpoilers\":-1,\"modFrontBumper\":-1,\"modWindows\":-1,\"dashboardColor\":0,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"interiorColor\":0,\"modShifterLeavers\":-1,\"pearlescentColor\":0,\"modCustomTiresR\":false,\"tyreSmokeColor\":[255,255,255],\"engineHealth\":1000.0592475178704,\"plate\":\"61BTW455\",\"modArchCover\":-1,\"modTank\":-1,\"wheelSize\":0.80270218849182,\"modLivery\":-1,\"modPlateHolder\":-1,\"modKit17\":-1,\"color2\":0,\"modTurbo\":false,\"modHood\":-1,\"modKit49\":-1,\"xenonColor\":255,\"modAerials\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modCustomTiresF\":false,\"modRightFender\":-1,\"model\":-120324718,\"modTrunk\":-1,\"dirtLevel\":0.0,\"modAirFilter\":-1,\"modDial\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"modKit47\":-1,\"modArmor\":-1,\"modSeats\":-1,\"wheelColor\":156,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBrakes\":-1,\"color1\":0,\"wheels\":7,\"oilLevel\":4.76596940834568,\"fuelLevel\":96.90804463636234,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSideSkirt\":-1,\"modFender\":-1,\"windowTint\":-1,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"plateIndex\":3,\"wheelWidth\":0.62694001197814,\"modRearBumper\":-1,\"modFrame\":-1,\"modAPlate\":-1,\"liveryRoof\":-1}','61BTW455',NULL,'pillboxgarage',49,845,995,1,0,15575,'{\"clutch\":100,\"fuel\":100,\"radiator\":100,\"axle\":100,\"brakes\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(27,'license:73d405d75d123b100bb91af1e2a71002ea30cf43','QHK11612','century24','-120324718','{\"modTrimA\":-1,\"dirtLevel\":0.0,\"modXenon\":false,\"modRoof\":-1,\"modArchCover\":-1,\"pearlescentColor\":0,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelColor\":156,\"modRearBumper\":-1,\"modDoorSpeaker\":-1,\"modTransmission\":-1,\"modHydrolic\":-1,\"modKit17\":-1,\"model\":-120324718,\"modWindows\":-1,\"neonColor\":[255,0,255],\"interiorColor\":0,\"modHorns\":-1,\"modKit47\":-1,\"modTrimB\":-1,\"modTurbo\":false,\"fuelLevel\":92.93640346274093,\"wheelSize\":1.0,\"modLivery\":-1,\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"modAPlate\":-1,\"liveryRoof\":-1,\"modHood\":-1,\"modAerials\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"extras\":{\"6\":true,\"4\":true},\"modDial\":-1,\"modSideSkirt\":-1,\"modFrontWheels\":-1,\"modShifterLeavers\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"plateIndex\":3,\"modDashboard\":-1,\"modKit21\":-1,\"modCustomTiresF\":false,\"modBrakes\":-1,\"tankHealth\":4000.2369900714818,\"modStruts\":-1,\"windowTint\":-1,\"modEngine\":-1,\"engineHealth\":1000.0592475178704,\"modAirFilter\":-1,\"modVanityPlate\":-1,\"modArmor\":-1,\"modKit19\":-1,\"modSteeringWheel\":-1,\"modSuspension\":-1,\"modKit49\":-1,\"xenonColor\":255,\"tyreSmokeColor\":[255,255,255],\"color1\":0,\"modRightFender\":-1,\"modSpoilers\":-1,\"dashboardColor\":0,\"wheels\":0,\"modFrontBumper\":-1,\"plate\":\"26IDA896\",\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTank\":-1,\"modOrnaments\":-1,\"modTrunk\":-1,\"wheelWidth\":1.0,\"modSeats\":-1,\"oilLevel\":4.76596940834568,\"bodyHealth\":1000.0592475178704,\"modFender\":-1,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"modExhaust\":-1,\"modSmokeEnabled\":false,\"color2\":0,\"modSpeakers\":-1,\"modFrame\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modGrille\":-1,\"modCustomTiresR\":false}','26IDA896',NULL,'police_confiscate',79,990,1001,2,0,81701,'{\"fuel\":100,\"axle\":100,\"brakes\":100,\"clutch\":100,\"radiator\":100}',0,0,0,0,NULL,'[]','[{\"metadata\":{\"ammo\":0,\"components\":[],\"durability\":99.85,\"serial\":\"39ezG9mT194OoZK\",\"serie\":\"39ezG9mT194OoZK\"},\"name\":\"WEAPON_KNIFE\",\"slot\":1,\"count\":1},{\"name\":\"cryptostick\",\"slot\":2,\"count\":1},{\"metadata\":{\"quality\":100},\"name\":\"goldchain\",\"slot\":3,\"count\":7},{\"metadata\":{\"quality\":100},\"name\":\"rolex\",\"slot\":4,\"count\":4},{\"metadata\":{\"attachments\":[{\"label\":\"1x Scope\",\"component\":\"COMPONENT_AT_SCOPE_MACRO_02\"},{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}],\"serial\":\"06qkI4zR207PrZt\",\"serie\":\"06qkI4zR207PrZt\",\"durability\":0,\"ammo\":222,\"components\":[]},\"name\":\"WEAPON_SMG\",\"slot\":6,\"count\":1},{\"metadata\":{\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_PI_FLSH\"}],\"serial\":\"15LVt7Dj987qaht\",\"serie\":\"15LVt7Dj987qaht\",\"durability\":0,\"ammo\":222,\"components\":[]},\"name\":\"WEAPON_PISTOL\",\"slot\":7,\"count\":1},{\"metadata\":{\"quality\":100},\"name\":\"sodium_hydroxide\",\"slot\":8,\"count\":1}]',0,0,''),
(28,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','XRR77997','expolregent','1899068433','{\"windowTint\":-1,\"bodyHealth\":874.5553864314339,\"wheelColor\":0,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modRoof\":-1,\"model\":1899068433,\"modArchCover\":0,\"wheels\":3,\"tankHealth\":950.0165687302406,\"modFrontWheels\":-1,\"liveryRoof\":-1,\"modSuspension\":-1,\"modCustomTiresR\":false,\"modEngine\":-1,\"modHydrolic\":-1,\"modKit17\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArmor\":-1,\"modTurbo\":false,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"xenonColor\":255,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modAerials\":3,\"modExhaust\":-1,\"dirtLevel\":0.0,\"modGrille\":-1,\"modBrakes\":-1,\"modRightFender\":-1,\"modSmokeEnabled\":false,\"plate\":\"83JMA543\",\"pearlescentColor\":0,\"modDial\":-1,\"wheelWidth\":1.0,\"oilLevel\":4.76596940834568,\"plateIndex\":0,\"modFender\":-1,\"modWindows\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modLivery\":1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modHorns\":-1,\"modHood\":-1,\"modKit47\":-1,\"modBackWheels\":-1,\"modKit19\":-1,\"modSeats\":-1,\"modFrontBumper\":-1,\"modRearBumper\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":-1,\"interiorColor\":0,\"modSteeringWheel\":-1,\"modSpeakers\":-1,\"modSpoilers\":-1,\"modEngineBlock\":-1,\"fuelLevel\":100.08535757525947,\"color1\":0,\"tyreSmokeColor\":[255,255,255],\"modSideSkirt\":-1,\"modTank\":1,\"modKit21\":-1,\"modStruts\":-1,\"extras\":{\"6\":true,\"4\":true,\"5\":true,\"2\":true,\"3\":true,\"1\":true},\"wheelSize\":1.0,\"modTrimA\":-1,\"color2\":112,\"modTransmission\":-1,\"modXenon\":false,\"modCustomTiresF\":false,\"modTrunk\":-1,\"neonEnabled\":[false,false,false,false],\"modAirFilter\":-1,\"dashboardColor\":0,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":false},\"engineHealth\":656.9094501169808,\"modKit49\":-1,\"modTrimB\":0,\"neonColor\":[255,0,255]}','83JMA543',NULL,'police',100,657,875,1,0,67735,'{\"brakes\":100,\"axle\":100,\"radiator\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,'[{\"count\":1,\"name\":\"methkey\",\"slot\":11}]','[{\"count\":1,\"name\":\"phone\",\"slot\":1},{\"count\":1,\"name\":\"phone\",\"slot\":2},{\"count\":1,\"name\":\"phone\",\"slot\":3},{\"count\":1,\"name\":\"phone\",\"slot\":4},{\"count\":1,\"name\":\"phone\",\"slot\":5},{\"count\":1,\"name\":\"phone\",\"slot\":6},{\"count\":9,\"name\":\"burger\",\"slot\":7},{\"metadata\":{\"ammo\":45,\"serial\":\"761175DXG328852\",\"components\":[],\"registered\":\"马卡斯 保罗\",\"durability\":45},\"count\":1,\"name\":\"WEAPON_PETROLCAN\",\"slot\":8},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"coke_brick\",\"slot\":9}]',0,0,''),
(30,'license:7be1a5d5107a0f8aa4b254ae6379f999a57357a3','VQR49601','aperta','-1481236684','{\"windowTint\":0,\"bodyHealth\":998.4705910484217,\"wheelColor\":11,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"model\":-1481236684,\"modArchCover\":-1,\"modTransmission\":-1,\"tankHealth\":4000.2369900714818,\"modFrontWheels\":-1,\"liveryRoof\":-1,\"windowStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modSteeringWheel\":-1,\"modEngine\":3,\"modHydrolic\":-1,\"modKit17\":-1,\"color1\":142,\"modArmor\":-1,\"plate\":\"02DGL783\",\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"xenonColor\":255,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":false,\"modSeats\":-1,\"modWindows\":-1,\"modDial\":-1,\"wheelWidth\":1.0,\"modKit19\":-1,\"pearlescentColor\":5,\"modFender\":-1,\"modSpoilers\":-1,\"color2\":27,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modSuspension\":-1,\"modGrille\":-1,\"modKit47\":-1,\"modEngineBlock\":-1,\"modKit49\":-1,\"modFrontBumper\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"plateIndex\":0,\"modRearBumper\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,255],\"extras\":{\"1\":false},\"modSpeakers\":-1,\"modExhaust\":-1,\"modCustomTiresR\":false,\"modTurbo\":false,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modKit21\":-1,\"fuelLevel\":24.62417527645272,\"modHorns\":-1,\"wheelSize\":1.0,\"modStruts\":-1,\"modHood\":-1,\"dirtLevel\":0.79432823472428,\"modXenon\":false,\"modCustomTiresF\":false,\"oilLevel\":6.35462587779425,\"dashboardColor\":0,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"interiorColor\":0,\"wheels\":7,\"modRightFender\":-1,\"modBackWheels\":-1,\"modTrimB\":-1,\"engineHealth\":989.7329804664547}','02DGL783',NULL,'pillboxgarage',24,991,999,1,0,110871,'{\"brakes\":100,\"radiator\":100,\"axle\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,'[]','[{\"name\":\"lockpick\",\"count\":3,\"slot\":1,\"metadata\":{\"quality\":100}}]',0,0,''),
(32,'license:7be1a5d5107a0f8aa4b254ae6379f999a57357a3','VQR49601','cullinan','-234385266','{\"modFrontBumper\":-1,\"modAerials\":-1,\"modGrille\":-1,\"modEngineBlock\":-1,\"modOrnaments\":-1,\"extras\":[],\"modSmokeEnabled\":false,\"plate\":\"22NTI362\",\"modLivery\":-1,\"dashboardColor\":102,\"modDashboard\":-1,\"modHorns\":-1,\"modWindows\":-1,\"modArchCover\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAPlate\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"wheelWidth\":1.0,\"modKit17\":-1,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"neonColor\":[255,0,255],\"tankHealth\":3999.442661836757,\"modTank\":-1,\"modFrame\":-1,\"neonEnabled\":[false,false,false,false],\"modRoof\":-1,\"modArmor\":-1,\"wheels\":0,\"color1\":68,\"engineHealth\":984.967011058109,\"modCustomTiresF\":false,\"modSeats\":-1,\"modKit19\":-1,\"modTrimA\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit21\":-1,\"interiorColor\":0,\"modFender\":-1,\"model\":-234385266,\"liveryRoof\":-1,\"modCustomTiresR\":false,\"oilLevel\":4.76596940834568,\"modDoorSpeaker\":-1,\"dirtLevel\":0.0,\"modSideSkirt\":-1,\"modPlateHolder\":-1,\"modBackWheels\":-1,\"xenonColor\":255,\"modFrontWheels\":-1,\"modSuspension\":-1,\"pearlescentColor\":0,\"modBrakes\":-1,\"wheelSize\":1.0,\"modEngine\":-1,\"modDial\":-1,\"modTurbo\":1,\"fuelLevel\":62.75193054321823,\"modKit47\":-1,\"modRearBumper\":-1,\"modShifterLeavers\":-1,\"wheelColor\":156,\"plateIndex\":3,\"modTrunk\":-1,\"modKit49\":-1,\"modVanityPlate\":-1,\"modHydrolic\":-1,\"modSpoilers\":-1,\"modSpeakers\":-1,\"modHood\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modExhaust\":-1,\"modTransmission\":-1,\"modTrimB\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modRightFender\":-1,\"modXenon\":false,\"windowTint\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"bodyHealth\":996.8819345789732,\"color2\":0}','22NTI362',NULL,'pillboxgarage',62,985,997,1,0,25058,'{\"axle\":100,\"radiator\":100,\"brakes\":100,\"fuel\":100,\"clutch\":100}',0,0,0,0,NULL,'[]',NULL,0,0,''),
(35,'license:b2825554d4b29a6d8d807fc4180ae99c59e1fdae','OZH56762','manchez','-1523428744','{\"color1\":33,\"wheelColor\":156,\"modBackWheels\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit19\":-1,\"modDoorSpeaker\":-1,\"modShifterLeavers\":-1,\"modTank\":-1,\"oilLevel\":4.76596940834568,\"plate\":\"88IGH604\",\"modKit47\":-1,\"modXenon\":false,\"modBrakes\":-1,\"dashboardColor\":0,\"interiorColor\":0,\"modSeats\":-1,\"neonColor\":[255,0,255],\"modKit21\":-1,\"liveryRoof\":-1,\"modTrimB\":-1,\"modSuspension\":-1,\"modSpeakers\":-1,\"fuelLevel\":2.38298470417284,\"bodyHealth\":1000.0592475178704,\"modFrontBumper\":-1,\"modExhaust\":-1,\"wheelWidth\":1.0,\"modSteeringWheel\":-1,\"modFrame\":-1,\"modGrille\":-1,\"modTurbo\":false,\"modCustomTiresR\":false,\"modSideSkirt\":-1,\"wheels\":6,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"color2\":5,\"modHydrolic\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modPlateHolder\":-1,\"modFender\":-1,\"modStruts\":-1,\"modDashboard\":-1,\"modAerials\":-1,\"pearlescentColor\":39,\"modHorns\":-1,\"modSpoilers\":-1,\"modRearBumper\":-1,\"modKit49\":-1,\"modEngineBlock\":-1,\"windowTint\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":false,\"modRightFender\":-1,\"modTransmission\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":0.0,\"3\":0.0,\"0\":1000.0},\"tankHealth\":4000.2369900714818,\"extras\":[],\"modArmor\":-1,\"modDial\":-1,\"neonEnabled\":[false,false,false,false],\"engineHealth\":1000.0592475178704,\"dirtLevel\":0.0,\"modTrimA\":-1,\"model\":-1523428744,\"modEngine\":-1,\"modAPlate\":-1,\"modHood\":-1,\"modArchCover\":-1,\"modKit17\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"xenonColor\":255,\"modCustomTiresF\":false,\"modAirFilter\":-1,\"wheelSize\":1.0,\"modOrnaments\":-1,\"modFrontWheels\":-1,\"modWindows\":-1,\"modLivery\":-1,\"modVanityPlate\":-1,\"modRoof\":-1,\"tyreSmokeColor\":[255,255,255],\"plateIndex\":0}','88IGH604',NULL,'pillboxgarage',15,614,722,1,0,50525,'{\"brakes\":100,\"radiator\":100,\"axle\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,'[]','[]',0,0,''),
(37,'license:b2825554d4b29a6d8d807fc4180ae99c59e1fdae','OZH56762','towtruck','-1323100960','{\"modTank\":-1,\"modEngineBlock\":-1,\"dirtLevel\":0.0,\"modDoorSpeaker\":-1,\"extras\":[],\"wheelSize\":0.0,\"modVanityPlate\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"modFender\":-1,\"modDial\":-1,\"color2\":0,\"modStruts\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":false,\"modSideSkirt\":-1,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"liveryRoof\":-1,\"modKit19\":-1,\"modHorns\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modKit17\":-1,\"modXenon\":false,\"xenonColor\":255,\"modBackWheels\":-1,\"plateIndex\":3,\"modTrimB\":-1,\"modCustomTiresF\":false,\"color1\":47,\"modSpeakers\":-1,\"windowStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"windowTint\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"oilLevel\":3.17731293889712,\"wheels\":0,\"modSteeringWheel\":-1,\"bodyHealth\":1000.0592475178704,\"modBrakes\":-1,\"wheelWidth\":0.0,\"tankHealth\":4000.2369900714818,\"modAerials\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"plate\":\"40IZC982\",\"modHood\":-1,\"modWindows\":-1,\"modAPlate\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit47\":-1,\"modRightFender\":-1,\"modOrnaments\":-1,\"modKit21\":-1,\"modRearBumper\":-1,\"engineHealth\":0.0,\"modKit49\":-1,\"modCustomTiresR\":false,\"neonEnabled\":[false,false,false,false],\"modShifterLeavers\":-1,\"modGrille\":-1,\"modExhaust\":-1,\"wheelColor\":156,\"modFrame\":-1,\"model\":-1323100960,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTransmission\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"pearlescentColor\":3,\"modLivery\":-1,\"fuelLevel\":77.0498387682553,\"dashboardColor\":0,\"modPlateHolder\":-1,\"modArchCover\":-1,\"interiorColor\":0,\"modArmor\":-1,\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modRoof\":-1}','40IZC982',NULL,'pillboxgarage',77,0,1000,1,0,8701,'{\"radiator\":100,\"fuel\":100,\"axle\":100,\"clutch\":100,\"brakes\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(42,'license:0b693a368c37a6bb1f97291e1e3fc4e078ed3a33','RHT93297','boxville5','682434785','{\"modArchCover\":-1,\"engineHealth\":995.2932781095246,\"color2\":0,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modBackWheels\":-1,\"modVanityPlate\":-1,\"modFrontBumper\":-1,\"modOrnaments\":-1,\"modSuspension\":-1,\"modBrakes\":-1,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modSpoilers\":-1,\"wheelSize\":1.0,\"extras\":[],\"modTrimB\":-1,\"modAPlate\":-1,\"modKit19\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSeats\":-1,\"pearlescentColor\":18,\"modArmor\":-1,\"modSmokeEnabled\":false,\"wheels\":0,\"modXenon\":false,\"wheelWidth\":1.0,\"modGrille\":-1,\"modHood\":-1,\"plateIndex\":0,\"modExhaust\":-1,\"modAirFilter\":-1,\"interiorColor\":0,\"modRearBumper\":-1,\"modStruts\":-1,\"modEngineBlock\":-1,\"modCustomTiresR\":false,\"modWindows\":-1,\"modFrame\":-1,\"modSpeakers\":-1,\"modCustomTiresF\":false,\"modTurbo\":false,\"modKit17\":-1,\"modRightFender\":-1,\"dashboardColor\":0,\"neonColor\":[255,0,255],\"modDial\":-1,\"xenonColor\":255,\"modFrontWheels\":-1,\"modFender\":-1,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"doorStatus\":{\"1\":true,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit49\":-1,\"wheelColor\":156,\"modSteeringWheel\":-1,\"dirtLevel\":0.0,\"windowStatus\":{\"1\":false,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":true},\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"model\":682434785,\"fuelLevel\":27.00715998062557,\"liveryRoof\":-1,\"modTank\":-1,\"modAerials\":-1,\"color1\":12,\"modHydrolic\":-1,\"plate\":\"24IKA545\",\"modKit47\":-1,\"modLivery\":-1,\"modRoof\":-1,\"windowTint\":-1,\"modEngine\":-1,\"modTrunk\":-1,\"oilLevel\":6.35462587779425,\"modTrimA\":-1,\"bodyHealth\":975.4350722414176,\"neonEnabled\":[false,false,false,false],\"modTransmission\":-1,\"tyreSmokeColor\":[255,255,255],\"tankHealth\":996.0876063442489,\"modKit21\":-1,\"modDashboard\":-1,\"modHorns\":-1}','24IKA545',NULL,'pillboxgarage',12,955,806,2,0,70721,'{\"clutch\":100,\"brakes\":100,\"radiator\":100,\"fuel\":100,\"axle\":100}',0,0,0,0,NULL,NULL,'[]',0,0,''),
(43,'license:1e839bec02ccd946ae235d79d54c7dc0adc653e7','VCV61562','2vd_vscout','-1073688847','{\"modXenon\":false,\"modHorns\":-1,\"modFrontWheels\":9,\"modStruts\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modRoof\":0,\"modSteeringWheel\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modKit19\":-1,\"modTrimA\":-1,\"modBackWheels\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modKit21\":-1,\"modEngineBlock\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"6\":true,\"5\":true,\"4\":true,\"3\":true,\"2\":true,\"1\":true,\"8\":true,\"7\":true},\"neonEnabled\":[false,false,false,false],\"bodyHealth\":1000.0592475178704,\"tankHealth\":4000.2369900714818,\"modGrille\":2,\"modSpoilers\":1,\"modFrontBumper\":3,\"modWindows\":-1,\"dashboardColor\":0,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"interiorColor\":0,\"modShifterLeavers\":-1,\"pearlescentColor\":0,\"modCustomTiresR\":false,\"tyreSmokeColor\":[255,255,255],\"engineHealth\":960.3428357816563,\"plate\":\"81GWV025\",\"modArchCover\":-1,\"modTank\":-1,\"wheelSize\":0.77291274070739,\"modLivery\":-1,\"modPlateHolder\":-1,\"modKit17\":-1,\"color2\":112,\"modTurbo\":1,\"modHood\":1,\"modKit49\":-1,\"xenonColor\":255,\"modAerials\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modCustomTiresF\":false,\"modRightFender\":0,\"model\":-1073688847,\"modTrunk\":0,\"dirtLevel\":0.0,\"modAirFilter\":-1,\"modDial\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"modKit47\":-1,\"modArmor\":-1,\"modSeats\":-1,\"wheelColor\":0,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBrakes\":-1,\"color1\":0,\"wheels\":4,\"oilLevel\":7.94328234724281,\"fuelLevel\":19.06387763338275,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSideSkirt\":3,\"modFender\":1,\"windowTint\":2,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"plateIndex\":4,\"wheelWidth\":0.54151237010955,\"modRearBumper\":5,\"modFrame\":2,\"modAPlate\":-1,\"liveryRoof\":-1}','81GWV025',NULL,NULL,100,1000,1000,0,4000,73080,'{\"radiator\":100,\"brakes\":100,\"axle\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,'[]','[]',0,0,''),
(44,'license:1e839bec02ccd946ae235d79d54c7dc0adc653e7','VCV61562','cullinan','-234385266','{\"modXenon\":false,\"modHorns\":-1,\"modFrontWheels\":-1,\"modStruts\":-1,\"modSpeakers\":-1,\"modExhaust\":-1,\"modTransmission\":-1,\"modRoof\":-1,\"modSteeringWheel\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modKit19\":-1,\"modTrimA\":-1,\"modBackWheels\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":true},\"modSuspension\":-1,\"modSmokeEnabled\":false,\"modKit21\":-1,\"modEngineBlock\":-1,\"modDoorSpeaker\":-1,\"extras\":[],\"neonEnabled\":[false,false,false,false],\"bodyHealth\":1000.0592475178704,\"tankHealth\":1000.0592475178704,\"modGrille\":-1,\"modSpoilers\":-1,\"modFrontBumper\":-1,\"modWindows\":-1,\"dashboardColor\":0,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"interiorColor\":0,\"modShifterLeavers\":-1,\"pearlescentColor\":0,\"modCustomTiresR\":false,\"tyreSmokeColor\":[255,255,255],\"engineHealth\":989.7329804664547,\"plate\":\"43QAX289\",\"modArchCover\":-1,\"modTank\":-1,\"wheelSize\":1.0,\"modLivery\":-1,\"modPlateHolder\":-1,\"modKit17\":-1,\"color2\":0,\"modTurbo\":1,\"modHood\":-1,\"modKit49\":-1,\"xenonColor\":255,\"modAerials\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modCustomTiresF\":false,\"modRightFender\":-1,\"model\":-234385266,\"modTrunk\":-1,\"dirtLevel\":0.0,\"modAirFilter\":-1,\"modDial\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modTrimB\":-1,\"modKit47\":-1,\"modArmor\":-1,\"modSeats\":-1,\"wheelColor\":156,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBrakes\":-1,\"color1\":0,\"wheels\":0,\"oilLevel\":4.76596940834568,\"fuelLevel\":94.52505993218949,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modSideSkirt\":-1,\"modFender\":-1,\"windowTint\":2,\"modOrnaments\":-1,\"modVanityPlate\":-1,\"plateIndex\":3,\"wheelWidth\":1.0,\"modRearBumper\":-1,\"modFrame\":-1,\"modAPlate\":-1,\"liveryRoof\":-1}','43QAX289',NULL,NULL,100,1000,1000,1,0,2497,'{\"clutch\":100,\"fuel\":100,\"radiator\":100,\"axle\":100,\"brakes\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(45,'license:008a7528d976f018f1d7280a861244f4406c15da','UUU52761','bati','-114291515','{\"modTank\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"extras\":[],\"wheelSize\":0.0,\"modVanityPlate\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"modFender\":-1,\"modDial\":-1,\"color2\":0,\"modStruts\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":false,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"liveryRoof\":-1,\"modKit19\":-1,\"modHorns\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modKit17\":-1,\"modExhaust\":-1,\"xenonColor\":255,\"modBackWheels\":-1,\"plateIndex\":0,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":0,\"modSpeakers\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":false},\"tireHealth\":{\"1\":1000.0,\"2\":0.0,\"3\":0.0,\"0\":1000.0},\"windowTint\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"oilLevel\":4.76596940834568,\"wheels\":6,\"modSteeringWheel\":-1,\"bodyHealth\":1000.0592475178704,\"modBrakes\":-1,\"wheelWidth\":0.0,\"tankHealth\":1000.0592475178704,\"modAerials\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"plate\":\"5JZ076RX\",\"modHood\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modXenon\":false,\"modWindows\":-1,\"modKit47\":-1,\"modOrnaments\":-1,\"modPlateHolder\":-1,\"model\":-114291515,\"dirtLevel\":10.32626705141565,\"engineHealth\":1000.0592475178704,\"modKit49\":-1,\"modCustomTiresR\":false,\"neonEnabled\":[false,false,false,false],\"interiorColor\":0,\"modRearBumper\":-1,\"modHydrolic\":-1,\"modGrille\":-1,\"modFrame\":-1,\"modKit21\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTransmission\":-1,\"modLivery\":-1,\"pearlescentColor\":18,\"modAPlate\":-1,\"fuelLevel\":100.08535757525947,\"dashboardColor\":0,\"wheelColor\":156,\"modArchCover\":-1,\"modSideSkirt\":-1,\"modCustomTiresF\":false,\"modRightFender\":-1,\"modArmor\":-1,\"modRoof\":-1}','5JZ076RX',NULL,'pillboxgarage',100,1000,1000,0,4000,3097,'{\"radiator\":100,\"brakes\":100,\"axle\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(47,'license:2da06b314a5f1fa81c89311ec89788310b27802d','QLU88274','rs721','1989114523','{\"modRightFender\":-1,\"oilLevel\":4.76596940834568,\"wheelColor\":27,\"modPlateHolder\":-1,\"modAPlate\":-1,\"modRoof\":-1,\"model\":1989114523,\"modArchCover\":-1,\"modTransmission\":-1,\"tankHealth\":3983.5560971422717,\"modFrontWheels\":4,\"modKit19\":-1,\"windowStatus\":{\"1\":false,\"2\":true,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":false},\"modSteeringWheel\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modKit17\":-1,\"tyreSmokeColor\":[255,255,255],\"color2\":5,\"modTurbo\":false,\"tireHealth\":{\"1\":999.89990234375,\"2\":1000.0,\"3\":999.949951171875,\"0\":1000.0},\"xenonColor\":255,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modAerials\":-1,\"modExhaust\":-1,\"dirtLevel\":1.58865646944856,\"modAirFilter\":-1,\"modBrakes\":-1,\"modCustomTiresR\":false,\"modSmokeEnabled\":false,\"modHorns\":1,\"bodyHealth\":880.1156840745039,\"modDial\":-1,\"wheelWidth\":0.57999765872955,\"modTrimA\":-1,\"plateIndex\":2,\"modFender\":-1,\"modSuspension\":-1,\"modDashboard\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modSideSkirt\":-1,\"plate\":\"01ESW047\",\"dashboardColor\":0,\"modBackWheels\":-1,\"color1\":120,\"modSeats\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"engineHealth\":909.5058287593023,\"modRearBumper\":-1,\"modOrnaments\":-1,\"wheels\":7,\"modEngineBlock\":-1,\"modSpeakers\":-1,\"modSpoilers\":-1,\"pearlescentColor\":111,\"neonColor\":[255,0,255],\"modArmor\":-1,\"modKit47\":-1,\"neonEnabled\":[false,false,false,false],\"modTank\":-1,\"modKit21\":-1,\"modStruts\":-1,\"extras\":{\"2\":false,\"5\":false,\"6\":false,\"1\":false},\"wheelSize\":0.72799998521804,\"modTrunk\":-1,\"modHood\":-1,\"modWindows\":-1,\"modXenon\":false,\"modCustomTiresF\":false,\"windowTint\":-1,\"modKit49\":-1,\"fuelLevel\":27.00715998062557,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modFrontBumper\":-1,\"liveryRoof\":-1,\"modGrille\":-1,\"modTrimB\":-1,\"interiorColor\":2}','01ESW047',NULL,'pillboxgarage',27,910,880,1,0,93754,'{\"brakes\":100,\"axle\":100,\"radiator\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,NULL,'[{\"count\":1,\"name\":\"methkey\",\"slot\":1},{\"metadata\":{\"serie\":\"36UZk0vY524uIVX\",\"ammo\":10,\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"}],\"durability\":0,\"components\":[],\"registered\":\"杰罗姆 约翰\",\"serial\":\"36UZk0vY524uIVX\"},\"count\":1,\"name\":\"WEAPON_PUMPSHOTGUN\",\"slot\":2},{\"metadata\":{\"nationality\":\"中国\",\"birthdate\":\"0009-02-01\",\"gender\":0,\"firstname\":\"杰罗姆\",\"quality\":100,\"lastname\":\"约翰\",\"citizenid\":\"QLU88274\"},\"count\":1,\"name\":\"id_card\",\"slot\":3},{\"metadata\":{\"type\":\"Class C Driver License\",\"birthdate\":\"0009-02-01\",\"firstname\":\"杰罗姆\",\"lastname\":\"约翰\",\"quality\":100},\"count\":1,\"name\":\"driver_license\",\"slot\":4},{\"metadata\":{\"serie\":\"02SiE5cA547JUZs\",\"ammo\":0,\"attachments\":[{\"component\":\"COMPONENT_AT_PI_FLSH\",\"label\":\"Flashlight\"}],\"durability\":81.50000000000105,\"components\":[],\"registered\":\"杰罗姆 约翰\",\"serial\":\"02SiE5cA547JUZs\"},\"count\":1,\"name\":\"WEAPON_PISTOL\",\"slot\":6},{\"metadata\":{\"durability\":68.80000000000178,\"components\":[]},\"count\":1,\"name\":\"WEAPON_KNIFE\",\"slot\":8},{\"metadata\":{\"ammo\":0,\"serial\":\"689831WBE819266\",\"components\":[],\"registered\":\"亚力 雷吉\",\"durability\":0},\"count\":1,\"name\":\"WEAPON_PETROLCAN\",\"slot\":11}]',0,0,''),
(48,'license:1d66e7c15b365459c984da5e633f19963a296d90','JJX03484','issi6','1239571361','{\"engineHealth\":530.61126079582,\"oilLevel\":7.94328234724281,\"wheelColor\":139,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"model\":1239571361,\"modArchCover\":-1,\"modTrunk\":-1,\"tankHealth\":3869.967159576699,\"modFrontWheels\":-1,\"modKit19\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"modSteeringWheel\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modKit17\":-1,\"color1\":138,\"modArmor\":-1,\"plate\":\"4LZ076HQ\",\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"xenonColor\":255,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modAerials\":0,\"modExhaust\":-1,\"dirtLevel\":0.79432823472428,\"modAirFilter\":-1,\"modBrakes\":-1,\"windowTint\":-1,\"modSmokeEnabled\":false,\"tyreSmokeColor\":[255,255,255],\"modBackWheels\":-1,\"modDial\":-1,\"wheelWidth\":1.0,\"wheels\":0,\"plateIndex\":4,\"modFender\":-1,\"bodyHealth\":204.9366845588646,\"modTurbo\":false,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modDashboard\":-1,\"dashboardColor\":111,\"modKit47\":-1,\"modEngineBlock\":-1,\"modRearBumper\":-1,\"modSeats\":-1,\"modHorns\":-1,\"pearlescentColor\":20,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":-1,\"modTransmission\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":true,\"5\":false,\"0\":false},\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"modKit49\":-1,\"modSuspension\":-1,\"modFrontBumper\":-1,\"fuelLevel\":16.68089292920991,\"modWindows\":-1,\"modTank\":1,\"modKit21\":-1,\"modStruts\":-1,\"extras\":[],\"wheelSize\":1.0,\"liveryRoof\":-1,\"color2\":135,\"modSideSkirt\":-1,\"modXenon\":false,\"modCustomTiresF\":false,\"modSpoilers\":2,\"modHood\":-1,\"modGrille\":-1,\"modTrimA\":-1,\"modRightFender\":-1,\"modPlateHolder\":-1,\"modCustomTiresR\":false,\"modTrimB\":-1,\"interiorColor\":129}','4LZ076HQ',NULL,'pillboxgarage',17,531,205,1,0,169920,'{\"brakes\":100,\"radiator\":100,\"axle\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,'[{\"count\":23,\"name\":\"burger\",\"slot\":1},{\"metadata\":{\"worth\":441},\"count\":1,\"name\":\"markedbills\",\"slot\":2},{\"metadata\":{\"rank\":\"初级警员\",\"type\":\"police\",\"name\":\"亚力 雷吉\",\"callsign\":\"013\"},\"count\":1,\"name\":\"pdbadge\",\"slot\":3},{\"metadata\":{\"worth\":394},\"count\":1,\"name\":\"markedbills\",\"slot\":4},{\"metadata\":{\"worth\":394},\"count\":1,\"name\":\"markedbills\",\"slot\":5},{\"metadata\":{\"worth\":419},\"count\":1,\"name\":\"markedbills\",\"slot\":6},{\"metadata\":{\"serie\":\"30OYl9MJ073LeJL\",\"ammo\":100,\"serial\":\"30OYl9MJ073LeJL\",\"components\":[],\"registered\":\"亚力 雷吉\",\"durability\":100},\"count\":1,\"name\":\"WEAPON_PETROLCAN\",\"slot\":7},{\"metadata\":{\"worth\":419},\"count\":1,\"name\":\"markedbills\",\"slot\":8},{\"metadata\":{\"worth\":419},\"count\":1,\"name\":\"markedbills\",\"slot\":9},{\"count\":123,\"name\":\"ammo-rifle\",\"slot\":10}]','[{\"count\":1,\"name\":\"parachute\",\"slot\":1},{\"count\":5,\"name\":\"worms\",\"slot\":2},{\"metadata\":{\"worth\":266},\"count\":1,\"name\":\"markedbills\",\"slot\":3},{\"metadata\":{\"worth\":365},\"count\":1,\"name\":\"markedbills\",\"slot\":4},{\"count\":1,\"name\":\"bandage\",\"slot\":5},{\"metadata\":{\"serie\":\"47ngs0re484wGYW\",\"ammo\":2,\"serial\":\"47ngs0re484wGYW\",\"attachments\":[{\"component\":\"COMPONENT_AT_PI_FLSH\",\"label\":\"Flashlight\"}],\"components\":[\"at_flashlight\"],\"registered\":\"亚力 雷吉\",\"durability\":29.80000000000397},\"count\":1,\"name\":\"WEAPON_PISTOL\",\"slot\":6},{\"count\":7,\"name\":\"water_bottle\",\"slot\":7},{\"metadata\":{\"worth\":392},\"count\":1,\"name\":\"markedbills\",\"slot\":9},{\"metadata\":{\"durability\":80},\"count\":1,\"name\":\"tweezers\",\"slot\":10},{\"metadata\":{\"serie\":\"70SWO4Zo940nLsN\",\"ammo\":85,\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"}],\"durability\":100,\"components\":[],\"registered\":\"亚力 雷吉\",\"serial\":\"70SWO4Zo940nLsN\"},\"count\":1,\"name\":\"WEAPON_STUNGUN\",\"slot\":11},{\"count\":2,\"name\":\"basic_rod\",\"slot\":13},{\"count\":1,\"name\":\"rubber\",\"slot\":15},{\"count\":1,\"name\":\"icepack\",\"slot\":16},{\"count\":1,\"name\":\"rubber\",\"slot\":17},{\"count\":1,\"name\":\"suturekit\",\"slot\":18},{\"count\":1,\"name\":\"rubber\",\"slot\":19},{\"count\":1,\"name\":\"rubber\",\"slot\":20}]',0,10,''),
(49,'license:1e839bec02ccd946ae235d79d54c7dc0adc653e7','VCV61562','nimbus','-1295027632','{\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"dirtLevel\":7.14895411251853,\"modDoorSpeaker\":-1,\"extras\":[],\"wheelSize\":0.0,\"modVanityPlate\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"modArmor\":-1,\"modDial\":-1,\"color2\":126,\"modStruts\":-1,\"modSpoilers\":-1,\"modLivery\":-1,\"interiorColor\":0,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"liveryRoof\":-1,\"modKit19\":-1,\"modHorns\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modKit17\":-1,\"modExhaust\":-1,\"xenonColor\":255,\"modBackWheels\":-1,\"plateIndex\":4,\"modTrimB\":-1,\"modShifterLeavers\":-1,\"color1\":111,\"modSpeakers\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"windowTint\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"oilLevel\":4.76596940834568,\"wheels\":0,\"modSteeringWheel\":-1,\"bodyHealth\":1000.0592475178704,\"modBrakes\":-1,\"wheelWidth\":0.0,\"tankHealth\":1000.0592475178704,\"modAerials\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"plate\":\"0AF470JA\",\"modHood\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modWindows\":-1,\"modTransmission\":-1,\"modKit47\":-1,\"modTank\":-1,\"model\":-1295027632,\"modSideSkirt\":-1,\"modFender\":-1,\"engineHealth\":1000.0592475178704,\"modRearBumper\":-1,\"modCustomTiresR\":false,\"neonEnabled\":[false,false,false,false],\"wheelColor\":90,\"modSmokeEnabled\":false,\"modFrontWheels\":-1,\"modCustomTiresF\":false,\"modFrame\":-1,\"modAPlate\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit21\":-1,\"modKit49\":-1,\"pearlescentColor\":0,\"modXenon\":false,\"fuelLevel\":100.08535757525947,\"dashboardColor\":0,\"modHydrolic\":-1,\"modArchCover\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modOrnaments\":-1,\"modRightFender\":-1,\"modGrille\":-1,\"modRoof\":-1}','0AF470JA',NULL,'pillboxgarage',100,1000,1000,0,4000,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,''),
(50,'license:1d66e7c15b365459c984da5e633f19963a296d90','JJX03484','frogger','744705981','{\"modTank\":-1,\"modEngineBlock\":-1,\"dirtLevel\":3.9716411736214,\"modDoorSpeaker\":-1,\"extras\":{\"2\":true,\"1\":true,\"7\":true},\"wheelSize\":0.0,\"modVanityPlate\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"modFender\":-1,\"modDial\":-1,\"color2\":111,\"modStruts\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":false,\"modSideSkirt\":-1,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"liveryRoof\":-1,\"modKit19\":-1,\"modHorns\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modKit17\":-1,\"modExhaust\":-1,\"xenonColor\":255,\"modAPlate\":-1,\"plateIndex\":4,\"modTrimB\":-1,\"modCustomTiresF\":false,\"color1\":30,\"modSpeakers\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":true},\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"windowTint\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"oilLevel\":7.94328234724281,\"wheels\":0,\"modSteeringWheel\":-1,\"bodyHealth\":1000.0592475178704,\"modBrakes\":-1,\"wheelWidth\":0.0,\"tankHealth\":1000.0592475178704,\"modAerials\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"plate\":\"8ML674UD\",\"modHood\":-1,\"modWindows\":-1,\"modXenon\":false,\"model\":744705981,\"modKit47\":-1,\"modKit21\":-1,\"modGrille\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modTransmission\":-1,\"engineHealth\":1000.0592475178704,\"modRearBumper\":-1,\"modCustomTiresR\":false,\"neonEnabled\":[false,false,false,false],\"modFrontWheels\":-1,\"modKit49\":-1,\"modBackWheels\":-1,\"modHydrolic\":-1,\"modFrame\":-1,\"interiorColor\":0,\"wheelColor\":156,\"modOrnaments\":-1,\"modPlateHolder\":-1,\"pearlescentColor\":30,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"fuelLevel\":100.08535757525947,\"dashboardColor\":0,\"modLivery\":-1,\"modArchCover\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArmor\":-1,\"modRightFender\":-1,\"modShifterLeavers\":-1,\"modRoof\":-1}','8ML674UD',NULL,'OUT',100,1000,1000,1,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,''),
(51,'license:1d66e7c15b365459c984da5e633f19963a296d90','JJX03484','havok','-1984275979','{\"modPlateHolder\":-1,\"modEngineBlock\":-1,\"modFrontWheels\":-1,\"modDoorSpeaker\":-1,\"extras\":{\"2\":true,\"1\":true,\"7\":true},\"wheelSize\":0.0,\"modVanityPlate\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"modArmor\":-1,\"modDial\":-1,\"color2\":5,\"modStruts\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":false,\"modSideSkirt\":-1,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"liveryRoof\":-1,\"modKit19\":-1,\"modHorns\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modKit17\":-1,\"modXenon\":false,\"xenonColor\":255,\"modAPlate\":-1,\"plateIndex\":0,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"color1\":38,\"modSpeakers\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":false},\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"windowTint\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"oilLevel\":7.94328234724281,\"wheels\":0,\"modSteeringWheel\":-1,\"bodyHealth\":1000.0592475178704,\"modBrakes\":-1,\"wheelWidth\":0.0,\"tankHealth\":1000.0592475178704,\"modAerials\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"plate\":\"1SF380RT\",\"modHood\":-1,\"modWindows\":-1,\"modTank\":-1,\"modTrimB\":-1,\"modKit47\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelColor\":111,\"modLivery\":-1,\"dirtLevel\":0.0,\"engineHealth\":1000.0592475178704,\"modKit49\":-1,\"modCustomTiresR\":false,\"neonEnabled\":[false,false,false,false],\"modKit21\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1,\"modCustomTiresF\":false,\"modFrame\":-1,\"modRearBumper\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modRightFender\":-1,\"modExhaust\":-1,\"pearlescentColor\":38,\"interiorColor\":111,\"fuelLevel\":100.08535757525947,\"dashboardColor\":0,\"modGrille\":-1,\"modArchCover\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modFender\":-1,\"modHydrolic\":-1,\"model\":-1984275979,\"modRoof\":-1}','1SF380RT',NULL,'OUT',100,1000,1000,1,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,''),
(52,'license:1d66e7c15b365459c984da5e633f19963a296d90','JJX03484','supervolito2','-1671539132','{\"modTank\":-1,\"modEngineBlock\":-1,\"dirtLevel\":0.79432823472428,\"modDoorSpeaker\":-1,\"extras\":{\"2\":true,\"1\":true,\"7\":true},\"wheelSize\":0.0,\"modVanityPlate\":-1,\"modSeats\":-1,\"modSuspension\":-1,\"modArmor\":-1,\"model\":-1671539132,\"modOrnaments\":-1,\"modStruts\":-1,\"modSpoilers\":-1,\"modLivery\":-1,\"interiorColor\":0,\"modDashboard\":-1,\"tyreSmokeColor\":[255,255,255],\"liveryRoof\":-1,\"modKit19\":-1,\"modHorns\":-1,\"modEngine\":-1,\"modTurbo\":false,\"modTrimA\":-1,\"modKit17\":-1,\"modXenon\":false,\"xenonColor\":255,\"modBackWheels\":-1,\"plateIndex\":4,\"modTransmission\":-1,\"modShifterLeavers\":-1,\"color1\":3,\"modSpeakers\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"windowTint\":-1,\"neonColor\":[255,0,255],\"modAirFilter\":-1,\"oilLevel\":7.94328234724281,\"wheels\":0,\"modSteeringWheel\":-1,\"bodyHealth\":1000.0592475178704,\"modBrakes\":-1,\"wheelWidth\":0.0,\"tankHealth\":1000.0592475178704,\"modAerials\":-1,\"modTrunk\":-1,\"modFrontBumper\":-1,\"plate\":\"9AT364CZ\",\"modHood\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit47\":-1,\"modWindows\":-1,\"modDial\":-1,\"modSmokeEnabled\":false,\"modSideSkirt\":-1,\"engineHealth\":1000.0592475178704,\"modKit49\":-1,\"modCustomTiresR\":false,\"neonEnabled\":[false,false,false,false],\"modAPlate\":-1,\"modRightFender\":-1,\"modTrimB\":-1,\"modExhaust\":-1,\"modFrame\":-1,\"modFrontWheels\":-1,\"wheelColor\":156,\"modRearBumper\":-1,\"modFender\":-1,\"pearlescentColor\":5,\"modGrille\":-1,\"fuelLevel\":100.08535757525947,\"dashboardColor\":0,\"modCustomTiresF\":false,\"modArchCover\":-1,\"modPlateHolder\":-1,\"modKit21\":-1,\"modHydrolic\":-1,\"color2\":1,\"modRoof\":-1}','9AT364CZ',NULL,'OUT',100,1000,1000,1,0,NULL,NULL,0,0,0,0,NULL,NULL,NULL,0,0,''),
(53,'license:008a7528d976f018f1d7280a861244f4406c15da','UUU52761','faggio2','55628203','{\"modTrunk\":-1,\"modKit17\":-1,\"oilLevel\":4.76596940834568,\"modSeats\":-1,\"modHorns\":-1,\"wheels\":6,\"liveryRoof\":-1,\"windowTint\":-1,\"modEngine\":-1,\"modFrontWheels\":-1,\"plate\":\"8GR969WL\",\"modRearBumper\":-1,\"modArmor\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"wheelWidth\":0.0,\"modDashboard\":-1,\"modLivery\":-1,\"dirtLevel\":4.76596940834568,\"interiorColor\":0,\"dashboardColor\":0,\"modAirFilter\":-1,\"modHydrolic\":-1,\"tyreSmokeColor\":[255,255,255],\"modCustomTiresF\":false,\"modSmokeEnabled\":false,\"tireHealth\":{\"1\":1000.0,\"2\":0.0,\"3\":0.0,\"0\":1000.0},\"modAerials\":-1,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"fuelLevel\":100.08535757525947,\"modRoof\":-1,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"pearlescentColor\":5,\"modVanityPlate\":-1,\"modFender\":-1,\"modSpeakers\":-1,\"modGrille\":-1,\"modCustomTiresR\":false,\"modSpoilers\":-1,\"modTrimA\":-1,\"modArchCover\":-1,\"modTurbo\":false,\"plateIndex\":3,\"modBackWheels\":-1,\"xenonColor\":255,\"modSideSkirt\":-1,\"wheelColor\":156,\"modKit19\":-1,\"modSteeringWheel\":-1,\"modRightFender\":-1,\"modStruts\":-1,\"neonColor\":[255,0,255],\"modXenon\":false,\"extras\":[],\"modAPlate\":-1,\"modOrnaments\":-1,\"modWindows\":-1,\"modTransmission\":-1,\"modDial\":-1,\"modKit49\":-1,\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit47\":-1,\"wheelSize\":0.0,\"color1\":7,\"modBrakes\":-1,\"modSuspension\":-1,\"modHood\":-1,\"modFrontBumper\":-1,\"modShifterLeavers\":-1,\"engineHealth\":1000.0592475178704,\"modExhaust\":-1,\"modEngineBlock\":-1,\"modKit21\":-1,\"modFrame\":-1,\"model\":55628203,\"modTank\":-1,\"tankHealth\":1000.0592475178704,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"bodyHealth\":1000.0592475178704,\"color2\":0}','8GR969WL',NULL,'pillboxgarage',100,1000,1000,1,0,9267,'{\"fuel\":100,\"radiator\":100,\"brakes\":100,\"clutch\":100,\"axle\":100}',0,0,0,0,NULL,NULL,NULL,0,0,''),
(54,'license:c0faaf4241c696fdcd31a23fbace0c28c94f82e7','IMN66507','xls','1203490606','{\"modRightFender\":-1,\"bodyHealth\":970.669102833072,\"wheelColor\":156,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"modKit49\":-1,\"modArchCover\":-1,\"modTrunk\":-1,\"tankHealth\":3994.6766924284117,\"modFrontWheels\":1,\"modKit19\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":true,\"5\":true,\"6\":true,\"7\":true,\"0\":false},\"modCustomTiresR\":false,\"modEngine\":-1,\"modHydrolic\":-1,\"modKit17\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modArmor\":-1,\"modTurbo\":false,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":991.2179565429688},\"xenonColor\":255,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"modGrille\":-1,\"modBrakes\":-1,\"modTransmission\":-1,\"modSmokeEnabled\":false,\"modAirFilter\":-1,\"modSeats\":-1,\"modDial\":-1,\"wheelWidth\":0.57635974884033,\"dirtLevel\":0.0,\"plateIndex\":0,\"modFender\":-1,\"extras\":[],\"modStruts\":-1,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modSideSkirt\":-1,\"liveryRoof\":-1,\"dashboardColor\":0,\"modBackWheels\":-1,\"modExhaust\":-1,\"modFrontBumper\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"tyreSmokeColor\":[255,255,255],\"modRearBumper\":-1,\"modOrnaments\":-1,\"modKit47\":-1,\"oilLevel\":7.94328234724281,\"modSpeakers\":-1,\"wheels\":9,\"interiorColor\":0,\"plate\":\"0AS738XZ\",\"model\":1203490606,\"modSpoilers\":-1,\"modWindows\":-1,\"modTank\":-1,\"modKit21\":-1,\"fuelLevel\":97.70237287108663,\"modHorns\":7,\"wheelSize\":0.81034314632415,\"modHood\":-1,\"engineHealth\":982.5840263539361,\"windowTint\":3,\"modXenon\":false,\"modCustomTiresF\":false,\"color2\":158,\"color1\":158,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modSteeringWheel\":-1,\"modSuspension\":-1,\"modEngineBlock\":-1,\"modTrimB\":-1,\"pearlescentColor\":160}','0AS738XZ',NULL,'police',98,983,972,1,0,27275,'{\"brakes\":100,\"axle\":100,\"radiator\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,'[{\"count\":1,\"name\":\"phone\",\"slot\":6},{\"count\":1,\"name\":\"goldchain\",\"slot\":7},{\"count\":1,\"name\":\"mustard\",\"slot\":8}]','[{\"count\":5,\"name\":\"hydrochloric_acid\",\"slot\":1},{\"count\":3290,\"name\":\"black_money\",\"slot\":2},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"methkey\",\"slot\":49},{\"count\":1,\"name\":\"cocainekey\",\"slot\":48},{\"metadata\":{\"rank\":\"初级警员\",\"type\":\"police\",\"callsign\":\"409\",\"photo\":\"https://i.fmfile.com/7S1plAQv2YcrBrcOxugL4/paul.png\",\"name\":\"马卡斯 保罗\"},\"count\":1,\"name\":\"pdbadge\",\"slot\":51},{\"metadata\":{\"durability\":100},\"count\":1,\"name\":\"handcuffs\",\"slot\":46},{\"count\":1,\"name\":\"radio\",\"slot\":47},{\"count\":14,\"name\":\"redwcig\",\"slot\":6}]',0,0,''),
(55,'license:1d66e7c15b365459c984da5e633f19963a296d90','JJX03484','luxor2','-1214293858','{}','2LH316FY',NULL,'pillboxgarage',100,1000,1000,1,0,NULL,NULL,34000,8500,4,1109,NULL,NULL,NULL,0,0,''),
(56,'license:7be1a5d5107a0f8aa4b254ae6379f999a57357a3','VQR49601','rhapsody','841808271','{\"windowTint\":-1,\"bodyHealth\":999.2649192831461,\"wheelColor\":156,\"neonColor\":[255,0,255],\"modAPlate\":-1,\"modRoof\":-1,\"model\":841808271,\"modArchCover\":-1,\"modTransmission\":-1,\"tankHealth\":1000.0592475178704,\"modFrontWheels\":-1,\"liveryRoof\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":true,\"0\":true},\"modSteeringWheel\":-1,\"modEngine\":-1,\"modHydrolic\":-1,\"modKit17\":-1,\"color1\":6,\"modArmor\":-1,\"plate\":\"3TY635OQ\",\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"xenonColor\":255,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modAerials\":-1,\"modTrimA\":-1,\"modDashboard\":-1,\"modAirFilter\":-1,\"modBrakes\":-1,\"modTrunk\":-1,\"modSmokeEnabled\":false,\"modSeats\":-1,\"modWindows\":-1,\"modDial\":-1,\"wheelWidth\":0.0,\"modKit19\":-1,\"pearlescentColor\":111,\"modFender\":-1,\"modSpoilers\":-1,\"color2\":0,\"modShifterLeavers\":-1,\"modLivery\":-1,\"modDoorSpeaker\":-1,\"modFrame\":-1,\"modSuspension\":-1,\"modGrille\":-1,\"modKit47\":-1,\"modEngineBlock\":-1,\"modKit49\":-1,\"modFrontBumper\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"plateIndex\":0,\"modRearBumper\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,255],\"extras\":[],\"modSpeakers\":-1,\"modExhaust\":-1,\"modCustomTiresR\":false,\"modTurbo\":false,\"neonEnabled\":[false,false,false,false],\"modPlateHolder\":-1,\"modSideSkirt\":-1,\"modTank\":-1,\"modKit21\":-1,\"fuelLevel\":98.4967011058109,\"modHorns\":-1,\"wheelSize\":0.0,\"modStruts\":-1,\"modHood\":-1,\"dirtLevel\":3.17731293889712,\"modXenon\":false,\"modCustomTiresF\":false,\"oilLevel\":4.76596940834568,\"dashboardColor\":0,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"interiorColor\":0,\"wheels\":1,\"modRightFender\":-1,\"modBackWheels\":-1,\"modTrimB\":-1,\"engineHealth\":998.4705910484217}','3TY635OQ',NULL,'pillboxgarage',98,999,999,1,0,476,'{\"brakes\":100,\"radiator\":100,\"axle\":100,\"clutch\":100,\"fuel\":100}',0,0,0,0,NULL,NULL,NULL,0,0,'');
/*!40000 ALTER TABLE `player_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_vehicles_fuel_type`
--

DROP TABLE IF EXISTS `player_vehicles_fuel_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_vehicles_fuel_type` (
  `plate` varchar(20) NOT NULL,
  `fuelType` varchar(20) NOT NULL,
  PRIMARY KEY (`plate`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_vehicles_fuel_type`
--

LOCK TABLES `player_vehicles_fuel_type` WRITE;
/*!40000 ALTER TABLE `player_vehicles_fuel_type` DISABLE KEYS */;
INSERT INTO `player_vehicles_fuel_type` VALUES
('01ESW047','plus'),
('02DGL783','premium'),
('22NTI362','premium'),
('26IDA896','premium'),
('40IZC982','diesel'),
('87OMT384','premium');
/*!40000 ALTER TABLE `player_vehicles_fuel_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_warns`
--

DROP TABLE IF EXISTS `player_warns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_warns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderIdentifier` varchar(50) DEFAULT NULL,
  `targetIdentifier` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `warnId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_warns`
--

LOCK TABLES `player_warns` WRITE;
/*!40000 ALTER TABLE `player_warns` DISABLE KEYS */;
INSERT INTO `player_warns` VALUES
(1,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','license:821cf5790625f4290620b46a9a5f230f4ee6913c','不准犯规','WARN-1464'),
(2,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','license:821cf5790625f4290620b46a9a5f230f4ee6913c','norp驾驶','WARN-5521');
/*!40000 ALTER TABLE `player_warns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(250) DEFAULT NULL,
  `dangerous` tinyint(4) DEFAULT 0,
  `wanted` tinyint(4) unsigned DEFAULT 0,
  PRIMARY KEY (`citizenid`),
  KEY `id` (`id`),
  KEY `last_updated` (`last_updated`),
  KEY `license` (`license`)
) ENGINE=InnoDB AUTO_INCREMENT=22914 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES
(10916,'BDN59221',1,'license:f650a84063fccff210863c808faac3d7f0ae6d01','blue','{\"cash\":256,\"crypto\":0,\"bank\":88027.0}','{\"nationality\":\"墨西哥\",\"phone\":\"3344597310\",\"lastname\":\"马布里\",\"birthdate\":\"2222-02-02\",\"cid\":\"1\",\"gender\":0,\"account\":\"US02QBCore6690872467\",\"firstname\":\"卡尔\"}','{\"onduty\":true,\"label\":\"警察\",\"payment\":600,\"grade\":{\"level\":1,\"isboss\":false,\"name\":\"初级警员\",\"payment\":600},\"isboss\":false,\"name\":\"police\",\"type\":\"leo\"}','{\"grade\":{\"isboss\":false,\"name\":\"Unaffiliated\",\"level\":0},\"isboss\":false,\"label\":\"No Gang\",\"name\":\"none\"}','{\"x\":447.059326171875,\"y\":-996.0,\"z\":25.6907958984375}','{\"isdead\":false,\"ishandcuffed\":false,\"inside\":{\"apartment\":[]},\"licences\":{\"business\":false,\"weapon\":true,\"driver\":true},\"tracker\":false,\"handgunflag\":\"waisthandgun\",\"fingerprint\":\"NY564w94ooQ6130\",\"stress\":0,\"rifleflag\":\"tacticalrifle\",\"hunger\":80.0,\"callsign\":\"NO CALLSIGN\",\"radio_police.anim\":1,\"thirst\":75.0,\"armor\":0,\"inlaststand\":false,\"walletid\":\"QB-86381306\",\"vehicleKeys\":{\"69IEU160\":true,\"LSPD8205\":true,\"LSPD8529\":true,\"00TES196\":true,\"87QKN470\":true,\"28KFR752\":true,\"LSPD7158\":true,\"42UMT209\":true,\"LSPD4858\":true,\"ZULU5694\":true,\"LSPD4009\":true,\"LSPD6825\":true,\"LSPD1229\":true,\"LSPD7961\":true,\"LSPD6102\":true,\"LSPD6974\":true,\"27IBP021\":true,\"8GA378WO\":true,\"66TQG287\":true,\"41MCP970\":true,\"LSPD5193\":true,\"LSPD3711\":true,\"27ECQ140\":true,\"86MAI446\":true,\"ZULU3351\":true,\"86HKK234\":true,\"26DHZ582\":true,\"LSPD1926\":true,\"LSPD6194\":true,\"LSPD3487\":true,\"LSPD4635\":true,\"LSPD7011\":true,\"ZULU1318\":true,\"LSPD1614\":true,\"LSPD4631\":true,\"LSPD7520\":true,\"ZULU9660\":true,\"40RRE269\":true,\"LSPD8173\":true,\"3WM968ZW\":true,\"63NQH546\":true,\"LSPD9664\":true,\"LSPD9027\":true,\"43PIY808\":true,\"LSPD1496\":true,\"49LBY930\":true,\"ZULU8061\":true,\"ZULU6623\":true,\"80UAY072\":true,\"ZULU2227\":true,\"ZULU1509\":true,\"ZULU2052\":true,\"48VVT060\":true,\"85LQD783\":true,\"01ZXS578\":true,\"64ZZM205\":true,\"LSPD8308\":true,\"40DHQ188\":true,\"81BQY532\":true,\"84UVC069\":true,\"LSPD8120\":true,\"ZULU5752\":true,\"22CBB123\":true,\"LSPD2749\":true,\"20BUF527\":true,\"84CXC863\":true,\"LSPD9873\":true,\"LSPD8180\":true,\"LSPD2885\":true,\"ZULU5187\":true,\"65VEL794\":true,\"ZULU9632\":true,\"08SFL610\":true,\"02EJM691\":true,\"64JFF556\":true,\"ZULU7333\":true,\"ZULU5514\":true,\"86LJE293\":true,\"LSPD3074\":true,\"ZULU3966\":true,\"TESTDRIV\":true,\"LSPD8155\":true,\"ZULU7259\":true,\"24IKA545\":true,\"ZULU1596\":true,\"24FNN351\":true,\"LSPD5097\":true,\"LSPD3923\":true,\"LSPD4603\":true,\"ZULU3745\":true,\"LSPD8734\":true,\"ZULU3630\":true,\"62KGF317\":true,\"LSPD5495\":true,\"ZULU1980\":true,\"LSPD6443\":true,\"ZULU1285\":true,\"46SYM414\":true,\"LSPD4081\":true,\"ZULU6754\":true,\"ZULU1955\":true,\"ZULU6674\":true,\"07XOR231\":true,\"LSPD8989\":true,\"ZULU7603\":true,\"LSPD6961\":true,\"LSPD1480\":true,\"ZULU8831\":true,\"26IDA896\":true,\"LSPD6643\":true,\"ZULU1191\":true,\"80SES736\":true,\"01YZT400\":true,\"ZULU1686\":true,\"LSPD2516\":true,\"ZULU6062\":true,\"ZULU1687\":true,\"LSPD7399\":true,\"LSPD4223\":true,\"06LGF926\":true,\"LSPD5484\":true,\"LSPD5903\":true,\"LSPD2180\":true,\"LSPD7124\":true,\"28HDQ390\":true,\"ZULU9879\":true,\"LSPD6458\":true,\"ZULU2564\":true,\"LSPD5537\":true,\"LSPD4097\":true,\"ZULU6575\":true,\"02NUA152\":true,\"60MAL462\":true,\"LSPD6966\":true,\"LSPD6883\":true,\"ZULU1576\":true,\"LSPD3133\":true,\"05RIT780\":true,\"LSPD8782\":true,\"ZULU3727\":true,\"ZULU6978\":true,\"ZULU3722\":true},\"status\":[],\"custom_police_keybind\":{\"I\":\"origen_police:dispatch:delalert\",\"O\":\"origen_police:dispatch:mrkalert\",\"H\":\"origen_police:dispatch:alertas\"},\"phone\":[],\"rep\":[],\"injail\":0,\"bloodtype\":\"A-\",\"jailitems\":[],\"phonedata\":{\"SerialNumber\":25886134,\"InstalledApps\":[]},\"criminalrecord\":{\"hasRecord\":true,\"date\":{\"isdst\":false,\"wday\":5,\"month\":3,\"sec\":5,\"year\":2025,\"hour\":16,\"yday\":86,\"min\":22,\"day\":27}}}','[{\"metadata\":{\"registered\":\"卡尔 马布里\",\"serial\":\"506701POL255525\",\"ammo\":12,\"durability\":100,\"components\":[]},\"name\":\"WEAPON_PISTOL\",\"slot\":1,\"count\":1},{\"name\":\"ammo-9\",\"slot\":2,\"count\":176},{\"metadata\":{\"components\":[],\"durability\":94.6000000000003},\"name\":\"WEAPON_NIGHTSTICK\",\"slot\":3,\"count\":1},{\"metadata\":{\"quality\":100},\"name\":\"radio\",\"slot\":4,\"count\":1},{\"metadata\":{\"serie\":\"68Fgz4dR037TgHW\",\"serial\":\"68Fgz4dR037TgHW\",\"components\":[],\"durability\":100,\"ammo\":-1,\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}]},\"name\":\"WEAPON_STUNGUN\",\"slot\":5,\"count\":1},{\"name\":\"money\",\"slot\":6,\"count\":256},{\"name\":\"megaphone\",\"slot\":7,\"count\":1},{\"name\":\"ammo-rifle\",\"slot\":8,\"count\":185},{\"name\":\"water\",\"slot\":9,\"count\":10},{\"metadata\":{\"quality\":100},\"name\":\"phone\",\"slot\":10,\"count\":1},{\"metadata\":{\"quality\":100},\"name\":\"binoculars\",\"slot\":11,\"count\":1},{\"name\":\"police_cad\",\"slot\":13,\"count\":1},{\"metadata\":{\"serie\":\"24Vxs0CI244yYBA\",\"serial\":\"24Vxs0CI244yYBA\",\"components\":[],\"durability\":100,\"ammo\":-1,\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}]},\"name\":\"WEAPON_STUNGUN\",\"slot\":14,\"count\":1},{\"metadata\":{\"quality\":100},\"name\":\"lockpick\",\"slot\":15,\"count\":2}]','2025-04-06 12:12:37',NULL,0,0),
(10180,'CCU80978',2,'license:b2825554d4b29a6d8d807fc4180ae99c59e1fdae','1216742759','{\"bank\":4500,\"cash\":300,\"crypto\":0}','{\"nationality\":\"美国\",\"lastname\":\"缇娜\",\"gender\":1,\"cid\":\"2\",\"firstname\":\"克莉丝\",\"phone\":\"6658322894\",\"birthdate\":\"2000-05-11\",\"account\":\"US03QBCore7530673974\"}','{\"name\":\"unemployed\",\"label\":\"公民\",\"type\":\"none\",\"isboss\":false,\"grade\":{\"isboss\":false,\"name\":\"自由职业者\",\"level\":0},\"payment\":500,\"onduty\":false}','{\"isboss\":false,\"grade\":{\"isboss\":false,\"name\":\"Unaffiliated\",\"level\":0},\"label\":\"No Gang\",\"name\":\"none\"}','{\"x\":479.3538513183594,\"y\":-1006.7736206054688,\"z\":26.2637939453125}','{\"walletid\":\"QB-75325816\",\"armor\":0,\"ishandcuffed\":false,\"bloodtype\":\"A+\",\"phone\":[],\"phonedata\":{\"SerialNumber\":38349980,\"InstalledApps\":[]},\"callsign\":\"NO CALLSIGN\",\"isdead\":false,\"criminalrecord\":{\"hasRecord\":false},\"fingerprint\":\"dP783j34vFX0763\",\"inside\":{\"apartment\":[]},\"stress\":0,\"vehicleKeys\":{\"9VU149NQ\":true,\"48WYO064\":true,\"LSPD8180\":true,\"LSPD5495\":true},\"rep\":[],\"tracker\":false,\"status\":[],\"inlaststand\":false,\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"thirst\":100,\"injail\":0,\"jailitems\":[],\"hunger\":100}','[{\"count\":300,\"name\":\"money\",\"slot\":1},{\"count\":1,\"metadata\":{\"birthdate\":\"2000-05-11\",\"type\":\"Class C Driver License\",\"quality\":100,\"lastname\":\"缇娜\",\"firstname\":\"克莉丝\"},\"name\":\"driver_license\",\"slot\":2},{\"count\":1,\"metadata\":{\"birthdate\":\"2000-05-11\",\"nationality\":\"美国\",\"lastname\":\"缇娜\",\"quality\":100,\"gender\":1,\"citizenid\":\"CCU80978\",\"firstname\":\"克莉丝\"},\"name\":\"id_card\",\"slot\":3},{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"phone\",\"slot\":4}]','2025-04-04 10:28:25',NULL,0,0),
(10704,'CDV27651',1,'license:43cbcd9981c53bac4ae17af16a417bf4b0bbfbbf','2533294482','{\"bank\":104350,\"cash\":883,\"crypto\":0}','{\"nationality\":\"中国\",\"lastname\":\"乔治\",\"gender\":0,\"cid\":\"1\",\"firstname\":\"托尼\",\"phone\":\"3061886442\",\"birthdate\":\"2012-11-17\",\"account\":\"US05QBCore2338215198\"}','{\"name\":\"ambulance\",\"label\":\"医护\",\"type\":\"ems\",\"isboss\":true,\"grade\":{\"name\":\"医院长\",\"isboss\":true,\"payment\":1000,\"level\":4},\"onduty\":true}','{\"isboss\":false,\"grade\":{\"name\":\"Unaffiliated\",\"isboss\":false,\"level\":0},\"label\":\"No Gang\",\"name\":\"none\"}','{\"x\":81.29670715332031,\"y\":-1127.90771484375,\"z\":28.9091796875}','{\"walletid\":\"QB-85496383\",\"armor\":0,\"ishandcuffed\":false,\"bloodtype\":\"A-\",\"inside\":{\"apartment\":[]},\"custom_police_keybind\":{\"O\":\"origen_police:dispatch:mrkalert\",\"I\":\"origen_police:dispatch:delalert\",\"H\":\"origen_police:dispatch:alertas\"},\"phonedata\":{\"SerialNumber\":37511623,\"InstalledApps\":[]},\"callsign\":\"NO CALLSIGN\",\"stress\":0,\"jailitems\":[],\"fingerprint\":\"dW288M64YnP8020\",\"injail\":0,\"isdead\":false,\"phone\":[],\"rep\":[],\"tracker\":false,\"status\":[],\"inlaststand\":false,\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"criminalrecord\":{\"hasRecord\":false},\"vehicleKeys\":{\"47FUR662\":true,\"01JVY963\":true,\"ZULU2866\":true,\"26XXY861\":true,\"LSPD8786\":true,\"LSPD9944\":true,\"LSPD8538\":true,\"08GNP011\":true,\"ZULU2718\":true,\"LSPD2278\":true,\"ZULU7869\":true,\"06TMQ429\":true,\"LSPD3358\":true,\"66LNR569\":true,\"8GA378WO\":true,\"LSPD3756\":true,\"85LQD783\":true,\"LSPD1424\":true,\"LSPD9604\":true,\"27PNX154\":true,\"LSPD6907\":true,\"LSPD5318\":true,\"04RNK118\":true,\"LSPD1763\":true,\"63ZGJ897\":true},\"thirst\":95.0,\"hunger\":96.0}','[{\"count\":883,\"name\":\"money\",\"slot\":1},{\"count\":1,\"name\":\"police_cad\",\"slot\":2},{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"phone\",\"slot\":3},{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"armor\",\"slot\":4},{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"radio\",\"slot\":5},{\"count\":1,\"metadata\":{\"components\":[],\"durability\":100,\"serial\":\"88OUr4jY266qOxA\",\"serie\":\"88OUr4jY266qOxA\",\"ammo\":-1,\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}]},\"name\":\"WEAPON_STUNGUN\",\"slot\":6},{\"count\":1,\"metadata\":{\"components\":[],\"durability\":34.75,\"serial\":\"30ePz7ZN676rdJx\",\"serie\":\"30ePz7ZN676rdJx\",\"ammo\":25,\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_PI_FLSH\"}]},\"name\":\"WEAPON_PISTOL\",\"slot\":7},{\"count\":1,\"metadata\":{\"components\":[],\"durability\":73.75,\"serial\":\"69PFj3Sj003wxMM\",\"serie\":\"69PFj3Sj003wxMM\",\"ammo\":-1,\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"},{\"label\":\"3x Scope\",\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\"}]},\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":8}]','2025-04-03 12:05:00',NULL,0,0),
(7573,'DJT70814',1,'license:a1cf0d73d905fd3bbcd26f4903563af51ce2215e','欧文','{\"cash\":500,\"crypto\":0,\"bank\":5000}','{\"cid\":1,\"firstname\":\"文\",\"lastname\":\"欧\",\"nationality\":\"China\",\"phone\":\"5515997374\",\"birthdate\":\"2000-02-05\",\"account\":\"US07QBCore3180833190\",\"gender\":0}','{\"name\":\"unemployed\",\"label\":\"Civilian\",\"onduty\":false,\"payment\":10,\"type\":\"none\",\"isboss\":false,\"grade\":{\"name\":\"Freelancer\",\"level\":0}}','{\"isboss\":false,\"name\":\"none\",\"label\":\"No Gang Affiliation\",\"grade\":{\"name\":\"none\",\"level\":0}}','{\"x\":-267.5340576171875,\"y\":-971.90771484375,\"z\":2.2696533203125}','{\"injail\":0,\"callsign\":\"NO CALLSIGN\",\"tracker\":false,\"ishandcuffed\":false,\"licences\":{\"business\":false,\"driver\":true,\"weapon\":false},\"inlaststand\":false,\"walletid\":\"QB-41140199\",\"bloodtype\":\"B+\",\"fingerprint\":\"va774g96fdb7120\",\"stress\":0,\"rep\":[],\"hunger\":96.0,\"status\":[],\"phone\":[],\"isdead\":false,\"thirst\":95.0,\"currentapartment\":\"apartment11134\",\"phonedata\":{\"SerialNumber\":12386123,\"InstalledApps\":[]},\"jailitems\":[],\"criminalrecord\":{\"hasRecord\":false},\"inside\":{\"apartment\":{\"apartmentType\":\"apartment1\",\"apartmentId\":\"apartment11134\"}},\"armor\":0}','[{\"count\":500,\"slot\":1,\"name\":\"money\"},{\"name\":\"driver_license\",\"count\":1,\"slot\":2,\"metadata\":{\"birthdate\":\"2000-02-05\",\"firstname\":\"文\",\"type\":\"Class C Driver License\",\"lastname\":\"欧\"}},{\"name\":\"id_card\",\"count\":1,\"slot\":3,\"metadata\":{\"birthdate\":\"2000-02-05\",\"lastname\":\"欧\",\"nationality\":\"China\",\"firstname\":\"文\",\"gender\":0,\"citizenid\":\"DJT70814\"}},{\"name\":\"phone\",\"count\":1,\"slot\":4,\"metadata\":[]}]','2025-04-02 10:01:44',NULL,0,0),
(2368,'ELD02040',1,'license:4f020416a321dc57f151e3c34e524b1048009b9c','xqanjelh27','{\"bank\":2000,\"cash\":314,\"crypto\":0}','{\"birthdate\":\"2000-11-04\",\"cid\":1,\"firstname\":\"厄莎\",\"nationality\":\"China\",\"gender\":0,\"lastname\":\"克雷吉\",\"phone\":\"3131592050\",\"account\":\"US06QBCore3862745031\"}','{\"grade\":{\"name\":\"医院长\",\"payment\":1000,\"level\":4,\"isboss\":true},\"payment\":1000,\"onduty\":true,\"name\":\"ambulance\",\"type\":\"ems\",\"label\":\"医护\",\"isboss\":true}','{\"label\":\"No Gang\",\"grade\":{\"name\":\"Unaffiliated\",\"level\":0,\"isboss\":false},\"name\":\"none\",\"isboss\":false}','{\"x\":391.1736145019531,\"y\":-89.89450073242188,\"z\":67.175048828125}','{\"fingerprint\":\"Af224x78AvD5163\",\"jailitems\":[],\"criminalrecord\":{\"hasRecord\":false},\"inside\":{\"apartment\":[]},\"phonedata\":{\"SerialNumber\":54152499,\"InstalledApps\":[]},\"armor\":0,\"status\":[],\"inlaststand\":false,\"injail\":0,\"vehicleKeys\":{\"65DTS754\":true,\"69RQQ072\":true,\"LIFE6809\":true,\"3RN142JT\":true,\"24ZYE833\":true},\"licences\":{\"weapon\":false,\"driver\":true,\"business\":false},\"walletid\":\"QB-81399022\",\"rep\":[],\"tracker\":false,\"isdead\":false,\"ishandcuffed\":false,\"bloodtype\":\"A-\",\"stress\":0,\"thirst\":0,\"phone\":[],\"hunger\":0,\"callsign\":\"NO CALLSIGN\"}','[{\"count\":314,\"slot\":1,\"name\":\"money\"},{\"name\":\"id_card\",\"count\":1,\"slot\":2,\"metadata\":{\"birthdate\":\"2000-11-04\",\"lastname\":\"克雷吉\",\"citizenid\":\"ELD02040\",\"firstname\":\"厄莎\",\"gender\":0,\"nationality\":\"China\"}},{\"name\":\"weapon_vintagepistol\",\"count\":1,\"slot\":3,\"metadata\":{\"serial\":\"49tvf5SD654PVgf\",\"durability\":87.25,\"components\":[],\"serie\":\"49tvf5SD654PVgf\",\"ammo\":92}},{\"name\":\"tosti\",\"count\":25,\"slot\":4,\"metadata\":[]},{\"name\":\"water_bottle\",\"count\":18,\"slot\":5,\"metadata\":{\"quality\":83.8,\"ammo\":109}},{\"name\":\"phone\",\"count\":1,\"slot\":6,\"metadata\":[]},{\"name\":\"kurkakola\",\"count\":30,\"slot\":7,\"metadata\":[]},{\"name\":\"driver_license\",\"count\":1,\"slot\":8,\"metadata\":{\"birthdate\":\"2000-11-04\",\"firstname\":\"厄莎\",\"lastname\":\"克雷吉\",\"type\":\"Class C Driver License\"}}]','2025-04-02 10:01:44',NULL,0,0),
(9873,'GID66771',1,'license:821cf5790625f4290620b46a9a5f230f4ee6913c','你看你马呢','{\"bank\":87996,\"cash\":7090,\"crypto\":0}','{\"phone\":\"8495281966\",\"birthdate\":\"2221-02-03\",\"firstname\":\"比尔\",\"nationality\":\"祖国人\",\"gender\":0,\"account\":\"US02QBCore3397845239\",\"lastname\":\"卡门\",\"cid\":\"1\"}','{\"name\":\"unemployed\",\"onduty\":true,\"label\":\"公民\",\"grade\":{\"level\":0,\"name\":\"自由职业者\",\"isboss\":false,\"payment\":500},\"isboss\":false,\"type\":\"none\"}','{\"name\":\"none\",\"grade\":{\"name\":\"Unaffiliated\",\"isboss\":false,\"level\":0},\"isboss\":false,\"label\":\"No Gang\"}','{\"y\":-594.4615478515625,\"z\":43.2821044921875,\"x\":306.3032836914063}','{\"walletid\":\"QB-41292327\",\"hunger\":88.0,\"fingerprint\":\"nF212N91qqX1283\",\"stress\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":89986887},\"phone\":[],\"criminalrecord\":{\"hasRecord\":false},\"inlaststand\":false,\"rep\":[],\"status\":[],\"jailitems\":[],\"thirst\":85.0,\"isdead\":false,\"callsign\":\"NO CALLSIGN\",\"armor\":0,\"tracker\":false,\"bloodtype\":\"O+\",\"licences\":{\"business\":false,\"driver\":true,\"weapon\":false},\"inside\":{\"apartment\":[]},\"vehicleKeys\":{\"67OJE850\":true,\"47FUR662\":true,\"ZULU2718\":true,\"8GA378WO\":true,\"LSPD3133\":true,\"ZULU6623\":true,\"63LCK732\":true,\"81GJD673\":true},\"injail\":0,\"ishandcuffed\":false}','[{\"count\":7090,\"slot\":1,\"name\":\"money\"},{\"name\":\"weapon_carbinerifle\",\"count\":1,\"slot\":2,\"metadata\":{\"serial\":\"51ftu1Tw394KrIe\",\"serie\":\"51ftu1Tw394KrIe\",\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"},{\"label\":\"3x Scope\",\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\"}],\"components\":[],\"durability\":76.0,\"ammo\":171}},{\"name\":\"heavyarmor\",\"count\":1,\"slot\":3,\"metadata\":{\"quality\":100}},{\"name\":\"heavyarmor\",\"count\":1,\"slot\":4,\"metadata\":{\"quality\":100}},{\"name\":\"phone\",\"count\":1,\"slot\":5,\"metadata\":{\"quality\":100}},{\"name\":\"id_card\",\"count\":1,\"slot\":6,\"metadata\":{\"birthdate\":\"2221-02-03\",\"citizenid\":\"GID66771\",\"lastname\":\"卡门\",\"quality\":100,\"firstname\":\"比尔\",\"gender\":0,\"nationality\":\"祖国人\"}},{\"name\":\"driver_license\",\"count\":1,\"slot\":7,\"metadata\":{\"birthdate\":\"2221-02-03\",\"type\":\"Class C Driver License\",\"quality\":100,\"firstname\":\"比尔\",\"lastname\":\"卡门\"}}]','2025-04-02 10:01:44',NULL,0,0),
(6778,'ICW34676',1,'license:2da06b314a5f1fa81c89311ec89788310b27802d','HUAWEI','{\"bank\":0,\"cash\":0.0,\"crypto\":0}','{\"nationality\":\"China\",\"lastname\":\"爱丽丝\",\"gender\":1,\"cid\":1,\"firstname\":\"希尔\",\"account\":\"US01QBCore4906434879\",\"birthdate\":\"2025-03-16\",\"phone\":\"4739763744\"}','{\"name\":\"unemployed\",\"label\":\"公民\",\"type\":\"none\",\"isboss\":false,\"grade\":{\"name\":\"自由职业者\",\"isboss\":false,\"payment\":500,\"level\":0},\"payment\":500,\"onduty\":true}','{\"name\":\"none\",\"grade\":{\"isboss\":false,\"name\":\"Unaffiliated\",\"level\":0},\"label\":\"No Gang\",\"isboss\":false}','{\"x\":1213.3714599609376,\"y\":2732.729736328125,\"z\":37.9912109375}','{\"walletid\":\"QB-31095040\",\"armor\":0,\"ishandcuffed\":false,\"bloodtype\":\"A+\",\"phone\":[],\"phonedata\":{\"SerialNumber\":73923038,\"InstalledApps\":[]},\"callsign\":\"NO CALLSIGN\",\"thirst\":100,\"jailitems\":[],\"fingerprint\":\"Hc183j76STA4877\",\"inside\":{\"apartment\":[]},\"isdead\":false,\"hunger\":100,\"rep\":[],\"tracker\":false,\"status\":[],\"inlaststand\":false,\"injail\":0,\"criminalrecord\":{\"hasRecord\":false},\"licences\":{\"driver\":true,\"weapon\":false,\"business\":false},\"stress\":0,\"vehicleKeys\":{\"ZULU5478\":true,\"01ESW047\":true,\"05NNN923\":true,\"64QXO752\":true,\"05ETK545\":true,\"24UOL922\":true,\"04FBH639\":true,\"80XOQ648\":true,\"08BQU558\":true,\"86FLQ145\":true,\"09YYR064\":true}}','[{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"phone\",\"slot\":5},{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"binoculars\",\"slot\":11},{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"fitbit\",\"slot\":13},{\"count\":1,\"metadata\":{\"components\":[],\"durability\":100,\"serial\":\"15kef0cT908SyWY\",\"ammo\":100,\"serie\":\"15kef0cT908SyWY\"},\"name\":\"WEAPON_PETROLCAN\",\"slot\":14}]','2025-04-04 09:12:27',NULL,0,0),
(19054,'IMN66507',1,'license:c0faaf4241c696fdcd31a23fbace0c28c94f82e7','mada','{\"bank\":60755.0,\"cash\":1675,\"crypto\":0}','{\"birthdate\":\"2000-02-02\",\"gender\":0,\"lastname\":\"保罗\",\"account\":\"US09QBCore5620378266\",\"firstname\":\"马卡斯\",\"cid\":\"1\",\"nationality\":\"cn\",\"phone\":\"1098595849\"}','{\"payment\":600,\"label\":\"警察\",\"name\":\"police\",\"type\":\"leo\",\"isboss\":false,\"onduty\":false,\"grade\":{\"name\":\"初级警员\",\"isboss\":false,\"level\":1,\"payment\":600}}','{\"label\":\"No Gang\",\"isboss\":false,\"name\":\"none\",\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"Unaffiliated\"}}','{\"x\":477.6395568847656,\"y\":-993.5472412109375,\"z\":30.6783447265625}','{\"licences\":{\"business\":false,\"weapon\":true,\"driver\":true},\"bloodtype\":\"AB-\",\"jailitems\":[],\"stress\":0,\"handgunflag\":\"waisthandgun\",\"rifleflag\":\"tacticalrifle\",\"inside\":{\"apartment\":[]},\"pertenencesSaved\":0,\"thirst\":40.0,\"custom_police_keybind\":{\"I\":\"origen_police:dispatch:delalert\",\"O\":\"origen_police:dispatch:mrkalert\",\"H\":\"origen_police:dispatch:alertas\"},\"criminalclothe\":{\"faceFeatures\":{\"noseBoneHigh\":0,\"eyesOpening\":0,\"chinBoneLowering\":0,\"cheeksBoneWidth\":0,\"nosePeakHigh\":0,\"nosePeakLowering\":0,\"jawBoneWidth\":0,\"eyeBrownForward\":0,\"nosePeakSize\":0,\"chinBoneLenght\":0,\"cheeksWidth\":0,\"jawBoneBackSize\":0,\"chinHole\":0,\"eyeBrownHigh\":0,\"noseBoneTwist\":0,\"cheeksBoneHigh\":0,\"noseWidth\":0,\"lipsThickness\":0,\"neckThickness\":0,\"chinBoneSize\":0},\"components\":[{\"drawable\":0,\"texture\":0,\"component_id\":0},{\"drawable\":0,\"texture\":0,\"component_id\":1},{\"drawable\":10,\"texture\":0,\"component_id\":2},{\"drawable\":19,\"texture\":0,\"component_id\":3},{\"drawable\":10,\"texture\":0,\"component_id\":4},{\"drawable\":0,\"texture\":0,\"component_id\":5},{\"drawable\":10,\"texture\":0,\"component_id\":6},{\"drawable\":11,\"texture\":0,\"component_id\":7},{\"drawable\":265,\"texture\":0,\"component_id\":8},{\"drawable\":105,\"texture\":0,\"component_id\":9},{\"drawable\":0,\"texture\":0,\"component_id\":10},{\"drawable\":583,\"texture\":0,\"component_id\":11}],\"headBlend\":{\"skinSecond\":0,\"thirdMix\":0,\"skinFirst\":0,\"shapeMix\":0,\"skinMix\":0,\"shapeFirst\":0,\"skinThird\":0,\"shapeThird\":0,\"shapeSecond\":0},\"tattoos\":{\"ZONE_HAIR\":[{\"collection\":\"multiplayer_overlays\",\"zone\":\"ZONE_HAIR\",\"hashMale\":\"FM_M_Hair_003_a\",\"label\":\"hair-0-186\",\"name\":\"hair-0-186\",\"hashFemale\":\"FM_F_Hair_003_a\"}]},\"eyeColor\":0,\"headOverlays\":{\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"opacity\":0,\"color\":0,\"secondColor\":0,\"style\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0}},\"hair\":{\"style\":10,\"highlight\":29,\"texture\":0,\"color\":29},\"model\":\"mp_m_freemode_01\",\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}]},\"mechanic\":700,\"injail\":0,\"hunger\":52.0,\"status\":[],\"callsign\":\"409\",\"fingerprint\":\"Hm948j15Tgg9377\",\"phonedata\":{\"SerialNumber\":76080507,\"profilepicture\":\"https://i.fmfile.com/7S1plAQv2YcrBrcOxugL4/paul.png\",\"InstalledApps\":[]},\"phone\":[],\"isdead\":false,\"armor\":0,\"inlaststand\":false,\"vehicleKeys\":{\"05XQH990\":true,\"23AML129\":true,\"86CPA544\":true,\"09IQL430\":true,\"20NTN466\":true,\"01CCS234\":true,\"45ZGC090\":true,\"64OVB469\":true,\"28URL362\":true,\"25EFV116\":true,\"06IMT003\":true,\"69PTE284\":true,\"09ASS734\":true,\"20VKJ111\":true,\"26AEK630\":true,\"49UVH228\":true,\"48VLO177\":true,\"84OHT048\":true,\"24URO850\":true,\"25MAL147\":true,\"45TYK504\":true,\"29FFK014\":true,\"83YXE505\":true,\"49TFA009\":true,\"84TIC952\":true,\"85REV383\":true,\"81GGC745\":true,\"66PAR293\":true,\"81YLE604\":true,\"44EVE433\":true,\"88KHK402\":true,\"61EFW541\":true,\"83CKQ067\":true,\"21SYK835\":true,\"29MKI974\":true,\"20ZUN575\":true,\"69PZK191\":true,\"88RUJ485\":true,\"89LJF711\":true,\"02EFE048\":true,\"82ZMR896\":true,\"88KRN078\":true,\"06LYE803\":true,\"04OON035\":true,\"06ICD599\":true,\"89OIV426\":true,\"26DHZ582\":true,\"82JRW765\":true,\"82WTE964\":true,\"29SAH683\":true,\"61FWI289\":true,\"01QEH027\":true,\"23GJW330\":true,\"85LQD783\":true,\"86QFK467\":true,\"67YXQ660\":true,\"48CKF436\":true,\"68ZAS739\":true,\"43YTD892\":true,\"68SGY566\":true,\"60QMM041\":true,\"TAXI9804\":true,\"29GMP712\":true,\"81GNR586\":true,\"60BKM996\":true,\"83JMA543\":true,\"67ZUL820\":true,\"1SF380RT\":true,\"89EWQ798\":true,\"20URG725\":true,\"61ZLW834\":true,\"21ERQ416\":true,\"09YAT263\":true,\"86YSE045\":true,\"27NCY935\":true,\"65JYB162\":true,\"80SES736\":true,\"06HCE564\":true,\"85VVC800\":true,\"06CNL907\":true,\"02QOD433\":true,\"0AS738XZ\":true,\"67NNY724\":true,\"88IGH604\":true,\"85JOK646\":true,\"65OZV295\":true,\"02EJM691\":true,\"62RWB290\":true,\"43KLN697\":true,\"86VLE994\":true,\"63DBP645\":true,\"46HZF516\":true,\"9VU149NQ\":true,\"65YAX434\":true,\"21YTF236\":true},\"tracker\":false,\"walletid\":\"QB-52115849\",\"radio_police.anim\":2,\"ishandcuffed\":false,\"rep\":[],\"criminalrecord\":{\"hasRecord\":false}}','[{\"count\":1,\"name\":\"lockpick\",\"slot\":1},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"binoculars\",\"slot\":3},{\"metadata\":{\"serie\":\"08UeE3Yz153TMlV\",\"ammo\":-1,\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"}],\"serial\":\"08UeE3Yz153TMlV\",\"components\":[],\"registered\":\"迪亚 詹姆斯\",\"durability\":100},\"count\":1,\"name\":\"WEAPON_STUNGUN\",\"slot\":4},{\"metadata\":{\"ammo\":0,\"serial\":\"799021POL586528\",\"components\":[\"at_flashlight\",\"at_suppressor_light\"],\"registered\":\"马卡斯 保罗\",\"durability\":22.30000000000441},\"count\":1,\"name\":\"WEAPON_PISTOL\",\"slot\":5},{\"count\":1675,\"name\":\"money\",\"slot\":6},{\"count\":2,\"name\":\"weedkey\",\"slot\":7},{\"count\":2,\"name\":\"redwcig\",\"slot\":8},{\"count\":1,\"name\":\"phone\",\"slot\":9},{\"count\":1,\"name\":\"police_cad\",\"slot\":10},{\"metadata\":{\"ammo\":4,\"serial\":\"904438EKV671679\",\"components\":[],\"registered\":\"谢尔比 邦德\",\"durability\":99.97},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":11}]','2025-04-08 14:42:35',NULL,0,0),
(10713,'JJX03484',1,'license:1d66e7c15b365459c984da5e633f19963a296d90','杰克','{\"cash\":668,\"bank\":600,\"crypto\":7.49034966179079}','{\"nationality\":\"中国\",\"gender\":0,\"lastname\":\"雷吉\",\"account\":\"US07QBCore3510353225\",\"firstname\":\"亚力\",\"phone\":\"7568170878\",\"cid\":\"1\",\"birthdate\":\"2026-03-09\"}','{\"payment\":600,\"label\":\"警察\",\"name\":\"police\",\"type\":\"leo\",\"isboss\":false,\"onduty\":true,\"grade\":{\"name\":\"初级警员\",\"isboss\":false,\"level\":1,\"payment\":600}}','{\"isboss\":false,\"label\":\"No Gang\",\"name\":\"none\",\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"Unaffiliated\"}}','{\"x\":208.44395446777345,\"y\":-797.024169921875,\"z\":30.947998046875}','{\"licences\":{\"business\":false,\"weapon\":true,\"driver\":true},\"bloodtype\":\"O-\",\"jailitems\":[],\"stress\":0,\"inside\":{\"apartment\":[]},\"rep\":{\"dealer\":7},\"radio_police.anim\":1,\"criminalclothe\":0,\"mechanic\":600,\"injail\":0,\"custom_police_keybind\":{\"I\":\"origen_police:dispatch:delalert\",\"O\":\"origen_police:dispatch:mrkalert\",\"H\":\"origen_police:dispatch:alertas\"},\"federal\":0,\"tracker\":false,\"inlaststand\":false,\"thirst\":0,\"status\":[],\"callsign\":\"013\",\"ishandcuffed\":false,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":68319392},\"phone\":[],\"isdead\":false,\"fingerprint\":\"SY211f21NXu0131\",\"armor\":0,\"vehicleKeys\":{\"89ZDX971\":true,\"LSPD3659\":true,\"LSPD4857\":true,\"68QZJ381\":true,\"69CIQ020\":true,\"01ESW047\":true,\"69DUE957\":true,\"09ASS734\":true,\"89JGP590\":true,\"LSPD2395\":true,\"ZULU8746\":true,\"LSPD5092\":true,\"ZULU2268\":true,\"08QRO239\":true,\"65RMD284\":true,\"29LZD874\":true,\"ZULU7120\":true,\"42XWY983\":true,\"ZULU3458\":true,\"65PLD181\":true,\"84MSO816\":true,\"LSPD9881\":true,\"86QVF276\":true,\"89CDG042\":true,\"86LJE293\":true,\"LSPD2418\":true,\"85AAL571\":true,\"82IOP353\":true,\"05BTT262\":true,\"LSPD1052\":true,\"65VBE109\":true,\"20ZUN575\":true,\"68GXQ531\":true,\"LSPD1331\":true,\"LSPD6883\":true,\"ZULU7603\":true,\"44ZGA483\":true,\"05ESS906\":true,\"87FPH168\":true,\"61DOT353\":true,\"81NVM372\":true,\"TOWR3536\":true,\"ZULU5510\":true,\"07XOR231\":true,\"1SF380RT\":true,\"ZULU2540\":true,\"ZULU3507\":true,\"03VFR301\":true,\"48VVT060\":true,\"LSPD4483\":true,\"ZULU4581\":true,\"67OJE850\":true,\"LSPD9966\":true,\"61BYI121\":true,\"46YBO583\":true,\"84NWW229\":true,\"ZULU7421\":true,\"69BGB704\":true,\"87EUR567\":true,\"63MEZ380\":true,\"26IDA896\":true,\"28URL362\":true,\"06IMT003\":true,\"69PZK191\":true,\"8LO099WT\":true,\"LSPD5495\":true,\"TOWR5024\":true,\"LSPD4194\":true,\"07IKT545\":true,\"47FUJ956\":true,\"LSPD5451\":true,\"LSPD6522\":true,\"85HZT119\":true,\"LSPD3453\":true,\"64BOE084\":true,\"87QKN470\":true,\"ZULU9119\":true,\"63VDQ808\":true,\"46FEF571\":true,\"43KLN697\":true,\"LSPD1116\":true,\"82QSR212\":true,\"22RDY840\":true,\"8GA378WO\":true,\"81YLE604\":true,\"LSPD5281\":true,\"27LPU517\":true,\"66RQX010\":true,\"LSPD7704\":true,\"05RFJ664\":true,\"66ZAZ797\":true,\"62MZO604\":true,\"ZULU6855\":true,\"63CDU288\":true,\"81BQY532\":true,\"02LFX517\":true,\"86KXS499\":true,\"ZULU3722\":true,\"LSPD4763\":true,\"LSPD8703\":true,\"88MYO393\":true,\"8ML674UD\":true,\"06LGF926\":true,\"TOWR8997\":true,\"06CVN216\":true,\"83JMA543\":true,\"06MRH211\":true,\"LSPD5226\":true,\"02DGL783\":true,\"80BEX138\":true,\"06MXJ356\":true,\"45THV241\":true,\"ZULU3467\":true,\"LSPD9944\":true,\"45WEB620\":true,\"LSPD6776\":true,\"LSPD8173\":true,\"ZULU9328\":true,\"67YXQ660\":true,\"ZULU1559\":true,\"9VU149NQ\":true,\"LSPD4533\":true,\"0AZ946NK\":true,\"LSPD6849\":true,\"01LHL050\":true,\"LSPD4372\":true,\"45DJX380\":true,\"LSPD3263\":true,\"ZULU8364\":true,\"ZULU2848\":true,\"81NEY809\":true,\"ZULU4341\":true,\"TESTDRIV\":true,\"68UKY481\":true,\"LSPD8210\":true,\"64FAZ127\":true,\"LSPD9726\":true,\"63URD974\":true,\"ZULU3843\":true,\"05QIR042\":true,\"ZULU7757\":true,\"89IAK826\":true,\"44GRW451\":true,\"21CAK525\":true,\"ZULU8395\":true,\"04OON035\":true,\"ZULU2052\":true,\"LSPD8542\":true,\"09OTP800\":true,\"LSPD1462\":true,\"ZULU4587\":true,\"ZULU2741\":true,\"68OJI679\":true,\"24IKA545\":true,\"LSPD3133\":true,\"ZULU5663\":true,\"26DAL255\":true,\"ZULU8061\":true,\"LSPD3608\":true,\"LSPD4290\":true,\"LSPD9701\":true,\"LSPD2278\":true,\"LSPD6328\":true,\"26VBO383\":true,\"ZULU7588\":true,\"09XFM676\":true,\"ZULU6609\":true,\"86CPA544\":true,\"48WYO064\":true,\"3WM968ZW\":true,\"ZULU5988\":true,\"29NWQ774\":true,\"65LGT783\":true,\"LSPD9396\":true,\"ZULU3548\":true,\"9AT364CZ\":true,\"02IUA663\":true,\"LSPD9050\":true,\"LSPD8235\":true,\"ZULU1655\":true,\"ZULU8948\":true,\"64UCR740\":true,\"ZULU4489\":true,\"66MOM554\":true,\"LSPD3913\":true,\"01YZT400\":true,\"LSPD2677\":true,\"49TFA009\":true,\"28MNH339\":true,\"LSPD2390\":true,\"LSPD6978\":true,\"46SYM414\":true,\"26AUT324\":true,\"ZULU7769\":true,\"45RRD849\":true,\"01WVR108\":true,\"LSPD7797\":true,\"LSPD6515\":true,\"42REK122\":true,\"28QKR117\":true,\"LSPD4512\":true,\"46OEV088\":true,\"23EPW365\":true,\"62TCD114\":true,\"03RFW262\":true,\"ZULU6191\":true,\"23BWI267\":true,\"LSPD9471\":true,\"05OOI389\":true,\"88WKN808\":true,\"LSPD8740\":true,\"ZULU5556\":true,\"ZULU8100\":true,\"07BYZ618\":true,\"LSPD1944\":true,\"ZULU9776\":true,\"64EER735\":true,\"ZULU8557\":true,\"02EFE048\":true,\"4LZ076HQ\":true,\"46WSQ500\":true,\"47FUR662\":true,\"LSPD8092\":true,\"28EDF119\":true,\"ZULU2997\":true,\"ZULU9582\":true,\"69AHP521\":true,\"TAXI9800\":true,\"26QPO257\":true,\"28PUP842\":true,\"ZULU7389\":true,\"61YZO846\":true,\"LSPD2234\":true,\"LSPD2842\":true,\"63GMM529\":true,\"69URJ460\":true,\"LSPD5172\":true,\"29SKX639\":true,\"68SGY566\":true,\"03LKR525\":true,\"ZULU3896\":true,\"LSPD9094\":true,\"28SAG972\":true,\"TAXI3625\":true,\"LSPD5352\":true,\"21PRH070\":true,\"46RYE608\":true,\"ZULU9008\":true,\"82AKQ233\":true,\"LSPD4649\":true,\"21ERQ416\":true,\"ZULU1318\":true,\"ZULU2023\":true,\"64KUQ453\":true,\"LSPD7811\":true,\"25PJJ737\":true,\"28LVY171\":true,\"84RLV675\":true,\"LSPD8143\":true,\"ZULU1642\":true,\"21KBL868\":true,\"83MNH013\":true,\"69HMY025\":true,\"60BDA018\":true,\"03UEL978\":true,\"65AGH933\":true,\"83HZD852\":true,\"LSPD8157\":true,\"27FMR011\":true,\"ZULU9160\":true,\"LSPD6461\":true,\"ZULU9024\":true,\"46RGQ377\":true,\"67AXR807\":true},\"walletid\":\"QB-95969385\",\"rifleflag\":\"tacticalrifle\",\"handgunflag\":\"handguns\",\"hunger\":16.0,\"pertenencesSaved\":0,\"criminalrecord\":{\"hasRecord\":true,\"date\":{\"isdst\":false,\"sec\":25,\"month\":3,\"yday\":89,\"year\":2025,\"wday\":1,\"min\":48,\"hour\":20,\"day\":30}}}','[{\"count\":3,\"name\":\"sodium_hydroxide\",\"slot\":1},{\"count\":3,\"name\":\"sulfuric_acid\",\"slot\":2},{\"count\":1,\"name\":\"police_cad\",\"slot\":3},{\"count\":3,\"name\":\"hydrochloric_acid\",\"slot\":4},{\"count\":3,\"name\":\"meth\",\"slot\":5},{\"count\":1,\"name\":\"methtray\",\"slot\":6},{\"count\":1,\"name\":\"police_cad\",\"slot\":7},{\"count\":1,\"name\":\"lockpick\",\"slot\":8},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"binoculars\",\"slot\":9},{\"count\":1,\"name\":\"radio\",\"slot\":10},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"phone\",\"slot\":13},{\"count\":668,\"name\":\"money\",\"slot\":14},{\"count\":7717,\"name\":\"black_money\",\"slot\":15},{\"count\":1,\"name\":\"methkey\",\"slot\":20}]','2025-04-08 15:58:14',NULL,1,1),
(13349,'KLW45379',1,'license:6b4337e4ee530e46f5090e80c3e31ae6badfcb08','jkshbl','{\"bank\":5000,\"cash\":500,\"crypto\":0}','{\"cid\":\"1\",\"phone\":\"9785473646\",\"birthdate\":\"0011-02-01\",\"account\":\"US01QBCore3129753859\",\"nationality\":\"美国\",\"gender\":0,\"lastname\":\"勒布朗\",\"firstname\":\"詹姆斯\"}','{\"isboss\":false,\"name\":\"unemployed\",\"label\":\"公民\",\"onduty\":false,\"payment\":500,\"type\":\"none\",\"grade\":{\"isboss\":false,\"name\":\"自由职业者\",\"level\":0}}','{\"isboss\":false,\"name\":\"none\",\"grade\":{\"isboss\":false,\"name\":\"Unaffiliated\",\"level\":0},\"label\":\"No Gang\"}','{\"x\":3.29670333862304,\"y\":523.87255859375,\"z\":170.5992431640625}','{\"rep\":[],\"isdead\":false,\"fingerprint\":\"xk197f18aom1697\",\"armor\":0,\"injail\":0,\"phone\":[],\"hunger\":100,\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"inlaststand\":false,\"criminalrecord\":{\"hasRecord\":false},\"ishandcuffed\":false,\"jailitems\":[],\"thirst\":100,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":90750869},\"inside\":{\"apartment\":[]},\"stress\":0,\"bloodtype\":\"B+\",\"status\":[],\"walletid\":\"QB-84541928\",\"callsign\":\"NO CALLSIGN\",\"tracker\":false}','[]','2025-03-28 05:31:18',NULL,0,0),
(10101,'KZY58745',2,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','rainbowkv','{\"cash\":0,\"crypto\":0,\"bank\":7000}','{\"gender\":1,\"nationality\":\"美国\",\"birthdate\":\"2000-01-01\",\"phone\":\"5978993885\",\"lastname\":\"威尔\",\"account\":\"US01QBCore5085857188\",\"cid\":\"2\",\"firstname\":\"辛迪\"}','{\"type\":\"none\",\"payment\":200,\"name\":\"unemployed\",\"label\":\"公民\",\"grade\":{\"isboss\":false,\"level\":0,\"payment\":500,\"name\":\"自由职业者\"},\"onduty\":true,\"isboss\":false}','{\"label\":\"No Gang\",\"grade\":{\"level\":0,\"name\":\"Unaffiliated\",\"isboss\":false},\"isboss\":false,\"name\":\"none\"}','{\"x\":739.1736450195313,\"y\":-97.93846130371094,\"z\":54.773681640625}','{\"jailitems\":[],\"phone\":[],\"ishandcuffed\":false,\"armor\":0,\"tracker\":false,\"hunger\":96.0,\"isdead\":false,\"stress\":0,\"walletid\":\"QB-57984489\",\"status\":[],\"licences\":{\"weapon\":false,\"driver\":true,\"business\":false},\"injail\":0,\"fingerprint\":\"aN308I32Jwi8362\",\"inlaststand\":false,\"rep\":[],\"thirst\":95.0,\"vehicleKeys\":{\"8KA515XR\":true,\"67OJE850\":true},\"inside\":{\"apartment\":[]},\"callsign\":\"NO CALLSIGN\",\"criminalrecord\":{\"hasRecord\":false},\"bloodtype\":\"A-\",\"phonedata\":{\"SerialNumber\":46541087,\"InstalledApps\":[]}}','[{\"name\":\"driver_license\",\"slot\":1,\"count\":1,\"metadata\":{\"firstname\":\"辛迪\",\"quality\":100,\"lastname\":\"威尔\",\"birthdate\":\"2000-01-01\",\"type\":\"Class C Driver License\"}},{\"name\":\"id_card\",\"slot\":2,\"count\":1,\"metadata\":{\"citizenid\":\"KZY58745\",\"birthdate\":\"2000-01-01\",\"quality\":100,\"lastname\":\"威尔\",\"gender\":1,\"firstname\":\"辛迪\",\"nationality\":\"美国\"}},{\"name\":\"phone\",\"slot\":3,\"count\":1,\"metadata\":{\"quality\":100}},{\"name\":\"pdbadge\",\"slot\":4,\"count\":1,\"metadata\":{\"quality\":100,\"callsign\":\"001\",\"name\":\"辛迪 威尔\",\"type\":{\"__cfx_functionReference\":\"qb-core:1403741066:919322\"},\"rank\":\"警察局长\"}}]','2025-04-08 03:05:20',NULL,0,0),
(233,'LYX25359',1,'license:6eb02558b24cdb83cc9c7e52fad120be37b1bbf9','2250726975','{\"crypto\":0,\"cash\":37,\"bank\":8605.0}','{\"nationality\":\"China\",\"phone\":\"1934821841\",\"lastname\":\"克特\",\"gender\":0,\"cid\":1,\"account\":\"US02QBCore8022890922\",\"birthdate\":\"2024-12-09\",\"firstname\":\"艾伦\"}','{\"name\":\"unemployed\",\"label\":\"公民\",\"payment\":500,\"onduty\":true,\"type\":\"none\",\"grade\":{\"name\":\"自由职业者\",\"isboss\":false,\"level\":0,\"payment\":500},\"isboss\":false}','{\"name\":\"none\",\"isboss\":false,\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"Unaffiliated\"},\"label\":\"No Gang\"}','{\"x\":316.1011047363281,\"y\":-577.8197631835938,\"z\":94.2021484375}','{\"isdead\":false,\"ishandcuffed\":false,\"inside\":{\"apartment\":[]},\"thirst\":25.0,\"tracker\":true,\"phonedata\":{\"SerialNumber\":47723926,\"InstalledApps\":[]},\"fingerprint\":\"EZ785H42jfV2168\",\"stress\":0,\"hunger\":40.0,\"callsign\":\"NO CALLSIGN\",\"armor\":0,\"walletid\":\"QB-79521920\",\"vehicleKeys\":{\"ZULU3189\":true,\"05GHK293\":true,\"25ORX976\":true,\"TOWR3964\":true,\"85WQU365\":true,\"TRUK8164\":true,\"4LZ076HQ\":true,\"02PXZ467\":true,\"61TTR354\":true,\"40TWR674\":true,\"66JZT194\":true,\"01HYS711\":true,\"40RIR026\":true,\"09NWL369\":true,\"44LTV692\":true,\"48NIH004\":true,\"80PCO961\":true,\"27NJQ870\":true,\"ZULU3490\":true,\"60YCR563\":true,\"29FPU552\":true,\"ZULU8685\":true,\"88PML635\":true,\"01UNW163\":true,\"ZULU4011\":true,\"85YMN222\":true,\"43PFW078\":true,\"43LEN497\":true,\"89FQW414\":true,\"TOWR1465\":true,\"69ZHN883\":true,\"00SIG402\":true,\"LSPD5495\":true,\"81ESB030\":true,\"07SVU834\":true,\"26URS502\":true,\"07IFI933\":true,\"65BOF546\":true,\"86PYC845\":true,\"27PKY086\":true,\"20PJO168\":true,\"60KKX193\":true,\"42YAA015\":true,\"02MAN163\":true,\"25QXH646\":true,\"64EER735\":true,\"01OUT216\":true,\"46STW434\":true,\"62GXH292\":true,\"82PFL056\":true,\"44GIO701\":true,\"TOWR9107\":true,\"80BCO390\":true,\"ZULU9715\":true,\"49TZU092\":true,\"83ZFE018\":true,\"ZULU2303\":true,\"28UOE221\":true,\"01DPA490\":true,\"85KBF873\":true,\"9NI363OO\":true,\"TOWR7811\":true,\"02QMT525\":true,\"82YCA848\":true,\"89PDF706\":true,\"27NCD730\":true,\"41PAZ186\":true,\"03CRX398\":true,\"23FGB416\":true,\"24RNS329\":true,\"00XJW424\":true,\"65IPU873\":true,\"85LQD783\":true,\"44POK485\":true,\"64QKW302\":true,\"25DKH862\":true,\"21XIG241\":true,\"20QJY469\":true,\"48EZL956\":true,\"07GZI984\":true,\"43QDO208\":true,\"48QPQ919\":true,\"02UWE759\":true,\"62IFF605\":true,\"47TIH432\":true,\"69MGB833\":true,\"68FEO849\":true,\"65PIC353\":true,\"6HT512KZ\":true,\"63DTA427\":true,\"ZULU3002\":true,\"9VU149NQ\":true,\"69ULJ073\":true,\"9IT487EA\":true,\"03KYC396\":true,\"03LLC480\":true,\"06DRV506\":true,\"ZULU4242\":true,\"63QYU072\":true,\"05KDF035\":true,\"80PSX913\":true,\"63ZDK603\":true,\"ZULU7969\":true,\"07MGM000\":true,\"45XYG333\":true,\"42SEQ804\":true,\"09AQV986\":true,\"41PQS984\":true,\"25CPM620\":true,\"86CSC049\":true,\"45XBE030\":true,\"27BQQ048\":true,\"49XUY750\":true,\"05SQE183\":true,\"82DRB295\":true,\"06SNI065\":true,\"27FWP266\":true,\"69PTE284\":true,\"88WBE173\":true,\"43RLR224\":true,\"5TN781NM\":true,\"43FVS310\":true,\"03DUV860\":true,\"08HFP253\":true,\"ZULU4489\":true,\"TAXI2096\":true,\"ZULU3274\":true,\"21NLR549\":true,\"05TZB090\":true,\"86SQJ693\":true,\"20CII232\":true,\"63MOT694\":true,\"25YWU795\":true,\"TOWR6832\":true,\"26JZL944\":true,\"84GNS304\":true,\"82OVI602\":true,\"84IIK333\":true,\"87BYY166\":true,\"0AZ946NK\":true,\"49UVE513\":true,\"89FDF435\":true,\"48RYU178\":true,\"44XMX503\":true,\"89CDG042\":true,\"49PLD601\":true,\"40RFH980\":true,\"80GZY540\":true,\"08BVQ131\":true,\"47EZR064\":true,\"09WXO066\":true,\"07MGP414\":true,\"84IZY699\":true,\"05RZK312\":true,\"TAXI3439\":true,\"ZULU5126\":true},\"inlaststand\":false,\"bloodtype\":\"AB+\",\"phone\":[],\"status\":[],\"injail\":0,\"rep\":[],\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"criminalrecord\":{\"hasRecord\":true,\"date\":{\"isdst\":false,\"wday\":5,\"month\":1,\"yday\":9,\"year\":2025,\"hour\":22,\"sec\":20,\"min\":7,\"day\":9}},\"jailitems\":[]}','[{\"name\":\"money\",\"slot\":1,\"count\":37},{\"metadata\":{\"durability\":38.05000000000029,\"ammo\":0,\"components\":[],\"serial\":\"50uaJ2UP833UtWT\",\"attachments\":[{\"component\":\"COMPONENT_AT_PI_FLSH\",\"label\":\"Flashlight\"}],\"serie\":\"50uaJ2UP833UtWT\"},\"name\":\"WEAPON_PISTOL\",\"slot\":2,\"count\":1},{\"metadata\":{\"durability\":71.49999999999999,\"ammo\":6,\"components\":[],\"serial\":\"55jRi7Iu795SGsD\",\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"},{\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\",\"label\":\"3x Scope\"}],\"serie\":\"55jRi7Iu795SGsD\"},\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":3,\"count\":1},{\"name\":\"water\",\"slot\":5,\"count\":2},{\"metadata\":{\"quality\":100},\"name\":\"heavyarmor\",\"slot\":8,\"count\":1},{\"name\":\"burger\",\"slot\":9,\"count\":1},{\"metadata\":{\"quality\":100},\"name\":\"phone\",\"slot\":15,\"count\":1}]','2025-04-05 13:35:33',NULL,0,0),
(16168,'MTK83241',1,'license:8445c49d9a2610864639a8fad67f13463b20271a','王一博','{\"cash\":500,\"crypto\":0,\"bank\":5000}','{\"lastname\":\"洛克\",\"gender\":0,\"firstname\":\"勒布朗\",\"phone\":\"8141865948\",\"nationality\":\"美国\",\"cid\":\"1\",\"account\":\"US07QBCore4733575819\",\"birthdate\":\"2006-10-18\"}','{\"label\":\"Civilian\",\"name\":\"unemployed\",\"type\":\"none\",\"onduty\":false,\"payment\":10,\"isboss\":false,\"grade\":{\"name\":\"Freelancer\",\"level\":0}}','{\"name\":\"none\",\"label\":\"No Gang Affiliation\",\"isboss\":false,\"grade\":{\"name\":\"none\",\"level\":0}}','{\"x\":384.4483642578125,\"y\":-1031.063720703125,\"z\":29.3641357421875}','{\"injail\":0,\"stress\":0,\"armor\":0,\"status\":[],\"jailitems\":[],\"criminalrecord\":{\"hasRecord\":false},\"inside\":{\"apartment\":[]},\"inlaststand\":false,\"vehicleKeys\":{\"TESTDRIV\":true},\"thirst\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":66056969},\"hunger\":0,\"ishandcuffed\":false,\"isdead\":false,\"phone\":[],\"rep\":[],\"callsign\":\"NO CALLSIGN\",\"bloodtype\":\"O-\",\"tracker\":false,\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"fingerprint\":\"yJ443h71MGe8449\",\"walletid\":\"QB-61633577\"}','[{\"count\":500,\"slot\":1,\"name\":\"money\"},{\"name\":\"id_card\",\"count\":1,\"slot\":2,\"metadata\":{\"birthdate\":\"2006-10-18\",\"citizenid\":\"MTK83241\",\"nationality\":\"美国\",\"quality\":100,\"firstname\":\"勒布朗\",\"gender\":0,\"lastname\":\"洛克\"}},{\"name\":\"driver_license\",\"count\":1,\"slot\":3,\"metadata\":{\"birthdate\":\"2006-10-18\",\"type\":\"Class C Driver License\",\"quality\":100,\"firstname\":\"勒布朗\",\"lastname\":\"洛克\"}},{\"name\":\"phone\",\"count\":1,\"slot\":4,\"metadata\":{\"quality\":100}}]','2025-04-02 10:01:44',NULL,0,0),
(6607,'OZH56762',1,'license:b2825554d4b29a6d8d807fc4180ae99c59e1fdae','1216742759','{\"bank\":6500,\"cash\":0,\"crypto\":0}','{\"nationality\":\"China\",\"gender\":0,\"lastname\":\"詹姆斯\",\"account\":\"US08QBCore2355191882\",\"firstname\":\"迪亚\",\"phone\":\"6513832261\",\"cid\":1,\"birthdate\":\"2025-03-15\"}','{\"payment\":600,\"name\":\"ambulance\",\"label\":\"医护\",\"type\":\"ems\",\"isboss\":false,\"onduty\":true,\"grade\":{\"level\":1,\"isboss\":false,\"name\":\"护理人员\",\"payment\":600}}','{\"label\":\"No Gang\",\"isboss\":false,\"name\":\"none\",\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"Unaffiliated\"}}','{\"x\":211.5164794921875,\"y\":-954.8175659179688,\"z\":24.24169921875}','{\"licences\":{\"business\":false,\"weapon\":true,\"driver\":true},\"bloodtype\":\"AB+\",\"jailitems\":{\"12\":{\"info\":{\"quality\":100},\"useable\":true,\"created\":1742743843,\"label\":\"手枪弹药\",\"name\":\"pistol_ammo\",\"slot\":12,\"amount\":10,\"unique\":false,\"type\":\"item\",\"weight\":200,\"shouldClose\":true,\"image\":\"pistol_ammo.png\",\"description\":\"用于手枪的弹药\"},\"1\":{\"info\":{\"attachments\":[{\"component\":\"COMPONENT_AT_SCOPE_MACRO_02\",\"label\":\"1x Scope\"},{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"}],\"quality\":97.3,\"serie\":\"19fAH8tO108wyWv\",\"ammo\":0},\"amount\":1,\"created\":1742990025,\"label\":\"冲锋枪\",\"name\":\"weapon_smg\",\"slot\":1,\"unique\":true,\"useable\":false,\"weight\":1000,\"type\":\"weapon\",\"image\":\"weapon_smg.png\",\"description\":\"一款手持轻型冲锋枪\"},\"2\":{\"info\":{\"quality\":100,\"serie\":\"00mos1FW852hfDG\",\"attachments\":[{\"component\":\"COMPONENT_AT_PI_FLSH\",\"label\":\"Flashlight\"}]},\"amount\":1,\"created\":1742651570,\"label\":\"瓦尔特P99\",\"name\":\"weapon_pistol\",\"slot\":2,\"unique\":true,\"useable\":false,\"weight\":1000,\"type\":\"weapon\",\"image\":\"weapon_pistol.png\",\"description\":\"一款设计为单手持有的小型火器\"},\"3\":{\"info\":{\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"},{\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\",\"label\":\"3x Scope\"}],\"quality\":97.0,\"serie\":\"86pqd1zt803hjka\",\"ammo\":202},\"amount\":1,\"created\":1742990144,\"label\":\"卡宾步枪\",\"name\":\"weapon_carbinerifle\",\"slot\":3,\"unique\":true,\"useable\":false,\"weight\":1000,\"type\":\"weapon\",\"image\":\"weapon_carbinerifle.png\",\"description\":\"一款轻型自动步枪\"},\"4\":{\"info\":{\"quality\":100},\"useable\":true,\"created\":1742990191,\"label\":\"步枪弹药\",\"name\":\"rifle_ammo\",\"slot\":4,\"amount\":2,\"unique\":false,\"type\":\"item\",\"weight\":1000,\"shouldClose\":true,\"image\":\"rifle_ammo.png\",\"description\":\"用于步枪的弹药\"}},\"injail\":0,\"inside\":{\"apartment\":[]},\"pertenencesSaved\":0,\"custom_police_keybind\":{\"I\":\"origen_police:dispatch:delalert\",\"O\":\"origen_police:dispatch:mrkalert\",\"H\":\"origen_police:dispatch:alertas\"},\"thirst\":40.0,\"fingerprint\":\"GV531C12Vow9675\",\"mechanic\":100,\"hunger\":52.0,\"status\":[],\"callsign\":\"NO CALLSIGN\",\"ishandcuffed\":false,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":51728421},\"tracker\":false,\"isdead\":false,\"armor\":0,\"inlaststand\":false,\"vehicleKeys\":{\"26ZDV417\":true,\"47FUR662\":true,\"3WM968ZW\":true,\"03UEL978\":true,\"ZULU1716\":true,\"85LQA436\":true,\"26IDA896\":true,\"25EFV116\":true,\"01ESW047\":true,\"84XUY196\":true,\"09ASS734\":true,\"LSPD8488\":true,\"LSPD7738\":true,\"02HPJ375\":true,\"67UAS030\":true,\"9VU149NQ\":true,\"LSPD7450\":true,\"LSPD5092\":true,\"88RUJ485\":true,\"46XGO518\":true,\"42ZNG270\":true,\"00MVL266\":true,\"LSPD5352\":true,\"TESTDRIV\":true,\"8LO099WT\":true,\"LSPD7837\":true,\"61WIJ412\":true,\"28WGU180\":true,\"LSPD8244\":true,\"02DGL783\":true,\"41JSE737\":true,\"ZULU8308\":true,\"ZULU5066\":true,\"87IKI370\":true,\"ZULU5599\":true,\"LSPD5911\":true,\"LSPD9477\":true,\"LSPD6515\":true,\"01JQJ633\":true,\"88KHK402\":true,\"48CKF436\":true,\"47AKS708\":true,\"61ADN961\":true,\"ZULU4021\":true,\"29WES333\":true,\"24IKA545\":true,\"LSPD5708\":true,\"ZULU2718\":true,\"69DUC856\":true,\"49DKX489\":true,\"02HJE974\":true,\"ZULU2120\":true,\"ZULU2582\":true,\"ZULU9020\":true,\"ZULU4742\":true,\"27LPU517\":true,\"22CJN563\":true,\"ZULU4272\":true,\"ZULU8964\":true,\"LSPD6422\":true,\"20ZUN575\":true,\"ZULU2496\":true,\"ZULU7027\":true,\"ZULU5740\":true,\"09SEW338\":true,\"4LZ076HQ\":true,\"69KIW393\":true,\"81GFF550\":true,\"62NAO267\":true,\"03LKR525\":true,\"44VCL270\":true,\"LSPD8542\":true,\"ZULU3598\":true,\"8ML674UD\":true,\"ZULU1641\":true,\"00GSP167\":true,\"28RMD969\":true,\"ZULU5125\":true,\"02YSF502\":true,\"22MQY761\":true,\"28NCZ497\":true,\"LSPD1046\":true,\"26BSI850\":true,\"63NPW460\":true,\"68SGY566\":true,\"65GLY700\":true,\"LSPD7031\":true,\"41PCC442\":true,\"0AS738XZ\":true,\"67RMW346\":true,\"80EFV870\":true,\"45UGE554\":true,\"27FMR011\":true,\"LSPD5657\":true,\"40IZC982\":true,\"64KOI784\":true,\"87ERN839\":true,\"40ZEJ714\":true,\"LSPD8547\":true,\"85ZCU140\":true,\"80LOZ797\":true,\"03VPT799\":true,\"45TYK504\":true,\"88HOS777\":true,\"09DYJ492\":true,\"67HCM111\":true,\"43HHE563\":true,\"88ACI248\":true,\"88IGH604\":true,\"25WUC842\":true,\"66ZSR720\":true,\"80ZDW639\":true,\"ZULU7120\":true,\"ZULU3992\":true,\"63ITP926\":true,\"86AVR429\":true,\"46HZF516\":true,\"28USA643\":true,\"48WYO064\":true,\"22CRW231\":true},\"phone\":[],\"walletid\":\"QB-87128942\",\"criminalclothe\":0,\"stress\":0,\"rep\":[],\"criminalrecord\":{\"hasRecord\":true,\"date\":{\"isdst\":false,\"sec\":5,\"month\":3,\"yday\":85,\"year\":2025,\"wday\":4,\"min\":22,\"hour\":21,\"day\":26}}}','[{\"metadata\":{\"durability\":100,\"components\":[]},\"count\":1,\"name\":\"WEAPON_STICKYBOMB\",\"slot\":2},{\"metadata\":{\"serie\":\"19unH3Td303ljeg\",\"ammo\":0,\"durability\":100,\"components\":[]},\"count\":1,\"name\":\"WEAPON_STICKYBOMB\",\"slot\":3},{\"metadata\":{\"durability\":100,\"components\":[]},\"count\":1,\"name\":\"WEAPON_STICKYBOMB\",\"slot\":4},{\"metadata\":{\"durability\":100,\"components\":[]},\"count\":1,\"name\":\"WEAPON_STICKYBOMB\",\"slot\":5},{\"metadata\":{\"rank\":\"警督\",\"type\":\"police\",\"name\":\"谢尔比 邦德\",\"photo\":\"https://r2.fivemanage.com/image/Y8P6Kw0hCR6g.webp\",\"callsign\":\"007\"},\"count\":1,\"name\":\"pdbadge\",\"slot\":50},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"binoculars\",\"slot\":30},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"phone\",\"slot\":29}]','2025-04-08 14:31:59',NULL,0,0),
(13104,'PAE88769',1,'license:75612893c324cff49b0e36fe7e7e5928f39b8439','angry','{\"bank\":5000,\"cash\":500,\"crypto\":0}','{\"nationality\":\"中国\",\"phone\":\"7199643215\",\"birthdate\":\"2000-12-03\",\"account\":\"US01QBCore3478956727\",\"gender\":1,\"firstname\":\"晨\",\"lastname\":\"施\",\"cid\":\"1\"}','{\"isboss\":false,\"name\":\"unemployed\",\"label\":\"Civilian\",\"onduty\":false,\"payment\":10,\"type\":\"none\",\"grade\":{\"name\":\"Freelancer\",\"level\":0}}','{\"isboss\":false,\"name\":\"none\",\"grade\":{\"name\":\"none\",\"level\":0},\"label\":\"No Gang Affiliation\"}','{\"x\":-267.6527404785156,\"y\":-968.5054931640625,\"z\":2.2696533203125}','{\"rep\":[],\"isdead\":false,\"fingerprint\":\"dw998Z13nDE2843\",\"armor\":0,\"injail\":0,\"currentapartment\":\"apartment11316\",\"phone\":[],\"hunger\":96.0,\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"inlaststand\":false,\"criminalrecord\":{\"hasRecord\":false},\"ishandcuffed\":false,\"jailitems\":[],\"thirst\":95.0,\"tracker\":false,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":14977557},\"stress\":0,\"bloodtype\":\"AB+\",\"status\":[],\"walletid\":\"QB-85417193\",\"callsign\":\"NO CALLSIGN\",\"inside\":{\"apartment\":{\"apartmentId\":\"apartment11316\",\"apartmentType\":\"apartment1\"}}}','[{\"count\":500,\"slot\":1,\"name\":\"money\"},{\"name\":\"id_card\",\"count\":1,\"slot\":2,\"metadata\":{\"birthdate\":\"2000-12-03\",\"citizenid\":\"PAE88769\",\"nationality\":\"中国\",\"quality\":100,\"firstname\":\"晨\",\"gender\":1,\"lastname\":\"施\"}},{\"name\":\"phone\",\"count\":1,\"slot\":3,\"metadata\":{\"quality\":100}},{\"name\":\"driver_license\",\"count\":1,\"slot\":4,\"metadata\":{\"birthdate\":\"2000-12-03\",\"lastname\":\"施\",\"quality\":100,\"firstname\":\"晨\",\"type\":\"Class C Driver License\"}}]','2025-04-02 10:01:44',NULL,0,0),
(7048,'PGC90082',1,'license:74cc95f3116ed04263c106145873d5b828826b2d','tiphollow19','{\"bank\":5000,\"cash\":500,\"crypto\":0}','{\"birthdate\":\"1967-08-23\",\"nationality\":\"China\",\"account\":\"US03QBCore1861550761\",\"phone\":\"9687616014\",\"lastname\":\"hfhfghghg\",\"cid\":1,\"gender\":0,\"firstname\":\"fbythhgf\"}','{\"onduty\":false,\"name\":\"unemployed\",\"isboss\":false,\"type\":\"none\",\"label\":\"Civilian\",\"payment\":10,\"grade\":{\"name\":\"Freelancer\",\"level\":0}}','{\"name\":\"none\",\"label\":\"No Gang Affiliation\",\"isboss\":false,\"grade\":{\"name\":\"none\",\"level\":0}}','{\"x\":-812.2417602539063,\"y\":182.5318603515625,\"z\":76.7288818359375}','{\"rep\":[],\"phonedata\":{\"SerialNumber\":12270190,\"InstalledApps\":[]},\"tracker\":false,\"thirst\":100,\"ishandcuffed\":false,\"status\":[],\"hunger\":100,\"injail\":0,\"jailitems\":[],\"phone\":[],\"criminalrecord\":{\"hasRecord\":false},\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"armor\":0,\"bloodtype\":\"A+\",\"callsign\":\"NO CALLSIGN\",\"isdead\":false,\"walletid\":\"QB-93525043\",\"inside\":{\"apartment\":[]},\"stress\":0,\"fingerprint\":\"bm207J17Awh0505\",\"inlaststand\":false}','[{\"count\":500,\"slot\":1,\"name\":\"money\"},{\"name\":\"driver_license\",\"count\":1,\"slot\":2,\"metadata\":{\"birthdate\":\"1967-08-23\",\"firstname\":\"fbythhgf\",\"type\":\"Class C Driver License\",\"lastname\":\"hfhfghghg\"}},{\"name\":\"phone\",\"count\":1,\"slot\":3,\"metadata\":[]},{\"name\":\"id_card\",\"count\":1,\"slot\":4,\"metadata\":{\"nationality\":\"China\",\"citizenid\":\"PGC90082\",\"lastname\":\"hfhfghghg\",\"firstname\":\"fbythhgf\",\"gender\":0,\"birthdate\":\"1967-08-23\"}}]','2025-04-02 10:01:44',NULL,0,0),
(11513,'PZN63640',2,'license:1d66e7c15b365459c984da5e633f19963a296d90','杰克','{\"cash\":100,\"bank\":4850,\"crypto\":0}','{\"firstname\":\"内曼\",\"phone\":\"5223562870\",\"birthdate\":\"2025-01-04\",\"account\":\"US06QBCore8302731694\",\"nationality\":\"中国\",\"gender\":1,\"lastname\":\"科瓦奇\",\"cid\":\"2\"}','{\"isboss\":false,\"name\":\"unemployed\",\"label\":\"公民\",\"onduty\":false,\"payment\":500,\"grade\":{\"isboss\":false,\"name\":\"自由职业者\",\"level\":0},\"type\":\"none\"}','{\"isboss\":false,\"grade\":{\"isboss\":false,\"name\":\"Unaffiliated\",\"level\":0},\"name\":\"none\",\"label\":\"No Gang\"}','{\"x\":789.5867919921875,\"y\":-2125.358154296875,\"z\":29.24609375}','{\"rep\":[],\"isdead\":false,\"fingerprint\":\"kf911V40KLs4211\",\"armor\":0,\"injail\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":75201363},\"hunger\":64.0,\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"inlaststand\":false,\"criminalrecord\":{\"hasRecord\":false},\"ishandcuffed\":false,\"inside\":{\"apartment\":[]},\"jailitems\":[],\"thirst\":88.0,\"tracker\":false,\"walletid\":\"QB-96482549\",\"vehicleKeys\":{\"9IT487EA\":true},\"bloodtype\":\"B+\",\"status\":[],\"stress\":0,\"callsign\":\"NO CALLSIGN\",\"phone\":[]}','[{\"count\":100,\"slot\":1,\"name\":\"money\"},{\"name\":\"id_card\",\"count\":1,\"slot\":2,\"metadata\":{\"birthdate\":\"2025-01-04\",\"citizenid\":\"PZN63640\",\"nationality\":\"中国\",\"quality\":100,\"firstname\":\"内曼\",\"gender\":1,\"lastname\":\"科瓦奇\"}},{\"name\":\"phone\",\"count\":1,\"slot\":3,\"metadata\":{\"quality\":100}},{\"name\":\"driver_license\",\"count\":1,\"slot\":4,\"metadata\":{\"birthdate\":\"2025-01-04\",\"lastname\":\"科瓦奇\",\"quality\":100,\"firstname\":\"内曼\",\"type\":\"Class C Driver License\"}}]','2025-04-02 10:01:44',NULL,0,0),
(6560,'QAR82324',1,'license:be6a314f18c1faa8abe747cc0e8bb2a66af08a12','仙','{\"crypto\":0,\"cash\":500,\"bank\":5000}','{\"phone\":\"1736793364\",\"account\":\"US05QBCore1918972991\",\"gender\":0,\"nationality\":\"China\",\"lastname\":\"ayy\",\"firstname\":\"zts\",\"birthdate\":\"2025-03-15\",\"cid\":1}','{\"label\":\"Civilian\",\"onduty\":false,\"name\":\"unemployed\",\"payment\":10,\"type\":\"none\",\"isboss\":false,\"grade\":{\"level\":0,\"name\":\"Freelancer\"}}','{\"label\":\"No Gang Affiliation\",\"name\":\"none\",\"isboss\":false,\"grade\":{\"level\":0,\"name\":\"none\"}}','{\"x\":-43.25274658203125,\"y\":-1099.912109375,\"z\":26.4154052734375}','{\"licences\":{\"business\":false,\"driver\":true,\"weapon\":false},\"stress\":0,\"callsign\":\"NO CALLSIGN\",\"walletid\":\"QB-22633082\",\"vehicleKeys\":{\"41LGE284\":true},\"ishandcuffed\":false,\"fingerprint\":\"DN336m61YDi2310\",\"armor\":0,\"hunger\":92.0,\"status\":[],\"inlaststand\":false,\"rep\":[],\"injail\":0,\"bloodtype\":\"O+\",\"isdead\":false,\"thirst\":90.0,\"inside\":{\"apartment\":[]},\"tracker\":false,\"phone\":[],\"phonedata\":{\"SerialNumber\":55455978,\"InstalledApps\":[]},\"jailitems\":[],\"criminalrecord\":{\"hasRecord\":false}}','[{\"count\":500,\"slot\":1,\"name\":\"money\"},{\"name\":\"phone\",\"count\":1,\"slot\":2,\"metadata\":[]},{\"name\":\"id_card\",\"count\":1,\"slot\":3,\"metadata\":{\"birthdate\":\"2025-03-15\",\"lastname\":\"ayy\",\"nationality\":\"China\",\"firstname\":\"zts\",\"gender\":0,\"citizenid\":\"QAR82324\"}},{\"name\":\"driver_license\",\"count\":1,\"slot\":4,\"metadata\":{\"birthdate\":\"2025-03-15\",\"firstname\":\"zts\",\"type\":\"Class C Driver License\",\"lastname\":\"ayy\"}}]','2025-04-02 10:01:44',NULL,0,0),
(7349,'QHK11612',1,'license:73d405d75d123b100bb91af1e2a71002ea30cf43','小 丑','{\"bank\":93875.0,\"cash\":2465,\"crypto\":0}','{\"birthdate\":\"2000-11-08\",\"phone\":\"1639408042\",\"lastname\":\"丑\",\"nationality\":\"China\",\"cid\":1,\"gender\":0,\"account\":\"US06QBCore2721450131\",\"firstname\":\"小\"}','{\"payment\":700,\"label\":\"警察\",\"grade\":{\"name\":\"警长\",\"isboss\":false,\"payment\":700,\"level\":2},\"onduty\":true,\"isboss\":false,\"name\":\"police\",\"type\":\"leo\"}','{\"label\":\"No Gang\",\"isboss\":false,\"grade\":{\"isboss\":false,\"name\":\"Unaffiliated\",\"level\":0},\"name\":\"none\"}','{\"x\":414.29010009765627,\"y\":-1004.4000244140625,\"z\":29.3304443359375}','{\"isdead\":false,\"ishandcuffed\":false,\"inside\":{\"apartment\":[]},\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"tracker\":false,\"phonedata\":{\"SerialNumber\":29307442,\"InstalledApps\":[]},\"fingerprint\":\"YL908h06ZPI6427\",\"stress\":0,\"rifleflag\":\"assault\",\"hunger\":88.0,\"thirst\":85.0,\"callsign\":\"NO CALLSIGN\",\"handgunflag\":\"handguns\",\"radio_police.anim\":3,\"armor\":0,\"status\":[],\"criminalclothe\":0,\"vehicleKeys\":{\"8LO099WT\":true,\"21KQY066\":true,\"ZULU4878\":true,\"69FKO608\":true,\"63FMR195\":true,\"06DYP044\":true,\"01ECY274\":true,\"05PKV670\":true,\"ZULU7805\":true,\"TOWR4122\":true,\"02DGL783\":true,\"41FXJ196\":true,\"03KYW225\":true,\"LSPD1440\":true,\"22SVH100\":true,\"ZULU5694\":true,\"49TFA009\":true,\"28ZZR026\":true,\"LSPD7212\":true,\"65RNQ274\":true,\"LSPD2189\":true,\"48TIB773\":true,\"80QVS646\":true,\"ZULU3151\":true,\"22CBB123\":true,\"LSPD3817\":true,\"LSPD6446\":true,\"61BTW455\":true,\"ZULU7904\":true,\"44VFR503\":true,\"03EVV421\":true,\"LSPD8180\":true,\"40XII082\":true,\"26IDA896\":true,\"27BNR112\":true,\"28OZU602\":true,\"08DYL993\":true,\"02RDW712\":true,\"9VU149NQ\":true,\"87DBH410\":true,\"LSPD5438\":true,\"66PAR293\":true,\"87FKQ046\":true,\"41UYB759\":true,\"26VBO383\":true,\"LSPD1189\":true,\"45VIR109\":true,\"67FRC662\":true,\"82DHX664\":true,\"24FNN351\":true,\"ZULU8221\":true,\"07BAM374\":true,\"01ESW047\":true,\"03UEL978\":true,\"67RNS943\":true,\"48WYO064\":true,\"40RCO924\":true,\"68LNP240\":true,\"ZULU9020\":true,\"42RDW312\":true,\"69PKX892\":true,\"ZULU5077\":true,\"LSPD1748\":true,\"02JLX790\":true,\"3WM968ZW\":true,\"TOWR9987\":true,\"80AHO794\":true,\"60STP446\":true,\"25GPI459\":true,\"BUS2258\":true,\"69JMS773\":true,\"48TCY463\":true,\"65ZHB425\":true,\"00MWU886\":true,\"00FWG287\":true,\"47AUI414\":true,\"LSPD2180\":true,\"09MOA787\":true,\"8KA515XR\":true,\"05QCM806\":true,\"TOWR1318\":true,\"03MWC475\":true,\"01KVV841\":true,\"LSPD8584\":true,\"69PZK191\":true,\"8GA378WO\":true,\"80TES036\":true,\"80YYJ664\":true,\"26XOS703\":true},\"inlaststand\":false,\"custom_police_keybind\":{\"I\":\"origen_police:dispatch:delalert\",\"O\":\"origen_police:dispatch:mrkalert\",\"H\":\"origen_police:dispatch:alertas\"},\"phone\":{\"profilepicture\":\"camera-profilepicture\"},\"rep\":{\"hotdog\":2},\"injail\":0,\"walletid\":\"QB-32723698\",\"bloodtype\":\"A-\",\"criminalrecord\":{\"hasRecord\":false},\"jailitems\":[]}','[{\"name\":\"money\",\"slot\":1,\"count\":2465},{\"metadata\":{\"registered\":\"马卡斯 保罗\",\"serial\":\"334362POL777074\",\"ammo\":12,\"durability\":99.80000000000001,\"components\":[]},\"name\":\"WEAPON_PISTOL\",\"slot\":2,\"count\":1},{\"metadata\":{\"components\":[],\"serial\":\"198098POL987514\",\"durability\":100,\"registered\":\"小 丑\"},\"name\":\"WEAPON_STUNGUN\",\"slot\":3,\"count\":1},{\"metadata\":{\"serie\":\"53bgS8tK925cQqL\",\"serial\":\"53bgS8tK925cQqL\",\"components\":[],\"durability\":24.72999999999954,\"ammo\":30,\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"},{\"label\":\"3x Scope\",\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\"}]},\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":4,\"count\":1},{\"metadata\":{\"quality\":100},\"name\":\"radio\",\"slot\":5,\"count\":1},{\"name\":\"megaphone\",\"slot\":7,\"count\":1},{\"metadata\":{\"quality\":100},\"name\":\"phone\",\"slot\":8,\"count\":1},{\"metadata\":{\"nationality\":\"China\",\"birthdate\":\"2000-11-08\",\"quality\":100,\"firstname\":\"小\",\"lastname\":\"丑\",\"citizenid\":\"QHK11612\",\"gender\":0},\"name\":\"id_card\",\"slot\":9,\"count\":1},{\"name\":\"water\",\"slot\":10,\"count\":4},{\"name\":\"ammo-9\",\"slot\":11,\"count\":26},{\"metadata\":{\"type\":\"Class C Driver License\",\"birthdate\":\"2000-11-08\",\"quality\":100,\"firstname\":\"小\",\"lastname\":\"丑\"},\"name\":\"driver_license\",\"slot\":12,\"count\":1},{\"name\":\"ammo-rifle\",\"slot\":13,\"count\":318},{\"name\":\"police_cad\",\"slot\":14,\"count\":1},{\"metadata\":{\"quality\":100},\"name\":\"lockpick\",\"slot\":15,\"count\":16}]','2025-04-05 16:07:06',NULL,0,0),
(15998,'QLU88274',2,'license:2da06b314a5f1fa81c89311ec89788310b27802d','HUAWEI','{\"bank\":37731.0,\"cash\":1042,\"crypto\":0}','{\"birthdate\":\"0009-02-01\",\"gender\":0,\"lastname\":\"约翰\",\"account\":\"US01QBCore7072378711\",\"firstname\":\"杰罗姆\",\"phone\":\"9113405728\",\"cid\":\"2\",\"nationality\":\"中国\"}','{\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"自由职业者\"},\"onduty\":false,\"label\":\"公民\",\"type\":\"none\",\"isboss\":false,\"name\":\"unemployed\",\"payment\":200}','{\"isboss\":false,\"label\":\"No Gang\",\"name\":\"none\",\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"Unaffiliated\"}}','{\"x\":395.4065856933594,\"y\":-400.9318542480469,\"z\":46.163330078125}','{\"licences\":{\"business\":false,\"weapon\":true,\"driver\":true},\"bloodtype\":\"B-\",\"mechanic\":200,\"injail\":0,\"criminalrecord\":{\"hasRecord\":false},\"rep\":[],\"walletid\":\"QB-70680304\",\"hunger\":72.0,\"tracker\":false,\"thirst\":65.0,\"status\":[],\"callsign\":\"NO CALLSIGN\",\"ishandcuffed\":false,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":87859750},\"phone\":[],\"isdead\":false,\"stress\":0,\"inlaststand\":false,\"vehicleKeys\":{\"24PTK710\":true,\"89EWQ798\":true,\"63EGD887\":true,\"60URK932\":true,\"01ESW047\":true,\"29SAH683\":true,\"89JGP590\":true,\"88ESG990\":true,\"40DTH465\":true,\"02DGL783\":true,\"83MRA207\":true,\"25MAL147\":true,\"66TQG287\":true,\"67YXQ660\":true,\"84XII125\":true,\"88IGH604\":true,\"TESTDRIV\":true},\"armor\":0,\"fingerprint\":\"oz416I32kVF6899\",\"criminalclothe\":0,\"jailitems\":[],\"pertenencesSaved\":0,\"inside\":{\"apartment\":[]}}','[{\"count\":1,\"name\":\"redwcig\",\"slot\":1},{\"metadata\":{\"ammo\":12,\"serial\":\"555579POL671657\",\"components\":[\"at_suppressor_light\",\"at_flashlight\"],\"registered\":\"马卡斯 保罗\",\"durability\":98.90000000000006},\"count\":1,\"name\":\"WEAPON_PISTOL\",\"slot\":3},{\"metadata\":{\"registered\":\"马克 康格里\",\"components\":[],\"durability\":100,\"serial\":\"109425POL323057\"},\"count\":1,\"name\":\"WEAPON_STUNGUN\",\"slot\":4},{\"metadata\":{\"serie\":\"47ngs0re484wGYW\",\"ammo\":12,\"attachments\":[{\"component\":\"COMPONENT_AT_PI_FLSH\",\"label\":\"Flashlight\"}],\"serial\":\"47ngs0re484wGYW\",\"components\":[\"at_flashlight\",\"at_suppressor_light\"],\"durability\":21.30000000000446,\"registered\":\"杰罗姆 约翰\"},\"count\":1,\"name\":\"WEAPON_PISTOL\",\"slot\":5},{\"count\":1042,\"name\":\"money\",\"slot\":7},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"phone\",\"slot\":8},{\"count\":172,\"name\":\"ammo-9\",\"slot\":10},{\"count\":1,\"name\":\"black_money\",\"slot\":9}]','2025-04-08 12:37:21',NULL,0,0),
(13769,'RHT93297',2,'license:0b693a368c37a6bb1f97291e1e3fc4e078ed3a33','2756161174','{\"bank\":99801,\"cash\":1000,\"crypto\":0}','{\"birthdate\":\"2003-12-10\",\"gender\":0,\"lastname\":\"摩根\",\"account\":\"US07QBCore1157745330\",\"firstname\":\"亚瑟\",\"phone\":\"3649739375\",\"nationality\":\"中国\",\"cid\":\"2\"}','{\"payment\":200,\"name\":\"unemployed\",\"isboss\":false,\"type\":\"none\",\"label\":\"公民\",\"onduty\":false,\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"自由职业者\"}}','{\"label\":\"No Gang\",\"isboss\":false,\"name\":\"none\",\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"Unaffiliated\"}}','{\"x\":460.5626525878906,\"y\":-999.1648559570313,\"z\":30.6783447265625}','{\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"bloodtype\":\"O-\",\"jailitems\":[],\"stress\":0,\"inside\":{\"apartment\":[]},\"injail\":0,\"hunger\":20.0,\"status\":[],\"callsign\":\"NO CALLSIGN\",\"ishandcuffed\":false,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":79397397},\"phone\":[],\"isdead\":false,\"thirst\":0,\"armor\":0,\"vehicleKeys\":{\"49ZLJ503\":true,\"20ZUN575\":true,\"20NMQ114\":true,\"4LZ076HQ\":true,\"46RZZ257\":true,\"88CYO564\":true,\"69PTE284\":true,\"09ASS734\":true,\"8LO099WT\":true,\"05FMP031\":true,\"8ML674UD\":true,\"24IKA545\":true,\"46XGO518\":true,\"65GLY700\":true,\"TESTDRIV\":true,\"0AS738XZ\":true,\"08MEW991\":true,\"83JMA543\":true,\"28WGU180\":true,\"89LBH554\":true,\"LSPD6515\":true,\"26AUT324\":true,\"86MAL241\":true,\"85UFZ897\":true,\"03VPT799\":true,\"41QBI952\":true,\"88DLD135\":true,\"24ACK728\":true,\"86AVR429\":true,\"81YLE604\":true,\"28USA643\":true,\"40IZC982\":true,\"06CNL907\":true},\"walletid\":\"QB-19143431\",\"inlaststand\":false,\"tracker\":false,\"fingerprint\":\"vW082i37etZ2031\",\"rep\":[],\"criminalrecord\":{\"hasRecord\":false}}','[{\"count\":1,\"name\":\"cocainekey\",\"slot\":46},{\"count\":1,\"name\":\"methkey\",\"slot\":47},{\"metadata\":{\"serie\":\"76Wne5eo578uYLx\",\"ammo\":80,\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"}],\"registered\":\"杰罗姆 约翰\",\"components\":[\"at_flashlight\"],\"durability\":64.00000000000017,\"serial\":\"76Wne5eo578uYLx\"},\"count\":1,\"name\":\"WEAPON_PUMPSHOTGUN\",\"slot\":3},{\"count\":1,\"name\":\"weedkey\",\"slot\":49},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"phone\",\"slot\":50},{\"metadata\":{\"ammo\":63,\"serial\":\"441531LRU474558\",\"components\":[],\"registered\":\"亚瑟 摩根\",\"durability\":63},\"count\":1,\"name\":\"WEAPON_PETROLCAN\",\"slot\":7},{\"count\":1000,\"name\":\"money\",\"slot\":48},{\"count\":3960,\"name\":\"black_money\",\"slot\":43},{\"metadata\":{\"durability\":100,\"components\":[]},\"count\":1,\"name\":\"WEAPON_STICKYBOMB\",\"slot\":44},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"radio\",\"slot\":5}]','2025-04-08 14:36:03',NULL,0,0),
(6260,'RKL40161',1,'license:cb379236425142bbbb88fa25e3539bccb8e70aa5','kulakovrudolf199854','{\"crypto\":0,\"cash\":0,\"bank\":5500}','{\"firstname\":\"ef\",\"lastname\":\"df\",\"nationality\":\"Algeria\",\"phone\":\"9725508138\",\"account\":\"US02QBCore8366468232\",\"cid\":1,\"gender\":0,\"birthdate\":\"1987-07-22\"}','{\"label\":\"公民\",\"name\":\"unemployed\",\"isboss\":false,\"payment\":500,\"type\":\"none\",\"onduty\":false,\"grade\":{\"level\":0,\"name\":\"自由职业者\",\"isboss\":false}}','{\"name\":\"none\",\"label\":\"No Gang\",\"grade\":{\"level\":0,\"name\":\"Unaffiliated\",\"isboss\":false},\"isboss\":false}','{\"x\":411.8505554199219,\"y\":315.006591796875,\"z\":103.132568359375}','{\"armor\":0,\"callsign\":\"NO CALLSIGN\",\"currentapartment\":\"apartment16132\",\"inside\":{\"apartment\":{\"apartmentType\":\"apartment1\",\"apartmentId\":\"apartment16132\"}},\"hunger\":80.0,\"fingerprint\":\"mN810q77IOj8313\",\"status\":[],\"injail\":0,\"phone\":[],\"ishandcuffed\":false,\"bloodtype\":\"A+\",\"thirst\":75.0,\"jailitems\":[],\"walletid\":\"QB-34665317\",\"inlaststand\":false,\"criminalrecord\":{\"hasRecord\":false},\"tracker\":false,\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"rep\":[],\"isdead\":false,\"stress\":0,\"phonedata\":{\"SerialNumber\":75734465,\"InstalledApps\":[]}}','[{\"name\":\"phone\",\"count\":1,\"slot\":1,\"metadata\":[]},{\"name\":\"driver_license\",\"count\":1,\"slot\":2,\"metadata\":{\"birthdate\":\"1987-07-22\",\"firstname\":\"ef\",\"type\":\"Class C Driver License\",\"lastname\":\"df\"}},{\"name\":\"id_card\",\"count\":1,\"slot\":3,\"metadata\":{\"nationality\":\"Algeria\",\"lastname\":\"df\",\"citizenid\":\"RKL40161\",\"firstname\":\"ef\",\"gender\":0,\"birthdate\":\"1987-07-22\"}}]','2025-04-02 10:01:44',NULL,0,0),
(8697,'RRU27752',1,'license:9bcb0b91bc4d376f3e2caaa39d1208e8fd3f1943','陈 先生','{\"bank\":5955,\"cash\":0,\"crypto\":0}','{\"phone\":\"6753984016\",\"cid\":\"1\",\"firstname\":\"陈\",\"nationality\":\"中国\",\"gender\":0,\"account\":\"US05QBCore4886911976\",\"lastname\":\"先生\",\"birthdate\":\"2000-09-03\"}','{\"name\":\"unemployed\",\"onduty\":true,\"label\":\"公民\",\"grade\":{\"level\":0,\"name\":\"自由职业者\",\"isboss\":false,\"payment\":500},\"isboss\":false,\"type\":\"none\"}','{\"grade\":{\"level\":0,\"isboss\":false,\"name\":\"Unaffiliated\"},\"name\":\"none\",\"isboss\":false,\"label\":\"No Gang\"}','{\"y\":-982.02197265625,\"z\":30.6783447265625,\"x\":438.22418212890627}','{\"walletid\":\"QB-36844430\",\"hunger\":96.0,\"fingerprint\":\"lu729E52wMr2309\",\"stress\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":48856646},\"phone\":[],\"criminalrecord\":{\"hasRecord\":false},\"inlaststand\":false,\"bloodtype\":\"A+\",\"status\":[],\"jailitems\":[],\"thirst\":95.0,\"isdead\":false,\"tracker\":false,\"armor\":0,\"callsign\":\"NO CALLSIGN\",\"vehicleKeys\":{\"TESTDRIV\":true,\"60GZE150\":true,\"09BNS489\":true,\"LSPD5193\":true,\"09QDR499\":true,\"62CJU107\":true,\"00ZYP235\":true,\"08EKT980\":true,\"69ZEE104\":true},\"rep\":[],\"inside\":{\"apartment\":[]},\"ishandcuffed\":false,\"injail\":0,\"licences\":{\"business\":false,\"driver\":true,\"weapon\":false}}','[{\"name\":\"weapon_carbinerifle\",\"count\":1,\"slot\":1,\"metadata\":{\"serial\":\"62gMu7kn195iqLV\",\"serie\":\"62gMu7kn195iqLV\",\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"},{\"label\":\"3x Scope\",\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\"}],\"components\":[],\"durability\":70.15,\"ammo\":250}},{\"name\":\"weapon_pumpshotgun\",\"count\":1,\"slot\":2,\"metadata\":{\"serial\":\"34Ztz9TY572BnHQ\",\"serie\":\"34Ztz9TY572BnHQ\",\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}],\"components\":[],\"durability\":90.55,\"ammo\":250}},{\"name\":\"weapon_stungun\",\"count\":1,\"slot\":3,\"metadata\":{\"serial\":\"59BSp6LK658CFZD\",\"serie\":\"59BSp6LK658CFZD\",\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}],\"components\":[],\"durability\":100,\"ammo\":-1}},{\"name\":\"weapon_pistol\",\"count\":1,\"slot\":4,\"metadata\":{\"serial\":\"05RFM5Bz778oecT\",\"serie\":\"05RFM5Bz778oecT\",\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_PI_FLSH\"}],\"components\":[],\"durability\":100,\"ammo\":0}},{\"name\":\"phone\",\"count\":1,\"slot\":5,\"metadata\":[]},{\"name\":\"id_card\",\"count\":1,\"slot\":6,\"metadata\":{\"nationality\":\"中国\",\"citizenid\":\"RRU27752\",\"birthdate\":\"2000-09-03\",\"firstname\":\"陈\",\"gender\":0,\"lastname\":\"先生\"}},{\"name\":\"driver_license\",\"count\":1,\"slot\":7,\"metadata\":{\"birthdate\":\"2000-09-03\",\"firstname\":\"陈\",\"type\":\"Class C Driver License\",\"lastname\":\"先生\"}},{\"name\":\"weapon_nightstick\",\"count\":1,\"slot\":8,\"metadata\":{\"serial\":\"46png1lY074Fnim\",\"ammo\":0,\"components\":[],\"durability\":100,\"serie\":\"46png1lY074Fnim\"}},{\"name\":\"armor\",\"count\":1,\"slot\":9,\"metadata\":[]},{\"name\":\"radio\",\"count\":1,\"slot\":10,\"metadata\":[]},{\"name\":\"weapon_flashlight\",\"count\":1,\"slot\":11,\"metadata\":{\"serial\":\"39fqr1vS880LAGL\",\"ammo\":0,\"components\":[],\"durability\":100,\"serie\":\"39fqr1vS880LAGL\"}},{\"name\":\"weapon_pistol\",\"count\":1,\"slot\":12,\"metadata\":{\"serial\":\"21rZG2XD254KEVv\",\"durability\":100,\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_PI_FLSH\"}],\"components\":[],\"ammo\":0,\"serie\":\"21rZG2XD254KEVv\"}}]','2025-04-02 10:01:44',NULL,0,0),
(7228,'SLG58971',4,'license:9bcb0b91bc4d376f3e2caaa39d1208e8fd3f1943','陈 先生','{\"cash\":500,\"bank\":6000,\"crypto\":0}','{\"birthdate\":\"2000-03-09\",\"firstname\":\"陈\",\"cid\":4,\"phone\":\"4235568701\",\"gender\":0,\"account\":\"US08QBCore7082492241\",\"lastname\":\"先生\",\"nationality\":\"China\"}','{\"name\":\"unemployed\",\"onduty\":true,\"label\":\"公民\",\"grade\":{\"level\":0,\"name\":\"自由职业者\",\"isboss\":false,\"payment\":500},\"isboss\":false,\"type\":\"none\"}','{\"grade\":{\"name\":\"Unaffiliated\",\"isboss\":false,\"level\":0},\"name\":\"none\",\"isboss\":false,\"label\":\"No Gang\"}','{\"y\":-971.4857177734376,\"z\":43.6864013671875,\"x\":434.3999938964844}','{\"walletid\":\"QB-69716008\",\"hunger\":100,\"fingerprint\":\"JX734d03Gwf4019\",\"stress\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":91015868},\"phone\":[],\"criminalrecord\":{\"hasRecord\":false},\"inlaststand\":false,\"rep\":[],\"status\":[],\"vehicleKeys\":{\"89IWR108\":true,\"47DSR577\":true},\"thirst\":100,\"isdead\":false,\"ishandcuffed\":false,\"armor\":0,\"bloodtype\":\"A-\",\"inside\":{\"apartment\":[]},\"tracker\":false,\"callsign\":\"NO CALLSIGN\",\"licences\":{\"business\":false,\"driver\":true,\"weapon\":false},\"injail\":0,\"jailitems\":[]}','[{\"count\":500,\"slot\":1,\"name\":\"money\"},{\"name\":\"weapon_carbinerifle\",\"count\":1,\"slot\":2,\"metadata\":{\"serial\":\"76qoh1Iv890sEiU\",\"ammo\":125,\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"},{\"label\":\"3x Scope\",\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\"}],\"components\":[],\"durability\":78.4,\"serie\":\"76qoh1Iv890sEiU\"}},{\"name\":\"weapon_pumpshotgun\",\"count\":1,\"slot\":3,\"metadata\":{\"serial\":\"20Bds8lU870PSOm\",\"ammo\":250,\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}],\"components\":[],\"durability\":99.7,\"serie\":\"20Bds8lU870PSOm\"}},{\"name\":\"weapon_smg\",\"count\":1,\"slot\":4,\"metadata\":{\"serial\":\"84Hmm0Pi562Aahp\",\"ammo\":250,\"attachments\":[{\"label\":\"1x Scope\",\"component\":\"COMPONENT_AT_SCOPE_MACRO_02\"},{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}],\"components\":[],\"durability\":94.9,\"serie\":\"84Hmm0Pi562Aahp\"}},{\"name\":\"weapon_stungun\",\"count\":1,\"slot\":5,\"metadata\":{\"serial\":\"25llv9om741USlt\",\"ammo\":-1,\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}],\"components\":[],\"durability\":100,\"serie\":\"25llv9om741USlt\"}},{\"name\":\"police_stormram\",\"count\":1,\"slot\":6,\"metadata\":[]},{\"name\":\"driver_license\",\"count\":1,\"slot\":7,\"metadata\":{\"birthdate\":\"2000-03-09\",\"firstname\":\"陈\",\"type\":\"Class C Driver License\",\"lastname\":\"先生\"}},{\"name\":\"phone\",\"count\":1,\"slot\":8,\"metadata\":[]},{\"name\":\"id_card\",\"count\":1,\"slot\":9,\"metadata\":{\"nationality\":\"China\",\"citizenid\":\"SLG58971\",\"birthdate\":\"2000-03-09\",\"firstname\":\"陈\",\"gender\":0,\"lastname\":\"先生\"}},{\"name\":\"weapon_nightstick\",\"count\":1,\"slot\":10,\"metadata\":{\"serial\":\"72gos5Vz618qYKF\",\"ammo\":0,\"components\":[],\"durability\":100,\"serie\":\"72gos5Vz618qYKF\"}},{\"name\":\"weapon_flashlight\",\"count\":1,\"slot\":11,\"metadata\":{\"serial\":\"53Jrj1pP481UCHU\",\"ammo\":0,\"components\":[],\"durability\":100,\"serie\":\"53Jrj1pP481UCHU\"}},{\"name\":\"methkey\",\"count\":1,\"slot\":12,\"metadata\":[]},{\"name\":\"cocainekey\",\"count\":1,\"slot\":13,\"metadata\":[]},{\"name\":\"armor\",\"count\":2,\"slot\":14,\"metadata\":[]},{\"name\":\"radio\",\"count\":1,\"slot\":15,\"metadata\":[]},{\"name\":\"heavyarmor\",\"count\":1,\"slot\":16,\"metadata\":[]}]','2025-04-02 10:01:44',NULL,0,0),
(18280,'UUU52761',1,'license:008a7528d976f018f1d7280a861244f4406c15da','LENOVO-PC','{\"bank\":179500,\"crypto\":0,\"cash\":1372}','{\"nationality\":\"美国\",\"phone\":\"6645365683\",\"lastname\":\"斯帕罗\",\"account\":\"US07QBCore6494417083\",\"cid\":\"1\",\"birthdate\":\"2005-03-26\",\"gender\":1,\"firstname\":\"罗妮菈。克劳德\"}','{\"name\":\"unemployed\",\"label\":\"公民\",\"payment\":500,\"isboss\":false,\"onduty\":false,\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"自由职业者\"},\"type\":\"none\"}','{\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"Unaffiliated\"},\"isboss\":false,\"label\":\"No Gang\",\"name\":\"none\"}','{\"x\":465.059326171875,\"y\":-1020.7648315429688,\"z\":32.969970703125}','{\"isdead\":false,\"ishandcuffed\":false,\"jailitems\":[],\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"rep\":[],\"phonedata\":{\"SerialNumber\":70506254,\"InstalledApps\":[]},\"fingerprint\":\"uG947t19uIA4091\",\"stress\":0,\"hunger\":76.0,\"callsign\":\"NO CALLSIGN\",\"armor\":0,\"tracker\":false,\"criminalrecord\":{\"hasRecord\":false},\"status\":[],\"mechanic\":500,\"bloodtype\":\"O-\",\"phone\":[],\"vehicleKeys\":{\"8GR969WL\":true,\"06ICD599\":true,\"29SAH683\":true,\"47KLZ818\":true,\"9VU149NQ\":true,\"63GMM529\":true,\"48WYO064\":true,\"66PAR293\":true,\"60URK932\":true,\"67YXQ660\":true,\"01ESW047\":true,\"5JZ076RX\":true},\"injail\":0,\"thirst\":70.0,\"walletid\":\"QB-60994324\",\"inside\":{\"apartment\":[]},\"inlaststand\":false}','[{\"metadata\":{\"durability\":34.90000000000369,\"components\":[]},\"name\":\"WEAPON_BAT\",\"slot\":1,\"count\":1},{\"name\":\"radio\",\"slot\":2,\"count\":1},{\"metadata\":{\"components\":[],\"durability\":80.8,\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"},{\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\",\"label\":\"3x Scope\"}],\"ammo\":30,\"serial\":\"65nwD6Gb882Cgfk\",\"serie\":\"65nwD6Gb882Cgfk\"},\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":15,\"count\":1},{\"metadata\":{\"registered\":\"马克 康格里\",\"serial\":\"384784POL952460\",\"durability\":100,\"components\":[]},\"name\":\"WEAPON_STUNGUN\",\"slot\":3,\"count\":1},{\"name\":\"black_money\",\"slot\":17,\"count\":1810},{\"name\":\"ammo-rifle\",\"slot\":18,\"count\":35},{\"name\":\"money\",\"slot\":49,\"count\":1372},{\"name\":\"ammo-rifle\",\"slot\":20,\"count\":30},{\"name\":\"cocainekey\",\"slot\":24,\"count\":1},{\"name\":\"phone\",\"slot\":50,\"count\":1},{\"name\":\"weedkey\",\"slot\":23,\"count\":1},{\"name\":\"kurkakola\",\"slot\":9,\"count\":3},{\"name\":\"burger\",\"slot\":10,\"count\":3},{\"name\":\"ammo-9\",\"slot\":19,\"count\":4},{\"name\":\"methkey\",\"slot\":25,\"count\":1},{\"metadata\":{\"components\":[],\"durability\":20.40000000000007,\"attachments\":[{\"component\":\"COMPONENT_AT_PI_FLSH\",\"label\":\"Flashlight\"}],\"ammo\":12,\"serial\":\"70MaN0cU397LLvH\",\"serie\":\"70MaN0cU397LLvH\"},\"name\":\"WEAPON_PISTOL\",\"slot\":14,\"count\":1},{\"name\":\"water\",\"slot\":8,\"count\":2}]','2025-04-06 13:16:17',NULL,0,0),
(15293,'UXH40238',1,'license:536fde0be8b3e31584382112e3c012780ea9f962','吉贝','{\"bank\":13902,\"cash\":52987,\"crypto\":0}','{\"lastname\":\"麦克\",\"phone\":\"1706621118\",\"firstname\":\"约瑟夫\",\"nationality\":\"中国\",\"gender\":0,\"cid\":\"1\",\"birthdate\":\"2222-02-02\",\"account\":\"US02QBCore6562872899\"}','{\"label\":\"警察\",\"onduty\":true,\"isboss\":false,\"grade\":{\"payment\":600,\"level\":1,\"isboss\":false,\"name\":\"初级警员\"},\"payment\":600,\"type\":\"leo\",\"name\":\"police\"}','{\"label\":\"No Gang\",\"name\":\"none\",\"isboss\":false,\"grade\":{\"name\":\"Unaffiliated\",\"isboss\":false,\"level\":0}}','{\"x\":434.980224609375,\"y\":-1024.865966796875,\"z\":28.824951171875}','{\"federal\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":55339871},\"thirst\":100,\"bloodtype\":\"A+\",\"armor\":0,\"phone\":[],\"isdead\":false,\"inside\":{\"apartment\":[]},\"inlaststand\":false,\"tracker\":true,\"mechanic\":100,\"criminalrecord\":{\"hasRecord\":false},\"custom_police_keybind\":{\"I\":\"origen_police:dispatch:delalert\",\"O\":\"origen_police:dispatch:mrkalert\",\"H\":\"origen_police:dispatch:alertas\"},\"callsign\":\"NO CALLSIGN\",\"jailitems\":[],\"walletid\":\"QB-20473629\",\"licences\":{\"business\":false,\"driver\":true,\"weapon\":false},\"injail\":0,\"criminalclothe\":0,\"ishandcuffed\":false,\"fingerprint\":\"MT169C71nUy4383\",\"hunger\":100,\"status\":[],\"rep\":[],\"pertenencesSaved\":0,\"stress\":0,\"vehicleKeys\":{\"LSPD2313\":true,\"00JCU204\":true,\"LSPD8581\":true,\"81GWV025\":true,\"20SHZ331\":true,\"49TFA009\":true,\"03KDE888\":true,\"LSPD3332\":true,\"05QVT696\":true,\"45RRD849\":true,\"LSPD6328\":true,\"25CXG718\":true,\"ZULU7757\":true,\"LSPD8238\":true,\"ZULU8100\":true,\"65LGT783\":true,\"LSPD8210\":true,\"LSPD2748\":true,\"85RCO240\":true,\"26VBO383\":true,\"66PAR293\":true,\"69DUE957\":true,\"62MDN660\":true,\"24IKA545\":true,\"21AJJ249\":true,\"43KWY925\":true,\"64EER735\":true,\"TESTDRIV\":true,\"LSPD9944\":true,\"86YSE045\":true,\"LSPD4635\":true,\"28EDF119\":true,\"LSPD4533\":true,\"21ERQ416\":true,\"44TRR956\":true,\"02CSO020\":true,\"LSPD5226\":true}}','[{\"name\":\"WEAPON_PISTOL\",\"count\":1,\"metadata\":{\"serial\":\"47ngs0re484wGYW\",\"registered\":\"约瑟夫 麦克\",\"components\":[],\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_PI_FLSH\"}],\"durability\":46.60000000000303,\"serie\":\"47ngs0re484wGYW\",\"ammo\":12},\"slot\":2},{\"name\":\"WEAPON_STUNGUN\",\"count\":1,\"metadata\":{\"serial\":\"228605POL326994\",\"components\":[],\"registered\":\"约瑟夫 麦克\",\"durability\":100},\"slot\":3},{\"name\":\"WEAPON_NIGHTSTICK\",\"count\":1,\"metadata\":{\"components\":[],\"durability\":68.50000000000178},\"slot\":4},{\"name\":\"radio\",\"count\":1,\"metadata\":{\"quality\":100},\"slot\":5},{\"name\":\"hydrochloric_acid\",\"count\":1,\"slot\":6},{\"name\":\"binoculars\",\"count\":1,\"metadata\":{\"quality\":100},\"slot\":7},{\"name\":\"phone\",\"count\":1,\"metadata\":{\"quality\":100},\"slot\":8},{\"name\":\"WEAPON_STUNGUN\",\"count\":1,\"metadata\":{\"serial\":\"890533POL635448\",\"components\":[],\"registered\":\"亚力 雷吉\",\"durability\":100},\"slot\":9},{\"name\":\"money\",\"count\":52987,\"slot\":10},{\"name\":\"ammo-9\",\"count\":41,\"slot\":11},{\"name\":\"markedbills\",\"count\":1,\"metadata\":{\"worth\":365},\"slot\":13},{\"name\":\"police_cad\",\"count\":1,\"slot\":14},{\"name\":\"radio\",\"count\":1,\"metadata\":{\"quality\":100},\"slot\":15},{\"name\":\"WEAPON_FLASHLIGHT\",\"count\":1,\"metadata\":{\"components\":[],\"durability\":100},\"slot\":18},{\"name\":\"goldbar\",\"count\":1,\"slot\":19},{\"name\":\"black_money\",\"count\":990,\"slot\":17}]','2025-04-07 08:44:57',NULL,0,0),
(6398,'VCA51839',1,'license:dd149819621dd1f8c9b076093942ccfbce934c0f','黄什么碗糕','{\"crypto\":0,\"bank\":4500,\"cash\":500}','{\"gender\":0,\"nationality\":\"China\",\"phone\":\"7643029699\",\"firstname\":\"汉三\",\"account\":\"US01QBCore8233421940\",\"cid\":1,\"birthdate\":\"1994-09-08\",\"lastname\":\"黄\"}','{\"type\":\"ems\",\"grade\":{\"isboss\":true,\"payment\":1000,\"level\":4,\"name\":\"医院长\"},\"name\":\"ambulance\",\"label\":\"医护\",\"isboss\":true,\"onduty\":true}','{\"isboss\":false,\"label\":\"No Gang\",\"grade\":{\"isboss\":false,\"name\":\"Unaffiliated\",\"level\":0},\"name\":\"none\"}','{\"x\":295.26593017578127,\"y\":-581.3934326171875,\"z\":43.1640625}','{\"tracker\":false,\"vehicleKeys\":{\"AMBU9894\":true,\"42YIG783\":true,\"44QFQ715\":true,\"42CNR191\":true,\"84JOP052\":true,\"20NLU955\":true},\"criminalrecord\":{\"hasRecord\":false},\"bloodtype\":\"O+\",\"stress\":0,\"inside\":{\"apartment\":[]},\"ishandcuffed\":false,\"status\":[],\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"injail\":0,\"callsign\":\"NO CALLSIGN\",\"jailitems\":[],\"thirst\":80.0,\"inlaststand\":false,\"fingerprint\":\"XJ800d64JAE4644\",\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":92363858},\"walletid\":\"QB-61491689\",\"isdead\":false,\"phone\":[],\"rep\":[],\"hunger\":84.0,\"armor\":0}','[{\"count\":500,\"slot\":1,\"name\":\"money\"},{\"name\":\"driver_license\",\"count\":1,\"slot\":2,\"metadata\":{\"birthdate\":\"1994-09-08\",\"firstname\":\"汉三\",\"type\":\"Class C Driver License\",\"lastname\":\"黄\"}},{\"name\":\"id_card\",\"count\":1,\"slot\":3,\"metadata\":{\"birthdate\":\"1994-09-08\",\"citizenid\":\"VCA51839\",\"lastname\":\"黄\",\"firstname\":\"汉三\",\"gender\":0,\"nationality\":\"China\"}},{\"name\":\"phone\",\"count\":1,\"slot\":4,\"metadata\":[]}]','2025-04-02 10:01:44',NULL,0,0),
(7441,'VCV61562',1,'license:1e839bec02ccd946ae235d79d54c7dc0adc653e7','凡 少','{\"bank\":15235,\"cash\":2203,\"crypto\":0}','{\"nationality\":\"China\",\"account\":\"US08QBCore3203883869\",\"gender\":0,\"cid\":1,\"firstname\":\"布莱恩特\",\"phone\":\"9319602171\",\"birthdate\":\"1999-02-23\",\"lastname\":\"约翰\"}','{\"name\":\"police\",\"label\":\"警察\",\"type\":\"leo\",\"isboss\":true,\"grade\":{\"isboss\":true,\"name\":\"警察局长\",\"payment\":1000,\"level\":4},\"payment\":1000,\"onduty\":true}','{\"name\":\"none\",\"grade\":{\"name\":\"Unaffiliated\",\"isboss\":false,\"level\":0},\"isboss\":false,\"label\":\"No Gang\"}','{\"x\":-1107.191162109375,\"y\":-2998.800048828125,\"z\":13.9296875}','{\"walletid\":\"QB-99098578\",\"armor\":0,\"ishandcuffed\":false,\"bloodtype\":\"AB+\",\"phone\":[],\"hunger\":96.0,\"phonedata\":{\"InstalledApps\":[],\"profilepicture\":\"https://r2.fivemanage.com/7S1plAQv2YcrBrcOxugL4/image/mo.png\",\"SerialNumber\":67465710},\"callsign\":\"014\",\"thirst\":95.0,\"jailitems\":[],\"fingerprint\":\"Nd493C82ozA8491\",\"stress\":0,\"isdead\":false,\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"rep\":[],\"tracker\":false,\"status\":[],\"inlaststand\":false,\"injail\":0,\"custom_police_keybind\":{\"O\":\"origen_police:dispatch:mrkalert\",\"I\":\"origen_police:dispatch:delalert\",\"H\":\"origen_police:dispatch:alertas\"},\"inside\":{\"apartment\":[]},\"criminalrecord\":{\"hasRecord\":true,\"date\":{\"year\":2025,\"sec\":45,\"hour\":13,\"month\":3,\"yday\":87,\"isdst\":false,\"day\":28,\"wday\":6,\"min\":13}},\"vehicleKeys\":{\"47FUR662\":true,\"42UFT602\":true,\"42GLQ061\":true,\"LSPD8246\":true,\"43QAX289\":true,\"27RPP096\":true,\"27FMR011\":true,\"LSPD9054\":true,\"61BTW455\":true,\"46ONX216\":true,\"49PWL963\":true,\"ZULU7805\":true,\"28GHG161\":true,\"28FSX277\":true,\"0AF470JA\":true,\"63FMR195\":true,\"86SHX552\":true,\"LSPD7013\":true,\"LSPD5745\":true,\"09VWQ704\":true,\"80KMQ958\":true,\"LSPD4635\":true,\"41XPE046\":true,\"03ANU005\":true,\"85RCO240\":true,\"65AGH933\":true,\"LSPD9584\":true,\"49FGD537\":true,\"ZULU4878\":true,\"86CPA544\":true,\"22EBM133\":true,\"29MEA868\":true,\"81GWV025\":true,\"28AMU487\":true,\"68EHM518\":true,\"LSPD1366\":true,\"TESTDRIV\":true,\"21ERQ416\":true,\"40GXE986\":true,\"64IJW014\":true,\"LSPD7329\":true,\"86RXS899\":true,\"LSPD7578\":true,\"21RWB063\":true,\"LSPD6661\":true,\"42QBK561\":true,\"05PMJ652\":true,\"06LGF926\":true,\"26QFO676\":true,\"25CXG718\":true}}','[{\"count\":1,\"metadata\":{\"components\":[],\"serie\":\"71ino9dp006RcwB\",\"serial\":\"71ino9dp006RcwB\",\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}],\"ammo\":-1,\"durability\":100},\"name\":\"WEAPON_STUNGUN\",\"slot\":1},{\"count\":1,\"metadata\":{\"components\":[],\"serie\":\"51AQj3Cq898JvMN\",\"serial\":\"51AQj3Cq898JvMN\",\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_PI_FLSH\"}],\"ammo\":0,\"durability\":12.25},\"name\":\"WEAPON_PISTOL\",\"slot\":2},{\"count\":1,\"metadata\":{\"components\":[],\"serie\":\"12dFg8aC143yCOg\",\"serial\":\"12dFg8aC143yCOg\",\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}],\"ammo\":231,\"durability\":92.05},\"name\":\"WEAPON_PUMPSHOTGUN\",\"slot\":3},{\"count\":1,\"metadata\":{\"components\":[],\"serie\":\"51Kde1wj342jXhW\",\"serial\":\"51Kde1wj342jXhW\",\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"},{\"label\":\"3x Scope\",\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\"}],\"ammo\":0,\"durability\":30.25},\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":4},{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"phone\",\"slot\":6},{\"count\":1,\"metadata\":{\"birthdate\":\"1999-02-23\",\"nationality\":\"China\",\"firstname\":\"布莱恩特\",\"quality\":100,\"gender\":0,\"citizenid\":\"VCV61562\",\"lastname\":\"约翰\"},\"name\":\"id_card\",\"slot\":7},{\"count\":1,\"metadata\":{\"birthdate\":\"1999-02-23\",\"type\":\"Class C Driver License\",\"quality\":100,\"lastname\":\"约翰\",\"firstname\":\"布莱恩特\"},\"name\":\"driver_license\",\"slot\":8},{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"radio\",\"slot\":9},{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"handcuffs\",\"slot\":10},{\"count\":3,\"metadata\":{\"quality\":100},\"name\":\"basic_rod\",\"slot\":11},{\"count\":1,\"metadata\":{\"quality\":100},\"name\":\"heavyarmor\",\"slot\":12},{\"count\":78,\"metadata\":{\"quality\":100},\"name\":\"worms\",\"slot\":13},{\"count\":1,\"metadata\":{\"components\":[],\"serie\":\"77Awm1uV696IzTL\",\"serial\":\"77Awm1uV696IzTL\",\"attachments\":[{\"label\":\"Flashlight\",\"component\":\"COMPONENT_AT_AR_FLSH\"}],\"ammo\":0,\"durability\":100},\"name\":\"WEAPON_STUNGUN\",\"slot\":14},{\"count\":7,\"metadata\":{\"quality\":100},\"name\":\"grouper\",\"slot\":15},{\"count\":1,\"metadata\":{\"name\":\"布莱恩特 约翰\",\"quality\":100,\"rank\":\"警督\",\"photo\":\"https://r2.fivemanage.com/7S1plAQv2YcrBrcOxugL4/image/mo.png\",\"callsign\":\"014\",\"type\":{\"__cfx_functionReference\":\"qb-core:1403741066:1106841\"}},\"name\":\"pdbadge\",\"slot\":16},{\"count\":1,\"metadata\":{\"name\":\"布莱恩特 约翰\",\"quality\":100,\"rank\":\"警督\",\"photo\":\"https://r2.fivemanage.com/7S1plAQv2YcrBrcOxugL4/image/mo.png\",\"callsign\":\"014\",\"type\":{\"__cfx_functionReference\":\"qb-core:1403741066:1106842\"}},\"name\":\"pdbadge\",\"slot\":17},{\"count\":1,\"metadata\":{\"name\":\"布莱恩特 约翰\",\"quality\":100,\"rank\":\"警察局长\",\"photo\":\"https://r2.fivemanage.com/image/794HVtL8ZX5u.webp\",\"callsign\":\"001\",\"type\":{\"__cfx_functionReference\":\"qb-core:1403741066:1106843\"}},\"name\":\"pdbadge\",\"slot\":18},{\"count\":1,\"metadata\":{\"name\":\"布莱恩特 约翰\",\"quality\":100,\"rank\":\"警督\",\"photo\":\"https://r2.fivemanage.com/7S1plAQv2YcrBrcOxugL4/image/mo.png\",\"callsign\":\"014\",\"type\":{\"__cfx_functionReference\":\"qb-core:1403741066:1106844\"}},\"name\":\"pdbadge\",\"slot\":19},{\"count\":1,\"metadata\":{\"name\":\"布莱恩特 约翰\",\"quality\":100,\"rank\":\"警督\",\"photo\":\"https://r2.fivemanage.com/7S1plAQv2YcrBrcOxugL4/image/mo.png\",\"callsign\":\"014\",\"type\":{\"__cfx_functionReference\":\"qb-core:1403741066:1106845\"}},\"name\":\"pdbadge\",\"slot\":20},{\"count\":2203,\"name\":\"money\",\"slot\":24}]','2025-04-04 16:53:10',NULL,0,0),
(6105,'VQR49601',1,'license:7be1a5d5107a0f8aa4b254ae6379f999a57357a3','842122356','{\"cash\":146991.0,\"bank\":11085547,\"crypto\":0}','{\"birthdate\":\"2025-01-23\",\"gender\":0,\"lastname\":\"勒布朗\",\"account\":\"US05QBCore8195671547\",\"firstname\":\"阿伦\",\"phone\":\"1441966647\",\"nationality\":\"Jordan\",\"cid\":1}','{\"payment\":700,\"name\":\"ambulance\",\"isboss\":false,\"type\":\"ems\",\"label\":\"医护\",\"onduty\":true,\"grade\":{\"name\":\"医生\",\"isboss\":false,\"level\":2,\"payment\":700}}','{\"label\":\"No Gang\",\"isboss\":false,\"name\":\"none\",\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"Unaffiliated\"}}','{\"x\":212.08351135253907,\"y\":-799.89892578125,\"z\":30.880615234375}','{\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"bloodtype\":\"AB+\",\"jailitems\":[],\"injail\":0,\"custom_police_keybind\":{\"I\":\"origen_police:dispatch:delalert\",\"O\":\"origen_police:dispatch:mrkalert\",\"H\":\"origen_police:dispatch:alertas\"},\"thirst\":60.0,\"armor\":0,\"hunger\":68.0,\"status\":[],\"callsign\":\"NO CALLSIGN\",\"ishandcuffed\":false,\"phonedata\":{\"SerialNumber\":99275090,\"profilepicture\":\"https://r2.fivemanage.com/image/jTy0ORMAeIuu.webp\",\"InstalledApps\":[]},\"phone\":[],\"isdead\":false,\"criminalrecord\":{\"hasRecord\":false},\"inlaststand\":false,\"vehicleKeys\":{\"09OGE780\":true,\"04HGY052\":true,\"ZULU7805\":true,\"61BTW455\":true,\"3WM968ZW\":true,\"40HMZ390\":true,\"66KLZ350\":true,\"81IXA315\":true,\"02DGL783\":true,\"65ZKX414\":true,\"05BTW967\":true,\"61WIJ412\":true,\"07QAW155\":true,\"05QCM806\":true,\"22YRL613\":true,\"63ITP926\":true,\"8LO099WT\":true,\"48AWC076\":true,\"29SKX639\":true,\"01FKS363\":true,\"2FL598AA\":true,\"27MGX624\":true,\"3TY635OQ\":true,\"23EBP942\":true,\"42ITR388\":true,\"25CQP699\":true,\"22NTI362\":true,\"61TRH937\":true,\"3ZH851YF\":true,\"86BKM070\":true,\"TESTDRIV\":true},\"stress\":0,\"walletid\":\"QB-54516670\",\"tracker\":false,\"fingerprint\":\"yB846U43rkh9288\",\"rep\":[],\"inside\":{\"apartment\":[]}}','[{\"metadata\":{\"serie\":\"04PBZ5xN600cnfx\",\"ammo\":0,\"attachments\":[{\"component\":\"COMPONENT_AT_AR_FLSH\",\"label\":\"Flashlight\"},{\"component\":\"COMPONENT_AT_SCOPE_MEDIUM\",\"label\":\"3x Scope\"}],\"components\":[],\"durability\":42.55,\"serial\":\"04PBZ5xN600cnfx\"},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\",\"slot\":1},{\"count\":16,\"name\":\"redwcig\",\"slot\":2},{\"count\":1,\"name\":\"police_cad\",\"slot\":3},{\"count\":1,\"name\":\"radio\",\"slot\":5},{\"metadata\":{\"firstname\":\"阿伦\",\"type\":\"Class C Driver License\",\"birthdate\":\"2025-01-23\",\"lastname\":\"勒布朗\"},\"count\":1,\"name\":\"driver_license\",\"slot\":6},{\"metadata\":{\"quality\":100,\"durability\":100},\"count\":1,\"name\":\"handcuffs\",\"slot\":7},{\"metadata\":{\"birthdate\":\"2025-01-23\",\"gender\":0,\"firstname\":\"阿伦\",\"nationality\":\"Jordan\",\"lastname\":\"勒布朗\",\"citizenid\":\"VQR49601\"},\"count\":1,\"name\":\"id_card\",\"slot\":8},{\"count\":146991.0,\"name\":\"money\",\"slot\":9},{\"metadata\":{\"quality\":100},\"count\":10,\"name\":\"kurkakola\",\"slot\":10},{\"count\":1,\"name\":\"phone\",\"slot\":11},{\"metadata\":{\"durability\":100},\"count\":2,\"name\":\"handcuffs\",\"slot\":12},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"sulfuric_acid\",\"slot\":13},{\"metadata\":{\"quality\":100},\"count\":3,\"name\":\"water_bottle\",\"slot\":14},{\"metadata\":{\"quality\":100},\"count\":8,\"name\":\"tosti\",\"slot\":15},{\"metadata\":{\"quality\":100},\"count\":6,\"name\":\"sandwich\",\"slot\":16},{\"metadata\":{\"quality\":100},\"count\":10,\"name\":\"rolling_paper\",\"slot\":17},{\"metadata\":{\"quality\":100},\"count\":10,\"name\":\"lighter\",\"slot\":18}]','2025-04-08 09:05:35',NULL,0,0),
(16543,'WYU58551',1,'license:a5d70a89b7c1578f78940ccb77d6bac682a69b6f',' 杰克摩根','{\"cash\":444,\"bank\":1400,\"crypto\":0}','{\"nationality\":\"USA\",\"phone\":\"8145174711\",\"lastname\":\"杰克\",\"birthdate\":\"2001-09-22\",\"cid\":\"1\",\"gender\":0,\"account\":\"US05QBCore5823807465\",\"firstname\":\"摩根\"}','{\"isboss\":false,\"label\":\"警察\",\"grade\":{\"payment\":500,\"isboss\":false,\"name\":\"菜鸟\",\"level\":0},\"type\":\"leo\",\"onduty\":true,\"payment\":500,\"name\":\"police\"}','{\"label\":\"No Gang\",\"isboss\":false,\"name\":\"none\",\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"Unaffiliated\"}}','{\"x\":425.4329833984375,\"y\":-1004.017578125,\"z\":30.6951904296875}','{\"isdead\":false,\"inlaststand\":false,\"jailitems\":[],\"thirst\":85.0,\"tracker\":false,\"phonedata\":{\"SerialNumber\":76932715,\"InstalledApps\":[]},\"fingerprint\":\"rb203F58RDf9775\",\"stress\":0,\"hunger\":88.0,\"callsign\":\"NO CALLSIGN\",\"armor\":0,\"inside\":{\"apartment\":[]},\"walletid\":\"QB-48841978\",\"vehicleKeys\":{\"46HZF516\":true,\"89EWQ798\":true,\"25MAL147\":true},\"rep\":[],\"licences\":{\"business\":false,\"weapon\":false,\"driver\":true},\"phone\":[],\"ishandcuffed\":false,\"injail\":0,\"custom_police_keybind\":{\"I\":\"origen_police:dispatch:delalert\",\"O\":\"origen_police:dispatch:mrkalert\",\"H\":\"origen_police:dispatch:alertas\"},\"bloodtype\":\"AB-\",\"criminalrecord\":{\"hasRecord\":false},\"status\":[]}','[{\"name\":\"lockpick\",\"slot\":1,\"count\":48},{\"metadata\":{\"registered\":\"马卡斯 保罗\",\"durability\":91.2000000000005,\"ammo\":12,\"serial\":\"677338POL124019\",\"components\":[\"at_flashlight\"]},\"name\":\"WEAPON_PISTOL\",\"slot\":2,\"count\":1},{\"metadata\":{\"components\":[],\"serial\":\"252265POL284610\",\"durability\":100,\"registered\":\"摩根 杰克\"},\"name\":\"WEAPON_STUNGUN\",\"slot\":3,\"count\":1},{\"name\":\"radio\",\"slot\":4,\"count\":1},{\"name\":\"hydrochloric_acid\",\"slot\":5,\"count\":3},{\"name\":\"phone\",\"slot\":6,\"count\":1},{\"name\":\"money\",\"slot\":7,\"count\":444},{\"name\":\"ammo-9\",\"slot\":9,\"count\":8},{\"metadata\":{\"components\":[],\"durability\":100},\"name\":\"WEAPON_NIGHTSTICK\",\"slot\":10,\"count\":1},{\"name\":\"police_cad\",\"slot\":11,\"count\":1}]','2025-04-05 13:50:53',NULL,0,0),
(7306,'WZK17535',2,'license:7be1a5d5107a0f8aa4b254ae6379f999a57357a3','842122356','{\"bank\":5600,\"cash\":300,\"crypto\":0}','{\"phone\":\"4481914232\",\"firstname\":\"阿黛尔\",\"cid\":2,\"nationality\":\"China\",\"gender\":1,\"account\":\"US03QBCore8416400298\",\"lastname\":\"丽兹\",\"birthdate\":\"2025-03-17\"}','{\"name\":\"unemployed\",\"onduty\":true,\"label\":\"公民\",\"grade\":{\"level\":0,\"name\":\"自由职业者\",\"isboss\":false,\"payment\":500},\"isboss\":false,\"type\":\"none\"}','{\"name\":\"none\",\"grade\":{\"level\":0,\"isboss\":false,\"name\":\"Unaffiliated\"},\"isboss\":false,\"label\":\"No Gang\"}','{\"y\":-393.3362731933594,\"z\":41.748779296875,\"x\":669.1780395507813}','{\"walletid\":\"QB-56493328\",\"hunger\":100,\"fingerprint\":\"yW685F86oOz5144\",\"stress\":0,\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":67673099},\"phone\":[],\"criminalrecord\":{\"hasRecord\":false},\"inlaststand\":false,\"rep\":[],\"status\":[],\"vehicleKeys\":{\"49DKX489\":true,\"63FMR195\":true,\"02DGL783\":true,\"20LCL981\":true},\"thirst\":100,\"isdead\":false,\"callsign\":\"NO CALLSIGN\",\"armor\":0,\"bloodtype\":\"AB+\",\"tracker\":false,\"inside\":{\"apartment\":[]},\"ishandcuffed\":false,\"jailitems\":[],\"injail\":0,\"licences\":{\"business\":false,\"driver\":true,\"weapon\":false}}','[{\"count\":300,\"slot\":1,\"name\":\"money\"},{\"name\":\"driver_license\",\"count\":1,\"slot\":2,\"metadata\":{\"birthdate\":\"2025-03-17\",\"firstname\":\"阿黛尔\",\"type\":\"Class C Driver License\",\"lastname\":\"丽兹\"}},{\"name\":\"id_card\",\"count\":1,\"slot\":3,\"metadata\":{\"nationality\":\"China\",\"citizenid\":\"WZK17535\",\"birthdate\":\"2025-03-17\",\"firstname\":\"阿黛尔\",\"gender\":1,\"lastname\":\"丽兹\"}},{\"name\":\"phone\",\"count\":1,\"slot\":4,\"metadata\":[]}]','2025-04-02 10:01:44',NULL,0,0),
(1,'XRR77997',1,'license:f5b7d587720fa72348aff8cb418bbfd7e3282d63','rainbowkv','{\"cash\":1042,\"bank\":72858.0,\"crypto\":0}','{\"birthdate\":\"2000-07-07\",\"phone\":\"8188537309\",\"account\":\"US03QBCore7588679357\",\"cid\":1,\"gender\":0,\"lastname\":\"邦德\",\"firstname\":\"谢尔比\",\"nationality\":\"China\"}','{\"isboss\":true,\"label\":\"医护\",\"grade\":{\"level\":4,\"isboss\":true,\"payment\":1000,\"name\":\"医院长\"},\"type\":\"ems\",\"name\":\"ambulance\",\"onduty\":true,\"payment\":1000}','{\"grade\":{\"isboss\":true,\"level\":3,\"name\":\"领头\"},\"isboss\":true,\"label\":\"失落摩托\",\"name\":\"lostmc\"}','{\"x\":-1252.25927734375,\"y\":-333.25714111328127,\"z\":37.013916015625}','{\"stress\":0,\"phone\":[],\"ishandcuffed\":false,\"tracker\":true,\"criminalrecord\":{\"hasRecord\":true,\"date\":{\"isdst\":false,\"yday\":345,\"wday\":3,\"year\":2024,\"min\":21,\"sec\":37,\"day\":10,\"hour\":23,\"month\":12}},\"jailitems\":[],\"inside\":{\"apartment\":[]},\"bloodtype\":\"A-\",\"armor\":0,\"inlaststand\":false,\"callsign\":\"000\",\"isdead\":false,\"handgunflag\":\"backhandgun\",\"pertenencesSaved\":0,\"custom_police_keybind\":{\"I\":\"origen_police:dispatch:delalert\",\"[\":\"origen_police:dispatch:alertas\",\"O\":\"origen_police:dispatch:mrkalert\"},\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":55980190,\"profilepicture\":\"https://r2.fivemanage.com/image/Y8P6Kw0hCR6g.webp\"},\"hunger\":64.0,\"radio_police.anim\":3,\"mechanic\":200,\"status\":[],\"licences\":{\"business\":false,\"weapon\":true,\"driver\":true},\"injail\":0,\"fingerprint\":\"LK718x40aOk4542\",\"thirst\":55.0,\"rep\":{\"dealer\":1,\"hotdog\":29},\"walletid\":\"QB-45367443\",\"vehicleKeys\":{\"00GSP167\":true,\"08EDU503\":true,\"LSPD9683\":true,\"08MEW991\":true,\"87FKQ046\":true,\"LSPD1440\":true,\"24RIO237\":true,\"48AWC076\":true,\"48GKO745\":true,\"01ZWE750\":true,\"66MEW058\":true,\"48SYZ973\":true,\"80DRA928\":true,\"LSPD3993\":true,\"41QCL720\":true,\"TAXI2659\":true,\"68QEC562\":true,\"64UIW201\":true,\"87OJP476\":true,\"27NCD730\":true,\"02DGL783\":true,\"83EHV815\":true,\"62VJJ316\":true,\"01FKS363\":true,\"40RRE269\":true,\"LSPD1400\":true,\"81UQD861\":true,\"21BBC971\":true,\"83GKL924\":true,\"01NJY201\":true,\"25HBO515\":true,\"LSPD7313\":true,\"65ZKX414\":true,\"45XBE030\":true,\"45IWL913\":true,\"20AJK446\":true,\"69NFH341\":true,\"64KOI784\":true,\"88YSI795\":true,\"TOWR3415\":true,\"89LBH554\":true,\"44EPC387\":true,\"82JRZ169\":true,\"48VVT060\":true,\"43JRG175\":true,\"27TKH394\":true,\"TAXI1048\":true,\"29BEJ515\":true,\"48THT414\":true,\"LIFE6246\":true,\"81GZH895\":true,\"ZULU3189\":true,\"45FUV464\":true,\"65BSS669\":true,\"21ZUW850\":true,\"20LCL981\":true,\"20IMZ690\":true,\"43OKF388\":true,\"42INL672\":true,\"09NWL369\":true,\"81GXQ010\":true,\"26ZDV417\":true,\"40OEE180\":true,\"68MZA074\":true,\"82CUY664\":true,\"TOWR3861\":true,\"00SIG402\":true,\"40ZEJ714\":true,\"85PBF360\":true,\"65KEO370\":true,\"62REB371\":true,\"00GCO690\":true,\"LSPD8144\":true,\"LSPD2403\":true,\"23EBP942\":true,\"07CRE916\":true,\"86BKM070\":true,\"86MAL241\":true,\"63PLF480\":true,\"27WTC200\":true,\"00BMP982\":true,\"61WIJ412\":true,\"27JQJ168\":true,\"44JIZ719\":true,\"25VML608\":true,\"61ZKK573\":true,\"LSPD9481\":true,\"69PTE284\":true,\"LSPD8679\":true,\"25UJG295\":true,\"69ULG368\":true,\"61URS848\":true,\"48EZL956\":true,\"26FPX883\":true,\"67ZAV135\":true,\"44DCW222\":true,\"8LO099WT\":true,\"69GMI198\":true,\"24EOF841\":true,\"22QUP210\":true,\"60QZH082\":true,\"85PHQ843\":true,\"25GUK848\":true,\"49MEG777\":true,\"07SRW986\":true,\"ZULU1304\":true,\"81TBF852\":true,\"86ICA193\":true,\"03PVQ981\":true,\"87ADD906\":true,\"88JWS838\":true,\"82FLB677\":true,\"24CXX353\":true,\"24OTH015\":true,\"LIFE7420\":true,\"49MDR832\":true,\"TAXI9646\":true,\"01FDY837\":true,\"TAXI9804\":true,\"04GTQ896\":true,\"63MVT091\":true,\"00RGQ293\":true,\"68JWL685\":true,\"22YBM266\":true,\"21UAI629\":true,\"61PIO721\":true,\"03EVV421\":true,\"67ZJJ695\":true,\"49WYV449\":true,\"ZULU3669\":true,\"66AVM722\":true,\"05ZNN613\":true,\"44KEJ403\":true,\"06NMZ905\":true,\"AMBU9514\":true,\"65NHF066\":true,\"80KFX768\":true,\"88KXQ190\":true,\"09KEI884\":true,\"01JNZ537\":true,\"47QSU143\":true,\"24RYX124\":true,\"04PWI843\":true,\"01DWM646\":true,\"61VQU386\":true,\"42GCS348\":true,\"9NI363OO\":true,\"44NYP271\":true,\"21JPB869\":true,\"46KBG908\":true,\"08EWK120\":true,\"85LQD783\":true,\"60FSB285\":true,\"TESTDRIV\":true,\"07XOU046\":true,\"06BKK079\":true,\"27TJP041\":true,\"41IXM943\":true,\"00NNI905\":true,\"83JMA543\":true,\"86MIR642\":true,\"66TYS266\":true,\"48BPK297\":true,\"42YIG783\":true,\"83EVS015\":true,\"83DAV755\":true,\"LSPD5061\":true,\"67QQT936\":true,\"84NWW229\":true,\"LSPD5930\":true,\"64ALD376\":true,\"07TJN902\":true,\"49THN414\":true,\"20NMQ114\":true,\"85OHN838\":true,\"63NXF833\":true,\"22NTI362\":true,\"07XLI631\":true,\"81IOX099\":true,\"03REZ955\":true,\"82VRQ823\":true,\"88IGH604\":true,\"41QTD531\":true,\"25VPN980\":true,\"20JJU839\":true,\"LSPD3301\":true,\"02NSL444\":true,\"07HTW200\":true,\"64JCC527\":true,\"09OZV307\":true,\"28HUM896\":true,\"TAXI9850\":true,\"62BJV474\":true,\"07IKT545\":true,\"43HOS152\":true,\"86BUL515\":true,\"01BMH774\":true,\"02XQS781\":true,\"06EAC137\":true,\"41DBO396\":true,\"26JYM018\":true,\"25RXJ184\":true,\"22SSF836\":true,\"86GKH429\":true,\"48QTI983\":true,\"68MNR708\":true,\"61GGX349\":true,\"26GQQ039\":true,\"27PNA559\":true,\"42RDW312\":true,\"88XEO819\":true,\"43UWP816\":true,\"63ZFR168\":true,\"85GHZ687\":true,\"41GWP606\":true,\"02YBS776\":true,\"AMBU1837\":true,\"26CDG677\":true,\"87KHP351\":true,\"BUS4411\":true,\"LSPD3407\":true,\"3RN142JT\":true,\"09JJR984\":true,\"45HRA707\":true,\"64KXU381\":true,\"41KTH703\":true,\"05BTW967\":true,\"26NBJ940\":true,\"26AUO565\":true,\"27CVP722\":true,\"68RVT802\":true,\"46BIR548\":true,\"49TII409\":true,\"67UMR073\":true,\"01LHL050\":true,\"65MWA333\":true,\"TOWR4376\":true,\"05FJR813\":true,\"60APD739\":true,\"22CCY079\":true,\"TAXI8557\":true,\"20JBR539\":true,\"TOWR3222\":true,\"27YFW586\":true,\"TAXI6751\":true,\"07KRL525\":true,\"48JXW209\":true,\"61FHR850\":true,\"22YRL613\":true,\"05FMP031\":true,\"47KML931\":true,\"43VWM411\":true,\"22UWJ264\":true,\"03RUM378\":true,\"29FOX355\":true,\"47HSC478\":true,\"42ITR388\":true,\"26EJM137\":true,\"83ZAB028\":true,\"80YYJ664\":true,\"29WES333\":true,\"60TMQ553\":true,\"26AUT324\":true,\"27JWK260\":true,\"82EOB434\":true,\"TAXI4261\":true,\"29IFV265\":true,\"LSPD9524\":true,\"81IXA315\":true,\"20QFB218\":true,\"67DFZ223\":true,\"LSPD3913\":true,\"26IDA896\":true,\"61QDV296\":true,\"68SDO315\":true,\"68ILU959\":true,\"04IRA002\":true,\"84YAY121\":true,\"64HNM533\":true,\"23SCW140\":true,\"86HQE058\":true,\"89GUQ679\":true,\"81DQJ205\":true,\"67HCM111\":true,\"AMBU7930\":true,\"48EPO780\":true,\"43WCE752\":true,\"63ROA342\":true,\"67UAS030\":true,\"63GVX254\":true,\"00GTY623\":true,\"46DQP939\":true,\"29SKX639\":true,\"66HUF281\":true,\"22CEZ246\":true,\"TOWR5314\":true,\"49LIV281\":true,\"24PPQ556\":true,\"LSPD8584\":true,\"83ZJK553\":true,\"89FDF435\":true,\"61TLK986\":true,\"LSPD7612\":true,\"66LPH211\":true,\"48NIH004\":true,\"09QNN844\":true,\"LSPD9432\":true,\"86YSE045\":true,\"85GEJ660\":true,\"47BWY865\":true,\"80GZY540\":true,\"08ZKC898\":true,\"41APO700\":true,\"20MBA846\":true,\"63HYX480\":true,\"88DLD135\":true,\"63TCA700\":true,\"02JLX790\":true,\"63NPW460\":true,\"44IKF948\":true,\"89YYJ853\":true,\"LSPD8225\":true,\"LSPD7013\":true,\"86YRY974\":true,\"47YRC181\":true,\"47FUR662\":true,\"29RWF656\":true,\"88ZLO519\":true,\"00MSN308\":true,\"20CNQ885\":true,\"68PWN860\":true,\"45GJB894\":true,\"66UGF496\":true,\"04IGJ493\":true,\"22WTR111\":true,\"21CUA364\":true,\"60DBW243\":true,\"ZULU5795\":true,\"05QSP767\":true,\"68BGC791\":true,\"28WCZ037\":true,\"21VLY468\":true,\"68SPY416\":true,\"05DBT512\":true,\"01ESW047\":true,\"LSPD6817\":true,\"43HHE986\":true,\"05HGZ158\":true,\"LSPD3754\":true,\"80UKZ922\":true,\"25MKI390\":true,\"05AYD661\":true,\"65MLX846\":true,\"44GFR732\":true,\"23PPQ084\":true,\"02YSF502\":true,\"27SSZ942\":true,\"45GIR338\":true,\"49DKX489\":true,\"81MTY922\":true,\"66LPG044\":true,\"85UFZ897\":true,\"48LKR840\":true,\"65VKJ436\":true,\"TAXI5708\":true,\"43HHJ929\":true,\"LSPD7739\":true,\"09IPA068\":true,\"87OMT384\":true,\"65WDR282\":true,\"61LVP240\":true,\"42JBP790\":true,\"61BTW455\":true,\"20IEH985\":true,\"87TKF794\":true,\"28YUS537\":true,\"04YPZ446\":true,\"89LGY938\":true,\"02USO641\":true,\"ZULU2689\":true,\"49ZPT359\":true,\"01UQF990\":true,\"81NCB951\":true,\"LSPD4207\":true,\"66ZSR720\":true,\"08RMA553\":true,\"43DTR488\":true,\"89OAH086\":true,\"24SAN574\":true,\"07ELN241\":true,\"06MST292\":true,\"24EVW224\":true,\"02OHU038\":true,\"80HWC951\":true,\"61SJO253\":true,\"TAXI9722\":true,\"09JSA629\":true,\"67IUA248\":true,\"LSPD7959\":true,\"28WGU180\":true,\"01NHR130\":true,\"ZULU8577\":true,\"66KLZ350\":true,\"3WM968ZW\":true,\"20FQG271\":true,\"44DMB770\":true,\"LSPD4590\":true,\"26JRV998\":true,\"27NYD617\":true,\"83ASX163\":true,\"28HEA266\":true,\"40IZC982\":true,\"AMBU7469\":true,\"27OOJ995\":true,\"04HGY052\":true,\"85FWJ057\":true,\"09QIE894\":true,\"83SWN081\":true,\"69RQQ072\":true,\"LSPD2691\":true,\"28USA643\":true,\"62SQN984\":true,\"48HZG683\":true,\"05LOX771\":true,\"TAXI8667\":true,\"66NAX269\":true,\"AMBU3528\":true,\"67QRZ086\":true,\"80ABO739\":true,\"62NAO267\":true,\"87FMN802\":true,\"67RNS943\":true,\"48JXC379\":true,\"07YQF691\":true,\"65VEM206\":true,\"64EER735\":true,\"05ZXM148\":true,\"40SSY751\":true,\"49XUY750\":true,\"07BLC868\":true,\"60PJJ073\":true,\"62QHP922\":true,\"81TVD896\":true,\"01KVD059\":true,\"26JZL944\":true,\"80XHE311\":true,\"01JVY963\":true,\"20BLV883\":true,\"TAXI3759\":true,\"20MLV222\":true,\"83DEW988\":true,\"27DEV091\":true,\"ZULU7805\":true,\"40NDG618\":true,\"TAXI1403\":true,\"64HOW060\":true,\"08HFP253\":true,\"89TUQ569\":true,\"67EHJ909\":true,\"09GEX266\":true,\"87QKK065\":true,\"83UTA430\":true,\"LIFE8113\":true,\"62PHM227\":true,\"03VMJ548\":true,\"TOWR1112\":true,\"08GLS116\":true,\"07JVY475\":true,\"47PGG072\":true,\"47UAX368\":true,\"20QTY627\":true,\"67KOA282\":true,\"TOWR2279\":true,\"29VNV216\":true,\"05RZK312\":true,\"LSPD5983\":true,\"27YHA558\":true,\"44FMJ485\":true,\"87ZJM890\":true,\"TAXI7189\":true,\"86BZW564\":true,\"62YWK477\":true,\"65ASP954\":true,\"LSPD9525\":true,\"08DNO602\":true,\"63UBD593\":true,\"TOWR2008\":true,\"05SUE206\":true,\"0AZ946NK\":true,\"TAXI6204\":true,\"03CFD921\":true,\"82IIE374\":true,\"TAXI1307\":true,\"60VKU527\":true,\"LSPD1505\":true,\"LSPD5062\":true,\"47VHU353\":true,\"46RYE608\":true,\"83PAC844\":true,\"83CKQ067\":true,\"43YTD892\":true,\"88BFR366\":true,\"04RAM561\":true,\"29LZD874\":true,\"20OBI051\":true,\"63ITP926\":true,\"40DZK767\":true,\"61BMI876\":true,\"66XGT472\":true,\"45IOR807\":true,\"63GHM335\":true,\"28QXR670\":true,\"89BWC712\":true,\"05QCM806\":true,\"28XVS190\":true,\"TAXI7338\":true,\"24IKA545\":true,\"07QAW155\":true,\"LSPD9294\":true,\"LSPD6997\":true,\"62YHX817\":true,\"TOWR9623\":true,\"00FDS204\":true,\"LSPD5168\":true,\"87ZCM282\":true,\"02WSN889\":true,\"89XKJ645\":true,\"LIFE3505\":true,\"81GWV025\":true,\"88CGR929\":true,\"41RWY553\":true,\"09TOQ081\":true,\"29CSE157\":true,\"86FWG775\":true,\"ZULU1013\":true,\"62QQA666\":true,\"9VU149NQ\":true,\"22MQY761\":true,\"21ZTC121\":true,\"82HCJ195\":true,\"63PFC188\":true,\"43WYZ252\":true,\"05GAQ755\":true,\"LSPD3875\":true,\"LSPD8948\":true,\"48ATU476\":true,\"48WYO064\":true,\"88BYA775\":true,\"63KIH825\":true,\"TOWR9494\":true,\"44SOW199\":true,\"46HZF516\":true,\"45RXG941\":true,\"08YXZ438\":true,\"28USU533\":true,\"3HT776XP\":true,\"LIFE8667\":true,\"67DQJ869\":true,\"25CQP699\":true,\"8KA515XR\":true,\"00TGE570\":true,\"01IPL371\":true,\"88FWF927\":true,\"80XQP575\":true,\"26HTA175\":true,\"44RAT346\":true,\"43WDW004\":true,\"86EQV906\":true,\"68BYU564\":true,\"46DGQ406\":true,\"49CZG682\":true,\"86PIV156\":true,\"TOWR6271\":true},\"rifleflag\":\"assault\"}','[{\"slot\":1,\"metadata\":{\"ammo\":0,\"components\":[],\"durability\":76.00000000000137,\"registered\":\"谢尔比 邦德\",\"serial\":\"772878POL435210\"},\"count\":1,\"name\":\"WEAPON_PISTOL\"},{\"slot\":2,\"count\":2,\"name\":\"water_bottle\"},{\"slot\":3,\"count\":5,\"name\":\"burger\"},{\"slot\":4,\"count\":1,\"name\":\"medicalbag\"},{\"slot\":5,\"count\":3,\"name\":\"redwcig\"},{\"slot\":6,\"count\":1040,\"name\":\"money\"},{\"slot\":7,\"count\":1,\"name\":\"black_money\"},{\"slot\":8,\"metadata\":{\"durability\":100},\"count\":1,\"name\":\"handcuffs\"},{\"slot\":9,\"count\":1,\"name\":\"radio\"},{\"slot\":10,\"count\":1,\"name\":\"phone\"},{\"slot\":11,\"count\":8,\"name\":\"lockpick\"},{\"slot\":12,\"metadata\":{\"rank\":\"警督\",\"type\":\"police\",\"photo\":\"https://r2.fivemanage.com/image/Y8P6Kw0hCR6g.webp\",\"callsign\":\"000\",\"name\":\"谢尔比 邦德\"},\"count\":1,\"name\":\"pdbadge\"},{\"slot\":13,\"count\":2,\"name\":\"money\"},{\"slot\":14,\"metadata\":{\"weight\":70,\"image\":\"trash_bread\",\"description\":\"A mouldy piece of bread.\"},\"count\":1,\"name\":\"garbage\"},{\"slot\":17,\"count\":1,\"name\":\"police_cad\"},{\"slot\":18,\"count\":7,\"name\":\"kurkakola\"}]','2025-04-09 02:11:12',NULL,1,0),
(20009,'YBN39722',1,'license:1fe10db29dafd09317e36be73edaac552319b332','司肃','{\"bank\":4100,\"crypto\":0,\"cash\":1801}','{\"nationality\":\"中国\",\"account\":\"US01QBCore7247283439\",\"phone\":\"5301143905\",\"birthdate\":\"2001-12-10\",\"gender\":0,\"cid\":\"1\",\"firstname\":\"司\",\"lastname\":\"司肃\"}','{\"grade\":{\"level\":0,\"isboss\":false,\"name\":\"自由职业者\"},\"payment\":200,\"label\":\"公民\",\"type\":\"none\",\"isboss\":false,\"onduty\":false,\"name\":\"unemployed\"}','{\"grade\":{\"level\":0,\"isboss\":false,\"name\":\"Unaffiliated\"},\"isboss\":false,\"label\":\"No Gang\",\"name\":\"none\"}','{\"x\":236.5186767578125,\"y\":-408.5670166015625,\"z\":47.915771484375}','{\"ishandcuffed\":false,\"isdead\":false,\"vehicleKeys\":{\"86VXP813\":true,\"TESTDRIV\":true,\"64EER735\":true,\"89FNO082\":true},\"status\":[],\"rep\":[],\"inside\":{\"apartment\":[]},\"callsign\":\"NO CALLSIGN\",\"licences\":{\"weapon\":false,\"business\":false,\"driver\":true},\"criminalrecord\":{\"hasRecord\":false},\"fingerprint\":\"LL359z81cfD1353\",\"injail\":0,\"phone\":[],\"armor\":0,\"hunger\":72.0,\"tracker\":false,\"mechanic\":200,\"stress\":0,\"jailitems\":[],\"walletid\":\"QB-93914292\",\"thirst\":60.0,\"inlaststand\":false,\"bloodtype\":\"B-\",\"phonedata\":{\"InstalledApps\":[],\"SerialNumber\":34253028}}','[{\"count\":1801,\"slot\":1,\"name\":\"money\"},{\"count\":1,\"slot\":2,\"metadata\":{\"lastname\":\"司肃\",\"type\":\"Class C Driver License\",\"birthdate\":\"2001-12-10\",\"firstname\":\"司\"},\"name\":\"driver_license\"},{\"count\":1,\"slot\":3,\"metadata\":{\"nationality\":\"中国\",\"lastname\":\"司肃\",\"birthdate\":\"2001-12-10\",\"citizenid\":\"YBN39722\",\"firstname\":\"司\",\"gender\":0},\"name\":\"id_card\"},{\"count\":1,\"slot\":4,\"name\":\"phone\"},{\"count\":1,\"slot\":5,\"name\":\"radio\"},{\"count\":1,\"slot\":6,\"name\":\"cocainekey\"},{\"count\":1,\"slot\":7,\"name\":\"weedkey\"},{\"count\":1,\"slot\":8,\"name\":\"methkey\"},{\"count\":1,\"slot\":9,\"metadata\":{\"components\":[],\"registered\":\"司 司肃\",\"durability\":28,\"ammo\":28,\"serial\":\"301886OBM633085\"},\"name\":\"WEAPON_PETROLCAN\"},{\"count\":1150,\"slot\":10,\"name\":\"black_money\"},{\"count\":1,\"slot\":11,\"name\":\"coke_brick\"},{\"count\":1,\"slot\":12,\"name\":\"coke_brick\"},{\"count\":7,\"slot\":13,\"name\":\"burger\"},{\"count\":5,\"slot\":14,\"name\":\"redwcig\"},{\"count\":5,\"slot\":15,\"name\":\"kurkakola\"},{\"count\":5,\"slot\":20,\"name\":\"water\"}]','2025-04-07 16:03:47',NULL,0,0),
(1216,'YBR81778',1,'license:0b693a368c37a6bb1f97291e1e3fc4e078ed3a33','2756161174','{\"bank\":825508,\"cash\":790,\"crypto\":0.0}','{\"birthdate\":\"2024-12-14\",\"gender\":0,\"lastname\":\"康格里\",\"account\":\"US01QBCore5348334270\",\"firstname\":\"马克\",\"phone\":\"4508773563\",\"cid\":1,\"nationality\":\"China\"}','{\"grade\":{\"name\":\"警督\",\"isboss\":false,\"level\":3,\"payment\":800},\"onduty\":true,\"label\":\"警察\",\"type\":\"leo\",\"isboss\":false,\"name\":\"police\",\"payment\":800}','{\"isboss\":false,\"label\":\"No Gang\",\"name\":\"none\",\"grade\":{\"isboss\":false,\"level\":0,\"name\":\"Unaffiliated\"}}','{\"x\":449.26153564453127,\"y\":-996.11865234375,\"z\":30.6783447265625}','{\"licences\":{\"business\":false,\"weapon\":true,\"driver\":true},\"bloodtype\":\"B-\",\"mechanic\":300,\"stress\":9,\"criminalrecord\":{\"hasRecord\":false},\"radio_police.anim\":2,\"injail\":0,\"handgunflag\":\"waisthandgun\",\"custom_police_keybind\":{\"BACK\":\"origen_police:dispatch:delalert\",\"PLUS\":\"origen_police:dispatch:alertas\",\"MINUS\":\"origen_police:dispatch:mrkalert\"},\"inlaststand\":false,\"fingerprint\":\"jM344e19aDN4454\",\"phone\":[],\"thirst\":-5.0,\"status\":[],\"callsign\":\"521\",\"ishandcuffed\":false,\"walletid\":\"QB-86301101\",\"tracker\":false,\"isdead\":false,\"hunger\":28.0,\"armor\":75,\"vehicleKeys\":{\"40HVF461\":true,\"LSPD8968\":true,\"64RYR118\":true,\"65QMC018\":true,\"29IFY831\":true,\"TAXI1332\":true,\"48EZL956\":true,\"28NPW044\":true,\"48CKF436\":true,\"01ESW047\":true,\"09ASS734\":true,\"67QRE452\":true,\"43JRG175\":true,\"23ZXQ586\":true,\"60VZC711\":true,\"87YOG064\":true,\"26GQQ039\":true,\"49ABE972\":true,\"67CJV857\":true,\"84XII125\":true,\"61AXT144\":true,\"TESTDRIV\":true,\"TAXI5708\":true,\"84PEM907\":true,\"LSPD5322\":true,\"86YHU586\":true,\"LSPD9084\":true,\"48BFJ018\":true,\"00VLE067\":true,\"44TDZ459\":true,\"LSPD5399\":true,\"00FNT057\":true,\"LSPD3583\":true,\"80GTV218\":true,\"ZULU1200\":true,\"20SHZ331\":true,\"85LQD783\":true,\"26VGD667\":true,\"TAXI1722\":true,\"27RPP096\":true,\"08GLS116\":true,\"27YTP639\":true,\"TAXI2221\":true,\"86BZW564\":true,\"64VFZ512\":true,\"00JJO721\":true,\"64ARA606\":true,\"BUS7644\":true,\"88EFD539\":true,\"28ESU362\":true,\"49MUH298\":true,\"LSPD5192\":true,\"88KHK402\":true,\"ZULU2749\":true,\"47GWE413\":true,\"86VXP813\":true,\"29RWH957\":true,\"86BAL812\":true,\"49XUE622\":true,\"LSPD6398\":true,\"LSPD8361\":true,\"LSPD6357\":true,\"05XHZ680\":true,\"LSPD3926\":true,\"LSPD3406\":true,\"04OON035\":true,\"06ICD599\":true,\"ZULU2052\":true,\"61UQV653\":true,\"46RYE608\":true,\"LSPD8059\":true,\"LSPD5574\":true,\"LSPD5438\":true,\"05NWA176\":true,\"61HGT622\":true,\"LSPD4263\":true,\"LSPD8289\":true,\"04FXJ771\":true,\"83JJF653\":true,\"86ZLW818\":true,\"85REV383\":true,\"05JJL563\":true,\"20CMV654\":true,\"LSPD3972\":true,\"LSPD9653\":true,\"67YCY501\":true,\"65YAX434\":true,\"80THW369\":true,\"68PWN860\":true,\"1SF380RT\":true,\"29BXO566\":true,\"63QXT315\":true,\"LSPD7496\":true,\"68MFL385\":true,\"8KA515XR\":true,\"LSPD4879\":true,\"69PKR022\":true,\"27PZI370\":true,\"ZULU1953\":true,\"26VBO383\":true,\"LSPD7330\":true,\"06CNL907\":true,\"48WYO064\":true,\"TOWR3595\":true,\"ZULU5478\":true,\"20URG725\":true,\"06ONT807\":true,\"64EER735\":true,\"64HGP392\":true,\"LSPD8202\":true,\"LSPD2993\":true,\"LSPD6807\":true,\"46IHX028\":true,\"21UAI629\":true,\"63SUA198\":true,\"29VNP244\":true,\"LSPD1883\":true,\"41LTW484\":true,\"89EWQ798\":true,\"LSPD7691\":true,\"87FDZ463\":true,\"69IEU160\":true,\"02OEV903\":true,\"40OEE180\":true,\"LSPD9526\":true,\"84XXB275\":true,\"01CCS234\":true,\"LSPD2151\":true,\"LSPD3812\":true,\"09SLM746\":true,\"89FNO082\":true,\"LSPD2278\":true,\"LSPD6551\":true,\"69PZK191\":true,\"03UEL978\":true,\"8LO099WT\":true,\"65LGT783\":true,\"08HGV586\":true,\"29KWC256\":true,\"49TFA009\":true,\"LSPD9918\":true,\"LSPD1841\":true,\"80ABO739\":true,\"25MAL147\":true,\"83MRA207\":true,\"LSPD9732\":true,\"28KGI975\":true,\"60VDX295\":true,\"65PAN685\":true,\"LSPD1069\":true,\"02OKT200\":true,\"61WIJ412\":true,\"61BTW455\":true,\"LSPD5193\":true,\"00FLQ481\":true,\"TOWR2501\":true,\"64IJW014\":true,\"82MAR671\":true,\"28ZWN827\":true,\"67SOM456\":true,\"23TBP533\":true,\"21JRK808\":true,\"29QGE933\":true,\"LSPD3286\":true,\"82BKT472\":true,\"LSPD8816\":true,\"ZULU2866\":true,\"LSPD1505\":true,\"LSPD7788\":true,\"66PLB948\":true,\"LSPD3473\":true,\"82EGL927\":true,\"09VWQ704\":true,\"28RMD969\":true,\"04VTB408\":true,\"LSPD3787\":true,\"LSPD1182\":true,\"01QGR664\":true,\"LSPD5930\":true,\"62XFO331\":true,\"88WKN808\":true,\"82EMJ680\":true,\"83CKQ067\":true,\"61JOJ019\":true,\"85DDD156\":true,\"LSPD2388\":true,\"68KFP558\":true,\"82ZMR896\":true,\"65LAT746\":true,\"ZULU8685\":true,\"4LZ076HQ\":true,\"48WIJ337\":true,\"45KNT961\":true,\"42LXW016\":true,\"26LNL592\":true,\"02JVS055\":true,\"LSPD6760\":true,\"84ZIW743\":true,\"82CRW356\":true,\"LSPD3774\":true,\"29SKX639\":true,\"65AGH933\":true,\"LSPD8193\":true,\"LSPD4228\":true,\"LSPD6019\":true,\"60VPG566\":true,\"28PQX845\":true,\"88IJS742\":true,\"20NGN812\":true,\"42TBU115\":true,\"60QMM041\":true,\"LSPD8144\":true,\"LSPD1565\":true,\"LSPD6243\":true,\"LSPD3875\":true,\"83JMA543\":true,\"ZULU9139\":true,\"84KSM123\":true,\"ZULU2718\":true,\"27PQV016\":true,\"60SWM435\":true,\"21ERQ416\":true,\"65AYV322\":true,\"LSPD6486\":true,\"28RSI362\":true,\"06LYE803\":true,\"86WTO768\":true,\"LSPD9567\":true,\"LSPD3329\":true,\"65MWA333\":true,\"LSPD1680\":true,\"LSPD2105\":true,\"88FNB131\":true,\"01KVV841\":true,\"47FAO912\":true,\"27JXE118\":true,\"22CCY079\":true,\"62RWB290\":true,\"LSPD2425\":true,\"TAXI7131\":true,\"83PTY864\":true,\"04HFD711\":true,\"9VU149NQ\":true,\"LSPD8078\":true,\"89IGK412\":true},\"phonedata\":{\"SerialNumber\":11704029,\"profilepicture\":\"https://i.fmfile.com/7S1plAQv2YcrBrcOxugL4/laomo.png\",\"InstalledApps\":[]},\"jailitems\":[],\"criminalclothe\":0,\"rifleflag\":\"assault\",\"rep\":{\"hotdog\":39,\"dealer\":0},\"inside\":{\"apartment\":[]}}','[{\"count\":790,\"name\":\"money\",\"slot\":48},{\"metadata\":{\"quality\":100},\"count\":1,\"name\":\"phone\",\"slot\":50},{\"metadata\":{\"durability\":32.70000000000382,\"components\":[]},\"count\":1,\"name\":\"WEAPON_NIGHTSTICK\",\"slot\":6},{\"metadata\":{\"durability\":100,\"components\":[],\"registered\":\"马克 康格里\",\"serial\":\"833953POL359531\"},\"count\":1,\"name\":\"WEAPON_STUNGUN\",\"slot\":7},{\"metadata\":{\"durability\":100},\"count\":1,\"name\":\"handcuffs\",\"slot\":8},{\"metadata\":{\"ammo\":0,\"serial\":\"953009HSH288862\",\"components\":[],\"registered\":\"谢尔比 邦德\",\"durability\":60.90000000000222},\"count\":1,\"name\":\"WEAPON_PISTOL\",\"slot\":9},{\"metadata\":{\"rank\":\"警督\",\"type\":\"police\",\"callsign\":\"521\",\"photo\":\"https://i.fmfile.com/7S1plAQv2YcrBrcOxugL4/laomo.png\",\"name\":\"马克 康格里\"},\"count\":1,\"name\":\"pdbadge\",\"slot\":10},{\"count\":1,\"name\":\"poppyresin\",\"slot\":13},{\"count\":1,\"name\":\"black_money\",\"slot\":14},{\"count\":1,\"name\":\"police_cad\",\"slot\":5}]','2025-04-08 12:01:06',NULL,0,0),
(6959,'ZLI86272',4,'license:0dda7a7c4b45857be53e2db24eb6a1cc938311d7','林雨','{\"bank\":5000,\"cash\":500,\"crypto\":0}','{\"birthdate\":\"2025-03-16\",\"nationality\":\"China\",\"account\":\"US05QBCore4184663559\",\"lastname\":\"雨\",\"phone\":\"6667856123\",\"gender\":0,\"cid\":4,\"firstname\":\"林\"}','{\"onduty\":false,\"type\":\"none\",\"isboss\":false,\"name\":\"unemployed\",\"label\":\"公民\",\"payment\":500,\"grade\":{\"name\":\"自由职业者\",\"level\":0,\"isboss\":false}}','{\"name\":\"none\",\"label\":\"No Gang\",\"grade\":{\"name\":\"Unaffiliated\",\"level\":0,\"isboss\":false},\"isboss\":false}','{\"x\":476.993408203125,\"y\":-107.9208755493164,\"z\":63.14794921875}','{\"rep\":[],\"phonedata\":{\"SerialNumber\":33881764,\"InstalledApps\":[]},\"tracker\":false,\"currentapartment\":\"apartment17728\",\"licences\":{\"driver\":true,\"business\":false,\"weapon\":false},\"ishandcuffed\":false,\"callsign\":\"NO CALLSIGN\",\"hunger\":84.0,\"fingerprint\":\"EO744L51vex3125\",\"jailitems\":[],\"phone\":[],\"status\":[],\"thirst\":80.0,\"armor\":0,\"inside\":{\"apartment\":{\"apartmentType\":\"apartment1\",\"apartmentId\":\"apartment17728\"}},\"walletid\":\"QB-52851107\",\"isdead\":false,\"criminalrecord\":{\"hasRecord\":false},\"bloodtype\":\"AB-\",\"stress\":0,\"injail\":0,\"inlaststand\":false}','[{\"count\":500,\"slot\":1,\"name\":\"money\"},{\"name\":\"driver_license\",\"count\":1,\"slot\":2,\"metadata\":{\"birthdate\":\"2025-03-16\",\"firstname\":\"林\",\"type\":\"Class C Driver License\",\"lastname\":\"雨\"}},{\"name\":\"phone\",\"count\":1,\"slot\":3,\"metadata\":[]},{\"name\":\"id_card\",\"count\":1,\"slot\":4,\"metadata\":{\"nationality\":\"China\",\"citizenid\":\"ZLI86272\",\"lastname\":\"雨\",\"firstname\":\"林\",\"gender\":0,\"birthdate\":\"2025-03-16\"}}]','2025-04-02 10:01:44',NULL,0,0);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerskins`
--

DROP TABLE IF EXISTS `playerskins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `citizenid` (`citizenid`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=536 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerskins`
--

LOCK TABLES `playerskins` WRITE;
/*!40000 ALTER TABLE `playerskins` DISABLE KEYS */;
INSERT INTO `playerskins` VALUES
(250,'ELD02040','mp_m_freemode_01','{\"headOverlays\":{\"ageing\":{\"style\":0,\"opacity\":0,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"color\":1},\"lipstick\":{\"style\":6,\"opacity\":1,\"color\":1},\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"color\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"opacity\":0,\"color\":1},\"sunDamage\":{\"style\":0,\"opacity\":0,\"color\":0},\"beard\":{\"style\":3,\"opacity\":1,\"color\":1},\"eyebrows\":{\"style\":16,\"opacity\":1,\"color\":1},\"complexion\":{\"style\":0,\"opacity\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"color\":0}},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"eyeColor\":7,\"hair\":{\"texture\":0,\"highlight\":4,\"style\":11,\"color\":4},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":11,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":0,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":1,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":1,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":0,\"component_id\":11}],\"tattoos\":[],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"noseWidth\":0.6,\"jawBoneWidth\":0,\"eyesOpening\":0,\"cheeksWidth\":0,\"chinBoneLowering\":0,\"nosePeakLowering\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"nosePeakSize\":0.9,\"chinHole\":0,\"chinBoneSize\":0,\"neckThickness\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0,\"lipsThickness\":0,\"cheeksBoneWidth\":0},\"headBlend\":{\"skinThird\":0,\"shapeThird\":0,\"thirdMix\":0,\"shapeMix\":0.1,\"skinMix\":0,\"skinFirst\":0,\"shapeSecond\":3,\"shapeFirst\":21,\"skinSecond\":6}}',1),
(251,'VCA51839','mp_m_freemode_01','{\"headOverlays\":{\"ageing\":{\"style\":0,\"opacity\":0,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"color\":1},\"lipstick\":{\"style\":0,\"opacity\":0,\"color\":1},\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"color\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"opacity\":0,\"color\":1},\"sunDamage\":{\"style\":0,\"opacity\":0,\"color\":0},\"beard\":{\"style\":0,\"opacity\":0,\"color\":1},\"eyebrows\":{\"style\":0,\"opacity\":0,\"color\":1},\"complexion\":{\"style\":0,\"opacity\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"color\":0}},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"eyeColor\":0,\"hair\":{\"texture\":0,\"highlight\":0,\"style\":0,\"color\":0},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":0,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":1,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":1,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":0,\"component_id\":11}],\"tattoos\":[],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"noseWidth\":0,\"jawBoneWidth\":0,\"eyesOpening\":0,\"cheeksWidth\":0,\"chinBoneLowering\":0,\"nosePeakLowering\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"nosePeakSize\":0,\"chinHole\":0,\"chinBoneSize\":0,\"neckThickness\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0,\"lipsThickness\":0,\"cheeksBoneWidth\":0},\"headBlend\":{\"skinThird\":0,\"shapeThird\":0,\"thirdMix\":0,\"shapeMix\":0,\"skinMix\":0,\"skinFirst\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"skinSecond\":0}}',1),
(252,'QAR82324','mp_m_freemode_01','{\"headOverlays\":{\"ageing\":{\"style\":0,\"opacity\":0,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"color\":1},\"lipstick\":{\"style\":0,\"opacity\":0,\"color\":1},\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"color\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"opacity\":0,\"color\":1},\"sunDamage\":{\"style\":0,\"opacity\":0,\"color\":0},\"beard\":{\"style\":0,\"opacity\":0,\"color\":1},\"eyebrows\":{\"style\":0,\"opacity\":0,\"color\":1},\"complexion\":{\"style\":0,\"opacity\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"color\":0}},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"eyeColor\":0,\"hair\":{\"texture\":0,\"highlight\":0,\"style\":0,\"color\":0},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":0,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":1,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":1,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":0,\"component_id\":11}],\"tattoos\":[],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"noseWidth\":0,\"jawBoneWidth\":0,\"eyesOpening\":0,\"cheeksWidth\":0,\"chinBoneLowering\":0,\"nosePeakLowering\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"nosePeakSize\":0,\"chinHole\":0,\"chinBoneSize\":0,\"neckThickness\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0,\"lipsThickness\":0,\"cheeksBoneWidth\":0},\"headBlend\":{\"skinThird\":0,\"shapeThird\":0,\"thirdMix\":0,\"shapeMix\":0,\"skinMix\":0,\"skinFirst\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"skinSecond\":0}}',1),
(253,'ZLI86272','mp_m_freemode_01','{\"headOverlays\":{\"ageing\":{\"style\":0,\"opacity\":1,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"color\":1},\"lipstick\":{\"style\":0,\"opacity\":0,\"color\":1},\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"color\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"opacity\":0,\"color\":1},\"sunDamage\":{\"style\":0,\"opacity\":0,\"color\":0},\"beard\":{\"style\":0,\"opacity\":0,\"color\":1},\"eyebrows\":{\"style\":0,\"opacity\":0,\"color\":1},\"complexion\":{\"style\":0,\"opacity\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"color\":0}},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"eyeColor\":0,\"hair\":{\"texture\":0,\"highlight\":0,\"style\":0,\"color\":0},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":2,\"component_id\":3},{\"texture\":0,\"drawable\":0,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":1,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":1,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":1,\"component_id\":11}],\"tattoos\":[],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"noseWidth\":0,\"jawBoneWidth\":0,\"eyesOpening\":0,\"cheeksWidth\":0,\"chinBoneLowering\":0,\"nosePeakLowering\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"nosePeakSize\":0,\"chinHole\":0,\"chinBoneSize\":0,\"neckThickness\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0,\"lipsThickness\":0,\"cheeksBoneWidth\":0},\"headBlend\":{\"skinThird\":0,\"shapeThird\":0,\"thirdMix\":0,\"shapeMix\":0,\"skinMix\":0,\"skinFirst\":0,\"shapeSecond\":0,\"shapeFirst\":21,\"skinSecond\":0}}',1),
(255,'VQR49601','mp_m_freemode_01','{\"headOverlays\":{\"ageing\":{\"style\":0,\"opacity\":0,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"color\":1},\"lipstick\":{\"style\":0,\"opacity\":0,\"color\":1},\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"color\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"opacity\":0,\"color\":1},\"sunDamage\":{\"style\":0,\"opacity\":0,\"color\":0},\"beard\":{\"style\":0,\"opacity\":0,\"color\":1},\"eyebrows\":{\"style\":3,\"opacity\":1,\"color\":1},\"complexion\":{\"style\":0,\"opacity\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"color\":0}},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":2,\"prop_id\":1},{\"texture\":0,\"drawable\":5,\"prop_id\":2},{\"texture\":0,\"drawable\":6,\"prop_id\":6},{\"texture\":0,\"drawable\":9,\"prop_id\":7}],\"eyeColor\":3,\"hair\":{\"texture\":0,\"highlight\":2,\"style\":19,\"color\":2},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":19,\"component_id\":2},{\"texture\":0,\"drawable\":2,\"component_id\":3},{\"texture\":0,\"drawable\":24,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":12,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":55,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":5,\"component_id\":11}],\"tattoos\":[],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"noseWidth\":0.2,\"jawBoneWidth\":0,\"eyesOpening\":0.5,\"cheeksWidth\":0,\"chinBoneLowering\":0,\"nosePeakLowering\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0.2,\"nosePeakHigh\":0.2,\"cheeksBoneHigh\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0.2,\"nosePeakSize\":0.1,\"chinHole\":0.7,\"chinBoneSize\":0,\"neckThickness\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0.2,\"lipsThickness\":0,\"cheeksBoneWidth\":0},\"headBlend\":{\"skinThird\":0,\"shapeThird\":0,\"thirdMix\":0,\"shapeMix\":0.5,\"skinMix\":0.5,\"skinFirst\":0,\"shapeSecond\":26,\"shapeFirst\":45,\"skinSecond\":14}}',1),
(256,'SLG58971','mp_m_freemode_01','{\"headOverlays\":{\"ageing\":{\"style\":0,\"opacity\":0,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"color\":1},\"lipstick\":{\"style\":0,\"opacity\":0,\"color\":1},\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"color\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"opacity\":0,\"color\":1},\"sunDamage\":{\"style\":0,\"opacity\":0,\"color\":0},\"beard\":{\"style\":0,\"opacity\":0,\"color\":1},\"eyebrows\":{\"style\":0,\"opacity\":0,\"color\":1},\"complexion\":{\"style\":0,\"opacity\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"color\":0}},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"eyeColor\":2,\"hair\":{\"texture\":0,\"highlight\":0,\"style\":0,\"color\":0},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":7,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":9,\"component_id\":6},{\"texture\":0,\"drawable\":17,\"component_id\":7},{\"texture\":0,\"drawable\":1,\"component_id\":8},{\"texture\":0,\"drawable\":14,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":23,\"component_id\":11}],\"tattoos\":[],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"noseWidth\":0.3,\"jawBoneWidth\":0,\"eyesOpening\":0,\"cheeksWidth\":0,\"chinBoneLowering\":0,\"nosePeakLowering\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"nosePeakSize\":0,\"chinHole\":0,\"chinBoneSize\":0,\"neckThickness\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0,\"lipsThickness\":0,\"cheeksBoneWidth\":0},\"headBlend\":{\"skinThird\":0,\"shapeThird\":0,\"thirdMix\":0,\"shapeMix\":0.5,\"skinMix\":0,\"skinFirst\":0,\"shapeSecond\":7,\"shapeFirst\":22,\"skinSecond\":0}}',1),
(257,'RRU27752','ig_cletus','{\"headOverlays\":{\"ageing\":{\"style\":0,\"opacity\":0,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"color\":0},\"lipstick\":{\"style\":0,\"opacity\":0,\"color\":0},\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"color\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"opacity\":0,\"color\":0},\"sunDamage\":{\"style\":0,\"opacity\":0,\"color\":0},\"beard\":{\"style\":0,\"opacity\":0,\"color\":0},\"eyebrows\":{\"style\":0,\"opacity\":0,\"color\":0},\"complexion\":{\"style\":0,\"opacity\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"color\":0}},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"eyeColor\":-1,\"hair\":{\"texture\":0,\"highlight\":-1,\"style\":0,\"color\":-1},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":0,\"component_id\":2},{\"texture\":0,\"drawable\":0,\"component_id\":3},{\"texture\":0,\"drawable\":0,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":0,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":1,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":0,\"component_id\":11}],\"tattoos\":[],\"model\":\"ig_cletus\",\"faceFeatures\":{\"noseWidth\":0,\"jawBoneWidth\":0,\"eyesOpening\":0,\"cheeksWidth\":0,\"chinBoneLowering\":0,\"nosePeakLowering\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"nosePeakSize\":0,\"chinHole\":0,\"chinBoneSize\":0,\"neckThickness\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0,\"lipsThickness\":0,\"cheeksBoneWidth\":0},\"headBlend\":{\"skinThird\":0,\"shapeThird\":0,\"thirdMix\":0,\"shapeMix\":0,\"skinMix\":0,\"skinFirst\":0,\"shapeSecond\":0,\"shapeFirst\":0,\"skinSecond\":0}}',1),
(260,'LTI10935','mp_m_freemode_01','{\"headOverlays\":{\"ageing\":{\"style\":0,\"opacity\":0,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"color\":1},\"lipstick\":{\"style\":0,\"opacity\":0,\"color\":1},\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"color\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"opacity\":0,\"color\":1},\"sunDamage\":{\"style\":0,\"opacity\":0,\"color\":0},\"beard\":{\"style\":0,\"opacity\":0,\"color\":1},\"eyebrows\":{\"style\":30,\"opacity\":1,\"color\":2},\"complexion\":{\"style\":0,\"opacity\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"color\":0}},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":42,\"prop_id\":1},{\"texture\":0,\"drawable\":1,\"prop_id\":2},{\"texture\":0,\"drawable\":13,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"eyeColor\":0,\"hair\":{\"texture\":0,\"highlight\":29,\"style\":66,\"color\":29},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":66,\"component_id\":2},{\"texture\":0,\"drawable\":42,\"component_id\":3},{\"texture\":0,\"drawable\":10,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":10,\"component_id\":6},{\"texture\":0,\"drawable\":0,\"component_id\":7},{\"texture\":0,\"drawable\":34,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":3,\"component_id\":10},{\"texture\":0,\"drawable\":31,\"component_id\":11}],\"tattoos\":[],\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"noseWidth\":0,\"jawBoneWidth\":0,\"eyesOpening\":0,\"cheeksWidth\":0,\"chinBoneLowering\":0,\"nosePeakLowering\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"nosePeakSize\":0,\"chinHole\":0,\"chinBoneSize\":0,\"neckThickness\":0,\"chinBoneLenght\":0,\"eyeBrownHigh\":0,\"lipsThickness\":0,\"cheeksBoneWidth\":0},\"headBlend\":{\"skinThird\":0,\"shapeThird\":0,\"thirdMix\":0,\"shapeMix\":0.5,\"skinMix\":0.6,\"skinFirst\":0,\"shapeSecond\":17,\"shapeFirst\":42,\"skinSecond\":0}}',1),
(262,'COM31167','mp_f_freemode_01','{\"headOverlays\":{\"ageing\":{\"style\":0,\"opacity\":0,\"color\":0},\"chestHair\":{\"style\":0,\"opacity\":0,\"color\":0},\"bodyBlemishes\":{\"style\":0,\"opacity\":0,\"color\":0},\"blush\":{\"style\":0,\"opacity\":0,\"color\":1},\"lipstick\":{\"style\":10,\"opacity\":1,\"color\":1},\"moleAndFreckles\":{\"style\":0,\"opacity\":0,\"color\":0},\"makeUp\":{\"secondColor\":0,\"style\":0,\"opacity\":0,\"color\":1},\"sunDamage\":{\"style\":0,\"opacity\":0,\"color\":0},\"beard\":{\"style\":0,\"opacity\":0,\"color\":1},\"eyebrows\":{\"style\":1,\"opacity\":1,\"color\":1},\"complexion\":{\"style\":0,\"opacity\":0,\"color\":0},\"blemishes\":{\"style\":0,\"opacity\":0,\"color\":0}},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":5,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":0,\"drawable\":9,\"prop_id\":6},{\"texture\":0,\"drawable\":9,\"prop_id\":7}],\"eyeColor\":3,\"hair\":{\"texture\":0,\"highlight\":97,\"style\":11,\"color\":97},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":11,\"component_id\":2},{\"texture\":0,\"drawable\":14,\"component_id\":3},{\"texture\":0,\"drawable\":99,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":0,\"drawable\":40,\"component_id\":6},{\"texture\":0,\"drawable\":64,\"component_id\":7},{\"texture\":0,\"drawable\":2,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":0,\"drawable\":258,\"component_id\":11}],\"tattoos\":[],\"model\":\"mp_f_freemode_01\",\"faceFeatures\":{\"noseWidth\":0,\"jawBoneWidth\":0,\"eyesOpening\":0,\"cheeksWidth\":0,\"chinBoneLowering\":0.2,\"nosePeakLowering\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"nosePeakHigh\":0,\"cheeksBoneHigh\":0,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"nosePeakSize\":0,\"chinHole\":0,\"chinBoneSize\":0,\"neckThickness\":0,\"chinBoneLenght\":0.3,\"eyeBrownHigh\":0,\"lipsThickness\":0,\"cheeksBoneWidth\":0},\"headBlend\":{\"skinThird\":0,\"shapeThird\":0,\"thirdMix\":0,\"shapeMix\":0.6,\"skinMix\":0,\"skinFirst\":0,\"shapeSecond\":21,\"shapeFirst\":21,\"skinSecond\":0}}',1),
(298,'KZY58745','mp_f_freemode_01','{\"hair\":{\"highlight\":29,\"texture\":0,\"style\":87,\"color\":34},\"eyeColor\":5,\"headOverlays\":{\"makeUp\":{\"secondColor\":52,\"opacity\":0.8,\"style\":3,\"color\":56},\"sunDamage\":{\"opacity\":0,\"style\":0,\"color\":0},\"blush\":{\"opacity\":0.9,\"style\":3,\"color\":9},\"lipstick\":{\"opacity\":0.8,\"style\":3,\"color\":1},\"ageing\":{\"opacity\":0,\"style\":0,\"color\":0},\"complexion\":{\"opacity\":1,\"style\":11,\"color\":0},\"beard\":{\"opacity\":0,\"style\":0,\"color\":0},\"moleAndFreckles\":{\"opacity\":0,\"style\":0,\"color\":0},\"eyebrows\":{\"opacity\":0.5,\"style\":1,\"color\":40},\"chestHair\":{\"opacity\":0,\"style\":0,\"color\":0},\"bodyBlemishes\":{\"opacity\":0,\"style\":0,\"color\":0},\"blemishes\":{\"opacity\":0,\"style\":0,\"color\":0}},\"faceFeatures\":{\"noseBoneHigh\":0.3,\"jawBoneWidth\":-0.8,\"chinBoneLowering\":-0.4,\"chinBoneLenght\":0.2,\"chinHole\":0,\"noseBoneTwist\":0,\"eyeBrownForward\":0.1,\"eyesOpening\":-0.4,\"neckThickness\":0,\"chinBoneSize\":0.4,\"lipsThickness\":-0.4,\"nosePeakSize\":0,\"eyeBrownHigh\":-0.1,\"nosePeakLowering\":-0.2,\"cheeksBoneHigh\":-0.2,\"noseWidth\":-0.6,\"cheeksWidth\":0,\"nosePeakHigh\":0,\"cheeksBoneWidth\":0.3,\"jawBoneBackSize\":-0.6},\"tattoos\":[],\"model\":\"mp_f_freemode_01\",\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":88},{\"texture\":0,\"component_id\":3,\"drawable\":4},{\"texture\":13,\"component_id\":4,\"drawable\":9},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":6},{\"texture\":0,\"component_id\":7,\"drawable\":0},{\"texture\":0,\"component_id\":8,\"drawable\":15},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":11,\"component_id\":11,\"drawable\":2}],\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7}],\"headBlend\":{\"thirdMix\":0.5,\"skinSecond\":0,\"shapeMix\":0.3,\"shapeSecond\":6,\"skinThird\":22,\"skinFirst\":12,\"shapeFirst\":31,\"shapeThird\":40,\"skinMix\":0.5}}',1),
(325,'PZN63640','mp_f_freemode_01','{\"headBlend\":{\"shapeFirst\":0,\"thirdMix\":0,\"shapeMix\":0,\"skinMix\":0,\"shapeThird\":0,\"skinFirst\":0,\"skinThird\":0,\"skinSecond\":0,\"shapeSecond\":0},\"model\":\"mp_f_freemode_01\",\"faceFeatures\":{\"chinBoneLenght\":0,\"cheeksBoneWidth\":0,\"chinBoneLowering\":0,\"cheeksWidth\":0,\"noseBoneHigh\":0,\"chinHole\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"nosePeakHigh\":0,\"nosePeakSize\":0,\"jawBoneWidth\":0,\"lipsThickness\":0,\"eyeBrownHigh\":0,\"noseBoneTwist\":0,\"chinBoneSize\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"noseWidth\":0,\"neckThickness\":0},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":56,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":-1,\"drawable\":-1,\"prop_id\":6},{\"texture\":0,\"drawable\":6,\"prop_id\":7}],\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":87},{\"component_id\":4,\"texture\":0,\"drawable\":6},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":27},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":7},{\"component_id\":3,\"texture\":0,\"drawable\":40}],\"eyeColor\":0,\"tattoos\":{\"ZONE_HAIR\":[{\"hashFemale\":\"FM_F_Hair_005_a\",\"zone\":\"ZONE_HAIR\",\"name\":\"hair-0-156\",\"hashMale\":\"FM_M_Hair_005_a\",\"label\":\"hair-0-156\",\"collection\":\"multiplayer_overlays\"}]},\"headOverlays\":{\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":1},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0},\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0}},\"hair\":{\"highlight\":26,\"texture\":0,\"style\":87,\"color\":28}}',1),
(341,'WZK17535','mp_f_freemode_01','{\"headBlend\":{\"shapeFirst\":39,\"thirdMix\":0,\"shapeMix\":0.6,\"shapeSecond\":45,\"shapeThird\":0,\"skinFirst\":0,\"skinThird\":0,\"skinSecond\":0,\"skinMix\":1},\"model\":\"mp_f_freemode_01\",\"faceFeatures\":{\"chinBoneLenght\":0,\"cheeksBoneWidth\":0,\"chinBoneLowering\":0,\"cheeksWidth\":0,\"noseBoneHigh\":0,\"jawBoneWidth\":0,\"nosePeakLowering\":0,\"eyesOpening\":0,\"nosePeakHigh\":0,\"nosePeakSize\":0,\"cheeksBoneHigh\":0,\"eyeBrownForward\":0.3,\"eyeBrownHigh\":0,\"chinHole\":0,\"chinBoneSize\":0,\"neckThickness\":0,\"jawBoneBackSize\":0,\"noseWidth\":0,\"noseBoneTwist\":0,\"lipsThickness\":0},\"props\":[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1},{\"texture\":0,\"prop_id\":1,\"drawable\":21},{\"texture\":0,\"prop_id\":6,\"drawable\":3}],\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":15},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":3,\"drawable\":67},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":96},{\"component_id\":11,\"texture\":0,\"drawable\":258},{\"component_id\":3,\"texture\":0,\"drawable\":12},{\"component_id\":4,\"texture\":0,\"drawable\":99},{\"component_id\":6,\"texture\":0,\"drawable\":14}],\"eyeColor\":0,\"headOverlays\":{\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0},\"beard\":{\"style\":0,\"color\":1,\"opacity\":0},\"eyebrows\":{\"style\":12,\"color\":1,\"opacity\":1},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"style\":10,\"color\":1,\"secondColor\":0,\"opacity\":1},\"lipstick\":{\"style\":7,\"color\":21,\"opacity\":1},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0},\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":33,\"color\":1,\"opacity\":1},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0}},\"tattoos\":[],\"hair\":{\"highlight\":15,\"texture\":0,\"style\":15,\"color\":15}}',1),
(361,'GID66771','mp_m_freemode_01','{\"eyeColor\":8,\"model\":\"mp_m_freemode_01\",\"faceFeatures\":{\"chinBoneLenght\":0,\"cheeksBoneWidth\":0,\"chinBoneLowering\":0,\"cheeksWidth\":0,\"lipsThickness\":0,\"jawBoneWidth\":0,\"nosePeakLowering\":-0.1,\"eyesOpening\":0,\"nosePeakHigh\":0,\"nosePeakSize\":0,\"eyeBrownForward\":0,\"noseBoneTwist\":0,\"eyeBrownHigh\":0,\"neckThickness\":0,\"chinBoneSize\":0,\"cheeksBoneHigh\":0,\"jawBoneBackSize\":0,\"noseWidth\":0.3,\"noseBoneHigh\":0,\"chinHole\":0},\"props\":[{\"texture\":0,\"prop_id\":0,\"drawable\":40},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":0,\"prop_id\":2,\"drawable\":25},{\"texture\":0,\"prop_id\":6,\"drawable\":7},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}],\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":44},{\"component_id\":2,\"texture\":3,\"drawable\":4},{\"component_id\":4,\"texture\":0,\"drawable\":31},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":96},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":5},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":63},{\"component_id\":3,\"texture\":0,\"drawable\":5},{\"component_id\":9,\"texture\":0,\"drawable\":93}],\"tattoos\":{\"ZONE_HAIR\":[{\"hashFemale\":\"MP_Security_Hair_000_F\",\"zone\":\"ZONE_HAIR\",\"name\":\"hair-32-4\",\"hashMale\":\"MP_Security_Hair_000_M\",\"label\":\"hair-32-4\",\"collection\":\"mpSecurity_overlays\"}]},\"headOverlays\":{\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"style\":0,\"color\":0,\"opacity\":0,\"secondColor\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0.2},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0},\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0.4}},\"headBlend\":{\"shapeFirst\":43,\"thirdMix\":0,\"shapeMix\":0.5,\"shapeSecond\":0,\"shapeThird\":0,\"skinFirst\":0,\"skinThird\":0,\"skinSecond\":0,\"skinMix\":0},\"hair\":{\"highlight\":29,\"texture\":3,\"style\":4,\"color\":29}}',1),
(365,'ICW34676','mp_f_freemode_01','{\"headBlend\":{\"shapeFirst\":29,\"thirdMix\":0,\"shapeMix\":0,\"skinMix\":0,\"shapeThird\":0,\"skinFirst\":0,\"skinThird\":0,\"skinSecond\":15,\"shapeSecond\":45},\"model\":\"mp_f_freemode_01\",\"faceFeatures\":{\"chinBoneLenght\":0,\"cheeksBoneWidth\":0,\"chinBoneLowering\":0.2,\"cheeksWidth\":0,\"noseBoneHigh\":0,\"jawBoneWidth\":0,\"nosePeakLowering\":0.6,\"eyesOpening\":0,\"nosePeakHigh\":0.4,\"nosePeakSize\":0.1,\"cheeksBoneHigh\":0,\"lipsThickness\":0,\"eyeBrownHigh\":0,\"noseBoneTwist\":0.3,\"chinBoneSize\":0,\"neckThickness\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0.8,\"noseWidth\":0,\"chinHole\":1},\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":1},{\"texture\":0,\"drawable\":12,\"prop_id\":2},{\"texture\":1,\"drawable\":19,\"prop_id\":6},{\"texture\":-1,\"drawable\":-1,\"prop_id\":7},{\"texture\":0,\"drawable\":0,\"prop_id\":0}],\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":41},{\"component_id\":3,\"texture\":0,\"drawable\":12},{\"component_id\":4,\"texture\":2,\"drawable\":180},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":7},{\"component_id\":7,\"texture\":0,\"drawable\":14},{\"component_id\":8,\"texture\":0,\"drawable\":14},{\"component_id\":9,\"texture\":0,\"drawable\":30},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":331},{\"component_id\":1,\"texture\":0,\"drawable\":34}],\"eyeColor\":1,\"headOverlays\":{\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0},\"beard\":{\"style\":0,\"color\":1,\"opacity\":0},\"eyebrows\":{\"style\":1,\"color\":3,\"opacity\":1},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"style\":10,\"color\":1,\"opacity\":1},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0},\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":0,\"color\":1,\"opacity\":0},\"makeUp\":{\"style\":0,\"color\":1,\"secondColor\":0,\"opacity\":0}},\"tattoos\":[],\"hair\":{\"style\":41,\"texture\":0,\"highlight\":17,\"color\":17}}',1),
(428,'UXH40238','mp_m_freemode_01','{\"faceFeatures\":{\"nosePeakLowering\":0,\"noseBoneHigh\":0.1,\"lipsThickness\":-1,\"neckThickness\":0,\"noseBoneTwist\":0,\"nosePeakHigh\":-0.9,\"jawBoneBackSize\":0,\"jawBoneWidth\":-1,\"noseWidth\":-1,\"cheeksBoneHigh\":-1,\"eyeBrownForward\":-0.3,\"eyeBrownHigh\":0.3,\"cheeksWidth\":1,\"chinHole\":0,\"nosePeakSize\":-1,\"chinBoneSize\":0,\"chinBoneLowering\":1,\"cheeksBoneWidth\":1,\"chinBoneLenght\":0,\"eyesOpening\":-1},\"props\":[{\"drawable\":222,\"texture\":0,\"prop_id\":0},{\"drawable\":58,\"texture\":0,\"prop_id\":1},{\"drawable\":4,\"texture\":0,\"prop_id\":2},{\"drawable\":0,\"texture\":0,\"prop_id\":6},{\"drawable\":5,\"texture\":0,\"prop_id\":7}],\"model\":\"mp_m_freemode_01\",\"headOverlays\":{\"eyebrows\":{\"opacity\":1,\"color\":0,\"style\":0},\"sunDamage\":{\"opacity\":0,\"color\":0,\"style\":0},\"beard\":{\"opacity\":0,\"color\":0,\"style\":0},\"complexion\":{\"opacity\":0,\"color\":0,\"style\":0},\"chestHair\":{\"opacity\":0,\"color\":0,\"style\":0},\"blush\":{\"opacity\":0,\"color\":59,\"style\":0},\"makeUp\":{\"color\":0,\"opacity\":0,\"secondColor\":0,\"style\":0},\"blemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"moleAndFreckles\":{\"opacity\":0,\"color\":0,\"style\":0},\"lipstick\":{\"opacity\":1,\"color\":56,\"style\":0},\"bodyBlemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"ageing\":{\"opacity\":0,\"color\":0,\"style\":0}},\"tattoos\":{\"ZONE_HAIR\":[{\"hashMale\":\"FM_M_Hair_003_b\",\"collection\":\"multiplayer_overlays\",\"hashFemale\":\"FM_F_Hair_003_b\",\"label\":\"hair-0-187\",\"name\":\"hair-0-187\",\"zone\":\"ZONE_HAIR\"}]},\"eyeColor\":12,\"components\":[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":0,\"component_id\":1,\"texture\":0},{\"drawable\":1,\"component_id\":2,\"texture\":3},{\"drawable\":19,\"component_id\":3,\"texture\":0},{\"drawable\":10,\"component_id\":4,\"texture\":0},{\"drawable\":0,\"component_id\":5,\"texture\":0},{\"drawable\":10,\"component_id\":6,\"texture\":0},{\"drawable\":0,\"component_id\":7,\"texture\":0},{\"drawable\":58,\"component_id\":8,\"texture\":0},{\"drawable\":105,\"component_id\":9,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":583,\"component_id\":11,\"texture\":0}],\"headBlend\":{\"shapeThird\":9,\"skinThird\":6,\"shapeMix\":0,\"skinSecond\":27,\"skinFirst\":15,\"thirdMix\":0.1,\"shapeSecond\":40,\"skinMix\":0,\"shapeFirst\":1},\"hair\":{\"highlight\":0,\"texture\":3,\"color\":1,\"style\":1}}',1),
(429,'BDN59221','mp_m_freemode_01','{\"faceFeatures\":{\"nosePeakLowering\":0.1,\"noseBoneHigh\":0.2,\"lipsThickness\":-0.2,\"neckThickness\":1,\"noseBoneTwist\":0,\"chinBoneLenght\":0,\"jawBoneBackSize\":-0.5,\"jawBoneWidth\":-0.6,\"noseWidth\":-0.4,\"chinHole\":0,\"eyeBrownForward\":-0.2,\"nosePeakHigh\":0.4,\"cheeksWidth\":0.1,\"cheeksBoneHigh\":-0.4,\"nosePeakSize\":-0.1,\"chinBoneSize\":-0.6,\"chinBoneLowering\":0.5,\"cheeksBoneWidth\":-1,\"eyeBrownHigh\":0.5,\"eyesOpening\":-0.4},\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":1,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":80},{\"texture\":0,\"component_id\":4,\"drawable\":10},{\"texture\":0,\"component_id\":5,\"drawable\":0},{\"texture\":0,\"component_id\":6,\"drawable\":10},{\"texture\":0,\"component_id\":7,\"drawable\":9},{\"texture\":0,\"component_id\":8,\"drawable\":58},{\"texture\":0,\"component_id\":9,\"drawable\":105},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":11,\"drawable\":583},{\"texture\":0,\"component_id\":3,\"drawable\":11}],\"model\":\"mp_m_freemode_01\",\"headOverlays\":{\"moleAndFreckles\":{\"color\":0,\"opacity\":0,\"style\":0},\"sunDamage\":{\"color\":0,\"opacity\":0,\"style\":0},\"beard\":{\"color\":0,\"opacity\":0,\"style\":0},\"complexion\":{\"color\":0,\"opacity\":1,\"style\":11},\"blush\":{\"color\":18,\"opacity\":0.1,\"style\":0},\"ageing\":{\"color\":0,\"opacity\":0,\"style\":0},\"makeUp\":{\"opacity\":0.5,\"color\":56,\"secondColor\":53,\"style\":6},\"blemishes\":{\"color\":0,\"opacity\":0,\"style\":0},\"eyebrows\":{\"color\":61,\"opacity\":0.7,\"style\":5},\"lipstick\":{\"color\":18,\"opacity\":0.2,\"style\":1},\"bodyBlemishes\":{\"color\":0,\"opacity\":0,\"style\":0},\"chestHair\":{\"color\":0,\"opacity\":0,\"style\":0}},\"tattoos\":{\"ZONE_HAIR\":[{\"collection\":\"multiplayer_overlays\",\"hashMale\":\"FM_M_Hair_014_a\",\"name\":\"hair-0-171\",\"label\":\"hair-0-171\",\"hashFemale\":\"FM_F_Hair_014_a\",\"zone\":\"ZONE_HAIR\"}]},\"eyeColor\":5,\"props\":[{\"texture\":-1,\"drawable\":-1,\"prop_id\":0},{\"texture\":0,\"drawable\":38,\"prop_id\":1},{\"texture\":-1,\"drawable\":-1,\"prop_id\":2},{\"texture\":0,\"drawable\":46,\"prop_id\":6},{\"texture\":0,\"drawable\":1,\"prop_id\":7}],\"hair\":{\"texture\":0,\"color\":28,\"highlight\":26,\"style\":80},\"headBlend\":{\"shapeThird\":0,\"skinThird\":0,\"shapeMix\":0.3,\"skinSecond\":34,\"shapeSecond\":34,\"thirdMix\":0.5,\"skinFirst\":34,\"skinMix\":0.5,\"shapeFirst\":21}}',1),
(434,'JJX03484','mp_m_freemode_01','{\"faceFeatures\":{\"nosePeakLowering\":0.3,\"noseBoneHigh\":0.3,\"lipsThickness\":0.4,\"neckThickness\":0,\"noseBoneTwist\":0.3,\"chinBoneLenght\":0,\"jawBoneBackSize\":-1,\"jawBoneWidth\":-1,\"noseWidth\":0.2,\"cheeksBoneHigh\":0.3,\"eyeBrownForward\":0.8,\"cheeksBoneWidth\":-0.2,\"eyeBrownHigh\":0.2,\"chinHole\":0.5,\"nosePeakSize\":0.1,\"chinBoneSize\":0,\"chinBoneLowering\":0,\"cheeksWidth\":0.4,\"nosePeakHigh\":0.2,\"eyesOpening\":0.3},\"components\":[{\"drawable\":0,\"component_id\":0,\"texture\":0},{\"drawable\":0,\"component_id\":1,\"texture\":0},{\"drawable\":80,\"component_id\":2,\"texture\":0},{\"drawable\":19,\"component_id\":3,\"texture\":0},{\"drawable\":10,\"component_id\":4,\"texture\":0},{\"drawable\":0,\"component_id\":5,\"texture\":0},{\"drawable\":10,\"component_id\":6,\"texture\":0},{\"drawable\":-1,\"component_id\":7,\"texture\":0},{\"drawable\":58,\"component_id\":8,\"texture\":0},{\"drawable\":105,\"component_id\":9,\"texture\":0},{\"drawable\":0,\"component_id\":10,\"texture\":0},{\"drawable\":583,\"component_id\":11,\"texture\":0}],\"model\":\"mp_m_freemode_01\",\"headOverlays\":{\"moleAndFreckles\":{\"color\":0,\"opacity\":0,\"style\":0},\"sunDamage\":{\"color\":0,\"opacity\":0,\"style\":0},\"beard\":{\"color\":0,\"opacity\":0,\"style\":0},\"complexion\":{\"color\":0,\"opacity\":0.1,\"style\":0},\"ageing\":{\"color\":0,\"opacity\":0,\"style\":0},\"blush\":{\"color\":0,\"opacity\":0,\"style\":0},\"makeUp\":{\"opacity\":0.1,\"color\":0,\"secondColor\":0,\"style\":0},\"blemishes\":{\"color\":0,\"opacity\":0,\"style\":0},\"eyebrows\":{\"color\":0,\"opacity\":1,\"style\":1},\"lipstick\":{\"color\":0,\"opacity\":0,\"style\":0},\"bodyBlemishes\":{\"color\":0,\"opacity\":0,\"style\":0},\"chestHair\":{\"color\":0,\"opacity\":0,\"style\":0}},\"tattoos\":{\"ZONE_HAIR\":[{\"hashMale\":\"FM_M_Hair_003_c\",\"name\":\"hair-0-188\",\"collection\":\"multiplayer_overlays\",\"label\":\"hair-0-188\",\"hashFemale\":\"FM_F_Hair_003_c\",\"zone\":\"ZONE_HAIR\"}]},\"eyeColor\":3,\"props\":[{\"drawable\":-1,\"texture\":-1,\"prop_id\":0},{\"drawable\":-1,\"texture\":-1,\"prop_id\":1},{\"drawable\":-1,\"texture\":-1,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7}],\"hair\":{\"highlight\":0,\"color\":15,\"texture\":0,\"style\":80},\"headBlend\":{\"shapeThird\":1,\"skinThird\":1,\"shapeSecond\":25,\"skinSecond\":12,\"shapeMix\":0.7,\"thirdMix\":0,\"skinFirst\":25,\"skinMix\":0.8,\"shapeFirst\":10}}',1),
(440,'MTK83241','mp_m_freemode_01','{\"faceFeatures\":{\"nosePeakLowering\":0,\"noseBoneHigh\":0.1,\"lipsThickness\":-0.4,\"neckThickness\":0,\"noseBoneTwist\":0,\"nosePeakHigh\":0.4,\"jawBoneBackSize\":-1,\"jawBoneWidth\":-1,\"noseWidth\":-0.2,\"chinHole\":0,\"eyeBrownForward\":0,\"chinBoneLenght\":0.5,\"cheeksBoneHigh\":-0.7,\"cheeksBoneWidth\":0,\"nosePeakSize\":-0.7,\"chinBoneSize\":-0.3,\"chinBoneLowering\":-0.4,\"cheeksWidth\":-0.1,\"eyeBrownHigh\":0.5,\"eyesOpening\":-0.5},\"props\":[{\"prop_id\":1,\"drawable\":0,\"texture\":0},{\"prop_id\":2,\"drawable\":32,\"texture\":0},{\"prop_id\":6,\"drawable\":6,\"texture\":0},{\"prop_id\":7,\"drawable\":12,\"texture\":0},{\"prop_id\":0,\"drawable\":-1,\"texture\":0}],\"model\":\"mp_m_freemode_01\",\"headOverlays\":{\"eyebrows\":{\"color\":0,\"opacity\":1,\"style\":23},\"sunDamage\":{\"color\":0,\"opacity\":0,\"style\":0},\"beard\":{\"color\":0,\"opacity\":0,\"style\":0},\"complexion\":{\"color\":0,\"opacity\":0,\"style\":0},\"chestHair\":{\"color\":0,\"opacity\":0,\"style\":0},\"ageing\":{\"color\":0,\"opacity\":0,\"style\":0},\"makeUp\":{\"color\":56,\"opacity\":1,\"secondColor\":56,\"style\":94},\"blemishes\":{\"color\":0,\"opacity\":0,\"style\":0},\"moleAndFreckles\":{\"color\":0,\"opacity\":0,\"style\":0},\"lipstick\":{\"color\":0,\"opacity\":0.2,\"style\":0},\"bodyBlemishes\":{\"color\":0,\"opacity\":0,\"style\":0},\"blush\":{\"color\":1,\"opacity\":0,\"style\":0}},\"tattoos\":{\"ZONE_LEFT_LEG\":[{\"collection\":\"multiplayer_overlays\",\"hashMale\":\"FM_Tat_M_008\",\"name\":\"TAT_FM_211\",\"label\":\"Dragon Mural\",\"hashFemale\":\"FM_Tat_F_008\",\"zone\":\"ZONE_LEFT_LEG\"}],\"ZONE_HEAD\":[{\"collection\":\"mpsmuggler_overlays\",\"hashMale\":\"MP_Smuggler_Tattoo_012_M\",\"name\":\"TAT_SM_012\",\"label\":\"Thief\",\"hashFemale\":\"MP_Smuggler_Tattoo_012_F\",\"zone\":\"ZONE_HEAD\"}],\"ZONE_HAIR\":[{\"collection\":\"mpTuner_overlays\",\"hashMale\":\"MP_Tuner_Hair_001_M\",\"name\":\"hair-31-1\",\"label\":\"hair-31-1\",\"hashFemale\":\"MP_Tuner_Hair_001_F\",\"zone\":\"ZONE_HAIR\"}],\"ZONE_RIGHT_ARM\":[{\"collection\":\"multiplayer_overlays\",\"hashMale\":\"FM_Tat_M_003\",\"name\":\"TAT_FM_206\",\"label\":\"Dragons and Skull\",\"hashFemale\":\"FM_Tat_F_003\",\"zone\":\"ZONE_RIGHT_ARM\"}],\"ZONE_RIGHT_LEG\":[{\"collection\":\"mpluxe2_overlays\",\"hashMale\":\"MP_LUXE_TAT_023_M\",\"name\":\"TAT_L2_023\",\"label\":\"Starmetric\",\"hashFemale\":\"MP_LUXE_TAT_023_F\",\"zone\":\"ZONE_RIGHT_LEG\"},{\"collection\":\"multiplayer_overlays\",\"hashMale\":\"FM_Tat_M_007\",\"name\":\"TAT_FM_210\",\"label\":\"The Warrior\",\"hashFemale\":\"FM_Tat_F_007\",\"zone\":\"ZONE_RIGHT_LEG\"}],\"ZONE_LEFT_ARM\":[{\"collection\":\"mpluxe_overlays\",\"hashMale\":\"MP_LUXE_TAT_009_M\",\"name\":\"TAT_LX_009\",\"label\":\"Floral Symmetry\",\"hashFemale\":\"MP_LUXE_TAT_009_F\",\"zone\":\"ZONE_LEFT_ARM\"}],\"ZONE_TORSO\":[{\"collection\":\"mpheist3_overlays\",\"hashMale\":\"mpHeist3_Tat_026_M\",\"name\":\"TAT_H3_026\",\"label\":\"Dignity\",\"hashFemale\":\"mpHeist3_Tat_026_F\",\"zone\":\"ZONE_TORSO\"}]},\"eyeColor\":10,\"components\":[{\"texture\":0,\"component_id\":0,\"drawable\":0},{\"texture\":0,\"component_id\":2,\"drawable\":0},{\"texture\":0,\"component_id\":9,\"drawable\":0},{\"texture\":0,\"component_id\":7,\"drawable\":163},{\"texture\":0,\"component_id\":3,\"drawable\":18},{\"texture\":2,\"component_id\":11,\"drawable\":7},{\"texture\":1,\"component_id\":8,\"drawable\":23},{\"texture\":1,\"component_id\":4,\"drawable\":76},{\"texture\":1,\"component_id\":6,\"drawable\":75},{\"texture\":0,\"component_id\":1,\"drawable\":0},{\"texture\":0,\"component_id\":10,\"drawable\":0},{\"texture\":0,\"component_id\":5,\"drawable\":0}],\"hair\":{\"highlight\":26,\"color\":26,\"texture\":0,\"style\":77},\"headBlend\":{\"shapeThird\":21,\"skinThird\":21,\"shapeSecond\":7,\"skinSecond\":45,\"skinFirst\":34,\"thirdMix\":0.5,\"shapeMix\":0,\"skinMix\":0.5,\"shapeFirst\":44}}',1),
(443,'CDV27651','mp_m_freemode_01','{\"tattoos\":{\"ZONE_HEAD\":[]},\"hair\":{\"color\":13,\"style\":55,\"texture\":0,\"highlight\":0},\"headOverlays\":{\"lipstick\":{\"color\":0,\"style\":0,\"opacity\":0},\"ageing\":{\"color\":0,\"style\":0,\"opacity\":0},\"blush\":{\"color\":0,\"style\":0,\"opacity\":0},\"chestHair\":{\"color\":0,\"style\":0,\"opacity\":0},\"bodyBlemishes\":{\"color\":0,\"style\":0,\"opacity\":0},\"moleAndFreckles\":{\"color\":0,\"style\":0,\"opacity\":0},\"eyebrows\":{\"color\":0,\"style\":0,\"opacity\":0.7},\"blemishes\":{\"color\":0,\"style\":0,\"opacity\":0},\"sunDamage\":{\"color\":0,\"style\":0,\"opacity\":0},\"beard\":{\"color\":0,\"style\":0,\"opacity\":0},\"complexion\":{\"color\":0,\"style\":0,\"opacity\":0},\"makeUp\":{\"color\":0,\"style\":0,\"secondColor\":0,\"opacity\":0}},\"faceFeatures\":{\"noseWidth\":0,\"neckThickness\":0,\"lipsThickness\":0,\"chinBoneLowering\":0,\"chinBoneLenght\":0,\"cheeksBoneWidth\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"eyeBrownHigh\":0,\"jawBoneBackSize\":0,\"noseBoneTwist\":0,\"jawBoneWidth\":0,\"eyeBrownForward\":0,\"nosePeakSize\":0,\"nosePeakHigh\":0,\"chinHole\":0,\"eyesOpening\":0,\"noseBoneHigh\":0,\"chinBoneSize\":0,\"cheeksBoneHigh\":0},\"model\":\"mp_m_freemode_01\",\"eyeColor\":0,\"props\":[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":-1,\"prop_id\":1,\"drawable\":-1},{\"texture\":-1,\"prop_id\":2,\"drawable\":-1},{\"texture\":0,\"prop_id\":6,\"drawable\":2},{\"texture\":-1,\"prop_id\":7,\"drawable\":-1}],\"headBlend\":{\"skinFirst\":1,\"shapeFirst\":4,\"shapeThird\":0,\"skinThird\":0,\"shapeMix\":0,\"skinMix\":0,\"skinSecond\":1,\"shapeSecond\":13,\"thirdMix\":0},\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":3,\"texture\":0,\"drawable\":8},{\"component_id\":4,\"texture\":0,\"drawable\":4},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":24},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":0},{\"component_id\":9,\"texture\":0,\"drawable\":51},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":4}]}',1),
(468,'CCU80978','mp_f_freemode_01','{\"model\":\"mp_f_freemode_01\",\"eyeColor\":0,\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":11},{\"component_id\":3,\"texture\":0,\"drawable\":3},{\"component_id\":4,\"texture\":6,\"drawable\":8},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":6,\"drawable\":19},{\"component_id\":7,\"texture\":0,\"drawable\":6},{\"component_id\":8,\"texture\":3,\"drawable\":67},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":25}],\"headBlend\":{\"shapeFirst\":6,\"shapeThird\":0,\"shapeMix\":1,\"skinSecond\":45,\"skinThird\":0,\"shapeSecond\":21,\"thirdMix\":0,\"skinFirst\":0,\"skinMix\":0.6},\"tattoos\":[],\"faceFeatures\":{\"noseBoneHigh\":0,\"nosePeakHigh\":0.2,\"eyeBrownForward\":0,\"nosePeakLowering\":0,\"cheeksBoneWidth\":0,\"chinHole\":0,\"lipsThickness\":0,\"jawBoneWidth\":0,\"noseWidth\":-0.3,\"chinBoneLowering\":0,\"eyeBrownHigh\":0,\"nosePeakSize\":0,\"noseBoneTwist\":0,\"eyesOpening\":0,\"cheeksWidth\":0,\"neckThickness\":0,\"chinBoneLenght\":0,\"jawBoneBackSize\":0,\"chinBoneSize\":0,\"cheeksBoneHigh\":0},\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":0,\"drawable\":21},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":0,\"drawable\":3},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}],\"hair\":{\"highlight\":0,\"color\":22,\"texture\":0,\"style\":11},\"headOverlays\":{\"makeUp\":{\"opacity\":1,\"color\":0,\"secondColor\":0,\"style\":0},\"sunDamage\":{\"opacity\":0,\"color\":0,\"style\":0},\"lipstick\":{\"opacity\":0.4,\"color\":0,\"style\":0},\"blush\":{\"opacity\":0.2,\"color\":0,\"style\":0},\"chestHair\":{\"opacity\":0,\"color\":0,\"style\":0},\"moleAndFreckles\":{\"opacity\":0,\"color\":0,\"style\":0},\"eyebrows\":{\"opacity\":1,\"color\":0,\"style\":0},\"complexion\":{\"opacity\":0,\"color\":0,\"style\":0},\"beard\":{\"opacity\":0,\"color\":0,\"style\":0},\"bodyBlemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"blemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"ageing\":{\"opacity\":0,\"color\":0,\"style\":0}}}',1),
(473,'OZH56762','mp_m_freemode_01','{\"model\":\"mp_m_freemode_01\",\"eyeColor\":0,\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":48},{\"component_id\":3,\"texture\":0,\"drawable\":96},{\"component_id\":4,\"texture\":0,\"drawable\":21},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":99},{\"component_id\":7,\"texture\":0,\"drawable\":96},{\"component_id\":8,\"texture\":0,\"drawable\":15},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":200}],\"headBlend\":{\"shapeFirst\":21,\"skinThird\":11,\"shapeMix\":0,\"skinSecond\":0,\"shapeThird\":5,\"shapeSecond\":21,\"thirdMix\":0,\"skinMix\":0,\"skinFirst\":0},\"tattoos\":[],\"faceFeatures\":{\"noseBoneHigh\":0.8,\"nosePeakHigh\":0.6,\"eyeBrownForward\":1,\"nosePeakLowering\":1.1,\"cheeksBoneWidth\":-0.3,\"neckThickness\":1,\"lipsThickness\":0,\"jawBoneWidth\":0.2,\"noseWidth\":0.2,\"chinBoneLowering\":0.3,\"eyeBrownHigh\":0.1,\"nosePeakSize\":0.4,\"noseBoneTwist\":0.8,\"eyesOpening\":-0.2,\"chinBoneSize\":1,\"cheeksWidth\":0.1,\"chinBoneLenght\":-1,\"jawBoneBackSize\":0,\"chinHole\":0.4,\"cheeksBoneHigh\":-0.2},\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":0,\"drawable\":38},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":0,\"drawable\":9},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}],\"hair\":{\"highlight\":15,\"color\":15,\"texture\":0,\"style\":48},\"headOverlays\":{\"makeUp\":{\"opacity\":1,\"color\":1,\"secondColor\":0,\"style\":4},\"sunDamage\":{\"opacity\":0,\"color\":0,\"style\":0},\"lipstick\":{\"opacity\":0,\"color\":1,\"style\":0},\"blush\":{\"opacity\":1,\"color\":1,\"style\":33},\"chestHair\":{\"opacity\":0,\"color\":0,\"style\":0},\"moleAndFreckles\":{\"opacity\":0,\"color\":0,\"style\":0},\"eyebrows\":{\"opacity\":1,\"color\":1,\"style\":14},\"complexion\":{\"opacity\":0,\"color\":0,\"style\":0},\"beard\":{\"opacity\":1,\"color\":15,\"style\":0},\"bodyBlemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"blemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"ageing\":{\"opacity\":0,\"color\":0,\"style\":0}}}',1),
(481,'LYX25359','mp_m_freemode_01','{\"model\":\"mp_m_freemode_01\",\"eyeColor\":0,\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":3,\"texture\":0,\"drawable\":6},{\"component_id\":4,\"texture\":1,\"drawable\":5},{\"component_id\":6,\"texture\":1,\"drawable\":7},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":7},{\"component_id\":11,\"texture\":0,\"drawable\":4},{\"component_id\":8,\"texture\":0,\"drawable\":13},{\"component_id\":5,\"texture\":0,\"drawable\":0}],\"headBlend\":{\"shapeMix\":0,\"skinThird\":0,\"shapeFirst\":0,\"skinSecond\":0,\"shapeThird\":0,\"shapeSecond\":0,\"thirdMix\":0,\"skinMix\":0,\"skinFirst\":0},\"tattoos\":[],\"faceFeatures\":{\"noseBoneHigh\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"nosePeakLowering\":0,\"cheeksBoneWidth\":0,\"chinHole\":0,\"lipsThickness\":0,\"jawBoneWidth\":0,\"noseWidth\":0,\"chinBoneLowering\":0,\"eyeBrownHigh\":0,\"nosePeakSize\":0,\"noseBoneTwist\":0,\"eyesOpening\":0,\"chinBoneLenght\":0,\"neckThickness\":0,\"nosePeakHigh\":0,\"chinBoneSize\":0,\"cheeksWidth\":0,\"cheeksBoneHigh\":0},\"props\":[{\"prop_id\":0,\"texture\":0,\"drawable\":2},{\"prop_id\":1,\"texture\":0,\"drawable\":3},{\"prop_id\":2,\"texture\":0,\"drawable\":0},{\"prop_id\":6,\"texture\":0,\"drawable\":0},{\"prop_id\":7,\"texture\":0,\"drawable\":-1}],\"hair\":{\"color\":0,\"highlight\":0,\"texture\":0,\"style\":0},\"headOverlays\":{\"makeUp\":{\"opacity\":0,\"color\":1,\"secondColor\":0,\"style\":0},\"sunDamage\":{\"opacity\":0,\"color\":0,\"style\":0},\"lipstick\":{\"opacity\":0,\"color\":1,\"style\":0},\"blush\":{\"opacity\":0,\"color\":1,\"style\":0},\"chestHair\":{\"opacity\":0,\"color\":0,\"style\":0},\"moleAndFreckles\":{\"opacity\":0,\"color\":0,\"style\":0},\"eyebrows\":{\"opacity\":0,\"color\":1,\"style\":0},\"complexion\":{\"opacity\":0,\"color\":0,\"style\":0},\"beard\":{\"opacity\":0,\"color\":1,\"style\":0},\"bodyBlemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"blemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"ageing\":{\"opacity\":0,\"color\":0,\"style\":0}}}',1),
(483,'QHK11612','mp_m_freemode_01','{\"model\":\"mp_m_freemode_01\",\"eyeColor\":0,\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":21},{\"component_id\":3,\"texture\":0,\"drawable\":1},{\"component_id\":4,\"texture\":0,\"drawable\":10},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":10},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":10},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":499}],\"headBlend\":{\"shapeMix\":0.7,\"shapeThird\":44,\"skinThird\":0,\"skinSecond\":0,\"shapeFirst\":2,\"shapeSecond\":21,\"thirdMix\":0,\"skinFirst\":0,\"skinMix\":0},\"tattoos\":{\"ZONE_HAIR\":[{\"collection\":\"multiplayer_overlays\",\"zone\":\"ZONE_HAIR\",\"hashFemale\":\"FM_F_Hair_005_a\",\"hashMale\":\"FM_M_Hair_005_a\",\"label\":\"hair-0-156\",\"name\":\"hair-0-156\"}]},\"faceFeatures\":{\"noseBoneHigh\":0,\"nosePeakHigh\":0,\"eyeBrownForward\":0,\"nosePeakLowering\":0,\"cheeksBoneWidth\":0,\"chinHole\":0,\"cheeksWidth\":0,\"jawBoneWidth\":0,\"noseWidth\":0,\"chinBoneLowering\":0,\"eyeBrownHigh\":0,\"nosePeakSize\":0,\"chinBoneLenght\":0,\"eyesOpening\":0,\"jawBoneBackSize\":0,\"lipsThickness\":0,\"chinBoneSize\":0,\"noseBoneTwist\":0,\"neckThickness\":0,\"cheeksBoneHigh\":0},\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":4,\"drawable\":5},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":0,\"drawable\":4},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}],\"hair\":{\"highlight\":29,\"color\":29,\"texture\":0,\"style\":21},\"headOverlays\":{\"makeUp\":{\"opacity\":0,\"color\":1,\"secondColor\":0,\"style\":0},\"sunDamage\":{\"opacity\":0,\"color\":0,\"style\":0},\"lipstick\":{\"opacity\":0,\"color\":1,\"style\":0},\"blush\":{\"opacity\":0,\"color\":1,\"style\":0},\"chestHair\":{\"opacity\":0,\"color\":0,\"style\":0},\"moleAndFreckles\":{\"opacity\":0,\"color\":0,\"style\":0},\"eyebrows\":{\"opacity\":1,\"color\":1,\"style\":12},\"complexion\":{\"opacity\":0,\"color\":0,\"style\":0},\"beard\":{\"opacity\":0,\"color\":1,\"style\":0},\"bodyBlemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"blemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"ageing\":{\"opacity\":0,\"color\":0,\"style\":0}}}',1),
(485,'VCV61562','mp_m_freemode_01','{\"model\":\"mp_m_freemode_01\",\"eyeColor\":4,\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":76},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":195},{\"component_id\":5,\"texture\":0,\"drawable\":113},{\"component_id\":6,\"texture\":0,\"drawable\":25},{\"component_id\":7,\"texture\":0,\"drawable\":198},{\"component_id\":8,\"texture\":0,\"drawable\":218},{\"component_id\":9,\"texture\":0,\"drawable\":105},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":3,\"drawable\":583}],\"headBlend\":{\"shapeFirst\":21,\"skinThird\":0,\"skinMix\":0.5,\"skinSecond\":12,\"shapeThird\":0,\"shapeSecond\":17,\"thirdMix\":0,\"shapeMix\":0.5,\"skinFirst\":12},\"tattoos\":{\"ZONE_LEFT_ARM\":[{\"collection\":\"mpbeach_overlays\",\"hashMale\":\"MP_Bea_M_LArm_001\",\"label\":\"Mermaid L.S.\",\"zone\":\"ZONE_LEFT_ARM\",\"hashFemale\":\"\",\"name\":\"TAT_BB_017\"},{\"collection\":\"mpchristmas2017_overlays\",\"hashMale\":\"MP_Christmas2017_Tattoo_004_M\",\"label\":\"Tiger & Mask\",\"zone\":\"ZONE_LEFT_ARM\",\"hashFemale\":\"MP_Christmas2017_Tattoo_004_F\",\"name\":\"TAT_H27_004\"},{\"collection\":\"mpairraces_overlays\",\"hashMale\":\"MP_Airraces_Tattoo_003_M\",\"label\":\"Toxic Trails\",\"zone\":\"ZONE_LEFT_ARM\",\"hashFemale\":\"MP_Airraces_Tattoo_003_F\",\"name\":\"TAT_AR_003\"}],\"ZONE_HAIR\":[{\"collection\":\"multiplayer_overlays\",\"hashMale\":\"FM_M_Hair_005_a\",\"label\":\"hair-0-156\",\"zone\":\"ZONE_HAIR\",\"hashFemale\":\"FM_F_Hair_005_a\",\"name\":\"hair-0-156\"}],\"ZONE_RIGHT_ARM\":[{\"collection\":\"mpgunrunning_overlays\",\"hashMale\":\"MP_Gunrunning_Tattoo_024_M\",\"label\":\"Combat Reaper\",\"zone\":\"ZONE_RIGHT_ARM\",\"hashFemale\":\"MP_Gunrunning_Tattoo_024_F\",\"name\":\"TAT_GR_024\"},{\"collection\":\"mpheist3_overlays\",\"hashMale\":\"mpHeist3_Tat_034_M\",\"label\":\"LS Monogram\",\"zone\":\"ZONE_RIGHT_ARM\",\"hashFemale\":\"mpHeist3_Tat_034_F\",\"name\":\"TAT_H3_034\"},{\"collection\":\"mplowrider2_overlays\",\"hashMale\":\"MP_LR_Tat_028_M\",\"label\":\"Loving Los Muertos\",\"zone\":\"ZONE_RIGHT_ARM\",\"hashFemale\":\"MP_LR_Tat_028_F\",\"name\":\"TAT_S2_028\"},{\"collection\":\"mpsmuggler_overlays\",\"hashMale\":\"MP_Smuggler_Tattoo_001_M\",\"label\":\"Crackshot\",\"zone\":\"ZONE_RIGHT_ARM\",\"hashFemale\":\"MP_Smuggler_Tattoo_001_F\",\"name\":\"TAT_SM_001\"}],\"ZONE_RIGHT_LEG\":[{\"collection\":\"mpgunrunning_overlays\",\"hashMale\":\"MP_Gunrunning_Tattoo_026_M\",\"label\":\"Restless Skull\",\"zone\":\"ZONE_RIGHT_LEG\",\"hashFemale\":\"MP_Gunrunning_Tattoo_026_F\",\"name\":\"TAT_GR_026\"},{\"collection\":\"mpsecurity_overlays\",\"hashMale\":\"MP_Security_Tat_021_M\",\"label\":\"Graffiti Skull\",\"zone\":\"ZONE_RIGHT_LEG\",\"hashFemale\":\"MP_Security_Tat_021_F\",\"name\":\"TAT_FX_021\"}],\"ZONE_LEFT_LEG\":[{\"collection\":\"mplowrider2_overlays\",\"hashMale\":\"MP_LR_Tat_029_M\",\"label\":\"Death Us Do Part\",\"zone\":\"ZONE_LEFT_LEG\",\"hashFemale\":\"MP_LR_Tat_029_F\",\"name\":\"TAT_S2_029\"},{\"collection\":\"mplowrider_overlays\",\"hashMale\":\"MP_LR_Tat_020_M\",\"label\":\"Presidents\",\"zone\":\"ZONE_LEFT_LEG\",\"hashFemale\":\"MP_LR_Tat_020_F\",\"name\":\"TAT_S1_020\"}],\"ZONE_HEAD\":[{\"collection\":\"mpheist3_overlays\",\"hashMale\":\"mpHeist3_Tat_004_M\",\"label\":\"Bandage\",\"zone\":\"ZONE_HEAD\",\"hashFemale\":\"mpHeist3_Tat_004_F\",\"name\":\"TAT_H3_004\"}]},\"faceFeatures\":{\"noseBoneHigh\":0.4,\"jawBoneBackSize\":-1,\"eyeBrownForward\":0,\"chinBoneSize\":0,\"cheeksBoneWidth\":-0.9,\"neckThickness\":0,\"cheeksWidth\":-1,\"jawBoneWidth\":-0.3,\"noseWidth\":0.4,\"chinBoneLowering\":-0.1,\"eyeBrownHigh\":1,\"nosePeakSize\":-0.5,\"noseBoneTwist\":0,\"eyesOpening\":0.3,\"lipsThickness\":-1,\"chinBoneLenght\":0.2,\"nosePeakLowering\":0.1,\"nosePeakHigh\":0.5,\"chinHole\":0.5,\"cheeksBoneHigh\":0.7},\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":2,\"drawable\":6},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":0,\"drawable\":7}],\"hair\":{\"color\":29,\"highlight\":25,\"texture\":0,\"style\":76},\"headOverlays\":{\"makeUp\":{\"opacity\":0,\"color\":1,\"secondColor\":0,\"style\":0},\"sunDamage\":{\"opacity\":0,\"color\":0,\"style\":0},\"lipstick\":{\"opacity\":0.2,\"color\":1,\"style\":0},\"blush\":{\"opacity\":0,\"color\":1,\"style\":0},\"chestHair\":{\"opacity\":0,\"color\":0,\"style\":0},\"moleAndFreckles\":{\"opacity\":0,\"color\":0,\"style\":0},\"eyebrows\":{\"opacity\":0.6,\"color\":1,\"style\":1},\"complexion\":{\"opacity\":0,\"color\":0,\"style\":0},\"beard\":{\"opacity\":0,\"color\":1,\"style\":0},\"bodyBlemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"blemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"ageing\":{\"opacity\":0,\"color\":0,\"style\":0}}}',1),
(492,'IMN66507','mp_m_freemode_01','{\"model\":\"mp_m_freemode_01\",\"eyeColor\":0,\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":10},{\"component_id\":3,\"texture\":0,\"drawable\":19},{\"component_id\":4,\"texture\":0,\"drawable\":10},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":10},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":8,\"texture\":0,\"drawable\":265},{\"component_id\":9,\"texture\":0,\"drawable\":105},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":583}],\"headBlend\":{\"shapeMix\":0,\"skinThird\":0,\"shapeFirst\":0,\"skinSecond\":0,\"shapeThird\":0,\"shapeSecond\":0,\"thirdMix\":0,\"skinFirst\":0,\"skinMix\":0},\"tattoos\":{\"ZONE_HAIR\":[{\"collection\":\"multiplayer_overlays\",\"zone\":\"ZONE_HAIR\",\"hashMale\":\"FM_M_Hair_003_a\",\"label\":\"hair-0-186\",\"hashFemale\":\"FM_F_Hair_003_a\",\"name\":\"hair-0-186\"}]},\"faceFeatures\":{\"noseBoneHigh\":0,\"jawBoneBackSize\":0,\"eyeBrownForward\":0,\"nosePeakLowering\":0,\"cheeksBoneWidth\":0,\"neckThickness\":0,\"cheeksWidth\":0,\"jawBoneWidth\":0,\"noseWidth\":0,\"chinBoneLowering\":0,\"eyeBrownHigh\":0,\"nosePeakSize\":0,\"chinBoneLenght\":0,\"eyesOpening\":0,\"noseBoneTwist\":0,\"chinBoneSize\":0,\"nosePeakHigh\":0,\"chinHole\":0,\"lipsThickness\":0,\"cheeksBoneHigh\":0},\"props\":[{\"prop_id\":0,\"texture\":0,\"drawable\":222},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}],\"hair\":{\"color\":29,\"highlight\":29,\"texture\":0,\"style\":10},\"headOverlays\":{\"makeUp\":{\"opacity\":0,\"color\":0,\"secondColor\":0,\"style\":0},\"sunDamage\":{\"opacity\":0,\"color\":0,\"style\":0},\"lipstick\":{\"opacity\":0,\"color\":0,\"style\":0},\"blush\":{\"opacity\":0,\"color\":0,\"style\":0},\"chestHair\":{\"opacity\":0,\"color\":0,\"style\":0},\"blemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"eyebrows\":{\"opacity\":0,\"color\":0,\"style\":0},\"complexion\":{\"opacity\":0,\"color\":0,\"style\":0},\"beard\":{\"opacity\":0,\"color\":0,\"style\":0},\"bodyBlemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"moleAndFreckles\":{\"opacity\":0,\"color\":0,\"style\":0},\"ageing\":{\"opacity\":0,\"color\":0,\"style\":0}}}',1),
(500,'XRR77997','mp_m_freemode_01','{\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":121},{\"component_id\":2,\"texture\":0,\"drawable\":69},{\"component_id\":3,\"texture\":0,\"drawable\":0},{\"component_id\":4,\"texture\":0,\"drawable\":96},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":27},{\"component_id\":7,\"texture\":0,\"drawable\":183},{\"component_id\":8,\"texture\":0,\"drawable\":15},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":218},{\"component_id\":11,\"texture\":0,\"drawable\":250}],\"hair\":{\"style\":69,\"color\":38,\"texture\":0,\"highlight\":29},\"faceFeatures\":{\"nosePeakLowering\":0.1,\"eyesOpening\":-0.4,\"neckThickness\":0,\"chinHole\":0.3,\"cheeksBoneHigh\":-0.6,\"eyeBrownForward\":0,\"eyeBrownHigh\":0.3,\"chinBoneLenght\":0.2,\"nosePeakSize\":-0.1,\"jawBoneWidth\":-0.7,\"noseWidth\":0.1,\"noseBoneTwist\":0,\"chinBoneSize\":-0.1,\"noseBoneHigh\":0.2,\"jawBoneBackSize\":-0.2,\"nosePeakHigh\":0.1,\"cheeksWidth\":-0.2,\"cheeksBoneWidth\":0.3,\"lipsThickness\":-0.4,\"chinBoneLowering\":-0.2},\"tattoos\":{\"ZONE_TORSO\":[{\"label\":\"Refined Hustler\",\"collection\":\"mpbusiness_overlays\",\"hashFemale\":\"\",\"hashMale\":\"MP_Buis_M_Stomach_000\",\"name\":\"TAT_BUS_011\",\"zone\":\"ZONE_TORSO\"},{\"label\":\"Royal Dagger Outline\",\"collection\":\"mpchristmas2_overlays\",\"hashFemale\":\"MP_Xmas2_F_Tat_018\",\"hashMale\":\"MP_Xmas2_M_Tat_018\",\"name\":\"TAT_X2_018\",\"zone\":\"ZONE_TORSO\"}],\"ZONE_HEAD\":[{\"label\":\"Bat Wheel\",\"collection\":\"mpstunt_overlays\",\"hashFemale\":\"MP_MP_Stunt_tat_017_F\",\"hashMale\":\"MP_MP_Stunt_tat_017_M\",\"name\":\"TAT_ST_017\",\"zone\":\"ZONE_HEAD\"}]},\"headBlend\":{\"skinFirst\":21,\"skinSecond\":45,\"skinMix\":0.5,\"shapeFirst\":21,\"shapeMix\":0.4,\"shapeThird\":21,\"shapeSecond\":45,\"skinThird\":21,\"thirdMix\":0.5},\"eyeColor\":5,\"headOverlays\":{\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":1,\"color\":11,\"opacity\":0.6},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"style\":12,\"color\":0,\"opacity\":1},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"style\":3,\"color\":11,\"opacity\":0.3},\"makeUp\":{\"style\":9,\"color\":56,\"secondColor\":9,\"opacity\":1},\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"complexion\":{\"style\":10,\"color\":0,\"opacity\":1},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0}},\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":1,\"drawable\":9}],\"model\":\"mp_m_freemode_01\"}',1),
(503,'YBN39722','mp_m_freemode_01','{\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":0},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":0,\"drawable\":192},{\"component_id\":8,\"texture\":0,\"drawable\":33},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":3,\"texture\":0,\"drawable\":1},{\"component_id\":4,\"texture\":0,\"drawable\":24},{\"component_id\":6,\"texture\":2,\"drawable\":31}],\"hair\":{\"style\":80,\"color\":29,\"texture\":0,\"highlight\":29},\"faceFeatures\":{\"nosePeakLowering\":0,\"eyesOpening\":-0.2,\"neckThickness\":-0.5,\"chinHole\":0,\"cheeksBoneHigh\":0.6,\"eyeBrownForward\":0.3,\"eyeBrownHigh\":0.6,\"chinBoneLenght\":0.4,\"nosePeakSize\":0,\"jawBoneWidth\":0,\"noseWidth\":-0.4,\"cheeksBoneWidth\":0.5,\"noseBoneTwist\":0,\"noseBoneHigh\":0,\"chinBoneSize\":-0.3,\"nosePeakHigh\":0.1,\"cheeksWidth\":0,\"chinBoneLowering\":0.2,\"lipsThickness\":0.3,\"jawBoneBackSize\":0},\"tattoos\":[],\"headBlend\":{\"skinFirst\":0,\"skinSecond\":0,\"skinMix\":0,\"shapeSecond\":4,\"shapeMix\":0,\"skinThird\":0,\"shapeThird\":0,\"shapeFirst\":6,\"thirdMix\":0},\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":3,\"drawable\":35}],\"headOverlays\":{\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0.2},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"style\":17,\"color\":61,\"opacity\":1},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0.4},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"style\":4,\"color\":6,\"opacity\":0.5}},\"eyeColor\":6,\"model\":\"mp_m_freemode_01\"}',1),
(505,'WYU58551','mp_m_freemode_01','{\"components\":[{\"component_id\":0,\"drawable\":0,\"texture\":0},{\"component_id\":1,\"drawable\":0,\"texture\":0},{\"component_id\":2,\"drawable\":13,\"texture\":0},{\"component_id\":3,\"drawable\":19,\"texture\":0},{\"component_id\":5,\"drawable\":0,\"texture\":0},{\"component_id\":7,\"drawable\":0,\"texture\":0},{\"component_id\":10,\"drawable\":0,\"texture\":0},{\"component_id\":11,\"drawable\":583,\"texture\":0},{\"component_id\":8,\"drawable\":265,\"texture\":0},{\"component_id\":9,\"drawable\":105,\"texture\":0},{\"component_id\":4,\"drawable\":10,\"texture\":0},{\"component_id\":6,\"drawable\":10,\"texture\":0}],\"hair\":{\"style\":13,\"color\":0,\"texture\":0,\"highlight\":0},\"faceFeatures\":{\"nosePeakLowering\":0,\"eyesOpening\":0,\"neckThickness\":0,\"chinHole\":0,\"cheeksBoneHigh\":0,\"cheeksBoneWidth\":0,\"eyeBrownHigh\":0,\"chinBoneLowering\":0,\"nosePeakSize\":0,\"jawBoneWidth\":0,\"noseWidth\":0,\"eyeBrownForward\":0,\"chinBoneSize\":0,\"noseBoneHigh\":0,\"chinBoneLenght\":0,\"nosePeakHigh\":0,\"noseBoneTwist\":0,\"cheeksWidth\":0,\"lipsThickness\":0,\"jawBoneBackSize\":0},\"eyeColor\":0,\"headBlend\":{\"skinFirst\":0,\"skinSecond\":0,\"skinMix\":0,\"shapeFirst\":0,\"shapeMix\":0,\"shapeThird\":0,\"shapeSecond\":0,\"skinThird\":0,\"thirdMix\":0},\"props\":[{\"prop_id\":0,\"drawable\":-1,\"texture\":-1},{\"prop_id\":1,\"drawable\":-1,\"texture\":-1},{\"prop_id\":2,\"drawable\":-1,\"texture\":-1},{\"prop_id\":6,\"drawable\":-1,\"texture\":-1},{\"prop_id\":7,\"drawable\":-1,\"texture\":-1}],\"headOverlays\":{\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":0,\"color\":0,\"opacity\":0},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"style\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"style\":0,\"color\":0,\"secondColor\":0,\"opacity\":0},\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0},\"beard\":{\"style\":0,\"color\":0,\"opacity\":0},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0}},\"tattoos\":[],\"model\":\"mp_m_freemode_01\"}',1),
(506,'YBR81778','mp_m_freemode_01','{\"components\":[{\"component_id\":0,\"drawable\":0,\"texture\":0},{\"component_id\":1,\"drawable\":0,\"texture\":0},{\"component_id\":2,\"drawable\":15,\"texture\":0},{\"component_id\":3,\"drawable\":19,\"texture\":0},{\"component_id\":4,\"drawable\":10,\"texture\":0},{\"component_id\":5,\"drawable\":0,\"texture\":0},{\"component_id\":6,\"drawable\":10,\"texture\":0},{\"component_id\":7,\"drawable\":0,\"texture\":0},{\"component_id\":8,\"drawable\":265,\"texture\":0},{\"component_id\":9,\"drawable\":105,\"texture\":0},{\"component_id\":10,\"drawable\":0,\"texture\":0},{\"component_id\":11,\"drawable\":583,\"texture\":0}],\"hair\":{\"style\":15,\"color\":29,\"texture\":0,\"highlight\":0},\"faceFeatures\":{\"nosePeakLowering\":0,\"eyesOpening\":-1,\"neckThickness\":1,\"chinHole\":0,\"cheeksBoneHigh\":-0.4,\"eyeBrownForward\":0,\"eyeBrownHigh\":0.1,\"chinBoneLowering\":-1,\"nosePeakSize\":0,\"jawBoneWidth\":-1,\"noseWidth\":-1,\"jawBoneBackSize\":0.3,\"chinBoneLenght\":0,\"noseBoneHigh\":0,\"chinBoneSize\":-0.6,\"nosePeakHigh\":0.4,\"noseBoneTwist\":0,\"cheeksWidth\":0.1,\"lipsThickness\":0.3,\"cheeksBoneWidth\":-1},\"tattoos\":{\"ZONE_HAIR\":[{\"name\":\"hair-0-189\",\"collection\":\"multiplayer_overlays\",\"label\":\"hair-0-189\",\"hashMale\":\"FM_M_Hair_003_d\",\"hashFemale\":\"FM_F_Hair_003_d\",\"zone\":\"ZONE_HAIR\"}]},\"headBlend\":{\"skinFirst\":12,\"skinSecond\":0,\"skinMix\":0,\"shapeSecond\":12,\"shapeMix\":0.5,\"skinThird\":0,\"shapeThird\":0,\"thirdMix\":0,\"shapeFirst\":43},\"props\":[{\"prop_id\":0,\"drawable\":222,\"texture\":0},{\"prop_id\":1,\"drawable\":-1,\"texture\":-1},{\"prop_id\":2,\"drawable\":-1,\"texture\":-1},{\"prop_id\":6,\"drawable\":-1,\"texture\":-1},{\"prop_id\":7,\"drawable\":-1,\"texture\":-1}],\"headOverlays\":{\"ageing\":{\"style\":0,\"color\":0,\"opacity\":0},\"blush\":{\"style\":0,\"color\":1,\"opacity\":0},\"chestHair\":{\"style\":0,\"color\":0,\"opacity\":0},\"eyebrows\":{\"style\":0,\"color\":1,\"opacity\":0.7},\"complexion\":{\"style\":0,\"color\":0,\"opacity\":0},\"makeUp\":{\"style\":0,\"color\":1,\"secondColor\":0,\"opacity\":0.2},\"sunDamage\":{\"style\":0,\"color\":0,\"opacity\":0},\"lipstick\":{\"style\":0,\"color\":0,\"opacity\":0.1},\"bodyBlemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"blemishes\":{\"style\":0,\"color\":0,\"opacity\":0},\"beard\":{\"style\":0,\"color\":1,\"opacity\":0},\"moleAndFreckles\":{\"style\":0,\"color\":0,\"opacity\":0}},\"eyeColor\":0,\"model\":\"mp_m_freemode_01\"}',1),
(529,'UUU52761','mp_f_freemode_01','{\"faceFeatures\":{\"nosePeakLowering\":0.2,\"noseWidth\":-0.2,\"eyeBrownHigh\":-0.1,\"nosePeakSize\":0.6,\"chinBoneLowering\":-0.1,\"eyeBrownForward\":-0.6,\"eyesOpening\":-0.4,\"jawBoneWidth\":-0.9,\"cheeksBoneWidth\":-0.5,\"chinHole\":0,\"nosePeakHigh\":-0.2,\"noseBoneHigh\":0.1,\"chinBoneLenght\":0.5,\"jawBoneBackSize\":-0.2,\"cheeksBoneHigh\":0.4,\"lipsThickness\":0.1,\"cheeksWidth\":0.3,\"chinBoneSize\":-0.3,\"neckThickness\":0,\"noseBoneTwist\":-0.3},\"components\":[{\"texture\":0,\"drawable\":0,\"component_id\":0},{\"texture\":0,\"drawable\":0,\"component_id\":1},{\"texture\":0,\"drawable\":15,\"component_id\":2},{\"texture\":7,\"drawable\":25,\"component_id\":4},{\"texture\":0,\"drawable\":0,\"component_id\":5},{\"texture\":1,\"drawable\":59,\"component_id\":8},{\"texture\":0,\"drawable\":0,\"component_id\":9},{\"texture\":0,\"drawable\":0,\"component_id\":10},{\"texture\":4,\"drawable\":1,\"component_id\":11},{\"texture\":0,\"drawable\":9,\"component_id\":7},{\"texture\":0,\"drawable\":147,\"component_id\":6},{\"texture\":0,\"drawable\":64,\"component_id\":3}],\"eyeColor\":2,\"headBlend\":{\"shapeThird\":6,\"skinFirst\":39,\"shapeMix\":0.5,\"skinThird\":21,\"skinSecond\":1,\"thirdMix\":0.8,\"shapeFirst\":7,\"shapeSecond\":10,\"skinMix\":1},\"hair\":{\"texture\":0,\"style\":15,\"color\":26,\"highlight\":29},\"model\":\"mp_f_freemode_01\",\"props\":[{\"texture\":-1,\"prop_id\":0,\"drawable\":-1},{\"texture\":0,\"prop_id\":1,\"drawable\":37},{\"texture\":0,\"prop_id\":2,\"drawable\":0},{\"texture\":4,\"prop_id\":6,\"drawable\":35},{\"texture\":0,\"prop_id\":7,\"drawable\":14}],\"tattoos\":{\"ZONE_HAIR\":[{\"hashFemale\":\"FM_F_Hair_006_c\",\"zone\":\"ZONE_HAIR\",\"hashMale\":\"FM_M_Hair_006_c\",\"label\":\"hair-0-193\",\"collection\":\"multiplayer_overlays\",\"name\":\"hair-0-193\"}]},\"headOverlays\":{\"blush\":{\"opacity\":0,\"color\":0,\"style\":0},\"eyebrows\":{\"opacity\":1,\"color\":26,\"style\":30},\"blemishes\":{\"opacity\":0.5,\"color\":0,\"style\":19},\"chestHair\":{\"opacity\":0,\"color\":0,\"style\":0},\"ageing\":{\"opacity\":0,\"color\":0,\"style\":0},\"lipstick\":{\"opacity\":0,\"color\":0,\"style\":0},\"makeUp\":{\"secondColor\":0,\"opacity\":0,\"color\":0,\"style\":0},\"sunDamage\":{\"opacity\":0,\"color\":0,\"style\":0},\"beard\":{\"opacity\":0,\"color\":0,\"style\":0},\"bodyBlemishes\":{\"opacity\":0,\"color\":0,\"style\":0},\"complexion\":{\"opacity\":0,\"color\":0,\"style\":0},\"moleAndFreckles\":{\"opacity\":0,\"color\":0,\"style\":0}}}',1),
(531,'RHT93297','mp_m_freemode_01','{\"eyeColor\":0,\"headOverlays\":{\"makeUp\":{\"color\":0,\"secondColor\":0,\"opacity\":0,\"style\":0},\"bodyBlemishes\":{\"color\":0,\"style\":0,\"opacity\":0},\"beard\":{\"color\":0,\"style\":0,\"opacity\":0},\"ageing\":{\"color\":0,\"style\":0,\"opacity\":0},\"chestHair\":{\"color\":0,\"style\":0,\"opacity\":0},\"eyebrows\":{\"color\":0,\"style\":0,\"opacity\":0},\"blemishes\":{\"color\":0,\"style\":0,\"opacity\":0},\"moleAndFreckles\":{\"color\":0,\"style\":0,\"opacity\":0},\"blush\":{\"color\":0,\"style\":0,\"opacity\":0},\"sunDamage\":{\"color\":0,\"style\":0,\"opacity\":0},\"lipstick\":{\"color\":0,\"style\":0,\"opacity\":0},\"complexion\":{\"color\":0,\"style\":0,\"opacity\":0}},\"model\":\"mp_m_freemode_01\",\"tattoos\":[],\"props\":[{\"prop_id\":0,\"texture\":-1,\"drawable\":-1},{\"prop_id\":1,\"texture\":-1,\"drawable\":-1},{\"prop_id\":2,\"texture\":-1,\"drawable\":-1},{\"prop_id\":6,\"texture\":-1,\"drawable\":-1},{\"prop_id\":7,\"texture\":-1,\"drawable\":-1}],\"hair\":{\"color\":52,\"style\":80,\"highlight\":0,\"texture\":0},\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":0,\"drawable\":80},{\"component_id\":3,\"texture\":0,\"drawable\":1},{\"component_id\":4,\"texture\":1,\"drawable\":24},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":21},{\"component_id\":7,\"texture\":0,\"drawable\":17},{\"component_id\":8,\"texture\":0,\"drawable\":57},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":11,\"texture\":3,\"drawable\":111}],\"headBlend\":{\"shapeSecond\":0,\"shapeFirst\":1,\"thirdMix\":0,\"skinSecond\":0,\"skinThird\":0,\"shapeThird\":0,\"skinFirst\":0,\"shapeMix\":1,\"skinMix\":1},\"faceFeatures\":{\"chinBoneSize\":0,\"eyeBrownHigh\":0,\"cheeksBoneHigh\":0,\"jawBoneWidth\":0,\"jawBoneBackSize\":0,\"neckThickness\":0,\"nosePeakHigh\":0,\"chinBoneLenght\":0,\"noseBoneTwist\":0,\"eyesOpening\":0,\"lipsThickness\":0,\"noseBoneHigh\":0,\"chinBoneLowering\":0,\"cheeksWidth\":0,\"nosePeakLowering\":0,\"noseWidth\":0,\"nosePeakSize\":0,\"eyeBrownForward\":0,\"cheeksBoneWidth\":0,\"chinHole\":0}}',1),
(535,'QLU88274','mp_m_freemode_01','{\"eyeColor\":3,\"faceFeatures\":{\"chinBoneSize\":0,\"noseWidth\":0,\"cheeksBoneHigh\":0,\"jawBoneWidth\":0,\"jawBoneBackSize\":0,\"neckThickness\":0,\"nosePeakHigh\":0,\"chinBoneLenght\":0,\"noseBoneTwist\":0,\"eyesOpening\":0,\"lipsThickness\":0,\"noseBoneHigh\":0,\"chinBoneLowering\":0,\"cheeksWidth\":0,\"eyeBrownHigh\":0,\"nosePeakLowering\":0,\"nosePeakSize\":0,\"eyeBrownForward\":0,\"cheeksBoneWidth\":0,\"chinHole\":0},\"model\":\"mp_m_freemode_01\",\"tattoos\":{\"ZONE_RIGHT_ARM\":[{\"name\":\"TAT_BI_049\",\"hashFemale\":\"MP_MP_Biker_Tat_049_F\",\"collection\":\"mpbiker_overlays\",\"label\":\"These Colors Don\'t Run\",\"zone\":\"ZONE_RIGHT_ARM\",\"hashMale\":\"MP_MP_Biker_Tat_049_M\"},{\"name\":\"TAT_H4_006\",\"hashFemale\":\"MP_Heist4_Tat_006_F\",\"collection\":\"mpheist4_overlays\",\"label\":\"Music Locker\",\"zone\":\"ZONE_RIGHT_ARM\",\"hashMale\":\"MP_Heist4_Tat_006_M\"},{\"name\":\"TAT_ST_009\",\"hashFemale\":\"MP_MP_Stunt_tat_009_F\",\"collection\":\"mpstunt_overlays\",\"label\":\"Arachnid of Death\",\"zone\":\"ZONE_RIGHT_ARM\",\"hashMale\":\"MP_MP_Stunt_tat_009_M\"},{\"name\":\"TAT_FM_247\",\"hashFemale\":\"FM_Tat_F_047\",\"collection\":\"multiplayer_overlays\",\"label\":\"Lion\",\"zone\":\"ZONE_RIGHT_ARM\",\"hashMale\":\"FM_Tat_M_047\"}],\"ZONE_LEFT_ARM\":[{\"name\":\"TAT_BB_017\",\"hashFemale\":\"\",\"collection\":\"mpbeach_overlays\",\"label\":\"Mermaid L.S.\",\"zone\":\"ZONE_LEFT_ARM\",\"hashMale\":\"MP_Bea_M_LArm_001\"},{\"name\":\"TAT_H27_004\",\"hashFemale\":\"MP_Christmas2017_Tattoo_004_F\",\"collection\":\"mpchristmas2017_overlays\",\"label\":\"Tiger & Mask\",\"zone\":\"ZONE_LEFT_ARM\",\"hashMale\":\"MP_Christmas2017_Tattoo_004_M\"}]},\"props\":[{\"drawable\":2,\"texture\":0,\"prop_id\":2},{\"drawable\":-1,\"texture\":-1,\"prop_id\":6},{\"drawable\":-1,\"texture\":-1,\"prop_id\":7},{\"drawable\":17,\"texture\":0,\"prop_id\":0},{\"drawable\":21,\"texture\":0,\"prop_id\":1}],\"headOverlays\":{\"makeUp\":{\"color\":52,\"secondColor\":52,\"opacity\":0.2,\"style\":0},\"bodyBlemishes\":{\"color\":0,\"style\":0,\"opacity\":0},\"ageing\":{\"color\":0,\"style\":0,\"opacity\":0},\"sunDamage\":{\"color\":0,\"style\":0,\"opacity\":0},\"chestHair\":{\"color\":0,\"style\":0,\"opacity\":0},\"eyebrows\":{\"color\":29,\"style\":0,\"opacity\":1},\"lipstick\":{\"color\":0,\"style\":0,\"opacity\":0},\"moleAndFreckles\":{\"color\":0,\"style\":0,\"opacity\":0},\"blush\":{\"color\":0,\"style\":0,\"opacity\":0},\"beard\":{\"color\":25,\"style\":0,\"opacity\":0.3},\"blemishes\":{\"color\":0,\"style\":0,\"opacity\":0},\"complexion\":{\"color\":0,\"style\":0,\"opacity\":1}},\"components\":[{\"component_id\":0,\"texture\":0,\"drawable\":0},{\"component_id\":1,\"texture\":0,\"drawable\":0},{\"component_id\":2,\"texture\":4,\"drawable\":19},{\"component_id\":5,\"texture\":0,\"drawable\":0},{\"component_id\":7,\"texture\":0,\"drawable\":0},{\"component_id\":9,\"texture\":0,\"drawable\":0},{\"component_id\":10,\"texture\":0,\"drawable\":0},{\"component_id\":6,\"texture\":0,\"drawable\":16},{\"component_id\":4,\"texture\":9,\"drawable\":17},{\"component_id\":11,\"texture\":0,\"drawable\":17},{\"component_id\":8,\"texture\":0,\"drawable\":57},{\"component_id\":3,\"texture\":0,\"drawable\":5}],\"headBlend\":{\"shapeSecond\":0,\"skinThird\":0,\"shapeThird\":9,\"skinSecond\":17,\"thirdMix\":0,\"shapeFirst\":0,\"skinFirst\":0,\"shapeMix\":0,\"skinMix\":0},\"hair\":{\"color\":29,\"style\":19,\"highlight\":0,\"texture\":4}}',1);
/*!40000 ALTER TABLE `playerskins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_impound`
--

DROP TABLE IF EXISTS `police_impound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `police_impound` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `officer` varchar(46) NOT NULL,
  `officer_name` varchar(128) NOT NULL,
  `status` int(1) DEFAULT 2,
  `duration` timestamp NULL DEFAULT NULL,
  `fine` int(11) DEFAULT 0,
  `offence` varchar(32) NOT NULL,
  `notes` longtext DEFAULT 'No extra notes',
  `vehicle` longtext NOT NULL,
  `vehicle_plate` varchar(64) DEFAULT 'Unknown',
  `vehicle_owner` varchar(46) NOT NULL,
  `vehicle_owner_name` varchar(128) DEFAULT 'Unknown',
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `offence` (`offence`),
  CONSTRAINT `police_impound_ibfk_1` FOREIGN KEY (`status`) REFERENCES `police_impound_status` (`id`),
  CONSTRAINT `police_impound_ibfk_2` FOREIGN KEY (`offence`) REFERENCES `police_impound_offence` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_impound`
--

LOCK TABLES `police_impound` WRITE;
/*!40000 ALTER TABLE `police_impound` DISABLE KEYS */;
INSERT INTO `police_impound` VALUES
(1,'XRR77997','谢尔比 邦德',1,'2025-04-08 13:29:25',200,'abandoned_vehicle','1','{\"color1\":29,\"bodyHealth\":668.0300454031207,\"wheelSize\":1.0,\"interiorColor\":112,\"modBrakes\":2,\"modAPlate\":-1,\"modSideSkirt\":-1,\"modRightFender\":-1,\"modSpeakers\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"pearlescentColor\":6,\"modTrimB\":-1,\"modXenon\":false,\"modShifterLeavers\":-1,\"wheelWidth\":1.0,\"modArmor\":-1,\"tyreSmokeColor\":[255,255,255],\"modBackWheels\":-1,\"model\":1234311532,\"modEngine\":3,\"modRoof\":-1,\"modCustomTiresF\":false,\"plate\":\"8KA515XR\",\"wheels\":7,\"modFrame\":-1,\"modTank\":-1,\"oilLevel\":4.76596940834568,\"engineHealth\":772.0870441520016,\"color2\":111,\"dirtLevel\":2.38298470417284,\"plateIndex\":0,\"modFrontBumper\":-1,\"modSteeringWheel\":-1,\"modDashboard\":-1,\"modSpoilers\":-1,\"modSeats\":-1,\"modKit17\":-1,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":true},\"modEngineBlock\":-1,\"modGrille\":-1,\"modWindows\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modVanityPlate\":-1,\"modTurbo\":1,\"neonEnabled\":[false,false,false,false],\"neonColor\":[255,0,255],\"modOrnaments\":-1,\"modAerials\":-1,\"liveryRoof\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modKit21\":-1,\"modDoorSpeaker\":-1,\"modHydrolic\":-1,\"modArchCover\":-1,\"modRearBumper\":-1,\"modCustomTiresR\":false,\"modHorns\":-1,\"modPlateHolder\":-1,\"fuelLevel\":96.90804463636234,\"dashboardColor\":0,\"tankHealth\":960.3428357816563,\"modStruts\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit47\":-1,\"extras\":[],\"modTrunk\":-1,\"modHood\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modKit49\":-1,\"label\":\"普罗根 GP1\",\"modSmokeEnabled\":false,\"wheelColor\":111,\"modFrontWheels\":-1,\"modAirFilter\":-1,\"modTrimA\":-1,\"modDial\":-1,\"modKit19\":-1,\"modFender\":-1,\"modTransmission\":2,\"windowTint\":0,\"xenonColor\":255,\"modExhaust\":-1}','8KA515XR','XRR77997','谢尔比 邦德','2025-04-08 05:35:18','2025-04-08 05:32:13'),
(2,'XRR77997','谢尔比 邦德',1,'2025-04-08 13:55:36',7,'illegal_mods','7777777','{\"modDashboard\":-1,\"modHood\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":-1,\"liveryRoof\":-1,\"modGrille\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":false,\"modRightFender\":-1,\"dashboardColor\":0,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modExhaust\":-1,\"engineHealth\":1000.0592475178704,\"modDial\":-1,\"oilLevel\":4.76596940834568,\"modRearBumper\":-1,\"wheels\":7,\"modSuspension\":-1,\"wheelWidth\":1.0,\"modVanityPlate\":-1,\"pearlescentColor\":6,\"modFender\":-1,\"modStruts\":-1,\"modTransmission\":2,\"modCustomTiresR\":false,\"modArmor\":-1,\"modBackWheels\":-1,\"xenonColor\":255,\"fuelLevel\":99.29102934053518,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":true},\"modCustomTiresF\":false,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":2,\"modEngineBlock\":-1,\"tankHealth\":4000.2369900714818,\"modPlateHolder\":-1,\"windowTint\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modSeats\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modKit47\":-1,\"modHorns\":-1,\"modWindows\":-1,\"modRoof\":-1,\"wheelColor\":111,\"wheelSize\":1.0,\"modArchCover\":-1,\"modSideSkirt\":-1,\"bodyHealth\":1000.0592475178704,\"modTrimA\":-1,\"modXenon\":false,\"neonColor\":[255,0,255],\"modKit21\":-1,\"modEngine\":3,\"modFrame\":-1,\"interiorColor\":111,\"modTank\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAPlate\":-1,\"color2\":38,\"modAerials\":-1,\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"model\":1234311532,\"plate\":\"9NI363OO\",\"modKit17\":-1,\"modFrontWheels\":-1,\"label\":\"普罗根 GP1\",\"modTrunk\":-1,\"dirtLevel\":0.0,\"modOrnaments\":-1,\"color1\":8,\"neonEnabled\":[false,false,false,false],\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"plateIndex\":1,\"extras\":[],\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modKit49\":-1,\"modTurbo\":1,\"modKit19\":-1}','9NI363OO','XRR77997','谢尔比 邦德','2025-04-08 05:57:17','2025-04-08 05:55:37'),
(3,'XRR77997','谢尔比 邦德',1,'2025-04-08 13:58:31',1,'illegal_parking','1','{\"modDashboard\":-1,\"modHood\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":-1,\"liveryRoof\":-1,\"modGrille\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":false,\"modRightFender\":-1,\"dashboardColor\":0,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modExhaust\":-1,\"engineHealth\":989.7329804664547,\"modDial\":-1,\"oilLevel\":4.76596940834568,\"modRearBumper\":-1,\"wheels\":7,\"modSuspension\":-1,\"wheelWidth\":1.0,\"modVanityPlate\":-1,\"pearlescentColor\":6,\"modFender\":-1,\"modStruts\":-1,\"modTransmission\":2,\"modCustomTiresR\":false,\"modArmor\":-1,\"modBackWheels\":-1,\"xenonColor\":255,\"fuelLevel\":20.65253410283131,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":true},\"modCustomTiresF\":false,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":2,\"modEngineBlock\":-1,\"tankHealth\":4000.2369900714818,\"modPlateHolder\":-1,\"windowTint\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modSeats\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modKit47\":-1,\"modHorns\":-1,\"modWindows\":-1,\"modRoof\":-1,\"wheelColor\":111,\"wheelSize\":1.0,\"modArchCover\":-1,\"modSideSkirt\":-1,\"bodyHealth\":998.4705910484217,\"modTrimA\":-1,\"modXenon\":false,\"neonColor\":[255,0,255],\"modKit21\":-1,\"modEngine\":3,\"modFrame\":-1,\"interiorColor\":111,\"modTank\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAPlate\":-1,\"color2\":38,\"modAerials\":-1,\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"model\":1234311532,\"plate\":\"9NI363OO\",\"modKit17\":-1,\"modFrontWheels\":-1,\"label\":\"普罗根 GP1\",\"modTrunk\":-1,\"dirtLevel\":0.0,\"modOrnaments\":-1,\"color1\":8,\"neonEnabled\":[false,false,false,false],\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"plateIndex\":1,\"extras\":[],\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modKit49\":-1,\"modTurbo\":1,\"modKit19\":-1}','9NI363OO','XRR77997','谢尔比 邦德','2025-04-08 05:58:56','2025-04-08 05:58:29'),
(4,'XRR77997','谢尔比 邦德',1,'2025-04-08 14:00:04',1,'reckless_driving','1','{\"modDashboard\":-1,\"modHood\":-1,\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modLivery\":-1,\"liveryRoof\":-1,\"modGrille\":-1,\"modSpoilers\":-1,\"modSmokeEnabled\":false,\"modRightFender\":-1,\"dashboardColor\":0,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modExhaust\":-1,\"engineHealth\":979.406713415039,\"modDial\":-1,\"oilLevel\":4.76596940834568,\"modRearBumper\":-1,\"wheels\":7,\"modSuspension\":-1,\"wheelWidth\":1.0,\"modVanityPlate\":-1,\"pearlescentColor\":6,\"modFender\":-1,\"modStruts\":-1,\"modTransmission\":2,\"modCustomTiresR\":false,\"modArmor\":-1,\"modBackWheels\":-1,\"xenonColor\":255,\"fuelLevel\":47.65969408345688,\"windowStatus\":{\"1\":true,\"2\":true,\"3\":true,\"4\":false,\"5\":false,\"6\":true,\"7\":false,\"0\":true},\"modCustomTiresF\":false,\"tyreSmokeColor\":[255,255,255],\"modBrakes\":2,\"modEngineBlock\":-1,\"tankHealth\":4000.2369900714818,\"modPlateHolder\":-1,\"windowTint\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modSeats\":-1,\"modSpeakers\":-1,\"modFrontBumper\":-1,\"modKit47\":-1,\"modHorns\":-1,\"modWindows\":-1,\"modRoof\":-1,\"wheelColor\":111,\"wheelSize\":1.0,\"modArchCover\":-1,\"modSideSkirt\":-1,\"bodyHealth\":994.4989498748004,\"modTrimA\":-1,\"modXenon\":false,\"neonColor\":[255,0,255],\"modKit21\":-1,\"modEngine\":3,\"modFrame\":-1,\"interiorColor\":111,\"modTank\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modAPlate\":-1,\"color2\":38,\"modAerials\":-1,\"modTrimB\":-1,\"modDoorSpeaker\":-1,\"model\":1234311532,\"plate\":\"9NI363OO\",\"modKit17\":-1,\"modFrontWheels\":-1,\"label\":\"普罗根 GP1\",\"modTrunk\":-1,\"dirtLevel\":0.0,\"modOrnaments\":-1,\"color1\":8,\"neonEnabled\":[false,false,false,false],\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"plateIndex\":1,\"extras\":[],\"modSteeringWheel\":-1,\"modShifterLeavers\":-1,\"modKit49\":-1,\"modTurbo\":1,\"modKit19\":-1}','9NI363OO','XRR77997','谢尔比 邦德','2025-04-08 06:00:32','2025-04-08 06:00:00'),
(5,'YBR81778','马克 康格里',1,'2025-04-08 16:01:42',1,'abandoned_vehicle','','{\"liveryRoof\":-1,\"modGrille\":-1,\"modCustomTiresR\":false,\"windowStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"6\":false,\"7\":false,\"0\":false},\"modAerials\":-1,\"wheelSize\":1.0,\"oilLevel\":7.94328234724281,\"modKit49\":-1,\"modTransmission\":-1,\"engineHealth\":1000.0592475178704,\"modShifterLeavers\":-1,\"modSideSkirt\":-1,\"modKit19\":-1,\"modKit17\":-1,\"neonEnabled\":[false,false,false,false],\"modDoorSpeaker\":-1,\"modEngineBlock\":-1,\"tireBurstCompletely\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"neonColor\":[255,0,255],\"windowTint\":-1,\"modFender\":-1,\"modRightFender\":-1,\"color1\":138,\"modHood\":-1,\"tireBurstState\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"xenonColor\":255,\"modDial\":-1,\"modDashboard\":-1,\"modTrimB\":-1,\"modBackWheels\":-1,\"modArmor\":-1,\"wheelWidth\":1.0,\"modVanityPlate\":-1,\"modWindows\":-1,\"pearlescentColor\":20,\"modAirFilter\":-1,\"modHorns\":-1,\"tyreSmokeColor\":[255,255,255],\"doorStatus\":{\"1\":false,\"2\":false,\"3\":false,\"4\":false,\"5\":false,\"0\":false},\"modBrakes\":-1,\"extras\":[],\"modKit21\":-1,\"modSpoilers\":-1,\"modArchCover\":-1,\"dashboardColor\":111,\"modTank\":-1,\"modXenon\":false,\"modTurbo\":false,\"fuelLevel\":100.08535757525947,\"modCustomTiresF\":false,\"modStruts\":-1,\"modAPlate\":-1,\"modFrontBumper\":-1,\"tireHealth\":{\"1\":1000.0,\"2\":1000.0,\"3\":1000.0,\"0\":1000.0},\"modSuspension\":-1,\"modSmokeEnabled\":false,\"model\":1239571361,\"modTrunk\":-1,\"plateIndex\":4,\"modKit47\":-1,\"interiorColor\":129,\"modRoof\":-1,\"dirtLevel\":6.35462587779425,\"label\":\"威尼 伊西噩梦版\",\"modEngine\":-1,\"modPlateHolder\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"plate\":\"4LZ076HQ\",\"modHydrolic\":-1,\"modFrontWheels\":-1,\"modSpeakers\":-1,\"modFrame\":-1,\"modRearBumper\":-1,\"modLivery\":-1,\"modOrnaments\":-1,\"bodyHealth\":1000.0592475178704,\"tankHealth\":1000.0592475178704,\"modSeats\":-1,\"wheelColor\":139,\"color2\":135,\"wheels\":0,\"modExhaust\":-1}','4LZ076HQ','JJX03484','亚力 雷吉','2025-04-08 08:02:19','2025-04-08 08:02:05');
/*!40000 ALTER TABLE `police_impound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_impound_offence`
--

DROP TABLE IF EXISTS `police_impound_offence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `police_impound_offence` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT 100,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_impound_offence`
--

LOCK TABLES `police_impound_offence` WRITE;
/*!40000 ALTER TABLE `police_impound_offence` DISABLE KEYS */;
INSERT INTO `police_impound_offence` VALUES
('abandoned_vehicle','废弃车辆',200),
('crime_vehicle','涉案车辆',1000),
('driver_arrested','驾驶员被捕',300),
('dui','酒后驾驶',700),
('evidence_seizure','证据扣押',500),
('hit_and_run','肇事逃逸',800),
('illegal_mods','非法改装',400),
('illegal_parking','非法停车',150),
('noise_complaint','噪音投诉',100),
('obstructing_traffic','阻碍交通',250),
('reckless_driving','鲁莽驾驶',350),
('safety_issues','车辆安全问题',200),
('stolen_recovery','被盗车辆追回',500),
('unregistered_vehicle','未注册车辆',300);
/*!40000 ALTER TABLE `police_impound_offence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_impound_status`
--

DROP TABLE IF EXISTS `police_impound_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `police_impound_status` (
  `id` int(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_impound_status`
--

LOCK TABLES `police_impound_status` WRITE;
/*!40000 ALTER TABLE `police_impound_status` DISABLE KEYS */;
INSERT INTO `police_impound_status` VALUES
(1,'已取出'),
(2,'被扣押'),
(3,'需解锁');
/*!40000 ALTER TABLE `police_impound_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_admin`
--

DROP TABLE IF EXISTS `ps_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` char(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_admin`
--

LOCK TABLES `ps_admin` WRITE;
/*!40000 ALTER TABLE `ps_admin` DISABLE KEYS */;
INSERT INTO `ps_admin` VALUES
(1,'XRR77997'),
(2,'YBR81778'),
(4,'VCV61562'),
(5,'ICW34676'),
(6,'VQR49601'),
(7,'QHK11612'),
(8,'LTI10935'),
(9,'RRU27752'),
(10,'OZH56762'),
(11,'JJX03484'),
(12,'BDN59221'),
(13,'QLU88274');
/*!40000 ALTER TABLE `ps_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_banking_accounts`
--

DROP TABLE IF EXISTS `ps_banking_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_banking_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `balance` int(11) NOT NULL,
  `holder` varchar(255) NOT NULL,
  `cardNumber` char(19) NOT NULL,
  `users` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`users`)),
  `owner` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`owner`)),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_banking_accounts`
--

LOCK TABLES `ps_banking_accounts` WRITE;
/*!40000 ALTER TABLE `ps_banking_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_banking_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_banking_accounts_transactions`
--

DROP TABLE IF EXISTS `ps_banking_accounts_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_banking_accounts_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardNumber` char(19) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `isIncome` tinyint(1) NOT NULL,
  `user_identifier` char(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_banking_accounts_transactions`
--

LOCK TABLES `ps_banking_accounts_transactions` WRITE;
/*!40000 ALTER TABLE `ps_banking_accounts_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_banking_accounts_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_banking_bills`
--

DROP TABLE IF EXISTS `ps_banking_bills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_banking_bills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` char(8) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `isPaid` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_banking_bills`
--

LOCK TABLES `ps_banking_bills` WRITE;
/*!40000 ALTER TABLE `ps_banking_bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_banking_bills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_banking_transactions`
--

DROP TABLE IF EXISTS `ps_banking_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ps_banking_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` char(8) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `isIncome` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2661 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_banking_transactions`
--

LOCK TABLES `ps_banking_transactions` WRITE;
/*!40000 ALTER TABLE `ps_banking_transactions` DISABLE KEYS */;
INSERT INTO `ps_banking_transactions` VALUES
(1,'XRR77997','取出','bank',10000,'2025-01-17 10:42:12',0),
(2,'YBR81778','存入','bank',500,'2025-01-18 12:58:47',1),
(3,'YBR81778','存入','bank',500,'2025-01-18 13:28:47',1),
(4,'YBR81778','存入','bank',500,'2025-01-18 13:58:47',1),
(5,'YBR81778','存入','bank',500,'2025-01-19 14:52:18',1),
(6,'YBR81778','存入','bank',500,'2025-01-19 16:22:18',1),
(7,'XRR77997','存入','bank',1000,'2025-01-19 16:22:18',1),
(8,'YBR81778','取出','bank',4000,'2025-01-19 16:51:37',0),
(9,'XRR77997','存入','bank',1000,'2025-01-19 16:52:18',1),
(10,'YBR81778','存入','bank',500,'2025-01-19 16:52:18',1),
(11,'XRR77997','存入','bank',1000,'2025-01-19 17:22:18',1),
(12,'XRR77997','存入','bank',1000,'2025-01-19 17:52:18',1),
(13,'YBR81778','存入','bank',500,'2025-01-19 18:22:18',1),
(14,'XRR77997','存入','bank',1000,'2025-01-19 18:22:18',1),
(15,'YBR81778','存入','bank',500,'2025-01-19 18:52:18',1),
(16,'YBR81778','存入','bank',500,'2025-01-19 19:22:18',1),
(17,'YBR81778','存入','bank',500,'2025-01-20 14:52:20',1),
(18,'YBR81778','存入','bank',500,'2025-01-20 15:22:20',1),
(19,'YBR81778','存入','bank',500,'2025-01-20 15:52:20',1),
(20,'YBR81778','存入','bank',500,'2025-01-20 16:22:20',1),
(21,'YBR81778','存入','bank',500,'2025-01-20 16:52:20',1),
(22,'YBR81778','存入','bank',500,'2025-01-20 17:22:20',1),
(23,'YBR81778','存入','bank',500,'2025-01-20 17:52:20',1),
(24,'YBR81778','存入','bank',500,'2025-01-20 18:22:20',1),
(25,'XRR77997','存入','bank',1000,'2025-01-20 21:52:20',1),
(26,'LYX25359','存入','bank',1000,'2025-01-20 21:52:20',1),
(27,'YBR81778','存入','bank',500,'2025-01-20 21:52:20',1),
(28,'YBR81778','取出','bank',500,'2025-01-20 21:57:31',0),
(29,'XRR77997','取出','bank',500,'2025-01-20 21:58:54',0),
(30,'XRR77997','存入','bank',1000,'2025-01-20 22:22:20',1),
(31,'YBR81778','存入','bank',500,'2025-01-20 22:22:20',1),
(32,'LYX25359','存入','bank',1000,'2025-01-20 22:22:20',1),
(33,'LYX25359','取出','bank',500,'2025-01-20 22:27:44',0),
(34,'XRR77997','取出','bank',500,'2025-01-20 22:51:13',0),
(35,'YBR81778','存入','bank',500,'2025-01-20 22:52:20',1),
(36,'XRR77997','存入','bank',1000,'2025-01-20 22:52:20',1),
(37,'LYX25359','存入','bank',1000,'2025-01-20 22:52:20',1),
(38,'LYX25359','取出','bank',500,'2025-01-20 22:57:06',0),
(39,'YBR81778','存入','bank',500,'2025-01-20 23:22:20',1),
(40,'XRR77997','存入','bank',1000,'2025-01-20 23:52:20',1),
(41,'YBR81778','存入','bank',500,'2025-01-20 23:52:20',1),
(42,'LYX25359','存入','bank',1000,'2025-01-20 23:52:20',1),
(43,'XRR77997','取出','bank',400,'2025-01-21 00:04:36',0),
(44,'XRR77997','取出','bank',400,'2025-01-21 00:04:40',0),
(45,'XRR77997','取出','bank',400,'2025-01-21 00:04:42',0),
(46,'YBR81778','存入','bank',500,'2025-01-21 00:22:20',1),
(47,'YBR81778','存入','bank',500,'2025-01-21 00:52:20',1),
(48,'YBR81778','存入','bank',500,'2025-01-21 01:22:20',1),
(49,'YBR81778','存入','bank',500,'2025-01-21 01:52:20',1),
(50,'YBR81778','存入','bank',500,'2025-01-21 02:22:20',1),
(51,'YBR81778','存入','bank',500,'2025-01-21 02:52:20',1),
(52,'YBR81778','存入','bank',500,'2025-01-21 03:22:20',1),
(53,'YBR81778','存入','bank',500,'2025-01-21 03:52:20',1),
(54,'YBR81778','存入','bank',500,'2025-01-21 04:22:20',1),
(55,'YBR81778','存入','bank',500,'2025-01-21 04:52:20',1),
(56,'YBR81778','存入','bank',500,'2025-01-21 05:22:20',1),
(57,'YBR81778','存入','bank',500,'2025-01-21 05:52:20',1),
(58,'YBR81778','存入','bank',500,'2025-01-21 06:22:20',1),
(59,'YBR81778','存入','bank',500,'2025-01-21 06:52:20',1),
(60,'YBR81778','存入','bank',500,'2025-01-21 07:22:20',1),
(61,'YBR81778','存入','bank',500,'2025-01-21 07:52:20',1),
(62,'YBR81778','存入','bank',500,'2025-01-21 08:22:20',1),
(63,'YBR81778','存入','bank',500,'2025-01-21 08:52:20',1),
(64,'YBR81778','存入','bank',500,'2025-01-21 09:22:20',1),
(65,'YBR81778','存入','bank',500,'2025-01-21 09:52:20',1),
(66,'XRR77997','存入','bank',1000,'2025-01-21 10:52:10',1),
(67,'YBR81778','存入','bank',500,'2025-01-21 13:08:58',1),
(68,'YBR81778','存入','bank',500,'2025-01-21 13:38:58',1),
(69,'YBR81778','存入','bank',500,'2025-01-21 14:08:58',1),
(70,'YBR81778','存入','bank',500,'2025-01-21 14:38:58',1),
(71,'YBR81778','存入','bank',500,'2025-01-21 15:08:58',1),
(72,'YBR81778','存入','bank',500,'2025-01-21 15:38:58',1),
(73,'YBR81778','存入','bank',500,'2025-01-21 16:08:58',1),
(74,'YBR81778','存入','bank',500,'2025-01-21 16:38:58',1),
(75,'YBR81778','存入','bank',10000,'2025-01-21 16:46:04',1),
(76,'YBR81778','存入','bank',500,'2025-01-21 17:08:58',1),
(77,'YBR81778','存入','bank',500,'2025-01-21 17:56:59',1),
(78,'YBR81778','存入','bank',500,'2025-01-21 18:26:59',1),
(79,'YBR81778','存入','bank',500,'2025-01-21 18:56:59',1),
(80,'YBR81778','存入','bank',500,'2025-01-21 19:26:59',1),
(81,'YBR81778','取出','bank',1000,'2025-01-21 19:38:58',0),
(82,'YBR81778','存入','bank',500,'2025-01-21 19:56:59',1),
(83,'YBR81778','取出','bank',1000,'2025-01-21 20:25:09',0),
(84,'YBR81778','取出','bank',47586,'2025-01-21 20:25:09',0),
(85,'YBR81778','存入','bank',49127,'2025-01-21 20:25:19',1),
(86,'YBR81778','取出','bank',1000,'2025-01-21 20:25:23',0),
(87,'YBR81778','存入','bank',500,'2025-01-21 20:26:59',1),
(88,'YBR81778','取出','bank',500,'2025-01-21 20:27:27',0),
(89,'XRR77997','存入','bank',1000,'2025-01-23 00:24:48',1),
(90,'XRR77997','取出','bank',400,'2025-01-23 01:39:06',0),
(91,'XRR77997','取出','bank',10450,'2025-01-23 01:39:12',0),
(92,'XRR77997','取出','bank',10450,'2025-01-23 01:39:15',0),
(93,'XRR77997','存入','bank',1000,'2025-01-23 02:06:18',1),
(94,'XRR77997','存入','bank',1000,'2025-01-27 14:41:33',1),
(95,'VQR49601','存入','bank',800,'2025-01-27 15:20:08',1),
(96,'XRR77997','存入','bank',1000,'2025-01-27 15:20:08',1),
(97,'XRR77997','存入','bank',1000,'2025-01-28 14:10:42',1),
(98,'XRR77997','存入','bank',1000,'2025-01-28 15:18:38',1),
(99,'XRR77997','存入','bank',1000,'2025-01-28 15:48:38',1),
(100,'XRR77997','存入','bank',1000,'2025-01-28 16:18:38',1),
(101,'XRR77997','存入','bank',1000,'2025-01-28 16:48:38',1),
(102,'XRR77997','存入','bank',1000,'2025-03-12 12:36:59',1),
(103,'XRR77997','存入','bank',1000,'2025-03-13 20:07:01',1),
(104,'VQR49601','取出','bank',500,'2025-03-13 20:34:52',0),
(105,'VQR49601','存入','bank',800,'2025-03-13 20:53:54',1),
(106,'XRR77997','存入','bank',1000,'2025-03-13 20:53:54',1),
(107,'RKL40161','取出','bank',5000,'2025-03-13 21:10:11',0),
(108,'RKL40161','存入','bank',5500,'2025-03-13 21:10:23',1),
(109,'XRR77997','存入','bank',1000,'2025-03-13 21:23:55',1),
(110,'VQR49601','存入','bank',800,'2025-03-13 21:23:55',1),
(111,'XRR77997','存入','bank',1000,'2025-03-13 21:53:55',1),
(112,'VQR49601','存入','bank',800,'2025-03-13 21:53:55',1),
(113,'VQR49601','存入','bank',800,'2025-03-13 22:39:17',1),
(114,'XRR77997','存入','bank',1000,'2025-03-13 22:39:17',1),
(115,'VQR49601','存入','bank',800,'2025-03-13 23:09:17',1),
(116,'XRR77997','存入','bank',1000,'2025-03-13 23:09:17',1),
(117,'XRR77997','存入','bank',1000,'2025-03-13 23:39:17',1),
(118,'VQR49601','存入','bank',800,'2025-03-13 23:39:17',1),
(119,'XRR77997','存入','bank',1000,'2025-03-14 00:39:17',1),
(120,'VQR49601','存入','bank',800,'2025-03-14 00:39:17',1),
(121,'XRR77997','存入','bank',1000,'2025-03-14 01:09:17',1),
(122,'VQR49601','存入','bank',800,'2025-03-14 01:09:17',1),
(123,'XRR77997','存入','bank',1000,'2025-03-14 20:01:59',1),
(124,'XRR77997','存入','bank',1000,'2025-03-14 20:31:59',1),
(125,'XRR77997','存入','bank',1000,'2025-03-14 21:01:59',1),
(126,'XRR77997','存入','bank',1000,'2025-03-14 23:31:59',1),
(127,'VQR49601','存入','bank',800,'2025-03-14 23:31:59',1),
(128,'VQR49601','存入','bank',800,'2025-03-15 00:01:59',1),
(129,'VQR49601','存入','bank',800,'2025-03-15 00:31:59',1),
(130,'VQR49601','存入','bank',800,'2025-03-15 01:01:59',1),
(131,'XRR77997','存入','bank',1000,'2025-03-15 01:01:59',1),
(132,'XRR77997','存入','bank',1000,'2025-03-15 14:02:00',1),
(133,'XRR77997','存入','bank',1000,'2025-03-15 14:32:00',1),
(134,'XRR77997','存入','bank',1000,'2025-03-15 15:32:00',1),
(135,'XRR77997','存入','bank',1000,'2025-03-15 16:02:00',1),
(136,'XRR77997','存入','bank',1000,'2025-03-15 16:32:00',1),
(137,'XRR77997','存入','bank',1000,'2025-03-15 17:32:00',1),
(138,'YBR81778','取出','bank',400,'2025-03-15 19:59:04',0),
(139,'YBR81778','存入','bank',500,'2025-03-15 20:02:00',1),
(140,'YBR81778','存入','bank',500,'2025-03-15 21:32:00',1),
(141,'XRR77997','存入','bank',1000,'2025-03-15 21:32:01',1),
(142,'XRR77997','取出','bank',500,'2025-03-15 21:44:35',0),
(143,'OZH56762','存入','bank',1000,'2025-03-16 00:02:01',1),
(144,'XRR77997','存入','bank',1000,'2025-03-16 00:02:01',1),
(145,'OZH56762','取出','bank',0,'2025-03-16 00:22:00',0),
(146,'XRR77997','存入','bank',0,'2025-03-16 00:22:00',1),
(147,'OZH56762','存入','bank',1000,'2025-03-16 00:32:01',1),
(148,'XRR77997','存入','bank',1000,'2025-03-16 00:32:01',1),
(149,'XRR77997','取出','bank',400,'2025-03-16 00:40:02',0),
(150,'YBR81778','存入','bank',2000,'2025-03-16 12:50:47',1),
(151,'XRR77997','存入','bank',1000,'2025-03-16 13:02:01',1),
(152,'YBR81778','存入','bank',500,'2025-03-16 13:02:01',1),
(153,'XRR77997','存入','bank',1000,'2025-03-16 13:32:01',1),
(154,'YBR81778','存入','bank',500,'2025-03-16 13:32:01',1),
(155,'OZH56762','存入','bank',1000,'2025-03-16 15:48:36',1),
(156,'XRR77997','存入','bank',1000,'2025-03-16 15:48:36',1),
(157,'YBR81778','存入','bank',500,'2025-03-16 15:48:40',1),
(158,'OZH56762','取出','bank',500,'2025-03-16 15:58:32',0),
(159,'OZH56762','存入','bank',1000,'2025-03-16 16:18:36',1),
(160,'XRR77997','存入','bank',1000,'2025-03-16 16:18:36',1),
(161,'YBR81778','存入','bank',500,'2025-03-16 16:18:36',1),
(162,'OZH56762','存入','bank',1000,'2025-03-16 16:48:36',1),
(163,'XRR77997','存入','bank',1000,'2025-03-16 16:48:36',1),
(164,'YBR81778','存入','bank',500,'2025-03-16 16:48:36',1),
(165,'OZH56762','存入','bank',1000,'2025-03-16 17:18:36',1),
(166,'YBR81778','存入','bank',500,'2025-03-16 17:18:36',1),
(167,'XRR77997','存入','bank',1000,'2025-03-16 17:18:36',1),
(168,'OZH56762','存入','bank',1000,'2025-03-16 17:48:36',1),
(169,'XRR77997','存入','bank',1000,'2025-03-16 17:48:36',1),
(170,'YBR81778','存入','bank',500,'2025-03-16 17:48:36',1),
(171,'YBR81778','取出','bank',400,'2025-03-16 18:12:39',0),
(172,'YBR81778','取出','bank',400,'2025-03-16 18:12:44',0),
(173,'YBR81778','取出','bank',400,'2025-03-16 18:12:49',0),
(174,'YBR81778','取出','bank',15250,'2025-03-16 18:13:18',0),
(175,'YBR81778','取出','bank',10450,'2025-03-16 18:13:23',0),
(176,'YBR81778','取出','bank',10450,'2025-03-16 18:13:26',0),
(177,'YBR81778','取出','bank',10450,'2025-03-16 18:13:31',0),
(178,'YBR81778','取出','bank',2000,'2025-03-16 18:14:24',0),
(179,'YBR81778','取出','bank',400,'2025-03-16 18:15:19',0),
(180,'YBR81778','取出','bank',400,'2025-03-16 18:15:39',0),
(181,'YBR81778','取出','bank',400,'2025-03-16 18:15:57',0),
(182,'YBR81778','取出','bank',400,'2025-03-16 18:16:21',0),
(183,'YBR81778','存入','bank',2000,'2025-03-16 18:17:27',1),
(184,'OZH56762','存入','bank',1000,'2025-03-16 18:18:36',1),
(185,'XRR77997','存入','bank',1000,'2025-03-16 18:18:36',1),
(186,'YBR81778','存入','bank',500,'2025-03-16 18:18:36',1),
(187,'XRR77997','存入','bank',10000,'2025-03-16 18:28:12',1),
(188,'XRR77997','存入','bank',10000,'2025-03-16 18:28:13',1),
(189,'XRR77997','存入','bank',10000,'2025-03-16 18:28:13',1),
(190,'XRR77997','存入','bank',10000,'2025-03-16 18:28:14',1),
(191,'XRR77997','存入','bank',10000,'2025-03-16 18:28:15',1),
(192,'XRR77997','存入','bank',10000,'2025-03-16 18:28:15',1),
(193,'XRR77997','存入','bank',10000,'2025-03-16 18:28:16',1),
(194,'XRR77997','存入','bank',100000,'2025-03-16 18:28:22',1),
(195,'ICW34676','取出','bank',500,'2025-03-16 18:37:41',0),
(196,'YBR81778','取出','bank',500,'2025-03-16 18:38:07',0),
(197,'XRR77997','取出','bank',400,'2025-03-16 18:48:35',0),
(198,'OZH56762','存入','bank',1000,'2025-03-16 18:48:36',1),
(199,'YBR81778','存入','bank',500,'2025-03-16 18:48:36',1),
(200,'XRR77997','存入','bank',1000,'2025-03-16 18:48:37',1),
(201,'XRR77997','取出','bank',400,'2025-03-16 18:48:38',0),
(202,'XRR77997','取出','bank',400,'2025-03-16 18:48:40',0),
(203,'XRR77997','取出','bank',400,'2025-03-16 19:19:09',0),
(204,'XRR77997','取出','bank',400,'2025-03-16 19:19:14',0),
(205,'XRR77997','取出','bank',400,'2025-03-16 19:19:19',0),
(206,'XRR77997','取出','bank',400,'2025-03-16 19:19:46',0),
(207,'XRR77997','取出','bank',400,'2025-03-16 19:19:49',0),
(208,'XRR77997','取出','bank',400,'2025-03-16 19:19:52',0),
(209,'YBR81778','取出','bank',400,'2025-03-16 19:21:13',0),
(210,'YBR81778','取出','bank',400,'2025-03-16 19:21:20',0),
(211,'YBR81778','取出','bank',400,'2025-03-16 19:26:23',0),
(212,'YBR81778','取出','bank',3250,'2025-03-16 19:26:41',0),
(213,'OZH56762','存入','bank',1000,'2025-03-16 19:42:51',1),
(214,'YBR81778','存入','bank',500,'2025-03-16 19:42:51',1),
(215,'XRR77997','存入','bank',1000,'2025-03-16 19:42:51',1),
(216,'ICW34676','存入','bank',700,'2025-03-16 19:42:51',1),
(217,'OZH56762','存入','bank',1000,'2025-03-16 20:12:51',1),
(218,'ICW34676','存入','bank',700,'2025-03-16 20:12:51',1),
(219,'XRR77997','存入','bank',1000,'2025-03-16 20:12:51',1),
(220,'YBR81778','存入','bank',500,'2025-03-16 20:12:51',1),
(221,'OZH56762','存入','bank',1000,'2025-03-16 20:42:51',1),
(222,'LTI10935','存入','bank',800,'2025-03-16 20:42:51',1),
(223,'XRR77997','存入','bank',1000,'2025-03-16 20:42:51',1),
(224,'ICW34676','存入','bank',700,'2025-03-16 20:42:51',1),
(225,'YBR81778','存入','bank',500,'2025-03-16 20:42:51',1),
(226,'OZH56762','存入','bank',1000,'2025-03-16 21:12:51',1),
(227,'XRR77997','存入','bank',1000,'2025-03-16 21:12:51',1),
(228,'LTI10935','存入','bank',800,'2025-03-16 21:12:51',1),
(229,'ICW34676','存入','bank',700,'2025-03-16 21:12:51',1),
(230,'YBR81778','存入','bank',500,'2025-03-16 21:12:51',1),
(231,'OZH56762','存入','bank',1000,'2025-03-16 21:42:51',1),
(232,'ICW34676','存入','bank',700,'2025-03-16 21:42:51',1),
(233,'YBR81778','存入','bank',500,'2025-03-16 21:42:51',1),
(234,'XRR77997','存入','bank',1000,'2025-03-16 21:42:51',1),
(235,'LTI10935','存入','bank',800,'2025-03-16 21:42:51',1),
(236,'YBR81778','存入','bank',5000,'2025-03-16 22:04:17',1),
(237,'YBR81778','存入','bank',5000,'2025-03-16 22:04:19',1),
(238,'XRR77997','存入','bank',1000,'2025-03-16 22:42:51',1),
(239,'VQR49601','存入','bank',800,'2025-03-16 23:42:51',1),
(240,'VQR49601','存入','bank',800,'2025-03-17 00:12:51',1),
(241,'XRR77997','存入','bank',1000,'2025-03-17 00:12:51',1),
(242,'XRR77997','存入','bank',1000,'2025-03-17 19:12:52',1),
(243,'VQR49601','存入','bank',800,'2025-03-17 19:12:52',1),
(244,'SLG58971','存入','bank',1000,'2025-03-17 19:42:52',1),
(245,'XRR77997','存入','bank',1000,'2025-03-17 19:42:52',1),
(246,'VQR49601','存入','bank',1000,'2025-03-17 19:42:52',1),
(247,'VQR49601','存入','bank',1000,'2025-03-17 20:12:52',1),
(248,'XRR77997','存入','bank',1000,'2025-03-17 20:12:52',1),
(249,'XRR77997','存入','bank',1000,'2025-03-17 21:12:22',1),
(250,'ICW34676','取出','bank',500,'2025-03-17 21:25:40',0),
(251,'OZH56762','存入','bank',1000,'2025-03-17 21:42:22',1),
(252,'ICW34676','存入','bank',700,'2025-03-17 21:42:22',1),
(253,'ICW34676','取出','bank',500,'2025-03-17 21:46:50',0),
(254,'QHK11612','取出','bank',1024,'2025-03-17 22:09:15',0),
(255,'QHK11612','存入','bank',1024,'2025-03-17 22:09:59',1),
(256,'OZH56762','存入','bank',1000,'2025-03-17 22:12:22',1),
(257,'ICW34676','存入','bank',700,'2025-03-17 22:12:22',1),
(258,'QHK11612','取出','bank',3078,'2025-03-17 22:22:30',0),
(259,'QHK11612','取出','bank',1026,'2025-03-17 22:26:02',0),
(260,'YBR81778','存入','bank',500,'2025-03-17 22:42:22',1),
(261,'LTI10935','存入','bank',800,'2025-03-17 22:42:22',1),
(262,'LTI10935','存入','bank',800,'2025-03-17 23:12:22',1),
(263,'VQR49601','存入','bank',1000,'2025-03-17 23:12:22',1),
(264,'YBR81778','存入','bank',500,'2025-03-17 23:12:22',1),
(265,'VQR49601','存入','bank',1000,'2025-03-18 00:08:37',1),
(266,'XRR77997','存入','bank',1000,'2025-03-18 00:08:37',1),
(267,'XRR77997','存入','bank',1000,'2025-03-18 00:38:37',1),
(268,'VQR49601','存入','bank',1000,'2025-03-18 00:38:37',1),
(269,'XRR77997','存入','bank',1000,'2025-03-18 01:08:37',1),
(270,'VQR49601','存入','bank',1000,'2025-03-18 01:08:37',1),
(271,'XRR77997','存入','bank',1000,'2025-03-18 01:38:37',1),
(272,'VQR49601','存入','bank',1000,'2025-03-18 01:38:37',1),
(273,'VQR49601','存入','bank',1000,'2025-03-18 02:08:37',1),
(274,'XRR77997','存入','bank',1000,'2025-03-18 02:08:37',1),
(275,'VCA51839','取出','bank',500,'2025-03-18 13:18:02',0),
(276,'VCV61562','存入','bank',800,'2025-03-18 13:38:38',1),
(277,'VCV61562','存入','bank',800,'2025-03-18 14:08:38',1),
(278,'VCV61562','存入','bank',800,'2025-03-18 14:38:38',1),
(279,'VCV61562','存入','bank',800,'2025-03-18 15:08:38',1),
(280,'VCV61562','存入','bank',800,'2025-03-18 15:38:38',1),
(281,'VCV61562','存入','bank',800,'2025-03-18 16:08:38',1),
(282,'VCV61562','存入','bank',800,'2025-03-18 16:38:38',1),
(283,'VCV61562','存入','bank',800,'2025-03-18 17:08:38',1),
(284,'VCV61562','存入','bank',800,'2025-03-18 17:38:38',1),
(285,'VCV61562','存入','bank',800,'2025-03-18 18:08:38',1),
(286,'VCV61562','存入','bank',800,'2025-03-18 18:38:38',1),
(287,'VCV61562','存入','bank',800,'2025-03-18 19:08:38',1),
(288,'VCV61562','存入','bank',800,'2025-03-18 19:38:38',1),
(289,'YBR81778','取出','bank',1000,'2025-03-18 20:15:24',0),
(290,'OZH56762','存入','bank',1000,'2025-03-18 20:18:07',1),
(291,'ICW34676','存入','bank',700,'2025-03-18 20:18:07',1),
(292,'YBR81778','存入','bank',500,'2025-03-18 20:18:07',1),
(293,'XRR77997','存入','bank',1000,'2025-03-18 20:18:07',1),
(294,'XRR77997','取出','bank',1000,'2025-03-18 20:32:43',0),
(295,'XRR77997','取出','bank',1000,'2025-03-18 20:32:51',0),
(296,'XRR77997','取出','bank',1000,'2025-03-18 20:33:33',0),
(297,'YBR81778','取出','bank',1000,'2025-03-18 20:33:58',0),
(298,'XRR77997','取出','bank',1000,'2025-03-18 20:34:06',0),
(299,'XRR77997','取出','bank',1000,'2025-03-18 20:34:34',0),
(300,'XRR77997','存入','bank',0,'2025-03-18 20:36:34',1),
(301,'ICW34676','取出','bank',0,'2025-03-18 20:36:34',0),
(302,'ICW34676','取出','bank',400,'2025-03-18 20:46:20',0),
(303,'OZH56762','存入','bank',1000,'2025-03-18 21:48:07',1),
(304,'YBR81778','存入','bank',500,'2025-03-18 21:48:07',1),
(305,'VCV61562','存入','bank',800,'2025-03-18 21:48:07',1),
(306,'YBR81778','取出','bank',500,'2025-03-18 22:12:54',0),
(307,'VCV61562','取出','bank',500,'2025-03-18 22:13:21',0),
(308,'YBR81778','存入','bank',500,'2025-03-18 22:18:07',1),
(309,'VCV61562','存入','bank',800,'2025-03-18 22:18:07',1),
(310,'VCV61562','取出','bank',500,'2025-03-18 22:21:00',0),
(311,'VQR49601','存入','bank',1000,'2025-03-18 23:48:07',1),
(312,'QHK11612','存入','bank',1084,'2025-03-18 23:49:28',1),
(313,'QHK11612','取出','bank',1980,'2025-03-18 23:50:44',0),
(314,'VQR49601','存入','bank',1000,'2025-03-19 00:18:07',1),
(315,'XRR77997','存入','bank',0,'2025-03-19 00:59:52',1),
(316,'VCV61562','取出','bank',0,'2025-03-19 00:59:53',0),
(317,'XRR77997','存入','bank',0,'2025-03-19 01:01:26',1),
(318,'QHK11612','取出','bank',0,'2025-03-19 01:01:26',0),
(319,'XRR77997','存入','bank',1000,'2025-03-19 01:17:04',1),
(320,'VQR49601','存入','bank',1000,'2025-03-19 01:17:04',1),
(321,'VCV61562','存入','bank',800,'2025-03-19 01:17:04',1),
(322,'VCV61562','取出','bank',4000,'2025-03-19 01:19:30',0),
(323,'XRR77997','存入','bank',1000,'2025-03-19 01:47:04',1),
(324,'VCV61562','存入','bank',800,'2025-03-19 01:47:04',1),
(325,'YBR81778','存入','bank',500,'2025-03-19 21:13:25',1),
(326,'XRR77997','取出','bank',400,'2025-03-19 21:33:36',0),
(327,'OZH56762','存入','bank',1000,'2025-03-19 21:50:01',1),
(328,'YBR81778','存入','bank',500,'2025-03-19 21:50:02',1),
(329,'LTI10935','存入','bank',800,'2025-03-19 21:50:02',1),
(330,'XRR77997','取出','bank',400,'2025-03-19 22:16:00',0),
(331,'XRR77997','取出','bank',400,'2025-03-19 22:16:06',0),
(332,'XRR77997','取出','bank',400,'2025-03-19 22:16:09',0),
(333,'XRR77997','取出','bank',400,'2025-03-19 22:16:29',0),
(334,'YBR81778','存入','bank',500,'2025-03-19 22:20:02',1),
(335,'LTI10935','存入','bank',800,'2025-03-19 22:20:02',1),
(336,'QHK11612','存入','bank',1000,'2025-03-19 22:20:02',1),
(337,'XRR77997','存入','bank',1000,'2025-03-19 22:20:02',1),
(338,'VQR49601','存入','bank',1000,'2025-03-19 22:20:02',1),
(339,'QHK11612','存入','bank',1000,'2025-03-19 22:50:02',1),
(340,'YBR81778','存入','bank',500,'2025-03-19 22:50:02',1),
(341,'VQR49601','存入','bank',1000,'2025-03-19 22:50:02',1),
(342,'LTI10935','存入','bank',800,'2025-03-19 22:50:02',1),
(343,'XRR77997','存入','bank',1000,'2025-03-19 22:50:02',1),
(344,'YBR81778','存入','bank',500,'2025-03-19 23:20:02',1),
(345,'QHK11612','存入','bank',1000,'2025-03-19 23:20:02',1),
(346,'XRR77997','存入','bank',1000,'2025-03-19 23:20:02',1),
(347,'LTI10935','存入','bank',800,'2025-03-19 23:20:02',1),
(348,'VQR49601','存入','bank',1000,'2025-03-19 23:20:02',1),
(349,'YBR81778','存入','bank',500,'2025-03-19 23:50:02',1),
(350,'XRR77997','存入','bank',500,'2025-03-19 23:50:02',1),
(351,'QHK11612','存入','bank',500,'2025-03-19 23:50:02',1),
(352,'LTI10935','存入','bank',800,'2025-03-19 23:50:02',1),
(353,'VQR49601','存入','bank',1000,'2025-03-19 23:50:02',1),
(354,'QHK11612','存入','bank',250,'2025-03-19 23:53:56',1),
(355,'XRR77997','存入','bank',250,'2025-03-19 23:56:04',1),
(356,'QHK11612','取出','bank',300,'2025-03-20 00:02:36',0),
(357,'QHK11612','取出','bank',300,'2025-03-20 00:02:43',0),
(358,'QHK11612','取出','bank',300,'2025-03-20 00:02:46',0),
(359,'QHK11612','取出','bank',300,'2025-03-20 00:02:48',0),
(360,'QHK11612','取出','bank',300,'2025-03-20 00:02:49',0),
(361,'QHK11612','取出','bank',300,'2025-03-20 00:02:51',0),
(362,'QHK11612','取出','bank',300,'2025-03-20 00:02:54',0),
(363,'QHK11612','取出','bank',890,'2025-03-20 00:03:30',0),
(364,'YBR81778','存入','bank',500,'2025-03-20 00:20:02',1),
(365,'QHK11612','存入','bank',500,'2025-03-20 00:20:02',1),
(366,'XRR77997','存入','bank',500,'2025-03-20 00:20:02',1),
(367,'VQR49601','存入','bank',1000,'2025-03-20 00:20:02',1),
(368,'LTI10935','存入','bank',800,'2025-03-20 00:20:02',1),
(369,'QHK11612','存入','bank',141,'2025-03-20 00:22:27',1),
(370,'QHK11612','存入','bank',250,'2025-03-20 00:22:52',1),
(371,'LTI10935','取出','bank',1000,'2025-03-20 00:36:18',0),
(372,'LTI10935','取出','bank',1000,'2025-03-20 00:36:27',0),
(373,'LTI10935','取出','bank',400,'2025-03-20 00:36:46',0),
(374,'LTI10935','取出','bank',1000,'2025-03-20 00:37:42',0),
(375,'LTI10935','取出','bank',1000,'2025-03-20 00:38:24',0),
(376,'XRR77997','取出','bank',250,'2025-03-20 00:48:17',0),
(377,'QHK11612','取出','bank',250,'2025-03-20 00:48:30',0),
(378,'YBR81778','存入','bank',500,'2025-03-20 00:50:02',1),
(379,'XRR77997','存入','bank',500,'2025-03-20 00:50:02',1),
(380,'LTI10935','存入','bank',500,'2025-03-20 00:50:02',1),
(381,'QHK11612','存入','bank',500,'2025-03-20 00:50:02',1),
(382,'VQR49601','存入','bank',1000,'2025-03-20 00:50:02',1),
(383,'XRR77997','存入','bank',250,'2025-03-20 00:54:37',1),
(384,'YBR81778','存入','bank',500,'2025-03-20 01:20:02',1),
(385,'LTI10935','存入','bank',500,'2025-03-20 01:20:02',1),
(386,'VQR49601','存入','bank',1000,'2025-03-20 01:20:02',1),
(387,'YBR81778','存入','bank',500,'2025-03-20 01:50:02',1),
(388,'YBR81778','存入','bank',500,'2025-03-20 02:20:02',1),
(389,'YBR81778','存入','bank',500,'2025-03-20 02:50:02',1),
(390,'YBR81778','存入','bank',500,'2025-03-20 03:20:02',1),
(391,'YBR81778','存入','bank',500,'2025-03-20 03:50:02',1),
(392,'YBR81778','存入','bank',500,'2025-03-20 04:20:02',1),
(393,'YBR81778','存入','bank',500,'2025-03-20 04:50:02',1),
(394,'YBR81778','存入','bank',500,'2025-03-20 05:20:02',1),
(395,'YBR81778','存入','bank',500,'2025-03-20 05:50:02',1),
(396,'YBR81778','存入','bank',500,'2025-03-20 06:20:02',1),
(397,'YBR81778','存入','bank',500,'2025-03-20 06:50:02',1),
(398,'YBR81778','存入','bank',500,'2025-03-20 07:20:02',1),
(399,'YBR81778','存入','bank',500,'2025-03-20 07:50:02',1),
(400,'YBR81778','存入','bank',500,'2025-03-20 08:20:02',1),
(401,'YBR81778','存入','bank',500,'2025-03-20 08:50:02',1),
(402,'YBR81778','存入','bank',500,'2025-03-20 09:20:02',1),
(403,'YBR81778','存入','bank',500,'2025-03-20 09:50:02',1),
(404,'YBR81778','存入','bank',500,'2025-03-20 10:20:02',1),
(405,'YBR81778','存入','bank',500,'2025-03-20 10:50:02',1),
(406,'YBR81778','存入','bank',500,'2025-03-20 11:20:02',1),
(407,'YBR81778','存入','bank',500,'2025-03-20 11:50:02',1),
(408,'YBR81778','存入','bank',500,'2025-03-20 12:20:02',1),
(409,'YBR81778','存入','bank',500,'2025-03-20 12:50:02',1),
(410,'YBR81778','存入','bank',500,'2025-03-20 13:20:02',1),
(411,'YBR81778','存入','bank',500,'2025-03-20 13:50:02',1),
(412,'YBR81778','存入','bank',500,'2025-03-20 14:20:02',1),
(413,'YBR81778','存入','bank',500,'2025-03-20 14:50:02',1),
(414,'XRR77997','存入','bank',1000,'2025-03-20 17:18:48',1),
(415,'YBR81778','存入','bank',500,'2025-03-20 22:16:55',1),
(416,'VQR49601','存入','bank',1000,'2025-03-20 22:16:55',1),
(417,'YBR81778','存入','bank',500,'2025-03-20 22:46:55',1),
(418,'YBR81778','存入','bank',500,'2025-03-20 23:16:55',1),
(419,'YBR81778','存入','bank',500,'2025-03-20 23:46:55',1),
(420,'QHK11612','存入','bank',500,'2025-03-20 23:46:55',1),
(421,'YBR81778','存入','bank',500,'2025-03-21 00:16:55',1),
(422,'QHK11612','取出','bank',400,'2025-03-21 00:23:26',0),
(423,'QHK11612','取出','bank',400,'2025-03-21 00:23:29',0),
(424,'QHK11612','取出','bank',400,'2025-03-21 00:23:33',0),
(425,'QHK11612','取出','bank',400,'2025-03-21 00:23:36',0),
(426,'QHK11612','取出','bank',400,'2025-03-21 00:23:39',0),
(427,'QHK11612','取出','bank',400,'2025-03-21 00:23:44',0),
(428,'YBR81778','存入','bank',500,'2025-03-21 00:46:55',1),
(429,'VQR49601','存入','bank',1000,'2025-03-21 00:46:55',1),
(430,'YBR81778','存入','bank',500,'2025-03-21 01:16:55',1),
(431,'YBR81778','存入','bank',500,'2025-03-21 01:46:55',1),
(432,'YBR81778','存入','bank',500,'2025-03-21 02:16:55',1),
(433,'YBR81778','存入','bank',500,'2025-03-21 02:46:55',1),
(434,'VQR49601','存入','bank',2215981,'2025-03-21 02:55:30',1),
(435,'VQR49601','取出','bank',2253281,'2025-03-21 02:55:36',0),
(436,'VQR49601','存入','bank',2253281,'2025-03-21 02:55:39',1),
(437,'VQR49601','取出','bank',10000,'2025-03-21 02:56:23',0),
(438,'XRR77997','存入','bank',243746,'2025-03-21 02:56:47',1),
(439,'XRR77997','取出','bank',400,'2025-03-21 03:09:58',0),
(440,'XRR77997','存入','bank',1000,'2025-03-21 15:18:27',1),
(441,'XRR77997','存入','bank',1000,'2025-03-21 16:08:50',1),
(442,'OZH56762','取出','bank',500,'2025-03-21 19:20:52',0),
(443,'OZH56762','取出','bank',500,'2025-03-21 19:21:26',0),
(444,'OZH56762','存入','bank',1000,'2025-03-21 19:31:26',1),
(445,'OZH56762','存入','bank',1000,'2025-03-21 20:01:26',1),
(446,'YBR81778','存入','bank',500,'2025-03-21 20:01:26',1),
(447,'OZH56762','取出','bank',5000,'2025-03-21 20:03:53',0),
(448,'OZH56762','取出','bank',1200,'2025-03-21 20:04:16',0),
(449,'OZH56762','取出','bank',700,'2025-03-21 20:04:19',0),
(450,'OZH56762','取出','bank',2000,'2025-03-21 20:04:22',0),
(451,'OZH56762','存入','bank',500,'2025-03-21 20:31:26',1),
(452,'YBR81778','存入','bank',500,'2025-03-21 20:31:26',1),
(453,'XRR77997','存入','bank',1000,'2025-03-21 20:31:26',1),
(454,'ICW34676','取出','bank',400,'2025-03-21 20:38:19',0),
(455,'ICW34676','取出','bank',1000,'2025-03-21 20:38:53',0),
(456,'ICW34676','取出','bank',400,'2025-03-21 20:39:57',0),
(457,'YBR81778','存入','bank',500,'2025-03-21 21:01:26',1),
(458,'OZH56762','存入','bank',500,'2025-03-21 21:01:26',1),
(459,'XRR77997','存入','bank',1000,'2025-03-21 21:01:26',1),
(460,'YBR81778','存入','bank',500,'2025-03-21 21:36:15',1),
(461,'OZH56762','存入','bank',500,'2025-03-21 21:36:15',1),
(462,'LTI10935','存入','bank',500,'2025-03-21 21:36:15',1),
(463,'LTI10935','取出','bank',500,'2025-03-21 21:54:57',0),
(464,'XRR77997','取出','bank',15000,'2025-03-21 22:06:24',0),
(465,'XRR77997','取出','bank',0,'2025-03-21 22:07:07',0),
(466,'OZH56762','存入','bank',500,'2025-03-21 22:27:08',1),
(467,'YBR81778','存入','bank',500,'2025-03-21 22:27:08',1),
(468,'XRR77997','存入','bank',1000,'2025-03-21 22:27:08',1),
(469,'LTI10935','存入','bank',500,'2025-03-21 22:27:08',1),
(470,'LTI10935','存入','bank',500,'2025-03-21 22:57:08',1),
(471,'XRR77997','存入','bank',1000,'2025-03-21 22:57:08',1),
(472,'OZH56762','存入','bank',500,'2025-03-21 22:57:08',1),
(473,'YBR81778','存入','bank',500,'2025-03-21 22:57:08',1),
(474,'TNW15994','取出','bank',300,'2025-03-21 23:41:03',0),
(475,'OZH56762','存入','bank',500,'2025-03-21 23:41:21',1),
(476,'OZH56762','存入','bank',800,'2025-03-22 00:11:21',1),
(477,'YBR81778','存入','bank',500,'2025-03-22 00:11:21',1),
(478,'QHK11612','存入','bank',800,'2025-03-22 00:11:21',1),
(479,'LTI10935','存入','bank',800,'2025-03-22 00:11:21',1),
(480,'XRR77997','存入','bank',1000,'2025-03-22 00:11:21',1),
(481,'OZH56762','取出','bank',500,'2025-03-22 00:18:38',0),
(482,'OZH56762','取出','bank',500,'2025-03-22 00:19:26',0),
(483,'OZH56762','取出','bank',500,'2025-03-22 00:20:13',0),
(484,'OZH56762','取出','bank',500,'2025-03-22 00:20:31',0),
(485,'LTI10935','取出','bank',15000,'2025-03-22 00:20:48',0),
(486,'XRR77997','取出','bank',500,'2025-03-22 00:32:46',0),
(487,'QHK11612','取出','bank',500,'2025-03-22 00:35:31',0),
(488,'YBR81778','存入','bank',500,'2025-03-22 00:41:21',1),
(489,'YBR81778','存入','bank',500,'2025-03-22 01:11:21',1),
(490,'YBR81778','存入','bank',500,'2025-03-22 01:41:21',1),
(491,'YBR81778','存入','bank',500,'2025-03-22 02:11:21',1),
(492,'YBR81778','存入','bank',500,'2025-03-22 02:41:21',1),
(493,'YBR81778','存入','bank',500,'2025-03-22 03:11:21',1),
(494,'YBR81778','存入','bank',500,'2025-03-22 03:41:21',1),
(495,'YBR81778','存入','bank',500,'2025-03-22 04:11:21',1),
(496,'YBR81778','存入','bank',500,'2025-03-22 04:41:21',1),
(497,'YBR81778','存入','bank',500,'2025-03-22 05:11:21',1),
(498,'YBR81778','存入','bank',500,'2025-03-22 05:41:21',1),
(499,'YBR81778','存入','bank',500,'2025-03-22 06:11:22',1),
(500,'YBR81778','存入','bank',500,'2025-03-22 06:41:22',1),
(501,'YBR81778','存入','bank',500,'2025-03-22 07:11:22',1),
(502,'YBR81778','存入','bank',500,'2025-03-22 07:41:22',1),
(503,'YBR81778','存入','bank',500,'2025-03-22 08:11:22',1),
(504,'YBR81778','存入','bank',500,'2025-03-22 08:41:22',1),
(505,'YBR81778','存入','bank',500,'2025-03-22 09:11:22',1),
(506,'YBR81778','存入','bank',500,'2025-03-22 09:41:22',1),
(507,'YBR81778','存入','bank',500,'2025-03-22 10:11:22',1),
(508,'YBR81778','存入','bank',500,'2025-03-22 10:41:22',1),
(509,'YBR81778','存入','bank',500,'2025-03-22 11:11:22',1),
(510,'OZH56762','取出','bank',40,'2025-03-22 12:09:07',0),
(511,'OZH56762','取出','bank',40,'2025-03-22 12:09:07',0),
(512,'OZH56762','取出','bank',40,'2025-03-22 12:09:07',0),
(513,'OZH56762','取出','bank',40,'2025-03-22 12:09:07',0),
(514,'OZH56762','取出','bank',40,'2025-03-22 12:09:07',0),
(515,'OZH56762','取出','bank',40,'2025-03-22 12:09:08',0),
(516,'OZH56762','取出','bank',40,'2025-03-22 12:09:09',0),
(517,'OZH56762','取出','bank',40,'2025-03-22 12:09:10',0),
(518,'OZH56762','取出','bank',40,'2025-03-22 12:09:10',0),
(519,'OZH56762','取出','bank',40,'2025-03-22 12:09:10',0),
(520,'OZH56762','取出','bank',40,'2025-03-22 12:09:10',0),
(521,'OZH56762','取出','bank',40,'2025-03-22 12:09:11',0),
(522,'OZH56762','取出','bank',25,'2025-03-22 12:09:12',0),
(523,'OZH56762','取出','bank',25,'2025-03-22 12:09:12',0),
(524,'OZH56762','取出','bank',25,'2025-03-22 12:09:12',0),
(525,'OZH56762','取出','bank',25,'2025-03-22 12:09:12',0),
(526,'OZH56762','取出','bank',25,'2025-03-22 12:09:13',0),
(527,'OZH56762','取出','bank',25,'2025-03-22 12:09:14',0),
(528,'OZH56762','取出','bank',25,'2025-03-22 12:09:14',0),
(529,'OZH56762','取出','bank',25,'2025-03-22 12:09:14',0),
(530,'OZH56762','取出','bank',500,'2025-03-22 12:09:17',0),
(531,'OZH56762','取出','bank',40,'2025-03-22 12:09:19',0),
(532,'OZH56762','取出','bank',10,'2025-03-22 12:09:20',0),
(533,'OZH56762','取出','bank',10,'2025-03-22 12:09:20',0),
(534,'OZH56762','取出','bank',10,'2025-03-22 12:09:20',0),
(535,'OZH56762','取出','bank',10,'2025-03-22 12:09:21',0),
(536,'OZH56762','取出','bank',10,'2025-03-22 12:09:21',0),
(537,'OZH56762','取出','bank',10,'2025-03-22 12:09:21',0),
(538,'OZH56762','存入','bank',800,'2025-03-22 12:11:22',1),
(539,'OZH56762','取出','bank',10,'2025-03-22 12:12:51',0),
(540,'OZH56762','取出','bank',10,'2025-03-22 12:12:51',0),
(541,'OZH56762','取出','bank',10,'2025-03-22 12:12:51',0),
(542,'OZH56762','取出','bank',10,'2025-03-22 12:12:51',0),
(543,'OZH56762','取出','bank',40,'2025-03-22 12:13:49',0),
(544,'OZH56762','取出','bank',40,'2025-03-22 12:13:50',0),
(545,'OZH56762','取出','bank',10,'2025-03-22 12:13:51',0),
(546,'OZH56762','取出','bank',10,'2025-03-22 12:13:51',0),
(547,'OZH56762','取出','bank',10,'2025-03-22 12:13:51',0),
(548,'OZH56762','取出','bank',10,'2025-03-22 12:13:52',0),
(549,'OZH56762','取出','bank',10,'2025-03-22 12:13:52',0),
(550,'OZH56762','取出','bank',10,'2025-03-22 12:13:52',0),
(551,'OZH56762','取出','bank',10,'2025-03-22 12:13:53',0),
(552,'OZH56762','取出','bank',10,'2025-03-22 12:13:53',0),
(553,'OZH56762','取出','bank',10,'2025-03-22 12:13:54',0),
(554,'OZH56762','取出','bank',10,'2025-03-22 12:13:54',0),
(555,'OZH56762','取出','bank',10,'2025-03-22 12:13:54',0),
(556,'OZH56762','取出','bank',10,'2025-03-22 12:13:54',0),
(557,'OZH56762','取出','bank',25,'2025-03-22 12:13:55',0),
(558,'OZH56762','取出','bank',25,'2025-03-22 12:13:55',0),
(559,'OZH56762','取出','bank',25,'2025-03-22 12:13:56',0),
(560,'OZH56762','取出','bank',25,'2025-03-22 12:13:56',0),
(561,'OZH56762','取出','bank',25,'2025-03-22 12:13:56',0),
(562,'OZH56762','取出','bank',25,'2025-03-22 12:13:58',0),
(563,'OZH56762','取出','bank',25,'2025-03-22 12:15:01',0),
(564,'OZH56762','取出','bank',25,'2025-03-22 12:15:01',0),
(565,'OZH56762','取出','bank',25,'2025-03-22 12:15:01',0),
(566,'OZH56762','取出','bank',25,'2025-03-22 12:15:02',0),
(567,'OZH56762','取出','bank',25,'2025-03-22 12:15:02',0),
(568,'OZH56762','取出','bank',25,'2025-03-22 12:15:02',0),
(569,'OZH56762','取出','bank',25,'2025-03-22 12:15:02',0),
(570,'OZH56762','取出','bank',25,'2025-03-22 12:15:03',0),
(571,'OZH56762','取出','bank',25,'2025-03-22 12:15:04',0),
(572,'OZH56762','取出','bank',25,'2025-03-22 12:17:42',0),
(573,'OZH56762','取出','bank',25,'2025-03-22 12:17:42',0),
(574,'OZH56762','取出','bank',25,'2025-03-22 12:17:43',0),
(575,'OZH56762','取出','bank',25,'2025-03-22 12:18:06',0),
(576,'OZH56762','取出','bank',25,'2025-03-22 12:18:06',0),
(577,'OZH56762','取出','bank',25,'2025-03-22 12:18:07',0),
(578,'OZH56762','取出','bank',25,'2025-03-22 12:18:14',0),
(579,'OZH56762','存入','bank',800,'2025-03-22 12:41:22',1),
(580,'OZH56762','存入','bank',800,'2025-03-22 13:11:22',1),
(581,'OZH56762','存入','bank',800,'2025-03-22 13:41:22',1),
(582,'OZH56762','存入','bank',800,'2025-03-22 14:11:22',1),
(583,'OZH56762','存入','bank',800,'2025-03-22 14:41:22',1),
(584,'OZH56762','存入','bank',800,'2025-03-22 15:11:22',1),
(585,'OZH56762','存入','bank',800,'2025-03-22 15:41:22',1),
(586,'OZH56762','存入','bank',800,'2025-03-22 16:11:22',1),
(587,'OZH56762','存入','bank',800,'2025-03-22 16:41:22',1),
(588,'OZH56762','取出','bank',2000,'2025-03-22 16:42:40',0),
(589,'OZH56762','取出','bank',20,'2025-03-22 16:42:43',0),
(590,'OZH56762','取出','bank',20,'2025-03-22 16:42:43',0),
(591,'OZH56762','取出','bank',20,'2025-03-22 16:42:44',0),
(592,'OZH56762','取出','bank',20,'2025-03-22 16:43:26',0),
(593,'OZH56762','取出','bank',20,'2025-03-22 16:43:26',0),
(594,'OZH56762','取出','bank',20,'2025-03-22 16:43:26',0),
(595,'OZH56762','取出','bank',20,'2025-03-22 16:43:27',0),
(596,'OZH56762','取出','bank',20,'2025-03-22 16:43:27',0),
(597,'OZH56762','取出','bank',20,'2025-03-22 16:43:27',0),
(598,'OZH56762','取出','bank',20,'2025-03-22 16:43:27',0),
(599,'OZH56762','取出','bank',20,'2025-03-22 16:44:25',0),
(600,'OZH56762','取出','bank',20,'2025-03-22 16:44:25',0),
(601,'OZH56762','取出','bank',20,'2025-03-22 16:44:25',0),
(602,'OZH56762','取出','bank',20,'2025-03-22 16:44:26',0),
(603,'OZH56762','取出','bank',20,'2025-03-22 16:44:26',0),
(604,'OZH56762','取出','bank',20,'2025-03-22 16:44:26',0),
(605,'OZH56762','取出','bank',20,'2025-03-22 16:44:27',0),
(606,'OZH56762','取出','bank',20,'2025-03-22 16:44:27',0),
(607,'OZH56762','取出','bank',300,'2025-03-22 16:45:18',0),
(608,'OZH56762','取出','bank',300,'2025-03-22 16:45:19',0),
(609,'OZH56762','存入','bank',800,'2025-03-22 17:11:22',1),
(610,'OZH56762','存入','bank',800,'2025-03-22 17:41:22',1),
(611,'OZH56762','存入','bank',800,'2025-03-22 18:11:22',1),
(612,'YBR81778','存入','bank',500,'2025-03-22 18:11:22',1),
(613,'OZH56762','存入','bank',800,'2025-03-22 18:41:22',1),
(614,'YBR81778','存入','bank',500,'2025-03-22 18:41:22',1),
(615,'YBR81778','取出','bank',300,'2025-03-22 18:44:25',0),
(616,'OZH56762','存入','bank',800,'2025-03-22 19:11:22',1),
(617,'YBR81778','存入','bank',500,'2025-03-22 19:11:22',1),
(618,'ICW34676','存入','bank',700,'2025-03-22 19:11:22',1),
(619,'OZH56762','存入','bank',800,'2025-03-22 19:41:22',1),
(620,'YBR81778','存入','bank',500,'2025-03-22 19:41:22',1),
(621,'ICW34676','存入','bank',700,'2025-03-22 19:41:22',1),
(622,'OZH56762','取出','bank',20,'2025-03-22 19:42:36',0),
(623,'OZH56762','取出','bank',40,'2025-03-22 19:42:38',0),
(624,'OZH56762','取出','bank',10,'2025-03-22 19:42:41',0),
(625,'OZH56762','取出','bank',10,'2025-03-22 19:42:42',0),
(626,'OZH56762','存入','bank',800,'2025-03-22 20:34:11',1),
(627,'QHK11612','存入','bank',1129,'2025-03-22 21:52:13',1),
(628,'QHK11612','取出','bank',2730,'2025-03-22 21:52:24',0),
(629,'OZH56762','存入','bank',800,'2025-03-22 22:16:19',1),
(630,'YBR81778','存入','bank',500,'2025-03-22 22:16:19',1),
(631,'LTI10935','存入','bank',800,'2025-03-22 22:16:19',1),
(632,'YBR81778','取出','bank',1000,'2025-03-22 22:20:48',0),
(633,'ICW34676','取出','bank',400,'2025-03-22 23:07:00',0),
(634,'XRR77997','取出','bank',1000,'2025-03-22 23:07:21',0),
(635,'ICW34676','取出','bank',400,'2025-03-22 23:07:46',0),
(636,'WZK17535','取出','bank',1000,'2025-03-22 23:08:25',0),
(637,'QHK11612','存入','bank',5000,'2025-03-22 23:08:31',1),
(638,'ICW34676','取出','bank',400,'2025-03-22 23:08:37',0),
(639,'ICW34676','取出','bank',1000,'2025-03-22 23:09:03',0),
(640,'ICW34676','取出','bank',1000,'2025-03-22 23:16:52',0),
(641,'OZH56762','存入','bank',800,'2025-03-22 23:23:31',1),
(642,'QHK11612','存入','bank',800,'2025-03-22 23:23:31',1),
(643,'XRR77997','存入','bank',1000,'2025-03-22 23:23:31',1),
(644,'ICW34676','存入','bank',700,'2025-03-22 23:23:31',1),
(645,'YBR81778','存入','bank',500,'2025-03-22 23:23:31',1),
(646,'XRR77997','存入','bank',0,'2025-03-22 23:50:48',1),
(647,'VQR49601','取出','bank',0,'2025-03-22 23:50:48',0),
(648,'XRR77997','存入','bank',1000,'2025-03-22 23:53:31',1),
(649,'QHK11612','存入','bank',800,'2025-03-22 23:53:31',1),
(650,'YBR81778','存入','bank',500,'2025-03-22 23:53:31',1),
(651,'VQR49601','存入','bank',1000,'2025-03-22 23:53:31',1),
(652,'ICW34676','存入','bank',700,'2025-03-22 23:53:31',1),
(653,'VQR49601','取出','bank',1000,'2025-03-22 23:54:50',0),
(654,'VQR49601','取出','bank',1000,'2025-03-22 23:54:55',0),
(655,'XRR77997','存入','bank',1000,'2025-03-23 00:23:31',1),
(656,'YBR81778','存入','bank',500,'2025-03-23 00:53:31',1),
(657,'XRR77997','存入','bank',1000,'2025-03-23 00:53:31',1),
(658,'YBR81778','存入','bank',500,'2025-03-23 01:23:31',1),
(659,'XRR77997','存入','bank',1000,'2025-03-23 01:23:31',1),
(660,'YBR81778','存入','bank',500,'2025-03-23 01:53:31',1),
(661,'XRR77997','存入','bank',1000,'2025-03-23 01:53:31',1),
(662,'YBR81778','存入','bank',500,'2025-03-23 02:23:31',1),
(663,'XRR77997','存入','bank',1000,'2025-03-23 02:23:31',1),
(664,'YBR81778','存入','bank',500,'2025-03-23 02:53:31',1),
(665,'YBR81778','存入','bank',500,'2025-03-23 03:23:31',1),
(666,'YBR81778','存入','bank',500,'2025-03-23 03:53:31',1),
(667,'YBR81778','存入','bank',500,'2025-03-23 04:23:31',1),
(668,'YBR81778','存入','bank',500,'2025-03-23 04:53:31',1),
(669,'YBR81778','存入','bank',500,'2025-03-23 05:23:31',1),
(670,'YBR81778','存入','bank',500,'2025-03-23 05:53:31',1),
(671,'YBR81778','存入','bank',500,'2025-03-23 06:23:31',1),
(672,'YBR81778','存入','bank',5000,'2025-03-23 06:35:50',1),
(673,'YBR81778','存入','bank',500,'2025-03-23 06:53:31',1),
(674,'YBR81778','存入','bank',500,'2025-03-23 07:23:31',1),
(675,'YBR81778','存入','bank',500,'2025-03-23 07:53:31',1),
(676,'YBR81778','存入','bank',500,'2025-03-23 08:23:31',1),
(677,'YBR81778','存入','bank',500,'2025-03-23 08:53:31',1),
(678,'YBR81778','存入','bank',500,'2025-03-23 09:23:31',1),
(679,'YBR81778','存入','bank',500,'2025-03-23 09:53:31',1),
(680,'YBR81778','存入','bank',500,'2025-03-23 10:23:31',1),
(681,'YBR81778','存入','bank',500,'2025-03-23 10:53:31',1),
(682,'YBR81778','存入','bank',500,'2025-03-23 14:53:31',1),
(683,'OZH56762','取出','bank',5000,'2025-03-23 17:05:39',0),
(684,'OZH56762','存入','bank',800,'2025-03-23 17:11:39',1),
(685,'OZH56762','存入','bank',800,'2025-03-23 17:41:39',1),
(686,'OZH56762','存入','bank',800,'2025-03-23 18:11:40',1),
(687,'YBR81778','存入','bank',500,'2025-03-23 18:11:40',1),
(688,'YBR81778','取出','bank',15000,'2025-03-23 18:18:41',0),
(689,'YBR81778','取出','bank',400,'2025-03-23 18:18:59',0),
(690,'OZH56762','存入','bank',800,'2025-03-23 18:41:40',1),
(691,'YBR81778','存入','bank',500,'2025-03-23 18:41:40',1),
(692,'OZH56762','存入','bank',800,'2025-03-23 19:11:40',1),
(693,'YBR81778','存入','bank',500,'2025-03-23 19:11:40',1),
(694,'YBR81778','存入','bank',500,'2025-03-23 19:41:40',1),
(695,'YBR81778','存入','bank',1000,'2025-03-23 19:46:25',1),
(696,'CCU80978','取出','bank',500,'2025-03-23 20:09:15',0),
(697,'YBR81778','存入','bank',500,'2025-03-23 20:11:40',1),
(698,'YBR81778','取出','bank',2000,'2025-03-23 20:13:05',0),
(699,'YBR81778','存入','bank',500,'2025-03-23 20:41:40',1),
(700,'YBR81778','存入','bank',500,'2025-03-23 21:11:40',1),
(701,'KZY58745','存入','bank',1000,'2025-03-23 23:01:35',1),
(702,'XRR77997','取出','bank',1000,'2025-03-23 23:30:42',0),
(703,'XRR77997','取出','bank',1000,'2025-03-23 23:30:55',0),
(704,'XRR77997','取出','bank',15000,'2025-03-23 23:30:59',0),
(705,'XRR77997','存入','bank',1000,'2025-03-23 23:31:36',1),
(706,'QHK11612','存入','bank',800,'2025-03-23 23:31:36',1),
(707,'GID66771','取出','bank',500,'2025-03-23 23:36:32',0),
(708,'VQR49601','取出','bank',1000,'2025-03-23 23:45:12',0),
(709,'QHK11612','取出','bank',200,'2025-03-23 23:57:01',0),
(710,'QHK11612','取出','bank',200,'2025-03-23 23:57:03',0),
(711,'QHK11612','取出','bank',200,'2025-03-23 23:57:03',0),
(712,'QHK11612','取出','bank',200,'2025-03-23 23:57:08',0),
(713,'QHK11612','取出','bank',200,'2025-03-23 23:57:18',0),
(714,'QHK11612','取出','bank',200,'2025-03-23 23:57:20',0),
(715,'QHK11612','取出','bank',200,'2025-03-23 23:57:21',0),
(716,'QHK11612','取出','bank',200,'2025-03-23 23:57:21',0),
(717,'QHK11612','取出','bank',200,'2025-03-23 23:57:22',0),
(718,'QHK11612','取出','bank',200,'2025-03-23 23:57:22',0),
(719,'QHK11612','取出','bank',200,'2025-03-23 23:57:22',0),
(720,'QHK11612','取出','bank',200,'2025-03-23 23:57:22',0),
(721,'QHK11612','取出','bank',200,'2025-03-23 23:57:22',0),
(722,'QHK11612','取出','bank',200,'2025-03-23 23:57:23',0),
(723,'QHK11612','取出','bank',200,'2025-03-23 23:57:23',0),
(724,'QHK11612','取出','bank',200,'2025-03-23 23:57:23',0),
(725,'QHK11612','取出','bank',200,'2025-03-23 23:57:23',0),
(726,'QHK11612','取出','bank',200,'2025-03-23 23:57:23',0),
(727,'QHK11612','取出','bank',200,'2025-03-23 23:57:24',0),
(728,'QHK11612','取出','bank',200,'2025-03-23 23:57:24',0),
(729,'QHK11612','取出','bank',2000,'2025-03-23 23:58:22',0),
(730,'QHK11612','存入','bank',800,'2025-03-24 00:01:36',1),
(731,'VQR49601','存入','bank',1000,'2025-03-24 00:01:36',1),
(732,'QHK11612','取出','bank',1500,'2025-03-24 00:14:17',0),
(733,'XRR77997','取出','bank',290,'2025-03-24 00:36:43',0),
(734,'VQR49601','存入','bank',1000,'2025-03-24 01:00:58',1),
(735,'XRR77997','存入','bank',1000,'2025-03-24 01:00:58',1),
(736,'YBR81778','存入','bank',500,'2025-03-24 06:30:58',1),
(737,'YBR81778','存入','bank',500,'2025-03-24 07:00:58',1),
(738,'YBR81778','存入','bank',500,'2025-03-24 07:30:58',1),
(739,'YBR81778','存入','bank',500,'2025-03-24 08:00:58',1),
(740,'YBR81778','存入','bank',500,'2025-03-24 08:30:58',1),
(741,'YBR81778','存入','bank',500,'2025-03-24 09:00:58',1),
(742,'YBR81778','存入','bank',500,'2025-03-24 09:30:58',1),
(743,'VCV61562','存入','bank',800,'2025-03-24 09:30:58',1),
(744,'VCV61562','取出','bank',14400,'2025-03-24 09:41:24',0),
(745,'YBR81778','存入','bank',500,'2025-03-24 10:00:58',1),
(746,'VCV61562','存入','bank',800,'2025-03-24 10:00:58',1),
(747,'YBR81778','存入','bank',500,'2025-03-24 10:30:58',1),
(748,'VCV61562','存入','bank',800,'2025-03-24 10:30:58',1),
(749,'YBR81778','存入','bank',500,'2025-03-24 11:00:58',1),
(750,'VCV61562','存入','bank',800,'2025-03-24 11:00:58',1),
(751,'YBR81778','存入','bank',500,'2025-03-24 11:30:58',1),
(752,'YBR81778','存入','bank',500,'2025-03-24 12:00:58',1),
(753,'YBR81778','存入','bank',500,'2025-03-24 12:30:58',1),
(754,'YBR81778','存入','bank',500,'2025-03-24 13:00:58',1),
(755,'YBR81778','存入','bank',500,'2025-03-24 13:30:58',1),
(756,'YBR81778','存入','bank',500,'2025-03-24 14:00:58',1),
(757,'YBR81778','存入','bank',500,'2025-03-24 14:30:58',1),
(758,'YBR81778','存入','bank',500,'2025-03-24 15:00:58',1),
(759,'YBR81778','存入','bank',500,'2025-03-24 15:30:58',1),
(760,'YBR81778','存入','bank',500,'2025-03-24 16:00:58',1),
(761,'YBR81778','存入','bank',500,'2025-03-24 16:30:58',1),
(762,'YBR81778','存入','bank',500,'2025-03-24 17:00:58',1),
(763,'YBR81778','存入','bank',500,'2025-03-24 17:30:58',1),
(764,'JJX03484','取出','bank',1371,'2025-03-24 17:55:29',0),
(765,'YBR81778','存入','bank',500,'2025-03-24 18:00:58',1),
(766,'OZH56762','存入','bank',800,'2025-03-24 18:30:58',1),
(767,'YBR81778','存入','bank',500,'2025-03-24 18:30:58',1),
(768,'OZH56762','取出','bank',400,'2025-03-24 18:53:06',0),
(769,'OZH56762','取出','bank',2000,'2025-03-24 18:53:45',0),
(770,'OZH56762','取出','bank',400,'2025-03-24 18:53:51',0),
(771,'OZH56762','取出','bank',400,'2025-03-24 18:53:52',0),
(772,'CDV27651','取出','bank',500,'2025-03-24 18:59:06',0),
(773,'JJX03484','取出','bank',500,'2025-03-24 19:00:19',0),
(774,'CIZ48115','取出','bank',500,'2025-03-24 19:00:27',0),
(775,'OZH56762','存入','bank',800,'2025-03-24 19:00:58',1),
(776,'YBR81778','存入','bank',500,'2025-03-24 19:00:58',1),
(777,'CIZ48115','取出','bank',500,'2025-03-24 19:01:58',0),
(778,'CDV27651','取出','bank',500,'2025-03-24 19:06:42',0),
(779,'OZH56762','存入','bank',800,'2025-03-24 19:30:58',1),
(780,'YBR81778','存入','bank',500,'2025-03-24 19:30:59',1),
(781,'YBR81778','存入','bank',500,'2025-03-24 20:00:58',1),
(782,'OZH56762','存入','bank',800,'2025-03-24 20:00:58',1),
(783,'XRR77997','存入','bank',1000,'2025-03-24 20:00:59',1),
(784,'VCV61562','存入','bank',800,'2025-03-24 20:00:59',1),
(785,'OZH56762','存入','bank',800,'2025-03-24 20:30:58',1),
(786,'YBR81778','存入','bank',500,'2025-03-24 20:30:58',1),
(787,'KZY58745','存入','bank',1000,'2025-03-24 20:30:59',1),
(788,'WZK17535','存入','bank',800,'2025-03-24 20:30:59',1),
(789,'VCV61562','存入','bank',800,'2025-03-24 20:30:59',1),
(790,'VCV61562','存入','bank',800,'2025-03-24 21:00:59',1),
(791,'YBR81778','存入','bank',500,'2025-03-24 21:00:59',1),
(792,'VQR49601','取出','bank',2243281,'2025-03-24 21:04:09',0),
(793,'GID66771','存入','bank',10000,'2025-03-24 21:08:00',1),
(794,'GID66771','存入','bank',10000,'2025-03-24 21:08:01',1),
(795,'GID66771','存入','bank',10000,'2025-03-24 21:08:03',1),
(796,'GID66771','存入','bank',10000,'2025-03-24 21:08:04',1),
(797,'GID66771','存入','bank',10000,'2025-03-24 21:08:04',1),
(798,'GID66771','存入','bank',10000,'2025-03-24 21:08:04',1),
(799,'GID66771','存入','bank',10000,'2025-03-24 21:08:04',1),
(800,'GID66771','存入','bank',10000,'2025-03-24 21:08:06',1),
(801,'GID66771','存入','bank',10000,'2025-03-24 21:08:06',1),
(802,'GID66771','存入','bank',10000,'2025-03-24 21:08:06',1),
(803,'YBR81778','存入','bank',10000,'2025-03-24 21:08:08',1),
(804,'GID66771','存入','bank',2000,'2025-03-24 21:08:18',1),
(805,'GID66771','取出','bank',10000,'2025-03-24 21:08:34',0),
(806,'GID66771','取出','bank',10000,'2025-03-24 21:08:34',0),
(807,'GID66771','取出','bank',10000,'2025-03-24 21:08:34',0),
(808,'GID66771','取出','bank',10000,'2025-03-24 21:08:34',0),
(809,'GID66771','取出','bank',10000,'2025-03-24 21:08:34',0),
(810,'GID66771','取出','bank',10000,'2025-03-24 21:08:34',0),
(811,'GID66771','取出','bank',10000,'2025-03-24 21:08:34',0),
(812,'GID66771','取出','bank',10000,'2025-03-24 21:08:34',0),
(813,'GID66771','取出','bank',10000,'2025-03-24 21:08:35',0),
(814,'GID66771','取出','bank',10000,'2025-03-24 21:08:35',0),
(815,'GID66771','存入','bank',10000,'2025-03-24 21:08:37',1),
(816,'GID66771','存入','bank',10000,'2025-03-24 21:08:37',1),
(817,'GID66771','存入','bank',10000,'2025-03-24 21:08:37',1),
(818,'GID66771','存入','bank',10000,'2025-03-24 21:08:38',1),
(819,'GID66771','存入','bank',10000,'2025-03-24 21:08:38',1),
(820,'GID66771','存入','bank',10000,'2025-03-24 21:08:38',1),
(821,'GID66771','存入','bank',10000,'2025-03-24 21:08:38',1),
(822,'GID66771','存入','bank',10000,'2025-03-24 21:08:38',1),
(823,'GID66771','存入','bank',10000,'2025-03-24 21:08:38',1),
(824,'GID66771','存入','bank',10000,'2025-03-24 21:08:39',1),
(825,'YBR81778','存入','bank',90000,'2025-03-24 21:08:42',1),
(826,'GID66771','取出','bank',106500,'2025-03-24 21:10:01',0),
(827,'GID66771','存入','bank',106596,'2025-03-24 21:10:02',1),
(828,'GID66771','取出','bank',106596,'2025-03-24 21:10:04',0),
(829,'GID66771','存入','bank',106596,'2025-03-24 21:10:04',1),
(830,'GID66771','取出','bank',0,'2025-03-24 21:10:04',0),
(831,'GID66771','存入','bank',0,'2025-03-24 21:10:04',1),
(832,'GID66771','取出','bank',106596,'2025-03-24 21:10:04',0),
(833,'GID66771','存入','bank',106596,'2025-03-24 21:10:05',1),
(834,'GID66771','取出','bank',106596,'2025-03-24 21:10:05',0),
(835,'GID66771','存入','bank',106596,'2025-03-24 21:10:05',1),
(836,'GID66771','取出','bank',106596,'2025-03-24 21:10:05',0),
(837,'GID66771','取出','bank',0,'2025-03-24 21:10:06',0),
(838,'GID66771','取出','bank',0,'2025-03-24 21:10:07',0),
(839,'GID66771','取出','bank',0,'2025-03-24 21:10:07',0),
(840,'GID66771','取出','bank',0,'2025-03-24 21:10:08',0),
(841,'GID66771','存入','bank',106596,'2025-03-24 21:10:08',1),
(842,'GID66771','取出','bank',106596,'2025-03-24 21:10:08',0),
(843,'GID66771','存入','bank',106596,'2025-03-24 21:10:09',1),
(844,'GID66771','取出','bank',106596,'2025-03-24 21:10:09',0),
(845,'GID66771','取出','bank',0,'2025-03-24 21:10:09',0),
(846,'GID66771','存入','bank',106596,'2025-03-24 21:10:09',1),
(847,'GID66771','取出','bank',106596,'2025-03-24 21:10:10',0),
(848,'GID66771','取出','bank',0,'2025-03-24 21:10:10',0),
(849,'GID66771','存入','bank',106596,'2025-03-24 21:10:10',1),
(850,'GID66771','取出','bank',106596,'2025-03-24 21:10:10',0),
(851,'GID66771','取出','bank',0,'2025-03-24 21:10:10',0),
(852,'GID66771','存入','bank',106596,'2025-03-24 21:10:11',1),
(853,'GID66771','取出','bank',106596,'2025-03-24 21:10:11',0),
(854,'GID66771','取出','bank',0,'2025-03-24 21:10:11',0),
(855,'GID66771','取出','bank',0,'2025-03-24 21:10:12',0),
(856,'GID66771','取出','bank',0,'2025-03-24 21:10:12',0),
(857,'GID66771','取出','bank',0,'2025-03-24 21:10:12',0),
(858,'GID66771','存入','bank',106596,'2025-03-24 21:10:12',1),
(859,'GID66771','存入','bank',0,'2025-03-24 21:10:13',1),
(860,'GID66771','取出','bank',106596,'2025-03-24 21:10:13',0),
(861,'GID66771','取出','bank',0,'2025-03-24 21:10:13',0),
(862,'GID66771','存入','bank',106596,'2025-03-24 21:10:13',1),
(863,'GID66771','取出','bank',106596,'2025-03-24 21:10:14',0),
(864,'CDV27651','存入','bank',10000,'2025-03-24 21:10:14',1),
(865,'GID66771','取出','bank',0,'2025-03-24 21:10:14',0),
(866,'GID66771','取出','bank',0,'2025-03-24 21:10:15',0),
(867,'GID66771','取出','bank',0,'2025-03-24 21:10:15',0),
(868,'GID66771','取出','bank',0,'2025-03-24 21:10:16',0),
(869,'GID66771','取出','bank',0,'2025-03-24 21:10:17',0),
(870,'GID66771','取出','bank',0,'2025-03-24 21:10:17',0),
(871,'GID66771','取出','bank',0,'2025-03-24 21:10:18',0),
(872,'CDV27651','存入','bank',5000,'2025-03-24 21:10:18',1),
(873,'GID66771','存入','bank',106596,'2025-03-24 21:10:19',1),
(874,'GID66771','存入','bank',0,'2025-03-24 21:10:20',1),
(875,'GID66771','存入','bank',0,'2025-03-24 21:10:20',1),
(876,'CDV27651','存入','bank',10000,'2025-03-24 21:10:21',1),
(877,'CDV27651','存入','bank',5000,'2025-03-24 21:10:21',1),
(878,'CDV27651','存入','bank',5000,'2025-03-24 21:10:23',1),
(879,'CDV27651','存入','bank',5000,'2025-03-24 21:10:24',1),
(880,'CDV27651','存入','bank',5000,'2025-03-24 21:10:25',1),
(881,'CDV27651','存入','bank',5000,'2025-03-24 21:10:25',1),
(882,'CDV27651','存入','bank',5000,'2025-03-24 21:10:25',1),
(883,'CDV27651','存入','bank',5000,'2025-03-24 21:10:25',1),
(884,'CDV27651','存入','bank',5000,'2025-03-24 21:10:26',1),
(885,'CDV27651','存入','bank',5000,'2025-03-24 21:10:26',1),
(886,'CDV27651','存入','bank',5000,'2025-03-24 21:10:26',1),
(887,'CDV27651','存入','bank',5000,'2025-03-24 21:10:27',1),
(888,'CDV27651','存入','bank',5000,'2025-03-24 21:10:27',1),
(889,'CDV27651','存入','bank',5000,'2025-03-24 21:10:28',1),
(890,'CDV27651','存入','bank',5000,'2025-03-24 21:10:28',1),
(891,'CDV27651','存入','bank',5000,'2025-03-24 21:10:31',1),
(892,'CDV27651','取出','bank',104000,'2025-03-24 21:10:34',0),
(893,'CDV27651','存入','bank',10000,'2025-03-24 21:10:39',1),
(894,'CDV27651','存入','bank',10000,'2025-03-24 21:10:39',1),
(895,'CDV27651','存入','bank',10000,'2025-03-24 21:10:40',1),
(896,'CDV27651','存入','bank',10000,'2025-03-24 21:10:40',1),
(897,'CDV27651','存入','bank',10000,'2025-03-24 21:10:40',1),
(898,'CDV27651','存入','bank',10000,'2025-03-24 21:10:40',1),
(899,'CDV27651','存入','bank',10000,'2025-03-24 21:10:40',1),
(900,'CDV27651','存入','bank',10000,'2025-03-24 21:10:40',1),
(901,'CDV27651','存入','bank',10000,'2025-03-24 21:10:41',1),
(902,'CDV27651','存入','bank',10000,'2025-03-24 21:10:41',1),
(903,'CDV27651','存入','bank',6300,'2025-03-24 21:10:46',1),
(904,'BDN59221','存入','bank',102500,'2025-03-24 21:10:47',1),
(905,'CDV27651','取出','bank',10000,'2025-03-24 21:10:49',0),
(906,'BDN59221','取出','bank',5000,'2025-03-24 21:10:51',0),
(907,'CDV27651','取出','bank',5000,'2025-03-24 21:10:51',0),
(908,'CDV27651','存入','bank',15000,'2025-03-24 21:10:53',1),
(909,'GID66771','取出','bank',1,'2025-03-24 21:10:53',0),
(910,'CDV27651','取出','bank',10000,'2025-03-24 21:10:55',0),
(911,'CDV27651','取出','bank',96300,'2025-03-24 21:10:56',0),
(912,'GID66771','取出','bank',1,'2025-03-24 21:10:56',0),
(913,'CDV27651','存入','bank',10000,'2025-03-24 21:10:58',1),
(914,'GID66771','取出','bank',1,'2025-03-24 21:10:58',0),
(915,'CDV27651','存入','bank',96300,'2025-03-24 21:10:59',1),
(916,'GID66771','取出','bank',1,'2025-03-24 21:10:59',0),
(917,'GID66771','取出','bank',1,'2025-03-24 21:11:00',0),
(918,'CDV27651','取出','bank',2000,'2025-03-24 21:11:02',0),
(919,'GID66771','取出','bank',1,'2025-03-24 21:11:04',0),
(920,'GID66771','取出','bank',1,'2025-03-24 21:11:06',0),
(921,'GID66771','取出','bank',1,'2025-03-24 21:11:06',0),
(922,'GID66771','取出','bank',106588,'2025-03-24 21:11:07',0),
(923,'GID66771','存入','bank',106596,'2025-03-24 21:11:08',1),
(924,'GID66771','存入','bank',0,'2025-03-24 21:11:09',1),
(925,'GID66771','取出','bank',106596,'2025-03-24 21:11:09',0),
(926,'GID66771','存入','bank',106596,'2025-03-24 21:11:10',1),
(927,'JJX03484','取出','bank',2000,'2025-03-24 21:23:51',0),
(928,'JJX03484','取出','bank',200,'2025-03-24 21:24:01',0),
(929,'BDN59221','取出','bank',5000,'2025-03-24 21:25:19',0),
(930,'YBR81778','存入','bank',500,'2025-03-24 21:30:59',1),
(931,'CDV27651','存入','bank',1000,'2025-03-24 21:30:59',1),
(932,'VQR49601','存入','bank',1000,'2025-03-24 21:30:59',1),
(933,'XRR77997','存入','bank',1000,'2025-03-24 21:30:59',1),
(934,'ICW34676','存入','bank',700,'2025-03-24 21:30:59',1),
(935,'JJX03484','存入','bank',600,'2025-03-24 21:30:59',1),
(936,'BDN59221','存入','bank',600,'2025-03-24 21:30:59',1),
(937,'XRR77997','存入','bank',0,'2025-03-24 21:45:02',1),
(938,'VQR49601','取出','bank',0,'2025-03-24 21:45:02',0),
(939,'CDV27651','存入','bank',1000,'2025-03-24 22:00:59',1),
(940,'YBR81778','存入','bank',500,'2025-03-24 22:00:59',1),
(941,'XRR77997','存入','bank',1000,'2025-03-24 22:00:59',1),
(942,'JJX03484','存入','bank',600,'2025-03-24 22:00:59',1),
(943,'YBR81778','存入','bank',500,'2025-03-24 22:30:59',1),
(944,'VQR49601','存入','bank',11434347,'2025-03-24 23:06:04',1),
(945,'VQR49601','取出','bank',435347,'2025-03-24 23:06:11',0),
(946,'VQR49601','取出','bank',11000000,'2025-03-24 23:06:31',0),
(947,'VQR49601','存入','bank',11000000,'2025-03-24 23:06:41',1),
(948,'XRR77997','取出','bank',5000,'2025-03-24 23:09:20',0),
(949,'VQR49601','存入','bank',400000,'2025-03-24 23:10:10',1),
(950,'VQR49601','存入','bank',35347,'2025-03-24 23:10:12',1),
(951,'XRR77997','存入','bank',11792,'2025-03-24 23:11:28',1),
(952,'XRR77997','取出','bank',10000,'2025-03-24 23:11:32',0),
(953,'VQR49601','取出','bank',10000,'2025-03-24 23:11:34',0),
(954,'LYX25359','存入','bank',1000,'2025-03-24 23:50:50',1),
(955,'XRR77997','存入','bank',1000,'2025-03-25 00:20:50',1),
(956,'YBR81778','存入','bank',500,'2025-03-25 06:50:50',1),
(957,'YBR81778','存入','bank',500,'2025-03-25 07:20:50',1),
(958,'YBR81778','存入','bank',500,'2025-03-25 07:50:50',1),
(959,'YBR81778','存入','bank',500,'2025-03-25 08:20:50',1),
(960,'YBR81778','存入','bank',500,'2025-03-25 08:50:50',1),
(961,'YBR81778','存入','bank',500,'2025-03-25 09:20:50',1),
(962,'YBR81778','存入','bank',500,'2025-03-25 09:50:50',1),
(963,'YBR81778','存入','bank',500,'2025-03-25 10:20:50',1),
(964,'YBR81778','存入','bank',500,'2025-03-25 10:50:50',1),
(965,'YBR81778','存入','bank',500,'2025-03-25 11:20:50',1),
(966,'YBR81778','存入','bank',500,'2025-03-25 11:50:50',1),
(967,'YBR81778','存入','bank',500,'2025-03-25 12:20:50',1),
(968,'PZN63640','取出','bank',150,'2025-03-25 12:24:32',0),
(969,'LYX25359','取出','bank',225,'2025-03-25 13:03:41',0),
(970,'LYX25359','取出','bank',500,'2025-03-25 13:06:17',0),
(971,'LYX25359','取出','bank',500,'2025-03-25 18:09:22',0),
(972,'LYX25359','取出','bank',850,'2025-03-25 18:18:34',0),
(973,'LYX25359','取出','bank',1500,'2025-03-25 18:19:32',0),
(974,'LYX25359','存入','bank',1000,'2025-03-25 18:20:51',1),
(975,'LYX25359','取出','bank',5000,'2025-03-25 18:37:55',0),
(976,'LYX25359','取出','bank',2000,'2025-03-25 18:43:11',0),
(977,'LYX25359','取出','bank',500,'2025-03-25 18:43:31',0),
(978,'LYX25359','取出','bank',100,'2025-03-25 18:43:38',0),
(979,'LYX25359','取出','bank',2000,'2025-03-25 18:44:04',0),
(980,'BDN59221','存入','bank',600,'2025-03-25 18:50:51',1),
(981,'JJX03484','存入','bank',600,'2025-03-25 19:20:51',1),
(982,'BDN59221','存入','bank',600,'2025-03-25 19:20:51',1),
(983,'QHK11612','存入','bank',800,'2025-03-25 22:20:51',1),
(984,'LYX25359','存入','bank',1000,'2025-03-25 22:20:51',1),
(985,'LYX25359','取出','bank',500,'2025-03-25 22:24:57',0),
(986,'LYX25359','取出','bank',500,'2025-03-25 22:30:52',0),
(987,'LYX25359','取出','bank',100,'2025-03-25 22:31:03',0),
(988,'LYX25359','取出','bank',5000,'2025-03-25 22:31:08',0),
(989,'LYX25359','取出','bank',400,'2025-03-25 22:31:14',0),
(990,'LYX25359','取出','bank',70,'2025-03-25 22:32:05',0),
(991,'LYX25359','取出','bank',5000,'2025-03-25 22:37:50',0),
(992,'YBR81778','存入','bank',500,'2025-03-25 22:50:51',1),
(993,'LYX25359','存入','bank',1000,'2025-03-25 22:50:51',1),
(994,'YBR81778','存入','bank',500,'2025-03-25 23:20:51',1),
(995,'YBR81778','存入','bank',500,'2025-03-25 23:50:51',1),
(996,'YBR81778','存入','bank',500,'2025-03-26 00:20:51',1),
(997,'YBR81778','存入','bank',500,'2025-03-26 00:50:51',1),
(998,'YBR81778','存入','bank',500,'2025-03-26 01:20:51',1),
(999,'YBR81778','存入','bank',500,'2025-03-26 01:50:51',1),
(1000,'YBR81778','存入','bank',500,'2025-03-26 02:20:51',1),
(1001,'YBR81778','存入','bank',500,'2025-03-26 02:50:51',1),
(1002,'YBR81778','存入','bank',500,'2025-03-26 03:20:51',1),
(1003,'YBR81778','存入','bank',500,'2025-03-26 03:50:51',1),
(1004,'YBR81778','存入','bank',500,'2025-03-26 04:20:51',1),
(1005,'YBR81778','存入','bank',500,'2025-03-26 04:50:51',1),
(1006,'YBR81778','存入','bank',500,'2025-03-26 05:20:51',1),
(1007,'YBR81778','存入','bank',500,'2025-03-26 05:50:51',1),
(1008,'YBR81778','存入','bank',500,'2025-03-26 06:20:51',1),
(1009,'YBR81778','存入','bank',500,'2025-03-26 06:50:51',1),
(1010,'YBR81778','存入','bank',500,'2025-03-26 07:20:51',1),
(1011,'YBR81778','存入','bank',500,'2025-03-26 07:50:51',1),
(1012,'QHK11612','存入','bank',800,'2025-03-26 18:20:52',1),
(1013,'QHK11612','存入','bank',800,'2025-03-26 18:50:52',1),
(1014,'JJX03484','取出','bank',500,'2025-03-26 19:02:50',0),
(1015,'QHK11612','存入','bank',800,'2025-03-26 19:20:52',1),
(1016,'JJX03484','存入','bank',600,'2025-03-26 19:20:52',1),
(1017,'OZH56762','存入','bank',500,'2025-03-26 19:50:52',1),
(1018,'QHK11612','存入','bank',800,'2025-03-26 19:50:52',1),
(1019,'JJX03484','存入','bank',600,'2025-03-26 19:50:52',1),
(1020,'OZH56762','存入','bank',500,'2025-03-26 20:20:52',1),
(1021,'CDV27651','存入','bank',1000,'2025-03-26 20:20:52',1),
(1022,'YBR81778','存入','bank',500,'2025-03-26 20:20:52',1),
(1023,'QHK11612','存入','bank',800,'2025-03-26 20:20:52',1),
(1024,'VQR49601','存入','bank',1000,'2025-03-26 20:20:52',1),
(1025,'JJX03484','存入','bank',600,'2025-03-26 20:20:52',1),
(1026,'BDN59221','存入','bank',600,'2025-03-26 20:20:52',1),
(1027,'BDN59221','取出','bank',400,'2025-03-26 20:37:45',0),
(1028,'BDN59221','取出','bank',400,'2025-03-26 20:37:47',0),
(1029,'OZH56762','存入','bank',500,'2025-03-26 20:50:52',1),
(1030,'QHK11612','存入','bank',800,'2025-03-26 20:50:52',1),
(1031,'WZK17535','存入','bank',800,'2025-03-26 20:50:52',1),
(1032,'ICW34676','存入','bank',700,'2025-03-26 20:50:52',1),
(1033,'JJX03484','存入','bank',600,'2025-03-26 20:50:52',1),
(1034,'VCV61562','存入','bank',800,'2025-03-26 20:50:52',1),
(1035,'OZH56762','存入','bank',500,'2025-03-26 21:20:52',1),
(1036,'ICW34676','存入','bank',700,'2025-03-26 21:20:52',1),
(1037,'QHK11612','存入','bank',800,'2025-03-26 21:20:52',1),
(1038,'JJX03484','存入','bank',600,'2025-03-26 21:20:52',1),
(1039,'VCV61562','存入','bank',800,'2025-03-26 21:20:52',1),
(1040,'QHK11612','存入','bank',800,'2025-03-26 21:50:52',1),
(1041,'VCV61562','存入','bank',800,'2025-03-26 21:50:52',1),
(1042,'QHK11612','存入','bank',800,'2025-03-26 22:20:52',1),
(1043,'LYX25359','存入','bank',1000,'2025-03-26 22:20:52',1),
(1044,'VCV61562','存入','bank',800,'2025-03-26 22:20:52',1),
(1045,'QHK11612','存入','bank',800,'2025-03-26 22:50:52',1),
(1046,'LYX25359','存入','bank',1000,'2025-03-26 22:50:52',1),
(1047,'VCV61562','存入','bank',800,'2025-03-26 22:50:52',1),
(1048,'QHK11612','存入','bank',800,'2025-03-26 23:20:52',1),
(1049,'VCV61562','存入','bank',800,'2025-03-26 23:20:52',1),
(1050,'QHK11612','存入','bank',800,'2025-03-26 23:50:52',1),
(1051,'VCV61562','存入','bank',800,'2025-03-26 23:50:52',1),
(1052,'QHK11612','存入','bank',800,'2025-03-27 00:20:52',1),
(1053,'VCV61562','存入','bank',800,'2025-03-27 00:20:52',1),
(1054,'QHK11612','取出','bank',0,'2025-03-27 00:47:36',0),
(1055,'QHK11612','存入','bank',800,'2025-03-27 00:50:52',1),
(1056,'VCV61562','存入','bank',800,'2025-03-27 00:50:52',1),
(1057,'QHK11612','存入','bank',800,'2025-03-27 01:20:52',1),
(1058,'QHK11612','存入','bank',800,'2025-03-27 01:50:52',1),
(1059,'QHK11612','存入','bank',800,'2025-03-27 02:20:52',1),
(1060,'QHK11612','存入','bank',800,'2025-03-27 02:50:52',1),
(1061,'QHK11612','存入','bank',800,'2025-03-27 03:20:52',1),
(1062,'QHK11612','存入','bank',800,'2025-03-27 03:50:52',1),
(1063,'QHK11612','存入','bank',800,'2025-03-27 04:20:52',1),
(1064,'QHK11612','存入','bank',800,'2025-03-27 04:50:52',1),
(1065,'QHK11612','存入','bank',800,'2025-03-27 05:20:52',1),
(1066,'QHK11612','存入','bank',800,'2025-03-27 05:50:52',1),
(1067,'QHK11612','存入','bank',800,'2025-03-27 06:20:52',1),
(1068,'QHK11612','存入','bank',800,'2025-03-27 06:50:52',1),
(1069,'QHK11612','存入','bank',800,'2025-03-27 07:20:53',1),
(1070,'QHK11612','存入','bank',800,'2025-03-27 07:50:53',1),
(1071,'QHK11612','存入','bank',800,'2025-03-27 08:20:53',1),
(1072,'QHK11612','存入','bank',800,'2025-03-27 08:50:53',1),
(1073,'QHK11612','存入','bank',800,'2025-03-27 09:20:53',1),
(1074,'QHK11612','存入','bank',800,'2025-03-27 09:50:53',1),
(1075,'QHK11612','存入','bank',800,'2025-03-27 10:20:53',1),
(1076,'QHK11612','存入','bank',800,'2025-03-27 10:50:53',1),
(1077,'QHK11612','存入','bank',800,'2025-03-27 11:20:53',1),
(1078,'QHK11612','存入','bank',800,'2025-03-27 11:50:53',1),
(1079,'QHK11612','存入','bank',800,'2025-03-27 12:20:53',1),
(1080,'QHK11612','存入','bank',800,'2025-03-27 12:50:53',1),
(1081,'QHK11612','存入','bank',800,'2025-03-27 13:20:53',1),
(1082,'QHK11612','存入','bank',800,'2025-03-27 13:50:53',1),
(1083,'QHK11612','存入','bank',800,'2025-03-27 14:20:53',1),
(1084,'QHK11612','存入','bank',800,'2025-03-27 14:50:53',1),
(1085,'QHK11612','存入','bank',800,'2025-03-27 15:20:53',1),
(1086,'BDN59221','存入','bank',600,'2025-03-27 15:20:53',1),
(1087,'JJX03484','取出','bank',500,'2025-03-27 15:32:48',0),
(1088,'BDN59221','取出','bank',30,'2025-03-27 15:37:32',0),
(1089,'JJX03484','存入','bank',600,'2025-03-27 15:50:53',1),
(1090,'QHK11612','存入','bank',800,'2025-03-27 15:50:53',1),
(1091,'BDN59221','存入','bank',500,'2025-03-27 15:50:53',1),
(1092,'YBR81778','存入','bank',500,'2025-03-27 16:20:53',1),
(1093,'CDV27651','存入','bank',1000,'2025-03-27 16:20:53',1),
(1094,'QHK11612','存入','bank',800,'2025-03-27 16:20:53',1),
(1095,'JJX03484','存入','bank',600,'2025-03-27 16:20:53',1),
(1096,'BDN59221','存入','bank',500,'2025-03-27 16:20:53',1),
(1097,'JJX03484','取出','bank',500,'2025-03-27 16:23:10',0),
(1098,'BDN59221','取出','bank',10000,'2025-03-27 16:41:00',0),
(1099,'BDN59221','取出','bank',10000,'2025-03-27 16:41:01',0),
(1100,'YBR81778','取出','bank',10,'2025-03-27 16:42:11',0),
(1101,'YBR81778','存入','bank',500,'2025-03-27 16:50:53',1),
(1102,'QHK11612','存入','bank',800,'2025-03-27 16:50:53',1),
(1103,'JJX03484','存入','bank',600,'2025-03-27 16:50:53',1),
(1104,'BDN59221','存入','bank',500,'2025-03-27 16:50:53',1),
(1105,'YBR81778','取出','bank',10,'2025-03-27 17:08:07',0),
(1106,'BDN59221','取出','bank',30,'2025-03-27 17:11:09',0),
(1107,'YBR81778','存入','bank',500,'2025-03-27 17:20:53',1),
(1108,'QHK11612','存入','bank',800,'2025-03-27 17:20:53',1),
(1109,'JJX03484','存入','bank',600,'2025-03-27 17:20:53',1),
(1110,'BDN59221','存入','bank',500,'2025-03-27 17:20:53',1),
(1111,'BDN59221','取出','bank',500,'2025-03-27 17:22:34',0),
(1112,'JJX03484','取出','bank',500,'2025-03-27 17:22:37',0),
(1113,'BDN59221','取出','bank',100,'2025-03-27 17:26:20',0),
(1114,'BDN59221','取出','bank',1000,'2025-03-27 17:28:21',0),
(1115,'BDN59221','取出','bank',500,'2025-03-27 17:32:08',0),
(1116,'YBR81778','存入','bank',500,'2025-03-27 17:50:53',1),
(1117,'QHK11612','存入','bank',800,'2025-03-27 17:50:53',1),
(1118,'YBR81778','取出','bank',1000,'2025-03-27 18:08:23',0),
(1119,'YBR81778','存入','bank',500,'2025-03-27 18:20:53',1),
(1120,'QHK11612','存入','bank',800,'2025-03-27 18:20:53',1),
(1121,'YBR81778','存入','bank',500,'2025-03-27 18:50:53',1),
(1122,'YBR81778','取出','bank',1,'2025-03-27 19:09:28',0),
(1123,'YBR81778','存入','bank',500,'2025-03-27 19:20:53',1),
(1124,'QHK11612','存入','bank',800,'2025-03-27 19:20:53',1),
(1125,'JJX03484','存入','bank',600,'2025-03-27 19:20:53',1),
(1126,'JJX03484','存入','bank',1449,'2025-03-27 19:35:03',1),
(1127,'QHK11612','取出','bank',1,'2025-03-27 19:39:01',0),
(1128,'YBR81778','存入','bank',500,'2025-03-27 19:50:53',1),
(1129,'QHK11612','存入','bank',800,'2025-03-27 19:50:53',1),
(1130,'JJX03484','存入','bank',600,'2025-03-27 19:50:53',1),
(1131,'GID66771','取出','bank',5000,'2025-03-27 19:52:45',0),
(1132,'GID66771','取出','bank',5000,'2025-03-27 19:52:51',0),
(1133,'GID66771','取出','bank',5000,'2025-03-27 19:52:52',0),
(1134,'GID66771','取出','bank',5000,'2025-03-27 19:52:53',0),
(1135,'VCV61562','取出','bank',5000,'2025-03-27 19:54:51',0),
(1136,'VCV61562','取出','bank',5000,'2025-03-27 19:54:53',0),
(1137,'OZH56762','取出','bank',100,'2025-03-27 20:09:15',0),
(1138,'YBR81778','取出','bank',100,'2025-03-27 20:10:57',0),
(1139,'YBR81778','取出','bank',10000,'2025-03-27 20:18:58',0),
(1140,'OZH56762','存入','bank',700,'2025-03-27 20:20:53',1),
(1141,'RRU27752','存入','bank',1000,'2025-03-27 20:20:53',1),
(1142,'GID66771','存入','bank',700,'2025-03-27 20:20:53',1),
(1143,'QHK11612','存入','bank',800,'2025-03-27 20:20:53',1),
(1144,'JJX03484','存入','bank',600,'2025-03-27 20:20:53',1),
(1145,'BDN59221','存入','bank',700,'2025-03-27 20:20:53',1),
(1146,'VCV61562','存入','bank',800,'2025-03-27 20:20:53',1),
(1147,'YBR81778','取出','bank',6,'2025-03-27 20:31:59',0),
(1148,'YBR81778','取出','bank',6,'2025-03-27 20:33:41',0),
(1149,'RRU27752','取出','bank',20,'2025-03-27 20:36:21',0),
(1150,'RRU27752','取出','bank',25,'2025-03-27 20:36:23',0),
(1151,'RRU27752','取出','bank',700,'2025-03-27 20:36:25',0),
(1152,'RRU27752','取出','bank',700,'2025-03-27 20:36:26',0),
(1153,'RRU27752','取出','bank',700,'2025-03-27 20:36:29',0),
(1154,'CDV27651','取出','bank',2450,'2025-03-27 20:40:26',0),
(1155,'OZH56762','存入','bank',700,'2025-03-27 20:50:53',1),
(1156,'YBR81778','存入','bank',500,'2025-03-27 20:50:53',1),
(1157,'CDV27651','存入','bank',700,'2025-03-27 20:50:53',1),
(1158,'RRU27752','存入','bank',700,'2025-03-27 20:50:53',1),
(1159,'GID66771','存入','bank',700,'2025-03-27 20:50:53',1),
(1160,'QHK11612','存入','bank',800,'2025-03-27 20:50:53',1),
(1161,'ICW34676','存入','bank',700,'2025-03-27 20:50:53',1),
(1162,'JJX03484','存入','bank',600,'2025-03-27 20:50:53',1),
(1163,'BDN59221','存入','bank',700,'2025-03-27 20:50:53',1),
(1164,'VCV61562','存入','bank',800,'2025-03-27 20:50:53',1),
(1165,'OZH56762','存入','bank',700,'2025-03-27 21:20:53',1),
(1166,'YBR81778','存入','bank',500,'2025-03-27 21:20:53',1),
(1167,'RRU27752','存入','bank',700,'2025-03-27 21:20:53',1),
(1168,'CDV27651','存入','bank',700,'2025-03-27 21:20:53',1),
(1169,'QHK11612','存入','bank',800,'2025-03-27 21:20:53',1),
(1170,'GID66771','存入','bank',700,'2025-03-27 21:20:53',1),
(1171,'JJX03484','存入','bank',600,'2025-03-27 21:20:53',1),
(1172,'BDN59221','存入','bank',700,'2025-03-27 21:20:53',1),
(1173,'VCV61562','存入','bank',800,'2025-03-27 21:20:53',1),
(1174,'YBR81778','存入','bank',500,'2025-03-27 21:50:53',1),
(1175,'GID66771','存入','bank',700,'2025-03-27 21:50:53',1),
(1176,'RRU27752','存入','bank',700,'2025-03-27 21:50:53',1),
(1177,'JJX03484','存入','bank',600,'2025-03-27 21:50:53',1),
(1178,'GID66771','取出','bank',100,'2025-03-27 21:51:08',0),
(1179,'GID66771','取出','bank',1000,'2025-03-27 21:53:15',0),
(1180,'YBR81778','存入','bank',500,'2025-03-27 22:20:53',1),
(1181,'YBR81778','存入','bank',500,'2025-03-27 22:50:53',1),
(1182,'VQR49601','取出','bank',350000,'2025-03-27 22:52:49',0),
(1183,'YBR81778','存入','bank',500,'2025-03-27 23:20:53',1),
(1184,'YBR81778','存入','bank',500,'2025-03-27 23:50:53',1),
(1185,'YBR81778','存入','bank',500,'2025-03-28 00:20:53',1),
(1186,'YBR81778','存入','bank',500,'2025-03-28 00:50:53',1),
(1187,'QHK11612','存入','bank',800,'2025-03-28 00:50:53',1),
(1188,'YBR81778','存入','bank',500,'2025-03-28 01:20:53',1),
(1189,'XRR77997','存入','bank',1000,'2025-03-28 01:20:53',1),
(1190,'QHK11612','存入','bank',800,'2025-03-28 01:20:53',1),
(1191,'VQR49601','存入','bank',1000,'2025-03-28 01:20:53',1),
(1192,'QHK11612','存入','bank',2950,'2025-03-28 01:45:09',1),
(1193,'YBR81778','存入','bank',500,'2025-03-28 01:50:53',1),
(1194,'VQR49601','存入','bank',1000,'2025-03-28 01:50:53',1),
(1195,'QHK11612','存入','bank',1000,'2025-03-28 01:50:53',1),
(1196,'YBR81778','存入','bank',500,'2025-03-28 02:20:53',1),
(1197,'QHK11612','存入','bank',1000,'2025-03-28 02:20:53',1),
(1198,'YBR81778','存入','bank',500,'2025-03-28 02:50:53',1),
(1199,'QHK11612','存入','bank',1000,'2025-03-28 02:50:53',1),
(1200,'YBR81778','存入','bank',500,'2025-03-28 03:20:53',1),
(1201,'QHK11612','存入','bank',1000,'2025-03-28 03:20:54',1),
(1202,'YBR81778','存入','bank',500,'2025-03-28 03:50:54',1),
(1203,'QHK11612','存入','bank',1000,'2025-03-28 03:50:54',1),
(1204,'YBR81778','存入','bank',500,'2025-03-28 04:20:54',1),
(1205,'QHK11612','存入','bank',1000,'2025-03-28 04:20:54',1),
(1206,'YBR81778','存入','bank',500,'2025-03-28 04:50:54',1),
(1207,'QHK11612','存入','bank',1000,'2025-03-28 04:50:54',1),
(1208,'YBR81778','存入','bank',500,'2025-03-28 05:20:54',1),
(1209,'QHK11612','存入','bank',1000,'2025-03-28 05:20:54',1),
(1210,'YBR81778','存入','bank',500,'2025-03-28 05:50:54',1),
(1211,'QHK11612','存入','bank',1000,'2025-03-28 05:50:54',1),
(1212,'YBR81778','存入','bank',500,'2025-03-28 06:20:54',1),
(1213,'QHK11612','存入','bank',1000,'2025-03-28 06:20:54',1),
(1214,'YBR81778','存入','bank',500,'2025-03-28 06:50:54',1),
(1215,'QHK11612','存入','bank',1000,'2025-03-28 06:50:54',1),
(1216,'YBR81778','存入','bank',500,'2025-03-28 07:20:54',1),
(1217,'QHK11612','存入','bank',1000,'2025-03-28 07:20:54',1),
(1218,'YBR81778','存入','bank',500,'2025-03-28 07:50:54',1),
(1219,'QHK11612','存入','bank',1000,'2025-03-28 07:50:54',1),
(1220,'YBR81778','存入','bank',500,'2025-03-28 08:20:54',1),
(1221,'QHK11612','存入','bank',1000,'2025-03-28 08:20:54',1),
(1222,'YBR81778','存入','bank',500,'2025-03-28 08:50:54',1),
(1223,'QHK11612','存入','bank',1000,'2025-03-28 08:50:54',1),
(1224,'YBR81778','存入','bank',500,'2025-03-28 09:20:54',1),
(1225,'QHK11612','存入','bank',1000,'2025-03-28 09:20:54',1),
(1226,'YBR81778','存入','bank',500,'2025-03-28 09:50:54',1),
(1227,'QHK11612','存入','bank',1000,'2025-03-28 09:50:54',1),
(1228,'YBR81778','存入','bank',500,'2025-03-28 10:20:54',1),
(1229,'QHK11612','存入','bank',1000,'2025-03-28 10:20:54',1),
(1230,'YBR81778','存入','bank',500,'2025-03-28 10:50:54',1),
(1231,'QHK11612','存入','bank',1000,'2025-03-28 10:50:54',1),
(1232,'YBR81778','存入','bank',500,'2025-03-28 11:20:54',1),
(1233,'QHK11612','存入','bank',1000,'2025-03-28 11:20:54',1),
(1234,'YBR81778','存入','bank',500,'2025-03-28 11:50:54',1),
(1235,'QHK11612','存入','bank',1000,'2025-03-28 11:50:54',1),
(1236,'YBR81778','存入','bank',500,'2025-03-28 12:20:54',1),
(1237,'QHK11612','存入','bank',1000,'2025-03-28 12:20:54',1),
(1238,'YBR81778','存入','bank',500,'2025-03-28 12:50:54',1),
(1239,'QHK11612','存入','bank',1000,'2025-03-28 12:50:54',1),
(1240,'VCV61562','存入','bank',800,'2025-03-28 12:50:54',1),
(1241,'YBR81778','取出','bank',5000,'2025-03-28 12:56:54',0),
(1242,'YBR81778','取出','bank',5000,'2025-03-28 12:57:01',0),
(1243,'YBR81778','存入','bank',500,'2025-03-28 13:20:54',1),
(1244,'JJX03484','存入','bank',600,'2025-03-28 13:20:54',1),
(1245,'QHK11612','存入','bank',1000,'2025-03-28 13:20:54',1),
(1246,'VCV61562','存入','bank',500,'2025-03-28 13:20:54',1),
(1247,'QHK11612','存入','bank',1000,'2025-03-28 13:50:54',1),
(1248,'QHK11612','存入','bank',1000,'2025-03-28 14:20:54',1),
(1249,'QHK11612','存入','bank',1000,'2025-03-28 14:50:54',1),
(1250,'QHK11612','存入','bank',1000,'2025-03-28 15:20:54',1),
(1251,'QHK11612','存入','bank',1000,'2025-03-28 15:50:54',1),
(1252,'QHK11612','存入','bank',1000,'2025-03-28 16:20:54',1),
(1253,'QHK11612','存入','bank',1000,'2025-03-28 16:50:54',1),
(1254,'QHK11612','存入','bank',1000,'2025-03-28 17:20:54',1),
(1255,'XRR77997','存入','bank',1000,'2025-03-28 18:07:03',1),
(1256,'OZH56762','存入','bank',700,'2025-03-28 18:37:03',1),
(1257,'XRR77997','存入','bank',1000,'2025-03-28 18:37:03',1),
(1258,'OZH56762','存入','bank',700,'2025-03-28 19:07:03',1),
(1259,'XRR77997','存入','bank',1000,'2025-03-28 19:07:03',1),
(1260,'JJX03484','存入','bank',600,'2025-03-28 19:07:03',1),
(1261,'OZH56762','取出','bank',0,'2025-03-28 19:08:54',0),
(1262,'XRR77997','存入','bank',0,'2025-03-28 19:08:54',1),
(1263,'OZH56762','取出','bank',0,'2025-03-28 19:09:31',0),
(1264,'XRR77997','存入','bank',0,'2025-03-28 19:09:31',1),
(1265,'OZH56762','取出','bank',0,'2025-03-28 19:10:22',0),
(1266,'XRR77997','存入','bank',0,'2025-03-28 19:10:22',1),
(1267,'OZH56762','存入','bank',700,'2025-03-28 19:37:03',1),
(1268,'XRR77997','存入','bank',1000,'2025-03-28 19:37:03',1),
(1269,'OZH56762','存入','bank',700,'2025-03-28 20:07:03',1),
(1270,'GHT37439','存入','bank',9000,'2025-03-28 20:10:30',1),
(1271,'OZH56762','存入','bank',0,'2025-03-28 20:34:26',1),
(1272,'GHT37439','取出','bank',0,'2025-03-28 20:34:26',0),
(1273,'GHT37439','取出','bank',300,'2025-03-28 20:35:16',0),
(1274,'OZH56762','存入','bank',700,'2025-03-28 20:37:03',1),
(1275,'QHK11612','存入','bank',10000,'2025-03-28 21:10:37',1),
(1276,'QHK11612','存入','bank',10000,'2025-03-28 21:10:38',1),
(1277,'QHK11612','存入','bank',10000,'2025-03-28 21:10:39',1),
(1278,'QHK11612','存入','bank',10000,'2025-03-28 21:10:41',1),
(1279,'QHK11612','存入','bank',10000,'2025-03-28 21:10:41',1),
(1280,'QHK11612','存入','bank',10000,'2025-03-28 21:10:41',1),
(1281,'QHK11612','存入','bank',10000,'2025-03-28 21:10:41',1),
(1282,'QHK11612','存入','bank',10000,'2025-03-28 21:10:44',1),
(1283,'QHK11612','存入','bank',103646,'2025-03-28 21:10:53',1),
(1284,'OZH56762','存入','bank',700,'2025-03-28 21:23:08',1),
(1285,'QHK11612','存入','bank',1000,'2025-03-28 21:23:08',1),
(1286,'XRR77997','存入','bank',1000,'2025-03-28 21:23:08',1),
(1287,'GHT37439','取出','bank',300,'2025-03-28 21:33:06',0),
(1288,'GHT37439','取出','bank',13400,'2025-03-28 21:47:40',0),
(1289,'BDN59221','取出','bank',100,'2025-03-28 21:50:46',0),
(1290,'OZH56762','存入','bank',700,'2025-03-28 21:53:08',1),
(1291,'QHK11612','存入','bank',1000,'2025-03-28 21:53:08',1),
(1292,'XRR77997','存入','bank',1000,'2025-03-28 21:53:08',1),
(1293,'JJX03484','存入','bank',600,'2025-03-28 21:53:08',1),
(1294,'BDN59221','存入','bank',700,'2025-03-28 21:53:08',1),
(1295,'BDN59221','取出','bank',1,'2025-03-28 21:55:42',0),
(1296,'JJX03484','取出','bank',500,'2025-03-28 22:00:46',0),
(1297,'BDN59221','取出','bank',500,'2025-03-28 22:00:55',0),
(1298,'XRR77997','取出','bank',498098,'2025-03-28 22:21:43',0),
(1299,'OZH56762','存入','bank',700,'2025-03-28 22:23:08',1),
(1300,'YBR81778','存入','bank',500,'2025-03-28 22:23:08',1),
(1301,'GID66771','存入','bank',700,'2025-03-28 22:23:08',1),
(1302,'XRR77997','存入','bank',1000,'2025-03-28 22:23:08',1),
(1303,'QHK11612','存入','bank',1000,'2025-03-28 22:23:08',1),
(1304,'JJX03484','存入','bank',600,'2025-03-28 22:23:08',1),
(1305,'LYX25359','存入','bank',1000,'2025-03-28 22:23:08',1),
(1306,'BDN59221','存入','bank',700,'2025-03-28 22:23:09',1),
(1307,'VCV61562','存入','bank',500,'2025-03-28 22:23:09',1),
(1308,'GID66771','取出','bank',500,'2025-03-28 22:45:46',0),
(1309,'BDN59221','取出','bank',500,'2025-03-28 22:45:56',0),
(1310,'GID66771','取出','bank',500,'2025-03-28 22:46:19',0),
(1311,'JJX03484','取出','bank',500,'2025-03-28 22:48:17',0),
(1312,'XRR77997','取出','bank',500,'2025-03-28 22:52:22',0),
(1313,'JJX03484','取出','bank',500,'2025-03-28 22:52:34',0),
(1314,'YBR81778','存入','bank',500,'2025-03-28 22:53:08',1),
(1315,'QHK11612','存入','bank',1000,'2025-03-28 22:53:08',1),
(1316,'ICW34676','存入','bank',700,'2025-03-28 22:53:09',1),
(1317,'JJX03484','存入','bank',600,'2025-03-28 22:53:09',1),
(1318,'XRR77997','存入','bank',1000,'2025-03-28 22:53:09',1),
(1319,'VCV61562','存入','bank',500,'2025-03-28 22:53:09',1),
(1320,'LYX25359','存入','bank',1000,'2025-03-28 22:53:09',1),
(1321,'LYX25359','取出','bank',500,'2025-03-28 23:22:08',0),
(1322,'QHK11612','存入','bank',1000,'2025-03-28 23:23:08',1),
(1323,'YBR81778','存入','bank',500,'2025-03-28 23:23:08',1),
(1324,'JJX03484','存入','bank',600,'2025-03-28 23:23:08',1),
(1325,'VCV61562','存入','bank',500,'2025-03-28 23:23:09',1),
(1326,'LYX25359','存入','bank',1000,'2025-03-28 23:23:09',1),
(1327,'YBR81778','存入','bank',500,'2025-03-28 23:53:08',1),
(1328,'QHK11612','存入','bank',1000,'2025-03-28 23:53:09',1),
(1329,'JJX03484','存入','bank',600,'2025-03-28 23:53:09',1),
(1330,'VCV61562','存入','bank',500,'2025-03-28 23:53:09',1),
(1331,'XRR77997','存入','bank',1000,'2025-03-29 02:35:53',1),
(1332,'JJX03484','存入','bank',178434,'2025-03-29 10:57:11',1),
(1333,'OZH56762','存入','bank',700,'2025-03-29 13:35:53',1),
(1334,'OZH56762','存入','bank',700,'2025-03-29 14:05:53',1),
(1335,'XRR77997','存入','bank',1000,'2025-03-29 14:05:53',1),
(1336,'OZH56762','存入','bank',700,'2025-03-29 14:35:53',1),
(1337,'XRR77997','存入','bank',1000,'2025-03-29 14:35:53',1),
(1338,'OZH56762','存入','bank',700,'2025-03-29 15:05:53',1),
(1339,'XRR77997','存入','bank',1000,'2025-03-29 15:05:53',1),
(1340,'JJX03484','存入','bank',600,'2025-03-29 15:05:53',1),
(1341,'OZH56762','存入','bank',700,'2025-03-29 15:35:53',1),
(1342,'XRR77997','存入','bank',1000,'2025-03-29 15:35:53',1),
(1343,'OZH56762','存入','bank',700,'2025-03-29 16:05:53',1),
(1344,'XRR77997','存入','bank',1000,'2025-03-29 16:05:53',1),
(1345,'JJX03484','存入','bank',600,'2025-03-29 16:05:53',1),
(1346,'OZH56762','存入','bank',700,'2025-03-29 16:35:53',1),
(1347,'XRR77997','存入','bank',1000,'2025-03-29 16:35:53',1),
(1348,'JJX03484','存入','bank',600,'2025-03-29 16:35:53',1),
(1349,'JJX03484','存入','bank',600,'2025-03-29 17:05:53',1),
(1350,'BDN59221','存入','bank',700,'2025-03-29 17:05:53',1),
(1351,'ICW34676','取出','bank',1000,'2025-03-29 17:26:11',0),
(1352,'JJX03484','存入','bank',600,'2025-03-29 17:35:53',1),
(1353,'ICW34676','存入','bank',700,'2025-03-29 17:35:53',1),
(1354,'BDN59221','存入','bank',700,'2025-03-29 17:35:53',1),
(1355,'ICW34676','取出','bank',2000,'2025-03-29 17:41:09',0),
(1356,'ICW34676','取出','bank',1000,'2025-03-29 17:43:36',0),
(1357,'BDN59221','取出','bank',1000,'2025-03-29 17:44:48',0),
(1358,'XRR77997','存入','bank',1000,'2025-03-29 15:08:18',1),
(1359,'XRR77997','存入','bank',300000,'2025-03-29 15:12:04',1),
(1360,'XRR77997','存入','bank',103740,'2025-03-29 15:12:06',1),
(1361,'XRR77997','取出','bank',13200,'2025-03-29 15:13:55',0),
(1362,'XRR77997','取出','bank',40,'2025-03-29 15:14:01',0),
(1363,'XRR77997','取出','bank',400000,'2025-03-29 15:14:01',0),
(1364,'XRR77997','存入','bank',400000,'2025-03-29 15:14:25',1),
(1365,'QHK11612','取出','bank',100000,'2025-03-29 16:30:08',0),
(1366,'QHK11612','存入','bank',1000,'2025-03-29 16:38:18',1),
(1367,'QHK11612','取出','bank',100000,'2025-03-29 16:45:04',0),
(1368,'QHK11612','存入','bank',1000,'2025-03-29 17:08:18',1),
(1369,'QHK11612','存入','bank',1000,'2025-03-29 17:38:18',1),
(1370,'QHK11612','存入','bank',1000,'2025-03-29 18:08:18',1),
(1371,'QHK11612','存入','bank',1000,'2025-03-29 18:38:18',1),
(1372,'QHK11612','存入','bank',1000,'2025-03-29 19:08:18',1),
(1373,'QHK11612','存入','bank',1000,'2025-03-29 19:38:18',1),
(1374,'QHK11612','存入','bank',1000,'2025-03-29 20:08:18',1),
(1375,'QHK11612','存入','bank',1000,'2025-03-29 20:38:18',1),
(1376,'QHK11612','存入','bank',1000,'2025-03-29 21:08:18',1),
(1377,'QHK11612','存入','bank',1000,'2025-03-29 21:38:18',1),
(1378,'QHK11612','存入','bank',1000,'2025-03-29 22:08:18',1),
(1379,'QHK11612','存入','bank',1000,'2025-03-29 22:38:18',1),
(1380,'QHK11612','存入','bank',1000,'2025-03-29 23:08:18',1),
(1381,'QHK11612','存入','bank',1000,'2025-03-29 23:38:18',1),
(1382,'QHK11612','存入','bank',1000,'2025-03-30 00:08:18',1),
(1383,'QHK11612','存入','bank',1000,'2025-03-30 00:38:19',1),
(1384,'QHK11612','存入','bank',1000,'2025-03-30 01:08:19',1),
(1385,'QHK11612','存入','bank',1000,'2025-03-30 01:38:19',1),
(1386,'QHK11612','存入','bank',1000,'2025-03-30 02:08:19',1),
(1387,'QHK11612','存入','bank',1000,'2025-03-30 02:38:19',1),
(1388,'QHK11612','存入','bank',1000,'2025-03-30 03:08:19',1),
(1389,'QHK11612','存入','bank',1000,'2025-03-30 03:38:19',1),
(1390,'QHK11612','存入','bank',1000,'2025-03-30 04:08:19',1),
(1391,'QHK11612','存入','bank',1000,'2025-03-30 04:38:19',1),
(1392,'QHK11612','存入','bank',1000,'2025-03-30 05:08:19',1),
(1393,'QHK11612','存入','bank',1000,'2025-03-30 05:38:19',1),
(1394,'OZH56762','存入','bank',700,'2025-03-30 06:08:19',1),
(1395,'QHK11612','存入','bank',1000,'2025-03-30 06:08:19',1),
(1396,'QHK11612','存入','bank',1000,'2025-03-30 06:38:19',1),
(1397,'XRR77997','存入','bank',1000,'2025-03-30 06:38:19',1),
(1398,'RHT93297','取出','bank',300,'2025-03-30 06:57:22',0),
(1399,'XRR77997','存入','bank',1000,'2025-03-30 07:08:19',1),
(1400,'QHK11612','存入','bank',1000,'2025-03-30 07:08:19',1),
(1401,'QHK11612','存入','bank',1000,'2025-03-30 07:38:19',1),
(1402,'OZH56762','存入','bank',700,'2025-03-30 08:08:19',1),
(1403,'QHK11612','存入','bank',1000,'2025-03-30 08:08:19',1),
(1404,'OZH56762','存入','bank',700,'2025-03-30 08:38:19',1),
(1405,'QHK11612','存入','bank',1000,'2025-03-30 08:38:19',1),
(1406,'VQR49601','存入','bank',1000,'2025-03-30 08:38:19',1),
(1407,'OZH56762','存入','bank',700,'2025-03-30 09:08:19',1),
(1408,'YBR81778','存入','bank',500,'2025-03-30 09:08:19',1),
(1409,'QHK11612','存入','bank',1000,'2025-03-30 09:08:19',1),
(1410,'XRR77997','存入','bank',1000,'2025-03-30 09:08:19',1),
(1411,'VQR49601','存入','bank',1000,'2025-03-30 09:08:19',1),
(1412,'OZH56762','存入','bank',66666,'2025-03-30 09:12:53',1),
(1413,'XRR77997','取出','bank',66666,'2025-03-30 09:12:53',0),
(1414,'XRR77997','取出','bank',10000,'2025-03-30 09:33:37',0),
(1415,'OZH56762','存入','bank',700,'2025-03-30 09:38:19',1),
(1416,'YBR81778','存入','bank',500,'2025-03-30 09:38:19',1),
(1417,'XRR77997','存入','bank',1000,'2025-03-30 09:38:19',1),
(1418,'QHK11612','存入','bank',1000,'2025-03-30 09:38:19',1),
(1419,'VQR49601','存入','bank',1000,'2025-03-30 09:38:19',1),
(1420,'OZH56762','存入','bank',700,'2025-03-30 10:08:19',1),
(1421,'YBR81778','存入','bank',500,'2025-03-30 10:08:19',1),
(1422,'QHK11612','存入','bank',1000,'2025-03-30 10:08:19',1),
(1423,'XRR77997','存入','bank',1000,'2025-03-30 10:08:19',1),
(1424,'VQR49601','存入','bank',1000,'2025-03-30 10:08:19',1),
(1425,'XRR77997','取出','bank',5000,'2025-03-30 10:11:32',0),
(1426,'XRR77997','取出','bank',5000,'2025-03-30 10:11:34',0),
(1427,'RHT93297','存入','bank',13000,'2025-03-30 10:15:52',1),
(1428,'RHT93297','取出','bank',100,'2025-03-30 10:15:59',0),
(1429,'RHT93297','取出','bank',0,'2025-03-30 10:17:42',0),
(1430,'XRR77997','存入','bank',0,'2025-03-30 10:17:42',1),
(1431,'OZH56762','取出','bank',300,'2025-03-30 10:29:46',0),
(1432,'OZH56762','存入','bank',700,'2025-03-30 10:38:19',1),
(1433,'VQR49601','存入','bank',1000,'2025-03-30 10:38:19',1),
(1434,'QHK11612','存入','bank',1000,'2025-03-30 10:38:19',1),
(1435,'RHT93297','取出','bank',4000,'2025-03-30 10:43:46',0),
(1436,'RHT93297','取出','bank',300,'2025-03-30 10:46:34',0),
(1437,'OZH56762','存入','bank',700,'2025-03-30 11:08:19',1),
(1438,'QHK11612','存入','bank',1000,'2025-03-30 11:08:19',1),
(1439,'VQR49601','存入','bank',1000,'2025-03-30 11:08:19',1),
(1440,'OZH56762','存入','bank',700,'2025-03-30 11:38:19',1),
(1441,'QHK11612','存入','bank',1000,'2025-03-30 11:38:19',1),
(1442,'VQR49601','存入','bank',1000,'2025-03-30 11:38:19',1),
(1443,'OZH56762','存入','bank',700,'2025-03-30 12:08:19',1),
(1444,'QHK11612','存入','bank',1000,'2025-03-30 12:08:19',1),
(1445,'XRR77997','存入','bank',1000,'2025-03-30 12:08:19',1),
(1446,'JJX03484','存入','bank',600,'2025-03-30 12:08:19',1),
(1447,'VQR49601','存入','bank',1000,'2025-03-30 12:08:19',1),
(1448,'BDN59221','存入','bank',700,'2025-03-30 12:08:19',1),
(1449,'OZH56762','存入','bank',700,'2025-03-30 12:38:19',1),
(1450,'XRR77997','存入','bank',1000,'2025-03-30 12:38:19',1),
(1451,'QHK11612','存入','bank',1000,'2025-03-30 12:38:19',1),
(1452,'JJX03484','存入','bank',600,'2025-03-30 12:38:19',1),
(1453,'VQR49601','存入','bank',1000,'2025-03-30 12:38:19',1),
(1454,'BDN59221','存入','bank',700,'2025-03-30 12:38:19',1),
(1455,'JJX03484','取出','bank',200,'2025-03-30 12:38:42',0),
(1456,'JJX03484','取出','bank',200,'2025-03-30 12:38:44',0),
(1457,'OZH56762','存入','bank',700,'2025-03-30 13:08:19',1),
(1458,'XRR77997','存入','bank',1000,'2025-03-30 13:08:19',1),
(1459,'VQR49601','存入','bank',1000,'2025-03-30 13:08:19',1),
(1460,'BDN59221','存入','bank',700,'2025-03-30 13:08:19',1),
(1461,'RHT93297','取出','bank',300,'2025-03-30 13:25:36',0),
(1462,'XRR77997','取出','bank',10000,'2025-03-30 13:37:12',0),
(1463,'OZH56762','存入','bank',700,'2025-03-30 13:38:19',1),
(1464,'XRR77997','存入','bank',1000,'2025-03-30 13:38:19',1),
(1465,'JJX03484','存入','bank',600,'2025-03-30 13:38:19',1),
(1466,'VQR49601','存入','bank',1000,'2025-03-30 13:38:19',1),
(1467,'BDN59221','存入','bank',700,'2025-03-30 13:38:19',1),
(1468,'OZH56762','存入','bank',600,'2025-03-30 14:08:19',1),
(1469,'VQR49601','存入','bank',1000,'2025-03-30 14:08:19',1),
(1470,'JJX03484','存入','bank',600,'2025-03-30 14:08:19',1),
(1471,'BDN59221','存入','bank',700,'2025-03-30 14:08:19',1),
(1472,'VQR49601','存入','bank',1000,'2025-03-30 14:38:19',1),
(1473,'JJX03484','存入','bank',600,'2025-03-30 14:38:19',1),
(1474,'BDN59221','存入','bank',700,'2025-03-30 14:38:19',1),
(1475,'JJX03484','取出','bank',300,'2025-03-30 14:38:39',0),
(1476,'JJX03484','取出','bank',10,'2025-03-30 14:45:01',0),
(1477,'BDN59221','取出','bank',1,'2025-03-30 14:45:06',0),
(1478,'JJX03484','取出','bank',1200,'2025-03-30 15:02:12',0),
(1479,'JJX03484','存入','bank',600,'2025-03-30 15:08:19',1),
(1480,'VQR49601','存入','bank',1000,'2025-03-30 15:08:19',1),
(1481,'BDN59221','存入','bank',700,'2025-03-30 15:08:19',1),
(1482,'JJX03484','取出','bank',1,'2025-03-30 15:26:47',0),
(1483,'QHK11612','存入','bank',1000,'2025-03-30 15:38:19',1),
(1484,'VQR49601','存入','bank',1000,'2025-03-30 15:38:19',1),
(1485,'JJX03484','存入','bank',600,'2025-03-30 15:38:19',1),
(1486,'BDN59221','存入','bank',700,'2025-03-30 15:38:19',1),
(1487,'QHK11612','存入','bank',1000,'2025-03-30 16:08:19',1),
(1488,'VQR49601','存入','bank',1000,'2025-03-30 16:08:19',1),
(1489,'QHK11612','存入','bank',1000,'2025-03-30 16:38:19',1),
(1490,'VQR49601','存入','bank',1000,'2025-03-30 16:38:19',1),
(1491,'VQR49601','存入','bank',1000,'2025-03-30 17:08:19',1),
(1492,'QHK11612','存入','bank',1000,'2025-03-30 17:08:19',1),
(1493,'QHK11612','存入','bank',1000,'2025-03-30 17:38:19',1),
(1494,'QHK11612','存入','bank',1000,'2025-03-30 18:08:19',1),
(1495,'XRR77997','存入','bank',1000,'2025-03-30 18:08:19',1),
(1496,'XRR77997','取出','bank',3000,'2025-03-30 18:12:42',0),
(1497,'XRR77997','取出','bank',4000,'2025-03-30 19:30:55',0),
(1498,'JJX03484','存入','bank',600,'2025-03-31 04:24:27',1),
(1499,'JJX03484','取出','bank',200,'2025-03-31 04:43:22',0),
(1500,'JJX03484','取出','bank',200,'2025-03-31 04:43:27',0),
(1501,'JJX03484','取出','bank',200,'2025-03-31 04:43:30',0),
(1502,'JJX03484','取出','bank',200,'2025-03-31 04:43:32',0),
(1503,'JJX03484','取出','bank',200,'2025-03-31 04:43:35',0),
(1504,'JJX03484','取出','bank',200,'2025-03-31 04:43:37',0),
(1505,'JJX03484','取出','bank',200,'2025-03-31 04:43:38',0),
(1506,'JJX03484','取出','bank',200,'2025-03-31 04:43:40',0),
(1507,'UXH40238','取出','bank',200,'2025-03-31 04:44:18',0),
(1508,'UXH40238','取出','bank',200,'2025-03-31 04:44:20',0),
(1509,'JJX03484','存入','bank',600,'2025-03-31 04:54:27',1),
(1510,'XRR77997','取出','bank',100000,'2025-03-31 05:12:26',0),
(1511,'UXH40238','存入','bank',100000,'2025-03-31 05:12:26',1),
(1512,'JJX03484','存入','bank',600,'2025-03-31 05:24:27',1),
(1513,'JJX03484','取出','bank',400,'2025-03-31 05:27:30',0),
(1514,'JJX03484','取出','bank',200,'2025-03-31 05:27:45',0),
(1515,'UXH40238','取出','bank',104600,'2025-03-31 05:29:46',0),
(1516,'CDV27651','存入','bank',700,'2025-03-31 05:54:27',1),
(1517,'JJX03484','存入','bank',600,'2025-03-31 05:54:27',1),
(1518,'CDV27651','取出','bank',5000,'2025-03-31 05:55:46',0),
(1519,'CDV27651','取出','bank',400,'2025-03-31 05:55:50',0),
(1520,'CDV27651','存入','bank',700,'2025-03-31 06:24:27',1),
(1521,'JJX03484','存入','bank',600,'2025-03-31 06:24:27',1),
(1522,'CDV27651','取出','bank',100,'2025-03-31 06:34:29',0),
(1523,'UXH40238','存入','bank',100,'2025-03-31 06:34:29',1),
(1524,'CDV27651','取出','bank',500,'2025-03-31 06:51:40',0),
(1525,'CDV27651','取出','bank',200,'2025-03-31 06:52:09',0),
(1526,'CDV27651','存入','bank',700,'2025-03-31 06:54:27',1),
(1527,'JJX03484','存入','bank',600,'2025-03-31 06:54:27',1),
(1528,'CDV27651','存入','bank',700,'2025-03-31 07:24:27',1),
(1529,'JJX03484','存入','bank',600,'2025-03-31 07:24:27',1),
(1530,'XRR77997','存入','bank',1000,'2025-03-31 07:54:27',1),
(1531,'JJX03484','存入','bank',500,'2025-03-31 07:54:27',1),
(1532,'JJX03484','取出','bank',2500,'2025-03-31 07:56:50',0),
(1533,'VCV61562','取出','bank',400,'2025-03-31 08:16:05',0),
(1534,'VCV61562','取出','bank',400,'2025-03-31 08:16:20',0),
(1535,'VCV61562','取出','bank',400,'2025-03-31 08:16:37',0),
(1536,'VCV61562','取出','bank',400,'2025-03-31 08:17:08',0),
(1537,'VCV61562','取出','bank',400,'2025-03-31 08:17:20',0),
(1538,'VCV61562','取出','bank',400,'2025-03-31 08:17:59',0),
(1539,'VCV61562','取出','bank',400,'2025-03-31 08:18:15',0),
(1540,'XRR77997','取出','bank',400,'2025-03-31 08:18:48',0),
(1541,'VCV61562','取出','bank',400,'2025-03-31 08:19:50',0),
(1542,'VCV61562','取出','bank',400,'2025-03-31 08:19:53',0),
(1543,'VCV61562','取出','bank',400,'2025-03-31 08:20:04',0),
(1544,'VCV61562','取出','bank',400,'2025-03-31 08:20:30',0),
(1545,'VCV61562','取出','bank',400,'2025-03-31 08:20:47',0),
(1546,'XRR77997','取出','bank',15000,'2025-03-31 08:22:32',0),
(1547,'XRR77997','取出','bank',40000,'2025-03-31 08:23:59',0),
(1548,'VCV61562','存入','bank',40000,'2025-03-31 08:24:00',1),
(1549,'VCV61562','取出','bank',400,'2025-03-31 08:24:27',0),
(1550,'UXH40238','存入','bank',500,'2025-03-31 08:24:27',1),
(1551,'XRR77997','存入','bank',800,'2025-03-31 08:24:27',1),
(1552,'JJX03484','存入','bank',500,'2025-03-31 08:24:27',1),
(1553,'VCV61562','存入','bank',1000,'2025-03-31 08:24:27',1),
(1554,'VCV61562','取出','bank',1000,'2025-03-31 08:24:40',0),
(1555,'VCV61562','取出','bank',400,'2025-03-31 08:24:58',0),
(1556,'VCV61562','取出','bank',400,'2025-03-31 08:25:36',0),
(1557,'VCV61562','取出','bank',1000,'2025-03-31 08:26:03',0),
(1558,'VCV61562','取出','bank',500,'2025-03-31 08:26:23',0),
(1559,'VCV61562','取出','bank',500,'2025-03-31 08:26:43',0),
(1560,'VCV61562','取出','bank',500,'2025-03-31 08:26:55',0),
(1561,'XRR77997','取出','bank',40000,'2025-03-31 08:27:22',0),
(1562,'VCV61562','存入','bank',40000,'2025-03-31 08:27:22',1),
(1563,'JJX03484','存入','bank',600,'2025-03-31 08:54:27',1),
(1564,'UXH40238','存入','bank',600,'2025-03-31 08:54:27',1),
(1565,'VCV61562','存入','bank',1000,'2025-03-31 08:54:27',1),
(1566,'UXH40238','取出','bank',500,'2025-03-31 09:05:23',0),
(1567,'UXH40238','取出','bank',500,'2025-03-31 09:09:20',0),
(1568,'VCV61562','存入','bank',1000,'2025-03-31 09:24:27',1),
(1569,'VQR49601','取出','bank',100,'2025-03-31 09:34:12',0),
(1570,'VQR49601','取出','bank',100,'2025-03-31 09:37:17',0),
(1571,'JJX03484','存入','bank',600,'2025-03-31 09:54:27',1),
(1572,'VQR49601','存入','bank',500,'2025-03-31 09:54:27',1),
(1573,'VCV61562','存入','bank',1000,'2025-03-31 09:54:28',1),
(1574,'JJX03484','取出','bank',2500,'2025-03-31 09:54:31',0),
(1575,'VQR49601','取出','bank',1000,'2025-03-31 10:02:22',0),
(1576,'VQR49601','取出','bank',1000,'2025-03-31 10:03:38',0),
(1577,'VQR49601','取出','bank',15000,'2025-03-31 10:04:33',0),
(1578,'VQR49601','取出','bank',1000,'2025-03-31 10:14:40',0),
(1579,'JJX03484','取出','bank',2000,'2025-03-31 10:19:57',0),
(1580,'VQR49601','存入','bank',500,'2025-03-31 10:24:27',1),
(1581,'VCV61562','存入','bank',1000,'2025-03-31 10:24:28',1),
(1582,'OZH56762','存入','bank',600,'2025-03-31 11:07:04',1),
(1583,'XRR77997','存入','bank',800,'2025-03-31 11:07:04',1),
(1584,'VQR49601','存入','bank',500,'2025-03-31 11:07:04',1),
(1585,'JJX03484','存入','bank',600,'2025-03-31 11:07:04',1),
(1586,'RHT93297','取出','bank',100,'2025-03-31 11:16:17',0),
(1587,'VQR49601','存入','bank',500,'2025-03-31 11:37:04',1),
(1588,'JJX03484','存入','bank',600,'2025-03-31 11:37:04',1),
(1589,'JJX03484','取出','bank',10000,'2025-03-31 11:57:15',0),
(1590,'YBR81778','存入','bank',500,'2025-03-31 12:07:04',1),
(1591,'UXH40238','存入','bank',600,'2025-03-31 12:07:04',1),
(1592,'VQR49601','存入','bank',500,'2025-03-31 12:07:04',1),
(1593,'JJX03484','存入','bank',600,'2025-03-31 12:07:04',1),
(1594,'JJX03484','取出','bank',10,'2025-03-31 12:29:18',0),
(1595,'JJX03484','取出','bank',10,'2025-03-31 12:30:07',0),
(1596,'BDN59221','取出','bank',1,'2025-03-31 12:30:21',0),
(1597,'JJX03484','取出','bank',10,'2025-03-31 12:30:24',0),
(1598,'VCV61562','取出','bank',100,'2025-03-31 12:31:18',0),
(1599,'YBR81778','存入','bank',600,'2025-03-31 12:37:04',1),
(1600,'UXH40238','存入','bank',600,'2025-03-31 12:37:04',1),
(1601,'VQR49601','存入','bank',600,'2025-03-31 12:37:04',1),
(1602,'JJX03484','存入','bank',600,'2025-03-31 12:37:05',1),
(1603,'BDN59221','存入','bank',600,'2025-03-31 12:37:05',1),
(1604,'VCV61562','存入','bank',1000,'2025-03-31 12:37:05',1),
(1605,'JJX03484','取出','bank',10,'2025-03-31 12:38:10',0),
(1606,'YBR81778','取出','bank',100,'2025-03-31 12:40:40',0),
(1607,'JJX03484','取出','bank',10,'2025-03-31 12:45:07',0),
(1608,'VQR49601','取出','bank',100,'2025-03-31 13:05:49',0),
(1609,'YBR81778','存入','bank',600,'2025-03-31 13:07:04',1),
(1610,'XRR77997','存入','bank',800,'2025-03-31 13:07:05',1),
(1611,'UXH40238','存入','bank',600,'2025-03-31 13:07:05',1),
(1612,'VQR49601','存入','bank',600,'2025-03-31 13:07:05',1),
(1613,'JJX03484','存入','bank',600,'2025-03-31 13:07:05',1),
(1614,'BDN59221','存入','bank',600,'2025-03-31 13:07:05',1),
(1615,'VCV61562','存入','bank',1000,'2025-03-31 13:07:05',1),
(1616,'YBR81778','存入','bank',600,'2025-03-31 13:37:05',1),
(1617,'VQR49601','存入','bank',500,'2025-03-31 13:37:05',1),
(1618,'XRR77997','存入','bank',1000,'2025-03-31 13:37:05',1),
(1619,'UXH40238','存入','bank',600,'2025-03-31 13:37:05',1),
(1620,'JJX03484','存入','bank',600,'2025-03-31 13:37:05',1),
(1621,'BDN59221','存入','bank',600,'2025-03-31 13:37:05',1),
(1622,'XRR77997','取出','bank',15000,'2025-03-31 14:00:10',0),
(1623,'YBR81778','存入','bank',600,'2025-03-31 14:07:05',1),
(1624,'VQR49601','存入','bank',500,'2025-03-31 14:07:05',1),
(1625,'UXH40238','存入','bank',600,'2025-03-31 14:07:05',1),
(1626,'XRR77997','存入','bank',800,'2025-03-31 14:07:05',1),
(1627,'JJX03484','存入','bank',600,'2025-03-31 14:07:05',1),
(1628,'VCV61562','存入','bank',800,'2025-03-31 14:07:05',1),
(1629,'BDN59221','存入','bank',600,'2025-03-31 14:07:05',1),
(1630,'YBR81778','存入','bank',600,'2025-03-31 14:37:05',1),
(1631,'UXH40238','存入','bank',600,'2025-03-31 14:37:05',1),
(1632,'JJX03484','存入','bank',600,'2025-03-31 14:37:05',1),
(1633,'BDN59221','存入','bank',600,'2025-03-31 14:37:05',1),
(1634,'VCV61562','存入','bank',800,'2025-03-31 14:37:05',1),
(1635,'VCV61562','取出','bank',40,'2025-03-31 14:40:36',0),
(1636,'VCV61562','取出','bank',40,'2025-03-31 14:40:56',0),
(1637,'VCV61562','取出','bank',40,'2025-03-31 14:40:56',0),
(1638,'VCV61562','取出','bank',40,'2025-03-31 14:40:56',0),
(1639,'VCV61562','取出','bank',40,'2025-03-31 14:40:57',0),
(1640,'VCV61562','取出','bank',40,'2025-03-31 14:40:57',0),
(1641,'VCV61562','取出','bank',40,'2025-03-31 14:40:57',0),
(1642,'YBR81778','存入','bank',600,'2025-03-31 15:07:05',1),
(1643,'UXH40238','存入','bank',600,'2025-03-31 15:07:05',1),
(1644,'JJX03484','存入','bank',600,'2025-03-31 15:07:05',1),
(1645,'BDN59221','存入','bank',600,'2025-03-31 15:07:05',1),
(1646,'VCV61562','存入','bank',800,'2025-03-31 15:07:05',1),
(1647,'JJX03484','取出','bank',2000,'2025-03-31 15:07:39',0),
(1648,'YBR81778','存入','bank',600,'2025-03-31 15:37:05',1),
(1649,'BDN59221','存入','bank',600,'2025-03-31 15:37:05',1),
(1650,'VCV61562','存入','bank',800,'2025-03-31 15:37:05',1),
(1651,'VCV61562','取出','bank',10000,'2025-03-31 15:43:07',0),
(1652,'YBR81778','存入','bank',600,'2025-03-31 16:07:05',1),
(1653,'VCV61562','存入','bank',1000,'2025-03-31 16:07:05',1),
(1654,'YBR81778','存入','bank',600,'2025-03-31 16:37:05',1),
(1655,'VCV61562','存入','bank',1000,'2025-03-31 16:37:05',1),
(1656,'VQR49601','取出','bank',100,'2025-03-31 16:47:15',0),
(1657,'VQR49601','取出','bank',1000,'2025-03-31 16:48:34',0),
(1658,'XRR77997','取出','bank',1000,'2025-03-31 17:00:35',0),
(1659,'VQR49601','取出','bank',400,'2025-03-31 17:03:08',0),
(1660,'VQR49601','取出','bank',400,'2025-03-31 17:03:25',0),
(1661,'VQR49601','取出','bank',1000,'2025-03-31 17:09:19',0),
(1662,'XRR77997','存入','bank',800,'2025-03-31 17:15:25',1),
(1663,'VQR49601','存入','bank',500,'2025-03-31 17:15:25',1),
(1664,'QHK11612','存入','bank',500,'2025-03-31 17:45:25',1),
(1665,'XRR77997','存入','bank',600,'2025-03-31 17:45:25',1),
(1666,'VQR49601','存入','bank',500,'2025-03-31 17:45:25',1),
(1667,'XRR77997','存入','bank',600,'2025-03-31 21:04:48',1),
(1668,'VCV61562','取出','bank',100,'2025-03-31 23:54:20',0),
(1669,'YBR81778','存入','bank',600,'2025-04-01 00:04:48',1),
(1670,'VCV61562','存入','bank',1000,'2025-04-01 00:04:49',1),
(1671,'VCV61562','取出','bank',500,'2025-04-01 00:09:41',0),
(1672,'YBR81778','取出','bank',1000,'2025-04-01 00:17:10',0),
(1673,'VCV61562','取出','bank',15000,'2025-04-01 00:19:17',0),
(1674,'VCV61562','取出','bank',400,'2025-04-01 00:19:48',0),
(1675,'VCV61562','取出','bank',40,'2025-04-01 00:29:02',0),
(1676,'VCV61562','取出','bank',40,'2025-04-01 00:29:03',0),
(1677,'VCV61562','取出','bank',40,'2025-04-01 00:29:03',0),
(1678,'VCV61562','取出','bank',40,'2025-04-01 00:29:03',0),
(1679,'VCV61562','取出','bank',40,'2025-04-01 00:29:04',0),
(1680,'VCV61562','取出','bank',40,'2025-04-01 00:29:10',0),
(1681,'VCV61562','取出','bank',40,'2025-04-01 00:29:11',0),
(1682,'VCV61562','取出','bank',40,'2025-04-01 00:29:11',0),
(1683,'VCV61562','取出','bank',40,'2025-04-01 00:29:17',0),
(1684,'VCV61562','取出','bank',40,'2025-04-01 00:29:17',0),
(1685,'VCV61562','取出','bank',40,'2025-04-01 00:29:17',0),
(1686,'VCV61562','取出','bank',25,'2025-04-01 00:30:47',0),
(1687,'VCV61562','取出','bank',25,'2025-04-01 00:30:47',0),
(1688,'VCV61562','取出','bank',25,'2025-04-01 00:30:48',0),
(1689,'VCV61562','取出','bank',25,'2025-04-01 00:30:48',0),
(1690,'VCV61562','取出','bank',25,'2025-04-01 00:30:48',0),
(1691,'VCV61562','取出','bank',25,'2025-04-01 00:30:48',0),
(1692,'VCV61562','取出','bank',25,'2025-04-01 00:30:49',0),
(1693,'VCV61562','取出','bank',25,'2025-04-01 00:30:49',0),
(1694,'VCV61562','取出','bank',25,'2025-04-01 00:30:49',0),
(1695,'YBR81778','取出','bank',700,'2025-04-01 00:31:00',0),
(1696,'VCV61562','取出','bank',25,'2025-04-01 00:31:01',0),
(1697,'VCV61562','取出','bank',25,'2025-04-01 00:31:01',0),
(1698,'VCV61562','取出','bank',25,'2025-04-01 00:31:02',0),
(1699,'VCV61562','取出','bank',25,'2025-04-01 00:31:02',0),
(1700,'VCV61562','取出','bank',25,'2025-04-01 00:31:03',0),
(1701,'VCV61562','取出','bank',25,'2025-04-01 00:31:08',0),
(1702,'VCV61562','取出','bank',25,'2025-04-01 00:31:08',0),
(1703,'VCV61562','取出','bank',25,'2025-04-01 00:31:09',0),
(1704,'VCV61562','取出','bank',25,'2025-04-01 00:31:09',0),
(1705,'VCV61562','取出','bank',25,'2025-04-01 00:31:09',0),
(1706,'VCV61562','取出','bank',25,'2025-04-01 00:31:15',0),
(1707,'VCV61562','取出','bank',25,'2025-04-01 00:31:15',0),
(1708,'VCV61562','取出','bank',25,'2025-04-01 00:31:16',0),
(1709,'VCV61562','取出','bank',25,'2025-04-01 00:31:16',0),
(1710,'VCV61562','取出','bank',25,'2025-04-01 00:31:16',0),
(1711,'VCV61562','取出','bank',25,'2025-04-01 00:31:21',0),
(1712,'VCV61562','取出','bank',25,'2025-04-01 00:31:21',0),
(1713,'VCV61562','取出','bank',25,'2025-04-01 00:31:21',0),
(1714,'VCV61562','取出','bank',25,'2025-04-01 00:31:22',0),
(1715,'VCV61562','取出','bank',25,'2025-04-01 00:31:22',0),
(1716,'VCV61562','取出','bank',25,'2025-04-01 00:31:28',0),
(1717,'VCV61562','取出','bank',25,'2025-04-01 00:31:28',0),
(1718,'VCV61562','取出','bank',25,'2025-04-01 00:31:28',0),
(1719,'VCV61562','取出','bank',25,'2025-04-01 00:31:29',0),
(1720,'VCV61562','取出','bank',25,'2025-04-01 00:31:29',0),
(1721,'VCV61562','取出','bank',25,'2025-04-01 00:31:30',0),
(1722,'VCV61562','取出','bank',25,'2025-04-01 00:31:35',0),
(1723,'VCV61562','取出','bank',25,'2025-04-01 00:31:35',0),
(1724,'VCV61562','取出','bank',25,'2025-04-01 00:31:35',0),
(1725,'VCV61562','取出','bank',25,'2025-04-01 00:31:35',0),
(1726,'VCV61562','取出','bank',25,'2025-04-01 00:31:39',0),
(1727,'VCV61562','取出','bank',25,'2025-04-01 00:31:39',0),
(1728,'VCV61562','取出','bank',25,'2025-04-01 00:31:39',0),
(1729,'VCV61562','取出','bank',25,'2025-04-01 00:31:40',0),
(1730,'VCV61562','取出','bank',25,'2025-04-01 00:31:40',0),
(1731,'VCV61562','取出','bank',25,'2025-04-01 00:31:40',0),
(1732,'VCV61562','取出','bank',25,'2025-04-01 00:31:40',0),
(1733,'VCV61562','取出','bank',25,'2025-04-01 00:31:40',0),
(1734,'VCV61562','取出','bank',25,'2025-04-01 00:31:41',0),
(1735,'VCV61562','取出','bank',25,'2025-04-01 00:31:41',0),
(1736,'VCV61562','取出','bank',40,'2025-04-01 00:31:49',0),
(1737,'VCV61562','取出','bank',40,'2025-04-01 00:31:49',0),
(1738,'VCV61562','取出','bank',40,'2025-04-01 00:31:50',0),
(1739,'VCV61562','取出','bank',40,'2025-04-01 00:31:51',0),
(1740,'VCV61562','取出','bank',40,'2025-04-01 00:31:51',0),
(1741,'VCV61562','取出','bank',40,'2025-04-01 00:32:01',0),
(1742,'VCV61562','取出','bank',40,'2025-04-01 00:32:01',0),
(1743,'VCV61562','取出','bank',40,'2025-04-01 00:32:05',0),
(1744,'YBR81778','存入','bank',600,'2025-04-01 00:34:49',1),
(1745,'VCV61562','存入','bank',1000,'2025-04-01 00:34:49',1),
(1746,'VCV61562','取出','bank',10000,'2025-04-01 00:58:38',0),
(1747,'VCV61562','取出','bank',10000,'2025-04-01 00:58:39',0),
(1748,'YBR81778','取出','bank',5000,'2025-04-01 00:58:40',0),
(1749,'YBR81778','取出','bank',192844,'2025-04-01 00:58:50',0),
(1750,'YBR81778','取出','bank',0,'2025-04-01 00:58:51',0),
(1751,'YBR81778','存入','bank',190000,'2025-04-01 00:59:32',1),
(1752,'YBR81778','存入','bank',600,'2025-04-01 01:04:49',1),
(1753,'VCV61562','存入','bank',1000,'2025-04-01 01:04:49',1),
(1754,'YBR81778','存入','bank',600,'2025-04-01 01:34:49',1),
(1755,'VCV61562','存入','bank',1000,'2025-04-01 01:34:49',1),
(1756,'YBR81778','存入','bank',600,'2025-04-01 02:04:49',1),
(1757,'VCV61562','存入','bank',1000,'2025-04-01 02:04:49',1),
(1758,'VCV61562','取出','bank',100,'2025-04-01 02:23:19',0),
(1759,'VCV61562','取出','bank',400,'2025-04-01 02:29:52',0),
(1760,'YBR81778','存入','bank',600,'2025-04-01 02:34:49',1),
(1761,'VCV61562','存入','bank',1000,'2025-04-01 02:34:49',1),
(1762,'YBR81778','存入','bank',600,'2025-04-01 03:04:49',1),
(1763,'YBR81778','存入','bank',600,'2025-04-01 03:34:49',1),
(1764,'YBR81778','存入','bank',600,'2025-04-01 04:04:49',1),
(1765,'YBR81778','存入','bank',600,'2025-04-01 04:34:49',1),
(1766,'UXH40238','存入','bank',600,'2025-04-01 04:34:49',1),
(1767,'YBR81778','存入','bank',600,'2025-04-01 05:04:49',1),
(1768,'UXH40238','存入','bank',600,'2025-04-01 05:04:49',1),
(1769,'VCV61562','存入','bank',1000,'2025-04-01 05:04:49',1),
(1770,'YBR81778','存入','bank',600,'2025-04-01 05:34:49',1),
(1771,'UXH40238','存入','bank',600,'2025-04-01 05:34:49',1),
(1772,'VCV61562','存入','bank',1000,'2025-04-01 05:34:49',1),
(1773,'YBR81778','存入','bank',600,'2025-04-01 06:04:49',1),
(1774,'UXH40238','存入','bank',600,'2025-04-01 06:04:49',1),
(1775,'VCV61562','存入','bank',1000,'2025-04-01 06:04:49',1),
(1776,'UXH40238','取出','bank',500,'2025-04-01 06:08:45',0),
(1777,'YBR81778','取出','bank',100,'2025-04-01 06:21:12',0),
(1778,'WYU58551','存入','bank',500,'2025-04-01 06:34:49',1),
(1779,'YBR81778','存入','bank',600,'2025-04-01 06:34:49',1),
(1780,'UXH40238','存入','bank',600,'2025-04-01 06:34:49',1),
(1781,'VCV61562','存入','bank',1000,'2025-04-01 06:34:49',1),
(1782,'WYU58551','取出','bank',1200,'2025-04-01 06:47:55',0),
(1783,'WYU58551','取出','bank',700,'2025-04-01 06:48:03',0),
(1784,'WYU58551','取出','bank',200,'2025-04-01 06:48:15',0),
(1785,'UXH40238','取出','bank',1000,'2025-04-01 06:58:38',0),
(1786,'WYU58551','存入','bank',500,'2025-04-01 07:04:49',1),
(1787,'UXH40238','存入','bank',600,'2025-04-01 07:04:49',1),
(1788,'VCV61562','存入','bank',1000,'2025-04-01 07:04:49',1),
(1789,'BDN59221','存入','bank',600,'2025-04-01 07:04:49',1),
(1790,'WYU58551','取出','bank',500,'2025-04-01 07:21:06',0),
(1791,'VCV61562','存入','bank',1000,'2025-04-01 07:34:49',1),
(1792,'YBR81778','取出','bank',15000,'2025-04-01 08:03:24',0),
(1793,'YBR81778','存入','bank',600,'2025-04-01 08:04:49',1),
(1794,'VCV61562','存入','bank',1000,'2025-04-01 08:04:49',1),
(1795,'YBR81778','取出','bank',1000,'2025-04-01 08:04:59',0),
(1796,'VQR49601','取出','bank',400,'2025-04-01 08:24:31',0),
(1797,'VQR49601','取出','bank',500,'2025-04-01 08:24:45',0),
(1798,'VQR49601','取出','bank',1000,'2025-04-01 08:26:55',0),
(1799,'YBR81778','存入','bank',600,'2025-04-01 08:34:49',1),
(1800,'VQR49601','存入','bank',500,'2025-04-01 08:34:49',1),
(1801,'VCV61562','存入','bank',1000,'2025-04-01 08:34:49',1),
(1802,'VCV61562','存入','bank',1000,'2025-04-01 09:04:49',1),
(1803,'VQR49601','取出','bank',100,'2025-04-01 09:12:43',0),
(1804,'VQR49601','存入','bank',500,'2025-04-01 09:34:49',1),
(1805,'VQR49601','存入','bank',500,'2025-04-01 10:04:49',1),
(1806,'YBR81778','存入','bank',600,'2025-04-01 12:54:49',1),
(1807,'CDV27651','存入','bank',500,'2025-04-01 13:24:49',1),
(1808,'YBR81778','存入','bank',600,'2025-04-01 13:24:49',1),
(1809,'CDV27651','取出','bank',500,'2025-04-01 13:34:54',0),
(1810,'CDV27651','取出','bank',1500,'2025-04-01 13:52:37',0),
(1811,'YBR81778','存入','bank',600,'2025-04-01 13:54:49',1),
(1812,'CDV27651','存入','bank',500,'2025-04-01 13:54:49',1),
(1813,'YBR81778','存入','bank',600,'2025-04-01 14:24:49',1),
(1814,'CDV27651','存入','bank',500,'2025-04-01 14:24:49',1),
(1815,'YBR81778','存入','bank',600,'2025-04-01 14:54:49',1),
(1816,'QHK11612','存入','bank',500,'2025-04-01 14:54:49',1),
(1817,'YBR81778','存入','bank',600,'2025-04-01 15:24:49',1),
(1818,'QHK11612','存入','bank',500,'2025-04-01 15:24:49',1),
(1819,'YBR81778','存入','bank',600,'2025-04-01 15:54:49',1),
(1820,'QHK11612','存入','bank',500,'2025-04-01 15:54:49',1),
(1821,'YBR81778','存入','bank',600,'2025-04-01 16:24:49',1),
(1822,'QHK11612','存入','bank',500,'2025-04-01 16:24:49',1),
(1823,'YBR81778','存入','bank',600,'2025-04-01 16:54:49',1),
(1824,'QHK11612','存入','bank',500,'2025-04-01 16:54:50',1),
(1825,'YBR81778','存入','bank',600,'2025-04-01 17:24:49',1),
(1826,'QHK11612','存入','bank',500,'2025-04-01 17:24:50',1),
(1827,'VQR49601','取出','bank',100,'2025-04-01 17:32:14',0),
(1828,'YBR81778','存入','bank',600,'2025-04-01 17:54:49',1),
(1829,'QHK11612','存入','bank',500,'2025-04-01 17:54:50',1),
(1830,'YBR81778','存入','bank',600,'2025-04-01 18:24:49',1),
(1831,'QHK11612','存入','bank',500,'2025-04-01 18:24:50',1),
(1832,'YBR81778','存入','bank',600,'2025-04-01 18:54:50',1),
(1833,'QHK11612','存入','bank',500,'2025-04-01 18:54:50',1),
(1834,'YBR81778','存入','bank',600,'2025-04-01 19:24:50',1),
(1835,'QHK11612','存入','bank',500,'2025-04-01 19:24:50',1),
(1836,'YBR81778','存入','bank',600,'2025-04-01 19:54:50',1),
(1837,'QHK11612','存入','bank',500,'2025-04-01 19:54:50',1),
(1838,'YBR81778','存入','bank',600,'2025-04-01 20:24:50',1),
(1839,'QHK11612','存入','bank',500,'2025-04-01 20:24:50',1),
(1840,'YBR81778','存入','bank',600,'2025-04-01 20:54:50',1),
(1841,'QHK11612','存入','bank',500,'2025-04-01 20:54:50',1),
(1842,'YBR81778','存入','bank',600,'2025-04-01 21:24:50',1),
(1843,'QHK11612','存入','bank',500,'2025-04-01 21:24:50',1),
(1844,'YBR81778','存入','bank',600,'2025-04-01 21:54:50',1),
(1845,'QHK11612','存入','bank',500,'2025-04-01 21:54:50',1),
(1846,'YBR81778','存入','bank',600,'2025-04-01 22:24:50',1),
(1847,'QHK11612','存入','bank',500,'2025-04-01 22:24:50',1),
(1848,'YBR81778','存入','bank',600,'2025-04-01 22:54:50',1),
(1849,'QHK11612','存入','bank',500,'2025-04-01 22:54:50',1),
(1850,'YBR81778','存入','bank',600,'2025-04-01 23:24:50',1),
(1851,'QHK11612','存入','bank',500,'2025-04-01 23:24:50',1),
(1852,'YBR81778','存入','bank',600,'2025-04-01 23:54:50',1),
(1853,'QHK11612','存入','bank',500,'2025-04-01 23:54:50',1),
(1854,'YBR81778','存入','bank',600,'2025-04-02 00:24:50',1),
(1855,'QHK11612','存入','bank',500,'2025-04-02 00:24:50',1),
(1856,'YBR81778','存入','bank',600,'2025-04-02 00:54:50',1),
(1857,'QHK11612','存入','bank',500,'2025-04-02 00:54:50',1),
(1858,'YBR81778','存入','bank',600,'2025-04-02 01:24:50',1),
(1859,'QHK11612','存入','bank',500,'2025-04-02 01:24:50',1),
(1860,'YBR81778','存入','bank',600,'2025-04-02 01:54:50',1),
(1861,'QHK11612','存入','bank',500,'2025-04-02 01:54:50',1),
(1862,'YBR81778','存入','bank',600,'2025-04-02 02:24:50',1),
(1863,'QHK11612','存入','bank',500,'2025-04-02 02:24:50',1),
(1864,'YBR81778','存入','bank',7000,'2025-04-02 02:30:40',1),
(1865,'YBR81778','存入','bank',600,'2025-04-02 02:54:50',1),
(1866,'QHK11612','存入','bank',500,'2025-04-02 02:54:50',1),
(1867,'YBR81778','存入','bank',600,'2025-04-02 03:24:50',1),
(1868,'QHK11612','存入','bank',500,'2025-04-02 03:24:50',1),
(1869,'YBR81778','存入','bank',600,'2025-04-02 03:54:50',1),
(1870,'QHK11612','存入','bank',500,'2025-04-02 03:54:50',1),
(1871,'YBR81778','存入','bank',600,'2025-04-02 04:24:50',1),
(1872,'QHK11612','存入','bank',500,'2025-04-02 04:24:50',1),
(1873,'YBR81778','存入','bank',600,'2025-04-02 04:54:50',1),
(1874,'QHK11612','存入','bank',500,'2025-04-02 04:54:50',1),
(1875,'QHK11612','存入','bank',500,'2025-04-02 05:24:50',1),
(1876,'YBR81778','存入','bank',600,'2025-04-02 05:24:50',1),
(1877,'YBR81778','存入','bank',600,'2025-04-02 05:54:50',1),
(1878,'QHK11612','存入','bank',500,'2025-04-02 05:54:50',1),
(1879,'YBR81778','存入','bank',600,'2025-04-02 06:24:50',1),
(1880,'QHK11612','存入','bank',500,'2025-04-02 06:24:50',1),
(1881,'QHK11612','存入','bank',500,'2025-04-02 06:54:50',1),
(1882,'QHK11612','存入','bank',500,'2025-04-02 07:24:50',1),
(1883,'BDN59221','存入','bank',600,'2025-04-02 07:24:50',1),
(1884,'QHK11612','存入','bank',500,'2025-04-02 07:54:50',1),
(1885,'QHK11612','存入','bank',500,'2025-04-02 08:24:50',1),
(1886,'YBR81778','存入','bank',600,'2025-04-02 08:54:50',1),
(1887,'QHK11612','存入','bank',500,'2025-04-02 08:54:50',1),
(1888,'QHK11612','存入','bank',500,'2025-04-02 09:24:50',1),
(1889,'XRR77997','存入','bank',600,'2025-04-02 10:41:36',1),
(1890,'XRR77997','存入','bank',600,'2025-04-02 11:11:36',1),
(1891,'RHT93297','取出','bank',100,'2025-04-02 11:36:38',0),
(1892,'OZH56762','存入','bank',600,'2025-04-02 11:59:12',1),
(1893,'JJX03484','存入','bank',600,'2025-04-02 11:59:12',1),
(1894,'XRR77997','存入','bank',1000,'2025-04-02 11:59:12',1),
(1895,'ICW34676','取出','bank',100,'2025-04-02 12:27:30',0),
(1896,'RHT93297','取出','bank',100,'2025-04-02 12:29:51',0),
(1897,'JJX03484','取出','bank',1,'2025-04-02 12:30:33',0),
(1898,'OZH56762','存入','bank',600,'2025-04-02 12:46:32',1),
(1899,'XRR77997','存入','bank',600,'2025-04-02 12:46:32',1),
(1900,'QLU88274','取出','bank',5000,'2025-04-02 13:03:34',0),
(1901,'QLU88274','存入','bank',5226,'2025-04-02 13:03:35',1),
(1902,'QLU88274','取出','bank',5000,'2025-04-02 13:03:42',0),
(1903,'QLU88274','存入','bank',5000,'2025-04-02 13:03:44',1),
(1904,'QLU88274','取出','bank',5000,'2025-04-02 13:03:47',0),
(1905,'QLU88274','存入','bank',5000,'2025-04-02 13:03:49',1),
(1906,'QLU88274','取出','bank',5000,'2025-04-02 13:03:51',0),
(1907,'OZH56762','存入','bank',600,'2025-04-02 13:16:32',1),
(1908,'UXH40238','存入','bank',600,'2025-04-02 13:16:32',1),
(1909,'VQR49601','存入','bank',500,'2025-04-02 13:16:32',1),
(1910,'VQR49601','取出','bank',1000,'2025-04-02 13:18:19',0),
(1911,'OZH56762','存入','bank',600,'2025-04-02 13:46:32',1),
(1912,'UXH40238','存入','bank',600,'2025-04-02 13:46:32',1),
(1913,'JJX03484','存入','bank',600,'2025-04-02 13:46:32',1),
(1914,'XRR77997','存入','bank',1000,'2025-04-02 13:52:21',1),
(1915,'VQR49601','存入','bank',500,'2025-04-02 13:52:21',1),
(1916,'VQR49601','存入','bank',500,'2025-04-02 14:22:21',1),
(1917,'QHK11612','存入','bank',500,'2025-04-03 06:07:36',1),
(1918,'QHK11612','存入','bank',500,'2025-04-03 06:37:36',1),
(1919,'QHK11612','存入','bank',500,'2025-04-03 07:07:36',1),
(1920,'BDN59221','存入','bank',600,'2025-04-03 07:07:37',1),
(1921,'QHK11612','存入','bank',500,'2025-04-03 07:37:37',1),
(1922,'BDN59221','存入','bank',600,'2025-04-03 07:37:37',1),
(1923,'JJX03484','取出','bank',2000,'2025-04-03 09:16:40',0),
(1924,'YBR81778','存入','bank',600,'2025-04-03 09:23:45',1),
(1925,'XRR77997','存入','bank',1000,'2025-04-03 09:23:46',1),
(1926,'JJX03484','存入','bank',600,'2025-04-03 09:23:46',1),
(1927,'YBR81778','取出','bank',1000,'2025-04-03 09:35:54',0),
(1928,'YBR81778','存入','bank',600,'2025-04-03 09:53:46',1),
(1929,'XRR77997','存入','bank',1000,'2025-04-03 09:53:46',1),
(1930,'QHK11612','存入','bank',600,'2025-04-03 09:53:46',1),
(1931,'JJX03484','存入','bank',600,'2025-04-03 09:53:46',1),
(1932,'YBR81778','取出','bank',1000,'2025-04-03 09:57:11',0),
(1933,'YBR81778','存入','bank',600,'2025-04-03 10:23:46',1),
(1934,'XRR77997','存入','bank',1000,'2025-04-03 10:23:46',1),
(1935,'QHK11612','存入','bank',600,'2025-04-03 10:23:46',1),
(1936,'YBR81778','取出','bank',300,'2025-04-03 10:27:45',0),
(1937,'YBR81778','存入','bank',66666,'2025-04-03 10:32:14',1),
(1938,'XRR77997','取出','bank',66666,'2025-04-03 10:32:14',0),
(1939,'YBR81778','取出','bank',1,'2025-04-03 10:32:43',0),
(1940,'XRR77997','存入','bank',1,'2025-04-03 10:32:43',1),
(1941,'YBR81778','取出','bank',10,'2025-04-03 10:34:49',0),
(1942,'QHK11612','存入','bank',10,'2025-04-03 10:34:49',1),
(1943,'JJX03484','取出','bank',2000,'2025-04-03 10:49:12',0),
(1944,'QHK11612','存入','bank',600,'2025-04-03 10:53:46',1),
(1945,'VQR49601','存入','bank',1000,'2025-04-03 10:53:46',1),
(1946,'VQR49601','取出','bank',100,'2025-04-03 10:54:50',0),
(1947,'BDN59221','取出','bank',10000,'2025-04-03 11:18:33',0),
(1948,'XRR77997','存入','bank',1000,'2025-04-03 11:23:46',1),
(1949,'QHK11612','存入','bank',600,'2025-04-03 11:23:46',1),
(1950,'JJX03484','存入','bank',600,'2025-04-03 11:23:46',1),
(1951,'VQR49601','存入','bank',700,'2025-04-03 11:23:46',1),
(1952,'BDN59221','存入','bank',600,'2025-04-03 11:23:46',1),
(1953,'CDV27651','存入','bank',1000,'2025-04-03 11:53:46',1),
(1954,'QHK11612','存入','bank',600,'2025-04-03 11:53:46',1),
(1955,'XRR77997','存入','bank',1000,'2025-04-03 11:53:46',1),
(1956,'OZH56762','存入','bank',600,'2025-04-03 11:53:46',1),
(1957,'JJX03484','存入','bank',600,'2025-04-03 11:53:46',1),
(1958,'BDN59221','存入','bank',600,'2025-04-03 11:53:46',1),
(1959,'OZH56762','存入','bank',600,'2025-04-03 12:23:46',1),
(1960,'QHK11612','存入','bank',600,'2025-04-03 12:23:46',1),
(1961,'VQR49601','存入','bank',700,'2025-04-03 12:23:46',1),
(1962,'JJX03484','存入','bank',600,'2025-04-03 12:23:46',1),
(1963,'BDN59221','存入','bank',600,'2025-04-03 12:23:46',1),
(1964,'QHK11612','存入','bank',600,'2025-04-03 12:53:46',1),
(1965,'VQR49601','存入','bank',700,'2025-04-03 12:53:46',1),
(1966,'QHK11612','存入','bank',600,'2025-04-03 13:23:46',1),
(1967,'QHK11612','存入','bank',600,'2025-04-03 13:53:46',1),
(1968,'VQR49601','取出','bank',100,'2025-04-03 14:42:59',0),
(1969,'VQR49601','存入','bank',1000,'2025-04-03 14:59:33',1),
(1970,'XRR77997','存入','bank',1000,'2025-04-03 14:59:33',1),
(1971,'VQR49601','存入','bank',1000,'2025-04-03 15:54:54',1),
(1972,'XRR77997','存入','bank',1000,'2025-04-03 15:54:54',1),
(1973,'BDN59221','存入','bank',600,'2025-04-04 03:23:46',1),
(1974,'QHK11612','取出','bank',100,'2025-04-04 03:27:39',0),
(1975,'QHK11612','存入','bank',600,'2025-04-04 03:53:46',1),
(1976,'BDN59221','存入','bank',600,'2025-04-04 03:53:46',1),
(1977,'QHK11612','取出','bank',930,'2025-04-04 04:02:05',0),
(1978,'QHK11612','取出','bank',50000,'2025-04-04 04:21:58',0),
(1979,'QHK11612','存入','bank',600,'2025-04-04 04:23:46',1),
(1980,'BDN59221','存入','bank',600,'2025-04-04 04:23:46',1),
(1981,'UUU52761','取出','bank',100,'2025-04-04 04:34:05',0),
(1982,'UUU52761','取出','bank',50,'2025-04-04 04:37:34',0),
(1983,'XRR77997','取出','bank',100,'2025-04-04 04:53:22',0),
(1984,'YBR81778','存入','bank',600,'2025-04-04 04:53:46',1),
(1985,'XRR77997','存入','bank',1000,'2025-04-04 04:53:46',1),
(1986,'QHK11612','存入','bank',600,'2025-04-04 04:53:46',1),
(1987,'BDN59221','存入','bank',600,'2025-04-04 04:53:46',1),
(1988,'YBR81778','存入','bank',600,'2025-04-04 05:23:46',1),
(1989,'QHK11612','存入','bank',600,'2025-04-04 05:23:46',1),
(1990,'BDN59221','存入','bank',600,'2025-04-04 05:23:46',1),
(1991,'YBR81778','取出','bank',10000,'2025-04-04 05:28:48',0),
(1992,'YBR81778','存入','bank',600,'2025-04-04 05:53:46',1),
(1993,'XRR77997','存入','bank',800,'2025-04-04 05:53:46',1),
(1994,'QHK11612','存入','bank',600,'2025-04-04 05:53:46',1),
(1995,'YBR81778','取出','bank',500,'2025-04-04 06:12:12',0),
(1996,'UUU52761','取出','bank',500,'2025-04-04 06:12:18',0),
(1997,'YBR81778','存入','bank',600,'2025-04-04 06:23:46',1),
(1998,'QHK11612','存入','bank',600,'2025-04-04 06:23:46',1),
(1999,'YBR81778','存入','bank',600,'2025-04-04 06:53:46',1),
(2000,'QHK11612','存入','bank',600,'2025-04-04 06:53:46',1),
(2001,'YBR81778','取出','bank',80000,'2025-04-04 07:16:53',0),
(2002,'YBR81778','取出','bank',1000,'2025-04-04 07:22:49',0),
(2003,'OZH56762','存入','bank',600,'2025-04-04 07:23:46',1),
(2004,'YBR81778','存入','bank',600,'2025-04-04 07:23:46',1),
(2005,'QHK11612','存入','bank',600,'2025-04-04 07:23:47',1),
(2006,'YBR81778','存入','bank',600,'2025-04-04 07:53:47',1),
(2007,'QHK11612','存入','bank',600,'2025-04-04 07:53:47',1),
(2008,'YBR81778','存入','bank',600,'2025-04-04 08:23:47',1),
(2009,'QHK11612','存入','bank',600,'2025-04-04 08:23:47',1),
(2010,'UUU52761','存入','bank',10000,'2025-04-04 08:26:56',1),
(2011,'UUU52761','存入','bank',10000,'2025-04-04 08:26:57',1),
(2012,'UUU52761','存入','bank',17898,'2025-04-04 08:27:00',1),
(2013,'YBR81778','存入','bank',80000,'2025-04-04 08:27:01',1),
(2014,'UUU52761','取出','bank',2000,'2025-04-04 08:27:09',0),
(2015,'YBR81778','存入','bank',9000,'2025-04-04 08:27:11',1),
(2016,'UUU52761','存入','bank',2000,'2025-04-04 08:27:12',1),
(2017,'YBR81778','存入','bank',600,'2025-04-04 08:53:47',1),
(2018,'QHK11612','存入','bank',600,'2025-04-04 08:53:47',1),
(2019,'ICW34676','取出','bank',100,'2025-04-04 08:58:52',0),
(2020,'ICW34676','取出','bank',5000,'2025-04-04 09:04:23',0),
(2021,'ICW34676','取出','bank',2000,'2025-04-04 09:04:25',0),
(2022,'ICW34676','取出','bank',200,'2025-04-04 09:04:27',0),
(2023,'ICW34676','存入','bank',0,'2025-04-04 09:11:33',1),
(2024,'UUU52761','取出','bank',0,'2025-04-04 09:11:33',0),
(2025,'QLU88274','取出','bank',0,'2025-04-04 09:21:41',0),
(2026,'UUU52761','存入','bank',0,'2025-04-04 09:21:41',1),
(2027,'YBR81778','存入','bank',600,'2025-04-04 09:23:47',1),
(2028,'QHK11612','存入','bank',600,'2025-04-04 09:23:47',1),
(2029,'UUU52761','取出','bank',2000,'2025-04-04 09:24:06',0),
(2030,'UUU52761','存入','bank',2000,'2025-04-04 09:24:07',1),
(2031,'YBR81778','存入','bank',520624,'2025-04-04 09:24:10',1),
(2032,'YBR81778','取出','bank',1000,'2025-04-04 09:24:22',0),
(2033,'UUU52761','取出','bank',2000,'2025-04-04 09:24:56',0),
(2034,'UUU52761','取出','bank',2000,'2025-04-04 09:24:57',0),
(2035,'UUU52761','存入','bank',4000,'2025-04-04 09:24:58',1),
(2036,'UUU52761','取出','bank',42248,'2025-04-04 09:25:02',0),
(2037,'UUU52761','存入','bank',10000,'2025-04-04 09:25:09',1),
(2038,'UUU52761','存入','bank',10000,'2025-04-04 09:25:10',1),
(2039,'UUU52761','存入','bank',10000,'2025-04-04 09:25:10',1),
(2040,'UUU52761','取出','bank',30000,'2025-04-04 09:25:13',0),
(2041,'UUU52761','存入','bank',10000,'2025-04-04 09:25:17',1),
(2042,'UUU52761','存入','bank',10000,'2025-04-04 09:25:17',1),
(2043,'UUU52761','存入','bank',22248,'2025-04-04 09:25:18',1),
(2044,'UUU52761','取出','bank',2000,'2025-04-04 09:25:25',0),
(2045,'UUU52761','取出','bank',40248,'2025-04-04 09:25:26',0),
(2046,'UUU52761','存入','bank',10000,'2025-04-04 09:25:30',1),
(2047,'UUU52761','存入','bank',10000,'2025-04-04 09:25:30',1),
(2048,'UUU52761','存入','bank',10000,'2025-04-04 09:25:30',1),
(2049,'UUU52761','存入','bank',10000,'2025-04-04 09:25:31',1),
(2050,'UUU52761','取出','bank',40000,'2025-04-04 09:25:32',0),
(2051,'UUU52761','存入','bank',10000,'2025-04-04 09:25:34',1),
(2052,'UUU52761','存入','bank',10000,'2025-04-04 09:25:34',1),
(2053,'UUU52761','存入','bank',10000,'2025-04-04 09:25:34',1),
(2054,'UUU52761','存入','bank',10000,'2025-04-04 09:25:34',1),
(2055,'UUU52761','存入','bank',2248,'2025-04-04 09:25:35',1),
(2056,'UUU52761','取出','bank',2000,'2025-04-04 09:25:38',0),
(2057,'UUU52761','存入','bank',2000,'2025-04-04 09:25:40',1),
(2058,'UUU52761','取出','bank',2000,'2025-04-04 09:25:41',0),
(2059,'UUU52761','取出','bank',40248,'2025-04-04 09:25:43',0),
(2060,'UUU52761','存入','bank',10000,'2025-04-04 09:25:48',1),
(2061,'UUU52761','存入','bank',10000,'2025-04-04 09:25:48',1),
(2062,'UUU52761','存入','bank',22248,'2025-04-04 09:25:49',1),
(2063,'UUU52761','取出','bank',2000,'2025-04-04 09:25:53',0),
(2064,'UUU52761','存入','bank',2000,'2025-04-04 09:25:56',1),
(2065,'UUU52761','取出','bank',5000,'2025-04-04 09:26:00',0),
(2066,'UUU52761','取出','bank',37248,'2025-04-04 09:26:02',0),
(2067,'UUU52761','存入','bank',10000,'2025-04-04 09:26:34',1),
(2068,'UUU52761','存入','bank',5000,'2025-04-04 09:26:35',1),
(2069,'UUU52761','存入','bank',5000,'2025-04-04 09:26:36',1),
(2070,'UUU52761','存入','bank',5000,'2025-04-04 09:26:37',1),
(2071,'UUU52761','存入','bank',5000,'2025-04-04 09:26:37',1),
(2072,'UUU52761','存入','bank',5000,'2025-04-04 09:26:37',1),
(2073,'UUU52761','存入','bank',5000,'2025-04-04 09:26:37',1),
(2074,'UUU52761','存入','bank',2000,'2025-04-04 09:26:51',1),
(2075,'QLU88274','存入','bank',10000,'2025-04-04 09:27:06',1),
(2076,'QLU88274','存入','bank',10000,'2025-04-04 09:27:08',1),
(2077,'QLU88274','存入','bank',10000,'2025-04-04 09:27:08',1),
(2078,'QLU88274','存入','bank',10000,'2025-04-04 09:27:09',1),
(2079,'QLU88274','存入','bank',10000,'2025-04-04 09:27:10',1),
(2080,'QLU88274','存入','bank',10000,'2025-04-04 09:27:13',1),
(2081,'OZH56762','存入','bank',600,'2025-04-04 09:53:47',1),
(2082,'YBR81778','存入','bank',600,'2025-04-04 09:53:47',1),
(2083,'QHK11612','存入','bank',600,'2025-04-04 09:53:47',1),
(2084,'YBR81778','存入','bank',600,'2025-04-04 10:23:47',1),
(2085,'QHK11612','存入','bank',600,'2025-04-04 10:23:47',1),
(2086,'OZH56762','存入','bank',600,'2025-04-04 10:53:47',1),
(2087,'YBR81778','存入','bank',600,'2025-04-04 10:53:47',1),
(2088,'QHK11612','存入','bank',600,'2025-04-04 10:53:47',1),
(2089,'QHK11612','取出','bank',5000,'2025-04-04 11:09:55',0),
(2090,'QHK11612','取出','bank',5000,'2025-04-04 11:09:57',0),
(2091,'YBR81778','存入','bank',600,'2025-04-04 11:23:47',1),
(2092,'QHK11612','存入','bank',600,'2025-04-04 11:23:47',1),
(2093,'OZH56762','存入','bank',600,'2025-04-04 11:53:47',1),
(2094,'YBR81778','存入','bank',600,'2025-04-04 11:53:47',1),
(2095,'QHK11612','存入','bank',600,'2025-04-04 11:53:47',1),
(2096,'JJX03484','存入','bank',600,'2025-04-04 11:53:47',1),
(2097,'OZH56762','取出','bank',100,'2025-04-04 11:54:39',0),
(2098,'OZH56762','取出','bank',100000,'2025-04-04 11:59:16',0),
(2099,'JJX03484','存入','bank',100000,'2025-04-04 11:59:16',1),
(2100,'JJX03484','取出','bank',120000,'2025-04-04 11:59:29',0),
(2101,'OZH56762','取出','bank',100,'2025-04-04 12:04:49',0),
(2102,'JJX03484','取出','bank',400,'2025-04-04 12:10:35',0),
(2103,'JJX03484','取出','bank',400,'2025-04-04 12:11:43',0),
(2104,'JJX03484','取出','bank',400,'2025-04-04 12:12:39',0),
(2105,'JJX03484','取出','bank',400,'2025-04-04 12:12:54',0),
(2106,'JJX03484','取出','bank',400,'2025-04-04 12:13:18',0),
(2107,'JJX03484','取出','bank',400,'2025-04-04 12:13:54',0),
(2108,'JJX03484','取出','bank',400,'2025-04-04 12:14:23',0),
(2109,'JJX03484','取出','bank',400,'2025-04-04 12:14:48',0),
(2110,'JJX03484','取出','bank',400,'2025-04-04 12:14:52',0),
(2111,'JJX03484','取出','bank',400,'2025-04-04 12:17:25',0),
(2112,'JJX03484','取出','bank',400,'2025-04-04 12:18:21',0),
(2113,'JJX03484','取出','bank',400,'2025-04-04 12:20:27',0),
(2114,'UUU52761','存入','bank',10000,'2025-04-04 12:22:05',1),
(2115,'UUU52761','存入','bank',10000,'2025-04-04 12:22:06',1),
(2116,'UUU52761','存入','bank',10000,'2025-04-04 12:22:07',1),
(2117,'UUU52761','存入','bank',10000,'2025-04-04 12:22:07',1),
(2118,'UUU52761','存入','bank',10000,'2025-04-04 12:22:07',1),
(2119,'UUU52761','存入','bank',10000,'2025-04-04 12:22:07',1),
(2120,'UUU52761','存入','bank',10000,'2025-04-04 12:22:08',1),
(2121,'UUU52761','存入','bank',10000,'2025-04-04 12:22:09',1),
(2122,'UUU52761','存入','bank',10000,'2025-04-04 12:22:09',1),
(2123,'UUU52761','存入','bank',10000,'2025-04-04 12:22:09',1),
(2124,'UUU52761','存入','bank',10000,'2025-04-04 12:22:10',1),
(2125,'UUU52761','存入','bank',10000,'2025-04-04 12:22:10',1),
(2126,'UUU52761','存入','bank',10000,'2025-04-04 12:22:10',1),
(2127,'UUU52761','存入','bank',10000,'2025-04-04 12:22:10',1),
(2128,'UUU52761','取出','bank',2000,'2025-04-04 12:22:14',0),
(2129,'QLU88274','取出','bank',2000,'2025-04-04 12:22:21',0),
(2130,'OZH56762','存入','bank',600,'2025-04-04 12:23:47',1),
(2131,'YBR81778','存入','bank',600,'2025-04-04 12:23:47',1),
(2132,'QHK11612','存入','bank',600,'2025-04-04 12:23:47',1),
(2133,'XRR77997','存入','bank',800,'2025-04-04 12:23:47',1),
(2134,'JJX03484','存入','bank',600,'2025-04-04 12:23:47',1),
(2135,'YBR81778','取出','bank',300,'2025-04-04 12:30:41',0),
(2136,'QLU88274','取出','bank',395,'2025-04-04 12:31:01',0),
(2137,'LYX25359','取出','bank',100,'2025-04-04 12:35:13',0),
(2138,'QHK11612','取出','bank',700,'2025-04-04 12:35:49',0),
(2139,'LYX25359','取出','bank',100,'2025-04-04 12:50:07',0),
(2140,'LYX25359','取出','bank',400,'2025-04-04 12:52:33',0),
(2141,'LYX25359','取出','bank',400,'2025-04-04 12:52:49',0),
(2142,'JJX03484','取出','bank',4000,'2025-04-04 12:53:08',0),
(2143,'OZH56762','存入','bank',600,'2025-04-04 12:53:47',1),
(2144,'YBR81778','存入','bank',600,'2025-04-04 12:53:47',1),
(2145,'XRR77997','存入','bank',800,'2025-04-04 12:53:47',1),
(2146,'JJX03484','存入','bank',600,'2025-04-04 12:53:47',1),
(2147,'LYX25359','存入','bank',500,'2025-04-04 12:53:47',1),
(2148,'LYX25359','取出','bank',300,'2025-04-04 12:54:25',0),
(2149,'LYX25359','取出','bank',100,'2025-04-04 13:13:17',0),
(2150,'UUU52761','取出','bank',500,'2025-04-04 13:23:22',0),
(2151,'OZH56762','存入','bank',600,'2025-04-04 13:23:47',1),
(2152,'YBR81778','存入','bank',600,'2025-04-04 13:23:47',1),
(2153,'XRR77997','存入','bank',800,'2025-04-04 13:23:47',1),
(2154,'OZH56762','存入','bank',600,'2025-04-04 13:53:47',1),
(2155,'YBR81778','存入','bank',600,'2025-04-04 13:53:47',1),
(2156,'XRR77997','存入','bank',800,'2025-04-04 13:53:47',1),
(2157,'LYX25359','存入','bank',500,'2025-04-04 13:53:47',1),
(2158,'OZH56762','存入','bank',600,'2025-04-04 14:23:47',1),
(2159,'YBR81778','存入','bank',600,'2025-04-04 14:23:47',1),
(2160,'UXH40238','存入','bank',600,'2025-04-04 14:23:47',1),
(2161,'XRR77997','存入','bank',800,'2025-04-04 14:23:47',1),
(2162,'JJX03484','存入','bank',600,'2025-04-04 14:23:47',1),
(2163,'LYX25359','存入','bank',500,'2025-04-04 14:23:47',1),
(2164,'IMN66507','取出','bank',500,'2025-04-04 14:24:26',0),
(2165,'JJX03484','取出','bank',2000,'2025-04-04 14:44:10',0),
(2166,'JJX03484','取出','bank',400,'2025-04-04 14:44:48',0),
(2167,'JJX03484','取出','bank',400,'2025-04-04 14:46:26',0),
(2168,'JJX03484','取出','bank',400,'2025-04-04 14:48:15',0),
(2169,'UXH40238','存入','bank',600,'2025-04-04 14:53:47',1),
(2170,'YBR81778','存入','bank',600,'2025-04-04 14:53:47',1),
(2171,'QHK11612','存入','bank',600,'2025-04-04 14:53:47',1),
(2172,'JJX03484','存入','bank',600,'2025-04-04 14:53:47',1),
(2173,'IMN66507','取出','bank',100,'2025-04-04 14:57:00',0),
(2174,'YBR81778','存入','bank',600,'2025-04-04 15:23:47',1),
(2175,'UXH40238','存入','bank',600,'2025-04-04 15:23:47',1),
(2176,'QHK11612','存入','bank',600,'2025-04-04 15:23:47',1),
(2177,'JJX03484','存入','bank',600,'2025-04-04 15:23:47',1),
(2178,'VCV61562','存入','bank',1000,'2025-04-04 15:23:47',1),
(2179,'VCV61562','取出','bank',100,'2025-04-04 15:29:35',0),
(2180,'YBR81778','取出','bank',1000,'2025-04-04 15:29:47',0),
(2181,'YBR81778','存入','bank',600,'2025-04-04 15:53:47',1),
(2182,'JJX03484','存入','bank',600,'2025-04-04 15:53:47',1),
(2183,'IMN66507','存入','bank',500,'2025-04-04 15:53:47',1),
(2184,'UXH40238','存入','bank',600,'2025-04-04 15:53:47',1),
(2185,'VCV61562','存入','bank',1000,'2025-04-04 15:53:47',1),
(2186,'UXH40238','存入','bank',1,'2025-04-04 15:56:43',1),
(2187,'JJX03484','取出','bank',1,'2025-04-04 15:56:43',0),
(2188,'UXH40238','存入','bank',1,'2025-04-04 16:02:55',1),
(2189,'JJX03484','取出','bank',1,'2025-04-04 16:02:55',0),
(2190,'IMN66507','存入','bank',500,'2025-04-04 16:23:47',1),
(2191,'UXH40238','存入','bank',600,'2025-04-04 16:23:47',1),
(2192,'JJX03484','存入','bank',600,'2025-04-04 16:23:47',1),
(2193,'YBR81778','存入','bank',600,'2025-04-04 16:23:47',1),
(2194,'VCV61562','存入','bank',1000,'2025-04-04 16:23:47',1),
(2195,'VCV61562','取出','bank',45000,'2025-04-04 16:35:34',0),
(2196,'JJX03484','取出','bank',52000,'2025-04-04 16:42:09',0),
(2197,'YBR81778','存入','bank',600,'2025-04-04 16:53:47',1),
(2198,'UXH40238','存入','bank',600,'2025-04-04 16:53:47',1),
(2199,'JJX03484','取出','bank',52000,'2025-04-04 17:10:04',0),
(2200,'IMN66507','存入','bank',500,'2025-04-04 17:23:47',1),
(2201,'YBR81778','存入','bank',600,'2025-04-04 17:23:47',1),
(2202,'UXH40238','存入','bank',600,'2025-04-04 17:23:47',1),
(2203,'JJX03484','存入','bank',600,'2025-04-04 17:23:47',1),
(2204,'JJX03484','取出','bank',52000,'2025-04-04 17:39:55',0),
(2205,'YBR81778','存入','bank',600,'2025-04-04 17:53:47',1),
(2206,'IMN66507','存入','bank',500,'2025-04-04 17:53:47',1),
(2207,'UXH40238','存入','bank',600,'2025-04-04 17:53:47',1),
(2208,'JJX03484','存入','bank',600,'2025-04-04 17:53:47',1),
(2209,'JJX03484','取出','bank',4000,'2025-04-04 17:57:35',0),
(2210,'IMN66507','取出','bank',500,'2025-04-04 18:09:53',0),
(2211,'UXH40238','取出','bank',500,'2025-04-04 18:10:07',0),
(2212,'UXH40238','取出','bank',500,'2025-04-04 18:11:20',0),
(2213,'YBR81778','存入','bank',600,'2025-04-04 18:23:47',1),
(2214,'IMN66507','存入','bank',500,'2025-04-04 18:23:47',1),
(2215,'UXH40238','存入','bank',600,'2025-04-04 18:23:47',1),
(2216,'JJX03484','存入','bank',600,'2025-04-04 18:23:47',1),
(2217,'YBR81778','存入','bank',600,'2025-04-04 18:53:47',1),
(2218,'YBR81778','存入','bank',600,'2025-04-04 19:23:47',1),
(2219,'YBR81778','存入','bank',600,'2025-04-04 19:53:47',1),
(2220,'XRR77997','存入','bank',800,'2025-04-04 21:44:18',1),
(2221,'XRR77997','存入','bank',1000,'2025-04-04 22:14:18',1),
(2222,'XRR77997','存入','bank',1000,'2025-04-04 22:44:18',1),
(2223,'XRR77997','存入','bank',1000,'2025-04-04 23:14:18',1),
(2224,'IMN66507','取出','bank',300,'2025-04-05 04:51:50',0),
(2225,'IMN66507','存入','bank',500,'2025-04-05 04:54:45',1),
(2226,'IMN66507','取出','bank',20,'2025-04-05 04:59:28',0),
(2227,'OZH56762','存入','bank',600,'2025-04-05 05:24:45',1),
(2228,'YBR81778','存入','bank',600,'2025-04-05 05:24:45',1),
(2229,'JJX03484','存入','bank',600,'2025-04-05 05:24:45',1),
(2230,'IMN66507','取出','bank',5000,'2025-04-05 05:33:41',0),
(2231,'YBR81778','取出','bank',5000,'2025-04-05 05:33:47',0),
(2232,'JJX03484','取出','bank',2000,'2025-04-05 05:34:15',0),
(2233,'JJX03484','取出','bank',1548,'2025-04-05 05:34:21',0),
(2234,'JJX03484','存入','bank',2000,'2025-04-05 05:36:33',1),
(2235,'JJX03484','取出','bank',100,'2025-04-05 05:36:40',0),
(2236,'JJX03484','取出','bank',100,'2025-04-05 05:41:38',0),
(2237,'OZH56762','存入','bank',600,'2025-04-05 05:54:45',1),
(2238,'YBR81778','存入','bank',600,'2025-04-05 05:54:45',1),
(2239,'IMN66507','存入','bank',500,'2025-04-05 05:54:45',1),
(2240,'JJX03484','存入','bank',600,'2025-04-05 05:54:45',1),
(2241,'JJX03484','存入','bank',5000,'2025-04-05 06:19:25',1),
(2242,'YBR81778','存入','bank',425,'2025-04-05 06:20:11',1),
(2243,'YBR81778','存入','bank',0,'2025-04-05 06:20:15',1),
(2244,'YBR81778','取出','bank',5000,'2025-04-05 06:20:20',0),
(2245,'YBR81778','取出','bank',803704,'2025-04-05 06:20:25',0),
(2246,'YBR81778','存入','bank',10000,'2025-04-05 06:20:46',1),
(2247,'YBR81778','存入','bank',10000,'2025-04-05 06:20:48',1),
(2248,'YBR81778','存入','bank',10000,'2025-04-05 06:20:48',1),
(2249,'YBR81778','存入','bank',10000,'2025-04-05 06:20:48',1),
(2250,'YBR81778','存入','bank',10000,'2025-04-05 06:20:48',1),
(2251,'YBR81778','存入','bank',10000,'2025-04-05 06:20:48',1),
(2252,'YBR81778','存入','bank',10000,'2025-04-05 06:20:48',1),
(2253,'YBR81778','存入','bank',10000,'2025-04-05 06:20:48',1),
(2254,'YBR81778','存入','bank',10000,'2025-04-05 06:20:49',1),
(2255,'YBR81778','存入','bank',10000,'2025-04-05 06:20:49',1),
(2256,'YBR81778','存入','bank',10000,'2025-04-05 06:20:49',1),
(2257,'YBR81778','存入','bank',10000,'2025-04-05 06:20:49',1),
(2258,'YBR81778','存入','bank',10000,'2025-04-05 06:20:49',1),
(2259,'YBR81778','存入','bank',10000,'2025-04-05 06:20:49',1),
(2260,'YBR81778','存入','bank',10000,'2025-04-05 06:20:50',1),
(2261,'YBR81778','存入','bank',10000,'2025-04-05 06:20:50',1),
(2262,'YBR81778','存入','bank',10000,'2025-04-05 06:20:50',1),
(2263,'YBR81778','存入','bank',10000,'2025-04-05 06:20:50',1),
(2264,'YBR81778','存入','bank',10000,'2025-04-05 06:20:50',1),
(2265,'YBR81778','存入','bank',10000,'2025-04-05 06:20:50',1),
(2266,'YBR81778','存入','bank',10000,'2025-04-05 06:20:50',1),
(2267,'YBR81778','存入','bank',10000,'2025-04-05 06:20:51',1),
(2268,'YBR81778','存入','bank',10000,'2025-04-05 06:20:51',1),
(2269,'YBR81778','存入','bank',10000,'2025-04-05 06:20:51',1),
(2270,'YBR81778','存入','bank',10000,'2025-04-05 06:20:51',1),
(2271,'YBR81778','存入','bank',10000,'2025-04-05 06:20:51',1),
(2272,'YBR81778','存入','bank',10000,'2025-04-05 06:20:51',1),
(2273,'YBR81778','存入','bank',10000,'2025-04-05 06:20:52',1),
(2274,'YBR81778','存入','bank',10000,'2025-04-05 06:20:52',1),
(2275,'YBR81778','存入','bank',10000,'2025-04-05 06:20:52',1),
(2276,'YBR81778','存入','bank',10000,'2025-04-05 06:20:52',1),
(2277,'YBR81778','存入','bank',10000,'2025-04-05 06:20:52',1),
(2278,'YBR81778','存入','bank',10000,'2025-04-05 06:20:52',1),
(2279,'YBR81778','存入','bank',10000,'2025-04-05 06:20:53',1),
(2280,'YBR81778','存入','bank',10000,'2025-04-05 06:20:53',1),
(2281,'YBR81778','存入','bank',10000,'2025-04-05 06:20:53',1),
(2282,'YBR81778','存入','bank',10000,'2025-04-05 06:20:54',1),
(2283,'YBR81778','存入','bank',430000,'2025-04-05 06:21:04',1),
(2284,'OZH56762','存入','bank',600,'2025-04-05 06:24:45',1),
(2285,'JJX03484','存入','bank',600,'2025-04-05 06:24:45',1),
(2286,'JJX03484','取出','bank',100,'2025-04-05 06:32:19',0),
(2287,'YBR81778','存入','bank',8000,'2025-04-05 06:37:54',1),
(2288,'YBR81778','取出','bank',1000,'2025-04-05 06:38:04',0),
(2289,'YBR81778','取出','bank',807000,'2025-04-05 06:38:07',0),
(2290,'YBR81778','取出','bank',0,'2025-04-05 06:38:11',0),
(2291,'YBR81778','取出','bank',0,'2025-04-05 06:38:12',0),
(2292,'YBR81778','取出','bank',0,'2025-04-05 06:38:12',0),
(2293,'YBR81778','存入','bank',800000,'2025-04-05 06:38:24',1),
(2294,'YBR81778','存入','bank',8000,'2025-04-05 06:38:32',1),
(2295,'YBR81778','取出','bank',808000,'2025-04-05 06:38:34',0),
(2296,'YBR81778','存入','bank',800000,'2025-04-05 06:39:04',1),
(2297,'YBR81778','存入','bank',7000,'2025-04-05 06:39:10',1),
(2298,'JJX03484','取出','bank',300,'2025-04-05 06:40:00',0),
(2299,'JJX03484','取出','bank',4000,'2025-04-05 06:47:17',0),
(2300,'YBR81778','存入','bank',600,'2025-04-05 06:54:45',1),
(2301,'IMN66507','存入','bank',500,'2025-04-05 06:54:45',1),
(2302,'JJX03484','存入','bank',600,'2025-04-05 06:54:45',1),
(2303,'XRR77997','取出','bank',1111,'2025-04-05 07:46:12',0),
(2304,'RHT93297','存入','bank',65000,'2025-04-05 07:49:59',1),
(2305,'UUU52761','取出','bank',4000,'2025-04-05 08:09:22',0),
(2306,'OZH56762','存入','bank',600,'2025-04-05 08:14:03',1),
(2307,'IMN66507','存入','bank',500,'2025-04-05 08:14:03',1),
(2308,'XRR77997','存入','bank',1000,'2025-04-05 08:14:03',1),
(2309,'OZH56762','取出','bank',30456,'2025-04-05 08:22:21',0),
(2310,'RHT93297','取出','bank',1000,'2025-04-05 08:22:33',0),
(2311,'JJX03484','取出','bank',100,'2025-04-05 08:32:51',0),
(2312,'JJX03484','取出','bank',100,'2025-04-05 08:38:48',0),
(2313,'OZH56762','存入','bank',600,'2025-04-05 08:44:03',1),
(2314,'IMN66507','存入','bank',500,'2025-04-05 08:44:03',1),
(2315,'XRR77997','存入','bank',1000,'2025-04-05 08:44:03',1),
(2316,'JJX03484','存入','bank',600,'2025-04-05 08:44:04',1),
(2317,'IMN66507','存入','bank',10000,'2025-04-05 08:46:24',1),
(2318,'IMN66507','存入','bank',10000,'2025-04-05 08:46:24',1),
(2319,'IMN66507','存入','bank',10000,'2025-04-05 08:46:25',1),
(2320,'IMN66507','存入','bank',10000,'2025-04-05 08:46:25',1),
(2321,'IMN66507','存入','bank',10000,'2025-04-05 08:46:26',1),
(2322,'IMN66507','存入','bank',10000,'2025-04-05 08:46:26',1),
(2323,'IMN66507','存入','bank',10000,'2025-04-05 08:46:27',1),
(2324,'IMN66507','存入','bank',10000,'2025-04-05 08:46:27',1),
(2325,'WYU58551','存入','bank',500,'2025-04-05 09:14:03',1),
(2326,'IMN66507','存入','bank',500,'2025-04-05 09:14:03',1),
(2327,'JJX03484','存入','bank',600,'2025-04-05 09:14:03',1),
(2328,'IMN66507','存入','bank',500,'2025-04-05 09:44:03',1),
(2329,'JJX03484','存入','bank',600,'2025-04-05 09:44:03',1),
(2330,'UUU52761','存入','bank',2000,'2025-04-05 10:02:37',1),
(2331,'RHT93297','存入','bank',30000,'2025-04-05 10:02:37',1),
(2332,'UUU52761','存入','bank',2000,'2025-04-05 10:02:37',1),
(2333,'JJX03484','取出','bank',2000,'2025-04-05 10:06:22',0),
(2334,'JJX03484','存入','bank',600,'2025-04-05 10:14:03',1),
(2335,'IMN66507','存入','bank',500,'2025-04-05 10:14:03',1),
(2336,'IMN66507','存入','bank',500,'2025-04-05 10:44:04',1),
(2337,'JJX03484','存入','bank',600,'2025-04-05 10:44:04',1),
(2338,'YBR81778','存入','bank',600,'2025-04-05 11:14:04',1),
(2339,'IMN66507','存入','bank',500,'2025-04-05 11:14:04',1),
(2340,'JJX03484','存入','bank',600,'2025-04-05 11:14:04',1),
(2341,'JJX03484','取出','bank',300,'2025-04-05 11:38:55',0),
(2342,'OZH56762','存入','bank',600,'2025-04-05 11:44:03',1),
(2343,'YBR81778','存入','bank',600,'2025-04-05 11:44:03',1),
(2344,'IMN66507','存入','bank',500,'2025-04-05 11:44:04',1),
(2345,'JJX03484','存入','bank',600,'2025-04-05 11:44:04',1),
(2346,'IMN66507','取出','bank',300,'2025-04-05 11:54:35',0),
(2347,'WYU58551','取出','bank',2000,'2025-04-05 11:59:43',0),
(2348,'YBN39722','取出','bank',300,'2025-04-05 12:04:23',0),
(2349,'YBN39722','取出','bank',300,'2025-04-05 12:04:30',0),
(2350,'QLU88274','取出','bank',10000,'2025-04-05 12:10:50',0),
(2351,'WYU58551','存入','bank',500,'2025-04-05 12:14:04',1),
(2352,'YBR81778','存入','bank',600,'2025-04-05 12:14:04',1),
(2353,'IMN66507','存入','bank',500,'2025-04-05 12:14:04',1),
(2354,'JJX03484','存入','bank',600,'2025-04-05 12:14:04',1),
(2355,'YBR81778','存入','bank',600,'2025-04-05 13:10:50',1),
(2356,'OZH56762','存入','bank',600,'2025-04-05 13:10:50',1),
(2357,'IMN66507','存入','bank',500,'2025-04-05 13:10:50',1),
(2358,'UXH40238','存入','bank',600,'2025-04-05 13:10:50',1),
(2359,'XRR77997','存入','bank',1000,'2025-04-05 13:10:50',1),
(2360,'JJX03484','存入','bank',600,'2025-04-05 13:10:50',1),
(2361,'LYX25359','存入','bank',500,'2025-04-05 13:10:50',1),
(2362,'WYU58551','存入','bank',500,'2025-04-05 13:10:50',1),
(2363,'YBR81778','取出','bank',1000,'2025-04-05 13:15:10',0),
(2364,'YBR81778','取出','bank',1000,'2025-04-05 13:15:49',0),
(2365,'WYU58551','取出','bank',2000,'2025-04-05 13:16:59',0),
(2366,'JJX03484','取出','bank',7100,'2025-04-05 13:22:14',0),
(2367,'JJX03484','存入','bank',4432,'2025-04-05 13:23:21',1),
(2368,'YBR81778','取出','bank',4000,'2025-04-05 13:26:23',0),
(2369,'QHK11612','取出','bank',4000,'2025-04-05 13:26:37',0),
(2370,'YBN39722','取出','bank',300,'2025-04-05 13:30:50',0),
(2371,'WYU58551','存入','bank',500,'2025-04-05 13:40:50',1),
(2372,'YBR81778','存入','bank',600,'2025-04-05 13:40:50',1),
(2373,'IMN66507','存入','bank',600,'2025-04-05 13:40:50',1),
(2374,'UXH40238','存入','bank',600,'2025-04-05 13:40:50',1),
(2375,'XRR77997','存入','bank',1000,'2025-04-05 13:40:50',1),
(2376,'QHK11612','存入','bank',700,'2025-04-05 13:40:50',1),
(2377,'JJX03484','存入','bank',600,'2025-04-05 13:40:50',1),
(2378,'IMN66507','存入','bank',600,'2025-04-05 14:10:50',1),
(2379,'YBR81778','存入','bank',600,'2025-04-05 14:10:50',1),
(2380,'QHK11612','存入','bank',700,'2025-04-05 14:10:50',1),
(2381,'XRR77997','存入','bank',1000,'2025-04-05 14:10:50',1),
(2382,'JJX03484','存入','bank',600,'2025-04-05 14:10:50',1),
(2383,'IMN66507','取出','bank',300,'2025-04-05 14:27:38',0),
(2384,'YBR81778','取出','bank',300,'2025-04-05 14:38:47',0),
(2385,'YBR81778','存入','bank',600,'2025-04-05 14:40:50',1),
(2386,'IMN66507','存入','bank',600,'2025-04-05 14:40:50',1),
(2387,'QHK11612','存入','bank',700,'2025-04-05 14:40:50',1),
(2388,'XRR77997','存入','bank',1000,'2025-04-05 14:40:50',1),
(2389,'OZH56762','存入','bank',600,'2025-04-05 15:10:50',1),
(2390,'YBR81778','存入','bank',600,'2025-04-05 15:10:50',1),
(2391,'IMN66507','存入','bank',600,'2025-04-05 15:10:50',1),
(2392,'XRR77997','存入','bank',1000,'2025-04-05 15:10:50',1),
(2393,'YBR81778','取出','bank',300,'2025-04-05 15:34:48',0),
(2394,'IMN66507','取出','bank',300,'2025-04-05 15:34:56',0),
(2395,'YBR81778','存入','bank',600,'2025-04-05 15:40:50',1),
(2396,'IMN66507','存入','bank',600,'2025-04-05 15:40:50',1),
(2397,'QHK11612','存入','bank',700,'2025-04-05 15:40:50',1),
(2398,'XRR77997','存入','bank',1000,'2025-04-05 15:40:50',1),
(2399,'IMN66507','存入','bank',600,'2025-04-05 16:10:50',1),
(2400,'OZH56762','取出','bank',100,'2025-04-06 03:26:59',0),
(2401,'OZH56762','存入','bank',600,'2025-04-06 03:40:51',1),
(2402,'JJX03484','存入','bank',600,'2025-04-06 03:40:51',1),
(2403,'JJX03484','取出','bank',300,'2025-04-06 03:40:59',0),
(2404,'JJX03484','取出','bank',1,'2025-04-06 03:51:53',0),
(2405,'RHT93297','存入','bank',1,'2025-04-06 03:51:53',1),
(2406,'RHT93297','取出','bank',4000,'2025-04-06 03:52:17',0),
(2407,'JJX03484','存入','bank',4000,'2025-04-06 03:52:17',1),
(2408,'YBR81778','存入','bank',600,'2025-04-06 04:40:51',1),
(2409,'IMN66507','存入','bank',600,'2025-04-06 04:40:51',1),
(2410,'OZH56762','存入','bank',600,'2025-04-06 05:10:51',1),
(2411,'IMN66507','存入','bank',600,'2025-04-06 05:10:51',1),
(2412,'YBR81778','存入','bank',600,'2025-04-06 05:10:51',1),
(2413,'YBR81778','存入','bank',600,'2025-04-06 05:40:51',1),
(2414,'IMN66507','存入','bank',600,'2025-04-06 05:40:51',1),
(2415,'JJX03484','存入','bank',500,'2025-04-06 05:40:51',1),
(2416,'YBR81778','取出','bank',1000,'2025-04-06 05:52:01',0),
(2417,'JJX03484','取出','bank',250,'2025-04-06 05:59:29',0),
(2418,'JJX03484','存入','bank',250,'2025-04-06 06:00:59',1),
(2419,'JJX03484','取出','bank',250,'2025-04-06 06:02:11',0),
(2420,'JJX03484','存入','bank',250,'2025-04-06 06:04:15',1),
(2421,'JJX03484','取出','bank',250,'2025-04-06 06:06:27',0),
(2422,'JJX03484','存入','bank',250,'2025-04-06 06:08:04',1),
(2423,'YBR81778','存入','bank',600,'2025-04-06 06:10:51',1),
(2424,'JJX03484','存入','bank',500,'2025-04-06 06:10:51',1),
(2425,'IMN66507','存入','bank',600,'2025-04-06 06:10:51',1),
(2426,'JJX03484','取出','bank',300,'2025-04-06 06:12:19',0),
(2427,'JJX03484','取出','bank',100,'2025-04-06 06:27:37',0),
(2428,'JJX03484','取出','bank',100,'2025-04-06 06:39:17',0),
(2429,'JJX03484','取出','bank',300,'2025-04-06 06:40:11',0),
(2430,'YBR81778','存入','bank',600,'2025-04-06 06:40:51',1),
(2431,'IMN66507','存入','bank',600,'2025-04-06 06:40:51',1),
(2432,'JJX03484','存入','bank',500,'2025-04-06 06:40:51',1),
(2433,'IMN66507','取出','bank',425,'2025-04-06 07:01:15',0),
(2434,'YBR81778','取出','bank',300,'2025-04-06 07:02:37',0),
(2435,'JJX03484','取出','bank',2000,'2025-04-06 07:03:48',0),
(2436,'OZH56762','存入','bank',600,'2025-04-06 07:10:51',1),
(2437,'YBR81778','存入','bank',600,'2025-04-06 07:10:51',1),
(2438,'IMN66507','存入','bank',600,'2025-04-06 07:10:51',1),
(2439,'JJX03484','存入','bank',500,'2025-04-06 07:10:51',1),
(2440,'OZH56762','存入','bank',5000,'2025-04-06 07:30:38',1),
(2441,'IMN66507','取出','bank',5000,'2025-04-06 07:30:38',0),
(2442,'YBR81778','取出','bank',10000,'2025-04-06 07:30:53',0),
(2443,'YBR81778','存入','bank',600,'2025-04-06 07:40:51',1),
(2444,'OZH56762','存入','bank',600,'2025-04-06 07:40:51',1),
(2445,'JJX03484','存入','bank',500,'2025-04-06 07:40:51',1),
(2446,'IMN66507','存入','bank',600,'2025-04-06 07:40:51',1),
(2447,'OZH56762','存入','bank',600,'2025-04-06 08:10:51',1),
(2448,'YBR81778','存入','bank',600,'2025-04-06 08:10:51',1),
(2449,'IMN66507','存入','bank',600,'2025-04-06 08:10:51',1),
(2450,'OZH56762','存入','bank',600,'2025-04-06 08:40:51',1),
(2451,'YBR81778','存入','bank',600,'2025-04-06 08:40:51',1),
(2452,'IMN66507','存入','bank',600,'2025-04-06 08:40:51',1),
(2453,'OZH56762','存入','bank',600,'2025-04-06 09:10:51',1),
(2454,'YBR81778','存入','bank',600,'2025-04-06 09:10:51',1),
(2455,'IMN66507','存入','bank',600,'2025-04-06 09:10:51',1),
(2456,'OZH56762','存入','bank',600,'2025-04-06 09:40:51',1),
(2457,'YBR81778','存入','bank',600,'2025-04-06 09:40:51',1),
(2458,'IMN66507','存入','bank',600,'2025-04-06 09:40:51',1),
(2459,'OZH56762','存入','bank',600,'2025-04-06 10:10:51',1),
(2460,'YBR81778','存入','bank',600,'2025-04-06 10:10:51',1),
(2461,'IMN66507','存入','bank',600,'2025-04-06 10:10:51',1),
(2462,'OZH56762','存入','bank',600,'2025-04-06 10:40:51',1),
(2463,'IMN66507','存入','bank',600,'2025-04-06 10:40:51',1),
(2464,'XRR77997','存入','bank',1000,'2025-04-06 10:40:51',1),
(2465,'BDN59221','存入','bank',600,'2025-04-06 10:40:51',1),
(2466,'QLU88274','取出','bank',5000,'2025-04-06 10:51:52',0),
(2467,'BDN59221','取出','bank',400,'2025-04-06 11:02:26',0),
(2468,'BDN59221','取出','bank',400,'2025-04-06 11:02:42',0),
(2469,'BDN59221','取出','bank',400,'2025-04-06 11:02:50',0),
(2470,'BDN59221','取出','bank',400,'2025-04-06 11:02:55',0),
(2471,'BDN59221','取出','bank',400,'2025-04-06 11:03:04',0),
(2472,'BDN59221','取出','bank',400,'2025-04-06 11:03:28',0),
(2473,'BDN59221','取出','bank',400,'2025-04-06 11:03:48',0),
(2474,'BDN59221','取出','bank',1000,'2025-04-06 11:04:08',0),
(2475,'BDN59221','取出','bank',400,'2025-04-06 11:04:20',0),
(2476,'OZH56762','存入','bank',600,'2025-04-06 11:10:51',1),
(2477,'IMN66507','存入','bank',600,'2025-04-06 11:10:51',1),
(2478,'BDN59221','存入','bank',600,'2025-04-06 11:10:51',1),
(2479,'IMN66507','取出','bank',2000,'2025-04-06 11:11:02',0),
(2480,'RHT93297','取出','bank',1000,'2025-04-06 11:15:49',0),
(2481,'BDN59221','取出','bank',425,'2025-04-06 11:32:11',0),
(2482,'OZH56762','存入','bank',600,'2025-04-06 11:40:51',1),
(2483,'IMN66507','存入','bank',600,'2025-04-06 11:40:51',1),
(2484,'JJX03484','存入','bank',500,'2025-04-06 11:40:51',1),
(2485,'BDN59221','存入','bank',600,'2025-04-06 11:40:51',1),
(2486,'BDN59221','取出','bank',385,'2025-04-06 11:51:23',0),
(2487,'IMN66507','取出','bank',300,'2025-04-06 12:04:00',0),
(2488,'OZH56762','存入','bank',600,'2025-04-06 12:10:51',1),
(2489,'IMN66507','存入','bank',600,'2025-04-06 12:10:51',1),
(2490,'JJX03484','存入','bank',500,'2025-04-06 12:10:51',1),
(2491,'BDN59221','存入','bank',600,'2025-04-06 12:10:51',1),
(2492,'JJX03484','取出','bank',2000,'2025-04-06 12:14:36',0),
(2493,'OZH56762','存入','bank',600,'2025-04-06 12:40:51',1),
(2494,'IMN66507','存入','bank',600,'2025-04-06 12:40:51',1),
(2495,'JJX03484','存入','bank',500,'2025-04-06 12:40:51',1),
(2496,'QLU88274','取出','bank',5000,'2025-04-06 13:09:50',0),
(2497,'YBR81778','存入','bank',600,'2025-04-06 13:10:51',1),
(2498,'JJX03484','存入','bank',500,'2025-04-06 13:10:51',1),
(2499,'IMN66507','存入','bank',600,'2025-04-06 13:10:51',1),
(2500,'XRR77997','存入','bank',1000,'2025-04-06 14:10:28',1),
(2501,'YBR81778','存入','bank',600,'2025-04-06 14:40:28',1),
(2502,'XRR77997','存入','bank',1000,'2025-04-06 14:40:28',1),
(2503,'YBR81778','存入','bank',508,'2025-04-06 14:55:55',1),
(2504,'YBR81778','存入','bank',600,'2025-04-06 15:10:28',1),
(2505,'XRR77997','存入','bank',1000,'2025-04-06 15:10:28',1),
(2506,'IMN66507','存入','bank',600,'2025-04-06 15:10:28',1),
(2507,'YBR81778','存入','bank',600,'2025-04-06 15:40:28',1),
(2508,'IMN66507','存入','bank',600,'2025-04-06 15:40:28',1),
(2509,'XRR77997','存入','bank',1000,'2025-04-06 15:40:28',1),
(2510,'VQR49601','取出','bank',100,'2025-04-06 16:09:03',0),
(2511,'YBR81778','存入','bank',600,'2025-04-06 16:10:28',1),
(2512,'IMN66507','存入','bank',600,'2025-04-06 16:10:28',1),
(2513,'XRR77997','存入','bank',1000,'2025-04-06 16:10:28',1),
(2514,'VQR49601','存入','bank',1000,'2025-04-06 16:10:28',1),
(2515,'YBR81778','存入','bank',600,'2025-04-06 16:40:28',1),
(2516,'YBR81778','存入','bank',600,'2025-04-06 17:10:28',1),
(2517,'YBR81778','存入','bank',600,'2025-04-06 17:40:28',1),
(2518,'YBR81778','存入','bank',600,'2025-04-06 18:10:28',1),
(2519,'YBR81778','存入','bank',600,'2025-04-06 18:40:28',1),
(2520,'YBR81778','存入','bank',600,'2025-04-06 19:10:28',1),
(2521,'YBR81778','存入','bank',600,'2025-04-06 19:40:28',1),
(2522,'YBR81778','存入','bank',600,'2025-04-06 20:10:28',1),
(2523,'YBR81778','存入','bank',600,'2025-04-06 20:40:28',1),
(2524,'YBR81778','存入','bank',600,'2025-04-06 21:10:28',1),
(2525,'YBR81778','存入','bank',600,'2025-04-06 21:40:28',1),
(2526,'YBR81778','存入','bank',600,'2025-04-06 22:10:28',1),
(2527,'YBR81778','存入','bank',600,'2025-04-06 22:40:28',1),
(2528,'YBR81778','存入','bank',600,'2025-04-06 23:10:28',1),
(2529,'YBR81778','存入','bank',600,'2025-04-06 23:40:28',1),
(2530,'YBR81778','存入','bank',600,'2025-04-07 00:10:28',1),
(2531,'YBR81778','存入','bank',600,'2025-04-07 00:40:28',1),
(2532,'YBR81778','存入','bank',600,'2025-04-07 01:10:28',1),
(2533,'YBR81778','存入','bank',600,'2025-04-07 01:40:28',1),
(2534,'YBR81778','存入','bank',600,'2025-04-07 02:10:28',1),
(2535,'JJX03484','存入','bank',1167,'2025-04-07 05:08:53',1),
(2536,'YBR81778','存入','bank',600,'2025-04-07 05:11:36',1),
(2537,'IMN66507','存入','bank',600,'2025-04-07 05:11:36',1),
(2538,'JJX03484','存入','bank',500,'2025-04-07 05:11:36',1),
(2539,'JJX03484','取出','bank',2000,'2025-04-07 05:28:06',0),
(2540,'YBR81778','存入','bank',600,'2025-04-07 05:41:36',1),
(2541,'IMN66507','存入','bank',600,'2025-04-07 05:41:36',1),
(2542,'JJX03484','存入','bank',500,'2025-04-07 05:41:36',1),
(2543,'YBR81778','存入','bank',600,'2025-04-07 06:11:36',1),
(2544,'IMN66507','存入','bank',600,'2025-04-07 06:11:36',1),
(2545,'JJX03484','存入','bank',500,'2025-04-07 06:11:36',1),
(2546,'IMN66507','取出','bank',2000,'2025-04-07 06:17:14',0),
(2547,'IMN66507','取出','bank',2000,'2025-04-07 06:17:49',0),
(2548,'YBR81778','存入','bank',600,'2025-04-07 06:41:36',1),
(2549,'IMN66507','存入','bank',600,'2025-04-07 06:41:36',1),
(2550,'XRR77997','存入','bank',1000,'2025-04-07 06:41:36',1),
(2551,'YBR81778','存入','bank',600,'2025-04-07 07:11:36',1),
(2552,'IMN66507','存入','bank',600,'2025-04-07 07:11:36',1),
(2553,'XRR77997','存入','bank',1000,'2025-04-07 07:11:36',1),
(2554,'IMN66507','取出','bank',2000,'2025-04-07 07:42:16',0),
(2555,'YBR81778','存入','bank',800,'2025-04-07 07:49:22',1),
(2556,'IMN66507','存入','bank',600,'2025-04-07 07:49:22',1),
(2557,'XRR77997','存入','bank',1000,'2025-04-07 07:49:22',1),
(2558,'YBR81778','取出','bank',2000,'2025-04-07 07:51:05',0),
(2559,'YBR81778','取出','bank',100,'2025-04-07 08:03:50',0),
(2560,'YBR81778','存入','bank',800,'2025-04-07 08:19:22',1),
(2561,'IMN66507','存入','bank',600,'2025-04-07 08:19:22',1),
(2562,'YBR81778','存入','bank',800,'2025-04-07 08:49:22',1),
(2563,'IMN66507','存入','bank',600,'2025-04-07 08:49:22',1),
(2564,'IMN66507','取出','bank',5000,'2025-04-07 08:57:21',0),
(2565,'YBR81778','存入','bank',800,'2025-04-07 11:49:22',1),
(2566,'YBR81778','存入','bank',800,'2025-04-07 12:19:22',1),
(2567,'IMN66507','存入','bank',600,'2025-04-07 13:19:22',1),
(2568,'IMN66507','取出','bank',100,'2025-04-07 13:27:32',0),
(2569,'IMN66507','存入','bank',600,'2025-04-07 13:49:22',1),
(2570,'IMN66507','取出','bank',25000,'2025-04-07 13:49:26',0),
(2571,'QLU88274','取出','bank',100,'2025-04-07 13:54:18',0),
(2572,'IMN66507','存入','bank',600,'2025-04-07 14:19:22',1),
(2573,'IMN66507','存入','bank',200,'2025-04-07 15:43:13',1),
(2574,'JJX03484','存入','bank',200,'2025-04-07 16:43:13',1),
(2575,'XRR77997','取出','bank',4000,'2025-04-08 03:10:19',0),
(2576,'XRR77997','存入','bank',200,'2025-04-08 03:12:53',1),
(2577,'XRR77997','取出','bank',1000,'2025-04-08 04:42:29',0),
(2578,'XRR77997','存入','bank',1000,'2025-04-08 04:42:53',1),
(2579,'JJX03484','存入','bank',200,'2025-04-08 07:08:15',1),
(2580,'JJX03484','存入','bank',1555,'2025-04-08 07:08:47',1),
(2581,'JJX03484','取出','bank',11000,'2025-04-08 07:15:43',0),
(2582,'JJX03484','取出','bank',1000,'2025-04-08 07:17:34',0),
(2583,'YBR81778','取出','bank',1000,'2025-04-08 07:25:12',0),
(2584,'JJX03484','存入','bank',1108,'2025-04-08 07:34:46',1),
(2585,'JJX03484','取出','bank',1000,'2025-04-08 07:34:57',0),
(2586,'YBR81778','取出','bank',1000,'2025-04-08 07:36:12',0),
(2587,'OZH56762','存入','bank',600,'2025-04-08 07:38:15',1),
(2588,'YBR81778','存入','bank',800,'2025-04-08 07:38:15',1),
(2589,'IMN66507','存入','bank',200,'2025-04-08 07:38:15',1),
(2590,'JJX03484','存入','bank',200,'2025-04-08 07:38:15',1),
(2591,'JJX03484','取出','bank',400,'2025-04-08 08:04:07',0),
(2592,'OZH56762','取出','bank',10000,'2025-04-08 08:05:28',0),
(2593,'JJX03484','存入','bank',10000,'2025-04-08 08:05:28',1),
(2594,'JJX03484','取出','bank',400,'2025-04-08 08:05:40',0),
(2595,'JJX03484','取出','bank',400,'2025-04-08 08:05:47',0),
(2596,'OZH56762','存入','bank',600,'2025-04-08 08:08:15',1),
(2597,'YBR81778','存入','bank',800,'2025-04-08 08:08:15',1),
(2598,'IMN66507','存入','bank',200,'2025-04-08 08:08:15',1),
(2599,'JJX03484','存入','bank',200,'2025-04-08 08:08:15',1),
(2600,'JJX03484','取出','bank',300,'2025-04-08 08:11:47',0),
(2601,'JJX03484','取出','bank',2,'2025-04-08 08:29:13',0),
(2602,'YBR81778','存入','bank',800,'2025-04-08 08:38:15',1),
(2603,'JJX03484','存入','bank',200,'2025-04-08 08:38:15',1),
(2604,'IMN66507','存入','bank',200,'2025-04-08 08:38:15',1),
(2605,'VQR49601','取出','bank',1000,'2025-04-08 09:01:44',0),
(2606,'YBR81778','存入','bank',800,'2025-04-08 09:08:15',1),
(2607,'YBR81778','存入','bank',800,'2025-04-08 09:38:15',1),
(2608,'YBR81778','存入','bank',800,'2025-04-08 10:08:15',1),
(2609,'OZH56762','存入','bank',600,'2025-04-08 11:38:15',1),
(2610,'JJX03484','存入','bank',200,'2025-04-08 11:38:15',1),
(2611,'JJX03484','取出','bank',1000,'2025-04-08 11:47:14',0),
(2612,'OZH56762','取出','bank',4000,'2025-04-08 11:49:13',0),
(2613,'JJX03484','取出','bank',1000,'2025-04-08 12:05:50',0),
(2614,'OZH56762','存入','bank',600,'2025-04-08 12:08:15',1),
(2615,'XRR77997','存入','bank',1000,'2025-04-08 12:08:16',1),
(2616,'JJX03484','存入','bank',200,'2025-04-08 12:08:16',1),
(2617,'RHT93297','取出','bank',300,'2025-04-08 12:12:29',0),
(2618,'JJX03484','存入','bank',1000,'2025-04-08 12:14:47',1),
(2619,'JJX03484','存入','bank',11,'2025-04-08 12:15:03',1),
(2620,'JJX03484','取出','bank',1000,'2025-04-08 12:16:06',0),
(2621,'JJX03484','取出','bank',5000,'2025-04-08 12:17:51',0),
(2622,'JJX03484','存入','bank',2000,'2025-04-08 12:22:59',1),
(2623,'JJX03484','存入','bank',3990,'2025-04-08 12:23:48',1),
(2624,'JJX03484','取出','bank',5000,'2025-04-08 12:24:06',0),
(2625,'OZH56762','存入','bank',600,'2025-04-08 12:38:15',1),
(2626,'JJX03484','存入','bank',200,'2025-04-08 12:38:16',1),
(2627,'RHT93297','取出','bank',300,'2025-04-08 12:44:23',0),
(2628,'RHT93297','取出','bank',11000,'2025-04-08 12:53:07',0),
(2629,'OZH56762','存入','bank',600,'2025-04-08 13:08:15',1),
(2630,'JJX03484','存入','bank',200,'2025-04-08 13:08:16',1),
(2631,'IMN66507','存入','bank',600,'2025-04-08 13:08:16',1),
(2632,'JJX03484','取出','bank',300,'2025-04-08 13:09:27',0),
(2633,'JJX03484','取出','bank',300,'2025-04-08 13:09:31',0),
(2634,'JJX03484','取出','bank',300,'2025-04-08 13:14:51',0),
(2635,'OZH56762','存入','bank',600,'2025-04-08 13:38:16',1),
(2636,'JJX03484','存入','bank',200,'2025-04-08 13:38:16',1),
(2637,'IMN66507','存入','bank',600,'2025-04-08 13:38:16',1),
(2638,'XRR77997','存入','bank',1000,'2025-04-08 13:38:16',1),
(2639,'OZH56762','存入','bank',600,'2025-04-08 14:08:16',1),
(2640,'JJX03484','存入','bank',200,'2025-04-08 14:08:16',1),
(2641,'XRR77997','存入','bank',1000,'2025-04-08 14:08:16',1),
(2642,'IMN66507','存入','bank',600,'2025-04-08 14:08:16',1),
(2643,'RHT93297','取出','bank',300,'2025-04-08 14:22:14',0),
(2644,'IMN66507','取出','bank',2000,'2025-04-08 14:34:11',0),
(2645,'IMN66507','取出','bank',400,'2025-04-08 14:34:49',0),
(2646,'RHT93297','存入','bank',10000,'2025-04-08 14:34:55',1),
(2647,'IMN66507','取出','bank',400,'2025-04-08 14:34:56',0),
(2648,'IMN66507','取出','bank',400,'2025-04-08 14:35:26',0),
(2649,'IMN66507','取出','bank',400,'2025-04-08 14:36:33',0),
(2650,'IMN66507','取出','bank',1000,'2025-04-08 14:36:54',0),
(2651,'IMN66507','取出','bank',1000,'2025-04-08 14:36:58',0),
(2652,'IMN66507','取出','bank',1000,'2025-04-08 14:37:00',0),
(2653,'IMN66507','取出','bank',1000,'2025-04-08 14:37:12',0),
(2654,'IMN66507','取出','bank',1000,'2025-04-08 14:37:23',0),
(2655,'IMN66507','存入','bank',600,'2025-04-08 14:38:16',1),
(2656,'JJX03484','存入','bank',600,'2025-04-08 14:38:16',1),
(2657,'XRR77997','存入','bank',1000,'2025-04-08 14:38:16',1),
(2658,'JJX03484','取出','bank',4360,'2025-04-08 15:11:56',0),
(2659,'JJX03484','存入','bank',600,'2025-04-08 15:38:16',1),
(2660,'XRR77997','存入','bank',1000,'2025-04-09 01:27:51',1);
/*!40000 ALTER TABLE `ps_banking_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scenes`
--

DROP TABLE IF EXISTS `scenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `scenes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` varchar(50) DEFAULT NULL,
  `text` mediumtext DEFAULT NULL,
  `color` mediumtext DEFAULT NULL,
  `viewdistance` int(11) DEFAULT NULL,
  `expiration` int(11) DEFAULT NULL,
  `fontsize` decimal(10,1) DEFAULT NULL,
  `fontstyle` int(11) DEFAULT NULL,
  `coords` mediumtext DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `date_deletion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scenes`
--

LOCK TABLES `scenes` WRITE;
/*!40000 ALTER TABLE `scenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `scenes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-09  2:28:36
