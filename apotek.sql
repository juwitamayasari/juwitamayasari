-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2017 at 08:06 
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE IF NOT EXISTS `karyawan` (
  `id_karyawan` varchar(5) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `alamat_karyawan` varchar(50) NOT NULL,
  `jkel_karyawan` varchar(50) NOT NULL,
  `tlp_karyawan` varchar(15) NOT NULL,
  PRIMARY KEY (`id_karyawan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`, `jkel_karyawan`, `tlp_karyawan`) VALUES
('K001', 'Indah Riski', 'Malang', 'perempuan', '087567465712'),
('K002', 'Irfan Nakhrul', 'Legok', 'lakilaki', '086576453645');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `hak_akses` enum('admin','user') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `hak_akses`) VALUES
('admin', 'admin', 'admin'),
('user', 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE IF NOT EXISTS `obat` (
  `id_obat` varchar(5) NOT NULL,
  `nama_obat` varchar(30) NOT NULL,
  `jenis_obat` varchar(20) NOT NULL,
  `tgl_kadaluarsa` date NOT NULL,
  `stok_obat` varchar(20) NOT NULL,
  `harga_obat` int(11) NOT NULL,
  PRIMARY KEY (`id_obat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `jenis_obat`, `tgl_kadaluarsa`, `stok_obat`, `harga_obat`) VALUES
('B001', 'Bodrex', 'Kapsul', '2017-12-01', '10', 10000),
('B002', 'Ultraflu', 'Kapsul', '2017-12-13', '1', 5000),
('B003', 'Masako', 'Bubuk', '2017-12-29', '5', 500),
('B004', 'Veminax', 'Kapsul', '2017-12-13', '8', 90000);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE IF NOT EXISTS `pembeli` (
  `no_pembeli` varchar(5) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `alamat_pembeli` varchar(50) NOT NULL,
  `umur_pembeli` varchar(15) NOT NULL,
  `tlp_pembeli` varchar(15) NOT NULL,
  PRIMARY KEY (`no_pembeli`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`no_pembeli`, `nama_pembeli`, `alamat_pembeli`, `umur_pembeli`, `tlp_pembeli`) VALUES
('P01', 'Indah Riski', 'Kepanjen', '18', '083757869857'),
('P02', 'Frisky Nita Rs', 'Bululawang', '19', '087665784653'),
('P03', 'Antonius Yanto Haki', 'Malang', '20', '085674563547'),
('P04', 'Juwita Mayasari', 'Dampit', '19', '086765764534'),
('P05', 'Aprilia Sukmaa', 'Surabaya', '21', '087766578744'),
('P06', 'Siti Sofiah', 'Dampit', '18', '086785875658');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` varchar(5) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `nama_obat` varchar(20) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `jumlah_beli` varchar(5) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `id_karyawan` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tgl_transaksi`, `nama_obat`, `harga_satuan`, `jumlah_beli`, `total_harga`, `id_karyawan`) VALUES
('T002', '2017-12-16', 'Ultraflu', 1000, '2', 2000, 'K002');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
