-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2024 at 05:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_order`
--

CREATE TABLE `tb_detail_order` (
  `id_dorder` int(11) NOT NULL,
  `check_available` int(11) NOT NULL,
  `id_order` varchar(50) NOT NULL,
  `id_masakan` int(11) NOT NULL,
  `keterangan_dorder` text DEFAULT NULL,
  `jumlah_dorder` int(11) NOT NULL,
  `hartot_dorder` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_dorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_detail_order`
--

INSERT INTO `tb_detail_order` (`id_dorder`, `check_available`, `id_order`, `id_masakan`, `keterangan_dorder`, `jumlah_dorder`, `hartot_dorder`, `id_user`, `status_dorder`) VALUES
(64, 1, 'ORD0001', 12, 'pedes', 6, 150000, 8, 0),
(65, 1, 'ORD0001', 16, '', 1, 9000, 8, 0),
(66, 2, 'ORD0002', 12, '', 1, 25000, 9, 1),
(67, 2, 'ORD0002', 27, '', 1, 10000, 9, 1),
(68, 3, 'ORD0003', 12, '', 1, 16000, 9, 1),
(69, 3, 'ORD0003', 16, '', 1, 5000, 9, 1),
(70, 4, 'ORD0004', 13, '', 1, 14000, 0, 1),
(71, 4, 'ORD0004', 18, '', 1, 4000, 0, 1),
(72, 5, 'ORD0005', 14, '', 1, 12000, 0, 1),
(73, 5, 'ORD0005', 17, '', 1, 5000, 0, 1),
(74, 6, 'ORD0006', 15, '', 1, 18000, 9, 1),
(75, 6, 'ORD0006', 20, '', 1, 8000, 9, 1),
(76, 7, 'ORD0007', 12, '', 3, 16000, 0, 1),
(77, 7, 'ORD0007', 16, '', 2, 5000, 0, 1),
(78, 8, 'ORD0008', 12, '', 1, 16000, 9, 1),
(79, 8, 'ORD0008', 16, '', 1, 5000, 9, 1),
(80, 9, 'ORD0009', 12, 'pedas', 1, 16000, 9, 1),
(81, 9, 'ORD0009', 16, '', 1, 5000, 9, 1),
(82, 10, 'ORD00010', 13, '', 1, 14000, 8, 1),
(84, 10, 'ORD00010', 14, '', 1, 12000, 8, 1),
(85, 11, 'ORD00011', 13, '', 1, 14000, 8, 1),
(86, 11, 'ORD00011', 14, '', 1, 12000, 8, 1),
(87, 12, 'ORD00012', 14, '', 1, 12000, 8, 1),
(88, 13, 'ORD00013', 13, '', 1, 14000, 19, 1),
(89, 13, 'ORD00013', 14, '', 1, 12000, 19, 1),
(90, 14, 'ORD00014', 13, '', 1, 14000, 19, 1),
(91, 14, 'ORD00014', 14, '', 1, 12000, 19, 1),
(92, 14, 'ORD00014', 16, '', 1, 5000, 19, 1),
(93, 15, 'ORD00015', 13, '', 1, 14000, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_level`
--

CREATE TABLE `tb_level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_level`
--

INSERT INTO `tb_level` (`id_level`, `level`) VALUES
(1, 'Administrator'),
(2, 'Waiter'),
(3, 'Kasir'),
(4, 'Owner'),
(5, 'Pelanggan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_masakan`
--

CREATE TABLE `tb_masakan` (
  `id_masakan` int(11) NOT NULL,
  `kategori_masakan` varchar(128) NOT NULL,
  `nama_masakan` varchar(128) NOT NULL,
  `harga_masakan` int(128) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status_masakan` int(1) NOT NULL,
  `deskripsi_masakan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_masakan`
--

INSERT INTO `tb_masakan` (`id_masakan`, `kategori_masakan`, `nama_masakan`, `harga_masakan`, `foto`, `status_masakan`, `deskripsi_masakan`) VALUES
(12, 'Makanan', 'Mie ayam bakso', 16000, 'Mie ayam bakso.jpg', 1, 'mie ayam enaak'),
(13, 'Makanan', 'Mie ayam pangsit', 14000, 'Mie ayam pangsit.jpg', 1, ''),
(14, 'Makanan', 'Mie ayam original', 12000, 'Mie ayam original.jpg', 1, ''),
(15, 'Makanan', 'Mie ayam ceker', 18000, 'Mie ayam ceker.jpg', 0, ''),
(16, 'Minuman', 'Es teh manis', 5000, 'Es teh manis.jpg', 1, ''),
(17, 'Minuman', 'Es jeruk', 5000, 'Es jeruk.jpg', 0, ''),
(18, 'Minuman', 'Vit', 4000, 'Vit.jpg', 1, ''),
(19, 'Minuman', 'Le Minerale', 5000, 'Le minerale.jpg', 1, ''),
(20, 'Minuman', 'Jus Jeruk', 8000, '27022020052912jus-jeruk.jpg', 0, ''),
(21, 'Makanan', 'Mie ayam komplit', 20000, 'Mie ayam komplit.jpg', 0, ''),
(22, 'Makanan', 'Mie yamin original', 12000, 'Mie yamin original.jpg', 1, ''),
(23, 'Makanan', 'Mie yamin pangsit', 14000, 'Mie yamin pangsit.jpg', 1, ''),
(24, 'Makanan', 'Mie yamin bakso', 16000, 'Mie yamin bakso.jpg', 1, ''),
(25, 'Minuman', 'Jus Jambu', 9000, '29022020064540jambu.jpg', 0, ''),
(26, 'Minuman', 'Jus Strawberri', 8000, '29022020064611stro.jpg', 0, ''),
(27, 'Minuman', 'Jus Alpukat', 10000, '27022020052842alpukat.webp', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_meja`
--

CREATE TABLE `tb_meja` (
  `meja_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_meja`
--

INSERT INTO `tb_meja` (`meja_id`, `status`) VALUES
(1, 1),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` varchar(50) NOT NULL,
  `meja_order` int(11) NOT NULL,
  `tanggal_order` int(11) NOT NULL,
  `aTanggal_order` varchar(128) NOT NULL,
  `id_user` int(11) NOT NULL,
  `keterangan_order` text DEFAULT NULL,
  `status_order` varchar(20) NOT NULL,
  `metode_pembayaran` varchar(9) NOT NULL DEFAULT 'tunai'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `meja_order`, `tanggal_order`, `aTanggal_order`, `id_user`, `keterangan_order`, `status_order`, `metode_pembayaran`) VALUES
('ORD0001', 1, 1591074127, '02-06-2020', 8, 'jangan lama', '1', 'tunai'),
('ORD00010', 1, 1734248460, '15-12-2024', 8, 'cepaat', '0', 'non_tunai'),
('ORD00011', 2, 1734249302, '15-12-2024', 8, 'aaaa', '0', 'non_tunai'),
('ORD00012', 1, 1734249562, '15-12-2024', 8, '', '0', 'tunai'),
('ORD00013', 1, 1734275200, '15-12-2024', 19, '', '0', 'non_tunai'),
('ORD00014', 2, 1734275677, '15-12-2024', 19, '', '1', 'non_tunai'),
('ORD00015', 2, 1734276053, '15-12-2024', 19, '', '1', 'tunai'),
('ORD0002', 3, 1732448147, '24-11-2024', 9, '', '1', 'tunai'),
('ORD0003', 3, 1732538795, '25-11-2024', 9, '', '0', 'tunai'),
('ORD0004', 5, 1732538867, '25-11-2024', 0, '', '0', 'tunai'),
('ORD0005', 2, 1732539662, '25-11-2024', 6, '', '1', 'tunai'),
('ORD0006', 1, 1732542887, '25-11-2024', 9, '', '1', 'tunai'),
('ORD0007', 2, 1732547564, '25-11-2024', 9, '', '1', 'tunai'),
('ORD0008', 1, 1732547603, '25-11-2024', 9, 'engga', '1', 'tunai'),
('ORD0009', 2, 1732582664, '26-11-2024', 9, '', '1', 'tunai');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rating_komen_makanan`
--

CREATE TABLE `tb_rating_komen_makanan` (
  `id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 0 and `rating` <= 5),
  `komentar` text DEFAULT NULL,
  `id_masakan` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_rating_komen_makanan`
--

INSERT INTO `tb_rating_komen_makanan` (`id`, `rating`, `komentar`, `id_masakan`, `id_user`) VALUES
(1, 5, 'enaaak bgtt', 14, 8),
(2, 2, 'lumayan', 14, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_order` varchar(50) NOT NULL,
  `tanggal_transaksi` int(11) NOT NULL,
  `aTanggal_transaksi` varchar(50) NOT NULL,
  `hartot_transaksi` int(11) NOT NULL,
  `diskon_transaksi` int(11) NOT NULL,
  `totbar_transaksi` int(11) NOT NULL,
  `uang_transaksi` int(11) NOT NULL,
  `kembalian_transaksi` int(11) NOT NULL,
  `diskon_item_transaksi` varchar(20) NOT NULL,
  `metode_pembayaran` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_user`, `id_order`, `tanggal_transaksi`, `aTanggal_transaksi`, `hartot_transaksi`, `diskon_transaksi`, `totbar_transaksi`, `uang_transaksi`, `kembalian_transaksi`, `diskon_item_transaksi`, `metode_pembayaran`) VALUES
(26, 8, 'ORD0001', 1591074220, '02-06-2020', 159000, 50, 79500, 100000, 20500, '', ''),
(27, 9, 'ORD0002', 1732448264, '24-11-2024', 35000, 0, 35000, 50000, 15000, '', ''),
(28, 8, 'ORD0005', 1732539823, '25-11-2024', 17000, 0, 17000, 20000, 3000, '', ''),
(29, 8, 'ORD0006', 1732543081, '25-11-2024', 26000, 0, 26000, 30000, 4000, '', ''),
(30, 8, 'ORD0007', 1732547912, '25-11-2024', 21000, 0, 21000, 25000, 4000, '', ''),
(31, 0, 'ORD0008', 1732548023, '25-11-2024', 21000, 0, 21000, 25000, 4000, '', ''),
(32, 8, 'ORD0009', 1732582815, '26-11-2024', 21000, 0, 21000, 25000, 4000, '', ''),
(33, 8, 'ORD0009', 1734249331, '15-12-2024', 21000, 0, 21000, 30000, 9000, 'teh', ''),
(34, 8, 'ORD0008', 1734250013, '15-12-2024', 21000, 0, 21000, 25000, 4000, 'teh', 'qris'),
(35, 19, 'ORD00014', 1734275722, '15-12-2024', 31000, 0, 31000, 35000, 4000, 'teh', 'non_tunai'),
(36, 19, 'ORD00015', 1734276081, '15-12-2024', 14000, 0, 14000, 14000, 0, 'teh', 'tunai');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `id_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_user`, `id_level`) VALUES
(1, 'doni', '123', 'Reva Doni Aprilio', 1),
(2, 'tupik', '123', 'Taufik Hidayat', 2),
(6, 'andri', '123', 'Andri Priyandi', 3),
(7, 'pinu', '123', 'M. Finuary Renggalih', 4),
(8, 'yogas', '123', 'Yogas Destariansyah', 5),
(9, 'fajri', '123', 'Fajri Hijrian', 5),
(10, 'rafli', '123', 'Rafli Dwi Apriliant', 5),
(11, 'aziz', '123', 'Aziz Naufal Bagaskara Setiawan', 3),
(12, 'test', '123', 'test', 5),
(13, 'test1', '123', 'test1', 5),
(14, 'test2', '123', 'test2', 5),
(15, 'test3', 'test3', 'test3', 1),
(16, 'test', '123', 'test', 1),
(17, 'test', '123', 'test', 1),
(18, 'test', '123', 'test', 1),
(19, 'test4', '123', 'test4', 5),
(21, 'test5', '123', 'test5', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
  ADD PRIMARY KEY (`id_dorder`);

--
-- Indexes for table `tb_level`
--
ALTER TABLE `tb_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
  ADD PRIMARY KEY (`id_masakan`);

--
-- Indexes for table `tb_meja`
--
ALTER TABLE `tb_meja`
  ADD PRIMARY KEY (`meja_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `tb_rating_komen_makanan`
--
ALTER TABLE `tb_rating_komen_makanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_masakan` (`id_masakan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level` (`id_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_detail_order`
--
ALTER TABLE `tb_detail_order`
  MODIFY `id_dorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tb_level`
--
ALTER TABLE `tb_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_masakan`
--
ALTER TABLE `tb_masakan`
  MODIFY `id_masakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_meja`
--
ALTER TABLE `tb_meja`
  MODIFY `meja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_rating_komen_makanan`
--
ALTER TABLE `tb_rating_komen_makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_rating_komen_makanan`
--
ALTER TABLE `tb_rating_komen_makanan`
  ADD CONSTRAINT `tb_rating_komen_makanan_ibfk_1` FOREIGN KEY (`id_masakan`) REFERENCES `tb_masakan` (`id_masakan`),
  ADD CONSTRAINT `tb_rating_komen_makanan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
