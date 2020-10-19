-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2020 pada 14.35
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search_engine`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `search_engine`
--

CREATE TABLE `search_engine` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `blurb` text NOT NULL,
  `url` text NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `search_engine`
--

INSERT INTO `search_engine` (`id`, `title`, `blurb`, `url`, `keywords`) VALUES
(1, 'Geprek Bensu', 'Geprek Bensu', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/dcde4d508af2bfd810381dc8e2d11cf2.html', 'Geprek Bensu'),
(2, 'PT BANK PERKREDITAN RAKYAT SEMERU SWASTI', 'PT BANK PERKREDITAN RAKYAT SEMERU SWASTI', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/63b230738173c05f16410941addbc118.html', 'PT BANK PERKREDITAN RAKYAT SEMERU SWASTI'),
(3, 'Dahar', 'Dahar', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/1c21d0b2fa28a31197ef5631552b3884.html', 'Dahar'),
(4, 'PT CHAROEN POKPHAND INDONESIA ', 'PT CHAROEN POKPHAND INDONESIA ', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/18089bb83e90b6fec2601a36b807cade.html', 'PT CHAROEN POKPHAND INDONESIA '),
(5, 'pt kitadin', 'pt kitadin', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/a7355b2dffa1ea01c0a0c5740154b084.html', 'pt kitadin'),
(6, 'CHELSEA FOOTBALL CLUB LIMITED', 'CHELSEA FOOTBALL CLUB LIMITED', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/765b1eba424ed7beba9217969b4b8974.html', 'CHELSEA FOOTBALL CLUB LIMITED'),
(7, 'PT QUANTUM LABORATORIS INTERNASIONAL', 'PT QUANTUM LABORATORIS INTERNASIONAL', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/fc1603784f009b9215ff5dbfa929e499.html', 'PT QUANTUM LABORATORIS INTERNASIONAL'),
(8, 'PT. GARUDA TASCO INTERNATIONAL', 'PT. GARUDA TASCO INTERNATIONAL', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/92c2ab84b6a7918882c56266e153c898.html', 'PT. GARUDA TASCO INTERNATIONAL'),
(9, 'PT. MITRA GEMILANG KOSMETINDO', 'PT. MITRA GEMILANG KOSMETINDO', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/01d6dd6e3fc18169f25cf2bc5d5ab83a.html', 'PT. MITRA GEMILANG KOSMETINDO'),
(10, 'PT ANEKA BOGA CITRA', 'PT ANEKA BOGA CITRA', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/28f3a12d413049c453a9180388dd306f.html', 'PT ANEKA BOGA CITRA'),
(11, 'PT GOLDEN SURYA JAYA', 'PT GOLDEN SURYA JAYA', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/139813e5ae3b8e0dabd20a0d1bc0089e.html', 'PT GOLDEN SURYA JAYA'),
(12, 'PT CEDANCE INDONESIA', 'PT CEDANCE INDONESIA', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/17cf9a524161e6c6d9c7b01516d4a17c.html', 'PT CEDANCE INDONESIA'),
(13, 'PT INTER SPORTS MARKETING ', 'PT INTER SPORTS MARKETING ', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/7f1109dbe5fb3d259b1e6b00a1e3bc5c.html', 'PT INTER SPORTS MARKETING '),
(14, 'PT INTER SPORTS MARKETING ', 'PT INTER SPORTS MARKETING ', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/7f1109dbe5fb3d259b1e6b00a1e3bc5c.html', 'PT INTER SPORTS MARKETING '),
(15, 'PT TONA MORAWA ', 'PT TONA MORAWA ', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/4221b091632158cebe56503ce887f5ce.html', 'PT TONA MORAWA '),
(16, 'AJINOMOTO CO', 'AJINOMOTO CO', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/9cc761526baa4357f5c31c07256d83e3.html', 'AJINOMOTO CO'),
(17, 'PT. SIANTAR TOP Tbk', 'PT. SIANTAR TOP Tbk', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/ac3beb60eb37980d93e39d8cc2f16d56.html', 'PT. SIANTAR TOP Tbk'),
(18, 'PT ENGINEERING INDONESIA KARYA', 'PT ENGINEERING INDONESIA KARYA', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/14785460fd1e9e933d303b45c77a263a.html', 'PT ENGINEERING INDONESIA KARYA'),
(19, 'PT GENTA ALAM SEMESTA ', 'PT GENTA ALAM SEMESTA ', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/7b7320bdbd9651a887adcfd5e2b6899b.html', 'PT GENTA ALAM SEMESTA '),
(20, 'PT GRAMITRAMA BATTERY INDONESIA', 'PT GRAMITRAMA BATTERY INDONESIA', 'https://putusan3.mahkamahagung.go.id/direktori/putusan/9aedcf7f58de1a7d0008c95367bac089.html', 'PT GRAMITRAMA BATTERY INDONESIA');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `search_engine`
--
ALTER TABLE `search_engine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `search_engine`
--
ALTER TABLE `search_engine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
