-- MySQL dump 10.13  Distrib 5.1.61, for unknown-linux-gnu (x86_64)
--
-- Host: localhost    Database: miriagassi_db
-- ------------------------------------------------------
-- Server version	5.1.61
use 'graphology';

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
-- Table structure for table `jos_ak_profiles`
--

DROP TABLE IF EXISTS `jos_ak_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ak_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `configuration` longtext,
  `filters` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ak_profiles`
--

LOCK TABLES `jos_ak_profiles` WRITE;
/*!40000 ALTER TABLE `jos_ak_profiles` DISABLE KEYS */;
INSERT INTO `jos_ak_profiles` VALUES (1,'Default Backup Profile','[global]\n[akeeba]\ntuning.min_exec_time=\"2000\"\ntuning.max_exec_time=\"14\"\ntuning.run_time_bias=\"75\"\nquota.enable_size_quota=\"0\"\nquota.size_quota=\"15728640\"\nquota.enable_count_quota=\"0\"\nquota.count_quota=\"3\"\nbasic.output_directory=\"/home/agassi1/agassi.co.il/administrator/components/com_akeeba/backup\"\nbasic.temporary_directory=\"/home/agassi1/agassi.co.il/tmp\"\nbasic.log_level=\"4\"\nbasic.archive_name=\"site-[HOST]-[DATE]-[TIME]\"\nbasic.backup_type=\"full\"\nadvanced.dump_engine=\"native\"\nadvanced.scan_engine=\"smart\"\nadvanced.archiver_engine=\"jpa\"\nadvanced.proc_engine=\"none\"\nadvanced.writer_engine=\"direct\"\nadvanced.embedded_installer=\"abi\"\nadvanced.virtual_folder=\"external_files\"\n[engine]\narchiver.common.dereference_symlinks=\"0\"\narchiver.common.part_size=\"0\"\narchiver.common.chunk_size=\"1048576\"\narchiver.common.big_file_threshold=\"1048576\"\narchiver.zip.cd_glue_chunk_size=\"1048576\"\narchiver.directftp.host=\"\"\narchiver.directftp.port=\"21\"\narchiver.directftp.user=\"\"\narchiver.directftp.pass=\"\"\narchiver.directftp.initial_directory=\"\"\narchiver.directftp.ftps=\"0\"\narchiver.directftp.passive_mode=\"1\"\narchiver.directftp.ftp_test=\"0\"\ndump.common.mysql_compatibility=\"0\"\ndump.common.extended_inserts=\"0\"\ndump.common.packet_size=\"131072\"\ndump.common.splitsize=\"524288\"\ndump.common.batchsize=\"1000\"\ndump.native.advanced_entitites=\"0\"\nscan.smart.large_dir_threshold=\"100\"\n','');
/*!40000 ALTER TABLE `jos_ak_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_ak_stats`
--

DROP TABLE IF EXISTS `jos_ak_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ak_stats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `comment` longtext,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') NOT NULL DEFAULT 'run',
  `origin` enum('backend','frontend','cli') NOT NULL DEFAULT 'backend',
  `type` enum('full','dbonly','extradbonly','alldb','fileonly') NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext,
  `absolute_path` longtext,
  `multipart` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ak_stats`
--

LOCK TABLES `jos_ak_stats` WRITE;
/*!40000 ALTER TABLE `jos_ak_stats` DISABLE KEYS */;
INSERT INTO `jos_ak_stats` VALUES (1,'Backup taken on Sunday, 18 March 2012 18:47','','2012-03-18 13:47:17','0000-00-00 00:00:00','complete','backend','full',1,'site-www.agassi.co.il-20120318-184717.jpa','/home/agassi1/agassi.co.il/administrator/components/com_akeeba/backup/site-www.agassi.co.il-20120318-184717.jpa',0);
/*!40000 ALTER TABLE `jos_ak_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_banner`
--

DROP TABLE IF EXISTS `jos_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_banner`
--

LOCK TABLES `jos_banner` WRITE;
/*!40000 ALTER TABLE `jos_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannerclient`
--

DROP TABLE IF EXISTS `jos_bannerclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannerclient`
--

LOCK TABLES `jos_bannerclient` WRITE;
/*!40000 ALTER TABLE `jos_bannerclient` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannerclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_bannertrack`
--

DROP TABLE IF EXISTS `jos_bannertrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_bannertrack`
--

LOCK TABLES `jos_bannertrack` WRITE;
/*!40000 ALTER TABLE `jos_bannertrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_bannertrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_categories`
--

DROP TABLE IF EXISTS `jos_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_categories`
--

LOCK TABLES `jos_categories` WRITE;
/*!40000 ALTER TABLE `jos_categories` DISABLE KEYS */;
INSERT INTO `jos_categories` VALUES (1,0,'מי אנחנו','','2009-05-05-07-09-57','','2','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,''),(2,0,'שירותי המרכז','','services','','2','left','',1,0,'0000-00-00 00:00:00',NULL,2,0,0,''),(3,0,'מאמרים','','2009-05-05-07-10-49','','2','left','',1,0,'0000-00-00 00:00:00',NULL,3,0,0,''),(4,0,'שאלות נפוצות','','2009-05-05-07-11-00','','2','left','',1,0,'0000-00-00 00:00:00',NULL,4,0,0,''),(5,0,'קישורים','','2009-05-05-07-11-13','','2','left','',1,0,'0000-00-00 00:00:00',NULL,5,0,0,''),(6,0,'צור קשר','','2009-05-05-07-11-24','','2','left','',1,0,'0000-00-00 00:00:00',NULL,6,0,0,''),(7,0,'מאמרים דף הבית','','2009-05-05-07-15-26','','1','left','',1,0,'0000-00-00 00:00:00',NULL,1,0,0,'');
/*!40000 ALTER TABLE `jos_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_components`
--

DROP TABLE IF EXISTS `jos_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_components`
--

LOCK TABLES `jos_components` WRITE;
/*!40000 ALTER TABLE `jos_components` DISABLE KEYS */;
INSERT INTO `jos_components` VALUES (1,'Banners','',0,0,'','Banner Management','com_banners',0,'js/ThemeOffice/component.png',0,'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n',1),(2,'Banners','',0,1,'option=com_banners','Active Banners','com_banners',1,'js/ThemeOffice/edit.png',0,'',1),(3,'Clients','',0,1,'option=com_banners&c=client','Manage Clients','com_banners',2,'js/ThemeOffice/categories.png',0,'',1),(4,'Web Links','option=com_weblinks',0,0,'','Manage Weblinks','com_weblinks',0,'js/ThemeOffice/component.png',0,'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n',1),(5,'Links','',0,4,'option=com_weblinks','View existing weblinks','com_weblinks',1,'js/ThemeOffice/edit.png',0,'',1),(6,'Categories','',0,4,'option=com_categories&section=com_weblinks','Manage weblink categories','',2,'js/ThemeOffice/categories.png',0,'',1),(7,'Contacts','option=com_contact',0,0,'','Edit contact details','com_contact',0,'js/ThemeOffice/component.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(8,'Contacts','',0,7,'option=com_contact','Edit contact details','com_contact',0,'js/ThemeOffice/edit.png',1,'',1),(9,'Categories','',0,7,'option=com_categories&section=com_contact_details','Manage contact categories','',2,'js/ThemeOffice/categories.png',1,'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n',1),(10,'Polls','option=com_poll',0,0,'option=com_poll','Manage Polls','com_poll',0,'js/ThemeOffice/component.png',0,'',1),(11,'News Feeds','option=com_newsfeeds',0,0,'','News Feeds Management','com_newsfeeds',0,'js/ThemeOffice/component.png',0,'',1),(12,'Feeds','',0,11,'option=com_newsfeeds','Manage News Feeds','com_newsfeeds',1,'js/ThemeOffice/edit.png',0,'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n',1),(13,'Categories','',0,11,'option=com_categories&section=com_newsfeeds','Manage Categories','',2,'js/ThemeOffice/categories.png',0,'',1),(14,'User','option=com_user',0,0,'','','com_user',0,'',1,'',1),(15,'Search','option=com_search',0,0,'option=com_search','Search Statistics','com_search',0,'js/ThemeOffice/component.png',1,'enabled=0\n\n',1),(16,'Categories','',0,1,'option=com_categories&section=com_banner','Categories','',3,'',1,'',1),(17,'Wrapper','option=com_wrapper',0,0,'','Wrapper','com_wrapper',0,'',1,'',1),(18,'Mail To','',0,0,'','','com_mailto',0,'',1,'',1),(19,'Media Manager','',0,0,'option=com_media','Media Manager','com_media',0,'',1,'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS,pdf,rar,zip\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/website_pics\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n',1),(20,'Articles','option=com_content',0,0,'','','com_content',0,'',1,'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n',1),(21,'Configuration Manager','',0,0,'','Configuration','com_config',0,'',1,'',1),(22,'Installation Manager','',0,0,'','Installer','com_installer',0,'',1,'',1),(23,'Language Manager','',0,0,'','Languages','com_languages',0,'',1,'site=he-IL\n\n',1),(24,'Mass mail','',0,0,'','Mass Mail','com_massmail',0,'',1,'mailSubjectPrefix=\nmailBodySuffix=\n\n',1),(25,'Menu Editor','',0,0,'','Menu Editor','com_menus',0,'',1,'',1),(27,'Messaging','',0,0,'','Messages','com_messages',0,'',1,'',1),(28,'Modules Manager','',0,0,'','Modules','com_modules',0,'',1,'',1),(29,'Plugin Manager','',0,0,'','Plugins','com_plugins',0,'',1,'',1),(30,'Template Manager','',0,0,'','Templates','com_templates',0,'',1,'',1),(31,'User Manager','',0,0,'','Users','com_users',0,'',1,'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n',1),(32,'Cache Manager','',0,0,'','Cache','com_cache',0,'',1,'',1),(33,'Control Panel','',0,0,'','Control Panel','com_cpanel',0,'',1,'',1),(38,'Akeeba Backup','option=com_akeeba',0,0,'option=com_akeeba','Akeeba Backup','com_akeeba',0,'components/com_akeeba/assets/images/akeeba-16.png',0,'',1),(39,'BACKUP_NOW','',0,38,'option=com_akeeba&view=backup','BACKUP_NOW','com_akeeba',0,'components/com_akeeba/assets/images/backup-16.png',0,'',1),(40,'CONFIGURATION','',0,38,'option=com_akeeba&view=config','CONFIGURATION','com_akeeba',1,'components/com_akeeba/assets/images/config-16.png',0,'',1),(41,'ADMINISTER_BACKUP_FILES','',0,38,'option=com_akeeba&view=buadmin','ADMINISTER_BACKUP_FILES','com_akeeba',2,'components/com_akeeba/assets/images/bufa-16.png',0,'',1);
/*!40000 ALTER TABLE `jos_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_contact_details`
--

DROP TABLE IF EXISTS `jos_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_contact_details`
--

LOCK TABLES `jos_contact_details` WRITE;
/*!40000 ALTER TABLE `jos_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content`
--

DROP TABLE IF EXISTS `jos_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content`
--

LOCK TABLES `jos_content` WRITE;
/*!40000 ALTER TABLE `jos_content` DISABLE KEYS */;
INSERT INTO `jos_content` VALUES (1,'צוואות וייפויי כח','2009-05-05-07-17-23','','<span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #a6a6a6; font-family: \'Arial\',\'sans-serif\'\">איכות החתימה מושפעת לא רק מגיל מתקדם אלא גם ממצב בריאותי ופיזי של כל חותם. מצב בריאותי לא תקין, אפילו חום גבוה יכול להשפיע זמנית, על איכות הכתיבה.<span>  </span></span>','</span><p style=\"margin: 0in 0in 0pt; direction: rtl; line-height: normal; unicode-bidi: embed; text-align: right\" dir=\"rtl\" class=\"MsoNormal\"><span style=\"font-size: 10pt; color: #a6a6a6; font-family: \'Arial\',\'sans-serif\'\">בעיה פיזית שמשפיעה על איכות הכתיבה יכולה להיות זמנית (תרופות חזקות, עייפות רבה, מתח), כרונית (מחלה כרונית), או מתקדמת (מחלה שמתפתחת). ירידה בראייה.</span></p> <p class=\"backLink\"><a href=\"javascript:history.go(-1)\">בחזרה</a></p>',-2,1,0,7,'2009-05-14 00:00:00',62,'','2009-06-09 08:16:22',62,0,'0000-00-00 00:00:00','2009-05-05 07:15:53','0000-00-00 00:00:00','','','show_title=\nlink_titles=1\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=0\nshow_modify_date=0\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',14,0,0,'','',0,36,'robots=\nauthor='),(2,'\"טיפים\" למנהל כח אדם','2009-05-05-07-28-17','','<p><img class=\"caption\" src=\"images/website_pics/articles.jpg\" border=\"0\" /></p><h2>\"טיפים\" למנהל כח אדם <br /></h2><p><font color=\"#6d9099\">מיון כח אדם הוא משימה מורכבת ומסובכת. למבחן הגרפולוגי יש יתרון משמעותי בתהליך המיון.<br /><br /></font><font color=\"#6d9099\">הכתיבה היא תהליך אוטומטי בו <font color=\"#6d9099\">הנבחנים מראים התנהגות ספונטאנית, אמיתית, אוטומטית כמעט, מכנית, מוכרת. </font>רוב המנהלים שמשתמשים באופן קבוע באבחון כתב יד ככלי תומך החלטה - שבעי רצון ומעריכים את האבחון הגרפולוגי כאמין ביותר.</font></p>','<br /><p><font color=\"#6d9099\"><font color=\"#6d9099\">יש מקרים בהם לא מומלץ</font> להשתמש בגרפולוגיה. אנשים שמוגבלים בתנועתם, או כאלה שסובלים מדיסגרפיה קשה אינם מתאימים. בכל מקרה מומלץ להתייעץ עם הגרפולוג. </font></p><p><font color=\"#6d9099\"><font color=\"#6d9099\">כן ניתן לאבחן כתב יד של אנשים שאינם</font> מיומנים בכתיבה וכותבים ברמה נמוכה. תמיד מומלץ גרפולוג מומחה למלאכת האבחון, אך במצבים כאלה על אחת כמה וכמה. גרפולוג מיומן ובעל נסיון ראה כתבים רבים מסוג זה ומסוגל לאבחן מבעד למסורבלות של הכתיבה. ההבדל בין גרפולוג מתחיל ובין גרפולוג מנוסה מהותי. למה הדבר דומה? לרופא מתחיל ש\"נבהל\" מכל סמפטום ומקצין מסקנותיו לעומת רופא מיומן העובד בבית חולים, ראה כבר \"הכל\" ויודע את הפרופורציות. האבחון של הרופא המנוסה \"קולע\" הרבה יותר והטעות קטנה יותר, גם אם לעיתים קיימת.</font></p><p><font color=\"#6d9099\">לעוסק במלאכה המסובכת של מיון כח אדם מספר טיפים:</font></p><p><font color=\"#6d9099\">טיפ מספר 1: התבונן בכתב ידם של המועמדים. <br />אין הכוונה להפוך אותך לגרפולוג, אבל די מהר תבחין גם אתה שיש כתבים מיוחדים במינם. הגרפולוגיה כמו כל מבחן מיון אחר מבוססת קודם כל על העקומה הנורמלית. יש את הממוצע ואת הקצוות. </font></p><p><font color=\"#6d9099\">גם עין בלתי מקצועית שאינה מיומנת בכללי הניתוח הגרפולוגי יכולה להבחין ב\"קצוות\". כתבים מיוחדים, צורות שאינן בנורמה, קישוטים בלתי שגרתיים, כתב צפוף מאד ללא רווחים, כתב ענקי, כתב קטנטן, אנשים שכותבים בעריכה בלתי שגרתית שוכחים צד אחד של הדף, מתכווצים בפינת העמוד... ועוד ועוד. כל אלה עשויים לרמוז על חשיבה מיוחדת, אחרת, לאוו דווקא לשלילה, אבל זה \"תמרור עצור\" עבורך. מומלץ לשים לב, לבצע מבחני מיון נוספים כדי שלא \"לפספס\" ולטעות.</font></p><p><font color=\"#6d9099\">טיפ מספר 2: בחר בקפידה את הגרפולוג שיבצע את ניתוח כתב היד. <br />רבים האנשים שרואים עצמם גרפולוגים מבלי שקיבלו הכשרה מספקת. הגרפולוגיה אינה מעוגנת בחוק וכל אחד יכול לקרוא לעצמו גרפולוג. גרפולוגים בלתי מיומנים אלו עושים \"שם רע\" לגרפולוגיה. כלאחר יד מנתחים כתבים בצורה נלעגת, מנבאים עתיד, וכמעט \"קוראים בכוכבים\".</font></p><p><font color=\"#6d9099\">מאד חשוב לוודא הכשרתו של הגרפולוג. <br />יש אגודות בעולם שבוחנות ומכשירות גרפולוגים מקצועיים.<br />גם לנו, בישראל, יש אגודה הנקראת \"האגודה לגרפולוגיה מדעית\". האגודה בוחנת, בכתב ובע\"פ את המבקשים להפוך לחברי אגודה. המבחנים מהווים כלי \"סינון\". חברי האגודה חייבים ב300 שעות לימוד לפחות אצל גרפולוגים מיומנים ומקצועיים לפני הגשתם לבחינה, הם עוברים הכשרות, לומדים ומשתכללים. לאגודה וועדת אתיקה שדואגת להתנהגות אתית ומקצועית של חבריה. </font></p><p><font color=\"#6d9099\">טיפ מספר 3: הגרפולוגיה היא כלי תומך החלטה. אל תסמוך רק על הגרפולוגיה ככלי מיון. <br />גם אם יש לך גרפולוג מצוין שמנבא היטב וכמעט ולא טועה מומלץ שלא להסתמך על בדיקה גרפולוגית בלבד. גרפולוגיה היא רק מבחן. לגרפולוגיה כמו לכל מבחן פסיכולוגי אחר יש מרווח של טעות. אנו, הגרפולוגים קוראים לטעות הזאת \"כתבים מביכים\". הכתב אינו מאפיין את הכותב. יש אחוז מסוים, אמנם לא גבוה, אבל קיים, של טעות. גם ברפואה יש אחוז של טעות, גם בבדיקות רפואיות יש אחוז של טעות. מומלץ מאד \"לחזק\" את הניתוח הגרפולוגי במבחנים נוספים.  לפחות בראיון, ובהמלצות.</font></p><p><font color=\"#6d9099\">טיפ מספר 4: זכור תמיד שהאינטרס של התאמה מוצלחת של האדם לתפקיד הוא אינטרס לא רק שלך אלא גם של המועמד עצמו.<br />האדם הנכון בתפקיד הנכון הוא הצלחה לכל הנוגעים בדבר. המועמד שקיבל תפקיד המתאים לכישוריו יכול לפתח קריירה והמערכת זכתה בעובד מיומן. אל תסמוך רק על האינטואיציה שלך. היעזר באנשי מקצוע שיכולים להקל עליך. זו מיומנותם.</font></p><p><font color=\"#6d9099\">בהצלחה למועמדים ולעוסקים במיון עובדים.</font></p><p class=\"backLink\"><a href=\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=4\">בחזרה</a></p>',1,1,0,7,'2009-05-05 07:27:13',62,'','2009-07-16 06:30:31',62,0,'0000-00-00 00:00:00','2009-05-05 07:27:13','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',23,0,2,'','',0,590,'robots=\nauthor='),(3,'למה גרפולוגיה?','2009-05-05-07-29-37','','<p><img class=\"caption\" src=\"images/website_pics/articles.jpg\" border=\"0\" /></p><h2>למה גרפולוגיה? <br /></h2><p><font color=\"#6d9099\">האם הגרפולוגיה היא מדע? האם כל כתב יד ייחודי לכותבו? מהם היתרונות והחסרונות באבחון גרפולוגי? מהו תהליך העבודה של הגרפולוג?  </font></p>','<p><font color=\"#6d9099\"> <strong><u>מהי גרפולוגיה?</u></strong></font></p><p><font color=\"#6d9099\">גרפולוגיה - תורת הכתב בתרגום המילולי של המונח, נתפסת גם כפסיכולוגיה של הכתב. <br />בשנים 1872-1880, יצר לראשונה הכומר הצרפתי מישון שיטת אבחון גרפולוגי מקיפה ומובנית, ופרסם חיבורים בהם הניח את הבסיס לשיטות האבחון הגרפולוגי המאוחרות יותר.</font></p><p><font color=\"#6d9099\">האם הגרפולוגיה היא כלי מדעי?<strong> </strong>כדי לבחון את מידת התוקף של הגרפולוגיה ככלי מדעי, יש לבחון אחת לאחת את הנחות היסוד שלה:<br />1. כל כתב היד ייחודי לכותבו. <br />2. כתב היד מהווה ביטוי לאופיו, לכישוריו האינטלקטואליים והחברתיים, למידת הבשלות שלו, לכושר הסתגלותו ולמצבו הנפשי של הכותב.</font></p><p><br /><font color=\"#6d9099\">אתייחס במאמר זה להנחה הראשונה. מחקר התומך בהנחה שכתב היד ייחודי לכותב התפרסם בספטמבר 2002. בדיווח בעתון \"הארץ\", נמסר כי \"חוקרים מאוניברסיטת ניו יורק (בראשות הפרופסור סרגור סיהארי) טוענים שפיתחו תוכנה מיוחדת שמוכיחה כי כתב יד ייחודי לכותב... כאשר התוכנה נדרשה לזהות אם מסמך מסוים נכתב בידי אדם אחד או בידי שני אנשים שונים, היא השיגה 95% הצלחה... כאשר נדרשה לזהות כתב יד אחד מבין אלף כותבים, סיפקה התוכנה תשובה נכונה ב-89% של המקרים...\" החוקרים מקווים להגיע לתוצאות טובות עוד יותר. </font></p><p><font color=\"#6d9099\">המחקר והתוכנה המדוברת אמנם יועדו לתמיכה בזיהוי מסמכים בתהליכים משפטיים, ולא לניתוח כתב יד במסגרת מבחני התאמה – אך ניתן להסיק מהם באופן חד משמעי שאכן, כתב היד, ייחודי לכותב.</font></p><p><font color=\"#6d9099\">הנחת היסוד השניה, לגבי מידת הביטוי של תכונות אישיות המשתקפות בכתב היד, נתמכת אף היא במחקרים רבים. יש אמנם מחקרים שאינם תומכים בהנחה זו, אך חשוב לדעת כי מספר גדול של מחקרים נותנים תוקף למהימנות ואמינות הניתוח הגרפולוגי, ואין לפסול אותם על הסף.</font></p><p><font color=\"#6d9099\">ניתן להתעמק בהנחת היסוד האומרת שכתב היד מהווה ביטוי, בין השאר, לאופיו, מידת הבשלות, כושר ההסתגלות והמצב הנפשי של הכותב -  נושא רחב בפני עצמו – במאמרים, עבודות גמר ומחקרים נקודתיים.  רשימת מחקרים ומאמרים בנושא ניתן למצוא </font><a href=\"index.php?option=com_content&view=article&id=14&Itemid=6\"><font color=\"#6d9099\">בדף הקישורים</font></a><font color=\"#6d9099\">.</font></p><p><br /><strong><u><font color=\"#6d9099\">תהליך העבודה של הגרפולוג</font></u></strong></p><p><font color=\"#6d9099\">גרפולוגיה דומה לכל ניתוח אישיות אחר הנעשה על סמך מבחנים. עקרונות הניתוח מכילים אלמנטים לניתוח הדומים מאד לאלמנטים של מבחנים השלכתיים וגרפיים. <br />אלה לא עומדים כל אחד בפני עצמו. הם משפיעים זה על זה: השטף על איכות הקו, התנועה על הצורה, וכן הלאה. כל דבר קשור בדבר. </font></p><p><font color=\"#6d9099\">בניגוד לאמונה שהגרפולוגיה נסמכת על מיסטיקה - לפרשנות הגרפולוגית הגיון, והיא נסמכת על סטטיסטיקה. אין הדברים \"מומצאים\" ומופרכים.<br />הגרפולוג מתייחס לסימני הכתב. מבצע אנליזה וסינתיזה שלהם. </font></p><p><font color=\"#6d9099\">עבודת הניתוח מורכבת. ניתן לבצע אותה במספר דרכים. השיטות מגוונות, תומכות זו בזו. במידה ונעזרים בכמה מהן בו זמנית – ריבוי השיטות מעשיר את התמונה הכוללת של הבנת אישיות הכותב וכישוריו.</font></p><p><font color=\"#6d9099\">הפרשנות משתנה בהתאם לתמונת הכתב כולה. כך למשל כתב גדול מאד יפורש בדרך אחת כאשר ייכתב בצורה מסודרת, במשמעת פנימית, ויקבל פרשנות אחרת כאשר ייכתב ב\"בלגן\" ללא ארגון ושליטה.</font></p><p><font color=\"#6d9099\">הגרפולוג מחפש סינדרומים. הסינדרום מאחד מספר אלמנטים בכתב היד, שאמנם שונים במהותם, אך מצביעים על אותה התכונה. אין הוא נסמך על סימן בודד גם אם הסימן חוזר על עצמו מספר רב של פעמים. ככל שהכתב הומוגני, וקבוצות הסינדרומים משלימים אלה את אלה, כך הפרשנות הכוללת בהירה וקלה יותר להבנה. ככל שהכתב הטרוגני – הסימנים והסינדרומים שלהם מצביעים על תכונות הסותרות זו את זו, מסובך יותר להבין את השילוב והמורכבות. אין מלאכת הניתוח קלה. יש צורך בידע, מיומנות ונסיון רב. גרפולוג שאינו מיומן עלול לטעות בפרשנותו. </font></p><p><font color=\"#6d9099\">את עקרונות הניתוח הגרפולוג ניתן ללמוד כסקירה ומבוא, או </font><a href=\"index.php?option=com_content&view=category&layout=blog&id=2&Itemid=3\"><font color=\"#6d9099\">כקורס מקצועי</font></a><font color=\"#6d9099\">. </font></p><p><font color=\"#6d9099\">אחת השיטות לפרשנות הגרפולוגית היא התייחסות לשלוש תמונות הכתב: תנועה, צורה וארגון.</font></p><p><font color=\"#6d9099\"><u>תמונת התנועה:</u> מורכבת מלחץ הכתיבה, מהירות, קצב, שטף, איכות הקו ועוד. תנועת הכתיבה מבטאת את הליבידו, הדחף, החיוניות והאנרגיה. יש כאן מרכיב ביולוגי, שבא לידי ביטוי גם באלמנטים מקרוסקופיים, ולכן לא ניתן לזיוף. </font></p><p><font color=\"#6d9099\"><u>תמונת הצורה:</u> מורכבת מעיצוב האותיות, קישוט, פישוט, הציר האנכי והרוחבי, מידת הקריאות ועוד. תמונה זו מבטאת תקשורת חברתית, העברת מסרים, יצירתיות מול שגרתיות, הפנמת נורמות. התייחסות לסביבה.</font></p><p><font color=\"#6d9099\"><u>תמונת הארגון:</u> מורכבת משוליים, מרווחים בין מילים ובין אותיות, מרחקים בין שורות, כתיבה מתופסקת או רציפה. ארגון הכתוב נמצא בשליטה ובמודעות יחסית. הכותב מתכנן אותו על הדף, מנסה לשלוט בו במודע. הארגון על הדף נובע מהקורטקס, מה\"מוח החושב\", מבטא אינטליגנציה וסגנון חשיבה.<br />עם זאת, השליטה – יחסית, מכיוון שגם כאן באים לידי ביטוי נושאים שאינם קשורים בחשיבה רציונלית. הגנות, חרדה, לעומת ספונטאניות וזרימה.</font></p><p><strong><u><font color=\"#6d9099\">פרשנות גרפולוגית על פי הפוטנציות של אודם</font></u></strong></p><p><font color=\"#6d9099\">ישראל אודם,  (1999 – 1908) עלה ארצה בשנת 1922, וחי רוב ימיו בעין חרוד. אודם פיתח את שיטת הפוטנציות. (כתב יד ואישיות; ישראל אודם; 1977, 1983, מוסד ביאליק, דביר). שיטתו פיתחה ושיכללה באופן משמעותי את הידע של הגרפולוגיה בכלל ושל כתב היד העברי בפרט. </font></p><p><font color=\"#6d9099\">ישראל אודם חיפש אחר האידיאה המנחה, או בשפתו: מהם כוחות הנפש המרכזיים של הכותב שמנחים את התנהגותו. הוא שאף לכך שהגרפולוג, כפי שהוא עצמו התבטא \"יתרומם מעבר לסבך הפרטים הגרפיים\". </font></p><p><font color=\"#6d9099\">תפיסתו של אודם פסיכודינמית. הוא דיבר על 9 פוטנציות, (טיפוסים) שלכל אחת מהן תסמונת גרפית הומוגנית. הוא משתמש בביטוי \"פוטנציאל\". ההסתגלות הקיומית, כפי שקרא לה, ייתכן שמשפיעה ונראית לעין, אך ייתכן גם שקיימת ככוח נסתר. על פי תפיסתו של אודם כל אדם מורכב מתשלובת של פוטנציות. בכל אחד יש פוטנציה דומיננטית ופוטנציות דומיננטיות פחות. ויש פוטנציות חלשות, חסרות, שלא באות לידי ביטוי, ולא מאפיינות את סגנון התמודדותו של הכותב. </font></p><p><font color=\"#6d9099\">אודם הוא זה שהבין, כבר בשנות הששים, שהיכולת שלנו לתפקד בנויה הן מכוחות נפש בריאים, שנותנים תשובה הולמת למצב, והן מסגנונות תגובה שאינם בריאים, כאלה שניתן להגדירם אפילו כהפרעות אישיות, ש\"משתלטות\" ולא מאפשרות \"מרחב מחיה\" לתגובה ההולמת.</font></p><p><br /><strong><u><font color=\"#6d9099\">הגרפולוגיה ככלי מיון והערכת עובדים</font></u></strong></p><p><font color=\"#6d9099\">הגרפולוגיה משמשת את תחום המיון וההערכה זה זמן רב.  </font></p><p><font color=\"#6d9099\">לגרפולוגיה כמבחן מיון, יש אפשרות לזהות את כוחות ההתמודדות, כמו גם את החולשות של הכותב ולתת הערכה באשר לאנרגיה שהכותב משקיע, לסגנון החשיבה, ולכישורים חברתיים. <br />מול דרישות תפקיד מוגדרות, יכול הגרפולוג לתת הערכה בעלת אמינות ומהימנות גבוהים יחסית באשר להתאמתו של המועמד לתפקיד ואמינותו.</font></p><p><strong><u><font color=\"#6d9099\">חולשות הגרפולוגיה – ונקודות החוזק</font></u></strong></p><p><font color=\"#6d9099\">הגרפולוגיה אינה חפה מחולשות. <br />היא אינה \"פוגעת בול\" במאה אחוזים של המקרים. דרוש נסיון רב כדי לבצע הערכה על פי הגרפולוגיה. פעולת הסינתזה מורכבת, ולכן, גרפולוגים שאינם מומחים טועים לעיתים קרובות. צריך להביא בחשבון כי הכתב מאד רגיש לשינויים במצבי רוח, ולמצב בריאותו של הכותב. חוות דעת גרפולוגית עלולה לשים דגש בפרופורציה מוגזמת, על מצב רוח לא יציב, שהשפיע על הכתיבה באופן \"מקומי\". גרפולוג עלול לשים דגש יתר על מצב הרוח, או על מצב בריאותי לא תקין כשהבעיה בדרך כלל אינה אבחון לא נכון, אלא הקצנה במסקנות, בגלל מצב לא מאפיין שהשפיע באופן רדיקלי על הכתב.   <br />הציפיות מהגרפולוגיה גבוהות ולא ריאליות. מצפים מהגרפולוג שייתן מענה לשאלה מה יבחר אדם בשעת דילמה, או כיצד ינהג בפועל במצבים כאלה ואחרים. הדבר בלתי אפשרי.<br />גם אין כל אפשרות להסיק על פי מבחן גרפולוגי לגבי כישורים טכניים רבים.<br />בנוסף - לא מומלץ לנתח כתב ידם של לקויי למידה. הלקות מורידה מאיכות הכתב, ולא מאפשרת לגרפולוג להבחין בכל הכישורים והיכולות האמיתיים של הכותבים. לא מומלץ לבצע בדיקה גרפולוגית לאנשים הסובלים מתסמונת זו.</font></p><p><font color=\"#6d9099\">לגרפולוגיה לעומת זאת, נקודות חוזק רבות. <br />כדי להגיע לתוצאות טובות – יש צורך בגרפולוג מיומן.<br />המיומנות המקצועית של הגרפולוג משמעותית כמו בכל מקצוע אחר. הרי לא תרצו שינתח אתכם רופא מנתח מתמחה חסר נסיון. תעדיפו, כמובן, את המומחה. <br />הגרפולוגיה, כשמשתמשים בה נכון, מאפשרת להבין אישיותו והתמודדותו של הכותב. <br />מקבלי החלטות בתחום המיון וההערכה,יכולים להיעזר בדוח גרפולוגי בבחירת המועמד הטוב יותר.<br />ניתן לזהות את המועמדים המוכשרים, והמתאימים לתפקיד, ניתן גם לזהות את הבעייתיים, הפחות מתאימים.<br />כל זאת בתנאי שאת הכתב מנתח גרפולוג מיומן ומנוסה. <br />נקודת החוזק האמיתית של הגרפולוגיה שב\"שטח\" היא מהווה כלי תומך החלטה בעל עוצמה ומשמעות.<br />לא רק במענה מהיר, אלא גם במענה מהימן יחסית. בזכות הגרפולוגיה קל יותר לאתר ולהשוות בין מועמדים טובים.  <br />או לחילופין - לגרפולוגיה יכולת לזהות אנשים בעלי נטיות אימפולסיביות ותוקפניות, כאלה שעלולים לנהוג באופן בעייתי ולמעול באמון. <br />כאמור, אין לצפות ליותר מדי - אין היא מזהה את כולם, אך היא כן מהווה \"מסננת\" עוצמתית ומשמעותית. חלק לא מבוטל של נטיות אנטי סוציאליות או התנהגות חריגה באים לידי ביטוי בכתב היד וניתנים לזיהוי על ידי גרפולוג מיומן.<br />לגרפולוגיה ככלי מיון בנושא יושר ואמינות - ניתן למצוא סימוכין, מאמרים ומחקרים </font><a href=\"index.php?option=com_content&view=article&id=14&Itemid=6\"><font color=\"#6d9099\">בדף הקישורים</font></a><font color=\"#6d9099\">.</font></p><p><strong><u><font color=\"#6d9099\">המבחן האמיתי: לקוחות מרוצים</font></u></strong></p><p><font color=\"#6d9099\">סקר לקוחות של המרכז לגרפולוגיה מוכיח שהגרפולוגיה נותנת מענה מצוין בשטח, ברמה שמצדיקה לבחור באבחון הגרפולוגי ככלי מיון תומך החלטה. מנהלים ובכירים הנעזרים משך שנים רבות בגרפולוגיה ככלי מיון מעידים על יעילותה.</font></p><p><font color=\"#6d9099\">..\"נוכחנו כי ברובם הגדול של המקרים, הבדיקה הגרפולוגית הוכיחה עצמה, לגבי אותם עובדים שקיבלנו לעבודה. קשה למי שלא נוכח בזאת בעצמו להאמין למובהקות החיובית הרבה המתגלה בין תוצאות הגרפולוגיה למציאות בעבודה היומיומית..אנו נוהגים לחזור לתוצאות מבחני הגרפולוגיה, גם לאחר קליטת העובד/ת לעבודה ולבדוק את המתאם בין חוות הדעת הגרפולוגית לבין התנהגות העובד/ת בשטח....\"</font></p><p><font color=\"#6d9099\">\"...למעט מקרה אחד (מתוך מאות דוחות) האבחונים הצדיקו את המשקל שנתנו להם. בדיעבד הם מספיק מהימנים לתוצאה שמקבלים בפועל. זה עדיין המבחן הגדול. מי שלא עבר גרפולוגיה – לא נשאר. פוטר, או נשר. יכול להיות שבמידה והיו עוברים גרפולוגיה לפחות חלקם לא היו נקלטים מלכתחילה...\"</font></p><p><font color=\"#6d9099\">או כפי שכתב אחד מלקוחות המכון, לאחר שקיבל שלושה דוחות אודות מועמדים פוטנציאליים: <br />\"...אם היו לי ספקות לעניין הגרפולוגיה ככלי עזר לקבלת החלטות הרי שהצלחת להסיר לי אותם. אני חייב לומר כי חוות דעתך לגבי כל השלושה מתיישבת בדיוק רב עם הערכתי והתרשמותי מכל אחד ואחד מהם...\"</font></p><p class=\"backLink\"><a href=\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=4\">בחזרה</a></p>',1,1,0,7,'2009-05-05 07:29:05',62,'','2009-07-22 07:21:21',64,0,'0000-00-00 00:00:00','2009-05-05 07:29:05','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',22,0,3,'','',0,821,'robots=\nauthor='),(4,'דף הבית','2009-05-05-07-34-57','','<p align=\"right\"><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">המרכז לגרפולוגיה של מירי אגסי הוא מכון מקצועי לגרפולוגיה תעסוקתית, העוסק באבחון מועמדים ומיון כח אדם.</span></span></font></p><p align=\"right\"><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">המכון מסייע לארגונים רבים לבחור את האנשים הנכונים לתפקידים הנכונים – ומציע גם לאנשים פרטיים, העומדים בפני צמתי-החלטות תעסוקתיות ואישיות, סיוע באבחון ובניתוח מידת התאמתם למסלולי פעילות שונים.</span></span></font></p><p align=\"right\"><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">כלי המיון העיקרי של המכון הוא ניתוח כתב יד.<br /></span></span></font><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">במקרים בהם מתעורר הצורך, ערוך המכון להציע גם סדרה של מבחני מיון נוספים וראיונות אישיים.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">המיון במכון מאפשר ללקוחותינו לקבל הצצה קטנה לעתידו של המועמד בתפקיד: לראות את קווי אופיו ויכולותיו הגלויים לעיין כמו גם את אלו שהיו מתגלים רק לאחר זמן.</span></span></font></p><p align=\"right\"><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">סקרים תקופתיים אותם עורך המכון בקרב לקוחותיו מעידים באופן עקבי כי רוב המנהלים הנעזרים בשירותי המכון ומשתמשים באופן קבוע באבחון כתב יד ככלי תומך החלטה, מעריכים את האבחון הגרפולוגי כאמין ביותר. אחוז גבוה של המועמדים, שקיבלו חוות דעת חיובית ע\"י המכון והתקבלו לתפקיד, אכן מצליחים ביותר בתפקידם.</span></span></font><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><br /></span></span></font></p><p align=\"right\"><font face=\"arial,helvetica,sans-serif\" color=\"#993366\"><span style=\"font-size: 14pt; color: #cc0000; font-family: Arial\"><span><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><table border=\"0\"><tbody><tr><td><span style=\"font-size: 14pt; color: #cc0000; font-family: Arial\"><span><span style=\"font-size: 10pt; color: #cc0000; line-height: 115%; font-family: \'Arial\',\'sans-serif\'\"><strong>חדש!</strong></span> <span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><font color=\"#015d76\">ליווי מקצועי וסטאז\' אצל מירי אגסי.</font></strong></span></span></span></span> </td><td><font face=\"Arial\" size=\"2\" color=\"#6d9099\">              </font> <a href=\"index.php?option=com_content&view=article&id=15&Itemid=7\"><font face=\"Arial\" size=\"2\">לפרטים צור קשר</font></a><font face=\"Arial\" size=\"2\" color=\"#6d9099\"> </font><img src=\"images/website_pics/arrow-link.jpg\" border=\"0\" /></td></tr><tr><td> </td><td> </td></tr></tbody></table></strong></span></span></span></span></font></p><p align=\"right\"> </p><p align=\"right\"> </p><p align=\"right\"> </p><p align=\"right\"> </p>','',1,0,0,0,'2009-05-05 07:33:27',62,'','2009-08-06 19:58:42',64,0,'0000-00-00 00:00:00','2009-05-05 07:33:27','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=he-IL\nkeyref=\nreadmore=',48,0,3,'גרפולוגיה, אבחון גרפולוגי, כתב יד, גרפולוגית, גרפולוגים, כתב, גרפולוגיה תעסוקתית, תעסוקה, ייעוץ עסקי, ייעוץ זוגי, יעוץ עסקי, יעוץ זוגי, גרפולוגיה משפטית, פיתוח קריירה, תורת הכתב, מיון כח אדם, מיון עובדים, אבחון מקצועי, יעוץ אישי, ייעוץ אישי, הכוונה, ייעוץ והכוונה, יעוץ והכוונה, זיוף, שירות לקוחות, מרכז הערכה תעסוקתית, מרכזי הערכה, התקשרות עסקית, חיפוש עבודה, עסק, עסקים, קורס, ייעוץ, ספרות מקצועית, סקרים, אבחונים, השמה, כוח אדם, מערכות גיוס ממוחשבות, פרסום דרושים, אמצעי הדרכה, הרצאות, כיתות לימוד, קורסים והשתלמויות, פוליגרף, שירותי ייעוץ והפניה, פורום מנהלי משאבי אנוש, חתימות, חתימה, מכון מקצועי לגרפולוגיה תעסוקתית, יעוץ ומיון כא, ייעוץ ומיון כא, חברת האגודה הישראלית לגרפולוגיה מדעית, משאבי אנוש הדרכה גיוס ורווחה, חקירות, אמינות הגינות יעילות איכות שירות ואדיבות, גפולוגיה, גראפולוגיה, גרפיליגיה, גרפןלןגיה','המרכז לגרפולוגיה של מירי אגסי הוא מכון מקצועי לגרפולוגיה תעסוקתית, העוסק באבחון מועמדים ומיון כח אדם.\r\nהמכון מסייע לארגונים רבים לבחור את האנשים הנכונים לתפקידים הנכונים – ומציע גם לאנשים פרטיים, העומדים בפני צמתי-החלטות תעסוקתיות ואישיות, סיוע באבחון ובניתוח מידת התאמתם למסלולי פעילות שונים.\r\n\r\n',0,46,'robots=\nauthor='),(5,'מי אנחנו','about','','<p align=\"justify\"><font color=\"#6d9099\"><font size=\"2\"><strong><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><img class=\"caption\" src=\"images/stories/maya/about-us.jpg\" border=\"0\" alt=\"about us title\" /> </span></strong></font><font size=\"2\"><strong><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></strong></font></font></p><p><font size=\"2\"><strong><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#005d76\"><span style=\"font-size: 13pt; font-family: \'Arial\',\'sans-serif\'\">מירי אגסי</span> - מייסדת המכון וגרפולוגית ראשית.<br /></font></span></strong><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#6d9099\"><br />נמנית עם הגרפולוגים המובילים בארץ בתחום מיון כוח אדם. קיבלה את ההסמכה לגרפולוגיה באגודה הגרפולוגית של ארה\"ב AAHA,</font></span></font></p><p><font size=\"2\" color=\"#6d9099\"><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">בעלת תואר B.A. בפסיכולוגיה ופילוסופיה. אוניברסיטת ת\"א. <br />מרפאה בעיסוק מוסמכת. למדה לימודי הסמכה בבית הספר לרפואה באוניברסיטת ת\"א. </span></font></p><p><font size=\"2\" color=\"#6d9099\"><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">טיפלה בילדים לקויי למידה וניהלה את \"מכון גייגר\" של קופת חולים כללית, העוסק באבחון וטיפול בילדים לקויי למידה כמו גם בייעוץ ותמיכה בהורים.<br /></span></font></p><p><font size=\"2\" color=\"#6d9099\"><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">השתלמה בתחום הגרפולוגיה המשפטית אצל המומחית פטרישה סיגל, מ- American Society of Professional Graphologists, וכמו כן השתלמה כ\"עד מומחה\" ב \"המכון הישראלי לחוות דעת עדים מומחים ובוררים\". </span></font></p><p><font size=\"2\" color=\"#6d9099\"><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">ביוני 2005 – השתתפה בצוות המומחים שבחנו אלפי חתימות, בראשות השופטת בדימוס שרה פריש, לבדיקת חשד לזיוף מפקד מפלגת העבודה.<br />מ-2004 ועד 2008, חברת הנהלה באגודה לגרפולוגיה מדעית (ישראל) ומלאה תפקידים של  גזברית האגודה וסגנית יושבת הראש. ייצגה את הגרפולוגים בישראל באגודה הגרפולוגית של ארה\"ב, AAHA, משך כ-5 שנים כ-Vice President Region.</span></font></p><p><font size=\"2\" color=\"#6d9099\"><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">תחומי עיסוק והתמחות:<br />במיון כוח אדם, רכשה מירי אגסי משך השנים נסיון רב בהתאמת מועמדים למשרות מגוונות החל מתפקידים זוטרים וכלה במשרות ניהול בכירות. <br />בתחום הייעוץ האישי וההכוונה המקצועית,  נעזרת  בידע התיאורטי והנסיון המעשי שרכשה בתחום הפסיכולוגיה והריפוי בעיסוק.<br />בתחומים אישיים ובין אישיים, מסייעת אגסי בשיחה אישית, ומשתמשת בשעת צורך, בנוסף לגרפולוגיה, במבחנים נוספים להבנה עמוקה יותר את האדם שלפניה ובעיותיו.<br />מלמדת ומנחה מתמחים בלימודי גרפולוגיה. מרצה לאנשי מקצוע העוסקים בתחום המיון.<br />כמומחית מטעם בית המשפט מוזמנת מעת לעת להציג חוות דעת מקצועיות לבתי המשפט בנושא זיהוי כתבי יד, חתימות וזיופים.</span></font></p><p><font size=\"2\" color=\"#005d76\"><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 16pt; font-family: \'Arial\',\'sans-serif\'\"><strong><br /><span style=\"font-size: 14pt; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 13pt; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#005d76\">רן טוביה</font></span></span></strong></span></span></span></font><font size=\"2\" color=\"#6d9099\"><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#005d76\"><font color=\"#005d76\"> <strong> -  גרפולוג מקצועי</strong><br /></font><br /></font>19 שנות וותק. התמחותו בעיקר במגזר העסקי.<br />בעל נסיון רב במיון כוח אדם, התאמת מועמדים לעבודה ולשותפויות עסקיות.<br />מרצה בכיר בעל ניסיון עשיר. מדריך בקורסים מקצועיים, ובכללם במוסדות להשכלה גבוהה.<br />כמו כן – מקדם ומבצע השתלמויות וימי עיון בגופים עסקיים שונים. </span></font></p><font size=\"2\"><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#6d9099\"><font color=\"#005d76\"><span style=\"color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 16pt; font-family: \'Arial\',\'sans-serif\'\"><p><br /><strong><span style=\"font-size: 14pt; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#005d76\"><span style=\"font-size: 13pt; font-family: \'Arial\',\'sans-serif\'\">גת ברנוב</span><span style=\"font-size: 12pt; font-family: \'Arial\',\'sans-serif\'\"> </span></font></span></strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#3b5f69\"><font color=\"#005d76\"> </font><strong><font color=\"#005d76\">- גרפולוגית מקצועית</font><br /></strong><br /></font></span><font color=\"#005d76\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">מוסמכת על ידי האגודה הישראלית לגרפולוגיה. </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">בעלת תואר </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">B.A</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">,<span>  </span>החוג למדעי החברה של אוניברסיטת תל אביב. </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">מתמחה במתן חוות דעת מקצועיות למעסיקים בארץ ובחו\"ל, בייעוץ אישי והכוון תעסוקתי לפרטיים.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">בעלת ניסיון רב בהוראת הגרפולוגיה ומרצה במכללת כנרת במסלול להכשרת גרפולוגים.<br /><br /></span></font></p><font color=\"#005d76\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><hr id=\"null\" /><p><strong><span style=\"font-size: 13pt; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#005d76\">לקוחותינו:</font></span></strong></p></span></font></span></span></font></font></span><font size=\"5\"><span style=\"font-size: 13pt; color: blue; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#005d76\"><span style=\"font-size: 13pt; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">למרכז לגרפולוגיה כ-250 לקוחות פעילים:<br /></span></span></font></span></font></font><font size=\"5\"><span style=\"font-size: 13pt; color: blue; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#005d76\"><span style=\"font-size: 13pt; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><br />אגרקסקו פועלים<br />אל על<br />משקי הקיבוצים <br />שיכון עובדים <br />שיכון ובינוי <br />תע\"ש<br />מכון התקנים הישראלי <br />קריסטל <br />מיטב ניהול השקעות<br />בנק דיסקונט למשכנתאות<br />אמות השקעות <br />אלרוב<br />ביטוח ישיר<br />שקל סוכנות לביטוח<br />קונקס/ דלקיה<br />נכסי אריאל<br />אביב<br />המכללה למינהל<br />בי\"ח אלין<br />אגייט קרן השקעות<br />גוליבר תיירות<br />אתגר פיננסים<br />מכון פילת</span></span></font></span></font><font size=\"5\"><span style=\"font-size: 13pt; color: blue; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#005d76\"><span style=\"font-size: 13pt; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> <p>ועוד...</p><p><br />ועוד...</p></span></span></font></span></font>','',1,2,0,1,'2009-05-05 08:06:48',62,'','2010-04-22 09:33:45',62,0,'0000-00-00 00:00:00','2009-05-05 08:06:48','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',36,0,1,'','',0,1341,'robots=\nauthor='),(6,'מיון כח אדם','2009-05-05-08-30-32','','<img class=\"caption\" src=\"images/website_pics/services.jpg\" border=\"0\" /> <p><img src=\"images/articles_headers/head-01.jpg\" border=\"0\" width=\"501\" height=\"81\" /><a name=\"service01\" title=\"service01\"></a> </p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">שירותי הערכה לגבי התאמתם של עובדים לתפקידים מגוונים: החל מתפקידי ניהול בכיר וכלה בתפקידים זוטרים.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">ההערכה לגבי התאמת המועמד מבוססת הן על כישורים ונתונים אישיותיים והן על התאמתו לדרישות ספציפיות של סביבת העבודה.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">כלי המיון העיקרי הוא ניתוח כתב יד. בהתאם לצרכים, אנו מבצעים גם סדרה של מבחני מיון נוספים וראיונות אישיים.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">שאיפתנו היא שלכל משרה ייבחר המועמד המתאים ביותר.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">נסיון רב, מעקב אחר תוצאות, הקשבה ופתיחות ללקוח – כל אלה משפרים את יכולת הניבוי שלנו.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span> </p><p><font color=\"#6d9099\">בדיקות תקופתיות מול לקוחותינו מגלות שאחוז גבוה של המועמדים, שקיבלו חוות דעת חיובית ע\"י המכון והתקבלו לתפקיד, אכן מצליחים ביותר בתפקידם.</font> </p><p align=\"left\"><a href=\"index.php?option=com_content&view=article&id=30\">כלי המיון</a> <img src=\"images/website_pics/arrow-link.jpg\" border=\"0\" /></p><p class=\"backLink\"> </p>','',1,2,0,2,'2009-05-05 08:29:45',62,'','2009-07-15 07:42:29',64,0,'0000-00-00 00:00:00','2009-05-05 08:29:45','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',50,0,2,'גרפולוגיה, אבחון גרפולוגי, כתב יד, גרפולוגית, גרפולוגים, כתב, גרפולוגיה תעסוקתית, תעסוקה, ייעוץ עסקי, ייעוץ זוגי, יעוץ עסקי, יעוץ זוגי, גרפולוגיה משפטית, פיתוח קריירה, תורת הכתב, מיון כח אדם, מיון עובדים, אבחון מקצועי, יעוץ אישי, ייעוץ אישי, הכוונה, ייעוץ והכוונה, יעוץ והכוונה, זיוף, שירות לקוחות, מרכז הערכה תעסוקתית, מרכזי הערכה, התקשרות עסקית, חיפוש עבודה, עסק, עסקים, קורס, ייעוץ, ספרות מקצועית, סקרים, אבחונים, השמה, כוח אדם, מערכות גיוס ממוחשבות, פרסום דרושים, אמצעי הדרכה, הרצאות, כיתות לימוד, קורסים והשתלמויות, פוליגרף, שירותי ייעוץ והפניה, פורום מנהלי משאבי אנוש, חתימות, חתימה, מכון מקצועי לגרפולוגיה תעסוקתית, יעוץ ומיון כא, ייעוץ ומיון כא, חברת האגודה הישראלית לגרפולוגיה מדעית, משאבי אנוש הדרכה גיוס ורווחה, חקירות, אמינות הגינות יעילות איכות שירות ואדיבות, גפולוגיה, גראפולוגיה, גרפיליגיה, גרפןלןגיה','שירותי הערכה לגבי התאמתם של מירי אגסי - המרכז לגרפולוגיה ממיין עובדים לתפקידים מגוונים: החל מתפקידי ניהול בכיר וכלה בתפקידים זוטרים. \r\n\r\n',0,264,'robots=\nauthor='),(7,'ייעוץ למנהלים','2009-05-05-08-55-45','','<p><img src=\"images/articles_headers/head-02.jpg\" border=\"0\" width=\"500\" height=\"81\" /><a name=\"service02\" title=\"service02\"></a></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">ייעוץ למנהלים, הפונים לשירות מיון כח אדם, הוא נושא מרכזי עבורנו כחלק מהשירות ללקוח. אנו תורמים באופן משמעותי לסיעור מוחות בארגון באשר להגדרת דרישות התפקיד ובשעת התלבטות וקושי לקבל החלטה סופית.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">ניתן לתקשר אתנו בכל עת, ולקבל ייעוץ מקצועי אמין ונרחב בנושאים מגוונים הקשורים למיון מועמדים.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">מומלץ להתייעץ אתנו בכל שלב במיון מועמדים, החל משלב ניסוח הדרישות הראשוני<span>  </span>ועד השלב שבו יש התלבטות בחירה בין מספר מועמדים.</span> </p><p>&nbsp;</p>','',1,2,0,2,'2009-05-05 08:54:30',62,'','2009-06-21 10:29:12',62,0,'0000-00-00 00:00:00','2009-05-05 08:54:30','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',9,0,3,'גרפולוגיה, אבחון גרפולוגי, כתב יד, גרפולוגית, גרפולוגים, כתב, גרפולוגיה תעסוקתית, תעסוקה, ייעוץ עסקי, ייעוץ זוגי, יעוץ עסקי, יעוץ זוגי, גרפולוגיה משפטית, פיתוח קריירה, תורת הכתב, מיון כח אדם, מיון עובדים, אבחון מקצועי, יעוץ אישי, ייעוץ אישי, הכוונה, ייעוץ והכוונה, יעוץ והכוונה, זיוף, שירות לקוחות, מרכז הערכה תעסוקתית, מרכזי הערכה, התקשרות עסקית, חיפוש עבודה, עסק, עסקים, קורס, ייעוץ, ספרות מקצועית, סקרים, אבחונים, השמה, כוח אדם, מערכות גיוס ממוחשבות, פרסום דרושים, אמצעי הדרכה, הרצאות, כיתות לימוד, קורסים והשתלמויות, פוליגרף, שירותי ייעוץ והפניה, פורום מנהלי משאבי אנוש, חתימות, חתימה, מכון מקצועי לגרפולוגיה תעסוקתית, יעוץ ומיון כא, ייעוץ ומיון כא, חברת האגודה הישראלית לגרפולוגיה מדעית, משאבי אנוש הדרכה גיוס ורווחה, חקירות, אמינות הגינות יעילות איכות שירות ואדיבות, גפולוגיה, גראפולוגיה, גרפיליגיה, גרפןלןגיה','במרכז לגרפולוגיה של מירי אגסי ייעוץ למנהלים, הפונים לשירות מיון כח אדם, הוא נושא מרכזי כחלק מהשירות ללקוח.',0,52,'robots=\nauthor='),(8,'ייעוץ אישי','2009-05-05-08-57-41','','<p><img src=\"images/website_pics/head-03.jpg\" border=\"0\" /><a name=\"service03\" title=\"service03\"></a></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">הכוונה אישית ותעסוקתית מומלצת לאנשים המחפשים באופן אקטיבי שינוי, ומעונינים לקחת אחריות על חייהם.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span> </span></span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">בשיחה אישית נבחנות אופציות לפיתוח קריירה תוך התמקדות במאווי הפונה, לא פחות מאשר בכישוריו. המטרה היא ליצור הזדמנות לאדם שמתלבט, להציע אלטרנטיבות לפעולה שיאפשרו לו לא רק להצליח בעתיד, אלא גם ליהנות ולהתפתח.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">הייעוץ ניתן באווירה נינוחה, פתיחות והקשבה.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">שירותי הייעוץ כוללים, בנוסף לנושא התעסוקתי, נושאי זוגיות ותקשורת בין אישית.</span> </p><p> </p>','',1,2,0,2,'2009-05-05 08:56:35',62,'','2009-06-16 15:58:20',64,0,'0000-00-00 00:00:00','2009-05-05 08:56:35','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,4,'גרפולוגיה, אבחון גרפולוגי, כתב יד, גרפולוגית, גרפולוגים, כתב, גרפולוגיה תעסוקתית, תעסוקה, ייעוץ עסקי, ייעוץ זוגי, יעוץ עסקי, יעוץ זוגי, גרפולוגיה משפטית, פיתוח קריירה, תורת הכתב, מיון כח אדם, מיון עובדים, אבחון מקצועי, יעוץ אישי, ייעוץ אישי, הכוונה, ייעוץ והכוונה, יעוץ והכוונה, זיוף, שירות לקוחות, מרכז הערכה תעסוקתית, מרכזי הערכה, התקשרות עסקית, חיפוש עבודה, עסק, עסקים, קורס, ייעוץ, ספרות מקצועית, סקרים, אבחונים, השמה, כוח אדם, מערכות גיוס ממוחשבות, פרסום דרושים, אמצעי הדרכה, הרצאות, כיתות לימוד, קורסים והשתלמויות, פוליגרף, שירותי ייעוץ והפניה, פורום מנהלי משאבי אנוש, חתימות, חתימה, מכון מקצועי לגרפולוגיה תעסוקתית, יעוץ ומיון כא, ייעוץ ומיון כא, חברת האגודה הישראלית לגרפולוגיה מדעית, משאבי אנוש הדרכה גיוס ורווחה, חקירות, אמינות הגינות יעילות איכות שירות ואדיבות, גפולוגיה, גראפולוגיה, גרפיליגיה, גרפןלןגיה','במרכז לגרפולוגיה של מירי אגסי נבחנות אופציות לפיתוח קריירה תוך התמקדות במאווי הפונה, לא פחות מאשר בכישוריו. המטרה היא ליצור הזדמנות לאדם שמתלבט, להציע אלטרנטיבות לפעולה שיאפשרו לו לא רק להצליח בעתיד, אלא גם ליהנות ולהתפתח. \r\n ',0,70,'robots=\nauthor='),(9,'איתור זיופים','2009-05-05-08-59-13','','<p><img src=\"images/website_pics/head-04.jpg\" border=\"0\" /><a name=\"service04\" title=\"service04\"></a></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">שירותי בדיקות לאיתור זיופים ושירותי גרפולוגיה משפטית:</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">אנו כותבים חוות דעת משפטיות לבית המשפט, ונותנים בשעת צורך עדות מומחה בבית המשפט בנושאים של זיוף חתימות ואותנטיות של מסמכים.</span> </p><p> </p>','',1,2,0,2,'2009-05-05 08:58:18',62,'','2009-06-16 15:59:26',64,0,'0000-00-00 00:00:00','2009-05-05 08:58:18','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',8,0,5,'גרפולוגיה, אבחון גרפולוגי, כתב יד, גרפולוגית, גרפולוגים, כתב, גרפולוגיה תעסוקתית, תעסוקה, ייעוץ עסקי, ייעוץ זוגי, יעוץ עסקי, יעוץ זוגי, גרפולוגיה משפטית, פיתוח קריירה, תורת הכתב, מיון כח אדם, מיון עובדים, אבחון מקצועי, יעוץ אישי, ייעוץ אישי, הכוונה, ייעוץ והכוונה, יעוץ והכוונה, זיוף, שירות לקוחות, מרכז הערכה תעסוקתית, מרכזי הערכה, התקשרות עסקית, חיפוש עבודה, עסק, עסקים, קורס, ייעוץ, ספרות מקצועית, סקרים, אבחונים, השמה, כוח אדם, מערכות גיוס ממוחשבות, פרסום דרושים, אמצעי הדרכה, הרצאות, כיתות לימוד, קורסים והשתלמויות, פוליגרף, שירותי ייעוץ והפניה, פורום מנהלי משאבי אנוש, חתימות, חתימה, מכון מקצועי לגרפולוגיה תעסוקתית, יעוץ ומיון כא, ייעוץ ומיון כא, חברת האגודה הישראלית לגרפולוגיה מדעית, משאבי אנוש הדרכה גיוס ורווחה, חקירות, אמינות הגינות יעילות איכות שירות ואדיבות, גפולוגיה, גראפולוגיה, גרפיליגיה, גרפןלןגיה','מירי אגסי - המרכז לגרפולוגיה. שירותי בדיקות לאיתור זיופים ושירותי גרפולוגיה משפטית: \r\nאנו כותבים חוות דעת משפטיות לבית המשפט, ונותנים בשעת צורך עדות מומחה בבית המשפט בנושאים של זיוף חתימות ואותנטיות של מסמכים. \r\n\r\n',0,44,'robots=\nauthor='),(10,'קורסים מקצועיים','2009-05-05-09-00-53','','<p><img src=\"images/website_pics/head05.jpg\" border=\"0\" /><a name=\"service05\" title=\"service05\"></a><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">שירותי הדרכה לגרפולוגים ומתעניינים:</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span> </p><ul style=\"margin-top: 0in\"><li class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; color: #6d9099\"><span style=\"font-size: 10pt; font-family: \'Arial\',\'sans-serif\'\">קורסים מלאים לקראת בחינה באגודה לגרפולוגיה.<span>  </span></span></li><li class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; color: #6d9099\"><span style=\"font-size: 10pt; font-family: \'Arial\',\'sans-serif\'\">השלמת חומר לתלמידים שלמדו חלקית ובצורה לא מסודרת.</span></li><li class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; color: #6d9099\"><span style=\"font-size: 10pt; font-family: \'Arial\',\'sans-serif\'\">קורס מקוצר של מבוא לגרפולוגיה.</span></li><li class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; color: #6d9099\"><span style=\"font-size: 10pt; font-family: \'Arial\',\'sans-serif\'\">סטאג\' והשתלמויות לגרפולוגים מקצועיים.</span></li><li class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; color: #6d9099\"><span style=\"font-size: 10pt; font-family: \'Arial\',\'sans-serif\'\">סדנא למנהלי משאבי אנוש הנותנת כלים לגבי סימני \"עצור\" בכתב היד.</span></li><li class=\"MsoNormal\" style=\"margin: 0in 0in 0pt; color: #6d9099\"><span style=\"font-size: 10pt; font-family: \'Arial\',\'sans-serif\'\">סדנאות בנושא גרפולוגיה תעסוקתית.</span></li></ul><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">להרשמה להדרכה <a href=\"index.php?option=com_content&view=article&id=15&Itemid=7\">צור קשר</a></span> <p style=\"margin: 0in 0in 0pt\" dir=\"rtl\" class=\"MsoNormal\">&nbsp;</p>','',1,2,0,2,'2009-05-05 08:59:54',62,'','2009-07-14 06:55:26',62,0,'0000-00-00 00:00:00','2009-05-05 08:59:54','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',14,0,6,'גרפולוגיה, אבחון גרפולוגי, כתב יד, גרפולוגית, גרפולוגים, כתב, גרפולוגיה תעסוקתית, תעסוקה, ייעוץ עסקי, ייעוץ זוגי, יעוץ עסקי, יעוץ זוגי, גרפולוגיה משפטית, פיתוח קריירה, תורת הכתב, מיון כח אדם, מיון עובדים, אבחון מקצועי, יעוץ אישי, ייעוץ אישי, הכוונה, ייעוץ והכוונה, יעוץ והכוונה, זיוף, שירות לקוחות, מרכז הערכה תעסוקתית, מרכזי הערכה, התקשרות עסקית, חיפוש עבודה, עסק, עסקים, קורס, ייעוץ, ספרות מקצועית, סקרים, אבחונים, השמה, כוח אדם, מערכות גיוס ממוחשבות, פרסום דרושים, אמצעי הדרכה, הרצאות, כיתות לימוד, קורסים והשתלמויות, פוליגרף, שירותי ייעוץ והפניה, פורום מנהלי משאבי אנוש, חתימות, חתימה, מכון מקצועי לגרפולוגיה תעסוקתית, יעוץ ומיון כא, ייעוץ ומיון כא, חברת האגודה הישראלית לגרפולוגיה מדעית, משאבי אנוש הדרכה גיוס ורווחה, חקירות, אמינות הגינות יעילות איכות שירות ואדיבות, גפולוגיה, גראפולוגיה, גרפיליגיה, גרפןלןגיה, קורסים מלאים לקראת בחינה באגודה לגרפולוגיה.  השלמת חומר לתלמידים שלמדו חלקית ובצורה לא מסודרת.קורס מקוצר של מבוא לגרפולוגיה, סטאג\' והשתלמויות לגרפולוגים מקצועיים, סדנא למנהלי משאבי אנוש הנותנת כלים לגבי סימני עצור בכתב היד, סדנאות בנושא גרפולוגיה תעסוקתית','במרכז לגרפולוגיה של מירי אגסי ניתנים שירותי הדרכה לגרפולוגים מתחילים ומתקדמים. קורסים מלאים לקראת בחינה באגודה לגרפולוגיה.  \r\nהשלמת חומר לתלמידים שלמדו חלקית ובצורה לא מסודרת.\r\nקורס מקוצר של מבוא לגרפולוגיה.\r\nסטאג\' והשתלמויות לגרפולוגים מקצועיים.\r\nסדנא למנהלי משאבי אנוש הנותנת כלים לגבי סימני עצור בכתב היד.\r\nסדנאות בנושא גרפולוגיה תעסוקתית.\r\n',0,48,'robots=\nauthor='),(11,'צוואות וייפויי כח','2009-05-05-10-37-04','','<p><img class=\"caption\" src=\"images/website_pics/articles.jpg\" border=\"0\" /></p><h2>צוואות וייפויי כח <br /></h2><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #a6a6a6; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#6d9099\">האם איכות החתימה מושפעת מגיל מתקדם? האם ניתן לזהות מצב בריאותי מסוים מחתימה בלבד? <br /><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">התשובה לשתי השאלות היא – כן. בסייגים ובזהירות הנדרשת...</span></font></span></span></p>','<p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong>ככלל:</strong> איכות החתימה מושפעת לא רק מגיל מתקדם אלא גם ממצב בריאותי ופיזי של כל חותם. מצב בריאותי לא תקין, אפילו חום גבוה יכול להשפיע זמנית, על איכות הכתיבה.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">בעיה פיזית שמשפיעה על איכות הכתיבה יכולה להיות זמנית (תרופות חזקות, עייפות רבה, מתח), כרונית (מחלה כרונית), או מתקדמת (מחלה שמתפתחת). ירידה בראייה.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">בעיה מנטלית שמשפיעה על איכות הכתיבה יכולה להיות ירידה מנטלית עקב גיל מבוגר, מחלה (דמנציה, אלצהיימר, פרקינסון), מחלות נפשיות, עצבנות קיצונית, לחץ חיצוני חזק (כולל לחץ של זמן), ומתח פנימי – כל אלה ישפיעו על איכות הכתיבה והחתימה. </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">לעיתים קרובות יש השפעות גומלין כך שהבחנה מבדלת בין בעיה פיזית למנטלית נתונה למחלוקת.<span>  </span>לעיתים ניתן להגיע להבחנה חד משמעית.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong>שלבי עבודת הגרפולוג המשפטי:</strong></span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">1.<span>  </span>טכנית:<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">הגרפולוג בוחן את החתימה השנויה במחלוקת מול חתימות אחרות, אם ישנן כאלה, בתקופה החופפת לחתימה שבמסמך. </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">הגרפולוג משווה בין חתימת האיש לחתימותיו בתקופות קודמות<span>  </span>ובכך מזהה דפוסים והרגלים באשר לצורת החתימה לאורך השנים.</span></p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><p><br /><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">2.<span>  </span>זיהוי השפעות הגיל:<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">בגיל המתקדם, ניכרים פערים באיכות הכתיבה בין מי ששומר על עירנות ומצב פיזי תקין ובין מי שמתקשה אף בכתיבה מועטה ולא יכול לחתום את שמו כראוי.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">בדרך כלל גם כאשר המצב הבריאותי של החותם תקין לגילו, שינויים פיזיולוגיים ומנטליים באים, בכל זאת, באופן טבעי לידי ביטוי.</span></p></span><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">אבדן שליטה הפיזית בעט הכתיבה, אם קיים, הוא הדרגתי, אם כי לא בהכרח לינארי.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">התקפים של רעד יכולים לבשר על החמרה.<span>  </span>ככל שהרעד חמור יותר כך גם צורת האותיות מתעוותת.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">קו לא סדיר, לא יציב. סטייה תכופה, חוסר המשכיות, חוסר יכולת ליצור תנועה חלקה של הקו.<span><br /></span></span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">את הכתב והחתימה בגיל הזיקנה בדרך כלל מאפיינים:<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">רעד. </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">שינוי בצורת האותיות, חוסר יכולת לבצע את התנועה במלואה, ולהגיע לצורה המתבקשת.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">התחלה לא מוצלחת של המילים, לפעמים לחץ חזק ונוקשה במילה עצמה, זרימה טובה יותר בחלק הסופי שלה.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">הקווים מחוספסים, צורת האותיות מגושמת, נראה שהכיוון והתנועה של העט אינם צפויים.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">חוסר שליטה בעט הכתיבה במצבים קיצוניים או חוסר יציבות באחיזה<span>  </span>- גורמים בהתאמה לשינויים בלחץ ובנוכחות הקו על הדף.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">כשיש בעיית ראייה: הכתב הופך מרושל, לא מדויק. בדרך כלל גדול יותר, \"מפספס\" את השורות.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">במידה וידוע על מחלה שסבל ממנה החותם, הגרפולוג בוחן את הכתב מול השינויים המאפיינים את המחלה.<span>  </span></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">אלצהיימר, כדוגמא, זו מחלה שמתאפיינת גם ע\"י על ידי אלמנטים פיזיים וגם ע\"י אלמנטים מנטליים.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">ככל שמתפתחת המחלה, כך מאבד החולה את היכולת לקרוא ולכתוב. הוא שוכח מילים, מתקשה לכתוב ברצף. מתקשה לסיים מטלות. קשה לו להתרכז. אפילו את שמו קשה לו לכתוב ברצף.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">חולה האלצהיימר מבולבל, מדוכא, קל להוציא אותו משלוותו, הוא חסר מנוחה, חרד. מגיב בעוצמה רבה מדי לגירויים שסביבו או בצורה לא אדקווטית.<span> </span></span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">התרופות שמקבלים חולי האלצהיימר – בעלות עוצמה ומשפיעות אף הן על איכות הכתיבה.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">בתחילת התהליך של התפתחות האלצהיימר ניכרים:<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">חולשה בלחץ על העט ובמיומנות הכתיבה.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">לחץ מופרע, חוסר שליטה בהפקת זויות. </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">שינויים תדירים בכיוון הקווים ללא שליטה.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">כשהתהליך מתעצם יש התפרקות של הכתב עד להיעדר צורה.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">3.<span>  </span>הבחנה מבדלת בין מצב פיזי ירוד לבין מצב מנטלי ירוד:<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">מצב מנטלי ירוד בא לידי ביטוי בהתפרקות הצורה<span>  </span>והארגון של הכתב. החולה לא מכוון את תנועת הכתיבה עקב כך שלא ממוקד, \"לא בעניינים\", ולא יודע לאן לכוון. אין הוא לגמרי מבין איך הוא אמור להתפרס על הדף ולכתוב את הנדרש. במצבים חמורים מדובר בחוסר אוריינטציה מוחלט.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">חלק מהמאפיינים הגרפיים של מצב מנטלי ירוד הם:<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">התפרקות הארגון על הדף. החתימה נכתבת בכיוון לא נכון, מיקום לא מדויק. ניכר חוסר אוריינטציה על הדף.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">גם אם החותם התחיל את החתימה במקום, עקב כך שכיוונו אותו, היא אינה \"צמודה\" לקו האפקי אלא יורדת .</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">ניכר קושי לדייק בצורת האותיות, קושי לסיים אותן, עד להתפרקותן במצבים קיצוניים.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">הגרפולוג מזהה ומאבחן את האלמנטים המביאים לידי ביטוי את המצב המנטלי הירוד, חוסר האוריינטציה, או חוסר ההבנה. כשאלה במצב הזקנה באים בנוסף לאלמנטים של חוסר שליטה פיזית בעט הכתיבה.</span></p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><p>שתי שאלות תדירות, נשאל הגרפולוג המשפטי:<br /><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">1.<span>  </span>האם ניתן לזהות חתימה בגיל המבוגר, למרות חוסר אוריינטציה של החותם, וההשפעה של הגיל המתקדם<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">2.<span>  </span>האם ניתן לעשות הבחנה מבדלת בין המצב הפיזי לבין מידת המודעות של החותם למעשיו.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">התשובה לשתי השאלות היא – כן. בסייגים ובזהירות הנדרשת:</span> <br /><br /><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">1.<span>  </span>הגרפולוג אינו רופא, ואינו פסיכיאטר. לא ניתן לתת דיאגנוזה רפואית, פסיכולוגית או פסיכיאטרית.<span>  </span>גם אין מדדים חד משמעיים שבודקים הנחות כאלה.</span> </p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">2</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">.<span>  </span>כן ניתן ברוב המקרים לאמת חתימה.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span> </span>גם במצב פיזי ירוד, כשהחתימה ירודה באיכותה נוטה החותם לבצע את החתימה בהתאם לדפוס המוכר לו.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">3.<span>  </span>ניתן גם במקרים מסוימים לתת הערכה כללית באשר למצבו בשעת הכתיבה יחסית לחתימותיו האחרות באותו השלב. במידה ויש חתימות להשוואה לאורך זמן ניתן לעיתים להבחין בין הידרדרות הדרגתית, ובין מצב קשה \"מקומי\".</span></p></span><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">לסיכום: </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">ברוב המקרים, גרפולוג מיומן יכול להבחין באפיונים האינדיבידואליים של החתימה כדי ליצור בסיס לקביעת זהות הכותב או החותם. </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">יש ביכולתו של הגרפולוג לזהות הידרדרות פיזית ומנטלית.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">יש מקרים בהם הגרפולוג יכול אפילו לתת הערכה לגבי הזמן המשוער בו נכתב דבר מה, על פי מידת ההידרדרות בשליטה בכתיבה.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">הבחנה מבדלת בין קושי פיזי למנטלי בגיל הזקנה אפשרית כאשר השינוי בתפיסה של הכותב והבנה לא טובה של המציאות באים לידי ביטוי באלמנטים מובחנים.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">עם זאת יש לזכור שהגרפולוג או המומחה לזיהוי כתבי יד אינו מומחה לזיהוי מחלות. אין הוא אמור ולא יכול לתת דיאגנוזה רפואית או נפשית!!! מכך הגרפולוג המשפטי אמור להימנע.</span></p><p>&nbsp;</p><p class=\"backLink\"><a href=\"index.php?option=com_content&view=category&layout=blog&id=7&Itemid=4\">בחזרה</a></p>',1,1,0,7,'2009-05-05 10:36:22',62,'','2009-07-16 06:31:42',62,0,'0000-00-00 00:00:00','2009-05-05 10:36:22','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',31,0,4,'','',0,654,'robots=\nauthor='),(12,'מאמר שני','2009-05-05-10-37-30','','<p>טקסט</p>','<p>&nbsp;</p>',1,2,0,3,'2009-05-05 10:37:15',62,'','2009-05-05 10:42:50',62,0,'0000-00-00 00:00:00','2009-05-05 10:37:15','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,2,'','',0,3,'robots=\nauthor='),(13,'שאלות נפוצות','2009-05-05-10-38-00','','<p><img src=\"images/website_pics/faq.jpg\" border=\"0\" width=\"402\" height=\"28\" /></p><p><br /><font color=\"#3b5f69\"><strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#3b5f69\">על מה מסתמך הגרפולוג בניתוח כתב יד: על האותיות - או על שוליים, העמדת הכתב על הנייר וכו\'?</font></span></strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></font></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">הכתב הוא \"מקשה אחת\". הגרפולוג מתבונן ומתרשם מהכתב כולו כמו גם מהפרטים. לכל אחד מהפרמטרים חשיבות. לצורת האותיות, לעריכה הכוללת לשוליים, העמדת הכתב על הנייר, לחץ ואיכות הקו. מדובר בפרטים רבים ומגוונים. החשיבות של כל פרט משתנה בכל ניתוח: כל פרט נבחן לגופו של עניין.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">אנו מחפשים מצד אחד את הפרמטרים הדומיננטיים הבולטים ויוצאי הדופן בכתב, גם את אלה שבתחום הנורמה, ומצד שני את הפרמטרים ה\"חלשים\" שחסרים ואינם מופיעים. סינתזה של כל האינפורמציה מאפשרת להבין את מורכבות אישיותו של הכותב.<br /><br /><br /><br /></span></p><strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#3b5f69\">למה צריך לכתוב 20 שורות?</font></span></strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span> <p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">אנו זקוקים למספר רב יחסית של שורות כדי לראות מה קורה לכותב \"עם הזמן\".</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">בתחילת העמוד, באה לידי ביטוי התמונה שהכותב שואף להציג כלפי חוץ. בסופו של העמוד הכותב מקבל \"תאוצה\", יותר ספונטאני, פחות בשליטה.<span>  </span>הכותב עייף מלהרשים,<span>  </span>מציג את עצמו כפי שהוא באמת. כך, לדוגמא, לעיתים הכתב הססני בתחילת העמוד ושוטף וזורם בחלקו השני.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">דווקא החצי השני של העמוד חשוב יותר, ומביא לידי ביטוי תכונות שלא יבואו לידי ביטוי בחלק הראשון.<br /><br /><br /><br /></span><strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#3b5f69\">בן אדם עקשן לא יכול להיות ותרן? איך מזהים עקשנות כתכונה שלטת?</font></span></strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">חשוב מאד להבין למה כל אחד מאתנו מתכוון במילה עקשן ובמילה ותרן. לי הן נשמעות כתכונות סותרות. אבל בהחלט ייתכן שיש אנשים עקשנים כלפי חוץ, ורכים כלפי פנים אותם ניתן לשכנע בדברי נועם. כאן יהיו סינדרומים ופרמטרים מאפיינים שונים מאלה שיהיו אצל אנשים עקשנים ונוקשים.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">חלק מהפרמטרים המבטאים עקשנות הם: כתב יד בלחץ חזק ללא הרפיה, קו נוקשה, זוויות חדות וקמרונים.<br /><br /><br /><br /></span><strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#3b5f69\">למה חתימה כל כך חשובה לניתוח?</font></span></strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">החתימה היא ה\"סמל המסחרי\" של הכותב. בניגוד לעבר בו היו מקובלות חתימות \"מסולסלות\" ומצויירות, חתימות כיום ספונטאניות, מהירות, מינימאליות. החותם כבר לא אמור \"להיצמד\" לצורת האותיות. כך, החתימות משקפות, מבלי דעת החותם, את התנועה המוטורית והביו פיזיקלית האמיתית שלו. כיוון שזה סימן ההיכר שלו, הסמל שלו - הן מסגירות גם איך היה רוצה להיות. מה היה רוצה שיהיה סימן ההיכר שלו. לעיתים מופיעה בחתימה תנועה שלא הופיעה בכתב עצמו שהוא עצור וזהיר.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#3b5f69\"><font color=\"#6d9099\">הגרפולוג אינו מנתח רק את החתימה, אלא משווה את גודלה של החתימה, את מהירות כתיבתה וצורות הקישור לכתב עצמו גרפולוג מנתח למעשה את השוני בין החתימה לכתב היד. את \"כמות\" השוני ואת מהותו. ככלל אנו מצפים שיהיו אלמנטים דומים בין הכתב לחתימה. שוני מוגזם מרמז שהאיש כלפי חוץ<span>  </span>מציג \"תמונה\" שונה מהמהות הפנימית שלו. במצבים קיצוניים אנו רואים זאת כסימן לאי יושר.<br /></font><br /><br /></font></span><strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><br /><font color=\"#3b5f69\">על פי אילו סימנים ניתן לאבחן מחלות?</font></span></strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#3b5f69\"> </font></span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">איני מאבחנת מחלות על פי סימנים בכתב יד. עם זאת, אציין שניתן להבחין בחולשה או רעד העשויים לרמוז על מחלה כלשהי. כדוגמא: חוסר ריכוז כתוצאה מעייפות, או כתוצאה מבעיה פיזית או נפשית יבוא לידי ביטוי בכתב<span> </span>בטעויות והשמטות.<br /><br /><br /><br /></span><strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><font color=\"#3b5f69\">האם יש מחקרים שמצאו שגרפולוגיה הנה כלי מדויק?</font></span></strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">ההיפותזה שלכל אחד כתב ייחודי משלו זכתה להוכחות מדעיות. היום, יש תוכנות מחשב שמזהות כתבי יד שנכתבו ע\"י אותו אדם, ומסוגלות לבחור את הכתבים הרלוונטיים לכותב מסוים מבין כתבים מרובים.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">יש מחקרים המאשרים שהגרפולוגיה היא כלי אבחון אמין למדי. יש גם כאלה הסותרים זאת. לדעתי, אין מספיק מחקרים. יותר מכך, לצערי, חלקם אינו אובייקטיבי ומעוות במכוון. חלקם בודק את הגרפולוג ולא את הגרפולוגיה.<br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">אשמח מאד אם יבוצעו מחקרים רבים נוספים על ידי גורמים אובייקטיביים ומקצועיים. אלה יקדמו את המקצוע ללא ספק.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">מעבר לכל אלה, הגרפולוגיה היא כלי המוכיח אמינותו בשטח, בשימוש היומיומי. זה הדבר החשוב.<br /><br /><br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><font color=\"#3b5f69\"><br />תכונות כמו יושר, נאמנות, כנות- האם הנן תכונות מובהקות וניתן להעיד עליהן באופן מובהק?</font></strong></span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">יש אנשים נאמנים וכנים בכל מצב. יש כאלה שאינם ישרים בדרך כלל. רוב האוכלוסייה נמצאת איפשהו בתחום הביניים. כל אחד מאתנו, אם יהיה ישר עם עצמו, יודה שלעיתים הוא מתמרן, לעיתים מסתיר אינפורמציה, לעיתים לא אומר את כל האמת. כך שבפועל בדרך כלל ועל פי רוב אין מדובר בתכונה מובהקת. היא מובהקת רק ב\"קצוות\". </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">יש להתייחס למסקנות באבחון הגרפולוגי באשר ליושר בפרספקטיבה כוללת, יחסית לנורמה, כמו לכל תכונה אחרת. אנו בוחנים באיזה עוצמה ובאיזה תדירות מופיעים סימנים של יושר או של אי יושר בכתב היד.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">לגבי מובהקות - יש לקחת בחשבון טווח של טעות.<br /><br /><br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><font color=\"#3b5f69\"><br />האם אי אפשר ללמוד לבד גרפולוגיה, בזמן קצר?</font></strong></span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">לא. גם אם יש מישהו שמסוגל לעכל כמות כה גדולה של חומר תיאורטי, אין הדבר מספיק. כדי להפוך לגרפולוג יש צורך בחומר תיאורטי, אך בנוסף במורה טוב שינחה ויראה כיצד משתמשים בנתונים אלה. צריך גם ניסיון, ואין קיצורי דרך. על התלמיד לעבור את כל השלבים הדרושים כדי להפוך למיומן. עליו להתמודד עם כתבים רבים, לקבל היזון חוזר על עבודתו, ו\"להפנים\" את הנלמד. מדובר בזמן רב ובכמות מרובה של חומר תיאורטי. נדרשים<span>  </span>מאות ואולי אף אלפי כתבים וכמה שנים כדי \"להתמקצע\".<br /><br /><br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><font color=\"#3b5f69\"><br />עד כמה מדויק הניתוח של גרפולוג מקצועי ומיומן? (באחוזים)</font></strong></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">סקר לקוחות שבוצע במשרדי מול חמש מהחברות הגדולות להן אנו מבצעים מאות דוחות בשנה, והביעו הסכמתן להשתתף בסקר, בחן אבחונים גרפולוגיים שנעשו בעבר למועמדים אותם הם מכירים, והוכיחו או לא הוכיחו את יעילותם בעבודה. הסקר הוכיח חד משמעית שהגרפולוגיה היא כלי מיון תומך החלטה אמין ודי מדויק. אמינות הדוחות דורגה על ידי כל המשתתפים (מנהלי משאבי אנוש) בציונים שבין 8(טוב) ל- 10(מצוין), שהם לכל הדעות ציונים המוכיחים דיוק רב. אני בטוחה שגרפולוגים מיומנים העובדים באופן אינטנסיבי מגלים רמת דיוק דומה.<br /><br /><br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><font color=\"#3b5f69\"><br />איך אפשר להבדיל בין גרפולוג חובבן לגרפולוג מקצועי ומנוסה לפני תחילת עבודה משותפת?</font></strong></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">מומלץ שתהליך הבחירה שייעשה כמו מול כל בעל מקצוע אחר: קודם כל המלצות. בנוסף – מומלץ לוודא שהגרפולוג הוסמך ע\"י אגודה מוכרת ובעלת מוניטין, בארץ או בעולם. <br /><br /><br /><br /><br /></span></p>','',1,2,0,4,'2009-05-05 10:37:42',62,'','2009-06-16 16:02:33',64,64,'2009-06-24 16:16:46','2009-05-05 10:37:42','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',28,0,1,'','',0,1104,'robots=\nauthor='),(14,'קישורים','2009-05-05-10-38-20','','<p><strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><img src=\"images/website_pics/links.jpg\" border=\"0\" width=\"402\" height=\"28\" /><br /><br /><br /></span></strong><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><font color=\"#3b5f69\">רשימת מאמרים מדעיים ומחקרים</font></strong></span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><br /></strong>המאמרים שפורסמו באוניברסיטאות בעולם ובז\'ולרנלים מקצועיים, החל משנת 1950. את הרשימה אספה וערכה דפנה ילון. </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">האתר הוא של הקולוקוים (</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">IGC: The International Graphological Colloquium</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">) </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">שנוסד ב1998, שלא למטרות רווח, ומאגד גרפולוגים מקצועיים מכל העולם.<br /><br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"color: #6d9099; text-decoration: none\"><a href=\"http://www.igc-grapho.net/\" target=\"_blank\">http://www.igc-grapho.net<span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><br /></span></a><br /></span></span></span></p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><hr id=\"null\" /><br /><br /><strong><font color=\"#3b5f69\">ציטוטים מעבודות גמר באוניברסיטה</font></strong> <p><br />ציטוטים מעבודות גמר באוניברסיטה התומכים בהנחות יסוד באשר לתוקף הגרפולוגיה.<span> </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">חנה קורן, גרפולוגית ישראלית וותיקה, אספה ומפרסמת קטעים מעבודות גמר של סטודנטים, בנושא הגרפולוגיה.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"color: #6d9099; text-decoration: none\"><a href=\"http://www.annakoren.co.il/research_1.asp\" target=\"_blank\">http://www.annakoren.co.il/research_1.asp</a></span><br /><br /></span></p></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><hr id=\"null\" /><p><br /><br /><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><font color=\"#3b5f69\">רשימת ספרים מקצועיים</font></strong></span> </p></span><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><br /></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">ספרי הלימוד הבסיסיים והטובים שבהם.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">הרשימה מתפרסמת באתר המייצג גרפולוגים מקצועיים וחובבים מכל העולם. מטרת הקבוצה לקדם את נושא הגרפולוגיה. הגב\' </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">Toong-Jye Low</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span> </span>יזמה ויסדה את הקבוצה אותה היא מכנה ה-</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">GCLUB </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span> </p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"color: #6d9099; text-decoration: none\"><a href=\"http://web.singnet.com.sg/~tjlow/graphology/gcbklst.htm\" target=\"_blank\">http://web.singnet.com.sg/~tjlow/graphology/gcbklst.htm</a></span></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span></p><p> </p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">באתר גם רשימת אקדמיות ואגודות לגרפולוגיה הפעילות בעולם.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"color: #6d9099; text-decoration: none\"><a href=\"http://web.singnet.com.sg/~tjlow/graphology/gcedu.htm\" target=\"_blank\">http://web.singnet.com.sg/~tjlow/graphology/gcedu.htm<br /></a><br /></span></span></p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"color: #6d9099; text-decoration: none\"><hr id=\"null\" /><p><br /><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><font color=\"#3b5f69\">אגודות לגרפולוגיה בעולם<br /><br /><br /></font></strong></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">רשימה מפורטת של בתי ספר לגרפולוגיה, ספרים וז\'ורנלים מקצועיים, שאלות ותשובות, ופרסומים באשר לסמפוזיונים וכנסים מקצועיים.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">הרשימה מופיעה באתר של ה- </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">Graphology Information Centre</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">UK.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"color: #6d9099; text-decoration: none\"><a href=\"http://www.wmin.ac.uk/marketingresearch/graphology/2162abbrevs.htm\" target=\"_blank\">http://www.wmin.ac.uk/marketingresearch/graphology/2162abbrevs.htm</a><br /><br /></span><hr id=\"null\" /><br /><br /></span></p></span></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><font color=\"#3b5f69\">גרפולוגים בישראל מפרסמים מאמרים ומחקרים עכשוויים</font></strong></span> <p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><strong><font color=\"#3b5f69\"><br /></font></strong></span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">האגודה לגרפולוגיה מדעית בישראל מפרסמת את המאמרים באתר שלה. האגודה מאגדת ומייצגת את הגרפולוגים המקצועיים בישראל. בוחנת לתעודת – גרפולוג מקצועי, מפיקה כנסים מקצועיים והרצאות.</span></p><p><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"color: #6d9099; text-decoration: none\"><a href=\"http://graphology.dpages.co.il/\" target=\"_blank\">http://graphology.dpages.co.il/</a><br /><br /><hr id=\"null\" /><br /><br /><br /><br /></span></span></p>','',1,2,0,5,'2009-05-05 10:38:07',62,'','2009-07-20 14:59:38',64,0,'0000-00-00 00:00:00','2009-05-05 10:38:07','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',43,0,1,'','',0,1189,'robots=\nauthor='),(15,'צור קשר','2009-05-05-10-38-39','','<p><img src=\"images/website_pics/contact.jpg\" border=\"0\" width=\"402\" height=\"28\" /> </p><p> </p><p><strong><font color=\"#005d76\">מירי אגסי המרכז לגרפולוגיה</font></strong></p><p> </p><table border=\"0\" align=\"right\"><tbody><tr><td><strong> </strong><font color=\"#6d9099\"><strong>כתובת:</strong>             </font></td><td><font color=\"#6d9099\">ענתות 13 </font></td></tr><tr><td><font color=\"#6d9099\"> </font></td><td><font color=\"#6d9099\">גני צהלה </font></td></tr><tr><td><font color=\"#6d9099\"> <br /></font></td><td><font color=\"#6d9099\">תל אביב 69080 </font></td></tr><tr><td><font color=\"#6d9099\"> </font></td><td><font color=\"#6d9099\"> </font></td></tr><tr><td><font color=\"#6d9099\"><strong> טלפקס:<br /></strong></font></td><td> <font color=\"#6d9099\">03-6482083<br /></font></td></tr><tr><td><font color=\"#6d9099\"> </font></td><td><font color=\"#6d9099\">  </font></td></tr><tr><td> <strong><font color=\"#6d9099\">אימייל:<br /></font></strong></td><td> <a href=\"mailto:info@agassi.co.il\">info@agassi.co.il</a><br /></td></tr><tr><td> </td><td> </td></tr><tr><td> <strong><font color=\"#6d9099\"> </font></strong></td><td><p> </p></td></tr></tbody></table>','',1,2,0,6,'2009-05-05 10:38:25',62,'','2009-07-19 11:55:10',64,0,'0000-00-00 00:00:00','2009-05-05 10:38:25','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',15,0,1,'','',0,1088,'robots=\nauthor='),(16,'fgh jfgh j','fgh-jfgh-j','','j fghj ghj fghj fghj ghj','',-2,0,0,0,'2009-05-10 07:44:39',62,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2009-05-10 07:44:39','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,0,'','',0,0,'robots=\nauthor='),(17,'שירותי אינטרנט מתקדמים','2009-05-10-07-54-26','','<p>שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט </p>','<p>שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט שירותי אינטרניט</p>',-2,2,0,2,'2009-05-10 07:53:30',64,'','2009-05-18 09:27:18',62,0,'0000-00-00 00:00:00','2009-05-10 07:53:30','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,0,'','',0,3,'robots=\nauthor='),(18,'test','test','',' גכע גדכע גדכע גדכע גדכעfgsdf gsdfg dsfg','',-2,0,0,0,'2009-05-10 16:06:32',62,'','2009-05-10 16:07:49',64,0,'0000-00-00 00:00:00','2009-05-10 16:06:32','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',3,0,0,'','',0,0,'robots=\nauthor='),(19,'כגעי גכע י','2009-05-10-16-08-11','','כגע יגכעי גכע י','',-2,1,0,7,'2009-05-10 16:07:54',64,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2009-05-10 16:07:54','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,0,'','',0,0,'robots=\nauthor='),(20,'ניסיון נוסף','2009-05-10-17-00-05','','יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך יצא לי עם עורך','',-2,2,0,2,'2009-05-10 16:58:16',64,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2009-05-10 16:58:16','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,0,'','',0,2,'robots=\nauthor='),(21,'מאמר על ההדרכה הנהדרת','-sharav','','<span><span class=\"text16g\"><strong>מייד כשיצא מבית פרעה נקלע משה רבנו לשלושה סכסוכים: בין מצרי לעברי, בין שני עבריים ובין בנות יתרו לרועים במדין. ארבעה ממשתתפי בית המדרש לח\"כים בכנסת כתבו עבור ynet את הפרשנות שלהם לאירועים. בואו ללמוד</strong></span> </span><span><p style=\"margin-top: 8px\"><span style=\"margin-top: 2px\"><a class=\"text14\"><u>ynet</u></a></span> <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tbody><tr><td class=\"text12g\">פורסם: </td><td class=\"text12g\">25.05.09, 13:30 </td></tr></tbody></table></p></span><font class=\"text14\"><span><strong>משה רבנו</strong>, המנהיג והנביא הגדול של עם ישראל, יעמוד במרכז המפגש הראשון של \"בית המדרש לח\"כים\", שייערך מחר (יום ג\') בכנסת. בבית המדרש ילמדו יחדיו ח\"כים חילונים ודתיים, שיעניקו פרשנות אקטואלית לטקסטים מהמקורות. דמותו של משה רבנו נבחרה לפתוח את בית המדרש כדי לעורר דיון בנושא מנהיגות בזמן משבר.</span></font><font class=\"text14\"><span> <p>לקראת כינוסו הראשון של בית המדרש, מיוזמת רשת בתי המדרש הישראלים וח\"כ זבולון אורלב, כתבו ל-ynet כמה מהמשתתפים בלימוד את פרשנותם לקורות משה, מיד לאחר שיצא מבית פרעה, כפי שהם מסופרים בספר שמות, פרק ב\': </p><p>\"וַיְהִי בַּיָּמִים הָהֵם, וַיִּגְדַּל מֹשֶׁה וַיֵּצֵא אֶל אֶחָיו וַיַּרְא בְּסִבְלֹתָם; וַיַּרְא אִישׁ מִצְרִי מַכֶּה אִישׁ עִבְרִי מֵאֶחָיו. וַיִּפֶן כֹּה וָכֹה וַיַּרְא כִּי אֵין אִישׁ, וַיַּךְ אֶת הַמִּצְרִי וַיִּטְמְנֵהוּ בַּחוֹל. וַיֵּצֵא בַּיּוֹם הַשֵּׁנִי, וְהִנֵּה שְׁנֵי אֲנָשִׁים עִבְרִים נִצִּים; וַיֹּאמֶר לָרָשָׁע: לָמָּה תַכֶּה רֵעֶךָ. וַיֹּאמֶר מִי שָׂמְךָ לְאִישׁ שַׂר וְשֹׁפֵט עָלֵינוּ, הַלְהָרְגֵנִי אַתָּה אֹמֵר כַּאֲשֶׁר הָרַגְתָּ אֶת הַמִּצְרִי; וַיִּירָא מֹשֶׁה וַיֹּאמַר אָכֵן נוֹדַע הַדָּבָר. וַיִּשְׁמַע פַּרְעֹה אֶת הַדָּבָר הַזֶּה, וַיְבַקֵּשׁ לַהֲרֹג אֶת מֹשֶׁה; וַיִּבְרַח מֹשֶׁה מִפְּנֵי פַרְעֹה וַיֵּשֶׁב בְּאֶרֶץ מִדְיָן וַיֵּשֶׁב עַל הַבְּאֵר. וּלְכֹהֵן מִדְיָן שֶׁבַע בָּנוֹת; וַתָּבֹאנָה וַתִּדְלֶנָה וַתְּמַלֶּאנָה אֶת הָרְהָטִים לְהַשְׁקוֹת צֹאן אֲבִיהֶן. וַיָּבֹאוּ הָרֹעִים, וַיְגָרְשׁוּם; וַיָּקָם מֹשֶׁה וַיּוֹשִׁעָן, וַיַּשְׁקְ אֶת צֹאנָם\". </p><h3 class=\"pHeader\">יוחנן פלסנר (קדימה)</h3><p>הטקסט משמות פרק ב\' עוסק, בין השאר, במנהיגות ובתנאים להפיכתה לאפקטיבית. ניתן להצביע על שלושה היבטים מרכזיים במבחן המנהיגות של משה, כפי שהוא מצטייר בטקסט: ערכיות, תרגומה לפעולות מעשיות, והיכולת להפיק לקחים וליישמן. </p><p>ההיבט הראשון שמשה נבחן בו הוא הפן הערכי. לכאורה, משה הפגין רמה ערכית גבוהה. הוא חש אמפתיה לסבלו של העבד העברי המוכה, ותרגם אותה ללקיחת אחריות ועשיית מעשה בפועל. מן הצד השני, מן הדרך שבה בחר לטפל בסיטואציה ומדברי התוכחה שהטיח בו למחרת אחד הניצים העבריים, אנו למדים כי הוא אמנם הפגין מחויבות עמוקה לבני עמו, אך זנח עקרונות אוניברסליים המחייבים אותו מוסרית כלפי כל אדם באשר הוא אדם. בפועל, משה נאלץ לברוח ולכן לא היה מסוגל להנהיג את עמו. ולכן, במבחן המנהיגות הראשון שלו משה כשל. הוא לא הצליח להעביר את המסר המוסרי כפי שציפה ולא יכול היה להישאר עם בני עמו ולהמשיך לשרת אותם משום שנאלץ לברוח. </p><p>לעומת זאת, בהיבט הפקת הלקחים משה נחל הצלחה, ובכך הוכיח שני דברים. ראשית, שהוא אכן ראוי להיות לעמדת ההנהגה. שנית, אנו למדים מהטקסט הקצר שהיכולת להפיק לקחים וליישמן היא אולי יכולת הליבה החשובה ביותר במבחן המנהיגות. ואכן, משה למד והשתנה: כשזיהה את סבלן של בנות מדין, יישם את העקרון של ערבות אנושית אוניברסאלית, שעליה לא הקפיד לפני כן, ונחלץ לעזרתן. בשונה ממשה, ההנהגה הישראלית כיום מוכיחה שהפקת לקחים אינה אחת מתכונותיה החזקות.   </p></span></font><p> </p>','',-2,0,0,0,'2009-05-18 06:17:25',64,'','2009-05-25 11:14:43',64,0,'0000-00-00 00:00:00','2009-05-18 06:17:25','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',14,0,0,'','',0,8,'robots=\nauthor='),(22,'כלי המיון','2009-05-18-06-34-15','','some text','',-2,2,0,2,'2009-05-18 06:33:40',64,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2009-05-18 06:33:40','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,0,'','',0,8,'robots=\nauthor='),(23,'ידיעה רביעית לדף הבית','2009-05-18-07-10-38','','<p>זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג ע</p><p>בעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כי</p>','<p><a href=\"index.php?option=com_content&view=article&id=15&Itemid=7\">חדשות</a> כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כי</p><p>כעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכע</p><p>י כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י </p><p>כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עב</p><p>עי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי זסג עבעי עכ יכעי י כעי יכי כיכי יכעי יכעי כיכעי כיכעי יכעי כיסכעי כי </p>',-2,1,0,7,'2009-05-20 07:09:57',64,'','2009-05-25 12:32:25',64,0,'0000-00-00 00:00:00','2009-05-18 07:09:57','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=0\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',9,0,0,'','',0,2,'robots=\nauthor='),(27,'מאמר שלישי (הדרכה)','2009-05-25-11-59-54','','<p>טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקס</p>','<p> ט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המ</p><p>ופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כ</p><p>מאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון</p><p> המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט</p><p> נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר טקסט נבון ושנון המופיע כמאמר </p>',1,2,0,3,'2009-05-25 11:57:47',64,'','2009-05-25 12:00:38',64,0,'0000-00-00 00:00:00','2009-05-25 11:57:47','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,3,'','',0,2,'robots=\nauthor='),(24,'מאמר כללי שלישי','2009-05-18-07-34-59','','<p>טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כלליטקסט כללי טקסט כללי טקסט </p><p>כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כלליטקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקס</p><p>ט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כלליטקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כלליטקסט כללי טקסט כללי טקסט כל</p><p>לי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כלליטקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי ט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כלליטקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי ט</p>','<p>קסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כלליטקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקס</p><p>ט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כלליטקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כלליטקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקס</p><p>ט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כלליטקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי טקסט כללי</p>',-2,2,0,3,'2009-05-18 07:34:11',64,'','2009-05-18 09:32:35',62,0,'0000-00-00 00:00:00','2009-05-18 07:34:11','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',3,0,0,'','',0,0,'robots=\nauthor='),(25,'חדשה רביעית','2009-05-25-09-58-00','','םגוכןימעםגכע גכע דגכע דגכע ג','',-2,1,0,7,'2009-05-25 09:57:10',64,'','2009-05-25 09:58:18',64,0,'0000-00-00 00:00:00','2009-05-25 09:57:10','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',2,0,0,'','',0,0,'robots=\nauthor='),(26,'דוגמא','2009-05-25-11-21-20','','הנחכ עעףךלכעעי כעיעכי םכי עים כםג םיגכםןיעכיעםןגכ','',-2,2,0,2,'2009-05-25 11:19:57',64,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2009-05-25 11:19:57','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,0,'','',0,3,'robots=\nauthor='),(30,'כלי המיון','services01','','<p> <img src=\"images/website_pics/services.jpg\" border=\"0\" /></p><p> <a href=\"index.php?option=com_content&view=category&layout=blog&id=2&Itemid=3\">שירותי המרכז</a><font color=\"#9d9d9d\"> &gt; כלי המיון</font></p><p><img src=\"images/website_pics/tools.jpg\" border=\"0\" /> </p><p><font color=\"#6d9099\">תפיסת העולם של המכון מבטאת פתיחות, סובלנות. אנו מכבדים את מי שמזמין את האבחון כמו גם את מי שעומד מאחורי כתב היד: את המועמד. הדבר בא לידי ביטוי בתשומת הלב הרבה בה אנו מקבלים החלטות לגבי המלצה, ובדרך הבונה והקפדנית בה אנו כותבים את חוות הדעת.</font> </p><p><font color=\"#6d9099\"><strong><u>אבחון גרפולוגי ראשוני</u></strong><br />חוות דעת קצרה, נסמכת על הערכה ראשונית בלבד. נותנת את עיקרי הנתונים של כל מועמד והמלצה ראשונית באשר להתאמתו.</font></p><p><font color=\"#6d9099\"><strong><u>אבחון גרפולוגי מלא<br /></u></strong>חוות דעת גרפולוגית, על פי אבחון כתב יד.<br />הערכה מפורטת לגבי התאמתו של מועמד נכתבת מול הגדרת תפקיד. <br />אם יש מספר מועמדים לתפקיד אחד, אפשר לבצע בדיקה השוואתית המכוונת להמלצה על המועמד המתאים ביותר מביניהם. </font></p><p><font color=\"#6d9099\"><strong><u>מרכז הערכה</u></strong><br />מבוסס על ראיון קצר, סדרה של מבחני מיון וגרפולוגיה.<br />סדרת המבחנים מספקת מידע רחב על המועמד, ומאפשרת למכון לתת חוות דעת מקיפה עוד יותר מחוות הדעת הגרפולוגית. <br />הלקוח מקבל חוות דעת מלאה, מורחבת ומקיפה.</font></p><p><br /><font color=\"#6d9099\"><strong><u>חלוקה לקבוצות<br /></u></strong>מיון מועמדים רבים, כחלוקה לקבוצות.<br />החלוקה ל-3 קבוצות:<br />מתאים  /  בינוני  /  לא מומלץ.<br />ללא חוות דעת מפורטת.</font></p><p><font color=\"#6d9099\"><strong><u>חוות דעת גרפולוגית לגבי יושר ואמינות</u></strong> <br />חוות דעת גרפולוגית המתמקדת בנושא היושר בלבד. הערכה ניתנת לגבי אמינותו של האיש, נטייתו לשמור על לויאליות, מידת היושר בדיווחיו, יכולתו לשמור על דיסקרטיות ועוד.<br />חשוב לציין שאין בדיקה זו דומה לבדיקת הפוליגרף ואינה מחליפה אותה.<br />חוות הדעת אינה נותנת הערכה לגבי התאמת המועמד לתפקיד.</font></p><p><font color=\"#6d9099\"><strong><u>אבחון לקבלה ליישוב</u></strong><br />חוות דעת ליחידים ולזוגות המועמדים לקבלה ביישוב / קיבוץ.<br />חוות הדעת מותאמת לצרכי היישוב. <br />אבחון כתב היד כולל הערכה לגבי יכולת הסתגלות, יחסי אנוש, יושר ואמינות, צפי לבעיות וקשיים עתידיים, הערכה להתאמתו ליישוב.</font></p><p>&nbsp;</p><p>&nbsp;</p><p class=\"backLink\"><a href=\"index.php?option=com_content&view=category&layout=blog&id=2&Itemid=3\">בחזרה</a></p>','',1,0,0,0,'2009-07-05 07:44:35',64,'','2009-07-16 06:38:07',62,0,'0000-00-00 00:00:00','2009-07-05 07:44:35','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',28,0,2,'','',0,422,'robots=\nauthor='),(28,'כותרת שירותי המרכז','2009-06-09-07-23-14','','<br /><img src=\"images/website_pics/services.jpg\" border=\"0\" alt=\"שירותי המרכז\" title=\"שירותי המרכז\" />','',1,2,0,2,'2009-06-09 07:21:52',62,'','2009-06-16 15:54:27',64,0,'0000-00-00 00:00:00','2009-06-09 07:21:52','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',6,0,1,'גרפולוגיה, אבחון גרפולוגי, כתב יד, גרפולוגית, גרפולוגים, כתב, גרפולוגיה תעסוקתית, תעסוקה, ייעוץ עסקי, ייעוץ זוגי, יעוץ עסקי, יעוץ זוגי, גרפולוגיה משפטית, פיתוח קריירה, תורת הכתב, מיון כח אדם, מיון עובדים, אבחון מקצועי, יעוץ אישי, ייעוץ אישי, הכוונה, ייעוץ והכוונה, יעוץ והכוונה, זיוף, שירות לקוחות, מרכז הערכה תעסוקתית, מרכזי הערכה, התקשרות עסקית, חיפוש עבודה, עסק, עסקים, קורס, ייעוץ, ספרות מקצועית, סקרים, אבחונים, השמה, כוח אדם, מערכות גיוס ממוחשבות, פרסום דרושים, אמצעי הדרכה, הרצאות, כיתות לימוד, קורסים והשתלמויות, פוליגרף, שירותי ייעוץ והפניה, פורום מנהלי משאבי אנוש, חתימות, חתימה, מכון מקצועי לגרפולוגיה תעסוקתית, יעוץ ומיון כא, ייעוץ ומיון כא, חברת האגודה הישראלית לגרפולוגיה מדעית, משאבי אנוש הדרכה גיוס ורווחה, חקירות, אמינות הגינות יעילות איכות שירות ואדיבות, גפולוגיה, גראפולוגיה, גרפיליגיה, גרפןלןגיה','המרכז לגרפולוגיה של מירי אגסי הוא מכון מקצועי לגרפולוגיה תעסוקתית, העוסק באבחון מועמדים ומיון כח אדם.\r\nהמכון מסייע לארגונים רבים לבחור את האנשים הנכונים לתפקידים הנכונים – ומציע גם לאנשים פרטיים, העומדים בפני צמתי-החלטות תעסוקתיות ואישיות, סיוע באבחון ובניתוח מידת התאמתם למסלולי פעילות שונים.\r\n\r\n',0,51,'robots=\nauthor='),(29,'כותרת מאמרים','2009-06-09-07-27-18','','<p><img src=\"images/website_pics/articles.jpg\" border=\"0\" alt=\"מאמרים\" title=\"מאמרים\" /></p>','',0,1,0,7,'2008-06-09 07:26:27',62,'','2009-06-15 20:53:29',64,0,'0000-00-00 00:00:00','2009-06-09 07:26:27','0000-00-00 00:00:00','','','show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',13,0,1,'','',0,0,'robots=\nauthor='),(31,'עמוד הבית רגיל','2009-08-06-09-18-41','','<p align=\"right\"><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">המרכז לגרפולוגיה של מירי אגסי הוא מכון מקצועי לגרפולוגיה תעסוקתית, העוסק באבחון מועמדים ומיון כח אדם.</span></span></font></p><p align=\"right\"><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">המכון מסייע לארגונים רבים לבחור את האנשים הנכונים לתפקידים הנכונים – ומציע גם לאנשים פרטיים, העומדים בפני צמתי-החלטות תעסוקתיות ואישיות, סיוע באבחון ובניתוח מידת התאמתם למסלולי פעילות שונים.</span></span></font></p><p align=\"right\"><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">כלי המיון העיקרי של המכון הוא ניתוח כתב יד.</span></span></font></p><p align=\"right\"><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">במקרים בהם מתעורר הצורך, ערוך המכון להציע גם סדרה של מבחני מיון נוספים וראיונות אישיים.</span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"> </span><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">המיון במכון מאפשר ללקוחותינו לקבל הצצה קטנה לעתידו של המועמד בתפקיד: לראות את קווי אופיו ויכולותיו הגלויים לעיין כמו גם את אלו שהיו מתגלים רק לאחר זמן.</span></span></font></p><p align=\"right\"><font face=\"arial,helvetica,sans-serif\"><span style=\"font-size: 11pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\"><span style=\"font-size: 10pt; color: #6d9099; font-family: \'Arial\',\'sans-serif\'\">סקרים תקופתיים אותם עורך המכון בקרב לקוחותיו מעידים באופן עקבי כי רוב המנהלים הנעזרים בשירותי המכון ומשתמשים באופן קבוע באבחון כתב יד ככלי תומך החלטה, מעריכים את האבחון הגרפולוגי כאמין ביותר. אחוז גבוה של המועמדים, שקיבלו חוות דעת חיובית ע\"י המכון והתקבלו לתפקיד, אכן מצליחים ביותר בתפקידם.</span></span></font></p>','',1,0,0,0,'2009-08-06 09:17:58',64,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2009-08-06 09:17:58','0000-00-00 00:00:00','','','show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=',1,0,1,'','',0,0,'robots=\nauthor=');
/*!40000 ALTER TABLE `jos_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_frontpage`
--

DROP TABLE IF EXISTS `jos_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_frontpage`
--

LOCK TABLES `jos_content_frontpage` WRITE;
/*!40000 ALTER TABLE `jos_content_frontpage` DISABLE KEYS */;
INSERT INTO `jos_content_frontpage` VALUES (4,1);
/*!40000 ALTER TABLE `jos_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_rating`
--

DROP TABLE IF EXISTS `jos_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_rating`
--

LOCK TABLES `jos_content_rating` WRITE;
/*!40000 ALTER TABLE `jos_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro`
--

DROP TABLE IF EXISTS `jos_core_acl_aro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro`
--

LOCK TABLES `jos_core_acl_aro` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro` VALUES (10,'users','62',0,'Administrator',0),(12,'users','64',0,'Site Manager',0);
/*!40000 ALTER TABLE `jos_core_acl_aro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

LOCK TABLES `jos_core_acl_aro_groups` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_groups` VALUES (17,0,'ROOT',1,22,'ROOT'),(28,17,'USERS',2,21,'USERS'),(29,28,'Public Frontend',3,12,'Public Frontend'),(18,29,'Registered',4,11,'Registered'),(19,18,'Author',5,10,'Author'),(20,19,'Editor',6,9,'Editor'),(21,20,'Publisher',7,8,'Publisher'),(30,28,'Public Backend',13,20,'Public Backend'),(23,30,'Manager',14,19,'Manager'),(24,23,'Administrator',15,18,'Administrator'),(25,24,'Super Administrator',16,17,'Super Administrator');
/*!40000 ALTER TABLE `jos_core_acl_aro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_map`
--

LOCK TABLES `jos_core_acl_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_acl_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

LOCK TABLES `jos_core_acl_aro_sections` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` DISABLE KEYS */;
INSERT INTO `jos_core_acl_aro_sections` VALUES (10,'users',1,'Users',0);
/*!40000 ALTER TABLE `jos_core_acl_aro_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

LOCK TABLES `jos_core_acl_groups_aro_map` WRITE;
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` DISABLE KEYS */;
INSERT INTO `jos_core_acl_groups_aro_map` VALUES (23,'',12),(25,'',10);
/*!40000 ALTER TABLE `jos_core_acl_groups_aro_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_items`
--

DROP TABLE IF EXISTS `jos_core_log_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_items`
--

LOCK TABLES `jos_core_log_items` WRITE;
/*!40000 ALTER TABLE `jos_core_log_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_searches`
--

DROP TABLE IF EXISTS `jos_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_searches`
--

LOCK TABLES `jos_core_log_searches` WRITE;
/*!40000 ALTER TABLE `jos_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_groups`
--

DROP TABLE IF EXISTS `jos_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_groups`
--

LOCK TABLES `jos_groups` WRITE;
/*!40000 ALTER TABLE `jos_groups` DISABLE KEYS */;
INSERT INTO `jos_groups` VALUES (0,'Public'),(1,'Registered'),(2,'Special');
/*!40000 ALTER TABLE `jos_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu`
--

DROP TABLE IF EXISTS `jos_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu`
--

LOCK TABLES `jos_menu` WRITE;
/*!40000 ALTER TABLE `jos_menu` DISABLE KEYS */;
INSERT INTO `jos_menu` VALUES (1,'mainmenu','Home','home','index.php?option=com_content&view=frontpage','component',1,0,20,0,1,0,'0000-00-00 00:00:00',0,0,0,3,'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=rdate\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,1),(2,'headmenu','מי אנחנו','about','index.php?option=com_content&view=article&id=5','component',1,0,20,0,12,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(3,'headmenu','שירותי המרכז','services','index.php?option=com_content&view=category&layout=blog&id=2','component',1,0,20,0,13,0,'0000-00-00 00:00:00',0,0,0,0,'show_description=0\nshow_description_image=0\nnum_leading_articles=3\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=order\norderby_sec=order\nmulti_column_order=0\nshow_pagination=0\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(4,'headmenu','מאמרים','2009-05-04-11-32-10','index.php?option=com_content&view=category&layout=blog&id=7','component',1,0,20,0,14,0,'0000-00-00 00:00:00',0,0,0,0,'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=order\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(5,'headmenu','שאלות נפוצות','2009-05-04-11-32-26','index.php?option=com_content&view=article&id=13','component',1,0,20,0,15,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(6,'headmenu','קישורים','2009-05-04-11-32-39','index.php?option=com_content&view=article&id=14','component',1,0,20,0,16,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(7,'headmenu','צור קשר','2009-05-04-11-32-53','index.php?option=com_content&view=article&id=15','component',1,0,20,0,17,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(8,'headmenu','מיון כח אדם','2009-05-05-07-46-16','index.php?option=com_content&view=article&id=6','component',-2,0,20,1,7,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(9,'headmenu','ייעוץ למנהלים','2009-05-05-07-46-59','index.php?option=com_content&view=article&id=7','component',-2,0,20,1,8,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(10,'headmenu','ייעוץ אישי','2009-05-05-07-47-19','index.php?option=com_content&view=article&id=8','component',-2,0,20,1,1,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(11,'headmenu','איתור זיופים','2009-05-05-07-47-46','index.php?option=com_content&view=article&id=9','component',-2,0,20,1,9,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(12,'headmenu','קורסים מקצועיים','2009-05-05-07-48-02','index.php?option=com_poll&view=poll&id=2','component',-2,0,10,1,6,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(13,'sidemenu','מיון כח אדם','2009-05-05-08-27-00','#service01','url',1,0,0,0,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(14,'sidemenu','כלי המיון','2009-05-05-08-27-38','index.php?option=com_content&view=article&id=22','component',-2,0,20,1,1,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(15,'sidemenu','ייעוץ למנהלים','2009-05-05-08-28-06','#service02','url',1,0,0,0,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(16,'sidemenu','ייעוץ אישי','2009-05-05-08-28-19','#service03','url',1,0,0,0,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(17,'sidemenu','איתור זיופים','2009-05-05-08-28-35','#service04','url',1,0,0,0,4,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(18,'sidemenu','קורסים מקצועיים','2009-05-05-08-28-50','#service05','url',1,0,0,0,5,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(19,'sidemenu','רשימת הקורסים','2009-05-05-08-29-08','','url',-2,0,0,1,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(26,'headmenu','הדרכה','2009-05-25-11-31-07','index.php?option=com_content&view=article&id=26','component',-2,0,20,1,5,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(20,'headmenu','שירותי אינטרנט','2009-05-10-07-56-17','index.php?option=com_content&view=article&id=17','component',-2,0,20,1,4,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(21,'headmenu','גלריית סקרים','2009-05-10-08-00-57','index.php?option=com_poll&view=poll&id=4','component',-2,0,10,1,3,0,'0000-00-00 00:00:00',0,0,0,0,'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(22,'headmenu','ניסיון נוסף','2009-05-10-17-00-51','index.php?option=com_content&view=article&id=20','component',-2,0,20,1,11,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(23,'headmenu','שרב בלתי','sharav','index.php?option=com_content&view=article&id=21','component',-2,0,20,1,2,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(24,'headmenu','בתחילת דרכה של הגרפולוגיה','2009-05-18-06-45-34','','url',-2,0,0,0,10,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(25,'sidemenu','שרב בלתי','2009-05-18-06-57-19','index.php?option=com_content&view=article&id=21','component',-2,0,20,1,3,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(27,'headmenu','מיון כח אדם','2009-05-25-11-50-15','services#service01','url',0,3,0,1,1,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(28,'headmenu','יעוץ למנהלים','2009-05-25-11-50-55','services#service02','url',0,3,0,1,2,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(29,'sidemenu','הדרכה לדוגמא','2009-05-25-11-51-58','index.php?option=com_content&view=article&id=24','component',-2,0,20,0,0,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0),(30,'headmenu','יעוץ אישי','2009-05-25-11-55-29','services#service03','url',0,3,0,1,3,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(31,'headmenu','איתור זיופים','2009-05-25-11-55-55','services#service04','url',0,3,0,1,4,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(32,'headmenu','קורסים מקצועיים','2009-05-25-11-56-26','services#service05','url',0,3,0,1,5,0,'0000-00-00 00:00:00',0,0,0,0,'menu_image=-1\n\n',0,0,0),(33,'mainmenu','fgh','fgh','index.php?option=com_content&view=article&id=30','component',-2,0,20,0,0,0,'0000-00-00 00:00:00',0,0,0,0,'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n',0,0,0);
/*!40000 ALTER TABLE `jos_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu_types`
--

DROP TABLE IF EXISTS `jos_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu_types`
--

LOCK TABLES `jos_menu_types` WRITE;
/*!40000 ALTER TABLE `jos_menu_types` DISABLE KEYS */;
INSERT INTO `jos_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site'),(2,'headmenu','תפריט ראשי',''),(3,'sidemenu','תפריט צד','');
/*!40000 ALTER TABLE `jos_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages`
--

DROP TABLE IF EXISTS `jos_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages`
--

LOCK TABLES `jos_messages` WRITE;
/*!40000 ALTER TABLE `jos_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages_cfg`
--

DROP TABLE IF EXISTS `jos_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages_cfg`
--

LOCK TABLES `jos_messages_cfg` WRITE;
/*!40000 ALTER TABLE `jos_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_migration_backlinks`
--

DROP TABLE IF EXISTS `jos_migration_backlinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_migration_backlinks`
--

LOCK TABLES `jos_migration_backlinks` WRITE;
/*!40000 ALTER TABLE `jos_migration_backlinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_migration_backlinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules`
--

DROP TABLE IF EXISTS `jos_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules`
--

LOCK TABLES `jos_modules` WRITE;
/*!40000 ALTER TABLE `jos_modules` DISABLE KEYS */;
INSERT INTO `jos_modules` VALUES (1,'Main Menu','',0,'left',0,'0000-00-00 00:00:00',0,'mod_mainmenu',0,0,1,'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',1,0,''),(2,'Login','',1,'login',0,'0000-00-00 00:00:00',1,'mod_login',0,0,1,'',1,1,''),(3,'Popular','',3,'cpanel',0,'0000-00-00 00:00:00',1,'mod_popular',0,2,1,'',0,1,''),(4,'Recent added Articles','',4,'cpanel',0,'0000-00-00 00:00:00',1,'mod_latest',0,2,1,'ordering=c_dsc\nuser_id=0\ncache=0\n\n',0,1,''),(5,'Menu Stats','',5,'cpanel',0,'0000-00-00 00:00:00',1,'mod_stats',0,2,1,'',0,1,''),(6,'Unread Messages','',1,'header',0,'0000-00-00 00:00:00',1,'mod_unread',0,2,1,'',1,1,''),(7,'Online Users','',2,'header',0,'0000-00-00 00:00:00',1,'mod_online',0,2,1,'',1,1,''),(8,'Toolbar','',1,'toolbar',0,'0000-00-00 00:00:00',1,'mod_toolbar',0,2,1,'',1,1,''),(9,'Quick Icons','',1,'icon',0,'0000-00-00 00:00:00',1,'mod_quickicon',0,2,1,'',1,1,''),(10,'Logged in Users','',2,'cpanel',0,'0000-00-00 00:00:00',1,'mod_logged',0,2,1,'',0,1,''),(11,'Footer','',0,'footer',0,'0000-00-00 00:00:00',1,'mod_footer',0,0,1,'',1,1,''),(12,'Admin Menu','',1,'menu',0,'0000-00-00 00:00:00',1,'mod_menu',0,2,1,'',0,1,''),(13,'Admin SubMenu','',1,'submenu',0,'0000-00-00 00:00:00',1,'mod_submenu',0,2,1,'',0,1,''),(14,'User Status','',1,'status',0,'0000-00-00 00:00:00',1,'mod_status',0,2,1,'',0,1,''),(15,'Title','',1,'title',0,'0000-00-00 00:00:00',1,'mod_title',0,2,1,'',0,1,''),(16,'תפריט ראשי','',0,'top',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,1,'menutype=headmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),(17,'מאמרים דף הבית','',0,'left',0,'0000-00-00 00:00:00',1,'mod_newsflash',0,0,0,'catid=7\nlayout=vert\nimage=0\nlink_titles=1\nshowLastSeparator=1\nreadmore=1\nitem_title=1\nitems=3\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n',0,0,''),(18,'תפריט צד','',0,'right',0,'0000-00-00 00:00:00',1,'mod_mainmenu',0,0,0,'menutype=sidemenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n',0,0,''),(19,'איך השרב ג\'ומלה','',1,'left',0,'0000-00-00 00:00:00',0,'mod_poll',0,0,1,'id=2\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n',0,0,'');
/*!40000 ALTER TABLE `jos_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules_menu`
--

DROP TABLE IF EXISTS `jos_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules_menu`
--

LOCK TABLES `jos_modules_menu` WRITE;
/*!40000 ALTER TABLE `jos_modules_menu` DISABLE KEYS */;
INSERT INTO `jos_modules_menu` VALUES (1,0),(16,0),(17,1),(19,0);
/*!40000 ALTER TABLE `jos_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_newsfeeds`
--

DROP TABLE IF EXISTS `jos_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_newsfeeds`
--

LOCK TABLES `jos_newsfeeds` WRITE;
/*!40000 ALTER TABLE `jos_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_plugins`
--

DROP TABLE IF EXISTS `jos_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_plugins`
--

LOCK TABLES `jos_plugins` WRITE;
/*!40000 ALTER TABLE `jos_plugins` DISABLE KEYS */;
INSERT INTO `jos_plugins` VALUES (1,'Authentication - Joomla','joomla','authentication',0,1,1,1,0,0,'0000-00-00 00:00:00',''),(2,'Authentication - LDAP','ldap','authentication',0,2,0,1,0,0,'0000-00-00 00:00:00','host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),(3,'Authentication - GMail','gmail','authentication',0,4,0,0,0,0,'0000-00-00 00:00:00',''),(4,'Authentication - OpenID','openid','authentication',0,3,0,0,0,0,'0000-00-00 00:00:00',''),(5,'User - Joomla!','joomla','user',0,0,1,0,0,0,'0000-00-00 00:00:00','autoregister=1\n\n'),(6,'Search - Content','content','search',0,1,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),(7,'Search - Contacts','contacts','search',0,3,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(8,'Search - Categories','categories','search',0,4,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(9,'Search - Sections','sections','search',0,5,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(10,'Search - Newsfeeds','newsfeeds','search',0,6,1,0,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(11,'Search - Weblinks','weblinks','search',0,2,1,1,0,0,'0000-00-00 00:00:00','search_limit=50\n\n'),(12,'Content - Pagebreak','pagebreak','content',0,10000,1,1,0,0,'0000-00-00 00:00:00','enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),(13,'Content - Rating','vote','content',0,4,1,1,0,0,'0000-00-00 00:00:00',''),(14,'Content - Email Cloaking','emailcloak','content',0,5,1,0,0,0,'0000-00-00 00:00:00','mode=1\n\n'),(15,'Content - Code Hightlighter (GeSHi)','geshi','content',0,5,0,0,0,0,'0000-00-00 00:00:00',''),(16,'Content - Load Module','loadmodule','content',0,6,1,0,0,0,'0000-00-00 00:00:00','enabled=1\nstyle=0\n\n'),(17,'Content - Page Navigation','pagenavigation','content',0,2,1,1,0,0,'0000-00-00 00:00:00','position=1\n\n'),(18,'Editor - No Editor','none','editors',0,0,1,1,0,0,'0000-00-00 00:00:00',''),(19,'Editor - TinyMCE 2.0','tinymce','editors',0,0,1,1,0,0,'0000-00-00 00:00:00','theme=advanced\ncleanup=1\ncleanup_startup=0\nautosave=0\ncompressed=0\nrelative_urls=1\ntext_direction=ltr\nlang_mode=0\nlang_code=en\ninvalid_elements=applet\ncontent_css=1\ncontent_css_custom=\nnewlines=0\ntoolbar=top\nhr=1\nsmilies=1\ntable=1\nstyle=1\nlayer=1\nxhtmlxtras=0\ntemplate=0\ndirectionality=1\nfullscreen=1\nhtml_height=550\nhtml_width=750\npreview=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\n\n'),(20,'Editor - XStandard Lite 2.0','xstandard','editors',0,0,0,1,0,0,'0000-00-00 00:00:00',''),(21,'Editor Button - Image','image','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(22,'Editor Button - Pagebreak','pagebreak','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(23,'Editor Button - Readmore','readmore','editors-xtd',0,0,1,0,0,0,'0000-00-00 00:00:00',''),(24,'XML-RPC - Joomla','joomla','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00',''),(25,'XML-RPC - Blogger API','blogger','xmlrpc',0,7,0,1,0,0,'0000-00-00 00:00:00','catid=1\nsectionid=0\n\n'),(27,'System - SEF','sef','system',0,1,1,0,0,0,'0000-00-00 00:00:00',''),(28,'System - Debug','debug','system',0,2,1,0,0,0,'0000-00-00 00:00:00','queries=1\nmemory=1\nlangauge=1\n\n'),(29,'System - Legacy','legacy','system',0,3,0,1,0,0,'0000-00-00 00:00:00','route=0\n\n'),(30,'System - Cache','cache','system',0,4,0,1,0,0,'0000-00-00 00:00:00','browsercache=0\ncachetime=15\n\n'),(31,'System - Log','log','system',0,5,0,1,0,0,'0000-00-00 00:00:00',''),(32,'System - Remember Me','remember','system',0,6,1,1,0,0,'0000-00-00 00:00:00',''),(33,'System - Backlink','backlink','system',0,7,0,1,0,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `jos_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_data`
--

DROP TABLE IF EXISTS `jos_poll_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_data`
--

LOCK TABLES `jos_poll_data` WRITE;
/*!40000 ALTER TABLE `jos_poll_data` DISABLE KEYS */;
INSERT INTO `jos_poll_data` VALUES (48,4,'',0),(47,4,'',0),(46,4,'',0),(45,4,'',0),(44,4,'',0),(43,4,'',0),(42,4,'',0),(41,4,'565',0),(40,4,'43',0),(39,4,'3',0),(38,4,'2',0),(37,4,'10',0);
/*!40000 ALTER TABLE `jos_poll_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_date`
--

DROP TABLE IF EXISTS `jos_poll_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_date`
--

LOCK TABLES `jos_poll_date` WRITE;
/*!40000 ALTER TABLE `jos_poll_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_poll_menu`
--

DROP TABLE IF EXISTS `jos_poll_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_poll_menu`
--

LOCK TABLES `jos_poll_menu` WRITE;
/*!40000 ALTER TABLE `jos_poll_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_poll_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_polls`
--

DROP TABLE IF EXISTS `jos_polls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_polls`
--

LOCK TABLES `jos_polls` WRITE;
/*!40000 ALTER TABLE `jos_polls` DISABLE KEYS */;
INSERT INTO `jos_polls` VALUES (4,'שאלה','2009-05-18-07-29-35',0,0,'0000-00-00 00:00:00',1,0,86400);
/*!40000 ALTER TABLE `jos_polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_sections`
--

DROP TABLE IF EXISTS `jos_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_sections`
--

LOCK TABLES `jos_sections` WRITE;
/*!40000 ALTER TABLE `jos_sections` DISABLE KEYS */;
INSERT INTO `jos_sections` VALUES (1,'מאמרים דף הבית','','2009-05-04-11-50-59','','content','left','',1,0,'0000-00-00 00:00:00',1,0,7,''),(2,'תפריט ראשי','','2009-05-04-11-51-31','','content','left','',1,0,'0000-00-00 00:00:00',2,0,12,'');
/*!40000 ALTER TABLE `jos_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_session`
--

DROP TABLE IF EXISTS `jos_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_session`
--

LOCK TABLES `jos_session` WRITE;
/*!40000 ALTER TABLE `jos_session` DISABLE KEYS */;
INSERT INTO `jos_session` VALUES ('','1348943830','6bec8a08cfd06a19e35978bc24969bdd',1,0,'',0,0,'__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1348943830;s:18:\"session.timer.last\";i:1348943830;s:17:\"session.timer.now\";i:1348943830;s:22:\"session.client.browser\";s:79:\"Mozilla/5.0 (compatible; MJ12bot/v1.4.3; http://www.majestic12.co.uk/bot.php?+)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:89:\"/home/miriagassi/domains/agassi.co.il/public_html/libraries/joomla/html/parameter/element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}');
/*!40000 ALTER TABLE `jos_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_stats_agents`
--

DROP TABLE IF EXISTS `jos_stats_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_stats_agents`
--

LOCK TABLES `jos_stats_agents` WRITE;
/*!40000 ALTER TABLE `jos_stats_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_stats_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_templates_menu`
--

DROP TABLE IF EXISTS `jos_templates_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_templates_menu`
--

LOCK TABLES `jos_templates_menu` WRITE;
/*!40000 ALTER TABLE `jos_templates_menu` DISABLE KEYS */;
INSERT INTO `jos_templates_menu` VALUES ('miri_agasi',0,0),('khepri',0,1);
/*!40000 ALTER TABLE `jos_templates_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_weblinks`
--

DROP TABLE IF EXISTS `jos_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_weblinks`
--

LOCK TABLES `jos_weblinks` WRITE;
/*!40000 ALTER TABLE `jos_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `jos_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_users`
--

LOCK TABLES `jos_users` WRITE;
/*!40000 ALTER TABLE `jos_users` DISABLE KEYS */;
INSERT INTO `jos_users` VALUES (62,'Uri','uri','miri.site.v5fd35.s@uri.agassi.co.il','de7c6de77538bde2829e63812c8a73e7:B6juDfLsO2pgcNtLJ7LqgaW6Qt7KqANC','Super Administrator',0,1,25,'0000-00-00 00:00:00','2012-10-12 21:43:04','','admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=0\n\n');
/*!40000 ALTER TABLE `jos_users` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-09-30  0:24:01
