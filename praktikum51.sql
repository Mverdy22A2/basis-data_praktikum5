-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jun 2023 pada 17.29
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktikum5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `kd_ds` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`kd_ds`, `nama`) VALUES
('DS001', 'Nofal arianto'),
('DS002', 'Ario talib'),
('DS003', 'Ayu rahmadina'),
('DS004', 'Ratna kumala'),
('DS005', 'Vika prasetyo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalmengajar`
--

CREATE TABLE `jadwalmengajar` (
  `kd_mk` varchar(10) NOT NULL,
  `kd_ds` varchar(10) NOT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `ruang` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwalmengajar`
--

INSERT INTO `jadwalmengajar` (`kd_mk`, `kd_ds`, `hari`, `jam`, `ruang`) VALUES
('MK003', 'DS001', 'Selasa', '08:00:00', '201'),
('MK004', 'DS001', 'Rabu', '10:00:00', 'Lab. 02'),
('MK001', 'DS002', 'Senin', '10:00:00', '102'),
('MK002', 'DS002', 'Senin', '13:00:00', 'Lab. 01'),
('MK005', 'DS003', 'Selasa', '10:00:00', 'Lab. 01'),
('MK006', 'DS004', 'Kamis', '09:00:00', 'Lab. 03'),
('MK007', 'DS005', 'Rabu', '08:00:00', '102'),
('MK008', 'DS005', 'Kamis', '13:00:00', '201');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krsmahasiswa`
--

CREATE TABLE `krsmahasiswa` (
  `nim` varchar(10) NOT NULL,
  `kd_mk` varchar(10) NOT NULL,
  `kd_ds` varchar(10) NOT NULL,
  `semester` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `krsmahasiswa`
--

INSERT INTO `krsmahasiswa` (`nim`, `kd_mk`, `kd_ds`, `semester`, `nilai`) VALUES
('1823456', 'MK003', 'DS001', 3, NULL),
('1823456', 'MK004', 'DS001', 3, NULL),
('1823456', 'MK001', 'DS002', 3, NULL),
('1823456', 'MK002', 'DS002', 1, NULL),
('1823456', 'MK007', 'DS005', 3, NULL),
('1823456', 'MK008', 'DS005', 3, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jalan` tinytext DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `kodepos` varchar(10) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `kd_ds` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jk`, `tgl_lahir`, `jalan`, `kota`, `kodepos`, `no_hp`, `kd_ds`) VALUES
('1812345', 'Ari Santoso', 'L', '1999-10-11', NULL, 'Bekasi', NULL, NULL, 'DS002'),
('1823456', 'Dina Marlina', 'P', '1998-11-20', NULL, 'Jakarta', NULL, NULL, NULL),
('1834567', 'Rahmat Hidayat', 'L', '1999-05-10', NULL, 'Bekasi', NULL, NULL, NULL),
('1845678', 'Jaka Sampurna', 'L', '2000-10-19', NULL, 'Cikarang', NULL, NULL, NULL),
('1856789', 'Tia Lestari', 'P', '1999-02-15', NULL, 'Karawang', NULL, NULL, NULL),
('1867890', 'Anton Sinaga', 'L', '1998-06-22', NULL, 'Bekasi', NULL, NULL, NULL),
('1912345', 'Listia Nastiti', 'P', '2001-10-23', NULL, 'Jakarta', NULL, NULL, NULL),
('1923456', 'Amira Jarisa', 'P', '2001-01-24', NULL, 'Karawang', NULL, NULL, 'DS004'),
('1934567', 'Laksana Mardito', 'L', '1999-04-14', NULL, 'Cikarang', NULL, NULL, NULL),
('1945678', 'Jura Marsina', 'P', '2000-05-10', NULL, 'Cikarang', NULL, NULL, NULL),
('1956789', 'Dadi Martani', 'L', '2001-08-29', NULL, 'Bekasi', NULL, NULL, 'DS005'),
('1967890', 'Bayu Laksono', 'L', '1999-07-22', NULL, 'Cikarang', NULL, NULL, 'DS004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kd_mk` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kd_mk`, `nama`, `sks`) VALUES
('MK001', 'Algoritma Dan Pemrogaman', 3),
('MK002', 'Praktikum Algoritma Dan Pemrograman', 1),
('MK003', 'Teknologi Basis Data', 3),
('MK004', 'Praktikum Teknologi Basis Data', 1),
('MK005', 'Pemrograman Dasar', 3),
('MK006', 'Pemrograman Berorientasi Objek', 3),
('MK007', 'Struktur Data', 3),
('MK008', 'Arsitektur Komputer', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kd_ds`);

--
-- Indeks untuk tabel `jadwalmengajar`
--
ALTER TABLE `jadwalmengajar`
  ADD PRIMARY KEY (`kd_ds`,`kd_mk`),
  ADD KEY `kd_mk` (`kd_mk`);

--
-- Indeks untuk tabel `krsmahasiswa`
--
ALTER TABLE `krsmahasiswa`
  ADD PRIMARY KEY (`nim`,`kd_ds`,`kd_mk`),
  ADD KEY `kd_ds` (`kd_ds`),
  ADD KEY `kd_mk` (`kd_mk`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `fk_dosenPA` (`kd_ds`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kd_mk`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwalmengajar`
--
ALTER TABLE `jadwalmengajar`
  ADD CONSTRAINT `jadwalmengajar_ibfk_1` FOREIGN KEY (`kd_mk`) REFERENCES `matakuliah` (`kd_mk`),
  ADD CONSTRAINT `jadwalmengajar_ibfk_2` FOREIGN KEY (`kd_ds`) REFERENCES `dosen` (`kd_ds`);

--
-- Ketidakleluasaan untuk tabel `krsmahasiswa`
--
ALTER TABLE `krsmahasiswa`
  ADD CONSTRAINT `krsmahasiswa_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `krsmahasiswa_ibfk_2` FOREIGN KEY (`kd_ds`) REFERENCES `jadwalmengajar` (`kd_ds`),
  ADD CONSTRAINT `krsmahasiswa_ibfk_3` FOREIGN KEY (`kd_mk`) REFERENCES `jadwalmengajar` (`kd_mk`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `fk_dosenPA` FOREIGN KEY (`kd_ds`) REFERENCES `dosen` (`kd_ds`),
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`kd_ds`) REFERENCES `dosen` (`kd_ds`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
