-- MySQL dump 10.13  Distrib 5.6.49, for Linux (x86_64)
--
-- Host: localhost    Database: cms
-- ------------------------------------------------------
-- Server version	5.6.49

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
-- Table structure for table `auditlog`
--

DROP TABLE IF EXISTS `auditlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditlog` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `logDate` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `entity` varchar(50) NOT NULL,
  `entityId` int(11) NOT NULL,
  `objectAfter` text,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditlog`
--

LOCK TABLES `auditlog` WRITE;
/*!40000 ALTER TABLE `auditlog` DISABLE KEYS */;
INSERT INTO `auditlog` VALUES (1,1604513881,0,'Added','Widget',1,'{\"widgetId\":1,\"type\":\"image\",\"layoutId\":\"1\",\"campaignId\":\"1\"}'),(2,1604513881,0,'Saved','Widget',1,'{\"widgetId\":1,\"playlistId\":1,\"ownerId\":1,\"type\":\"image\",\"duration\":\"60\",\"displayOrder\":1,\"useDuration\":\"1\",\"calculatedDuration\":\"60\",\"createdDt\":null,\"modifiedDt\":null,\"fromDt\":0,\"toDt\":2147483647,\"transitionIn\":null,\"transitionOut\":null,\"transitionDurationIn\":null,\"transitionDurationOut\":null,\"widgetOptions\":[{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"uri\",\"value\":\"1.png\"},{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"align\",\"value\":\"center\"},{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"enableStat\",\"value\":\"Inherit\"},{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"name\",\"value\":\"Company Logo\"},{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"scaleType\",\"value\":\"center\"},{\"widgetId\":1,\"type\":\"attrib\",\"option\":\"valign\",\"value\":\"middle\"}],\"mediaIds\":[1],\"audio\":[],\"permissions\":[],\"playlist\":null,\"tempId\":\"53\",\"isNew\":true}'),(3,1604513881,0,'Saved','Playlist',1,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(4,1604513881,0,'Added','Widget',2,'{\"widgetId\":2,\"type\":\"text\",\"layoutId\":\"1\",\"campaignId\":\"1\"}'),(5,1604513881,0,'Saved','Widget',2,'{\"widgetId\":2,\"playlistId\":2,\"ownerId\":1,\"type\":\"text\",\"duration\":\"10\",\"displayOrder\":1,\"useDuration\":\"1\",\"calculatedDuration\":\"10\",\"createdDt\":null,\"modifiedDt\":null,\"fromDt\":0,\"toDt\":2147483647,\"transitionIn\":null,\"transitionOut\":null,\"transitionDurationIn\":null,\"transitionDurationOut\":null,\"widgetOptions\":[{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"effect\",\"value\":\"none\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"enableStat\",\"value\":\"Inherit\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"lowerLimit\",\"value\":\"0\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"name\",\"value\":\"Header Text\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"ta_text_advanced\",\"value\":\"0\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"upperLimit\",\"value\":\"0\"},{\"widgetId\":2,\"type\":\"attrib\",\"option\":\"xmds\",\"value\":\"1\"},{\"widgetId\":2,\"type\":\"cdata\",\"option\":\"text\",\"value\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color:#FFFFFF;\\\"><span style=\\\"font-size: 48px;\\\">powered by...<\\/span><\\/span><\\/p>\\n\\n<p style=\\\"text-align: center;\\\"><strong><span style=\\\"font-size:96px;\\\"><span style=\\\"color:#FFFFFF;\\\">Xibo Digital Signage<\\/span><\\/span><\\/strong><\\/p>\\n\"}],\"mediaIds\":[],\"audio\":[],\"permissions\":[],\"playlist\":null,\"tempId\":\"\",\"isNew\":true}'),(6,1604513881,0,'Saved','Playlist',2,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(7,1604513881,0,'Added','Widget',3,'{\"widgetId\":3,\"type\":\"spacer\",\"layoutId\":\"1\",\"campaignId\":\"1\"}'),(8,1604513881,0,'Saved','Widget',3,'{\"widgetId\":3,\"playlistId\":3,\"ownerId\":1,\"type\":\"spacer\",\"duration\":\"5\",\"displayOrder\":1,\"useDuration\":\"1\",\"calculatedDuration\":\"5\",\"createdDt\":null,\"modifiedDt\":null,\"fromDt\":0,\"toDt\":2147483647,\"transitionIn\":null,\"transitionOut\":null,\"transitionDurationIn\":null,\"transitionDurationOut\":null,\"widgetOptions\":[{\"widgetId\":3,\"type\":\"attrib\",\"option\":\"enableStat\",\"value\":\"Inherit\"},{\"widgetId\":3,\"type\":\"attrib\",\"option\":\"lowerLimit\",\"value\":\"0\"},{\"widgetId\":3,\"type\":\"attrib\",\"option\":\"upperLimit\",\"value\":\"0\"}],\"mediaIds\":[],\"audio\":[],\"permissions\":[],\"playlist\":null,\"tempId\":\"\",\"isNew\":true}'),(9,1604513881,0,'Added','Widget',4,'{\"widgetId\":4,\"type\":\"text\",\"layoutId\":\"1\",\"campaignId\":\"1\"}'),(10,1604513881,0,'Saved','Widget',4,'{\"widgetId\":4,\"playlistId\":3,\"ownerId\":1,\"type\":\"text\",\"duration\":\"20\",\"displayOrder\":2,\"useDuration\":\"1\",\"calculatedDuration\":\"20\",\"createdDt\":null,\"modifiedDt\":null,\"fromDt\":0,\"toDt\":2147483647,\"transitionIn\":null,\"transitionOut\":null,\"transitionDurationIn\":null,\"transitionDurationOut\":null,\"widgetOptions\":[{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"effect\",\"value\":\"fade\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"enableStat\",\"value\":\"Inherit\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"lowerLimit\",\"value\":\"0\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"name\",\"value\":\"Explainer Text\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"speed\",\"value\":\"6000\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"ta_text_advanced\",\"value\":\"0\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"upperLimit\",\"value\":\"0\"},{\"widgetId\":4,\"type\":\"attrib\",\"option\":\"xmds\",\"value\":\"1\"},{\"widgetId\":4,\"type\":\"cdata\",\"option\":\"text\",\"value\":\"<p style=\\\"text-align: center;\\\"><span style=\\\"color:#FFFFFF;\\\"><span style=\\\"font-size: 48px;\\\">This is the Default Layout to assign to displays<\\/span><\\/span><\\/p>\\n\\n<p style=\\\"text-align: center;\\\"><span style=\\\"color:#FFFFFF;\\\"><span style=\\\"font-size: 48px;\\\">It will be shown when nothing else is scheduled<\\/span><\\/span><\\/p>\\n\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: 48px;\\\"><span style=\\\"color:#FFFFFF;\\\">Edit this Default Layout to personalise or create your own to assign to <\\/span><span style=\\\"color: #fcfce5;\\\">your displays!<\\/span><\\/span><\\/p>\\n\\n<p>&nbsp;<\\/p>\\n\"}],\"mediaIds\":[],\"audio\":[],\"permissions\":[],\"playlist\":null,\"tempId\":\"\",\"isNew\":true}'),(11,1604513881,0,'Saved','Playlist',3,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(12,1604513881,0,'Added','Widget',5,'{\"widgetId\":5,\"type\":\"clock\",\"layoutId\":\"1\",\"campaignId\":\"1\"}'),(13,1604513881,0,'Saved','Widget',5,'{\"widgetId\":5,\"playlistId\":4,\"ownerId\":1,\"type\":\"clock\",\"duration\":\"1\",\"displayOrder\":1,\"useDuration\":\"0\",\"calculatedDuration\":5,\"createdDt\":null,\"modifiedDt\":null,\"fromDt\":0,\"toDt\":2147483647,\"transitionIn\":null,\"transitionOut\":null,\"transitionDurationIn\":null,\"transitionDurationOut\":null,\"widgetOptions\":[{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"clockFace\",\"value\":\"TwentyFourHourClock\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"clockTypeId\",\"value\":\"2\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"enableStat\",\"value\":\"Inherit\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"lowerLimit\",\"value\":\"0\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"offset\",\"value\":\"0\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"showSeconds\",\"value\":\"1\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"ta_text_advanced\",\"value\":\"0\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"theme\",\"value\":\"1\"},{\"widgetId\":5,\"type\":\"attrib\",\"option\":\"upperLimit\",\"value\":\"0\"},{\"widgetId\":5,\"type\":\"cdata\",\"option\":\"format\",\"value\":\"<p style=\\\"text-align: justify;\\\"><span style=\\\"color:#FFFFFF;\\\"><span style=\\\"font-size: 48px;\\\">[HH:mm]<\\/span><\\/span><\\/p>\\n\"}],\"mediaIds\":[],\"audio\":[],\"permissions\":[],\"playlist\":null,\"tempId\":\"\",\"isNew\":true}'),(14,1604513881,0,'Saved','Playlist',4,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(15,1604513881,0,'Saved','Playlist',3,'{\"duration\":\"0 > 25\",\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(16,1604513881,0,'Saved','Playlist',2,'{\"duration\":\"0 > 10\",\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(17,1604513881,0,'Saved','Playlist',1,'{\"duration\":\"0 > 60\",\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(18,1604513881,0,'Saved','Playlist',4,'{\"duration\":\"0 > 5\",\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(19,1604513881,0,'Saved','Playlist',1,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(20,1604513881,0,'Saved','Playlist',2,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(21,1604513881,0,'Saved','Playlist',3,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(22,1604513881,0,'Saved','Playlist',4,'{\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(23,1604513949,1,'Login Granted','User',1,'{\"IPAddress\":\"172.23.0.1\",\"UserAgent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/86.0.4240.183 Safari\\/537.36\"}'),(24,1604513978,1,'Updated','Layout',1,'{\"ownerId\":\"1 > 2\",\"status\":\"1 > 3\",\"campaignId\":[1]}'),(25,1604513978,1,'Saved','Widget',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(26,1604513978,1,'Saved','Playlist',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(27,1604513978,1,'Saved','Region',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(28,1604513978,1,'Saved','Widget',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(29,1604513978,1,'Saved','Playlist',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(30,1604513978,1,'Saved','Region',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(31,1604513978,1,'Saved','Widget',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(32,1604513978,1,'Saved','Widget',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(33,1604513978,1,'Saved','Playlist',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(34,1604513978,1,'Saved','Region',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(35,1604513978,1,'Saved','Widget',5,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(36,1604513978,1,'Saved','Playlist',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(37,1604513978,1,'Saved','Region',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(38,1604513997,2,'Login Granted','User',2,'{\"IPAddress\":\"172.23.0.1\",\"UserAgent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/86.0.4240.183 Safari\\/537.36\"}'),(39,1604514007,2,'Updated','Layout',1,'{\"ownerId\":\"1 > 2\",\"status\":\"1 > 3\",\"campaignId\":[1]}'),(40,1604514007,2,'Saved','Widget',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(41,1604514007,2,'Saved','Playlist',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(42,1604514007,2,'Saved','Region',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(43,1604514007,2,'Saved','Widget',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(44,1604514007,2,'Saved','Playlist',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(45,1604514007,2,'Saved','Region',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(46,1604514007,2,'Saved','Widget',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(47,1604514007,2,'Saved','Widget',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(48,1604514007,2,'Saved','Playlist',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(49,1604514007,2,'Saved','Region',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(50,1604514007,2,'Saved','Widget',5,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(51,1604514007,2,'Saved','Playlist',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(52,1604514007,2,'Saved','Region',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(53,1604514008,2,'Updated','Layout',1,'{\"ownerId\":\"1 > 2\",\"status\":\"1 > 3\",\"campaignId\":[1]}'),(54,1604514008,2,'Saved','Widget',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(55,1604514008,2,'Saved','Playlist',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(56,1604514008,2,'Saved','Region',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(57,1604514008,2,'Saved','Widget',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(58,1604514008,2,'Saved','Playlist',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(59,1604514008,2,'Saved','Region',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(60,1604514008,2,'Saved','Widget',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(61,1604514008,2,'Saved','Widget',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(62,1604514008,2,'Saved','Playlist',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(63,1604514008,2,'Saved','Region',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(64,1604514008,2,'Saved','Widget',5,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(65,1604514008,2,'Saved','Playlist',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(66,1604514008,2,'Saved','Region',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(67,1604514008,2,'Updated','Layout',1,'{\"ownerId\":\"1 > 2\",\"status\":\"1 > 3\",\"campaignId\":[1]}'),(68,1604514008,2,'Saved','Widget',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(69,1604514008,2,'Saved','Playlist',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(70,1604514008,2,'Saved','Region',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(71,1604514008,2,'Saved','Widget',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(72,1604514008,2,'Saved','Playlist',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(73,1604514008,2,'Saved','Region',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(74,1604514008,2,'Saved','Widget',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(75,1604514008,2,'Saved','Widget',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(76,1604514008,2,'Saved','Playlist',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(77,1604514008,2,'Saved','Region',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(78,1604514008,2,'Saved','Widget',5,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(79,1604514008,2,'Saved','Playlist',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(80,1604514008,2,'Saved','Region',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(81,1604514096,2,'Updated','Layout',1,'{\"ownerId\":\"1 > 2\",\"status\":\"1 > 3\",\"campaignId\":[1]}'),(82,1604514096,2,'Saved','Widget',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(83,1604514096,2,'Saved','Playlist',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(84,1604514096,2,'Saved','Region',1,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(85,1604514096,2,'Saved','Widget',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(86,1604514096,2,'Saved','Playlist',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(87,1604514096,2,'Saved','Region',2,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(88,1604514096,2,'Saved','Widget',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(89,1604514096,2,'Saved','Widget',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(90,1604514096,2,'Saved','Playlist',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(91,1604514096,2,'Saved','Region',3,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(92,1604514096,2,'Saved','Widget',5,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(93,1604514096,2,'Saved','Playlist',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(94,1604514096,2,'Saved','Region',4,'{\"ownerId\":\"1 > 2\",\"campaignId\":[\"1\"]}'),(95,1604514174,2,'Saved','Widget',1,'{\"duration\":\"60 > 10\",\"campaignId\":[\"1\"],\"layoutId\":[\"1\"]}'),(96,1604514217,2,'Updated','Layout',1,'{\"campaignId\":[1]}'),(97,1604514235,2,'Added','Layout',2,'{\"layoutId\":2,\"layout\":\"Second layout\",\"campaignId\":2}'),(98,1604514235,2,'Saved','Playlist',5,'{\"campaignId\":[\"2\"],\"layoutId\":[\"2\"]}'),(99,1604514235,2,'Added','Region',5,'{\"regionId\":5,\"campaignId\":\"2\",\"details\":\"Region Second layout-1 - 1920 x 1080 (0, 0). RegionId = 5, LayoutId = 2. OwnerId = 2. Duration = 0\"}'),(100,1604514235,2,'Checked out','Layout',3,'{\"layoutId\":2,\"layout\":\"Second layout\",\"campaignId\":2}'),(101,1604514235,2,'Saved','Playlist',6,'{\"playlistId\":\"5 > 6\",\"regionId\":\"5 > 6\",\"campaignId\":[\"2\"],\"layoutId\":[\"3\"]}'),(102,1604514235,2,'Added','Region',6,'{\"regionId\":6,\"campaignId\":\"2\",\"details\":\"Region Second layout-1 - 1920 x 1080 (0, 0). RegionId = 6, LayoutId = 3. OwnerId = 2. Duration = 0\"}'),(103,1604514235,2,'Updated','Layout',2,'{\"publishedStatusId\":\"1 > 2\",\"campaignId\":[2]}'),(104,1604514252,2,'Updated Draft','Layout',3,'{\"status\":\"4 > 3\",\"campaignId\":[2]}'),(105,1604514252,2,'Saved','Playlist',7,'{\"campaignId\":[\"2\"],\"layoutId\":[\"3\"]}'),(106,1604514252,2,'Added','Region',7,'{\"regionId\":7,\"campaignId\":\"2\",\"details\":\"Region Second layout-2 - 250 x 250 (50, 50). RegionId = 7, LayoutId = 3. OwnerId = 2. Duration = 0\"}'),(107,1604514257,2,'Saved','Playlist',7,'{\"campaignId\":[\"2\"],\"layoutId\":[\"3\"]}'),(108,1604514257,2,'Saved','Region',7,'{\"width\":\"250 > 1901.81\",\"height\":\"250 > 249.97\",\"top\":\"50 > 757.02\",\"left\":\"50 > 18.16\",\"campaignId\":[\"2\"]}'),(109,1604514262,2,'Saved','Playlist',7,'{\"campaignId\":[\"2\"],\"layoutId\":[\"3\"]}'),(110,1604514262,2,'Saved','Region',7,'{\"width\":\"1902 > 1901.77\",\"height\":\"250 > 249.97\",\"top\":\"757 > 774.14\",\"left\":\"18 > 0\",\"campaignId\":[\"2\"]}'),(111,1604514265,2,'Saved','Playlist',7,'{\"campaignId\":[\"2\"],\"layoutId\":[\"3\"]}'),(112,1604514265,2,'Saved','Region',7,'{\"width\":\"1902 > 1919.97\",\"height\":\"250 > 305.89\",\"top\":\"774 > 774.1\",\"campaignId\":[\"2\"]}'),(113,1604514269,2,'Updated Draft','Layout',3,'{\"backgroundColor\":\"#000 > #000000\",\"campaignId\":[2]}'),(114,1604514301,0,'Saved','Playlist',6,'{\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"2\"],\"layoutId\":[\"3\"]}'),(115,1604514301,0,'Saved','Playlist',5,'{\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"2\"],\"layoutId\":[\"2\"]}'),(116,1604514301,0,'Saved','Playlist',7,'{\"requiresDurationUpdate\":\"1 > 0\",\"campaignId\":[\"2\"],\"layoutId\":[\"3\"]}'),(117,1604514309,2,'Deleted','Playlist',5,'{\"playlistId\":5,\"regionId\":5}'),(118,1604514309,2,'Region Deleted','Region',5,'{\"regionId\":5,\"layoutId\":2}'),(119,1604514309,2,'Layout Deleted','Layout',2,'{\"layoutId\":2}'),(120,1604514309,2,'Deleted draft for 3','Layout',2,'{\"parentId\":\" > 3\"}'),(121,1604514309,2,'Updated Draft','Layout',3,'{\"publishedStatusId\":\"2 > 1\",\"status\":\"4 > 3\",\"campaignId\":[2]}'),(122,1604515167,2,'Updated','Layout',3,'{\"layout\":\"Second layout > Second Layout\",\"campaignId\":[2]}'),(123,1604523308,2,'Login Granted','User',2,'{\"IPAddress\":\"172.23.0.1\",\"UserAgent\":\"Mozilla\\/5.0 (X11; Linux x86_64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/86.0.4240.183 Safari\\/537.36\"}');
/*!40000 ALTER TABLE `auditlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bandwidth`
--

DROP TABLE IF EXISTS `bandwidth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bandwidth` (
  `displayId` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `size` bigint(20) NOT NULL,
  PRIMARY KEY (`displayId`,`type`,`month`),
  KEY `type` (`type`),
  CONSTRAINT `bandwidth_ibfk_1` FOREIGN KEY (`type`) REFERENCES `bandwidthtype` (`bandwidthTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bandwidth`
--

LOCK TABLES `bandwidth` WRITE;
/*!40000 ALTER TABLE `bandwidth` DISABLE KEYS */;
/*!40000 ALTER TABLE `bandwidth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bandwidthtype`
--

DROP TABLE IF EXISTS `bandwidthtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bandwidthtype` (
  `bandwidthTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`bandwidthTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bandwidthtype`
--

