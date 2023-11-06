-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 05:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisatasemarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `wisatakotametropolitan`
--

CREATE TABLE `wisatakotametropolitan` (
  `Id_Wisata` int(11) NOT NULL,
  `Nama_Wisata` varchar(100) NOT NULL,
  `Alamat_Wisata` varchar(250) NOT NULL,
  `Harga_Wisata` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wisatakotametropolitan`
--

INSERT INTO `wisatakotametropolitan` (`Id_Wisata`, `Nama_Wisata`, `Alamat_Wisata`, `Harga_Wisata`) VALUES
(4, 'Sampookong', 'Jl.Simongan No 129', '35.000-40.000'),
(4, 'Lawang sewu', 'Jl.Pemuda No 160', '10.000-30.000'),
(5, 'Kota Lama', 'Jl. Letjen Suprapto No 22', ' Gratis');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
