-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2023 pada 11.30
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiket`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jadwal`
--

CREATE TABLE `tb_jadwal` (
  `id_jadwal` varchar(8) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `tanggal_datang` date NOT NULL,
  `waktu_berangkat` time NOT NULL,
  `waktu_datang` time NOT NULL,
  `id_jadwal_untuk` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jadwal_untuk`
--

CREATE TABLE `tb_jadwal_untuk` (
  `id_jadwal_untuk` varchar(8) NOT NULL,
  `nama_jadwal_untuk` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jadwal_untuk`
--

INSERT INTO `tb_jadwal_untuk` (`id_jadwal_untuk`, `nama_jadwal_untuk`) VALUES
('1', 'Pesawat'),
('2', 'Kereta'),
('3', 'Kapal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kapal`
--

CREATE TABLE `tb_kapal` (
  `id_kapal` varchar(8) NOT NULL,
  `nama_kapal` varchar(32) NOT NULL,
  `tempat_duduk_kapal` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kapal`
--

INSERT INTO `tb_kapal` (`id_kapal`, `nama_kapal`, `tempat_duduk_kapal`) VALUES
('KAP00001', 'Km Kelimutu', '1000'),
('KAP00002', 'Km Sangiang', '500'),
('KAP00003', 'Km Pangrango', '500'),
('KAP00004', 'Km Jetli', '500'),
('KAP00005', 'Km Bukit Raya', '1000'),
('KAP00006', 'Km Kelud', '2000'),
('KAP00007', 'Km Dobonsolo', '750'),
('KAP00008', 'Km Umsini', '2000'),
('KAP00009', 'Km Labobar', '3000'),
('KAP00010', 'Km Bukit Siguntang', '2000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kereta`
--

CREATE TABLE `tb_kereta` (
  `id_kereta` varchar(8) NOT NULL,
  `nama_kereta` varchar(32) NOT NULL,
  `tempat_duduk_kereta` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kereta`
--

INSERT INTO `tb_kereta` (`id_kereta`, `nama_kereta`, `tempat_duduk_kereta`) VALUES
('KER00001', 'KA Argo Bromo', '128'),
('KER00002', 'KA Argo Lawu', '64'),
('KER00003', 'KA Argo Muria', '96'),
('KER00004', 'KA Argo Sindoro', '80'),
('KER00005', 'KA Argo Wilis', '144'),
('KER00006', 'KA Ciremai', '128'),
('KER00007', 'KA Cikuray', '96'),
('KER00008', 'KA Pangrango', '128'),
('KER00009', 'KA Rajabasa', '80'),
('KER00010', 'KA Menoreh', '96');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kota`
--

CREATE TABLE `tb_kota` (
  `id_kota` varchar(8) NOT NULL,
  `nama_kota` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kota`
--

INSERT INTO `tb_kota` (`id_kota`, `nama_kota`) VALUES
('KOTA0001', 'Jakarta'),
('KOTA0002', 'Surabaya'),
('KOTA0003', 'Bandung'),
('KOTA0004', 'Bekasi'),
('KOTA0005', 'Medan'),
('KOTA0006', 'Depok'),
('KOTA0007', 'Tanggerang'),
('KOTA0008', 'Palembang'),
('KOTA0009', 'Semarang'),
('KOTA0010', 'Makassar'),
('KOTA0011', 'Batam'),
('KOTA0012', 'Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_maskapai`
--

CREATE TABLE `tb_maskapai` (
  `id_maskapai` varchar(8) NOT NULL,
  `nama_maskapai` varchar(32) NOT NULL,
  `maks_kabin_maskapai` varchar(32) NOT NULL,
  `tempat_duduk_maskapai` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_maskapai`
--

INSERT INTO `tb_maskapai` (`id_maskapai`, `nama_maskapai`, `maks_kabin_maskapai`, `tempat_duduk_maskapai`) VALUES
('KAP00001', 'Aviastar', '7 Kg', '160'),
('KAP00002', 'Batik Air', '7 Kg', '192'),
('KAP00003', 'Citilink', '7 Kg', '244'),
('KAP00004', 'Garuda Indonesia', '7 Kg', '256'),
('KAP00005', 'AirAsia', '7 Kg', '256'),
('KAP00006', 'Airlines', '7 Kg', '160'),
('KAP00007', 'Metro Aviation', '7 Kg', '128'),
('KAP00008', 'Sriwijaya Air', '7 Kg', '244'),
('KAP00009', 'Lion Air', '7 Kg', '256');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` varchar(8) NOT NULL,
  `password_pegawai` varchar(16) NOT NULL,
  `nama_pegawai` varchar(64) NOT NULL,
  `jabatan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` varchar(8) NOT NULL,
  `nama_pengguna` varchar(64) NOT NULL,
  `password_pengguna` varchar(16) NOT NULL,
  `email_pengguna` varchar(64) NOT NULL,
  `no_telp` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan_kapal`
--

CREATE TABLE `tb_pesan_kapal` (
  `no_pesanan_kapal` varchar(8) NOT NULL,
  `id_tiket_kapal` varchar(8) NOT NULL,
  `id_pengguna` varchar(8) NOT NULL,
  `id_pegawai` varchar(8) NOT NULL,
  `tanggal_pesan_kapal` date NOT NULL,
  `jumlah_pesan_kapal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan_kereta`
--

CREATE TABLE `tb_pesan_kereta` (
  `no_pesanan_kereta` varchar(8) NOT NULL,
  `id_tiket_kereta` varchar(8) NOT NULL,
  `id_pengguna` varchar(8) NOT NULL,
  `id_pegawai` varchar(8) NOT NULL,
  `tanggal_pesan_kereta` date NOT NULL,
  `jumlah_pesan_kereta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesan_pesawat`
--

CREATE TABLE `tb_pesan_pesawat` (
  `no_pesan_pesawat` varchar(8) NOT NULL,
  `id_tiket_pesawat` varchar(8) NOT NULL,
  `id_pengguna` varchar(8) NOT NULL,
  `id_pegawai` varchar(8) NOT NULL,
  `tanggal_pesan_pesawat` date NOT NULL,
  `jumlah_pesan_pesawat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tiket_kapal`
--

CREATE TABLE `tb_tiket_kapal` (
  `id_tiket_kapal` varchar(8) NOT NULL,
  `id_kapal` varchar(8) NOT NULL,
  `id_jadwal` varchar(8) NOT NULL,
  `harga_tiket_kapal` int(11) NOT NULL,
  `id_kota_asal` varchar(8) NOT NULL,
  `id_kota_tujuan` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tiket_kereta`
--

CREATE TABLE `tb_tiket_kereta` (
  `id_tiket_kereta` varchar(8) NOT NULL,
  `id_kereta` varchar(8) NOT NULL,
  `id_jadwal` varchar(8) NOT NULL,
  `harga_tiket_kereta` int(11) NOT NULL,
  `id_kota_asal` varchar(8) NOT NULL,
  `id_kota_tujuan` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tiket_pesawat`
--

CREATE TABLE `tb_tiket_pesawat` (
  `id_tiket_pesawat` varchar(8) NOT NULL,
  `id_maskapai` varchar(8) NOT NULL,
  `id_jadwal` varchar(8) NOT NULL,
  `harga_tiket_pesawat` int(11) NOT NULL,
  `id_kota_asal` varchar(8) NOT NULL,
  `id_kota_tujuan` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_jadwal_untuk` (`id_jadwal_untuk`);

--
-- Indeks untuk tabel `tb_jadwal_untuk`
--
ALTER TABLE `tb_jadwal_untuk`
  ADD PRIMARY KEY (`id_jadwal_untuk`);

--
-- Indeks untuk tabel `tb_kapal`
--
ALTER TABLE `tb_kapal`
  ADD PRIMARY KEY (`id_kapal`);

--
-- Indeks untuk tabel `tb_kereta`
--
ALTER TABLE `tb_kereta`
  ADD PRIMARY KEY (`id_kereta`);

--
-- Indeks untuk tabel `tb_kota`
--
ALTER TABLE `tb_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indeks untuk tabel `tb_maskapai`
--
ALTER TABLE `tb_maskapai`
  ADD PRIMARY KEY (`id_maskapai`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `tb_pesan_kapal`
--
ALTER TABLE `tb_pesan_kapal`
  ADD PRIMARY KEY (`no_pesanan_kapal`),
  ADD KEY `id_tiket_kapal` (`id_tiket_kapal`,`id_pengguna`,`id_pegawai`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `tb_pesan_kereta`
--
ALTER TABLE `tb_pesan_kereta`
  ADD PRIMARY KEY (`no_pesanan_kereta`),
  ADD KEY `no_pesanan_kereta` (`id_tiket_kereta`,`id_pengguna`,`id_pegawai`) USING BTREE,
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `tb_pesan_pesawat`
--
ALTER TABLE `tb_pesan_pesawat`
  ADD PRIMARY KEY (`no_pesan_pesawat`),
  ADD KEY `id_tiket_pesawat` (`id_tiket_pesawat`,`id_pengguna`,`id_pegawai`),
  ADD KEY `id_pengguna` (`id_pengguna`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `tb_tiket_kapal`
--
ALTER TABLE `tb_tiket_kapal`
  ADD PRIMARY KEY (`id_tiket_kapal`),
  ADD KEY `id_kapal` (`id_kapal`,`id_jadwal`,`id_kota_asal`,`id_kota_tujuan`),
  ADD KEY `id_kota_asal` (`id_kota_asal`),
  ADD KEY `id_kota_tujuan` (`id_kota_tujuan`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indeks untuk tabel `tb_tiket_kereta`
--
ALTER TABLE `tb_tiket_kereta`
  ADD PRIMARY KEY (`id_tiket_kereta`),
  ADD KEY `id_kereta` (`id_kereta`,`id_jadwal`,`id_kota_asal`,`id_kota_tujuan`),
  ADD KEY `id_kota_asal` (`id_kota_asal`),
  ADD KEY `id_kota_tujuan` (`id_kota_tujuan`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indeks untuk tabel `tb_tiket_pesawat`
--
ALTER TABLE `tb_tiket_pesawat`
  ADD PRIMARY KEY (`id_tiket_pesawat`),
  ADD KEY `id_maskapai` (`id_maskapai`,`id_jadwal`,`id_kota_asal`,`id_kota_tujuan`),
  ADD KEY `id_kota_asal` (`id_kota_asal`),
  ADD KEY `id_kota_tujuan` (`id_kota_tujuan`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_jadwal`
--
ALTER TABLE `tb_jadwal`
  ADD CONSTRAINT `tb_jadwal_ibfk_1` FOREIGN KEY (`id_jadwal_untuk`) REFERENCES `tb_jadwal_untuk` (`id_jadwal_untuk`);

--
-- Ketidakleluasaan untuk tabel `tb_pesan_kapal`
--
ALTER TABLE `tb_pesan_kapal`
  ADD CONSTRAINT `tb_pesan_kapal_ibfk_1` FOREIGN KEY (`id_tiket_kapal`) REFERENCES `tb_tiket_kapal` (`id_tiket_kapal`),
  ADD CONSTRAINT `tb_pesan_kapal_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `tb_pengguna` (`id_pengguna`),
  ADD CONSTRAINT `tb_pesan_kapal_ibfk_3` FOREIGN KEY (`id_pegawai`) REFERENCES `tb_pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `tb_pesan_kereta`
--
ALTER TABLE `tb_pesan_kereta`
  ADD CONSTRAINT `tb_pesan_kereta_ibfk_1` FOREIGN KEY (`id_tiket_kereta`) REFERENCES `tb_tiket_kereta` (`id_tiket_kereta`),
  ADD CONSTRAINT `tb_pesan_kereta_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `tb_pengguna` (`id_pengguna`),
  ADD CONSTRAINT `tb_pesan_kereta_ibfk_3` FOREIGN KEY (`id_pegawai`) REFERENCES `tb_pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `tb_pesan_pesawat`
--
ALTER TABLE `tb_pesan_pesawat`
  ADD CONSTRAINT `tb_pesan_pesawat_ibfk_1` FOREIGN KEY (`id_tiket_pesawat`) REFERENCES `tb_tiket_pesawat` (`id_tiket_pesawat`),
  ADD CONSTRAINT `tb_pesan_pesawat_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `tb_pengguna` (`id_pengguna`),
  ADD CONSTRAINT `tb_pesan_pesawat_ibfk_3` FOREIGN KEY (`id_pegawai`) REFERENCES `tb_pegawai` (`id_pegawai`);

--
-- Ketidakleluasaan untuk tabel `tb_tiket_kapal`
--
ALTER TABLE `tb_tiket_kapal`
  ADD CONSTRAINT `tb_tiket_kapal_ibfk_1` FOREIGN KEY (`id_kota_asal`) REFERENCES `tb_kota` (`id_kota`),
  ADD CONSTRAINT `tb_tiket_kapal_ibfk_2` FOREIGN KEY (`id_kota_tujuan`) REFERENCES `tb_kota` (`id_kota`),
  ADD CONSTRAINT `tb_tiket_kapal_ibfk_3` FOREIGN KEY (`id_kapal`) REFERENCES `tb_kapal` (`id_kapal`),
  ADD CONSTRAINT `tb_tiket_kapal_ibfk_4` FOREIGN KEY (`id_jadwal`) REFERENCES `tb_jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `tb_tiket_kereta`
--
ALTER TABLE `tb_tiket_kereta`
  ADD CONSTRAINT `tb_tiket_kereta_ibfk_1` FOREIGN KEY (`id_kota_asal`) REFERENCES `tb_kota` (`id_kota`),
  ADD CONSTRAINT `tb_tiket_kereta_ibfk_2` FOREIGN KEY (`id_kota_tujuan`) REFERENCES `tb_kota` (`id_kota`),
  ADD CONSTRAINT `tb_tiket_kereta_ibfk_3` FOREIGN KEY (`id_kereta`) REFERENCES `tb_kereta` (`id_kereta`),
  ADD CONSTRAINT `tb_tiket_kereta_ibfk_4` FOREIGN KEY (`id_jadwal`) REFERENCES `tb_jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `tb_tiket_pesawat`
--
ALTER TABLE `tb_tiket_pesawat`
  ADD CONSTRAINT `tb_tiket_pesawat_ibfk_1` FOREIGN KEY (`id_kota_asal`) REFERENCES `tb_kota` (`id_kota`),
  ADD CONSTRAINT `tb_tiket_pesawat_ibfk_2` FOREIGN KEY (`id_kota_tujuan`) REFERENCES `tb_kota` (`id_kota`),
  ADD CONSTRAINT `tb_tiket_pesawat_ibfk_3` FOREIGN KEY (`id_maskapai`) REFERENCES `tb_maskapai` (`id_maskapai`),
  ADD CONSTRAINT `tb_tiket_pesawat_ibfk_4` FOREIGN KEY (`id_jadwal`) REFERENCES `tb_jadwal` (`id_jadwal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
