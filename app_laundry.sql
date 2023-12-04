-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 05:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `history_hapus_user`
--

CREATE TABLE `history_hapus_user` (
  `id_log` int(11) NOT NULL,
  `id_user` char(20) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(6) DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `no_hp` char(12) DEFAULT NULL,
  `akses` enum('admin','kasir') DEFAULT NULL,
  `waktu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_hapus_user`
--

INSERT INTO `history_hapus_user` (`id_log`, `id_user`, `nama`, `username`, `password`, `alamat`, `no_hp`, `akses`, `waktu`) VALUES
(92, '1203185743', 'Aprilia Dwi Wahyuni', 'april123', 'april1', 'Jl. Riau', '081231457391', 'kasir', '2023-05-27'),
(93, '8657123127', 'Muhammad Syahroni', 'roni1234', 'roni12', 'Jl. Tawangmangu', '081231345743', 'admin', '2023-05-30'),
(94, '8671231246', 'Aprilia Dwi Wahyuni', 'april123', 'april1', 'Jl. Rezeki', '081231467542', 'kasir', '2023-05-30'),
(95, '106839281734', 'Agung Kurniawan', 'agung123', 'agung1', 'Jl. Kaliurang', '081231457432', 'admin', '2023-05-30'),
(96, '0237049605', 'Agung kurniawann', 'agung123', 'agung1', 'JL kaliurang', '087767789987', 'kasir', '2023-05-30'),
(97, '0896123241', 'Agung okok', 'helloworld', 'hellow', 'Okok bang', '081213124123', 'kasir', '2023-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `history_transaksi`
--

CREATE TABLE `history_transaksi` (
  `id_hist` int(11) NOT NULL,
  `kode_order` char(20) NOT NULL,
  `id_user_awl` char(20) DEFAULT NULL,
  `id_user_br` char(20) DEFAULT NULL,
  `grand_total_awl` int(6) DEFAULT NULL,
  `grand_total_br` int(6) DEFAULT NULL,
  `bayar_awl` int(11) DEFAULT NULL,
  `bayar_br` int(11) DEFAULT NULL,
  `kurang_byr_awl` int(11) DEFAULT NULL,
  `kurang_byr_bru` int(11) DEFAULT NULL,
  `status_byr_awl` varchar(50) DEFAULT NULL,
  `status_byr_br` varchar(50) DEFAULT NULL,
  `kembalian_awl` int(11) DEFAULT NULL,
  `kembalian_br` int(11) DEFAULT NULL,
  `status_ambil_awl` varchar(50) DEFAULT NULL,
  `status_amblbr` varchar(50) DEFAULT NULL,
  `waktu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history_transaksi`
--

INSERT INTO `history_transaksi` (`id_hist`, `kode_order`, `id_user_awl`, `id_user_br`, `grand_total_awl`, `grand_total_br`, `bayar_awl`, `bayar_br`, `kurang_byr_awl`, `kurang_byr_bru`, `status_byr_awl`, `status_byr_br`, `kembalian_awl`, `kembalian_br`, `status_ambil_awl`, `status_amblbr`, `waktu`) VALUES
(104, 'TR0001', '123345671912', '123345671912', 12500, 12500, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 37500, 37500, 'belum di ambil', 'sudah di ambil', '2023-05-27'),
(105, 'TR0002', '123345671912', '123345671912', 7500, 7500, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 42500, 42500, 'belum di ambil', 'sudah di ambil', '2023-05-27'),
(106, 'TR0004', '123345671912', '123345671912', 12500, 12500, 90000, 90000, 0, 0, 'Lunas', 'Lunas', 77500, 77500, 'belum di ambil', 'sudah di ambil', '2023-05-27'),
(107, 'TR0007', '123345671912', '123345671912', 15000, 15000, 78999, 78999, 0, 0, 'Lunas', 'Lunas', 63999, 63999, 'belum di ambil', 'sudah di ambil', '2023-05-29'),
(108, 'TR0009', '0237049605', '0237049605', 5000, 5000, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 45000, 45000, 'belum di ambil', 'sudah di ambil', '2023-05-30'),
(109, 'TR0011', '123345671912', '123345671912', 37500, 37500, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 12500, 12500, 'belum di ambil', 'sudah di ambil', '2023-06-09'),
(111, 'TR0018', '123345671912', '123345671912', 33500, 33500, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 16500, 16500, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(112, 'TR0008', '123345671912', '123345671912', 12500, 12500, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 37500, 37500, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(113, 'TR0005', '123345671912', '123345671912', 17500, 17500, 90000, 90000, 0, 0, 'Lunas', 'Lunas', 72500, 72500, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(114, 'TR0006', '123345671912', '123345671912', 17500, 17500, 89999, 89999, 0, 0, 'Lunas', 'Lunas', 72499, 72499, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(115, 'TR0012', '123345671912', '123345671912', 25000, 25000, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 25000, 25000, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(116, 'TR0003', '123345671912', '123345671912', 10000, 10000, 90000, 90000, 0, 0, 'Lunas', 'Lunas', 80000, 80000, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(117, 'TR0013', '123345671912', '123345671912', 22500, 22500, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 27500, 27500, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(118, 'TR0014', '123345671912', '123345671912', 25000, 25000, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 25000, 25000, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(119, 'TR0015', '123345671912', '123345671912', 19000, 19000, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 31000, 31000, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(120, 'TR0016', '123345671912', '123345671912', 18000, 18000, 90000, 90000, 0, 0, 'Lunas', 'Lunas', 72000, 72000, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(121, 'TR0020', '123345671912', '123345671912', 3500, 3500, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 46500, 46500, 'belum di ambil', 'sudah di ambil', '2023-06-14'),
(122, 'TR0025', '0237049605', '0237049605', 19000, 19000, 20000, 20000, 0, 0, 'Lunas', 'Lunas', 1000, 1000, 'belum di ambil', 'sudah di ambil', '2023-06-15'),
(123, 'TR0026', '0237049605', '123345671912', 12000, 12000, 20000, 20000, 0, 0, 'Lunas', 'Lunas', 8000, 8000, 'belum di ambil', 'sudah di ambil', '2023-06-15'),
(124, 'TR0027', '0237049605', '123345671912', 20000, 20000, 20000, 20000, 0, 0, 'Lunas', 'Lunas', 0, 0, 'belum di ambil', 'sudah di ambil', '2023-06-15'),
(125, 'TR0026', '123345671912', '123345671912', 12000, 12000, 20000, 20000, 0, 0, 'Lunas', 'Lunas', 8000, 8000, 'belum di ambil', 'sudah di ambil', '2023-06-15'),
(126, 'TR0028', '0237049605', '0237049605', 15500, 15500, 15500, 15500, 0, 0, 'Lunas', 'Lunas', 0, 0, 'belum di ambil', 'belum di ambil', '2023-06-15'),
(127, 'TR0027', '123345671912', '123345671912', 14500, 14500, 50000, 50000, 0, 0, 'Lunas', 'Lunas', 35500, 35500, 'belum di ambil', 'sudah di ambil', '2023-06-22'),
(128, 'TR0030', '123345671912', '123345671912', 12000, 12000, 10000, 2000, 2000, 0, 'Kurang', 'Lunas', 0, 0, 'belum di ambil', 'sudah di ambil', '2023-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `kd_paket` char(6) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `jenis_paket` enum('satuan','kiloan') NOT NULL,
  `harga` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`kd_paket`, `nama_paket`, `jenis_paket`, `harga`) VALUES
('PK0001', 'Cuci Kering', 'kiloan', 2500),
('PK0002', 'Cuci Kering + Setrika', 'kiloan', 3500),
('PK0003', 'Cuci Tangan + Setrika', 'kiloan', 3500),
('PK0004', 'Cuci Selimut', 'satuan', 3000),
('PK0005', 'Cuci Sprei', 'kiloan', 3000),
('PK0006', 'Cuci Bed Cover', 'satuan', 2500);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` char(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` char(13) NOT NULL,
  `tanggal_ditambahkan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telp`, `tanggal_ditambahkan`) VALUES
('PL0004', '', 'Jl. Gajah Mada', '081231457612', '2023-05-27'),
('PL0008', 'Rehan Maulana', 'Jl. Jawa No.21', '081231234571', '2023-06-09'),
('PL0009', 'Joni Sambo', 'Jl. Riau No.55', '081231231342', '2023-06-14'),
('PL0010', 'Icha Riska Nadilla', 'Jl. Jawa No.20', '082314357481', '2023-06-15'),
('PL0011', 'Aftitah Hanes', 'Jl. Jawa No.24', '081235746123', '2023-06-15'),
('PL0012', 'Nurul Aulia Salsabilla', 'Jl. Jawa No.1', '081235968212', '2023-06-15'),
('PL0013', 'Yoga Prasetia', 'Jl. Tawang Mangu No.2', '082313456471', '2023-06-15'),
('PL0014', 'Febry Setiawan', 'Jl. Tawang Mangu No.2', '082134563712', '2023-06-15'),
('PL0015', 'Ajiz Sempalprak', 'Jl. Tawang Mangu No.3', '081231345743', '2023-06-15'),
('PL0016', 'Denny Mariyono', 'Jl. Tawang Mangu No.10', '081231457432', '2023-06-15'),
('PL0017', 'Ferdy Sambo', 'Jl. Jawa No.22', '081213245345', '2023-06-15'),
('PL0018', 'Salsabilla Armili', 'Jl. Kalimantan No.22', '081231465712', '2023-06-15'),
('PL0019', 'Rudi Irawan', 'Jl. Kalimantan No.33', '081231232432', '2023-06-15'),
('PL0020', 'Bintang Nur', 'Jl. Kalimantan No.1', '081231475812', '2023-06-15'),
('PL0021', 'Hazim Fikri', 'Jl. Riau No.10', '081231457687', '2023-06-15'),
('PL0022', 'Dia Intan Lestari', 'Jl. Karimata No.11', '082314356456', '2023-06-15'),
('PL0023', 'Irgi Rizqoni', 'Jl. Tawang Mangu No.22', '081231243561', '2023-06-15'),
('PL0024', 'Icha Riska', 'Jl. Tawang Mangu', '082131247172', '2023-06-15'),
('PL0025', 'Arie fajar', 'jl tawamngu', '086654567876', '2023-06-15'),
('PL0026', 'ahmad', 'jln jawa', '087698763907', '2023-06-15'),
('PL0027', 'insan', 'jl semanggi', '0987654567898', '2023-06-22'),
('PL0028', 'lina liliana', 'jember kota', '0987654345679', '2023-06-22'),
('PL0029', 'BUDI BUDIMAN', 'Mastrip', '12345678901', '2023-06-22'),
('PL0030', 'reja alrizki', 'jl sumatra 5', '0897643236324', '2023-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `kd_pengeluaran` char(15) NOT NULL,
  `tanggal_pengeluaran` date NOT NULL,
  `total` int(5) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`kd_pengeluaran`, `tanggal_pengeluaran`, `total`, `keterangan`) VALUES
('PK0001', '2023-05-27', 120000, 'Listrik, Pewangi'),
('PK0002', '2023-06-01', 10000, 'Pewangi'),
('PK0003', '2023-06-15', 143000, 'Listrik, Pewangi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_order`
--

CREATE TABLE `tbl_detail_order` (
  `kode_order` char(20) NOT NULL,
  `kd_paket` char(6) NOT NULL,
  `qty` int(2) NOT NULL,
  `subtotal` int(5) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_detail_order`
--

INSERT INTO `tbl_detail_order` (`kode_order`, `kd_paket`, `qty`, `subtotal`, `keterangan`) VALUES
('TR0001', 'PK0001', 5, 12500, 'jaket,baju'),
('TR0002', 'PK0001', 3, 7500, 'jaket,baju'),
('TR0003', 'PK0001', 4, 10000, 'jaket,baju'),
('TR0004', 'PK0001', 5, 12500, 'jaket,baju'),
('TR0005', 'PK0001', 7, 17500, 'jaket,baju'),
('TR0006', 'PK0001', 7, 17500, 'jaket,baju'),
('TR0007', 'PK0001', 6, 15000, 'jaket,baju'),
('TR0008', 'PK0001', 5, 12500, 'jaket,baju'),
('TR0009', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0010', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0010', 'PK0002', 2, 7000, 'Sarung'),
('TR0010', 'PK0003', 2, 7000, ''),
('TR0010', 'PK0004', 2, 6000, 'bonita'),
('TR0010', 'PK0005', 2, 6000, 'bonita'),
('TR0011', 'PK0001', 7, 17500, 'jaket,baju'),
('TR0011', 'PK0003', 2, 7000, ''),
('TR0011', 'PK0002', 2, 7000, 'Sarung'),
('TR0011', 'PK0004', 2, 6000, 'bonita'),
('TR0012', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0012', 'PK0002', 2, 7000, 'Sarung'),
('TR0012', 'PK0003', 2, 7000, ''),
('TR0012', 'PK0004', 2, 6000, 'bonita'),
('TR0013', 'PK0001', 1, 2500, 'jaket,baju'),
('TR0013', 'PK0002', 2, 7000, 'Sarung'),
('TR0013', 'PK0003', 2, 7000, ''),
('TR0013', 'PK0004', 2, 6000, 'bonita'),
('TR0014', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0014', 'PK0002', 2, 7000, 'Sarung'),
('TR0014', 'PK0003', 2, 7000, ''),
('TR0014', 'PK0004', 2, 6000, 'bonita'),
('TR0015', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0015', 'PK0002', 2, 7000, 'Sarung'),
('TR0015', 'PK0003', 2, 7000, ''),
('TR0016', 'PK0002', 2, 7000, 'Sarung'),
('TR0016', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0016', 'PK0005', 2, 6000, 'bonita'),
('TR0017', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0017', 'PK0002', 2, 7000, 'Sarung'),
('TR0017', 'PK0003', 2, 7000, ''),
('TR0017', 'PK0004', 2, 6000, 'bonita'),
('TR0018', 'PK0001', 4, 10000, 'jaket,baju'),
('TR0018', 'PK0002', 3, 10500, 'Sarung'),
('TR0018', 'PK0003', 2, 7000, ''),
('TR0018', 'PK0004', 2, 6000, 'bonita'),
('TR0019', 'PK0001', 7, 17500, 'jaket,baju'),
('TR0019', 'PK0002', 2, 7000, 'Sarung'),
('TR0019', 'PK0003', 2, 7000, ''),
('TR0019', 'PK0004', 2, 6000, 'bonita'),
('TR0020', 'PK0002', 1, 3500, 'Sarung'),
('TR0021', 'PK0003', 2, 7000, ''),
('TR0021', 'PK0004', 2, 6000, 'bonita'),
('TR0021', 'PK0006', 2, 6000, ''),
('TR0022', 'PK0002', 2, 7000, 'Sarung'),
('TR0023', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0024', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0024', 'PK0002', 3, 10500, ''),
('TR0024', 'PK0003', 1, 3500, ''),
('TR0024', 'PK0004', 3, 9000, 'bonita'),
('TR0025', 'PK0003', 2, 7000, ''),
('TR0025', 'PK0004', 2, 6000, 'bonita'),
('TR0026', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0026', 'PK0002', 2, 7000, ''),
('TR0027', 'PK0004', 2, 6000, 'bonita'),
('TR0027', 'PK0005', 2, 6000, 'bonita'),
('TR0027', 'PK0006', 1, 2500, ''),
('TR0028', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0028', 'PK0002', 3, 10500, ''),
('TR0029', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0029', 'PK0002', 2, 7000, ''),
('TR0030', 'PK0001', 2, 5000, 'jaket,baju'),
('TR0030', 'PK0003', 2, 7000, ''),
('TR0031', 'PK0006', 2, 5000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `kode_order` char(20) NOT NULL,
  `id_pelanggan` char(20) NOT NULL,
  `id_user` char(20) NOT NULL,
  `tgl_pesan` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `grand_total` int(5) NOT NULL,
  `bayar` int(5) NOT NULL,
  `kurang_bayar` int(5) NOT NULL,
  `status_bayar` enum('Lunas','Belum Bayar','Kurang') DEFAULT NULL,
  `kembalian` int(5) NOT NULL,
  `status_ambil` enum('sudah di ambil','belum di ambil') NOT NULL,
  `no_rak` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`kode_order`, `id_pelanggan`, `id_user`, `tgl_pesan`, `tgl_selesai`, `grand_total`, `bayar`, `kurang_bayar`, `status_bayar`, `kembalian`, `status_ambil`, `no_rak`) VALUES
('TR0022', 'PL0008', '123345671912', '2023-06-09', '2023-06-10', 7000, 20000, 0, 'Lunas', 13000, 'belum di ambil', 2),
('TR0023', 'PL0004', '123345671912', '2023-06-10', '2023-06-13', 5000, 50000, 0, 'Lunas', 45000, 'belum di ambil', 1),
('TR0024', 'PL0009', '123345671912', '2023-06-14', '2023-06-17', 28000, 20000, 8000, 'Kurang', 0, 'belum di ambil', 4),
('TR0025', 'PL0008', '123345671912', '2023-06-15', '2023-06-18', 13000, 50000, 0, 'Lunas', 37000, 'belum di ambil', 5),
('TR0026', 'PL0024', '123345671912', '2023-06-15', '2023-06-18', 12000, 20000, 0, 'Lunas', 8000, 'sudah di ambil', 1),
('TR0027', 'PL0016', '123345671912', '2023-06-15', '2023-06-19', 14500, 50000, 0, 'Lunas', 35500, 'sudah di ambil', 7),
('TR0028', 'PL0025', '0237049605', '2023-06-15', '2023-06-19', 15500, 15500, 0, 'Lunas', 0, 'belum di ambil', 4),
('TR0029', 'PL0027', '123345671912', '2023-06-22', '2023-06-26', 12000, 5000, 7000, 'Kurang', 0, 'belum di ambil', 4),
('TR0030', 'PL0028', '123345671912', '2023-06-22', '2023-06-25', 12000, 2000, 0, 'Lunas', 0, 'sudah di ambil', 3),
('TR0031', 'PL0030', '123345671912', '2023-06-22', '2023-06-23', 5000, 50000, 0, 'Lunas', 45000, 'belum di ambil', 24);

--
-- Triggers `tbl_order`
--
DELIMITER $$
CREATE TRIGGER `history_order` AFTER UPDATE ON `tbl_order` FOR EACH ROW BEGIN INSERT INTO history_transaksi SET kode_order=old.kode_order,id_user_awl=old.id_user,id_user_br=new.id_user,grand_total_awl=old.grand_total,
grand_total_br=new.grand_total,bayar_awl=old.bayar,bayar_br=new.bayar,
kurang_byr_awl=old.kurang_bayar,kurang_byr_bru=new.kurang_bayar,status_byr_awl=old.status_bayar,status_byr_br=new.status_bayar,kembalian_awl=old.kembalian,kembalian_br=new.kembalian,status_ambil_awl=old.status_ambil,status_amblbr=new.status_ambil,
waktu=NOW(); END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` char(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` char(12) NOT NULL,
  `akses` enum('admin','kasir') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `alamat`, `no_hp`, `akses`) VALUES
('0092735617', 'Muhammad Roni', 'roni123', 'roni123', 'JL. Kaliurang No.45', '082314231231', 'admin'),
('0121325743', 'Maghfirotul Umami', 'VII123', 'vii123', 'Gebang', '089636071906', 'kasir'),
('0237049605', 'Agung Kurniawan', 'agung123', 'helloworld', 'JL.Kaliurang', '081231243512', 'kasir'),
('123345671912', 'Dwi Ratna Amelia', 'ratna123', 'ratna123', 'Kota Jember', '081213456812', 'kasir');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `hapus_kasir` BEFORE DELETE ON `user` FOR EACH ROW BEGIN
INSERT INTO history_hapus_user SET id_user=old.id_user,nama =old.nama,username = old.username,password = old.password,alamat=old.alamat,no_hp=old.no_hp,akses=old.akses,waktu= NOW();
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history_hapus_user`
--
ALTER TABLE `history_hapus_user`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `history_transaksi`
--
ALTER TABLE `history_transaksi`
  ADD PRIMARY KEY (`id_hist`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`kd_paket`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`kd_pengeluaran`);

--
-- Indexes for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD KEY `kode_order` (`kode_order`),
  ADD KEY `kd_paket` (`kd_paket`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`kode_order`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `history_hapus_user`
--
ALTER TABLE `history_hapus_user`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `history_transaksi`
--
ALTER TABLE `history_transaksi`
  MODIFY `id_hist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_detail_order`
--
ALTER TABLE `tbl_detail_order`
  ADD CONSTRAINT `tbl_detail_order_ibfk_1` FOREIGN KEY (`kode_order`) REFERENCES `tbl_order` (`kode_order`),
  ADD CONSTRAINT `tbl_detail_order_ibfk_2` FOREIGN KEY (`kd_paket`) REFERENCES `paket` (`kd_paket`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `tbl_order_ibfk_3` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
