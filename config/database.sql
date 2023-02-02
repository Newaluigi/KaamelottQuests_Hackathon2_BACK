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
INSERT INTO `knights` VALUES (1,'Arthur','Pendragon','https://i.ibb.co/h1sFWkB/Arthur.png',95,NULL,'IamTheKing','le roi à la tête du Royaume de Logres, régnant sur toute l\'île de Bretagne et les pays alliés car il détient Excalibur. Les Dieux l\'ont désigné pour construire la Table Ronde autour de laquelle il a rassemblé les chevaliers de la Table Ronde pour mener à bien la quête du Graal. '),(2,'Bohort','de Gaunes','https://i.ibb.co/jy4Ntm8/Bohort.png',55,NULL,'LapinAdo ','Bohort est sans doute un des personnages les plus délicats et raffinés, et ne semble pas fait pour être chevalier, car bien qu\'il ait ce titre, il n\'a jamais suivi le cursus militaire. Il est très peureux et avoue notamment avoir peur des animaux même les plus inoffensifs, comme les pigeons ou les lapins dès lors qu\'ils ont atteint l\'âge adulte, il semble également voir les faisans comme de terribles prédateurs mortels.'),(3,'Karadoc','de Vannes','https://i.ibb.co/d0Z2z7r/Karadoc.png',65,NULL,'Unagi','Karadoc est un passionné de nourriture, qu\'il considère sacrée, dû à son passé houleux où il fut enfermé sans manger pendant une semaine par des romains, alors que son coéquipier se faisait pendre. Il prend onze repas par jour, qui équivaut chacun à 3 repas d\'une personne classique'),(4,'Perceval','le Gallois','https://i.ibb.co/y6c4fsg/Perceval.png',85,NULL,'Cépafo','Perceval est un caractérisé par un caractère enfantin. Il est l\'un des chevaliers les plus fidèles à Arthur et le considère comme un des être les plus chers, de même que pour Karadoc, avec qui il partage une grande amitié. Alors qu\'il est souvent traité d\'imbécile, il est relativement intelligent par moments. Il est aussi extrêmement sensible aux gens qui l\'aiment et qui l\'entourent. Par conséquent, Perceval est aussi fragile et a peur d\'être abandonné.'),(5,'Lancelot','de Ban','https://i.ibb.co/dfZXGs6/Lancelot.png',75,NULL,'chevalierSolitaire','Lancelot est intransigeant avec les autres et surtout avec lui-même. Il était considéré par le Roi comme le seul chevalier \"qui tienne debout\". Il est ministre de la Guerre dans le gouvernement d\'Arthur, et est en outre considéré comme le premier ministre du royaume de Logres, malgré le fait que ce ne soit précisé nulle part dans les textes de lois.'),(6,'Galessin','d\'Orcanie','https://i.ibb.co/8cdvbNS/Galessin.png',50,NULL,'Judasmonhéro','Galessin est un personnage assez antipathique et caractériel. Provocateur, il se définit lui-même comme un \"fouille-merde\". S\'il peut paraître silencieux, méfiant ou blasé aux premiers abords, il se laisse emporter facilement et dégaine sans peine sa répartie acerbe et sarcastique.'),(7,'Yvain','de Camélide','https://i.ibb.co/z7NbFqS/Yvain.png',65,NULL,'chevalierAuLion','Yvain, autoproclamé \"Chevalier au Lion\", est un chevalier de la Table Ronde et le frère de la reine Guenièvre. C\'est le fils de Léodagan de Carmélide et de Séli, donc le prince de Carmélide. Il est très ami avec son complice Gauvain, avec qui il a formé le clan des Petits Pédestres. '),(8,'Gauvain','de Loth','https://i.ibb.co/nsK2WBy/Gauvain.png',65,NULL,'petitPedestre','L\'une des principales caractéristiques de Gauvain semble être son attitude aux allures enfantine et, en définitive, assez proche du comportement archétypal de l\'adolescent moderne aux velléités d\'émancipations.'),(9,'Léodagan','de Carmélide','https://i.ibb.co/Y2wGpNx/Leodagan.png',75,NULL,'catapulte','D\'un naturel colérique et impatient, Léodagan est un homme autoritaire et impulsif qui hausse rapidement le ton peu importe le rang de son interlocuteur. Il n\'a en effet aucun problème à se disputer avec le Roi Arthur sur des sujets divers, notamment le budget consacré à la défense et à la justice sur le territoire.'),(10,'Calogrenant','de Calédonie','https://images-ext-2.discordapp.net/external/Bpen62ggCtEgmYXH5O3IkMvI1Aex8NuEQHm0e9kIu_8/https/i.ibb.co/m0YVKFm/Calogrenant.png?https://i.ibb.co/m0YVKFm/Calogrenant.png',75,NULL,'KiltForEver','Calogrenant est un homme loyal et fidèle à Arthur. D’une personnalité plutôt discrète et pragmatique, il ne s’emporte que rarement malgré l’opinion peu flatteuse de ses collègues qui le traitent de « roi des cons », et apporte un peu de mesure aux réunions parfois houleuses de la Table Ronde. ');
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
  `KNIGHTS REQUIRED` int DEFAULT NULL,
  `POWER REQUIRED` int DEFAULT NULL,
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
INSERT INTO `quests` VALUES (1,'Sos Guenièvre','Bandits métamorphes',NULL,'Calédonie',1,30,42,'Sauver la reine qui a été enlevée par un groupe de bandits et la ramener saine et sauve au château.'),(2,'Contre-attaque en Carmélide','Pirates squelettes',NULL,'Carmélide',3,40,42,'La Carmélide est attaquée ! Les vaisseaux d\'un mystérieux peuple ennemi, venus des mers du Nord, fendent les côtes.'),(3,'Retrouver le trésor de Vortigern',NULL,'Coffres d\'or','Cornouailles',1,20,50,'Retrouver le trésor perdu de la famille royale et le ramener au château.'),(4,'La Bretagne aux bretons',NULL,NULL,'Orcanie',2,10,30,'Conformément à la politique de défense des côtes, aider les habitants d\'un village à construire une nouvelle tour de guet pour se protéger des attaques ennemies.'),(5,'Trouver la poulette maudite','Poulette',NULL,'Logres',1,10,20,'Le banquet royal se prépare faites d\'une pirerre deux coups : libérer le pays de ces cris stridents et garnisser le festin d\'un met de choix'),(6,'Le Serpent géant du lac de l\'Ombre','Serpent géant',NULL,'Pays de Galles',1,50,70,'Des habitants du pays de Galles se plaignent des attaques d\'un serpent géant'),(7,'Défier Élias de Kelliwic\'h','Mage noir',NULL,'Gaunes',2,30,60,'Déjouer les plans d\'un sorcier maléfique qui cherche à conquérir le royaume.'),(8,'L\'Armée du nécromant','Morts-vivants',NULL,'Aquitaine',5,50,80,'Depuis quelques jours, des morts-vivants isolés s’approchent du château, ça commence à fouetter... Enquêtez et neutralisez la meunace.'),(9,'Retrouver l\'épée légendaire cachée dans la forêt hantée et la ramener au roi.','Spectres','Sabre laser','Irlande',1,20,42,'Une étrange épée lumineuse qui fait fiou fiou quand on la brandit serait cachée au delà d\'un portail'),(10,'La désolation de Small','Dragon','Pierre magique','Armorique',4,70,90,'Retrouver et ramener la pierre magique qui a été volée du royaume par un dragon.'),(11,'L\'hydre à 42 têtes','Hydre',NULL,'Vannes',3,50,90,'Défendre le village attaqué par une créature maléfique.'),(12,'A la recherche de la cOUillère perdue',NULL,'Une cuillère magique','Territoires des pictes',1,5,2,'Il faut bien que vous vous serviez au moins à quelquechose ...'),(13,'Quête du graal',NULL,NULL,'???',6,80,10000,'Votre mission sacrée, il est temps d\'y faire face');
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

-- Dump completed on 2023-02-02 22:45:48
