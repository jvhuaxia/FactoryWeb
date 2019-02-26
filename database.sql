/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.19 : Database - factory
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`factory` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `factory`;

/*Table structure for table `tb_about` */

DROP TABLE IF EXISTS `tb_about`;

CREATE TABLE `tb_about` (
  `AID` int(11) NOT NULL AUTO_INCREMENT,
  `AName` text NOT NULL,
  `ADes` text NOT NULL,
  `ADate` datetime NOT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_about` */

insert  into `tb_about`(`AID`,`AName`,`ADes`,`ADate`) values (1,'About','慈溪市荣江电子厂是接线端子和拨码开关的专业制造商。 多年来，我们不断致力于产品的研发，使企业得到了快速发展 ，在该领域居于领先地位，成为亚洲主要的接线端子供应商之 一。公司通过了ISO9001质量管理休系认证。产品通过UL、 VDE、CE及CQC等多个国家标准的安全认证，并且符合欧盟RoHS 指令环保要求。阿斯顿阿斯顿萨达洒阿斯顿','2018-12-13 19:23:10');

/*Table structure for table `tb_admin` */

DROP TABLE IF EXISTS `tb_admin`;

CREATE TABLE `tb_admin` (
  `AID` int(11) NOT NULL AUTO_INCREMENT,
  `ALoginName` varchar(64) NOT NULL,
  `APassWord` varchar(100) NOT NULL,
  `ATrueName` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=1019 DEFAULT CHARSET=utf8;

/*Data for the table `tb_admin` */

insert  into `tb_admin`(`AID`,`ALoginName`,`APassWord`,`ATrueName`) values (1,'admin','admin','2333333'),(12,'1501014101256','111111',NULL),(13,'root','asdasd',NULL),(16,'ASDA2','WEWE2','辣鸡2'),(21,'ASDA7','WEWE7','辣鸡7'),(22,'ASDA8','WEWE8','辣鸡8'),(23,'ASDA9','WEWE9','辣鸡9'),(24,'ASDA10','WEWE10','辣鸡10'),(25,'ASDA11','WEWE11','辣鸡11'),(26,'ASDA12','WEWE12','辣鸡12'),(27,'ASDA13','WEWE13','辣鸡13'),(28,'ASDA14','WEWE14','辣鸡14'),(29,'ASDA15','WEWE15','辣鸡15'),(30,'ASDA16','WEWE16','辣鸡16'),(31,'ASDA17','WEWE17','辣鸡17'),(32,'ASDA18','WEWE18','辣鸡18'),(33,'ASDA19','WEWE19','辣鸡19'),(34,'ASDA20','WEWE20','辣鸡20'),(35,'ASDA21','WEWE21','辣鸡21'),(36,'ASDA22','WEWE22','辣鸡22'),(37,'ASDA23','WEWE23','辣鸡23'),(38,'ASDA24','WEWE24','辣鸡24'),(39,'ASDA25','WEWE25','辣鸡25'),(40,'ASDA26','WEWE26','辣鸡26'),(41,'ASDA27','WEWE27','辣鸡27'),(42,'ASDA28','WEWE28','辣鸡28'),(43,'ASDA29','WEWE29','辣鸡29'),(44,'ASDA30','WEWE30','辣鸡30'),(45,'ASDA31','WEWE31','辣鸡31'),(46,'ASDA32','WEWE32','辣鸡32'),(47,'ASDA33','WEWE33','辣鸡33'),(48,'ASDA34','WEWE34','辣鸡34'),(49,'ASDA35','WEWE35','辣鸡35'),(50,'ASDA36','WEWE36','辣鸡36'),(51,'ASDA37','WEWE37','辣鸡37'),(52,'ASDA38','WEWE38','辣鸡38'),(53,'ASDA39','WEWE39','辣鸡39'),(54,'ASDA40','WEWE40','辣鸡40'),(55,'ASDA41','WEWE41','辣鸡41'),(56,'ASDA42','WEWE42','辣鸡42'),(57,'ASDA43','WEWE43','辣鸡43'),(58,'ASDA44','WEWE44','辣鸡44'),(59,'ASDA45','WEWE45','辣鸡45'),(60,'ASDA46','WEWE46','辣鸡46'),(61,'ASDA47','WEWE47','辣鸡47'),(62,'ASDA48','WEWE48','辣鸡48'),(63,'ASDA49','WEWE49','辣鸡49'),(64,'ASDA50','WEWE50','辣鸡50'),(65,'ASDA51','WEWE51','辣鸡51'),(66,'ASDA52','WEWE52','辣鸡52'),(67,'ASDA53','WEWE53','辣鸡53'),(68,'ASDA54','WEWE54','辣鸡54'),(69,'ASDA55','WEWE55','辣鸡55'),(70,'ASDA56','WEWE56','辣鸡56'),(71,'ASDA57','WEWE57','辣鸡57'),(72,'ASDA58','WEWE58','辣鸡58'),(73,'ASDA59','WEWE59','辣鸡59'),(74,'ASDA60','WEWE60','辣鸡60'),(75,'ASDA61','WEWE61','辣鸡61'),(76,'ASDA62','WEWE62','辣鸡62'),(77,'ASDA63','WEWE63','辣鸡63'),(78,'ASDA64','WEWE64','辣鸡64'),(79,'ASDA65','WEWE65','辣鸡65'),(80,'ASDA66','WEWE66','辣鸡66'),(81,'ASDA67','WEWE67','辣鸡67'),(82,'ASDA68','WEWE68','辣鸡68'),(83,'ASDA69','WEWE69','辣鸡69'),(84,'ASDA70','WEWE70','辣鸡70'),(85,'ASDA71','WEWE71','辣鸡71'),(86,'ASDA72','WEWE72','辣鸡72'),(87,'ASDA73','WEWE73','辣鸡73'),(88,'ASDA74','WEWE74','辣鸡74'),(89,'ASDA75','WEWE75','辣鸡75'),(90,'ASDA76','WEWE76','辣鸡76'),(91,'ASDA77','WEWE77','辣鸡77'),(92,'ASDA78','WEWE78','辣鸡78'),(93,'ASDA79','WEWE79','辣鸡79'),(94,'ASDA80','WEWE80','辣鸡80'),(95,'ASDA81','WEWE81','辣鸡81'),(96,'ASDA82','WEWE82','辣鸡82'),(97,'ASDA83','WEWE83','辣鸡83'),(98,'ASDA84','WEWE84','辣鸡84'),(99,'ASDA85','WEWE85','辣鸡85'),(100,'ASDA86','WEWE86','辣鸡86'),(101,'ASDA87','WEWE87','辣鸡87'),(102,'ASDA88','WEWE88','辣鸡88'),(103,'ASDA89','WEWE89','辣鸡89'),(104,'ASDA90','WEWE90','辣鸡90'),(105,'ASDA91','WEWE91','辣鸡91'),(106,'ASDA92','WEWE92','辣鸡92'),(107,'ASDA93','WEWE93','辣鸡93'),(108,'ASDA94','WEWE94','辣鸡94'),(109,'ASDA95','WEWE95','辣鸡95'),(110,'ASDA96','WEWE96','辣鸡96'),(111,'ASDA97','WEWE97','辣鸡97'),(112,'ASDA98','WEWE98','辣鸡98'),(113,'ASDA99','WEWE99','辣鸡99'),(114,'ASDA100','WEWE100','辣鸡100'),(115,'ASDA101','WEWE101','辣鸡101'),(116,'ASDA102','WEWE102','辣鸡102'),(117,'ASDA103','WEWE103','辣鸡103'),(118,'ASDA104','WEWE104','辣鸡104'),(119,'ASDA105','WEWE105','辣鸡105'),(120,'ASDA106','WEWE106','辣鸡106'),(121,'ASDA107','WEWE107','辣鸡107'),(122,'ASDA108','WEWE108','辣鸡108'),(123,'ASDA109','WEWE109','辣鸡109'),(124,'ASDA110','WEWE110','辣鸡110'),(125,'ASDA111','WEWE111','辣鸡111'),(126,'ASDA112','WEWE112','辣鸡112'),(127,'ASDA113','WEWE113','辣鸡113'),(128,'ASDA114','WEWE114','辣鸡114'),(129,'ASDA115','WEWE115','辣鸡115'),(130,'ASDA116','WEWE116','辣鸡116'),(131,'ASDA117','WEWE117','辣鸡117'),(132,'ASDA118','WEWE118','辣鸡118'),(133,'ASDA119','WEWE119','辣鸡119'),(134,'ASDA120','WEWE120','辣鸡120'),(135,'ASDA121','WEWE121','辣鸡121'),(136,'ASDA122','WEWE122','辣鸡122'),(137,'ASDA123','WEWE123','辣鸡123'),(138,'ASDA124','WEWE124','辣鸡124'),(139,'ASDA125','WEWE125','辣鸡125'),(140,'ASDA126','WEWE126','辣鸡126'),(141,'ASDA127','WEWE127','辣鸡127'),(142,'ASDA128','WEWE128','辣鸡128'),(143,'ASDA129','WEWE129','辣鸡129'),(144,'ASDA130','WEWE130','辣鸡130'),(145,'ASDA131','WEWE131','辣鸡131'),(146,'ASDA132','WEWE132','辣鸡132'),(147,'ASDA133','WEWE133','辣鸡133'),(148,'ASDA134','WEWE134','辣鸡134'),(149,'ASDA135','WEWE135','辣鸡135'),(150,'ASDA136','WEWE136','辣鸡136'),(151,'ASDA137','WEWE137','辣鸡137'),(152,'ASDA138','WEWE138','辣鸡138'),(153,'ASDA139','WEWE139','辣鸡139'),(154,'ASDA140','WEWE140','辣鸡140'),(155,'ASDA141','WEWE141','辣鸡141'),(156,'ASDA142','WEWE142','辣鸡142'),(157,'ASDA143','WEWE143','辣鸡143'),(158,'ASDA144','WEWE144','辣鸡144'),(159,'ASDA145','WEWE145','辣鸡145'),(160,'ASDA146','WEWE146','辣鸡146'),(161,'ASDA147','WEWE147','辣鸡147'),(162,'ASDA148','WEWE148','辣鸡148'),(163,'ASDA149','WEWE149','辣鸡149'),(164,'ASDA150','WEWE150','辣鸡150'),(165,'ASDA151','WEWE151','辣鸡151'),(166,'ASDA152','WEWE152','辣鸡152'),(167,'ASDA153','WEWE153','辣鸡153'),(168,'ASDA154','WEWE154','辣鸡154'),(169,'ASDA155','WEWE155','辣鸡155'),(170,'ASDA156','WEWE156','辣鸡156'),(171,'ASDA157','WEWE157','辣鸡157'),(172,'ASDA158','WEWE158','辣鸡158'),(173,'ASDA159','WEWE159','辣鸡159'),(174,'ASDA160','WEWE160','辣鸡160'),(175,'ASDA161','WEWE161','辣鸡161'),(176,'ASDA162','WEWE162','辣鸡162'),(177,'ASDA163','WEWE163','辣鸡163'),(178,'ASDA164','WEWE164','辣鸡164'),(179,'ASDA165','WEWE165','辣鸡165'),(180,'ASDA166','WEWE166','辣鸡166'),(181,'ASDA167','WEWE167','辣鸡167'),(182,'ASDA168','WEWE168','辣鸡168'),(183,'ASDA169','WEWE169','辣鸡169'),(184,'ASDA170','WEWE170','辣鸡170'),(185,'ASDA171','WEWE171','辣鸡171'),(186,'ASDA172','WEWE172','辣鸡172'),(187,'ASDA173','WEWE173','辣鸡173'),(188,'ASDA174','WEWE174','辣鸡174'),(189,'ASDA175','WEWE175','辣鸡175'),(190,'ASDA176','WEWE176','辣鸡176'),(191,'ASDA177','WEWE177','辣鸡177'),(192,'ASDA178','WEWE178','辣鸡178'),(193,'ASDA179','WEWE179','辣鸡179'),(194,'ASDA180','WEWE180','辣鸡180'),(195,'ASDA181','WEWE181','辣鸡181'),(196,'ASDA182','WEWE182','辣鸡182'),(197,'ASDA183','WEWE183','辣鸡183'),(198,'ASDA184','WEWE184','辣鸡184'),(199,'ASDA185','WEWE185','辣鸡185'),(200,'ASDA186','WEWE186','辣鸡186'),(201,'ASDA187','WEWE187','辣鸡187'),(202,'ASDA188','WEWE188','辣鸡188'),(203,'ASDA189','WEWE189','辣鸡189'),(204,'ASDA190','WEWE190','辣鸡190'),(205,'ASDA191','WEWE191','辣鸡191'),(206,'ASDA192','WEWE192','辣鸡192'),(207,'ASDA193','WEWE193','辣鸡193'),(208,'ASDA194','WEWE194','辣鸡194'),(209,'ASDA195','WEWE195','辣鸡195'),(210,'ASDA196','WEWE196','辣鸡196'),(211,'ASDA197','WEWE197','辣鸡197'),(212,'ASDA198','WEWE198','辣鸡198'),(213,'ASDA199','WEWE199','辣鸡199'),(214,'ASDA200','WEWE200','辣鸡200'),(215,'ASDA201','WEWE201','辣鸡201'),(216,'ASDA202','WEWE202','辣鸡202'),(217,'ASDA203','WEWE203','辣鸡203'),(218,'ASDA204','WEWE204','辣鸡204'),(219,'ASDA205','WEWE205','辣鸡205'),(220,'ASDA206','WEWE206','辣鸡206'),(221,'ASDA207','WEWE207','辣鸡207'),(222,'ASDA208','WEWE208','辣鸡208'),(223,'ASDA209','WEWE209','辣鸡209'),(224,'ASDA210','WEWE210','辣鸡210'),(225,'ASDA211','WEWE211','辣鸡211'),(226,'ASDA212','WEWE212','辣鸡212'),(227,'ASDA213','WEWE213','辣鸡213'),(228,'ASDA214','WEWE214','辣鸡214'),(229,'ASDA215','WEWE215','辣鸡215'),(230,'ASDA216','WEWE216','辣鸡216'),(231,'ASDA217','WEWE217','辣鸡217'),(232,'ASDA218','WEWE218','辣鸡218'),(233,'ASDA219','WEWE219','辣鸡219'),(234,'ASDA220','WEWE220','辣鸡220'),(235,'ASDA221','WEWE221','辣鸡221'),(236,'ASDA222','WEWE222','辣鸡222'),(237,'ASDA223','WEWE223','辣鸡223'),(238,'ASDA224','WEWE224','辣鸡224'),(239,'ASDA225','WEWE225','辣鸡225'),(240,'ASDA226','WEWE226','辣鸡226'),(241,'ASDA227','WEWE227','辣鸡227'),(242,'ASDA228','WEWE228','辣鸡228'),(243,'ASDA229','WEWE229','辣鸡229'),(244,'ASDA230','WEWE230','辣鸡230'),(245,'ASDA231','WEWE231','辣鸡231'),(246,'ASDA232','WEWE232','辣鸡232'),(247,'ASDA233','WEWE233','辣鸡233'),(248,'ASDA234','WEWE234','辣鸡234'),(249,'ASDA235','WEWE235','辣鸡235'),(250,'ASDA236','WEWE236','辣鸡236'),(251,'ASDA237','WEWE237','辣鸡237'),(252,'ASDA238','WEWE238','辣鸡238'),(253,'ASDA239','WEWE239','辣鸡239'),(254,'ASDA240','WEWE240','辣鸡240'),(255,'ASDA241','WEWE241','辣鸡241'),(256,'ASDA242','WEWE242','辣鸡242'),(257,'ASDA243','WEWE243','辣鸡243'),(258,'ASDA244','WEWE244','辣鸡244'),(259,'ASDA245','WEWE245','辣鸡245'),(260,'ASDA246','WEWE246','辣鸡246'),(261,'ASDA247','WEWE247','辣鸡247'),(262,'ASDA248','WEWE248','辣鸡248'),(263,'ASDA249','WEWE249','辣鸡249'),(264,'ASDA250','WEWE250','辣鸡250'),(265,'ASDA251','WEWE251','辣鸡251'),(266,'ASDA252','WEWE252','辣鸡252'),(267,'ASDA253','WEWE253','辣鸡253'),(268,'ASDA254','WEWE254','辣鸡254'),(269,'ASDA255','WEWE255','辣鸡255'),(270,'ASDA256','WEWE256','辣鸡256'),(271,'ASDA257','WEWE257','辣鸡257'),(272,'ASDA258','WEWE258','辣鸡258'),(273,'ASDA259','WEWE259','辣鸡259'),(274,'ASDA260','WEWE260','辣鸡260'),(275,'ASDA261','WEWE261','辣鸡261'),(276,'ASDA262','WEWE262','辣鸡262'),(277,'ASDA263','WEWE263','辣鸡263'),(278,'ASDA264','WEWE264','辣鸡264'),(279,'ASDA265','WEWE265','辣鸡265'),(280,'ASDA266','WEWE266','辣鸡266'),(281,'ASDA267','WEWE267','辣鸡267'),(282,'ASDA268','WEWE268','辣鸡268'),(283,'ASDA269','WEWE269','辣鸡269'),(284,'ASDA270','WEWE270','辣鸡270'),(285,'ASDA271','WEWE271','辣鸡271'),(286,'ASDA272','WEWE272','辣鸡272'),(287,'ASDA273','WEWE273','辣鸡273'),(288,'ASDA274','WEWE274','辣鸡274'),(289,'ASDA275','WEWE275','辣鸡275'),(290,'ASDA276','WEWE276','辣鸡276'),(291,'ASDA277','WEWE277','辣鸡277'),(292,'ASDA278','WEWE278','辣鸡278'),(293,'ASDA279','WEWE279','辣鸡279'),(294,'ASDA280','WEWE280','辣鸡280'),(295,'ASDA281','WEWE281','辣鸡281'),(296,'ASDA282','WEWE282','辣鸡282'),(297,'ASDA283','WEWE283','辣鸡283'),(298,'ASDA284','WEWE284','辣鸡284'),(299,'ASDA285','WEWE285','辣鸡285'),(300,'ASDA286','WEWE286','辣鸡286'),(301,'ASDA287','WEWE287','辣鸡287'),(302,'ASDA288','WEWE288','辣鸡288'),(303,'ASDA289','WEWE289','辣鸡289'),(304,'ASDA290','WEWE290','辣鸡290'),(305,'ASDA291','WEWE291','辣鸡291'),(306,'ASDA292','WEWE292','辣鸡292'),(307,'ASDA293','WEWE293','辣鸡293'),(308,'ASDA294','WEWE294','辣鸡294'),(309,'ASDA295','WEWE295','辣鸡295'),(310,'ASDA296','WEWE296','辣鸡296'),(311,'ASDA297','WEWE297','辣鸡297'),(312,'ASDA298','WEWE298','辣鸡298'),(313,'ASDA299','WEWE299','辣鸡299'),(314,'ASDA300','WEWE300','辣鸡300'),(315,'ASDA301','WEWE301','辣鸡301'),(316,'ASDA302','WEWE302','辣鸡302'),(317,'ASDA303','WEWE303','辣鸡303'),(318,'ASDA304','WEWE304','辣鸡304'),(319,'ASDA305','WEWE305','辣鸡305'),(320,'ASDA306','WEWE306','辣鸡306'),(321,'ASDA307','WEWE307','辣鸡307'),(322,'ASDA308','WEWE308','辣鸡308'),(323,'ASDA309','WEWE309','辣鸡309'),(324,'ASDA310','WEWE310','辣鸡310'),(325,'ASDA311','WEWE311','辣鸡311'),(326,'ASDA312','WEWE312','辣鸡312'),(327,'ASDA313','WEWE313','辣鸡313'),(328,'ASDA314','WEWE314','辣鸡314'),(329,'ASDA315','WEWE315','辣鸡315'),(330,'ASDA316','WEWE316','辣鸡316'),(331,'ASDA317','WEWE317','辣鸡317'),(332,'ASDA318','WEWE318','辣鸡318'),(333,'ASDA319','WEWE319','辣鸡319'),(334,'ASDA320','WEWE320','辣鸡320'),(335,'ASDA321','WEWE321','辣鸡321'),(336,'ASDA322','WEWE322','辣鸡322'),(337,'ASDA323','WEWE323','辣鸡323'),(338,'ASDA324','WEWE324','辣鸡324'),(339,'ASDA325','WEWE325','辣鸡325'),(340,'ASDA326','WEWE326','辣鸡326'),(341,'ASDA327','WEWE327','辣鸡327'),(342,'ASDA328','WEWE328','辣鸡328'),(343,'ASDA329','WEWE329','辣鸡329'),(344,'ASDA330','WEWE330','辣鸡330'),(345,'ASDA331','WEWE331','辣鸡331'),(346,'ASDA332','WEWE332','辣鸡332'),(347,'ASDA333','WEWE333','辣鸡333'),(348,'ASDA334','WEWE334','辣鸡334'),(349,'ASDA335','WEWE335','辣鸡335'),(350,'ASDA336','WEWE336','辣鸡336'),(351,'ASDA337','WEWE337','辣鸡337'),(352,'ASDA338','WEWE338','辣鸡338'),(353,'ASDA339','WEWE339','辣鸡339'),(354,'ASDA340','WEWE340','辣鸡340'),(355,'ASDA341','WEWE341','辣鸡341'),(356,'ASDA342','WEWE342','辣鸡342'),(357,'ASDA343','WEWE343','辣鸡343'),(358,'ASDA344','WEWE344','辣鸡344'),(359,'ASDA345','WEWE345','辣鸡345'),(360,'ASDA346','WEWE346','辣鸡346'),(361,'ASDA347','WEWE347','辣鸡347'),(362,'ASDA348','WEWE348','辣鸡348'),(363,'ASDA349','WEWE349','辣鸡349'),(364,'ASDA350','WEWE350','辣鸡350'),(365,'ASDA351','WEWE351','辣鸡351'),(366,'ASDA352','WEWE352','辣鸡352'),(367,'ASDA353','WEWE353','辣鸡353'),(368,'ASDA354','WEWE354','辣鸡354'),(369,'ASDA355','WEWE355','辣鸡355'),(370,'ASDA356','WEWE356','辣鸡356'),(371,'ASDA357','WEWE357','辣鸡357'),(372,'ASDA358','WEWE358','辣鸡358'),(373,'ASDA359','WEWE359','辣鸡359'),(374,'ASDA360','WEWE360','辣鸡360'),(375,'ASDA361','WEWE361','辣鸡361'),(376,'ASDA362','WEWE362','辣鸡362'),(377,'ASDA363','WEWE363','辣鸡363'),(378,'ASDA364','WEWE364','辣鸡364'),(379,'ASDA365','WEWE365','辣鸡365'),(380,'ASDA366','WEWE366','辣鸡366'),(381,'ASDA367','WEWE367','辣鸡367'),(382,'ASDA368','WEWE368','辣鸡368'),(383,'ASDA369','WEWE369','辣鸡369'),(384,'ASDA370','WEWE370','辣鸡370'),(385,'ASDA371','WEWE371','辣鸡371'),(386,'ASDA372','WEWE372','辣鸡372'),(387,'ASDA373','WEWE373','辣鸡373'),(388,'ASDA374','WEWE374','辣鸡374'),(389,'ASDA375','WEWE375','辣鸡375'),(390,'ASDA376','WEWE376','辣鸡376'),(391,'ASDA377','WEWE377','辣鸡377'),(392,'ASDA378','WEWE378','辣鸡378'),(393,'ASDA379','WEWE379','辣鸡379'),(394,'ASDA380','WEWE380','辣鸡380'),(395,'ASDA381','WEWE381','辣鸡381'),(396,'ASDA382','WEWE382','辣鸡382'),(397,'ASDA383','WEWE383','辣鸡383'),(398,'ASDA384','WEWE384','辣鸡384'),(399,'ASDA385','WEWE385','辣鸡385'),(400,'ASDA386','WEWE386','辣鸡386'),(401,'ASDA387','WEWE387','辣鸡387'),(402,'ASDA388','WEWE388','辣鸡388'),(403,'ASDA389','WEWE389','辣鸡389'),(404,'ASDA390','WEWE390','辣鸡390'),(405,'ASDA391','WEWE391','辣鸡391'),(406,'ASDA392','WEWE392','辣鸡392'),(407,'ASDA393','WEWE393','辣鸡393'),(408,'ASDA394','WEWE394','辣鸡394'),(409,'ASDA395','WEWE395','辣鸡395'),(410,'ASDA396','WEWE396','辣鸡396'),(411,'ASDA397','WEWE397','辣鸡397'),(412,'ASDA398','WEWE398','辣鸡398'),(413,'ASDA399','WEWE399','辣鸡399'),(414,'ASDA400','WEWE400','辣鸡400'),(415,'ASDA401','WEWE401','辣鸡401'),(416,'ASDA402','WEWE402','辣鸡402'),(417,'ASDA403','WEWE403','辣鸡403'),(418,'ASDA404','WEWE404','辣鸡404'),(419,'ASDA405','WEWE405','辣鸡405'),(420,'ASDA406','WEWE406','辣鸡406'),(421,'ASDA407','WEWE407','辣鸡407'),(422,'ASDA408','WEWE408','辣鸡408'),(423,'ASDA409','WEWE409','辣鸡409'),(424,'ASDA410','WEWE410','辣鸡410'),(425,'ASDA411','WEWE411','辣鸡411'),(426,'ASDA412','WEWE412','辣鸡412'),(427,'ASDA413','WEWE413','辣鸡413'),(428,'ASDA414','WEWE414','辣鸡414'),(429,'ASDA415','WEWE415','辣鸡415'),(430,'ASDA416','WEWE416','辣鸡416'),(431,'ASDA417','WEWE417','辣鸡417'),(432,'ASDA418','WEWE418','辣鸡418'),(433,'ASDA419','WEWE419','辣鸡419'),(434,'ASDA420','WEWE420','辣鸡420'),(435,'ASDA421','WEWE421','辣鸡421'),(436,'ASDA422','WEWE422','辣鸡422'),(437,'ASDA423','WEWE423','辣鸡423'),(438,'ASDA424','WEWE424','辣鸡424'),(439,'ASDA425','WEWE425','辣鸡425'),(440,'ASDA426','WEWE426','辣鸡426'),(441,'ASDA427','WEWE427','辣鸡427'),(442,'ASDA428','WEWE428','辣鸡428'),(443,'ASDA429','WEWE429','辣鸡429'),(444,'ASDA430','WEWE430','辣鸡430'),(445,'ASDA431','WEWE431','辣鸡431'),(446,'ASDA432','WEWE432','辣鸡432'),(447,'ASDA433','WEWE433','辣鸡433'),(448,'ASDA434','WEWE434','辣鸡434'),(449,'ASDA435','WEWE435','辣鸡435'),(450,'ASDA436','WEWE436','辣鸡436'),(451,'ASDA437','WEWE437','辣鸡437'),(452,'ASDA438','WEWE438','辣鸡438'),(453,'ASDA439','WEWE439','辣鸡439'),(454,'ASDA440','WEWE440','辣鸡440'),(455,'ASDA441','WEWE441','辣鸡441'),(456,'ASDA442','WEWE442','辣鸡442'),(457,'ASDA443','WEWE443','辣鸡443'),(458,'ASDA444','WEWE444','辣鸡444'),(459,'ASDA445','WEWE445','辣鸡445'),(460,'ASDA446','WEWE446','辣鸡446'),(461,'ASDA447','WEWE447','辣鸡447'),(462,'ASDA448','WEWE448','辣鸡448'),(463,'ASDA449','WEWE449','辣鸡449'),(464,'ASDA450','WEWE450','辣鸡450'),(465,'ASDA451','WEWE451','辣鸡451'),(466,'ASDA452','WEWE452','辣鸡452'),(467,'ASDA453','WEWE453','辣鸡453'),(468,'ASDA454','WEWE454','辣鸡454'),(469,'ASDA455','WEWE455','辣鸡455'),(470,'ASDA456','WEWE456','辣鸡456'),(471,'ASDA457','WEWE457','辣鸡457'),(472,'ASDA458','WEWE458','辣鸡458'),(473,'ASDA459','WEWE459','辣鸡459'),(474,'ASDA460','WEWE460','辣鸡460'),(475,'ASDA461','WEWE461','辣鸡461'),(476,'ASDA462','WEWE462','辣鸡462'),(477,'ASDA463','WEWE463','辣鸡463'),(478,'ASDA464','WEWE464','辣鸡464'),(479,'ASDA465','WEWE465','辣鸡465'),(480,'ASDA466','WEWE466','辣鸡466'),(481,'ASDA467','WEWE467','辣鸡467'),(482,'ASDA468','WEWE468','辣鸡468'),(483,'ASDA469','WEWE469','辣鸡469'),(484,'ASDA470','WEWE470','辣鸡470'),(485,'ASDA471','WEWE471','辣鸡471'),(486,'ASDA472','WEWE472','辣鸡472'),(487,'ASDA473','WEWE473','辣鸡473'),(488,'ASDA474','WEWE474','辣鸡474'),(489,'ASDA475','WEWE475','辣鸡475'),(490,'ASDA476','WEWE476','辣鸡476'),(491,'ASDA477','WEWE477','辣鸡477'),(492,'ASDA478','WEWE478','辣鸡478'),(493,'ASDA479','WEWE479','辣鸡479'),(494,'ASDA480','WEWE480','辣鸡480'),(495,'ASDA481','WEWE481','辣鸡481'),(496,'ASDA482','WEWE482','辣鸡482'),(497,'ASDA483','WEWE483','辣鸡483'),(498,'ASDA484','WEWE484','辣鸡484'),(499,'ASDA485','WEWE485','辣鸡485'),(500,'ASDA486','WEWE486','辣鸡486'),(501,'ASDA487','WEWE487','辣鸡487'),(502,'ASDA488','WEWE488','辣鸡488'),(503,'ASDA489','WEWE489','辣鸡489'),(504,'ASDA490','WEWE490','辣鸡490'),(505,'ASDA491','WEWE491','辣鸡491'),(506,'ASDA492','WEWE492','辣鸡492'),(507,'ASDA493','WEWE493','辣鸡493'),(508,'ASDA494','WEWE494','辣鸡494'),(509,'ASDA495','WEWE495','辣鸡495'),(510,'ASDA496','WEWE496','辣鸡496'),(511,'ASDA497','WEWE497','辣鸡497'),(512,'ASDA498','WEWE498','辣鸡498'),(513,'ASDA499','WEWE499','辣鸡499'),(514,'ASDA500','WEWE500','辣鸡500'),(515,'ASDA501','WEWE501','辣鸡501'),(516,'ASDA502','WEWE502','辣鸡502'),(517,'ASDA503','WEWE503','辣鸡503'),(518,'ASDA504','WEWE504','辣鸡504'),(519,'ASDA505','WEWE505','辣鸡505'),(520,'ASDA506','WEWE506','辣鸡506'),(521,'ASDA507','WEWE507','辣鸡507'),(522,'ASDA508','WEWE508','辣鸡508'),(523,'ASDA509','WEWE509','辣鸡509'),(524,'ASDA510','WEWE510','辣鸡510'),(525,'ASDA511','WEWE511','辣鸡511'),(526,'ASDA512','WEWE512','辣鸡512'),(527,'ASDA513','WEWE513','辣鸡513'),(528,'ASDA514','WEWE514','辣鸡514'),(529,'ASDA515','WEWE515','辣鸡515'),(530,'ASDA516','WEWE516','辣鸡516'),(531,'ASDA517','WEWE517','辣鸡517'),(532,'ASDA518','WEWE518','辣鸡518'),(533,'ASDA519','WEWE519','辣鸡519'),(534,'ASDA520','WEWE520','辣鸡520'),(535,'ASDA521','WEWE521','辣鸡521'),(536,'ASDA522','WEWE522','辣鸡522'),(537,'ASDA523','WEWE523','辣鸡523'),(538,'ASDA524','WEWE524','辣鸡524'),(539,'ASDA525','WEWE525','辣鸡525'),(540,'ASDA526','WEWE526','辣鸡526'),(541,'ASDA527','WEWE527','辣鸡527'),(542,'ASDA528','WEWE528','辣鸡528'),(543,'ASDA529','WEWE529','辣鸡529'),(544,'ASDA530','WEWE530','辣鸡530'),(545,'ASDA531','WEWE531','辣鸡531'),(546,'ASDA532','WEWE532','辣鸡532'),(547,'ASDA533','WEWE533','辣鸡533'),(548,'ASDA534','WEWE534','辣鸡534'),(549,'ASDA535','WEWE535','辣鸡535'),(550,'ASDA536','WEWE536','辣鸡536'),(551,'ASDA537','WEWE537','辣鸡537'),(552,'ASDA538','WEWE538','辣鸡538'),(553,'ASDA539','WEWE539','辣鸡539'),(554,'ASDA540','WEWE540','辣鸡540'),(555,'ASDA541','WEWE541','辣鸡541'),(556,'ASDA542','WEWE542','辣鸡542'),(557,'ASDA543','WEWE543','辣鸡543'),(558,'ASDA544','WEWE544','辣鸡544'),(559,'ASDA545','WEWE545','辣鸡545'),(560,'ASDA546','WEWE546','辣鸡546'),(561,'ASDA547','WEWE547','辣鸡547'),(562,'ASDA548','WEWE548','辣鸡548'),(563,'ASDA549','WEWE549','辣鸡549'),(564,'ASDA550','WEWE550','辣鸡550'),(565,'ASDA551','WEWE551','辣鸡551'),(566,'ASDA552','WEWE552','辣鸡552'),(567,'ASDA553','WEWE553','辣鸡553'),(568,'ASDA554','WEWE554','辣鸡554'),(569,'ASDA555','WEWE555','辣鸡555'),(570,'ASDA556','WEWE556','辣鸡556'),(571,'ASDA557','WEWE557','辣鸡557'),(572,'ASDA558','WEWE558','辣鸡558'),(573,'ASDA559','WEWE559','辣鸡559'),(574,'ASDA560','WEWE560','辣鸡560'),(575,'ASDA561','WEWE561','辣鸡561'),(576,'ASDA562','WEWE562','辣鸡562'),(577,'ASDA563','WEWE563','辣鸡563'),(578,'ASDA564','WEWE564','辣鸡564'),(579,'ASDA565','WEWE565','辣鸡565'),(580,'ASDA566','WEWE566','辣鸡566'),(581,'ASDA567','WEWE567','辣鸡567'),(582,'ASDA568','WEWE568','辣鸡568'),(583,'ASDA569','WEWE569','辣鸡569'),(584,'ASDA570','WEWE570','辣鸡570'),(585,'ASDA571','WEWE571','辣鸡571'),(586,'ASDA572','WEWE572','辣鸡572'),(587,'ASDA573','WEWE573','辣鸡573'),(588,'ASDA574','WEWE574','辣鸡574'),(589,'ASDA575','WEWE575','辣鸡575'),(590,'ASDA576','WEWE576','辣鸡576'),(591,'ASDA577','WEWE577','辣鸡577'),(592,'ASDA578','WEWE578','辣鸡578'),(593,'ASDA579','WEWE579','辣鸡579'),(594,'ASDA580','WEWE580','辣鸡580'),(595,'ASDA581','WEWE581','辣鸡581'),(596,'ASDA582','WEWE582','辣鸡582'),(597,'ASDA583','WEWE583','辣鸡583'),(598,'ASDA584','WEWE584','辣鸡584'),(599,'ASDA585','WEWE585','辣鸡585'),(600,'ASDA586','WEWE586','辣鸡586'),(601,'ASDA587','WEWE587','辣鸡587'),(602,'ASDA588','WEWE588','辣鸡588'),(603,'ASDA589','WEWE589','辣鸡589'),(604,'ASDA590','WEWE590','辣鸡590'),(605,'ASDA591','WEWE591','辣鸡591'),(606,'ASDA592','WEWE592','辣鸡592'),(607,'ASDA593','WEWE593','辣鸡593'),(608,'ASDA594','WEWE594','辣鸡594'),(609,'ASDA595','WEWE595','辣鸡595'),(610,'ASDA596','WEWE596','辣鸡596'),(611,'ASDA597','WEWE597','辣鸡597'),(612,'ASDA598','WEWE598','辣鸡598'),(613,'ASDA599','WEWE599','辣鸡599'),(614,'ASDA600','WEWE600','辣鸡600'),(615,'ASDA601','WEWE601','辣鸡601'),(616,'ASDA602','WEWE602','辣鸡602'),(617,'ASDA603','WEWE603','辣鸡603'),(618,'ASDA604','WEWE604','辣鸡604'),(619,'ASDA605','WEWE605','辣鸡605'),(620,'ASDA606','WEWE606','辣鸡606'),(621,'ASDA607','WEWE607','辣鸡607'),(622,'ASDA608','WEWE608','辣鸡608'),(623,'ASDA609','WEWE609','辣鸡609'),(624,'ASDA610','WEWE610','辣鸡610'),(625,'ASDA611','WEWE611','辣鸡611'),(626,'ASDA612','WEWE612','辣鸡612'),(627,'ASDA613','WEWE613','辣鸡613'),(628,'ASDA614','WEWE614','辣鸡614'),(629,'ASDA615','WEWE615','辣鸡615'),(630,'ASDA616','WEWE616','辣鸡616'),(631,'ASDA617','WEWE617','辣鸡617'),(632,'ASDA618','WEWE618','辣鸡618'),(633,'ASDA619','WEWE619','辣鸡619'),(634,'ASDA620','WEWE620','辣鸡620'),(635,'ASDA621','WEWE621','辣鸡621'),(636,'ASDA622','WEWE622','辣鸡622'),(637,'ASDA623','WEWE623','辣鸡623'),(638,'ASDA624','WEWE624','辣鸡624'),(639,'ASDA625','WEWE625','辣鸡625'),(640,'ASDA626','WEWE626','辣鸡626'),(641,'ASDA627','WEWE627','辣鸡627'),(642,'ASDA628','WEWE628','辣鸡628'),(643,'ASDA629','WEWE629','辣鸡629'),(644,'ASDA630','WEWE630','辣鸡630'),(645,'ASDA631','WEWE631','辣鸡631'),(646,'ASDA632','WEWE632','辣鸡632'),(647,'ASDA633','WEWE633','辣鸡633'),(648,'ASDA634','WEWE634','辣鸡634'),(649,'ASDA635','WEWE635','辣鸡635'),(650,'ASDA636','WEWE636','辣鸡636'),(651,'ASDA637','WEWE637','辣鸡637'),(652,'ASDA638','WEWE638','辣鸡638'),(653,'ASDA639','WEWE639','辣鸡639'),(654,'ASDA640','WEWE640','辣鸡640'),(655,'ASDA641','WEWE641','辣鸡641'),(656,'ASDA642','WEWE642','辣鸡642'),(657,'ASDA643','WEWE643','辣鸡643'),(658,'ASDA644','WEWE644','辣鸡644'),(659,'ASDA645','WEWE645','辣鸡645'),(660,'ASDA646','WEWE646','辣鸡646'),(661,'ASDA647','WEWE647','辣鸡647'),(662,'ASDA648','WEWE648','辣鸡648'),(663,'ASDA649','WEWE649','辣鸡649'),(664,'ASDA650','WEWE650','辣鸡650'),(665,'ASDA651','WEWE651','辣鸡651'),(666,'ASDA652','WEWE652','辣鸡652'),(667,'ASDA653','WEWE653','辣鸡653'),(668,'ASDA654','WEWE654','辣鸡654'),(669,'ASDA655','WEWE655','辣鸡655'),(670,'ASDA656','WEWE656','辣鸡656'),(671,'ASDA657','WEWE657','辣鸡657'),(672,'ASDA658','WEWE658','辣鸡658'),(673,'ASDA659','WEWE659','辣鸡659'),(674,'ASDA660','WEWE660','辣鸡660'),(675,'ASDA661','WEWE661','辣鸡661'),(676,'ASDA662','WEWE662','辣鸡662'),(677,'ASDA663','WEWE663','辣鸡663'),(678,'ASDA664','WEWE664','辣鸡664'),(679,'ASDA665','WEWE665','辣鸡665'),(680,'ASDA666','WEWE666','辣鸡666'),(681,'ASDA667','WEWE667','辣鸡667'),(682,'ASDA668','WEWE668','辣鸡668'),(683,'ASDA669','WEWE669','辣鸡669'),(684,'ASDA670','WEWE670','辣鸡670'),(685,'ASDA671','WEWE671','辣鸡671'),(686,'ASDA672','WEWE672','辣鸡672'),(687,'ASDA673','WEWE673','辣鸡673'),(688,'ASDA674','WEWE674','辣鸡674'),(689,'ASDA675','WEWE675','辣鸡675'),(690,'ASDA676','WEWE676','辣鸡676'),(691,'ASDA677','WEWE677','辣鸡677'),(692,'ASDA678','WEWE678','辣鸡678'),(693,'ASDA679','WEWE679','辣鸡679'),(694,'ASDA680','WEWE680','辣鸡680'),(695,'ASDA681','WEWE681','辣鸡681'),(696,'ASDA682','WEWE682','辣鸡682'),(697,'ASDA683','WEWE683','辣鸡683'),(698,'ASDA684','WEWE684','辣鸡684'),(699,'ASDA685','WEWE685','辣鸡685'),(700,'ASDA686','WEWE686','辣鸡686'),(701,'ASDA687','WEWE687','辣鸡687'),(702,'ASDA688','WEWE688','辣鸡688'),(703,'ASDA689','WEWE689','辣鸡689'),(704,'ASDA690','WEWE690','辣鸡690'),(705,'ASDA691','WEWE691','辣鸡691'),(706,'ASDA692','WEWE692','辣鸡692'),(707,'ASDA693','WEWE693','辣鸡693'),(708,'ASDA694','WEWE694','辣鸡694'),(709,'ASDA695','WEWE695','辣鸡695'),(710,'ASDA696','WEWE696','辣鸡696'),(711,'ASDA697','WEWE697','辣鸡697'),(712,'ASDA698','WEWE698','辣鸡698'),(713,'ASDA699','WEWE699','辣鸡699'),(714,'ASDA700','WEWE700','辣鸡700'),(715,'ASDA701','WEWE701','辣鸡701'),(716,'ASDA702','WEWE702','辣鸡702'),(717,'ASDA703','WEWE703','辣鸡703'),(718,'ASDA704','WEWE704','辣鸡704'),(719,'ASDA705','WEWE705','辣鸡705'),(720,'ASDA706','WEWE706','辣鸡706'),(721,'ASDA707','WEWE707','辣鸡707'),(722,'ASDA708','WEWE708','辣鸡708'),(723,'ASDA709','WEWE709','辣鸡709'),(724,'ASDA710','WEWE710','辣鸡710'),(725,'ASDA711','WEWE711','辣鸡711'),(726,'ASDA712','WEWE712','辣鸡712'),(727,'ASDA713','WEWE713','辣鸡713'),(728,'ASDA714','WEWE714','辣鸡714'),(729,'ASDA715','WEWE715','辣鸡715'),(730,'ASDA716','WEWE716','辣鸡716'),(731,'ASDA717','WEWE717','辣鸡717'),(732,'ASDA718','WEWE718','辣鸡718'),(733,'ASDA719','WEWE719','辣鸡719'),(734,'ASDA720','WEWE720','辣鸡720'),(735,'ASDA721','WEWE721','辣鸡721'),(736,'ASDA722','WEWE722','辣鸡722'),(737,'ASDA723','WEWE723','辣鸡723'),(738,'ASDA724','WEWE724','辣鸡724'),(739,'ASDA725','WEWE725','辣鸡725'),(740,'ASDA726','WEWE726','辣鸡726'),(741,'ASDA727','WEWE727','辣鸡727'),(742,'ASDA728','WEWE728','辣鸡728'),(743,'ASDA729','WEWE729','辣鸡729'),(744,'ASDA730','WEWE730','辣鸡730'),(745,'ASDA731','WEWE731','辣鸡731'),(746,'ASDA732','WEWE732','辣鸡732'),(747,'ASDA733','WEWE733','辣鸡733'),(748,'ASDA734','WEWE734','辣鸡734'),(749,'ASDA735','WEWE735','辣鸡735'),(750,'ASDA736','WEWE736','辣鸡736'),(751,'ASDA737','WEWE737','辣鸡737'),(752,'ASDA738','WEWE738','辣鸡738'),(753,'ASDA739','WEWE739','辣鸡739'),(754,'ASDA740','WEWE740','辣鸡740'),(755,'ASDA741','WEWE741','辣鸡741'),(756,'ASDA742','WEWE742','辣鸡742'),(757,'ASDA743','WEWE743','辣鸡743'),(758,'ASDA744','WEWE744','辣鸡744'),(759,'ASDA745','WEWE745','辣鸡745'),(760,'ASDA746','WEWE746','辣鸡746'),(761,'ASDA747','WEWE747','辣鸡747'),(762,'ASDA748','WEWE748','辣鸡748'),(763,'ASDA749','WEWE749','辣鸡749'),(764,'ASDA750','WEWE750','辣鸡750'),(765,'ASDA751','WEWE751','辣鸡751'),(766,'ASDA752','WEWE752','辣鸡752'),(767,'ASDA753','WEWE753','辣鸡753'),(768,'ASDA754','WEWE754','辣鸡754'),(769,'ASDA755','WEWE755','辣鸡755'),(770,'ASDA756','WEWE756','辣鸡756'),(771,'ASDA757','WEWE757','辣鸡757'),(772,'ASDA758','WEWE758','辣鸡758'),(773,'ASDA759','WEWE759','辣鸡759'),(774,'ASDA760','WEWE760','辣鸡760'),(775,'ASDA761','WEWE761','辣鸡761'),(776,'ASDA762','WEWE762','辣鸡762'),(777,'ASDA763','WEWE763','辣鸡763'),(778,'ASDA764','WEWE764','辣鸡764'),(779,'ASDA765','WEWE765','辣鸡765'),(780,'ASDA766','WEWE766','辣鸡766'),(781,'ASDA767','WEWE767','辣鸡767'),(782,'ASDA768','WEWE768','辣鸡768'),(783,'ASDA769','WEWE769','辣鸡769'),(784,'ASDA770','WEWE770','辣鸡770'),(785,'ASDA771','WEWE771','辣鸡771'),(786,'ASDA772','WEWE772','辣鸡772'),(787,'ASDA773','WEWE773','辣鸡773'),(788,'ASDA774','WEWE774','辣鸡774'),(789,'ASDA775','WEWE775','辣鸡775'),(790,'ASDA776','WEWE776','辣鸡776'),(791,'ASDA777','WEWE777','辣鸡777'),(792,'ASDA778','WEWE778','辣鸡778'),(793,'ASDA779','WEWE779','辣鸡779'),(794,'ASDA780','WEWE780','辣鸡780'),(795,'ASDA781','WEWE781','辣鸡781'),(796,'ASDA782','WEWE782','辣鸡782'),(797,'ASDA783','WEWE783','辣鸡783'),(798,'ASDA784','WEWE784','辣鸡784'),(799,'ASDA785','WEWE785','辣鸡785'),(800,'ASDA786','WEWE786','辣鸡786'),(801,'ASDA787','WEWE787','辣鸡787'),(802,'ASDA788','WEWE788','辣鸡788'),(803,'ASDA789','WEWE789','辣鸡789'),(804,'ASDA790','WEWE790','辣鸡790'),(805,'ASDA791','WEWE791','辣鸡791'),(806,'ASDA792','WEWE792','辣鸡792'),(807,'ASDA793','WEWE793','辣鸡793'),(808,'ASDA794','WEWE794','辣鸡794'),(809,'ASDA795','WEWE795','辣鸡795'),(810,'ASDA796','WEWE796','辣鸡796'),(811,'ASDA797','WEWE797','辣鸡797'),(812,'ASDA798','WEWE798','辣鸡798'),(813,'ASDA799','WEWE799','辣鸡799'),(814,'ASDA800','WEWE800','辣鸡800'),(815,'ASDA801','WEWE801','辣鸡801'),(816,'ASDA802','WEWE802','辣鸡802'),(817,'ASDA803','WEWE803','辣鸡803'),(818,'ASDA804','WEWE804','辣鸡804'),(819,'ASDA805','WEWE805','辣鸡805'),(820,'ASDA806','WEWE806','辣鸡806'),(821,'ASDA807','WEWE807','辣鸡807'),(822,'ASDA808','WEWE808','辣鸡808'),(823,'ASDA809','WEWE809','辣鸡809'),(824,'ASDA810','WEWE810','辣鸡810'),(825,'ASDA811','WEWE811','辣鸡811'),(826,'ASDA812','WEWE812','辣鸡812'),(827,'ASDA813','WEWE813','辣鸡813'),(828,'ASDA814','WEWE814','辣鸡814'),(829,'ASDA815','WEWE815','辣鸡815'),(830,'ASDA816','WEWE816','辣鸡816'),(831,'ASDA817','WEWE817','辣鸡817'),(832,'ASDA818','WEWE818','辣鸡818'),(833,'ASDA819','WEWE819','辣鸡819'),(834,'ASDA820','WEWE820','辣鸡820'),(835,'ASDA821','WEWE821','辣鸡821'),(836,'ASDA822','WEWE822','辣鸡822'),(837,'ASDA823','WEWE823','辣鸡823'),(838,'ASDA824','WEWE824','辣鸡824'),(839,'ASDA825','WEWE825','辣鸡825'),(840,'ASDA826','WEWE826','辣鸡826'),(841,'ASDA827','WEWE827','辣鸡827'),(842,'ASDA828','WEWE828','辣鸡828'),(843,'ASDA829','WEWE829','辣鸡829'),(844,'ASDA830','WEWE830','辣鸡830'),(845,'ASDA831','WEWE831','辣鸡831'),(846,'ASDA832','WEWE832','辣鸡832'),(847,'ASDA833','WEWE833','辣鸡833'),(848,'ASDA834','WEWE834','辣鸡834'),(849,'ASDA835','WEWE835','辣鸡835'),(850,'ASDA836','WEWE836','辣鸡836'),(851,'ASDA837','WEWE837','辣鸡837'),(852,'ASDA838','WEWE838','辣鸡838'),(853,'ASDA839','WEWE839','辣鸡839'),(854,'ASDA840','WEWE840','辣鸡840'),(855,'ASDA841','WEWE841','辣鸡841'),(856,'ASDA842','WEWE842','辣鸡842'),(857,'ASDA843','WEWE843','辣鸡843'),(858,'ASDA844','WEWE844','辣鸡844'),(859,'ASDA845','WEWE845','辣鸡845'),(860,'ASDA846','WEWE846','辣鸡846'),(861,'ASDA847','WEWE847','辣鸡847'),(862,'ASDA848','WEWE848','辣鸡848'),(863,'ASDA849','WEWE849','辣鸡849'),(864,'ASDA850','WEWE850','辣鸡850'),(865,'ASDA851','WEWE851','辣鸡851'),(866,'ASDA852','WEWE852','辣鸡852'),(867,'ASDA853','WEWE853','辣鸡853'),(868,'ASDA854','WEWE854','辣鸡854'),(869,'ASDA855','WEWE855','辣鸡855'),(870,'ASDA856','WEWE856','辣鸡856'),(871,'ASDA857','WEWE857','辣鸡857'),(872,'ASDA858','WEWE858','辣鸡858'),(873,'ASDA859','WEWE859','辣鸡859'),(874,'ASDA860','WEWE860','辣鸡860'),(875,'ASDA861','WEWE861','辣鸡861'),(876,'ASDA862','WEWE862','辣鸡862'),(877,'ASDA863','WEWE863','辣鸡863'),(878,'ASDA864','WEWE864','辣鸡864'),(879,'ASDA865','WEWE865','辣鸡865'),(880,'ASDA866','WEWE866','辣鸡866'),(881,'ASDA867','WEWE867','辣鸡867'),(882,'ASDA868','WEWE868','辣鸡868'),(883,'ASDA869','WEWE869','辣鸡869'),(884,'ASDA870','WEWE870','辣鸡870'),(885,'ASDA871','WEWE871','辣鸡871'),(886,'ASDA872','WEWE872','辣鸡872'),(887,'ASDA873','WEWE873','辣鸡873'),(888,'ASDA874','WEWE874','辣鸡874'),(889,'ASDA875','WEWE875','辣鸡875'),(890,'ASDA876','WEWE876','辣鸡876'),(891,'ASDA877','WEWE877','辣鸡877'),(892,'ASDA878','WEWE878','辣鸡878'),(893,'ASDA879','WEWE879','辣鸡879'),(894,'ASDA880','WEWE880','辣鸡880'),(895,'ASDA881','WEWE881','辣鸡881'),(896,'ASDA882','WEWE882','辣鸡882'),(897,'ASDA883','WEWE883','辣鸡883'),(898,'ASDA884','WEWE884','辣鸡884'),(899,'ASDA885','WEWE885','辣鸡885'),(900,'ASDA886','WEWE886','辣鸡886'),(901,'ASDA887','WEWE887','辣鸡887'),(902,'ASDA888','WEWE888','辣鸡888'),(903,'ASDA889','WEWE889','辣鸡889'),(904,'ASDA890','WEWE890','辣鸡890'),(905,'ASDA891','WEWE891','辣鸡891'),(906,'ASDA892','WEWE892','辣鸡892'),(907,'ASDA893','WEWE893','辣鸡893'),(908,'ASDA894','WEWE894','辣鸡894'),(909,'ASDA895','WEWE895','辣鸡895'),(910,'ASDA896','WEWE896','辣鸡896'),(911,'ASDA897','WEWE897','辣鸡897'),(912,'ASDA898','WEWE898','辣鸡898'),(913,'ASDA899','WEWE899','辣鸡899'),(914,'ASDA900','WEWE900','辣鸡900'),(915,'ASDA901','WEWE901','辣鸡901'),(916,'ASDA902','WEWE902','辣鸡902'),(917,'ASDA903','WEWE903','辣鸡903'),(918,'ASDA904','WEWE904','辣鸡904'),(919,'ASDA905','WEWE905','辣鸡905'),(920,'ASDA906','WEWE906','辣鸡906'),(921,'ASDA907','WEWE907','辣鸡907'),(922,'ASDA908','WEWE908','辣鸡908'),(923,'ASDA909','WEWE909','辣鸡909'),(924,'ASDA910','WEWE910','辣鸡910'),(925,'ASDA911','WEWE911','辣鸡911'),(926,'ASDA912','WEWE912','辣鸡912'),(927,'ASDA913','WEWE913','辣鸡913'),(928,'ASDA914','WEWE914','辣鸡914'),(929,'ASDA915','WEWE915','辣鸡915'),(930,'ASDA916','WEWE916','辣鸡916'),(931,'ASDA917','WEWE917','辣鸡917'),(932,'ASDA918','WEWE918','辣鸡918'),(933,'ASDA919','WEWE919','辣鸡919'),(934,'ASDA920','WEWE920','辣鸡920'),(935,'ASDA921','WEWE921','辣鸡921'),(936,'ASDA922','WEWE922','辣鸡922'),(937,'ASDA923','WEWE923','辣鸡923'),(938,'ASDA924','WEWE924','辣鸡924'),(939,'ASDA925','WEWE925','辣鸡925'),(940,'ASDA926','WEWE926','辣鸡926'),(941,'ASDA927','WEWE927','辣鸡927'),(942,'ASDA928','WEWE928','辣鸡928'),(943,'ASDA929','WEWE929','辣鸡929'),(944,'ASDA930','WEWE930','辣鸡930'),(945,'ASDA931','WEWE931','辣鸡931'),(946,'ASDA932','WEWE932','辣鸡932'),(947,'ASDA933','WEWE933','辣鸡933'),(948,'ASDA934','WEWE934','辣鸡934'),(949,'ASDA935','WEWE935','辣鸡935'),(950,'ASDA936','WEWE936','辣鸡936'),(951,'ASDA937','WEWE937','辣鸡937'),(952,'ASDA938','WEWE938','辣鸡938'),(953,'ASDA939','WEWE939','辣鸡939'),(954,'ASDA940','WEWE940','辣鸡940'),(955,'ASDA941','WEWE941','辣鸡941'),(956,'ASDA942','WEWE942','辣鸡942'),(957,'ASDA943','WEWE943','辣鸡943'),(958,'ASDA944','WEWE944','辣鸡944'),(959,'ASDA945','WEWE945','辣鸡945'),(960,'ASDA946','WEWE946','辣鸡946'),(961,'ASDA947','WEWE947','辣鸡947'),(962,'ASDA948','WEWE948','辣鸡948'),(963,'ASDA949','WEWE949','辣鸡949'),(964,'ASDA950','WEWE950','辣鸡950'),(965,'ASDA951','WEWE951','辣鸡951'),(966,'ASDA952','WEWE952','辣鸡952'),(967,'ASDA953','WEWE953','辣鸡953'),(968,'ASDA954','WEWE954','辣鸡954'),(969,'ASDA955','WEWE955','辣鸡955'),(970,'ASDA956','WEWE956','辣鸡956'),(971,'ASDA957','WEWE957','辣鸡957'),(972,'ASDA958','WEWE958','辣鸡958'),(973,'ASDA959','WEWE959','辣鸡959'),(974,'ASDA960','WEWE960','辣鸡960'),(975,'ASDA961','WEWE961','辣鸡961'),(976,'ASDA962','WEWE962','辣鸡962'),(977,'ASDA963','WEWE963','辣鸡963'),(978,'ASDA964','WEWE964','辣鸡964'),(979,'ASDA965','WEWE965','辣鸡965'),(980,'ASDA966','WEWE966','辣鸡966'),(981,'ASDA967','WEWE967','辣鸡967'),(982,'ASDA968','WEWE968','辣鸡968'),(983,'ASDA969','WEWE969','辣鸡969'),(984,'ASDA970','WEWE970','辣鸡970'),(985,'ASDA971','WEWE971','辣鸡971'),(986,'ASDA972','WEWE972','辣鸡972'),(987,'ASDA973','WEWE973','辣鸡973'),(988,'ASDA974','WEWE974','辣鸡974'),(989,'ASDA975','WEWE975','辣鸡975'),(990,'ASDA976','WEWE976','辣鸡976'),(991,'ASDA977','WEWE977','辣鸡977'),(992,'ASDA978','WEWE978','辣鸡978'),(993,'ASDA979','WEWE979','辣鸡979'),(994,'ASDA980','WEWE980','辣鸡980'),(995,'ASDA981','WEWE981','辣鸡981'),(996,'ASDA982','WEWE982','辣鸡982'),(997,'ASDA983','WEWE983','辣鸡983'),(998,'ASDA984','WEWE984','辣鸡984'),(999,'ASDA985','WEWE985','辣鸡985'),(1000,'ASDA986','WEWE986','辣鸡986'),(1001,'ASDA987','WEWE987','辣鸡987'),(1002,'ASDA988','WEWE988','辣鸡988'),(1003,'ASDA989','WEWE989','辣鸡989'),(1004,'ASDA990','WEWE990','辣鸡990'),(1005,'ASDA991','WEWE991','辣鸡991'),(1006,'ASDA992','WEWE992','辣鸡992'),(1007,'ASDA993','WEWE993','辣鸡993'),(1008,'ASDA994','WEWE994','辣鸡994'),(1009,'ASDA995','WEWE995','辣鸡995'),(1010,'ASDA996','WEWE996','辣鸡996'),(1011,'ASDA997','WEWE997','辣鸡997'),(1012,'ASDA998','WEWE998','辣鸡998'),(1013,'ASDA999','WEWE999','辣鸡999'),(1014,'二狗子','123456',NULL),(1015,'大狗子','123456','大狗'),(1016,'Testasdasd','a','a'),(1017,'辣鸡','123','真垃圾'),(1018,'Test111','111111','LLLLL');

/*Table structure for table `tb_news` */

DROP TABLE IF EXISTS `tb_news`;

CREATE TABLE `tb_news` (
  `NID` int(11) NOT NULL AUTO_INCREMENT,
  `NTitle` text NOT NULL,
  `NDes` text NOT NULL,
  `NClick` int(11) NOT NULL,
  `NTime` datetime NOT NULL,
  PRIMARY KEY (`NID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `tb_news` */

insert  into `tb_news`(`NID`,`NTitle`,`NDes`,`NClick`,`NTime`) values (1,'TestNews','阿斯顿萨达啊是的傻傻的啊飒飒萨达萨达阿瑟大时代萨达萨达是个打什么好 看见发生的卡死看发世界的看法 ',459,'2016-12-12 19:09:49'),(3,'Title1','Des1',2,'2018-12-06 15:38:24'),(5,'Title3','Des3',3,'2018-12-06 15:38:24'),(7,'Title5','Des5',6,'2018-12-06 15:38:24'),(8,'Title6','Des6',7,'2018-12-06 15:38:24'),(9,'Title7','Des7',10,'2018-12-06 15:38:24'),(10,'Title8','Des8',8,'2018-12-06 15:38:24'),(11,'Title9','Des9',10,'2018-12-06 15:38:24'),(12,'Title10','Des10',10,'2018-12-06 15:38:24'),(14,'Title12','Des12',12,'2018-12-06 15:38:24'),(15,'Title13','Des13',13,'2018-12-06 15:38:24'),(16,'Title14','Des14',14,'2018-12-06 15:38:24'),(17,'Title15','Des15',16,'2018-12-06 15:38:24'),(18,'Title16','Des16',16,'2018-12-06 15:38:24'),(19,'Title17','Des17',17,'2018-12-06 15:38:24'),(20,'Title18','Des18',19,'2018-12-06 15:38:24');

/*Table structure for table `tb_product` */

DROP TABLE IF EXISTS `tb_product`;

CREATE TABLE `tb_product` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `PTID` int(11) NOT NULL,
  `Pimg` varchar(200) DEFAULT NULL,
  `PProName` varchar(200) NOT NULL,
  `PDes` text NOT NULL,
  `PHis` int(11) NOT NULL,
  `PAddDate` datetime NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `tb_product` */

insert  into `tb_product`(`PID`,`PTID`,`Pimg`,`PProName`,`PDes`,`PHis`,`PAddDate`) values (1,2,'1544445753316.jpg','15W大灯泡','asdsadasdsadsadas',6,'2018-12-10 20:42:33'),(2,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(3,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(4,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(5,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(6,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(7,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(8,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(9,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(10,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(11,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(12,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(13,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(14,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(15,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(16,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(17,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(18,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(19,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(20,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(21,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(22,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(23,2,'1544449049485.jpg','asdasdas','啦啦啦',1,'2018-12-10 21:37:29'),(24,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(25,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(26,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(27,2,'1544449049485.jpg','asdasdas','啦啦啦',0,'2018-12-10 21:37:29'),(30,6,'1544452908393.jpg','15W大灯泡','asdasdasdsadasdasdasd',4,'2018-12-10 22:41:48'),(31,7,'1544452908393.jpg','大笨电视','啦啦啦',1,'2018-12-12 02:08:07'),(32,2,'1544666935777.png','30W灯泡','AAAAAA',0,'2018-12-13 10:08:56'),(33,2,'1544753719538.png','A','A',0,'2018-12-14 10:15:20');

/*Table structure for table `tb_producttype` */

DROP TABLE IF EXISTS `tb_producttype`;

CREATE TABLE `tb_producttype` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `PName` varchar(64) NOT NULL,
  `PFather_ID` int(11) NOT NULL,
  `POrder` int(11) NOT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `tb_producttype` */

insert  into `tb_producttype`(`PID`,`PName`,`PFather_ID`,`POrder`) values (1,'照明灯具电器连接器',-1,0),(2,'白炽灯',1,1),(3,'小灯泡',2,0),(4,'大灯泡',2,0),(5,'中灯泡',2,0),(6,'绿灯泡',2,0),(7,'电视',-1,0),(8,'小小灯泡',3,0),(9,'大彩电',7,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;