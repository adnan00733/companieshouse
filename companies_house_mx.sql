/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: job_mx
-- ------------------------------------------------------
-- Server version	10.6.22-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `state_id` bigint(20) unsigned DEFAULT NULL,
  `slug` varchar(512) NOT NULL,
  `name` varchar(512) NOT NULL,
  `brand_name` varchar(512) DEFAULT NULL,
  `address` varchar(512) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,14,'2box-sa-de-cv','2BOX SA DE CV','2BOX','BOULEVARD A ZACATECAS 605, LAS HADAS, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2025-03-12 23:22:29'),(2,14,'alpez-nbg-sa-de-cv','ALPEZ NBG SA DE CV','2BOX','QUINTA 602, LAS AMERICAS, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:28'),(3,14,'negociacion-comercial-anda-montero-sa-de-cv','NEGOCIACION COMERCIAL ANDA MONTERO SA DE CV','ABARROTES CASA BLANCA','CEREALES 9, CENTRO COMERCIAL AGROPECUARIO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:28'),(4,14,'negociacion-comercial-anda-montero-sa-de-cv-y1kbs','NEGOCIACION COMERCIAL ANDA MONTERO SA DE CV','ABARROTES CASA BLANCA','CEREALES 22, CENTRO COMERCIAL AGROPECUARIO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:29'),(5,14,'negociacion-comercial-anda-montero-sa-de-cv-4tpsk','NEGOCIACION COMERCIAL ANDA MONTERO SA DE CV','ABARROTES CASA BLANCA','MELQUÍADES MORENO 1914, EL PLATEADO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:29'),(6,14,'abarrotes-cba-sa-de-cv','ABARROTES CBA SA DE CV','ABARROTES CBA','ANDEN BLOCK B 11, CENTRAL DE ABASTOS, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:29'),(7,14,'distribuciones-monterra-sa-de-cv','DISTRIBUCIONES MONTERRA SA DE CV','ABARROTES CBA','PASEOS DE MARAVILLAS 300, CENTRO COMERCIAL DE ABASTOS VIÑEDOS SAN MARCOS, Jesús María, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(8,14,'abarrotes-eli-sa','ABARROTES ELI SA','ABARROTES ELI Y PAPELERIA','MORELLA 504, VILLA CAMPESTRE, Jesús María, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(9,14,'subfresco-sa-de-cv','SUBFRESCO SA DE CV','ABARROTES FRESH','BOULEVARD A ZACATECAS 845, PUNTO CUARENTA Y CINCO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:30'),(10,14,'blanca-estela-serna-sanchez-sa-de-cv','BLANCA ESTELA SERNA SANCHEZ SA DE CV','ABARROTES LA CABAÑA','NINGUNO 4517, PILAR BLANCO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(11,14,'juan-antonio-quiroz-espino-sa-de-cv','JUAN ANTONIO QUIROZ ESPINO SA DE CV','ABARROTES SAN JUAN','DOLORES HIDALGO 716, SANTA ELENA, Rincón de Romos, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(12,14,'ramon-gonzalez-munoz-sa-de-cv','RAMON GONZALEZ MUÑOZ SA DE CV','ABARROTES SAN JUDAS TADEO','LA TROJE 0, RINCONADA JESUS MARIA, Jesús María, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:31'),(13,14,'almacenes-jojeji-sa-de-cv','ALMACENES JOJEJI SA DE CV','ALMACENES JOJEJI','NIETO 0, CENTRO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:31'),(14,14,'almacenes-jojeji-sa-de-cv-prtdq','ALMACENES JOJEJI SA DE CV','ALMACENES JOJEJI','NIETO 441, CENTRO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:31'),(15,14,'cadena-comercialoxxo-sa-de-cv','CADENA COMERCIALOXXO SA DE CV','BARA RODOLFO LANDEROS','SIGLO XXI 713, RODOLFO LANDEROS G, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(16,14,'bridacero-sa-de-cv','BRIDACERO SA DE CV','BRIDACERO','EMILIANO ZAPATA 216, SAN ANTONIO DE LOS HORCONES, Jesús María, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(17,14,'antonio-alexander-diaz-de-leon-medina','ANTONIO ALEXANDER DIAZ DE LEON MEDINA ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','GUADALUPANO 302, CUMBRES II, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:32'),(18,14,'sergio-ibarra-rangel','SERGIO IBARRA RANGEL ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','TIANGUIS 0, CENTRO COMERCIAL AGROPECUARIO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:32'),(19,14,'sergio-sarabia-olays','SERGIO SARABIA OLAYS ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','EL TILDIO 118, LUIS ORTEGA DOUGLAS, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:32'),(20,14,'karla-fabiola-nunez-garcia','KARLA FABIOLA NUÑEZ GARCIA ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','CARLOS A MADRAZO 102, LUIS ORTEGA DOUGLAS, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:32'),(21,14,'nestor-gonzalez-maldonado','NESTOR GONZALEZ MALDONADO ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','GENERAL FRANCISCO VILLA 202, ZONA CENTRO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:32'),(22,14,'grupo-dulcero-aboytes-sa-de-cv','GRUPO DULCERO ABOYTES SA DE CV','DULCERIA ABOYTES','PONCIANO ARRIAGA 2, ZONA CENTRO, Pabellón de Arteaga, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:32'),(23,14,'abarrotes-vazquez-sin-registro','ABARROTES VAZQUEZ SIN REGISTRO','GABRIELA LIZARAN RUIZ','ADOLFO DE LA HUERTA 642, EL CEDAZO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(24,14,'grupo-pandosamex-sa-de-cv','GRUPO PANDOSAMEX SA DE CV','MINI SUPER SUMOL','MANUEL TOLSA 201, FUNDADORES, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(25,14,'farmacias-lindavista-sa-de-cv','FARMACIAS LINDAVISTA SA DE CV','MINISUPER PLUS','PEDRO PARGA 309, ZONA CENTRO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:33'),(26,14,'productos-de-consumo-z-sa-de-cv','PRODUCTOS DE CONSUMO Z SA DE CV','PRODUCTOS DE CONSUMO Z','ADORATRICES 660, LA HIGUERILLA, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:33'),(27,14,'super-bara-sa-de-cv','SUPER BARA  SA DE CV','SUPER BARA','JOSE MARIA ESCRIVA DEL VALAGUER 108, VILLA SUR, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:34'),(28,14,'super-troncos-sa-de-cv','SUPER TRONCOS SA DE CV','SUPER TRONCOS','DOCTOR CARLOS M LOPEZ 403, GREMIAL, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:34'),(29,14,'el-pabellon-de-las-ofertas-sa-de-cv','EL PABELLON DE LAS OFERTAS SA DE CV','TIENDA DE ABARROTES EL PABELLON DE LAS OFERTAS','16 DE SEPTIEMBRE 125, CENTRO, Pabellón de Arteaga, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(30,14,'tienda-de-abarrotes-el-puente-sa-de-cv','TIENDA DE ABARROTES EL PUENTE SA DE CV','TIENDA DE ABARROTES EL PUENTE','LICENCIADO ADOLFO LOPEZ MATEOS PONIENTE 202, CENTRO, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(31,14,'abarrotera-roborujados-s-de-rl-de-cv','ABARROTERA ROBORUJADOS S DE RL DE CV','TIENDA DE ABARROTES REBORUJADO','26 DE MARZO 533, GOMEZ, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(32,14,'engracia-zacarias-guillen-otro-regimen-de-capital','ENGRACIA ZACARIAS GUILLEN OTRO REGIMEN DE CAPITAL','TIENDA DE ABARROTES SIN NOMBRE','TECNOLOGICO 0, SALTO DE OJOCALIENTE, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(33,14,'patronato-para-el-desarrollo-turistico-de-san-jose-de-gracia-sc','PATRONATO PARA EL DESARROLLO TURISTICO DE SAN JOSE DE GRACIA SC','TIENDA DE ABARROTES TIENDITA FELIZ','NINGUNO 0, SAN JOSE DE GRACIA, San José de Gracia, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(34,14,'diconsa','DICONSA ','TIENDA DICONSA','BRONCOS 307, COYOTES, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-27 04:27:35'),(35,14,'comunidad-de-comuneros-san-jose-de-gracia-ac','COMUNIDAD DE COMUNEROS SAN JOSE DE GRACIA AC','TIENDITA DE LA ESQUINA','JUAN DOMINGUEZ 0, SAN JOSE DE GRACIA, San José de Gracia, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(36,14,'waldos-dolarmart-sa-de-cv','WALDOS DOLARMART SA DE CV','WALDOS','AGUASCALIENTES ORIENTE, EX HACIENDA OJOCALIENTE, Aguascalientes, Aguascalientes','2024-12-20 17:13:02','2024-12-20 17:13:02'),(37,15,'abarrotera-rubi-s-de-rl-de-cv','ABARROTERA RUBI S DE RL DE CV','ABARROTERA RUBI','NINGUNO 151, 21100, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(38,15,'angelica-marsa-garcia-victorio-sa-de-cv','ANGELICA MARSA GARCIA VICTORIO SA DE CV','ABARROTES AMADOR','VENUSTIANO CARRANZA 10000, VENUSTIANO CARRANZA, Playas de Rosarito, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(39,15,'cadena-comercial-fijo-express-de-sa-de-cv','CADENA COMERCIAL FIJO EXPRESS DE SA DE CV','ABARROTES BETOS','CERRO DE LA JOLLA 2210, LAS CUMBRES, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(40,15,'carolina-palma-vazquez-sa-de-cv','CAROLINA PALMA VAZQUEZ SA DE CV','ABARROTES CAROLINA','PRIVADA DE LAS GOLONDRINAS 0, RANCHO EL REFUGIO, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(41,15,'ramona-valenzuela-cervantes-otro-tipo-de-sociedad','RAMONA VALENZUELA CERVANTES OTRO TIPO DE SOCIEDAD','ABARROTES CESAR','AVENIDA DEL IRIS 3745, VILLA FLORIDA, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(42,15,'juan-carlos-vasquez-santos-sc-de-rl','JUAN CARLOS VASQUEZ SANTOS SC DE RL','ABARROTES DANIEL','NOVENA 0, FRANCISCO VILLA, San Quintín, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(43,15,'mayoristas-cerveceros-s-de-rl-de-cv','MAYORISTAS CERVECEROS S DE RL DE CV','ABARROTES EL AGUANAVAL','DECIMA CUARTA Y O ALFONSO ZARAGOZA 650, LIBERTAD, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:37'),(44,15,'cadena-comercial-fijo-express-sa-de-cv','CADENA COMERCIAL FIJO EXPRESS SA DE CV','ABARROTES JANET','MONTE COTOPAXI 4902, LAS CUMBRES, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:37'),(45,15,'juan-carlos-vasquez-santos-sc-de-rl-de-cv','JUAN CARLOS VASQUEZ SANTOS SC DE RL DE CV','ABARROTES JOSELYN','AVENIDA E 0, FRANCISCO VILLA, San Quintín, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(46,15,'francisco-cervantes-fabela-s-de-rl-de-cv','FRANCISCO CERVANTES FABELA S DE RL DE CV','ABARROTES LA 10','DECIMA J SARABIA 2045, ZONA CENTRO, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(47,15,'campo-turistico-7-minas-s-de-rl-de-cv','CAMPO TURISTICO 7 MINAS S DE RL DE CV','ABARROTES LA MINITA','LOCALIDAD 800, NUMERO 7, Ensenada, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:37'),(48,15,'coorcisne-sa-de-cv','COORCISNE SA DE CV','ABARROTES LA RINCONADA','LAS JARAS, RINCONADA ESCUDERO, Tecate, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:38'),(49,15,'crispina-cruz-mendoza','CRISPINA CRUZ MENDOZA ','ABARROTES LETY','7 7720, EL PIPILA, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:38'),(50,15,'lourdes-saucedo-sa-de-cv','LOURDES SAUCEDO SA DE CV','ABARROTES LOS LAGOS','AVENIDA DE LOS GRANDES LAGOS DEL NORTE 19641, EL LAGO, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(51,15,'ramon-perez-galindo-otro-regimen-de-capital','RAMON PEREZ GALINDO OTRO REGIMEN DE CAPITAL','ABARROTES MARGARITA','RIO TONALA 1080, BUGAMBILIAS, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(52,15,'francisco-guzman-alcantar-sa-de-cv','FRANCISCO GUZMAN ALCANTAR SA DE CV','ABARROTES MODELORAMA','BOULEVARD DE LAS BELLAS ARTES 19842, NUEVA TIJUANA, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(53,15,'rene-solano-pulido-sa-de-cv','RENE SOLANO PULIDO SA DE CV','ABARROTES RENATA','MEXICO LINDO 0, MEXICO LINDO, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(54,15,'villaserv-s-de-rl-de-cv','VILLASERV S DE RL DE CV','ABARROTES REYNA','MARQUEZ COLEGIO MILITAR 93, TOMAS AQUINO, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(55,15,'abarrotes-sanchez-persona-fisica-con-actidad-economica-dentro-de-la-vivienda','ABARROTES SANCHEZ PERSONA FISICA CON ACTIDAD ECONOMICA DENTRO DE LA VIVIENDA','ABARROTES SANCHEZ','MIGUEL HIDALGO Y COSTILLA 21917, RINCONADA, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(56,15,'abarrotes-sin-nombre','ABARROTES SIN NOMBRE ','ABARROTES SIN NOMBRE','ESPAÑA 23135, VILLA FONTANA, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:39'),(57,15,'orlando-torres-martinez-sa-de-cv','ORLANDO TORRES MARTINEZ SA DE CV','ABARROTES TORRES','NEBLINA DEL MAR 0, ROBERTO YAHUACA, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(58,15,'la-esquinita','LA ESQUINITA ','ABARROTES TRES HERMANOS','ALCOY 1998, QUINTA DEL REY, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:39'),(59,15,'jose-juan-garcia-vega-sa-de-cv','JOSE JUAN GARCIA VEGA SA DE CV','ABARROTES VEGA','NINGUNO 0, PLAYAS LA MISION, Playas de Rosarito, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(60,15,'supermecados-mejia-s-de-rl-de-cv','SUPERMECADOS MEJIA  S DE RL DE CV','ALMACEN DE MERCADO LIZ','PRINCIPAL 239, 22750, Ensenada, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:40'),(61,15,'acp-parts-s-de-rl-de-cv','ACP PARTS S DE RL DE CV','AXP PARTS','TRANSPENINSULAR REFORMA 0, CHAPULTEPEC, Ensenada, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(62,15,'sani-group-sc-de-rl-de-cv','SANI GROUP SC DE RL DE CV','BAJA MEDICHAL IMAGIN PLATINUM','ÁLAMO 286, VICENTE GUERRERO (ALGODONES), Mexicali, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:40'),(63,15,'abraham-sabori-sotelo-sa-de-cv','ABRAHAM SABORI SOTELO SA DE CV','BCN SIX AUTOSERVICIO EL PROFE II','FRANCISCO I MADERO 0, VENUSTIANO CARRANZA, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(64,15,'controladora-de-negocios-comerciales-sa-de-cv','CONTROLADORA DE NEGOCIOS COMERCIALES SA DE CV','BCN SIX SIX LA PURISIMA','ISLA CATALINA 20685, BUENOS AIRES SUR, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:41'),(65,15,'sohega-sa-de-cv','SOHEGA SA DE CV','BODEGA','MARIANO MATAMOROS 2755, 22440, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:41'),(66,15,'bc-marqueting-sa-de-cv','BC MARQUETING SA DE CV','BODEGA BC MARQUETING','UNION CALZADA HECTOR TERAN TERAN 1967, EL PAPAGO INFONAVIT, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(67,15,'corporativo-pasfin-sa-de-cv','CORPORATIVO PASFIN SA DE CV','BODEGA DE BESTFOOD','FUERZA AEREA MEXICANA 3, AEROPUERTO, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(68,15,'alicia-silva-osuna-sc-de-rl-de-cv','ALICIA SILVA OSUNA SC DE RL DE CV','BODEGA DE FERSON COMERCIALIZADORA','AGUSTIN DE ITURBIDE 715, MORELOS, Tecate, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(69,15,'mercado-avina-sc-de-rl-de-cv','MERCADO AVIÑA SC DE RL DE CV','BODEGA DE MERCADO AVIÑA','GUSTAVO VALLEJO 0, LAZARO CARDENAS, San Quintín, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:42'),(70,15,'creaciones-dekora-sa-de-cv','CREACIONES DEKORA SA DE CV','BODEGA DEKORA','GUSTAVO DIAZ ORDAZ 1830, LA ESCONDIDA, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:42'),(71,15,'mas-bodega-y-logistica-sa-de-cv','MAS BODEGA Y LOGISTICA SA DE CV','BODEGA MAS','WAHOO 24966, FLORIDO TERCERA SECCION, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:42'),(72,15,'ming-zhu-sa-de-cv','MING ZHU SA DE CV','BODEGA MING ZHU','RIO COLORADO 9633, CUAUHTEMOC, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(73,15,'seaside-providen-sa-de-cv','SEASIDE PROVIDEN   SA DE CV','BODEGA SEASIDE','LAZARO CARDENAS 1094, SECCIÓN PRIMERA, Ensenada, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:42'),(74,15,'cachanilla-banco-de-alimentos-sc','CACHANILLA BANCO DE ALIMENTOS SC','CACHANILLA BANCO DE ALIMENTOS','LAZARO CARDENAS 99, LOS MILAGROS, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(75,15,'cadena-comercial-fijo-express-sa-de-cv-jca21','CADENA COMERCIAL FIJO EXPRESS SA DE CV','CADENA COMERCIAL FIJO EXPRESS SA DE CV GRANJAS','CUARTA 0, GRANJAS FAMILIARES, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(76,15,'carniceria-la-fama-sa-de-cv','CARNICERIA LA FAMA SA DE CV','CARNICERIA LA FAMA','ENCINOS 0, EL PEDREGAL, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(77,15,'carnes-y-abarrotes-cigase-s-de-rl-de-cv','CARNES Y ABARROTES CIGASE  S DE RL DE CV','CARNICERIA Y ABARROTES OCHOA','MAGISTERIO 0, CARBAJAL, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:43'),(78,15,'administradora-del-colorado-s-de-rl-de-cv','ADMINISTRADORA DEL COLORADO S DE RL DE CV','CIRCULO K','PASEO JOSÉ MARÍA MORELOS Y PAVÓN, ALDRETE, Tecate, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:43'),(79,15,'codiarmex-sa-de-cv','CODIARMEX SA DE CV','CODIARMEX','AGUA DULCE 7050, LOMA BONITA, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(80,15,'comerbus-de-la-baja-california-sa-de-cv','COMERBUS DE LA BAJA CALIFORNIA SA DE CV','COMERBUS DE LA BAJA CALIFORNIA','RIVEROLL 1075, 22820, Ensenada, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(81,15,'comercial-nicos-sa-de-cv','COMERCIAL NICOS SA DE CV','COMERCIAL NICOS','NINGUNO 96, LAS LILAS, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02'),(82,15,'osiel-valente-maldonado','OSIEL VALENTE MALDONADO ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','AKATUN CHEN 0, TERRZAS DE SAN BERNARDO, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:44'),(83,15,'guadalupe-florez-lazcano','GUADALUPE FLOREZ LAZCANO ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','NINGUNO 0, VALLE DE LAS PALMAS, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:44'),(84,15,'elvira-barrios-gomez','ELVIRA BARRIOS GOMEZ ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','LA MISION 0, NUEVA COLONIA HINDÚ, Tecate, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:44'),(85,15,'esmeralda-cardenas-perez','ESMERALDA CARDENAS PEREZ ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','PASEO DE LAS LOMAS 352, TERRAZAS DEL VALLE, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:45'),(86,15,'lizbeth-cardona-martinez','LIZBETH CARDONA MARTINEZ ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','ANIMO 0, NUEVO HOGAR, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:45'),(87,15,'luis-cosio-vazquez','LUIS COSIO VAZQUEZ ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','MIHUATLAN 0, 22790, Ensenada, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:45'),(88,15,'margarita-alba-gonez','MARGARITA ALBA GONEZ ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','JABONERA 43, JABONERA, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:45'),(89,15,'jose-saenz-diaz','JOSE SAENZ DIAZ ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','VINARIOS 12, SANTA FE II, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:45'),(90,15,'maria-teresa-sanches-meza','MARIA TERESA SANCHES MEZA ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','PALMA PAJA 0, VALLE DE LAS PALMAS, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:45'),(91,15,'olga-estrada-martinez','OLGA ESTRADA MARTINEZ ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','FRANCISCO JAVIER CASTILLO NEGRETE 943, LOS NARANJOS, Mexicali, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:46'),(92,15,'dolores-cruz-nolazco','DOLORES CRUZ NOLAZCO ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','ESPERANZA GARCIA 33, ALTIPLANO, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:46'),(93,15,'rodrigo-lopez-hernandez','RODRIGO LOPEZ HERNANDEZ ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','PALMA SALMON 0, VALLE DE LAS PALMAS, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:46'),(94,15,'ampelia-morales-rosas','AMPELIA MORALES ROSAS ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','PUERTO NUEVO 0, VALLE DE LAS PALMAS, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:46'),(95,15,'andres-serrano-ayala','ANDRES SERRANO AYALA ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','ANCONA 1205, SANTA FE III, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:46'),(96,15,'laura-ayala-martinez','LAURA AYALA MARTINEZ ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','ULTRAMARINO 0, VALLE DE LAS PALMAS, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:47'),(97,15,'mercado-cuesta-blanca','MERCADO CUESTA BLANCA ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','GUANAJUATO 686, MADERO, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:47'),(98,15,'lidia-montes-jimenez','LIDIA MONTES JIMENEZ ','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS','PUERTO NUEVO 0, VALLE DE LAS PALMAS, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:47'),(99,15,'comercio-al-por-menor-en-tiendas-de-abarrotes-ultramarinos-y-miscelaneas-sin-nombre-venta-de-duces','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS SIN NOMBRE VENTA DE DUCES','COMERCIO AL POR MENOR EN TIENDAS DE ABARROTES, ULTRAMARINOS Y MISCELÁNEAS SIN NOMBRE','DEDICACION 22204, VALLE VERDE, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-27 04:27:47'),(100,15,'comersuper-sa-de-cv','COMERSUPER SA DE CV','COMESUPER','OCAMPO 1170, ZONA CENTRO, Tijuana, Baja California','2024-12-20 17:13:02','2024-12-20 17:13:02');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_state`
--

DROP TABLE IF EXISTS `report_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `report_state` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `report_id` bigint(20) unsigned NOT NULL,
  `state_id` bigint(20) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `report_id` (`report_id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `report_state_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `reports` (`id`),
  CONSTRAINT `report_state_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_state`
--

LOCK TABLES `report_state` WRITE;
/*!40000 ALTER TABLE `report_state` DISABLE KEYS */;
INSERT INTO `report_state` VALUES (27,1,14,50.00,NULL,NULL),(28,2,14,50.00,NULL,NULL),(29,1,15,50.00,NULL,NULL),(30,2,15,50.00,NULL,NULL);
/*!40000 ALTER TABLE `report_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'Standard Report','Business registration date, Tax id and federal permit number, Share Capital, Ownership information, Company directors and officers, Company subscribers',0,1,1,'2024-12-22 13:07:47','2024-12-22 13:07:47'),(2,'Full Report','Standard Report + Historical Share Capital, Ownership information, Company directors and officers, Company subscribers',1,0,1,'2024-12-22 13:07:47','2024-12-22 13:07:47');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Mexico State'),(2,'Mexico City'),(3,'Oaxaca'),(4,'Jalisco'),(5,'Colima'),(6,'Morelos'),(7,'Durango'),(8,'Campeche'),(9,'Chiapas'),(10,'San Luis Potosí'),(11,'Tamaulipas'),(12,'Guerrero'),(13,'Tlaxcala'),(14,'Aguascalientes'),(15,'Baja California'),(16,'Baja California Sur'),(17,'Chihuahua'),(18,'Coahuila'),(19,'Guanajuato'),(20,'Hidalgo'),(21,'Michoacán'),(22,'Nayarit'),(23,'Nuevo León'),(24,'Puebla'),(25,'Querétaro'),(26,'Quintana Roo'),(27,'Sinaloa'),(28,'Sonora'),(29,'Tabasco'),(30,'Veracruz'),(31,'Yucatán'),(32,'Zacatecas');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-19 21:52:07