LOCK TABLES `bandwidthtype` WRITE;
/*!40000 ALTER TABLE `bandwidthtype` DISABLE KEYS */;
INSERT INTO `bandwidthtype` VALUES (1,'Register'),(2,'Required Files'),(3,'Schedule'),(4,'Get File'),(5,'Get Resource'),(6,'Media Inventory'),(7,'Notify Status'),(8,'Submit Stats'),(9,'Submit Log'),(10,'Blacklist'),(11,'Screen Shot');
/*!40000 ALTER TABLE `bandwidthtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blacklist`
--

DROP TABLE IF EXISTS `blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blacklist` (
  `blacklistId` int(11) NOT NULL AUTO_INCREMENT,
  `mediaId` int(11) NOT NULL,
  `displayId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `reportingDisplayId` int(11) DEFAULT NULL,
  `reason` text,
  `isIgnored` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blacklistId`),
  KEY `mediaId` (`mediaId`),
  KEY `displayId` (`displayId`),
  CONSTRAINT `blacklist_ibfk_1` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`),
  CONSTRAINT `blacklist_ibfk_2` FOREIGN KEY (`displayId`) REFERENCES `display` (`displayId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blacklist`
--

LOCK TABLES `blacklist` WRITE;
/*!40000 ALTER TABLE `blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign` (
  `campaignId` int(11) NOT NULL AUTO_INCREMENT,
  `campaign` varchar(254) NOT NULL,
  `isLayoutSpecific` tinyint(4) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`campaignId`),
  KEY `userId` (`userId`),
  CONSTRAINT `campaign_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (1,'Default Layout',1,1),(2,'Second Layout',1,2);
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command`
--

DROP TABLE IF EXISTS `command`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command` (
  `commandId` int(11) NOT NULL AUTO_INCREMENT,
  `command` varchar(254) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`commandId`),
  KEY `userId` (`userId`),
  CONSTRAINT `command_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command`
--

LOCK TABLES `command` WRITE;
/*!40000 ALTER TABLE `command` DISABLE KEYS */;
/*!40000 ALTER TABLE `command` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataset`
--

DROP TABLE IF EXISTS `dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataset` (
  `dataSetId` int(11) NOT NULL AUTO_INCREMENT,
  `dataSet` varchar(50) NOT NULL,
  `description` varchar(254) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `lastDataEdit` int(11) NOT NULL DEFAULT '0',
  `code` varchar(50) DEFAULT NULL,
  `isLookup` tinyint(4) NOT NULL,
  `isRemote` tinyint(4) NOT NULL DEFAULT '0',
  `method` enum('GET','POST') DEFAULT NULL,
  `uri` varchar(250) DEFAULT NULL,
  `postData` text,
  `authentication` varchar(10) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `customHeaders` text,
  `refreshRate` int(11) NOT NULL DEFAULT '86400',
  `clearRate` int(11) NOT NULL DEFAULT '0',
  `runsAfter` int(11) DEFAULT NULL,
  `dataRoot` varchar(250) DEFAULT NULL,
  `lastSync` int(11) NOT NULL DEFAULT '0',
  `summarize` varchar(10) DEFAULT NULL,
  `summarizeField` varchar(250) DEFAULT NULL,
  `lastClear` int(11) NOT NULL DEFAULT '0',
  `ignoreFirstRow` tinyint(4) DEFAULT NULL,
  `sourceId` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`dataSetId`),
  KEY `userId` (`userId`),
  CONSTRAINT `dataset_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataset`
--

LOCK TABLES `dataset` WRITE;
/*!40000 ALTER TABLE `dataset` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasetcolumn`
--

DROP TABLE IF EXISTS `datasetcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasetcolumn` (
  `dataSetColumnId` int(11) NOT NULL AUTO_INCREMENT,
  `dataSetId` int(11) NOT NULL,
  `heading` varchar(50) NOT NULL,
  `dataTypeId` int(11) NOT NULL,
  `dataSetColumnTypeId` int(11) NOT NULL,
  `listContent` varchar(1000) DEFAULT NULL,
  `columnOrder` smallint(6) NOT NULL,
  `formula` varchar(1000) DEFAULT NULL,
  `remoteField` varchar(250) DEFAULT NULL,
  `showFilter` tinyint(4) NOT NULL DEFAULT '1',
  `showSort` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`dataSetColumnId`),
  KEY `dataSetId` (`dataSetId`),
  KEY `dataTypeId` (`dataTypeId`),
  KEY `dataSetColumnTypeId` (`dataSetColumnTypeId`),
  CONSTRAINT `datasetcolumn_ibfk_1` FOREIGN KEY (`dataSetId`) REFERENCES `dataset` (`dataSetId`),
  CONSTRAINT `datasetcolumn_ibfk_2` FOREIGN KEY (`dataTypeId`) REFERENCES `datatype` (`dataTypeId`),
  CONSTRAINT `datasetcolumn_ibfk_3` FOREIGN KEY (`dataSetColumnTypeId`) REFERENCES `datasetcolumntype` (`dataSetColumnTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasetcolumn`
--

LOCK TABLES `datasetcolumn` WRITE;
/*!40000 ALTER TABLE `datasetcolumn` DISABLE KEYS */;
/*!40000 ALTER TABLE `datasetcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasetcolumntype`
--

DROP TABLE IF EXISTS `datasetcolumntype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasetcolumntype` (
  `dataSetColumnTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `dataSetColumnType` varchar(100) NOT NULL,
  PRIMARY KEY (`dataSetColumnTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasetcolumntype`
--

LOCK TABLES `datasetcolumntype` WRITE;
/*!40000 ALTER TABLE `datasetcolumntype` DISABLE KEYS */;
INSERT INTO `datasetcolumntype` VALUES (1,'Value'),(2,'Formula'),(3,'Remote');
/*!40000 ALTER TABLE `datasetcolumntype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datasetrss`
--

DROP TABLE IF EXISTS `datasetrss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datasetrss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataSetId` int(11) NOT NULL,
  `psk` varchar(254) NOT NULL,
  `title` varchar(254) NOT NULL,
  `author` varchar(254) NOT NULL,
  `titleColumnId` int(11) DEFAULT NULL,
  `summaryColumnId` int(11) DEFAULT NULL,
  `contentColumnId` int(11) DEFAULT NULL,
  `publishedDateColumnId` int(11) DEFAULT NULL,
  `sort` text,
  `filter` text,
  PRIMARY KEY (`id`),
  KEY `dataSetId` (`dataSetId`),
  CONSTRAINT `datasetrss_ibfk_1` FOREIGN KEY (`dataSetId`) REFERENCES `dataset` (`dataSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datasetrss`
--

LOCK TABLES `datasetrss` WRITE;
/*!40000 ALTER TABLE `datasetrss` DISABLE KEYS */;
/*!40000 ALTER TABLE `datasetrss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datatype`
--

DROP TABLE IF EXISTS `datatype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datatype` (
  `dataTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `dataType` varchar(100) NOT NULL,
  PRIMARY KEY (`dataTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datatype`
--

LOCK TABLES `datatype` WRITE;
/*!40000 ALTER TABLE `datatype` DISABLE KEYS */;
INSERT INTO `datatype` VALUES (1,'String'),(2,'Number'),(3,'Date'),(4,'External Image'),(5,'Library Image'),(6,'HTML');
/*!40000 ALTER TABLE `datatype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daypart`
--

DROP TABLE IF EXISTS `daypart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daypart` (
  `dayPartId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `isRetired` tinyint(4) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL,
  `startTime` varchar(8) NOT NULL DEFAULT '00:00:00',
  `endTime` varchar(8) NOT NULL DEFAULT '00:00:00',
  `exceptions` text,
  `isAlways` tinyint(4) NOT NULL DEFAULT '0',
  `isCustom` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dayPartId`),
  KEY `userId` (`userId`),
  CONSTRAINT `daypart_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daypart`
--

LOCK TABLES `daypart` WRITE;
/*!40000 ALTER TABLE `daypart` DISABLE KEYS */;
INSERT INTO `daypart` VALUES (1,'Custom','User specifies the from/to date',0,1,'','','',0,1),(2,'Always','Event runs always',0,1,'','','',1,0);
/*!40000 ALTER TABLE `daypart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `display`
--

DROP TABLE IF EXISTS `display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `display` (
  `displayId` int(11) NOT NULL AUTO_INCREMENT,
  `display` varchar(50) NOT NULL,
  `auditingUntil` int(11) NOT NULL DEFAULT '0',
  `defaultLayoutId` int(11) NOT NULL,
  `license` varchar(40) DEFAULT NULL,
  `licensed` tinyint(4) NOT NULL DEFAULT '0',
  `loggedIn` tinyint(4) NOT NULL DEFAULT '0',
  `lastaccessed` int(11) DEFAULT NULL,
  `inc_schedule` tinyint(4) NOT NULL DEFAULT '0',
  `email_alert` int(11) DEFAULT '0',
  `alert_timeout` int(11) DEFAULT '0',
  `clientAddress` varchar(50) DEFAULT NULL,
  `mediaInventoryStatus` tinyint(4) NOT NULL DEFAULT '0',
  `macAddress` varchar(254) DEFAULT NULL,
  `lastChanged` int(11) DEFAULT NULL,
  `numberOfMacAddressChanges` int(11) DEFAULT '0',
  `lastWakeOnLanCommandSent` int(11) DEFAULT NULL,
  `wakeOnLan` tinyint(4) NOT NULL DEFAULT '0',
  `wakeOnLanTime` varchar(5) DEFAULT NULL,
  `broadCastAddress` varchar(100) DEFAULT NULL,
  `secureOn` varchar(17) DEFAULT NULL,
  `cidr` varchar(6) DEFAULT NULL,
  `geoLocation` point DEFAULT NULL,
  `client_type` varchar(20) DEFAULT NULL,
  `client_version` varchar(15) DEFAULT NULL,
  `client_code` smallint(6) DEFAULT NULL,
  `displayProfileId` int(11) DEFAULT NULL,
  `screenShotRequested` tinyint(4) NOT NULL DEFAULT '0',
  `storageAvailableSpace` bigint(20) DEFAULT NULL,
  `storageTotalSpace` bigint(20) DEFAULT NULL,
  `xmrChannel` varchar(254) DEFAULT NULL,
  `xmrPubKey` text,
  `lastCommandSuccess` tinyint(4) NOT NULL DEFAULT '2',
  `deviceName` varchar(254) DEFAULT NULL,
  `timeZone` varchar(254) DEFAULT NULL,
  `overrideConfig` text,
  `newCmsAddress` varchar(40) DEFAULT NULL,
  `newCmsKey` varchar(40) DEFAULT NULL,
  `orientation` varchar(10) DEFAULT NULL,
  `resolution` varchar(10) DEFAULT NULL,
  `commercialLicence` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`displayId`),
  UNIQUE KEY `license` (`license`),
  KEY `defaultLayoutId` (`defaultLayoutId`),
  KEY `displayProfileId` (`displayProfileId`),
  CONSTRAINT `display_ibfk_1` FOREIGN KEY (`displayProfileId`) REFERENCES `displayprofile` (`displayProfileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `display`
--

LOCK TABLES `display` WRITE;
/*!40000 ALTER TABLE `display` DISABLE KEYS */;
/*!40000 ALTER TABLE `display` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `displayevent`
--

DROP TABLE IF EXISTS `displayevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `displayevent` (
  `displayEventId` int(11) NOT NULL AUTO_INCREMENT,
  `eventDate` int(11) NOT NULL,
  `displayId` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) DEFAULT NULL,
  PRIMARY KEY (`displayEventId`),
  KEY `eventDate` (`eventDate`),
  KEY `displayId` (`displayId`,`end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `displayevent`
--

LOCK TABLES `displayevent` WRITE;
/*!40000 ALTER TABLE `displayevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `displayevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `displaygroup`
--

DROP TABLE IF EXISTS `displaygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `displaygroup` (
  `displayGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `displayGroup` varchar(50) NOT NULL,
  `description` varchar(254) DEFAULT NULL,
  `isDisplaySpecific` tinyint(4) NOT NULL DEFAULT '0',
  `isDynamic` tinyint(4) NOT NULL DEFAULT '0',
  `dynamicCriteria` varchar(254) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `dynamicCriteriaTags` varchar(254) DEFAULT NULL,
  `bandwidthLimit` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`displayGroupId`),
  KEY `userId` (`userId`),
  CONSTRAINT `displaygroup_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `displaygroup`
--

LOCK TABLES `displaygroup` WRITE;
/*!40000 ALTER TABLE `displaygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `displaygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `displayprofile`
--

DROP TABLE IF EXISTS `displayprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `displayprofile` (
  `displayProfileId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `config` text,
  `isDefault` tinyint(4) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`displayProfileId`),
  KEY `userId` (`userId`),
  CONSTRAINT `displayprofile_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `displayprofile`
--

LOCK TABLES `displayprofile` WRITE;
/*!40000 ALTER TABLE `displayprofile` DISABLE KEYS */;
INSERT INTO `displayprofile` VALUES (1,'Windows','windows','[]',1,1),(2,'Android','android','[]',1,1),(3,'webOS','lg','[]',1,1),(4,'Tizen','sssp','[]',1,1),(5,'Linux','linux','[]',1,1);
/*!40000 ALTER TABLE `displayprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `groupId` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(50) NOT NULL,
  `isUserSpecific` tinyint(4) NOT NULL DEFAULT '0',
  `isEveryone` tinyint(4) NOT NULL DEFAULT '0',
  `libraryQuota` int(11) DEFAULT NULL,
  `isSystemNotification` tinyint(4) NOT NULL DEFAULT '0',
  `isDisplayNotification` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'Users',0,0,NULL,0,0),(2,'Everyone',0,1,NULL,0,0),(3,'xibo_admin',1,0,NULL,1,0),(4,'System Notifications',0,0,NULL,1,0),(5,'Playlist Dashboard User',0,0,NULL,0,0),(6,'dispway',1,0,0,0,0);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help` (
  `helpId` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(254) NOT NULL,
  `category` varchar(254) NOT NULL DEFAULT 'General',
  `link` varchar(254) NOT NULL,
  PRIMARY KEY (`helpId`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
INSERT INTO `help` VALUES (1,'Layout','General','layouts.html'),(2,'Content','General','media.html'),(4,'Schedule','General','scheduling.html'),(5,'Group','General','users_groups.html'),(6,'Admin','General','cms_settings.html'),(7,'Report','General','troubleshooting.html'),(8,'Dashboard','General','tour.html'),(9,'User','General','users.html'),(10,'Display','General','displays.html'),(11,'DisplayGroup','General','displays_groups.html'),(12,'Layout','Add','layouts.html#Add_Layout'),(13,'Layout','Background','layouts_designer.html#Background'),(14,'Content','Assign','layouts_playlists.html#Assigning_Content'),(15,'Layout','RegionOptions','layouts_regions.html'),(16,'Content','AddtoLibrary','media_library.html'),(17,'Display','Edit','displays.html#Display_Edit'),(18,'Display','Delete','displays.html#Display_Delete'),(19,'Displays','Groups','displays_groups.html#Group_Members'),(20,'UserGroup','Add','users_groups.html#Adding_Group'),(21,'User','Add','users_administration.html#Add_User'),(22,'User','Delete','users_administration.html#Delete_User'),(23,'Content','Config','cms_settings.html#Content'),(24,'LayoutMedia','Permissions','users_permissions.html'),(25,'Region','Permissions','users_permissions.html'),(26,'Library','Assign','layouts_playlists.html#Add_From_Library'),(27,'Media','Delete','media_library.html#Delete'),(28,'DisplayGroup','Add','displays_groups.html#Add_Group'),(29,'DisplayGroup','Edit','displays_groups.html#Edit_Group'),(30,'DisplayGroup','Delete','displays_groups.html#Delete_Group'),(31,'DisplayGroup','Members','displays_groups.html#Group_Members'),(32,'DisplayGroup','Permissions','users_permissions.html'),(34,'Schedule','ScheduleNow','scheduling_now.html'),(35,'Layout','Delete','layouts.html#Delete_Layout'),(36,'Layout','Copy','layouts.html#Copy_Layout'),(37,'Schedule','Edit','scheduling_events.html#Edit'),(38,'Schedule','Add','scheduling_events.html#Add'),(39,'Layout','Permissions','users_permissions.html'),(40,'Display','MediaInventory','displays.html#Media_Inventory'),(41,'User','ChangePassword','users.html#Change_Password'),(42,'Schedule','Delete','scheduling_events.html'),(43,'Layout','Edit','layouts_designer.html#Edit_Layout'),(44,'Media','Permissions','users_permissions.html'),(45,'Display','DefaultLayout','displays.html#DefaultLayout'),(46,'UserGroup','Edit','users_groups.html#Edit_Group'),(47,'UserGroup','Members','users_groups.html#Group_Member'),(48,'User','PageSecurity','users_permissions.html#Page_Security'),(49,'User','MenuSecurity','users_permissions.html#Menu_Security'),(50,'UserGroup','Delete','users_groups.html#Delete_Group'),(51,'User','Edit','users_administration.html#Edit_User'),(52,'User','Applications','users_administration.html#Users_MyApplications'),(53,'User','SetHomepage','users_administration.html#Media_Dashboard'),(54,'DataSet','General','media_datasets.html'),(55,'DataSet','Add','media_datasets.html#Create_Dataset'),(56,'DataSet','Edit','media_datasets.html#Edit_Dataset'),(57,'DataSet','Delete','media_datasets.html#Delete_Dataset'),(58,'DataSet','AddColumn','media_datasets.html#Dataset_Column'),(59,'DataSet','EditColumn','media_datasets.html#Dataset_Column'),(60,'DataSet','DeleteColumn','media_datasets.html#Dataset_Column'),(61,'DataSet','Data','media_datasets.html#Dataset_Row'),(62,'DataSet','Permissions','users_permissions.html'),(63,'Fault','General','troubleshooting.html#Report_Fault'),(65,'Stats','General','displays_metrics.html'),(66,'Resolution','General','layouts_resolutions.html'),(67,'Template','General','layouts_templates.html'),(68,'Services','Register','#Registered_Applications'),(69,'OAuth','General','api_oauth.html'),(70,'Services','Log','api_oauth.html#oAuthLog'),(71,'Module','Edit','media_modules.html'),(72,'Module','General','media_modules.html'),(73,'Campaign','General','layouts_campaigns.html'),(74,'License','General','licence_information.html'),(75,'DataSet','ViewColumns','media_datasets.html#Dataset_Column'),(76,'Campaign','Permissions','users_permissions.html'),(77,'Transition','Edit','layouts_transitions.html'),(78,'User','SetPassword','users_administration.html#Set_Password'),(79,'DataSet','ImportCSV','media_datasets.htmlmedia_datasets.html#Import_CSV'),(80,'DisplayGroup','FileAssociations','displays_fileassociations.html'),(81,'Statusdashboard','General','tour_status_dashboard.html'),(82,'Displayprofile','General','displays_settings.html'),(83,'DisplayProfile','Edit','displays_settings.html#edit'),(84,'DisplayProfile','Delete','displays_settings.html#delete');
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `layoutId` int(11) NOT NULL AUTO_INCREMENT,
  `layout` varchar(254) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdDt` datetime NOT NULL,
  `modifiedDt` datetime NOT NULL,
  `description` varchar(254) DEFAULT NULL,
  `retired` tinyint(4) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL,
  `backgroundImageId` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `width` decimal(10,0) NOT NULL,
  `height` decimal(10,0) NOT NULL,
  `backgroundColor` varchar(25) DEFAULT NULL,
  `backgroundzIndex` int(11) NOT NULL DEFAULT '1',
  `schemaVersion` tinyint(4) NOT NULL DEFAULT '2',
  `statusMessage` text,
  `parentId` int(11) DEFAULT NULL,
  `publishedStatusId` int(11) NOT NULL DEFAULT '1',
  `enableStat` int(11) DEFAULT NULL,
  `publishedDate` datetime DEFAULT NULL,
  `autoApplyTransitions` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutId`),
  KEY `userId` (`userId`),
  KEY `backgroundImageId` (`backgroundImageId`),
  KEY `publishedStatusId` (`publishedStatusId`),
  CONSTRAINT `layout_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `layout_ibfk_2` FOREIGN KEY (`backgroundImageId`) REFERENCES `media` (`mediaId`),
  CONSTRAINT `layout_ibfk_3` FOREIGN KEY (`publishedStatusId`) REFERENCES `status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES (1,'Default Layout',1,'2020-11-04 18:18:01','2020-11-04 18:25:01','Default Layout assigned to Players to show in the event scheduled content cannot be shown.',0,60,2,1,1920,1080,'#03031a',0,3,NULL,NULL,1,0,NULL,0),(3,'Second Layout',2,'2020-11-04 18:23:55','2020-11-04 18:39:27',NULL,0,0,NULL,4,1920,1080,'#000000',0,3,'[\"Empty Region\"]',NULL,1,0,NULL,0);
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layouthistory`
--

DROP TABLE IF EXISTS `layouthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layouthistory` (
  `layoutHistoryId` int(11) NOT NULL AUTO_INCREMENT,
  `campaignId` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `publishedDate` datetime NOT NULL,
  PRIMARY KEY (`layoutHistoryId`),
  KEY `campaignId` (`campaignId`),
  CONSTRAINT `layouthistory_ibfk_1` FOREIGN KEY (`campaignId`) REFERENCES `campaign` (`campaignId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layouthistory`
--

LOCK TABLES `layouthistory` WRITE;
/*!40000 ALTER TABLE `layouthistory` DISABLE KEYS */;
INSERT INTO `layouthistory` VALUES (1,1,1,'2020-11-04 18:18:01'),(2,2,2,'2020-11-04 18:23:55'),(3,2,3,'2020-11-04 18:25:09');
/*!40000 ALTER TABLE `layouthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkcampaignlayout`
--

DROP TABLE IF EXISTS `lkcampaignlayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkcampaignlayout` (
  `lkCampaignLayoutId` int(11) NOT NULL AUTO_INCREMENT,
  `campaignId` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `displayOrder` int(11) NOT NULL,
  PRIMARY KEY (`lkCampaignLayoutId`),
  UNIQUE KEY `campaignId` (`campaignId`,`layoutId`,`displayOrder`),
  KEY `layoutId` (`layoutId`),
  CONSTRAINT `lkcampaignlayout_ibfk_1` FOREIGN KEY (`campaignId`) REFERENCES `campaign` (`campaignId`),
  CONSTRAINT `lkcampaignlayout_ibfk_2` FOREIGN KEY (`layoutId`) REFERENCES `layout` (`layoutId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkcampaignlayout`
--

LOCK TABLES `lkcampaignlayout` WRITE;
/*!40000 ALTER TABLE `lkcampaignlayout` DISABLE KEYS */;
INSERT INTO `lkcampaignlayout` VALUES (1,1,1,1),(4,2,3,2);
/*!40000 ALTER TABLE `lkcampaignlayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkcommanddisplayprofile`
--

DROP TABLE IF EXISTS `lkcommanddisplayprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkcommanddisplayprofile` (
  `commandId` int(11) NOT NULL,
  `displayProfileId` int(11) NOT NULL,
  `commandString` varchar(1000) NOT NULL,
  `validationString` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`commandId`,`displayProfileId`),
  KEY `displayProfileId` (`displayProfileId`),
  CONSTRAINT `lkcommanddisplayprofile_ibfk_1` FOREIGN KEY (`commandId`) REFERENCES `command` (`commandId`),
  CONSTRAINT `lkcommanddisplayprofile_ibfk_2` FOREIGN KEY (`displayProfileId`) REFERENCES `displayprofile` (`displayProfileId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkcommanddisplayprofile`
--

LOCK TABLES `lkcommanddisplayprofile` WRITE;
/*!40000 ALTER TABLE `lkcommanddisplayprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkcommanddisplayprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkdgdg`
--

DROP TABLE IF EXISTS `lkdgdg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkdgdg` (
  `parentId` int(11) NOT NULL,
  `childId` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  KEY `parentId` (`parentId`,`childId`,`depth`),
  KEY `childId` (`childId`,`parentId`,`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkdgdg`
--

LOCK TABLES `lkdgdg` WRITE;
/*!40000 ALTER TABLE `lkdgdg` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkdgdg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkdisplaydg`
--

DROP TABLE IF EXISTS `lkdisplaydg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkdisplaydg` (
  `LkDisplayDGID` int(11) NOT NULL AUTO_INCREMENT,
  `displayGroupId` int(11) NOT NULL,
  `displayId` int(11) NOT NULL,
  PRIMARY KEY (`LkDisplayDGID`),
  UNIQUE KEY `displayGroupId` (`displayGroupId`,`displayId`),
  KEY `displayId` (`displayId`),
  CONSTRAINT `lkdisplaydg_ibfk_1` FOREIGN KEY (`displayGroupId`) REFERENCES `displaygroup` (`displayGroupId`),
  CONSTRAINT `lkdisplaydg_ibfk_2` FOREIGN KEY (`displayId`) REFERENCES `display` (`displayId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkdisplaydg`
--

LOCK TABLES `lkdisplaydg` WRITE;
/*!40000 ALTER TABLE `lkdisplaydg` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkdisplaydg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lklayoutdisplaygroup`
--

DROP TABLE IF EXISTS `lklayoutdisplaygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lklayoutdisplaygroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayGroupId` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `displayGroupId` (`displayGroupId`,`layoutId`),
  KEY `layoutId` (`layoutId`),
  CONSTRAINT `lklayoutdisplaygroup_ibfk_1` FOREIGN KEY (`displayGroupId`) REFERENCES `displaygroup` (`displayGroupId`),
  CONSTRAINT `lklayoutdisplaygroup_ibfk_2` FOREIGN KEY (`layoutId`) REFERENCES `layout` (`layoutId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lklayoutdisplaygroup`
--

LOCK TABLES `lklayoutdisplaygroup` WRITE;
/*!40000 ALTER TABLE `lklayoutdisplaygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lklayoutdisplaygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkmediadisplaygroup`
--

DROP TABLE IF EXISTS `lkmediadisplaygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkmediadisplaygroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayGroupId` int(11) NOT NULL,
  `mediaId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `displayGroupId` (`displayGroupId`,`mediaId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `lkmediadisplaygroup_ibfk_1` FOREIGN KEY (`displayGroupId`) REFERENCES `displaygroup` (`displayGroupId`),
  CONSTRAINT `lkmediadisplaygroup_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkmediadisplaygroup`
--

LOCK TABLES `lkmediadisplaygroup` WRITE;
/*!40000 ALTER TABLE `lkmediadisplaygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkmediadisplaygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lknotificationdg`
--

DROP TABLE IF EXISTS `lknotificationdg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lknotificationdg` (
  `lkNotificationDgId` int(11) NOT NULL AUTO_INCREMENT,
  `notificationId` int(11) NOT NULL,
  `displayGroupId` int(11) NOT NULL,
  PRIMARY KEY (`lkNotificationDgId`),
  UNIQUE KEY `notificationId` (`notificationId`,`displayGroupId`),
  CONSTRAINT `lknotificationdg_ibfk_1` FOREIGN KEY (`notificationId`) REFERENCES `notification` (`notificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lknotificationdg`
--

LOCK TABLES `lknotificationdg` WRITE;
/*!40000 ALTER TABLE `lknotificationdg` DISABLE KEYS */;
/*!40000 ALTER TABLE `lknotificationdg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lknotificationgroup`
--

DROP TABLE IF EXISTS `lknotificationgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lknotificationgroup` (
  `lkNotificationGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `notificationId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  PRIMARY KEY (`lkNotificationGroupId`),
  UNIQUE KEY `notificationId` (`notificationId`,`groupId`),
  KEY `groupId` (`groupId`),
  CONSTRAINT `lknotificationgroup_ibfk_1` FOREIGN KEY (`notificationId`) REFERENCES `notification` (`notificationId`),
  CONSTRAINT `lknotificationgroup_ibfk_2` FOREIGN KEY (`groupId`) REFERENCES `group` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lknotificationgroup`
--

LOCK TABLES `lknotificationgroup` WRITE;
/*!40000 ALTER TABLE `lknotificationgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lknotificationgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lknotificationuser`
--

DROP TABLE IF EXISTS `lknotificationuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lknotificationuser` (
  `lkNotificationUserId` int(11) NOT NULL AUTO_INCREMENT,
  `notificationId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `read` tinyint(4) NOT NULL,
  `readDt` int(11) NOT NULL,
  `emailDt` int(11) NOT NULL,
  PRIMARY KEY (`lkNotificationUserId`),
  UNIQUE KEY `notificationId` (`notificationId`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `lknotificationuser_ibfk_1` FOREIGN KEY (`notificationId`) REFERENCES `notification` (`notificationId`),
  CONSTRAINT `lknotificationuser_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lknotificationuser`
--

LOCK TABLES `lknotificationuser` WRITE;
/*!40000 ALTER TABLE `lknotificationuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `lknotificationuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkplaylistplaylist`
--

DROP TABLE IF EXISTS `lkplaylistplaylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkplaylistplaylist` (
  `parentId` int(11) NOT NULL,
  `childId` int(11) NOT NULL,
  `depth` int(11) NOT NULL,
  PRIMARY KEY (`parentId`,`childId`,`depth`),
  UNIQUE KEY `childId` (`childId`,`parentId`,`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkplaylistplaylist`
--

LOCK TABLES `lkplaylistplaylist` WRITE;
/*!40000 ALTER TABLE `lkplaylistplaylist` DISABLE KEYS */;
INSERT INTO `lkplaylistplaylist` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(6,6,0),(7,7,0);
/*!40000 ALTER TABLE `lkplaylistplaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkscheduledisplaygroup`
--

DROP TABLE IF EXISTS `lkscheduledisplaygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkscheduledisplaygroup` (
  `eventId` int(11) NOT NULL,
  `displayGroupId` int(11) NOT NULL,
  PRIMARY KEY (`eventId`,`displayGroupId`),
  KEY `displayGroupId` (`displayGroupId`),
  CONSTRAINT `lkscheduledisplaygroup_ibfk_1` FOREIGN KEY (`eventId`) REFERENCES `schedule` (`eventId`),
  CONSTRAINT `lkscheduledisplaygroup_ibfk_2` FOREIGN KEY (`displayGroupId`) REFERENCES `displaygroup` (`displayGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkscheduledisplaygroup`
--

LOCK TABLES `lkscheduledisplaygroup` WRITE;
/*!40000 ALTER TABLE `lkscheduledisplaygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkscheduledisplaygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lktagcampaign`
--

DROP TABLE IF EXISTS `lktagcampaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lktagcampaign` (
  `lkTagCampaignId` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `campaignId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`lkTagCampaignId`),
  UNIQUE KEY `tagId` (`tagId`,`campaignId`),
  KEY `campaignId` (`campaignId`),
  CONSTRAINT `lktagcampaign_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`),
  CONSTRAINT `lktagcampaign_ibfk_2` FOREIGN KEY (`campaignId`) REFERENCES `campaign` (`campaignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lktagcampaign`
--

LOCK TABLES `lktagcampaign` WRITE;
/*!40000 ALTER TABLE `lktagcampaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `lktagcampaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lktagdisplaygroup`
--

DROP TABLE IF EXISTS `lktagdisplaygroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lktagdisplaygroup` (
  `lkTagDisplayGroupId` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `displayGroupId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`lkTagDisplayGroupId`),
  UNIQUE KEY `tagId` (`tagId`,`displayGroupId`),
  KEY `displayGroupId` (`displayGroupId`),
  CONSTRAINT `lktagdisplaygroup_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`),
  CONSTRAINT `lktagdisplaygroup_ibfk_2` FOREIGN KEY (`displayGroupId`) REFERENCES `displaygroup` (`displayGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lktagdisplaygroup`
--

LOCK TABLES `lktagdisplaygroup` WRITE;
/*!40000 ALTER TABLE `lktagdisplaygroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `lktagdisplaygroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lktaglayout`
--

DROP TABLE IF EXISTS `lktaglayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lktaglayout` (
  `lkTagLayoutId` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `layoutId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`lkTagLayoutId`),
  UNIQUE KEY `tagId` (`tagId`,`layoutId`),
  KEY `layoutId` (`layoutId`),
  CONSTRAINT `lktaglayout_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`),
  CONSTRAINT `lktaglayout_ibfk_2` FOREIGN KEY (`layoutId`) REFERENCES `layout` (`layoutId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lktaglayout`
--

LOCK TABLES `lktaglayout` WRITE;
/*!40000 ALTER TABLE `lktaglayout` DISABLE KEYS */;
INSERT INTO `lktaglayout` VALUES (3,4,1,NULL),(4,7,1,NULL),(5,8,3,NULL);
/*!40000 ALTER TABLE `lktaglayout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lktagmedia`
--

DROP TABLE IF EXISTS `lktagmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lktagmedia` (
  `lkTagMediaId` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `mediaId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`lkTagMediaId`),
  UNIQUE KEY `tagId` (`tagId`,`mediaId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `lktagmedia_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`),
  CONSTRAINT `lktagmedia_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lktagmedia`
--

LOCK TABLES `lktagmedia` WRITE;
/*!40000 ALTER TABLE `lktagmedia` DISABLE KEYS */;
INSERT INTO `lktagmedia` VALUES (1,4,1,NULL),(2,4,2,NULL),(3,7,2,NULL),(4,8,1,NULL);
/*!40000 ALTER TABLE `lktagmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lktagplaylist`
--

DROP TABLE IF EXISTS `lktagplaylist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lktagplaylist` (
  `lkTagPlaylistId` int(11) NOT NULL AUTO_INCREMENT,
  `tagId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`lkTagPlaylistId`),
  UNIQUE KEY `tagId` (`tagId`,`playlistId`),
  KEY `lktagplaylist_ibfk_2` (`playlistId`),
  CONSTRAINT `lktagplaylist_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tag` (`tagId`),
  CONSTRAINT `lktagplaylist_ibfk_2` FOREIGN KEY (`playlistId`) REFERENCES `playlist` (`playlistId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lktagplaylist`
--

LOCK TABLES `lktagplaylist` WRITE;
/*!40000 ALTER TABLE `lktagplaylist` DISABLE KEYS */;
/*!40000 ALTER TABLE `lktagplaylist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkusergroup`
--

DROP TABLE IF EXISTS `lkusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkusergroup` (
  `lkUserGroupID` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`lkUserGroupID`),
  UNIQUE KEY `groupId` (`groupId`,`userId`),
  KEY `userId` (`userId`),
  CONSTRAINT `lkusergroup_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `group` (`groupId`),
  CONSTRAINT `lkusergroup_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkusergroup`
--

LOCK TABLES `lkusergroup` WRITE;
/*!40000 ALTER TABLE `lkusergroup` DISABLE KEYS */;
INSERT INTO `lkusergroup` VALUES (3,1,2),(1,3,1),(2,6,2);
/*!40000 ALTER TABLE `lkusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkwidgetaudio`
--

DROP TABLE IF EXISTS `lkwidgetaudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkwidgetaudio` (
  `widgetId` int(11) NOT NULL,
  `mediaId` int(11) NOT NULL,
  `volume` tinyint(4) NOT NULL,
  `loop` tinyint(4) NOT NULL,
  PRIMARY KEY (`widgetId`,`mediaId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `lkwidgetaudio_ibfk_1` FOREIGN KEY (`widgetId`) REFERENCES `widget` (`widgetId`),
  CONSTRAINT `lkwidgetaudio_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkwidgetaudio`
--

LOCK TABLES `lkwidgetaudio` WRITE;
/*!40000 ALTER TABLE `lkwidgetaudio` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkwidgetaudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkwidgetmedia`
--

DROP TABLE IF EXISTS `lkwidgetmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkwidgetmedia` (
  `widgetId` int(11) NOT NULL,
  `mediaId` int(11) NOT NULL,
  PRIMARY KEY (`widgetId`,`mediaId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `lkwidgetmedia_ibfk_1` FOREIGN KEY (`widgetId`) REFERENCES `widget` (`widgetId`),
  CONSTRAINT `lkwidgetmedia_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkwidgetmedia`
--

LOCK TABLES `lkwidgetmedia` WRITE;
/*!40000 ALTER TABLE `lkwidgetmedia` DISABLE KEYS */;
INSERT INTO `lkwidgetmedia` VALUES (1,1);
/*!40000 ALTER TABLE `lkwidgetmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `runNo` varchar(10) NOT NULL,
  `logDate` datetime NOT NULL,
  `channel` varchar(20) NOT NULL,
  `type` varchar(254) NOT NULL,
  `page` varchar(50) NOT NULL,
  `function` varchar(50) DEFAULT NULL,
  `message` longtext NOT NULL,
  `userId` int(11) NOT NULL DEFAULT '0',
  `displayId` int(11) DEFAULT NULL,
  PRIMARY KEY (`logId`),
  KEY `logDate` (`logDate`)
) ENGINE=InnoDB AUTO_INCREMENT=6421 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (5152,'e5c05f6','2020-11-04 19:43:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5153,'e5c05f6','2020-11-04 19:43:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5154,'e5c05f6','2020-11-04 19:43:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5155,'e5c05f6','2020-11-04 19:43:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:43:00',1,0),(5156,'e5c05f6','2020-11-04 19:43:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5157,'e5c05f6','2020-11-04 19:43:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.06692004203796387,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5158,'9750295','2020-11-04 19:44:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5159,'9750295','2020-11-04 19:44:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5160,'9750295','2020-11-04 19:44:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5161,'9750295','2020-11-04 19:44:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5162,'9750295','2020-11-04 19:44:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5163,'9750295','2020-11-04 19:44:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:44:00',1,0),(5164,'9750295','2020-11-04 19:44:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5165,'9750295','2020-11-04 19:44:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04327583312988281,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5166,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5167,'27e9d69','2020-11-04 19:45:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5168,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5169,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5170,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 19:45:00',1,0),(5171,'27e9d69','2020-11-04 19:45:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5172,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5173,'27e9d69','2020-11-04 19:45:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5174,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5175,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 19:45:00',1,0),(5176,'27e9d69','2020-11-04 19:45:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5177,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5178,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 19:45:00',1,0),(5179,'27e9d69','2020-11-04 19:45:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5180,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5181,'27e9d69','2020-11-04 19:45:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5182,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 19:45:00',1,0),(5183,'27e9d69','2020-11-04 19:45:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5184,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5185,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5186,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5187,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:45:00',1,0),(5188,'27e9d69','2020-11-04 19:45:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5189,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5190,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5191,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 19:45:00',1,0),(5192,'27e9d69','2020-11-04 19:45:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5193,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5194,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5195,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5196,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5197,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5198,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5199,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5200,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5201,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5202,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5203,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 19:45:00',1,0),(5204,'27e9d69','2020-11-04 19:45:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5205,'27e9d69','2020-11-04 19:45:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 21\n    },\n    \"log\": {\n        \"insert\": 39\n    },\n    \"xtr\": {\n        \"select\": 8,\n        \"update\": 21,\n        \"commit\": 14\n    },\n    \"length\": 0.17049908638000488,\n    \"memoryUsage\": 13705024,\n    \"peakMemoryUsage\": 13800576\n}.',1,0),(5206,'05c10ef','2020-11-04 19:46:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5207,'05c10ef','2020-11-04 19:46:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5208,'05c10ef','2020-11-04 19:46:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5209,'05c10ef','2020-11-04 19:46:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5210,'05c10ef','2020-11-04 19:46:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5211,'05c10ef','2020-11-04 19:46:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:46:00',1,0),(5212,'05c10ef','2020-11-04 19:46:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5213,'05c10ef','2020-11-04 19:46:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.09361600875854492,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5214,'9876a41','2020-11-04 19:47:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5215,'9876a41','2020-11-04 19:47:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5216,'9876a41','2020-11-04 19:47:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5217,'9876a41','2020-11-04 19:47:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5218,'9876a41','2020-11-04 19:47:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5219,'9876a41','2020-11-04 19:47:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:47:00',1,0),(5220,'9876a41','2020-11-04 19:47:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5221,'9876a41','2020-11-04 19:47:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04186296463012695,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5222,'c846d85','2020-11-04 19:48:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5223,'c846d85','2020-11-04 19:48:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5224,'c846d85','2020-11-04 19:48:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5225,'c846d85','2020-11-04 19:48:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5226,'c846d85','2020-11-04 19:48:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 19:48:00',1,0),(5227,'c846d85','2020-11-04 19:48:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5228,'c846d85','2020-11-04 19:48:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5229,'c846d85','2020-11-04 19:48:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5230,'c846d85','2020-11-04 19:48:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5231,'c846d85','2020-11-04 19:48:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:48:00',1,0),(5232,'c846d85','2020-11-04 19:48:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5233,'c846d85','2020-11-04 19:48:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.06317996978759766,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5234,'3bfc6c3','2020-11-04 19:49:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5235,'3bfc6c3','2020-11-04 19:49:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5236,'3bfc6c3','2020-11-04 19:49:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5237,'3bfc6c3','2020-11-04 19:49:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5238,'3bfc6c3','2020-11-04 19:49:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5239,'3bfc6c3','2020-11-04 19:49:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:49:00',1,0),(5240,'3bfc6c3','2020-11-04 19:49:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5241,'3bfc6c3','2020-11-04 19:49:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.07178592681884766,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5242,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5243,'c3b3eee','2020-11-04 19:50:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5244,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5245,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5246,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 19:50:00',1,0),(5247,'c3b3eee','2020-11-04 19:50:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5248,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5249,'c3b3eee','2020-11-04 19:50:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5250,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5251,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 19:50:00',1,0),(5252,'c3b3eee','2020-11-04 19:50:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5253,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5254,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 19:50:00',1,0),(5255,'c3b3eee','2020-11-04 19:50:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5256,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5257,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5258,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5259,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:50:00',1,0),(5260,'c3b3eee','2020-11-04 19:50:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5261,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5262,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5263,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 19:50:00',1,0),(5264,'c3b3eee','2020-11-04 19:50:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5265,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5266,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5267,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5268,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5269,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5270,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5271,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5272,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5273,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5274,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5275,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 19:50:00',1,0),(5276,'c3b3eee','2020-11-04 19:50:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5277,'c3b3eee','2020-11-04 19:50:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 20\n    },\n    \"log\": {\n        \"insert\": 35\n    },\n    \"xtr\": {\n        \"select\": 7,\n        \"update\": 18,\n        \"commit\": 12\n    },\n    \"length\": 0.2066950798034668,\n    \"memoryUsage\": 13690688,\n    \"peakMemoryUsage\": 13786208\n}.',1,0),(5278,'5319497','2020-11-04 19:51:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5279,'5319497','2020-11-04 19:51:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5280,'5319497','2020-11-04 19:51:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5281,'5319497','2020-11-04 19:51:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5282,'5319497','2020-11-04 19:51:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 19:51:00',1,0),(5283,'5319497','2020-11-04 19:51:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5284,'5319497','2020-11-04 19:51:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5285,'5319497','2020-11-04 19:51:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5286,'5319497','2020-11-04 19:51:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5287,'5319497','2020-11-04 19:51:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:51:00',1,0),(5288,'5319497','2020-11-04 19:51:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5289,'5319497','2020-11-04 19:51:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.1080629825592041,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5290,'e6f341d','2020-11-04 19:52:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5291,'e6f341d','2020-11-04 19:52:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5292,'e6f341d','2020-11-04 19:52:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5293,'e6f341d','2020-11-04 19:52:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5294,'e6f341d','2020-11-04 19:52:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5295,'e6f341d','2020-11-04 19:52:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:52:00',1,0),(5296,'e6f341d','2020-11-04 19:52:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5297,'e6f341d','2020-11-04 19:52:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04313492774963379,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5298,'c3481ea','2020-11-04 19:53:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5299,'c3481ea','2020-11-04 19:53:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5300,'c3481ea','2020-11-04 19:53:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5301,'c3481ea','2020-11-04 19:53:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5302,'c3481ea','2020-11-04 19:53:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5303,'c3481ea','2020-11-04 19:53:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:53:00',1,0),(5304,'c3481ea','2020-11-04 19:53:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5305,'c3481ea','2020-11-04 19:53:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.09026098251342773,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5306,'73a6f5e','2020-11-04 19:54:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5307,'73a6f5e','2020-11-04 19:54:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5308,'73a6f5e','2020-11-04 19:54:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5309,'73a6f5e','2020-11-04 19:54:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5310,'73a6f5e','2020-11-04 19:54:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 19:54:00',1,0),(5311,'73a6f5e','2020-11-04 19:54:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5312,'73a6f5e','2020-11-04 19:54:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5313,'73a6f5e','2020-11-04 19:54:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5314,'73a6f5e','2020-11-04 19:54:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5315,'73a6f5e','2020-11-04 19:54:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:54:00',1,0),(5316,'73a6f5e','2020-11-04 19:54:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5317,'73a6f5e','2020-11-04 19:54:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.07001113891601562,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5318,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5319,'65a8dec','2020-11-04 19:55:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5320,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5321,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5322,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 19:55:00',1,0),(5323,'65a8dec','2020-11-04 19:55:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5324,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5325,'65a8dec','2020-11-04 19:55:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5326,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5327,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 19:55:00',1,0),(5328,'65a8dec','2020-11-04 19:55:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5329,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5330,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 19:55:00',1,0),(5331,'65a8dec','2020-11-04 19:55:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5332,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5333,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5334,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5335,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:55:00',1,0),(5336,'65a8dec','2020-11-04 19:55:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5337,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5338,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5339,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 19:55:00',1,0),(5340,'65a8dec','2020-11-04 19:55:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5341,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5342,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5343,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5344,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5345,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5346,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5347,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5348,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5349,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5350,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5351,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 19:55:00',1,0),(5352,'65a8dec','2020-11-04 19:55:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5353,'65a8dec','2020-11-04 19:55:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 20\n    },\n    \"log\": {\n        \"insert\": 35\n    },\n    \"xtr\": {\n        \"select\": 7,\n        \"update\": 18,\n        \"commit\": 12\n    },\n    \"length\": 0.23151612281799316,\n    \"memoryUsage\": 13690688,\n    \"peakMemoryUsage\": 13786208\n}.',1,0),(5354,'13a2c9e','2020-11-04 19:56:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5355,'13a2c9e','2020-11-04 19:56:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5356,'13a2c9e','2020-11-04 19:56:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5357,'13a2c9e','2020-11-04 19:56:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5358,'13a2c9e','2020-11-04 19:56:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5359,'13a2c9e','2020-11-04 19:56:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:56:00',1,0),(5360,'13a2c9e','2020-11-04 19:56:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5361,'13a2c9e','2020-11-04 19:56:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.08672809600830078,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5362,'ed90178','2020-11-04 19:57:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5363,'ed90178','2020-11-04 19:57:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5364,'ed90178','2020-11-04 19:57:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5365,'ed90178','2020-11-04 19:57:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5366,'ed90178','2020-11-04 19:57:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 19:57:00',1,0),(5367,'ed90178','2020-11-04 19:57:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5368,'ed90178','2020-11-04 19:57:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5369,'ed90178','2020-11-04 19:57:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5370,'ed90178','2020-11-04 19:57:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5371,'ed90178','2020-11-04 19:57:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:57:00',1,0),(5372,'ed90178','2020-11-04 19:57:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5373,'ed90178','2020-11-04 19:57:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.07443881034851074,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5374,'450ffeb','2020-11-04 19:58:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5375,'450ffeb','2020-11-04 19:58:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5376,'450ffeb','2020-11-04 19:58:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5377,'450ffeb','2020-11-04 19:58:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5378,'450ffeb','2020-11-04 19:58:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5379,'450ffeb','2020-11-04 19:58:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:58:00',1,0),(5380,'450ffeb','2020-11-04 19:58:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5381,'450ffeb','2020-11-04 19:58:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04489493370056152,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5382,'a955509','2020-11-04 19:59:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5383,'a955509','2020-11-04 19:59:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5384,'a955509','2020-11-04 19:59:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5385,'a955509','2020-11-04 19:59:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5386,'a955509','2020-11-04 19:59:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5387,'a955509','2020-11-04 19:59:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 19:59:00',1,0),(5388,'a955509','2020-11-04 19:59:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5389,'a955509','2020-11-04 19:59:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.07909798622131348,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5390,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5391,'71ed2d8','2020-11-04 20:00:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5392,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5393,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5394,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:00:00',1,0),(5395,'71ed2d8','2020-11-04 20:00:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5396,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5397,'71ed2d8','2020-11-04 20:00:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5398,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5399,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:00:00',1,0),(5400,'71ed2d8','2020-11-04 20:00:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5401,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5402,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:00:00',1,0),(5403,'71ed2d8','2020-11-04 20:00:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5404,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5405,'71ed2d8','2020-11-04 20:00:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5406,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:00:00',1,0),(5407,'71ed2d8','2020-11-04 20:00:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5408,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5409,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5410,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5411,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:00:00',1,0),(5412,'71ed2d8','2020-11-04 20:00:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5413,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5414,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5415,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:00:00',1,0),(5416,'71ed2d8','2020-11-04 20:00:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5417,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5418,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5419,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5420,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5421,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5422,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5423,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5424,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5425,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5426,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5427,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:00:00',1,0),(5428,'71ed2d8','2020-11-04 20:00:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5429,'71ed2d8','2020-11-04 20:00:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 21\n    },\n    \"log\": {\n        \"insert\": 39\n    },\n    \"xtr\": {\n        \"select\": 8,\n        \"update\": 21,\n        \"commit\": 14\n    },\n    \"length\": 0.2632770538330078,\n    \"memoryUsage\": 13705024,\n    \"peakMemoryUsage\": 13800576\n}.',1,0),(5430,'d811e09','2020-11-04 20:01:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5431,'d811e09','2020-11-04 20:01:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5432,'d811e09','2020-11-04 20:01:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5433,'d811e09','2020-11-04 20:01:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5434,'d811e09','2020-11-04 20:01:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5435,'d811e09','2020-11-04 20:01:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:01:00',1,0),(5436,'d811e09','2020-11-04 20:01:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5437,'d811e09','2020-11-04 20:01:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.06846499443054199,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5438,'fce3317','2020-11-04 20:02:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5439,'fce3317','2020-11-04 20:02:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5440,'fce3317','2020-11-04 20:02:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5441,'fce3317','2020-11-04 20:02:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5442,'fce3317','2020-11-04 20:02:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5443,'fce3317','2020-11-04 20:02:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:02:00',1,0),(5444,'fce3317','2020-11-04 20:02:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5445,'fce3317','2020-11-04 20:02:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.058702945709228516,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5446,'cf6a52a','2020-11-04 20:03:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5447,'cf6a52a','2020-11-04 20:03:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5448,'cf6a52a','2020-11-04 20:03:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5449,'cf6a52a','2020-11-04 20:03:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5450,'cf6a52a','2020-11-04 20:03:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:03:00',1,0),(5451,'cf6a52a','2020-11-04 20:03:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5452,'cf6a52a','2020-11-04 20:03:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5453,'cf6a52a','2020-11-04 20:03:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5454,'cf6a52a','2020-11-04 20:03:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5455,'cf6a52a','2020-11-04 20:03:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:03:00',1,0),(5456,'cf6a52a','2020-11-04 20:03:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5457,'cf6a52a','2020-11-04 20:03:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.06206917762756348,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5458,'fc4468c','2020-11-04 20:04:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5459,'fc4468c','2020-11-04 20:04:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5460,'fc4468c','2020-11-04 20:04:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5461,'fc4468c','2020-11-04 20:04:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5462,'fc4468c','2020-11-04 20:04:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5463,'fc4468c','2020-11-04 20:04:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:04:00',1,0),(5464,'fc4468c','2020-11-04 20:04:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5465,'fc4468c','2020-11-04 20:04:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04794883728027344,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5466,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5467,'f94bbd4','2020-11-04 20:05:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5468,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5469,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5470,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:05:00',1,0),(5471,'f94bbd4','2020-11-04 20:05:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5472,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5473,'f94bbd4','2020-11-04 20:05:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5474,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5475,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:05:00',1,0),(5476,'f94bbd4','2020-11-04 20:05:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5477,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5478,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:05:00',1,0),(5479,'f94bbd4','2020-11-04 20:05:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5480,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5481,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5482,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5483,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:05:00',1,0),(5484,'f94bbd4','2020-11-04 20:05:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5485,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5486,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5487,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:05:00',1,0),(5488,'f94bbd4','2020-11-04 20:05:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5489,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5490,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5491,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5492,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5493,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5494,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5495,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5496,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5497,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5498,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5499,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:05:00',1,0),(5500,'f94bbd4','2020-11-04 20:05:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5501,'f94bbd4','2020-11-04 20:05:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 20\n    },\n    \"log\": {\n        \"insert\": 35\n    },\n    \"xtr\": {\n        \"select\": 7,\n        \"update\": 18,\n        \"commit\": 12\n    },\n    \"length\": 0.2297658920288086,\n    \"memoryUsage\": 13690688,\n    \"peakMemoryUsage\": 13786208\n}.',1,0),(5502,'873275d','2020-11-04 20:06:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5503,'873275d','2020-11-04 20:06:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5504,'873275d','2020-11-04 20:06:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5505,'873275d','2020-11-04 20:06:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5506,'873275d','2020-11-04 20:06:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:06:00',1,0),(5507,'873275d','2020-11-04 20:06:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5508,'873275d','2020-11-04 20:06:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5509,'873275d','2020-11-04 20:06:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5510,'873275d','2020-11-04 20:06:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5511,'873275d','2020-11-04 20:06:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:06:00',1,0),(5512,'873275d','2020-11-04 20:06:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5513,'873275d','2020-11-04 20:06:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.07772517204284668,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5514,'4899fd6','2020-11-04 20:07:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5515,'4899fd6','2020-11-04 20:07:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5516,'4899fd6','2020-11-04 20:07:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5517,'4899fd6','2020-11-04 20:07:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5518,'4899fd6','2020-11-04 20:07:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5519,'4899fd6','2020-11-04 20:07:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:07:00',1,0),(5520,'4899fd6','2020-11-04 20:07:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5521,'4899fd6','2020-11-04 20:07:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.059001922607421875,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5522,'e2faf85','2020-11-04 20:08:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5523,'e2faf85','2020-11-04 20:08:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5524,'e2faf85','2020-11-04 20:08:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5525,'e2faf85','2020-11-04 20:08:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5526,'e2faf85','2020-11-04 20:08:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5527,'e2faf85','2020-11-04 20:08:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:08:00',1,0),(5528,'e2faf85','2020-11-04 20:08:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5529,'e2faf85','2020-11-04 20:08:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.06664681434631348,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5530,'17fbb50','2020-11-04 20:09:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5531,'17fbb50','2020-11-04 20:09:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5532,'17fbb50','2020-11-04 20:09:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5533,'17fbb50','2020-11-04 20:09:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5534,'17fbb50','2020-11-04 20:09:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:09:00',1,0),(5535,'17fbb50','2020-11-04 20:09:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5536,'17fbb50','2020-11-04 20:09:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5537,'17fbb50','2020-11-04 20:09:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5538,'17fbb50','2020-11-04 20:09:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5539,'17fbb50','2020-11-04 20:09:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:09:00',1,0),(5540,'17fbb50','2020-11-04 20:09:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5541,'17fbb50','2020-11-04 20:09:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.058218955993652344,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5542,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5543,'6e3b844','2020-11-04 20:10:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5544,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5545,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5546,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:10:00',1,0),(5547,'6e3b844','2020-11-04 20:10:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5548,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5549,'6e3b844','2020-11-04 20:10:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5550,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5551,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:10:00',1,0),(5552,'6e3b844','2020-11-04 20:10:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5553,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5554,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:10:00',1,0),(5555,'6e3b844','2020-11-04 20:10:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5556,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5557,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5558,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5559,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:10:00',1,0),(5560,'6e3b844','2020-11-04 20:10:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5561,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5562,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5563,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:10:00',1,0),(5564,'6e3b844','2020-11-04 20:10:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5565,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5566,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5567,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5568,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5569,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5570,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5571,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5572,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5573,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5574,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5575,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:10:00',1,0),(5576,'6e3b844','2020-11-04 20:10:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5577,'6e3b844','2020-11-04 20:10:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 20\n    },\n    \"log\": {\n        \"insert\": 35\n    },\n    \"xtr\": {\n        \"select\": 7,\n        \"update\": 18,\n        \"commit\": 12\n    },\n    \"length\": 0.2008209228515625,\n    \"memoryUsage\": 13690688,\n    \"peakMemoryUsage\": 13786208\n}.',1,0),(5578,'24b1c40','2020-11-04 20:11:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5579,'24b1c40','2020-11-04 20:11:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5580,'24b1c40','2020-11-04 20:11:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5581,'24b1c40','2020-11-04 20:11:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5582,'24b1c40','2020-11-04 20:11:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5583,'24b1c40','2020-11-04 20:11:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:11:00',1,0),(5584,'24b1c40','2020-11-04 20:11:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5585,'24b1c40','2020-11-04 20:11:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.06623196601867676,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5586,'1d0e631','2020-11-04 20:12:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5587,'1d0e631','2020-11-04 20:12:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5588,'1d0e631','2020-11-04 20:12:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5589,'1d0e631','2020-11-04 20:12:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5590,'1d0e631','2020-11-04 20:12:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:12:00',1,0),(5591,'1d0e631','2020-11-04 20:12:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5592,'1d0e631','2020-11-04 20:12:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5593,'1d0e631','2020-11-04 20:12:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5594,'1d0e631','2020-11-04 20:12:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5595,'1d0e631','2020-11-04 20:12:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:12:00',1,0),(5596,'1d0e631','2020-11-04 20:12:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5597,'1d0e631','2020-11-04 20:12:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.09072518348693848,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5598,'68e1a6c','2020-11-04 20:13:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5599,'68e1a6c','2020-11-04 20:13:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5600,'68e1a6c','2020-11-04 20:13:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5601,'68e1a6c','2020-11-04 20:13:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5602,'68e1a6c','2020-11-04 20:13:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5603,'68e1a6c','2020-11-04 20:13:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:13:00',1,0),(5604,'68e1a6c','2020-11-04 20:13:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5605,'68e1a6c','2020-11-04 20:13:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.0763249397277832,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5606,'6f27b10','2020-11-04 20:14:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5607,'6f27b10','2020-11-04 20:14:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5608,'6f27b10','2020-11-04 20:14:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5609,'6f27b10','2020-11-04 20:14:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5610,'6f27b10','2020-11-04 20:14:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5611,'6f27b10','2020-11-04 20:14:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:14:00',1,0),(5612,'6f27b10','2020-11-04 20:14:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5613,'6f27b10','2020-11-04 20:14:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.0742030143737793,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5614,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5615,'76563a6','2020-11-04 20:15:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5616,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5617,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5618,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:15:00',1,0),(5619,'76563a6','2020-11-04 20:15:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5620,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5621,'76563a6','2020-11-04 20:15:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5622,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5623,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:15:00',1,0),(5624,'76563a6','2020-11-04 20:15:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5625,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5626,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:15:00',1,0),(5627,'76563a6','2020-11-04 20:15:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5628,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5629,'76563a6','2020-11-04 20:15:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5630,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:15:00',1,0),(5631,'76563a6','2020-11-04 20:15:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5632,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5633,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5634,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5635,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:15:00',1,0),(5636,'76563a6','2020-11-04 20:15:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5637,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5638,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5639,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:15:00',1,0),(5640,'76563a6','2020-11-04 20:15:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5641,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5642,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5643,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5644,'76563a6','2020-11-04 20:15:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5645,'76563a6','2020-11-04 20:15:01','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5646,'76563a6','2020-11-04 20:15:01','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5647,'76563a6','2020-11-04 20:15:01','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5648,'76563a6','2020-11-04 20:15:01','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5649,'76563a6','2020-11-04 20:15:01','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5650,'76563a6','2020-11-04 20:15:01','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5651,'76563a6','2020-11-04 20:15:01','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:15:01',1,0),(5652,'76563a6','2020-11-04 20:15:01','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5653,'76563a6','2020-11-04 20:15:01','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 21\n    },\n    \"log\": {\n        \"insert\": 39\n    },\n    \"xtr\": {\n        \"select\": 8,\n        \"update\": 21,\n        \"commit\": 14\n    },\n    \"length\": 0.6894161701202393,\n    \"memoryUsage\": 13705024,\n    \"peakMemoryUsage\": 13800576\n}.',1,0),(5654,'1fd8a98','2020-11-04 20:16:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5655,'1fd8a98','2020-11-04 20:16:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5656,'1fd8a98','2020-11-04 20:16:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5657,'1fd8a98','2020-11-04 20:16:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5658,'1fd8a98','2020-11-04 20:16:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5659,'1fd8a98','2020-11-04 20:16:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:16:00',1,0),(5660,'1fd8a98','2020-11-04 20:16:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5661,'1fd8a98','2020-11-04 20:16:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.09818792343139648,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5662,'5c15a24','2020-11-04 20:17:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5663,'5c15a24','2020-11-04 20:17:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5664,'5c15a24','2020-11-04 20:17:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5665,'5c15a24','2020-11-04 20:17:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5666,'5c15a24','2020-11-04 20:17:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5667,'5c15a24','2020-11-04 20:17:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:17:00',1,0),(5668,'5c15a24','2020-11-04 20:17:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5669,'5c15a24','2020-11-04 20:17:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.10802912712097168,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5670,'75856de','2020-11-04 20:18:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5671,'75856de','2020-11-04 20:18:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5672,'75856de','2020-11-04 20:18:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5673,'75856de','2020-11-04 20:18:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5674,'75856de','2020-11-04 20:18:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:18:00',1,0),(5675,'75856de','2020-11-04 20:18:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5676,'75856de','2020-11-04 20:18:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5677,'75856de','2020-11-04 20:18:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5678,'75856de','2020-11-04 20:18:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5679,'75856de','2020-11-04 20:18:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:18:00',1,0),(5680,'75856de','2020-11-04 20:18:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5681,'75856de','2020-11-04 20:18:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.0684359073638916,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5682,'138cdd8','2020-11-04 20:19:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5683,'138cdd8','2020-11-04 20:19:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5684,'138cdd8','2020-11-04 20:19:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5685,'138cdd8','2020-11-04 20:19:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5686,'138cdd8','2020-11-04 20:19:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5687,'138cdd8','2020-11-04 20:19:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:19:00',1,0),(5688,'138cdd8','2020-11-04 20:19:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5689,'138cdd8','2020-11-04 20:19:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04041910171508789,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5690,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5691,'9570648','2020-11-04 20:20:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5692,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5693,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5694,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:20:00',1,0),(5695,'9570648','2020-11-04 20:20:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5696,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5697,'9570648','2020-11-04 20:20:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5698,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5699,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:20:00',1,0),(5700,'9570648','2020-11-04 20:20:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5701,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5702,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:20:00',1,0),(5703,'9570648','2020-11-04 20:20:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5704,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5705,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5706,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5707,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:20:00',1,0),(5708,'9570648','2020-11-04 20:20:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5709,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5710,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5711,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:20:00',1,0),(5712,'9570648','2020-11-04 20:20:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5713,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5714,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5715,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5716,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5717,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5718,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5719,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5720,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5721,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5722,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5723,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:20:00',1,0),(5724,'9570648','2020-11-04 20:20:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5725,'9570648','2020-11-04 20:20:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 20\n    },\n    \"log\": {\n        \"insert\": 35\n    },\n    \"xtr\": {\n        \"select\": 7,\n        \"update\": 18,\n        \"commit\": 12\n    },\n    \"length\": 0.19389700889587402,\n    \"memoryUsage\": 13690688,\n    \"peakMemoryUsage\": 13786208\n}.',1,0),(5726,'48da926','2020-11-04 20:21:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5727,'48da926','2020-11-04 20:21:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5728,'48da926','2020-11-04 20:21:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5729,'48da926','2020-11-04 20:21:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5730,'48da926','2020-11-04 20:21:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:21:00',1,0),(5731,'48da926','2020-11-04 20:21:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5732,'48da926','2020-11-04 20:21:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5733,'48da926','2020-11-04 20:21:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5734,'48da926','2020-11-04 20:21:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5735,'48da926','2020-11-04 20:21:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:21:00',1,0),(5736,'48da926','2020-11-04 20:21:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5737,'48da926','2020-11-04 20:21:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.09763312339782715,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5738,'b00bf39','2020-11-04 20:22:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5739,'b00bf39','2020-11-04 20:22:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5740,'b00bf39','2020-11-04 20:22:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5741,'b00bf39','2020-11-04 20:22:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5742,'b00bf39','2020-11-04 20:22:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5743,'b00bf39','2020-11-04 20:22:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:22:00',1,0),(5744,'b00bf39','2020-11-04 20:22:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5745,'b00bf39','2020-11-04 20:22:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04041910171508789,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5746,'2d91ea6','2020-11-04 20:23:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5747,'2d91ea6','2020-11-04 20:23:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5748,'2d91ea6','2020-11-04 20:23:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5749,'2d91ea6','2020-11-04 20:23:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5750,'2d91ea6','2020-11-04 20:23:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5751,'2d91ea6','2020-11-04 20:23:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:23:00',1,0),(5752,'2d91ea6','2020-11-04 20:23:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5753,'2d91ea6','2020-11-04 20:23:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04675102233886719,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5754,'d9ff601','2020-11-04 20:24:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5755,'d9ff601','2020-11-04 20:24:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5756,'d9ff601','2020-11-04 20:24:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5757,'d9ff601','2020-11-04 20:24:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5758,'d9ff601','2020-11-04 20:24:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:24:00',1,0),(5759,'d9ff601','2020-11-04 20:24:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5760,'d9ff601','2020-11-04 20:24:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5761,'d9ff601','2020-11-04 20:24:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5762,'d9ff601','2020-11-04 20:24:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5763,'d9ff601','2020-11-04 20:24:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:24:00',1,0),(5764,'d9ff601','2020-11-04 20:24:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5765,'d9ff601','2020-11-04 20:24:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.0970299243927002,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5766,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5767,'3c046a1','2020-11-04 20:25:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5768,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5769,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5770,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:25:00',1,0),(5771,'3c046a1','2020-11-04 20:25:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5772,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5773,'3c046a1','2020-11-04 20:25:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5774,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5775,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:25:00',1,0),(5776,'3c046a1','2020-11-04 20:25:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5777,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5778,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:25:00',1,0),(5779,'3c046a1','2020-11-04 20:25:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5780,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5781,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5782,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5783,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:25:00',1,0),(5784,'3c046a1','2020-11-04 20:25:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5785,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5786,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5787,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:25:00',1,0),(5788,'3c046a1','2020-11-04 20:25:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5789,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5790,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5791,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5792,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5793,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5794,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5795,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5796,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5797,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5798,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5799,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:25:00',1,0),(5800,'3c046a1','2020-11-04 20:25:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5801,'3c046a1','2020-11-04 20:25:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 20\n    },\n    \"log\": {\n        \"insert\": 35\n    },\n    \"xtr\": {\n        \"select\": 7,\n        \"update\": 18,\n        \"commit\": 12\n    },\n    \"length\": 0.16724395751953125,\n    \"memoryUsage\": 13690688,\n    \"peakMemoryUsage\": 13786208\n}.',1,0),(5802,'54dd749','2020-11-04 20:26:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5803,'54dd749','2020-11-04 20:26:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5804,'54dd749','2020-11-04 20:26:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5805,'54dd749','2020-11-04 20:26:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5806,'54dd749','2020-11-04 20:26:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5807,'54dd749','2020-11-04 20:26:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:26:00',1,0),(5808,'54dd749','2020-11-04 20:26:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5809,'54dd749','2020-11-04 20:26:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04038691520690918,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5810,'d8d41aa','2020-11-04 20:27:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5811,'d8d41aa','2020-11-04 20:27:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5812,'d8d41aa','2020-11-04 20:27:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5813,'d8d41aa','2020-11-04 20:27:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5814,'d8d41aa','2020-11-04 20:27:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:27:00',1,0),(5815,'d8d41aa','2020-11-04 20:27:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5816,'d8d41aa','2020-11-04 20:27:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5817,'d8d41aa','2020-11-04 20:27:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5818,'d8d41aa','2020-11-04 20:27:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5819,'d8d41aa','2020-11-04 20:27:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:27:00',1,0),(5820,'d8d41aa','2020-11-04 20:27:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5821,'d8d41aa','2020-11-04 20:27:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.08200812339782715,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5822,'fb79030','2020-11-04 20:28:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5823,'fb79030','2020-11-04 20:28:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5824,'fb79030','2020-11-04 20:28:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5825,'fb79030','2020-11-04 20:28:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5826,'fb79030','2020-11-04 20:28:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5827,'fb79030','2020-11-04 20:28:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:28:00',1,0),(5828,'fb79030','2020-11-04 20:28:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5829,'fb79030','2020-11-04 20:28:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.06560492515563965,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5830,'fd54449','2020-11-04 20:29:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5831,'fd54449','2020-11-04 20:29:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5832,'fd54449','2020-11-04 20:29:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5833,'fd54449','2020-11-04 20:29:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5834,'fd54449','2020-11-04 20:29:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5835,'fd54449','2020-11-04 20:29:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:29:00',1,0),(5836,'fd54449','2020-11-04 20:29:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5837,'fd54449','2020-11-04 20:29:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04804086685180664,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5838,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5839,'19a04fb','2020-11-04 20:30:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5840,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5841,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5842,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:30:00',1,0),(5843,'19a04fb','2020-11-04 20:30:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5844,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5845,'19a04fb','2020-11-04 20:30:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5846,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5847,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:30:00',1,0),(5848,'19a04fb','2020-11-04 20:30:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5849,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5850,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:30:00',1,0),(5851,'19a04fb','2020-11-04 20:30:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5852,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5853,'19a04fb','2020-11-04 20:30:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5854,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:30:00',1,0),(5855,'19a04fb','2020-11-04 20:30:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5856,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5857,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5858,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5859,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:30:00',1,0),(5860,'19a04fb','2020-11-04 20:30:00','CONSOLE','INFO','/','GET','Running Task 6',1,0),(5861,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Running Task Fetch Remote DataSets [6], Class = \\Xibo\\XTR\\RemoteDataSetFetchTask',1,0),(5862,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5863,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Order of processing: []',1,0),(5864,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Finished Task Fetch Remote DataSets [6] Run Dt: 2020-11-04 20:30:00',1,0),(5865,'19a04fb','2020-11-04 20:30:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5866,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5867,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5868,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:30:00',1,0),(5869,'19a04fb','2020-11-04 20:30:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5870,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5871,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5872,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5873,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5874,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5875,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5876,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5877,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5878,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5879,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5880,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:30:00',1,0),(5881,'19a04fb','2020-11-04 20:30:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5882,'19a04fb','2020-11-04 20:30:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 23\n    },\n    \"log\": {\n        \"insert\": 44\n    },\n    \"xtr\": {\n        \"select\": 9,\n        \"update\": 24,\n        \"commit\": 16\n    },\n    \"length\": 0.22279596328735352,\n    \"memoryUsage\": 13728328,\n    \"peakMemoryUsage\": 13823912\n}.',1,0),(5883,'3c0eec2','2020-11-04 20:31:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5884,'3c0eec2','2020-11-04 20:31:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5885,'3c0eec2','2020-11-04 20:31:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5886,'3c0eec2','2020-11-04 20:31:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5887,'3c0eec2','2020-11-04 20:31:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5888,'3c0eec2','2020-11-04 20:31:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:31:00',1,0),(5889,'3c0eec2','2020-11-04 20:31:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5890,'3c0eec2','2020-11-04 20:31:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.09096002578735352,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5891,'62297e5','2020-11-04 20:32:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5892,'62297e5','2020-11-04 20:32:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5893,'62297e5','2020-11-04 20:32:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5894,'62297e5','2020-11-04 20:32:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5895,'62297e5','2020-11-04 20:32:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5896,'62297e5','2020-11-04 20:32:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:32:00',1,0),(5897,'62297e5','2020-11-04 20:32:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5898,'62297e5','2020-11-04 20:32:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04130220413208008,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5899,'5b9d434','2020-11-04 20:33:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5900,'5b9d434','2020-11-04 20:33:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5901,'5b9d434','2020-11-04 20:33:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5902,'5b9d434','2020-11-04 20:33:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5903,'5b9d434','2020-11-04 20:33:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:33:00',1,0),(5904,'5b9d434','2020-11-04 20:33:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5905,'5b9d434','2020-11-04 20:33:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5906,'5b9d434','2020-11-04 20:33:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5907,'5b9d434','2020-11-04 20:33:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5908,'5b9d434','2020-11-04 20:33:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:33:00',1,0),(5909,'5b9d434','2020-11-04 20:33:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5910,'5b9d434','2020-11-04 20:33:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.09780502319335938,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5911,'6896c0b','2020-11-04 20:34:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5912,'6896c0b','2020-11-04 20:34:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5913,'6896c0b','2020-11-04 20:34:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5914,'6896c0b','2020-11-04 20:34:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5915,'6896c0b','2020-11-04 20:34:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5916,'6896c0b','2020-11-04 20:34:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:34:00',1,0),(5917,'6896c0b','2020-11-04 20:34:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5918,'6896c0b','2020-11-04 20:34:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.06708621978759766,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5919,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5920,'7276bfc','2020-11-04 20:35:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5921,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5922,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5923,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:35:00',1,0),(5924,'7276bfc','2020-11-04 20:35:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(5925,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(5926,'7276bfc','2020-11-04 20:35:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(5927,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(5928,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:35:00',1,0),(5929,'7276bfc','2020-11-04 20:35:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(5930,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(5931,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:35:00',1,0),(5932,'7276bfc','2020-11-04 20:35:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5933,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5934,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5935,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5936,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:35:00',1,0),(5937,'7276bfc','2020-11-04 20:35:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(5938,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(5939,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(5940,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:35:00',1,0),(5941,'7276bfc','2020-11-04 20:35:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(5942,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(5943,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5944,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5945,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5946,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5947,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5948,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(5949,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(5950,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5951,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(5952,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:35:00',1,0),(5953,'7276bfc','2020-11-04 20:35:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5954,'7276bfc','2020-11-04 20:35:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 20\n    },\n    \"log\": {\n        \"insert\": 35\n    },\n    \"xtr\": {\n        \"select\": 7,\n        \"update\": 18,\n        \"commit\": 12\n    },\n    \"length\": 0.21675395965576172,\n    \"memoryUsage\": 13690688,\n    \"peakMemoryUsage\": 13786208\n}.',1,0),(5955,'a4a0fef','2020-11-04 20:36:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5956,'a4a0fef','2020-11-04 20:36:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5957,'a4a0fef','2020-11-04 20:36:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5958,'a4a0fef','2020-11-04 20:36:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5959,'a4a0fef','2020-11-04 20:36:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:36:00',1,0),(5960,'a4a0fef','2020-11-04 20:36:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5961,'a4a0fef','2020-11-04 20:36:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5962,'a4a0fef','2020-11-04 20:36:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5963,'a4a0fef','2020-11-04 20:36:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5964,'a4a0fef','2020-11-04 20:36:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:36:00',1,0),(5965,'a4a0fef','2020-11-04 20:36:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5966,'a4a0fef','2020-11-04 20:36:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.0569300651550293,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5967,'befdac7','2020-11-04 20:37:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5968,'befdac7','2020-11-04 20:37:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5969,'befdac7','2020-11-04 20:37:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5970,'befdac7','2020-11-04 20:37:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5971,'befdac7','2020-11-04 20:37:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5972,'befdac7','2020-11-04 20:37:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:37:00',1,0),(5973,'befdac7','2020-11-04 20:37:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5974,'befdac7','2020-11-04 20:37:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.09965801239013672,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5975,'6ee7355','2020-11-04 20:38:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5976,'6ee7355','2020-11-04 20:38:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5977,'6ee7355','2020-11-04 20:38:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5978,'6ee7355','2020-11-04 20:38:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5979,'6ee7355','2020-11-04 20:38:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5980,'6ee7355','2020-11-04 20:38:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:38:00',1,0),(5981,'6ee7355','2020-11-04 20:38:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5982,'6ee7355','2020-11-04 20:38:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.056756019592285156,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(5983,'104cbc2','2020-11-04 20:39:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5984,'104cbc2','2020-11-04 20:39:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(5985,'104cbc2','2020-11-04 20:39:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(5986,'104cbc2','2020-11-04 20:39:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(5987,'104cbc2','2020-11-04 20:39:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:39:00',1,0),(5988,'104cbc2','2020-11-04 20:39:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(5989,'104cbc2','2020-11-04 20:39:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(5990,'104cbc2','2020-11-04 20:39:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(5991,'104cbc2','2020-11-04 20:39:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(5992,'104cbc2','2020-11-04 20:39:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:39:00',1,0),(5993,'104cbc2','2020-11-04 20:39:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(5994,'104cbc2','2020-11-04 20:39:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.11088299751281738,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(5995,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(5996,'4d85fa2','2020-11-04 20:40:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(5997,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(5998,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(5999,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:40:00',1,0),(6000,'4d85fa2','2020-11-04 20:40:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(6001,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(6002,'4d85fa2','2020-11-04 20:40:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(6003,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(6004,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:40:00',1,0),(6005,'4d85fa2','2020-11-04 20:40:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(6006,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(6007,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:40:00',1,0),(6008,'4d85fa2','2020-11-04 20:40:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6009,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6010,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6011,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6012,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:40:00',1,0),(6013,'4d85fa2','2020-11-04 20:40:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(6014,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(6015,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(6016,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:40:00',1,0),(6017,'4d85fa2','2020-11-04 20:40:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(6018,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(6019,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6020,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6021,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6022,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6023,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6024,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(6025,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(6026,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6027,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(6028,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:40:00',1,0),(6029,'4d85fa2','2020-11-04 20:40:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6030,'4d85fa2','2020-11-04 20:40:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 20\n    },\n    \"log\": {\n        \"insert\": 35\n    },\n    \"xtr\": {\n        \"select\": 7,\n        \"update\": 18,\n        \"commit\": 12\n    },\n    \"length\": 0.18654108047485352,\n    \"memoryUsage\": 13690688,\n    \"peakMemoryUsage\": 13786208\n}.',1,0),(6031,'2eef518','2020-11-04 20:41:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6032,'2eef518','2020-11-04 20:41:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6033,'2eef518','2020-11-04 20:41:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6034,'2eef518','2020-11-04 20:41:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6035,'2eef518','2020-11-04 20:41:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6036,'2eef518','2020-11-04 20:41:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:41:00',1,0),(6037,'2eef518','2020-11-04 20:41:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6038,'2eef518','2020-11-04 20:41:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04000401496887207,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(6039,'8e4552d','2020-11-04 20:42:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6040,'8e4552d','2020-11-04 20:42:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(6041,'8e4552d','2020-11-04 20:42:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(6042,'8e4552d','2020-11-04 20:42:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(6043,'8e4552d','2020-11-04 20:42:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:42:00',1,0),(6044,'8e4552d','2020-11-04 20:42:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6045,'8e4552d','2020-11-04 20:42:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6046,'8e4552d','2020-11-04 20:42:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6047,'8e4552d','2020-11-04 20:42:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6048,'8e4552d','2020-11-04 20:42:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:42:00',1,0),(6049,'8e4552d','2020-11-04 20:42:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6050,'8e4552d','2020-11-04 20:42:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.09521102905273438,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(6051,'eaa7848','2020-11-04 20:43:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6052,'eaa7848','2020-11-04 20:43:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6053,'eaa7848','2020-11-04 20:43:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6054,'eaa7848','2020-11-04 20:43:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6055,'eaa7848','2020-11-04 20:43:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6056,'eaa7848','2020-11-04 20:43:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:43:00',1,0),(6057,'eaa7848','2020-11-04 20:43:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6058,'eaa7848','2020-11-04 20:43:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.059531211853027344,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(6059,'4bff6f6','2020-11-04 20:44:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6060,'4bff6f6','2020-11-04 20:44:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6061,'4bff6f6','2020-11-04 20:44:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6062,'4bff6f6','2020-11-04 20:44:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6063,'4bff6f6','2020-11-04 20:44:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6064,'4bff6f6','2020-11-04 20:44:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:44:00',1,0),(6065,'4bff6f6','2020-11-04 20:44:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6066,'4bff6f6','2020-11-04 20:44:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.0467379093170166,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(6067,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6068,'7ff3042','2020-11-04 20:45:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(6069,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(6070,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6071,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:45:00',1,0),(6072,'7ff3042','2020-11-04 20:45:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(6073,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(6074,'7ff3042','2020-11-04 20:45:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(6075,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(6076,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:45:00',1,0),(6077,'7ff3042','2020-11-04 20:45:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(6078,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(6079,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:45:00',1,0),(6080,'7ff3042','2020-11-04 20:45:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(6081,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(6082,'7ff3042','2020-11-04 20:45:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(6083,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:45:00',1,0),(6084,'7ff3042','2020-11-04 20:45:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6085,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6086,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6087,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6088,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:45:00',1,0),(6089,'7ff3042','2020-11-04 20:45:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(6090,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(6091,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(6092,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:45:00',1,0),(6093,'7ff3042','2020-11-04 20:45:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(6094,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(6095,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6096,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6097,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6098,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6099,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6100,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(6101,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(6102,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6103,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(6104,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:45:00',1,0),(6105,'7ff3042','2020-11-04 20:45:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6106,'7ff3042','2020-11-04 20:45:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 21\n    },\n    \"log\": {\n        \"insert\": 39\n    },\n    \"xtr\": {\n        \"select\": 8,\n        \"update\": 21,\n        \"commit\": 14\n    },\n    \"length\": 0.2463541030883789,\n    \"memoryUsage\": 13705024,\n    \"peakMemoryUsage\": 13800576\n}.',1,0),(6107,'00e54e2','2020-11-04 20:46:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6108,'00e54e2','2020-11-04 20:46:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6109,'00e54e2','2020-11-04 20:46:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6110,'00e54e2','2020-11-04 20:46:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6111,'00e54e2','2020-11-04 20:46:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6112,'00e54e2','2020-11-04 20:46:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:46:00',1,0),(6113,'00e54e2','2020-11-04 20:46:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6114,'00e54e2','2020-11-04 20:46:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.07019996643066406,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(6115,'d21efe6','2020-11-04 20:47:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6116,'d21efe6','2020-11-04 20:47:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6117,'d21efe6','2020-11-04 20:47:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6118,'d21efe6','2020-11-04 20:47:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6119,'d21efe6','2020-11-04 20:47:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6120,'d21efe6','2020-11-04 20:47:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:47:00',1,0),(6121,'d21efe6','2020-11-04 20:47:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6122,'d21efe6','2020-11-04 20:47:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.04217886924743652,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(6123,'c7bea83','2020-11-04 20:48:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6124,'c7bea83','2020-11-04 20:48:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(6125,'c7bea83','2020-11-04 20:48:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(6126,'c7bea83','2020-11-04 20:48:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(6127,'c7bea83','2020-11-04 20:48:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:48:00',1,0),(6128,'c7bea83','2020-11-04 20:48:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6129,'c7bea83','2020-11-04 20:48:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6130,'c7bea83','2020-11-04 20:48:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6131,'c7bea83','2020-11-04 20:48:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6132,'c7bea83','2020-11-04 20:48:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:48:00',1,0),(6133,'c7bea83','2020-11-04 20:48:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6134,'c7bea83','2020-11-04 20:48:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.04972696304321289,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(6135,'6481082','2020-11-04 20:49:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6136,'6481082','2020-11-04 20:49:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6137,'6481082','2020-11-04 20:49:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6138,'6481082','2020-11-04 20:49:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6139,'6481082','2020-11-04 20:49:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6140,'6481082','2020-11-04 20:49:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:49:00',1,0),(6141,'6481082','2020-11-04 20:49:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6142,'6481082','2020-11-04 20:49:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.03992605209350586,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(6143,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6144,'badfcba','2020-11-04 20:50:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(6145,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(6146,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6147,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:50:00',1,0),(6148,'badfcba','2020-11-04 20:50:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(6149,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(6150,'badfcba','2020-11-04 20:50:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(6151,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(6152,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:50:00',1,0),(6153,'badfcba','2020-11-04 20:50:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(6154,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(6155,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:50:00',1,0),(6156,'badfcba','2020-11-04 20:50:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6157,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6158,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6159,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6160,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:50:00',1,0),(6161,'badfcba','2020-11-04 20:50:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(6162,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(6163,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(6164,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:50:00',1,0),(6165,'badfcba','2020-11-04 20:50:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(6166,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(6167,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6168,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6169,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6170,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6171,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6172,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(6173,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(6174,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6175,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(6176,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:50:00',1,0),(6177,'badfcba','2020-11-04 20:50:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6178,'badfcba','2020-11-04 20:50:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 20\n    },\n    \"log\": {\n        \"insert\": 35\n    },\n    \"xtr\": {\n        \"select\": 7,\n        \"update\": 18,\n        \"commit\": 12\n    },\n    \"length\": 0.23430299758911133,\n    \"memoryUsage\": 13690688,\n    \"peakMemoryUsage\": 13786208\n}.',1,0),(6179,'ee35fb2','2020-11-04 20:51:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6180,'ee35fb2','2020-11-04 20:51:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(6181,'ee35fb2','2020-11-04 20:51:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(6182,'ee35fb2','2020-11-04 20:51:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(6183,'ee35fb2','2020-11-04 20:51:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:51:00',1,0),(6184,'ee35fb2','2020-11-04 20:51:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6185,'ee35fb2','2020-11-04 20:51:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6186,'ee35fb2','2020-11-04 20:51:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6187,'ee35fb2','2020-11-04 20:51:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6188,'ee35fb2','2020-11-04 20:51:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:51:00',1,0),(6189,'ee35fb2','2020-11-04 20:51:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6190,'ee35fb2','2020-11-04 20:51:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.07856011390686035,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(6191,'f9732ba','2020-11-04 20:52:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6192,'f9732ba','2020-11-04 20:52:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6193,'f9732ba','2020-11-04 20:52:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6194,'f9732ba','2020-11-04 20:52:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6195,'f9732ba','2020-11-04 20:52:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6196,'f9732ba','2020-11-04 20:52:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:52:00',1,0),(6197,'f9732ba','2020-11-04 20:52:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6198,'f9732ba','2020-11-04 20:52:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.03597307205200195,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(6199,'47b6fcb','2020-11-04 20:53:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6200,'47b6fcb','2020-11-04 20:53:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6201,'47b6fcb','2020-11-04 20:53:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6202,'47b6fcb','2020-11-04 20:53:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6203,'47b6fcb','2020-11-04 20:53:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6204,'47b6fcb','2020-11-04 20:53:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:53:00',1,0),(6205,'47b6fcb','2020-11-04 20:53:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6206,'47b6fcb','2020-11-04 20:53:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.05821084976196289,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(6207,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6208,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(6209,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(6210,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(6211,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:54:00',1,0),(6212,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6213,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6214,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6215,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6216,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:54:00',1,0),(6217,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6218,'b0f2c3a','2020-11-04 20:54:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.07928204536437988,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(6219,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6220,'2d6734c','2020-11-04 20:55:00','CONSOLE','INFO','/','GET','Running Task 13',1,0),(6221,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Running Task Image Processing [13], Class = \\Xibo\\XTR\\ImageProcessingTask',1,0),(6222,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6223,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Finished Task Image Processing [13] Run Dt: 2020-11-04 20:55:00',1,0),(6224,'2d6734c','2020-11-04 20:55:00','CONSOLE','INFO','/','GET','Running Task 12',1,0),(6225,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Running Task Schedule Reminder [12], Class = \\Xibo\\XTR\\ScheduleReminderTask',1,0),(6226,'2d6734c','2020-11-04 20:55:00','CONSOLE','ERROR','/','GET','\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',1,0),(6227,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','#0 /var/www/cms/vendor/composer/ClassLoader.php(444): Slim\\Slim::handleErrors(2, \'\"continue\" targ...\', \'/var/www/cms/li...\', 130, Array)\n#1 /var/www/cms/vendor/composer/ClassLoader.php(444): include()\n#2 /var/www/cms/vendor/composer/ClassLoader.php(322): Composer\\Autoload\\includeFile(\'/var/www/cms/ve...\')\n#3 [internal function]: Composer\\Autoload\\ClassLoader->loadClass(\'Xibo\\\\XTR\\\\Schedu...\')\n#4 [internal function]: spl_autoload_call(\'Xibo\\\\XTR\\\\Schedu...\')\n#5 /var/www/cms/lib/Controller/Task.php(347): class_exists(\'\\\\Xibo\\\\XTR\\\\Sched...\')\n#6 /var/www/cms/lib/Controller/Task.php(462): Xibo\\Controller\\Task->run(\'12\')\n#7 [internal function]: Xibo\\Controller\\Task->poll()\n#8 /var/www/cms/vendor/akrabat/rka-slim-controller/RKA/Slim.php(79): call_user_func_array(Array, Array)\n#9 [internal function]: RKA\\Slim->RKA\\{closure}()\n#10 /var/www/cms/vendor/slim/slim/Slim/Route.php(468): call_user_func_array(Object(Closure), Array)\n#11 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1355): Slim\\Route->dispatch()\n#12 /var/www/cms/vendor/slim/slim/Slim/Middleware/Flash.php(85): Slim\\Slim->call()\n#13 /var/www/cms/vendor/slim/slim/Slim/Middleware/MethodOverride.php(92): Slim\\Middleware\\Flash->call()\n#14 /var/www/cms/lib/Middleware/Xtr.php(58): Slim\\Middleware\\MethodOverride->call()\n#15 /var/www/cms/lib/Middleware/Storage.php(48): Xibo\\Middleware\\Xtr->call()\n#16 /var/www/cms/lib/Middleware/Xmr.php(37): Xibo\\Middleware\\Storage->call()\n#17 /var/www/cms/vendor/slim/slim/Slim/Slim.php(1300): Xibo\\Middleware\\Xmr->call()\n#18 /var/www/cms/bin/run.php(117): Slim\\Slim->run()\n#19 /var/www/cms/bin/xtr.php(9): require(\'/var/www/cms/bi...\')\n#20 {main}',1,0),(6228,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Finished Task Schedule Reminder [12] Run Dt: 2020-11-04 20:55:00',1,0),(6229,'2d6734c','2020-11-04 20:55:00','CONSOLE','INFO','/','GET','Running Task 10',1,0),(6230,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Running Task Report Schedule [10], Class = \\Xibo\\XTR\\ReportScheduleTask',1,0),(6231,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Finished Task Report Schedule [10] Run Dt: 2020-11-04 20:55:00',1,0),(6232,'2d6734c','2020-11-04 20:55:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6233,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6234,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6235,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6236,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:55:00',1,0),(6237,'2d6734c','2020-11-04 20:55:00','CONSOLE','INFO','/','GET','Running Task 3',1,0),(6238,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Running Task Email Notifications [3], Class = \\Xibo\\XTR\\EmailNotificationsTask',1,0),(6239,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Notification Queue sending from mail@yoursite.com',1,0),(6240,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Finished Task Email Notifications [3] Run Dt: 2020-11-04 20:55:00',1,0),(6241,'2d6734c','2020-11-04 20:55:00','CONSOLE','INFO','/','GET','Running Task 2',1,0),(6242,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Running Task Regular Maintenance [2], Class = \\Xibo\\XTR\\MaintenanceRegularTask',1,0),(6243,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6244,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6245,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6246,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6247,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6248,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Skipping active file: default layout3 background.jpg',1,0),(6249,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Skipping active file: xibo_logo_square.png',1,0),(6250,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Checking permissions against the logged in user: ID: 1, Name: system, UserType: 1',1,0),(6251,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','No layouts to publish.',1,0),(6252,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','Finished Task Regular Maintenance [2] Run Dt: 2020-11-04 20:55:00',1,0),(6253,'2d6734c','2020-11-04 20:55:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6254,'2d6734c','2020-11-04 20:55:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 20\n    },\n    \"log\": {\n        \"insert\": 35\n    },\n    \"xtr\": {\n        \"select\": 7,\n        \"update\": 18,\n        \"commit\": 12\n    },\n    \"length\": 0.20034217834472656,\n    \"memoryUsage\": 13690688,\n    \"peakMemoryUsage\": 13786208\n}.',1,0),(6255,'e10a718','2020-11-04 20:55:04','WEB','DEBUG','/','GET','SET @userId=\'2\';\nSET @time=\'2020-11-04 20:55:04\';\nUPDATE `user` SET lastAccessed = @time  WHERE userId = @userId',2,0),(6256,'e10a718','2020-11-04 20:55:04','WEB','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 1,\n        \"update\": 1,\n        \"commit\": 1\n    },\n    \"log\": {\n        \"insert\": 1\n    },\n    \"length\": 0.05739593505859375,\n    \"memoryUsage\": 11290208,\n    \"peakMemoryUsage\": 11343512\n}.',2,0),(6257,'e10a718','2020-11-04 20:55:04','WEB','DEBUG','/','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:1:{s:10:\"priorRoute\";s:1:\"/\";}userid|i:2;\';\nSET @session_expiration=\'1604524744\';\nSET @lastAccessed=\'2020-11-04 20:55:04\';\nSET @userId=\'2\';\nSET @expired=\'1\';\nSET @session_id=\'e164vnvgf8cu6h5ar7ibab0hv3\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',2,0),(6258,'876757d','2020-11-04 20:55:04','WEB','DEBUG','/login','GET','Install Fonts called with options: {\"invalidateCache\":false}',0,0),(6259,'876757d','2020-11-04 20:55:04','WEB','DEBUG','/login','GET','CMS font CSS returned from Cache.',0,0),(6260,'876757d','2020-11-04 20:55:04','WEB','DEBUG','/login','GET','Checking permissions against the logged in user: ID: 0, Name: , UserType: 0',0,0),(6261,'876757d','2020-11-04 20:55:04','WEB','DEBUG','/login','GET','SET @permissionEntity=\'Xibo\\Entity\\Page\';\nSET @currentUserId=\'\';\nSELECT pageId, name, title, asHome FROM `pages` WHERE 1 = 1 \n              AND (pageId IN (\n                SELECT `permission`.objectId\n                  FROM `permission`\n                    INNER JOIN `permissionentity`\n                        ON `permissionentity`.entityId = `permission`.entityId\n                    INNER JOIN `group`\n                        ON `group`.groupId = `permission`.groupId\n                    INNER JOIN `lkusergroup`\n                        ON `lkusergroup`.groupId = `group`.groupId\n                    INNER JOIN `user`\n                        ON lkusergroup.UserID = `user`.UserID\n                 WHERE `permissionentity`.entity = @permissionEntity\n                    AND `user`.userId = @currentUserId\n                    AND `permission`.view = 1\n                 UNION ALL   \n                 SELECT `permission`.objectId\n                    FROM `permission`\n                        INNER JOIN `permissionentity`\n                            ON `permissionentity`.entityId = `permission`.entityId\n                        INNER JOIN `group`\n                            ON `group`.groupId = `permission`.groupId\n                    WHERE `permissionentity`.entity = @permissionEntity\n                        AND `group`.isEveryone = 1\n                        AND `permission`.view = 1\n              )\n             )ORDER BY name',0,0),(6262,'876757d','2020-11-04 20:55:04','WEB','DEBUG','/login','GET','Route drawer not viewable',0,0),(6263,'876757d','2020-11-04 20:55:04','WEB','DEBUG','/login','GET','Blocked assess to unrecognised page: /drawer.',0,0),(6264,'876757d','2020-11-04 20:55:04','WEB','INFO','/login','GET','Request stats: {\n    \"default\": {\n        \"select\": 2\n    },\n    \"log\": {\n        \"insert\": 6\n    },\n    \"length\": 0.08376598358154297,\n    \"memoryUsage\": 13863200,\n    \"peakMemoryUsage\": 13926480\n}.',0,0),(6265,'876757d','2020-11-04 20:55:04','WEB','DEBUG','/login','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524744\';\nSET @lastAccessed=\'2020-11-04 20:55:04\';\nSET @userId=\'2\';\nSET @expired=\'1\';\nSET @session_id=\'e164vnvgf8cu6h5ar7ibab0hv3\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',0,0),(6266,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','Install Fonts called with options: {\"invalidateCache\":false}',0,0),(6267,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','CMS font CSS returned from Cache.',0,0),(6268,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','Checking permissions against the logged in user: ID: 0, Name: , UserType: 0',0,0),(6269,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','SET @permissionEntity=\'Xibo\\Entity\\Page\';\nSET @currentUserId=\'\';\nSELECT pageId, name, title, asHome FROM `pages` WHERE 1 = 1 \n              AND (pageId IN (\n                SELECT `permission`.objectId\n                  FROM `permission`\n                    INNER JOIN `permissionentity`\n                        ON `permissionentity`.entityId = `permission`.entityId\n                    INNER JOIN `group`\n                        ON `group`.groupId = `permission`.groupId\n                    INNER JOIN `lkusergroup`\n                        ON `lkusergroup`.groupId = `group`.groupId\n                    INNER JOIN `user`\n                        ON lkusergroup.UserID = `user`.UserID\n                 WHERE `permissionentity`.entity = @permissionEntity\n                    AND `user`.userId = @currentUserId\n                    AND `permission`.view = 1\n                 UNION ALL   \n                 SELECT `permission`.objectId\n                    FROM `permission`\n                        INNER JOIN `permissionentity`\n                            ON `permissionentity`.entityId = `permission`.entityId\n                        INNER JOIN `group`\n                            ON `group`.groupId = `permission`.groupId\n                    WHERE `permissionentity`.entity = @permissionEntity\n                        AND `group`.isEveryone = 1\n                        AND `permission`.view = 1\n              )\n             )ORDER BY name',0,0),(6270,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','Route drawer not viewable',0,0),(6271,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','Blocked assess to unrecognised page: /drawer.',0,0),(6272,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','Login with username dispway',0,0),(6273,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','SET @exactUserName=\'dispway\';\n\n            SELECT `user`.userId,\n                userName,\n                userTypeId,\n                email,\n                lastAccessed,\n                newUserWizard,\n                retired,\n                CSPRNG,\n                UserPassword AS password,\n                group.groupId,\n                group.group,\n                `pages`.pageId AS homePageId,\n                `pages`.title AS homePage,\n                `user`.firstName,\n                `user`.lastName,\n                `user`.phone,\n                `user`.ref1,\n                `user`.ref2,\n                `user`.ref3,\n                `user`.ref4,\n                `user`.ref5,\n                IFNULL(group.libraryQuota, 0) AS libraryQuota,\n                `group`.isSystemNotification,\n                `group`.isDisplayNotification, \n                `user`.isPasswordChangeRequired,\n                `user`.twoFactorTypeId,\n                `user`.twoFactorSecret,\n                `user`.twoFactorRecoveryCodes,\n                `user`.showContentFrom\n            \n              FROM `user`\n                INNER JOIN lkusergroup\n                ON lkusergroup.userId = user.userId\n                INNER JOIN `group`\n                ON `group`.groupId = lkusergroup.groupId\n                  AND isUserSpecific = 1\n                LEFT OUTER JOIN `pages`\n                ON pages.pageId = `user`.homePageId\n             WHERE 1 = 1\n          AND user.userName = @exactUserName ORDER BY userName',0,0),(6274,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','Password checked out OK',0,0),(6275,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','SET @userId=\'2\';\nSET @time=\'2020-11-04 20:55:08\';\nUPDATE `user` SET lastAccessed = @time  WHERE userId = @userId',0,0),(6276,'519116b','2020-11-04 20:55:08','WEB','INFO','/login','POST','dispway user logged in.',0,0),(6277,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','SET @session_id=\'e164vnvgf8cu6h5ar7ibab0hv3\';\nDELETE FROM `session` WHERE session_id = @session_id',2,0),(6278,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','SET @session_id=\'a81ub60icr716cjgusjolulako\';\nSET @session_data=\'\';\nSET @session_expiration=\'1604524748\';\nSET @lastAccessed=\'2020-11-04 20:55:08\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @useragent=\'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\';\nSET @remoteaddr=\'172.23.0.1\';\n\n          INSERT INTO `session` (session_id, session_data, session_expiration, lastaccessed, userid, isexpired, useragent, remoteaddr)\n            VALUES (@session_id, @session_data, @session_expiration, @lastAccessed, @userId, @expired, @useragent, @remoteaddr)\n        ',2,0),(6279,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','Audit Trail message recorded for User with id 2. Message: Login Granted',2,0),(6280,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','Redirect to /',2,0),(6281,'519116b','2020-11-04 20:55:08','WEB','INFO','/login','POST','Request stats: {\n    \"default\": {\n        \"select\": 3,\n        \"update\": 3,\n        \"commit\": 1\n    },\n    \"log\": {\n        \"insert\": 15\n    },\n    \"auditlog\": {\n        \"insert\": 1\n    },\n    \"length\": 0.16471099853515625,\n    \"memoryUsage\": 13655000,\n    \"peakMemoryUsage\": 13712080\n}.',2,0),(6282,'519116b','2020-11-04 20:55:08','WEB','DEBUG','/login','POST','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524748\';\nSET @lastAccessed=\'2020-11-04 20:55:08\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',2,0),(6283,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','SET @userId=\'2\';\n\n            SELECT `user`.userId,\n                userName,\n                userTypeId,\n                email,\n                lastAccessed,\n                newUserWizard,\n                retired,\n                CSPRNG,\n                UserPassword AS password,\n                group.groupId,\n                group.group,\n                `pages`.pageId AS homePageId,\n                `pages`.title AS homePage,\n                `user`.firstName,\n                `user`.lastName,\n                `user`.phone,\n                `user`.ref1,\n                `user`.ref2,\n                `user`.ref3,\n                `user`.ref4,\n                `user`.ref5,\n                IFNULL(group.libraryQuota, 0) AS libraryQuota,\n                `group`.isSystemNotification,\n                `group`.isDisplayNotification, \n                `user`.isPasswordChangeRequired,\n                `user`.twoFactorTypeId,\n                `user`.twoFactorSecret,\n                `user`.twoFactorRecoveryCodes,\n                `user`.showContentFrom\n            \n              FROM `user`\n                INNER JOIN lkusergroup\n                ON lkusergroup.userId = user.userId\n                INNER JOIN `group`\n                ON `group`.groupId = lkusergroup.groupId\n                  AND isUserSpecific = 1\n                LEFT OUTER JOIN `pages`\n                ON pages.pageId = `user`.homePageId\n             WHERE 1 = 1\n          AND user.userId = @userId ORDER BY userName',2,0),(6284,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','Loading 2. All Objects = 0',2,0),(6285,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','SET @userId=\'2\';\nSET @isUserSpecific=\'0\';\nSET @isEveryone=\'0\';\n\n        SELECT 	`group`.group,\n            `group`.groupId,\n            `group`.isUserSpecific,\n            `group`.isEveryone,\n            `group`.libraryQuota,\n            `group`.isSystemNotification,\n            `group`.isDisplayNotification\n        \n          FROM `group`\n         WHERE 1 = 1\n         AND `group`.groupId IN (SELECT groupId FROM `lkusergroup` WHERE userId = @userId)  AND isUserSpecific = @isUserSpecific  AND isEveryone = @isEveryone ORDER BY `group`',2,0),(6286,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','SET @userId=\'2\';\nSELECT * FROM `useroption` WHERE userId = @userId',2,0),(6287,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','Install Fonts called with options: {\"invalidateCache\":false}',2,0),(6288,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','CMS font CSS returned from Cache.',2,0),(6289,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','SET @now=\'1604523309\';\nSET @userId=\'2\';\nSELECT `lknotificationuser`.lknotificationuserId,\n            `lknotificationuser`.notificationId,\n            `lknotificationuser`.userId,\n            `lknotificationuser`.read,\n            `lknotificationuser`.readDt,\n            `lknotificationuser`.emailDt,\n             `notification`.subject,\n             `notification`.body,\n             `notification`.releaseDt,\n             `notification`.isInterrupt,\n             `notification`.isSystem,\n             `notification`.filename,\n             `notification`.originalFileName,\n             `notification`.nonusers,\n             `user`.email\n         FROM `lknotificationuser`\n                    INNER JOIN `notification`\n                    ON `notification`.notificationId = `lknotificationuser`.notificationId\n                    LEFT OUTER JOIN `user`\n                    ON `user`.userId = `lknotificationuser`.userId\n          WHERE `notification`.releaseDt < @now  AND `lknotificationuser`.userId = @userId ORDER BY releaseDt DESC LIMIT 0, 5',2,0),(6290,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','SET @now=\'1604523309\';\nSET @userId=\'2\';\n\n            SELECT COUNT(*) AS Cnt\n              FROM `lknotificationuser`\n                INNER JOIN `notification`\n                ON `notification`.notificationId = `lknotificationuser`.notificationId\n             WHERE `lknotificationuser`.`userId` = @userId\n              AND `lknotificationuser`.`read` = 0\n              AND `notification`.releaseDt < @now\n          ',2,0),(6291,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','Showing the homepage: 1',2,0),(6292,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','Checking permissions against the logged in user: ID: 2, Name: dispway, UserType: 1',2,0),(6293,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','SET @pageId=\'1\';\nSELECT pageId, name, title, asHome FROM `pages` WHERE 1 = 1  AND `pageId` = @pageId ORDER BY name',2,0),(6294,'3fbce0f','2020-11-04 20:55:09','WEB','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 7\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"length\": 0.08841395378112793,\n    \"memoryUsage\": 13734192,\n    \"peakMemoryUsage\": 13865168\n}.',2,0),(6295,'3fbce0f','2020-11-04 20:55:09','WEB','DEBUG','/','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524749\';\nSET @lastAccessed=\'2020-11-04 20:55:09\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',2,0),(6296,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','SET @userId=\'2\';\n\n            SELECT `user`.userId,\n                userName,\n                userTypeId,\n                email,\n                lastAccessed,\n                newUserWizard,\n                retired,\n                CSPRNG,\n                UserPassword AS password,\n                group.groupId,\n                group.group,\n                `pages`.pageId AS homePageId,\n                `pages`.title AS homePage,\n                `user`.firstName,\n                `user`.lastName,\n                `user`.phone,\n                `user`.ref1,\n                `user`.ref2,\n                `user`.ref3,\n                `user`.ref4,\n                `user`.ref5,\n                IFNULL(group.libraryQuota, 0) AS libraryQuota,\n                `group`.isSystemNotification,\n                `group`.isDisplayNotification, \n                `user`.isPasswordChangeRequired,\n                `user`.twoFactorTypeId,\n                `user`.twoFactorSecret,\n                `user`.twoFactorRecoveryCodes,\n                `user`.showContentFrom\n            \n              FROM `user`\n                INNER JOIN lkusergroup\n                ON lkusergroup.userId = user.userId\n                INNER JOIN `group`\n                ON `group`.groupId = lkusergroup.groupId\n                  AND isUserSpecific = 1\n                LEFT OUTER JOIN `pages`\n                ON pages.pageId = `user`.homePageId\n             WHERE 1 = 1\n          AND user.userId = @userId ORDER BY userName',2,0),(6297,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','Loading 2. All Objects = 0',2,0),(6298,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','SET @userId=\'2\';\nSET @isUserSpecific=\'0\';\nSET @isEveryone=\'0\';\n\n        SELECT 	`group`.group,\n            `group`.groupId,\n            `group`.isUserSpecific,\n            `group`.isEveryone,\n            `group`.libraryQuota,\n            `group`.isSystemNotification,\n            `group`.isDisplayNotification\n        \n          FROM `group`\n         WHERE 1 = 1\n         AND `group`.groupId IN (SELECT groupId FROM `lkusergroup` WHERE userId = @userId)  AND isUserSpecific = @isUserSpecific  AND isEveryone = @isEveryone ORDER BY `group`',2,0),(6299,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','SET @userId=\'2\';\nSELECT * FROM `useroption` WHERE userId = @userId',2,0),(6300,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','Install Fonts called with options: {\"invalidateCache\":false}',2,0),(6301,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','CMS font CSS returned from Cache.',2,0),(6302,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','SET @now=\'1604523309\';\nSET @userId=\'2\';\nSELECT `lknotificationuser`.lknotificationuserId,\n            `lknotificationuser`.notificationId,\n            `lknotificationuser`.userId,\n            `lknotificationuser`.read,\n            `lknotificationuser`.readDt,\n            `lknotificationuser`.emailDt,\n             `notification`.subject,\n             `notification`.body,\n             `notification`.releaseDt,\n             `notification`.isInterrupt,\n             `notification`.isSystem,\n             `notification`.filename,\n             `notification`.originalFileName,\n             `notification`.nonusers,\n             `user`.email\n         FROM `lknotificationuser`\n                    INNER JOIN `notification`\n                    ON `notification`.notificationId = `lknotificationuser`.notificationId\n                    LEFT OUTER JOIN `user`\n                    ON `user`.userId = `lknotificationuser`.userId\n          WHERE `notification`.releaseDt < @now  AND `lknotificationuser`.userId = @userId ORDER BY releaseDt DESC LIMIT 0, 5',2,0),(6303,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','SET @now=\'1604523309\';\nSET @userId=\'2\';\n\n            SELECT COUNT(*) AS Cnt\n              FROM `lknotificationuser`\n                INNER JOIN `notification`\n                ON `notification`.notificationId = `lknotificationuser`.notificationId\n             WHERE `lknotificationuser`.`userId` = @userId\n              AND `lknotificationuser`.`read` = 0\n              AND `notification`.releaseDt < @now\n          ',2,0),(6304,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','UserOption navigationMenuPosition not found',2,0),(6305,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','UserOption hideNavigation not found',2,0),(6306,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','UserOption navigationMenuPosition not found',2,0),(6307,'aa08578','2020-11-04 20:55:09','WEB','INFO','/icondashboard','GET','Request stats: {\n    \"default\": {\n        \"select\": 6\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"length\": 0.13740110397338867,\n    \"memoryUsage\": 14779320,\n    \"peakMemoryUsage\": 14896648\n}.',2,0),(6308,'aa08578','2020-11-04 20:55:09','WEB','DEBUG','/icondashboard','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524749\';\nSET @lastAccessed=\'2020-11-04 20:55:09\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',2,0),(6309,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','SET @userId=\'2\';\n\n            SELECT `user`.userId,\n                userName,\n                userTypeId,\n                email,\n                lastAccessed,\n                newUserWizard,\n                retired,\n                CSPRNG,\n                UserPassword AS password,\n                group.groupId,\n                group.group,\n                `pages`.pageId AS homePageId,\n                `pages`.title AS homePage,\n                `user`.firstName,\n                `user`.lastName,\n                `user`.phone,\n                `user`.ref1,\n                `user`.ref2,\n                `user`.ref3,\n                `user`.ref4,\n                `user`.ref5,\n                IFNULL(group.libraryQuota, 0) AS libraryQuota,\n                `group`.isSystemNotification,\n                `group`.isDisplayNotification, \n                `user`.isPasswordChangeRequired,\n                `user`.twoFactorTypeId,\n                `user`.twoFactorSecret,\n                `user`.twoFactorRecoveryCodes,\n                `user`.showContentFrom\n            \n              FROM `user`\n                INNER JOIN lkusergroup\n                ON lkusergroup.userId = user.userId\n                INNER JOIN `group`\n                ON `group`.groupId = lkusergroup.groupId\n                  AND isUserSpecific = 1\n                LEFT OUTER JOIN `pages`\n                ON pages.pageId = `user`.homePageId\n             WHERE 1 = 1\n          AND user.userId = @userId ORDER BY userName',2,0),(6310,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','Loading 2. All Objects = 0',2,0),(6311,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','SET @userId=\'2\';\nSET @isUserSpecific=\'0\';\nSET @isEveryone=\'0\';\n\n        SELECT 	`group`.group,\n            `group`.groupId,\n            `group`.isUserSpecific,\n            `group`.isEveryone,\n            `group`.libraryQuota,\n            `group`.isSystemNotification,\n            `group`.isDisplayNotification\n        \n          FROM `group`\n         WHERE 1 = 1\n         AND `group`.groupId IN (SELECT groupId FROM `lkusergroup` WHERE userId = @userId)  AND isUserSpecific = @isUserSpecific  AND isEveryone = @isEveryone ORDER BY `group`',2,0),(6312,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','SET @userId=\'2\';\nSELECT * FROM `useroption` WHERE userId = @userId',2,0),(6313,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','Install Fonts called with options: {\"invalidateCache\":false}',2,0),(6314,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','CMS font CSS returned from Cache.',2,0),(6315,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','SET @now=\'1604523309\';\nSET @userId=\'2\';\nSELECT `lknotificationuser`.lknotificationuserId,\n            `lknotificationuser`.notificationId,\n            `lknotificationuser`.userId,\n            `lknotificationuser`.read,\n            `lknotificationuser`.readDt,\n            `lknotificationuser`.emailDt,\n             `notification`.subject,\n             `notification`.body,\n             `notification`.releaseDt,\n             `notification`.isInterrupt,\n             `notification`.isSystem,\n             `notification`.filename,\n             `notification`.originalFileName,\n             `notification`.nonusers,\n             `user`.email\n         FROM `lknotificationuser`\n                    INNER JOIN `notification`\n                    ON `notification`.notificationId = `lknotificationuser`.notificationId\n                    LEFT OUTER JOIN `user`\n                    ON `user`.userId = `lknotificationuser`.userId\n          WHERE `notification`.releaseDt < @now  AND `lknotificationuser`.userId = @userId ORDER BY releaseDt DESC LIMIT 0, 5',2,0),(6316,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','SET @now=\'1604523309\';\nSET @userId=\'2\';\n\n            SELECT COUNT(*) AS Cnt\n              FROM `lknotificationuser`\n                INNER JOIN `notification`\n                ON `notification`.notificationId = `lknotificationuser`.notificationId\n             WHERE `lknotificationuser`.`userId` = @userId\n              AND `lknotificationuser`.`read` = 0\n              AND `notification`.releaseDt < @now\n          ',2,0),(6317,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','Install Fonts called with options: {\"invalidateCache\":false}',2,0),(6318,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','CMS font CSS returned from Cache.',2,0),(6319,'a0a901c','2020-11-04 20:55:09','WEB','INFO','/library/fontcss','GET','Request stats: {\n    \"default\": {\n        \"select\": 6\n    },\n    \"log\": {\n        \"insert\": 10\n    },\n    \"length\": 0.08477306365966797,\n    \"memoryUsage\": 13727416,\n    \"peakMemoryUsage\": 13865824\n}.',2,0),(6320,'a0a901c','2020-11-04 20:55:09','WEB','DEBUG','/library/fontcss','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524749\';\nSET @lastAccessed=\'2020-11-04 20:55:09\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',2,0),(6321,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','SET @userId=\'2\';\n\n            SELECT `user`.userId,\n                userName,\n                userTypeId,\n                email,\n                lastAccessed,\n                newUserWizard,\n                retired,\n                CSPRNG,\n                UserPassword AS password,\n                group.groupId,\n                group.group,\n                `pages`.pageId AS homePageId,\n                `pages`.title AS homePage,\n                `user`.firstName,\n                `user`.lastName,\n                `user`.phone,\n                `user`.ref1,\n                `user`.ref2,\n                `user`.ref3,\n                `user`.ref4,\n                `user`.ref5,\n                IFNULL(group.libraryQuota, 0) AS libraryQuota,\n                `group`.isSystemNotification,\n                `group`.isDisplayNotification, \n                `user`.isPasswordChangeRequired,\n                `user`.twoFactorTypeId,\n                `user`.twoFactorSecret,\n                `user`.twoFactorRecoveryCodes,\n                `user`.showContentFrom\n            \n              FROM `user`\n                INNER JOIN lkusergroup\n                ON lkusergroup.userId = user.userId\n                INNER JOIN `group`\n                ON `group`.groupId = lkusergroup.groupId\n                  AND isUserSpecific = 1\n                LEFT OUTER JOIN `pages`\n                ON pages.pageId = `user`.homePageId\n             WHERE 1 = 1\n          AND user.userId = @userId ORDER BY userName',2,0),(6322,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','Loading 2. All Objects = 0',2,0),(6323,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','SET @userId=\'2\';\nSET @isUserSpecific=\'0\';\nSET @isEveryone=\'0\';\n\n        SELECT 	`group`.group,\n            `group`.groupId,\n            `group`.isUserSpecific,\n            `group`.isEveryone,\n            `group`.libraryQuota,\n            `group`.isSystemNotification,\n            `group`.isDisplayNotification\n        \n          FROM `group`\n         WHERE 1 = 1\n         AND `group`.groupId IN (SELECT groupId FROM `lkusergroup` WHERE userId = @userId)  AND isUserSpecific = @isUserSpecific  AND isEveryone = @isEveryone ORDER BY `group`',2,0),(6324,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','SET @userId=\'2\';\nSELECT * FROM `useroption` WHERE userId = @userId',2,0),(6325,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','Install Fonts called with options: {\"invalidateCache\":false}',2,0),(6326,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','CMS font CSS returned from Cache.',2,0),(6327,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','SET @now=\'1604523315\';\nSET @userId=\'2\';\nSELECT `lknotificationuser`.lknotificationuserId,\n            `lknotificationuser`.notificationId,\n            `lknotificationuser`.userId,\n            `lknotificationuser`.read,\n            `lknotificationuser`.readDt,\n            `lknotificationuser`.emailDt,\n             `notification`.subject,\n             `notification`.body,\n             `notification`.releaseDt,\n             `notification`.isInterrupt,\n             `notification`.isSystem,\n             `notification`.filename,\n             `notification`.originalFileName,\n             `notification`.nonusers,\n             `user`.email\n         FROM `lknotificationuser`\n                    INNER JOIN `notification`\n                    ON `notification`.notificationId = `lknotificationuser`.notificationId\n                    LEFT OUTER JOIN `user`\n                    ON `user`.userId = `lknotificationuser`.userId\n          WHERE `notification`.releaseDt < @now  AND `lknotificationuser`.userId = @userId ORDER BY releaseDt DESC LIMIT 0, 5',2,0),(6328,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','SET @now=\'1604523315\';\nSET @userId=\'2\';\n\n            SELECT COUNT(*) AS Cnt\n              FROM `lknotificationuser`\n                INNER JOIN `notification`\n                ON `notification`.notificationId = `lknotificationuser`.notificationId\n             WHERE `lknotificationuser`.`userId` = @userId\n              AND `lknotificationuser`.`read` = 0\n              AND `notification`.releaseDt < @now\n          ',2,0),(6329,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','UserOption navigationMenuPosition not found',2,0),(6330,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','UserOption hideNavigation not found',2,0),(6331,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','UserOption navigationMenuPosition not found',2,0),(6332,'5d21800','2020-11-04 20:55:15','WEB','INFO','/application/view','GET','Request stats: {\n    \"default\": {\n        \"select\": 6\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"length\": 0.13916707038879395,\n    \"memoryUsage\": 14854408,\n    \"peakMemoryUsage\": 15033176\n}.',2,0),(6333,'5d21800','2020-11-04 20:55:15','WEB','DEBUG','/application/view','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524755\';\nSET @lastAccessed=\'2020-11-04 20:55:15\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',2,0),(6334,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','SET @userId=\'2\';\n\n            SELECT `user`.userId,\n                userName,\n                userTypeId,\n                email,\n                lastAccessed,\n                newUserWizard,\n                retired,\n                CSPRNG,\n                UserPassword AS password,\n                group.groupId,\n                group.group,\n                `pages`.pageId AS homePageId,\n                `pages`.title AS homePage,\n                `user`.firstName,\n                `user`.lastName,\n                `user`.phone,\n                `user`.ref1,\n                `user`.ref2,\n                `user`.ref3,\n                `user`.ref4,\n                `user`.ref5,\n                IFNULL(group.libraryQuota, 0) AS libraryQuota,\n                `group`.isSystemNotification,\n                `group`.isDisplayNotification, \n                `user`.isPasswordChangeRequired,\n                `user`.twoFactorTypeId,\n                `user`.twoFactorSecret,\n                `user`.twoFactorRecoveryCodes,\n                `user`.showContentFrom\n            \n              FROM `user`\n                INNER JOIN lkusergroup\n                ON lkusergroup.userId = user.userId\n                INNER JOIN `group`\n                ON `group`.groupId = lkusergroup.groupId\n                  AND isUserSpecific = 1\n                LEFT OUTER JOIN `pages`\n                ON pages.pageId = `user`.homePageId\n             WHERE 1 = 1\n          AND user.userId = @userId ORDER BY userName',2,0),(6335,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','Loading 2. All Objects = 0',2,0),(6336,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','SET @userId=\'2\';\nSET @isUserSpecific=\'0\';\nSET @isEveryone=\'0\';\n\n        SELECT 	`group`.group,\n            `group`.groupId,\n            `group`.isUserSpecific,\n            `group`.isEveryone,\n            `group`.libraryQuota,\n            `group`.isSystemNotification,\n            `group`.isDisplayNotification\n        \n          FROM `group`\n         WHERE 1 = 1\n         AND `group`.groupId IN (SELECT groupId FROM `lkusergroup` WHERE userId = @userId)  AND isUserSpecific = @isUserSpecific  AND isEveryone = @isEveryone ORDER BY `group`',2,0),(6337,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','SET @userId=\'2\';\nSELECT * FROM `useroption` WHERE userId = @userId',2,0),(6338,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','Install Fonts called with options: {\"invalidateCache\":false}',2,0),(6339,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','CMS font CSS returned from Cache.',2,0),(6340,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','SET @now=\'1604523315\';\nSET @userId=\'2\';\nSELECT `lknotificationuser`.lknotificationuserId,\n            `lknotificationuser`.notificationId,\n            `lknotificationuser`.userId,\n            `lknotificationuser`.read,\n            `lknotificationuser`.readDt,\n            `lknotificationuser`.emailDt,\n             `notification`.subject,\n             `notification`.body,\n             `notification`.releaseDt,\n             `notification`.isInterrupt,\n             `notification`.isSystem,\n             `notification`.filename,\n             `notification`.originalFileName,\n             `notification`.nonusers,\n             `user`.email\n         FROM `lknotificationuser`\n                    INNER JOIN `notification`\n                    ON `notification`.notificationId = `lknotificationuser`.notificationId\n                    LEFT OUTER JOIN `user`\n                    ON `user`.userId = `lknotificationuser`.userId\n          WHERE `notification`.releaseDt < @now  AND `lknotificationuser`.userId = @userId ORDER BY releaseDt DESC LIMIT 0, 5',2,0),(6341,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','SET @now=\'1604523315\';\nSET @userId=\'2\';\n\n            SELECT COUNT(*) AS Cnt\n              FROM `lknotificationuser`\n                INNER JOIN `notification`\n                ON `notification`.notificationId = `lknotificationuser`.notificationId\n             WHERE `lknotificationuser`.`userId` = @userId\n              AND `lknotificationuser`.`read` = 0\n              AND `notification`.releaseDt < @now\n          ',2,0),(6342,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','Install Fonts called with options: {\"invalidateCache\":false}',2,0),(6343,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','CMS font CSS returned from Cache.',2,0),(6344,'a12cfc3','2020-11-04 20:55:15','WEB','INFO','/library/fontcss','GET','Request stats: {\n    \"default\": {\n        \"select\": 6\n    },\n    \"log\": {\n        \"insert\": 10\n    },\n    \"length\": 0.08330798149108887,\n    \"memoryUsage\": 13727432,\n    \"peakMemoryUsage\": 13865840\n}.',2,0),(6345,'a12cfc3','2020-11-04 20:55:15','WEB','DEBUG','/library/fontcss','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524755\';\nSET @lastAccessed=\'2020-11-04 20:55:15\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',2,0),(6346,'98e7784','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','GET','SET @userId=\'2\';\n\n            SELECT `user`.userId,\n                userName,\n                userTypeId,\n                email,\n                lastAccessed,\n                newUserWizard,\n                retired,\n                CSPRNG,\n                UserPassword AS password,\n                group.groupId,\n                group.group,\n                `pages`.pageId AS homePageId,\n                `pages`.title AS homePage,\n                `user`.firstName,\n                `user`.lastName,\n                `user`.phone,\n                `user`.ref1,\n                `user`.ref2,\n                `user`.ref3,\n                `user`.ref4,\n                `user`.ref5,\n                IFNULL(group.libraryQuota, 0) AS libraryQuota,\n                `group`.isSystemNotification,\n                `group`.isDisplayNotification, \n                `user`.isPasswordChangeRequired,\n                `user`.twoFactorTypeId,\n                `user`.twoFactorSecret,\n                `user`.twoFactorRecoveryCodes,\n                `user`.showContentFrom\n            \n              FROM `user`\n                INNER JOIN lkusergroup\n                ON lkusergroup.userId = user.userId\n                INNER JOIN `group`\n                ON `group`.groupId = lkusergroup.groupId\n                  AND isUserSpecific = 1\n                LEFT OUTER JOIN `pages`\n                ON pages.pageId = `user`.homePageId\n             WHERE 1 = 1\n          AND user.userId = @userId ORDER BY userName',2,0),(6347,'98e7784','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','GET','Loading 2. All Objects = 0',2,0),(6348,'98e7784','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','GET','SET @userId=\'2\';\nSET @isUserSpecific=\'0\';\nSET @isEveryone=\'0\';\n\n        SELECT 	`group`.group,\n            `group`.groupId,\n            `group`.isUserSpecific,\n            `group`.isEveryone,\n            `group`.libraryQuota,\n            `group`.isSystemNotification,\n            `group`.isDisplayNotification\n        \n          FROM `group`\n         WHERE 1 = 1\n         AND `group`.groupId IN (SELECT groupId FROM `lkusergroup` WHERE userId = @userId)  AND isUserSpecific = @isUserSpecific  AND isEveryone = @isEveryone ORDER BY `group`',2,0),(6349,'98e7784','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','GET','SET @userId=\'2\';\nSELECT * FROM `useroption` WHERE userId = @userId',2,0),(6350,'98e7784','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','GET','Install Fonts called with options: {\"invalidateCache\":false}',2,0),(6351,'98e7784','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','GET','CMS font CSS returned from Cache.',2,0),(6352,'98e7784','2020-11-04 20:55:15','WEB','INFO','/user/pref','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 6\n    },\n    \"length\": 0.07912397384643555,\n    \"memoryUsage\": 13970584,\n    \"peakMemoryUsage\": 14183912\n}.',2,0),(6353,'98e7784','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524755\';\nSET @lastAccessed=\'2020-11-04 20:55:15\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',2,0),(6354,'b1492cc','2020-11-04 20:55:15','WEB','DEBUG','/application','GET','SET @userId=\'2\';\n\n            SELECT `user`.userId,\n                userName,\n                userTypeId,\n                email,\n                lastAccessed,\n                newUserWizard,\n                retired,\n                CSPRNG,\n                UserPassword AS password,\n                group.groupId,\n                group.group,\n                `pages`.pageId AS homePageId,\n                `pages`.title AS homePage,\n                `user`.firstName,\n                `user`.lastName,\n                `user`.phone,\n                `user`.ref1,\n                `user`.ref2,\n                `user`.ref3,\n                `user`.ref4,\n                `user`.ref5,\n                IFNULL(group.libraryQuota, 0) AS libraryQuota,\n                `group`.isSystemNotification,\n                `group`.isDisplayNotification, \n                `user`.isPasswordChangeRequired,\n                `user`.twoFactorTypeId,\n                `user`.twoFactorSecret,\n                `user`.twoFactorRecoveryCodes,\n                `user`.showContentFrom\n            \n              FROM `user`\n                INNER JOIN lkusergroup\n                ON lkusergroup.userId = user.userId\n                INNER JOIN `group`\n                ON `group`.groupId = lkusergroup.groupId\n                  AND isUserSpecific = 1\n                LEFT OUTER JOIN `pages`\n                ON pages.pageId = `user`.homePageId\n             WHERE 1 = 1\n          AND user.userId = @userId ORDER BY userName',2,0),(6355,'b1492cc','2020-11-04 20:55:15','WEB','DEBUG','/application','GET','Loading 2. All Objects = 0',2,0),(6356,'b1492cc','2020-11-04 20:55:15','WEB','DEBUG','/application','GET','SET @userId=\'2\';\nSET @isUserSpecific=\'0\';\nSET @isEveryone=\'0\';\n\n        SELECT 	`group`.group,\n            `group`.groupId,\n            `group`.isUserSpecific,\n            `group`.isEveryone,\n            `group`.libraryQuota,\n            `group`.isSystemNotification,\n            `group`.isDisplayNotification\n        \n          FROM `group`\n         WHERE 1 = 1\n         AND `group`.groupId IN (SELECT groupId FROM `lkusergroup` WHERE userId = @userId)  AND isUserSpecific = @isUserSpecific  AND isEveryone = @isEveryone ORDER BY `group`',2,0),(6357,'b1492cc','2020-11-04 20:55:15','WEB','DEBUG','/application','GET','SET @userId=\'2\';\nSELECT * FROM `useroption` WHERE userId = @userId',2,0),(6358,'b1492cc','2020-11-04 20:55:15','WEB','DEBUG','/application','GET','Install Fonts called with options: {\"invalidateCache\":false}',2,0),(6359,'b1492cc','2020-11-04 20:55:15','WEB','DEBUG','/application','GET','CMS font CSS returned from Cache.',2,0),(6360,'b1492cc','2020-11-04 20:55:15','WEB','DEBUG','/application','GET','\n            SELECT `oauth_clients`.id AS `key`,\n                `oauth_clients`.secret,\n                `oauth_clients`.name,\n                `user`.UserName AS owner,\n                `oauth_clients`.authCode,\n                `oauth_clients`.clientCredentials,\n                `oauth_clients`.userId \n              FROM `oauth_clients`\n         INNER JOIN `user` ON `user`.userId = `oauth_clients`.userId  WHERE 1 = 1 ORDER BY `name` LIMIT 0, 10',2,0),(6361,'b1492cc','2020-11-04 20:55:15','WEB','DEBUG','/application','GET','SELECT COUNT(*) AS total \n              FROM `oauth_clients`\n         INNER JOIN `user` ON `user`.userId = `oauth_clients`.userId  WHERE 1 = 1 ',2,0),(6362,'b1492cc','2020-11-04 20:55:15','WEB','INFO','/application','GET','Request stats: {\n    \"default\": {\n        \"select\": 6\n    },\n    \"log\": {\n        \"insert\": 8\n    },\n    \"length\": 0.09050202369689941,\n    \"memoryUsage\": 13848800,\n    \"peakMemoryUsage\": 13926472\n}.',2,0),(6363,'b1492cc','2020-11-04 20:55:15','WEB','DEBUG','/application','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524755\';\nSET @lastAccessed=\'2020-11-04 20:55:15\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',2,0),(6364,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','SET @userId=\'2\';\n\n            SELECT `user`.userId,\n                userName,\n                userTypeId,\n                email,\n                lastAccessed,\n                newUserWizard,\n                retired,\n                CSPRNG,\n                UserPassword AS password,\n                group.groupId,\n                group.group,\n                `pages`.pageId AS homePageId,\n                `pages`.title AS homePage,\n                `user`.firstName,\n                `user`.lastName,\n                `user`.phone,\n                `user`.ref1,\n                `user`.ref2,\n                `user`.ref3,\n                `user`.ref4,\n                `user`.ref5,\n                IFNULL(group.libraryQuota, 0) AS libraryQuota,\n                `group`.isSystemNotification,\n                `group`.isDisplayNotification, \n                `user`.isPasswordChangeRequired,\n                `user`.twoFactorTypeId,\n                `user`.twoFactorSecret,\n                `user`.twoFactorRecoveryCodes,\n                `user`.showContentFrom\n            \n              FROM `user`\n                INNER JOIN lkusergroup\n                ON lkusergroup.userId = user.userId\n                INNER JOIN `group`\n                ON `group`.groupId = lkusergroup.groupId\n                  AND isUserSpecific = 1\n                LEFT OUTER JOIN `pages`\n                ON pages.pageId = `user`.homePageId\n             WHERE 1 = 1\n          AND user.userId = @userId ORDER BY userName',2,0),(6365,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','Loading 2. All Objects = 0',2,0),(6366,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','SET @userId=\'2\';\nSET @isUserSpecific=\'0\';\nSET @isEveryone=\'0\';\n\n        SELECT 	`group`.group,\n            `group`.groupId,\n            `group`.isUserSpecific,\n            `group`.isEveryone,\n            `group`.libraryQuota,\n            `group`.isSystemNotification,\n            `group`.isDisplayNotification\n        \n          FROM `group`\n         WHERE 1 = 1\n         AND `group`.groupId IN (SELECT groupId FROM `lkusergroup` WHERE userId = @userId)  AND isUserSpecific = @isUserSpecific  AND isEveryone = @isEveryone ORDER BY `group`',2,0),(6367,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','SET @userId=\'2\';\nSELECT * FROM `useroption` WHERE userId = @userId',2,0),(6368,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','Install Fonts called with options: {\"invalidateCache\":false}',2,0),(6369,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','CMS font CSS returned from Cache.',2,0),(6370,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','SET @exactUserName=\'dispway\';\n\n            SELECT `user`.userId,\n                userName,\n                userTypeId,\n                email,\n                lastAccessed,\n                newUserWizard,\n                retired,\n                CSPRNG,\n                UserPassword AS password,\n                group.groupId,\n                group.group,\n                `pages`.pageId AS homePageId,\n                `pages`.title AS homePage,\n                `user`.firstName,\n                `user`.lastName,\n                `user`.phone,\n                `user`.ref1,\n                `user`.ref2,\n                `user`.ref3,\n                `user`.ref4,\n                `user`.ref5,\n                IFNULL(group.libraryQuota, 0) AS libraryQuota,\n                `group`.isSystemNotification,\n                `group`.isDisplayNotification, \n                `user`.isPasswordChangeRequired,\n                `user`.twoFactorTypeId,\n                `user`.twoFactorSecret,\n                `user`.twoFactorRecoveryCodes,\n                `user`.showContentFrom\n            \n              FROM `user`\n                INNER JOIN lkusergroup\n                ON lkusergroup.userId = user.userId\n                INNER JOIN `group`\n                ON `group`.groupId = lkusergroup.groupId\n                  AND isUserSpecific = 1\n                LEFT OUTER JOIN `pages`\n                ON pages.pageId = `user`.homePageId\n             WHERE 1 = 1\n          AND user.userName = @exactUserName ORDER BY userName',2,0),(6371,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','Checking permissions against the logged in user: ID: 2, Name: dispway, UserType: 1',2,0),(6372,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','SET @pageId=\'1\';\nSELECT pageId, name, title, asHome FROM `pages` WHERE 1 = 1  AND `pageId` = @pageId ORDER BY name',2,0),(6373,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','Saving user. User dispway. userId: 2, UserTypeId: 1, homePageId: 1, email = ',2,0),(6374,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','SET @userId=\'2\';\nSET @option=\'applicationsGrid\';\nSET @value=\'{\"time\":1604523315817,\"start\":0,\"length\":10,\"order\":[[0,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}\';\nSET @value2=\'{\"time\":1604523315817,\"start\":0,\"length\":10,\"order\":[[0,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}\';\nINSERT INTO `useroption` (`userId`, `option`, `value`) VALUES (@userId, @option, @value) ON DUPLICATE KEY UPDATE `value` = @value2',2,0),(6375,'9e31ce9','2020-11-04 20:55:15','WEB','INFO','/user/pref','POST','Request stats: {\n    \"default\": {\n        \"select\": 6,\n        \"insert\": 1,\n        \"commit\": 1\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"length\": 0.09198498725891113,\n    \"memoryUsage\": 14034448,\n    \"peakMemoryUsage\": 14089856\n}.',2,0),(6376,'9e31ce9','2020-11-04 20:55:15','WEB','DEBUG','/user/pref','POST','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524755\';\nSET @lastAccessed=\'2020-11-04 20:55:15\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',2,0),(6377,'62aed97','2020-11-04 20:56:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6378,'62aed97','2020-11-04 20:56:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6379,'62aed97','2020-11-04 20:56:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6380,'62aed97','2020-11-04 20:56:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6381,'62aed97','2020-11-04 20:56:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6382,'62aed97','2020-11-04 20:56:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:56:00',1,0),(6383,'62aed97','2020-11-04 20:56:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6384,'62aed97','2020-11-04 20:56:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.1238698959350586,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(6385,'9623248','2020-11-04 20:56:16','WEB','DEBUG','/clock','GET','Install Fonts called with options: {\"invalidateCache\":false}',0,0),(6386,'9623248','2020-11-04 20:56:16','WEB','DEBUG','/clock','GET','CMS font CSS returned from Cache.',0,0),(6387,'9623248','2020-11-04 20:56:16','WEB','INFO','/clock','GET','Request stats: {\n    \"default\": {\n        \"select\": 1\n    },\n    \"log\": {\n        \"insert\": 2\n    },\n    \"length\": 0.06877708435058594,\n    \"memoryUsage\": 13574824,\n    \"peakMemoryUsage\": 13713736\n}.',0,0),(6388,'9623248','2020-11-04 20:56:16','WEB','DEBUG','/clock','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524755\';\nSET @lastAccessed=\'2020-11-04 20:56:16\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',0,0),(6389,'7dd15a4','2020-11-04 20:57:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6390,'7dd15a4','2020-11-04 20:57:00','CONSOLE','INFO','/','GET','Running Task 9',1,0),(6391,'7dd15a4','2020-11-04 20:57:00','CONSOLE','DEBUG','/','GET','Running Task Widget Sync [9], Class = \\Xibo\\XTR\\WidgetSyncTask',1,0),(6392,'7dd15a4','2020-11-04 20:57:00','CONSOLE','INFO','/','GET','Total time spent caching is 0',1,0),(6393,'7dd15a4','2020-11-04 20:57:00','CONSOLE','DEBUG','/','GET','Finished Task Widget Sync [9] Run Dt: 2020-11-04 20:57:00',1,0),(6394,'7dd15a4','2020-11-04 20:57:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6395,'7dd15a4','2020-11-04 20:57:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6396,'7dd15a4','2020-11-04 20:57:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6397,'7dd15a4','2020-11-04 20:57:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6398,'7dd15a4','2020-11-04 20:57:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:57:00',1,0),(6399,'7dd15a4','2020-11-04 20:57:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6400,'7dd15a4','2020-11-04 20:57:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 5\n    },\n    \"log\": {\n        \"insert\": 11\n    },\n    \"xtr\": {\n        \"select\": 3,\n        \"update\": 6,\n        \"commit\": 4\n    },\n    \"length\": 0.057070016860961914,\n    \"memoryUsage\": 12665728,\n    \"peakMemoryUsage\": 12750160\n}.',1,0),(6401,'fb066d5','2020-11-04 20:57:16','WEB','DEBUG','/clock','GET','Install Fonts called with options: {\"invalidateCache\":false}',0,0),(6402,'fb066d5','2020-11-04 20:57:16','WEB','DEBUG','/clock','GET','CMS font CSS returned from Cache.',0,0),(6403,'fb066d5','2020-11-04 20:57:16','WEB','INFO','/clock','GET','Request stats: {\n    \"default\": {\n        \"select\": 1\n    },\n    \"log\": {\n        \"insert\": 2\n    },\n    \"length\": 0.07145309448242188,\n    \"memoryUsage\": 13574824,\n    \"peakMemoryUsage\": 13713736\n}.',0,0),(6404,'fb066d5','2020-11-04 20:57:16','WEB','DEBUG','/clock','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524755\';\nSET @lastAccessed=\'2020-11-04 20:57:16\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',0,0),(6405,'06bc59e','2020-11-04 20:58:00','CONSOLE','DEBUG','/','GET','XTR poll started',1,0),(6406,'06bc59e','2020-11-04 20:58:00','CONSOLE','INFO','/','GET','Running Task 8',1,0),(6407,'06bc59e','2020-11-04 20:58:00','CONSOLE','DEBUG','/','GET','Running Task Sync Dynamic Playlists [8], Class = \\Xibo\\XTR\\DynamicPlaylistSyncTask',1,0),(6408,'06bc59e','2020-11-04 20:58:00','CONSOLE','DEBUG','/','GET','Last media updated date is 2020-11-04 18:22:54',1,0),(6409,'06bc59e','2020-11-04 20:58:00','CONSOLE','DEBUG','/','GET','Last playlist updated date is 2020-11-04 18:25:01',1,0),(6410,'06bc59e','2020-11-04 20:58:00','CONSOLE','DEBUG','/','GET','Finished Task Sync Dynamic Playlists [8] Run Dt: 2020-11-04 20:58:00',1,0),(6411,'06bc59e','2020-11-04 20:58:00','CONSOLE','DEBUG','/','GET','XTR poll stopped',1,0),(6412,'06bc59e','2020-11-04 20:58:00','CONSOLE','INFO','/','GET','Request stats: {\n    \"default\": {\n        \"select\": 4\n    },\n    \"log\": {\n        \"insert\": 7\n    },\n    \"xtr\": {\n        \"select\": 2,\n        \"update\": 3,\n        \"commit\": 2\n    },\n    \"length\": 0.03489208221435547,\n    \"memoryUsage\": 12651256,\n    \"peakMemoryUsage\": 12710096\n}.',1,0),(6413,'75b4be7','2020-11-04 20:58:16','WEB','DEBUG','/login/ping','GET','Install Fonts called with options: {\"invalidateCache\":false}',0,0),(6414,'23616bb','2020-11-04 20:58:16','WEB','DEBUG','/clock','GET','Install Fonts called with options: {\"invalidateCache\":false}',0,0),(6415,'75b4be7','2020-11-04 20:58:16','WEB','DEBUG','/login/ping','GET','CMS font CSS returned from Cache.',0,0),(6416,'23616bb','2020-11-04 20:58:16','WEB','DEBUG','/clock','GET','CMS font CSS returned from Cache.',0,0),(6417,'75b4be7','2020-11-04 20:58:16','WEB','INFO','/login/ping','GET','Request stats: {\n    \"default\": {\n        \"select\": 1\n    },\n    \"log\": {\n        \"insert\": 2\n    },\n    \"length\": 0.10571098327636719,\n    \"memoryUsage\": 13642072,\n    \"peakMemoryUsage\": 13786016\n}.',0,0),(6418,'23616bb','2020-11-04 20:58:16','WEB','INFO','/clock','GET','Request stats: {\n    \"default\": {\n        \"select\": 1\n    },\n    \"log\": {\n        \"insert\": 2\n    },\n    \"length\": 0.10634493827819824,\n    \"memoryUsage\": 13574824,\n    \"peakMemoryUsage\": 13713736\n}.',0,0),(6419,'75b4be7','2020-11-04 20:58:16','WEB','DEBUG','/login/ping','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524755\';\nSET @lastAccessed=\'2020-11-04 20:58:16\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',0,0),(6420,'23616bb','2020-11-04 20:58:16','WEB','DEBUG','/clock','GET','SET @session_data=\'init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;\';\nSET @session_expiration=\'1604524755\';\nSET @lastAccessed=\'2020-11-04 20:58:16\';\nSET @userId=\'2\';\nSET @expired=\'0\';\nSET @session_id=\'a81ub60icr716cjgusjolulako\';\n\n            UPDATE `session` SET\n              session_data = @session_data,\n              session_expiration = @session_expiration,\n              LastAccessed = @lastAccessed,\n              userID = @userId,\n              IsExpired = @expired\n            WHERE session_id = @session_id\n        ',0,0);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `mediaId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(15) NOT NULL,
  `duration` int(11) NOT NULL,
  `originalFileName` varchar(254) DEFAULT NULL,
  `storedAs` varchar(254) DEFAULT NULL,
  `md5` varchar(32) DEFAULT NULL,
  `fileSize` bigint(20) DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `retired` tinyint(4) NOT NULL DEFAULT '0',
  `isEdited` tinyint(4) NOT NULL DEFAULT '0',
  `editedMediaId` int(11) DEFAULT NULL,
  `moduleSystemFile` tinyint(4) NOT NULL DEFAULT '0',
  `valid` tinyint(4) NOT NULL DEFAULT '1',
  `expires` int(11) DEFAULT NULL,
  `released` tinyint(4) NOT NULL DEFAULT '1',
  `apiRef` varchar(254) DEFAULT NULL,
  `createdDt` datetime NOT NULL,
  `modifiedDt` datetime NOT NULL,
  `enableStat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mediaId`),
  KEY `userId` (`userId`),
  KEY `editedMediaId` (`editedMediaId`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,'Logo','image',10,'xibo_logo_square.png','1.png','1b14e03ce0f249780372d8c833ee29f4',19214,1,0,0,0,0,1,0,1,NULL,'2020-11-04 18:18:00','2020-11-04 18:22:54','Inherit'),(2,'Default Layout Background','image',10,'default layout3 background.jpg','2.jpg','1723376616232e8d354f4362c9670fa0',119781,1,0,0,0,0,1,0,1,NULL,'2020-11-04 18:18:00','2020-11-04 18:22:45','Inherit'),(3,'jquery-1.11.1.min.js','module',0,'jquery-1.11.1.min.js','jquery-1.11.1.min.js','3c9137d88a00b1ae0b41ff6a70571615',95785,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:31',NULL),(4,'moment.js','module',0,'moment.js','moment.js','67bb26c11dba6c366834e65f5933aff2',160251,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(5,'xibo-layout-scaler.js','module',0,'xibo-layout-scaler.js','xibo-layout-scaler.js','5752497a5715d4aceeba4896fea99c62',3694,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:31',NULL),(6,'xibo-text-render.js','module',0,'xibo-text-render.js','xibo-text-render.js','8d72e0c1775cba38c44bf02aee0c8d83',12150,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(7,'Chart.min.js','module',0,'Chart.min.js','Chart.min.js','f6c8efa65711e0cbbc99ba72997ecd0e',159638,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(8,'jquery-cycle-2.1.6.min.js','module',0,'jquery-cycle-2.1.6.min.js','jquery-cycle-2.1.6.min.js','212480cf1292db459557814e2d7a571d',28876,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(9,'flipclock.min.js','module',0,'flipclock.min.js','flipclock.min.js','b9d7742384bdf912c51b6a1b5d674f7a',21107,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(10,'xibo-countdown-render.js','module',0,'xibo-countdown-render.js','xibo-countdown-render.js','db15414501ff0a084b61fc1273e73e2f',6744,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(11,'jquery.marquee.min.js','module',0,'jquery.marquee.min.js','jquery.marquee.min.js','2286bb4f44d9ea301131a25c5204ca0a',2248,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(12,'xibo-image-render.js','module',0,'xibo-image-render.js','xibo-image-render.js','6152d3e99b2c61bb3db365d108337483',2988,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:31',NULL),(13,'xibo-dataset-render.js','module',0,'xibo-dataset-render.js','xibo-dataset-render.js','e04ad2bff2a293cc7c7e162a9ef1a4c8',1687,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(14,'Aileron Heavy Regular','font',0,'Aileron-Heavy.otf','14.otf','621ba5aaf66e52f3def0cf69807104b9',30060,1,0,0,NULL,0,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:01',NULL),(15,'Aileron Regular','font',0,'Aileron-Regular.otf','15.otf','d321fa78bb7190a8ca7e14213ef63203',27644,1,0,0,NULL,0,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:01',NULL),(16,'Dancing Script Regular','font',0,'DancingScript-Regular.ttf','16.ttf','86aadd0451f9e7dafa957e1e61dd2ed7',116580,1,0,0,NULL,0,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:01',NULL),(17,'Railway Regular','font',0,'Railway.ttf','17.ttf','58963d3a57da7a70ac36d331416746c5',45884,1,0,0,NULL,0,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:01',NULL),(18,'Linear Regular','font',0,'linear-by-braydon-fuller.otf','18.otf','afb33470c582079834acd8b9f979ce1a',19684,1,0,0,NULL,0,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:01',NULL),(19,'pdf.js','module',0,'pdf.js','pdf.js','dec9b89b936438760291e401c09f52aa',333388,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(20,'pdf.worker.js','module',0,'pdf.worker.js','pdf.worker.js','926affd0ae3d3b69e6071b26875638c8',1337459,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(21,'compatibility.js','module',0,'compatibility.js','compatibility.js','758c582a7fd2f30ec9dd8f91803a9882',18126,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:30',NULL),(22,'xibo-webpage-render.js','module',0,'xibo-webpage-render.js','xibo-webpage-render.js','d59f5fc84ef7747f27baddc07fe81487',4832,1,0,0,0,1,1,0,1,NULL,'2020-11-04 18:18:01','2020-11-04 18:18:31',NULL);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `moduleId` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `regionSpecific` tinyint(4) NOT NULL DEFAULT '1',
  `description` varchar(254) DEFAULT NULL,
  `schemaVersion` int(11) NOT NULL DEFAULT '1',
  `validExtensions` varchar(254) DEFAULT NULL,
  `previewEnabled` tinyint(4) NOT NULL DEFAULT '1',
  `assignable` tinyint(4) NOT NULL DEFAULT '1',
  `render_as` varchar(10) DEFAULT NULL,
  `settings` text,
  `viewPath` varchar(254) NOT NULL DEFAULT '../modules',
  `class` varchar(254) NOT NULL,
  `defaultDuration` int(11) NOT NULL,
  `installName` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`moduleId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
INSERT INTO `module` VALUES (1,'Image','Image',1,0,'Upload Image files to assign to Layouts',1,'jpg,jpeg,png,bmp,gif',1,1,NULL,NULL,'../modules','Xibo\\Widget\\Image',10,NULL),(2,'Video','Video',1,0,'Upload Video files to assign to Layouts',1,'wmv,avi,mpg,mpeg,webm,mp4,m4v',0,1,NULL,NULL,'../modules','Xibo\\Widget\\Video',0,NULL),(3,'Flash','Flash',1,0,'Upload SWF files to assign to Layouts',1,'swf',1,1,NULL,NULL,'../modules','Xibo\\Widget\\Flash',10,NULL),(4,'PowerPoint','PowerPoint',1,0,'Upload a PowerPoint file to assign to Layouts',1,'ppt,pps,pptx',1,1,NULL,NULL,'../modules','Xibo\\Widget\\PowerPoint',10,NULL),(5,'Webpage','Webpage',1,1,'Embed a Webpage',1,NULL,1,1,NULL,NULL,'../modules','Xibo\\Widget\\WebPage',60,NULL),(6,'Ticker','Ticker',1,1,'Display dynamic feed content',1,NULL,1,1,NULL,'[]','../modules','Xibo\\Widget\\Ticker',5,NULL),(7,'Text','Text',1,1,'Add Text directly to a Layout',1,NULL,1,1,NULL,NULL,'../modules','Xibo\\Widget\\Text',5,NULL),(8,'Embedded','Embedded',1,1,'Embed HTML and JavaScript',1,NULL,1,1,NULL,NULL,'../modules','Xibo\\Widget\\Embedded',60,NULL),(11,'datasetview','DataSet View',1,1,'Organise and display DataSet data in a tabular format',1,NULL,1,1,NULL,NULL,'../modules','Xibo\\Widget\\DataSetView',60,NULL),(12,'shellcommand','Shell Command',1,1,'Instruct a Display to execute a command using the operating system shell',1,NULL,1,1,NULL,NULL,'../modules','Xibo\\Widget\\ShellCommand',3,NULL),(13,'localvideo','Local Video',1,1,'Display Video that only exists on the Display by providing a local file path or URL',1,NULL,0,1,NULL,NULL,'../modules','Xibo\\Widget\\LocalVideo',60,NULL),(14,'genericfile','Generic File',1,0,'A generic file to be stored in the library',1,',js,html,htm',0,0,NULL,NULL,'../modules','Xibo\\Widget\\GenericFile',10,NULL),(15,'clock','Clock',1,1,'Assign a type of Clock or a Countdown',1,NULL,1,1,'html','[]','../modules','Xibo\\Widget\\Clock',5,NULL),(16,'font','Font',1,0,'A font to use in other Modules',1,'ttf,otf,eot,svg,woff',0,0,NULL,NULL,'../modules','Xibo\\Widget\\Font',10,NULL),(17,'audio','Audio',1,0,'Upload Audio files to assign to Layouts',1,'mp3,wav',0,1,NULL,NULL,'../modules','Xibo\\Widget\\Audio',0,NULL),(18,'pdf','PDF',1,0,'Upload PDF files to assign to Layouts',1,'pdf',1,1,'html',NULL,'../modules','Xibo\\Widget\\Pdf',60,NULL),(19,'notificationview','Notification',1,1,'Display messages created in the Notification Drawer of the CMS',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\NotificationView',10,NULL),(20,'subplaylist','Sub-Playlist',1,1,'Embed a Sub-Playlist',1,NULL,1,1,'native',NULL,'../modules','Xibo\\Widget\\SubPlaylist',10,NULL),(21,'datasetticker','DataSet Ticker',1,1,'Ticker with a DataSet providing the items',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\DataSetTicker',10,NULL),(22,'playersoftware','Player Software',1,0,'A module for managing Player Versions',1,'apk,ipk,wgt',0,0,NULL,NULL,'../modules','Xibo\\Widget\\PlayerSoftware',10,NULL),(23,'htmlpackage','HTML Package',1,0,'Upload a complete package to distribute to Players',1,'htz',0,1,'native',NULL,'../modules','Xibo\\Widget\\HtmlPackage',60,NULL),(24,'videoin','Video In',1,1,'Display input from an external source',1,NULL,0,1,'native',NULL,'../modules','Xibo\\Widget\\VideoIn',60,NULL),(25,'hls','HLS',1,1,'Display live streamed content',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\Hls',60,NULL),(26,'calendar','Calendar',1,1,'Display events from an iCAL feed',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\Calendar',60,NULL),(27,'chart','Chart',1,1,'Display information held in a DataSet as a type of Chart',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\Chart',240,NULL),(28,'savedreport','Saved Reports',1,0,'A saved report to be stored in the library',1,'json',0,0,NULL,NULL,'../modules','Xibo\\Widget\\SavedReport',10,'savedreport'),(29,'spacer','Spacer',1,1,'Make a Region empty for a specified duration',1,NULL,0,1,'html',NULL,'../modules','Xibo\\Widget\\Spacer',60,'spacer'),(30,'countdown','Countdown',1,1,'Countdown Module',1,NULL,1,1,'html',NULL,'../modules','Xibo\\Widget\\Countdown',60,'countdown');
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notificationId` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `createDt` int(11) NOT NULL,
  `releaseDt` int(11) NOT NULL,
  `isEmail` tinyint(4) NOT NULL,
  `isInterrupt` tinyint(4) NOT NULL,
  `isSystem` tinyint(4) NOT NULL,
  `userId` int(11) NOT NULL,
  `filename` varchar(1000) DEFAULT NULL,
  `nonusers` varchar(1000) DEFAULT NULL,
  `originalFileName` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`notificationId`),
  KEY `userId` (`userId`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token_scopes`
--

DROP TABLE IF EXISTS `oauth_access_token_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(254) NOT NULL,
  `scope` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `access_token` (`access_token`),
  KEY `scope` (`scope`),
  CONSTRAINT `oauth_access_token_scopes_ibfk_1` FOREIGN KEY (`access_token`) REFERENCES `oauth_access_tokens` (`access_token`) ON DELETE CASCADE,
  CONSTRAINT `oauth_access_token_scopes_ibfk_2` FOREIGN KEY (`scope`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token_scopes`
--

LOCK TABLES `oauth_access_token_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_access_token_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_token_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `access_token` varchar(254) NOT NULL,
  `session_id` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  PRIMARY KEY (`access_token`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `oauth_access_tokens_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_code_scopes`
--

DROP TABLE IF EXISTS `oauth_auth_code_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_code_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_code` varchar(254) NOT NULL,
  `scope` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_code` (`auth_code`),
  KEY `scope` (`scope`),
  CONSTRAINT `oauth_auth_code_scopes_ibfk_1` FOREIGN KEY (`auth_code`) REFERENCES `oauth_auth_codes` (`auth_code`) ON DELETE CASCADE,
  CONSTRAINT `oauth_auth_code_scopes_ibfk_2` FOREIGN KEY (`scope`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_code_scopes`
--

LOCK TABLES `oauth_auth_code_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_code_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_code_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `auth_code` varchar(254) NOT NULL,
  `session_id` int(11) NOT NULL,
  `expire_time` int(11) NOT NULL,
  `client_redirect_uri` varchar(500) NOT NULL,
  PRIMARY KEY (`auth_code`),
  KEY `session_id` (`session_id`),
  CONSTRAINT `oauth_auth_codes_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_redirect_uris`
--

DROP TABLE IF EXISTS `oauth_client_redirect_uris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_redirect_uris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(254) NOT NULL,
  `redirect_uri` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_redirect_uris`
--

LOCK TABLES `oauth_client_redirect_uris` WRITE;
/*!40000 ALTER TABLE `oauth_client_redirect_uris` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_redirect_uris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_scopes`
--

DROP TABLE IF EXISTS `oauth_client_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientId` varchar(254) NOT NULL,
  `scopeId` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clientId` (`clientId`,`scopeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_scopes`
--

LOCK TABLES `oauth_client_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_client_scopes` DISABLE KEYS */;
INSERT INTO `oauth_client_scopes` VALUES (1,'mV5PIfqjstasaG1rQwDVtJuF83qkheEjXtkOa61c','all');
/*!40000 ALTER TABLE `oauth_client_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` varchar(254) NOT NULL,
  `secret` varchar(254) NOT NULL,
  `name` varchar(254) NOT NULL,
  `userId` int(11) NOT NULL,
  `authCode` tinyint(4) NOT NULL,
  `clientCredentials` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `oauth_clients_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('mV5PIfqjstasaG1rQwDVtJuF83qkheEjXtkOa61c','sr2SYA2JmelCV8H1UqzP1q4Pbg2ziqqJicWwaORzKfPsRXpZsUvQtXNGDqvRqCQ5FU4goKqqB7PHhqxfUESQQdEhMI7FatdLMTSY4nC8uqa8NfhfSnmN7eu2hz7FerpdKQdIDsxl6PTlq9OzrOw3SPOfU05LB1YJxLFmYNcj0f9uFFhP90fjURVsWXz1DA0zE76k8j3nUrJwGruSgatYFEB6kzBtx57DL1lxL3wtyiGPDcHo00ggUdszXXCgK7','webclient',2,0,1);
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `refresh_token` varchar(254) NOT NULL,
  `expire_time` int(11) NOT NULL,
  `access_token` varchar(254) NOT NULL,
  PRIMARY KEY (`refresh_token`),
  KEY `access_token` (`access_token`),
  CONSTRAINT `oauth_refresh_tokens_ibfk_1` FOREIGN KEY (`access_token`) REFERENCES `oauth_access_tokens` (`access_token`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_scope_routes`
--

DROP TABLE IF EXISTS `oauth_scope_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_scope_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scopeId` varchar(254) NOT NULL,
  `route` varchar(1000) NOT NULL,
  `method` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_scope_routes`
--

LOCK TABLES `oauth_scope_routes` WRITE;
/*!40000 ALTER TABLE `oauth_scope_routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_scope_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_scopes`
--

DROP TABLE IF EXISTS `oauth_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_scopes` (
  `id` varchar(254) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_scopes`
--

LOCK TABLES `oauth_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_scopes` DISABLE KEYS */;
INSERT INTO `oauth_scopes` VALUES ('all','All');
/*!40000 ALTER TABLE `oauth_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_session_scopes`
--

DROP TABLE IF EXISTS `oauth_session_scopes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_session_scopes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` int(11) NOT NULL,
  `scope` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `session_id` (`session_id`),
  KEY `scope` (`scope`),
  CONSTRAINT `oauth_session_scopes_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_session_scopes_ibfk_2` FOREIGN KEY (`scope`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_session_scopes`
--

LOCK TABLES `oauth_session_scopes` WRITE;
/*!40000 ALTER TABLE `oauth_session_scopes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_session_scopes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_sessions`
--

DROP TABLE IF EXISTS `oauth_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_type` varchar(254) NOT NULL,
  `owner_id` varchar(254) NOT NULL,
  `client_id` varchar(254) NOT NULL,
  `client_redirect_uri` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  CONSTRAINT `oauth_sessions_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_sessions`
--

LOCK TABLES `oauth_sessions` WRITE;
/*!40000 ALTER TABLE `oauth_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `pageId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `asHome` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'icondashboard','Icon Dashboard',1),(2,'schedule','Schedule',1),(3,'mediamanager','Media Dashboard',1),(4,'layout','Layout',1),(5,'library','Library',1),(6,'display','Displays',1),(7,'update','Update',0),(8,'admin','Administration',0),(9,'group','User Groups',1),(10,'log','Log',1),(11,'user','Users',1),(12,'license','Licence',1),(13,'index','Home',0),(14,'module','Modules',1),(15,'template','Templates',1),(16,'fault','Report Fault',1),(17,'stats','Statistics',1),(18,'manual','Manual',0),(19,'resolution','Resolutions',1),(20,'help','Help Links',1),(21,'clock','Clock',0),(22,'displaygroup','Display Groups',1),(23,'application','Applications',1),(24,'dataset','DataSets',1),(25,'campaign','Campaigns',1),(26,'transition','Transitions',1),(27,'sessions','Sessions',1),(28,'preview','Preview',0),(29,'statusdashboard','Status Dashboard',1),(30,'displayprofile','Display Profiles',1),(31,'audit','Audit Trail',0),(32,'region','Regions',0),(33,'playlist','Playlist',1),(34,'maintenance','Maintenance',0),(35,'command','Commands',1),(36,'notification','Notifications',0),(37,'drawer','Notification Drawer',0),(38,'daypart','Dayparting',0),(39,'task','Tasks',1),(40,'playersoftware','Player Software',0),(41,'schedulenow','Schedule Now',0),(42,'report','Report',0),(43,'playlistdashboard','Playlist Dashboard',1);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `permissionId` int(11) NOT NULL AUTO_INCREMENT,
  `entityId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `objectId` int(11) NOT NULL,
  `view` tinyint(4) NOT NULL,
  `edit` tinyint(4) NOT NULL,
  `delete` tinyint(4) NOT NULL,
  PRIMARY KEY (`permissionId`),
  KEY `permission_ibfk_1` (`groupId`),
  KEY `permission_ibfk_2` (`entityId`),
  KEY `permission_objectId_index` (`objectId`),
  CONSTRAINT `permission_ibfk_1` FOREIGN KEY (`groupId`) REFERENCES `group` (`groupId`),
  CONSTRAINT `permission_ibfk_2` FOREIGN KEY (`entityId`) REFERENCES `permissionentity` (`entityId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,1,1,1,1,0,0),(2,1,1,13,1,0,0),(3,1,1,4,1,0,0),(4,1,1,5,1,0,0),(5,1,1,3,1,0,0),(6,1,1,33,1,0,0),(7,1,1,28,1,0,0),(8,1,1,32,1,0,0),(9,1,1,2,1,0,0),(10,1,1,29,1,0,0),(11,1,1,11,1,0,0),(12,11,2,1,1,0,0),(13,11,2,2,1,0,0),(15,1,1,41,1,0,0),(16,1,3,41,1,0,0),(17,1,4,41,1,0,0),(18,1,5,43,1,0,0),(19,1,5,5,1,0,0),(20,1,5,11,1,0,0);
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissionentity`
--

DROP TABLE IF EXISTS `permissionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissionentity` (
  `entityId` int(11) NOT NULL AUTO_INCREMENT,
  `entity` varchar(50) NOT NULL,
  PRIMARY KEY (`entityId`),
  UNIQUE KEY `entity` (`entity`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissionentity`
--

LOCK TABLES `permissionentity` WRITE;
/*!40000 ALTER TABLE `permissionentity` DISABLE KEYS */;
INSERT INTO `permissionentity` VALUES (4,'Xibo\\Entity\\Campaign'),(12,'Xibo\\Entity\\Command'),(9,'Xibo\\Entity\\DataSet'),(11,'Xibo\\Entity\\DayPart'),(2,'Xibo\\Entity\\DisplayGroup'),(3,'Xibo\\Entity\\Media'),(10,'Xibo\\Entity\\Notification'),(1,'Xibo\\Entity\\Page'),(8,'Xibo\\Entity\\Playlist'),(7,'Xibo\\Entity\\Region'),(5,'Xibo\\Entity\\Widget');
/*!40000 ALTER TABLE `permissionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phinxlog`
--

DROP TABLE IF EXISTS `phinxlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phinxlog`
--

LOCK TABLES `phinxlog` WRITE;
/*!40000 ALTER TABLE `phinxlog` DISABLE KEYS */;
INSERT INTO `phinxlog` VALUES (20180130073838,'InstallMigration','2020-11-04 18:17:50','2020-11-04 18:17:52',0),(20180131113100,'OldUpgradeStep85Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131113853,'OldUpgradeStep86Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131113941,'OldUpgradeStep87Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131113948,'OldUpgradeStep88Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131113952,'OldUpgradeStep92Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131113957,'OldUpgradeStep120Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114002,'OldUpgradeStep121Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114007,'OldUpgradeStep122Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114013,'OldUpgradeStep123Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114017,'OldUpgradeStep124Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114021,'OldUpgradeStep125Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114025,'OldUpgradeStep126Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114030,'OldUpgradeStep127Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114050,'OldUpgradeStep128Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114058,'OldUpgradeStep129Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114103,'OldUpgradeStep130Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114107,'OldUpgradeStep131Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114110,'OldUpgradeStep132Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114114,'OldUpgradeStep133Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114118,'OldUpgradeStep134Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131114123,'OldUpgradeStep135Migration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131122645,'OneRegionPerPlaylistMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131123038,'PlaylistTagsMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180131123248,'WidgetFromToDtMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180212143336,'DaypartSystemEntriesAsRecords','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180213173846,'MailFromNameSettingMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180219141257,'DisplayGroupClosureIndexToNonUnique','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180223180534,'DataSetColumnFilterAndSortOptionsMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180302182421,'WidgetCreatedAndModifiedDtMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180313085749,'MediaTableEditedIdIndexMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180320154652,'PlaylistAddDynamicFilterMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180327153325,'RemoveUserLoggedInMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180514114415,'FixCaseOnHelpTextFieldMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180515123835,'LayoutPublishDraftMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180529065816,'DataSetTruncateFixMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180529073531,'DisplayAsVncLinkMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180621134013,'AddWidgetSyncTaskMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180621134250,'EventLayoutPermissionSettingMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180906115552,'AddForeignKeysToTagsMigration','2020-11-04 18:17:52','2020-11-04 18:17:52',0),(20180906115606,'AddForeignKeysToPermissionsMigration','2020-11-04 18:17:52','2020-11-04 18:17:53',0),(20180906115712,'AddForeignKeysToWidgetMediaMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20180906131643,'ForgottenPasswordReminderMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20180906131716,'DataSetRssMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20181011160130,'SimpleSettingsMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20181113173310,'RemoveFinanceModuleMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20181113180337,'SplitTickerModuleMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20181126113231,'Release1812Migration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20181210092443,'RemoveImageUriModuleMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20181212114400,'CreatePlayerVersionsTableMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20181217135044,'EventSyncMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190121092556,'PlayerUpgradeAndOverrideConfigMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190125170130,'PlayerSoftwareVersionFieldMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190129103831,'AddLinuxDisplayProfileMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190212112534,'AddProofOfPlayStatsDurationAndCountMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190212115432,'AddDefaultTransitionDurationSettingMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190213160914,'AddGlobalStatSettingMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190213162212,'AddHorizontalMenuSettingMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190214102508,'AddLayoutEnableStat','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190214102516,'AddMediaEnableStat','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190220165703,'AddScheduleRecurrenceMonthlyRepeatsOnMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190227101705,'MakeDisplayLicenseColumnUniqueMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190228120603,'AddDynamicCriteriaTagsMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190301115046,'AdjustGenericfileValidExtensionsMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190315134628,'AddBandwidthLimitColumnToDisplaygroupMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190322162052,'AddPublishedDateColumnMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190326163016,'CreateLayoutHistoryTableMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190328111718,'AddCampaignStatMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190401150256,'AddScheduleNowPageMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190509101525,'CreateReportScheduleTableMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190509102648,'CreateSavedReportTableMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190509113001,'AddReportPageMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190510140126,'TwoFactorAuthMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190514134430,'NullableTextFieldsMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190515094133,'AddHtmlDatatypeMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190515105624,'InstallAdditionalStandardModulesMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190517080033,'AddForeignKeysToLktagTablesMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190521092700,'AddReportScheduleTaskMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190521092930,'AddPreviousRunDateReportScheduleMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190521102635,'PlaylistDurationUpdateAtTimestamp','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190603083836,'ChangeStatTableStartEndColumnMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190610150331,'TagsWithValuesMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190611145607,'RemoveOldVersionTableMigration','2020-11-04 18:17:53','2020-11-04 18:17:53',0),(20190612140955,'DisplayTableDatabaseSchemaAdjustmentsMigration','2020-11-04 18:17:53','2020-11-04 18:17:54',0),(20190620112611,'MoveTidyStatsToStatsArchiveTaskMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190620142655,'AddPlaylistEnableStatMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190626091331,'WidgetHistoryMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190626110359,'CreateStatTableMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190628083649,'AddStatsMigrationTaskMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190710213414,'AddIsActiveReportScheduleMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190717101342,'NullableCommandValidationStringMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190719074601,'MissingDefaultValueMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190725115532,'AddScheduleReminderTaskMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190801102042,'DisplayProfileCommandLinkFixMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190801141737,'DatasetAddCustomHeadersColumnMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190801142302,'AddDoohUserTypeMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190802145636,'CreateScheduleReminderTableMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190806144729,'AddShowContentFromMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190823081448,'AddImageProcessingTaskMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190828123735,'AddDefaultSettingResizeLimitResizeThresholdMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190903083314,'AddGlobalSettingForCascadePermissionsMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190905084201,'AddSettingForDefaultTransitionTypeMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190905084642,'AddSettingForAutoLayoutPublishMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190910132520,'DisplayMoveCmsMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190917093141,'InterruptLayoutMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190918090608,'AddDefaultSettingQuickChartMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190919154513,'AddNotificationAttachmentFilenameNonUsersMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190926135518,'AddSettingForTransitionAutoApplyToLayoutMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20190926140809,'InstallSavedReportsAndSpacerModulesMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20191001092651,'AddNotificationOriginalFilenameMigration','2020-11-04 18:17:54','2020-11-04 18:17:54',0),(20191022101141,'AddCommandEntityToPermissionEntityMigration','2020-11-04 18:17:54','2020-11-04 18:17:55',0),(20191024152519,'AddScheduleExclusionsTableMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0),(20191122114104,'FixDuplicateModuleFilesMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0),(20191126103120,'GeoScheduleMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0),(20191126141140,'RemoteDataSetCsvSourceMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0),(20191205180116,'AddPlaylistDashboardPageUserMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0),(20200107082625,'DisplayAddResolutionMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0),(20200115115935,'AddReportScheduleMessageMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0),(20200122143630,'AddReleasedRequiredFileMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0),(20200122191232,'AddCommercialLicenceColumnMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0),(20200129104944,'AddEngagementsStatsMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0),(20200130165443,'CountdownModuleAddMigration','2020-11-04 18:17:55','2020-11-04 18:17:55',0);
/*!40000 ALTER TABLE `phinxlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_software`
--

DROP TABLE IF EXISTS `player_software`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_software` (
  `versionId` int(11) NOT NULL AUTO_INCREMENT,
  `player_type` varchar(20) DEFAULT NULL,
  `player_version` varchar(15) DEFAULT NULL,
  `player_code` smallint(6) DEFAULT NULL,
  `mediaId` int(11) NOT NULL,
  `playerShowVersion` varchar(50) NOT NULL,
  PRIMARY KEY (`versionId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `player_software_ibfk_1` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_software`
--

LOCK TABLES `player_software` WRITE;
/*!40000 ALTER TABLE `player_software` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_software` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playlist` (
  `playlistId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `regionId` int(11) DEFAULT NULL,
  `createdDt` datetime NOT NULL,
  `modifiedDt` datetime NOT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  `requiresDurationUpdate` int(11) NOT NULL DEFAULT '0',
  `isDynamic` tinyint(4) NOT NULL DEFAULT '0',
  `filterMediaName` varchar(255) DEFAULT NULL,
  `filterMediaTags` varchar(255) DEFAULT NULL,
  `enableStat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`playlistId`),
  KEY `ownerId` (`ownerId`),
  CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`ownerId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
INSERT INTO `playlist` VALUES (1,'Logo',1,1,'2020-11-04 18:18:01','2020-11-04 18:18:01',60,0,0,NULL,NULL,NULL),(2,'Header',1,2,'2020-11-04 18:18:01','2020-11-04 18:18:01',10,0,0,NULL,NULL,NULL),(3,'Explainer',1,3,'2020-11-04 18:18:01','2020-11-04 18:18:01',25,0,0,NULL,NULL,NULL),(4,'Time',1,4,'2020-11-04 18:18:01','2020-11-04 18:18:01',5,0,0,NULL,NULL,NULL),(6,'Second layout-1',2,6,'2020-11-04 18:23:55','2020-11-04 18:25:01',0,0,0,NULL,NULL,NULL),(7,'Second layout-2',2,7,'2020-11-04 18:24:12','2020-11-04 18:25:01',0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `regionId` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `width` decimal(10,0) NOT NULL,
  `height` decimal(10,0) NOT NULL,
  `top` decimal(10,0) NOT NULL,
  `left` decimal(10,0) NOT NULL,
  `zIndex` smallint(6) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`regionId`),
  KEY `ownerId` (`ownerId`),
  CONSTRAINT `region_ibfk_1` FOREIGN KEY (`ownerId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,1,1,'Logo',267,157,16,24,0,60),(2,1,1,'Header',1109,216,290,413,0,10),(3,1,1,'Explainer',1626,145,618,147,0,25),(4,1,1,'Time',126,58,971,1741,0,5),(6,3,2,'Second layout-1',1920,1080,0,0,0,0),(7,3,2,'Second layout-2',1920,306,774,0,0,0);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regionoption`
--

DROP TABLE IF EXISTS `regionoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regionoption` (
  `regionId` int(11) NOT NULL,
  `option` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`regionId`,`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regionoption`
--

LOCK TABLES `regionoption` WRITE;
/*!40000 ALTER TABLE `regionoption` DISABLE KEYS */;
INSERT INTO `regionoption` VALUES (7,'loop','0'),(7,'transitionDirection','N'),(7,'transitionDuration',NULL),(7,'transitionType',NULL);
/*!40000 ALTER TABLE `regionoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportschedule`
--

DROP TABLE IF EXISTS `reportschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportschedule` (
  `reportScheduleId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `reportName` varchar(255) NOT NULL,
  `filterCriteria` text,
  `schedule` varchar(255) NOT NULL,
  `lastSavedReportId` int(11) NOT NULL DEFAULT '0',
  `lastRunDt` int(11) NOT NULL DEFAULT '0',
  `previousRunDt` int(11) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL,
  `isActive` int(11) NOT NULL DEFAULT '1',
  `createdDt` int(11) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reportScheduleId`),
  KEY `userId` (`userId`),
  CONSTRAINT `reportschedule_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportschedule`
--

LOCK TABLES `reportschedule` WRITE;
/*!40000 ALTER TABLE `reportschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requiredfile`
--

DROP TABLE IF EXISTS `requiredfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requiredfile` (
  `rfId` int(11) NOT NULL AUTO_INCREMENT,
  `displayId` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `bytesRequested` bigint(20) NOT NULL,
  `complete` tinyint(4) NOT NULL DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  `size` bigint(20) NOT NULL DEFAULT '0',
  `released` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rfId`),
  KEY `displayId` (`displayId`,`type`),
  CONSTRAINT `requiredfile_ibfk_1` FOREIGN KEY (`displayId`) REFERENCES `display` (`displayId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requiredfile`
--

LOCK TABLES `requiredfile` WRITE;
/*!40000 ALTER TABLE `requiredfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `requiredfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resolution`
--

DROP TABLE IF EXISTS `resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resolution` (
  `resolutionId` int(11) NOT NULL AUTO_INCREMENT,
  `resolution` varchar(254) NOT NULL,
  `width` smallint(6) NOT NULL,
  `height` smallint(6) NOT NULL,
  `intended_width` smallint(6) NOT NULL,
  `intended_height` smallint(6) NOT NULL,
  `version` tinyint(4) NOT NULL DEFAULT '1',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`resolutionId`),
  KEY `userId` (`userId`),
  CONSTRAINT `resolution_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolution`
--

LOCK TABLES `resolution` WRITE;
/*!40000 ALTER TABLE `resolution` DISABLE KEYS */;
INSERT INTO `resolution` VALUES (1,'1080p HD Landscape',800,450,1920,1080,2,1,1),(2,'720p HD Landscape',800,450,1280,720,2,1,1),(3,'1080p HD Portrait',450,800,1080,1920,2,1,1),(4,'720p HD Portrait',450,800,720,1280,2,1,1),(5,'4k cinema',800,450,4096,2304,2,1,1),(6,'Common PC Monitor 4:3',800,600,1024,768,2,1,1),(7,'4k UHD Landscape',450,800,3840,2160,2,1,1),(8,'4k UHD Portrait',800,450,2160,3840,2,1,1);
/*!40000 ALTER TABLE `resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_report`
--

DROP TABLE IF EXISTS `saved_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_report` (
  `savedReportId` int(11) NOT NULL AUTO_INCREMENT,
  `saveAs` varchar(255) NOT NULL,
  `reportName` varchar(255) NOT NULL,
  `mediaId` int(11) NOT NULL,
  `reportScheduleId` int(11) NOT NULL,
  `generatedOn` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`savedReportId`),
  KEY `userId` (`userId`),
  KEY `mediaId` (`mediaId`),
  KEY `reportScheduleId` (`reportScheduleId`),
  CONSTRAINT `saved_report_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `saved_report_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `media` (`mediaId`),
  CONSTRAINT `saved_report_ibfk_3` FOREIGN KEY (`reportScheduleId`) REFERENCES `reportschedule` (`reportScheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_report`
--

LOCK TABLES `saved_report` WRITE;
/*!40000 ALTER TABLE `saved_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `eventId` int(11) NOT NULL AUTO_INCREMENT,
  `eventTypeId` int(11) NOT NULL,
  `campaignId` int(11) DEFAULT NULL,
  `commandId` int(11) DEFAULT NULL,
  `dayPartId` int(11) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL,
  `fromDt` bigint(20) DEFAULT NULL,
  `toDt` bigint(20) DEFAULT NULL,
  `is_priority` tinyint(4) NOT NULL,
  `displayOrder` int(11) NOT NULL DEFAULT '0',
  `lastRecurrenceWatermark` bigint(20) DEFAULT NULL,
  `syncTimezone` tinyint(4) NOT NULL DEFAULT '0',
  `recurrence_type` enum('Minute','Hour','Day','Week','Month','Year') DEFAULT NULL,
  `recurrence_detail` int(11) DEFAULT NULL,
  `recurrence_range` bigint(20) DEFAULT NULL,
  `recurrenceRepeatsOn` varchar(14) DEFAULT NULL,
  `syncEvent` int(11) NOT NULL DEFAULT '0',
  `recurrenceMonthlyRepeatsOn` tinyint(4) NOT NULL DEFAULT '0',
  `shareOfVoice` tinyint(4) DEFAULT NULL,
  `isGeoAware` tinyint(4) NOT NULL DEFAULT '0',
  `geoLocation` text,
  PRIMARY KEY (`eventId`),
  KEY `campaignId` (`campaignId`),
  KEY `userId` (`userId`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheduleexclusions`
--

DROP TABLE IF EXISTS `scheduleexclusions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scheduleexclusions` (
  `scheduleExclusionId` int(11) NOT NULL AUTO_INCREMENT,
  `eventId` int(11) NOT NULL,
  `fromDt` int(11) NOT NULL,
  `toDt` int(11) NOT NULL,
  PRIMARY KEY (`scheduleExclusionId`),
  KEY `eventId` (`eventId`),
  CONSTRAINT `scheduleexclusions_ibfk_1` FOREIGN KEY (`eventId`) REFERENCES `schedule` (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheduleexclusions`
--

LOCK TABLES `scheduleexclusions` WRITE;
/*!40000 ALTER TABLE `scheduleexclusions` DISABLE KEYS */;
/*!40000 ALTER TABLE `scheduleexclusions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulereminder`
--

DROP TABLE IF EXISTS `schedulereminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulereminder` (
  `scheduleReminderId` int(11) NOT NULL AUTO_INCREMENT,
  `eventId` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `option` int(11) NOT NULL,
  `reminderDt` int(11) NOT NULL,
  `lastReminderDt` int(11) NOT NULL,
  `isEmail` tinyint(4) NOT NULL,
  PRIMARY KEY (`scheduleReminderId`),
  KEY `eventId` (`eventId`),
  CONSTRAINT `schedulereminder_ibfk_1` FOREIGN KEY (`eventId`) REFERENCES `schedule` (`eventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulereminder`
--

LOCK TABLES `schedulereminder` WRITE;
/*!40000 ALTER TABLE `schedulereminder` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedulereminder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `session_id` varchar(160) NOT NULL,
  `session_data` longtext NOT NULL,
  `session_expiration` int(10) unsigned NOT NULL DEFAULT '0',
  `lastAccessed` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `isExpired` tinyint(4) NOT NULL DEFAULT '1',
  `userAgent` varchar(255) DEFAULT NULL,
  `remoteAddr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES ('a81ub60icr716cjgusjolulako','init|s:1:\"1\";csrfToken|s:40:\"32aa4fb0a0ebd4cc1a760cf2d8f071bfef3831e7\";slim.flash|a:0:{}userid|i:2;',1604524755,'2020-11-04 20:58:16',2,0,'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36','172.23.0.1');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `settingId` int(11) NOT NULL AUTO_INCREMENT,
  `setting` varchar(50) NOT NULL,
  `value` varchar(1000) NOT NULL,
  `userSee` tinyint(4) NOT NULL DEFAULT '1',
  `userChange` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`settingId`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'MEDIA_DEFAULT','private',1,1),(2,'LAYOUT_DEFAULT','private',1,1),(3,'defaultUsertype','User',1,1),(7,'userModule','module_user_general.php',0,0),(11,'defaultTimezone','Europe/London',1,1),(18,'mail_to','mail@yoursite.com',1,1),(19,'mail_from','mail@yoursite.com',1,1),(30,'audit','info',1,1),(33,'LIBRARY_LOCATION','/var/www/cms/library/',0,0),(34,'SERVER_KEY','H8lxGVSN',1,1),(35,'HELP_BASE','http://www.xibo.org.uk/manual/en/',1,1),(36,'PHONE_HOME','1',1,1),(37,'PHONE_HOME_KEY','',0,0),(38,'PHONE_HOME_URL','http://www.xibo.org.uk/stats/track.php',0,0),(39,'PHONE_HOME_DATE','0',0,0),(40,'SERVER_MODE','Test',1,1),(41,'MAINTENANCE_ENABLED','Protected',1,1),(42,'MAINTENANCE_EMAIL_ALERTS','1',1,1),(43,'MAINTENANCE_KEY','zAmDMgtqrkLvNmtJ',1,1),(44,'MAINTENANCE_LOG_MAXAGE','30',1,1),(45,'MAINTENANCE_STAT_MAXAGE','30',1,1),(46,'MAINTENANCE_ALERT_TOUT','12',1,1),(47,'SHOW_DISPLAY_AS_VNCLINK','',1,1),(48,'SHOW_DISPLAY_AS_VNC_TGT','_top',1,1),(49,'MAINTENANCE_ALWAYS_ALERT','0',1,1),(50,'SCHEDULE_LOOKAHEAD','1',1,0),(51,'REQUIRED_FILES_LOOKAHEAD','172800',1,1),(52,'REGION_OPTIONS_COLOURING','Media Colouring',1,1),(53,'LAYOUT_COPY_MEDIA_CHECKB','0',1,1),(54,'MAX_LICENSED_DISPLAYS','0',0,0),(55,'LIBRARY_MEDIA_UPDATEINALL_CHECKB','1',1,1),(56,'USER_PASSWORD_POLICY','',1,1),(57,'USER_PASSWORD_ERROR','',1,1),(58,'MODULE_CONFIG_LOCKED_CHECKB','0',0,0),(59,'LIBRARY_SIZE_LIMIT_KB','0',1,0),(60,'MONTHLY_XMDS_TRANSFER_LIMIT_KB','0',1,0),(61,'DEFAULT_LANGUAGE','en_GB',1,1),(62,'TRANSITION_CONFIG_LOCKED_CHECKB','0',1,0),(63,'GLOBAL_THEME_NAME','default',1,1),(64,'DEFAULT_LAT','51.504',1,1),(65,'DEFAULT_LONG','-0.104',1,1),(66,'SCHEDULE_WITH_VIEW_PERMISSION','0',1,1),(67,'SETTING_IMPORT_ENABLED','1',1,1),(68,'SETTING_LIBRARY_TIDY_ENABLED','1',1,1),(69,'SENDFILE_MODE','Apache',0,0),(70,'EMBEDDED_STATUS_WIDGET','',1,0),(71,'PROXY_HOST','',1,1),(72,'PROXY_PORT','0',1,1),(73,'PROXY_AUTH','',1,1),(74,'DATE_FORMAT','Y-m-d H:i',1,1),(75,'DETECT_LANGUAGE','1',1,1),(76,'DEFAULTS_IMPORTED','1',0,0),(77,'FORCE_HTTPS','0',1,1),(78,'ISSUE_STS','0',1,1),(79,'STS_TTL','600',1,1),(81,'CALENDAR_TYPE','Gregorian',1,1),(82,'DASHBOARD_LATEST_NEWS_ENABLED','1',1,1),(83,'LIBRARY_MEDIA_DELETEOLDVER_CHECKB','1',1,1),(84,'PROXY_EXCEPTIONS','',1,1),(85,'INSTANCE_SUSPENDED','0',0,0),(86,'INHERIT_PARENT_PERMISSIONS','1',1,1),(87,'XMR_ADDRESS','tcp://cms-xmr:50001',0,0),(88,'XMR_PUB_ADDRESS','tcp://cms.example.org:9505',1,1),(89,'CDN_URL','',0,0),(90,'ELEVATE_LOG_UNTIL','1604517685',1,1),(91,'RESTING_LOG_LEVEL','error',1,1),(92,'TASK_CONFIG_LOCKED_CHECKB','0',0,0),(93,'WHITELIST_LOAD_BALANCERS','',1,1),(94,'DEFAULT_LAYOUT','1',1,1),(95,'DISPLAY_PROFILE_STATS_DEFAULT','0',1,1),(96,'DISPLAY_PROFILE_CURRENT_LAYOUT_STATUS_ENABLED','1',1,1),(97,'DISPLAY_PROFILE_SCREENSHOT_INTERVAL_ENABLED','1',1,1),(98,'DISPLAY_PROFILE_SCREENSHOT_SIZE_DEFAULT','200',1,1),(99,'LATEST_NEWS_URL','http://xibo.org.uk/feed',0,0),(100,'DISPLAY_LOCK_NAME_TO_DEVICENAME','0',1,1),(101,'mail_from_name','',1,1),(102,'SCHEDULE_SHOW_LAYOUT_NAME','0',1,1),(103,'DEFAULT_USERGROUP','1',1,1),(104,'PASSWORD_REMINDER_ENABLED','Off',1,1),(105,'DISPLAY_AUTO_AUTH','0',0,0),(106,'EVENT_SYNC','0',0,0),(107,'DEFAULT_TRANSITION_DURATION','1000',1,1),(108,'LAYOUT_STATS_ENABLED_DEFAULT','0',1,1),(109,'DISPLAY_PROFILE_AGGREGATION_LEVEL_DEFAULT','Individual',1,1),(110,'MEDIA_STATS_ENABLED_DEFAULT','Inherit',1,1),(111,'WIDGET_STATS_ENABLED_DEFAULT','Inherit',1,1),(112,'NAVIGATION_MENU_POSITION','vertical',1,1),(113,'TWOFACTOR_ISSUER','',1,1),(114,'PLAYLIST_STATS_ENABLED_DEFAULT','Inherit',1,1),(115,'DEFAULT_RESIZE_LIMIT','6000',1,1),(116,'DEFAULT_RESIZE_THRESHOLD','1920',1,1),(117,'DEFAULT_CASCADE_PERMISSION_CHECKB','1',1,1),(118,'DEFAULT_TRANSITION_IN','fadeIn',1,1),(119,'DEFAULT_TRANSITION_OUT','fadeOut',1,1),(120,'DEFAULT_LAYOUT_AUTO_PUBLISH_CHECKB','0',1,1),(121,'QUICK_CHART_URL','http://cms-quickchart:3400',0,1),(122,'DEFAULT_TRANSITION_AUTO_APPLY','0',1,1);
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stat`
--

DROP TABLE IF EXISTS `stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stat` (
  `statId` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `statDate` int(11) NOT NULL,
  `scheduleId` int(11) NOT NULL,
  `displayId` int(11) NOT NULL,
  `campaignId` int(11) DEFAULT NULL,
  `layoutId` int(11) DEFAULT NULL,
  `mediaId` int(11) DEFAULT NULL,
  `widgetId` int(11) DEFAULT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `tag` varchar(254) DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `engagements` text,
  PRIMARY KEY (`statId`),
  KEY `statDate` (`statDate`),
  KEY `displayId` (`displayId`,`end`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stat`
--

LOCK TABLES `stat` WRITE;
/*!40000 ALTER TABLE `stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `stat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Published'),(2,'Draft'),(3,'Pending Approval');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `tagId` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL,
  `isSystem` int(11) NOT NULL DEFAULT '0',
  `options` text,
  `isRequired` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'template',1,NULL,0),(2,'background',1,NULL,0),(3,'thumbnail',1,NULL,0),(4,'imported',0,NULL,0),(5,'imported',0,NULL,0),(6,'imported',0,NULL,0),(7,'a',0,NULL,0),(8,'b',0,NULL,0);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `taskId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(254) NOT NULL,
  `class` varchar(254) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '2',
  `pid` int(11) DEFAULT NULL,
  `options` text,
  `schedule` varchar(254) NOT NULL,
  `lastRunDt` int(11) NOT NULL DEFAULT '0',
  `lastRunStartDt` int(11) DEFAULT NULL,
  `lastRunMessage` varchar(255) DEFAULT NULL,
  `lastRunStatus` tinyint(4) NOT NULL DEFAULT '0',
  `lastRunDuration` smallint(6) NOT NULL DEFAULT '0',
  `lastRunExitCode` smallint(6) NOT NULL DEFAULT '0',
  `isActive` tinyint(4) NOT NULL,
  `runNow` tinyint(4) NOT NULL DEFAULT '0',
  `configFile` varchar(254) NOT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Daily Maintenance','\\Xibo\\XTR\\MaintenanceDailyTask',2,0,'[]','0 0 * * * *',1604513881,1604513880,'# Daily Maintenance\n\n## Import Layouts\n - Done.\n\n## Tidy Logs\n - Done.\n\n## Tidy Cache\n - Done.\n\n## Purge Expired API Tokens\n - Done.\n\n',4,1,0,1,0,'/tasks/maintenance-daily.task'),(2,'Regular Maintenance','\\Xibo\\XTR\\MaintenanceRegularTask',2,0,'[]','*/5 * * * * *',1604523300,1604523300,'# Wake On LAN\n - Done\n\n## Playlist Duration Updates\n - Done\n\n## Build Layouts\n - Done\n\n## Tidy Library\n - Done\n\n## Publishing layouts with set publish dates\n - Done\n\n',4,0,0,1,0,'/tasks/maintenance-regular.task'),(3,'Email Notifications','\\Xibo\\XTR\\EmailNotificationsTask',2,0,'[]','*/5 * * * * *',1604523300,1604523300,'# Email Notifications\n\n## Email Notifications\n - Done\n',4,0,0,1,0,'/tasks/email-notifications.task'),(4,'Stats Archive','\\Xibo\\XTR\\StatsArchiveTask',2,0,'{\"periodSizeInDays\":\"7\",\"maxPeriods\":\"4\",\"archiveStats\":\"On\"}','0 0 * * Mon',1604513881,1604513881,'# Stats Archive\n\n - Done\n\n## Tidy Stats\n',4,0,0,1,0,'/tasks/stats-archiver.task'),(5,'Remove old Notifications','\\Xibo\\XTR\\NotificationTidyTask',2,0,'{\"maxAgeDays\":\"7\",\"systemOnly\":\"1\",\"readOnly\":\"0\"}','15 0 * * *',1604513881,1604513881,'# Notification Tidy\n\nDone\n\n',4,0,0,1,0,'/tasks/notification-tidy.task'),(6,'Fetch Remote DataSets','\\Xibo\\XTR\\RemoteDataSetFetchTask',2,0,'[]','30 * * * * *',1604521800,1604521800,'# Fetching Remote-DataSets\n\nDone\n',4,0,0,1,0,'/tasks/remote-dataset.task'),(7,'Drop Player Cache','\\Xibo\\XTR\\DropPlayerCacheTask',2,NULL,'[]','0 0 1 1 *',0,NULL,NULL,0,0,0,0,0,'/tasks/drop-player-cache.task'),(8,'Sync Dynamic Playlists','\\Xibo\\XTR\\DynamicPlaylistSyncTask',2,0,'[]','* * * * * *',1604523480,1604523480,'No library media/playlist updates since we last ran\n',4,0,0,1,0,'/tasks/dynamic-playlist-sync.task'),(9,'Widget Sync','\\Xibo\\XTR\\WidgetSyncTask',2,0,'[]','*/3 * * * *',1604523420,1604523420,'Synced 0 widgets across 0 layouts.\n',4,0,0,1,0,'/tasks/widget-sync.task'),(10,'Report Schedule','\\Xibo\\XTR\\ReportScheduleTask',2,0,'[]','*/5 * * * * *',1604523300,1604523300,'# Report schedule\n\n',4,0,0,1,0,'/tasks/report-schedule.task'),(11,'Statistics Migration','\\Xibo\\XTR\\StatsMigrationTask',2,0,'{\"killSwitch\":\"0\",\"numberOfRecords\":\"5000\",\"numberOfLoops\":\"10\",\"pauseBetweenLoops\":\"1\",\"optimiseOnComplete\":\"1\"}','*/10 * * * * *',1604513881,1604513881,'## Moving from stat_archive to stat (MySQL)\nDisabling Stats Archive Task.\n- Initial watermark is 1\n\n# End of records.\n- Dropping stat_archive.\nDone.\n\n# Disabling task.\nDone.\n\nEnabling Stats Archive Task.\n',4,0,0,0,0,'/tasks/stats-migration.task'),(12,'Schedule Reminder','\\Xibo\\XTR\\ScheduleReminderTask',2,0,'[]','*/5 * * * * *',1604523300,1604523300,'\"continue\" targeting switch is equivalent to \"break\". Did you mean to use \"continue 2\"?',3,0,0,1,0,'/tasks/schedule-reminder.task'),(13,'Image Processing','\\Xibo\\XTR\\ImageProcessingTask',2,0,'[]','*/5 * * * * *',1604523300,1604523300,'# Image Processing\n\nReleased and modified image count. 0\n',4,0,0,1,0,'/tasks/image-processing.task');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transition`
