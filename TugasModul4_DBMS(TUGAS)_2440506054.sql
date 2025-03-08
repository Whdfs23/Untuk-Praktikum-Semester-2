-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: week4
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `mahasiswa_nilai`
--

DROP TABLE IF EXISTS `mahasiswa_nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa_nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `mata_kuliah` varchar(100) NOT NULL,
  `nilai` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa_nilai`
--

LOCK TABLES `mahasiswa_nilai` WRITE;
/*!40000 ALTER TABLE `mahasiswa_nilai` DISABLE KEYS */;
INSERT INTO `mahasiswa_nilai` VALUES (1,'Andi','Informatika','Basis Data',85.50),(2,'Andi','Informatika','Pemrograman Web',90.00),(3,'Budi','Sistem Informasi','Basis Data',88.00),(4,'Budi','Sistem Informasi','Jaringan Komputer',92.50),(5,'Cindy','Informatika','Pemrograman Web',95.00),(6,'Dedi','Teknik Elektro','Jaringan Komputer',87.00),(7,'Edo','Informatika','Basis Data',75.00),(8,'Edo','Informatika','Pemrograman Web',82.00),(9,'Fanny','Sistem Informasi','Basis Data',91.00),(10,'Fanny','Sistem Informasi','Jaringan Komputer',89.50),(11,'Gita','Informatika','Pemrograman Web',94.00),(12,'Hanif','Teknik Elektro','Jaringan Komputer',79.00),(13,'Icha','Informatika','Basis Data',86.00),(14,'Joni','Informatika','Pemrograman Web',88.00),(15,'Kayla','Sistem Informasi','Basis Data',80.00),(16,'Lala','Sistem Informasi','Jaringan Komputer',83.50),(17,'Mario','Informatika','Pemrograman Web',92.00),(18,'Nina','Teknik Elektro','Jaringan Komputer',90.00),(19,'Ojan','Informatika','Basis Data',85.00),(20,'Putra','Informatika','Pemrograman Web',88.50),(21,'Qory','Sistem Informasi','Basis Data',87.00),(22,'Rina','Sistem Informasi','Jaringan Komputer',81.00),(23,'Sandi','Informatika','Pemrograman Web',93.00),(24,'Tono','Teknik Elektro','Jaringan Komputer',78.00),(25,'Umi','Informatika','Basis Data',90.50),(26,'Vika','Informatika','Pemrograman Web',91.00),(27,'Wawan','Sistem Informasi','Basis Data',77.00),(28,'Xena','Sistem Informasi','Jaringan Komputer',80.50),(29,'Yuda','Informatika','Pemrograman Web',89.00),(30,'Zahra','Teknik Elektro','Jaringan Komputer',86.50),(31,'Bella','Informatika','Basis Data',83.00),(32,'Candra','Informatika','Pemrograman Web',87.50),(33,'Dimas','Sistem Informasi','Basis Data',84.00),(34,'Eko','Sistem Informasi','Jaringan Komputer',88.00),(35,'Farah','Informatika','Pemrograman Web',91.50),(36,'Widyadana Hussin Firmansyah','Teknologi Informasi','Basis Data',93.00),(37,'Lidya Kusumo','Teknologi Informasi','Pemrograman Web',95.00),(38,'Muafifi Daffa Firmansyah','Teknologi Informasi','Jaringan Komputer',90.00);
/*!40000 ALTER TABLE `mahasiswa_nilai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-08 18:47:10
