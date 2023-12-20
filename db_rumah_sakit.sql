-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 04:55 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rumah_sakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` varchar(10) NOT NULL,
  `nama_dokter` varchar(255) DEFAULT NULL,
  `no_telepon` varchar(14) DEFAULT NULL,
  `jenis_dokter` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `id_ruang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `no_telepon`, `jenis_dokter`, `alamat`, `id_ruang`) VALUES
('1100531241', 'Dr. Syah Irawan', '082174354617', 'Kulit dan Kelamin', 'Lampung City', '1112'),
('1100531242', 'Dr. Kadita Lia', '082174354611', 'Anak', 'Jl. Srigunting Raya No.1 Bandung', '1113'),
('1100531243', 'Dr. Maemunah', '082174354612', 'Anak', 'Jl. A H Nasution No. 14 Bandung', '1114'),
('1100531244', 'Dr. Luckmansyah', '082174354613', 'Spesialis Tulang', 'Jl. Cisaranten Kulon Bandung', '1115'),
('1100531245', 'Dr. Lucinta', '082174354614', 'Kulit dan Kelamin', 'Jl. Bojongloa No.69 Bandung', '1116'),
('1100531246', 'Dr. Aziz Nuramalia', '082174354615', 'THT', 'Jl. Babakan Ciparay No. 212 Bandung', '1117'),
('1100531247', 'Dr. Nurrasyid', '082174354616', 'Kandungan', 'Jl. Batununggal No.3 Bandung', '1118'),
('1100531248', 'Dr. Santi Saranti', '082174354617', 'Saraf', 'Jl. Holis No.210/191 A Bandung', '1119'),
('1100531249', 'Dr. Tatang Saratang', '082174354618', 'Anak', 'Jl. Taman Sari No.49 Bandung', '1120'),
('1100531250', 'Dr. Efendi Ali', '082174354619', 'Bedah', 'Jl. Venus No. 6 Bandung', '1121'),
('1100531251', 'Dr. Aan', '082174354610', 'Spesialis Mata', 'Jl. KH. Wahid Hasyim No. 258 Bandung', '1122'),
('1100531252', 'Dr. Syahlan Andi', '082174354621', 'Spesialis Radiologi', 'Jl. Leuwi Panjang / Kebon Lega Bandung', '1123'),
('1100531253', 'Dr. Munaroh', '082174354622', 'THT', 'Jl. Cijawura Hilir No. 64 Bandung', '1124'),
('1100531254', 'Dr. Entin Sepentin', '082174354623', 'Saraf', 'Jalan Raya Cigadung Selatan Nomor 100 C Bandung', '1125'),
('1100531255', 'Dr. Budi Setiawan', '082174354624', 'Spesialis Mata', 'Jl. Sukasenang No.11 Bandung', '1126'),
('1100531256', 'Dr. Nina Marlina', '082174354625', 'Bedah', 'Jl. Manisi No.13 Bandung', '1127'),
('1100531257', 'Dr. Sandi Samudra', '085774354926', 'Kandungan', 'Jl. Hegarmanah Tengah No.1 Bandung', '1128'),
('1100531258', 'Dr. Arianto', '081360553245', 'Bedah', 'Jl. Gede Bage No.23', '1129'),
('1100531259', 'Dr. Dede Mardani', '084460550045', 'Spesialis Tulang', 'Jl. Cikopo Selatan No.32', '1130'),
('1100543612', 'Dr. Afif Syach', '081360553245', 'THT', 'Subang Village', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `tb_berobat`
--

CREATE TABLE `tb_berobat` (
  `id_berobat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `id_obat` int(20) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `jenis_obat` text NOT NULL,
  `aturan_pemakaian` varchar(100) NOT NULL,
  `dosis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`id_obat`, `nama_obat`, `jenis_obat`, `aturan_pemakaian`, `dosis`) VALUES
(1, 'Acetosal', 'Analgesik', '3 X sehari (setelah makan)', '80  180 mg'),
(2, 'Allopurinol', 'Antipiretik ', '2 X sehari (setelah makan)', '60  120 mg'),
(3, 'As. Mefenamat', 'Anti-inflamasi', '3 X sehari (setelah makan)', '60  120 mg'),
(4, 'Fentanil', 'Nonsteroid', '2 X sehari (setelah makan)', '60  120 mg'),
(5, 'Ibuprofen', 'Anti-pirai', '2 X sehari (setelah makan)', '60  120 mg'),
(6, 'Ketoprofen', 'Analgesik', '3 X sehari (setelah makan)', '60  120 mg'),
(7, 'Cetrizin', 'Anti-alergi', '3 X sehari (setelah makan)', '80  180 mg'),
(8, 'Deksametason', 'Anti-alergi', '3 X sehari (setelah makan)', '80  180 mg'),
(9, 'Dipenhidramin', 'Anafilaksis', '3 X sehari (setelah makan)', '80  180 mg'),
(10, 'Epinefrin', 'Anafilaksis', '3 X sehari (setelah makan)', '80  180 mg'),
(11, 'Klorpheniramin', 'Anafilaksis', '3 X sehari (setelah makan)', '80  180 mg'),
(12, 'Loratadin', 'Anafilaksis', '3 X sehari (setelah makan)', '80  180 mg'),
(13, 'Mg Sulfat', 'Anti-dot', '3 X sehari (setelah makan)', '80  180 mg'),
(14, 'Kalsium Glukonat', 'Anti-dot', '3 X sehari (setelah makan)', '80  180 mg'),
(15, 'Diazepam', 'Anti-konvulsi', '3 X sehari (setelah makan)', '80  180 mg'),
(16, 'Fenitoin', 'Anti-konvulsi', '3 X sehari (setelah makan)', '80  180 mg'),
(17, 'Ergotamin', 'Anti-migrain', '3 X sehari (setelah makan)', '80  180 mg'),
(18, 'Ciprofloksasin', 'Anti-infeksi', '3 X sehari (setelah makan)', '60  120 mg'),
(19, 'Dapson', 'Anti-infeksi', '3 X sehari (setelah makan)', '60  120 mg'),
(20, 'Dikloksasilin', 'Anti-infeksi', '3 X sehari (setelah makan)', '60  120 mg mg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `id_pasien` int(20) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `nohp_pasien` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `alamat`, `nohp_pasien`) VALUES
(1104776120, 'Kamila Rose', 'L', 'Gg. Atmawigena Sukabirus', '08135484489448484'),
(1104776121, 'Rizal Rose', 'L', 'Gg. Atmawigena Sukabirus', '0813548448948484'),
(1104776122, 'Kamila Nico', 'P', 'Gg. Atmawigena Sukabirus', '081548449448484'),
(1104776123, 'Lala Rose', 'P', 'Gg. Atmawigena Sukabirus', '08135484489448484'),
(1104776124, 'Rose Selma', 'P', 'Gg. Atmawigena Sukabirus', '081354449448484'),
(1104776125, 'Nurmala Rose', 'P', 'Gg. Atmawigena Sukabirus', '08135484489448484'),
(1104776126, 'Yanto Rose', 'L', 'Gg. Atmawigena Sukabirus', '081354848948484'),
(1104776127, 'Devi Rose', 'L', 'Gg. Atmawigena Sukabirus', '08135484489448484'),
(1104776128, 'Siska Rose', 'P', 'Gg. Atmawigena Sukabirus', '0813548448448484');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `tb_berobat`
--
ALTER TABLE `tb_berobat`
  ADD PRIMARY KEY (`id_berobat`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_obat`
--
ALTER TABLE `tb_obat`
  MODIFY `id_obat` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  MODIFY `id_pasien` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1104776129;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
