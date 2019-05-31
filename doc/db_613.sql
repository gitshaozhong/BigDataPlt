-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: 127.0.0.1
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

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
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_cron_triggers` VALUES ('RenrenScheduler','TASK_1','DEFAULT','0 0/30 * * * ?','Asia/Shanghai'),('RenrenScheduler','TASK_2','DEFAULT','0 0/30 * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
INSERT INTO `qrtz_job_details` VALUES ('RenrenScheduler','TASK_1','DEFAULT',NULL,'io.renren.utils.ScheduleJob','0','0','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0\"io.renren.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0X���0xt\00 0/30 * * * ?sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0testt\0renrent\0鏈夊弬鏁版祴璇?sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0\0\0\0\0x\0'),('RenrenScheduler','TASK_2','DEFAULT',NULL,'io.renren.utils.ScheduleJob','0','0','0','0','��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0\"io.renren.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0X�w�`xt\00 0/30 * * * ?sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0test2pt\0鏃犲弬鏁版祴璇?sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0\0\0\0x\0');
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('RenrenScheduler','STATE_ACCESS'),('RenrenScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('RenrenScheduler','DESKTOP-DJNO6211528514725797',1528532102955,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
INSERT INTO `qrtz_triggers` VALUES ('RenrenScheduler','TASK_1','DEFAULT','TASK_1','DEFAULT',NULL,1528533000000,1528531200000,5,'WAITING','CRON',1516158777000,0,NULL,2,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0\"io.renren.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0X���0xt\00 0/30 * * * ?sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0testt\0renrent\0鏈夊弬鏁版祴璇?sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0\0\0\0\0x\0'),('RenrenScheduler','TASK_2','DEFAULT','TASK_2','DEFAULT',NULL,1516159800000,-1,5,'PAUSED','CRON',1516158777000,0,NULL,2,'��\0sr\0org.quartz.JobDataMap���迩��\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�����](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap�.�(v\n�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0\"io.renren.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0testTasksr\0java.util.Datehj�KYt\0\0xpw\0\0X�w�`xt\00 0/30 * * * ?sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0t\0test2pt\0鏃犲弬鏁版祴璇?sr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0\0\0\0x\0');
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job`
--

DROP TABLE IF EXISTS `schedule_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '浠诲姟id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean鍚嶇О',
  `method_name` varchar(100) DEFAULT NULL COMMENT '鏂规硶鍚?',
  `params` varchar(2000) DEFAULT NULL COMMENT '鍙傛暟',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron琛ㄨ揪寮?',
  `status` tinyint(4) DEFAULT NULL COMMENT '浠诲姟鐘舵??',
  `remark` varchar(255) DEFAULT NULL COMMENT '澶囨敞',
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='瀹氭椂浠诲姟';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job`
--

LOCK TABLES `schedule_job` WRITE;
/*!40000 ALTER TABLE `schedule_job` DISABLE KEYS */;
INSERT INTO `schedule_job` VALUES (1,'testTask','test','renren','0 0/30 * * * ?',0,'鏈夊弬鏁版祴璇?','2016-12-01 23:16:46'),(2,'testTask','test2',NULL,'0 0/30 * * * ?',1,'鏃犲弬鏁版祴璇?','2016-12-03 14:55:56');
/*!40000 ALTER TABLE `schedule_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job_log`
--

DROP TABLE IF EXISTS `schedule_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '浠诲姟鏃ュ織id',
  `job_id` bigint(20) NOT NULL COMMENT '浠诲姟id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean鍚嶇О',
  `method_name` varchar(100) DEFAULT NULL COMMENT '鏂规硶鍚?',
  `params` varchar(2000) DEFAULT NULL COMMENT '鍙傛暟',
  `status` tinyint(4) NOT NULL COMMENT '浠诲姟鐘舵??    0锛氭垚鍔?    1锛氬け璐?',
  `error` varchar(2000) DEFAULT NULL COMMENT '澶辫触淇℃伅',
  `times` int(11) NOT NULL COMMENT '鑰楁椂(鍗曚綅锛氭?绉?)',
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COMMENT='瀹氭椂浠诲姟鏃ュ織';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job_log`
--

LOCK TABLES `schedule_job_log` WRITE;
/*!40000 ALTER TABLE `schedule_job_log` DISABLE KEYS */;
INSERT INTO `schedule_job_log` VALUES (1,1,'testTask','test','renren',0,NULL,1031,'2018-01-17 11:30:00'),(2,1,'testTask','test','renren',0,NULL,1043,'2018-01-17 15:00:00'),(3,1,'testTask','test','renren',0,NULL,1008,'2018-01-17 15:30:00'),(4,1,'testTask','test','renren',0,NULL,1007,'2018-01-17 16:00:00'),(5,1,'testTask','test','renren',0,NULL,1037,'2018-01-22 16:00:00'),(6,1,'testTask','test','renren',0,NULL,1013,'2018-01-22 16:30:00'),(7,1,'testTask','test','renren',0,NULL,1005,'2018-01-22 17:00:00'),(8,1,'testTask','test','renren',0,NULL,1014,'2018-01-22 17:30:00'),(9,1,'testTask','test','renren',0,NULL,1010,'2018-01-22 19:00:00'),(10,1,'testTask','test','renren',0,NULL,1013,'2018-01-22 19:30:00'),(11,1,'testTask','test','renren',0,NULL,1010,'2018-01-22 20:00:00'),(12,1,'testTask','test','renren',0,NULL,1010,'2018-01-22 21:00:00'),(13,1,'testTask','test','renren',0,NULL,1017,'2018-01-22 21:30:00'),(14,1,'testTask','test','renren',0,NULL,1010,'2018-01-22 22:00:00'),(15,1,'testTask','test','renren',0,NULL,1032,'2018-01-23 09:00:00'),(16,1,'testTask','test','renren',0,NULL,1004,'2018-01-23 09:30:00'),(17,1,'testTask','test','renren',0,NULL,1007,'2018-01-23 10:00:00'),(18,1,'testTask','test','renren',0,NULL,1005,'2018-01-23 10:30:00'),(19,1,'testTask','test','renren',0,NULL,1009,'2018-01-23 11:00:00'),(20,1,'testTask','test','renren',0,NULL,1008,'2018-01-23 11:30:00'),(21,1,'testTask','test','renren',0,NULL,1007,'2018-01-23 14:30:00'),(22,1,'testTask','test','renren',0,NULL,1011,'2018-01-23 15:00:00'),(23,1,'testTask','test','renren',0,NULL,1007,'2018-01-23 15:30:00'),(24,1,'testTask','test','renren',0,NULL,1012,'2018-01-23 16:00:00'),(25,1,'testTask','test','renren',0,NULL,1009,'2018-01-23 16:30:00'),(26,1,'testTask','test','renren',0,NULL,1012,'2018-01-23 17:00:00'),(27,1,'testTask','test','renren',0,NULL,1026,'2018-01-23 17:30:00'),(28,1,'testTask','test','renren',0,NULL,1006,'2018-01-23 21:00:00'),(29,1,'testTask','test','renren',0,NULL,1017,'2018-01-23 21:30:00'),(30,1,'testTask','test','renren',0,NULL,1056,'2018-01-24 13:00:00'),(31,1,'testTask','test','renren',0,NULL,1027,'2018-01-24 13:30:00'),(32,1,'testTask','test','renren',0,NULL,1008,'2018-01-24 14:00:00'),(33,1,'testTask','test','renren',0,NULL,1005,'2018-01-24 14:30:00'),(34,1,'testTask','test','renren',0,NULL,1010,'2018-01-24 15:00:00'),(35,1,'testTask','test','renren',0,NULL,1014,'2018-01-24 15:30:00'),(36,1,'testTask','test','renren',0,NULL,1007,'2018-01-24 16:00:00'),(37,1,'testTask','test','renren',0,NULL,1015,'2018-01-24 16:30:00'),(38,1,'testTask','test','renren',0,NULL,1009,'2018-01-24 17:00:00'),(39,1,'testTask','test','renren',0,NULL,1036,'2018-01-25 16:30:00'),(40,1,'testTask','test','renren',0,NULL,1015,'2018-01-25 17:00:00'),(41,1,'testTask','test','renren',0,NULL,1010,'2018-01-25 17:30:00'),(42,1,'testTask','test','renren',0,NULL,1040,'2018-01-25 20:30:00'),(43,1,'testTask','test','renren',0,NULL,1010,'2018-01-25 21:00:00'),(44,1,'testTask','test','renren',0,NULL,1013,'2018-01-25 21:30:00'),(45,1,'testTask','test','renren',0,NULL,1011,'2018-01-25 23:00:00'),(46,1,'testTask','test','renren',0,NULL,1013,'2018-01-25 23:30:00'),(47,1,'testTask','test','renren',0,NULL,1027,'2018-01-26 00:00:00'),(48,1,'testTask','test','renren',0,NULL,1013,'2018-01-26 00:30:00'),(49,1,'testTask','test','renren',0,NULL,1013,'2018-01-26 01:00:00'),(50,1,'testTask','test','renren',0,NULL,1041,'2018-01-26 11:00:00'),(51,1,'testTask','test','renren',0,NULL,1013,'2018-01-26 11:30:11'),(52,1,'testTask','test','renren',0,NULL,1012,'2018-01-26 12:00:00'),(53,1,'testTask','test','renren',0,NULL,1008,'2018-01-26 14:30:00'),(54,1,'testTask','test','renren',0,NULL,1005,'2018-01-26 15:00:00'),(55,1,'testTask','test','renren',0,NULL,1006,'2018-01-26 15:30:00'),(56,1,'testTask','test','renren',0,NULL,1006,'2018-01-26 16:00:00'),(57,1,'testTask','test','renren',0,NULL,1010,'2018-01-26 16:30:00'),(58,1,'testTask','test','renren',0,NULL,1013,'2018-01-29 09:30:00'),(59,1,'testTask','test','renren',0,NULL,1009,'2018-01-29 10:00:00'),(60,1,'testTask','test','renren',0,NULL,1005,'2018-01-29 10:30:00'),(61,1,'testTask','test','renren',0,NULL,1002,'2018-01-29 11:00:00'),(62,1,'testTask','test','renren',0,NULL,1008,'2018-01-29 11:30:00'),(63,1,'testTask','test','renren',0,NULL,1003,'2018-01-29 13:00:00'),(64,1,'testTask','test','renren',0,NULL,1005,'2018-01-29 13:30:00'),(65,1,'testTask','test','renren',0,NULL,1005,'2018-01-29 14:00:00'),(66,1,'testTask','test','renren',0,NULL,1006,'2018-01-29 14:30:00'),(67,1,'testTask','test','renren',0,NULL,1003,'2018-01-29 15:00:00'),(68,1,'testTask','test','renren',0,NULL,1005,'2018-01-29 15:30:00'),(69,1,'testTask','test','renren',0,NULL,1004,'2018-01-29 16:00:00'),(70,1,'testTask','test','renren',0,NULL,1005,'2018-01-29 16:30:00'),(71,1,'testTask','test','renren',0,NULL,1006,'2018-01-29 17:00:00'),(72,1,'testTask','test','renren',0,NULL,1013,'2018-01-30 10:30:00'),(73,1,'testTask','test','renren',0,NULL,1013,'2018-01-31 14:00:00'),(74,1,'testTask','test','renren',0,NULL,1023,'2018-01-31 14:30:00'),(75,1,'testTask','test','renren',0,NULL,1012,'2018-01-31 15:00:00'),(76,1,'testTask','test','renren',0,NULL,1022,'2018-01-31 15:30:00'),(77,1,'testTask','test','renren',0,NULL,1011,'2018-01-31 16:00:00'),(78,1,'testTask','test','renren',0,NULL,1016,'2018-01-31 16:30:00'),(79,1,'testTask','test','renren',0,NULL,1013,'2018-02-01 09:00:00'),(80,1,'testTask','test','renren',0,NULL,1008,'2018-02-01 09:30:00'),(81,1,'testTask','test','renren',0,NULL,1003,'2018-02-01 10:00:00'),(82,1,'testTask','test','renren',0,NULL,1005,'2018-02-01 10:30:00'),(83,1,'testTask','test','renren',0,NULL,1003,'2018-02-01 11:00:00'),(84,1,'testTask','test','renren',0,NULL,1006,'2018-02-01 11:30:00'),(85,1,'testTask','test','renren',0,NULL,1003,'2018-02-01 12:00:00'),(86,1,'testTask','test','renren',0,NULL,1006,'2018-02-01 12:30:00'),(87,1,'testTask','test','renren',0,NULL,1003,'2018-02-01 13:30:00'),(88,1,'testTask','test','renren',0,NULL,1008,'2018-02-01 14:00:00'),(89,1,'testTask','test','renren',0,NULL,1004,'2018-02-01 14:30:00'),(90,1,'testTask','test','renren',0,NULL,1014,'2018-02-01 15:00:00'),(91,1,'testTask','test','renren',0,NULL,1003,'2018-02-01 15:30:00'),(92,1,'testTask','test','renren',0,NULL,1008,'2018-02-01 16:00:00'),(93,1,'testTask','test','renren',0,NULL,1003,'2018-02-01 16:30:00'),(94,1,'testTask','test','renren',0,NULL,1005,'2018-02-01 17:00:00'),(95,1,'testTask','test','renren',0,NULL,1087,'2018-02-01 17:30:00'),(96,1,'testTask','test','renren',0,NULL,1011,'2018-02-01 18:00:00'),(97,1,'testTask','test','renren',0,NULL,1015,'2018-02-01 18:30:00'),(98,1,'testTask','test','renren',0,NULL,1009,'2018-02-01 19:00:00'),(99,1,'testTask','test','renren',0,NULL,1006,'2018-02-01 19:30:00'),(100,1,'testTask','test','renren',0,NULL,1003,'2018-02-01 21:30:00'),(101,1,'testTask','test','renren',0,NULL,1006,'2018-02-01 22:00:00'),(102,1,'testTask','test','renren',0,NULL,1004,'2018-02-01 22:30:00'),(103,1,'testTask','test','renren',0,NULL,1004,'2018-02-01 23:00:00'),(104,1,'testTask','test','renren',0,NULL,1021,'2018-02-02 09:30:00'),(105,1,'testTask','test','renren',0,NULL,1013,'2018-03-07 21:00:00'),(106,1,'testTask','test','renren',0,NULL,1015,'2018-03-07 22:30:00'),(107,1,'testTask','test','renren',0,NULL,1044,'2018-03-08 08:30:00'),(108,1,'testTask','test','renren',0,NULL,1000,'2018-03-08 09:00:00'),(109,1,'testTask','test','renren',0,NULL,1007,'2018-03-08 09:30:00'),(110,1,'testTask','test','renren',0,NULL,1014,'2018-03-08 10:00:00'),(111,1,'testTask','test','renren',0,NULL,1003,'2018-03-08 10:30:00'),(112,1,'testTask','test','renren',0,NULL,1009,'2018-03-08 11:00:00'),(113,1,'testTask','test','renren',0,NULL,1014,'2018-03-08 11:30:00'),(114,1,'testTask','test','renren',0,NULL,1008,'2018-03-08 12:00:00'),(115,1,'testTask','test','renren',0,NULL,1015,'2018-03-15 09:00:00'),(116,1,'testTask','test','renren',0,NULL,1005,'2018-03-15 09:30:00'),(117,1,'testTask','test','renren',0,NULL,1011,'2018-03-15 10:00:00'),(118,1,'testTask','test','renren',0,NULL,1006,'2018-03-15 10:30:00'),(119,1,'testTask','test','renren',0,NULL,1006,'2018-03-15 11:00:00'),(120,1,'testTask','test','renren',0,NULL,1000,'2018-03-15 11:30:00'),(121,1,'testTask','test','renren',0,NULL,1036,'2018-03-15 14:30:00'),(122,1,'testTask','test','renren',0,NULL,1009,'2018-03-15 15:00:00'),(123,1,'testTask','test','renren',0,NULL,1015,'2018-03-15 15:30:00'),(124,1,'testTask','test','renren',0,NULL,1008,'2018-03-15 16:00:00'),(125,1,'testTask','test','renren',0,NULL,1009,'2018-03-15 16:30:00'),(126,1,'testTask','test','renren',0,NULL,1005,'2018-03-15 17:00:00'),(127,1,'testTask','test','renren',0,NULL,1009,'2018-03-15 17:30:00'),(128,1,'testTask','test','renren',0,NULL,1009,'2018-03-28 09:00:00'),(129,1,'testTask','test','renren',0,NULL,1045,'2018-04-11 14:30:00'),(130,1,'testTask','test','renren',0,NULL,1016,'2018-04-25 10:30:00'),(131,1,'testTask','test','renren',0,NULL,1008,'2018-04-25 11:00:00'),(132,1,'testTask','test','renren',0,NULL,1043,'2018-04-25 17:30:00'),(133,1,'testTask','test','renren',0,NULL,1014,'2018-04-25 18:00:00'),(134,1,'testTask','test','renren',0,NULL,1010,'2018-04-25 18:30:00'),(135,1,'testTask','test','renren',0,NULL,1027,'2018-05-01 21:30:00'),(136,1,'testTask','test','renren',0,NULL,1008,'2018-05-01 22:00:00'),(137,1,'testTask','test','renren',0,NULL,1007,'2018-05-01 22:30:00'),(138,1,'testTask','test','renren',0,NULL,1093,'2018-05-10 09:30:00'),(139,1,'testTask','test','renren',0,NULL,1011,'2018-05-10 10:00:00'),(140,1,'testTask','test','renren',0,NULL,1012,'2018-05-13 22:00:00'),(141,1,'testTask','test','renren',0,NULL,1018,'2018-05-14 21:30:00'),(142,1,'testTask','test','renren',0,NULL,1019,'2018-05-16 09:00:00'),(143,1,'testTask','test','renren',0,NULL,1014,'2018-05-16 10:30:00'),(144,1,'testTask','test','renren',0,NULL,1009,'2018-05-16 11:00:00'),(145,1,'testTask','test','renren',0,NULL,1002,'2018-05-16 11:30:00'),(146,1,'testTask','test','renren',0,NULL,1006,'2018-05-16 14:30:00'),(147,1,'testTask','test','renren',0,NULL,1010,'2018-05-16 15:00:00'),(148,1,'testTask','test','renren',0,NULL,1009,'2018-05-16 15:30:00'),(149,1,'testTask','test','renren',0,NULL,1016,'2018-05-16 16:00:00'),(150,1,'testTask','test','renren',0,NULL,1009,'2018-05-16 16:30:00'),(151,1,'testTask','test','renren',0,NULL,1015,'2018-05-30 13:00:00'),(152,1,'testTask','test','renren',0,NULL,1007,'2018-05-30 13:30:00'),(153,1,'testTask','test','renren',0,NULL,1014,'2018-05-30 14:00:00'),(154,1,'testTask','test','renren',0,NULL,1010,'2018-05-30 14:30:00'),(155,1,'testTask','test','renren',0,NULL,1006,'2018-05-30 15:00:00'),(156,1,'testTask','test','renren',0,NULL,1006,'2018-05-30 15:30:00'),(157,1,'testTask','test','renren',0,NULL,1008,'2018-05-30 16:00:00'),(158,1,'testTask','test','renren',0,NULL,1004,'2018-05-30 16:30:00'),(159,1,'testTask','test','renren',0,NULL,1007,'2018-05-30 17:00:00'),(160,1,'testTask','test','renren',0,NULL,1054,'2018-05-31 14:00:00'),(161,1,'testTask','test','renren',0,NULL,1016,'2018-05-31 14:30:00'),(162,1,'testTask','test','renren',0,NULL,1008,'2018-05-31 15:00:00'),(163,1,'testTask','test','renren',0,NULL,1007,'2018-05-31 15:30:00'),(164,1,'testTask','test','renren',0,NULL,1008,'2018-05-31 16:00:00'),(165,1,'testTask','test','renren',0,NULL,1000,'2018-05-31 16:30:00'),(166,1,'testTask','test','renren',0,NULL,1009,'2018-05-31 17:00:00'),(167,1,'testTask','test','renren',0,NULL,1007,'2018-05-31 17:30:00'),(168,1,'testTask','test','renren',0,NULL,1010,'2018-05-31 18:00:00'),(169,1,'testTask','test','renren',0,NULL,1015,'2018-05-31 18:30:00'),(170,1,'testTask','test','renren',0,NULL,1000,'2018-05-31 19:00:00'),(171,1,'testTask','test','renren',0,NULL,1004,'2018-05-31 19:30:00'),(172,1,'testTask','test','renren',0,NULL,1018,'2018-06-09 11:30:00'),(173,1,'testTask','test','renren',0,NULL,1000,'2018-06-09 12:00:00'),(174,1,'testTask','test','renren',0,NULL,1015,'2018-06-09 12:30:00'),(175,1,'testTask','test','renren',0,NULL,1011,'2018-06-09 13:00:00'),(176,1,'testTask','test','renren',0,NULL,1003,'2018-06-09 13:30:00'),(177,1,'testTask','test','renren',0,NULL,1003,'2018-06-09 14:00:00'),(178,1,'testTask','test','renren',0,NULL,1007,'2018-06-09 14:30:00'),(179,1,'testTask','test','renren',0,NULL,1004,'2018-06-09 15:00:00'),(180,1,'testTask','test','renren',0,NULL,1005,'2018-06-09 15:30:00'),(181,1,'testTask','test','renren',0,NULL,1005,'2018-06-09 16:00:00');
/*!40000 ALTER TABLE `schedule_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '鐘舵??   0锛氶殣钘?   1锛氭樉绀?',
  `remark` varchar(500) DEFAULT NULL COMMENT '澶囨敞',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='绯荤粺閰嶇疆淇℃伅琛?';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '鐖惰彍鍗旾D锛屼竴绾ц彍鍗曚负0',
  `name` varchar(50) DEFAULT NULL COMMENT '鑿滃崟鍚嶇О',
  `url` varchar(200) DEFAULT NULL COMMENT '鑿滃崟URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '鎺堟潈(澶氫釜鐢ㄩ?楀彿鍒嗛殧锛屽?锛歶ser:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '绫诲瀷   0锛氱洰褰?   1锛氳彍鍗?   2锛氭寜閽?',
  `icon` varchar(50) DEFAULT NULL COMMENT '鑿滃崟鍥炬爣',
  `order_num` int(11) DEFAULT NULL COMMENT '鎺掑簭',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='鑿滃崟绠＄悊';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'系统管理',NULL,NULL,0,'fa fa-cog',4),(2,1,'管理员列表','sys/user.html',NULL,1,'fa fa-user',1),(3,1,'角色管理','sys/role.html',NULL,1,'fa fa-user-secret',2),(4,1,'菜单管理','sys/menu.html',NULL,1,'fa fa-th-list',3),(5,1,'SQL监控','druid/sql.html',NULL,1,'fa fa-bug',4),(6,1,'定时任务','sys/schedule.html',NULL,1,'fa fa-tasks',5),(7,6,'查看',NULL,'sys:schedule:list,sys:schedule:info',2,NULL,0),(8,6,'新增',NULL,'sys:schedule:save',2,NULL,0),(9,6,'修改',NULL,'sys:schedule:update',2,NULL,0),(10,6,'删除',NULL,'sys:schedule:delete',2,NULL,0),(11,6,'暂停',NULL,'sys:schedule:pause',2,NULL,0),(12,6,'恢复',NULL,'sys:schedule:resume',2,NULL,0),(13,6,'立即执行',NULL,'sys:schedule:run',2,NULL,0),(14,6,'日志列表',NULL,'sys:schedule:log',2,NULL,0),(15,2,'查看',NULL,'sys:user:list,sys:user:info',2,NULL,0),(16,2,'新增',NULL,'sys:user:save,sys:role:select',2,NULL,0),(17,2,'修改',NULL,'sys:user:update,sys:role:select',2,NULL,0),(18,2,'删除',NULL,'sys:user:delete',2,NULL,0),(19,3,'查看',NULL,'sys:role:list,sys:role:info',2,NULL,0),(20,3,'新增',NULL,'sys:role:save,sys:menu:perms',2,NULL,0),(21,3,'修改',NULL,'sys:role:update,sys:menu:perms',2,NULL,0),(22,3,'删除',NULL,'sys:role:delete',2,NULL,0),(23,4,'查看',NULL,'sys:menu:list,sys:menu:info',2,NULL,0),(24,4,'新增',NULL,'sys:menu:save,sys:menu:select',2,NULL,0),(25,4,'修改',NULL,'sys:menu:update,sys:menu:select',2,NULL,0),(26,4,'删除',NULL,'sys:menu:delete',2,NULL,0),(27,1,'参数管理','sys/config.html','sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete',1,'fa fa-sun-o',6),(28,1,'代码生成器','sys/generator.html','sys:generator:list,sys:generator:code',1,'fa fa-rocket',7),(29,0,'事件观点分析',NULL,NULL,0,'fa fa-user-circle-o',1),(30,29,'事件简介','sys/opn_info.html',NULL,1,'fa fa-file-text-o',1),(31,29,'事件走势','sys/opn_trend.html',NULL,1,'fa fa-line-chart',2),(32,29,'事件关键词','sys/opn_keywords.html',NULL,1,'fa fa-wordpress',3),(33,29,'观点聚合','sys/opn_opn.html',NULL,1,'fa fa-users',4),(34,29,'视频解读','sys/opn_video.html',NULL,1,'fa fa-video-camera',5),(35,29,'观点溯源','sys/opn_first.html',NULL,1,'fa fa-first-order',6),(37,0,'事件重构','sys/recon.html',NULL,1,'fa fa-cube',3),(38,0,'事件传播影响力',NULL,NULL,0,'fa fa-joomla',2),(39,38,'传播事件简介','sys/influ_info.html',NULL,1,'fa fa-file-text',1),(40,38,'传播走势','sys/influ_trend.html',NULL,1,'fa fa-line-chart',2),(41,38,'传播影响力','sys/influ_influence.html',NULL,1,'fa fa-asterisk',4),(42,38,'传播事件检测','sys/inf_rumor_detect.html',NULL,1,'fa fa-first-order',3);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '瑙掕壊鍚嶇О',
  `remark` varchar(100) DEFAULT NULL COMMENT '澶囨敞',
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='瑙掕壊';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '瑙掕壊ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '鑿滃崟ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='瑙掕壊涓庤彍鍗曞?搴斿叧绯?';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '鐢ㄦ埛鍚?',
  `password` varchar(100) DEFAULT NULL COMMENT '瀵嗙爜',
  `email` varchar(100) DEFAULT NULL COMMENT '閭??',
  `mobile` varchar(100) DEFAULT NULL COMMENT '鎵嬫満鍙?',
  `status` tinyint(4) DEFAULT NULL COMMENT '鐘舵??  0锛氱?鐢?   1锛氭?甯?',
  `create_time` datetime DEFAULT NULL COMMENT '鍒涘缓鏃堕棿',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='绯荤粺鐢ㄦ埛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918','root@renren.io','13612345678',1,'2016-11-11 11:11:11');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '鐢ㄦ埛ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '瑙掕壊ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='鐢ㄦ埛涓庤?鑹插?搴斿叧绯?';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-13 18:40:03
