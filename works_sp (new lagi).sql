-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2018 at 12:02 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `works_sp`
--

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL,
  `kelompok_gejala_id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `kelompok_gejala_id`, `kode`, `nama_gejala`) VALUES
(1, 1, 'G001', 'Pendarahan ringan'),
(2, 1, 'G002', 'Ngorok'),
(3, 1, 'G003', 'Sesak napas'),
(4, 1, 'G004', 'Ayam mengantuk'),
(5, 1, 'G005', 'Terdapat kerak dihidung'),
(6, 1, 'G006', 'Ayam mengeleng-geleng kepala'),
(7, 2, 'G007', 'Mencret'),
(8, 1, 'G008', 'Jengger kebiruan'),
(9, 2, 'G009', 'Kotoran berwarna kuning/biru'),
(10, 2, 'G010', 'Kotoran berwarna merah/ada darah'),
(11, 2, 'G011', 'Sekitar pantat kotoran putih'),
(12, 2, 'G012', 'Kotoran putih');

-- --------------------------------------------------------

--
-- Table structure for table `gejala_penyakit`
--

CREATE TABLE `gejala_penyakit` (
  `id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `md` float NOT NULL,
  `mb` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala_penyakit`
--

INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`, `md`, `mb`) VALUES
(1, 1, 1, 0.7, 0.3),
(2, 2, 1, 0.7, 0.3),
(3, 3, 1, 0.7, 0.3),
(4, 8, 1, 0.1, 0.9),
(5, 9, 1, 0.4, 0.6),
(6, 1, 2, 0.7, 0.3),
(7, 2, 2, 0.7, 0.3),
(8, 3, 2, 0.6, 0.4),
(9, 7, 2, 0.4, 0.6),
(10, 8, 2, 0.75, 0.25),
(11, 9, 2, 0.1, 0.9),
(12, 10, 2, 0.5, 0.5),
(13, 1, 3, 0.8, 0.2),
(14, 2, 3, 0.8, 0.2),
(15, 3, 3, 0.75, 0.25),
(16, 7, 3, 0.4, 0.6),
(17, 8, 3, 0.6, 0.4),
(18, 9, 3, 0.6, 0.4),
(19, 1, 4, 0.8, 0.2),
(20, 2, 4, 0.9, 0.1),
(21, 3, 4, 0.8, 0.2),
(22, 4, 4, 0.9, 0.1),
(23, 7, 4, 0.55, 0.45),
(24, 11, 4, 0.2, 0.8),
(25, 12, 4, 0.1, 0.9),
(26, 1, 5, 0.8, 0.2),
(27, 2, 5, 0.3, 0.7),
(28, 3, 5, 0.2, 0.8),
(29, 4, 5, 0.4, 0.6),
(33, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_diagnosa`
--

CREATE TABLE `hasil_diagnosa` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kepercayaan` float NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id`, `kode`, `nama`, `kepercayaan`, `keterangan`) VALUES
(1, 'P004', 'Pullorum/Berak Kapus', 98, 'Penyakit ini menimbulkan mortalitas yang sangat tinggi pada anak ayam umur 1-10 hari dan memiliki masa inkubasi 7 hari'),
(2, 'P004', 'Pullorum/Berak Kapus', 98, 'Penyakit ini menimbulkan mortalitas yang sangat tinggi pada anak ayam umur 1-10 hari dan memiliki masa inkubasi 7 hari'),
(3, 'P001', 'Terelo/ND', 65.7, 'Terjadi karena infeksi viral yang berakibat gangguan pada saraf pernafasan, virus yang membawa penyakit ini adalah virus paramyxo'),
(4, 'P002', 'Corela', 70.6, 'Penyakit ini sangat erat hubungannya dengan berbagai faktor pemicu stress seperti fluktuasi cuaca, kelembaban, pindah kandang, dan transportasi'),
(5, 'P003', 'Colibacilus', 52, 'Colibacillosis merupakan penyakit yang disebabkan oleh bakteri Escherichia coli. E. coli tersebut menyerang ayam pada berbagai tingkatan umur'),
(6, 'P005', 'Coriza/Snot', 95.2, 'Penyakit yang menyerang sistem pernapasan dan disebabkan oleh bakteri'),
(7, 'P002', 'Corela', 76, 'Penyakit ini sangat erat hubungannya dengan berbagai faktor pemicu stress seperti fluktuasi cuaca, kelembaban, pindah kandang, dan transportasi'),
(8, 'P003', 'Colibacilus', 70, 'Colibacillosis merupakan penyakit yang disebabkan oleh bakteri Escherichia coli. E. coli tersebut menyerang ayam pada berbagai tingkatan umur'),
(9, 'P004', 'Pullorum/Berak Kapus', 99.208, 'Penyakit ini menimbulkan mortalitas yang sangat tinggi pada anak ayam umur 1-10 hari dan memiliki masa inkubasi 7 hari'),
(10, 'P005', 'Coriza/Snot', 92, 'Penyakit yang menyerang sistem pernapasan dan disebabkan oleh bakteri'),
(11, 'P001', 'Terelo/ND', 90, 'Terjadi karena infeksi viral yang berakibat gangguan pada saraf pernafasan, virus yang membawa penyakit ini adalah virus paramyxo'),
(12, 'P004', 'Pullorum/Berak Kapus', 98, 'Penyakit ini menimbulkan mortalitas yang sangat tinggi pada anak ayam umur 1-10 hari dan memiliki masa inkubasi 7 hari'),
(13, 'P001', 'Terelo/ND', 90, 'Terjadi karena infeksi viral yang berakibat gangguan pada saraf pernafasan, virus yang membawa penyakit ini adalah virus paramyxo'),
(14, 'P004', 'Pullorum/Berak Kapus', 98, 'Penyakit ini menimbulkan mortalitas yang sangat tinggi pada anak ayam umur 1-10 hari dan memiliki masa inkubasi 7 hari'),
(15, 'P001', 'Terelo/ND', 96, 'Terjadi karena infeksi viral yang berakibat gangguan pada saraf pernafasan, virus yang membawa penyakit ini adalah virus paramyxo'),
(16, 'P002', 'Corela', 97, 'Penyakit ini sangat erat hubungannya dengan berbagai faktor pemicu stress seperti fluktuasi cuaca, kelembaban, pindah kandang, dan transportasi'),
(17, 'P003', 'Colibacilus', 85.6, 'Colibacillosis merupakan penyakit yang disebabkan oleh bakteri Escherichia coli. E. coli tersebut menyerang ayam pada berbagai tingkatan umur');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_gejala`
--

CREATE TABLE `kelompok_gejala` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok_gejala`
--

INSERT INTO `kelompok_gejala` (`id`, `nama`, `keterangan`) VALUES
(1, 'Gejala Fisik', '-'),
(2, 'Gejala Pencernaan', '-');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama`, `keterangan`) VALUES
(1, 'P001', 'Terelo/ND', 'Terjadi karena infeksi viral yang berakibat gangguan pada saraf pernafasan, virus yang membawa penyakit ini adalah virus paramyxo'),
(2, 'P002', 'Corela', 'Penyakit ini sangat erat hubungannya dengan berbagai faktor pemicu stress seperti fluktuasi cuaca, kelembaban, pindah kandang, dan transportasi'),
(3, 'P003', 'Colibacilus', 'Colibacillosis merupakan penyakit yang disebabkan oleh bakteri Escherichia coli. E. coli tersebut menyerang ayam pada berbagai tingkatan umur'),
(4, 'P004', 'Pullorum/Berak Kapus', 'Penyakit ini menimbulkan mortalitas yang sangat tinggi pada anak ayam umur 1-10 hari dan memiliki masa inkubasi 7 hari'),
(5, 'P005', 'Coriza/Snot', 'Penyakit yang menyerang sistem pernapasan dan disebabkan oleh bakteri');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `email`, `level`) VALUES
(3, 'pasien', 'f5c25a0082eb0748faedca1ecdcfb131', 'pasien1', 'hardiantix.1@gmail.com', 'pasien'),
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'hardianti', 'hardiantix.1@gmail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelompok_gejala_id` (`kelompok_gejala_id`);

--
-- Indexes for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_id` (`gejala_id`),
  ADD KEY `penyakit_id` (`penyakit_id`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gejala`
--
ALTER TABLE `gejala`
  ADD CONSTRAINT `gejala_ibfk_1` FOREIGN KEY (`kelompok_gejala_id`) REFERENCES `kelompok_gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD CONSTRAINT `gejala_penyakit_ibfk_1` FOREIGN KEY (`gejala_id`) REFERENCES `gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gejala_penyakit_ibfk_2` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
