-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08 Feb 2016 pada 07.35
-- Versi Server: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_nearby`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE IF NOT EXISTS `harga` (
  `id_mentor` int(10) NOT NULL,
  `id_mapel` int(10) NOT NULL,
  `harga` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`id_mentor`, `id_mapel`, `harga`) VALUES
(1, 1, '$40.36'),
(2, 2, '$61.20'),
(3, 3, '$37.60'),
(4, 4, '$6.95'),
(5, 5, '$87.23'),
(6, 6, '$29.00'),
(7, 7, '$35.51'),
(8, 8, '$22.79'),
(9, 9, '$13.98'),
(10, 10, '$34.84'),
(11, 11, '$36.21'),
(12, 12, '$53.81'),
(13, 13, '$78.87'),
(14, 14, '$43.07'),
(15, 15, '$23.68'),
(16, 16, '$59.26'),
(17, 17, '$27.24'),
(18, 18, '$9.06'),
(19, 19, '$29.74'),
(20, 20, '$86.89'),
(21, 21, '$7.55'),
(22, 22, '$80.14'),
(23, 23, '$84.35'),
(24, 24, '$54.82'),
(25, 25, '$9.68'),
(26, 26, '$78.93'),
(27, 27, '$91.03'),
(28, 28, '$78.26'),
(29, 29, '$9.12'),
(30, 30, '$83.74');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_ketersediaan_mengajar`
--

