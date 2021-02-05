-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2021 at 05:15 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blackexpo_newcompany`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(11) NOT NULL DEFAULT '1',
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(11) NOT NULL DEFAULT '1',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'red');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(11) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(1, 1, 'admin', 'ADMIN', 'DPD Gerindra Jateng', '', 'admin', 'Y', 'Y', 'Y', '<p>yoiijjj</p>', '', 'Sabtu', '2021-01-30', '23:12:22', '1612023168.jpg', 0, '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(11, 'Total Biaya Pembuatan Aplikasi Simpeg', 'Contoh_File_Download_1.txt', '2014-09-23', 13),
(12, 'Type atau Jenis Join di MySQL', 'Contoh_File_Download_1.txt', '2014-09-23', 68),
(13, 'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)', 'Contoh_File_Download_1.txt', '2014-09-23', 34),
(14, 'Pembayaran Tunjangan Remunerasi', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(15, 'Target PNBP Umum & PNBP Fungsional TA.2015', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(16, 'Pelaksanaan Disiplin Pasca Idul Fitri 1435', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(17, 'Kegiatan Akurasi Data Semester I TA. 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 14),
(18, 'Rapat Koordinasi dan Konsultasi', 'Contoh_File_Download_1.txt', '2014-09-23', 5),
(19, 'Lomba dan Penilaian SIMPEG dan E-DOCu', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(20, 'Pemanggilan Peserta Bimtek Hakim Tahun 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 33),
(21, 'Penyusunan PAGU Indikatif Tahun Anggaran 2015', 'Contoh_File_Download_1.txt', '2014-09-23', 57),
(22, 'Revisi Tata Cara Restore Backup SAKPA13 Audited', 'Contoh_File_Download_1.txt', '2014-09-23', 44),
(23, 'Penyusunan RKAKL Alokasi Anggaran DIPA (04)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(24, 'Tindaklanjut Temuan Pemeriksaan BPK RI', 'Contoh_File_Download_1.txt', '2014-09-23', 12),
(25, 'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(26, 'Instruksi Ketua Umum IPASPI Pusat (new)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(27, 'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg', 'Contoh_File_Download_1.txt', '2014-09-23', 6);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(11) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(67, 'About Us', 'about-us', '<div class=\"description mb-4\">\r\n                                        <p>Ullamco laboris nisi ut \r\naliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit \r\nin voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum </p>                                    </div>', '2020-11-01', 'about.jpg', 'admin', 18, '14:59:53', 'Minggu');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(11) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(11) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(11) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'DPD | Gerindra Jateng', 'dpdgerindrajateng@gmail.com', 'https://gerindrajateng.id/', 'https://www.facebook.com/partaigerindrajateng/,\r\nhttps://twitter.com/Gerindra, \r\nhttps://www.instagram.com/gerindrajateng/', '0', '0', '', '', 'geri.png', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15840.282131523118!2d110.4487018!3d-7.0009764!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xca1c8f002f19bcce!2sKANTOR%20DPD%20GERINDRA%20JATENG!5e0!3m2!1sen!2sid!4v1611978032607!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(11) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(11) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `posisi` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(11) NOT NULL,
  `gambar_utama` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`, `gambar_utama`) VALUES
(1, 'internasional', 'admin', 'internasional', 'Y', 1, '1612023136');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(11) NOT NULL,
  `id_video` int(11) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(11) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'geri.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `nama_menu` varchar(255) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(112, 149, 'Nasional', '#', 'Ya', 'Bottom', 12),
