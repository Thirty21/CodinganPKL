-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2023 pada 10.45
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kehilangan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelapor`
--

CREATE TABLE `pelapor` (
  `nik` varchar(50) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `tmpt_Lahir` varchar(50) NOT NULL,
  `tgl_Lahir` date NOT NULL,
  `jekel` enum('Laki - Laki','Perempuan') NOT NULL,
  `kehilangan` enum('Akta Kelahiran','Kartu ATM','Kartu Tanda Penduduk','Kartu Keluarga','Sertifikat') NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelapor`
--

INSERT INTO `pelapor` (`nik`, `nama`, `tmpt_Lahir`, `tgl_Lahir`, `jekel`, `kehilangan`, `gambar`, `alamat`) VALUES
('329029828922', 'SISIL ANASTA', 'Bandung', '2006-02-20', 'Perempuan', 'Kartu Keluarga', '645612484fd4d.png', 'gadog'),
('928782782782782', 'SINTA ROSADAH', 'Bandung', '2002-07-17', 'Perempuan', 'Kartu Tanda Penduduk', '64560ff5ac6a6.png', 'kp. Bendungan'),
('92882828', 'NOVIA BELLA SUNGKARR', 'Bogor', '2003-07-18', 'Perempuan', 'Sertifikat', '6456115985079.png', 'Ciawi Bogor'),
('9292982982982', 'MAMAN SAPTAJI', 'Jakarta', '2002-07-17', 'Laki - Laki', 'Kartu Keluarga', '63c827e2c0a16.png', 'Kp. Bendungan'),
('92982982898', 'EKO SAPUTRA', 'Sukabumi', '1999-07-16', 'Laki - Laki', 'Kartu Tanda Penduduk', '645610c3394d6.png', 'kp. Sesepan'),
('982892882332982', 'BAMBANG SAPUTRA', 'Bogor', '1995-07-11', 'Laki - Laki', 'Akta Kelahiran', '63c827c4b85a6.png', 'cipayung'),
('982893892389223', 'ADI SAPUTRA', 'Bandung', '1998-08-12', 'Laki - Laki', 'Kartu ATM', '6456112e4c8b1.png', 'gang remaja');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pelapor`
--
ALTER TABLE `pelapor`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
