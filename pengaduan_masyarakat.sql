-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2023 pada 04.22
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_masyarakat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('32098898', 'cheryl ', 'cheryl', '202cb962ac59075b964b07152d234b70', '085893786'),
('3210867636477357', 'ridwan', 'ridwan', '202cb962ac59075b964b07152d234b70', '089787655234'),
('3222221219', 'Adi', 'adi', '202cb962ac59075b964b07152d234b70', '089999'),
('3248192647364726', 'nadia', 'nadia', '202cb962ac59075b964b07152d234b70', '087645345563'),
('3254678192767665', 'nabila', 'nabila', '202cb962ac59075b964b07152d234b70', '087875674653'),
('327403848376455', 'aulia', 'aulia', '202cb962ac59075b964b07152d234b70', '089754454333'),
('3823726135654635', 'raihan', 'rehan', '202cb962ac59075b964b07152d234b70', '089765465744'),
('4672458826354327', 'luthfi', 'mpi', '202cb962ac59075b964b07152d234b70', '098564756846');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(5) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` varchar(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `foto1` varchar(255) NOT NULL,
  `status` enum('proses','selesai','ditolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `foto1`, `status`) VALUES
(1, '2021-04-05', '3222221219', 'ada longsor', 'android_2.png', '', 'selesai'),
(13, '2023-03-09', '32098898', 'telah terjadi banjir di sekitar dusun pahing', 'IMG_2588.JPG', '', 'ditolak'),
(14, '2023-03-14', '32098898', 'terjadi longsor', 'IMG_2589.JPG', '', 'proses'),
(15, '2023-03-14', '32098898', 'longsor', 'IMG_2590.JPG', '', 'proses'),
(18, '2023-03-14', '3222221219', 'banjir', 'IMG_2608.JPG', '', 'proses'),
(19, '2023-03-14', '3248192647364726', 'Terjadi tanah longsor disekitar dusun manis', 'IMG_2592.JPG', '', 'selesai'),
(20, '2023-03-15', '3823726135654635', 'adanya jalan berlubang', 'act_pengaduan_1.png', '', 'selesai'),
(21, '2023-03-16', '3823726135654635', 'terjadi banjir di dusun pahing', 'Screenshot (2).png', '', 'ditolak'),
(28, '2023-03-16', '3248192647364726', 'adanya jalan berlubang', 'IMG_2582.JPG', '', 'proses'),
(29, '2023-03-16', '3254678192767665', 'terjadi banjir', 'IMG_2596.JPG', 'IMG_2596.JPG', 'proses'),
(30, '2023-03-16', '3248192647364726', 'terjadi banjir', 'IMG_2597.JPG', 'IMG_2597.JPG', 'proses'),
(31, '2023-03-16', '3222221219', 'hfyfy', 'act_lapor_3.png', 'act_lapor_3.png', 'proses'),
(32, '2023-03-16', '32098898', 'ahdwgdy', 'IMG_2598.JPG', 'IMG_2598.JPG', 'proses'),
(33, '2023-03-17', '327403848376455', 'ehfueg', 'banjir_1.jfif', 'longsor.jfif', 'proses'),
(34, '2023-03-17', '327403848376455', 'ifyuyvuyg', 'act_lapor_4.png', 'mvc.png', 'proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(5) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp_petugas` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp_petugas`, `level`) VALUES
(3, 'Administrator', 'admin', '202cb962ac59075b964b07152d234b70', '08999', 'admin'),
(4, 'adi', 'petugas', '202cb962ac59075b964b07152d234b70', '08999', 'petugas'),
(12, 'kania', 'kania', '202cb962ac59075b964b07152d234b70', '089736675', 'admin'),
(14, 'nina', 'nina', '202cb962ac59075b964b07152d234b70', '08978674', 'petugas'),
(16, 'ridwan', 'ridwan', '202cb962ac59075b964b07152d234b70', '0897756475632', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(5) NOT NULL,
  `id_pengaduan` int(5) NOT NULL,
  `tgl_tanggapan` varchar(20) NOT NULL,
  `isi_tanggapan` text NOT NULL,
  `id_petugas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `isi_tanggapan`, `id_petugas`) VALUES
(1, 1, '2021-04-05', 'baik', 3),
(13, 13, '2023-03-14', 'hitiiui\r\n', 3),
(14, 19, '2023-03-14', 'segera ditindaklanjuti', 3),
(15, 20, '2023-03-15', 'segera ditindaklanjuti', 4),
(19, 21, '2023-03-16', 'foto tidak sesuai', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nik` (`nik`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_pengaduan` (`id_pengaduan`,`id_petugas`),
  ADD KEY `tanggapan_ibfk_1` (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `masyarakat` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD CONSTRAINT `tanggapan_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tanggapan_ibfk_2` FOREIGN KEY (`id_pengaduan`) REFERENCES `pengaduan` (`id_pengaduan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