(13, 149, 'Internasional', 'kategori/detail/internasional', 'Ya', 'Bottom', 11),
(12, 149, 'Ekonomi', 'kategori/detail/ekonomi', 'Ya', 'Bottom', 13),
(116, 192, 'Hubungi Kami', 'hubungi', 'Ya', 'Top', 18),
(119, 192, 'Index Berita', 'berita/indeks_berita', 'Ya', 'Top', 19),
(148, 149, 'Hukum', 'kategori/detail/hukum', 'Ya', 'Bottom', 15),
(149, 190, 'Berita', '#', 'Ya', 'Bottom', 10),
(185, 192, 'Forum', 'konsultasi', 'Ya', 'Bottom', 20),
(186, 192, 'Login', 'login', 'Ya', 'Bottom', 22),
(187, 191, 'Agenda', 'agenda', 'Ya', 'Bottom', 24),
(181, 191, 'Download', 'download', 'Ya', 'Bottom', 25),
(182, 191, 'Video', 'playlist', 'Ya', 'Bottom', 27),
(183, 191, 'Gallery', 'albums', 'Ya', 'Bottom', 26),
(184, 192, 'Register', 'kontributor', 'Ya', 'Bottom', 21),
(168, 149, 'Sport', '#', 'Ya', 'Bottom', 14),
(169, 149, 'Hiburan', '#', 'Ya', 'Bottom', 16),
(170, 191, 'Religi', '#', 'Ya', 'Bottom', 29),
(171, 170, 'Tokoh', '#', 'Ya', 'Bottom', 30),
(172, 170, 'Ceramah', '#', 'Ya', 'Bottom', 31),
(173, 170, 'Hikmah', 'https://ok.com', 'Ya', 'Bottom', 32),
(188, 190, 'Home', '', 'Ya', 'Bottom', 2),
(189, 190, 'Portfolio', '#section_portfolio', 'Ya', 'Bottom', 7),
(190, 0, 'Menu Utama', '#', 'Ya', 'Bottom', 1),
(191, 0, 'Menu Sidebar', '#', 'Ya', 'Bottom', 23),
(192, 0, 'Menu Footer', '#', 'Ya', 'Bottom', 17),
(193, 190, 'Profil', '', 'Ya', 'Bottom', 3),
(194, 190, 'Why Us', '#section_feature', 'Ya', 'Bottom', 6),
(196, 190, 'Team', '#section_team', 'Ya', 'Bottom', 8),
(197, 190, 'Contact Us', '#section_contact', 'Ya', 'Bottom', 9),
(198, 191, 'Berita', 'berita', 'Ya', 'Bottom', 28),
(199, 193, 'Sejarah', '', 'Ya', 'Bottom', 4),
(200, 193, 'Lambang Partai', '', 'Ya', 'Bottom', 5);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(11) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(11) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, ''),
(79, 'Nicepage client', 'admin', 'nicepage-client', '', '', 'N', 'admin', 'N', 0, ''),
(77, 'Module Nicepage', 'admin', 'nicepage', '', '', 'N', 'admin', 'N', 0, ''),
(78, 'Nicepage Testimoni', 'admin', 'nicepage-testimoni', '', '', 'N', 'admin', 'N', 0, ''),
(80, 'Nicepage Team', 'admin', 'nicepage-team', '', '', 'N', 'admin', 'N', 0, ''),
(81, 'Nicepage Portfolio', 'admin', 'nicepage-portfolio', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(11) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p><span style=\"font-weight: bolder;\">Haloo!</span>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br><br>Website ini adalah demo dari layanan jasa pembuatan web murah dari 401XD Group Indonesia. Segera konsultasikan pada kami untuk menggunakan jasa pembuatan web murah, agar dapat segera merealisasikan apa yang anda harapkan silahkan hubungi kami via email mycoding@401xd.com &amp; whatsapp 082377823390. Terima kasih<br></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(11) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(11) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(11) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Siapakah Calon Walikota dan Wakil Walikota Padang Favorit Anda?', 'Pertanyaan', 'admin', 0, 'Y'),
(25, 'Mahyeldi Ansyarullah - Emzalmi', 'Jawaban', 'admin', 25, 'Y'),
(31, 'Robby Prihandaya - Dewi Safitri', 'Jawaban', 'admin', 2, 'Y'),
(32, 'Tommy Utama - Laura Hikmah', 'Jawaban', 'admin', 4, 'Y'),
(33, 'Willy Fernando - Vicky Armita', 'Jawaban', 'admin', 9, 'Y'),
(35, 'Laura Himah i Nisaa - Safaruddin', 'Jawaban', 'admin', 5, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(11) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(14, 'Sekilas info ini', '2020-10-09', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-04-19', 1, '1524111568'),
('::1', '2018-04-21', 1, '1524249582'),
('::1', '2018-04-24', 19, '1524509093'),
('::1', '2018-05-04', 13, '1525441129'),
('::1', '2018-05-05', 36, '1525494921'),
('::1', '2018-05-06', 5, '1525614861'),
('::1', '2018-05-11', 15, '1525998298'),
('::1', '2018-05-18', 4, '1526611139'),
('::1', '2018-05-19', 6, '1526701697'),
('::1', '2018-05-20', 13, '1526833607'),
('::1', '2018-05-22', 13, '1526947912'),
('::1', '2018-05-23', 16, '1527056425'),
('::1', '2018-05-31', 1, '1527743948'),
('::1', '2018-06-01', 2, '1527815549'),
('::1', '2018-06-03', 191, '1528045141'),
('::1', '2018-06-04', 100, '1528127678'),
('::1', '2019-05-18', 28, '1558141438'),
('::1', '2019-06-30', 2, '1561872220'),
('::1', '2019-07-01', 1, '1561950236'),
('::1', '2019-07-02', 1, '1562028708'),
('::1', '2019-07-08', 1, '1562544054'),
('::1', '2019-07-13', 1, '1562978601'),
('::1', '2019-07-14', 243, '1563094093'),
('::1', '2019-07-15', 213, '1563173043'),
('::1', '2019-07-16', 3, '1563231376'),
('::1', '2019-07-17', 9, '1563323606'),
('::1', '2019-07-18', 4, '1563407947'),
('::1', '2019-08-27', 2, '1566889548'),
('::1', '2019-11-14', 100, '1573723243'),
('::1', '2019-11-15', 1, '1573815541'),
('::1', '2019-11-16', 92, '1573912524'),
('::1', '2019-11-17', 14, '1573997167'),
('::1', '2019-11-18', 380, '1574068697'),
('::1', '2019-11-19', 12, '1574148729'),
('::1', '2019-11-20', 5, '1574240913'),
('::1', '2019-11-21', 1, '1574291940'),
('::1', '2019-11-24', 3, '1574552073'),
('::1', '2020-02-09', 3, '1581212463'),
('::1', '2020-08-18', 43, '1597768438'),
('127.0.0.1', '2020-08-19', 90, '1597823640'),
('::1', '2020-08-20', 42, '1597942713'),
('::1', '2020-08-21', 112, '1598020835'),
('::1', '2020-08-22', 52, '1598107273'),
('127.0.0.1', '2020-08-22', 16, '1598090748'),
('::1', '2020-08-24', 4, '1598279482'),
('::1', '2020-08-25', 2, '1598374785'),
('::1', '2020-08-26', 2, '1598417107'),
('::1', '2020-09-15', 115, '1600178859'),
('127.0.0.1', '2020-09-15', 120, '1600189095'),
('127.0.0.1', '2020-09-16', 71, '1600191075'),
('::1', '2020-09-16', 974, '1600275489'),
('::1', '2020-09-17', 1012, '1600360763'),
('::1', '2020-09-18', 462, '1600448344'),
('::1', '2020-09-19', 488, '1600534742'),
('::1', '2020-09-20', 762, '1600621189'),
('::1', '2020-09-21', 862, '1600707477'),
('::1', '2020-09-22', 144, '1600781377'),
('::1', '2020-09-23', 74, '1600857049'),
('::1', '2020-10-02', 2, '1601645413'),
('::1', '2020-10-03', 1, '1601717419'),
('::1', '2020-10-04', 12, '1601828779'),
('::1', '2020-10-05', 31, '1601911146'),
('::1', '2020-10-07', 11, '1602079363'),
('::1', '2020-10-08', 20, '1602176396'),
('::1', '2020-10-09', 366, '1602232152'),
('::1', '2020-10-17', 356, '1602952436'),
('::1', '2020-10-25', 112, '1603643868'),
('::1', '2020-10-26', 96, '1603731518'),
('127.0.0.1', '2020-10-26', 25, '1603707281'),
('::1', '2020-10-27', 245, '1603810333'),
('127.0.0.1', '2020-10-27', 14, '1603735374'),
('::1', '2020-10-28', 368, '1603901077'),
('::1', '2020-10-29', 485, '1603990516'),
('::1', '2020-10-30', 724, '1604077177'),
('::1', '2020-10-31', 445, '1604141539'),
('127.0.0.1', '2020-10-31', 156, '1604162198'),
('::1', '2020-11-01', 350, '1604244688'),
('::1', '2020-11-02', 40, '1604305994'),
('::1', '2020-11-18', 17, '1605710906'),
('::1', '2020-11-19', 32, '1605787110'),
('::1', '2020-11-20', 21, '1605885317'),
('114.5.109.148', '2020-11-20', 3, '1605887818'),
('114.5.109.148', '2020-11-21', 16, '1605911648'),
('114.5.109.148', '2020-11-22', 6, '1606018929'),
('94.130.167.94', '2020-11-23', 1, '1606121092'),
('36.75.67.65', '2020-11-23', 5, '1606129900'),
('114.124.236.166', '2020-11-23', 4, '1606142055'),
('66.96.228.105', '2020-11-23', 1, '1606143177'),
('66.249.71.29', '2020-11-24', 12, '1606174742'),
('66.249.71.28', '2020-11-24', 33, '1606174893'),
('66.249.71.27', '2020-11-24', 64, '1606174257'),
('66.249.66.76', '2020-11-24', 1, '1606172698'),
('116.197.130.58', '2020-11-24', 1, '1606190728'),
('103.105.31.117', '2020-11-24', 1, '1606201669'),
('180.252.117.14', '2020-11-24', 2, '1606203527'),
('202.3.215.133', '2020-11-24', 3, '1606216433'),
('180.246.16.222', '2020-11-24', 1, '1606219063'),
('110.138.148.63', '2020-11-25', 3, '1606261497'),
('66.249.71.27', '2020-11-25', 2, '1606315711'),
('36.72.29.121', '2020-11-25', 1, '1606273920'),
('36.85.54.205', '2020-11-25', 5, '1606276662'),
('66.249.71.29', '2020-11-25', 2, '1606306164'),
('36.75.244.21', '2020-11-25', 1, '1606283362'),
('36.65.207.159', '2020-11-25', 3, '1606289302'),
('180.242.215.28', '2020-11-25', 3, '1606289790'),
('66.249.71.28', '2020-11-25', 2, '1606310846'),
('120.188.92.120', '2020-11-25', 5, '1606306565'),
('103.105.30.113', '2020-11-25', 1, '1606316956'),
('36.69.7.58', '2020-11-26', 1, '1606324450'),
('66.249.71.27', '2020-11-26', 6, '1606394915'),
('118.137.108.15', '2020-11-26', 4, '1606329873'),
('66.249.71.29', '2020-11-26', 10, '1606404008'),
('66.249.71.28', '2020-11-26', 11, '1606408560'),
('125.161.138.163', '2020-11-26', 9, '1606374030'),
('36.68.236.93', '2020-11-26', 1, '1606372823'),
('66.249.71.27', '2020-11-27', 6, '1606492045'),
('66.249.71.29', '2020-11-27', 11, '1606494951'),
('66.249.71.28', '2020-11-27', 5, '1606485846'),
('110.139.116.226', '2020-11-27', 1, '1606453748'),
('180.242.27.210', '2020-11-27', 3, '1606479326'),
('36.72.77.78', '2020-11-27', 1, '1606483599'),
('182.2.166.160', '2020-11-27', 4, '1606495160'),
('125.163.220.139', '2020-11-27', 2, '1606489316'),
('111.94.46.19', '2020-11-27', 1, '1606495425'),
('66.249.71.27', '2020-11-28', 6, '1606567704'),
('66.249.71.28', '2020-11-28', 6, '1606563310'),
('66.249.71.29', '2020-11-28', 7, '1606581451'),
('182.2.166.160', '2020-11-28', 6, '1606576139'),
('139.193.215.243', '2020-11-28', 1, '1606571219'),
('66.249.71.28', '2020-11-29', 11, '1606667117'),
('66.249.71.27', '2020-11-29', 15, '1606665120'),
('66.249.71.29', '2020-11-29', 7, '1606662386'),
('66.249.79.83', '2020-11-29', 1, '1606656482'),
('66.249.71.27', '2020-11-30', 10, '1606754799'),
('66.249.71.29', '2020-11-30', 9, '1606750035'),
('66.249.71.28', '2020-11-30', 4, '1606718207'),
('125.163.179.108', '2020-11-30', 1, '1606696710'),
('114.5.214.150', '2020-11-30', 4, '1606703047'),
('36.75.187.206', '2020-11-30', 5, '1606705537'),
('66.249.69.49', '2020-11-30', 1, '1606713932'),
('180.242.48.171', '2020-11-30', 5, '1606718521'),
('114.5.109.91', '2020-11-30', 1, '1606716288'),
('123.231.195.74', '2020-11-30', 4, '1606733846'),
('66.249.71.27', '2020-12-01', 4, '1606826292'),
('66.249.71.29', '2020-12-01', 11, '1606840268'),
('66.249.71.28', '2020-12-01', 6, '1606830839'),
('66.249.79.83', '2020-12-01', 1, '1606776911'),
('66.249.79.85', '2020-12-01', 1, '1606790125'),
('114.5.110.6', '2020-12-01', 2, '1606807149'),
('182.1.46.124', '2020-12-01', 1, '1606810223'),
('182.1.63.68', '2020-12-01', 1, '1606810367'),
('182.1.62.52', '2020-12-01', 1, '1606810385'),
('182.1.44.60', '2020-12-01', 1, '1606810404'),
('114.5.241.213', '2020-12-01', 1, '1606834929'),
('66.249.71.27', '2020-12-02', 1, '1606842069'),
('66.249.79.81', '2020-12-02', 3, '1606927958'),
('66.249.79.87', '2020-12-02', 1, '1606867602'),
('66.249.79.85', '2020-12-02', 3, '1606917754'),
('120.188.4.201', '2020-12-02', 1, '1606909654'),
('103.23.244.254', '2020-12-02', 1, '1606923592'),
('66.249.79.81', '2020-12-03', 2, '1606953477'),
('66.249.79.83', '2020-12-03', 1, '1606959419'),
('114.79.4.70', '2020-12-03', 3, '1606976057'),
('66.249.79.85', '2020-12-03', 1, '1607000206'),
('114.124.197.17', '2020-12-03', 5, '1607011514'),
('116.206.35.29', '2020-12-04', 5, '1607015516'),
('66.249.73.119', '2020-12-04', 1, '1607018796'),
('125.166.118.86', '2020-12-04', 8, '1607044177'),
('123.231.195.74', '2020-12-04', 1, '1607064758'),
('114.124.175.139', '2020-12-04', 1, '1607098807'),
('66.249.64.149', '2020-12-05', 1, '1607135198'),
('185.191.171.20', '2020-12-05', 1, '1607148658'),
('36.72.216.1', '2020-12-05', 1, '1607149741'),
('66.249.64.145', '2020-12-05', 2, '1607185164'),
('103.105.31.91', '2020-12-05', 2, '1607153482'),
('114.124.135.181', '2020-12-05', 3, '1607156644'),
('180.241.44.87', '2020-12-05', 3, '1607175816'),
('114.124.199.52', '2020-12-06', 1, '1607238598'),
('125.165.172.7', '2020-12-06', 20, '1607267201'),
('120.188.73.124', '2020-12-06', 3, '1607268296'),
('36.68.236.240', '2020-12-07', 2, '1607312291'),
('54.36.148.239', '2020-12-07', 1, '1607321690'),
('125.165.106.206', '2020-12-07', 2, '1607331417'),
('36.72.216.1', '2020-12-07', 3, '1607340380'),
('66.249.71.27', '2020-12-07', 1, '1607357328'),
('66.249.71.28', '2020-12-08', 1, '1607370971'),
('66.249.71.27', '2020-12-08', 2, '1607400296'),
('36.72.213.70', '2020-12-08', 2, '1607402348'),
('66.249.71.29', '2020-12-08', 1, '1607409330'),
('180.254.150.60', '2020-12-08', 1, '1607417281'),
('185.191.171.22', '2020-12-08', 1, '1607426678'),
('185.191.171.45', '2020-12-09', 1, '1607482435'),
('185.191.171.11', '2020-12-09', 1, '1607497267'),
('66.249.71.27', '2020-12-09', 4, '1607530436'),
('66.249.71.29', '2020-12-09', 4, '1607529799'),
('66.249.71.28', '2020-12-09', 2, '1607529651'),
('110.137.120.48', '2020-12-09', 3, '1607512006'),
('103.147.237.69', '2020-12-10', 4, '1607537809'),
('185.191.171.34', '2020-12-10', 2, '1607601349'),
('185.191.171.43', '2020-12-10', 1, '1607541302'),
('185.191.171.37', '2020-12-10', 1, '1607548024'),
('185.191.171.42', '2020-12-10', 1, '1607548848'),
('185.191.171.20', '2020-12-10', 1, '1607549039'),
('114.125.164.248', '2020-12-10', 2, '1607569893'),
('185.191.171.17', '2020-12-10', 1, '1607588957'),
('185.191.171.26', '2020-12-10', 1, '1607590879'),
('180.242.215.47', '2020-12-10', 4, '1607591235'),
('185.191.171.3', '2020-12-10', 1, '1607591550'),
('185.191.171.8', '2020-12-10', 1, '1607593481'),
('185.191.171.35', '2020-12-10', 1, '1607599141'),
('185.191.171.25', '2020-12-10', 1, '1607608876'),
('66.249.71.27', '2020-12-10', 2, '1607615958'),
('185.191.171.35', '2020-12-11', 1, '1607619673'),
('66.249.71.27', '2020-12-11', 1, '1607623159'),
('185.191.171.44', '2020-12-11', 1, '1607623164'),
('66.249.71.29', '2020-12-11', 1, '1607627638'),
('185.191.171.36', '2020-12-11', 1, '1607628414'),
('185.191.171.25', '2020-12-11', 1, '1607649777'),
('185.191.171.4', '2020-12-11', 1, '1607654147'),
('185.191.171.26', '2020-12-11', 1, '1607655215'),
('185.191.171.6', '2020-12-11', 2, '1607666700'),
('185.191.171.18', '2020-12-11', 1, '1607666579'),
('185.191.171.37', '2020-12-11', 1, '1607669061'),
('202.80.217.228', '2020-12-11', 2, '1607676418'),
('185.191.171.19', '2020-12-11', 1, '1607676965'),
('185.191.171.40', '2020-12-11', 1, '1607687800'),
('66.249.69.49', '2020-12-11', 4, '1607701174'),
('66.249.69.53', '2020-12-11', 1, '1607691284'),
('185.191.171.24', '2020-12-11', 1, '1607696548'),
('185.191.171.13', '2020-12-11', 1, '1607698943'),
('185.191.171.43', '2020-12-11', 1, '1607700889'),
('185.191.171.44', '2020-12-12', 1, '1607707515'),
('66.249.69.53', '2020-12-12', 1, '1607713826'),
('185.191.171.25', '2020-12-12', 2, '1607735796'),
('185.191.171.14', '2020-12-12', 1, '1607715517'),
('66.249.71.28', '2020-12-12', 1, '1607718372'),
('185.191.171.40', '2020-12-12', 1, '1607718776'),
('185.191.171.15', '2020-12-12', 2, '1607775628'),
('185.191.171.11', '2020-12-12', 1, '1607723919'),
('66.249.71.29', '2020-12-12', 1, '1607727466'),
('185.191.171.39', '2020-12-12', 1, '1607746726'),
('114.122.69.172', '2020-12-12', 1, '1607756569'),
('185.191.171.21', '2020-12-12', 1, '1607765657'),
('185.191.171.43', '2020-12-12', 1, '1607772739'),
('180.241.240.240', '2020-12-12', 2, '1607777640'),
('185.191.171.7', '2020-12-12', 1, '1607778193'),
('185.191.171.1', '2020-12-12', 2, '1607786660'),
('114.125.43.91', '2020-12-12', 1, '1607787342'),
('185.191.171.37', '2020-12-13', 2, '1607843614'),
('185.191.171.36', '2020-12-13', 1, '1607803499'),
('185.191.171.6', '2020-12-13', 2, '1607814125'),
('185.191.171.20', '2020-12-13', 1, '1607813839'),
('185.191.171.24', '2020-12-13', 2, '1607871572'),
('185.191.171.41', '2020-12-13', 3, '1607856221'),
('185.191.171.39', '2020-12-13', 1, '1607818656'),
('185.191.171.38', '2020-12-13', 2, '1607841272'),
('185.191.171.45', '2020-12-13', 1, '1607821723'),
('185.191.171.35', '2020-12-13', 1, '1607829766'),
('66.249.71.28', '2020-12-13', 1, '1607845849'),
('180.242.83.50', '2020-12-13', 1, '1607847020'),
('185.191.171.16', '2020-12-13', 1, '1607847791'),
('185.191.171.18', '2020-12-13', 1, '1607855175'),
('185.191.171.15', '2020-12-13', 1, '1607856268'),
('185.191.171.8', '2020-12-13', 1, '1607856286'),
('66.249.71.27', '2020-12-13', 1, '1607864123'),
('185.191.171.1', '2020-12-13', 1, '1607870700'),
('185.191.171.44', '2020-12-13', 1, '1607874748'),
('185.191.171.6', '2020-12-14', 1, '1607880341'),
('185.191.171.3', '2020-12-14', 3, '1607954821'),
('185.191.171.20', '2020-12-14', 1, '1607895181'),
('185.191.171.45', '2020-12-14', 2, '1607918806'),
('185.191.171.42', '2020-12-14', 1, '1607911080'),
('185.191.171.21', '2020-12-14', 2, '1607950370'),
('180.248.150.219', '2020-12-14', 1, '1607918423'),
('185.191.171.37', '2020-12-14', 2, '1607946551'),
('185.191.171.13', '2020-12-14', 1, '1607920681'),
('185.191.171.22', '2020-12-14', 2, '1607948921'),
('185.191.171.25', '2020-12-14', 3, '1607961375'),
('185.191.171.26', '2020-12-14', 1, '1607942458'),
('180.249.230.128', '2020-12-14', 1, '1607943479'),
('185.191.171.8', '2020-12-14', 2, '1607964048'),
('185.191.171.4', '2020-12-14', 2, '1607961949'),
('185.191.171.1', '2020-12-14', 1, '1607959047'),
('185.191.171.14', '2020-12-14', 1, '1607960265'),
('185.191.171.34', '2020-12-14', 1, '1607961168'),
('185.191.171.8', '2020-12-15', 1, '1607970484'),
('185.191.171.2', '2020-12-15', 2, '1608039722'),
('185.191.171.18', '2020-12-15', 1, '1607990295'),
('185.191.171.39', '2020-12-15', 2, '1608040427'),
('185.191.171.14', '2020-12-15', 1, '1607997015'),
('185.191.171.16', '2020-12-15', 1, '1608002404'),
('185.191.171.7', '2020-12-15', 2, '1608008643'),
('185.191.171.9', '2020-12-15', 1, '1608009605'),
('180.242.214.222', '2020-12-15', 3, '1608014534'),
('36.76.216.118', '2020-12-15', 1, '1608014549'),
('185.191.171.21', '2020-12-15', 1, '1608022670'),
('180.249.167.51', '2020-12-15', 1, '1608030855'),
('185.191.171.12', '2020-12-15', 1, '1608032542'),
('185.191.171.43', '2020-12-15', 1, '1608035062'),
('185.191.171.33', '2020-12-15', 1, '1608037576'),
('185.191.171.37', '2020-12-15', 1, '1608037885'),
('66.249.71.29', '2020-12-15', 1, '1608038911'),
('185.191.171.42', '2020-12-15', 1, '1608039402'),
('185.191.171.3', '2020-12-15', 1, '1608040279'),
('125.160.66.216', '2020-12-15', 1, '1608042342'),
('114.5.245.245', '2020-12-15', 1, '1608048926'),
('185.191.171.10', '2020-12-15', 1, '1608049763'),
('185.191.171.6', '2020-12-16', 1, '1608053878'),
('185.191.171.44', '2020-12-16', 2, '1608080191'),
('185.191.171.37', '2020-12-16', 1, '1608066134'),
('114.124.130.15', '2020-12-16', 1, '1608066351'),
('185.191.171.42', '2020-12-16', 1, '1608071125'),
('185.191.171.1', '2020-12-16', 1, '1608074962'),
('185.191.171.35', '2020-12-16', 2, '1608133750'),
('185.191.171.21', '2020-12-16', 1, '1608081938'),
('185.191.171.43', '2020-12-16', 1, '1608084863'),
('185.191.171.36', '2020-12-16', 1, '1608090605'),
('66.249.73.53', '2020-12-16', 1, '1608094477'),
('185.191.171.3', '2020-12-16', 1, '1608098022'),
('115.178.196.26', '2020-12-16', 3, '1608103020'),
('182.1.46.209', '2020-12-16', 2, '1608110486'),
('185.191.171.7', '2020-12-16', 1, '1608116042'),
('185.191.171.39', '2020-12-16', 1, '1608116115'),
('36.80.208.53', '2020-12-16', 1, '1608122792'),
('66.249.73.55', '2020-12-16', 1, '1608128393'),
('185.191.171.5', '2020-12-16', 1, '1608133946'),
('66.249.73.51', '2020-12-16', 1, '1608134442'),
('36.76.220.6', '2020-12-16', 3, '1608135016'),
('185.191.171.24', '2020-12-17', 1, '1608142841'),
('185.191.171.38', '2020-12-17', 1, '1608145118'),
('182.1.22.147', '2020-12-17', 1, '1608145686'),
('185.191.171.33', '2020-12-17', 1, '1608151139'),
('66.249.64.149', '2020-12-17', 1, '1608157333'),
('185.191.171.16', '2020-12-17', 1, '1608159599'),
('185.191.171.3', '2020-12-17', 1, '1608161257'),
('185.191.171.36', '2020-12-17', 1, '1608170254'),
('182.1.5.5', '2020-12-17', 2, '1608170509'),
('::1', '2020-12-17', 102, '1608218387'),
('::1', '2020-12-19', 2, '1608362518'),
('::1', '2021-01-29', 55, '1611939570'),
('::1', '2021-01-30', 568, '1612023171');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(11) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(11) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(11) NOT NULL,
  `reply` int(11) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(1, 0, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00'),
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(3, 0, 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(6, 0, 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(14, 0, 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31'),
(15, 6, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(23, 20, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23'),
(32, 14, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'ok dijawab', '2020-09-17', '13:26:43'),
(35, 34, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'ss', '2020-09-17', '13:28:40'),
(37, 36, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'mana saya tahu', '2020-10-31', '16:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_novapage`
--

CREATE TABLE `tbl_novapage` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_novapage`
--

INSERT INTO `tbl_novapage` (`id`, `key`, `value`) VALUES
(17, 'section_about', '{\"judul\":\"Welcome\",\"deskripsi\":\"<p>Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.<\\/p><ul><li>Excepteur sint occaecat cupidatat non proident<\\/li><li>Excepteur sint occaecat cupidatat non proident<\\/li><li>Excepteur sint occaecat cupidatat non proident<\\/li><\\/ul><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum <\\/p>\",\"gambar\":\"about.jpg\",\"tipe_link\":\"halaman\",\"link_halaman\":\"about-us\",\"link_url\":\"#\",\"link_label\":\"More Info\",\"skema_warna\":\"light\"}'),
(18, 'section_services', '{\"judul\":\"SEPUTAR GERINDRA\",\"deskripsi\":\"\",\"item\":[{\"judul\":\"KABAR PRABOWO\",\"deskripsi\":\"\",\"icon\":\"fa fa-code\",\"link_halaman\":\"\"},{\"judul\":\"AMBULANCE GERINDRA\",\"deskripsi\":\"\",\"icon\":\"fa fa-android\",\"link_halaman\":\"\"},{\"judul\":\"SATRIA RESCUE TEAM\",\"deskripsi\":\"\",\"icon\":\"fa fa-group\",\"link_halaman\":\"\"},{\"judul\":\"LEMBAGA ADVOKASI\",\"deskripsi\":\"\",\"icon\":\"fa fa-cart-plus\",\"link_halaman\":\"\"},{\"judul\":\"DISKUSI ONLINE\",\"deskripsi\":\"\",\"icon\":\"fa fa-bullhorn\",\"link_halaman\":\"\"},{\"judul\":\"PROGRAM KERJA\",\"deskripsi\":\"\",\"icon\":\"fa fa-pencil\",\"link_halaman\":\"\"},{\"judul\":\"REVOLUSI PUTIH\",\"deskripsi\":\"\",\"icon\":\"\",\"link_halaman\":\"\"},{\"judul\":\"SAYAP GERINDRA\",\"deskripsi\":\"\",\"icon\":\"\",\"link_halaman\":\"\"},{\"judul\":\"KINERJA PEMERINTAH\",\"deskripsi\":\"\",\"icon\":\"\",\"link_halaman\":\"\"}],\"skema_warna\":\"default\"}'),
(19, 'section_berita', '{\"judul\":\"Berita Terbaru\",\"deskripsi\":\"\",\"kategori\":\"\",\"jumlah\":\"1\",\"layout\":\"3\",\"skema_warna\":\"default\"}'),
(20, 'sidebar_aktif', '[\"widget_banner\",\"widget_search\",\"widget_side_menu\",\"widget_berita_kategori\",\"widget_berita_populer\",\"widget_berita_tag\",\"widget_berita_utama\",\"widget_komentar\",\"widget_polling\",\"widget_social\"]'),
(21, 'sections_aktif', '[\"section_berita\",\"section_hero\",\"section_feature\",\"section_portfolio\",\"section_services\",\"section_team\"]'),
(23, 'sections_order', '{\"0\":\"section_hero\",\"1\":\"section_berita\",\"2\":\"section_services\",\"4\":\"section_feature\",\"8\":\"section_team\",\"9\":\"section_portfolio\"}'),
(26, 'sidebar_order', '[\"widget_search\",\"widget_banner\",\"widget_social\",\"widget_side_menu\",\"widget_berita_kategori\",\"widget_berita_utama\",\"widget_berita_populer\",\"widget_berita_tag\",\"widget_komentar\",\"widget_polling\"]'),
(27, 'section_cta', '{\"text\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua\",\"url\":\"\",\"label\":\"Get In Contact\",\"skema_warna\":\"light\",\"background\":\"\"}'),
(28, 'section_feature', '{\"judul\":\"Media Sosial Gerindra\",\"deskripsi\":\"\",\"item\":[{\"judul\":\"GerindraJateng\",\"deskripsi\":\"\",\"icon\":\"fa fa-facebook-f\",\"link_halaman\":\"\"},{\"judul\":\"@GerindraJateng\",\"deskripsi\":\"\",\"icon\":\"fa fa-twitter\",\"link_halaman\":\"\"},{\"judul\":\"@GerindraJateng\",\"deskripsi\":\"\",\"icon\":\"fa fa-instagram\",\"link_halaman\":\"\"},{\"judul\":\"@GerindraJateng\",\"deskripsi\":\"\",\"icon\":\"fa fa-tumblr\",\"link_halaman\":\"\"},{\"judul\":\"GerindraJateng\",\"deskripsi\":\"\",\"icon\":\"fa fa-youtube-play\",\"link_halaman\":\"\"}],\"skema_warna\":\"light\",\"background\":\"\"}'),
(29, 'section_portfolio', '{\"judul\":\"FOTO & VIDEO\",\"deskripsi\":\"\",\"jumlah\":\"6\",\"layout\":\"3\",\"label_link\":\"\",\"skema_warna\":\"light\"}'),
(30, 'section_client', '{\"judul\":\"Client\",\"deskripsi\":\"Sit sint consectetur velit. Quisquam quos quisquam cupiditate. \",\"jumlah\":\"8\",\"skema_warna\":\"light\"}'),
(31, 'section_team', '{\"judul\":\"KUTIPAN BERITA\",\"deskripsi\":\"\",\"layout\":\"4\",\"label_link\":\"\",\"skema_warna\":\"light\"}'),
(32, 'section_hero', '{\"item\":[{\"judul\":\"DEWAN PIMPINAN DAERAH\",\"deskripsi\":\"PARTAI GERAKAN INDONESIA RAYA\\r\\nPROVINSI JAWA TENGAH\",\"gambar\":\"1612022612.png\",\"tipe_link\":\"url\",\"link_halaman\":\"\",\"link_url\":\"#section_about\",\"link_label\":\"GABUNG GEINDRA\"},{\"judul\":\"Laverage Your Business\",\"deskripsi\":\"Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. \",\"gambar\":\"bannerlain.jpg\",\"tipe_link\":\"url\",\"link_halaman\":\"\",\"link_url\":\"#section_services\",\"link_label\":\"More Info\"},{\"judul\":\"Digitalize Your Company\",\"deskripsi\":\"Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. \",\"gambar\":\"WhatsApp.jpg\",\"tipe_link\":\"url\",\"link_halaman\":\"\",\"link_url\":\"#section_feature\",\"link_label\":\"More Info\"}]}'),
(33, 'section_contact', '{\"judul\":\"Contact Us\",\"deskripsi\":\"Sit sint consectetur velit. Quisquam quos quisquam cupiditate. \",\"text\":\"<p><b>NOVAPAGE INDONESIA<\\/b><\\/p><p>Laverage Your Business<b><br><\\/b><\\/p><p>Jl. Kemerdekaan,<br><\\/p><p><\\/p><p><\\/p>\",\"embeded_code\":\"\",\"skema_warna\":\"light\"}'),
(46, 'setting_sidebar', '[{\"widget_search\":{\"judul\":\"\"}},{\"widget_iklan_sidebar\":{\"judul\":\"\",\"iklan_sidebar\":\"2\"}},{\"widget_social\":{\"judul\":\"Temukan juga kami di\",\"teks\":\"Ikuti kami di facebook, twitter, Instagram, Youtube dan dapatkan informasi terbaru dari kami disana.\"}},{\"widget_berita_populer\":{\"judul\":\"Berita Populer\",\"jumlah\":\"4\"}},{\"widget_berita_pilihan\":{\"judul\":\"Berita Utama\",\"group\":\"utama\",\"jumlah\":\"3\"}},{\"widget_berita_kategori\":{\"judul\":\"Kategori\",\"tampilkan_jumlah_berita\":\"1\"}},{\"widget_berita_tag\":{\"judul\":\"Tags\"}},{\"widget_polling\":{\"judul\":\"Jajak Pendapat\"}},{\"widget_komentar\":{\"judul\":\"Komantar Terakhir\",\"jumlah\":\"3\"}}]'),
(34, 'section_testimonial', '{\"judul\":\"Testimonial\",\"deskripsi\":\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque\",\"jumlah\":\"6\",\"skema_warna\":\"image\",\"background\":\"about.jpg\"}'),
(35, 'section_faq', '{\"judul\":\"Frequently Asked Questions\",\"deskripsi\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua\",\"item\":[{\"tanya\":\"Apa Kabar\",\"jawaban\":\"Baik gan\"},{\"tanya\":\"Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci\",\"jawaban\":\"Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis \"},{\"tanya\":\"Fringilla phasellus faucibus scelerisque eleifend donec pretium\",\"jawaban\":\"Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui. \"},{\"tanya\":\"Purus gravida quis blandit turpis cursus in\",\"jawaban\":\"Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in \"}],\"skema_warna\":\"light\",\"background\":\"\"}'),
(36, 'lokasi_menu', '{\"menu_utama\":\"190\",\"menu_footer\":\"192\"}'),
(42, 'header_embeded_code', '\"\"'),
(43, 'footer_embeded_code', '\"\"'),
(44, 'tagline', '{\"text\":\"\",\"header\":\"0\",\"footer\":\"0\"}'),
(45, 'btn_back_to_top', '\"1\"'),
(49, 'setting_blog_sections', '[{\"blog_section_berita_slider\":{\"judul\":\"\",\"group\":\"headline\",\"jumlah\":\"4\"}},{\"blog_section_berita_populer\":{\"judul\":\"Berita Populer\",\"jumlah\":\"3\"}},{\"blog_section_iklan_home\":{\"judul\":\"\",\"iklan_home\":\"2\"}},{\"blog_section_berita_per_kategori\":{\"judul\":\"\",\"kategori\":\"21\",\"jumlah\":\"3\"}},{\"blog_section_berita_terbaru\":{\"judul\":\" Berita Terbaru \",\"jumlah\":\"4\"}}]'),
(57, 'setting_footer_3', '[{\"widget_menu\":{\"judul\":\"Usefull Link\",\"group_menu\":\"192\"}}]'),
(56, 'setting_footer_2', '[{\"widget_berita_tag\":{\"judul\":\"Tags\"}}]'),
(55, 'setting_footer_1', '[{\"widget_logo\":{\"zoom\":\"7\"}},{\"widget_contact\":{\"judul\":\"DPD | Gerindra Jateng\",\"email\":\"dpdgerindrajateng@gmail.com\",\"telp\":\"(024) 76412180\",\"alamat\":\"Jl. Kanguru Raya No. 12, Gayamsari, Kota Semarang 50248\"}},{\"widget_social\":{\"judul\":\"\",\"teks\":\"\"}}]'),
(58, 'setting_footer_4', '[{\"widget_polling\":{\"judul\":\"\"}}]');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_novapage_client`
--

CREATE TABLE `tbl_novapage_client` (
  `id_client` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_novapage_images`
--

CREATE TABLE `tbl_novapage_images` (
  `id_images` int(11) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_novapage_images`
--

INSERT INTO `tbl_novapage_images` (`id_images`, `deskripsi`, `file`) VALUES
(1, 'feature 1', 'feature_1.jpg'),
(2, 'feature 2', 'feature_2.jpg'),
(3, 'feature 3', 'feature_3.jpg'),
(4, 'slide 3', 'slide_3.jpg'),
(5, 'slide 2', '1612022612.png'),
(6, 'slide 1', 'WhatsApp.jpg'),
(7, 'about', 'about.jpg'),
(9, 'SLIDER', 'bannerlain.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_novapage_portfolio`
--

CREATE TABLE `tbl_novapage_portfolio` (
  `id_portfolio` int(11) NOT NULL,
  `nama_project` varchar(255) DEFAULT NULL,
  `nama_client` varchar(100) DEFAULT NULL,
  `url` text,
  `deskripsi` text,
  `image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_novapage_team`
--

CREATE TABLE `tbl_novapage_team` (
  `id_team` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `socmed_fb` varchar(100) DEFAULT NULL,
  `socmed_twitter` varchar(100) DEFAULT NULL,
  `socmed_ig` varchar(100) DEFAULT NULL,
  `socmed_linkedin` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_novapage_testimoni`
--

CREATE TABLE `tbl_novapage_testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `profesi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `testimoni` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_novapage_testimoni`
--

INSERT INTO `tbl_novapage_testimoni` (`id_testimoni`, `nama`, `profesi`, `photo`, `testimoni`) VALUES
(17, 'Saul Parman', 'Ceo & Founder', 'testimoni_3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'),
(21, 'Samuel Sumadi', 'Freelance', 'testimoni_2.jpg', 'Laudem latine persequeris id sed, ex fabulas delectus quo. No vel partiendo abhorreant vituperatoribus, ad pro quaestio laboramus Laudem latine persequeris id sed, ex fabulas delectus quo.');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(11) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(22, 'Magazine Template', 'admin', 'GERINDRA X_TEAM', 'phpmu-magazine', 'N'),
(24, 'Personal Template', 'admin', 'GERINDRA', 'phpmu-standar', 'N'),
(26, 'New Gerindra Template', 'admin', 'X_TEAM', 'novapage', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', 'edbd881f1ee2f76ba0bd70fd184f87711be991a0401fd07ccd4b199665f00761afc91731d8d8ba6cbb188b2ed5bfb465b9f3d30231eb0430b9f90fe91d136648', 'Admin DPD Gerindra', 'dpdgerindrajateng@gmail.com', '', 'geri.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18),
(15, '450336441380591df61c97aa6791b692-20201031164809', 18),
(16, 'f76ad5ee772ac196cbc09824e24859ee', 18),
(17, 'q173s8hs1jl04st35169ccl8o7', 70),
(18, 'q173s8hs1jl04st35169ccl8o7', 66),
(19, 'q173s8hs1jl04st35169ccl8o7', 65),
(20, 'q173s8hs1jl04st35169ccl8o7', 64),
(21, 'q173s8hs1jl04st35169ccl8o7', 63),
(22, 'q173s8hs1jl04st35169ccl8o7', 62),
(23, 'q173s8hs1jl04st35169ccl8o7', 61),
(24, 'q173s8hs1jl04st35169ccl8o7', 59),
(25, 'q173s8hs1jl04st35169ccl8o7', 57),
(26, 'q173s8hs1jl04st35169ccl8o7', 46),
(27, 'q173s8hs1jl04st35169ccl8o7', 45),
(28, 'q173s8hs1jl04st35169ccl8o7', 44),
(29, 'q173s8hs1jl04st35169ccl8o7', 43),
(30, 'q173s8hs1jl04st35169ccl8o7', 41),
(31, 'q173s8hs1jl04st35169ccl8o7', 35),
(32, 'q173s8hs1jl04st35169ccl8o7', 34),
(33, 'q173s8hs1jl04st35169ccl8o7', 33),
(34, 'q173s8hs1jl04st35169ccl8o7', 31),
(35, 'q173s8hs1jl04st35169ccl8o7', 18),
(36, 'q173s8hs1jl04st35169ccl8o7', 10),
(37, 'q173s8hs1jl04st35169ccl8o7', 2);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `id_playlist` int(11) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(11) NOT NULL DEFAULT '1',
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(160, 56, 'admin', 'Selamatkan Hutan di Indonesia', 'selamatkan-hutan-di-indonesia', 'Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. \"Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,\" kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. \"Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,\" katanya.', '', '', 'http://www.youtube.com/embed/hkzpLJjZQbA', 64, 'Rabu', '2014-07-02', '07:30:12', ''),
(161, 56, 'admin', 'Hutan Hujan Tropis Indonesia', 'hutan-hujan-tropis-indonesia', 'Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.\r\n\r\nSementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.\r\n\r\n\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.\r\n\r\nIni bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.', '', '', 'http://www.youtube.com/embed/5biK_PcT7S0', 61, 'Rabu', '2014-07-02', '07:31:23', ''),
(162, 57, 'admin', 'Perang Sengit Pasukan Darat Israel Vs Hamas', 'perang-sengit-pasukan-darat-israel-vs-hamas', 'Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.\r\n\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.\r\n\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan Associated Press, Rabu (23/7/2014).\r\n\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.', '', '', 'https://www.youtube.com/watch?v=CeNjeD8yknI', 26, 'Rabu', '2014-07-23', '15:23:10', ''),
(163, 57, 'admin', 'Isael dan Palestina Memanas', 'isael-dan-palestina-memanas', 'Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.\r\n\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.\r\n\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.', '', '', 'https://www.youtube.com/watch?v=oaJpxuDh5Ds', 32, 'Rabu', '2014-07-23', '15:24:30', ''),
(164, 57, 'admin', 'Israel Tembak Mati Warga Palestina Saat Gencatan', 'israel-tembak-mati-warga-palestina-saat-gencatan', 'Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.\r\n\r\nMelansir Boston Herald, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.\r\n\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.\r\n\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.\r\n\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.', '', '', 'https://www.youtube.com/watch?v=L6R-5XUcDSY', 48, 'Rabu', '2014-07-23', '15:29:41', ''),
(165, 57, 'admin', 'Gaza conflict: Israel & Hamas face allegations of war crimes', 'gaza-conflict-israel--hamas-face-allegations-of-war-crimes', '<p>Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.</p>\r\n', '', '', 'http://www.youtube.com/embed/aqI4DOilySg', 27, 'Minggu', '2014-08-17', '16:49:33', ''),
(166, 57, 'admin', 'Chomsky: Calling for change on US support for Israelll', 'chomsky-calling-for-change-on-us-support-for-israelll', '<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. \"Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,\" sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n\r\n<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat, sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n', '', '', 'http://www.youtube.com/embed/gQRJEnoxr2A', 127, 'Minggu', '2014-08-17', '16:51:04', 'perang'),
(175, 61, 'admin', 'Video Ok', 'video-ok', 'Video Ok', 'about-vision.jpg', '', 'youtu.be/siew89fdjflk', 57, 'Senin', '2020-09-21', '11:26:59', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `tbl_novapage`
--
ALTER TABLE `tbl_novapage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_novapage_client`
--
ALTER TABLE `tbl_novapage_client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `tbl_novapage_images`
--
ALTER TABLE `tbl_novapage_images`
  ADD PRIMARY KEY (`id_images`);

--
-- Indexes for table `tbl_novapage_portfolio`
--
ALTER TABLE `tbl_novapage_portfolio`
  ADD PRIMARY KEY (`id_portfolio`);

--
-- Indexes for table `tbl_novapage_team`
--
ALTER TABLE `tbl_novapage_team`
  ADD PRIMARY KEY (`id_team`);

--
-- Indexes for table `tbl_novapage_testimoni`
--
ALTER TABLE `tbl_novapage_testimoni`
  ADD PRIMARY KEY (`id_testimoni`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_novapage`
--
ALTER TABLE `tbl_novapage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_novapage_client`
--
ALTER TABLE `tbl_novapage_client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_novapage_images`
--
ALTER TABLE `tbl_novapage_images`
  MODIFY `id_images` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_novapage_portfolio`
--
ALTER TABLE `tbl_novapage_portfolio`
  MODIFY `id_portfolio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_novapage_team`
--
ALTER TABLE `tbl_novapage_team`
  MODIFY `id_team` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_novapage_testimoni`
--
ALTER TABLE `tbl_novapage_testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
