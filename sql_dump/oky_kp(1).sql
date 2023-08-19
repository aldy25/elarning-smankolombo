-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2023 at 03:01 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oky_kp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(8) NOT NULL,
  `admin_nama` varchar(100) DEFAULT NULL,
  `admin_username` varchar(50) DEFAULT NULL,
  `admin_password` varchar(6) DEFAULT NULL,
  `admin_level` varchar(5) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_username`, `admin_password`, `admin_level`, `alamat`, `email`, `no_telp`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', '																jogja\r\n							\r\n							', 'admin@gmail.com', '08123456789'),
(2, 'admin2', 'admin2', 'admin2', 'admin', 'mendalo							', 'admin2@gmail.com', '08535545454');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `guru_id` int(8) NOT NULL,
  `guru_nip` varchar(20) DEFAULT NULL,
  `guru_nama` varchar(100) DEFAULT NULL,
  `guru_username` varchar(50) DEFAULT NULL,
  `guru_password` varchar(6) DEFAULT NULL,
  `guru_level` varchar(4) DEFAULT NULL,
  `guru_telp` varchar(20) DEFAULT NULL,
  `guru_alamat` text DEFAULT NULL,
  `guru_email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_username`, `guru_password`, `guru_level`, `guru_telp`, `guru_alamat`, `guru_email`) VALUES
(1, '1985033020190428', 'guru satu', 'guru', 'guru', 'guru', '08123456789', 'jogja', 'gurusatu@gmail.com'),
(4, '12345678', 'saipudin', 'guru2', 'guru2', 'guru', '085266935709', 'mendalo							', 'saipul@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `jawaban_id` int(10) NOT NULL,
  `soal_id` int(10) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `siswa_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`jawaban_id`, `soal_id`, `nama_file`, `siswa_id`) VALUES
(1, 1, 'tes.pdf', '1'),
(2, 5, 'skripsi_level_4.pdf', '1'),
(3, 3, 'USULAN_PENELITIAN_level_5.pdf', '1'),
(4, 6, 'Model1.docx', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `kelas_id` int(8) NOT NULL,
  `kelas_nama` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`kelas_id`, `kelas_nama`) VALUES
(2, 'kelas 1'),
(3, 'kelas 2'),
(4, 'kelas 3'),
(5, 'kelas 1 b'),
(6, '3b');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `materi_id` int(10) NOT NULL,
  `judul_materi` varchar(225) DEFAULT NULL,
  `pelajaran_id` int(8) DEFAULT NULL,
  `tanggal_upload` date DEFAULT NULL,
  `nama_file` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`materi_id`, `judul_materi`, `pelajaran_id`, `tanggal_upload`, `nama_file`) VALUES
(1, 'materi satu', 7, '2019-05-03', 'MATERI_BAB_I.docx'),
(2, 'Materi Dua', 7, '2019-05-03', 'MATERI_BAB_II.docx'),
(3, 'fisika', 7, '2022-10-08', '67-199-1-PB.pdf'),
(4, 'trigonometri', 4, '2022-10-19', 'bimbingan_2.pdf'),
(5, 'trigonometri', 4, '2022-10-19', 'bimbingan_21.pdf'),
(6, 'materi video', 7, '2022-10-19', 'bandicam_2022-10-08_19-38-30-174.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `pbm`
--

CREATE TABLE `pbm` (
  `pbm_id` int(11) NOT NULL,
  `tahun_ajaran` char(9) DEFAULT NULL,
  `pelajaran_id` int(15) DEFAULT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `guru_id` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pbm`
--

INSERT INTO `pbm` (`pbm_id`, `tahun_ajaran`, `pelajaran_id`, `siswa_id`, `guru_id`) VALUES
(1, '2019/2020', 7, 1, 1),
(2, '2019/2020', 8, 1, 3),
(3, '2019/2020', 7, 2, 1),
(4, '2022/2023', 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelajaran`
--

CREATE TABLE `pelajaran` (
  `pelajaran_id` int(8) NOT NULL,
  `pelajaran_nama` varchar(50) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelajaran`
--

INSERT INTO `pelajaran` (`pelajaran_id`, `pelajaran_nama`, `kelas_id`) VALUES
(4, 'Matematika', 2),
(5, 'Bahasa Indonesia', 3),
(6, 'Bahasa Inggris', 4),
(7, 'Bahasa Indonesia', 4),
(8, 'Matematika', 4),
(9, 'fisika', 5),
(10, 'agama', 6);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `siswa_id` int(8) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(100) DEFAULT NULL,
  `siswa_username` varchar(50) DEFAULT NULL,
  `siswa_password` varchar(6) DEFAULT NULL,
  `siswa_level` varchar(5) DEFAULT NULL,
  `siswa_telp` varchar(20) DEFAULT NULL,
  `siswa_alamat` text DEFAULT NULL,
  `siswa_email` varchar(50) DEFAULT NULL,
  `kelas_id` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_username`, `siswa_password`, `siswa_level`, `siswa_telp`, `siswa_alamat`, `siswa_email`, `kelas_id`) VALUES
(1, '111235020000120001', 'siswa satu', 'siswa', 'siswa', 'siswa', '08123456789', '								jogja\r\n							', 'siswasatu@gmail.com', 4),
(2, '111235020000120002', 'siswa dua', 'siswadua', 'siswad', 'siswa', '08123456789', 'Babadan, Gedongkuning, Yogyakarta', 'siswadua@gmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `soal_id` int(10) NOT NULL,
  `nama_soal` varchar(225) DEFAULT NULL,
  `materi_id` int(10) DEFAULT NULL,
  `tanggal_upload` date DEFAULT NULL,
  `nama_file` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`soal_id`, `nama_soal`, `materi_id`, `tanggal_upload`, `nama_file`) VALUES
(1, 'Tes Soal Satu', 1, '2019-05-03', 'BAB_III.pdf'),
(3, 'Tugas pertama Materi Dua', 2, '2019-05-04', 'Template_Proposal_PTA-KP.docx'),
(5, 'tugas trigonometri', 5, '2022-10-19', 'seminar_proposal.pdf'),
(6, 'hh', 6, '2022-10-26', 'Model.docx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`jawaban_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`materi_id`);

--
-- Indexes for table `pbm`
--
ALTER TABLE `pbm`
  ADD PRIMARY KEY (`pbm_id`);

--
-- Indexes for table `pelajaran`
--
ALTER TABLE `pelajaran`
  ADD PRIMARY KEY (`pelajaran_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`soal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `guru_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `jawaban_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `kelas_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `materi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pbm`
--
ALTER TABLE `pbm`
  MODIFY `pbm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelajaran`
--
ALTER TABLE `pelajaran`
  MODIFY `pelajaran_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `siswa_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `soal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