CREATE TABLE IF NOT EXISTS `jadwal_ketersediaan_mengajar` (
  `id_mentor` int(10) NOT NULL,
`id_jadwal_ketersediaan` int(11) NOT NULL,
  `hari_ketersediaan` varchar(250) DEFAULT NULL,
  `waktu_ketersediaan` time DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal_ketersediaan_mengajar`
--

INSERT INTO `jadwal_ketersediaan_mengajar` (`id_mentor`, `id_jadwal_ketersediaan`, `hari_ketersediaan`, `waktu_ketersediaan`) VALUES
(1, 1, 'erat', '19:59:57'),
(2, 2, 'nunc', '02:42:15'),
(3, 3, 'vulputate', '20:37:23'),
(4, 4, 'a,', '12:32:18'),
(5, 5, 'quis', '06:34:57'),
(6, 6, 'sapien.', '14:22:53'),
(7, 7, 'eget', '13:23:48'),
(8, 8, 'fringilla', '14:27:16'),
(9, 9, 'Sed', '13:13:33'),
(10, 10, 'dictum', '00:11:23'),
(11, 11, 'libero.', '11:09:40'),
(12, 12, 'ipsum', '04:34:10'),
(13, 13, 'vitae', '22:00:56'),
(14, 14, 'magnis', '09:24:39'),
(15, 15, 'Suspendisse', '03:56:32'),
(16, 16, 'bibendum.', '16:08:01'),
(17, 17, 'lacus.', '10:45:07'),
(18, 18, 'pede.', '14:59:20'),
(19, 19, 'eu', '23:19:18'),
(20, 20, 'vitae,', '22:17:36'),
(21, 21, 'Nullam', '05:14:43'),
(22, 22, 'nec', '17:04:39'),
(23, 23, 'enim,', '05:47:22'),
(24, 24, 'eu', '10:02:40'),
(25, 25, 'tempor', '09:08:39'),
(26, 26, 'Sed', '01:40:51'),
(27, 27, 'ac', '08:15:53'),
(28, 28, 'fermentum', '00:08:06'),
(29, 29, 'posuere', '10:43:36'),
(30, 30, 'In', '06:46:21'),
(31, 31, 'ut', '20:27:25'),
(32, 32, 'feugiat', '02:50:58'),
(33, 33, 'Sed', '11:05:12'),
(34, 34, 'ut,', '18:30:33'),
(35, 35, 'sit', '09:17:29'),
(36, 36, 'ultricies', '17:08:05'),
(37, 37, 'amet', '23:05:47'),
(38, 38, 'pretium', '08:44:26'),
(39, 39, 'at', '22:53:45'),
(40, 40, 'mi', '18:47:19'),
(41, 41, 'sodales', '02:43:17'),
(42, 42, 'Duis', '16:43:57'),
(43, 43, 'diam', '06:41:09'),
(44, 44, 'dolor,', '13:41:14'),
(45, 45, 'urna.', '02:40:53'),
(46, 46, 'Nunc', '22:55:47'),
(47, 47, 'lobortis', '13:35:38'),
(48, 48, 'arcu', '10:27:41'),
(49, 49, 'sed', '22:45:34'),
(50, 50, 'cursus.', '13:30:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_mapel` int(11) NOT NULL,
  `id_mentor` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
`id_kelas` int(11) NOT NULL,
  `waktu_masuk` time DEFAULT NULL,
  `waktu_keluar` time DEFAULT NULL,
  `harga` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_mapel`, `id_mentor`, `id_siswa`, `id_kelas`, `waktu_masuk`, `waktu_keluar`, `harga`) VALUES
(1, 1, 1, 1, '03:12:17', '03:44:36', '$9,975'),
(2, 2, 2, 2, '10:27:10', '10:32:36', '$8,200'),
(3, 3, 3, 3, '07:45:44', '22:51:05', '$5,788'),
(4, 4, 4, 4, '00:49:56', '20:02:45', '$7,250'),
(5, 5, 5, 5, '10:45:24', '16:12:47', '$6,061'),
(6, 6, 6, 6, '13:31:25', '02:07:44', '$7,958'),
(7, 7, 7, 7, '04:33:41', '22:52:24', '$7,038'),
(8, 8, 8, 8, '04:29:16', '01:40:02', '$6,330'),
(9, 9, 9, 9, '13:41:33', '22:47:56', '$5,715'),
(10, 10, 10, 10, '02:37:58', '07:25:57', '$6,286'),
(11, 11, 11, 11, '18:03:27', '00:28:29', '$7,150'),
(12, 12, 12, 12, '17:42:39', '12:46:15', '$6,692'),
(13, 13, 13, 13, '20:51:28', '23:46:18', '$9,724'),
(14, 14, 14, 14, '01:56:58', '14:37:53', '$6,833'),
(15, 15, 15, 15, '12:17:33', '21:12:56', '$9,365'),
(16, 1, 16, 16, '02:38:41', '15:38:11', '$7,375'),
(17, 2, 17, 17, '06:54:30', '06:27:18', '$9,735'),
(18, 3, 18, 18, '14:33:30', '02:19:59', '$8,618'),
(19, 4, 19, 19, '08:35:48', '20:08:21', '$8,731'),
(20, 5, 20, 20, '05:25:28', '05:44:37', '$9,221'),
(21, 6, 21, 21, '03:20:49', '13:53:41', '$8,182'),
(22, 7, 22, 22, '10:38:34', '04:40:48', '$8,113'),
(23, 8, 23, 23, '10:53:35', '22:29:05', '$9,212'),
(24, 9, 24, 24, '13:44:53', '05:10:38', '$9,554'),
(25, 10, 25, 25, '19:55:33', '01:42:47', '$7,675'),
(26, 11, 26, 26, '02:54:01', '21:23:04', '$6,114'),
(27, 12, 27, 27, '13:26:46', '15:33:21', '$8,468'),
(28, 13, 28, 28, '13:40:23', '05:46:52', '$8,164'),
(29, 14, 29, 29, '05:55:00', '21:45:48', '$5,342'),
(30, 15, 30, 30, '09:14:55', '05:16:18', '$5,361');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kualifikasi`
--

CREATE TABLE IF NOT EXISTS `kualifikasi` (
`id_kualifikasi` int(11) NOT NULL,
  `id_mentor` int(10) DEFAULT NULL,
  `nama_kualifikasi` varchar(250) DEFAULT NULL,
  `tambahan_kualifikasi` blob
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kualifikasi`
--

INSERT INTO `kualifikasi` (`id_kualifikasi`, `id_mentor`, `nama_kualifikasi`, `tambahan_kualifikasi`) VALUES
(1, 1, 'semper auctor. Mauris vel', 0x6d6920706564652c206e6f6e756d6d792075742c206d6f6c6573746965),
(2, 2, 'nec, mollis vitae, posuere at, velit. Cras lorem', 0x6c696265726f2e2050726f696e),
(3, 3, 'in sodales elit erat', 0x657261742e20536564206e756e63206573742c),
(4, 4, 'at auctor ullamcorper, nisl arcu', 0x61646970697363696e67206c6f626f727469732072697375732e),
(5, 5, 'rhoncus id, mollis nec, cursus a, enim. Suspendisse', 0x6d61676e612074656c6c7573206661756369627573206c656f2c20696e),
(6, 6, 'dui nec urna suscipit nonummy. Fusce fermentum', 0x6e756e632e20496e20617420706564652e20437261732076756c7075746174652076656c69742065752073656d2e2050656c6c656e746573717565),
(7, 7, 'Cum sociis', 0x76656c69742e2051756973717565207661726975732e204e616d20706f72747469746f72207363656c65726973717565),
(8, 8, 'penatibus', 0x65726f732e204e616d20636f6e736571756174),
(9, 9, 'In ornare sagittis felis. Donec tempor, est ac', 0x7175616d2071756973206469616d2e2050656c6c656e746573717565206861626974616e74206d6f726269207472697374697175652073656e6563747573),
(10, 10, 'est, congue a, aliquet vel, vulputate eu, odio.', 0x746f72746f722c2064696374756d2065752c20706c61636572617420656765742c2076656e656e6174697320612c206d61676e612e204c6f72656d20697073756d),
(11, 11, 'suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante', 0x4375726162697475722065676573746173),
(12, 12, 'mattis semper,', 0x7661726975732065742c20657569736d6f64),
(13, 13, 'fermentum convallis ligula. Donec luctus aliquet odio. Etiam', 0x696e2c2074656d7075732065752c206c6967756c612e2041656e65616e20657569736d6f64),
(14, 14, 'tempus eu,', 0x757420697073756d206163206d6920656c656966656e6420656765737461732e205365642070686172657472612c2066656c6973),
(15, 15, 'fermentum risus,', 0x6d6f6e7465732c206e61736365747572207269646963756c7573206d75732e2050726f696e2076656c2061726375206575),
(16, 16, 'metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus', 0x74656d706f7220626962656e64756d2e20446f6e65632066656c6973206f7263692c),
(17, 17, 'fermentum arcu.', 0x6e65632c20656c656966656e64206e6f6e2c20646170696275732072757472756d2c),
(18, 18, 'Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui,', 0x71756973206469616d206c7563747573206c6f626f727469732e20436c61737320617074656e742074616369746920736f63696f737175206164),
(19, 19, 'nec metus facilisis lorem tristique', 0x736f64616c65732e),
(20, 20, 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus', 0x65752c20656c656966656e64206e65632c206d616c657375616461),
(21, 21, 'non ante', 0x6e65717565207365642073656d206567657374617320626c616e6469742e204e616d206e756c6c61206d61676e612c206d616c6573756164612076656c2c),
(22, 22, 'Quisque', 0x6e756e632e20496e20617420706564652e20437261732076756c7075746174652076656c69742065752073656d2e),
(23, 23, 'Aenean eget', 0x616d657420616e74652e20566976616d7573206e6f6e),
(24, 24, 'tristique neque venenatis lacus.', 0x717569732c20706564652e205072616573656e74206575206475692e2043756d20736f63696973206e61746f7175652070656e617469627573206574),
(25, 25, 'a, arcu. Sed et libero. Proin', 0x766f6c7574706174206e756e632073697420616d6574206d657475732e20416c697175616d),
(26, 26, 'lacus, varius et, euismod et, commodo at, libero. Morbi accumsan', 0x416c697175616d206e69736c2e204e756c6c61),
(27, 27, 'sit amet diam eu dolor egestas rhoncus. Proin', 0x626c616e6469742e204e616d),
(28, 28, 'sem. Pellentesque ut ipsum ac mi', 0x646f6c6f7220656765737461732072686f6e6375732e2050726f696e),
(29, 29, 'ligula consectetuer rhoncus. Nullam velit dui, semper et,', 0x616e74652064696374756d206d692c206163206d61747469732076656c6974206a7573746f206e656320616e74652e204d616563656e6173),
(30, 30, 'vulputate, lacus. Cras interdum.', 0x696163756c69732c206c6163757320706564652073616769747469732061756775652c),
(31, 31, 'Proin velit. Sed', 0x696163756c697320616c6971756574206469616d2e20536564206469616d),
(32, 32, 'aliquam', 0x72686f6e6375732e204e756c6c616d),
(33, 33, 'egestas.', 0x6d61676e6120657420697073756d),
(34, 34, 'natoque penatibus', 0x566976616d75732073697420616d65742072697375732e20446f6e656320656765737461732e20416c697175616d206e656320656e696d2e),
(35, 35, 'Mauris vestibulum, neque sed', 0x6665726d656e74756d2072697375732c206174206672696e67696c6c61),
(36, 36, 'id nunc interdum feugiat. Sed nec metus facilisis lorem tristique', 0x646f6c6f7220656765737461732072686f6e6375732e2050726f696e206e69736c2073656d2c20636f6e736571756174206e65632c),
(37, 37, 'Quisque tincidunt', 0x70656465206e656320616e746520626c616e64697420766976657272612e20446f6e65632074656d7075732c206c6f72656d206672696e67696c6c61206f726e617265),
(38, 38, 'euismod enim. Etiam gravida molestie arcu. Sed eu', 0x696e20636f6e736571756174),
(39, 39, 'non, lacinia at, iaculis', 0x6375727375732070757275732e204e756c6c616d207363656c65726973717565206e65717565),
(40, 40, 'nunc ac mattis', 0x6c696265726f206e6563206c6967756c6120636f6e7365637465747565722072686f6e6375732e204e756c6c616d2076656c6974206475692c2073656d706572),
(41, 41, 'Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede.', 0x756c7472696365732c206d617572697320697073756d20706f72746120656c69742c20612066657567696174),
(42, 42, 'amet orci. Ut sagittis', 0x696e2c2068656e64726572697420636f6e7365637465747565722c206375727375732065742c206d61676e612e205072616573656e7420696e74657264756d206c6967756c61206575),
(43, 43, 'metus. In nec orci.', 0x61646970697363696e672e204d6175726973206d6f6c6573746965207068617265747261206e6962682e20416c697175616d206f726e6172652c206c696265726f),
(44, 44, 'odio sagittis semper. Nam tempor diam dictum', 0x6574206d616c6573756164612066616d6573),
(45, 45, 'turpis. In condimentum. Donec at arcu.', 0x646f6c6f722e20467573636520666575676961742e204c6f72656d20697073756d20646f6c6f722073697420616d65742c),
(46, 46, 'volutpat ornare, facilisis eget, ipsum.', 0x50686173656c6c7573206f726e6172652e204675736365206d6f6c6c69732e20447569732073697420616d6574206469616d206575),
(47, 47, 'neque vitae semper egestas, urna justo', 0x61632072697375732e204d6f726269206d657475732e),
(48, 48, 'Nunc', 0x6e756e632073656420706564652e2043756d20736f63696973206e61746f7175652070656e617469627573206574206d61676e6973),
(49, 49, 'Praesent luctus. Curabitur', 0x636f6e736563746574756572206d61757269732069642073617069656e2e204372617320646f6c6f72),
(50, 50, 'ac ipsum. Phasellus vitae mauris sit amet lorem', 0x756c74726963657320612c);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_pelajaran`
--

CREATE TABLE IF NOT EXISTS `mata_pelajaran` (
`id_mapel` int(11) NOT NULL,
  `tingkat_mapel` varchar(250) DEFAULT NULL,
  `nama_mapel` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mapel`, `tingkat_mapel`, `nama_mapel`) VALUES
(1, 'SD', 'Agama Budha'),
(2, 'SD', 'Agama Hindu'),
(3, 'SD', 'Agama Islam'),
(4, 'SD', 'Agama Katolik'),
(5, 'SD', 'Agama Kristen'),
(6, 'SD', 'Bahasa Arab'),
(7, 'SD', 'Bahasa Indonesia'),
(8, 'SD', 'Bahasa Inggris'),
(9, 'SD', 'IPA'),
(10, 'SD', 'IPS'),
(11, 'SD', 'Kewarganegaraan'),
(12, 'SD', 'Komputer'),
(13, 'SD', 'Matematika'),
(14, 'SD', 'Pengetahuan Umum'),
(15, 'SD', 'Seni Drama'),
(16, 'SD', 'Seni Musik'),
(17, 'SD', 'Seni Rupa'),
(18, 'SD', 'Seni Sastra'),
(19, 'SD', 'Seni Tari'),
(20, 'SMP/MTs', 'Agama Budha'),
(21, 'SMP/MTs', 'Agama Hindu'),
(22, 'SMP/MTs', 'Agama Islam'),
(23, 'SMP/MTs', 'Agama Katolik'),
(24, 'SMP/MTs', 'Agama Kristen'),
(25, 'SMP/MTs', 'Aqidah Akhlaq'),
(26, 'SMP/MTs', 'Bahasa Arab'),
(27, 'SMP/MTs', 'Bahasa Indonesia'),
(28, 'SMP/MTs', 'Bahasa Inggris'),
(29, 'SMP/MTs', 'Biologi'),
(30, 'SMP/MTs', 'Ekonomi'),
(31, 'SMP/MTs', 'Fiqih'),
(32, 'SMP/MTs', 'Fisika'),
(33, 'SMP/MTs', 'Geografi'),
(34, 'SMP/MTs', 'IPA'),
(35, 'SMP/MTs', 'Kewarganegaraan'),
(36, 'SMP/MTs', 'Kimia'),
(37, 'SMP/MTs', 'Komputer'),
(38, 'SMP/MTs', 'Matematika'),
(39, 'SMP/MTs', 'Sejarah'),
(40, 'SMP/MTs', 'Sejarah Islam'),
(41, 'SMP/MTs', 'Seni Drama'),
(42, 'SMP/MTs', 'Seni Musik'),
(43, 'SMP/MTs', 'Seni Rupa'),
(44, 'SMP/MTs', 'Seni Sastra'),
(45, 'SMP/MTs', 'Seni Tari'),
(46, 'SMP/MTs', 'Al-Quran Hadits'),
(47, 'SMP/MTs', 'Tata Busana'),
(48, 'SMA/MA/SMK', 'Administrasi Perkantoran'),
(49, 'SMA/MA/SMK', 'Agama Budha'),
(50, 'SMA/MA/SMK', 'Agama Hindu'),
(51, 'SMA/MA/SMK', 'Agama Islam'),
(52, 'SMA/MA/SMK', 'Agama Katolik'),
(53, 'SMA/MA/SMK', 'Agama Kristen'),
(54, 'SMA/MA/SMK', 'Akutansi'),
(55, 'SMA/MA/SMK', 'Aqidah Akhlaq'),
(56, 'SMA/MA/SMK', 'Bahasa Arab'),
(57, 'SMA/MA/SMK', 'Bahasa Indonesia'),
(58, 'SMA/MA/SMK', 'Bahasa Indonesia SNMPTN'),
(59, 'SMA/MA/SMK', 'Bahasa Inggris'),
(60, 'SMA/MA/SMK', 'Bahasa Inggris SNMPTN'),
(61, 'SMA/MA/SMK', 'Bahasa Jepang'),
(62, 'SMA/MA/SMK', 'Bahasa Jerman'),
(63, 'SMA/MA/SMK', 'Bahasa Mandarin'),
(64, 'SMA/MA/SMK', 'Bahasa Perancis'),
(65, 'SMA/MA/SMK', 'Bahasa Spanyol'),
(66, 'SMA/MA/SMK', 'Biologi'),
(67, 'SMA/MA/SMK', 'Biologi SNMPTN'),
(68, 'SMA/MA/SMK', 'Ekonomi'),
(69, 'SMA/MA/SMK', 'Ekonomi SNMPTN'),
(70, 'SMA/MA/SMK', 'Elektronika/Listrik'),
(71, 'SMA/MA/SMK', 'Fisika'),
(72, 'SMA/MA/SMK', 'Fisika SNMPTN'),
(73, 'SMA/MA/SMK', 'Geografi'),
(74, 'SMA/MA/SMK', 'Geografi SNMPTN'),
(75, 'SMA/MA/SMK', 'IPA Terpadu SNMPTN'),
(76, 'SMA/MA/SMK', 'IPS Terpadu SNMPTN'),
(77, 'SMA/MA/SMK', 'Kewarganegaraan'),
(78, 'SMA/MA/SMK', 'Kimia'),
(79, 'SMA/MA/SMK', 'Kimia SNMPTN'),
(80, 'SMA/MA/SMK', 'Komputer'),
(81, 'SMA/MA/SMK', 'Matematika'),
(82, 'SMA/MA/SMK', 'Matematika SNMPTN'),
(83, 'SMA/MA/SMK', 'Penulisan Karya Ilmiah'),
(84, 'SMA/MA/SMK', 'Sejarah'),
(85, 'SMA/MA/SMK', 'Sejarah Islam'),
(86, 'SMA/MA/SMK', 'Sejarah SNMPTN'),
(87, 'SMA/MA/SMK', 'Seni Drama'),
(88, 'SMA/MA/SMK', 'Seni Musik'),
(89, 'SMA/MA/SMK', 'Seni Rupa'),
(90, 'SMA/MA/SMK', 'Seni Sastra'),
(91, 'SMA/MA/SMK', 'Seni Tari'),
(92, 'SMA/MA/SMK', 'Sosiologi'),
(93, 'SMA/MA/SMK', 'Statistika'),
(94, 'SMA/MA/SMK', 'Al-Quran Hadits'),
(95, 'SMA/MA/SMK', 'Teknik Otomotif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menginginkan`
--

CREATE TABLE IF NOT EXISTS `menginginkan` (
  `id_siswa` int(11) NOT NULL,
  `id_wishlist` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mentor`
--

CREATE TABLE IF NOT EXISTS `mentor` (
`id_mentor` int(10) NOT NULL,
  `nama_mentor` varchar(250) DEFAULT NULL,
  `no_identitas_mentor` varchar(250) DEFAULT NULL,
  `jenis_kelamin_mentor` varchar(250) DEFAULT NULL,
  `tempat_lahir_mentor` varchar(250) DEFAULT NULL,
  `tanggal_lahir_mentor` date DEFAULT NULL,
  `no_ponsel_mentor` varchar(250) DEFAULT NULL,
  `alamat_mentor` text,
  `email_mentor` varchar(250) DEFAULT NULL,
  `password_mentor` varchar(250) DEFAULT NULL,
  `pekerjaan_mentor` varchar(250) DEFAULT NULL,
  `bio_mentor` text,
  `tentang_mentor` text,
  `latitude_mentor` varchar(250) DEFAULT NULL,
  `longitude_mentor` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mentor`
--

INSERT INTO `mentor` (`id_mentor`, `nama_mentor`, `no_identitas_mentor`, `jenis_kelamin_mentor`, `tempat_lahir_mentor`, `tanggal_lahir_mentor`, `no_ponsel_mentor`, `alamat_mentor`, `email_mentor`, `password_mentor`, `pekerjaan_mentor`, `bio_mentor`, `tentang_mentor`, `latitude_mentor`, `longitude_mentor`) VALUES
(1, 'Steel Jennings', '1626110745299', 'pede,', 'Great Falls', '2015-01-15', '(977) 524-5038', '844-5877 Integer Av.', 'Donec.nibh.Quisque@Craseget.ca', 'GZJ27YZY5ZK', 'Metus Aliquam Erat Consulting', 'laoreet, libero et', 'ridiculus', '15.90628', '-49.43749'),
(2, 'Summer U. Daniel', '1648040712599', 'auctor', 'Birori', '2001-11-02', '(773) 482-0928', '526-349 In Ave', 'luctus.aliquet@vitaesodalesnisi.ca', 'JTV60QCJ8CB', 'Luctus LLP', 'enim nec', 'egestas, urna justo faucibus lectus, a', '-52.70192', '-76.55691'),
(3, 'Tamara Salinas', '1660010589699', 'mi.', 'Pettineo', '1991-01-19', '(115) 293-1333', 'P.O. Box 562, 174 Habitant Rd.', 'lectus.sit.amet@porttitorvulputateposuere.org', 'EGZ08CUA4KQ', 'Turpis Vitae LLC', 'Vestibulum', 'magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed', '4.31239', '-173.70657'),
(4, 'Tobias Nicholson', '1629121373099', 'Mauris', 'Bicinicco', '1990-10-24', '(684) 638-3272', '728-1918 Nisi Rd.', 'tellus@non.net', 'URZ41KCY5XJ', 'Ipsum Cursus Vestibulum Industries', 'id, blandit', 'ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor', '28.21347', '28.17226'),
(5, 'Uta F. Rosales', '1635021106799', 'Nulla', 'East Gwillimbury', '1987-03-04', '(338) 777-0855', 'Ap #515-9229 Cum Road', 'eu@anteblanditviverra.edu', 'CNF79LGH9IE', 'Tellus Foundation', 'egestas.', 'erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque', '47.88344', '99.69052'),
(6, 'Tamekah W. Mcintosh', '1677072604499', 'vulputate,', 'Tredegar', '1990-05-13', '(700) 560-6454', 'Ap #383-7443 Molestie Road', 'neque.non@auctorvelitAliquam.com', 'QCY62QLD4JX', 'Nam Ligula Limited', 'quam a', 'dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem', '-65.99346', '39.75692'),
(7, 'Ignacia Jordan', '1656080377099', 'neque.', 'Tay', '2011-01-03', '(631) 398-4079', 'P.O. Box 737, 7944 Vitae Rd.', 'In.condimentum@sociisnatoquepenatibus.com', 'TVO47LPX3UR', 'Dictum Magna Corporation', 'a sollicitudin orci', 'quam vel sapien imperdiet ornare.', '69.35469', '163.93656'),
(8, 'Walter Raymond', '1676080276899', 'eu', 'Cañete', '2001-01-18', '(126) 192-7860', 'Ap #911-4386 Vel Ave', 'lorem.eu.metus@nuncacmattis.edu', 'AHG98IEX6OR', 'Cursus Industries', 'placerat. Cras dictum ultricies', 'Nunc mauris sapien,', '29.6205', '-25.80153'),
(9, 'Kennan F. Guerrero', '1676041810899', 'ante.', 'Lafayette', '1988-03-12', '(403) 119-9129', '317 Cum St.', 'consequat.purus.Maecenas@vestibulum.edu', 'EPP87SPH3HY', 'Feugiat Metus Sit LLP', 'turpis non enim. Mauris quis turpis', 'Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis', '84.45542', '-23.27143'),
(10, 'Russell Mendoza', '1663110553199', 'in', 'C?te-Saint-Luc', '2011-07-12', '(592) 662-5029', '2530 Blandit Ave', 'volutpat.Nulla@non.co.uk', 'QRN56ZKY3KD', 'Sociosqu Institute', 'purus.', 'velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est.', '-26.64127', '-38.56206'),
(11, 'Stuart Garza', '1664021227699', 'primis', 'Kortrijk', '1988-10-29', '(808) 651-3352', '668-4382 Enim. Ave', 'egestas.urna@feugiatLoremipsum.co.uk', 'XAB99CEW8WF', 'Cras Sed Leo LLC', 'elementum, dui quis accumsan convallis,', 'dolor.', '58.56173', '127.34446'),
(12, 'Maya Greer', '1655091984599', 'arcu.', 'Nieuwmunster', '1988-02-17', '(155) 665-5627', '959-2288 Ante Street', 'dignissim@maurisipsumporta.org', 'QWZ33FPF8ER', 'Lorem Ut Foundation', 'Nunc sollicitudin commodo ipsum. Suspendisse', 'amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.', '15.34225', '-96.24096'),
(13, 'Tamara L. Leblanc', '1648021408299', 'leo.', 'Braies/Prags', '2003-01-03', '(995) 612-3136', 'Ap #384-1853 Velit. Ave', 'elit@convallisdolorQuisque.net', 'MSQ05BZK1TF', 'Dui Corp.', 'metus.', 'dolor dolor,', '-15.83981', '-116.88262'),
(14, 'Shad Y. Fuentes', '1628021436399', 'odio.', 'Coventry', '1988-06-13', '(759) 841-0034', 'Ap #928-4653 Molestie St.', 'Nunc@hendrerit.org', 'CKC64KFL0FH', 'Mattis LLC', 'mollis. Duis sit amet', 'Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare', '82.5677', '-150.12362'),
(15, 'Edan U. West', '1657081196299', 'arcu.', 'Ambresin', '2009-12-19', '(105) 151-5733', 'P.O. Box 688, 5937 Metus. Rd.', 'dictum.eu@dictummiac.ca', 'LMU97ZFC3LF', 'Neque Pellentesque Company', 'fermentum risus, at', 'elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales', '21.76396', '-108.74531'),
(16, 'Shannon Rodriquez', '1678072258299', 'orci', 'Phoenix', '2013-09-25', '(285) 551-0976', '637-5294 Leo. Road', 'facilisi.Sed.neque@Phasellusfermentum.edu', 'GAH42QNI4LM', 'Convallis Consulting', 'elit elit fermentum risus, at fringilla', 'est. Mauris eu turpis. Nulla aliquet.', '76.83377', '-135.80563'),
(17, 'Miriam Price', '1647062590699', 'rhoncus.', 'Toledo', '2001-02-20', '(329) 359-9883', '8943 Nunc Street', 'mauris.ipsum.porta@consectetueripsumnunc.org', 'VGF18YXD6NV', 'Justo Praesent Luctus Institute', 'tempor erat neque non quam. Pellentesque', 'cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non', '84.74727', '87.28026'),
(18, 'Kato E. Glass', '1665120755499', 'fermentum', 'Cantley', '1984-08-25', '(770) 672-1440', '168-3081 Vitae St.', 'et.nunc.Quisque@felisDonectempor.net', 'IUM28WJH4HK', 'Nisl Maecenas LLC', 'velit', 'nibh. Phasellus', '-62.58559', '-96.71617'),
(19, 'Dacey S. Boyle', '1664121992099', 'Aliquam', 'Ruoti', '1994-04-04', '(186) 290-0629', '950-6368 Velit Av.', 'Cras.vehicula@Quisqueac.edu', 'ZUW92LNS2XE', 'Vestibulum Massa Rutrum Foundation', 'adipiscing', 'dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum.', '-12.9665', '51.26683'),
(20, 'Nyssa N. Hensley', '1694081488999', 'Donec', 'Thon', '2005-04-19', '(509) 616-9139', '3914 Massa Rd.', 'ac.fermentum@Sed.ca', 'OJO40DGB0NW', 'Eget Metus PC', 'vel, mauris. Integer sem', 'consectetuer euismod est arcu ac orci. Ut semper pretium neque.', '84.44606', '-105.42309'),
(21, 'Ila Butler', '1689110619299', 'imperdiet', 'Cerchio', '1985-08-23', '(749) 329-2870', 'Ap #646-1812 Mauris Rd.', 'eu.odio@sedpedenec.com', 'FCH32THF1MG', 'Donec LLC', 'elit, pellentesque a, facilisis non,', 'metus. Aliquam erat volutpat.', '-20.99711', '9.06211'),
(22, 'Abel Hubbard', '1680012813899', 'ut', 'Southampton', '1991-04-19', '(658) 420-3309', '5912 Penatibus Street', 'ac@Sedmalesuada.com', 'AKL85HBU9PS', 'Sodales Mauris Blandit Limited', 'luctus, ipsum leo elementum', 'consectetuer, cursus et, magna. Praesent interdum ligula eu enim.', '-79.37653', '10.51077'),
(23, 'Freya George', '1612051180699', 'fermentum', 'Saint-Georges', '1998-03-04', '(946) 249-3977', '6382 Magna. Ave', 'elit.pharetra.ut@vitaealiquam.edu', 'RNJ24YVJ5ZO', 'Ut Odio Associates', 'aliquet diam. Sed diam lorem, auctor', 'neque. Sed', '15.14', '-154.17532'),
(24, 'Cruz Byers', '1673091241299', 'gravida', 'Graz', '2001-03-22', '(726) 688-1536', 'P.O. Box 592, 1249 Augue Road', 'lectus.justo.eu@Vestibulumanteipsum.net', 'LMG52STZ7ZX', 'Semper Rutrum Fusce Incorporated', 'nibh.', 'molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet', '-46.8539', '-77.6781'),
(25, 'Jane M. Horne', '1632121520999', 'non,', 'Cartagena', '1985-03-23', '(835) 997-3584', '7842 Consectetuer Street', 'lacinia.vitae@a.com', 'RYL70UHV2AR', 'Praesent Industries', 'elementum sem, vitae', 'Curabitur massa. Vestibulum accumsan', '8.83362', '25.04348'),
(26, 'Phelan Z. Cameron', '1619050262999', 'ultrices.', 'Bottrop', '1997-11-26', '(109) 545-1059', 'Ap #219-4308 Urna Street', 'nibh.Aliquam@Vivamus.ca', 'ZKY32YXB0WN', 'Erat Nonummy LLC', 'vitae semper egestas, urna justo', 'pede. Nunc sed', '59.84524', '97.34255'),
(27, 'Raja Bernard', '1676041691799', 'Donec', 'Boston', '1994-05-29', '(364) 299-0038', 'P.O. Box 947, 8633 Arcu St.', 'nibh.Aliquam@pedeSuspendissedui.edu', 'FFA96WHV9LH', 'Neque In Ornare Associates', 'volutpat nunc sit amet metus.', 'id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede.', '40.22601', '51.63196'),
(28, 'Jarrod R. Pugh', '1609082539499', 'accumsan', 'Aachen', '2014-05-15', '(858) 553-6236', 'Ap #906-4755 Sem Rd.', 'augue.porttitor.interdum@nec.ca', 'KVC42ZKE7WH', 'Nulla Institute', 'id, libero. Donec consectetuer mauris', 'in consectetuer ipsum nunc id enim. Curabitur', '9.59469', '104.85323'),
(29, 'Thaddeus G. Morrow', '1669071615899', 'ac', 'Aurora', '2001-06-07', '(526) 390-7826', 'P.O. Box 777, 1554 Et Rd.', 'diam.at.pretium@tempor.com', 'JYG03JHM1BE', 'Convallis Convallis Inc.', 'mi, ac', 'risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus', '-71.76828', '39.83567'),
(30, 'Illiana Price', '1606062158799', 'senectus', 'Olympia', '1989-06-07', '(470) 518-5396', 'Ap #931-276 Et, St.', 'pede@ultricesVivamus.net', 'LDY69YEM9XY', 'Mauris Eu Elit Incorporated', 'id risus quis diam', 'accumsan interdum', '85.83481', '39.56624'),
(31, 'Samuel C. Mack', '1618060203099', 'arcu.', 'Primavera', '2010-07-01', '(947) 606-6501', '541-2867 Vel, Road', 'auctor@Maurisvestibulum.edu', 'YCH44NKR7KS', 'Bibendum Fermentum Metus Institute', 'quam, elementum at, egestas a,', 'accumsan', '77.38329', '-104.57615'),
(32, 'Daquan Harvey', '1680041774899', 'facilisis', 'Imperatriz', '1998-05-10', '(878) 919-1911', 'Ap #358-3736 Vestibulum Road', 'amet.diam.eu@imperdiet.net', 'WAE58YTN3XB', 'Ipsum Non Foundation', 'neque. In ornare sagittis', 'enim commodo hendrerit. Donec porttitor tellus non magna. Nam', '24.50518', '-67.13693'),
(33, 'Colton I. Hudson', '1602102725799', 'Mauris', 'St. Paul', '2003-09-28', '(212) 627-7942', 'Ap #592-9165 Dolor. St.', 'Cras@ipsumsodales.edu', 'HZM81RIC6UU', 'Maecenas Libero Ltd', 'Cras eu tellus eu augue porttitor', 'rutrum, justo. Praesent luctus. Curabitur egestas nunc sed', '-31.25466', '-102.71789'),
(34, 'Wade O. Hancock', '1618101035399', 'urna', 'Attimis', '1986-05-19', '(491) 647-3728', '811-6395 Blandit. St.', 'feugiat.metus@purusNullamscelerisque.org', 'LFS71KRW7VL', 'Non Nisi PC', 'pellentesque. Sed dictum. Proin', 'nisl. Quisque fringilla euismod enim. Etiam', '67.24738', '63.05673'),
(35, 'Nora I. Hartman', '1623071850399', 'interdum', 'Ch‰telineau', '2011-10-17', '(828) 194-3470', 'Ap #632-4087 Sagittis. Avenue', 'Sed.id@ametdiameu.ca', 'TMA19KHM3JR', 'Vestibulum Lorem Sit Incorporated', 'sed, hendrerit', 'Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper,', '-38.94199', '-127.92622'),
(36, 'Nita A. Hampton', '1648040554999', 'risus,', 'Vanier', '2003-09-25', '(552) 716-4849', '114-367 Feugiat St.', 'nisl@massaSuspendisseeleifend.com', 'GEA51LMP0CD', 'Erat Limited', 'vel, mauris. Integer sem', 'egestas nunc sed', '-10.79611', '147.71497'),
(37, 'Gemma Forbes', '1601031555599', 'fermentum', 'Subbiano', '2009-11-14', '(447) 390-5114', 'P.O. Box 503, 7409 Quisque Avenue', 'sociis.natoque.penatibus@sagittisplaceratCras.org', 'RIF70FWF0WT', 'Aliquam Fringilla Cursus Corporation', 'Fusce fermentum fermentum arcu. Vestibulum', 'vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus', '-29.19859', '-143.75541'),
(38, 'Tanya Y. Hunter', '1670032541899', 'ipsum', 'Portsmouth', '2004-01-25', '(360) 341-7554', 'Ap #155-5517 Donec Street', 'eleifend@noncursusnon.co.uk', 'UYK03CGQ5KP', 'Nec Urna Et Corporation', 'et netus et malesuada fames', 'mus. Donec', '-2.20821', '164.21254'),
(39, 'Ferdinand S. Payne', '1622092480799', 'ac', 'Cittanova', '2009-01-23', '(158) 767-6016', 'Ap #540-6034 Vulputate, Street', 'Nunc@tellussemmollis.edu', 'VEV94CXV1DI', 'Morbi Metus PC', 'id magna et ipsum', 'ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed', '-44.13328', '-42.20146'),
(40, 'Kieran P. Walton', '1609060861899', 'gravida.', 'WagnelŽe', '1996-08-13', '(416) 675-4597', '603-3303 Sem Ave', 'risus.quis.diam@feugiatLorem.edu', 'TKL58YVB6RM', 'Sollicitudin Consulting', 'sociis', 'fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut', '-86.85419', '-168.7216'),
(41, 'Desirae Z. Langley', '1618021583699', 'ipsum', 'Knokke-Heist', '1981-09-21', '(658) 309-9194', 'P.O. Box 840, 4945 Accumsan Av.', 'interdum@gravidamauris.ca', 'SGA77YIT4NJ', 'A Arcu LLP', 'rutrum lorem ac risus. Morbi metus.', 'dui, in sodales', '-81.62751', '-176.39352'),
(42, 'Abel Donovan', '1611011762999', 'fermentum', 'Grey County', '1991-01-17', '(194) 622-4683', 'Ap #641-778 Tellus. Ave', 'Nulla.dignissim@sociosquadlitora.co.uk', 'UQS83FBN9ZM', 'Quisque Incorporated', 'Nullam velit', 'quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '-52.26669', '-92.31603'),
(43, 'Breanna Simmons', '1644042131699', 'libero.', 'Salles', '2012-10-26', '(751) 664-8859', '727-8530 Blandit Rd.', 'nec.quam.Curabitur@sapienAenean.ca', 'UTO31FSC3XW', 'Malesuada Ut Inc.', 'ornare.', 'Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper', '14.40449', '-131.98514'),
(44, 'Andrew Morales', '1621050511499', 'porttitor', 'Eberswalde-Finow', '2000-05-14', '(775) 444-6521', 'Ap #295-1245 Ipsum Road', 'eget.odio@seddui.com', 'QAQ06BZB8AB', 'Nulla Ante Iaculis LLC', 'Integer eu lacus. Quisque', 'pellentesque massa', '86.69323', '-50.86025'),
(45, 'Josiah Wheeler', '1609021282499', 'mi', 'Scunthorpe', '1994-02-21', '(456) 669-8917', '594-3000 Ut, Street', 'malesuada.ut@mauris.com', 'ITM46ABL2PG', 'Et PC', 'aliquet. Phasellus fermentum convallis', 'cubilia Curae; Phasellus ornare.', '-7.64441', '-81.05609'),
(46, 'Ifeoma Carpenter', '1649101188999', 'ut', 'Hofheim am Taunus', '1988-02-27', '(103) 262-5704', '2866 Lacinia Avenue', 'neque@arcuiaculis.com', 'GKO71UHG7FM', 'Dui Augue Eu Corp.', 'quis diam luctus', 'in sodales elit erat vitae risus. Duis a mi fringilla mi', '-67.66314', '59.65469'),
(47, 'Gareth Puckett', '1662010792299', 'ut', 'Itajaí', '2007-04-08', '(244) 461-4375', 'P.O. Box 453, 9828 Massa Avenue', 'cursus@mi.net', 'XQW23BXC0XC', 'Vulputate Mauris Sagittis PC', 'sem egestas blandit. Nam', 'Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris', '62.1728', '-22.53494'),
(48, 'Shelly Woods', '1600092171299', 'Nunc', 'Cortil-Noirmont', '1980-04-25', '(604) 203-3030', 'Ap #622-852 Donec St.', 'Mauris.eu.turpis@fermentumconvallisligula.ca', 'LXY77PGO0OC', 'Neque Nullam Consulting', 'Ut tincidunt vehicula risus. Nulla', 'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat.', '77.28348', '22.99849'),
(49, 'Michael Calderon', '1611011792199', 'in', 'Port Hope', '1996-02-12', '(252) 387-0559', 'P.O. Box 183, 6553 Etiam Street', 'ipsum.dolor@bibendumsedest.org', 'NKG00DCQ0YC', 'Odio Consulting', 'nunc. In', 'semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices', '-6.84271', '2.4126'),
(50, 'Odessa E. Mullins', '1686060921699', 'sit', 'Vetlanda', '1985-02-19', '(949) 297-6919', 'Ap #697-2432 Tempus St.', 'rutrum.non.hendrerit@lectus.org', 'LAP34IKX6DQ', 'Vehicula Risus Nulla LLP', 'nunc', 'lacus. Quisque purus sapien, gravida non, sollicitudin a,', '-62.12602', '-111.97394');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengalaman_mengajar`
--

CREATE TABLE IF NOT EXISTS `pengalaman_mengajar` (
`id_pengalaman` int(10) NOT NULL,
  `id_mentor` int(10) DEFAULT NULL,
  `nama_pengalaman` text
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengalaman_mengajar`
--

INSERT INTO `pengalaman_mengajar` (`id_pengalaman`, `id_mentor`, `nama_pengalaman`) VALUES
(1, 1, 'vel arcu eu odio tristique pharetra. Quisque ac'),
(2, 2, 'taciti sociosqu ad litora torquent'),
(3, 3, 'massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor'),
(4, 4, 'Nullam'),
(5, 5, 'malesuada fringilla'),
(6, 6, 'facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa.'),
(7, 7, 'aliquet diam. Sed diam lorem, auctor quis, tristique'),
(8, 8, 'tempor, est ac mattis'),
(9, 9, 'vel sapien imperdiet'),
(10, 10, 'vel,'),
(11, 11, 'mauris blandit mattis. Cras eget'),
(12, 12, 'Ut nec'),
(13, 13, 'tellus lorem eu metus. In'),
(14, 14, 'erat,'),
(15, 15, 'dapibus rutrum, justo. Praesent luctus. Curabitur egestas'),
(16, 16, 'sit amet, consectetuer'),
(17, 17, 'diam nunc, ullamcorper eu,'),
(18, 18, 'arcu. Vestibulum ante ipsum primis in faucibus'),
(19, 19, 'varius orci, in consequat enim diam vel'),
(20, 20, 'eu, eleifend nec, malesuada'),
(21, 21, 'Pellentesque ut ipsum ac mi eleifend'),
(22, 22, 'urna.'),
(23, 23, 'lacus. Ut nec urna et arcu imperdiet'),
(24, 24, 'Nam interdum enim non nisi. Aenean'),
(25, 25, 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus'),
(26, 26, 'aliquet vel, vulputate eu,'),
(27, 27, 'enim. Mauris quis turpis vitae purus gravida sagittis. Duis'),
(28, 28, 'tellus. Suspendisse sed dolor. Fusce'),
(29, 29, 'laoreet ipsum. Curabitur consequat, lectus'),
(30, 30, 'rutrum non, hendrerit id, ante. Nunc mauris'),
(31, 31, 'enim'),
(32, 32, 'ac facilisis facilisis, magna tellus faucibus leo, in'),
(33, 33, 'mauris. Integer sem'),
(34, 34, 'nibh. Donec est mauris, rhoncus id, mollis'),
(35, 35, 'enim, sit amet'),
(36, 36, 'egestas, urna justo'),
(37, 37, 'magna. Lorem ipsum dolor sit amet, consectetuer'),
(38, 38, 'ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate,'),
(39, 39, 'a ultricies adipiscing, enim mi tempor'),
(40, 40, 'Morbi sit amet'),
(41, 41, 'urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis'),
(42, 42, 'ante dictum cursus. Nunc mauris elit, dictum'),
(43, 43, 'Integer'),
(44, 44, 'et netus'),
(45, 45, 'et pede. Nunc'),
(46, 46, 'felis, adipiscing fringilla, porttitor vulputate, posuere'),
(47, 47, 'Phasellus at augue'),
(48, 48, 'dictum cursus. Nunc mauris elit, dictum eu, eleifend nec,'),
(49, 49, 'Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada'),
(50, 50, 'at auctor ullamcorper,');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarah_pendidikan`
--

CREATE TABLE IF NOT EXISTS `sejarah_pendidikan` (
  `id_mentor` int(10) NOT NULL,
`id_pendidikan` int(10) NOT NULL,
  `jenjang_pendidikan` varchar(250) DEFAULT NULL,
  `instansi_pendidikan` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sejarah_pendidikan`
--

INSERT INTO `sejarah_pendidikan` (`id_mentor`, `id_pendidikan`, `jenjang_pendidikan`, `instansi_pendidikan`) VALUES
(1, 1, 'magna.', 'orci, adipiscing non, luctus sit amet,'),
(2, 2, 'nisl.', 'In at pede. Cras'),
(3, 3, 'penatibus', 'adipiscing.'),
(4, 4, 'cursus.', 'turpis. In condimentum. Donec at arcu. Vestibulum'),
(5, 5, 'sem,', 'egestas, urna justo faucibus'),
(6, 6, 'mollis', 'sed orci lobortis augue scelerisque mollis. Phasellus'),
(7, 7, 'lobortis', 'fringilla euismod enim. Etiam gravida molestie'),
(8, 8, 'dapibus', 'tempor diam dictum'),
(9, 9, 'orci,', 'diam. Proin dolor. Nulla semper tellus id'),
(10, 10, 'aliquam', 'nonummy ut, molestie'),
(11, 11, 'aliquet', 'adipiscing'),
(12, 12, 'bibendum', 'dignissim. Maecenas ornare egestas ligula. Nullam'),
(13, 13, 'litora', 'massa.'),
(14, 14, 'Sed', 'ante ipsum primis in faucibus'),
(15, 15, 'sed', 'est ac facilisis facilisis, magna'),
(16, 16, 'eu,', 'sed dolor. Fusce mi lorem, vehicula'),
(17, 17, 'ac', 'et, euismod et, commodo'),
(18, 18, 'pretium', 'nec ante. Maecenas'),
(19, 19, 'Cras', 'erat semper rutrum. Fusce dolor quam, elementum'),
(20, 20, 'aliquet,', 'lorem, auctor quis,'),
(21, 21, 'et', 'vitae, sodales at, velit. Pellentesque ultricies'),
(22, 22, 'a,', 'Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus'),
(23, 23, 'bibendum', 'Praesent eu nulla at sem'),
(24, 24, 'laoreet', 'fermentum vel, mauris. Integer sem elit, pharetra'),
(25, 25, 'magna', 'dolor'),
(26, 26, 'Aliquam', 'lobortis'),
(27, 27, 'pretium', 'nisi. Cum sociis natoque penatibus'),
(28, 28, 'tellus', 'mollis nec, cursus a, enim. Suspendisse aliquet,'),
(29, 29, 'interdum', 'lacus. Nulla tincidunt,'),
(30, 30, 'mollis', 'nec metus facilisis lorem tristique aliquet. Phasellus'),
(31, 31, 'quam,', 'Donec est. Nunc ullamcorper, velit in aliquet'),
(32, 32, 'Lorem', 'interdum. Sed auctor odio a purus.'),
(33, 33, 'et,', 'nunc sit amet'),
(34, 34, 'nascetur', 'eros nec tellus. Nunc'),
(35, 35, 'molestie', 'augue ut lacus. Nulla tincidunt,'),
(36, 36, 'quis,', 'commodo'),
(37, 37, 'blandit', 'accumsan sed, facilisis vitae, orci. Phasellus dapibus'),
(38, 38, 'accumsan', 'elit, dictum eu,'),
(39, 39, 'Nam', 'Mauris non dui nec urna suscipit'),
(40, 40, 'nibh', 'velit eu sem. Pellentesque ut ipsum'),
(41, 41, 'Etiam', 'non enim.'),
(42, 42, 'ornare,', 'tristique'),
(43, 43, 'Vestibulum', 'ligula.'),
(44, 44, 'Etiam', 'ac metus vitae'),
(45, 45, 'mauris,', 'venenatis lacus.'),
(46, 46, 'ligula', 'ultricies adipiscing, enim mi tempor lorem,'),
(47, 47, 'neque', 'justo nec ante. Maecenas'),
(48, 48, 'sagittis', 'eleifend egestas. Sed pharetra, felis'),
(49, 49, 'tellus', 'erat nonummy ultricies ornare, elit'),
(50, 50, 'magnis', 'gravida');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
`id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(250) DEFAULT NULL,
  `no_identitas_siswa` varchar(250) DEFAULT NULL,
  `jenis_kelamin_siswa` varchar(250) DEFAULT NULL,
  `tempat_lahir_siswa` varchar(250) DEFAULT NULL,
  `tanggal_lahir_siswa` date DEFAULT NULL,
  `no_ponsel_siswa` bigint(20) DEFAULT NULL,
  `sekolah_siswa` varchar(250) DEFAULT NULL,
  `alamat_siswa` text,
  `email_siswa` varchar(250) DEFAULT NULL,
  `password_siswa` varchar(250) DEFAULT NULL,
  `latitude_siswa` varchar(250) DEFAULT NULL,
  `longitude_siswa` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `no_identitas_siswa`, `jenis_kelamin_siswa`, `tempat_lahir_siswa`, `tanggal_lahir_siswa`, `no_ponsel_siswa`, `sekolah_siswa`, `alamat_siswa`, `email_siswa`, `password_siswa`, `latitude_siswa`, `longitude_siswa`) VALUES
(1, 'Kaye W. Horne', '1607110659999', 'augue', 'Millesimo', '2014-08-11', 0, 'Eget Lacus Foundation', '972-5496 Pede. St.', 'mi.lacinia@orciadipiscingnon.net', 'HFH07FNP3EN', '65.50155', '-7.42273'),
(2, 'Armando Terry', '1633021017099', 'adipiscing', 'Ravels', '2009-11-20', 0, 'Erat Volutpat Nulla Incorporated', 'P.O. Box 507, 6017 Fermentum Road', 'enim.commodo.hendrerit@augue.edu', 'ADI03OXQ9OS', '79.35989', '-85.66636'),
(3, 'Akeem K. Russell', '1632092311299', 'luctus.', 'Cargovil', '1982-06-04', 0, 'Id Nunc Interdum Corporation', '432-9386 Purus Rd.', 'ridiculus.mus.Donec@adipiscingligula.org', 'UMX75ZPU7CZ', '-70.26109', '-1.95612'),
(4, 'Dana Fernandez', '1636010292499', 'dui', 'Muradiye', '1997-11-21', 0, 'At Arcu Vestibulum LLP', '357-4154 Nunc Rd.', 'Aliquam.gravida@commodohendrerit.co.uk', 'TYR68QGL7ZY', '-48.59645', '153.16292'),
(5, 'Chiquita U. Cote', '1658052760499', 'aliquam', 'Hamilton', '2013-08-10', 0, 'Lorem Institute', '9642 Pellentesque Rd.', 'fermentum.metus.Aenean@ametultricies.ca', 'BLP61RWZ4HU', '69.36842', '103.0093'),
(6, 'Rina Levine', '1602021095399', 'ipsum', 'Duns', '1998-11-23', 0, 'Fringilla Ornare Foundation', '983-9251 Ante. Rd.', 'arcu.Curabitur.ut@semPellentesque.net', 'JQM46HSH9WW', '-67.90274', '-32.08695'),
(7, 'Julie N. Kane', '1683050534099', 'Integer', 'Cádiz', '1995-01-22', 0, 'Proin Velit LLC', '7594 Imperdiet Avenue', 'magna.a.tortor@euismod.co.uk', 'RDW60TWD3FZ', '14.7619', '87.53098'),
(8, 'Yvette N. Ramirez', '1608042366299', 'ligula', 'Teralfene', '1998-09-04', 0, 'A LLC', '778 Vivamus Rd.', 'neque.Sed@variusorciin.com', 'VQD25IGH7DM', '-33.78423', '145.30078'),
(9, 'Kiona Clements', '1616021133499', 'vulputate,', 'Roccalumera', '1991-08-07', 0, 'Tempus Non Lacinia Company', '971-6511 Dictum St.', 'magnis@velarcu.edu', 'VNS79XZX0YR', '41.6262', '-84.48592'),
(10, 'Brennan Jimenez', '1660121715699', 'risus.', 'Bad Kreuznach', '1981-09-26', 0, 'A Scelerisque Corporation', '7776 Tellus Av.', 'arcu.Vestibulum@malesuada.co.uk', 'GML06RDF0OT', '43.17365', '99.09902'),
(11, 'Unity Cannon', '1695052164999', 'auctor', 'Hassan', '1988-04-12', 0, 'Donec Vitae Erat Associates', 'Ap #292-2748 Ut, St.', 'ipsum.ac@velvenenatis.ca', 'WIC24KFK5XE', '85.86724', '-91.48262'),
(12, 'Erasmus Z. Franco', '1666020107899', 'mi.', 'Lac La Biche County', '2016-01-22', 0, 'Aenean Euismod Mauris Industries', '660-5218 Ante Av.', 'Pellentesque.tincidunt@dolorvitae.net', 'PQA40JNF6PX', '35.98801', '157.96451'),
(13, 'Noelle V. Salas', '1679060563699', 'id', 'Siculiana', '2002-12-23', 0, 'Libero Integer In LLP', 'P.O. Box 332, 9147 Amet, Ave', 'Vestibulum.ante@Curabiturut.co.uk', 'KMW24WGO3UY', '-11.21011', '6.46461'),
(14, 'Hermione T. Mann', '1632041526099', 'in,', 'Curanilahue', '2009-04-27', 0, 'Elit Fermentum Risus LLC', 'P.O. Box 845, 8268 Cras St.', 'egestas.a.dui@odio.ca', 'XHM73WTO0OT', '67.80821', '-164.18862'),
(15, 'Otto B. Roach', '1665031606399', 'molestie', 'Champorcher', '1988-05-25', 0, 'Et Tristique Limited', 'P.O. Box 323, 7952 Sed, Rd.', 'litora.torquent.per@perinceptoshymenaeos.co.uk', 'WKZ62RUU4HG', '-69.22046', '-76.08712'),
(16, 'Allistair Z. Johnson', '1647121009899', 'vestibulum,', 'Cetara', '2014-04-13', 0, 'Nunc LLP', '860-6798 Aliquet Rd.', 'in@aliquetmagna.co.uk', 'OWQ68VOZ1SD', '-8.50023', '87.3122'),
(17, 'Alika Travis', '1609010891099', 'penatibus', 'Pepingen', '2007-12-15', 0, 'Curae; Donec Foundation', '115-6146 Vestibulum Street', 'non.enim.Mauris@Duisdignissimtempor.net', 'SUW11DWP9YC', '-37.12581', '-3.49974'),
(18, 'Pascale Robinson', '1658070397599', 'eu', 'Sacramento', '1993-03-01', 0, 'Orci Luctus Et Institute', 'Ap #611-5555 Ultrices St.', 'sed.sem@Quisqueimperdieterat.ca', 'JVG89DEQ7BQ', '2.79144', '173.80819'),
(19, 'Martin M. Burris', '1695041979399', 'eleifend,', 'San Lazzaro di Savena', '1987-09-01', 0, 'Interdum Ligula Eu Foundation', 'P.O. Box 688, 5598 A St.', 'ultrices.sit.amet@euodioPhasellus.net', 'JEL28QWT0NG', '-46.31913', '58.54402'),
(20, 'Dawn Edwards', '1668092358299', 'adipiscing,', 'Roxboro', '1983-05-02', 0, 'Suspendisse Sagittis Nullam Institute', '3362 Sapien. Rd.', 'dolor.nonummy@tincidunttempusrisus.ca', 'GGI63WTE6KM', '-45.75537', '73.86315'),
(21, 'Ezekiel Woodard', '1619091140399', 'lorem,', 'Neyveli', '1985-08-06', 0, 'Nulla Facilisis Suspendisse Corporation', '153-1844 Sit St.', 'vel@ametluctusvulputate.net', 'SUD23PJU5YX', '-49.42096', '-72.60223'),
(22, 'Kelsey Gaines', '1664032388999', 'lorem', 'Villarrica', '1986-03-22', 0, 'Phasellus Dolor Elit Incorporated', 'Ap #972-9435 Facilisis Rd.', 'turpis@velit.edu', 'QZJ59DAU4XU', '-6.89592', '7.20398'),
(23, 'Sonia A. Cardenas', '1668032856599', 'erat,', 'Millet', '1997-10-10', 0, 'Aliquam Corp.', '362-7491 Massa. St.', 'facilisi.Sed@euaugueporttitor.org', 'WBA04YTD5OZ', '47.48704', '165.36097'),
(24, 'Dawn U. Wolfe', '1619093042399', 'urna.', 'Mount Isa', '1992-06-30', 0, 'Libero Inc.', 'Ap #642-6918 Nulla St.', 'Quisque.varius@velitegestaslacinia.net', 'MFR64ZQO3ZC', '64.22357', '175.59098'),
(25, 'Rashad Robinson', '1609060669599', 'ac', 'Cavaso del Tomba', '1983-09-24', 0, 'Praesent Eu Dui Company', 'Ap #868-1551 Lorem Ave', 'dis@necanteblandit.com', 'FTQ69KAC2EV', '57.13148', '68.06722'),
(26, 'Candace W. Ryan', '1635051707699', 'aliquet', 'Lafayette', '1980-07-31', 0, 'Varius Corporation', '2926 Lobortis St.', 'quis.accumsan@in.net', 'JMP02PXO6BV', '28.14282', '102.36733'),
(27, 'Gil B. Martin', '1685012954099', 'et', 'New Maryland', '1996-02-13', 0, 'Quis Limited', 'P.O. Box 618, 108 A, Rd.', 'ultricies.sem@ultricesposuerecubilia.edu', 'OGB98MUK8ES', '-25.139', '130.06944'),
(28, 'Kimberly T. Peters', '1637072852299', 'dictum', 'Fatehpur', '2015-12-31', 0, 'Tincidunt Aliquam Incorporated', '377-8698 Dolor. Street', 'libero.dui.nec@pellentesquemassa.ca', 'ORX06FXQ3LW', '-72.22869', '158.24265'),
(29, 'Pamela E. Horton', '1675122417599', 'semper,', 'San Esteban', '1986-08-22', 0, 'Sagittis Industries', 'Ap #648-1509 Fermentum Rd.', 'Morbi.metus@fringillaornare.edu', 'MXB39FZX6SF', '-40.68453', '28.39615'),
(30, 'Halla Warner', '1629051758799', 'dis', 'Renfrew', '1985-08-18', 0, 'Lectus Consulting', '565-940 Augue Rd.', 'elementum.at.egestas@facilisislorem.ca', 'BDM08BXA9YK', '-9.35654', '-173.66476'),
(31, 'Kiayada D. Hopkins', '1667061235499', 'rutrum', 'Yellowhead County', '1996-03-04', 0, 'Vitae Mauris Sit Foundation', 'P.O. Box 530, 4026 Sit Road', 'lobortis.augue.scelerisque@erosturpis.edu', 'DKO39FZA2EC', '63.60625', '23.98079'),
(32, 'Ishmael Z. Hatfield', '1684090208299', 'vitae', 'Providencia', '2004-07-17', 0, 'Vitae Foundation', '3244 Tempus Ave', 'varius@nequenon.edu', 'FEY80NZF3KB', '-33.33954', '-27.62814'),
(33, 'Brody Hutchinson', '1673072254599', 'adipiscing', 'Avigliano Umbro', '2011-11-10', 0, 'Nisi A Odio Incorporated', 'Ap #586-7038 Lorem, St.', 'sed@mi.com', 'JYJ71UCH2VB', '-48.94162', '85.06526'),
(34, 'Jocelyn D. Goodwin', '1600021707199', 'tempor,', 'Ajax', '2015-01-13', 0, 'Posuere Corp.', '990-414 Ac St.', 'sed@diam.com', 'MDO30UQF2JA', '-72.20234', '40.52855'),
(35, 'Rajah Washington', '1657031465499', 'ut,', 'Varendonk', '1986-10-29', 0, 'Fusce Fermentum Fermentum LLC', '2131 Ornare. Av.', 'Fusce.dolor@Vivamus.edu', 'DVK08QVN5CV', '70.23245', '79.35233'),
(36, 'Kellie C. Page', '1697092265999', 'auctor', 'Argyle', '2015-06-05', 0, 'Odio PC', 'Ap #673-137 Malesuada Rd.', 'consectetuer.adipiscing@diameu.edu', 'PTI92WQY3JV', '-87.16806', '-86.37915'),
(37, 'Benedict D. Bailey', '1654092827099', 'ipsum.', 'Stroud', '2015-11-05', 0, 'Ac Mattis PC', 'Ap #691-4790 Mi Street', 'eu.ligula.Aenean@nonsapien.ca', 'RIS62MFR2OD', '3.32505', '69.55253'),
(38, 'Fatima O. Tran', '1698092097599', 'Suspendisse', 'Campbelltown', '1982-04-03', 0, 'Faucibus Id Libero Ltd', '6589 Purus. Avenue', 'augue.scelerisque@Donec.net', 'ZEQ06MJP1CV', '27.21374', '120.06793'),
(39, 'Kessie Noel', '1645030545199', 'lacus', 'Villers-sur-Semois', '1980-08-06', 0, 'Neque Institute', '634-1544 Natoque Av.', 'convallis.in.cursus@fermentum.org', 'YJE96QGP6KU', '-26.57213', '-114.80055'),
(40, 'Sade Hampton', '1610032633199', 'Morbi', 'Sauvenire', '1999-02-16', 0, 'Suspendisse Corporation', 'P.O. Box 196, 3927 Posuere Rd.', 'Sed.neque.Sed@non.ca', 'EHZ06ZKS8UT', '-19.01772', '26.52199'),
(41, 'Mufutau Coleman', '1622112759399', 'sem', 'Beaumont', '1998-01-31', 0, 'Ridiculus Consulting', 'Ap #441-6943 Luctus, Street', 'tempor@ultricesiaculis.ca', 'XBE73JKA6CK', '-89.52503', '-140.69687'),
(42, 'Kirsten Reid', '1669120340499', 'Mauris', 'Neuss', '1989-11-18', 0, 'Mi Corp.', '1558 Nec St.', 'vestibulum@vulputaterisus.com', 'UYK87QTZ6TU', '-37.50083', '-166.19253'),
(43, 'Lester Y. Snider', '1626030446799', 'enim', 'Vijayawada', '1985-05-26', 0, 'Eros Corp.', '995 Eget, Ave', 'Etiam@Aeneanegetmetus.net', 'UUL81PAG2LG', '48.34645', '92.37861'),
(44, 'Suki Blackburn', '1682091246099', 'vel', 'Spittal an der Drau', '2009-06-28', 0, 'Etiam Imperdiet Foundation', 'Ap #141-7738 Nam Av.', 'mauris.eu@felisDonec.edu', 'CXC48XWW1ZI', '58.21845', '22.14261'),
(45, 'Shaine Mendez', '1651110765599', 'consequat,', 'Ottawa', '2015-10-31', 0, 'Tincidunt Tempus Inc.', '931-6269 Erat Av.', 'Aliquam.ornare.libero@Maurismagna.edu', 'NTK94UUZ6HE', '39.99484', '-84.21979'),
(46, 'Jin F. Jennings', '1675081651799', 'libero', 'Canora', '2011-05-30', 0, 'Ridiculus Foundation', '8716 Nunc Road', 'molestie.tellus.Aenean@tortorNunccommodo.org', 'FRX43CXQ8IB', '41.53548', '-162.73233'),
(47, 'Igor Peters', '1695061387099', 'vel,', 'Calle Blancos', '1993-09-12', 0, 'Neque Non Quam Institute', 'P.O. Box 632, 4802 Convallis Street', 'nibh@auctorodio.com', 'DPC05PTO3ZR', '57.43574', '168.39536'),
(48, 'Brynn Palmer', '1604030237399', 'adipiscing', 'Ponti', '2011-06-21', 0, 'Lacinia Sed Congue Ltd', 'P.O. Box 154, 3976 Lacus. St.', 'nisl.Maecenas.malesuada@lectusconvallisest.ca', 'ALD03NBK1UG', '21.37606', '-122.44847'),
(49, 'Oprah M. Weaver', '1696031805099', 'In', 'Mayerthorpe', '2006-12-19', 0, 'Tincidunt Neque Vitae Industries', '870-1900 Pellentesque Road', 'Donec@quam.edu', 'VMK94FWS5IT', '79.61293', '2.14915'),
(50, 'Mohammad Blankenship', '1636010976399', 'eu,', 'Gaasbeek', '1993-04-04', 0, 'Molestie Corp.', '130-1555 Ac Rd.', 'rhoncus.Proin.nisl@arcuiaculis.org', 'TQJ66JEG3WV', '67.36183', '-152.37166');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
`id_wishlist` int(10) NOT NULL,
  `keterangan_wishlist` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wishlist`
--

INSERT INTO `wishlist` (`id_wishlist`, `keterangan_wishlist`) VALUES
(1, 'arcu. Morbi sit amet massa.'),
(2, 'placerat. Cras dictum ultricies ligula.'),
(3, 'aliquet nec, imperdiet'),
(4, 'metus. Aliquam erat'),
(5, 'scelerisque'),
(6, 'magna. Cras convallis convallis dolor. Quisque tincidunt pede ac'),
(7, 'In at'),
(8, 'quam, elementum at, egestas a, scelerisque sed,'),
(9, 'aliquet, metus urna'),
(10, 'sollicitudin orci sem eget massa. Suspendisse eleifend. Cras'),
(11, 'Sed molestie. Sed'),
(12, 'Integer urna. Vivamus molestie dapibus'),
(13, 'eu, ultrices sit amet, risus. Donec nibh'),
(14, 'tempor diam dictum'),
(15, 'neque pellentesque massa lobortis ultrices.'),
(16, 'consectetuer adipiscing elit. Aliquam auctor, velit eget'),
(17, 'erat, eget tincidunt dui augue eu'),
(18, 'sed pede nec ante blandit viverra.'),
(19, 'Proin vel nisl. Quisque'),
(20, 'aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus'),
(21, 'penatibus et magnis'),
(22, 'placerat eget, venenatis a, magna.'),
(23, 'lobortis'),
(24, 'ut lacus. Nulla tincidunt, neque vitae semper egestas, urna'),
(25, 'nibh vulputate mauris sagittis placerat. Cras dictum ultricies'),
(26, 'cursus non, egestas a, dui. Cras pellentesque. Sed'),
(27, 'nonummy. Fusce'),
(28, 'pellentesque, tellus sem mollis dui,'),
(29, 'Proin nisl sem, consequat nec, mollis vitae, posuere at, velit.'),
(30, 'a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed'),
(31, 'eros non enim commodo hendrerit. Donec porttitor'),
(32, 'euismod urna. Nullam lobortis'),
(33, 'nisi. Cum sociis natoque penatibus et magnis'),
(34, 'neque et nunc. Quisque ornare'),
(35, 'est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh'),
(36, 'a neque. Nullam ut nisi a odio semper cursus. Integer'),
(37, 'arcu. Sed et libero. Proin'),
(38, 'varius. Nam porttitor scelerisque neque.'),
(39, 'accumsan interdum libero dui'),
(40, 'id, blandit at, nisi. Cum sociis natoque penatibus et magnis'),
(41, 'amet, consectetuer adipiscing elit.'),
(42, 'posuere cubilia Curae; Donec'),
(43, 'amet ante. Vivamus'),
(44, 'fames ac turpis'),
(45, 'elementum sem, vitae aliquam eros turpis'),
(46, 'vitae diam. Proin dolor. Nulla semper tellus id'),
(47, 'dictum eleifend, nunc risus varius orci, in consequat enim'),
(48, 'per inceptos'),
(49, 'vitae odio sagittis semper. Nam'),
(50, 'feugiat tellus lorem eu metus. In lorem. Donec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `harga`
--
ALTER TABLE `harga`
 ADD KEY `fk_mengajar` (`id_mentor`), ADD KEY `fk_mengajar2` (`id_mapel`);

--
-- Indexes for table `jadwal_ketersediaan_mengajar`
--
ALTER TABLE `jadwal_ketersediaan_mengajar`
 ADD PRIMARY KEY (`id_jadwal_ketersediaan`), ADD KEY `fk_mempunyai_4` (`id_mentor`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
 ADD PRIMARY KEY (`id_kelas`), ADD KEY `fk_mengikuti` (`id_siswa`), ADD KEY `fk_terdiri` (`id_mapel`), ADD KEY `fk_mengajar3` (`id_mentor`);

--
-- Indexes for table `kualifikasi`
--
ALTER TABLE `kualifikasi`
 ADD PRIMARY KEY (`id_kualifikasi`), ADD KEY `fk_mempunyai_2` (`id_mentor`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
 ADD PRIMARY KEY (`id_mapel`);

--
-- Indexes for table `menginginkan`
--
ALTER TABLE `menginginkan`
 ADD UNIQUE KEY `menginginkan_pk` (`id_siswa`), ADD KEY `fk_menginginkan2` (`id_wishlist`);

--
-- Indexes for table `mentor`
--
ALTER TABLE `mentor`
 ADD PRIMARY KEY (`id_mentor`);

--
-- Indexes for table `pengalaman_mengajar`
--
ALTER TABLE `pengalaman_mengajar`
 ADD PRIMARY KEY (`id_pengalaman`), ADD KEY `fk_mempunyai_1` (`id_mentor`);

--
-- Indexes for table `sejarah_pendidikan`
--
ALTER TABLE `sejarah_pendidikan`
 ADD PRIMARY KEY (`id_pendidikan`), ADD KEY `fk_mempunyai` (`id_mentor`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
 ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
 ADD PRIMARY KEY (`id_wishlist`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal_ketersediaan_mengajar`
--
ALTER TABLE `jadwal_ketersediaan_mengajar`
MODIFY `id_jadwal_ketersediaan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `kualifikasi`
--
ALTER TABLE `kualifikasi`
MODIFY `id_kualifikasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
MODIFY `id_mapel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `mentor`
--
ALTER TABLE `mentor`
MODIFY `id_mentor` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `pengalaman_mengajar`
--
ALTER TABLE `pengalaman_mengajar`
MODIFY `id_pengalaman` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `sejarah_pendidikan`
--
ALTER TABLE `sejarah_pendidikan`
MODIFY `id_pendidikan` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
MODIFY `id_wishlist` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `harga`
--
ALTER TABLE `harga`
ADD CONSTRAINT `fk_mengajar` FOREIGN KEY (`id_mentor`) REFERENCES `mentor` (`id_mentor`),
ADD CONSTRAINT `fk_mengajar2` FOREIGN KEY (`id_mapel`) REFERENCES `mata_pelajaran` (`id_mapel`);

--
-- Ketidakleluasaan untuk tabel `jadwal_ketersediaan_mengajar`
--
ALTER TABLE `jadwal_ketersediaan_mengajar`
ADD CONSTRAINT `fk_mempunyai_4` FOREIGN KEY (`id_mentor`) REFERENCES `mentor` (`id_mentor`);

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
ADD CONSTRAINT `fk_mengikuti` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
ADD CONSTRAINT `fk_mengikuti4` FOREIGN KEY (`id_mentor`) REFERENCES `mentor` (`id_mentor`),
ADD CONSTRAINT `fk_terdiri` FOREIGN KEY (`id_mapel`) REFERENCES `mata_pelajaran` (`id_mapel`);

--
-- Ketidakleluasaan untuk tabel `kualifikasi`
--
ALTER TABLE `kualifikasi`
ADD CONSTRAINT `fk_mempunyai_2` FOREIGN KEY (`id_mentor`) REFERENCES `mentor` (`id_mentor`);

--
-- Ketidakleluasaan untuk tabel `menginginkan`
--
ALTER TABLE `menginginkan`
ADD CONSTRAINT `fk_menginginkan` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
ADD CONSTRAINT `fk_menginginkan2` FOREIGN KEY (`id_wishlist`) REFERENCES `wishlist` (`id_wishlist`);

--
-- Ketidakleluasaan untuk tabel `pengalaman_mengajar`
--
ALTER TABLE `pengalaman_mengajar`
ADD CONSTRAINT `fk_mempunyai_1` FOREIGN KEY (`id_mentor`) REFERENCES `mentor` (`id_mentor`);

--
-- Ketidakleluasaan untuk tabel `sejarah_pendidikan`
--
ALTER TABLE `sejarah_pendidikan`
ADD CONSTRAINT `fk_mempunyai` FOREIGN KEY (`id_mentor`) REFERENCES `mentor` (`id_mentor`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
