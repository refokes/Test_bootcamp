-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Okt 2020 pada 12.28
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko_buku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_tb`
--

CREATE TABLE `book_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `writer_id` int(11) NOT NULL,
  `publication_year` int(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `book_tb`
--

INSERT INTO `book_tb` (`id`, `name`, `category_id`, `writer_id`, `publication_year`, `img`) VALUES
(2, 'Mata Merah', 2, 5, 2019, ''),
(3, 'Senyuman Langit', 1, 6, 2020, ''),
(4, 'legend of queens', 3, 5, 2019, ''),
(5, 'Saatnya Berperang', 1, 2, 2020, ''),
(43, 'dada', 2, 1, 2002, '241020201213243a.PNG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_tb`
--

CREATE TABLE `category_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category_tb`
--

INSERT INTO `category_tb` (`id`, `name`) VALUES
(1, 'Fantasy'),
(2, 'Horror'),
(3, 'Music'),
(4, 'Education');

-- --------------------------------------------------------

--
-- Struktur dari tabel `writer_tb`
--

CREATE TABLE `writer_tb` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `writer_tb`
--

INSERT INTO `writer_tb` (`id`, `name`) VALUES
(1, 'Chandra S'),
(2, 'Elvi K'),
(3, 'Olsen'),
(4, 'Sule Sutisna'),
(5, 'Alvin Denis'),
(6, 'Toni Hermawan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `book_tb`
--
ALTER TABLE `book_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `writer_id` (`writer_id`);

--
-- Indeks untuk tabel `category_tb`
--
ALTER TABLE `category_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `writer_tb`
--
ALTER TABLE `writer_tb`
  ADD PRIMARY KEY (`id`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `book_tb`
--
ALTER TABLE `book_tb`
  ADD CONSTRAINT `book_tb_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_tb` (`id`),
  ADD CONSTRAINT `book_tb_ibfk_2` FOREIGN KEY (`writer_id`) REFERENCES `writer_tb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
