-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 05 Sep 2018 pada 03.58
-- Versi server: 5.6.34
-- Versi PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gpsumroh_data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `boundary`
--

CREATE TABLE `boundary` (
  `id` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `boundary`
--

INSERT INTO `boundary` (`id`, `latitude`, `longitude`) VALUES
(1, -7.30489, 112.7368),
(2, -7.305219, 112.742062),
(3, -7.30851, 112.741446),
(4, -7.307414, 112.736089);

-- --------------------------------------------------------

--
-- Struktur dari tabel `callcenter`
--

CREATE TABLE `callcenter` (
  `id` int(11) NOT NULL,
  `number` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `callcenter`
--

INSERT INTO `callcenter` (`id`, `number`) VALUES
(1, '081330018291');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `userid` varchar(32) NOT NULL,
  `jamaah` varchar(200) NOT NULL,
  `jeniskelamin` varchar(100) NOT NULL,
  `longitude` double NOT NULL,
  `latitude` double NOT NULL,
  `isupdated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`userid`, `jamaah`, `jeniskelamin`, `longitude`, `latitude`, `isupdated`) VALUES
('1', 'Budi', 'Pria', 112.7396, -7.3072777, 1),
('2', 'Mirna', 'Wanita', 112.7396, -7.3072534, 0),
('3', 'Fajar', 'Pria', 112.73625, -7.31501, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `userid` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `jabatan` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `jabatan`, `user`) VALUES
('0', 'ariefmozaik@gmail.coms', '1234t6', 'Admin', 'fajar'),
('1', 'budi@gmail.com', '123456', 'user', 'budi'),
('2', 'mirna@gmail.com', '123456', 'user', 'mirna'),
('3', 'fajar@yahoo.com', '123456', 'user', 'fajar');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `boundary`
--
ALTER TABLE `boundary`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `callcenter`
--
ALTER TABLE `callcenter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `boundary`
--
ALTER TABLE `boundary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `callcenter`
--
ALTER TABLE `callcenter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
