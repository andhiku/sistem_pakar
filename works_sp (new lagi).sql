-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2018 at 06:59 PM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `works_sp`
--

-- --------------------------------------------------------

--
-- Table structure for table `hasil_diagnosa`
--

CREATE TABLE `hasil_diagnosa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `kepercayaan` float NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id`, `user_id`, `kode`, `nama`, `kepercayaan`, `keterangan`, `created_at`) VALUES
(1, 3, 'P005', 'Coriza/Snot', 76, 'Penyakit yang menyerang sistem pernapasan dan disebabkan oleh bakteri', '2018-08-13 16:54:20'),
(2, 3, 'P004', 'Pullorum/Berak Kapus', 98.4, 'Penyakit ini menimbulkan mortalitas yang sangat tinggi pada anak ayam umur 1-10 hari dan memiliki masa inkubasi 7 hari', '2018-08-13 16:55:06'),
(3, 5, 'P002', 'Corela', 98.824, 'Penyakit ini sangat erat hubungannya dengan berbagai faktor pemicu stress seperti fluktuasi cuaca, kelembaban, pindah kandang, dan transportasi', '2018-08-13 16:57:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;