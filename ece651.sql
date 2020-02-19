-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: ece651
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `NewsCategory`
--

DROP TABLE IF EXISTS `NewsCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsCategory`
--

LOCK TABLES `NewsCategory` WRITE;
/*!40000 ALTER TABLE `NewsCategory` DISABLE KEYS */;
INSERT INTO `NewsCategory` VALUES (1,'University'),(2,'Faculties'),(3,'Affiliated and Federated Institutions of Waterloo'),(4,'Satellite Campuses'),(5,'Departments & Schools'),(6,'Research Centres & Institutes'),(7,'Offices and Services');
/*!40000 ALTER TABLE `NewsCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewsSource`
--

DROP TABLE IF EXISTS `NewsSource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NewsSource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(1024) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `uw_style` tinyint(1) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `NewsSource_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `NewsCategory` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewsSource`
--

LOCK TABLES `NewsSource` WRITE;
/*!40000 ALTER TABLE `NewsSource` DISABLE KEYS */;
INSERT INTO `NewsSource` VALUES (1,'https://uwaterloo.ca/news/news','Waterloo News',1,1),(2,'https://uwaterloo.ca/applied-health-sciences/news','Applied Health Sciences',1,2),(3,'https://uwaterloo.ca/arts/news','Arts',1,2),(4,'https://uwaterloo.ca/engineering/news','Engineering',1,2),(5,'https://uwaterloo.ca/environment/news','Environment',1,2),(6,'https://uwaterloo.ca/math/news','Mathematics',1,2),(7,'https://uwaterloo.ca/science/news','Science',1,2),(8,'https://uwaterloo.ca/grebel/news','Conrad Grebel University College',1,3),(9,'https://uwaterloo.ca/renison/news','Renison University College',1,3),(10,'http://www.sju.ca/news','St. Jerome\'s University',0,3),(11,'https://uwaterloo.ca/stpauls/news','St. Paul\'s University College',1,3),(12,'https://uwaterloo.ca/architecture/news','Cambridge',1,4),(13,'https://uwaterloo.ca/pharmacy/news','Kitchener',1,4),(14,'https://uwaterloo.ca/stratford-school-of-interaction-design-and-business/news','Stratford',1,4),(15,'https://uwaterloo.ca/school-of-accounting-and-finance/news','Accounting and Finance (School of)',1,5),(16,'https://uwaterloo.ca/anthropology/news','Anthropology',1,5),(17,'https://uwaterloo.ca/applied-mathematics/news','Applied Mathematics',1,5),(18,'https://uwaterloo.ca/architecture/news','Architecture (School of)',1,5),(19,'https://www.balsillieschool.ca/news','Balsillie School of International Affairs',0,5),(20,'https://uwaterloo.ca/biology/news','Biology',1,5),(21,'https://uwaterloo.ca/biomedical-engineering/news','Biomedical Engineering',1,5),(22,'https://uwaterloo.ca/chemical-engineering/news','Chemical Engineering',1,5),(23,'https://uwaterloo.ca/chemistry/news','Chemistry',1,5),(24,'https://uwaterloo.ca/civil-environmental-engineering/news','Civil and Environmental Engineering',1,5),(25,'https://uwaterloo.ca/classical-studies/news','Classical Studies',1,5),(26,'https://uwaterloo.ca/combinatorics-and-optimization/news','Combinatorics and Optimization',1,5),(27,'https://uwaterloo.ca/communication-arts/news','Communication Arts',1,5),(28,'https://cs.uwaterloo.ca/news','Computer Science (David R. Cheriton School of)',1,5),(29,'https://uwaterloo.ca/conrad-school-entrepreneurship-business/news','Conrad School of Entrepreneurship and Business',1,5),(30,'https://uwaterloo.ca/culture-and-language-studies/news','Culture & Language Studies',1,5),(31,'https://uwaterloo.ca/earth-environmental-sciences/news','Earth and Environmental Sciences',1,5),(32,'https://uwaterloo.ca/economics/news','Economics',1,5),(33,'https://uwaterloo.ca/electrical-computer-engineering/news','Electrical and Computer Engineering',1,5),(34,'https://uwaterloo.ca/english/news','English Language and Literature',1,5),(35,'https://uwaterloo.ca/english-language-institute/news','English Language Institute (Renison ELI)',1,5),(36,'https://uwaterloo.ca/school-environment-enterprise-development/news','Environment, Enterprise and Development (School of)',1,5),(37,'https://uwaterloo.ca/environment-resources-and-sustainability/news','Environment, Resources and Sustainability (School of )',1,5),(38,'https://uwaterloo.ca/fine-arts/news','Fine Arts',1,5),(39,'https://uwaterloo.ca/french-studies/news','French Studies',1,5),(40,'https://uwaterloo.ca/gender-social-justice/news','Gender and Social Justice (formerly Women\'s Studies)',1,5),(41,'https://uwaterloo.ca/geography-environmental-management/news','Geography and Environmental Management',1,5),(42,'https://uwaterloo.ca/germanic-slavic-studies/news','Germanic and Slavic Studies',1,5),(43,'https://uwaterloo.ca/history/news','History',1,5),(44,'http://www.balsillieschool.ca/news','International Affairs (Balsillie School of)',0,5),(45,'https://uwaterloo.ca/jewish-studies/news','Jewish Studies',1,5),(46,'https://uwaterloo.ca/kinesiology/news','Kinesiology',1,5),(47,'https://uwaterloo.ca/knowledge-integration/news','knowledge integration',1,5),(48,'https://uwaterloo.ca/management-sciences/news','Management Sciences',1,5),(49,'https://uwaterloo.ca/mechanical-mechatronics-engineering/news','Mechanical and Mechatronics Engineering',1,5),(50,'https://uwaterloo.ca/medieval-studies/news','Medieval Studies',1,5),(51,'https://uwaterloo.ca/music/news','Music',1,5),(52,'https://uwaterloo.ca/nanotechnology/news','Nanotechnology Engineering',1,5),(53,'https://uwaterloo.ca/optometry-vision-science/news','Optometry and Vision Science (School of)',1,5),(54,'https://uwaterloo.ca/peace-conflict-studies/news','Peace and Conflict Studies',1,5),(55,'https://uwaterloo.ca/pharmacy/news','Pharmacy (School of)',1,5),(56,'https://uwaterloo.ca/philosophy/news','Philosophy',1,5),(57,'https://uwaterloo.ca/physics-astronomy/news','Physics and Astronomy',1,5),(58,'https://uwaterloo.ca/planning/news','Planning (School of)',1,5),(59,'https://uwaterloo.ca/political-science/news','Political Science',1,5),(60,'https://uwaterloo.ca/psychology/news','Psychology',1,5),(61,'https://uwaterloo.ca/public-health-and-health-systems/news','Public Health and Health Systems (School of)',1,5),(62,'https://uwaterloo.ca/pure-mathematics/news','Pure Mathematics',1,5),(63,'https://uwaterloo.ca/recreation-and-leisure-studies/news','Recreation and Leisure Studies',1,5),(64,'https://uwaterloo.ca/religious-studies/news','Religious Studies',1,5),(65,'https://uwaterloo.ca/science-and-business/news','Science and Business',1,5),(66,'http://uwaterloo.ca/social-development-studies/news','Social Development Studies',1,5),(67,'https://uwaterloo.ca/school-of-social-work/news','Social Work (School of)',0,5),(68,'https://uwaterloo.ca/sociology-and-legal-studies/news','Sociology and Legal Studies',1,5),(69,'https://uwaterloo.ca/software-engineering/news','Software Engineering',1,5),(70,'https://uwaterloo.ca/spanish/news','Spanish and Latin American Studies',1,5),(71,'https://uwaterloo.ca/statistics-and-actuarial-science/news','Statistics and Actuarial Science',1,5),(72,'https://uwaterloo.ca/stratford-school-of-interaction-design-and-business/news','Stratford School of Interaction Design and Business',1,5),(73,'https://uwaterloo.ca/systems-design-engineering/news','Systems Design Engineering',1,5),(74,'https://uwaterloo.ca/theological-studies/news','Theological Studies',1,5),(75,'https://uwaterloo.ca/school-of-accounting-and-finance/news','Centre for Accounting Research & Education (CARE)',1,6),(76,'https://uwaterloo.ca/centre-advanced-materials-joining/news','Centre for Advanced Materials Joining (CAMJ)',1,6),(77,'https://uwaterloo.ca/bioengineering-biotechnology/news','Centre for Bioengineering & Biotechnology (CBB)',1,6),(78,'https://uwaterloo.ca/computational-mathematics/news','Centre for Computational Mathematics in Industry & Commerce (CCMIC)',1,6),(79,'https://uwaterloo.ca/mental-health-research-treatment/news','Centre for Mental Health Research and Treatment (CMHRT)',1,6),(80,'https://uwaterloo.ca/centre-pattern-analysis-machine-intelligence/news','Centre for Pattern Analysis and Machine Intelligence (CPAMI)',1,6),(81,'https://uwaterloo.ca/centre-pavement-transportation-technology/news','Centre for Pavement Engineering and Transportation Technology (CPATT)',1,6),(82,'https://uwaterloo.ca/centre-for-theoretical-neuroscience/news','Centre for Theoretical Neuroscience (CTN)',1,6),(83,'https://uwaterloo.ca/cybersecurity-privacy-institute/news','Cybersecurity and Privacy Institute',1,6),(84,'https://uwaterloo.ca/games-institute/news','Games Institute',1,6),(85,'https://uwaterloo.ca/global-health-policy-innovation-research-centre/news','Global Health Policy and Innovation Research Centre',1,6),(86,'https://uwaterloo.ca/heritage-resources-centre/news','Heritage Resources Centre',1,6),(87,'http://uwaterloo.ca/institute-computer-research/news','Institute for Computer Research (ICR)',1,6),(88,'https://uwaterloo.ca/institute-polymer-research/news','Institute for Polymer Research (IPR)',1,6),(89,'https://uwaterloo.ca/institute-for-quantum-computing/news','Institute for Quantum Computing (IQC)',1,6),(90,'https://uwaterloo.ca/climate-centre/news','Interdisciplinary Centre on Climate Change (IC3)',1,6),(91,'https://uwaterloo.ca/southwestern-ontario-research-data-centre/news','Southwestern Ontario Research Data Centre (SWORDC)',1,6),(92,'https://uwaterloo.ca/survey-research-centre/news','Survey Research Centre (SRC)',1,6),(93,'https://uwaterloo.ca/water-institute/news','Water Institute',1,6),(94,'https://uwaterloo.ca/artificial-intelligence-institute/news','Waterloo Artificial Intelligence Institute',1,6),(95,'https://uwaterloo.ca/astrophysics-centre/news','Waterloo Centre for Astrophysics (WCA)',1,6),(96,'https://uwaterloo.ca/centre-automotive-research/news','Waterloo Centre for Automotive Research (WatCAR)',1,6),(97,'https://uwaterloo.ca/centre-for-german-studies/news','Waterloo Centre for German Studies (WCGS)',1,6),(98,'https://uwaterloo.ca/waterloo-centre-microbial-research/news','Waterloo Centre for Microbial Research (WCMR)',1,6),(99,'https://uwaterloo.ca/centre-advancement-co-operative-education/news','Waterloo Centre for the Advancement of Co-operative Education (WatCACE)',1,6),(100,'http://wici.ca/news','Waterloo Institute for Complexity and Innovation (WICI)',1,6),(101,'https://uwaterloo.ca/waterloo-institute-for-hellenistic-studies/news','Waterloo Institute for Hellenistic Studies (WIHS)',1,6),(102,'https://uwaterloo.ca/institute-nanotechnology/news','Waterloo Institute for Nanotechnology (WIN)',1,6),(103,'https://uwaterloo.ca/waterloo-institute-for-social-innovation-and-resilience/news','Waterloo Institute for Social Innovation and Resilience (WISIR)',1,6),(104,'https://uwaterloo.ca/waterloo-research-institute-in-insurance-securities-and-quantitative-finance/news','Waterloo Research Institute in Insurance, Securities and Quantitative Finance (WatRISQ)',1,6),(105,'https://uwaterloo.ca/academic-integrity/news','Academic Integrity Office',1,7),(106,'https://uwaterloo.ca/academic-leadership-program/news','Academic Leadership Program',1,7),(107,'https://uwaterloo.ca/academic-program-reviews/news','Academic Program Reviews/Quality Assurance',1,7),(108,'https://uwaterloo.ca/disability-services/news','AccessAbility Services',1,7),(109,'https://uwaterloo.ca/advancement/news','Advancement (Office of)',1,7),(110,'https://uwaterloo.ca/associate-provost-human-resources/news','Associate Provost, Human Resources',1,7),(111,'https://uwaterloo.ca/associate-vice-president-academic/news','Associate Vice-President, Academic',1,7),(112,'https://uwaterloo.ca/campus-wellness/news','Campus Wellness',1,7),(113,'https://uwaterloo.ca/catering/news','Catering & Event Services',1,7),(114,'https://uwaterloo.ca/central-stores/news','Central Stores',1,7),(115,'https://uwaterloo.ca/career-action/news','Centre for Career Action',1,7),(116,'https://uwaterloo.ca/centre-community-clinical-applied-research-excellence/news','Centre for Community, Clinical and Applied Research Excellence',1,7),(117,'https://uwaterloo.ca/extended-learning/news','Centre for Extended Learning',1,7),(118,'https://uwaterloo.ca/centre-for-teaching-excellence/news','Centre for Teaching Excellence',1,7),(119,'https://uwaterloo.ca/the-centre/news','Centre, The (Student Service Centre)',1,7),(120,'https://uwaterloo.ca/community-relations/news','Community Relations',1,7),(121,'https://uwaterloo.ca/conference-management/news','Conference Centre',1,7),(122,'https://uwaterloo.ca/conflict-management-human-rights/news','Conflict Management and Human Rights Office',1,7),(123,'https://uwaterloo.ca/co-operative-education/news','Co-operative Education',1,7),(124,'https://uwaterloo.ca/cybersecurity-privacy-institute/news','Cybersecurity and Privacy Institute',1,7),(125,'https://uwaterloo.ca/research-technology-park/news','David Johnston Research + Technology Park',1,7),(126,'https://uwaterloo.ca/deputy-provost/news','Deputy Provost',1,7),(127,'https://uwaterloo.ca/earth-sciences-museum/news','Earth Science Museum',1,7),(128,'https://uwaterloo.ca/employee-assistance-program/news','Employee Assistance Program',1,7),(129,'https://uwaterloo.ca/english-language-institute/news','English Language Institute (Renison ELI)',1,7),(130,'https://uwaterloo.ca/human-rights-equity-inclusion/news','Equity Office',1,7),(131,'https://uwaterloo.ca/faculty-association/news','Faculty Association',1,7),(132,'https://uwaterloo.ca/finance/news','Finance',1,7),(133,'https://uwaterloo.ca/food-services/news','Food Services',1,7),(134,'https://uwaterloo.ca/government-relations/news','Government Relations',1,7),(135,'https://uwaterloo.ca/graduate-student-association/news','Graduate Student Association',1,7),(136,'https://uwaterloo.ca/graduate-studies-postdoctoral-affairs/news','Graduate Studies and Postdoctoral Affairs',1,7),(137,'https://uwaterloo.ca/hire/news','Hire Waterloo',1,7),(138,'https://uwaterloo.ca/housing/news','Housing & Residences',1,7),(139,'https://uwaterloo.ca/human-resources/news','Human Resources',1,7),(140,'https://uwaterloo.ca/human-rights-equity-inclusion/news','Human Rights, Equity and Inclusion',1,7),(141,'https://uwaterloo.ca/privacy/news','Information and Privacy',1,7),(142,'https://uwaterloo.ca/information-systems-technology/news','Information Systems & Technology',1,7),(143,'https://uwaterloo.ca/institutional-analysis-planning/news','Institutional Analysis and Planning',1,7),(144,'https://uwaterloo.ca/international/news','International (Waterloo International)',1,7),(145,'https://uwaterloo.ca/legal-and-immigration-services/news','Legal and Immigration Services',1,7),(146,'https://uwaterloo.ca/library/news','Library',1,7),(147,'https://uwaterloo.ca/marketing-and-strategic-initiatives/news','Marketing and Strategic Initiatives',1,7),(148,'https://uwaterloo.ca/earth-sciences-museum/news','Museum, Earth Sciences',1,7),(149,'https://uwaterloo.ca/museum-vision-science/news','Museum of Vision Science',1,7),(150,'https://uwaterloo.ca/off-campus-housing/news','Off-Campus Housing',1,7),(151,'https://uwaterloo.ca/advancement/news','Office of Advancement',1,7),(152,'https://uwaterloo.ca/research/news','Office of Research',1,7),(153,'https://uwaterloo.ca/president/news','Office of the President',1,7),(154,'https://uwaterloo.ca/organizational-human-development/news','Organizational & Human Development',1,7),(155,'https://uwaterloo.ca/parking/news','Parking',1,7),(156,'https://uwaterloo.ca/disability-services/news','Persons with Disabilities (see AccessAbility Services)',1,7),(157,'https://uwaterloo.ca/plant-operations/news','Plant Operations',1,7),(158,'https://uwaterloo.ca/police/news','Police',1,7),(159,'https://uwaterloo.ca/procurement/news','Procurement & Contract Services',1,7),(160,'https://uwaterloo.ca/provost/news','Provost\'s Office',1,7),(161,'https://uwaterloo.ca/registrar/news','Registrar\'s Office',1,7),(162,'https://uwaterloo.ca/research/news','Research (Office of)',1,7),(163,'https://uwaterloo.ca/safety-office/news','Safety Office',1,7),(164,'https://uwaterloo.ca/secretariat/news','Secretariat',1,7),(165,'https://uwaterloo.ca/institutional-analysis-planning/news','Space Information and Planning (See Institutional Analysis and Planning)',1,7),(166,'https://uwaterloo.ca/deputy-provost-and-space-planning/news','Space Planning ( see Deputy Provost )',1,7),(167,'https://uwaterloo.ca/staff-association/news','Staff Association',1,7),(168,'https://uwaterloo.ca/student-awards-financial-aid/news','Student Awards and Financial Aid',1,7),(169,'https://uwaterloo.ca/student-life-centre/news','Student Life Centre',1,7),(170,'https://uwaterloo.ca/student-success/news','Student Success Office',1,7),(171,'https://uwaterloo.ca/associate-provost-students/news','Students, Office of the Associate Provost',1,7),(172,'https://uwaterloo.ca/summer-accommodations/news','Summer Accommodation',1,7),(173,'https://uwaterloo.ca/support/news','Support Waterloo',1,7),(174,'http://uwaterloo.ca/sustainability/news','Sustainability',1,7),(175,'https://uwaterloo.ca/theatre-centre/news','Theatre Centre',1,7),(176,'https://uwaterloo.ca/university-club/news','University Club',1,7),(177,'https://uwaterloo.ca/university-communications/news','University Communications',1,7),(178,'https://uwaterloo.ca/records-management/news','University Records Management',1,7),(179,'https://uwaterloo.ca/university-relations/news','University Relations',1,7),(180,'https://uwaterloo.ca/international/news','Waterloo International',1,7),(181,'http://wici.ca/news','Waterloo Institute for Complexity and Innovation (WICI)',1,7),(182,'https://uwaterloo.ca/watiam/news','WatIAM',1,7),(183,'https://uwaterloo.ca/professional-development-program/news','WatPD (Waterloo Professional Development)',1,7),(184,'https://uwaterloo.ca/watsafe/news','WatSAFE',1,7),(185,'http://uwaterloo.ca/web-resources/news','Web Resources',1,7),(186,'https://uwaterloo.ca/writing-and-communication-centre/news','Writing and Communication Centre',1,7);
/*!40000 ALTER TABLE `NewsSource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `password_hash` varchar(128) NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,NULL,'bob','pbkdf2:sha256:50000$HpJ4WAi1$4330993e5439cf0352baaca9da6ad0ef42537f88fb7f630fb75bf2343e5157ec',NULL,0),(2,NULL,'alice','pbkdf2:sha256:50000$AQWKtCc7$948619742bce7f35a7d6e1edb9385789f5e428b53d637281dd5319c4dd59c88f',NULL,0);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-19  3:18:55
