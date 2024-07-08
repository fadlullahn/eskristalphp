-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 08 Jul 2024 pada 15.25
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eskristal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `heros`
--

CREATE TABLE `heros` (
  `id` int(4) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` text NOT NULL,
  `date` date NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `heros`
--

INSERT INTO `heros` (`id`, `name`, `price`, `date`, `image`) VALUES
(36, 'Es Kristal Up', '7000', '2024-06-19', '6672c173120c3.jpg'),
(41, 'Ulla', '100000', '2024-07-08', '668aea0d6ee9b.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `id_produk` varchar(35) NOT NULL,
  `id_user` varchar(35) NOT NULL,
  `alamat` varchar(32) NOT NULL,
  `nohp` varchar(32) NOT NULL,
  `level` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `proses` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `id_produk`, `id_user`, `alamat`, `nohp`, `level`, `password`, `proses`) VALUES
(48, 'Es Kristal Up', 'yusriani', 'ulla', '821', '21', '147000', 'diproses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `level`) VALUES
(1, 'fadlullah', 'admin', 'admin', 'admin'),
(2, 'arjuna', 'karyawan', 'karyawan', 'karyawan'),
(3, 'yusriani', 'user', 'user', 'user'),
(4, 'name', 'username', 'password', 'level'),
(5, 'iqbal iskandar', 'iqbal', 'iqbal', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `heros`
--
ALTER TABLE `heros`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `heros`
--
ALTER TABLE `heros`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
