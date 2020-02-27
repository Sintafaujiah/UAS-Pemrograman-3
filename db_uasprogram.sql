-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 06:56 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uasprogram`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_barang`
--

CREATE TABLE `t_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategory_id` int(11) NOT NULL,
  `satuan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_barang`
--

INSERT INTO `t_barang` (`id_barang`, `nama_barang`, `kategory_id`, `satuan_id`) VALUES
(101, 'ABC Kecap Asin', 201, 301),
(102, 'ABC Sambal Asli', 202, 302),
(103, 'Anlene Gold Coklat', 203, 303),
(104, 'Attact Easy', 204, 304),
(105, 'Baygon Aerosol Yellow', 205, 305),
(106, 'Big Babol Semangka', 206, 306),
(107, 'Biskuat Energi Plus Choco', 207, 307),
(108, 'Boneto Coklat', 208, 308),
(109, 'Buavita Apple Juice', 209, 309),
(110, 'Chitato Barbeque', 210, 310);

-- --------------------------------------------------------

--
-- Table structure for table `t_kategory`
--

CREATE TABLE `t_kategory` (
  `id_kategory` int(11) NOT NULL,
  `nama_kategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_kategory`
--

INSERT INTO `t_kategory` (`id_kategory`, `nama_kategory`) VALUES
(201, 'Kecap'),
(202, 'Sambal'),
(203, 'Susu'),
(204, 'Sabun'),
(205, 'Obat'),
(206, 'Permen'),
(207, 'Makanan'),
(208, 'Susu'),
(209, 'Minuman'),
(210, 'Makanan');

-- --------------------------------------------------------

--
-- Table structure for table `t_satuan`
--

CREATE TABLE `t_satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_satuan`
--

INSERT INTO `t_satuan` (`id_satuan`, `nama_satuan`) VALUES
(301, '140 ml'),
(302, '625 ml'),
(303, '600 gr'),
(304, '900 gr'),
(305, '750 ml'),
(306, '70 gr'),
(307, '23 gr'),
(308, '700 gr'),
(309, '1 L'),
(310, '30 gr');

-- --------------------------------------------------------

--
-- Table structure for table `t_transaksi`
--

CREATE TABLE `t_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `nama_transaksi` varchar(100) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_transaksi`
--

INSERT INTO `t_transaksi` (`id_transaksi`, `nama_transaksi`, `tgl_transaksi`, `harga`, `qty`, `id_barang`) VALUES
(1, 'ABC Kecap Asin 140 ml', '2020-02-15', 11000, 2, 101),
(2, 'ABC Sambal Asli 625 ml', '2020-02-16', 12000, 1, 102),
(3, 'Anlene Gold Coklat Box 600 gr', '2020-02-17', 45000, 1, 103),
(4, 'Attact Easy 900 gr', '2020-02-18', 25000, 2, 104),
(5, 'Boneto Coklat 700 gr', '2020-02-19', 8500, 2, 108),
(6, 'Buavita Apple Juice 1 L', '2020-02-20', 10000, 3, 109),
(7, 'Chitato Barbeque 30 gr', '2020-02-21', 7500, 4, 110),
(8, 'Chitato Barbeque 30 gr', '2020-02-22', 7500, 2, 110),
(9, 'Chitato Barbeque 30 gr', '2020-02-23', 7500, 3, 110),
(10, 'Attact Easy 900 gr', '2020-02-24', 25000, 1, 104);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_barang`
--
ALTER TABLE `t_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `kategory_id` (`kategory_id`),
  ADD KEY `satuan_id` (`satuan_id`);

--
-- Indexes for table `t_kategory`
--
ALTER TABLE `t_kategory`
  ADD PRIMARY KEY (`id_kategory`);

--
-- Indexes for table `t_satuan`
--
ALTER TABLE `t_satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `t_transaksi`
--
ALTER TABLE `t_transaksi`
  ADD KEY `id_barang` (`id_barang`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
