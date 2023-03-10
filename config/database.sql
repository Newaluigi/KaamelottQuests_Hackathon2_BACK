CREATE DATABASE  IF NOT EXISTS `kaamelott_db` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `kaamelott_db`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: kaamelott_db
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `kingdoms`
--

DROP TABLE IF EXISTS `kingdoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kingdoms` (
  `ID` int NOT NULL,
  `NAME` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kingdoms`
--

LOCK TABLES `kingdoms` WRITE;
/*!40000 ALTER TABLE `kingdoms` DISABLE KEYS */;
INSERT INTO `kingdoms` VALUES (1,'Caledonie'),(2,'Carmelide'),(3,'Cornouailles'),(4,'Orcanie'),(5,'Logres'),(6,'Pays de Galles'),(7,'Gaunes'),(8,'Aquitaine'),(9,'Irlande'),(10,'Armorique'),(11,'Vannes'),(12,'Territoires des pictes');
/*!40000 ALTER TABLE `kingdoms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knights`
--

DROP TABLE IF EXISTS `knights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knights` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `origine` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `power` int DEFAULT NULL,
  `quest` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knights`
--

LOCK TABLES `knights` WRITE;
/*!40000 ALTER TABLE `knights` DISABLE KEYS */;
INSERT INTO `knights` VALUES (1,'Arthur','Pendragon','https://i.ibb.co/h1sFWkB/Arthur.png',95,NULL,'IamTheKing','le roi ?? la t??te du Royaume de Logres, r??gnant sur toute l\'??le de Bretagne et les pays alli??s car il d??tient Excalibur. Les Dieux l\'ont d??sign?? pour construire la Table Ronde autour de laquelle il a rassembl?? les chevaliers de la Table Ronde pour mener ?? bien la qu??te du Graal. '),(2,'Bohort','de Gaunes','https://i.ibb.co/jy4Ntm8/Bohort.png',55,NULL,'LapinAdo ','Bohort est sans doute un des personnages les plus d??licats et raffin??s, et ne semble pas fait pour ??tre chevalier, car bien qu\'il ait ce titre, il n\'a jamais suivi le cursus militaire. Il est tr??s peureux et avoue notamment avoir peur des animaux m??me les plus inoffensifs, comme les pigeons ou les lapins d??s lors qu\'ils ont atteint l\'??ge adulte, il semble ??galement voir les faisans comme de terribles pr??dateurs mortels.'),(3,'Karadoc','de Vannes','https://i.ibb.co/d0Z2z7r/Karadoc.png',65,NULL,'Unagi','Karadoc est un passionn?? de nourriture, qu\'il consid??re sacr??e, d?? ?? son pass?? houleux o?? il fut enferm?? sans manger pendant une semaine par des romains, alors que son co??quipier se faisait pendre. Il prend onze repas par jour, qui ??quivaut chacun ?? 3 repas d\'une personne classique'),(4,'Perceval','le Gallois','https://i.ibb.co/y6c4fsg/Perceval.png',85,NULL,'C??pafo','Perceval est un caract??ris?? par un caract??re enfantin. Il est l\'un des chevaliers les plus fid??les ?? Arthur et le consid??re comme un des ??tre les plus chers, de m??me que pour Karadoc, avec qui il partage une grande amiti??. Alors qu\'il est souvent trait?? d\'imb??cile, il est relativement intelligent par moments. Il est aussi extr??mement sensible aux gens qui l\'aiment et qui l\'entourent. Par cons??quent, Perceval est aussi fragile et a peur d\'??tre abandonn??.'),(5,'Lancelot','de Ban','https://i.ibb.co/dfZXGs6/Lancelot.png',75,NULL,'chevalierSolitaire','Lancelot est intransigeant avec les autres et surtout avec lui-m??me. Il ??tait consid??r?? par le Roi comme le seul chevalier \"qui tienne debout\". Il est ministre de la Guerre dans le gouvernement d\'Arthur, et est en outre consid??r?? comme le premier ministre du royaume de Logres, malgr?? le fait que ce ne soit pr??cis?? nulle part dans les textes de lois.'),(6,'Galessin','d\'Orcanie','https://i.ibb.co/8cdvbNS/Galessin.png',50,NULL,'Judasmonh??ro','Galessin est un personnage assez antipathique et caract??riel. Provocateur, il se d??finit lui-m??me comme un \"fouille-merde\". S\'il peut para??tre silencieux, m??fiant ou blas?? aux premiers abords, il se laisse emporter facilement et d??gaine sans peine sa r??partie acerbe et sarcastique.'),(7,'Yvain','de Cam??lide','https://i.ibb.co/z7NbFqS/Yvain.png',65,NULL,'chevalierAuLion','Yvain, autoproclam?? \"Chevalier au Lion\", est un chevalier de la Table Ronde et le fr??re de la reine Gueni??vre. C\'est le fils de L??odagan de Carm??lide et de S??li, donc le prince de Carm??lide. Il est tr??s ami avec son complice Gauvain, avec qui il a form?? le clan des Petits P??destres. '),(8,'Gauvain','de Loth','https://i.ibb.co/nsK2WBy/Gauvain.png',65,NULL,'petitPedestre','L\'une des principales caract??ristiques de Gauvain semble ??tre son attitude aux allures enfantine et, en d??finitive, assez proche du comportement arch??typal de l\'adolescent moderne aux vell??it??s d\'??mancipations.'),(9,'L??odagan','de Carm??lide','https://i.ibb.co/Y2wGpNx/Leodagan.png',75,NULL,'catapulte','D\'un naturel col??rique et impatient, L??odagan est un homme autoritaire et impulsif qui hausse rapidement le ton peu importe le rang de son interlocuteur. Il n\'a en effet aucun probl??me ?? se disputer avec le Roi Arthur sur des sujets divers, notamment le budget consacr?? ?? la d??fense et ?? la justice sur le territoire.'),(10,'Calogrenant','de Cal??donie','https://images-ext-2.discordapp.net/external/Bpen62ggCtEgmYXH5O3IkMvI1Aex8NuEQHm0e9kIu_8/https/i.ibb.co/m0YVKFm/Calogrenant.png?https://i.ibb.co/m0YVKFm/Calogrenant.png',75,NULL,'KiltForEver','Calogrenant est un homme loyal et fid??le ?? Arthur. D???une personnalit?? plut??t discr??te et pragmatique, il ne s???emporte que rarement malgr?? l???opinion peu flatteuse de ses coll??gues qui le traitent de ?? roi des cons ??, et apporte un peu de mesure aux r??unions parfois houleuses de la Table Ronde. ');
/*!40000 ALTER TABLE `knights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quests`
--

DROP TABLE IF EXISTS `quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quests` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(200) NOT NULL,
  `BESTIARY` varchar(200) DEFAULT NULL,
  `ARTIFACT` varchar(200) DEFAULT NULL,
  `LOCATION` varchar(200) DEFAULT NULL,
  `KNIGHTS_REQUIRED` int DEFAULT NULL,
  `POWER_REQUIRED` int DEFAULT NULL,
  `REWARD` int DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quests`
--

LOCK TABLES `quests` WRITE;
/*!40000 ALTER TABLE `quests` DISABLE KEYS */;
INSERT INTO `quests` VALUES (1,'Sos Gueni??vre','Bandits m??tamorphes',NULL,'Cal??donie',1,30,42,'Sauver la reine qui a ??t?? enlev??e par un groupe de bandits et la ramener saine et sauve au ch??teau.'),(2,'Contre-attaque en Carm??lide','Pirates squelettes',NULL,'Carm??lide',3,40,42,'La Carm??lide est attaqu??e ! Les vaisseaux d\'un myst??rieux peuple ennemi, venus des mers du Nord, fendent les c??tes.'),(3,'Retrouver le tr??sor de Vortigern',NULL,'Coffres d\'or','Cornouailles',1,20,50,'Retrouver le tr??sor perdu de la famille royale et le ramener au ch??teau.'),(4,'La Bretagne aux bretons',NULL,NULL,'Orcanie',2,10,30,'Conform??ment ?? la politique de d??fense des c??tes, aider les habitants d\'un village ?? construire une nouvelle tour de guet pour se prot??ger des attaques ennemies.'),(5,'Trouver la poulette maudite','Poulette',NULL,'Logres',1,10,20,'Le banquet royal se pr??pare faites d\'une pirerre deux coups : lib??rer le pays de ces cris stridents et garnisser le festin d\'un met de choix'),(6,'Le Serpent g??ant du lac de l\'Ombre','Serpent g??ant',NULL,'Pays de Galles',1,50,70,'Des habitants du pays de Galles se plaignent des attaques d\'un serpent g??ant'),(7,'D??fier ??lias de Kelliwic\'h','Mage noir',NULL,'Gaunes',2,30,60,'D??jouer les plans d\'un sorcier mal??fique qui cherche ?? conqu??rir le royaume.'),(8,'L\'Arm??e du n??cromant','Morts-vivants',NULL,'Aquitaine',5,50,80,'Depuis quelques jours, des morts-vivants isol??s s???approchent du ch??teau, ??a commence ?? fouetter... Enqu??tez et neutralisez la meunace.'),(9,'Retrouver l\'??p??e l??gendaire cach??e dans la for??t hant??e et la ramener au roi.','Spectres','Sabre laser','Irlande',1,20,42,'Une ??trange ??p??e lumineuse qui fait fiou fiou quand on la brandit serait cach??e au del?? d\'un portail'),(10,'La d??solation de Small','Dragon','Pierre magique','Armorique',4,70,90,'Retrouver et ramener la pierre magique qui a ??t?? vol??e du royaume par un dragon.'),(11,'L\'hydre ?? 42 t??tes','Hydre',NULL,'Vannes',3,50,90,'D??fendre le village attaqu?? par une cr??ature mal??fique.'),(12,'A la recherche de la cOUill??re perdue',NULL,'Une cuill??re magique','Territoires des pictes',1,5,2,'Il faut bien que vous vous serviez au moins ?? quelquechose ...'),(13,'Qu??te du graal',NULL,NULL,'???',6,80,10000,'Votre mission sacr??e, il est temps d\'y faire face');
/*!40000 ALTER TABLE `quests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03  0:04:49
