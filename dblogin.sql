-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Des 2022 pada 08.02
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblogin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblogin`
--

CREATE TABLE `tblogin` (
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tblogin`
--

INSERT INTO `tblogin` (`username`, `password`, `nama`) VALUES
(' d', 'd', ' d'),
(' gina', '123', ' gina aja'),
(' janah', '21', ' d'),
(' sami sigit', 'salma', ' udin'),
(' silvia', '1234', ' silviaa'),
(' visilanti', '111', ' haha'),
('admin', '123', 'admin'),
('diska', '123', 'diska cantik'),
('salma', '123', ' salma khairunnisa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpasien`
--

CREATE TABLE `tbpasien` (
  `id` int(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `No_Telepon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbpasien`
--

INSERT INTO `tbpasien` (`id`, `nama`, `umur`, `alamat`, `No_Telepon`) VALUES
(5, 'silvia', '100', 'hjds', '0898'),
(6, 'Datul', '55', 'kp rambutan', '087837r'),
(8, 'sigit sami', '100', 'kp kenangan', '084784'),
(9, 'salma khairunnisa', '21', 'cilengkrang', '083124243'),
(10, 'datul', '20 ', 'cigoreleng', '08101010101010'),
(12, 'gina sonia', '21', 'kp durian runtuh', '08907686');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpemeriksaan`
--

CREATE TABLE `tbpemeriksaan` (
  `id` varchar(30) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `NPR` varchar(30) NOT NULL,
  `keluhan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbpemeriksaan`
--

INSERT INTO `tbpemeriksaan` (`id`, `tanggal`, `NPR`, `keluhan`) VALUES
('2', ' 21 agustus 2002', 'NPR-3 ', 'suka ee'),
('3', ' ', ' ', ''),
('4', ' 323', ' fda', 'flakl;jklaj'),
('5', ' 32', ' fn', 'jd'),
('2', ' nkjb', ' jkhkj', 'kjhkjh'),
('2', ' jh', ' rh', 'fkjke'),
('3', ' fekl', ' hf', 'jrqj'),
('2', '12/08/2022', ' NPR-2', 'sakit jantung yang berkepanjangan\ndan rasa rindu yang tidak tertahankan '),
('8', ' 20/10/1945', ' NPR-2', 'kadang meriang merindukan kasih sayang'),
('11', '24/12/2022', ' 3', 'sakit hati'),
('12', ' 10/9/2022', ' NPR-2', 'sakit batuk yang berkepanjangan ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbresep`
--

CREATE TABLE `tbresep` (
  `id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `dokter` varchar(30) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `resep` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbresep`
--

INSERT INTO `tbresep` (`id`, `dokter`, `tanggal`, `resep`) VALUES
('2', ' 23', ' aguhsur', 'hfjah'),
('3', ' Dr.Dikta munggarani', ' 20/8/2002', 'parasetamol 3 buah\namoxilin 5 buah'),
('8', ' Dr.silvia', ' 20/10/194', 'baygon 5 buah parasetamol 5'),
('9', ' Dr. silvia', '21/10/2002', 'parasetamol 2 buah\namoxilin 5 buah\n'),
('11', ' dr silvi', '24/12/2022', 'parasetamo 5 buah\npanadol 5'),
('12', ' Dr.silvia', ' 20/10/2022', 'parasetamol 5 buah dan juga amoxilin 4 buah\ndan juga obat batuk 1 buah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tbpasien`
--
ALTER TABLE `tbpasien`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbpemeriksaan`
--
ALTER TABLE `tbpemeriksaan`
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indeks untuk tabel `tbresep`
--
ALTER TABLE `tbresep`
  ADD KEY `id` (`id`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbpasien`
--
ALTER TABLE `tbpasien`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
