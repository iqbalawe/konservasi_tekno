-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2018 at 05:49 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konservasi_tekno`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_fauna`
--

CREATE TABLE `tb_fauna` (
  `id` int(11) NOT NULL,
  `id_konservasi` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `fauna` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_fauna`
--

INSERT INTO `tb_fauna` (`id`, `id_konservasi`, `nama`, `fauna`) VALUES
(1, 1, 'Taman Nasional Gunung Gede Pangrango', 'Owa Jawa, Lutung Surili, Anjing Ajag, Macan Tutul, Biul Slentek, Bajing Terbang,Elang awa, Serak Bukti, Celepuk Jawa,'),
(2, 2, 'Taman Nasional Ujung Kulon', 'Badak Jawa, Banteng, Owa Jawa, Kancil, Rusa, Kijang, Surili, Anjing Hutan, Babi, Jelarang, Lutung, Kera Ekor Panjang,'),
(3, 2, 'Taman Nasional Baluran', 'Kucing Bakau, Kancil, Macan Tutul, Ajag, Kijang, Kerbau, Banteng, Ayam Hutan Merah, Burung Merak, Kangkareng'),
(4, 4, 'Taman Nasional Manusela', 'Rusa, Kuskus, Soa-soa, babi hutan, luwak, Duyung, Burung Nuri, Burung  Madu Seram, Kakatua Seram, Raja Udang.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_flora`
--

CREATE TABLE `tb_flora` (
  `id` int(11) NOT NULL,
  `id_konservasi` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `flora` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_flora`
--

INSERT INTO `tb_flora` (`id`, `id_konservasi`, `nama`, `flora`) VALUES
(1, 1, 'Taman Nasional Gunung Gede Pangrango', 'Batryohora geniculata, Cleidion spiciflorum, \nHeritiera percoriacea, dan Knema globularia.'),
(2, 2, 'Taman Nasional Ujung Kulon', 'Kiara, Kedongdong Hutan, Kanyere Badak, Hampelas, Gebang, Gadong,\nDahu, Burahol, Bayur, Teureup,'),
(3, 3, 'Taman Nasional Baluran', 'Widoro Bukol, Mimba, Pilang, Kendal, Api-Api, Kepuh, Gebang, Kemiri'),
(4, 4, 'Taman Nasional Manusela', 'Bakau, Api-api, Kapur, Meranti, benuang, Kasai, Kayu Putih, Angrek');

-- --------------------------------------------------------

--
-- Table structure for table `tb_harga`
--

CREATE TABLE `tb_harga` (
  `id` int(11) NOT NULL,
  `id_konservasi` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `harga_weekday` varchar(255) DEFAULT NULL,
  `harga_weekend` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_harga`
--

INSERT INTO `tb_harga` (`id`, `id_konservasi`, `nama`, `harga_weekday`, `harga_weekend`) VALUES
(1, 1, 'Taman Nasional Gunung Gede Pangrango', '(Wisatawan Domestik : Rp. 11.000 - Rp. 37.500) - (Wisatawan Asing : Kendaraan Roda 2 : Rp. 5.000 Kendaraan Roda 4 : Rp.10.000)', 'Wisatawan Domestik : Rp. 13.000  Rp. 40.000) - (Wisatawan Asing : Kendaraan Roda 2 : Rp. 5.000 Kendaraan Roda 4 : Rp. 10.000'),
(2, 2, 'Taman Nasional Ujung Kulon', '(Wisatawan Domestik : Rp. 5.000) - (Wisatawan Asing : Rp. 150.000 Kendaraan Roda 2 : Rp. 5.000 Kendaraan Roda 4 : Rp. 10.000)', '(Wisatawan Domestik : Rp. 7.500) - (Wisatawan Asing : Rp. 225.000 Kendaraan Roda 2 : Rp. 5.000 Kendaraan Roda 4 : Rp. 10.000'),
(3, 3, 'Taman Nasional Baluran', '(Wisatawan Domestik  : Rp. 5.000 Wisatawan Asing : Rp. 150.000 Kendaraan Roda 2 : Rp. 5.000 Kendaraan Roda 4 : Rp. 10.000)', '(Wisatawan Domestik : Rp. 7.500 Wisatawan Asing : Rp. 225.000 Kendaraan Roda 2 : Rp. 7.500 Kendaraan Roda 4 : Rp. 15.000'),
(4, 4, 'Taman Nasional Manusela', '(Wisatawan Domestik : Rp. 5.000 Wisatawan Asing : Rp. 150.000 Kendaraan Roda 2 : Rp. 5.000 Kendaraan Roda 4 : Rp. 10.000)', '(Wisatawan Domestik : Rp. 7.500 Wisatawan Asing : Rp. 225.000 Kendaraan Roda 2 : Rp. 7.500 Kendaraan Roda 4 : Rp. 15.000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_informasi`
--

CREATE TABLE `tb_informasi` (
  `id` int(11) NOT NULL,
  `id_konservasi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `informasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_informasi`
--

INSERT INTO `tb_informasi` (`id`, `id_konservasi`, `nama`, `informasi`) VALUES
(1, 1, ' Taman Nasional Gunung  Gede Pangrango', ' -Waktu Berkunjung yang baik Bulan Juni S.d September\n -Terdapat 5 Pintu masusk melalui Kebun Raya Cibodas, \n Situgunung, Selabintana Conference Resort, Bodogol'),
(2, 2, 'Taman Nasional Ujung Kulon', '-Waktu Berkunjung yang baik Bulan April S.d September\n-Terdapat 5 Pintu masusk melalui Pulau Panaitan, Labuan Malaysia,\n Stasiun Cibadak, Peucang Handerlerum, Sumur'),
(3, 3, 'Taman Nasional Baluran', '-Waktu Berkunjung yang baik Bulan Mei S.d Oktober (Kemarau)\n-Waktu Berkunjung yang baik Bulan November S.d April (Hujan)\n-Terdapat 3 Pintu masusk melalui Karangtekok, Barna/Batangan, Perengan'),
(4, 4, 'Taman Nasional Manusela', '-Waktu Berkunjung yang baik Bulan Mei S.d Oktober\n-Terdapat dua Pintu masuk melalui Saunolu dan Wahai');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengelolakonservasi`
--

CREATE TABLE `tb_pengelolakonservasi` (
  `id` int(11) NOT NULL,
  `id_konservasi` int(11) DEFAULT NULL,
  `nama_konservasi` varchar(100) DEFAULT NULL,
  `nama_pengelola` varchar(255) DEFAULT NULL,
  `nama_mentri` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `telpon` varchar(40) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengelolakonservasi`
--

INSERT INTO `tb_pengelolakonservasi` (`id`, `id_konservasi`, `nama_konservasi`, `nama_pengelola`, `nama_mentri`, `alamat`, `kecamatan`, `kabupaten`, `provinsi`, `telpon`, `website`) VALUES
(1, 1, 'Taman Nasional Gunung Gede Pangrango', 'Kementrian Lingkungan hidup dan Kehutanan Republik Indonesia', 'Siti Nurbaya Bakar', 'Kebon Nanas, Jalan DI. Panjaitan No.Kav. 24 Rt. 15/2', 'Jatinegara', 'Cipinang Besar', 'Jakarta', '(021) 5704501-04', 'menlhk.go.id'),
(2, 2, 'Taman Nasional Ujung Kulon', 'Kementrian Lingkungan hidup dan Kehutanan Republik Indonesia', 'Siti Nurbaya Bakar', 'Kebon Nanas, Jalan DI. Panjaitan No.Kav. 24 Rt. 15/2', 'Jatinegara', 'Cipinang Besar', 'Jakarta', '(021) 5704501-04', 'menlhk.go.id'),
(3, 3, 'Taman Nasional Baluran', 'Kementrian Lingkungan hidup dan Kehutanan Republik Indonesia', 'Siti Nurbaya Bakar', 'Kebon Nanas, Jalan DI. Panjaitan No.Kav. 24 Rt. 15/2', 'Jatinegara', 'Cipinang Besar', 'Jakarta', '(021) 5704501-04', 'menlhk.go.id'),
(4, 4, 'Taman Nasional Manusela', 'Kementrian Lingkungan hidup dan Kehutanan Republik Indonesia', 'Siti Nurbaya Bakar', 'Kebon Nanas, Jalan DI. Panjaitan No.Kav. 24 Rt. 15/2', 'Jatinegara', 'Cipinang Besar', 'Jakarta', '(021) 5704501-04', 'menlhk.go.id');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengunjung`
--

CREATE TABLE `tb_pengunjung` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `umur` varchar(10) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tmpt_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `no_telepon` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengunjung`
--

INSERT INTO `tb_pengunjung` (`id`, `nama`, `umur`, `alamat`, `tmpt_lahir`, `tgl_lahir`, `kecamatan`, `kelurahan`, `jk`, `no_telepon`, `email`) VALUES
(1, 'Umair', '19 tahun', 'Jalan Kebagusan2 No. 13', 'Jakarta', '1998-02-01', 'Kebagusan', 'Pasar Minggu', 'L', '08123456789', 'umairbijey@gmail.com'),
(2, 'Muhammad Rifki Chairil', '19 tahun', 'Jalan Nangka No 20a Rt 06/015', 'Depok', '1998-10-03', 'Beji', 'Beji', 'L', '08123456788', 'rfkchrl.03@gmail.com'),
(3, 'Iqbal Ajie Wahyudin', '20 tahun', 'Jalan Moch Kahfi 2 rt 009/08 No 47', 'Jakarta', '1997-12-25', 'Jagakarsa', 'Srengseng Sawah', 'L', '08123456787', 'iqbalajie25@gmail.com'),
(4, 'Rakha Diasry', '19 tahun', 'Kp sidamukti Rt. 04/07 No. 36', 'Bogor', '1998-09-23', 'Cilodong', 'Sukamaju', 'L', '08123456786', 'rakha.diasry@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengunjungan`
--

CREATE TABLE `tb_pengunjungan` (
  `id` int(11) NOT NULL,
  `id_konservasi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `hari_kunjung` varchar(100) DEFAULT NULL,
  `waktu_kunjung` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengunjungan`
--

INSERT INTO `tb_pengunjungan` (`id`, `id_konservasi`, `nama`, `hari_kunjung`, `waktu_kunjung`) VALUES
(1, 1, 'Taman Nasional Gunung  Gede Pangrango', 'Senin - Minggu', '09.00 - 15.30'),
(2, 2, 'Taman Nasional Ujung Kulon', 'Senin - Minggu', '09.00 - 15.30'),
(3, 3, 'Taman Nasional Baluran', 'Senin - Jumat', '07.30 - 16.00'),
(4, 4, 'Taman Nasional Manusela', 'Senin - Minggu', '09.00 - 16.00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengurus`
--

CREATE TABLE `tb_pengurus` (
  `id` int(11) NOT NULL,
  `id_konservasi` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `pengurus` varchar(50) DEFAULT NULL,
  `telpon` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyewaanalat`
--

CREATE TABLE `tb_penyewaanalat` (
  `id` int(11) NOT NULL,
  `id_konservasi` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penyewaanalat`
--

INSERT INTO `tb_penyewaanalat` (`id`, `id_konservasi`, `nama`, `alat`) VALUES
(1, 1, 'Taman Nasional Gunung Gede Pangrango', 'Tenda. Genset, Kasur, Sleeping Bag, Matras Spon, Ransel Caril, Neesting, Lampu Tembak, Flysheet, Kompor'),
(2, 2, 'Taman Nasional Ujung Kulon', 'Kapal, Alat Pancing, Homestay'),
(3, 3, 'Taman Nasional Baluran', 'Tenda, snorkeling, Kacamata Renang'),
(4, 4, 'Taman Nasional Manusela', 'Kapal, pancingan,tenda');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tempatkonservasi`
--

CREATE TABLE `tb_tempatkonservasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tempatkonservasi`
--

INSERT INTO `tb_tempatkonservasi` (`id`, `nama`, `alamat`, `kecamatan`, `kabupaten`, `provinsi`) VALUES
(1, 'Taman Nasional Gunung Gede Pangrango', 'Jalan Kebun Raya Cibodas', 'Cimacan - Cipanas', 'Cianjur', 'Jawa Barat'),
(2, 'Taman Nasional Ujung Kulon', 'Jalan Perintis Kemerdekaan No. 51, Banten 42264', 'Labuan Pandeglang', 'Pandeglang', 'Banten'),
(3, 'Taman Nasional Baluran', 'Jalan Raya Situbondo-Banyuwangi Desa Wonorejo', 'Banyu Putih', 'Situ Bondo', 'Jawa Timur'),
(4, 'Taman Nasional Manusela', 'Jalan Kelang 1 Kotak Pos 9', 'Seram Utara', 'Maluku Tengah', 'Maluku');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_fauna`
--
ALTER TABLE `tb_fauna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_flora`
--
ALTER TABLE `tb_flora`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_harga`
--
ALTER TABLE `tb_harga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_informasi`
--
ALTER TABLE `tb_informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengelolakonservasi`
--
ALTER TABLE `tb_pengelolakonservasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengunjung`
--
ALTER TABLE `tb_pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengunjungan`
--
ALTER TABLE `tb_pengunjungan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengurus`
--
ALTER TABLE `tb_pengurus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penyewaanalat`
--
ALTER TABLE `tb_penyewaanalat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tempatkonservasi`
--
ALTER TABLE `tb_tempatkonservasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_fauna`
--
ALTER TABLE `tb_fauna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_flora`
--
ALTER TABLE `tb_flora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_harga`
--
ALTER TABLE `tb_harga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_informasi`
--
ALTER TABLE `tb_informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_pengelolakonservasi`
--
ALTER TABLE `tb_pengelolakonservasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_pengunjung`
--
ALTER TABLE `tb_pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_pengunjungan`
--
ALTER TABLE `tb_pengunjungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_pengurus`
--
ALTER TABLE `tb_pengurus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_penyewaanalat`
--
ALTER TABLE `tb_penyewaanalat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_tempatkonservasi`
--
ALTER TABLE `tb_tempatkonservasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
