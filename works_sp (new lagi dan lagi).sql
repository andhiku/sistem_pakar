-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2018 at 08:05 PM
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
(2, 1, 'G002', 'Hamil (+)'),
(3, 1, 'G003', 'Nyeri pada bahu'),
(4, 1, 'G004', 'Perdarahan yang biasanya disertai kram pada perut bagian bawah'),
(5, 1, 'G005', 'Keluarnya cairan atau jaringan (gumpalan darah) dari vagina'),
(6, 1, 'G006', 'Hilangnya tanda-tanda kehamilan seperti mual atau payudara yang sensitive / Hamil (-)'),
(7, 1, 'G007', 'Mual dan muntah yang parah'),
(8, 1, 'G008', 'Keluarnya kista berbentuk anggur dari vagina.'),
(9, 1, 'G009', 'Besar rahim tidak sesuai usia kehamilan.'),
(10, 1, 'G010', 'Perdarahan tanpa disertai rasa sakit khususnya 3 bulan terakhir masa kehamilan'),
(11, 1, 'G011', 'Nyeri punggung'),
(15, 1, 'G012', 'Perdarahan disertai rasa sakit khususnya 3 bulan terakhir masa kehamilan'),
(17, 1, 'G013', 'Gerakan bayi dalam kandungan yang kurang aktif atau tidak seperti biasanya.'),
(18, 1, 'G014', 'Tekanan darah lebih dari normal (>140/90 mHg) '),
(20, 1, 'G015', 'Sakit kepala parah.'),
(21, 1, 'G016', 'Berkurangnya volume urine.'),
(22, 1, 'G017', 'Gangguan penglihatan, misalnya pandangan hilang secara sementara, menjadi kabur, atau sensitif terhadap cahaya.'),
(24, 1, 'G018', 'Kejang-kejang'),
(30, 1, 'G024', 'Rasa ingin selalu buang air kecil '),
(31, 1, 'G019', 'Nyeri atau perih saat buang air kecil'),
(32, 1, 'G020', 'Warna urine yang keruh'),
(33, 1, 'G021', 'Demam'),
(35, 1, 'G022', 'Nyeri perut'),
(36, 1, 'G023', 'Sesak nafas');

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
(64, 1, 1, 0.3, 0.7),
(65, 2, 1, 0.4, 0.6),
(66, 3, 1, 0.3, 0.7),
(67, 6, 2, 0.1, 0.9),
(68, 4, 2, 0.3, 0.7),
(69, 5, 2, 0.1, 0.9),
(70, 7, 3, 0.2, 0.8),
(71, 8, 3, 0.1, 0.9),
(72, 9, 3, 0.1, 0.9),
(73, 15, 4, 0.1, 0.9),
(74, 11, 4, 0.3, 0.7),
(75, 35, 4, 0.3, 0.7),
(76, 10, 5, 0.1, 0.9),
(77, 11, 5, 0.2, 0.8),
(78, 35, 5, 0.2, 0.8),
(79, 17, 5, 0.2, 0.8),
(80, 35, 6, 0.3, 0.7),
(81, 18, 6, 0.1, 0.9),
(82, 36, 6, 0.3, 0.7),
(83, 20, 6, 0.3, 0.7),
(84, 21, 6, 0.2, 0.8),
(85, 22, 6, 0.4, 0.6),
(86, 35, 7, 0.3, 0.7),
(87, 18, 7, 0.1, 0.9),
(88, 36, 7, 0.3, 0.7),
(89, 20, 7, 0.3, 0.7),
(90, 21, 7, 0.2, 0.8),
(91, 22, 7, 0.4, 0.6),
(92, 24, 7, 0.1, 0.9),
(93, 30, 9, 0.2, 0.8),
(94, 31, 9, 0.1, 0.9),
(95, 32, 9, 0.1, 0.9),
(96, 33, 9, 0.4, 0.6);

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
(3, 5, 'P002', 'Corela', 98.824, 'Penyakit ini sangat erat hubungannya dengan berbagai faktor pemicu stress seperti fluktuasi cuaca, kelembaban, pindah kandang, dan transportasi', '2018-08-13 16:57:46'),
(4, 3, 'P004', 'Pullorum/Berak Kapus', 98, 'Penyakit ini menimbulkan mortalitas yang sangat tinggi pada anak ayam umur 1-10 hari dan memiliki masa inkubasi 7 hari', '2018-08-30 10:39:41'),
(5, 3, 'P001', 'Terelo/ND', 90, 'Terjadi karena infeksi viral yang berakibat gangguan pada saraf pernafasan, virus yang membawa penyakit ini adalah virus paramyxo', '2018-08-30 10:41:04'),
(6, 6, 'P002', 'Corela', 98, 'Penyakit ini sangat erat hubungannya dengan berbagai faktor pemicu stress seperti fluktuasi cuaca, kelembaban, pindah kandang, dan transportasi', '2018-08-30 11:18:05'),
(7, 3, 'P004', 'Pullorum/Berak Kapus', 80, 'Penyakit ini menimbulkan mortalitas yang sangat tinggi pada anak ayam umur 1-10 hari dan memiliki masa inkubasi 7 hari', '2018-08-30 13:01:09'),
(8, 3, 'P005', 'Coriza/Snot', 95.2, 'Penyakit yang menyerang sistem pernapasan dan disebabkan oleh bakteri', '2018-08-30 15:43:26'),
(9, 3, 'P005', 'Coriza/Snot', 68, 'Penyakit yang menyerang sistem pernapasan dan disebabkan oleh bakteri', '2018-08-30 15:45:11'),
(10, 4, 'P005', 'Solusio Plasenta', 95.2, 'Konsultasi pada dokter sebaiknya segera dilakukan apabila seorang wanita hamil mengalami gejala seperti yang disebutkan untuk pemeriksaan lebih lanjut.\r\nMeskipun rawan terjadi di trimester ketiga, solusio plasenta juga bisa terjadi kapan saja setelah usia', '2018-09-05 00:22:36'),
(11, 3, 'P001', 'Kehamilan Ektropik', 99.6, 'Sebaiknya Anda segera ke rumah sakit jika mengalami gejala-gejala tersebut. Umumnya penyakit ini ditangani dengan suntikan methotrexate untuk menghentikan pertumbuhan sekaligus menghancurkan sel-sel yang sudah terbentuk. atau dengan cara operasi. Kehamila', '2018-09-05 09:16:38'),
(12, 3, 'P001', 'Kehamilan Ektropik', 80, 'Sebaiknya Anda segera ke rumah sakit jika mengalami gejala-gejala tersebut. Umumnya penyakit ini ditangani dengan suntikan methotrexate untuk menghentikan pertumbuhan sekaligus menghancurkan sel-sel yang sudah terbentuk. atau dengan cara operasi. Kehamila', '2018-09-05 10:12:04'),
(13, 4, 'P001', 'Kehamilan Ektropik', 99.6, 'Sebaiknya Anda segera ke rumah sakit jika mengalami gejala-gejala tersebut. Umumnya penyakit ini ditangani dengan suntikan methotrexate untuk menghentikan pertumbuhan sekaligus menghancurkan sel-sel yang sudah terbentuk. atau dengan cara operasi. Kehamila', '2018-09-07 12:56:57'),
(14, 3, 'P009', 'Infeksi Saluran Kemi', 90, 'Penyembuhan ISK dapat dilakukan dengan menggunakan obat-obatan antibiotik . Selain antibiotik, obat pereda nyeri seperti parasetamol juga mungkin diperlukan untuk meredakan demam atau rasa sakit yang ada.											', '2018-09-22 16:20:51'),
(15, 3, 'P009', 'Infeksi Saluran Kemi', 96, 'Penyembuhan ISK dapat dilakukan dengan menggunakan obat-obatan antibiotik . Selain antibiotik, obat pereda nyeri seperti parasetamol juga mungkin diperlukan untuk meredakan demam atau rasa sakit yang ada.											', '2018-09-22 16:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `user_id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`user_id`, `gejala_id`, `created_at`) VALUES
(3, 5, '2018-08-30 10:39:41'),
(3, 6, '2018-08-30 10:39:41'),
(3, 11, '2018-08-30 10:39:41'),
(3, 12, '2018-08-30 10:39:41'),
(3, 8, '2018-08-30 10:41:04'),
(3, 7, '2018-08-30 10:41:04'),
(6, 7, '2018-08-30 11:18:05'),
(6, 9, '2018-08-30 11:18:05'),
(6, 10, '2018-08-30 11:18:05'),
(3, 10, '2018-08-30 13:01:09'),
(3, 11, '2018-08-30 13:01:09'),
(3, 1, '2018-08-30 15:43:26'),
(3, 2, '2018-08-30 15:43:26'),
(3, 3, '2018-08-30 15:43:26'),
(3, 1, '2018-08-30 15:45:11'),
(3, 4, '2018-08-30 15:45:11'),
(3, 5, '2018-08-30 15:45:11'),
(3, 6, '2018-08-30 15:45:11'),
(0, 9, '2018-08-31 07:08:35'),
(0, 10, '2018-08-31 07:08:35'),
(3, 16, '2018-09-04 14:34:02'),
(3, 17, '2018-09-04 14:34:02'),
(3, 18, '2018-09-04 14:34:02'),
(3, 20, '2018-09-04 14:34:02'),
(3, 16, '2018-09-04 14:34:32'),
(3, 17, '2018-09-04 14:34:32'),
(3, 18, '2018-09-04 14:34:32'),
(3, 20, '2018-09-04 14:34:32'),
(3, 32, '2018-09-04 14:34:32'),
(3, 33, '2018-09-04 14:34:32'),
(4, 1, '2018-09-05 00:22:36'),
(4, 2, '2018-09-05 00:22:36'),
(4, 3, '2018-09-05 00:22:36'),
(4, 28, '2018-09-05 00:41:54'),
(4, 31, '2018-09-05 00:41:54'),
(4, 32, '2018-09-05 00:41:54'),
(4, 28, '2018-09-05 00:44:03'),
(4, 31, '2018-09-05 00:44:03'),
(4, 32, '2018-09-05 00:44:03'),
(3, 1, '2018-09-05 09:16:38'),
(3, 2, '2018-09-05 09:16:38'),
(3, 3, '2018-09-05 09:16:38'),
(3, 4, '2018-09-05 09:16:38'),
(3, 1, '2018-09-05 10:12:03'),
(4, 1, '2018-09-07 12:56:57'),
(4, 2, '2018-09-07 12:56:57'),
(4, 3, '2018-09-07 12:56:57'),
(3, 30, '2018-09-22 16:20:50'),
(3, 33, '2018-09-22 16:34:33'),
(3, 30, '2018-09-22 16:34:33');

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
(2, 'Gejala Non Fisik', '-');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `kode`, `nama`, `keterangan`) VALUES
(1, 'P001', 'Kehamilan Ektropik', 'Sebaiknya Anda segera ke rumah sakit jika mengalami gejala-gejala tersebut. Umumnya penyakit ini ditangani dengan suntikan methotrexate untuk menghentikan pertumbuhan sekaligus menghancurkan sel-sel yang sudah terbentuk. atau dengan cara operasi. Kehamilan ektopik tidak bisa dicegah sepenuhnya. Agar terhindar dari kondisi ini, Anda harus menghindari atau mengurangi faktor risikonya. Contohnya adalah dengan menjalani tes darah dan USG sebagai pendeteksian awal atau memantau perkembangan kehamilan. Terutama bagi wanita yang pernah mengalami kehamilan ektopik.																						'),
(2, 'P002', 'Abortus', 'Jika mengalami gejala-gejala tersebut segera ke rumah sakit untuk pemeriksaan lebih lanjut.\r\nSetelah memastikan diagnosis keguguran, Anda dapat memilih untuk menunggu sampai seluruh jaringan luruh dan keluar secara alami dari rahim atau dengan penanganan obat dan operasi.\r\nKarena penyebabnya yang belum diketahui secara pasti, keguguran umumnya tidak dapat dicegah. Tetapi, ada beberapa langkah yang bisa dilakukan guna menurunkan risiko keguguran. Langkah-langkah tersebut meliputi:\r\n1.	Menerapkan pola makan sehat dan seimbang, terutama meningkatkan konsumsi makanan dengan kandungan serat tinggi.\r\n2.	Tidak merokok, mengonsumsi minuman keras, dan menggunakan obat-obatan terlarang selama masa kehamilan.\r\n3.	Mencegah infeksi-infeksi tertentu selama masa kehamilan, misalnya dengan menerima vaksin sesuai anjuran dokter.\r\n4.	Menjaga berat badan yang sehat sebelum dan saat hamil.\r\n5.	Menangani penyebab keguguran yang bisa dideteksi, seperti otot serviks yang lemah. Kelainan ini dapat diatasi melalui operasi pengencangan otot serviks, sehingga dapat menurunkan risiko keguguran.\r\n											'),
(3, 'P003', 'Mola Hidatidosa (Hamil Anggur)', 'Karena kemiripan gejalanya dengan kehamilan biasa, hamil anggur cenderung tidak disadari oleh penderita. Konsultasi pada dokter sebaiknya segera dilakukan oleh wanita hamil apabila dirinya merasakan kejanggalan, terutama pada awal masa kehamilan.\r\n\r\nJika positif didiagnosis mengalami hamil anggur, dokter akan menganjurkan penderita untuk menjalani penanganan secepatnya seperti operasi pengangkatan jaringan abnormal. Langkah ini dapat dilakukan melalui beberapa prosedur yang meliputi Kuret atau Histerektomi (pengangkatan Rahim) jika penderita tidak ingin memiliki keturunan lagi.\r\n'),
(4, 'P004', 'Plasenta Previa', 'Jika mengalami perdarahan dalam trimester kedua atau ketiga, sebaiknya Anda segera menghubungi dokter.\r\nPenanganan untuk plasenta previa umumnya  meliputi istirahat sebanyak mungkin, transfusi darah jika dibutuhkan, serta operasi caesar.\r\n											'),
(5, 'P005', 'Solusio Plasenta', 'Konsultasi pada dokter sebaiknya segera dilakukan apabila seorang wanita hamil mengalami gejala seperti yang disebutkan untuk pemeriksaan lebih lanjut.\r\nMeskipun rawan terjadi di trimester ketiga, solusio plasenta juga bisa terjadi kapan saja setelah usia kandungan memasuki minggu ke-20. Kondisi ini tidak dapat dicegah secara langsung, namun ibu hamil dapat menurunkan risikonya dengan cara:\r\n1.	Mengonsumsi suplemen asam folat sesuai petunjuk dokter.\r\n2.	Memeriksakan kondisi kandungan secara rutin selama masa kehamilan.\r\n3.	Mengobati tekanan darah tinggi bila ada sesuai petunjuk dokter.\r\n4.	Tidak menggunakan narkoba.\r\n5.	Berhenti merokok.\r\n'),
(6, 'P006', 'Preklampsia', 'Karena penyebab preeklamsia dan eklamsia tidak diketahui secara pasti, maka langkah pencegahan cukup sulit dilakukan. Namun, dokter dapat menyarankan sejumlah hal kepada ibu hamil untuk meminimalisasi risiko terjadinya kedua kondisi tersebut beserta komplikasinya. Di antaranya adalah:\r\n1.	Mengonsumsi aspirin dosis rendah. \r\n2.	Menjaga tekanan darah. \r\n3.	Mengonsumsi obat antioksidan											'),
(7, 'P007', 'Ekslampsia', 'Karena penyebab preeklamsia dan eklamsia tidak diketahui secara pasti, maka langkah pencegahan cukup sulit dilakukan. Namun, dokter dapat menyarankan sejumlah hal kepada ibu hamil untuk meminimalisasi risiko terjadinya kedua kondisi tersebut beserta komplikasinya. Di antaranya adalah:\r\n1.	Mengonsumsi aspirin dosis rendah. \r\n2.	Menjaga tekanan darah. \r\n3.	Mengonsumsi obat antioksidan											'),
(9, 'P009', 'Infeksi Saluran Kemih', 'Penyembuhan ISK dapat dilakukan dengan menggunakan obat-obatan antibiotik . Selain antibiotik, obat pereda nyeri seperti parasetamol juga mungkin diperlukan untuk meredakan demam atau rasa sakit yang ada.											');

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
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'hardianti', 'hardiantix.1@gmail.com', 'admin'),
(6, 'hardianti', '3843a08b3283e5603449b42a746ac973', 'hardianti', 'hardiantix.1@gmail.com', 'pasien');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
