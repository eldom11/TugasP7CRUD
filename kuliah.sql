-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Apr 2024 pada 17.31
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuliah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id` int(11) NOT NULL,
  `mahasiswa_npm` char(13) NOT NULL,
  `matakuliah_kodemk` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id`, `mahasiswa_npm`, `matakuliah_kodemk`) VALUES
(4, '2209001', 'MK01'),
(5, '2209002', 'MK02'),
(6, '2209003', 'MK01'),
(7, '2209004', 'MK03'),
(8, '2209005', 'MK04'),
(9, '2209006', 'MK01'),
(10, '2209007', 'MK01'),
(14, '2209008', 'MK02'),
(15, '2209009', 'MK02'),
(16, '2209010', 'MK03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` char(13) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` enum('Teknik Informatika','Sistem Informasi') NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `jurusan`, `alamat`) VALUES
('2209001', 'Siska Putri', 'Teknik Informatika', 'Karawang'),
('2209002', 'Ujang Aziz', 'Teknik Informatika', 'Karawang'),
('2209003', 'Veronica Setyano', 'Sistem Informasi', 'Jakarta Selatan'),
('2209004', 'Rizka Nurmala Putri', 'Sistem Informasi', 'Bekasi'),
('2209005', 'Eren Putra', 'Teknik Informatika', 'Cikarang'),
('2209006', 'Putra Abdul Rachman', 'Sistem Informasi', 'Karawang'),
('2209007', 'Rahmat Andriyadi', 'Sistem Informasi', 'Semarang'),
('2209008', 'Ayu Puspitasari', 'Sistem Informasi', 'Tegal'),
('2209009', 'Putri Ayuni', 'Sistem Informasi', 'Bogor'),
('2209010', 'Andri Muhammad', 'Sistem Informasi', 'Bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kodemk` char(6) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah_sks` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kodemk`, `nama`, `jumlah_sks`) VALUES
('MK01', 'Basis Data', 3),
('MK02', 'Pemrograman Berbasis Web', 3),
('MK03', 'Algoritma dan Struktur Data', 3),
('MK04', 'Kajian Jurnal Informatika', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mahasiswa_npm` (`mahasiswa_npm`),
  ADD KEY `matakuliah_kodemk` (`matakuliah_kodemk`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kodemk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`mahasiswa_npm`) REFERENCES `mahasiswa` (`npm`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`matakuliah_kodemk`) REFERENCES `matakuliah` (`kodemk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
