-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: akademik_untid
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
-- Table structure for table `ambil_mk`
--

DROP TABLE IF EXISTS `ambil_mk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ambil_mk` (
  `nim` varchar(20) NOT NULL,
  `kode_mk` varchar(10) NOT NULL,
  `nilai` char(1) DEFAULT NULL,
  PRIMARY KEY (`nim`,`kode_mk`),
  KEY `fk_ambilmk_matakuliah` (`kode_mk`),
  CONSTRAINT `fk_ambilmk_mahasiswa` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  CONSTRAINT `fk_ambilmk_matakuliah` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambil_mk`
--

LOCK TABLES `ambil_mk` WRITE;
/*!40000 ALTER TABLE `ambil_mk` DISABLE KEYS */;
INSERT INTO `ambil_mk` VALUES ('M001','MK001','A'),('M002','MK003','B'),('M003','MK002','A'),('M004','MK004','B'),('M005','MK005','A'),('M006','MK006','B'),('M007','MK007','A'),('M008','MK008','C'),('M009','MK001','B'),('M010','MK002','A');
/*!40000 ALTER TABLE `ambil_mk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`nip`),
  KEY `fk_dosen_jurusan` (`jurusan_id`),
  CONSTRAINT `fk_dosen_jurusan` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`kode_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES ('D001','Dr. Ahmad','Jakarta','TE'),('D002','Prof. Budi','Bandung','TM'),('D003','Dr. Siti','Surabaya','TI'),('D004','Dr. Rina','Yogyakarta','TS'),('D005','Prof. Andi','Semarang','TK');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurusan` (
  `kode_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(50) DEFAULT NULL,
  `ketua_jurusan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kode_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES ('TE','Teknik Elektro','D001'),('TI','Teknik Informatika','D003'),('TK','Teknik Kimia','D005'),('TM','Teknik Mesin','D002'),('TS','Teknik Sipil','D004');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`nim`),
  KEY `fk_mahasiswa_jurusan` (`jurusan_id`),
  CONSTRAINT `fk_mahasiswa_jurusan` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusan` (`kode_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('M001','Ali','Jakarta','L','TE'),('M002','Budi','Bandung','L','TM'),('M003','Dana','Magelang','L','TI'),('M004','Lia','Magelang','P','TI'),('M005','Eka','Semarang','L','TK'),('M006','Fajar','Jakarta','L','TE'),('M007','Gita','Bandung','P','TM'),('M008','Hadi','Yogyakarta','L','TS'),('M009','Navis','Semarang','P','TI'),('M010','Muafifi Daffa Firmansyah','Secang','L','TI'),('M011','Sari','Jogja','P','TI');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matakuliah`
--

DROP TABLE IF EXISTS `matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matakuliah` (
  `kode_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `dosen_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kode_mk`),
  KEY `fk_matakuliah_dosen` (`dosen_id`),
  CONSTRAINT `fk_matakuliah_dosen` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matakuliah`
--

LOCK TABLES `matakuliah` WRITE;
/*!40000 ALTER TABLE `matakuliah` DISABLE KEYS */;
INSERT INTO `matakuliah` VALUES ('MK001','Elektronika Dasar',3,2,'D001'),('MK002','Sistem Digital',4,4,'D003'),('MK003','Fisika Teknik',3,2,'D002'),('MK004','Pemrograman Dasar',3,1,'D003'),('MK005','Struktur Data',3,3,'D003'),('MK006','Jaringan Komputer',3,3,'D003'),('MK007','Manajemen Basis Data',4,5,'D004'),('MK008','Kecerdasan Buatan',3,6,'D005'),('MK009','Matematika Diskrit',3,3,'D001');
/*!40000 ALTER TABLE `matakuliah` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-23  1:21:49