--

DROP TABLE IF EXISTS `transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transition` (
  `transitionId` int(11) NOT NULL AUTO_INCREMENT,
  `transition` varchar(254) NOT NULL,
  `code` varchar(254) NOT NULL,
  `hasDuration` tinyint(4) NOT NULL,
  `hasDirection` tinyint(4) NOT NULL,
  `availableAsIn` tinyint(4) NOT NULL,
  `availableAsOut` tinyint(4) NOT NULL,
  PRIMARY KEY (`transitionId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transition`
--

LOCK TABLES `transition` WRITE;
/*!40000 ALTER TABLE `transition` DISABLE KEYS */;
INSERT INTO `transition` VALUES (1,'Fade In','fadeIn',1,0,1,0),(2,'Fade Out','fadeOut',1,0,0,1),(3,'Fly','fly',1,1,1,1);
/*!40000 ALTER TABLE `transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeId` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `lastAccessed` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `homePageId` tinyint(4) NOT NULL DEFAULT '1',
  `retired` tinyint(4) NOT NULL DEFAULT '0',
  `csprng` tinyint(4) NOT NULL DEFAULT '0',
  `newUserWizard` tinyint(4) NOT NULL DEFAULT '0',
  `firstName` varchar(254) DEFAULT NULL,
  `lastName` varchar(254) DEFAULT NULL,
  `phone` varchar(254) DEFAULT NULL,
  `ref1` varchar(254) DEFAULT NULL,
  `ref2` varchar(254) DEFAULT NULL,
  `ref3` varchar(254) DEFAULT NULL,
  `ref4` varchar(254) DEFAULT NULL,
  `ref5` varchar(254) DEFAULT NULL,
  `isPasswordChangeRequired` tinyint(4) NOT NULL DEFAULT '0',
  `twoFactorTypeId` int(11) NOT NULL DEFAULT '0',
  `twoFactorSecret` text,
  `twoFactorRecoveryCodes` text,
  `showContentFrom` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`userId`),
  KEY `userTypeId` (`userTypeId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userTypeId`) REFERENCES `usertype` (`userTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'xibo_admin','$2y$10$ZNRVp5XdSJ.0JUGkjPsGzO.lSRWkmQPSD8zPUbNCnG1mDHK5L8O0S','2020-11-04 18:19:54',NULL,29,0,2,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1),(2,1,'dispway','$2y$10$2eu0hMRsJCDmBGIHemdGsOpw.iFsgPIvFvWfWcFDoF58fdx/ShcRG','2020-11-04 20:55:08',NULL,1,0,2,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useroption`
--

DROP TABLE IF EXISTS `useroption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useroption` (
  `userId` int(11) NOT NULL,
  `option` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`userId`,`option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useroption`
--

LOCK TABLES `useroption` WRITE;
/*!40000 ALTER TABLE `useroption` DISABLE KEYS */;
INSERT INTO `useroption` VALUES (1,'displaysGrid','{\"time\":1604513951598,\"start\":0,\"length\":10,\"order\":[[1,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(1,'statusDashboardDisplays','{\"time\":1604513951583,\"start\":0,\"length\":10,\"order\":[[0,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(1,'userGrid','{\"time\":1604513969612,\"start\":0,\"length\":10,\"order\":[[0,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(2,'applicationsGrid','{\"time\":1604523315817,\"start\":0,\"length\":10,\"order\":[[0,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(2,'displayGrid','{\"time\":1604514088688,\"start\":0,\"length\":10,\"order\":[[1,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(2,'layoutGrid','{\"time\":1604515167875,\"start\":0,\"length\":10,\"order\":[[1,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(2,'libraryGrid','{\"time\":1604515206353,\"start\":0,\"length\":10,\"order\":[[1,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}'),(2,'toolbar','{\"libraryContent\":[{\"name\":\"Library Search 0\",\"filters\":{\"name\":{\"name\":\"Name\",\"value\":\"\"},\"tag\":{\"name\":\"Tag\",\"value\":\"\"},\"type\":{\"name\":\"Type\",\"values\":[{\"type\":\"audio\",\"name\":\"Audio\"},{\"type\":\"flash\",\"name\":\"Flash\"},{\"type\":\"htmlpackage\",\"name\":\"HTML Package\"},{\"type\":\"image\",\"name\":\"Image\"},{\"type\":\"pdf\",\"name\":\"PDF\"},{\"type\":\"powerpoint\",\"name\":\"PowerPoint\"},{\"type\":\"video\",\"name\":\"Video\"}]},\"owner\":{\"name\":\"Owner\",\"values\":[{\"userId\":\"2\",\"name\":\"dispway\"},{\"userId\":\"1\",\"name\":\"xibo_admin\"}]}}}],\"openedMenu\":2,\"displayTooltips\":1,\"favouriteModules\":[]}'),(2,'userGrid','{\"time\":1604514090388,\"start\":0,\"length\":10,\"order\":[[0,\"asc\"]],\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true},\"columns\":[{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":false,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}},{\"visible\":true,\"search\":{\"search\":\"\",\"smart\":true,\"regex\":false,\"caseInsensitive\":true}}]}');
/*!40000 ALTER TABLE `useroption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertype` (
  `userTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `userType` varchar(16) NOT NULL,
  PRIMARY KEY (`userTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES (1,'Super Admin'),(2,'Group Admin'),(3,'User'),(4,'DOOH');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget`
--

DROP TABLE IF EXISTS `widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widget` (
  `widgetId` int(11) NOT NULL AUTO_INCREMENT,
  `playlistId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL,
  `displayOrder` int(11) NOT NULL,
  `calculatedDuration` int(11) NOT NULL,
  `useDuration` tinyint(4) NOT NULL DEFAULT '1',
  `fromDt` int(11) NOT NULL,
  `toDt` int(11) NOT NULL,
  `createdDt` int(11) NOT NULL DEFAULT '0',
  `modifiedDt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`widgetId`),
  KEY `playlistId` (`playlistId`),
  KEY `ownerId` (`ownerId`),
  CONSTRAINT `widget_ibfk_1` FOREIGN KEY (`playlistId`) REFERENCES `playlist` (`playlistId`),
  CONSTRAINT `widget_ibfk_2` FOREIGN KEY (`ownerId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget`
--

LOCK TABLES `widget` WRITE;
/*!40000 ALTER TABLE `widget` DISABLE KEYS */;
INSERT INTO `widget` VALUES (1,1,1,'image',10,1,60,1,0,2147483647,1604513881,1604514174),(2,2,1,'text',10,1,10,1,0,2147483647,1604513881,1604513881),(3,3,1,'spacer',5,1,5,1,0,2147483647,1604513881,1604513881),(4,3,1,'text',20,2,20,1,0,2147483647,1604513881,1604513881),(5,4,1,'clock',1,1,5,0,0,2147483647,1604513881,1604513881);
/*!40000 ALTER TABLE `widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgethistory`
--

DROP TABLE IF EXISTS `widgethistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgethistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutHistoryId` int(11) NOT NULL,
  `widgetId` int(11) NOT NULL,
  `mediaId` int(11) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `layoutHistoryId` (`layoutHistoryId`),
  CONSTRAINT `widgethistory_ibfk_1` FOREIGN KEY (`layoutHistoryId`) REFERENCES `layouthistory` (`layoutHistoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgethistory`
--

LOCK TABLES `widgethistory` WRITE;
/*!40000 ALTER TABLE `widgethistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `widgethistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgetoption`
--

DROP TABLE IF EXISTS `widgetoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgetoption` (
  `widgetId` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `option` varchar(254) NOT NULL,
  `value` text,
  PRIMARY KEY (`widgetId`,`type`,`option`),
  CONSTRAINT `widgetoption_ibfk_1` FOREIGN KEY (`widgetId`) REFERENCES `widget` (`widgetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgetoption`
--

LOCK TABLES `widgetoption` WRITE;
/*!40000 ALTER TABLE `widgetoption` DISABLE KEYS */;
INSERT INTO `widgetoption` VALUES (1,'attrib','align','center'),(1,'attrib','enableStat','Inherit'),(1,'attrib','name','Company Logo'),(1,'attrib','scaleType','center'),(1,'attrib','uri','1.png'),(1,'attrib','valign','middle'),(2,'attrib','effect','none'),(2,'attrib','enableStat','Inherit'),(2,'attrib','lowerLimit','0'),(2,'attrib','name','Header Text'),(2,'attrib','ta_text_advanced','0'),(2,'attrib','upperLimit','0'),(2,'attrib','xmds','1'),(2,'cdata','text','<p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size: 48px;\">powered by...</span></span></p>\n\n<p style=\"text-align: center;\"><strong><span style=\"font-size:96px;\"><span style=\"color:#FFFFFF;\">Xibo Digital Signage</span></span></strong></p>\n'),(3,'attrib','enableStat','Inherit'),(3,'attrib','lowerLimit','0'),(3,'attrib','upperLimit','0'),(4,'attrib','effect','fade'),(4,'attrib','enableStat','Inherit'),(4,'attrib','lowerLimit','0'),(4,'attrib','name','Explainer Text'),(4,'attrib','speed','6000'),(4,'attrib','ta_text_advanced','0'),(4,'attrib','upperLimit','0'),(4,'attrib','xmds','1'),(4,'cdata','text','<p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size: 48px;\">This is the Default Layout to assign to displays</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size: 48px;\">It will be shown when nothing else is scheduled</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size: 48px;\"><span style=\"color:#FFFFFF;\">Edit this Default Layout to personalise or create your own to assign to </span><span style=\"color: #fcfce5;\">your displays!</span></span></p>\n\n<p>&nbsp;</p>\n'),(5,'attrib','clockFace','TwentyFourHourClock'),(5,'attrib','clockTypeId','2'),(5,'attrib','enableStat','Inherit'),(5,'attrib','lowerLimit','0'),(5,'attrib','offset','0'),(5,'attrib','showSeconds','1'),(5,'attrib','ta_text_advanced','0'),(5,'attrib','theme','1'),(5,'attrib','upperLimit','0'),(5,'cdata','format','<p style=\"text-align: justify;\"><span style=\"color:#FFFFFF;\"><span style=\"font-size: 48px;\">[HH:mm]</span></span></p>\n');
/*!40000 ALTER TABLE `widgetoption` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-04 20:58:20