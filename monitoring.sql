-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 14, 2024 at 10:48 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monitoring`
--

-- --------------------------------------------------------

--
-- Table structure for table `application_room_request`
--

CREATE TABLE `application_room_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_name` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departement` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_request` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_room_detail` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_booking` datetime DEFAULT NULL,
  `end_booking` datetime DEFAULT NULL,
  `duration` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purpose` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `participant` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `note_pmg` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application_room_request`
--

INSERT INTO `application_room_request` (`id`, `employee_id`, `employee_name`, `departement`, `lokasi`, `type_request`, `request_room_detail`, `start_booking`, `end_booking`, `duration`, `purpose`, `participant`, `status`, `note`, `created_at`, `updated_at`, `note_pmg`) VALUES
(23, '4', 'Administrator', NULL, NULL, 'room', 'Ruang Meeting Yogyakarta (Lt.1)', '2023-12-07 09:00:00', '2023-12-07 10:00:00', '1.0 hours', 'Internal Meeting', '1', '2', '', '2023-12-07 01:02:53', '2023-12-07 01:02:53', NULL),
(24, '4', 'Administrator', NULL, NULL, 'application', 'Email', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Email tidak bisa login', '', '0', '', '2023-12-07 02:55:47', '2023-12-07 02:55:47', NULL),
(25, '4', 'Administrator', NULL, NULL, 'room', 'Ruang Meeting Medan (Lt. 4)', '2023-12-12 09:30:00', '2023-12-12 09:38:00', '8 minute', 'Preparation for End User Training', '5', '2', '', '2023-12-12 09:38:39', '2023-12-12 09:38:39', NULL),
(26, '60', 'Andy Maulana', NULL, NULL, 'room', 'Ruang Meeting Medan (Lt. 4)', '2023-12-14 19:00:00', '2023-12-14 21:00:00', '2.0 hours', 'IT General Meeeting', '3', '3', '', '2023-12-12 11:45:33', '2023-12-12 11:47:50', NULL),
(27, '60', 'Andy Maulana', NULL, NULL, 'room', 'Ruang Meeting Medan (Lt. 4)', '2023-12-14 18:30:00', '2023-12-14 20:00:00', '1.30 hours', 'tes1', '2', '2', '', '2023-12-12 11:48:29', '2023-12-12 11:48:29', NULL),
(28, '60', 'Andy Maulana', NULL, NULL, 'room', 'Ruang Meeting Medan (Lt. 4)', '2023-12-14 09:08:00', '2023-12-14 11:00:00', '1.52 hours', 'est 45', '3', '2', '', '2023-12-12 11:52:40', '2023-12-12 11:52:40', NULL),
(29, '4', 'Administrator', NULL, NULL, 'room', 'Ruang Meeting Yogyakarta (Lt.1)', '2023-12-15 15:30:00', '2023-12-15 17:40:00', '2.10 hours', 'Budget Preparation Meeting', '4', '3', '', '2023-12-13 10:58:48', '2023-12-13 10:59:18', NULL),
(30, '4', 'Administrator', NULL, NULL, 'room', 'Ruang Meeting Yogyakarta (Lt.1)', '2023-12-15 09:00:00', '2023-12-15 11:00:00', '2.0 hours', 'Meeting koordinasi BP&IT', '5', '2', '', '2023-12-13 14:14:06', '2023-12-13 14:14:06', NULL),
(31, '4', 'Administrator', NULL, NULL, 'room', 'Ruang Meeting Medan (Lt. 4)', '2023-12-15 09:00:00', '2023-12-15 11:00:00', '2.0 hours', 'ERP Meeting', '3', '2', '', '2023-12-13 14:16:18', '2023-12-13 14:16:18', NULL),
(32, '61', 'Kunasarma', NULL, NULL, 'room', 'Ruang Meeting Medan (Lt. 4)', '2023-12-15 11:01:00', '2023-12-15 13:00:00', '1.59 hours', 'Meeting budget', '5', '2', '', '2023-12-13 14:20:10', '2023-12-13 14:20:10', NULL),
(33, '61', 'Kunasarma', NULL, NULL, 'room', 'Ruang Meeting Medan (Lt. 4)', '2023-12-27 09:00:00', '2023-12-27 18:00:00', '9.0 hours', 'ERP Playback Session', '15', '2', '', '2023-12-27 17:58:17', '2023-12-27 17:58:17', NULL),
(34, '61', 'Kunasarma', NULL, NULL, 'room', 'Ruang Meeting Medan (Lt. 4)', '2023-12-28 09:00:00', '2023-12-28 18:00:00', '9.0 hours', 'ERP Play Back Session', '15', '2', '', '2023-12-27 18:01:18', '2023-12-27 18:01:18', NULL),
(35, '61', 'Kunasarma', NULL, NULL, 'room', 'Ruang Meeting Medan (Lt. 4)', '2023-12-29 09:00:00', '2023-12-29 18:00:00', '9.0 hours', 'ERP Play Back Session', '15', '2', '', '2023-12-27 18:03:18', '2023-12-27 18:03:18', NULL),
(36, '61', 'Kunasarma', NULL, NULL, 'room', 'Ruang Meeting Medan (Lt. 4)', '2023-12-26 09:00:00', '2023-12-26 17:00:00', '8.0 hours', 'ERP Play Back Session', '15', '2', '', '2023-12-27 18:12:06', '2023-12-27 18:12:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `convert_pdf`
--

CREATE TABLE `convert_pdf` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_result` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinsi_id` int(11) DEFAULT NULL,
  `kabupaten_id` int(11) DEFAULT NULL,
  `kecamatan_id` int(11) DEFAULT NULL,
  `kelurahan_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_code`, `name`, `phone`, `address`, `provinsi_id`, `kabupaten_id`, `kecamatan_id`, `kelurahan_id`, `created_at`, `updated_at`) VALUES
(2, 'T001', 'PT EMPORE HEZER TAMA', '+62 21 2955 7450', NULL, 31, 3172, NULL, NULL, '2024-01-12 12:36:30', '2024-01-12 12:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `customer_pic`
--

CREATE TABLE `customer_pic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_pic`
--

INSERT INTO `customer_pic` (`id`, `name`, `position`, `mobile`, `email`, `created_at`, `updated_at`) VALUES
(1, 'MARGARETH SILVIA', 'DIREKTUR', '081808684803', 'silvia@empore.co.id', '2024-01-12 01:43:56', '2024-01-12 01:43:56'),
(2, 'MARGARETH SILVIA', 'DIREKTUR', '081808684803', 'silvia@empore.co.id', '2024-01-12 12:36:30', '2024-01-12 12:36:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_order_id` int(11) DEFAULT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_sent` date DEFAULT NULL,
  `invoice_receive` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `nett_amount` bigint(20) DEFAULT NULL,
  `payment_received` bigint(20) DEFAULT NULL,
  `outstanding_balance` bigint(20) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `top_day` smallint(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id` char(4) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama` tinytext NOT NULL,
  `id_jenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `provinsi_id`, `nama`, `id_jenis`) VALUES
('1101', 11, 'KAB. ACEH SELATAN', 1),
('1102', 11, 'KAB. ACEH TENGGARA', 1),
('1103', 11, 'KAB. ACEH TIMUR', 1),
('1104', 11, 'KAB. ACEH TENGAH', 1),
('1105', 11, 'KAB. ACEH BARAT', 1),
('1106', 11, 'KAB. ACEH BESAR', 1),
('1107', 11, 'KAB. PIDIE', 1),
('1108', 11, 'KAB. ACEH UTARA', 1),
('1109', 11, 'KAB. SIMEULUE', 1),
('1110', 11, 'KAB. ACEH SINGKIL', 1),
('1111', 11, 'KAB. BIREUEN', 1),
('1112', 11, 'KAB. ACEH BARAT DAYA', 1),
('1113', 11, 'KAB. GAYO LUES', 1),
('1114', 11, 'KAB. ACEH JAYA', 1),
('1115', 11, 'KAB. NAGAN RAYA', 1),
('1116', 11, 'KAB. ACEH TAMIANG', 1),
('1117', 11, 'KAB. BENER MERIAH', 1),
('1118', 11, 'KAB. PIDIE JAYA', 1),
('1171', 11, 'KOTA BANDA ACEH', 2),
('1172', 11, 'KOTA SABANG', 2),
('1173', 11, 'KOTA LHOKSEUMAWE', 2),
('1174', 11, 'KOTA LANGSA', 2),
('1175', 11, 'KOTA SUBULUSSALAM', 2),
('1201', 12, 'KAB. TAPANULI TENGAH', 1),
('1202', 12, 'KAB. TAPANULI UTARA', 1),
('1203', 12, 'KAB. TAPANULI SELATAN', 1),
('1204', 12, 'KAB. NIAS', 1),
('1205', 12, 'KAB. LANGKAT', 1),
('1206', 12, 'KAB. KARO', 1),
('1207', 12, 'KAB. DELI SERDANG', 1),
('1208', 12, 'KAB. SIMALUNGUN', 1),
('1209', 12, 'KAB. ASAHAN', 1),
('1210', 12, 'KAB. LABUHANBATU', 1),
('1211', 12, 'KAB. DAIRI', 1),
('1212', 12, 'KAB. TOBA SAMOSIR', 1),
('1213', 12, 'KAB. MANDAILING NATAL', 1),
('1214', 12, 'KAB. NIAS SELATAN', 1),
('1215', 12, 'KAB. PAKPAK BHARAT', 1),
('1216', 12, 'KAB. HUMBANG HASUNDUTAN', 1),
('1217', 12, 'KAB. SAMOSIR', 1),
('1218', 12, 'KAB. SERDANG BEDAGAI', 1),
('1219', 12, 'KAB. BATU BARA', 1),
('1220', 12, 'KAB. PADANG LAWAS UTARA', 1),
('1221', 12, 'KAB. PADANG LAWAS', 1),
('1222', 12, 'KAB. LABUHANBATU SELATAN', 1),
('1223', 12, 'KAB. LABUHANBATU UTARA', 1),
('1224', 12, 'KAB. NIAS UTARA', 1),
('1225', 12, 'KAB. NIAS BARAT', 1),
('1271', 12, 'KOTA MEDAN', 2),
('1272', 12, 'KOTA PEMATANG SIANTAR', 2),
('1273', 12, 'KOTA SIBOLGA', 2),
('1274', 12, 'KOTA TANJUNG BALAI', 2),
('1275', 12, 'KOTA BINJAI', 2),
('1276', 12, 'KOTA TEBING TINGGI', 2),
('1277', 12, 'KOTA PADANGSIDIMPUAN', 2),
('1278', 12, 'KOTA GUNUNGSITOLI', 2),
('1301', 13, 'KAB. PESISIR SELATAN', 1),
('1302', 13, 'KAB. SOLOK', 1),
('1303', 13, 'KAB. SIJUNJUNG', 1),
('1304', 13, 'KAB. TANAH DATAR', 1),
('1305', 13, 'KAB. PADANG PARIAMAN', 1),
('1306', 13, 'KAB. AGAM', 1),
('1307', 13, 'KAB. LIMA PULUH KOTA', 1),
('1308', 13, 'KAB. PASAMAN', 1),
('1309', 13, 'KAB. KEPULAUAN MENTAWAI', 1),
('1310', 13, 'KAB. DHARMASRAYA', 1),
('1311', 13, 'KAB. SOLOK SELATAN', 1),
('1312', 13, 'KAB. PASAMAN BARAT', 1),
('1371', 13, 'KOTA PADANG', 2),
('1372', 13, 'KOTA SOLOK', 2),
('1373', 13, 'KOTA SAWAHLUNTO', 2),
('1374', 13, 'KOTA PADANG PANJANG', 2),
('1375', 13, 'KOTA BUKITTINGGI', 2),
('1376', 13, 'KOTA PAYAKUMBUH', 2),
('1377', 13, 'KOTA PARIAMAN', 2),
('1401', 14, 'KAB. KAMPAR', 1),
('1402', 14, 'KAB. INDRAGIRI HULU', 1),
('1403', 14, 'KAB. BENGKALIS', 1),
('1404', 14, 'KAB. INDRAGIRI HILIR', 1),
('1405', 14, 'KAB. PELALAWAN', 1),
('1406', 14, 'KAB. ROKAN HULU', 1),
('1407', 14, 'KAB. ROKAN HILIR', 1),
('1408', 14, 'KAB. SIAK', 1),
('1409', 14, 'KAB. KUANTAN SINGINGI', 1),
('1410', 14, 'KAB. KEPULAUAN MERANTI', 1),
('1471', 14, 'KOTA PEKANBARU', 2),
('1472', 14, 'KOTA DUMAI', 2),
('1501', 15, 'KAB. KERINCI', 1),
('1502', 15, 'KAB. MERANGIN', 1),
('1503', 15, 'KAB. SAROLANGUN', 1),
('1504', 15, 'KAB. BATANGHARI', 1),
('1505', 15, 'KAB. MUARO JAMBI', 1),
('1506', 15, 'KAB. TANJUNG JABUNG BARAT', 1),
('1507', 15, 'KAB. TANJUNG JABUNG TIMUR', 1),
('1508', 15, 'KAB. BUNGO', 1),
('1509', 15, 'KAB. TEBO', 1),
('1571', 15, 'KOTA JAMBI', 2),
('1572', 15, 'KOTA SUNGAI PENUH', 2),
('1601', 16, 'KAB. OGAN KOMERING ULU', 1),
('1602', 16, 'KAB. OGAN KOMERING ILIR', 1),
('1603', 16, 'KAB. MUARA ENIM', 1),
('1604', 16, 'KAB. LAHAT', 1),
('1605', 16, 'KAB. MUSI RAWAS', 1),
('1606', 16, 'KAB. MUSI BANYUASIN', 1),
('1607', 16, 'KAB. BANYUASIN', 1),
('1608', 16, 'KAB. OGAN KOMERING ULU TIMUR', 1),
('1609', 16, 'KAB. OGAN KOMERING ULU SELATAN', 1),
('1610', 16, 'KAB. OGAN ILIR', 1),
('1611', 16, 'KAB. EMPAT LAWANG', 1),
('1612', 16, 'KAB. PENUKAL ABAB LEMATANG ILIR', 1),
('1613', 16, 'KAB. MUSI RAWAS UTARA', 1),
('1671', 16, 'KOTA PALEMBANG', 2),
('1672', 16, 'KOTA PAGAR ALAM', 2),
('1673', 16, 'KOTA LUBUK LINGGAU', 2),
('1674', 16, 'KOTA PRABUMULIH', 2),
('1701', 17, 'KAB. BENGKULU SELATAN', 1),
('1702', 17, 'KAB. REJANG LEBONG', 1),
('1703', 17, 'KAB. BENGKULU UTARA', 1),
('1704', 17, 'KAB. KAUR', 1),
('1705', 17, 'KAB. SELUMA', 1),
('1706', 17, 'KAB. MUKO MUKO', 1),
('1707', 17, 'KAB. LEBONG', 1),
('1708', 17, 'KAB. KEPAHIANG', 1),
('1709', 17, 'KAB. BENGKULU TENGAH', 1),
('1771', 17, 'KOTA BENGKULU', 2),
('1801', 18, 'KAB. LAMPUNG SELATAN', 1),
('1802', 18, 'KAB. LAMPUNG TENGAH', 1),
('1803', 18, 'KAB. LAMPUNG UTARA', 1),
('1804', 18, 'KAB. LAMPUNG BARAT', 1),
('1805', 18, 'KAB. TULANG BAWANG', 1),
('1806', 18, 'KAB. TANGGAMUS', 1),
('1807', 18, 'KAB. LAMPUNG TIMUR', 1),
('1808', 18, 'KAB. WAY KANAN', 1),
('1809', 18, 'KAB. PESAWARAN', 1),
('1810', 18, 'KAB. PRINGSEWU', 1),
('1811', 18, 'KAB. MESUJI', 1),
('1812', 18, 'KAB. TULANG BAWANG BARAT', 1),
('1813', 18, 'KAB. PESISIR BARAT', 1),
('1871', 18, 'KOTA BANDAR LAMPUNG', 2),
('1872', 18, 'KOTA METRO', 2),
('1901', 19, 'KAB. BANGKA', 1),
('1902', 19, 'KAB. BELITUNG', 1),
('1903', 19, 'KAB. BANGKA SELATAN', 1),
('1904', 19, 'KAB. BANGKA TENGAH', 1),
('1905', 19, 'KAB. BANGKA BARAT', 1),
('1906', 19, 'KAB. BELITUNG TIMUR', 1),
('1971', 19, 'KOTA PANGKAL PINANG', 2),
('2101', 21, 'KAB. BINTAN', 1),
('2102', 21, 'KAB. KARIMUN', 1),
('2103', 21, 'KAB. NATUNA', 1),
('2104', 21, 'KAB. LINGGA', 1),
('2105', 21, 'KAB. KEPULAUAN ANAMBAS', 1),
('2171', 21, 'KOTA BATAM', 2),
('2172', 21, 'KOTA TANJUNG PINANG', 2),
('3101', 31, 'KAB. ADM. KEP. SERIBU', 1),
('3171', 31, 'KOTA ADM. JAKARTA PUSAT', 2),
('3172', 31, 'KOTA ADM. JAKARTA UTARA', 2),
('3173', 31, 'KOTA ADM. JAKARTA BARAT', 2),
('3174', 31, 'KOTA ADM. JAKARTA SELATAN', 2),
('3175', 31, 'KOTA ADM. JAKARTA TIMUR', 2),
('3201', 32, 'KAB. BOGOR', 1),
('3202', 32, 'KAB. SUKABUMI', 1),
('3203', 32, 'KAB. CIANJUR', 1),
('3204', 32, 'KAB. BANDUNG', 1),
('3205', 32, 'KAB. GARUT', 1),
('3206', 32, 'KAB. TASIKMALAYA', 1),
('3207', 32, 'KAB. CIAMIS', 1),
('3208', 32, 'KAB. KUNINGAN', 1),
('3209', 32, 'KAB. CIREBON', 1),
('3210', 32, 'KAB. MAJALENGKA', 1),
('3211', 32, 'KAB. SUMEDANG', 1),
('3212', 32, 'KAB. INDRAMAYU', 1),
('3213', 32, 'KAB. SUBANG', 1),
('3214', 32, 'KAB. PURWAKARTA', 1),
('3215', 32, 'KAB. KARAWANG', 1),
('3216', 32, 'KAB. BEKASI', 1),
('3217', 32, 'KAB. BANDUNG BARAT', 1),
('3218', 32, 'KAB. PANGANDARAN', 1),
('3271', 32, 'KOTA BOGOR', 2),
('3272', 32, 'KOTA SUKABUMI', 2),
('3273', 32, 'KOTA BANDUNG', 2),
('3274', 32, 'KOTA CIREBON', 2),
('3275', 32, 'KOTA BEKASI', 2),
('3276', 32, 'KOTA DEPOK', 2),
('3277', 32, 'KOTA CIMAHI', 2),
('3278', 32, 'KOTA TASIKMALAYA', 2),
('3279', 32, 'KOTA BANJAR', 2),
('3301', 33, 'KAB. CILACAP', 1),
('3302', 33, 'KAB. BANYUMAS', 1),
('3303', 33, 'KAB. PURBALINGGA', 1),
('3304', 33, 'KAB. BANJARNEGARA', 1),
('3305', 33, 'KAB. KEBUMEN', 1),
('3306', 33, 'KAB. PURWOREJO', 1),
('3307', 33, 'KAB. WONOSOBO', 1),
('3308', 33, 'KAB. MAGELANG', 1),
('3309', 33, 'KAB. BOYOLALI', 1),
('3310', 33, 'KAB. KLATEN', 1),
('3311', 33, 'KAB. SUKOHARJO', 1),
('3312', 33, 'KAB. WONOGIRI', 1),
('3313', 33, 'KAB. KARANGANYAR', 1),
('3314', 33, 'KAB. SRAGEN', 1),
('3315', 33, 'KAB. GROBOGAN', 1),
('3316', 33, 'KAB. BLORA', 1),
('3317', 33, 'KAB. REMBANG', 1),
('3318', 33, 'KAB. PATI', 1),
('3319', 33, 'KAB. KUDUS', 1),
('3320', 33, 'KAB. JEPARA', 1),
('3321', 33, 'KAB. DEMAK', 1),
('3322', 33, 'KAB. SEMARANG', 1),
('3323', 33, 'KAB. TEMANGGUNG', 1),
('3324', 33, 'KAB. KENDAL', 1),
('3325', 33, 'KAB. BATANG', 1),
('3326', 33, 'KAB. PEKALONGAN', 1),
('3327', 33, 'KAB. PEMALANG', 1),
('3328', 33, 'KAB. TEGAL', 1),
('3329', 33, 'KAB. BREBES', 1),
('3371', 33, 'KOTA MAGELANG', 2),
('3372', 33, 'KOTA SURAKARTA', 2),
('3373', 33, 'KOTA SALATIGA', 2),
('3374', 33, 'KOTA SEMARANG', 2),
('3375', 33, 'KOTA PEKALONGAN', 2),
('3376', 33, 'KOTA TEGAL', 2),
('3401', 34, 'KAB. KULON PROGO', 1),
('3402', 34, 'KAB. BANTUL', 1),
('3403', 34, 'KAB. GUNUNG KIDUL', 1),
('3404', 34, 'KAB. SLEMAN', 1),
('3471', 34, 'KOTA YOGYAKARTA', 2),
('3501', 35, 'KAB. PACITAN', 1),
('3502', 35, 'KAB. PONOROGO', 1),
('3503', 35, 'KAB. TRENGGALEK', 1),
('3504', 35, 'KAB. TULUNGAGUNG', 1),
('3505', 35, 'KAB. BLITAR', 1),
('3506', 35, 'KAB. KEDIRI', 1),
('3507', 35, 'KAB. MALANG', 1),
('3508', 35, 'KAB. LUMAJANG', 1),
('3509', 35, 'KAB. JEMBER', 1),
('3510', 35, 'KAB. BANYUWANGI', 1),
('3511', 35, 'KAB. BONDOWOSO', 1),
('3512', 35, 'KAB. SITUBONDO', 1),
('3513', 35, 'KAB. PROBOLINGGO', 1),
('3514', 35, 'KAB. PASURUAN', 1),
('3515', 35, 'KAB. SIDOARJO', 1),
('3516', 35, 'KAB. MOJOKERTO', 1),
('3517', 35, 'KAB. JOMBANG', 1),
('3518', 35, 'KAB. NGANJUK', 1),
('3519', 35, 'KAB. MADIUN', 1),
('3520', 35, 'KAB. MAGETAN', 1),
('3521', 35, 'KAB. NGAWI', 1),
('3522', 35, 'KAB. BOJONEGORO', 1),
('3523', 35, 'KAB. TUBAN', 1),
('3524', 35, 'KAB. LAMONGAN', 1),
('3525', 35, 'KAB. GRESIK', 1),
('3526', 35, 'KAB. BANGKALAN', 1),
('3527', 35, 'KAB. SAMPANG', 1),
('3528', 35, 'KAB. PAMEKASAN', 1),
('3529', 35, 'KAB. SUMENEP', 1),
('3571', 35, 'KOTA KEDIRI', 2),
('3572', 35, 'KOTA BLITAR', 2),
('3573', 35, 'KOTA MALANG', 2),
('3574', 35, 'KOTA PROBOLINGGO', 2),
('3575', 35, 'KOTA PASURUAN', 2),
('3576', 35, 'KOTA MOJOKERTO', 2),
('3577', 35, 'KOTA MADIUN', 2),
('3578', 35, 'KOTA SURABAYA', 2),
('3579', 35, 'KOTA BATU', 2),
('3601', 36, 'KAB. PANDEGLANG', 1),
('3602', 36, 'KAB. LEBAK', 1),
('3603', 36, 'KAB. TANGERANG', 1),
('3604', 36, 'KAB. SERANG', 1),
('3671', 36, 'KOTA TANGERANG', 2),
('3672', 36, 'KOTA CILEGON', 2),
('3673', 36, 'KOTA SERANG', 2),
('3674', 36, 'KOTA TANGERANG SELATAN', 2),
('5101', 51, 'KAB. JEMBRANA', 1),
('5102', 51, 'KAB. TABANAN', 1),
('5103', 51, 'KAB. BADUNG', 1),
('5104', 51, 'KAB. GIANYAR', 1),
('5105', 51, 'KAB. KLUNGKUNG', 1),
('5106', 51, 'KAB. BANGLI', 1),
('5107', 51, 'KAB. KARANGASEM', 1),
('5108', 51, 'KAB. BULELENG', 1),
('5171', 51, 'KOTA DENPASAR', 2),
('5201', 52, 'KAB. LOMBOK BARAT', 1),
('5202', 52, 'KAB. LOMBOK TENGAH', 1),
('5203', 52, 'KAB. LOMBOK TIMUR', 1),
('5204', 52, 'KAB. SUMBAWA', 1),
('5205', 52, 'KAB. DOMPU', 1),
('5206', 52, 'KAB. BIMA', 1),
('5207', 52, 'KAB. SUMBAWA BARAT', 1),
('5208', 52, 'KAB. LOMBOK UTARA', 1),
('5271', 52, 'KOTA MATARAM', 2),
('5272', 52, 'KOTA BIMA', 2),
('5301', 53, 'KAB. KUPANG', 1),
('5302', 53, 'KAB TIMOR TENGAH SELATAN', 1),
('5303', 53, 'KAB. TIMOR TENGAH UTARA', 1),
('5304', 53, 'KAB. BELU', 1),
('5305', 53, 'KAB. ALOR', 1),
('5306', 53, 'KAB. FLORES TIMUR', 1),
('5307', 53, 'KAB. SIKKA', 1),
('5308', 53, 'KAB. ENDE', 1),
('5309', 53, 'KAB. NGADA', 1),
('5310', 53, 'KAB. MANGGARAI', 1),
('5311', 53, 'KAB. SUMBA TIMUR', 1),
('5312', 53, 'KAB. SUMBA BARAT', 1),
('5313', 53, 'KAB. LEMBATA', 1),
('5314', 53, 'KAB. ROTE NDAO', 1),
('5315', 53, 'KAB. MANGGARAI BARAT', 1),
('5316', 53, 'KAB. NAGEKEO', 1),
('5317', 53, 'KAB. SUMBA TENGAH', 1),
('5318', 53, 'KAB. SUMBA BARAT DAYA', 1),
('5319', 53, 'KAB. MANGGARAI TIMUR', 1),
('5320', 53, 'KAB. SABU RAIJUA', 1),
('5321', 53, 'KAB. MALAKA', 1),
('5371', 53, 'KOTA KUPANG', 2),
('6101', 61, 'KAB. SAMBAS', 1),
('6102', 61, 'KAB. MEMPAWAH', 1),
('6103', 61, 'KAB. SANGGAU', 1),
('6104', 61, 'KAB. KETAPANG', 1),
('6105', 61, 'KAB. SINTANG', 1),
('6106', 61, 'KAB. KAPUAS HULU', 1),
('6107', 61, 'KAB. BENGKAYANG', 1),
('6108', 61, 'KAB. LANDAK', 1),
('6109', 61, 'KAB. SEKADAU', 1),
('6110', 61, 'KAB. MELAWI', 1),
('6111', 61, 'KAB. KAYONG UTARA', 1),
('6112', 61, 'KAB. KUBU RAYA', 1),
('6171', 61, 'KOTA PONTIANAK', 2),
('6172', 61, 'KOTA SINGKAWANG', 2),
('6201', 62, 'KAB. KOTAWARINGIN BARAT', 1),
('6202', 62, 'KAB. KOTAWARINGIN TIMUR', 1),
('6203', 62, 'KAB. KAPUAS', 1),
('6204', 62, 'KAB. BARITO SELATAN', 1),
('6205', 62, 'KAB. BARITO UTARA', 1),
('6206', 62, 'KAB. KATINGAN', 1),
('6207', 62, 'KAB. SERUYAN', 1),
('6208', 62, 'KAB. SUKAMARA', 1),
('6209', 62, 'KAB. LAMANDAU', 1),
('6210', 62, 'KAB. GUNUNG MAS', 1),
('6211', 62, 'KAB. PULANG PISAU', 1),
('6212', 62, 'KAB. MURUNG RAYA', 1),
('6213', 62, 'KAB. BARITO TIMUR', 1),
('6271', 62, 'KOTA PALANGKARAYA', 2),
('6301', 63, 'KAB. TANAH LAUT', 1),
('6302', 63, 'KAB. KOTABARU', 1),
('6303', 63, 'KAB. BANJAR', 1),
('6304', 63, 'KAB. BARITO KUALA', 1),
('6305', 63, 'KAB. TAPIN', 1),
('6306', 63, 'KAB. HULU SUNGAI SELATAN', 1),
('6307', 63, 'KAB. HULU SUNGAI TENGAH', 1),
('6308', 63, 'KAB. HULU SUNGAI UTARA', 1),
('6309', 63, 'KAB. TABALONG', 1),
('6310', 63, 'KAB. TANAH BUMBU', 1),
('6311', 63, 'KAB. BALANGAN', 1),
('6371', 63, 'KOTA BANJARMASIN', 2),
('6372', 63, 'KOTA BANJARBARU', 2),
('6401', 64, 'KAB. PASER', 1),
('6402', 64, 'KAB. KUTAI KARTANEGARA', 1),
('6403', 64, 'KAB. BERAU', 1),
('6407', 64, 'KAB. KUTAI BARAT', 1),
('6408', 64, 'KAB. KUTAI TIMUR', 1),
('6409', 64, 'KAB. PENAJAM PASER UTARA', 1),
('6411', 64, 'KAB. MAHAKAM ULU', 1),
('6471', 64, 'KOTA BALIKPAPAN', 2),
('6472', 64, 'KOTA SAMARINDA', 2),
('6474', 64, 'KOTA BONTANG', 2),
('6501', 65, 'KAB. BULUNGAN', 1),
('6502', 65, 'KAB. MALINAU', 1),
('6503', 65, 'KAB. NUNUKAN', 1),
('6504', 65, 'KAB. TANA TIDUNG', 1),
('6571', 65, 'KOTA TARAKAN', 2),
('7101', 71, 'KAB. BOLAANG MONGONDOW', 1),
('7102', 71, 'KAB. MINAHASA', 1),
('7103', 71, 'KAB. KEPULAUAN SANGIHE', 1),
('7104', 71, 'KAB. KEPULAUAN TALAUD', 1),
('7105', 71, 'KAB. MINAHASA SELATAN', 1),
('7106', 71, 'KAB. MINAHASA UTARA', 1),
('7107', 71, 'KAB. MINAHASA TENGGARA', 1),
('7108', 71, 'KAB. BOLAANG MONGONDOW UTARA', 1),
('7109', 71, 'KAB. KEP. SIAU TAGULANDANG BIARO', 1),
('7110', 71, 'KAB. BOLAANG MONGONDOW TIMUR', 1),
('7111', 71, 'KAB. BOLAANG MONGONDOW SELATAN', 1),
('7171', 71, 'KOTA MANADO', 2),
('7172', 71, 'KOTA BITUNG', 2),
('7173', 71, 'KOTA TOMOHON', 2),
('7174', 71, 'KOTA KOTAMOBAGU', 2),
('7201', 72, 'KAB. BANGGAI', 1),
('7202', 72, 'KAB. POSO', 1),
('7203', 72, 'KAB. DONGGALA', 1),
('7204', 72, 'KAB. TOLI TOLI', 1),
('7205', 72, 'KAB. BUOL', 1),
('7206', 72, 'KAB. MOROWALI', 1),
('7207', 72, 'KAB. BANGGAI KEPULAUAN', 1),
('7208', 72, 'KAB. PARIGI MOUTONG', 1),
('7209', 72, 'KAB. TOJO UNA UNA', 1),
('7210', 72, 'KAB. SIGI', 1),
('7211', 72, 'KAB. BANGGAI LAUT', 1),
('7212', 72, 'KAB. MOROWALI UTARA', 1),
('7271', 72, 'KOTA PALU', 2),
('7301', 73, 'KAB. KEPULAUAN SELAYAR', 1),
('7302', 73, 'KAB. BULUKUMBA', 1),
('7303', 73, 'KAB. BANTAENG', 1),
('7304', 73, 'KAB. JENEPONTO', 1),
('7305', 73, 'KAB. TAKALAR', 1),
('7306', 73, 'KAB. GOWA', 1),
('7307', 73, 'KAB. SINJAI', 1),
('7308', 73, 'KAB. BONE', 1),
('7309', 73, 'KAB. MAROS', 1),
('7310', 73, 'KAB. PANGKAJENE KEPULAUAN', 1),
('7311', 73, 'KAB. BARRU', 1),
('7312', 73, 'KAB. SOPPENG', 1),
('7313', 73, 'KAB. WAJO', 1),
('7314', 73, 'KAB. SIDENRENG RAPPANG', 1),
('7315', 73, 'KAB. PINRANG', 1),
('7316', 73, 'KAB. ENREKANG', 1),
('7317', 73, 'KAB. LUWU', 1),
('7318', 73, 'KAB. TANA TORAJA', 1),
('7322', 73, 'KAB. LUWU UTARA', 1),
('7324', 73, 'KAB. LUWU TIMUR', 1),
('7326', 73, 'KAB. TORAJA UTARA', 1),
('7371', 73, 'KOTA MAKASSAR', 2),
('7372', 73, 'KOTA PARE PARE', 2),
('7373', 73, 'KOTA PALOPO', 2),
('7401', 74, 'KAB. KOLAKA', 1),
('7402', 74, 'KAB. KONAWE', 1),
('7403', 74, 'KAB. MUNA', 1),
('7404', 74, 'KAB. BUTON', 1),
('7405', 74, 'KAB. KONAWE SELATAN', 1),
('7406', 74, 'KAB. BOMBANA', 1),
('7407', 74, 'KAB. WAKATOBI', 1),
('7408', 74, 'KAB. KOLAKA UTARA', 1),
('7409', 74, 'KAB. KONAWE UTARA', 1),
('7410', 74, 'KAB. BUTON UTARA', 1),
('7411', 74, 'KAB. KOLAKA TIMUR', 1),
('7412', 74, 'KAB. KONAWE KEPULAUAN', 1),
('7413', 74, 'KAB. MUNA BARAT', 1),
('7414', 74, 'KAB. BUTON TENGAH', 1),
('7415', 74, 'KAB. BUTON SELATAN', 1),
('7471', 74, 'KOTA KENDARI', 2),
('7472', 74, 'KOTA BAU BAU', 2),
('7501', 75, 'KAB. GORONTALO', 1),
('7502', 75, 'KAB. BOALEMO', 1),
('7503', 75, 'KAB. BONE BOLANGO', 1),
('7504', 75, 'KAB. PAHUWATO', 1),
('7505', 75, 'KAB. GORONTALO UTARA', 1),
('7571', 75, 'KOTA GORONTALO', 2),
('7601', 76, 'KAB. MAMUJU UTARA', 1),
('7602', 76, 'KAB. MAMUJU', 1),
('7603', 76, 'KAB. MAMASA', 1),
('7604', 76, 'KAB. POLEWALI MANDAR', 1),
('7605', 76, 'KAB. MAJENE', 1),
('7606', 76, 'KAB. MAMUJU TENGAH', 1),
('8101', 81, 'KAB. MALUKU TENGAH', 1),
('8102', 81, 'KAB. MALUKU TENGGARA', 1),
('8103', 81, 'KAB MALUKU TENGGARA BARAT', 1),
('8104', 81, 'KAB. BURU', 1),
('8105', 81, 'KAB. SERAM BAGIAN TIMUR', 1),
('8106', 81, 'KAB. SERAM BAGIAN BARAT', 1),
('8107', 81, 'KAB. KEPULAUAN ARU', 1),
('8108', 81, 'KAB. MALUKU BARAT DAYA', 1),
('8109', 81, 'KAB. BURU SELATAN', 1),
('8171', 81, 'KOTA AMBON', 2),
('8172', 81, 'KOTA TUAL', 2),
('8201', 82, 'KAB. HALMAHERA BARAT', 1),
('8202', 82, 'KAB. HALMAHERA TENGAH', 1),
('8203', 82, 'KAB. HALMAHERA UTARA', 1),
('8204', 82, 'KAB. HALMAHERA SELATAN', 1),
('8205', 82, 'KAB. KEPULAUAN SULA', 1),
('8206', 82, 'KAB. HALMAHERA TIMUR', 1),
('8207', 82, 'KAB. PULAU MOROTAI', 1),
('8208', 82, 'KAB. PULAU TALIABU', 1),
('8271', 82, 'KOTA TERNATE', 2),
('8272', 82, 'KOTA TIDORE KEPULAUAN', 2),
('9101', 91, 'KAB. MERAUKE', 1),
('9102', 91, 'KAB. JAYAWIJAYA', 1),
('9103', 91, 'KAB. JAYAPURA', 1),
('9104', 91, 'KAB. NABIRE', 1),
('9105', 91, 'KAB. KEPULAUAN YAPEN', 1),
('9106', 91, 'KAB. BIAK NUMFOR', 1),
('9107', 91, 'KAB. PUNCAK JAYA', 1),
('9108', 91, 'KAB. PANIAI', 1),
('9109', 91, 'KAB. MIMIKA', 1),
('9110', 91, 'KAB. SARMI', 1),
('9111', 91, 'KAB. KEEROM', 1),
('9112', 91, 'KAB PEGUNUNGAN BINTANG', 1),
('9113', 91, 'KAB. YAHUKIMO', 1),
('9114', 91, 'KAB. TOLIKARA', 1),
('9115', 91, 'KAB. WAROPEN', 1),
('9116', 91, 'KAB. BOVEN DIGOEL', 1),
('9117', 91, 'KAB. MAPPI', 1),
('9118', 91, 'KAB. ASMAT', 1),
('9119', 91, 'KAB. SUPIORI', 1),
('9120', 91, 'KAB. MAMBERAMO RAYA', 1),
('9121', 91, 'KAB. MAMBERAMO TENGAH', 1),
('9122', 91, 'KAB. YALIMO', 1),
('9123', 91, 'KAB. LANNY JAYA', 1),
('9124', 91, 'KAB. NDUGA', 1),
('9125', 91, 'KAB. PUNCAK', 1),
('9126', 91, 'KAB. DOGIYAI', 1),
('9127', 91, 'KAB. INTAN JAYA', 1),
('9128', 91, 'KAB. DEIYAI', 1),
('9171', 91, 'KOTA JAYAPURA', 2),
('9201', 92, 'KAB. SORONG', 1),
('9202', 92, 'KAB. MANOKWARI', 1),
('9203', 92, 'KAB. FAK FAK', 1),
('9204', 92, 'KAB. SORONG SELATAN', 1),
('9205', 92, 'KAB. RAJA AMPAT', 1),
('9206', 92, 'KAB. TELUK BINTUNI', 1),
('9207', 92, 'KAB. TELUK WONDAMA', 1),
('9208', 92, 'KAB. KAIMANA', 1),
('9209', 92, 'KAB. TAMBRAUW', 1),
('9210', 92, 'KAB. MAYBRAT', 1),
('9211', 92, 'KAB. MANOKWARI SELATAN', 1),
('9212', 92, 'KAB. PEGUNUNGAN ARFAK', 1),
('9271', 92, 'KOTA SORONG', 2);

-- --------------------------------------------------------

--
-- Table structure for table `log_activities`
--

CREATE TABLE `log_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `var` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `log_activities`
--

INSERT INTO `log_activities` (`id`, `subject`, `url`, `method`, `ip`, `agent`, `user_id`, `created_at`, `updated_at`, `var`) VALUES
(1, 'Login', 'https://meetingroom.pmt.co.id/livewire/message/login', 'POST', '103.119.144.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 4, '2023-12-13 08:37:04', '2023-12-13 08:37:04', '{\"fingerprint\":{\"id\":\"3ii57uyL0k7y0nh5qM8R\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"0f35ae1a\",\"data\":{\"email\":\"admin@gmail.com\",\"password\":\"12345678\",\"token\":\"03AFcWeA7Q0I6UjmUdzB16P-de2U8edKyGlbDD3NgQXgB9dgz88TY6iBFw1hjOQwdBA9a-I87NLrvrTKBk6t0CHH6XcfyRQ6vl9M1NrAFJo1NTUGBxcSJVCeInwsJd58hMAlu4GeL2Kj9QOmKh7vLiSg75of50rpZ64mfawyxN6IW7sc4XbWcTjYmE3mu8QiCTEL3FzsMkSlrrDtUcdvs7udX7VC_fWir9D7zv9Cqe1GPEjDA-Lhzmfw8EqT-_LXSVwA4r-9eZ-dMqOeUAOyO_rLBc0FOZfXSPJvFi5asesxIgENrc24-WffcE4_C9vvCZqVCiUJFX6V1v789orze0w0oJNrAtIZtGVUdNhMLOSnAVz0xmbe9oRGgWkTlKh3jyM7B709TSIBr2iViPxW2Bvbp_olyaTcfvccR0wdvJYsfCHUNCjB1VgWHxq4zGQ-mLd1oeUecovz254tNXLq3-vpehEpm8B0OQFGy7aCN4jIeJ943A5BSw0z2QQLD_KM84ubdHIAoMWfTbr-hcv3Z6SXYgbSHw4M32EZiHkTEWxs33F126H6sbvJlFNyVGtHkVyE42RaYRHhcAZ1p1nBQPHiV3vPV-S9fAjA\",\"message\":null},\"dataMeta\":[],\"checksum\":\"9eb9d9d3b030f928628559bdbc9908080de8c272c4c6a92f7290f0ec428b972c\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"nsax\",\"method\":\"login\",\"params\":[]}}]}'),
(2, 'Cancel Room', 'https://meetingroom.pmt.co.id/livewire/message/application-room-request.dashboard', 'POST', '202.147.195.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 4, '2023-12-13 10:59:18', '2023-12-13 10:59:18', '{\"fingerprint\":{\"id\":\"SnHvhlpFWeFQqfKnbyTV\",\"name\":\"application-room-request.dashboard\",\"locale\":\"id\",\"path\":\"application-room-request\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":{\"l562387055-0\":{\"id\":\"FYV0bnqlqXyrOXn7ETqO\",\"tag\":\"div\"}},\"errors\":[],\"htmlHash\":\"0a68afbb\",\"data\":{\"date\":null,\"month\":\"12\",\"year\":\"2023\",\"employee_id\":4,\"labels\":\"[{\\\"request_room_detail\\\":\\\"Ruang Meeting Medan (Lt. 4)\\\"},{\\\"request_room_detail\\\":\\\"Ruang Meeting Yogyakarta (Lt.1)\\\"}]\",\"datasets\":\"[{\\\"jumlahrequest\\\":3},{\\\"jumlahrequest\\\":2}]\",\"labelsapp\":\"[]\",\"datasetsapp\":\"[]\",\"title\":\"[{\\\"request_room_detail\\\":\\\"Ruang Meeting Yogyakarta (Lt.1)\\\"},{\\\"request_room_detail\\\":\\\"Ruang Meeting Medan (Lt. 4)\\\"},{\\\"request_room_detail\\\":\\\"Ruang Meeting Medan (Lt. 4)\\\"},{\\\"request_room_detail\\\":\\\"Ruang Meeting Medan (Lt. 4)\\\"},{\\\"request_room_detail\\\":\\\"Ruang Meeting Yogyakarta (Lt.1)\\\"}]\",\"startdate\":\"[{\\\"start_booking\\\":\\\"2023-12-07 09:00:00\\\"},{\\\"start_booking\\\":\\\"2023-12-12 09:30:00\\\"},{\\\"start_booking\\\":\\\"2023-12-14 18:30:00\\\"},{\\\"start_booking\\\":\\\"2023-12-14 09:08:00\\\"},{\\\"start_booking\\\":\\\"2023-12-15 15:30:00\\\"}]\",\"enddate\":\"[{\\\"end_booking\\\":\\\"2023-12-07 10:00:00\\\"},{\\\"end_booking\\\":\\\"2023-12-12 09:38:00\\\"},{\\\"end_booking\\\":\\\"2023-12-14 20:00:00\\\"},{\\\"end_booking\\\":\\\"2023-12-14 11:00:00\\\"},{\\\"end_booking\\\":\\\"2023-12-15 17:40:00\\\"}]\",\"date_active\":\"15\\/Dec\\/2023\",\"data_room\":[],\"years\":[],\"page\":1,\"paginators\":{\"page\":1}},\"dataMeta\":{\"modelCollections\":{\"data_room\":{\"class\":\"App\\\\Models\\\\ApplicationRoomRequest\",\"id\":[29],\"relations\":[],\"connection\":\"mysql\"},\"years\":{\"class\":\"App\\\\Models\\\\ApplicationRoomRequest\",\"id\":[null,null],\"relations\":[],\"connection\":null}}},\"checksum\":\"926bb7c42045672bb9539be8358a62dde870a7dcf9e36f2312b3ca28751bd60f\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"2sbq\",\"method\":\"cancel_room\",\"params\":[29]}}]}'),
(3, 'Login', 'https://meetingroom.pmt.co.id/livewire/message/login', 'POST', '103.119.144.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 60, '2023-12-13 11:20:11', '2023-12-13 11:20:11', '{\"fingerprint\":{\"id\":\"sKTBlqCR49fAI4Smb5fu\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"9fa4f425\",\"data\":{\"email\":\"andy.maulana@pmt.co.id\",\"password\":\"andy_2023#\",\"token\":\"03AFcWeA5NT4_gXHtxcUBVeUZMsqOMuX4AJtRP9weUJsaJdpE7FuzCYeBfEzusFEFz3AOXmwNWsIewX5nc_rdSX_1pHoY-X6T0tqrMupz6tqlVzw2TLzUzd_xyBZ4Eyqb6ZXu02iQRr_UgeV9DIlf2sDFsJ0ZZnDsOgHm4mwPIk3qOdZmWfeoagtgtqmauwP0lUf3kYfgqQYXcPcC4f_yJhwMGyqWg8y5EjS9fxyGy2icJSxdWeprQfXCya_KiAfv6dpLE5rsXfylYX3g6LFE-PoQJR1o_PtnOYsu9PhpnCJICg4tWq78oCiX1H7ZSos3qiv4fYGFpuGZ4TY_82oD4wQfaWvuELCdb5v5ANyJojCu4TF9TVhnusTNv64PaQan3Lahc53S-GUPbbf5iL7OTm5xuzeW6Kz5IpAEwwptgBS9oQyNzK7eAQhS_6XUQteHVBU6Z3lgNyUXrm7EJoVsSReOmiHxA47qpmYAX_MqOVF9PfKDeav_sCv-EcFhLkc7OmqpcfkiNEHfCp_xj3AAj1lvPBJpFHi6VMoc5Hp9lw_HLCO89A-VYRxC2ondFwHYi8Ss9hn2RoH7S\",\"message\":\"Google thinks you are a bot, please refresh and try again\"},\"dataMeta\":[],\"checksum\":\"7f50e296a9d3787a9c183b2d876f34335a66e1a3f3105f4e70bd3a61f4799eb9\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"n4rl\",\"method\":\"login\",\"params\":[]}}]}'),
(4, 'Login', 'https://meetingroom.pmt.co.id/livewire/message/login', 'POST', '103.119.144.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 4, '2023-12-13 14:04:09', '2023-12-13 14:04:09', '{\"fingerprint\":{\"id\":\"N6ZZFJMMLg9J7lWffseq\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"dfaa6b5e\",\"data\":{\"email\":\"admin@gmail.com\",\"password\":\"12345678\",\"token\":\"03AFcWeA4y_a9pa24HYOclbzzMjN3z0CYkOK9vY1hxBHymwg8f3eSJwOBEQlJwcdcseprZV5PRExzLRUk-97uoWLgcCNTxZd56Fk_bvUSjNivZ_FvpHzdF4QILUIVi6iRNhRpURrLmKRliKNt6yR8-PX-oFQNHSemKOL6l3enbuJ_GSh5S6zpFLUKplKYqQynU5GEYurKu704U0ATM95Sqtm-VGz2SAEhJnB_1AKsYDdiwa5K6n2cUMxNrfV39Ctjp681pDiBhlbEcMMhvSWVEMXwsX5nWWNS0QV_rCzrms9OXIJmgBPu6H6DW00_JtfQ-eWXB8UkMDj770OlxG6iKd3ZyCYsec3DRjfdhJTwRRPBvNbS5OqwamgnY6DG3yrc-wVnPeQD-KTD4MdmJFXPX4RMNZ69BAbbmZPogBf1BizuY3hoioZjSEJd8LP6--FPIYx_U82lVw67mWZX2X8dK5E7fqZw5J2JY8foo8v1CRoFgUmkXnE5RlUog9bWgSVmIAcoLgm928eIpA80EfjeuQXsmZLZPk9nuSi2uZl95vcMnhKqLEjs3fpnimtepZJ4YRpMgpffgUb2ye3oU4dGVUfDnEPv89396wg\",\"message\":\"Google thinks you are a bot, please refresh and try again\"},\"dataMeta\":[],\"checksum\":\"e8f7bb544b096628bb7274b6ef027992c3325b142c7eea99f2c673d6b673ebbe\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"otdy\",\"method\":\"login\",\"params\":[]}}]}'),
(5, 'Login', 'https://meetingroom.pmt.co.id/livewire/message/login', 'POST', '103.119.144.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 61, '2023-12-13 14:17:34', '2023-12-13 14:17:34', '{\"fingerprint\":{\"id\":\"RwX7dMctGqq7b9r3DWP3\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"e022f370\",\"data\":{\"email\":\"kunasarma@pmt.co.id\",\"password\":\"kunasarma_2023#\",\"token\":\"03AFcWeA6hsXSJxELVgJcOcGLum9aH1EttZvBvmMAiZwF4bVa5SadTP2Y8BJMFfdBVEgOghvrwWUNWtyZj2WAF1AN9n27xTjUg85QsXAYlD3nYpZ0iyJ5qy0-NUHpVC-Z61F39AoJNAIKtKaIJ4_G_pQNecO9u4wSdaEjuQtcCyBS-AZwArNQrAXyLs-vi3X44ILvIoWOLpoFngs7aV3fGheTcbuFjOQ46klrrhiy5q5x1mIU06Pv0xK9SrEplDS9X6cKhOhzgpLdCKVGM_M851u1bG-8ijUPbNdnatDOgJ5Ul1Q8vrwRNvjqciNS0mjlO7wERsWZWSfGaZa84M2KbSvUFUcf77HAIEESeFrRRiCgLey9YHvWjjmSYlciEE1RIv2DCCdY78SB7Z13vt5vHvuhkOIJWtpnUT6dUdgsDhRgI4bHifeGNmsCUZn452Ny9bZJRzVajEesZOXvURN4RS5w2x1-J0dl4g8lLSs69uWZnkVJmic6uJtzUdUf9hGYxDT8GcL5A699BN4Kn9vlMwMoZmx8ymefQPdv0d1VbR-4wxa2k5671XAg\",\"message\":null},\"dataMeta\":[],\"checksum\":\"9d0b1eca491d63c3bf319c7c57eee7469bc15f315c73485bd50e76ef65c89120\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"uw7\",\"method\":\"login\",\"params\":[]}}]}'),
(6, 'Login', 'https://meetingroom.pmt.co.id/livewire/message/login', 'POST', '103.119.144.154', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36 Edg/120.0.0.0', 61, '2023-12-27 17:54:47', '2023-12-27 17:54:47', '{\"fingerprint\":{\"id\":\"3mGbQqNSMcv9H1TvgYis\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"ad7a3b36\",\"data\":{\"email\":\"kunasarma@pmt.co.id\",\"password\":\"kunasarma_2023#\",\"token\":\"03AFcWeA5qNSwpWx7Xb_KhX-mrmHUlCy9UFuBqVMvm6dcw_qBJ6VVcSUJz3h138HHedAE_hKlCqqqAoJhwvC49dI9dbOhn9sO-cb-mRE1toWNFwkv3sEbLdGPgjcOIcIjogIahGr0k3Wxso-xMxs-z1c4ebhD5hJBgU_FQRogMdulvwJX8rWSvpm--kedlGRRT0qqAv80jErA7rQt5pNIt8xd1u1wjvHNX0RS92QHMr9Yh9duXXYoX_nmD2ctAeKeAWI0eTMsB77dH1BYq3ICB6jBsKQTcP_FVbe0nyq0MViFdaC_iUlkIho7CKGsHkOiOk0Qv7IoR_7lHJ0SC6IkvUp9mHwIjH7Uzsf9adiotqezi5ax2iKg2fz8Fy-jUIMocTqfCc77tew4jMQSTgM3TldLnPQvzvS4_CPiNoSX7vntIU6dFM3q56paLssWcMvB3QqHmMrkAoHJ115RyyIwVx51VwOh0fZmLP6nU-JBDTlvF59KsGQXkTOu9i63Klg7BBodC7z5UET5os4x-IaQeAz_NwjcejZraISq2Xz4gepcUzWoOdTMrENEpWZ8VrDKpBUtRiP6n_v2HEgxV-OZwQwxQ3QGZcB2WAw\",\"message\":null},\"dataMeta\":[],\"checksum\":\"063ec2cea960a7ec39516b3dc4852e3c836c20c853ee3a908d4180238adc6104\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"kgyj\",\"method\":\"login\",\"params\":[]}}]}'),
(7, 'Login', 'https://meetingroom.pmt.co.id/livewire/message/login', 'POST', '103.66.47.14', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-02 11:39:54', '2024-01-02 11:39:54', '{\"fingerprint\":{\"id\":\"SPAeipsHecvuS0vVyg7O\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":{\"email\":[\"The email field is required.\"],\"password\":[\"The password field is required.\"]},\"htmlHash\":\"6d741cdf\",\"data\":{\"email\":\"admin@gmail.com\",\"password\":\"12345678\",\"token\":\"03AFcWeA69Q31ymuB1zu-zbW6XCzanrhm-cPemc1dNPiSRzc1X1Tl5FV5bSxoHH6x4ASw7L9AfQhvZckcDHczz2D5s6We3_0ikj-GwEdBjYGfGSipuK-_06MPLlVmi3mffxQYFu465fVTjNdFz-uroOUZYh_JnqJkNy7tfD7Z5bZzSrO2aXkt_3-ocjw8GSQUAxJXbZzIYVJRWRBBPTU9RIq0go2qwYJ_BcI8dIXIl3cZFEs0PLpxzsSR9kJD3VciNZan-I-ApbBuKF7IjY7o093LgKRntNvcfDNgbnmiXt9P0PV2hufAsD5mRbSLpI9Mb4RvWtPIdOnLN-IJUNn_oLaR4JShLNGcI3WG0UuL_B8bjjdpLB80M9wR1urMOstpEfW9PQCSqSAzK_IGgGYDKHmd5SB6UYBWnw9HntlJFbskOL_WdnsbORoptaPW10jp3t1glJ8A-bl8tGJKnSzedgR-MwNyqK8A2PY4di6L2OuZdPHEBywEWA6NmgGvKQ26_ixHMC_WRI6i3kBa0L5bMe6hETAR3bCsqx6jedSfX0UBsj_IeT0ZxP5ONOeKXuGEYuWrlcgvWf1eS\",\"message\":null},\"dataMeta\":[],\"checksum\":\"3b476046ec2a8e4b545b60dc84c018e45cbb89665f16c1d3f1b6714b527b24e5\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"u5zc\",\"method\":\"login\",\"params\":[]}}]}'),
(8, 'Login', 'http://localhost:8000/livewire/message/login', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-03 13:03:47', '2024-01-03 13:03:47', '{\"fingerprint\":{\"id\":\"g9t2q5DTl26mV4DdD1Ey\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"aa659e42\",\"data\":{\"email\":\"admin@gmail.com\",\"password\":\"12345678\",\"token\":null,\"message\":null},\"dataMeta\":[],\"checksum\":\"9c3a0d784992043aba11ead9b2bf7888559c1dfbf816528e11554b0081fb1f54\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"sbvt\",\"method\":\"login\",\"params\":[]}}]}'),
(9, 'Setting', 'http://localhost:8000/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-03 13:06:02', '2024-01-03 13:06:02', ''),
(10, 'Setting Update', 'http://localhost:8000/livewire/message/setting', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-03 13:07:42', '2024-01-03 13:07:42', '{\"fingerprint\":{\"id\":\"xt2CFrnNcdlYU1Cxw5kZ\",\"name\":\"setting\",\"locale\":\"id\",\"path\":\"setting\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"a50588f9\",\"data\":{\"logoUrl\":\"http:\\/\\/localhost:8000\\/storage\\/logo20231208064719.png\",\"logo\":\"livewire-file:jDMFKsFYFURaXrDG1PPWmEpZl4nmHE-metad2lwb19sb2dvXzItZFd4ZUQ4ejMzUnRRTjBqWi5wbmc=-.png\",\"faviconUrl\":\"http:\\/\\/localhost:8000\\/storage\\/favicon20231208184719.png\",\"favicon\":null,\"message\":null,\"company\":\"Wirata Putra Otomasi\",\"email\":\"-\",\"phone\":\"-\",\"website\":\"-\",\"address\":\"indo Office Square\\nJln. Duren Tiga No.101\\nKav. B3-B4 RT. 004 RW. 001\\nKel. Duren Tiga, Kec. Pancoran,\\nJakarta selatan\"},\"dataMeta\":[],\"checksum\":\"98b10a3f071e888f6bb9d12b9c89ade3a4d02b4319b6a0c31614bb4ad8731ddb\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"h5wl\",\"method\":\"updateBasic\",\"params\":[]}}]}'),
(11, 'Setting', 'http://localhost:8000/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-03 13:08:03', '2024-01-03 13:08:03', ''),
(12, 'Update Logo', 'http://localhost:8000/livewire/message/setting', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-03 13:08:13', '2024-01-03 13:08:13', '{\"fingerprint\":{\"id\":\"ciwCDWolqKpJJNAc7R5G\",\"name\":\"setting\",\"locale\":\"id\",\"path\":\"setting\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"a50588f9\",\"data\":{\"logoUrl\":\"http:\\/\\/localhost:8000\\/storage\\/logo20231208064719.png\",\"logo\":\"livewire-file:vG7KoIe5ZczXpSW74jnAYC50RBsATr-metad2lwb19sb2dvXzItZFd4ZUQ4ejMzUnRRTjBqWi5wbmc=-.png\",\"faviconUrl\":\"http:\\/\\/localhost:8000\\/storage\\/favicon20231208184719.png\",\"favicon\":null,\"message\":null,\"company\":\"Wirata Putra Otomasi\",\"email\":\"-\",\"phone\":\"-\",\"website\":\"-\",\"address\":\"indo Office Square\\nJln. Duren Tiga No.101\\nKav. B3-B4 RT. 004 RW. 001\\nKel. Duren Tiga, Kec. Pancoran,\\nJakarta selatan\"},\"dataMeta\":[],\"checksum\":\"5a66650a130c05e5326a7db73f08f3903f5f57c3d585548471f6a17ddc682ebb\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"tf0u\",\"method\":\"save\",\"params\":[]}}]}'),
(13, 'Setting', 'http://localhost:8000/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-03 13:08:13', '2024-01-03 13:08:13', ''),
(14, 'Update Favicon', 'http://localhost:8000/livewire/message/setting', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-03 13:10:26', '2024-01-03 13:10:26', '{\"fingerprint\":{\"id\":\"P2nleYIarvELVWZkUHqx\",\"name\":\"setting\",\"locale\":\"id\",\"path\":\"setting\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"be44e8ab\",\"data\":{\"logoUrl\":\"http:\\/\\/localhost:8000\\/storage\\/logo20240103080813.png\",\"logo\":null,\"faviconUrl\":\"http:\\/\\/localhost:8000\\/storage\\/favicon20231208184719.png\",\"favicon\":\"livewire-file:WGz6tTld5kTItp2e3qBqINXJxgpqkI-metaZmF2aWNvbi5wbmc=-.png\",\"message\":null,\"company\":\"Wirata Putra Otomasi\",\"email\":\"-\",\"phone\":\"-\",\"website\":\"-\",\"address\":\"indo Office Square\\nJln. Duren Tiga No.101\\nKav. B3-B4 RT. 004 RW. 001\\nKel. Duren Tiga, Kec. Pancoran,\\nJakarta selatan\"},\"dataMeta\":[],\"checksum\":\"53e3c7812b0d61c789d468351fec8ea47be4420ac447819affb02a6a8e35b92d\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"hqgbh\",\"method\":\"save\",\"params\":[]}}]}'),
(15, 'Setting', 'http://localhost:8000/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-03 13:10:26', '2024-01-03 13:10:26', ''),
(16, 'Setting', 'http://localhost:8000/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-03 13:27:41', '2024-01-03 13:27:41', ''),
(17, 'Setting Update', 'http://localhost:8000/livewire/message/setting', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-03 13:29:58', '2024-01-03 13:29:58', '{\"fingerprint\":{\"id\":\"FLItp0SOWWthitfTr5tp\",\"name\":\"setting\",\"locale\":\"id\",\"path\":\"setting\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"5e3c5012\",\"data\":{\"logoUrl\":\"http:\\/\\/localhost:8000\\/storage\\/logo20240103080813.png\",\"logo\":null,\"faviconUrl\":\"http:\\/\\/localhost:8000\\/storage\\/favicon20240103201026.png\",\"favicon\":null,\"message\":null,\"company\":\"Wirata Putra Otomasi\",\"email\":\"-\",\"phone\":\"-\",\"website\":\"-\",\"address\":\"-\"},\"dataMeta\":[],\"checksum\":\"9ef715bb784bb9a79001e8c059d3b17b1d486a3fde1ef7c956d7780f746b3c7c\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"3y8x\",\"method\":\"updateBasic\",\"params\":[]}}]}'),
(18, 'Login', 'http://localhost:8000/livewire/message/login', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-11 12:10:26', '2024-01-11 12:10:26', '{\"fingerprint\":{\"id\":\"fLBRjIdy5F3xencr3zRe\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"a6a382d3\",\"data\":{\"email\":null,\"password\":null,\"token\":null,\"message\":null},\"dataMeta\":[],\"checksum\":\"8d54efe1ef210a38eed85c39a35a9bcee94cc246ae8ca1ae67da85975d12022e\"},\"updates\":[{\"type\":\"syncInput\",\"payload\":{\"id\":\"hcez\",\"name\":\"email\",\"value\":\"admin@gmail.com\"}},{\"type\":\"syncInput\",\"payload\":{\"id\":\"em3tl\",\"name\":\"password\",\"value\":\"12345678\"}},{\"type\":\"callMethod\",\"payload\":{\"id\":\"gsxq\",\"method\":\"login\",\"params\":[]}}]}'),
(19, 'Login', 'http://localhost:8000/livewire/message/login', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-11 23:53:55', '2024-01-11 23:53:55', '{\"fingerprint\":{\"id\":\"IjQbSkHASpxovaLCWWN0\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"ac227d8b\",\"data\":{\"email\":null,\"password\":null,\"token\":null,\"message\":null},\"dataMeta\":[],\"checksum\":\"8e917b02654bb149663a77666a02d47acc3d047e8659218f07bcf58d1e65ca14\"},\"updates\":[{\"type\":\"syncInput\",\"payload\":{\"id\":\"vup\",\"name\":\"email\",\"value\":\"admin@gmail.com\"}},{\"type\":\"syncInput\",\"payload\":{\"id\":\"wy0z\",\"name\":\"password\",\"value\":\"12345678\"}},{\"type\":\"callMethod\",\"payload\":{\"id\":\"m4rkg\",\"method\":\"login\",\"params\":[]}}]}'),
(20, 'Setting', 'http://localhost:8000/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-12 01:28:54', '2024-01-12 01:28:54', ''),
(21, 'Login', 'http://localhost:8000/livewire/message/login', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-12 12:09:09', '2024-01-12 12:09:09', '{\"fingerprint\":{\"id\":\"6UtiCI8PrAglGlY0kdcA\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"d8eac29f\",\"data\":{\"email\":null,\"password\":null,\"token\":null,\"message\":null},\"dataMeta\":[],\"checksum\":\"83b8d564ee0d6ab943cad736f9e8415cb20388a174003759876e9946a515b609\"},\"updates\":[{\"type\":\"syncInput\",\"payload\":{\"id\":\"dxhw\",\"name\":\"email\",\"value\":\"admin@gmail.com\"}},{\"type\":\"syncInput\",\"payload\":{\"id\":\"99pl\",\"name\":\"password\",\"value\":\"12345678\"}},{\"type\":\"callMethod\",\"payload\":{\"id\":\"gc75\",\"method\":\"login\",\"params\":[]}}]}'),
(22, 'Login', 'http://localhost:8000/livewire/message/login', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-13 10:25:38', '2024-01-13 10:25:38', '{\"fingerprint\":{\"id\":\"Xqc8VxmRQMFVuRUy2dKD\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"00a890b0\",\"data\":{\"email\":null,\"password\":null,\"token\":null,\"message\":null},\"dataMeta\":[],\"checksum\":\"1a42c13814130c3fcd3274ec3736948879149428818d47f2cfdef057b9a875d1\"},\"updates\":[{\"type\":\"syncInput\",\"payload\":{\"id\":\"yic4\",\"name\":\"email\",\"value\":\"admin@gmail.com\"}},{\"type\":\"syncInput\",\"payload\":{\"id\":\"dff4\",\"name\":\"password\",\"value\":\"12345678\"}},{\"type\":\"callMethod\",\"payload\":{\"id\":\"11zy\",\"method\":\"login\",\"params\":[]}}]}'),
(23, 'Setting', 'http://localhost:8000/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-13 12:33:02', '2024-01-13 12:33:02', ''),
(24, 'Update Logo', 'http://localhost:8000/livewire/message/setting', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-13 12:33:18', '2024-01-13 12:33:18', '{\"fingerprint\":{\"id\":\"5YfbTnknbrJhZf9StClU\",\"name\":\"setting\",\"locale\":\"id\",\"path\":\"setting\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"5e3c5012\",\"data\":{\"logoUrl\":\"http:\\/\\/localhost:8000\\/storage\\/logo20240103080813.png\",\"logo\":\"livewire-file:ndbS1zuMkqpK5C23PCk64mQr6n362Z-metac3lzdGVtLnBuZw==-.png\",\"faviconUrl\":\"http:\\/\\/localhost:8000\\/storage\\/favicon20240103201026.png\",\"favicon\":\"livewire-file:uMwuY5vXupcjh1QvxijcMm11O3OWN0-metac3lzdGVtLnBuZw==-.png\",\"message\":null,\"company\":\"Wirata Putra Otomasi\",\"email\":\"-\",\"phone\":\"-\",\"website\":\"-\",\"address\":\"-\"},\"dataMeta\":[],\"checksum\":\"3018d4ae4c01704c9545eb74f09d5e4bfb65e27668b7a4e7c3c57959ea878aed\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"30xy\",\"method\":\"save\",\"params\":[]}}]}'),
(25, 'Update Favicon', 'http://localhost:8000/livewire/message/setting', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-13 12:33:18', '2024-01-13 12:33:18', '{\"fingerprint\":{\"id\":\"5YfbTnknbrJhZf9StClU\",\"name\":\"setting\",\"locale\":\"id\",\"path\":\"setting\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"5e3c5012\",\"data\":{\"logoUrl\":\"http:\\/\\/localhost:8000\\/storage\\/logo20240103080813.png\",\"logo\":\"livewire-file:ndbS1zuMkqpK5C23PCk64mQr6n362Z-metac3lzdGVtLnBuZw==-.png\",\"faviconUrl\":\"http:\\/\\/localhost:8000\\/storage\\/favicon20240103201026.png\",\"favicon\":\"livewire-file:uMwuY5vXupcjh1QvxijcMm11O3OWN0-metac3lzdGVtLnBuZw==-.png\",\"message\":null,\"company\":\"Wirata Putra Otomasi\",\"email\":\"-\",\"phone\":\"-\",\"website\":\"-\",\"address\":\"-\"},\"dataMeta\":[],\"checksum\":\"3018d4ae4c01704c9545eb74f09d5e4bfb65e27668b7a4e7c3c57959ea878aed\"},\"updates\":[{\"type\":\"callMethod\",\"payload\":{\"id\":\"30xy\",\"method\":\"save\",\"params\":[]}}]}'),
(26, 'Setting', 'http://localhost:8000/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-13 12:33:18', '2024-01-13 12:33:18', ''),
(27, 'Setting', 'http://localhost:8000/setting', 'GET', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-13 12:33:39', '2024-01-13 12:33:39', ''),
(28, 'Login', 'http://localhost:8000/livewire/message/login', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-13 19:12:42', '2024-01-13 19:12:42', '{\"fingerprint\":{\"id\":\"OcK3tWwWBxfVC8zdUX1N\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"ec95eab0\",\"data\":{\"email\":null,\"password\":null,\"token\":null,\"message\":null},\"dataMeta\":[],\"checksum\":\"5b933c1f4ac4bcfb8dbab87da008559b6707c3a182f61eed34b55eb99e7fc78f\"},\"updates\":[{\"type\":\"syncInput\",\"payload\":{\"id\":\"hwx7\",\"name\":\"email\",\"value\":\"admin@gmail.com\"}},{\"type\":\"syncInput\",\"payload\":{\"id\":\"bh19\",\"name\":\"password\",\"value\":\"12345678\"}},{\"type\":\"callMethod\",\"payload\":{\"id\":\"nhyv\",\"method\":\"login\",\"params\":[]}}]}'),
(29, 'Login', 'http://localhost:8000/livewire/message/login', 'POST', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 4, '2024-01-14 09:25:30', '2024-01-14 09:25:30', '{\"fingerprint\":{\"id\":\"AvupJS0zKqjYwuQgKq4P\",\"name\":\"login\",\"locale\":\"id\",\"path\":\"login\",\"method\":\"GET\",\"v\":\"acj\"},\"serverMemo\":{\"children\":[],\"errors\":[],\"htmlHash\":\"be5c64bb\",\"data\":{\"email\":null,\"password\":null,\"token\":null,\"message\":null},\"dataMeta\":[],\"checksum\":\"02d5b9a80582c2040d6e6498a4bb0c3d65be23693f611118bc92de8ad0204de9\"},\"updates\":[{\"type\":\"syncInput\",\"payload\":{\"id\":\"x4fj\",\"name\":\"email\",\"value\":\"admin@gmail.com\"}},{\"type\":\"syncInput\",\"payload\":{\"id\":\"zxr\",\"name\":\"password\",\"value\":\"12345678\"}},{\"type\":\"callMethod\",\"payload\":{\"id\":\"moakh\",\"method\":\"login\",\"params\":[]}}]}');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_code_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uom` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_10_16_105436_create_sessions_table', 1),
(7, '2020_10_16_134514_create_table_user_access', 1),
(8, '2020_10_17_073954_add_column_users', 1),
(9, '2020_10_17_150914_add_column_telepon_table_users', 1),
(10, '2020_10_26_143201_create_table_settings', 1),
(11, '2020_11_17_093434_create_table_customer', 2),
(12, '2020_11_17_133745_create_table_projects', 3),
(13, '2020_11_18_084209_create_table_vedors', 4),
(14, '2020_11_18_092403_add_column_vendor1', 5),
(15, '2020_11_20_064639_create_table_modules', 6),
(16, '2020_11_21_061517_add_column_modules_items', 7),
(17, '2020_11_22_045652_add_column_modules_item_parent_id', 8),
(18, '2020_11_24_155017_create_table_coa_group', 9),
(19, '2020_11_25_023925_create_table_journal', 10),
(20, '2020_11_25_045441_create_table_bank_account', 11),
(21, '2020_11_26_045520_add_column_table_coa', 12),
(22, '2020_11_26_062403_add_column_description_journal', 13),
(23, '2020_11_26_065426_add_column_type_journal', 14),
(24, '2020_11_26_074202_add_column_open_balance_bank_accounts', 15),
(25, '2020_11_26_083919_create_table_code_cashflow', 16),
(26, '2020_11_26_171626_add_column_code_table_banks', 17),
(29, '2020_11_26_181807_create_table_teknis', 18),
(30, '2020_11_27_133341_create_table_policy_production', 19),
(31, '2020_11_27_151656_add_column_teknis', 20),
(32, '2020_11_28_074611_create_table_expense', 21),
(33, '2020_11_28_075905_add_column_expense', 22),
(34, '2020_11_28_132229_add_field_status_income', 23),
(35, '2020_11_28_154732_add_column_policy_id_expenses', 24),
(36, '2020_11_29_045506_add_field_transaksi_id', 25),
(37, '2020_11_30_054857_add_column_total_kredit_total_debit', 26),
(38, '2020_11_30_033652_create_table_sales_tax', 27),
(41, '2020_12_01_093440_create_table_konven_underwriting_coa', 29),
(42, '2020_12_01_090729_create_table_konven_underwriting', 30),
(43, '2020_12_02_025959_create_tabl_expenses_coas', 31),
(44, '2020_12_02_080044_create_table_income_coas', 32),
(45, '2020_12_02_110654_create_table_syariah_underwriting', 33),
(46, '2020_12_04_064244_add_column_journal_date_konven_uw', 34),
(47, '2020_12_04_084630_add_column_line_bussines_table_conve_underwriting', 35),
(48, '2020_12_07_081544_add_column_konven_uw_ordering', 36),
(49, '2020_12_09_101338_add_column_expense_tax_amount', 37),
(50, '2020_12_10_053255_add_column_income_payment_amount', 38),
(51, '2020_12_11_022057_add_column_transaction_number_table_journal', 39),
(52, '2020_12_11_121248_create_table_konven_reinsurance', 40),
(53, '2020_12_11_152632_create_table_conven_claim', 41),
(54, '2020_12_12_134822_add_column_konven_reinsurance', 42),
(55, '2020_12_12_144133_add_column_konven_underwriting_idkonven_reinsurance', 43),
(56, '2020_12_12_152404_add_column_transaction_field_income', 44),
(57, '2020_12_13_133746_add_column_tetap_menurun_konven_reinsurance', 45),
(58, '2020_12_14_053033_ad_column_status_claim', 46),
(59, '2020_12_14_054101_rename_column_table_income_claim', 47),
(60, '2020_12_14_080338_add_column_transaction_expenses', 48),
(61, '2020_12_15_103506_create_table_income_payment', 49),
(62, '2020_12_16_023407_create_table_journal_reclass', 50),
(63, '2020_12_16_103054_add_field_total_payment_amount', 50),
(64, '2020_12_17_030740_add_column_bank_account_coa_id', 50),
(65, '2020_12_17_172002_add_column_is_others_expense', 51),
(66, '2020_12_18_070205_add_column_transaction_type_expense_payment', 52),
(67, '2020_12_20_021722_create_table_konven_conven_memo_pos', 53),
(68, '2020_12_25_010435_add_field_status_sync', 54),
(69, '2020_12_29_034621_change_field_konven_memo_pos', 55),
(70, '2020_12_29_040431_add_field_jml_feekonven_memo_pos', 56),
(71, '2020_12_29_045101_change_field_terbilang_konven_memo_pos', 57),
(72, '2020_12_29_075438_add_field_konven_underwriting_id_konven_memo', 58),
(73, '2020_12_29_155338_add_field_is_system_bank_account', 59),
(74, '2020_12_30_054613_create_table_konven_underwriting_cancelation', 60),
(75, '2021_01_05_154053_add_column_from_bank_expense', 61),
(76, '2021_01_13_141631_add_column_bank_charges_t_expenses', 62),
(77, '2021_01_13_152801_add_column_bank_charges_t_income', 63),
(78, '2021_01_18_064640_create_table_konven_komisi', 64),
(79, '2021_01_21_020841_create_table_konven_underwriting_endorsement', 65),
(80, '2021_01_21_024223_add_column_type_t_konven_underwriting_endorsement', 66),
(81, '2021_01_21_170932_add_column_bank_charges_t_income2', 67),
(82, '2021_01_22_065556_add_column_type_t_income', 68),
(83, '2021_01_22_084106_add_column_type_t_expense', 69),
(84, '2021_01_24_101017_add_column_due_date_t_income', 70),
(85, '2021_01_24_130239_add_field_is_temp_parent_idt_konven_underwriting', 71),
(86, '2021_01_26_024911_add_is_temp_parent_id_t_konven_memo', 72),
(87, '2021_01_26_171543_add_field_is_temp_parent_id_t_konven_komisi', 73),
(88, '2021_01_27_024043_add_column_is_temp_parent_id_t_konven_reinsurance', 74),
(89, '2021_01_27_070446_create_table_income_titipan_premi', 75),
(90, '2021_01_29_163026_create_table_inhouse_transfer', 76),
(91, '2021_01_30_040624_add_column_debit_kredit_t_bank_account_balance', 77),
(92, '2021_01_30_072527_add_column_transaction_date_t_bank_account_balance', 78),
(93, '2021_01_30_091818_add_column_description_t_bank_account_balance', 79),
(94, '2021_02_03_052901_add_column_type_t_policy', 80),
(95, '2021_02_03_075207_create_table_syariah_endorsement', 81),
(96, '2021_02_03_115611_create_table_cancel', 82),
(97, '2021_02_04_134954_create_table_syariah_refund', 83),
(98, '2021_02_04_152417_add_column_syariah_refund', 84),
(99, '2021_02_08_052317_add_column_extend_due_date', 85),
(100, '2021_02_08_064446_add_column_syaria_underwriting_id', 86),
(101, '2021_02_08_083722_create_table_income_cancel', 87),
(102, '2021_02_08_091048_create_table_income_endorsements', 88),
(103, '2021_02_11_004933_add_column_no_dn_awal', 89),
(104, '2021_02_12_010156_create_table_log_activities', 90),
(105, '2021_02_12_020135_add_column_var', 91),
(106, '2021_02_17_080610_rename_column_expense_payment', 92),
(107, '2021_02_20_035315_add_column_policy_id_t_income', 93),
(108, '2021_02_20_114330_add_column_description_expense_payment', 94),
(109, '2021_02_25_050352_create_table_income_peserta', 95),
(110, '2021_02_25_092123_add_column_id_income_policy', 96),
(111, '2021_02_25_102323_create_table_income_recovery_claims', 97),
(113, '2021_02_25_144441_create_table_expense_pesertas', 98),
(114, '2021_02_25_175310_add_column_policy', 99),
(115, '2021_02_26_072108_add_column_income_is_othes', 100),
(116, '2021_02_26_093050_add_column_is_others_income_expense', 101),
(117, '2021_02_26_120238_add_field_transaction_type', 102),
(118, '2021_02_26_121137_add_field_transaction_type_description', 103),
(119, '2021_03_02_081029_create_table_syariah_reinsurance', 104),
(120, '2021_03_02_110254_add_column_status_t_syariah_reinsurance', 105),
(121, '2021_03_03_072247_add_column_no_voucher_t_journal', 106),
(122, '2021_03_03_091326_add_column_last_ordering_t_journal', 107),
(123, '2021_03_03_102135_add_column_is_auto_t_journals', 108),
(124, '2021_03_05_234752_change_column_syariah_uw', 109),
(125, '2021_03_08_140247_add_column_is_auto_t_income', 110),
(126, '2021_03_10_220733_create_table_user_otp', 111),
(127, '2021_03_10_221044_add_field_supervisor_table_users', 112),
(128, '2021_03_11_064444_create_table_history_otp', 113),
(129, '2021_03_11_120601_add_column_user_otp_request_user_id', 114),
(130, '2021_03_11_134657_add_column_user_otp_history_status', 115),
(131, '2021_03_27_211043_add_column_transaction_type_to_income_titipan_premi', 116),
(132, '2021_03_31_153135_create_table_journal_penyesuaian', 117),
(133, '2021_03_31_193718_add_column_table_journal_is_adjusting_to_journals', 118),
(134, '2021_04_01_100837_add_column_opening_balance_to_coas', 119),
(135, '2021_04_02_021316_create_table_general_ledger', 120),
(136, '2021_04_02_141928_add_field_status_gl_to_journals', 121),
(138, '2021_04_18_140950_add_field_column_year_month', 122),
(139, '2021_04_19_093516_add_column_coa_id_to_general_ledger', 123),
(140, '2021_04_20_084644_add_field_gl_number_to_general_ledger', 124),
(141, '2021_04_20_084917_create_table_general_ledger_history', 125),
(142, '2021_05_07_135422_add_column_to_general_ledger', 125),
(143, '2021_05_08_090806_add_column_revisi_to_general_ledger', 126),
(144, '2021_07_13_095041_create_migrations_data', 127),
(145, '2021_07_16_011652_add_field_migration_data_to_migration_data', 128),
(146, '2022_05_18_003702_create_table_polis', 129),
(147, '2022_05_19_065056_create_table_produk', 130),
(148, '2022_05_28_032102_create_table_convert_pdf', 131),
(149, '2022_06_01_020134_create_table_rate', 132),
(150, '2022_06_02_185350_create_table_reasradur', 133),
(151, '2022_06_03_064138_create_table_kepesertaan', 134),
(152, '2022_06_05_160351_create_table_underwritin_limit', 135),
(153, '2022_06_15_144135_create_table_extra_mortalita', 136),
(154, '2022_06_27_012342_create_table_pengajuan', 137),
(155, '2022_06_30_053806_create_table_pengajuan_history', 138),
(156, '2022_07_06_104219_add_field_no_peserta_awal_to_pengajuan', 139),
(157, '2022_07_06_140449_add_field_kadaluara_klaim_to_polis', 139),
(158, '2022_07_07_163040_add_field_approved_data_to_pengajuan', 140),
(159, '2022_07_07_181209_add_soft_delete_to_produk', 141),
(160, '2022_07_07_225501_add_field_kode_produk_to_produk', 142),
(161, '2022_07_08_172710_add_field_polis_id_to_rate', 142),
(162, '2022_07_11_143025_add_field_tanggal_pengajuan_to_pengajuan', 142),
(163, '2022_07_14_161939_add_no_surat_to_pengajuan', 143),
(164, '2022_07_14_191916_add_field_masa_asuransi_to_pengajuan', 143),
(165, '2022_07_14_193534_add_field_tinggi_badan_berat_badan_to_kepesertaan', 143),
(166, '2022_07_14_200120_add_field_account_maanager_to_pengajuan', 143),
(167, '2022_07_15_083906_add_field_ek_status_to_kepesertaan', 144),
(168, '2022_07_15_144231_add_field_nomor_ek_to_kepesertaan', 144),
(169, '2022_07_17_224654_add_field_tanggal_jatuh_tempo_to_pengajuan', 145),
(170, '2022_07_18_102335_add_field_sektor_keuangan_to_polis', 146),
(171, '2022_07_18_161146_add_field_gae_to_polis', 147),
(172, '2022_07_18_162307_change_type_lost_ratio_to_polis', 148),
(173, '2022_07_18_162750_change_type_share_reinsurance_to_polis', 149),
(174, '2022_07_20_112857_add_field_running_number_to_polis', 150),
(175, '2022_07_21_081428_add_biaya_polis_dan_materia_to_pengajuan', 151),
(176, '2022_07_30_194502_add_field_keterangan_to_kepesertaan', 152),
(177, '2022_08_01_091245_add_field_status_polis_to_kepesertaan', 153),
(178, '2022_08_01_092843_add_field_total_dn_to_kepesertaan', 154),
(179, '2022_08_01_114128_add_field_total_kontribusi_dibayar_to_kepesertaan', 155),
(180, '2022_08_01_145238_add_field_status_date_to_kepesertaan', 156),
(181, '2022_08_01_182111_add_field_ul_reas_to_kepesertaan', 157),
(182, '2022_08_04_114327_add_running_number_peserta_to_polis', 157),
(183, '2022_08_04_123103_add_running_number_dn_to_polis', 158),
(184, '2022_08_04_164338_add_status_invoice_to_pengajuan', 159),
(185, '2022_07_28_153757_create_table_reasuransi', 160),
(186, '2022_08_05_152220_change_field_no_sb_to_polis', 160),
(187, '2022_08_05_212318_add_field_potong_langsung_to_pengajuan', 161),
(188, '2022_08_05_215950_add_field_nilai_manfaat_to_pengajuan', 162),
(189, '2022_08_05_230700_add_field_biaya_sertifikat_to_pengajuan', 163),
(190, '2022_08_07_143440_add_field_running_no_surat_to_polis', 163),
(191, '2022_08_08_163847_add_field_running_number_to_produk', 164),
(192, '2022_08_08_170407_add_field_kode_to_produk', 165),
(193, '2022_08_10_141316_create_table_reasuradur_rate', 166),
(194, '2022_08_10_181938_add_field_akumulasi_to_kepesertaan', 166),
(195, '2022_08_15_112425_create_jobs_table', 167),
(196, '2022_08_15_222021_add_field_rate_to_reasuradur', 167),
(197, '2022_08_15_223404_create_table_reasuradur_rate_rates', 167),
(198, '2022_08_15_232039_add_field_reasuradur_id_to_reasuradur_rate', 167),
(199, '2022_08_16_145347_create_table_reas', 167),
(200, '2022_08_20_115144_add_field_reas_id_to_kepesertaan', 167),
(201, '2022_08_20_134459_add_field_reas_id_to_pengajuan', 167),
(202, '2022_08_21_114335_add_field_payment_date_to_pengajuan', 168),
(203, '2022_08_21_140828_add_field_is_payment_to_pengajuan', 169),
(204, '2022_08_21_150702_add_field_reas_manfaat_to_reas', 170),
(205, '2022_08_21_161642_add_field_type_reas_to_reas', 170),
(206, '2022_08_21_194720_add_field_type_reas_to_kepesertaan', 170),
(207, '2022_08_22_002212_change_field_type_to_kepesertaan', 170),
(208, '2022_08_22_122724_add_field_jumlah_peserta_to_reas', 170),
(209, '2022_08_22_135438_add_field_extra_kontribusi_to_reas', 170),
(210, '2022_08_22_191904_add_field_reas_extra_kontribusi_to_kepesertaan', 170),
(211, '2022_09_02_223829_add_field_status_reas_to_kepesertaan', 171),
(212, '2022_09_07_181637_add_field_ricom_to_reasuradur_rate', 172),
(213, '2022_09_07_191645_add_field_ri_com_to_reas', 172),
(214, '2022_09_09_132846_change_field_type_kontribusi_to_kepesertaan', 173),
(215, '2022_09_09_010739_create_table_klaim', 174),
(216, '2022_09_11_000558_add_field_klaim_id_to_kepesertaan', 174),
(217, '2022_09_11_191554_add_field_file_pendukung_to_klaim', 174),
(218, '2022_09_12_005005_add_field_approval_to_klaim', 174),
(219, '2022_09_12_005954_add_field_approval_user_to_klaim', 174),
(220, '2022_09_12_103402_add_field_status_to_klaim', 174),
(221, '2022_09_12_165312_change_field_decimal_net_kontribusi_reas_to_kepesertaan', 175),
(222, '2022_09_14_130349_add_kadaluarsa_to_reas', 176),
(223, '2022_09_14_142036_add_kadaluarsa__reas_to_kepesertaan', 176),
(224, '2022_09_14_204507_add_field_nilai_klaim_disetujui_to_klaim', 177),
(225, '2022_09_14_224358_add_field_direksi_1_2_to_klaim', 177),
(226, '2022_09_14_224906_add_field_direksi_1_2_date_to_klaim', 177),
(227, '2022_09_19_115632_add_field_no_mak_no_apv_to_klaim', 178),
(228, '2022_09_20_125500_add_field_no_surat_tolak_to_klaim', 179),
(229, '2022_09_20_152832_add_field_no_memo_pembayaran_to_klaim', 179),
(230, '2022_09_20_192723_add_field_jatuh_tempo_to_klaim', 179),
(231, '2022_09_20_211844_change_field_pembayaran_klaim_to_polis', 180),
(232, '2022_09_23_153804_create_table_klaim_tolak_reason', 181),
(233, '2022_09_29_103500_add_field_perhitungan_usia_to_reas', 181),
(234, '2022_09_29_123511_add_field_usia_reas_to_kepesertaan', 181),
(235, '2022_09_29_143858_add_field_is_migrate_to_klaim', 181),
(236, '2022_09_29_232110_add_provinsi_and_kabupaten_to_klaim', 181),
(237, '2022_10_01_213214_add_field_is_migrate_to_reas', 181),
(238, '2022_10_04_162236_create_table_recovery_claim', 181),
(239, '2022_10_05_145749_add_field_status_pengajuan_to_klaim', 181),
(240, '2022_10_06_001314_add_field_polis_id_to_recovery_claim', 181),
(241, '2022_10_06_140857_add_field_reas_id_to_klaim', 181),
(242, '2022_10_06_150554_add_field_status_to_recovery_claim', 181),
(243, '2022_10_20_154702_add_field_is_double_reas_to_kepesertaan', 181),
(244, '2022_11_02_131239_add_pengajuan_harian_to_pengajuan', 181),
(245, '2022_11_02_142851_add_pengajuan_id_to_pengajuan', 181),
(246, '2022_11_02_165135_add_field_akumulasi_ganda_to_reas', 181),
(247, '2022_11_02_180718_add_field_akumulasi_ganda_reas_to_kepesertaan', 181),
(248, '2022_11_04_133431_create_dn', 182),
(249, '2022_11_05_200600_add_field_is_migrate_to_pengajuan', 182),
(250, '2022_11_09_164022_add_field_to_reasuradur_id_to_kepesertaan', 183),
(251, '2022_12_13_162331_add_field_to_no_surat_diterima', 184),
(252, '2022_12_16_155836_add_field_sebab_klaim_and_rekening_to_kalim', 185),
(253, '2022_12_16_224010_add_provinsi_to_klaim', 186),
(254, '2022_12_16_224311_create_table_klaim_jenis', 187),
(255, '2022_12_18_002048_add_field_model_reas_to_reasuradur_rate', 188),
(256, '2022_12_18_203616_add_field_nilai_klaim_or_to_klaim', 189),
(257, '2022_12_18_204502_add_field_deleted_at_to_klaim', 190),
(258, '2022_12_20_020040_add_field_nilai_klaim_reas_to_klaim', 191),
(259, '2022_12_27_133710_add_field_jenis_klaim_to_klaim', 192),
(260, '2023_01_07_022226_add_field_kadaluarsa_reas_tanggal_to_klaim', 193),
(261, '2023_01_30_030244_add_field_detail_penolakan_to_klaim', 194),
(262, '2023_02_08_030429_add_field_max_or_to_klaim', 195),
(263, '2023_02_12_014315_add_field_model_reas_to_klaim', 196),
(264, '2023_03_22_042043_add_field_polis_id_to_users', 197),
(265, '2023_03_23_161440_add_field_bmi_kb_to_kepesertaan', 198),
(266, '2023_03_24_023749_add_field_user_id_to_kepesertaan', 198),
(267, '2023_06_07_221108_add_field_file_spk_to_kepesertaan', 199),
(268, '2023_06_08_144420_add_field_email_to_kepesertaan', 200),
(269, '2023_06_21_201325_add_field_rekon_date_to_pengajuan', 201),
(270, '2023_07_04_155837_add_field_is_rate_to_polis', 202),
(271, '2023_08_11_223455_create_table_klaim_file', 203),
(272, '2023_12_07_084115_create_rooms', 204),
(273, '2024_01_11_193059_create_table_customer', 205),
(274, '2024_01_12_194350_create_table_vendor', 206),
(275, '2024_01_12_202151_create_table_tracking', 207),
(276, '2024_01_14_164537_create_table_material_part', 208);

-- --------------------------------------------------------

--
-- Table structure for table `migration_data`
--

CREATE TABLE `migration_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_register` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_invoice` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_polis` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pemegang_polis` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_polis` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_pemegang_polis` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_produk` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_of_business` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_terbit` date DEFAULT NULL,
  `jatuh_tempo` date DEFAULT NULL,
  `aging` smallint(6) DEFAULT NULL,
  `klasifikasi_aging` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `premi_bruto` int(11) DEFAULT NULL,
  `extra_premi` int(11) DEFAULT NULL,
  `premi_gross` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `komisi` int(11) DEFAULT NULL,
  `fee_base` int(11) DEFAULT NULL,
  `lain_lain` int(11) DEFAULT NULL,
  `pajak_ppn` int(11) DEFAULT NULL,
  `pajak_pph` int(11) DEFAULT NULL,
  `pajak_lain` int(11) DEFAULT NULL,
  `biaya_administrasi` int(11) DEFAULT NULL,
  `biaya_polis` int(11) DEFAULT NULL,
  `biaya_sertifikat` int(11) DEFAULT NULL,
  `biaya_materai` int(11) DEFAULT NULL,
  `premi_netto` int(11) DEFAULT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `tanggal_pendapatan` date DEFAULT NULL,
  `no_rekening` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `pembayaran` int(11) DEFAULT NULL,
  `piutang` int(11) DEFAULT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengajuan_komisi` date DEFAULT NULL,
  `jumlah_peserta` smallint(6) DEFAULT NULL,
  `no_memo` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manajemen_fee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_data`
--

INSERT INTO `migration_data` (`id`, `no_register`, `nomor_invoice`, `nomor_polis`, `nama_pemegang_polis`, `sub_polis`, `sub_pemegang_polis`, `jenis_produk`, `line_of_business`, `tanggal_terbit`, `jatuh_tempo`, `aging`, `klasifikasi_aging`, `premi_bruto`, `extra_premi`, `premi_gross`, `discount`, `komisi`, `fee_base`, `lain_lain`, `pajak_ppn`, `pajak_pph`, `pajak_lain`, `biaya_administrasi`, `biaya_polis`, `biaya_sertifikat`, `biaya_materai`, `premi_netto`, `jumlah_bayar`, `tanggal_pendapatan`, `no_rekening`, `bank`, `amount`, `pembayaran`, `piutang`, `status`, `pengajuan_komisi`, `jumlah_peserta`, `no_memo`, `period`, `created_at`, `updated_at`, `manajemen_fee`) VALUES
(1, '1032005194/002-DN', '1032005194/002/AJRI-DN/I/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-02-01', '2021-02-18', 0, '0-30', 2162500, 0, 2162500, 216250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1946250, 1946250, '2021-02-04', '0182271089618', 'Parung Panjang', 1946250, 1946250, 0, '', NULL, 1, '000150/UW-M/AJRI/I/2021', '', '2021-07-13 09:28:38', '2021-07-13 09:28:38', NULL),
(2, '1041712046/004-DN', '1041712046/004/AJRI-DN/I/2021', '1041712000046', 'PT ASURANSI ASEI INDONESIA QQ PT BANK WOORI SAUDARA INDONESIA 1906, TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-28', '2021-02-18', 28, '0-30', 1174709833, 0, 1174709833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1174709833, 1174709833, '2021-03-18', '5460316199', 'BCA', 1174709833, 1174709833, 0, '', NULL, 1090, '000149/UW-M/AJRI/I/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(3, '1011809168/002-DN', '1011809168/002/AJRI-DN/I/2021', '1011809000168', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-01-28', '2021-02-18', 0, '0-30', 13433042, 0, 13433042, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13433042, 13433042, '2020-03-24', '011103230101', 'Arta Kencana', 13433042, 13433042, 0, '', NULL, 282, '000146/UW-M/AJRI/I/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(4, '1011809168/001-DN', '1011809168/001/AJRI-DN/I/2021', '1011809000168', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-01-28', '2021-02-18', 0, '0-30', 6397772, 0, 6397772, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6397772, 6397772, '2020-04-03', '011103230102', 'Arta Kencana', 6397772, 6397772, 0, '', NULL, 110, '000144/UW-M/AJRI/I/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(5, '1032101210/002-DN', '1032101210/002/AJRI-DN/I/2021', '1032101000210', 'PT BUMI INSURANCE BROKERS QQ LPD KUWUM NYELATI', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-02', '2021-03-16', 0, '0-30', 362029, 0, 362029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 362029, 362029, '2021-02-15', '5460316199', 'BCA', 362029, 362029, 0, '', NULL, 4, '000151/UW-M/AJRI/I/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(6, '1032101210/003-DN', '1032101210/003/AJRI-DN/I/2021', '1032101000210', 'PT BUMI INSURANCE BROKERS QQ LPD KUWUM NYELATI', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-02', '2021-03-16', 0, '0-30', 447694, 0, 447694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 447694, 447694, '2021-02-15', '5460316199', 'BCA', 447694, 447694, 0, '', NULL, 7, '000152/UW-M/AJRI/I/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(7, '1021406014/011-DN', '1021406014/011/AJRI-DN/I/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-02', '2021-03-04', 0, '0-30', 18338945, 0, 18338945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18338945, 18338945, '2021-02-26', '5460316199', 'BCA', 18338945, 18338945, 0, '', '2021-05-24', 44, '000154/UW-M/AJRI/I/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(8, '1021406014/012-DN', '1021406014/012/AJRI-DN/I/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-02', '2021-03-04', 0, '0-30', 9888090, 0, 9888090, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9888090, 9888090, '2021-02-26', '5460316199', 'BCA', 9888090, 9888090, 0, '', '2021-05-24', 36, '000155/UW-M/AJRI/I/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(9, '1021406014/013-DN', '1021406014/013/AJRI-DN/I/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-02', '2021-03-04', 0, '0-30', 7549210, 0, 7549210, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7549210, 7549210, '2021-02-26', '5460316199', 'BCA', 7549210, 7549210, 0, '', '2021-05-24', 35, '000156/UW-M/AJRI/I/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(10, '1031510060/001-DN', '1031510060/001/AJRI-DN/I/2021', '1031510000060', 'PT. USAHA PEMBIAYAAN RELIANCE INDONESIA', '', 'PT. USAHA PEMBIAYAAN RELIANCE INDONESIA', 'RCL', 'JANGKAWARSA', '2021-02-02', '2021-03-04', 0, '0-30', 14851566, 0, 14851566, 4455470, 0, 0, 0, 0, 0, 0, 0, 0, 104000, 0, 10396096, 10500096, '2021-02-10', '5460316199', 'BCA', 10500096, 10500096, 0, '', NULL, 4, '000157/UW-M/AJRI/I/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(11, '1031905175/003-DN', '1031905175/003/AJRI-DN/II/2021', '1031905000175', 'CAKRABUANA INSURANCE BROKER QQ PINANG ARTHA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-02', '2021-02-23', 13, '0-30', 6381250, 0, 6381250, 2233438, 0, 0, 0, 0, -44669, 0, 0, 0, 0, 0, 4147813, 4192481, '2021-03-08', '5460316199', 'BCA', 4192481, 4192481, 0, '', NULL, 11, '000158/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(12, '1012101216/002-DN', '1012101216/002/AJRI-DN/II/2021', '1012101000216', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-02', '2021-03-04', 41, '31-60', 27534, 0, 27534, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27534, 27534, '2021-04-14', '5460316199', 'BCA', 27534, 27534, 0, '', NULL, 2, '000159/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(13, '1031510062/003-DN', '1031510062/003/AJRI-DN/II/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-02-02', '2021-02-22', 0, '0-30', 461350, 0, 461350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 461350, 461350, '2021-02-05', '5460316199', 'BCA', 461350, 461350, 0, '', NULL, 7, '000160/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(14, '1031701102/002-DN', '1031701102/002/AJRI-DN/II/2021', '1031701000102', 'PT BPR ARTHA BERSAMA', '', 'PT BPR ARTHA BERSAMA', 'RCL', 'JANGKAWARSA', '2021-02-02', '2021-02-23', 9, '0-30', 3247840, 0, 3247840, 324784, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2923056, 2923056, '2021-03-04', '5460316199', 'BCA', 2923056, 2923056, 0, '', NULL, 5, '000161/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(15, '1011612098/002-DN', '1011612098/002/AJRI-DN/II/2021', '1011612000098', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-02', '2021-02-23', 0, '0-30', 4918720, 0, 4918720, 1475616, 0, 0, 0, 0, -29512, 0, 0, 0, 0, 0, 3443104, 3472616, '2021-02-22', '5460316199', 'BCA', 3472616, 3472616, 0, '', NULL, 31, '000166/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(16, '1031612096/001-DN', '1031612096/001/AJRI-DN/II/2021', '1031612000096', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-02', '2021-02-23', 13, '0-30', 3240000, 0, 3240000, 972000, 0, 0, 0, 0, -19440, 0, 0, 0, 0, 0, 2268000, 2287440, '2021-03-08', '5460316199', 'BCA', 2287440, 2287440, 0, '', NULL, 1, '000162/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(17, '1011612100/002-DN', '1011612100/002/AJRI-DN/II/2021', '1011612000100', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-02', '2021-02-23', 0, '0-30', 2144830, 0, 2144830, 643449, 0, 0, 0, 0, -12869, 0, 0, 0, 0, 0, 1501381, 1514250, '2021-02-22', '5460316199', 'BCA', 1514250, 1514250, 0, '', NULL, 38, '000168/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(18, '1011701103/002-DN', '1011701103/002/AJRI-DN/II/2021', '1011701000103', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-02', '2021-02-23', 0, '0-30', 1892740, 0, 1892740, 567822, 0, 0, 0, 0, -11356, 0, 0, 0, 0, 0, 1324918, 1336274, '2021-02-22', '5460316199', 'BCA', 1336274, 1336274, 0, '', NULL, 24, '000170/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(19, '1011907182/004-DN', '1011907182/004/AJRI-DN/II/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-02-02', '2021-02-09', 0, '0-30', 13100000, 0, 13100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13100000, 13100000, '2021-02-08', '5460316199', 'BCA', 13100000, 13100000, 0, '', NULL, 262, '000169/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(20, '1011710134/002-DN', '1011710134/002/AJRI-DN/II/2021', '1011710000134', 'PT. BPR BANTORU PERINTIS', '', 'PT. BPR BANTORU PERINTIS', 'RTL', 'JANGKAWARSA', '2021-02-02', '2021-02-23', 0, '0-30', 117950, 0, 117950, 11795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106155, 106155, '2021-02-04', '5460316199', 'BCA', 106155, 106155, 0, '', NULL, 5, '000171/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(21, '1021406014/010-DN', '1021406014/010/AJRI-DN/I/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-02', '2021-03-04', 0, '0-30', 1053000, 0, 1053000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1053000, 1053000, '2021-02-26', '5460316199', 'BCA', 1053000, 1053000, 0, '', '2021-05-24', 1, '000153/UW-M/AJRI/I/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(22, '1011711135/005-DN', '1011711135/005/AJRI-DN/II/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-03', '2021-02-24', 20, '0-30', 13300, 0, 13300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13300, 13300, '2021-03-16', '5460316199', 'BCA', 13300, 13300, 0, '', NULL, 1, '000172/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(23, '1031812168/002-DN', '1031812168/002/AJRI-DN/II/2021', '1031812000168', 'PT BPR KARINAMAS PERMAI', '', 'PT BPR KARINAMAS PERMAI', 'RCL', 'JANGKAWARSA', '2021-02-03', '2021-02-24', 0, '0-30', 639500, 0, 639500, 63950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 575550, 575550, '2021-02-08', '5460316199', 'BCA', 575550, 575550, 0, '', NULL, 2, '000173/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(24, '1011907182/005-DN', '1011907182/005/AJRI-DN/II/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-02-03', '2021-02-10', 0, '0-30', 16950000, 0, 16950000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16950000, 16950000, '2021-02-08', '5460316199', 'BCA', 16950000, 16950000, 0, '', NULL, 339, '000174/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(25, '1011704120/002-DN', '1011704120/002/AJRI-DN/II/2021', '1011704000120', 'PT BPR SUKMA KEMANG AGUNG', '', 'PT BPR SUKMA KEMANG AGUNG', 'RTL', 'JANGKAWARSA', '2021-02-03', '2021-02-24', 0, '0-30', 11948130, 0, 11948130, 1194813, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10753317, 10753317, '2021-02-05', '5460316199', 'BCA', 10753317, 10753317, 0, '', NULL, 32, '000177/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(26, '1032008196/003-DN', '1032008196/003/AJRI-DN/II/2021', '1032008000196', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-03', '2021-03-05', 40, '31-60', 231736, 0, 231736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231736, 231736, '2021-04-14', '5460316199', 'BCA', 231736, 231736, 0, '', NULL, 4, '000181/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(27, '1032003191/001-DN', '1032003191/001/AJRI-DN/II/2021', '1032003000191', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', '', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', 'RCL', 'JANGKAWARSA', '2021-02-03', '2021-02-24', 0, '0-30', 1577925, 0, 1577925, 157793, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1420133, 1420133, '2021-02-24', '5460316199', 'BCA', 1420133, 1420133, 0, '', NULL, 20, '000182/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(28, '1012009206/001-DN', '1012009206/001/AJRI-DN/II/2021', '1012009000206', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-03', '2021-03-05', 40, '31-60', 1731954, 0, 1731954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1731954, 1731954, '2021-04-14', '5460316199', 'BCA', 1731954, 1731954, 0, '', NULL, 5, '000183/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(29, '1031906178/001-DN', '1031906178/001/AJRI-DN/II/2021', '1031906000178', 'PT BPR KARINAMAS PERMAI CABANG CIKARANG', '', 'PT BPR KARINAMAS PERMAI', 'RCL', 'JANGKAWARSA', '2021-02-03', '2021-02-24', 20, '0-30', 1005800, 0, 1005800, 100580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 905220, 905220, '2021-03-16', '5460316199', 'BCA', 905220, 905220, 0, '', NULL, 2, '000184/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(30, '1031802142/003-DN', '1031802142/003/AJRI-DN/II/2021', '1031802000142', 'PT BPR HARTA TANAMAS', '', 'PT. BPR HARTA TANAMAS', 'RCL', 'JANGKAWARSA', '2021-02-03', '2021-02-24', 0, '0-30', 1222500, 0, 1222500, 122250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1100250, 1100250, '2021-02-18', '5460316199', 'BCA', 1100250, 1100250, 0, '', NULL, 1, '000185/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(31, '1012101216/003-DN', '1012101216/003/AJRI-DN/II/2021', '1012101000216', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-03', '2021-03-05', 40, '31-60', 379591, 0, 379591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 379591, 379591, '2021-04-14', '5460316199', 'BCA', 379591, 379591, 0, '', NULL, 15, '000186/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(32, '1031907180/001-DN', '1031907180/001/AJRI-DN/II/2021', '1031907000180', 'BUKP MANTRIJERON', '', 'BUKP MANTRIJERON', 'RCL', 'JANGKAWARSA', '2021-02-03', '2021-02-24', 0, '0-30', 833185, 0, 833185, 166637, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 666548, 666548, '2021-02-09', '5460316199', 'BCA', 666548, 666637, -89, '', NULL, 43, '000187/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(33, '101210215/002/-DN', '101210215/002/AJRI-DN/II/2021', '1012101000215', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SINAR SARI MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-03', '2021-03-05', 40, '31-60', 349279, 0, 349279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 349279, 349279, '2021-04-14', '5460316199', 'BCA', 349279, 349279, 0, '', NULL, 2, '000176/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(34, '1011801139/002-DN', '1011801139/002/AJRI-DN/II/2021', '1011801000139', 'PT. BPR LAKSANA BINA CIMANGGIS', '', 'PT. BPR LAKSANA BINA CIMANGGIS', 'RTL', 'JANGKAWARSA', '2021-02-04', '2021-02-25', 0, '0-30', 1585809, 0, 1585809, 158581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1427228, 1427228, '2021-02-09', '5460316199', 'BCA', 1427228, 1427228, 0, '', NULL, 6, '000188/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(35, '1031602072/001-DN', '1031602072/001/AJRI-DN/II/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-02-04', '2021-02-24', 1, '0-30', 2095310, 0, 2095310, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2095310, 2095310, '2021-02-25', '5460316199', 'BCA', 2095310, 2095310, 0, '', NULL, 10, '000190/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(36, '1011711135/007-DN', '1011711135/007/AJRI-DN/II/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-04', '2021-02-25', 19, '0-30', 15960, 0, 15960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15960, 15960, '2021-03-16', '5460316199', 'BCA', 15960, 15960, 0, '', NULL, 1, '000192/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(37, '1041406007/017-DN', '1041406007/017/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-04', '2021-03-06', 0, '0-30', 461255, 0, 461255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 461255, 461255, '2021-03-05', '5460316199', 'BCA', 461255, 461255, 0, '', NULL, 16, '000178/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(38, '1011711135/006-DN', '1011711135/006/AJRI-DN/II/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-04', '2021-02-25', 19, '0-30', 13300, 0, 13300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13300, 13300, '2021-03-16', '5460316199', 'BCA', 13300, 13300, 0, '', NULL, 1, '000179/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(39, '1012008205/002-DN', '1012008205/002/AJRI-DN/II/2021', '1012008000205', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI GRIYA MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-04', '2021-03-06', 39, '31-60', 683567, 0, 683567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 683567, 683567, '2021-04-14', '5460316199', 'BCA', 683567, 683567, 0, '', '2021-04-20', 14, '000180/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(40, '1011609094/004-DN', '1011609094/004/AJRI-DN/II/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-02-04', '2021-02-24', 0, '0-30', 187500, 0, 187500, 56250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131250, 131250, '2021-02-15', '5460316199', 'BCA', 131250, 131250, 0, '', NULL, 2, '000191/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(41, '1031905175/004-DN', '1031905175/004/AJRI-DN/II/2021', '1031905000175', 'CAKRABUANA INSURANCE BROKER QQ PINANG ARTHA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-04', '2021-02-25', 0, '0-30', 2061400, 0, 2061400, 721490, 0, 0, 0, 0, -14430, 0, 0, 0, 40000, 0, 1339910, 1394340, '2021-02-22', '5460316199', 'BCA', 1394340, 1394340, 0, '', NULL, 8, '000189/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(42, '1012001193/002-DN', '1012001193/002/AJRI-DN/II/2021', '1012001000193', 'PT. PIALANG ASURANSI INDOTEKNO', '', 'PT. PIALANG ASURANSI INDOTEKNO', 'RTL', 'EKAWARSA', '2021-02-04', '2021-02-25', 0, '0-30', 1189700, 0, 1189700, 356910, 0, 0, 0, 35691, -7138, 0, 0, 0, 0, 0, 832790, 804237, '2021-02-03', '5460316199', 'BCA', 804237, 804237, 0, '', NULL, 4, '000193/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(43, '1032003190/003-DN', '1032003190/003/AJRI-DN/II/2021', '1032003000190', 'KOPERASI PEGAWAI PEMERINTAH KAB. BANDUNG \"RAPEH RAPIH KERTA RAHARDJA\" (RRKR)', '', 'KOPERASI PEGAWAI PEMERINTAH KAB. BANDUNG \"RAPEH RAPIH KERTA RAHARDJA\" (RRKR)', 'RCL', 'JANGKAWARSA', '2021-02-04', '2021-02-25', 0, '0-30', 3187020, 0, 3187020, 318702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2868318, 2868318, '2021-02-08', '5460316199', 'BCA', 2868318, 2868318, 0, '', NULL, 96, '000194/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(44, '1031405016/003-DN', '1031405016/003/AJRI-DN/II/2021', '1031405000016', 'PT. BPR BUMI PENDAWA RAHARJA', '', 'PT. BPR BUMI PENDAWA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-02-04', '2021-02-24', 0, '0-30', 2052406, 0, 2052406, 513102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539305, 1539305, '2021-02-08', '5460316199', 'BCA', 1539305, 1539305, 0, '', NULL, 5, '000195/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(45, '1012101218/002-DN', '1012101218/002/AJRI-DN/II/2021', '1012101000218', 'PT BUMI INSURANCE BROKERS QQ PD BPR ARTHA PERWIRA PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-04', '2021-03-18', 0, '0-30', 353000, 0, 353000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 353000, 353000, '2021-03-16', '5460316199', 'BCA', 353000, 353000, 0, '', NULL, 1, '000196/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(46, '1031603071/003-DN', '1031603071/003/AJRI-DN/II/2021', '1031603000071', 'PT.BPR DUTA ARTHA SEJAHTERA', '', 'PT.BPR DUTA ARTHA SEJAHTERA', 'RCL', 'JANGKAWARSA', '2021-02-05', '2021-02-25', 0, '0-30', 6206639, 0, 6206639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6206639, 6206639, '2021-02-17', '5460316199', 'BCA', 6206639, 6206639, 0, '', NULL, 39, '000197/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(47, '1032005194/003-DN', '1032005194/003/AJRI-DN/II/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-02-05', '2021-02-26', 0, '0-30', 6270000, 0, 6270000, 627000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5643000, 5643000, '2021-02-09', '0182271089618', 'Parung Panjang', 5643000, 5643000, 0, '', NULL, 1, '000198/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(48, '1012101216/004-DN', '1012101216/004/AJRI-DN/II/2021', '1012101000216', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-05', '2021-03-07', 38, '31-60', 4589, 0, 4589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4589, 4589, '2021-04-14', '5460316199', 'BCA', 4589, 4589, 0, '', '2021-04-20', 1, '000199/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(49, '1022101084/002-DN', '1022101084/002/AJRI-DN/II/2020', '1022101000084', 'PT KSK INSURANCE INDONESIA', '', 'PT KSK INSURANCE INDONESIA', 'RTL ND', 'JANGKAWARSA', '2021-02-08', '2021-03-01', 36, '31-60', 5626800, 0, 5626800, 844020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4782780, 4782780, '2021-04-06', '5460316199', 'BCA', 4782780, 4782780, 0, '', NULL, 55, '007887/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(50, '1032003190/004-DN', '1032003190/004/AJRI-DN/II/2021', '1032003000190', 'KOPERASI PEGAWAI PEMERINTAH KAB. BANDUNG \"RAPEH RAPIH KERTA RAHARDJA\" (RRKR)', '', 'KOPERASI PEGAWAI PEMERINTAH KAB. BANDUNG \"RAPEH RAPIH KERTA RAHARDJA\" (RRKR)', 'RCL', 'JANGKAWARSA', '2021-02-08', '2021-03-01', 11, '0-30', 22050, 0, 22050, 2205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19845, 19845, '2021-03-12', '5460316199', 'BCA', 19845, 19845, 0, '', NULL, 2, '000201/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(51, '1031602072/002-DN', '1031602072/002/AJRI-DN/II/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-02-08', '2021-02-26', 0, '0-30', 2818725, 0, 2818725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2818725, 2818725, '2021-02-25', '5460316199', 'BCA', 2818725, 2818725, 0, '', NULL, 5, '000203/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(52, '1041609039/002-DN', '1041609039/002/AJRI-DN/II/2021', '1041609000039', 'PT.ASURANSI ASEI INDONESIA', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-08', '2021-03-01', 17, '0-30', 4125000, 0, 4125000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4125000, 4125000, '2021-03-18', '5460316199', 'BCA', 4125000, 4125000, 0, '', NULL, 1, '000202/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(53, '1031602072/003-DN', '1031602072/003/AJRI-DN/II/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-02-08', '2021-02-26', 0, '0-30', 3050940, 0, 3050940, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3050940, 3050940, '2021-02-19', '5460316199', 'BCA', 3050940, 2859040, 191900, '', NULL, 2, '000204/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(54, '1041402057/004-DN', '1041402057/004/AJRI-DN/II/2021', '1041402000057', 'PT. BANK SINARMAS, TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-02-08', '2021-02-26', 11, '0-30', 3507449, 0, 3507449, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3507449, 3507449, '2021-03-09', '0031038898', 'SNM', 3507449, 3507449, -1, '', NULL, 8, '007888/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(55, '1031908183/002-DN', '1031908183/002/AJRI-DN/II/2021', '1031908000183', 'BUKP SLEMAN', '', 'BUKP SLEMAN', 'RCL', 'JANGKAWARSA', '2021-02-09', '2021-03-02', 0, '0-30', 798940, 0, 798940, 159788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 639152, 639152, '2021-02-25', '5460316199', 'BCA', 639152, 639152, 0, '', NULL, 28, '000205/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(56, '1021406014/015-DN', '1021406014/015/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-09', '2021-03-11', 0, '0-30', 714325, 0, 714325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 714325, 714325, '2021-03-05', '5460316199', 'BCA', 714325, 714325, 0, '', NULL, 5, '000206/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(57, '1012008205/003-DN', '1012008205/003/AJRI-DN/II/2021', '1012008000205', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI GRIYA MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-09', '2021-03-11', 34, '31-60', 92400, 0, 92400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92400, 92400, '2021-04-14', '5460316199', 'BCA', 92400, 92400, 0, '', '2021-04-20', 1, '000207/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(58, '1021406014/014-DN', '1021406014/014/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-09', '2021-03-11', 0, '0-30', 696000, 0, 696000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 696000, 696000, '2021-03-05', '5460316199', 'BCA', 696000, 696000, 0, '', NULL, 1, '000200/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(59, '1041712046/005-DN', '1041712046/005/AJRI-DN/II/2021', '1041712000046', 'PT ASURANSI ASEI INDONESIA QQ PT BANK WOORI SAUDARA INDONESIA 1906, TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-09', '2021-03-02', 16, '0-30', 7044750, 0, 7044750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7044750, 7044750, '2021-03-18', '5460316199', 'BCA', 7044750, 7044750, 0, '', NULL, 8, '000208/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(60, '1011906181/003-DN', '1011906181/003/AJRI-DN/II/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-09', '2021-03-23', 0, '0-30', 1934025, 0, 1934025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1934025, 1934025, '2021-03-16', '5460316199', 'BCA', 1934025, 1934025, 0, '', NULL, 21, '000209/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(61, '1041709045/009-DN', '1041709045/009/AJRI-DN/II/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-09', '2021-03-11', 0, '0-30', 4008814, 0, 4008814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4008814, 4008814, '2021-03-05', '5460316199', 'BCA', 4008814, 4008814, 0, '', NULL, 40, '000210/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(62, '1031701102/003-DN', '1031701102/003/AJRI-DN/II/2021', '1031701000102', 'PT BPR ARTHA BERSAMA', '', 'PT BPR ARTHA BERSAMA', 'RCL', 'JANGKAWARSA', '2021-02-10', '2021-03-03', 0, '0-30', 4396500, 1206000, 5602500, 439650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5162850, 5162850, '2021-02-16', '5460316199', 'BCA', 5162850, 5162850, 0, '', NULL, 1, '000211/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(63, '1031602072/004-DN', '1031602072/004/AJRI-DN/II/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-02-10', '2021-03-02', 0, '0-30', 2625420, 0, 2625420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2625420, 2625420, '2021-02-25', '5460316199', 'BCA', 2625420, 2625420, 0, '', NULL, 6, '000212/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(64, '1031608093/003-DN', '1031608093/003/AJRI-DN/II/2021', '1031608000093', 'PD.BPR BANK JOGJA', '', 'PD.BPR BANK JOGJA', 'RCL', 'JANGKAWARSA', '2021-02-10', '2021-03-02', 0, '0-30', 12681506, 0, 12681506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12681506, 12681506, '2019-11-01', '0012152632', 'JOGJA', 12681506, 12681506, 0, '', NULL, 20, '000213/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(65, '1021406014/016-DN', '1021406014/016/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-10', '2021-03-12', 0, '0-30', 383436, 452850, 836286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 836286, 836286, '2021-03-05', '5460316199', 'BCA', 836286, 836286, 0, '', NULL, 1, '000215/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(66, '1041609039/003-DN', '1041609039/003/AJRI-DN/II/2021', '1041609000039', 'PT.ASURANSI ASEI INDONESIA', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-10', '2021-03-03', 15, '0-30', 19575000, 0, 19575000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19575000, 19575000, '2021-03-18', '5460316199', 'BCA', 19575000, 19575000, 0, '', NULL, 3, '000214/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(67, '1032005194/004-DN', '1032005194/004/AJRI-DN/II/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-02-10', '2021-03-03', 0, '0-30', 5390000, 0, 5390000, 539000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4851000, 4851000, '2021-02-11', '0182271089618', 'Parung Panjang', 4851000, 4851000, 0, '', NULL, 1, '000216/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(68, '1011705126/002-DN', '1011705126/002/AJRI-DN/II/2021', '1011705000126', 'PT. BUMI INSURANCE BROKER QQ PD BPR BKK PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-10', '2021-03-12', 4, '0-30', 26500, 0, 26500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26500, 26500, '2021-03-16', '5460316199', 'BCA', 26500, 26500, 0, '', NULL, 1, '000217/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(69, '1011711135/008-DN', '1011711135/008/AJRI-DN/II/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-10', '2021-03-03', 13, '0-30', 93050, 0, 93050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93050, 93050, '2021-03-16', '5460316199', 'BCA', 93050, 93050, 0, '', NULL, 2, '000218/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(70, '1031609090/002-DN', '1031609090/002/AJRI-DN/II/2021', '1031609000090', 'PT.BPR DIAN FARAQO GEMILANG', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-10', '2021-03-02', 6, '0-30', 5144944, 0, 5144944, 1543483, 0, 0, 0, 0, -30870, 0, 0, 0, 0, 0, 3601461, 3632330, '2021-03-08', '5460316199', 'BCA', 3632330, 3632330, 0, '', NULL, 44, '000219/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(71, '1011705126/003-DN', '1011705126/003/AJRI-DN/II/2021', '1011705000126', 'PT. BUMI INSURANCE BROKER QQ PD BPR BKK PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-11', '2021-03-13', 3, '0-30', 692400, 0, 692400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692400, 692400, '2021-03-16', '5460316199', 'BCA', 692400, 692400, 0, '', NULL, 5, '000221/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(72, '1041712046/006-DN', '1041712046/006/AJRI-DN/II/2021', '1041712000046', 'PT ASURANSI ASEI INDONESIA QQ PT BANK WOORI SAUDARA INDONESIA 1906, TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-11', '2021-03-04', 32, '31-60', 4599450, 0, 4599450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4599450, 4599450, '2021-04-05', '5460316199', 'BCA', 4599450, 4599450, 0, '', '2021-04-26', 5, '000222/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(73, '1031602072/005-DN', '1031602072/005/AJRI-DN/II/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-02-11', '2021-03-03', 0, '0-30', 5380140, 0, 5380140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5380140, 5380140, '2021-03-01', '5460316199', 'BCA', 5380140, 5380140, 0, '', NULL, 5, '000223/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(74, '1011705126/004-DN', '1011705126/004/AJRI-DN/II/2021', '1011705000126', 'PT. BUMI INSURANCE BROKER QQ PD BPR BKK PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-11', '2021-03-13', 3, '0-30', 154500, 0, 154500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 154500, 154500, '2021-03-16', '5460316199', 'BCA', 154500, 154500, 0, '', NULL, 5, '000225/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(75, '1041709045/010-DN', '1041709045/010/AJRI-DN/II/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-11', '2021-03-13', 0, '0-30', 6881950, 0, 6881950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6881950, 6881950, '2021-03-05', '5460316199', 'BCA', 6881950, 6881950, 0, '', NULL, 35, '000226/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(76, '1021406014/017-DN', '1021406014/017/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-11', '2021-03-13', 0, '0-30', 11600, 0, 11600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11600, 11600, '2021-03-05', '5460316199', 'BCA', 11600, 11600, 0, '', NULL, 1, '000227/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(77, '1041406007/018-DN', '1041406007/018/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-11', '2021-03-13', 0, '0-30', 2477611, 0, 2477611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2477611, 2477611, '2021-03-05', '5460316199', 'BCA', 2477611, 2477611, 0, '', NULL, 15, '000229/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(78, '1041402057/005-DN', '1041402057/005/AJRI-DN/II/2021', '1041402000057', 'PT. BANK SINARMAS, TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-02-16', '2021-03-08', 15, '0-30', 7559753, 0, 7559753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7559753, 7559753, '2021-03-23', '0031038898', 'SNM', 7559753, 7559753, 0, '', NULL, 6, '007889/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(79, '1011711135/009-DN', '1011711135/009/AJRI-DN/II/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-16', '2021-03-09', 7, '0-30', 571900, 0, 571900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 571900, 571900, '2021-03-16', '5460316199', 'BCA', 571900, 571900, 0, '', NULL, 6, '000230/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(80, '1011906181/004-DN', '1011906181/004/AJRI-DN/II/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-16', '2021-03-30', 0, '0-30', 1859670, 0, 1859670, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1859670, 1859670, '2021-03-16', '5460316199', 'BCA', 1859670, 1859670, 0, '', NULL, 19, '000231/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(81, '1031602067/002-DN', '1031602067/002/AJRI-DN/II/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-02-16', '2021-03-08', 39, '31-60', 13105300, 0, 13105300, 2948693, 0, 0, 0, 294869, -58974, 0, 0, 0, 10000, 0, 10156608, 9930712, '2021-04-16', '5460316199', 'BCA', 9930712, 9930712, 0, '', NULL, 2, '000232/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(82, '1031801133/001-DN', '1031801133/001/AJRI-DN/II/2021', '1031801000133', 'PT BPR METROPOLITAN PUTRA', '', 'PT BPR METROPOLITAN PUTRA', 'RCL', 'JANGKAWARSA', '2021-02-16', '2021-03-09', 0, '0-30', 636000, 0, 636000, 63600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 572400, 572400, '2021-02-18', '5460316199', 'BCA', 572400, 572400, 0, '', NULL, 1, '000234/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(83, '1031510062/004-DN', '1031510062/004/AJRI-DN/II/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-02-16', '2021-03-08', 0, '0-30', 214500, 0, 214500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 214500, 214500, '2021-02-18', '5460316199', 'BCA', 214500, 214500, 0, '', NULL, 4, '000235/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(84, '1031609089/003-DN', '1031609089/003/AJRI-DN/II/2021', '1031609000089', 'BPR MURIA HARTA NUSANTARA', '', 'BPR MURIA HARTA NUSANTARA', 'RCL', 'JANGKAWARSA', '2021-02-16', '2021-03-09', 0, '0-30', 5693750, 0, 5693750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5693750, 5693750, '2021-02-19', '5460316199', 'BCA', 5693750, 5693750, 0, '', NULL, 9, '000236/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(85, '1031602072/006-DN', '1031602072/006/AJRI-DN/II/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-02-16', '2021-03-08', 0, '0-30', 171750, 0, 171750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 171750, 171750, '2021-02-25', '5460316199', 'BCA', 171750, 171750, 0, '', NULL, 2, '000237/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(86, '1041609039/005-DN', '1041609039/005/AJRI-DN/II/2021', '1041609000039', 'PT.ASURANSI ASEI INDONESIA', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-17', '2021-03-10', 26, '0-30', 14400000, 0, 14400000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14400000, 14400000, '2021-04-05', '5460316199', 'BCA', 14400000, 14400000, 0, '', '2021-04-26', 3, '000240/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(87, '1032007195/001-DN', '1032007195/001/AJRI-DN/II/2021', '1032007000195', 'PT. BUMI INSURANCE BROKERS QQ PT LKM DEMAK SEJAHTERA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-17', '2021-03-19', 67, '61-90', 1189890, 0, 1189890, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1189890, 1189890, '2021-05-25', '5460316199', 'BCA', 1189890, 1189890, 0, '', NULL, 21, '000246/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(88, '1011911192/002-DN', '1011911192/002/AJRI-DN/II/2021', '1011911000192', 'PT BUMI INSURANCE BROKERS QQ PD BPR BKK CILACAP', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-17', '2021-03-19', 0, '0-30', 173800, 0, 173800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173800, 173800, '2021-03-16', '5460316199', 'BCA', 173800, 173800, 0, '', NULL, 3, '000243/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(89, '1031911189/002-DN', '1031911189/002/AJRI-DN/II/2021', '1031911000189', 'PT BUMI INSURANCE BROKERS QQ PD BPR BKK CILACAP', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-17', '2021-03-19', 67, '61-90', 1557140, 0, 1557140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1557140, 1557140, '2021-05-25', '5460316199', 'BCA', 1557140, 1557140, 0, '', NULL, 23, '000242/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:13', '2021-07-13 09:29:13', NULL),
(90, '1032102218/001-DN', '1032102218/001/AJRI-DN/II/2021', '1032102000218', 'PT BUMI INSURANCE BROKERS QQ KOPERASI KARYAWAN NALAR PASUPATI KEMAKMURAN INSANI', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-17', '2021-03-19', 26, '0-30', 133200, 0, 133200, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 133200, 243200, '2021-04-14', '5460316199', 'BCA', 243200, 243200, 0, '', '2021-04-20', 1, '000244/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(91, '1011907182/006-DN', '1011907182/006/AJRI-DN/II/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-02-17', '2021-02-24', 0, '0-30', 16150000, 0, 16150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16150000, 16150000, '2021-02-22', '5460316199', 'BCA', 16150000, 16150000, 0, '', NULL, 323, '000248/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(92, '1011906181/005-DN', '1011906181/005/AJRI-DN/II/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-17', '2021-03-31', 0, '0-30', 32500, 0, 32500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32500, 32500, '2021-03-16', '5460316199', 'BCA', 32500, 32500, 0, '', NULL, 1, '000251/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(93, '1012101218/003-DN', '1012101218/003/AJRI-DN/II/2021', '1012101000218', 'PT BUMI INSURANCE BROKERS QQ PD BPR ARTHA PERWIRA PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-17', '2021-03-31', 55, '31-60', 1658175, 0, 1658175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1658175, 1658175, '2021-05-25', '5460316199', 'BCA', 1658175, 1658175, 0, '', NULL, 5, '000250/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(94, '1041609039/006-DN', '1041609039/006/AJRI-DN/II/2021', '1041609000039', 'PT.ASURANSI ASEI INDONESIA', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-17', '2021-03-10', 27, '0-30', 13500000, 0, 13500000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13500000, 13500000, '2021-04-06', '5460316199', 'BCA', 13500000, 13500000, 0, '', '2021-04-26', 2, '000252/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(95, '1012102227/001-DN', '1012102227/001/AJRI-DN/II/2021', '1012102000227', 'PT TOSO INDUSTRY INDONESIA', '', 'PT TOSO INDUSTRY INDONESIA', 'RTL', 'EKAWARSA', '2021-02-17', '2021-03-10', 15, '0-30', 102711000, 0, 102711000, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 102711000, 102821000, '2021-03-25', '5460316199', 'BCA', 102821000, 102821000, 0, '', NULL, 219, '000255/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(96, '1032005194/005-DN', '1032005194/005/AJRI-DN/II/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-02-17', '2021-03-10', 5, '0-30', 7863750, 0, 7863750, 786375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7077375, 7077375, '2021-03-15', '0182271089618', 'Parung Panjang', 7077375, 7077375, 0, '', '2021-04-20', 2, '000257/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(97, '1011711135/010-DN', '1011711135/010/AJRI-DN/II/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-17', '2021-03-10', 50, '31-60', 7337385, 0, 7337385, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7337385, 7337385, '2021-04-29', '5460316199', 'BCA', 7337385, 7337385, 0, '', '2021-05-06', 169, '000245/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(98, '1011906181/006-DN', '1011906181/006/AJRI-DN/II/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-17', '2021-03-31', 0, '0-30', 2599295, 0, 2599295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2599295, 2599295, '2021-03-16', '5460316199', 'BCA', 2599295, 2599295, 0, '', NULL, 6, '000258/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(99, '1011809167/003-DN', '1011809167/003/AJRI-DN/II/2021', '1011809000167', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK PURWOKERTO', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-17', '2021-03-19', 0, '0-30', 799075, 0, 799075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 799075, 799075, '2021-03-16', '5460316199', 'BCA', 799075, 799075, 0, '', NULL, 17, '000259/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(100, '1011705126/006-DN', '1011705126/006/AJRI-DN/II/2021', '1011705000126', 'PT. BUMI INSURANCE BROKER QQ PD BPR BKK PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-17', '2021-03-19', 0, '0-30', 638530, 0, 638530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 638530, 638530, '2021-03-16', '5460316199', 'BCA', 638530, 638530, 0, '', NULL, 9, '000261/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(101, '1031908183/003-DN', '1031908183/003/AJRI-DN/II/2021', '1031908000183', 'BUKP SLEMAN', '', 'BUKP SLEMAN', 'RCL', 'JANGKAWARSA', '2021-02-17', '2021-03-10', 0, '0-30', 133710, 0, 133710, 26742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106968, 106968, '2021-02-25', '5460316199', 'BCA', 106968, 106968, 0, '', NULL, 2, '000262/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(102, '1011907182/007-DN', '1011907182/007/AJRI-DN/II/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-02-17', '2021-02-24', 0, '0-30', 10000000, 0, 10000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000000, 10000000, '2021-02-22', '5460316199', 'BCA', 10000000, 10000000, 0, '', NULL, 200, '000263/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(103, '1021406014/019-DN', '1021406014/019/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-17', '2021-03-19', 3, '0-30', 5800, 0, 5800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5800, 5800, '2021-03-22', '5460316199', 'BCA', 5800, 5800, 0, '', NULL, 1, '000265/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(104, '1032102216/001-DN', '1032102216/001/AJRI-DN/II/2021', '1032102000216', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-17', '2021-03-10', 0, '0-30', 6168360, 0, 6168360, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 6168360, 6278360, '2021-03-05', '5460316199', 'BCA', 6278360, 6278360, 0, '', NULL, 19, '000264/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(105, '1032102216/002-DN', '1032102216/002/AJRI-DN/II/2021', '1032102000216', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-17', '2021-03-10', 22, '0-30', 5612830, 0, 5612830, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5612830, 5612830, '2021-04-01', '5460316199', 'BCA', 5612830, 5612830, 0, '', '2021-05-03', 12, '000266/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(106, '1032102216/003-DN', '1032102216/003/AJRI-DN/II/2021', '1032102000216', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-17', '2021-03-10', 0, '0-30', 6180930, 0, 6180930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6180930, 6180930, '2021-03-05', '5460316199', 'BCA', 6180930, 6180930, 0, '', NULL, 13, '000267/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(107, '1032102216/004-DN', '1032102216/004/AJRI-DN/II/2021', '1032102000216', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-17', '2021-03-10', 0, '0-30', 4409840, 0, 4409840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4409840, 4409840, '2021-03-05', '5460316199', 'BCA', 4409840, 4409840, 0, '', NULL, 16, '000268/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(108, '1031709125/003-DN', '1031709125/003/AJRI-DN/II/2021', '1031709000125', 'PT BPR NBP 32 KARAWANG', '', 'PT BPR NBP 32 KARAWANG', 'RCL', 'JANGKAWARSA', '2021-02-17', '2021-03-10', 0, '0-30', 10487404, 0, 10487404, 2097481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8389923, 8389923, '2021-02-24', '5460316199', 'BCA', 8389923, 8389923, 0, '', NULL, 38, '000269/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(109, '1041406007/020-DN', '1041406007/020/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-17', '2021-03-19', 3, '0-30', 240997, 0, 240997, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 240997, 240997, '2021-03-22', '5460316199', 'BCA', 240997, 240997, 0, '', NULL, 2, '000260/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(110, '1032102213/001-DN', '1032102213/001/AJRI-DN/II/2021', '1032102000213', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-18', '2021-03-11', 0, '0-30', 4776980, 0, 4776980, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 4776980, 4886980, '2021-03-05', '5460316199', 'BCA', 4886980, 4886980, 0, '', NULL, 13, '000271/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(111, '1032102213/002-DN', '1032102213/002/AJRI-DN/II/2021', '1032102000213', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-18', '2021-03-11', 0, '0-30', 3527060, 0, 3527060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3527060, 3527060, '2021-03-05', '5460316199', 'BCA', 3527060, 3527060, 0, '', NULL, 5, '000273/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL);
INSERT INTO `migration_data` (`id`, `no_register`, `nomor_invoice`, `nomor_polis`, `nama_pemegang_polis`, `sub_polis`, `sub_pemegang_polis`, `jenis_produk`, `line_of_business`, `tanggal_terbit`, `jatuh_tempo`, `aging`, `klasifikasi_aging`, `premi_bruto`, `extra_premi`, `premi_gross`, `discount`, `komisi`, `fee_base`, `lain_lain`, `pajak_ppn`, `pajak_pph`, `pajak_lain`, `biaya_administrasi`, `biaya_polis`, `biaya_sertifikat`, `biaya_materai`, `premi_netto`, `jumlah_bayar`, `tanggal_pendapatan`, `no_rekening`, `bank`, `amount`, `pembayaran`, `piutang`, `status`, `pengajuan_komisi`, `jumlah_peserta`, `no_memo`, `period`, `created_at`, `updated_at`, `manajemen_fee`) VALUES
(112, '1032102213/003-DN', '1032102213/003/AJRI-DN/II/2021', '1032102000213', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-18', '2020-04-23', 316, '>90', 1123780, 0, 1123780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1123780, 1123780, '2021-03-05', '5460316199', 'BCA', 1123780, 1123780, 0, '', NULL, 6, '000274/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(113, '1032102213/004-DN', '1032102213/004/AJRI-DN/II/2021', '1032102000213', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-18', '2021-03-11', 0, '0-30', 1620560, 0, 1620560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1620560, 1620560, '2021-03-05', '5460316199', 'BCA', 1620560, 1620560, 0, '', NULL, 8, '000275/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(114, '1012102226/001-DN', '1012102226/001/AJRI-DN/II/2021', '1012102000226', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-18', '2021-03-11', 0, '0-30', 282360, 0, 282360, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 282360, 392360, '2021-03-05', '5460316199', 'BCA', 392360, 392360, 0, '', NULL, 5, '000276/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(115, '1012102226/002-DN', '1012102226/002/AJRI-DN/II/2021', '1012102000226', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-18', '2021-03-11', 0, '0-30', 178620, 0, 178620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 178620, 178620, '2021-03-05', '5460316199', 'BCA', 178620, 178620, 0, '', NULL, 13, '000277/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(116, '1012102226/003-DN', '1012102226/003/AJRI-DN/II/2021', '1012102000226', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-18', '2021-03-11', 0, '0-30', 56160, 0, 56160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56160, 56160, '2021-03-05', '5460316199', 'BCA', 56160, 56160, 0, '', NULL, 7, '000278/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(117, '1012102226/004-DN', '1012102226/004/AJRI-DN/II/2021', '1012102000226', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-18', '2021-03-11', 0, '0-30', 210600, 0, 210600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210600, 210600, '2021-03-05', '5460316199', 'BCA', 210600, 210600, 0, '', NULL, 3, '000279/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(118, '1041406007/021-DN', '1041406007/021/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-18', '2021-03-20', 2, '0-30', 273150, 0, 273150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 273150, 273150, '2021-03-22', '5460316199', 'BCA', 273150, 273150, 0, '', NULL, 3, '000280/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(119, '1031802142/004-DN', '1031802142/004/AJRI-DN/II/2021', '1031802000142', 'PT BPR HARTA TANAMAS', '', 'PT. BPR HARTA TANAMAS', 'RCL', 'JANGKAWARSA', '2021-02-18', '2021-03-11', 0, '0-30', 682500, 0, 682500, 68250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 614250, 614250, '2021-03-04', '5460316199', 'BCA', 614250, 614250, 0, '', NULL, 1, '000281/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(120, '1031703106/001-DN', '1031703106/001/AJRI-DN/II/2021', '1031703000106', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK BATANG', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-18', '2021-03-20', 0, '0-30', 811360, 0, 811360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 811360, 811360, '2021-03-16', '5460316199', 'BCA', 811360, 811360, 0, '', NULL, 2, '000282/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(121, '1041707044/002-DN', '1041707044/002/AJRI-DN/II/2021', '1041707000044', 'PT. ASURANSI HARTA AMAN PRATAMA. Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-18', '2021-03-20', 2, '0-30', 2454902, 0, 2454902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2454902, 2454902, '2021-03-22', '5460316199', 'BCA', 2454902, 2454902, 0, '', NULL, 31, '000283/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(122, '1031602068/005-DN', '1031602068/005/AJRI-DN/II/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-02-18', '2021-03-10', 0, '0-30', 31000, 0, 31000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31000, 31000, '2021-03-02', '5460316199', 'BCA', 31000, 31000, 0, '', NULL, 1, '000284/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(123, '1041406007/022-DN', '1041406007/022/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-18', '2021-03-20', 2, '0-30', 51870463, 0, 51870463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51870463, 51870463, '2021-03-22', '5460316199', 'BCA', 51870463, 51870463, 0, '', NULL, 82, '000285/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(124, '1031609089/004-DN', '1031609089/004/AJRI-DN/II/2021', '1031609000089', 'BPR MURIA HARTA NUSANTARA', '', 'BPR MURIA HARTA NUSANTARA', 'RCL', 'JANGKAWARSA', '2021-02-18', '2021-03-11', 0, '0-30', 156832, 0, 156832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156832, 156832, '2021-02-25', '5460316199', 'BCA', 156832, 156832, 0, '', NULL, 1, '000289/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(125, '1031802142/005-DN', '1031802142/005/AJRI-DN/II/2021', '1031802000142', 'PT BPR HARTA TANAMAS', '', 'PT. BPR HARTA TANAMAS', 'RCL', 'JANGKAWARSA', '2021-02-18', '2021-03-11', 0, '0-30', 250250, 0, 250250, 25025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225225, 225225, '2021-03-04', '5460316199', 'BCA', 225225, 225225, 0, '', NULL, 1, '000290/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(126, '1031602068/006-DN', '1031602068/006/AJRI-DN/II/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-02-18', '2021-03-10', 0, '0-30', 1204825, 0, 1204825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1204825, 1204825, '2021-03-02', '5460316199', 'BCA', 1204825, 1204825, 0, '', NULL, 14, '000286/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(127, '1012009206/002-DN', '1012009206/002/AJRI-DN/II/2021', '1012009000206', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-18', '2021-03-20', 25, '0-30', 56127, 0, 56127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56127, 56127, '2021-04-14', '5460316199', 'BCA', 56127, 56127, 0, '', '2021-04-20', 1, '000292/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(128, '1012102221/001-DN', '1012102221/001/AJRI-DN/II/2021', '1012102000221', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-19', '2021-03-12', 0, '0-30', 1450035, 0, 1450035, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 1450035, 1560035, '2021-03-05', '5460316199', 'BCA', 1560035, 1560035, 0, '', NULL, 27, '000288/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(129, '1012102221/002-DN', '1012102221/002/AJRI-DN/II/2021', '1012102000221', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-19', '2021-03-12', 0, '0-30', 2508775, 0, 2508775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2508775, 2508775, '2021-03-05', '5460316199', 'BCA', 2508775, 2508775, 0, '', NULL, 33, '000291/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(130, '1012102221/003-DN', '1012102221/003/AJRI-DN/II/2021', '1012102000221', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-19', '2021-03-12', 0, '0-30', 1605555, 0, 1605555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1605555, 1605555, '2021-03-05', '5460316199', 'BCA', 1605555, 1605555, 0, '', NULL, 30, '000294/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(131, '1012102221/004-DN', '1012102221/004/AJRI-DN/II/2021', '1012102000221', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-19', '2021-03-12', 0, '0-30', 1042040, 0, 1042040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1042040, 1042040, '2021-03-05', '5460316199', 'BCA', 1042040, 1042040, 0, '', NULL, 35, '000296/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(132, '1032011205/004-DN', '1032011205/004/AJRI-DN/II/2021', '1032011000205', 'PT. AA PIALANG ASURANSI QQ PT BANK TABUNGAN NEGARA (PERSERO)', '', 'PT AA PIALANG ASURANSI', 'RCL', 'JANGKAWARSA', '2021-02-19', '2021-05-20', 0, '0-30', 84374344, 0, 84374344, 25312303, 0, 0, 0, 2531230, -506246, 0, 0, 0, 0, 0, 59062041, 57037057, '2021-04-13', '5460316199', 'BCA', 57037057, 57037057, 0, '', NULL, 99, '007891/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(133, '1041402057/006-DN', '1041402057/006/AJRI-DN/II/2021', '1041402000057', 'PT. BANK SINARMAS, TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-02-22', '2021-03-12', 11, '0-30', 2019108, 0, 2019108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2019108, 2019108, '2021-03-23', '0031038898', 'SNM', 2019108, 2019108, 0, '', NULL, 3, '007890/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(134, '1021906064/001-DN', '1021906064/001/AJRI-DN/II/2021', '1021906000064', 'PT ASURANSI HARTA AMAN PRATAMA QQ PT BPR SAYMA KARYA', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-19', '2021-03-21', 1, '0-30', 1139570, 0, 1139570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1139570, 1139570, '2021-03-22', '5460316199', 'BCA', 1139570, 1139570, 0, '', NULL, 7, '000297/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(135, '1021406014/020-DN', '1021406014/020/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-19', '2021-03-21', 1, '0-30', 12294823, 745900, 13040723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13040723, 13040723, '2021-03-22', '5460316199', 'BCA', 13040723, 13040723, 0, '', NULL, 183, '000299/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(136, '1041406007/025-DN', '1041406007/025/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-19', '2021-03-21', 1, '0-30', 157135015, 0, 157135015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 157135015, 157135015, '2021-03-22', '5460316199', 'BCA', 157135015, 157135015, 0, '', NULL, 1380, '000298/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(137, '1021705047/002-DN', '1021705047/002/AJRI-DN/II/2021', '1021705000047', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-22', '2021-03-24', 0, '0-30', 26920300, 0, 26920300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26920300, 26920300, '2021-03-22', '5460316199', 'BCA', 26920300, 26920300, 0, '', NULL, 92, '000300/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(138, '1041406007/026-DN', '1041406007/026/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-22', '2021-03-24', 0, '0-30', 8780000, 2700000, 11480000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11480000, 11480000, '2021-03-22', '5460316199', 'BCA', 11480000, 11480000, 0, '', NULL, 1, '000301/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(139, '1021406014/021-DN', '1021406014/021/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-22', '2021-03-24', 0, '0-30', 876960, 0, 876960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 876960, 876960, '2021-03-22', '5460316199', 'BCA', 876960, 876960, 0, '', NULL, 1, '000302/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(140, '1041406007/023-DN', '1041406007/023/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-22', '2021-03-24', 0, '0-30', 198340, 0, 198340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198340, 198340, '2021-03-22', '5460316199', 'BCA', 198340, 198340, 0, '', NULL, 1, '000293/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(141, '1032009201/001-DN', '1032009201/001/AJRI-DN/II/2021', '1032009000201', 'PT BUMI INSURANCE BROKERS QQ PT BPR GUNADHANA MITRASEMBADA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-22', '2021-03-24', 21, '0-30', 708750, 0, 708750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 708750, 708750, '2021-04-14', '5460316199', 'BCA', 708750, 708750, 0, '', '2021-04-20', 1, '000303/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(142, '1011507056/002-DN', '1011507056/002/AJRI-DN/II/2021', '1011507000056', 'LPD DP SINGAKERTA', '', 'LPD DP SINGAKERTA', 'RTL', 'EKAWARSA', '2021-02-22', '2021-03-12', 0, '0-30', 1618515, 0, 1618515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1618515, 1618515, '2021-03-05', '5460316199', 'BCA', 1618515, 1618515, 0, '', NULL, 63, '000307/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(143, '1012010212/003-DN', '1012010212/003/AJRI-DN/II/2021', '1012010000212', 'PT. BUMI INSURANCE BROKERS QQ PT LKM DEMAK SEJAHTERA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-22', '2021-03-24', 62, '61-90', 2208000, 0, 2208000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2208000, 2208000, '2021-05-25', '5460316199', 'BCA', 2208000, 2208000, 0, '', NULL, 1, '000308/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(144, '1041709045/011-DN', '1041709045/011/AJRI-DN/II/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-22', '2021-03-24', 0, '0-30', 74002665, 0, 74002665, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74002665, 74002665, '2021-03-22', '5460316199', 'BCA', 74002665, 74002665, 0, '', NULL, 634, '000309/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(145, '1021406014/022-DN', '1021406014/022/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-22', '2021-03-24', 0, '0-30', 350300098, 0, 350300098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350300098, 350300098, '2021-03-22', '5460316199', 'BCA', 350300098, 350300098, 0, '', NULL, 679, '000313/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(146, '1012008204/002-DN', '1012008204/002/AJRI-DN/II/2021', '1012008000204', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI LINGGA ARTHA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-22', '2021-03-24', 21, '0-30', 56480, 0, 56480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56480, 56480, '2021-04-14', '5460316199', 'BCA', 56480, 56480, 0, '', '2021-04-20', 5, '000314/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(147, '1032102216/005-DN', '1032102216/005/AJRI-DN/II/2021', '1032102000216', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 1575000, 0, 1575000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1575000, 1575000, '2021-03-05', '5460316199', 'BCA', 1575000, 1575000, 0, '', NULL, 1, '000315/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(148, '1011612100/003-DN', '1011612100/003/AJRI-DN/II/2021', '1011612000100', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 576400, 0, 576400, 172920, 0, 0, 0, 0, -3458, 0, 0, 0, 0, 0, 403480, 406938, '2021-03-08', '5460316199', 'BCA', 406938, 406938, 0, '', NULL, 1, '000318/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(149, '1021406014/023-DN', '1021406014/023/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-23', '2021-03-25', 0, '0-30', 23200, 0, 23200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23200, 23200, '2021-03-22', '5460316199', 'BCA', 23200, 23200, 0, '', NULL, 1, '000319/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(150, '1032102216/006-DN', '1032102216/006/AJRI-DN/II/2021', '1032102000216', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 3627000, 0, 3627000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3627000, 3627000, '2021-03-05', '5460316199', 'BCA', 3627000, 3627000, 0, '', NULL, 1, '000322/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(151, '1011609094/005-DN', '1011609094/005/AJRI-DN/II/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-02-23', '2021-03-15', 0, '0-30', 75000, 0, 75000, 22500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52500, 52500, '2021-03-10', '5460316199', 'BCA', 52500, 52500, 0, '', NULL, 1, '000324/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(152, '1011609094/006-DN', '1011609094/006/AJRI-DN/II/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-02-23', '2021-03-15', 0, '0-30', 150000, 0, 150000, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105000, 105000, '2021-03-12', '5460316199', 'BCA', 105000, 105000, 0, '', NULL, 2, '000326/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(153, '1011906181/007-DN', '1011906181/007/AJRI-DN/II/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-23', '2021-04-06', 0, '0-30', 775900, 0, 775900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 775900, 775900, '2021-03-16', '5460316199', 'BCA', 775900, 775900, 0, '', NULL, 26, '000323/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(154, '1011906181/008-DN', '1011906181/008/AJRI-DN/II/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-23', '2021-04-06', 0, '0-30', 1627725, 0, 1627725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1627725, 1627725, '2021-03-16', '5460316199', 'BCA', 1627725, 1627725, 0, '', NULL, 29, '000325/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(155, '1011906181/009-DN', '1011906181/009/AJRI-DN/II/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-23', '2021-04-06', 0, '0-30', 1761055, 0, 1761055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1761055, 1761055, '2021-03-16', '5460316199', 'BCA', 1761055, 1761055, 0, '', NULL, 63, '000327/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(156, '1041709045/012-DN', '1041709045/012/AJRI-DN/II/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-23', '2021-03-25', 0, '0-30', 79920, 0, 79920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79920, 79920, '2021-03-22', '5460316199', 'BCA', 79920, 79920, 0, '', NULL, 1, '000321/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(157, '1012102222/001-DN', '1012102222/001/AJRI-DN/II/2021', '1012102000222', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 3811185, 0, 3811185, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 3811185, 3921185, '2021-03-05', '5460316199', 'BCA', 3921185, 3921185, 0, '', NULL, 22, '000329/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(158, '1012102223/001-DN', '1012102223/001/AJRI-DN/II/2021', '1012102000223', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK BANJARNEGARA', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 1660990, 0, 1660990, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 1660990, 1770990, '2021-03-05', '5460316199', 'BCA', 1770990, 1770990, 0, '', NULL, 24, '000328/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(159, '1032102212/001-DN', '1032102212/001/AJRI-DN/II/2021', '1032102000212', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 6402220, 0, 6402220, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 6402220, 6512220, '2021-03-05', '5460316199', 'BCA', 6512220, 6512220, 0, '', NULL, 49, '000270/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(160, '1032102212/002-DN', '1032102212/002/AJRI-DN/II/2021', '1032102000212', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 14836300, 0, 14836300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14836300, 14836300, '2021-03-05', '5460316199', 'BCA', 14836300, 14836300, 0, '', NULL, 95, '000333/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(161, '1012102222/002-DN', '1012102222/002/AJRI-DN/II/2021', '1012102000222', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 8201125, 0, 8201125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8201125, 8201125, '2021-03-05', '5460316199', 'BCA', 8201125, 8201125, 0, '', NULL, 42, '000336/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(162, '1012102223/002-DN', '1012102223/002/AJRI-DN/II/2021', '1012102000223', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK BANJARNEGARA', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 1592460, 0, 1592460, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1592460, 1592460, '2021-03-05', '5460316199', 'BCA', 1592460, 1592460, 0, '', NULL, 17, '000331/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(163, '1012102223/003-DN', '1012102223/003/AJRI-DN/II/2021', '1012102000223', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK BANJARNEGARA', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 2384570, 0, 2384570, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2384570, 2384570, '2021-03-05', '5460316199', 'BCA', 2384570, 2384570, 0, '', NULL, 21, '000332/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(164, '1012102222/003-DN', '1012102222/003/AJRI-DN/II/2021', '1012102000222', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 3405440, 0, 3405440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3405440, 3405440, '2021-03-05', '5460316199', 'BCA', 3405440, 3405440, 0, '', NULL, 28, '000337/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(165, '1032102212/003-DN', '1032102212/003/AJRI-DN/II/2021', '1032102000212', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-23', '2020-05-06', 303, '>90', 7170140, 0, 7170140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7170140, 7170140, '2021-03-05', '5460316199', 'BCA', 7170140, 7170140, 0, '', NULL, 26, '000334/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(166, '1032102215/001-DN', '1032102215/001/AJRI-DN/II/2021', '1032102000215', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BPR BKK TAMAN', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 100000, 0, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 100000, 210000, '2021-03-05', '5460316199', 'BCA', 210000, 210000, 0, '', NULL, 1, '000330/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(167, '1032102212/004-DN', '1032102212/004/AJRI-DN/II/2021', '1032102000212', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 9224120, 0, 9224120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9224120, 9224120, '2021-03-05', '5460316199', 'BCA', 9224120, 9224120, 0, '', NULL, 66, '000335/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(168, '1031703110/002-DN', '1031703110/002/AJRI-DN/II/2021', '1031703000110', 'PT JAMKRIDA BABEL', '', 'PT JAMKRIDA BABEL', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 8613690, 0, 8613690, 861369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7752321, 7752321, '2021-03-12', '5460316199', 'BCA', 7752321, 7752321, 0, '', NULL, 12, '000338/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(169, '1031803149/002-DN', '1031803149/002/AJRI-DN/II/2021', '1031803000149', 'BUKP NGAMPILAN', '', 'BUKP NGAMPILAN', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 338958, 0, 338958, 67792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 271166, 271166, '2021-03-01', '5460316199', 'BCA', 271166, 271166, 0, '', NULL, 25, '000341/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(170, '1031701102/004-DN', '1031701102/004/AJRI-DN/II/2021', '1031701000102', 'PT BPR ARTHA BERSAMA', '', 'PT BPR ARTHA BERSAMA', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-16', 0, '0-30', 1571800, 0, 1571800, 157180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1414620, 1414620, '2021-03-09', '5460316199', 'BCA', 1414620, 1414620, 0, '', NULL, 8, '000340/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(171, '1031602068/007-DN', '1031602068/007/AJRI-DN/II/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-15', 0, '0-30', 109000, 0, 109000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109000, 109000, '2021-03-02', '5460316199', 'BCA', 109000, 109000, 0, '', NULL, 1, '000342/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(172, '1031602068/008-DN', '1031602068/008/AJRI-DN/II/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-02-23', '2021-03-15', 0, '0-30', 31000, 0, 31000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31000, 31000, '2021-03-02', '5460316199', 'BCA', 31000, 31000, 0, '', NULL, 2, '000343/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(173, '1042012054/001-DN', '1042012054/001/AJRI-DN/II/2021', '1042012000054', 'PT ASURANSI ASEI INDONESIA QQ DEBITUR PT. BANK WOORI SAUDARA INDONESIA 1906. Tbk', '', 'PT ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-24', '2021-03-17', 1, '0-30', 2147483647, 0, 2147483647, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 2147483647, 2147483647, '2021-03-18', '5460316199', 'BCA', 2147483647, 2147483647, 0, '', NULL, 6354, '007893/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(174, '1041406007/027-DN', '1041406007/027/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-26', '2021-03-28', 0, '0-30', 56330, 0, 56330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56330, 56330, '2021-03-22', '5460316199', 'BCA', 56330, 56330, 0, '', NULL, 1, '000345/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(175, '1012102228/001-DN', '1012102228/001/AJRI-DN/II/2021', '1012102000228', 'PT BUMI INSURANCE BROKERS QQ PT BPR ARTHA BUDAYA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-02-26', '2021-04-09', 5, '0-30', 88250, 0, 88250, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 88250, 198250, '2021-04-14', '5460316199', 'BCA', 198250, 198250, 0, '', '2021-04-20', 1, '000346/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(176, '1011609094/007-DN', '1011609094/007/AJRI-DN/II/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-02-26', '2021-03-18', 42, '31-60', 787500, 0, 787500, 236250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 551250, 551250, '2021-04-29', '5460316199', 'BCA', 551250, 551250, 0, '', NULL, 19, '000347/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(177, '1041307003/005-DN', '1041307003/005/AJRI-DN/II/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-26', '2021-03-28', 0, '0-30', 33708189, 0, 33708189, 3370819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30337370, 30337370, '2021-03-18', '5460316199', 'BCA', 30337370, 30337370, 0, '', NULL, 69, '000348/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(178, '1021307003/002-DN', '1021307003/002/AJRI-DN/II/2021', '1041307000014', 'PT. ASURANSI MEGA PRATAMA (TETAP)', '', 'PT. ASURANSI MEGA PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-26', '2021-03-28', 0, '0-30', 1953350, 0, 1953350, 195335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1758015, 1758015, '2021-03-18', '5460316199', 'BCA', 1758015, 1758015, 0, '', NULL, 6, '000349/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(179, '1041709045/013-DN', '1041709045/013/AJRI-DN/II/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-26', '2021-03-28', 0, '0-30', 39480, 0, 39480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39480, 39480, '2021-03-22', '5460316199', 'BCA', 39480, 39480, 0, '', NULL, 1, '000350/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(180, '1041307003/007-DN', '1041307003/007/AJRI-DN/II/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-26', '2021-03-28', 0, '0-30', 658800, 0, 658800, 65880, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 592920, 592920, '2021-03-18', '5460316199', 'BCA', 592920, 592920, 0, '', NULL, 1, '000352/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(181, '1041307003/006-DN', '1041307003/006/AJRI-DN/II/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-26', '2021-03-28', 0, '0-30', 199048410, 0, 199048410, 19904841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 179143569, 179143569, '2021-03-18', '5460316199', 'BCA', 179143569, 179143569, 0, '', NULL, 1609, '000351/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(182, '1032102216/007-DN', '1032102216/007/AJRI-DN/II/2021', '1032102000216', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-26', '2021-03-19', 0, '0-30', 625000, 0, 625000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 625000, 625000, '2021-03-05', '5460316199', 'BCA', 625000, 625000, 0, '', NULL, 1, '000353/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(183, '1042012058/001-DN', '1042012058/001/AJRI-DN/II/2021', '1022101000084', 'PT KSK INSURANCE INDONESIA', '', 'PT KSK INSURANCE INDONESIA', 'RTL ND', 'JANGKAWARSA', '2021-02-26', '2021-03-19', 18, '0-30', 528659, 0, 528659, 79299, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 449360, 559360, '2021-04-06', '5460316199', 'BCA', 559360, 559360, 0, '', NULL, 41, '000355/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(184, '1011801140/001-DN', '1011801140/001/AJRI-DN/II/2021', '1011801000140', 'PT BPR ARTHAKELOLA CAHAYATAMA', '', 'PT BPR ARTHAKELOLA CAHAYATAMA', 'RTL', 'JANGKAWARSA', '2021-02-26', '2021-03-19', 0, '0-30', 370800, 0, 370800, 37080, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 333720, 333720, '2021-03-08', '5460316199', 'BCA', 333720, 333720, 0, '', NULL, 1, '000356/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(185, '1031602067/003-DN', '1031602067/003/AJRI-DN/II/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-02-16', '2021-03-08', 14, '0-30', 2551500, 0, 2551500, 574088, 0, 0, 0, 57409, -11482, 0, 0, 0, 5000, 0, 1977413, 1936486, '2021-03-22', '5460316199', 'BCA', 1936486, 1936486, 0, '', NULL, 1, '000233/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(186, '1041406007/028-DN', '1041406007/028/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-26', '2021-03-28', 1, '0-30', 1447600, 0, 1447600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1447600, 1447600, '2021-03-29', '5460316199', 'BCA', 1447600, 1447600, 0, '', NULL, 2, '000357/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(187, '1041605032/088-DN', '1041605032/088/AJRI-CN-C/II/2021', '1041605000032', 'PT.ASURANSI  JASA TANIA (JASTAN)', '', 'PT.ASURANSI  JASA TANIA (JASTAN)', 'RCLND', 'JANGKAWARSA', '2021-02-03', '2021-04-07', 0, '0-30', -2124000, 0, -2124000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2124000, -2124000, '2021-03-31', '5460316199', 'BCA', -2124000, -2124000, 0, '', NULL, 0, '215/UW-M-CNCL/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(188, '1031603071/005-DN', '1031603071/005/AJRI-CN-C/II/2021', '1031603000071', 'PT.BPR DUTA ARTHA SEJAHTERA', '', 'PT.BPR DUTA ARTHA SEJAHTERA', 'RCL', 'JANGKAWARSA', '2021-02-18', '2021-03-10', 0, '0-30', -12400, 0, -12400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12400, -12400, '2021-02-17', '5460316199', 'BCA', -12400, -12400, 0, '', NULL, 0, '218/UW-M-CNCL/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(189, '1041406007/284-DN', '1041406007/284/AJRI-DN-E/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-01', '2021-03-03', 2, '0-30', -152634, 0, -152634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -152634, -152634, '2021-03-05', '5460316199', 'BCA', -152634, -152634, 0, '', NULL, 0, '', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(190, '1041406007/287-DN', '1041406007/287/AJRI-DN-E/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-01', '2021-03-04', 1, '0-30', -542552, 0, -542552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -542552, -542552, '2021-03-05', '5460316199', 'BCA', -542552, -542552, 0, '', NULL, 0, '', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(191, '1041406007/290-DN', '1041406007/290/AJRI-DN-E/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-03', '2021-03-05', 0, '0-30', -42935, 0, -42935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -42935, -42935, '2021-03-05', '5460316199', 'BCA', -42935, -42935, 0, '', NULL, 0, '', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(192, '1031807160/005-DN', '1031807160/005/AJRI-DN-E/II/2021', '1031807000160', 'PT BANK SINARMAS TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-02-04', '2021-02-25', 1, '0-30', 940757, 0, 940757, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 940757, 940757, '2021-02-26', '0031038898', 'SNM', 940757, 940757, 0, '', NULL, 0, '', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(193, '1031806159/019-DN', '1031806159/019/AJRI-DN-E/II/2021', '1031806000159', 'PT BANK SINARMAS TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-02-04', '2021-02-25', 22, '0-30', 1793640, 0, 1793640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1793640, 1793640, '2021-03-19', '0031038898', 'SNM', 1793640, 1793640, 0, '', NULL, 0, '', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(194, '1031405016/009-DN', '1031405016/009/AJRI-DN-E/II/2021', '1031405000016', 'PT. BPR BUMI PENDAWA RAHARJA', '', 'PT. BPR BUMI PENDAWA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-02-08', '2021-02-26', 0, '0-30', -719246, 0, -719246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -719246, -719246, '2021-02-10', '5460316199', 'BCA', -719246, -719246, 0, '', NULL, 0, '', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(195, '1042012055/002-DN', '1042012055/002/AJRI-DN-E/II/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-02-22', '2021-03-16', 14, '0-30', -44617, 0, -44617, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -44617, -44617, '2021-03-30', '5460316199', 'BCA', -44617, -44617, 0, '', NULL, 0, '', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(196, '1032102217/001-DN', '1032102217/001/AJRI-DN/II/2021', '1032102000217', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 2940360, 0, 2940360, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 2940360, 3050360, '2021-03-05', '5460316199', 'BCA', 3050360, 3050360, 0, '', NULL, 18, '000358/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(197, '1012102224/001-DN', '1012102224/001/AJRI-DN/II/2021', '1012102000224', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BPR BKK TAMAN', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 148200, 0, 148200, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 148200, 258200, '2021-03-05', '5460316199', 'BCA', 258200, 258200, 0, '', NULL, 3, '000362/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(198, '1032102217/002-DN', '1032102217/002/AJRI-DN/II/2021', '1032102000217', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 5403920, 0, 5403920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5403920, 5403920, '2021-03-05', '5460316199', 'BCA', 5403920, 5403920, 0, '', NULL, 20, '000359/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(199, '1012102224/002-DN', '1012102224/002/AJRI-DN/II/2021', '1012102000224', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BPR BKK TAMAN', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 70200, 0, 70200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70200, 70200, '2021-03-05', '5460316199', 'BCA', 70200, 70200, 0, '', NULL, 2, '000363/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(200, '1032102217/003-DN', '1032102217/003/AJRI-DN/II/2021', '1032102000217', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 2909072, 0, 2909072, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2909072, 2909072, '2021-03-05', '5460316199', 'BCA', 2909072, 2909072, 0, '', NULL, 31, '000360/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(201, '1032102217/004-DN', '1032102217/004/AJRI-DN/II/2021', '1032102000217', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 4810480, 0, 4810480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4810480, 4810480, '2021-03-05', '5460316199', 'BCA', 4810480, 4810480, 0, '', NULL, 20, '000361/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:14', '2021-07-13 09:29:14', NULL),
(202, '1041605032/003-DN', '1041605032/003/AJRI-DN/II/2021', '1041605000032', 'PT.ASURANSI  JASA TANIA (JASTAN)', '', 'PT.ASURANSI  JASA TANIA (JASTAN)', 'RCLND', 'JANGKAWARSA', '2021-02-28', '2021-05-03', 0, '0-30', 14828380, 975500, 15803880, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15803880, 15803880, '2021-04-29', '5460316199', 'BCA', 15803880, 15803880, 0, '', '2021-06-02', 9, '000364/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(203, '1042004051/002-DN', '1042004051/002/AJRI-DN/II/2021', '1042004000051', 'PT KSK INSURANCE INDONESIA QQ PT SAHABAT MICRO FINTECH', '', 'PT KSK INSURANCE INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 15, '0-30', 342900, 0, 342900, 34290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 308610, 308610, '2021-04-06', '5460316199', 'BCA', 308610, 308610, 0, '', NULL, 1, '000365/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(204, '1032005194/006-DN', '1032005194/006/AJRI-DN/II/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 4635400, 0, 4635400, 463540, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4171860, 4171860, '2021-03-04', '0182271089618', 'Parung Panjang', 4171860, 4171860, 0, '', '2021-04-20', 2, '000367/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(205, '1021406014/024-DN', '1021406014/024/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-28', '2021-03-31', 0, '0-30', 2123550, 0, 2123550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2123550, 2123550, '2021-03-29', '5460316199', 'BCA', 2123550, 2123550, 0, '', NULL, 3, '000368/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(206, '1031906177/004-DN', '1031906177/004/AJRI-DN/II/2021', '1031906000177', 'PT PINDAD PERSERO', '', 'PT PINDAD PERSERO', 'RCL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 8259925, 0, 8259925, 1651985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6607940, 6607940, '2021-03-09', '5460316199', 'BCA', 6607940, 6607940, 0, '', NULL, 74, '000369/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(207, '1041307003/008-DN', '1041307003/008/AJRI-DN/II/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-28', '2021-03-31', 0, '0-30', 9291880, 0, 9291880, 929188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8362692, 8362692, '2021-03-18', '5460316199', 'BCA', 8362692, 8362692, 0, '', NULL, 2, '000370/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(208, '1011808166/003-DN', '1011808166/003/AJRI-DN/II/2021', '1011808000166', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 636221, 0, 636221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 636221, 636221, '2020-04-03', '011103230102', 'Arta Kencana', 636221, 636221, 0, '', NULL, 13, '000371/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(209, '1011808166/004-DN', '1011808166/004/AJRI-DN/II/2021', '1011808000166', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 2282904, 0, 2282904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2282904, 2282904, '2020-04-06', '011103230102', 'Arta Kencana', 2282904, 2282904, 0, '', NULL, 41, '000372/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(210, '1011809168/004-DN', '1011809168/004/AJRI-DN/II/2021', '1011809000168', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 6661116, 0, 6661116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6661116, 6661116, '2020-04-13', '011103230102', 'Arta Kencana', 6661116, 6661116, 0, '', NULL, 132, '000376/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(211, '1011809168/003-DN', '1011809168/003/AJRI-DN/II/2021', '1011809000168', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 4269828, 0, 4269828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4269828, 4269828, '2020-04-16', '011103230102', 'Arta Kencana', 4269828, 4269828, 0, '', NULL, 98, '000375/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(212, '1021602035/003-DN', '1021602035/003/AJRI-DN/II/2021', '1021602000035', 'PT.ASURANSI  JASA TANIA (JASTAN)', '', 'PT.ASURANSI  JASA TANIA (JASTAN)', 'RTLND', 'JANGKAWARSA', '2021-02-28', '2021-05-03', 0, '0-30', 5329500, 0, 5329500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5329500, 5329500, '2021-04-29', '5460316199', 'BCA', 5329500, 5329500, 0, '', '2021-06-02', 7, '000374/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(213, '1032009201/002-DN', '1032009201/002/AJRI-DN/II/2021', '1032009000201', 'PT BUMI INSURANCE BROKERS QQ PT BPR GUNADHANA MITRASEMBADA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-02-28', '2021-03-31', 14, '0-30', 4930750, 0, 4930750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4930750, 4930750, '2021-04-14', '5460316199', 'BCA', 4930750, 4930750, 0, '', '2021-04-20', 1, '000377/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(214, '1041709045/014-DN', '1041709045/014/AJRI-DN/II/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-28', '2021-03-31', 0, '0-30', 737260, 0, 737260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 737260, 737260, '2021-03-22', '5460316199', 'BCA', 737260, 737260, 0, '', NULL, 8, '000378/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(215, '1031602067/004-DN', '1031602067/004/AJRI-DN/II/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-02-28', '2021-03-19', 28, '0-30', 9267800, 0, 9267800, 2085255, 0, 0, 0, 208526, -41705, 0, 0, 0, 10000, 0, 7182545, 7025725, '2021-04-16', '5460316199', 'BCA', 7025725, 7025725, 0, '', NULL, 2, '000379/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(216, '1021406014/025-DN', '1021406014/025/AJRI-DN/II/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-02-28', '2021-03-31', 0, '0-30', 778800, 0, 778800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 778800, 778800, '2021-03-29', '5460316199', 'BCA', 778800, 778800, 0, '', NULL, 4, '000380/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(217, '1041406007/029-DN', '1041406007/029/AJRI-DN/II/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-02-28', '2021-03-31', 0, '0-30', 76591, 0, 76591, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76591, 76591, '2021-03-29', '5460316199', 'BCA', 76591, 76591, 0, '', NULL, 1, '000381/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(218, '1041712046/007-DN', '1041712046/007/AJRI-DN/II/2021', '1041712000046', 'PT ASURANSI ASEI INDONESIA QQ PT BANK WOORI SAUDARA INDONESIA 1906, TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 17, '0-30', 959462040, 0, 959462040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 959462040, 959462040, '2021-04-08', '5460316199', 'BCA', 959462040, 959462040, 0, '', '2021-04-26', 924, '000383/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(219, '1022008076/004-DN', '1022008076/004/AJRI-DN/III/2021', '1022008000076', 'PT. ASURANSI ASEI INDONESIA QQ PT. BANK WOORI SAUDARA INDONESIA 1906. TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RTLND', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 0, '0-30', 18124500, 0, 18124500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18124500, 18124500, '2021-03-22', '5460316199', 'BCA', 18124500, 18124500, 0, '', NULL, 64, '000384/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(220, '1041609039/007-DN', '1041609039/007/AJRI-DN/II/2021', '1041609000039', 'PT.ASURANSI ASEI INDONESIA', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-02-28', '2021-03-22', 17, '0-30', 437991300, 0, 437991300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 437991300, 437991300, '2021-04-08', '5460316199', 'BCA', 437991300, 437991300, 0, '', '2021-04-26', 545, '000382/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(221, '1041712046/008-DN', '1041712046/008/AJRI-DN/III/2021', '1041712000046', 'PT ASURANSI ASEI INDONESIA QQ PT BANK WOORI SAUDARA INDONESIA 1906, TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-03-01', '2021-03-22', 17, '0-30', 216173145, 0, 216173145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 216173145, 216173145, '2021-04-08', '5460316199', 'BCA', 216173145, 216173145, 0, '', '2021-04-26', 159, '000386/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL);
INSERT INTO `migration_data` (`id`, `no_register`, `nomor_invoice`, `nomor_polis`, `nama_pemegang_polis`, `sub_polis`, `sub_pemegang_polis`, `jenis_produk`, `line_of_business`, `tanggal_terbit`, `jatuh_tempo`, `aging`, `klasifikasi_aging`, `premi_bruto`, `extra_premi`, `premi_gross`, `discount`, `komisi`, `fee_base`, `lain_lain`, `pajak_ppn`, `pajak_pph`, `pajak_lain`, `biaya_administrasi`, `biaya_polis`, `biaya_sertifikat`, `biaya_materai`, `premi_netto`, `jumlah_bayar`, `tanggal_pendapatan`, `no_rekening`, `bank`, `amount`, `pembayaran`, `piutang`, `status`, `pengajuan_komisi`, `jumlah_peserta`, `no_memo`, `period`, `created_at`, `updated_at`, `manajemen_fee`) VALUES
(222, '1042012055/007-DN', '1042012055/007/AJRI-DN/III/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-03-05', '2021-03-26', 12, '0-30', 19760914, 0, 19760914, 1976091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17784823, 17784823, '2021-04-07', '5460316199', 'BCA', 17784823, 17784823, 0, '', NULL, 220, '007894/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(223, '1042012055/008-DN', '1042012055/008/AJRI-DN/III/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-03-05', '2021-03-26', 11, '0-30', 3463225, 0, 3463225, 346323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3116903, 3116903, '2021-04-06', '5460316199', 'BCA', 3116903, 3116903, 0, '', NULL, 29, '007895/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(224, '1012102225/001-DN', '1012102225/001/AJRI-DN/III/2021', '1012102000225', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-03-01', '2021-03-22', 0, '0-30', 78000, 0, 78000, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 78000, 188000, '2021-03-22', '5460316199', 'BCA', 188000, 188000, 0, '', NULL, 1, '000385/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(225, '1012102225/002-DN', '1012102225/002/AJRI-DN/III/2021', '1012102000225', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-03-01', '2021-03-22', 0, '0-30', 390000, 0, 390000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 390000, 390000, '2021-03-22', '5460316199', 'BCA', 390000, 390000, 0, '', NULL, 2, '000390/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(226, '1021406014/026-DN', '1021406014/026/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-01', '2021-03-31', 0, '0-30', 344400, 0, 344400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 344400, 344400, '2021-03-29', '5460316199', 'BCA', 344400, 344400, 0, '', NULL, 2, '000391/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(227, '1012102222/005-DN', '1012102222/005/AJRI-DN/III/2021', '1012102000222', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-03-01', '2021-03-22', 0, '0-30', 145500, 0, 145500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 145500, 145500, '2021-03-22', '5460316199', 'BCA', 145500, 145500, 0, '', NULL, 1, '000389/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(228, '1031510062/005-DN', '1031510062/005/AJRI-DN/III/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-03-02', '2021-03-22', 0, '0-30', 783625, 0, 783625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 783625, 783625, '2021-03-18', '5460316199', 'BCA', 783625, 783625, 0, '', NULL, 13, '000396/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(229, '1031812168/003-DN', '1031812168/003/AJRI-DN/III/2021', '1031812000168', 'PT BPR KARINAMAS PERMAI', '', 'PT BPR KARINAMAS PERMAI', 'RCL', 'JANGKAWARSA', '2021-03-02', '2021-03-23', 0, '0-30', 1899400, 0, 1899400, 189940, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1709460, 1709460, '2021-03-15', '5460316199', 'BCA', 1709460, 1709460, 0, '', NULL, 6, '000398/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(230, '1031602067/005-DN', '1031602067/005/AJRI-DN/III/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-03-02', '2021-03-22', 23, '0-30', 1548000, 0, 1548000, 348300, 0, 0, 0, 34830, -6966, 0, 0, 0, 5000, 0, 1199700, 1176836, '2021-04-14', '5460316199', 'BCA', 1176836, 1176836, 0, '', NULL, 1, '000399/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(231, '1011801139/003-DN', '1011801139/003/AJRI-DN/III/2021', '1011801000139', 'PT. BPR LAKSANA BINA CIMANGGIS', '', 'PT. BPR LAKSANA BINA CIMANGGIS', 'RTL', 'JANGKAWARSA', '2021-03-02', '2021-03-23', 0, '0-30', 944970, 0, 944970, 94497, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 850473, 850473, '2021-03-12', '5460316199', 'BCA', 850473, 850473, 0, '', NULL, 5, '000401/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(232, '1041406007/030-DN', '1041406007/030/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-02', '2021-04-01', 0, '0-30', 847800, 0, 847800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 847800, 847800, '2021-03-29', '5460316199', 'BCA', 847800, 847800, 0, '', NULL, 2, '000402/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(233, '1041406007/031-DN', '1041406007/031/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-02', '2020-05-19', 314, '>90', 567600, 0, 567600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 567600, 567600, '2021-03-29', '5460316199', 'BCA', 567600, 567600, 0, '', NULL, 1, '000403/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(234, '1041709045/015-DN', '1041709045/015/AJRI-DN/III/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-02', '2020-05-19', 314, '>90', 171000, 0, 171000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 171000, 171000, '2021-03-29', '5460316199', 'BCA', 171000, 171000, 0, '', NULL, 1, '000404/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(235, '1011907182/008-DN', '1011907182/008/AJRI-DN/III/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-03-02', '2021-03-09', 7, '0-30', 7850000, 0, 7850000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7850000, 7850000, '2021-03-16', '5460316199', 'BCA', 7850000, 7850000, 0, '', NULL, 157, '000405/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(236, '1041709045/016-DN', '1041709045/016/AJRI-DN/III/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-02', '2021-04-01', 0, '0-30', 1718400, 0, 1718400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1718400, 1718400, '2021-03-29', '5460316199', 'BCA', 1718400, 1718400, 0, '', NULL, 1, '000407/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(237, '1011907182/009-DN', '1011907182/009/AJRI-DN/III/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-03-02', '2021-03-09', 7, '0-30', 7350000, 0, 7350000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7350000, 7350000, '2021-03-16', '5460316199', 'BCA', 7350000, 7350000, 0, '', NULL, 147, '000406/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(238, '1031608093/004-DN', '1031608093/004/AJRI-DN/III/2021', '1031608000093', 'PD.BPR BANK JOGJA', '', 'PD.BPR BANK JOGJA', 'RCL', 'JANGKAWARSA', '2021-03-02', '2021-03-22', 0, '0-30', 82766, 0, 82766, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82766, 82766, '2019-11-01', '0012152632', 'JOGJA', 82766, 82766, 0, '', NULL, 1, '000409/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(239, '1021406014/027-DN', '1021406014/027/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-02', '2021-04-01', 0, '0-30', 290000, 0, 290000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290000, 290000, '2021-03-29', '5460316199', 'BCA', 290000, 290000, 0, '', NULL, 2, '000408/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(240, '1021705047/003-DN', '1021705047/003/AJRI-DN/III/2021', '1021705000047', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-02', '2021-04-01', 0, '0-30', 56660, 0, 56660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56660, 56660, '2021-03-29', '5460316199', 'BCA', 56660, 56660, 0, '', NULL, 2, '000410/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(241, '1031602072/007-DN', '1031602072/007/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-02', '2021-03-22', 0, '0-30', 7919500, 0, 7919500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7919500, 7919500, '2021-03-16', '5460316199', 'BCA', 7919500, 7919500, 0, '', '2021-04-22', 9, '000411/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(242, '1011704120/003-DN', '1011704120/003/AJRI-DN/III/2021', '1011704000120', 'PT BPR SUKMA KEMANG AGUNG', '', 'PT BPR SUKMA KEMANG AGUNG', 'RTL', 'JANGKAWARSA', '2021-03-02', '2021-03-23', 0, '0-30', 17500960, 0, 17500960, 1750096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15750864, 15750864, '2021-03-15', '5460316199', 'BCA', 15750864, 15750864, 0, '', NULL, 42, '000412/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(243, '1031602072/008-DN', '1031602072/008/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-03', '2021-03-23', 0, '0-30', 7836730, 0, 7836730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7836730, 7836730, '2021-03-16', '5460316199', 'BCA', 7836730, 7836730, 0, '', '2021-04-22', 18, '000413/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(244, '1012102229/001-DN', '1012102229/001/AJRI-DN/III/2021', '1012102000229', 'PT RICHLAND LOGISTICS INDONESIA', '', 'PT RICHLAND LOGISTICS INDONESIA', 'RTL', 'EKAWARSA', '2021-03-03', '2021-03-24', 0, '0-30', 53550000, 0, 53550000, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 53550000, 53660000, '2021-03-16', '5460316199', 'BCA', 53660000, 53660000, 0, '', NULL, 84, '000415/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(245, '1032005194/007-DN', '1032005194/007/AJRI-DN/III/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-03-03', '2021-03-24', 0, '0-30', 472500, 0, 472500, 47250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425250, 425250, '2021-03-12', '0182271089618', 'Parung Panjang', 425250, 425250, 0, '', '2021-04-20', 1, '000416/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(246, '1031602072/009-DN', '1031602072/009/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-04', '2021-03-24', 0, '0-30', 3967850, 0, 3967850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3967850, 3967850, '2021-03-16', '5460316199', 'BCA', 3967850, 3967850, 0, '', '2021-04-22', 31, '000419/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(247, '1031602072/010-DN', '1031602072/010/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-04', '2021-03-24', 0, '0-30', 7460150, 0, 7460150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7460150, 7460150, '2021-03-16', '5460316199', 'BCA', 7460150, 7460150, 0, '', '2021-04-22', 42, '000420/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(248, '1031602072/011-DN', '1031602072/011/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-04', '2021-03-24', 0, '0-30', 2955340, 0, 2955340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2955340, 2955340, '2021-03-16', '5460316199', 'BCA', 2955340, 2955340, 0, '', '2021-04-22', 25, '000421/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(249, '1032003191/002-DN', '1032003191/002/AJRI-DN/III/2021', '1032003000191', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', '', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', 'RCL', 'JANGKAWARSA', '2021-03-04', '2021-03-25', 0, '0-30', 1932000, 0, 1932000, 193200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1738800, 1738800, '2021-03-22', '5460316199', 'BCA', 1738800, 1738800, 0, '', NULL, 19, '000422/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(250, '1031603071/004-DN', '1031603071/004/AJRI-DN/III/2021', '1031603000071', 'PT.BPR DUTA ARTHA SEJAHTERA', '', 'PT.BPR DUTA ARTHA SEJAHTERA', 'RCL', 'JANGKAWARSA', '2021-03-04', '2021-03-24', 0, '0-30', 6744027, 0, 6744027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6744027, 6744027, '2021-03-17', '5460316199', 'BCA', 6744027, 6744027, 0, '', '2021-04-20', 46, '000423/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(251, '1031906178/002-DN', '1031906178/002/AJRI-DN/III/2021', '1031906000178', 'PT BPR KARINAMAS PERMAI CABANG CIKARANG', '', 'PT BPR KARINAMAS PERMAI', 'RCL', 'JANGKAWARSA', '2021-03-03', '2021-03-24', 0, '0-30', 68250, 0, 68250, 6825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61425, 61425, '2021-03-16', '5460316199', 'BCA', 61425, 61425, 0, '', NULL, 1, '000418/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(252, '1032003190/005-DN', '1032003190/005/AJRI-DN/III/2021', '1032003000190', 'KOPERASI PEGAWAI PEMERINTAH KAB. BANDUNG \"RAPEH RAPIH KERTA RAHARDJA\" (RRKR)', '', 'KOPERASI PEGAWAI PEMERINTAH KAB. BANDUNG \"RAPEH RAPIH KERTA RAHARDJA\" (RRKR)', 'RCL', 'JANGKAWARSA', '2021-03-04', '2021-03-25', 0, '0-30', 2532210, 0, 2532210, 253221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2278989, 2278989, '2021-03-12', '5460316199', 'BCA', 2278989, 2278989, 0, '', '2021-04-20', 60, '000429/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(253, '1021406014/028-DN', '1021406014/028/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-04', '2021-04-03', 0, '0-30', 696000, 420000, 1116000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1116000, 1116000, '2021-03-29', '5460316199', 'BCA', 1116000, 1116000, 0, '', NULL, 1, '000428/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(254, '1031608093/005-DN', '1031608093/005/AJRI-DN/III/2021', '1031608000093', 'PD.BPR BANK JOGJA', '', 'PD.BPR BANK JOGJA', 'RCL', 'JANGKAWARSA', '2021-03-04', '2021-03-24', 0, '0-30', 9329588, 0, 9329588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9329588, 9329588, '2019-11-21', '0012152632', 'JOGJA', 9329588, 9329588, 0, '', NULL, 24, '000430/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(255, '1012102228/002-DN', '1012102228/002/AJRI-DN/III/2021', '1012102000228', 'PT BUMI INSURANCE BROKERS QQ PT BPR ARTHA BUDAYA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-05', '2021-04-16', 0, '0-30', 105900, 0, 105900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105900, 105900, '2021-04-14', '5460316199', 'BCA', 105900, 105900, 0, '', '2021-04-20', 1, '000432/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(256, '1041406007/032-DN', '1041406007/032/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-05', '2021-04-04', 0, '0-30', 6808870, 0, 6808870, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6808870, 6808870, '2021-03-29', '5460316199', 'BCA', 6808870, 6808870, 0, '', NULL, 74, '000435/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(257, '1032009201/003-DN', '1032009201/003/AJRI-DN/III/2021', '1032009000201', 'PT BUMI INSURANCE BROKERS QQ PT BPR GUNADHANA MITRASEMBADA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-03-05', '2021-04-04', 10, '0-30', 1842750, 0, 1842750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1842750, 1842750, '2021-04-14', '5460316199', 'BCA', 1842750, 1842750, 0, '', '2021-04-20', 1, '000440/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(258, '1041709045/017-DN', '1041709045/017/AJRI-DN/III/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-05', '2021-04-04', 0, '0-30', 5723263, 0, 5723263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5723263, 5723263, '2021-03-29', '5460316199', 'BCA', 5723263, 5723263, 0, '', NULL, 32, '000441/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(259, '1012001193/003-DN', '1012001193/003/AJRI-DN/III/2021', '1012001000193', 'PT. PIALANG ASURANSI INDOTEKNO', '', 'PT. PIALANG ASURANSI INDOTEKNO', 'RTL', 'EKAWARSA', '2021-03-05', '2021-03-26', 0, '0-30', 5043000, 0, 5043000, 1512900, 0, 0, 0, 151290, -30258, 0, 0, 0, 0, 0, 3530100, 3409068, '2021-03-25', '5460316199', 'BCA', 3409068, 3409068, 0, '', NULL, 21, '000442/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(260, '1042012055/009-DN', '1042012055/009/AJRI-DN/III/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-03-08', '2021-03-29', 9, '0-30', 17942533, 0, 17942533, 1794253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16148280, 16148280, '2021-04-07', '5460316199', 'BCA', 16148280, 16148280, 0, '', NULL, 171, '007896/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(261, '1032003191/006-DN', '1032003191/006/AJRI-DN/V/2021', '1032003000191', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', '', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', 'RCL', 'JANGKAWARSA', '2021-05-10', '2021-05-31', 16, '0-30', 2231850, 0, 2231850, 223185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2008665, 2008665, '2021-06-16', '5460316199', 'BCA', 2008665, 2008665, 0, '', NULL, 18, '000971/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(262, '1031709125/004-DN', '1031709125/004/AJRI-DN/III/2021', '1031709000125', 'PT BPR NBP 32 KARAWANG', '', 'PT BPR NBP 32 KARAWANG', 'RCL', 'JANGKAWARSA', '2021-03-08', '2021-03-29', 0, '0-30', 14707792, 0, 14707792, 2941558, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11766234, 11766234, '2021-03-25', '5460316199', 'BCA', 11766234, 11766234, 0, '', NULL, 49, '000449/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(263, '1021406014/029-DN', '1021406014/029/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-06', '2021-04-05', 0, '0-30', 203000, 0, 203000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 203000, 203000, '2021-03-29', '5460316199', 'BCA', 203000, 203000, 0, '', NULL, 6, '000443/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(264, '1021406014/030-DN', '1021406014/030/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-06', '2021-04-05', 0, '0-30', 2933860, 0, 2933860, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2933860, 2933860, '2021-03-29', '5460316199', 'BCA', 2933860, 2933860, 0, '', NULL, 15, '000444/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(265, '1031510062/006-DN', '1031510062/006/AJRI-DN/III/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-03-08', '2021-03-26', 0, '0-30', 974050, 0, 974050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 974050, 974050, '2021-03-18', '5460316199', 'BCA', 974050, 974050, 0, '', NULL, 3, '000451/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(266, '1012009209/001-DN', '1012009209/001/AJRI-DN/III/2021', '1012009000209', 'PT BUMI INSURANCE BROKERS QQ PT BPR SARASWATI EKABUMI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-09', '2021-04-08', 6, '0-30', 2118000, 0, 2118000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2118000, 2118000, '2021-04-14', '5460316199', 'BCA', 2118000, 2118000, 0, '', '2021-04-20', 1, '000457/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(267, '1011609094/008-DN', '1011609094/008/AJRI-DN/III/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-03-09', '2021-03-29', 0, '0-30', 225000, 0, 225000, 67500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 157500, 157500, '2021-03-23', '5460316199', 'BCA', 157500, 157500, 0, '', NULL, 2, '000458/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(268, '1031906177/005-DN', '1031906177/005/AJRI-DN/III/2021', '1031906000177', 'PT PINDAD PERSERO', '', 'PT PINDAD PERSERO', 'RCL', 'JANGKAWARSA', '2021-03-08', '2021-03-29', 18, '0-30', 216900, 0, 216900, 43380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 173520, 173520, '2021-04-16', '5460316199', 'BCA', 173520, 173520, 0, '', NULL, 1, '000452/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(269, '1012009208/002-DN', '1012009208/002/AJRI-DN/III/2021', '1012009000208', 'PT BUMI INSRUANCE BROKERS QQ KOPERASI AMERTHA SUWITRE', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-08', '2021-04-07', 7, '0-30', 2508000, 0, 2508000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2508000, 2508000, '2021-04-14', '5460316199', 'BCA', 2508000, 2508000, 0, '', '2021-04-20', 1, '000454/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(270, '1032102216/008-DN', '1032102216/008/AJRI-DN/III/2021', '1032102000216', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-08', '2021-03-29', 0, '0-30', 688000, 0, 688000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 688000, 688000, '2021-03-22', '5460316199', 'BCA', 688000, 688000, 0, '', NULL, 1, '000453/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(271, '1031701102/005-DN', '1031701102/005/AJRI-DN/III/2021', '1031701000102', 'PT BPR ARTHA BERSAMA', '', 'PT BPR ARTHA BERSAMA', 'RCL', 'JANGKAWARSA', '2021-03-09', '2021-03-30', 36, '31-60', 788360, 0, 788360, 78836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 709524, 709524, '2021-05-05', '5460316199', 'BCA', 709524, 709524, 0, '', NULL, 2, '000459/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(272, '1031907180/002-DN', '1031907180/002/AJRI-DN/III/2021', '1031907000180', 'BUKP MANTRIJERON', '', 'BUKP MANTRIJERON', 'RCL', 'JANGKAWARSA', '2021-03-09', '2021-03-30', 0, '0-30', 161953, 0, 161953, 32391, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 129562, 129562, '2021-03-25', '5460316199', 'BCA', 129562, 129562, 0, '', NULL, 6, '000460/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(273, '1022103087/001-DN', '1022103087/001/AJRI-DN/III/2021', '1022103000087', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ PERUSAHAAN', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'EKAWARSA', '2021-03-10', '2021-04-09', 0, '0-30', 728922562, 0, 728922562, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 728922562, 729032562, '2021-03-18', '5460316199', 'BCA', 729032562, 729032562, 0, '', NULL, 32767, '007896/UW-M/AJRI/II/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(274, '1031701102/006-DN', '1031701102/006/AJRI-DN/III/2021', '1031701000102', 'PT BPR ARTHA BERSAMA', '', 'PT BPR ARTHA BERSAMA', 'RCL', 'JANGKAWARSA', '2021-03-09', '2021-03-30', 0, '0-30', 478000, 0, 478000, 47800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 430200, 430200, '2021-03-26', '5460316199', 'BCA', 430200, 430200, 0, '', NULL, 1, '000461/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(275, '1031609089/005-DN', '1031609089/005/AJRI-DN/III/2021', '1031609000089', 'BPR MURIA HARTA NUSANTARA', '', 'BPR MURIA HARTA NUSANTARA', 'RCL', 'JANGKAWARSA', '2021-03-09', '2021-03-30', 0, '0-30', 9623377, 0, 9623377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9623377, 9623377, '2021-03-16', '5460316199', 'BCA', 9623377, 9623377, 0, '', '2021-04-22', 15, '000462/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(276, '1021406014/031-DN', '1021406014/031/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-09', '2021-04-08', 0, '0-30', 1021681, 0, 1021681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1021681, 1021681, '2021-03-29', '5460316199', 'BCA', 1021681, 1021681, 0, '', NULL, 3, '000463/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(277, '1041406007/033-DN', '1041406007/033/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-09', '2021-04-08', 0, '0-30', 1282500, 0, 1282500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1282500, 1282500, '2021-03-29', '5460316199', 'BCA', 1282500, 1282500, 0, '', NULL, 1, '000464/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(278, '1041406007/034-DN', '1041406007/034/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-09', '2021-04-08', 1, '0-30', 948800, 0, 948800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 948800, 948800, '2021-04-09', '5460316199', 'BCA', 948800, 948800, 0, '', '2021-05-25', 3, '000465/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(279, '1012101216/005-DN', '1012101216/005/AJRI-DN/III/2021', '1012101000216', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-09', '2021-04-08', 6, '0-30', 46067, 0, 46067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46067, 46067, '2021-04-14', '5460316199', 'BCA', 46067, 46067, 0, '', '2021-04-20', 9, '000466/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(280, '1012009206/003-DN', '1012009206/003/AJRI-DN/III/2021', '1012009000206', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-09', '2021-04-08', 6, '0-30', 1269800, 0, 1269800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1269800, 1269800, '2021-04-14', '5460316199', 'BCA', 1269800, 1269800, 0, '', '2021-04-20', 2, '000467/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(281, '1012009207/001-DN', '1012009207/001/AJRI-DN/III/2021', '1012009000207', 'PT BUMI INSURANCE BROKERS QQ PT BPR TATA ANJUNG SARI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-09', '2021-04-08', 6, '0-30', 52950, 0, 52950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52950, 52950, '2021-04-14', '5460316199', 'BCA', 52950, 52950, 0, '', '2021-04-20', 1, '000468/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(282, '1032009203/002-DN', '1032009203/002/AJRI-DN/III/2021', '1032009000203', 'PT BUMI INSURANCE BROKERS QQ PT BPR SARASWATI EKABUMI', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-03-09', '2021-04-08', 6, '0-30', 925280, 0, 925280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 925280, 925280, '2021-04-14', '5460316199', 'BCA', 925280, 925280, 0, '', '2021-04-20', 3, '000469/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(283, '1031803149/003-DN', '1031803149/003/AJRI-DN/III/2021', '1031803000149', 'BUKP NGAMPILAN', '', 'BUKP NGAMPILAN', 'RCL', 'JANGKAWARSA', '2021-03-09', '2021-03-30', 0, '0-30', 463620, 0, 463620, 92724, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 370896, 370896, '2021-03-25', '5460316199', 'BCA', 370896, 370896, 0, '', NULL, 16, '000471/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(284, '1012102221/005-DN', '1012102221/005/AJRI-DN/III/2021', '1012102000221', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-03-09', '2021-03-30', 0, '0-30', 156000, 0, 156000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156000, 156000, '2021-03-22', '5460316199', 'BCA', 156000, 156000, 0, '', NULL, 1, '000472/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(285, '1032102213/005-DN', '1032102213/005/AJRI-DN/III/2021', '1032102000213', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-09', '2021-03-30', 0, '0-30', 1257500, 0, 1257500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1257500, 1257500, '2021-03-22', '5460316199', 'BCA', 1257500, 1257500, 0, '', NULL, 1, '000473/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(286, '1032102217/005-DN', '1032102217/005/AJRI-DN/III/2021', '1032102000217', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-09', '2021-03-30', 0, '0-30', 814060, 0, 814060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 814060, 814060, '2021-03-22', '5460316199', 'BCA', 814060, 814060, 0, '', NULL, 1, '000474/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(287, '1032102217/006-DN', '1032102217/006/AJRI-DN/III/2021', '1032102000217', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-09', '2021-03-30', 0, '0-30', 814060, 0, 814060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 814060, 814060, '2021-03-22', '5460316199', 'BCA', 814060, 814060, 0, '', NULL, 1, '000475/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(288, '1032102217/007-DN', '1032102217/007/AJRI-DN/III/2021', '1032102000217', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-09', '2021-03-30', 0, '0-30', 967200, 0, 967200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 967200, 967200, '2021-03-22', '5460316199', 'BCA', 967200, 967200, 0, '', NULL, 1, '000476/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(289, '1022102085/002-DN', '1022102085/002/AJRI-DN/III/2021', '1022102000085', 'PT ASURANSI JASA TANIA (JASTAN) QQ PT NUSANTARA SEBELAS MEDIKA QQ UNIT-UNIT RUMAH SAKIT DAN KLINIK', '', 'PT ASURANSI JASA TANIA (JASTAN)', 'RTLND', 'EKAWARSA', '2021-03-04', '2021-03-19', 41, '31-60', 119546000, 0, 119546000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119546000, 119546000, '2021-04-29', '5460316199', 'BCA', 119546000, 119546000, 0, '', NULL, 2689, '000431/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(290, '1031602072/012-DN', '1031602072/012/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-10', '2021-03-30', 0, '0-30', 19562351, 0, 19562351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19562351, 19562351, '2021-03-30', '5460316199', 'BCA', 19562351, 19562351, 0, '', '2021-04-22', 25, '000477/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(291, '1031602072/013-DN', '1031602072/013/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-10', '2021-03-30', 0, '0-30', 8733020, 0, 8733020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8733020, 8733020, '2021-03-30', '5460316199', 'BCA', 8733020, 8733020, 0, '', '2021-04-22', 16, '000478/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(292, '1031602072/014-DN', '1031602072/014/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-10', '2021-03-30', 0, '0-30', 4760002, 0, 4760002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4760002, 4760002, '2021-03-30', '5460316199', 'BCA', 4760002, 4760002, 0, '', '2021-04-22', 8, '000479/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(293, '1041406007/035-DN', '1041406007/035/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-10', '2021-04-09', 0, '0-30', 5108270, 0, 5108270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5108270, 5108270, '2021-04-09', '5460316199', 'BCA', 5108270, 5108270, 0, '', '2021-05-25', 21, '000480/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(294, '1041709045/018-DN', '1041709045/018/AJRI-DN/III/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-10', '2021-04-09', 0, '0-30', 10129190, 0, 10129190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10129190, 10129190, '2021-04-09', '5460316199', 'BCA', 10129190, 10129190, 0, '', '2021-05-25', 17, '000484/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(295, '1021804052/002-DN', '1021804052/002/AJRI-DN/III/2021', '1021804000052', 'PT ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR DANAGUNG', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-10', '2021-04-09', 0, '0-30', 638000, 0, 638000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 638000, 638000, '2021-04-09', '5460316199', 'BCA', 638000, 638000, 0, '', '2021-05-25', 2, '000482/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(296, '1021705047/004-DN', '1021705047/004/AJRI-DN/III/2021', '1021705000047', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-10', '2021-04-09', 0, '0-30', 4144250, 0, 4144250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4144250, 4144250, '2021-04-09', '5460316199', 'BCA', 4144250, 4144250, 0, '', '2021-05-25', 40, '000483/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(297, '1012008205/004-DN', '1012008205/004/AJRI-DN/III/2021', '1012008000205', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI GRIYA MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-10', '2021-04-09', 5, '0-30', 200322, 0, 200322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200322, 200322, '2021-04-14', '5460316199', 'BCA', 200322, 200322, 0, '', '2021-04-20', 10, '000485/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(298, '1011704120/004-DN', '1011704120/004/AJRI-DN/III/2021', '1011704000120', 'PT BPR SUKMA KEMANG AGUNG', '', 'PT BPR SUKMA KEMANG AGUNG', 'RTL', 'JANGKAWARSA', '2021-03-12', '2021-04-02', 0, '0-30', 3459700, 346400, 3806100, 345970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3460130, 3460130, '2021-03-16', '5460316199', 'BCA', 3460130, 3460130, 0, '', '2021-05-25', 3, '000489/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(299, '1041707044/003-DN', '1041707044/003/AJRI-DN/III/2021', '1041707000044', 'PT. ASURANSI HARTA AMAN PRATAMA. Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-12', '2021-04-11', 0, '0-30', 6985700, 0, 6985700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6985700, 6985700, '2021-04-09', '5460316199', 'BCA', 6985700, 6985700, 0, '', '2021-05-25', 67, '000486/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(300, '1041402057/007-DN', '1041402057/007/AJRI-DN/III/2021', '1041402000057', 'PT. BANK SINARMAS, TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-03-16', '2021-04-05', 3, '0-30', 2133933, 0, 2133933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2133933, 2133933, '2021-04-08', '0031038898', 'SNM', 2133933, 2133933, 0, '', NULL, 4, '007900/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(301, '1032102212/006-DN', '1032102212/006/AJRI-DN/III/2021', '1032102000212', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-06', '2021-03-26', 6, '0-30', 12500, 0, 12500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12500, 12500, '2021-04-01', '5460316199', 'BCA', 12500, 12500, 0, '', '2021-05-03', 1, '000448/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(302, '1032102212/005-DN', '1032102212/005/AJRI-DN/III/2021', '1032102000212', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-06', '2021-03-26', 6, '0-30', 100000, 0, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 100000, '2021-04-01', '5460316199', 'BCA', 100000, 100000, 0, '', '2021-05-03', 1, '000447/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(303, '1031602072/015-DN', '1031602072/015/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-12', '2021-04-01', 13, '0-30', 4747962, 0, 4747962, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4747962, 4747962, '2021-04-14', '5460316199', 'BCA', 4747962, 4747962, 0, '', '2021-04-22', 26, '000491/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(304, '1021406014/033-DN', '1021406014/033/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-12', '2021-04-11', 8, '0-30', 45446180, 0, 45446180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45446180, 45446180, '2021-04-19', '5460316199', 'BCA', 45446180, 45446180, 0, '', NULL, 85, '000492/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(305, '1021406014/032-DN', '1021406014/032/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-10', '2021-04-09', 0, '0-30', 420570758, 0, 420570758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 420570758, 420570758, '2021-04-09', '5460316199', 'BCA', 420570758, 420570758, 0, '', '2021-05-25', 972, '000487/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(306, '1041406007/036-DN', '1041406007/036/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-12', '2021-04-11', 8, '0-30', 87759650, 0, 87759650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87759650, 87759650, '2021-04-19', '5460316199', 'BCA', 87759650, 87759650, 0, '', NULL, 213, '000490/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(307, '1022103087/006-DN', '1022103087/006/AJRI-DN/V/2021', '1022103000087', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ PERUSAHAAN', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'EKAWARSA', '2021-05-04', '2021-06-03', 5, '0-30', 8067850, 0, 8067850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8067850, 8067850, '2021-06-08', '5460316199', 'BCA', 8067850, 8067850, 0, '', NULL, 688, '007927/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(308, '1022104092/002-DN', '1022104092/002/AJRI-DN/V/2021', '1022104000092', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ RELAWAN', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'JANGKAWARSA', '2021-05-04', '2021-06-03', 5, '0-30', 130000, 0, 130000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130000, 130000, '2021-06-08', '5460316199', 'BCA', 130000, 130000, 0, '', NULL, 1, '007928/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(309, '1031602072/016-DN', '1031602072/016/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-15', '2021-04-02', 0, '0-30', 2734157, 0, 2734157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2734157, 2734157, '2021-03-30', '5460316199', 'BCA', 2734157, 2734157, 0, '', '2021-04-22', 11, '000495/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(310, '1041709045/019-DN', '1041709045/019/AJRI-DN/III/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-15', '2021-04-14', 5, '0-30', 75542, 0, 75542, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75542, 75542, '2021-04-19', '5460316199', 'BCA', 75542, 75542, 0, '', NULL, 2, '000499/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(311, '1011710134/003-DN', '1011710134/003/AJRI-DN/III/2021', '1011710000134', 'PT. BPR BANTORU PERINTIS', '', 'PT. BPR BANTORU PERINTIS', 'RTL', 'JANGKAWARSA', '2021-03-15', '2021-04-05', 12, '0-30', 557625, 0, 557625, 55763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 501863, 501863, '2021-04-17', '5460316199', 'BCA', 501863, 501863, 0, '', NULL, 29, '000501/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(312, '1021602035/005-DN', '1021602035/005/AJRI-DN/III/2021', '1021602000035', 'PT.ASURANSI  JASA TANIA (JASTAN)', '', 'PT.ASURANSI  JASA TANIA (JASTAN)', 'RTLND', 'JANGKAWARSA', '2021-03-15', '2021-05-17', 0, '0-30', 3924531, 0, 3924531, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3924531, 3924531, '2021-04-29', '5460316199', 'BCA', 3924531, 3924531, 0, '', '2021-06-02', 1, '000502/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:15', '2021-07-13 09:29:15', NULL),
(313, '1032008196/004-DN', '1032008196/004/AJRI-DN/III/2021', '1032008000196', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-03-15', '2021-04-14', 0, '0-30', 549650, 0, 549650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 549650, 549650, '2021-04-14', '5460316199', 'BCA', 549650, 549650, 0, '', '2021-04-20', 171, '000496/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(314, '1041605032/005-DN', '1041605032/005/AJRI-DN/III/2021', '1041605000032', 'PT.ASURANSI  JASA TANIA (JASTAN)', '', 'PT.ASURANSI  JASA TANIA (JASTAN)', 'RCLND', 'JANGKAWARSA', '2021-03-15', '2021-05-17', 0, '0-30', 24535716, 0, 24535716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24535716, 24535716, '2021-04-29', '5460316199', 'BCA', 24535716, 24535716, 0, '', '2021-06-02', 3, '000504/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(315, '1011711135/012-DN', '1011711135/012/AJRI-DN/III/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-15', '2021-04-05', 24, '0-30', 79800, 0, 79800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79800, 79800, '2021-04-29', '5460316199', 'BCA', 79800, 79800, 0, '', '2021-05-06', 1, '000505/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(316, '1011711135/013-DN', '1011711135/013/AJRI-DN/III/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-15', '2021-04-05', 24, '0-30', 11970, 0, 11970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11970, 11970, '2021-04-29', '5460316199', 'BCA', 11970, 11970, 0, '', '2021-05-06', 1, '000506/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(317, '1011711135/014-DN', '1011711135/014/AJRI-DN/III/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-15', '2021-04-05', 24, '0-30', 29260, 0, 29260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29260, 29260, '2021-04-29', '5460316199', 'BCA', 29260, 29260, 0, '', '2021-05-06', 22, '000507/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(318, '1032003193/001-DN', '1032003193/001/AJRI-DN/III/2021', '1032003000193', 'PT. BUMI INSURANCE BROKERS QQ PD BPR BKK LASEM KABUPATEN REMBANG', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-03-16', '2021-04-15', 40, '31-60', 2976000, 0, 2976000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2976000, 2976000, '2021-05-25', '5460316199', 'BCA', 2976000, 2976000, 0, '', NULL, 3, '000511/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(319, '1011911192/003-DN', '1011911192/003/AJRI-DN/III/2021', '1011911000192', 'PT BUMI INSURANCE BROKERS QQ PD BPR BKK CILACAP', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-16', '2021-04-15', 40, '31-60', 124800, 0, 124800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124800, 124800, '2021-05-25', '5460316199', 'BCA', 124800, 124800, 0, '', NULL, 10, '000512/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(320, '1011809167/007-DN', '1011809167/007/AJRI-DN/III/2021', '1011809000167', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK PURWOKERTO', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-16', '2021-04-15', 11, '0-30', 937150, 0, 937150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 937150, 937150, '2021-04-26', '5460316199', 'BCA', 937150, 937150, 0, '', '2021-05-03', 304, '000513/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(321, '1011907182/010-DN', '1011907182/010/AJRI-DN/III/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-03-16', '2021-03-23', 2, '0-30', 15200000, 0, 15200000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15200000, 15200000, '2021-03-25', '5460316199', 'BCA', 15200000, 15200000, 0, '', NULL, 15, '000514/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(322, '1021906064/003-DN', '1021906064/003/AJRI-DN/III/2021', '1021906000064', 'PT ASURANSI HARTA AMAN PRATAMA QQ PT BPR SAYMA KARYA', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-16', '2021-04-15', 4, '0-30', 4163630, 0, 4163630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4163630, 4163630, '2021-04-19', '5460316199', 'BCA', 4163630, 4163630, 0, '', NULL, 2, '000516/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(323, '1031911189/003-DN', '1031911189/003/AJRI-DN/III/2021', '1031911000189', 'PT BUMI INSURANCE BROKERS QQ PD BPR BKK CILACAP', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-16', '2021-04-15', 40, '31-60', 1941710, 0, 1941710, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1941710, 1941710, '2021-05-25', '5460316199', 'BCA', 1941710, 1941710, 0, '', NULL, 1, '000518/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(324, '1012101218/004-DN', '1012101218/004/AJRI-DN/III/2021', '1012101000218', 'PT BUMI INSURANCE BROKERS QQ PD BPR ARTHA PERWIRA PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-16', '2021-04-27', 28, '0-30', 278600, 0, 278600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 278600, 278600, '2021-05-25', '5460316199', 'BCA', 278600, 278600, 0, '', NULL, 26, '000520/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(325, '1032007195/002-DN', '1032007195/002/AJRI-DN/III/2021', '1032007000195', 'PT. BUMI INSURANCE BROKERS QQ PT LKM DEMAK SEJAHTERA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-03-16', '2021-04-15', 40, '31-60', 401030, 0, 401030, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 401030, 401030, '2021-05-25', '5460316199', 'BCA', 401030, 401030, 0, '', NULL, 2, '000519/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(326, '1031709125/005-DN', '1031709125/005/AJRI-DN/III/2021', '1031709000125', 'PT BPR NBP 32 KARAWANG', '', 'PT BPR NBP 32 KARAWANG', 'RCL', 'JANGKAWARSA', '2021-03-16', '2021-04-06', 0, '0-30', 524164, 0, 524164, 104833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 419331, 419331, '2021-03-25', '5460316199', 'BCA', 419331, 419331, 0, '', NULL, 2, '000521/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(327, '1011906181/010-DN', '1011906181/010/AJRI-DN/III/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-16', '2021-04-27', 0, '0-30', 1458690, 0, 1458690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1458690, 1458690, '2021-04-14', '5460316199', 'BCA', 1458690, 1458690, 0, '', '2021-04-20', 19, '000525/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(328, '1031701102/007-DN', '1031701102/007/AJRI-DN/III/2021', '1031701000102', 'PT BPR ARTHA BERSAMA', '', 'PT BPR ARTHA BERSAMA', 'RCL', 'JANGKAWARSA', '2021-03-16', '2021-04-06', 0, '0-30', 4061350, 0, 4061350, 406135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3655215, 3655215, '2021-03-30', '5460316199', 'BCA', 3655215, 3655215, 0, '', NULL, 4, '000527/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(329, '1031405016/004-DN', '1031405016/004/AJRI-DN/III/2021', '1031405000016', 'PT. BPR BUMI PENDAWA RAHARJA', '', 'PT. BPR BUMI PENDAWA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-03-16', '2021-04-05', 0, '0-30', 2721218, 0, 2721218, 680305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2040914, 2040914, '2021-03-26', '5460316199', 'BCA', 2040914, 2040914, 0, '', NULL, 7, '000526/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(330, '1011907182/011-DN', '1011907182/011/AJRI-DN/III/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-03-16', '2021-03-23', 2, '0-30', 7250000, 0, 7250000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7250000, 7250000, '2021-03-25', '5460316199', 'BCA', 7250000, 7250000, 0, '', NULL, 145, '000531/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL);
INSERT INTO `migration_data` (`id`, `no_register`, `nomor_invoice`, `nomor_polis`, `nama_pemegang_polis`, `sub_polis`, `sub_pemegang_polis`, `jenis_produk`, `line_of_business`, `tanggal_terbit`, `jatuh_tempo`, `aging`, `klasifikasi_aging`, `premi_bruto`, `extra_premi`, `premi_gross`, `discount`, `komisi`, `fee_base`, `lain_lain`, `pajak_ppn`, `pajak_pph`, `pajak_lain`, `biaya_administrasi`, `biaya_polis`, `biaya_sertifikat`, `biaya_materai`, `premi_netto`, `jumlah_bayar`, `tanggal_pendapatan`, `no_rekening`, `bank`, `amount`, `pembayaran`, `piutang`, `status`, `pengajuan_komisi`, `jumlah_peserta`, `no_memo`, `period`, `created_at`, `updated_at`, `manajemen_fee`) VALUES
(331, '1031908183/004-DN', '1031908183/004/AJRI-DN/III/2021', '1031908000183', 'BUKP SLEMAN', '', 'BUKP SLEMAN', 'RCL', 'JANGKAWARSA', '2021-03-17', '2021-04-07', 0, '0-30', 505750, 0, 505750, 101150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 404600, 404600, '2021-03-30', '5460316199', 'BCA', 404600, 404600, 0, '', NULL, 24, '000536/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(332, '1011710134/004-DN', '1011710134/004/AJRI-DN/III/2021', '1011710000134', 'PT. BPR BANTORU PERINTIS', '', 'PT. BPR BANTORU PERINTIS', 'RTL', 'JANGKAWARSA', '2021-03-17', '2021-04-07', 0, '0-30', 705000, 0, 705000, 70500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 634500, 634500, '2021-04-01', '5460316199', 'BCA', 634500, 634500, 0, '', NULL, 1, '000535/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(333, '101210215/004/-DN', '101210215/004/AJRI-DN/III/2021', '1012101000215', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SINAR SARI MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-17', '2021-04-16', 0, '0-30', 144730, 0, 144730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 144730, 144730, '2021-04-14', '5460316199', 'BCA', 144730, 144730, 0, '', '2021-04-20', 4, '000534/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(334, '101210215/005/-DN', '101210215/005/AJRI-DN/III/2021', '1012101000215', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SINAR SARI MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-17', '2021-04-16', 0, '0-30', 501611, 0, 501611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 501611, 501611, '2021-04-14', '5460316199', 'BCA', 501611, 501611, 0, '', '2021-04-20', 6, '000537/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(335, '1031602072/017-DN', '1031602072/017/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-03-17', '2021-04-06', 31, '31-60', 26749, 0, 26749, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26749, 26749, '2021-05-07', '5460316199', 'BCA', 26749, 26749, 0, '', NULL, 1, '000538/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(336, '1012009206/004-DN', '1012009206/004/AJRI-DN/III/2021', '1012009000206', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-17', '2021-04-16', 0, '0-30', 26400, 0, 26400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26400, 26400, '2021-04-14', '5460316199', 'BCA', 26400, 26400, 0, '', '2021-04-20', 1, '000539/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(337, '1012102228/003-DN', '1012102228/003/AJRI-DN/III/2021', '1012102000228', 'PT BUMI INSURANCE BROKERS QQ PT BPR ARTHA BUDAYA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-18', '2021-04-29', 0, '0-30', 7060, 0, 7060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7060, 7060, '2021-04-14', '5460316199', 'BCA', 7060, 7060, 0, '', '2021-04-20', 1, '000540/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(338, '1012009208/003-DN', '1012009208/003/AJRI-DN/III/2021', '1012009000208', 'PT BUMI INSRUANCE BROKERS QQ KOPERASI AMERTHA SUWITRE', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-18', '2021-04-17', 0, '0-30', 335350, 0, 335350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 335350, 335350, '2021-04-14', '5460316199', 'BCA', 335350, 335350, 0, '', '2021-04-20', 1, '000541/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(339, '1022104088/005-DN', '1022104088/005/AJRI-DN/V/2021', '1022104000088', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ INSTITUSI', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'JANGKAWARSA', '2021-05-05', '2021-06-04', 4, '0-30', 4567500, 0, 4567500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4567500, 4567500, '2021-06-08', '5460316199', 'BCA', 4567500, 4567500, 0, '', NULL, 203, '007930/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(340, '1032009201/004-DN', '1032009201/004/AJRI-DN/III/2021', '1032009000201', 'PT BUMI INSURANCE BROKERS QQ PT BPR GUNADHANA MITRASEMBADA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-03-18', '2021-04-17', 0, '0-30', 9066500, 0, 9066500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9066500, 9066500, '2021-04-14', '5460316199', 'BCA', 9066500, 9066500, 0, '', '2021-04-20', 2, '000543/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(341, '1012103230/001-DN', '1012103230/001/AJRI-DN/III/2021', '1012103000230', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SARI JAYA SADHANA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-18', '2021-04-29', 0, '0-30', 483180, 0, 483180, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 483180, 593180, '2021-04-14', '5460316199', 'BCA', 593180, 593180, 0, '', '2021-04-20', 3, '000545/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(342, '1012103230/002-DN', '1012103230/002/AJRI-DN/III/2021', '1012103000230', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SARI JAYA SADHANA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-18', '2021-04-29', 0, '0-30', 593150, 0, 593150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 593150, 593150, '2021-04-14', '5460316199', 'BCA', 593150, 593150, 0, '', '2021-04-20', 6, '000546/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(343, '1032102216/009-DN', '1032102216/009/AJRI-DN/III/2021', '1032102000216', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-19', '2021-04-09', 0, '0-30', 7096600, 0, 7096600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7096600, 7096600, '2021-04-01', '5460316199', 'BCA', 7096600, 7096600, 0, '', '2021-05-03', 12, '000550/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(344, '1032102217/008-DN', '1032102217/008/AJRI-DN/III/2021', '1032102000217', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-18', '2021-04-08', 0, '0-30', 6928740, 0, 6928740, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6928740, 6928740, '2021-04-01', '5460316199', 'BCA', 6928740, 6928740, 0, '', '2021-05-03', 24, '000547/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(345, '1012102221/006-DN', '1012102221/006/AJRI-DN/III/2021', '1012102000221', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-03-18', '2021-04-08', 0, '0-30', 1011850, 0, 1011850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1011850, 1011850, '2021-04-01', '5460316199', 'BCA', 1011850, 1011850, 0, '', '2021-05-03', 20, '000548/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(346, '1041406007/037-DN', '1041406007/037/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-15', '2021-04-14', 5, '0-30', 202542888, 0, 202542888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 202542888, 202542888, '2021-04-19', '5460316199', 'BCA', 202542888, 202542888, 0, '', NULL, 1743, '000508/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(347, '1032102212/007-DN', '1032102212/007/AJRI-DN/III/2021', '1032102000212', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-19', '2021-04-09', 0, '0-30', 9670220, 0, 9670220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9670220, 9670220, '2021-04-01', '5460316199', 'BCA', 9670220, 9670220, 0, '', '2021-05-03', 65, '000551/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(348, '1031602067/006-DN', '1031602067/006/AJRI-DN/III/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-03-19', '2021-04-08', 6, '0-30', 13745000, 0, 13745000, 3092625, 0, 0, 0, 309263, -61853, 0, 0, 0, 10000, 0, 10652375, 10414965, '2021-04-14', '5460316199', 'BCA', 10414965, 10414965, 0, '', NULL, 2, '000553/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(349, '1031602067/007-DN', '1031602067/007/AJRI-DN/III/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-03-19', '2021-04-08', 6, '0-30', 2632500, 0, 2632500, 592313, 0, 0, 0, 59231, -11846, 0, 0, 0, 5000, 0, 2040188, 1997803, '2021-04-14', '5460316199', 'BCA', 1997803, 1997803, 0, '', NULL, 1, '000554/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(350, '1012102226/005-DN', '1012102226/005/AJRI-DN/III/2021', '1012102000226', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-03-19', '2021-04-09', 0, '0-30', 9360, 0, 9360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9360, 9360, '2021-04-01', '5460316199', 'BCA', 9360, 9360, 0, '', '2021-05-03', 1, '000557/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(351, '1012010212/004-DN', '1012010212/004/AJRI-DN/III/2021', '1012010000212', 'PT. BUMI INSURANCE BROKERS QQ PT LKM DEMAK SEJAHTERA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-19', '2021-04-18', 37, '31-60', 1120000, 0, 1120000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1120000, 1120000, '2021-05-25', '5460316199', 'BCA', 1120000, 1120000, 0, '', NULL, 1, '000559/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(352, '1032102213/006-DN', '1032102213/006/AJRI-DN/III/2021', '1032102000213', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-03-22', '2021-04-12', 0, '0-30', 1737320, 0, 1737320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1737320, 1737320, '2021-04-01', '5460316199', 'BCA', 1737320, 1737320, 0, '', '2021-05-03', 13, '000560/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(353, '1021307003/003-DN', '1021307003/003/AJRI-DN/III/2021', '1041307000014', 'PT. ASURANSI MEGA PRATAMA (TETAP)', '', 'PT. ASURANSI MEGA PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-22', '2021-04-21', 0, '0-30', 17170762, 0, 17170762, 1717076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15453686, 15453686, '2021-04-21', '5460316199', 'BCA', 15453686, 15453686, 0, '', '2021-05-03', 82, '000566/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(354, '1021307003/004-DN', '1021307003/004/AJRI-DN/III/2021', '1041307000014', 'PT. ASURANSI MEGA PRATAMA (TETAP)', '', 'PT. ASURANSI MEGA PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-22', '2021-04-21', 0, '0-30', 654500, 0, 654500, 65450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 589050, 589050, '2021-04-21', '5460316199', 'BCA', 589050, 589050, 0, '', '2021-05-03', 1, '000567/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(355, '1041402057/008-DN', '1041402057/008/AJRI-DN/III/2021', '1041402000057', 'PT. BANK SINARMAS, TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-03-23', '2021-04-12', 22, '0-30', 4576615, 0, 4576615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4576615, 4576615, '2021-05-04', '0031038898', 'SNM', 4576615, 4576615, 0, '', NULL, 7, '007902/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(356, '1022103087/002-DN', '1022103087/002/AJRI-DN/III/2021', '1022103000087', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ PERUSAHAAN', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'EKAWARSA', '2021-03-23', '2021-04-22', 0, '0-30', 2221440, 0, 2221440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2221440, 2221440, '2021-04-20', '5460316199', 'BCA', 2221440, 2221440, 0, '', '2021-04-26', 162, '007903/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(357, '1032005194/008-DN', '1032005194/008/AJRI-DN/III/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-03-22', '2021-04-12', 0, '0-30', 1112250, 0, 1112250, 111225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1001025, 1001025, '2021-03-31', '0182271089618', 'Parung Panjang', 1001025, 1001025, 0, '', '2021-04-20', 2, '000568/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(358, '1032103222/001-DN', '1032103222/001/AJRI-DN/III/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-03-22', '2021-05-03', 0, '0-30', 3150000, 0, 3150000, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 3150000, 3260000, '2021-04-20', '5460316199', 'BCA', 3260000, 3260000, 0, '', '2021-04-26', 1, '000561/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(359, '1021406014/035-DN', '1021406014/035/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-22', '2021-04-21', 0, '0-30', 25977914, 982500, 26960414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26960414, 26960414, '2021-04-19', '5460316199', 'BCA', 26960414, 26960414, 0, '', NULL, 267, '000572/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(360, '1041307003/009-DN', '1041307003/009/AJRI-DN/III/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-22', '2021-04-21', 0, '0-30', 10270180, 0, 10270180, 1027018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9243162, 9243162, '2021-04-21', '5460316199', 'BCA', 9243162, 9243162, 0, '', '2021-05-03', 28, '000562/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(361, '1041307003/010-DN', '1041307003/010/AJRI-DN/III/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-22', '2021-04-21', 0, '0-30', 255000, 0, 255000, 25500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 229500, 229500, '2021-04-21', '5460316199', 'BCA', 229500, 229500, 0, '', '2021-05-03', 1, '000563/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(362, '1031612096/003-DN', '1031612096/003/AJRI-DN/III/2021', '1031612000096', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-03-22', '2021-04-12', 52, '31-60', 2160000, 0, 2160000, 648000, 0, 0, 0, 0, -12960, 0, 0, 0, 0, 0, 1512000, 1524960, '2021-06-03', '5460316199', 'BCA', 1524960, 1524960, 0, '', NULL, 1, '000564/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(363, '1012103231/001-DN', '1012103231/001/AJRI-DN/III/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-03-23', '2021-05-04', 0, '0-30', 154800, 42400, 197200, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 197200, 307200, '2021-04-06', '5460316199', 'BCA', 307200, 307200, 0, '', NULL, 1, '000573/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(364, '1021406014/036-DN', '1021406014/036/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-23', '2021-04-22', 0, '0-30', 879480, 0, 879480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 879480, 879480, '2021-04-22', '5460316199', 'BCA', 879480, 879480, 0, '', NULL, 3, '000575/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(365, '1041406007/038-DN', '1041406007/038/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-23', '2021-04-22', 0, '0-30', 7520750, 1027000, 8547750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8547750, 8547750, '2021-04-22', '5460316199', 'BCA', 8547750, 8547750, 0, '', NULL, 2, '000576/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(366, '1041406007/039-DN', '1041406007/039/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-23', '2021-04-22', 0, '0-30', 3290000, 0, 3290000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3290000, 3290000, '2021-04-22', '5460316199', 'BCA', 3290000, 3290000, 0, '', NULL, 2, '000578/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(367, '1041406007/040-DN', '1041406007/040/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-23', '2021-04-22', 0, '0-30', 51300, 0, 51300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51300, 51300, '2021-04-22', '5460316199', 'BCA', 51300, 51300, 0, '', NULL, 1, '000579/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(368, '1031602068/009-DN', '1031602068/009/AJRI-DN/III/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-03-23', '2021-04-12', 0, '0-30', 2004650, 0, 2004650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2004650, 2004650, '2021-04-05', '5460316199', 'BCA', 2004650, 2004650, 0, '', NULL, 19, '000580/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(369, '1041406007/041-DN', '1041406007/041/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-23', '2021-04-22', 0, '0-30', 419428, 0, 419428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 419428, 419428, '2021-04-22', '5460316199', 'BCA', 419428, 419428, 0, '', NULL, 2, '000583/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(370, '1041307003/011-DN', '1041307003/011/AJRI-DN/III/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-23', '2021-04-22', 0, '0-30', 77936404, 0, 77936404, 7793640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70142764, 70142764, '2021-04-21', '5460316199', 'BCA', 70142764, 70142764, 0, '', '2021-05-03', 386, '000584/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(371, '1041307003/012-DN', '1041307003/012/AJRI-DN/III/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-23', '2021-04-22', 7, '0-30', 19513900, 0, 19513900, 1951390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17562510, 17562510, '2021-04-29', '5460316199', 'BCA', 17562510, 18326560, -764050, '', NULL, 2, '000585/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(372, '1041406007/042-DN', '1041406007/042/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-23', '2021-04-22', 0, '0-30', 43862, 0, 43862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43862, 43862, '2021-04-22', '5460316199', 'BCA', 43862, 43862, 0, '', NULL, 1, '000586/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(373, '1022008078/001-DN', '1022008078/001/AJRI-DN/III/2021', '1022008000078', 'PT PZ CUSSONS INDONESIA', '', 'PT PZ CUSSONS INDONESIA', 'RTLND', 'EKAWARSA', '2021-03-24', '2021-04-14', 34, '31-60', 22169700, 0, 22169700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22169700, 22169700, '2021-05-18', '5460316199', 'BCA', 22169700, 22169700, 0, '', '2021-05-24', 30, '007904/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(374, '1032103222/015-DN', '1032103222/015/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-03', '2021-06-14', 0, '0-30', 87065408, 0, 87065408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 87065408, 87065408, '2021-06-08', '5460316199', 'BCA', 87065408, 87065408, 0, '', NULL, 524, '000883/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(375, '1031701099/002-DN', '1031701099/002/AJRI-DN/III/2021', '1031701000099', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-03-23', '2021-04-13', 23, '0-30', 2160000, 0, 2160000, 648000, 0, 0, 0, 0, -12960, 0, 0, 0, 0, 0, 1512000, 1524960, '2021-05-06', '5460316199', 'BCA', 1524960, 1524960, 0, '', NULL, 1, '000587/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(376, '1011906181/011-DN', '1011906181/011/AJRI-DN/III/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-24', '2021-05-05', 0, '0-30', 1319550, 0, 1319550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1319550, 1319550, '2021-04-14', '5460316199', 'BCA', 1319550, 1319550, 0, '', '2021-04-20', 13, '000588/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(377, '1012103231/002-DN', '1012103231/002/AJRI-DN/III/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-03-24', '2021-05-05', 0, '0-30', 950000, 0, 950000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 950000, 950000, '2021-04-20', '5460316199', 'BCA', 950000, 950000, 0, '', '2021-04-26', 1, '000590/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(378, '1032008197/001-DN', '1032008197/001/AJRI-DN/III/2021', '1032008000197', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI LINGGA ARTHA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-03-24', '2021-04-23', 0, '0-30', 315755, 0, 315755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 315755, 315755, '2021-04-14', '5460316199', 'BCA', 315755, 315755, 0, '', '2021-04-20', 5, '000592/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(379, '1012103231/003-DN', '1012103231/003/AJRI-DN/III/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-03-26', '2021-05-07', 0, '0-30', 243295118, 0, 243295118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 243295118, 243295118, '2021-04-06', '5460316199', 'BCA', 243295118, 243295118, 0, '', NULL, 2320, '007905/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(380, '1021406014/037-DN', '1021406014/037/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-03-25', '2021-04-24', 0, '0-30', 3309000, 0, 3309000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3309000, 3309000, '2021-04-22', '5460316199', 'BCA', 3309000, 3309000, 0, '', NULL, 1, '000594/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(381, '1041406007/044-DN', '1041406007/044/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-25', '2021-04-24', 0, '0-30', 402006, 0, 402006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 402006, 402006, '2021-04-22', '5460316199', 'BCA', 402006, 402006, 0, '', NULL, 13, '000593/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(382, '1021602035/006-DN', '1021602035/006/AJRI-DN/III/2021', '1021602000035', 'PT.ASURANSI  JASA TANIA (JASTAN)', '', 'PT.ASURANSI  JASA TANIA (JASTAN)', 'RTLND', 'JANGKAWARSA', '2021-03-25', '2021-05-27', 0, '0-30', 5208280, 0, 5208280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5208280, 5208280, '2021-04-29', '5460316199', 'BCA', 5208280, 5208280, 0, '', '2021-06-02', 8, '000595/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(383, '1031802142/006-DN', '1031802142/006/AJRI-DN/III/2021', '1031802000142', 'PT BPR HARTA TANAMAS', '', 'PT. BPR HARTA TANAMAS', 'RCL', 'JANGKAWARSA', '2021-03-25', '2021-04-15', 0, '0-30', 636000, 0, 636000, 63600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 572400, 572400, '2021-04-15', '5460316199', 'BCA', 572400, 572400, 0, '', NULL, 1, '000596/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(384, '1011507056/003-DN', '1011507056/003/AJRI-DN/III/2021', '1011507000056', 'LPD DP SINGAKERTA', '', 'LPD DP SINGAKERTA', 'RTL', 'EKAWARSA', '2021-03-25', '2021-04-14', 0, '0-30', 1927905, 0, 1927905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1927905, 1927905, '2021-04-09', '5460316199', 'BCA', 1927905, 1927905, 0, '', '2021-04-22', 65, '000597/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(385, '1012008204/003-DN', '1012008204/003/AJRI-DN/III/2021', '1012008000204', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI LINGGA ARTHA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-25', '2021-04-24', 0, '0-30', 441250, 0, 441250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 441250, 441250, '2021-04-14', '5460316199', 'BCA', 441250, 441250, 0, '', '2021-04-20', 2, '000598/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(386, '1041605032/007-DN', '1041605032/007/AJRI-DN/III/2021', '1041605000032', 'PT.ASURANSI  JASA TANIA (JASTAN)', '', 'PT.ASURANSI  JASA TANIA (JASTAN)', 'RCLND', 'JANGKAWARSA', '2021-03-25', '2021-05-27', 0, '0-30', 6820400, 0, 6820400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6820400, 6820400, '2021-04-29', '5460316199', 'BCA', 6820400, 6820400, 0, '', '2021-06-02', 4, '000600/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(387, '1032103222/002-DN', '1032103222/002/AJRI-DN/III/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-03-29', '2021-05-10', 0, '0-30', 338570720, 0, 338570720, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 338570720, 338570720, '2021-04-06', '5460316199', 'BCA', 338570720, 338570720, 0, '', NULL, 2126, '007906/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(388, '1011808166/006-DN', '1011808166/006/AJRI-DN/III/2021', '1011808000166', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-03-25', '2021-04-15', 0, '0-30', 4055600, 0, 4055600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4055600, 4055600, '2020-04-06', '011103230102', 'Arta Kencana', 4055600, 4055600, 0, '', NULL, 63, '000601/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(389, '1011808166/005-DN', '1011808166/005/AJRI-DN/III/2021', '1011808000166', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-03-25', '2021-04-15', 0, '0-30', 219818, 0, 219818, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 219818, 219818, '2020-04-06', '011103230102', 'Arta Kencana', 219818, 219818, 0, '', NULL, 7, '000599/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(390, '1012009206/005-DN', '1012009206/005/AJRI-DN/III/2021', '1012009000206', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-25', '2021-04-24', 0, '0-30', 39600, 33780, 73380, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73380, 73380, '2021-04-14', '5460316199', 'BCA', 73380, 73380, 0, '', '2021-04-20', 1, '000602/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(391, '1041609039/008-DN', '1041609039/008/AJRI-DN/III/2021', '1041609000039', 'PT.ASURANSI ASEI INDONESIA', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-03-25', '2021-04-15', 25, '0-30', 12690000, 0, 12690000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12690000, 12690000, '2021-05-10', '5460316199', 'BCA', 12690000, 12690000, 0, '', '2021-05-25', 2, '000603/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(392, '1011809168/005-DN', '1011809168/005/AJRI-DN/III/2021', '1011809000168', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-03-25', '2021-04-15', 0, '0-30', 7812922, 0, 7812922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7812922, 7812922, '2020-04-15', '011103230102', 'Arta Kencana', 7812922, 7812922, 0, '', NULL, 98, '000605/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(393, '1011809168/006-DN', '1011809168/006/AJRI-DN/III/2021', '1011809000168', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-03-25', '2021-04-15', 0, '0-30', 8671322, 0, 8671322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8671322, 8671322, '2020-04-28', '011103230102', 'Arta Kencana', 8671322, 8671322, 0, '', NULL, 204, '000607/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(394, '1031703110/003-DN', '1031703110/003/AJRI-DN/III/2021', '1031703000110', 'PT JAMKRIDA BABEL', '', 'PT JAMKRIDA BABEL', 'RCL', 'JANGKAWARSA', '2021-03-25', '2021-04-15', 0, '0-30', 22058680, 0, 22058680, 2205868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19852812, 19852812, '2021-04-12', '5460316199', 'BCA', 19852812, 19852812, 0, '', '2021-05-25', 25, '000606/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(395, '1011801142/001-DN', '1011801142/001/AJRI-DN/III/2021', '1011801000142', 'PT. BPR HARTA TANAMAS', '', 'PT. BPR HARTA TANAMAS', 'RTL', 'JANGKAWARSA', '2021-03-25', '2021-04-15', 0, '0-30', 377300, 0, 377300, 37730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339570, 339570, '2021-04-15', '5460316199', 'BCA', 339570, 339570, 0, '', NULL, 1, '000608/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(396, '1012103230/003-DN', '1012103230/003/AJRI-DN/III/2021', '1012103000230', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SARI JAYA SADHANA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-25', '2021-05-06', 0, '0-30', 5295, 0, 5295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5295, 5295, '2021-04-14', '5460316199', 'BCA', 5295, 5295, 0, '', '2021-04-20', 1, '000609/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(397, '1031405016/005-DN', '1031405016/005/AJRI-DN/III/2021', '1031405000016', 'PT. BPR BUMI PENDAWA RAHARJA', '', 'PT. BPR BUMI PENDAWA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-03-25', '2021-04-14', 0, '0-30', 67453, 0, 67453, 16863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50590, 50590, '2021-04-07', '5460316199', 'BCA', 50590, 50590, 0, '', NULL, 1, '000612/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:16', '2021-07-13 09:29:16', NULL),
(398, '1041406007/045-DN', '1041406007/045/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-01', '2021-04-25', 0, '0-30', 470000, 0, 470000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 470000, 470000, '2021-04-22', '5460316199', 'BCA', 470000, 470000, 0, '', NULL, 1, '000613/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(399, '1032009201/005-DN', '1032009201/005/AJRI-DN/III/2021', '1032009000201', 'PT BUMI INSURANCE BROKERS QQ PT BPR GUNADHANA MITRASEMBADA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-28', 0, '0-30', 780000, 46000, 826000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 826000, 826000, '2021-04-14', '5460316199', 'BCA', 826000, 826000, 0, '', '2021-04-20', 1, '000616/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(400, '1041402057/009-DN', '1041402057/009/AJRI-DN/III/2021', '1041402000057', 'PT. BANK SINARMAS, TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-03-30', '2021-04-19', 15, '0-30', 341977, 0, 341977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 341977, 341977, '2021-05-04', '0031038898', 'SNM', 341977, 341977, 0, '', NULL, 2, '007907/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(401, '1041406007/043-DN', '1041406007/043/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-24', '2021-04-23', 0, '0-30', 416760, 0, 416760, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 416760, 416760, '2021-04-22', '5460316199', 'BCA', 416760, 416760, 0, '', NULL, 4, '000589/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(402, '1012103231/013-DN', '1012103231/013/AJRI-DN/V/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-05-04', '2021-06-15', 0, '0-30', 47065523, 0, 47065523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47065523, 47065523, '2021-06-08', '5460316199', 'BCA', 47065523, 47065523, 0, '', NULL, 319, '000889/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(403, '1012003197/004-DN', '1012003197/004/AJRI-DN/III/2021', '1012003000197', 'PT. BUMI INSURANCE BROKERS QQ PD BPR BKK LASEM KABUPATEN REMBANG', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-16', '2021-04-15', 40, '31-60', 2071376, 0, 2071376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2071376, 2071376, '2021-05-25', '5460316199', 'BCA', 2071376, 2071376, 0, '', NULL, 11, '000528/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(404, '1012103231/004-DN', '1012103231/004/AJRI-DN/IV/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-04-01', '2021-05-13', 0, '0-30', 674000, 0, 674000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 674000, 674000, '2021-04-20', '5460316199', 'BCA', 674000, 674000, 0, '', '2021-04-26', 2, '000648/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(405, '1022008076/005-DN', '1022008076/005/AJRI-DN/IV/2021', '1022008000076', 'PT. ASURANSI ASEI INDONESIA QQ PT. BANK WOORI SAUDARA INDONESIA 1906. TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RTLND', 'JANGKAWARSA', '2021-03-31', '2021-04-22', 1, '0-30', 19342500, 0, 19342500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19342500, 19342500, '2021-04-23', '5460316199', 'BCA', 19342500, 19342500, 0, '', NULL, 64, '000645/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(406, '1041609039/009-DN', '1041609039/009/AJRI-DN/IV/2021', '1041609000039', 'PT.ASURANSI ASEI INDONESIA', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-03-31', '2021-04-22', 1, '0-30', 537785025, 0, 537785025, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 537785025, 537785025, '2021-04-23', '5460316199', 'BCA', 537785025, 537785025, 0, '', '2021-05-25', 728, '000647/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(407, '1041712046/009-DN', '1041712046/009/AJRI-DN/IV/2021', '1041712000046', 'PT ASURANSI ASEI INDONESIA QQ PT BANK WOORI SAUDARA INDONESIA 1906, TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-03-31', '2021-04-22', 1, '0-30', 1682897958, 0, 1682897958, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1682897958, 1682897958, '2021-04-23', '5460316199', 'BCA', 1682897958, 1682897958, 0, '', '2021-05-25', 1587, '000649/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(408, '1031604072/013-DN', '1031604072/013/AJRI-DN-E/III/2021', '1031604000072', 'PT.BANK SINARMAS', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-03-31', '2021-03-22', 40, '31-60', 17633089, 0, 17633089, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17633089, 17633089, '2021-05-01', '0031038898', 'SNM', 17633089, 2478861, 15154228, '', NULL, 0, '', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(409, '1041709045/129-DN', '1041709045/129/AJRI-DN-E/III/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-03-31', '2021-04-15', 0, '0-30', -1054440, 0, -1054440, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1054440, -1054440, '2021-04-09', '5460316199', 'BCA', -1054440, -1054440, 0, '', NULL, 0, '', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(410, '1022008078/002-DN', '1022008078/002/AJRI-DN-E/III/2021', '1022008000078', 'PT PZ CUSSONS INDONESIA', '', 'PT PZ CUSSONS INDONESIA', 'RTLND', 'EKAWARSA', '2021-04-01', '2021-04-28', 20, '0-30', -7257600, 0, -7257600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -7257600, -7257600, '2021-05-18', '5460316199', 'BCA', -7257600, -7257600, 0, '', NULL, 0, '', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(411, '1031711127/002-DN', '1031711127/002/AJRI-DN/III/2021', '1031711000127', 'BUKP WIROBRAJAN', '', 'BUKP WIROBRAJAN', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-19', 0, '0-30', 325860, 0, 325860, 65172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260688, 260688, '2021-04-09', '5460316199', 'BCA', 260688, 260688, 0, '', NULL, 24, '000614/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(412, '1031711127/003-DN', '1031711127/003/AJRI-DN/III/2021', '1031711000127', 'BUKP WIROBRAJAN', '', 'BUKP WIROBRAJAN', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-19', 0, '0-30', 660600, 0, 660600, 132120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 528480, 528480, '2021-04-09', '5460316199', 'BCA', 528480, 528480, 0, '', NULL, 23, '000615/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(413, '1041406007/046-DN', '1041406007/046/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-01', '2021-04-28', 0, '0-30', 872100, 0, 872100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 872100, 872100, '2021-04-22', '5460316199', 'BCA', 872100, 872100, 0, '', NULL, 1, '000618/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(414, '1041709045/021-DN', '1041709045/021/AJRI-DN/III/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-01', '2021-04-28', 0, '0-30', 127935093, 0, 127935093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127935093, 127935093, '2021-04-27', '5460316199', 'BCA', 127935093, 127935093, 0, '', NULL, 1117, '000621/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(415, '1031602072/018-DN', '1031602072/018/AJRI-DN/III/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-16', 21, '0-30', 843166, 0, 843166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 843166, 843166, '2021-05-07', '5460316199', 'BCA', 843166, 843166, 0, '', NULL, 1, '000623/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(416, '1011612098/006-DN', '1011612098/006/AJRI-DN/III/2021', '1011612000098', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-01', '2021-04-19', 17, '0-30', 793050, 0, 793050, 237915, 0, 0, 0, 0, -4758, 0, 0, 0, 0, 0, 555135, 559893, '2021-05-06', '5460316199', 'BCA', 559893, 559893, 0, '', NULL, 7, '000625/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(417, '1041406007/048-DN', '1041406007/048/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-01', '2021-04-28', 0, '0-30', 2004800, 0, 2004800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2004800, 2004800, '2021-04-27', '5460316199', 'BCA', 2004800, 2004800, 0, '', NULL, 1, '000627/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(418, '1041406007/047-DN', '1041406007/047/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-01', '2021-04-28', 0, '0-30', 4390000, 0, 4390000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4390000, 4390000, '2021-04-27', '5460316199', 'BCA', 4390000, 4390000, 0, '', NULL, 1, '000626/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(419, '1031905175/008-DN', '1031905175/008/AJRI-DN/III/2021', '1031905000175', 'CAKRABUANA INSURANCE BROKER QQ PINANG ARTHA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-19', 57, '31-60', 217500, 0, 217500, 76125, 0, 0, 0, 0, -1523, 0, 0, 0, 0, 0, 141375, 142898, '2021-06-15', '5460316199', 'BCA', 142898, 142898, 0, '', NULL, 1, '000624/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(420, '1021406014/038-DN', '1021406014/038/AJRI-DN/III/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-01', '2021-04-28', 0, '0-30', 2350920, 0, 2350920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2350920, 2350920, '2021-04-27', '5460316199', 'BCA', 2350920, 2350920, 0, '', NULL, 2, '000628/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(421, '1041307003/013-DN', '1041307003/013/AJRI-DN/III/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-01', '2021-04-28', 1, '0-30', 173971489, 0, 173971489, 17397149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156574340, 156574340, '2021-04-29', '5460316199', 'BCA', 156574340, 156574340, 0, '', NULL, 1676, '000629/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(422, '1021307003/005-DN', '1021307003/005/AJRI-DN/III/2021', '1041307000014', 'PT. ASURANSI MEGA PRATAMA (TETAP)', '', 'PT. ASURANSI MEGA PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-01', '2021-04-28', 1, '0-30', 9599460, 0, 9599460, 959946, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8639514, 8639514, '2021-04-29', '5460316199', 'BCA', 8639514, 8639514, 0, '', NULL, 56, '000631/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(423, '1041307003/014-DN', '1041307003/014/AJRI-DN/III/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-01', '2021-04-28', 1, '0-30', 11649690, 0, 11649690, 1164969, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10484721, 10484721, '2021-04-29', '5460316199', 'BCA', 10484721, 10484721, 0, '', NULL, 36, '000632/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(424, '1041709045/022-DN', '1041709045/022/AJRI-DN/III/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-01', '2021-04-29', 0, '0-30', 147128, 0, 147128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147128, 147128, '2021-04-27', '5460316199', 'BCA', 147128, 147128, 0, '', NULL, 1, '000633/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(425, '1032009203/003-DN', '1032009203/003/AJRI-DN/III/2021', '1032009000203', 'PT BUMI INSURANCE BROKERS QQ PT BPR SARASWATI EKABUMI', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-29', 32, '31-60', 1405000, 0, 1405000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1405000, 1405000, '2021-05-31', '5460316199', 'BCA', 1405000, 1405000, 0, '', NULL, 2, '000634/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(426, '1041406007/049-DN', '1041406007/049/AJRI-DN/III/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-01', '2021-04-29', 0, '0-30', 66220, 0, 66220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66220, 66220, '2021-04-27', '5460316199', 'BCA', 66220, 66220, 0, '', NULL, 1, '000635/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(427, '1011907182/012-DN', '1011907182/012/AJRI-DN/III/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-04-01', '2021-04-06', 7, '0-30', 7650000, 0, 7650000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7650000, 7650000, '2021-04-13', '5460316199', 'BCA', 7650000, 7650000, 0, '', NULL, 153, '000636/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(428, '1032103222/003-DN', '1032103222/003/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-04-06', '2021-05-18', 0, '0-30', 12487955, 0, 12487955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12487955, 12487955, '2021-04-20', '5460316199', 'BCA', 12487955, 12487955, 0, '', '2021-04-26', 6, '007910/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(429, '1011907182/013-DN', '1011907182/013/AJRI-DN/III/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-04-01', '2021-04-06', 7, '0-30', 10600000, 0, 10600000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10600000, 10600000, '2021-04-13', '5460316199', 'BCA', 10600000, 10600000, 0, '', NULL, 212, '000637/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(430, '1032103222/004-DN', '1032103222/004/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-04-06', '2021-05-18', 0, '0-30', 192358510, 0, 192358510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192358510, 192358510, '2021-04-20', '5460316199', 'BCA', 192358510, 192358510, 0, '', '2021-04-26', 109, '000664/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(431, '1011711135/016-DN', '1011711135/016/AJRI-DN/III/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-01', '2021-04-21', 8, '0-30', 33250, 0, 33250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33250, 33250, '2021-04-29', '5460316199', 'BCA', 33250, 33250, 0, '', '2021-05-06', 1, '000638/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(432, '1031602067/008-DN', '1031602067/008/AJRI-DN/IV/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-21', 5, '0-30', 28981400, 0, 28981400, 6520815, 0, 0, 0, 652082, -130416, 0, 0, 0, 15000, 0, 22460585, 21953920, '2021-04-26', '5460316199', 'BCA', 21953920, 21953920, 0, '', NULL, 3, '000639/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(433, '1031602067/009-DN', '1031602067/009/AJRI-DN/IV/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-21', 5, '0-30', 6421600, 0, 6421600, 1444860, 0, 0, 0, 144486, -28897, 0, 0, 0, 10000, 0, 4976740, 4871151, '2021-04-26', '5460316199', 'BCA', 4871151, 4871151, 0, '', NULL, 2, '000640/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(434, '1042012055/012-DN', '1042012055/012/AJRI-DN/IV/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-04-06', '2021-04-27', 50, '31-60', 427210, 0, 427210, 42721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 384489, 384489, '2021-06-16', '5460316199', 'BCA', 384489, 384489, 0, '', NULL, 2, '007911/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(435, '1042012055/013-DN', '1042012055/013/AJRI-DN/IV/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-04-06', '2021-04-27', 50, '31-60', 737747, 0, 737747, 73775, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 663972, 663972, '2021-06-16', '5460316199', 'BCA', 663972, 663972, 0, '', NULL, 2, '007912/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(436, '1031801133/002-DN', '1031801133/002/AJRI-DN/IV/2021', '1031801000133', 'PT BPR METROPOLITAN PUTRA', '', 'PT BPR METROPOLITAN PUTRA', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-22', 0, '0-30', 2641065, 0, 2641065, 264107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2376959, 2376959, '2021-04-13', '5460316199', 'BCA', 2376959, 2376959, 0, '', NULL, 6, '000641/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(437, '1031405016/006-DN', '1031405016/006/AJRI-DN/IV/2021', '1031405000016', 'PT. BPR BUMI PENDAWA RAHARJA', '', 'PT. BPR BUMI PENDAWA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-21', 0, '0-30', 1973935, 0, 1973935, 493484, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1480451, 1480451, '2021-04-13', '5460316199', 'BCA', 1480451, 1480451, 0, '', NULL, 7, '000642/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(438, '1031802142/007-DN', '1031802142/007/AJRI-DN/IV/2021', '1031802000142', 'PT BPR HARTA TANAMAS', '', 'PT. BPR HARTA TANAMAS', 'RCL', 'JANGKAWARSA', '2021-04-01', '2021-04-22', 0, '0-30', 586800, 0, 586800, 58680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 528120, 528120, '2021-04-21', '5460316199', 'BCA', 528120, 528120, 0, '', NULL, 1, '000643/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(439, '1041712046/015-DN', '1041712046/015/AJRI-DN/V/2021', '1041712000046', 'PT ASURANSI ASEI INDONESIA QQ PT BANK WOORI SAUDARA INDONESIA 1906, TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-05-28', '2021-06-18', 0, '0-30', 2147483647, 0, 2147483647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2147483647, 2147483647, '2021-06-16', '5460316199', 'BCA', 2147483647, 2147483647, 0, '', NULL, 1702, '001111/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL);
INSERT INTO `migration_data` (`id`, `no_register`, `nomor_invoice`, `nomor_polis`, `nama_pemegang_polis`, `sub_polis`, `sub_pemegang_polis`, `jenis_produk`, `line_of_business`, `tanggal_terbit`, `jatuh_tempo`, `aging`, `klasifikasi_aging`, `premi_bruto`, `extra_premi`, `premi_gross`, `discount`, `komisi`, `fee_base`, `lain_lain`, `pajak_ppn`, `pajak_pph`, `pajak_lain`, `biaya_administrasi`, `biaya_polis`, `biaya_sertifikat`, `biaya_materai`, `premi_netto`, `jumlah_bayar`, `tanggal_pendapatan`, `no_rekening`, `bank`, `amount`, `pembayaran`, `piutang`, `status`, `pengajuan_komisi`, `jumlah_peserta`, `no_memo`, `period`, `created_at`, `updated_at`, `manajemen_fee`) VALUES
(440, '1022103087/003-DN', '1022103087/003/AJRI-DN/IV/2021', '1022103000087', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ PERUSAHAAN', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'EKAWARSA', '2021-04-06', '2021-05-06', 0, '0-30', 28040125, 0, 28040125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28040125, 28040125, '2021-04-20', '5460316199', 'BCA', 28040125, 28040125, 0, '', '2021-04-26', 2595, '007914/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(441, '1011704120/005-DN', '1011704120/005/AJRI-DN/IV/2021', '1011704000120', 'PT BPR SUKMA KEMANG AGUNG', '', 'PT BPR SUKMA KEMANG AGUNG', 'RTL', 'JANGKAWARSA', '2021-04-05', '2021-04-26', 0, '0-30', 24694245, 0, 24694245, 2469425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22224821, 22224821, '2021-04-09', '5460316199', 'BCA', 22224821, 22224821, 0, '', '2021-05-25', 57, '000658/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(442, '1041402057/010-DN', '1041402057/010/AJRI-DN/IV/2021', '1041402000057', 'PT. BANK SINARMAS, TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-04-07', '2021-04-27', 14, '0-30', 1084194, 0, 1084194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1084194, 1084194, '2021-05-11', '0031038898', 'SNM', 1084194, 1084194, 0, '', NULL, 1, '007915/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(443, '1031602072/019-DN', '1031602072/019/AJRI-DN/IV/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-04-05', '2021-05-21', 0, '0-30', 6319680, 0, 6319680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6319680, 6319680, '2021-04-14', '5460316199', 'BCA', 6319680, 6319680, 0, '', NULL, 15, '000651/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(444, '1012102228/004-DN', '1012102228/004/AJRI-DN/IV/2021', '1012102000228', 'PT BUMI INSURANCE BROKERS QQ PT BPR ARTHA BUDAYA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-05', '2021-05-17', 14, '0-30', 455559, 0, 455559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 455559, 455559, '2021-05-31', '5460316199', 'BCA', 455559, 455559, 0, '', NULL, 6, '000652/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(445, '1012103231/006-DN', '1012103231/006/AJRI-DN/IV/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-04-05', '2021-05-17', 0, '0-30', 48244893, 0, 48244893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48244893, 48244893, '2021-04-20', '5460316199', 'BCA', 48244893, 48244893, 0, '', '2021-04-26', 334, '007916/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(446, '1021406014/039-DN', '1021406014/039/AJRI-DN/IV/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-05', '2021-05-05', 0, '0-30', 60600, 0, 60600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60600, 60600, '2021-05-04', '5460316199', 'BCA', 60600, 60600, 0, '', NULL, 1, '000653/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(447, '1012103230/004-DN', '1012103230/004/AJRI-DN/IV/2021', '1012103000230', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SARI JAYA SADHANA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-05', '2021-05-17', 14, '0-30', 498590, 0, 498590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 498590, 498590, '2021-05-31', '5460316199', 'BCA', 498590, 498590, 0, '', NULL, 4, '000650/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(448, '1021406014/040-DN', '1021406014/040/AJRI-DN/IV/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-05', '2021-05-05', 0, '0-30', 103200, 0, 103200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 103200, 103200, '2021-05-04', '5460316199', 'BCA', 103200, 103200, 0, '', NULL, 1, '000654/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(449, '1031803149/004-DN', '1031803149/004/AJRI-DN/IV/2021', '1031803000149', 'BUKP NGAMPILAN', '', 'BUKP NGAMPILAN', 'RCL', 'JANGKAWARSA', '2021-04-05', '2021-04-26', 0, '0-30', 294635, 0, 294635, 58927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 235708, 235708, '2021-04-21', '5460316199', 'BCA', 235708, 235708, 0, '', NULL, 21, '000655/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(450, '1012009206/006-DN', '1012009206/006/AJRI-DN/IV/2021', '1012009000206', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-05', '2021-05-05', 26, '0-30', 694970, 0, 694970, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 694970, 694970, '2021-05-31', '5460316199', 'BCA', 694970, 694970, 0, '', NULL, 2, '000656/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(451, '1031701102/008-DN', '1031701102/008/AJRI-DN/IV/2021', '1031701000102', 'PT BPR ARTHA BERSAMA', '', 'PT BPR ARTHA BERSAMA', 'RCL', 'JANGKAWARSA', '2021-04-05', '2021-04-26', 0, '0-30', 1115450, 0, 1115450, 111545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1003905, 1003905, '2021-04-16', '5460316199', 'BCA', 1003905, 1003905, 0, '', NULL, 3, '000657/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(452, '1011710134/005-DN', '1011710134/005/AJRI-DN/IV/2021', '1011710000134', 'PT. BPR BANTORU PERINTIS', '', 'PT. BPR BANTORU PERINTIS', 'RTL', 'JANGKAWARSA', '2021-04-06', '2021-04-27', 0, '0-30', 321935, 0, 321935, 32194, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 289742, 289742, '2021-04-15', '5460316199', 'BCA', 289742, 289742, 0, '', NULL, 12, '000659/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(453, '1032103222/005-DN', '1032103222/005/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-04-06', '2021-05-18', 0, '0-30', 632500, 0, 632500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 632500, 632500, '2021-04-20', '5460316199', 'BCA', 632500, 632500, 0, '', '2021-04-26', 1, '000667/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(454, '1022008076/006-DN', '1022008076/006/AJRI-DN/IV/2021', '1022008000076', 'PT. ASURANSI ASEI INDONESIA QQ PT. BANK WOORI SAUDARA INDONESIA 1906. TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RTLND', 'JANGKAWARSA', '2021-04-06', '2021-04-27', 1, '0-30', 11567100, 0, 11567100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11567100, 11567100, '2021-04-28', '5460316199', 'BCA', 11567100, 11567100, 0, '', NULL, 31, '000668/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(455, '1032005194/010-DN', '1032005194/010/AJRI-DN/IV/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-04-07', '2021-04-28', 0, '0-30', 2852000, 0, 2852000, 285200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2566800, 2566800, '2021-04-15', '0182271089618', 'Parung Panjang', 2566800, 2566800, 0, '', '2021-05-24', 1, '000670/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(456, '1011701103/007-DN', '1011701103/007/AJRI-DN/IV/2021', '1011701000103', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-07', '2021-04-28', 8, '0-30', 19620, 0, 19620, 5886, 0, 0, 0, 0, -118, 0, 0, 0, 0, 0, 13734, 13852, '2021-05-06', '5460316199', 'BCA', 13852, 13852, 0, '', NULL, 1, '000671/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(457, '1011906181/012-DN', '1011906181/012/AJRI-DN/IV/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-08', '2021-05-20', 11, '0-30', 1523860, 0, 1523860, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1523860, 1523860, '2021-05-31', '5460316199', 'BCA', 1523860, 1523860, 0, '', NULL, 22, '000673/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(458, '1011906181/013-DN', '1011906181/013/AJRI-DN/IV/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-08', '2021-05-20', 11, '0-30', 1026160, 0, 1026160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1026160, 1026160, '2021-05-31', '5460316199', 'BCA', 1026160, 1026160, 0, '', NULL, 20, '000674/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(459, '1012003197/005-DN', '1012003197/005/AJRI-DN/IV/2021', '1012003000197', 'PT. BUMI INSURANCE BROKERS QQ PD BPR BKK LASEM KABUPATEN REMBANG', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-08', '2021-05-08', 17, '0-30', 195087, 0, 195087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 195087, 195087, '2021-05-25', '5460316199', 'BCA', 195087, 195087, 0, '', NULL, 1, '000675/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(460, '1031906177/006-DN', '1031906177/006/AJRI-DN/IV/2021', '1031906000177', 'PT PINDAD PERSERO', '', 'PT PINDAD PERSERO', 'RCL', 'JANGKAWARSA', '2021-04-08', '2021-04-29', 0, '0-30', 8306710, 0, 8306710, 1661342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6645368, 6645368, '2021-04-16', '5460316199', 'BCA', 6645368, 6645368, 0, '', NULL, 26, '000676/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(461, '1012103231/005-DN', '1012103231/005/AJRI-DN/IV/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-04-08', '2021-05-20', 0, '0-30', 2875000, 0, 2875000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2875000, 2875000, '2021-04-20', '5460316199', 'BCA', 2875000, 2875000, 0, '', '2021-04-26', 1, '000677/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(462, '1041712046/010-DN', '1041712046/010/AJRI-DN/IV/2021', '1041712000046', 'PT ASURANSI ASEI INDONESIA QQ PT BANK WOORI SAUDARA INDONESIA 1906, TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-04-08', '2021-04-29', 0, '0-30', 268844100, 0, 268844100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 268844100, 268844100, '2021-04-29', '5460316199', 'BCA', 268844100, 268844100, 0, '', NULL, 96, '000678/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(463, '1031608093/006-DN', '1031608093/006/AJRI-DN/IV/2021', '1031608000093', 'PD.BPR BANK JOGJA', '', 'PD.BPR BANK JOGJA', 'RCL', 'JANGKAWARSA', '2021-04-09', '2021-04-29', 0, '0-30', 9708546, 0, 9708546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9708546, 9708546, '2019-11-22', '0012152632', 'JOGJA', 9708546, 9708546, 0, '', NULL, 32, '000680/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(464, '1012008205/005-DN', '1012008205/005/AJRI-DN/IV/2021', '1012008000205', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI GRIYA MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-09', '2021-05-09', 22, '0-30', 563677, 0, 563677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 563677, 563677, '2021-05-31', '5460316199', 'BCA', 563677, 563677, 0, '', NULL, 12, '000681/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(465, '1031905175/009-DN', '1031905175/009/AJRI-DN/IV/2021', '1031905000175', 'CAKRABUANA INSURANCE BROKER QQ PINANG ARTHA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-08', '2021-04-29', 7, '0-30', 4108801, 0, 4108801, 1438080, 0, 0, 0, 0, -28762, 0, 0, 0, 0, 0, 2670721, 2699482, '2021-05-06', '5460316199', 'BCA', 2699482, 2699482, 0, '', NULL, 17, '000679/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(466, '1011801139/004-DN', '1011801139/004/AJRI-DN/IV/2021', '1011801000139', 'PT. BPR LAKSANA BINA CIMANGGIS', '', 'PT. BPR LAKSANA BINA CIMANGGIS', 'RTL', 'JANGKAWARSA', '2021-04-09', '2021-04-30', 0, '0-30', 1191250, 0, 1191250, 119125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1072125, 1072125, '2021-04-16', '5460316199', 'BCA', 1072125, 1072125, 0, '', NULL, 8, '000682/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(467, '1031907180/003-DN', '1031907180/003/AJRI-DN/IV/2021', '1031907000180', 'BUKP MANTRIJERON', '', 'BUKP MANTRIJERON', 'RCL', 'JANGKAWARSA', '2021-04-09', '2021-04-30', 5, '0-30', 181475, 0, 181475, 36295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 145180, 145180, '2021-05-05', '5460316199', 'BCA', 145180, 145202, -22, '', NULL, 9, '000684/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(468, '1011906181/014-DN', '1011906181/014/AJRI-DN/IV/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-09', '2021-05-21', 10, '0-30', 3002000, 0, 3002000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3002000, 1026, '2021-05-31', '5460316199', 'BCA', 1026, 1026, 0, '', NULL, 24, '000686/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(469, '1021406014/041-DN', '1021406014/041/AJRI-DN/IV/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-09', '2021-05-09', 0, '0-30', 6960, 0, 6960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6960, 6960, '2021-05-04', '5460316199', 'BCA', 6960, 6960, 0, '', NULL, 1, '000687/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(470, '1031908183/005-DN', '1031908183/005/AJRI-DN/IV/2021', '1031908000183', 'BUKP SLEMAN', '', 'BUKP SLEMAN', 'RCL', 'JANGKAWARSA', '2021-04-09', '2021-04-30', 0, '0-30', 893910, 0, 893910, 178782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 715128, 715128, '2021-04-15', '5460316199', 'BCA', 715128, 715128, 0, '', NULL, 36, '000688/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(471, '1011704120/006-DN', '1011704120/006/AJRI-DN/IV/2021', '1011704000120', 'PT BPR SUKMA KEMANG AGUNG', '', 'PT BPR SUKMA KEMANG AGUNG', 'RTL', 'JANGKAWARSA', '2021-04-12', '2021-05-03', 0, '0-30', 3068100, 375000, 3443100, 306810, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3136290, 3136290, '2021-04-14', '5460316199', 'BCA', 3136290, 3136290, 0, '', NULL, 3, '000689/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(472, '1011609094/009-DN', '1011609094/009/AJRI-DN/IV/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-04-12', '2021-04-30', 0, '0-30', 225000, 0, 225000, 67500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 157500, 157500, '2021-04-19', '5460316199', 'BCA', 157500, 157500, 0, '', NULL, 2, '000690/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(473, '1011609094/010-DN', '1011609094/010/AJRI-DN/IV/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-04-12', '2021-04-30', 0, '0-30', 1275000, 0, 1275000, 382500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 892500, 892500, '2021-04-19', '5460316199', 'BCA', 892500, 892500, 0, '', NULL, 29, '000691/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(474, '1022104088/001-DN', '1022104088/001/AJRI-DN/IV/2021', '1022104000088', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ INSTITUSI', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'JANGKAWARSA', '2021-04-13', '2021-05-13', 0, '0-30', 87165000, 0, 87165000, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 87165000, 87275000, '2021-04-20', '5460316199', 'BCA', 87275000, 87275000, 0, '', '2021-04-26', 5572, '007918/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(475, '1012103230/005-DN', '1012103230/005/AJRI-DN/IV/2021', '1012103000230', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SARI JAYA SADHANA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-12', '2021-05-24', 7, '0-30', 1033694, 0, 1033694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1033694, 1033694, '2021-05-31', '5460316199', 'BCA', 1033694, 1033694, 0, '', NULL, 9, '000693/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(476, '1011612098/007-DN', '1011612098/007/AJRI-DN/IV/2021', '1011612000098', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-12', '2021-05-03', 3, '0-30', 2700700, 0, 2700700, 810210, 0, 0, 0, 0, -16204, 0, 0, 0, 0, 0, 1890490, 1906694, '2021-05-06', '5460316199', 'BCA', 1906694, 1906694, 0, '', NULL, 10, '000694/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(477, '1011612100/009-DN', '1011612100/009/AJRI-DN/IV/2021', '1011612000100', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-12', '2021-05-03', 3, '0-30', 395320, 0, 395320, 118596, 0, 0, 0, 0, -2372, 0, 0, 0, 0, 0, 276724, 279096, '2021-05-06', '5460316199', 'BCA', 279096, 279096, 0, '', NULL, 4, '000695/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(478, '1032011205/005-DN', '1032011205/005/AJRI-DN/IV/2021', '1032011000205', 'PT. AA PIALANG ASURANSI QQ PT BANK TABUNGAN NEGARA (PERSERO)', '', 'PT AA PIALANG ASURANSI', 'RCL', 'JANGKAWARSA', '2021-04-13', '2021-07-12', 0, '0-30', 114117877, 0, 114117877, 34235363, 0, 0, 0, 3423536, -684707, 0, 0, 0, 0, 0, 79882514, 77143685, '2021-04-23', '5460316199', 'BCA', 77143685, 77143685, 0, '', NULL, 103, '007919/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(479, '1022104088/002-DN', '1022104088/002/AJRI-DN/IV/2021', '1022104000088', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ INSTITUSI', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'JANGKAWARSA', '2021-04-13', '2021-05-13', 0, '0-30', 19486500, 0, 19486500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19486500, 19486500, '2021-04-20', '5460316199', 'BCA', 19486500, 19486500, 0, '', '2021-04-26', 1479, '007920/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(480, '1031701099/003-DN', '1031701099/003/AJRI-DN/IV/2021', '1031701000099', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-12', '2021-05-03', 3, '0-30', 1080000, 0, 1080000, 324000, 0, 0, 0, 0, -6480, 0, 0, 0, 0, 0, 756000, 762480, '2021-05-06', '5460316199', 'BCA', 762480, 762480, 0, '', NULL, 1, '000696/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(481, '1012001193/004-DN', '1012001193/004/AJRI-DN/IV/2021', '1012001000193', 'PT. PIALANG ASURANSI INDOTEKNO', '', 'PT. PIALANG ASURANSI INDOTEKNO', 'RTL', 'EKAWARSA', '2021-04-09', '2021-04-30', 0, '0-30', 80000, 0, 80000, 24000, 0, 0, 0, 2400, -480, 0, 0, 0, 0, 0, 56000, 54080, '2021-04-29', '5460316199', 'BCA', 54080, 54080, 0, '', NULL, 1, '000683/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(482, '1032003191/003-DN', '1032003191/003/AJRI-DN/IV/2021', '1032003000191', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', '', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', 'RCL', 'JANGKAWARSA', '2021-04-12', '2021-05-03', 4, '0-30', 1979060, 0, 1979060, 197906, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1781154, 1781154, '2021-05-07', '5460316199', 'BCA', 1781154, 1781154, 0, '', NULL, 16, '000698/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(483, '1032103222/016-DN', '1032103222/016/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-05', '2021-06-16', 0, '0-30', 126000, 127200, 253200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 253200, 253200, '2021-06-08', '5460316199', 'BCA', 253200, 253200, 0, '', NULL, 1, '000919/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(484, '1012101218/005-DN', '1012101218/005/AJRI-DN/IV/2021', '1012101000218', 'PT BUMI INSURANCE BROKERS QQ PD BPR ARTHA PERWIRA PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-12', '2021-05-24', 1, '0-30', 1044880, 0, 1044880, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1044880, 1044880, '2021-05-25', '5460316199', 'BCA', 1044880, 1044880, 0, '', NULL, 6, '000702/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(485, '1032103222/017-DN', '1032103222/017/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-06', '2021-06-17', 0, '0-30', 6072222, 0, 6072222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6072222, 6072222, '2021-06-08', '5460316199', 'BCA', 6072222, 6072222, 0, '', NULL, 1, '000941/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(486, '1032101207/003-DN', '1032101207/003/AJRI-DN/IV/2021', '1032101000207', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-12', '2021-05-12', 19, '0-30', 136408, 0, 136408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 136408, 136408, '2021-05-31', '5460316199', 'BCA', 136408, 136408, 0, '', NULL, 12, '000704/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(487, '1012101216/006-DN', '1012101216/006/AJRI-DN/IV/2021', '1012101000216', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-13', '2021-05-13', 18, '0-30', 37948, 0, 37948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37948, 37948, '2021-05-31', '5460316199', 'BCA', 37948, 37948, 0, '', NULL, 5, '000708/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(488, '1032104224/001-DN', '1032104224/001/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-12', '2021-05-03', 0, '0-30', 1606410, 0, 1606410, 160641, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 1445769, 1555769, '2021-03-31', '1220101001278', 'KERTA RAHARJA', 1555769, 1555769, 0, '', NULL, 16, '000703/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(489, '1032104224/002-DN', '1032104224/002/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-12', '2021-05-03', 0, '0-30', 3335515, 0, 3335515, 333552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3001964, 3001964, '2021-03-31', '1220101001278', 'KERTA RAHARJA', 3001964, 3001964, 0, '', NULL, 53, '000705/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(490, '1032104224/003-DN', '1032104224/003/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-12', '2021-05-03', 0, '0-30', 3781710, 0, 3781710, 378171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3403539, 3403539, '2021-03-31', '1220101001278', 'KERTA RAHARJA', 3403539, 3403539, 0, '', NULL, 34, '000706/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(491, '1032104224/004-DN', '1032104224/004/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-13', '2021-05-04', 0, '0-30', 11964160, 0, 11964160, 1196416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10767744, 10767744, '2021-03-07', '1220101001278', 'KERTA RAHARJA', 10767744, 10767744, 0, '', NULL, 61, '000707/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(492, '1041709045/023-DN', '1041709045/023/AJRI-DN/IV/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-13', '2021-05-13', 0, '0-30', 104652, 0, 104652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104652, 104652, '2021-05-11', '5460316199', 'BCA', 104652, 104652, 0, '', NULL, 1, '000712/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(493, '1011701103/012-DN', '1011701103/012/AJRI-DN/V/2021', '1011701000103', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-06-01', '2021-06-17', 0, '0-30', 168500, 0, 168500, 50550, 0, 0, 0, 0, -1011, 0, 0, 0, 0, 0, 117950, 118961, '2021-06-15', '5460316199', 'BCA', 118961, 118961, 0, '', NULL, 2, '001098/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(494, '1032104224/005-DN', '1032104224/005/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-13', '2021-05-04', 0, '0-30', 2903600, 0, 2903600, 290360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2613240, 2613240, '2021-03-07', '1220101001278', 'KERTA RAHARJA', 2613240, 2613240, 0, '', NULL, 4, '000713/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(495, '1032104224/006-DN', '1032104224/006/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-13', '2021-05-04', 0, '0-30', 3751530, 0, 3751530, 375153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3376377, 3376377, '2021-03-15', '1220101001278', 'KERTA RAHARJA', 3376377, 3376377, 0, '', NULL, 22, '000714/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(496, '1032104224/007-DN', '1032104224/007/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-13', '2021-05-04', 0, '0-30', 2350730, 0, 2350730, 235073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2115657, 2115657, '2021-04-05', '1220101001278', 'KERTA RAHARJA', 2115657, 2115657, 0, '', NULL, 22, '000715/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(497, '1032104224/008-DN', '1032104224/008/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-13', '2021-05-04', 0, '0-30', 3512540, 0, 3512540, 351254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3161286, 3161286, '2021-04-07', '1220101001278', 'KERTA RAHARJA', 3161286, 3161286, 0, '', NULL, 31, '000716/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(498, '101210215/006/-DN', '101210215/006/AJRI-DN/IV/2021', '1012101000215', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SINAR SARI MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-13', '2021-05-13', 18, '0-30', 455100, 0, 455100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 455100, 455100, '2021-05-31', '5460316199', 'BCA', 455100, 455100, 0, '', NULL, 4, '000709/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(499, '1041709045/024-DN', '1041709045/024/AJRI-DN/IV/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-13', '2021-05-13', 0, '0-30', 231984, 0, 231984, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 231984, 231984, '2021-05-11', '5460316199', 'BCA', 231984, 231984, 0, '', NULL, 1, '000718/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(500, '1011612100/010-DN', '1011612100/010/AJRI-DN/IV/2021', '1011612000100', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-13', '2021-05-04', 2, '0-30', 1127085, 0, 1127085, 338126, 0, 0, 0, 0, -6763, 0, 0, 0, 0, 0, 788960, 795722, '2021-05-06', '5460316199', 'BCA', 795722, 795722, 0, '', NULL, 21, '000719/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(501, '1011701103/008-DN', '1011701103/008/AJRI-DN/IV/2021', '1011701000103', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-13', '2021-05-04', 2, '0-30', 849460, 0, 849460, 254838, 0, 0, 0, 0, -5097, 0, 0, 0, 0, 0, 594622, 599719, '2021-05-06', '5460316199', 'BCA', 599719, 599719, 0, '', NULL, 8, '000720/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(502, '1011911192/004-DN', '1011911192/004/AJRI-DN/IV/2021', '1011911000192', 'PT BUMI INSURANCE BROKERS QQ PD BPR BKK CILACAP', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-13', '2021-05-13', 12, '0-30', 7500, 0, 7500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7500, 7500, '2021-05-25', '5460316199', 'BCA', 7500, 7500, 0, '', NULL, 1, '000723/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:17', '2021-07-13 09:29:17', NULL),
(503, '1031405016/007-DN', '1031405016/007/AJRI-DN/IV/2021', '1031405000016', 'PT. BPR BUMI PENDAWA RAHARJA', '', 'PT. BPR BUMI PENDAWA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-13', '2021-05-03', 0, '0-30', 31222, 0, 31222, 7806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23417, 23417, '2021-04-23', '5460316199', 'BCA', 23417, 23416, 1, '', NULL, 5, '000725/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(504, '1032104224/009-DN', '1032104224/009/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-14', '2021-05-05', 0, '0-30', 2559530, 0, 2559530, 255953, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2303577, 2303577, '2021-04-07', '1220101001278', 'KERTA RAHARJA', 2303577, 2303577, 0, '', NULL, 8, '000726/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(505, '1032104224/010-DN', '1032104224/010/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-14', '2021-05-05', 0, '0-30', 938150, 0, 938150, 93815, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 844335, 844335, '2021-04-07', '1220101001278', 'KERTA RAHARJA', 844335, 844335, 0, '', NULL, 10, '000727/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(506, '1032104224/011-DN', '1032104224/011/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-14', '2021-05-05', 0, '0-30', 8503570, 0, 8503570, 850357, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7653213, 7653213, '2021-04-08', '1220101001278', 'KERTA RAHARJA', 7653213, 7653213, 0, '', NULL, 69, '000728/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(507, '1032104224/012-DN', '1032104224/012/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-14', '2021-05-05', 0, '0-30', 5741880, 0, 5741880, 574188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5167692, 5167692, '2021-04-09', '1220101001278', 'KERTA RAHARJA', 5167692, 5167692, 0, '', NULL, 39, '000729/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(508, '1032104224/013-DN', '1032104224/013/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-14', '2021-05-05', 0, '0-30', 247400, 0, 247400, 24740, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222660, 222660, '2021-04-09', '1220101001278', 'KERTA RAHARJA', 222660, 222660, 0, '', NULL, 4, '000732/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(509, '1032104224/014-DN', '1032104224/014/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-14', '2021-05-05', 0, '0-30', 3366570, 0, 3366570, 336657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3029913, 3029913, '2021-04-09', '1220101001278', 'KERTA RAHARJA', 3029913, 3029913, 0, '', NULL, 39, '000733/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(510, '1012103231/008-DN', '1012103231/008/AJRI-DN/IV/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-04-14', '2021-05-26', 0, '0-30', 3410400, 0, 3410400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3410400, 3410400, '2021-05-11', '5460316199', 'BCA', 3410400, 3410400, 0, '', NULL, 1, '000731/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(511, '1012103231/007-DN', '1012103231/007/AJRI-DN/IV/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-04-14', '2021-05-26', 0, '0-30', 950000, 0, 950000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 950000, 950000, '2021-05-11', '5460316199', 'BCA', 950000, 950000, 0, '', NULL, 1, '000730/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(512, '1041406007/050-DN', '1041406007/050/AJRI-DN/IV/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-14', '2021-05-14', 0, '0-30', 17369, 0, 17369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17369, 17369, '2021-05-11', '5460316199', 'BCA', 17369, 17369, 0, '', NULL, 1, '000736/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(513, '1012103231/009-DN', '1012103231/009/AJRI-DN/IV/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-04-14', '2021-05-26', 0, '0-30', 6709500, 0, 6709500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6709500, 6709500, '2021-05-11', '5460316199', 'BCA', 6709500, 6709500, 0, '', NULL, 2, '000737/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(514, '1032103222/007-DN', '1032103222/007/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-04-14', '2021-05-26', 0, '0-30', 575000, 0, 575000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 575000, 575000, '2021-05-11', '5460316199', 'BCA', 575000, 575000, 0, '', NULL, 1, '000738/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(515, '1021804052/003-DN', '1021804052/003/AJRI-DN/IV/2021', '1021804000052', 'PT ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR DANAGUNG', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-14', '2021-05-14', 0, '0-30', 1102000, 0, 1102000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1102000, 1102000, '2021-05-11', '5460316199', 'BCA', 1102000, 1102000, 0, '', NULL, 4, '000739/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(516, '1041705043/001-DN', '1041705043/001/AJRI-DN/IV/2021', '1041705000043', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-14', '2021-05-14', 0, '0-30', 277020, 0, 277020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 277020, 277020, '2021-05-11', '5460316199', 'BCA', 277020, 277020, 0, '', NULL, 1, '000740/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(517, '1021406014/042-DN', '1021406014/042/AJRI-DN/IV/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-14', '2021-05-14', 0, '0-30', 31944963, 0, 31944963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31944963, 31944963, '2021-05-11', '5460316199', 'BCA', 31944963, 31944963, 0, '', NULL, 386, '000745/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(518, '1021705047/005-DN', '1021705047/005/AJRI-DN/IV/2021', '1021705000047', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-14', '2021-05-14', 0, '0-30', 712650, 0, 712650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 712650, 712650, '2021-05-11', '5460316199', 'BCA', 712650, 712650, 0, '', NULL, 3, '000746/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(519, '1041709045/025-DN', '1041709045/025/AJRI-DN/IV/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-14', '2021-05-14', 0, '0-30', 116441537, 0, 116441537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116441537, 116441537, '2021-05-11', '5460316199', 'BCA', 116441537, 116441537, 0, '', NULL, 1152, '000743/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(520, '1031510062/007-DN', '1031510062/007/AJRI-DN/IV/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-04-14', '2021-05-04', 0, '0-30', 274250, 0, 274250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 274250, 274250, '2021-04-26', '5460316199', 'BCA', 274250, 274250, 0, '', NULL, 4, '000747/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(521, '1031510062/008-DN', '1031510062/008/AJRI-DN/IV/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-04-14', '2021-05-04', 0, '0-30', 1206640, 0, 1206640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1206640, 1206640, '2021-04-26', '5460316199', 'BCA', 1206640, 1206640, 0, '', NULL, 5, '000748/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(522, '1031602068/010-DN', '1031602068/010/AJRI-DN/IV/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-05', 0, '0-30', 3482050, 0, 3482050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3482050, 3482050, '2021-05-05', '5460316199', 'BCA', 3482050, 3482050, 0, '', NULL, 32, '000751/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(523, '1031602068/011-DN', '1031602068/011/AJRI-DN/IV/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-05', 0, '0-30', 37200, 0, 37200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37200, 37200, '2021-05-05', '5460316199', 'BCA', 37200, 37200, 0, '', NULL, 2, '000752/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(524, '1041406007/051-DN', '1041406007/051/AJRI-DN/IV/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-15', '2021-05-15', 0, '0-30', 172968012, 4530000, 177498012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 177498012, 177498012, '2021-05-11', '5460316199', 'BCA', 177498012, 177498012, 0, '', NULL, 1503, '000750/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(525, '1022104088/003-DN', '1022104088/003/AJRI-DN/IV/2021', '1022104000088', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ INSTITUSI', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'JANGKAWARSA', '2021-04-16', '2021-05-16', 0, '0-30', 12615000, 0, 12615000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12615000, 12615000, '2021-05-11', '5460316199', 'BCA', 12615000, 12615000, 0, '', NULL, 826, '007921/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(526, '1022103087/004-DN', '1022103087/004/AJRI-DN/IV/2021', '1022103000087', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ PERUSAHAAN', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'EKAWARSA', '2021-04-16', '2021-05-16', 0, '0-30', 37019155, 0, 37019155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37019155, 37019155, '2021-05-11', '5460316199', 'BCA', 37019155, 37019155, 0, '', NULL, 3473, '007922/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(527, '1032103222/006-DN', '1032103222/006/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-04-09', '2021-05-21', 0, '0-30', 113520535, 0, 113520535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113520535, 113520535, '2021-05-11', '5460316199', 'BCA', 113520535, 113520535, 0, '', NULL, 618, '000685/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(528, '1041804047/001-DN', '1041804047/001/AJRI-DN/IV/2021', '1041804000047', 'PT ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR DANAGUNG', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-14', '2021-05-14', 0, '0-30', 1282500, 0, 1282500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1282500, 1282500, '2021-05-11', '5460316199', 'BCA', 1282500, 1282500, 0, '', NULL, 1, '000742/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(529, '1031602068/013-DN', '1031602068/013/AJRI-DN/IV/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-05-01', '2021-05-19', 23, '0-30', 31000, 0, 31000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31000, 31000, '2021-06-11', '5460316199', 'BCA', 31000, 31000, 0, '', NULL, 1, '000855/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(530, '1011612100/011-DN', '1011612100/011/AJRI-DN/IV/2021', '1011612000100', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-15', '2021-05-06', 0, '0-30', 263330, 0, 263330, 78999, 0, 0, 0, 0, -1580, 0, 0, 0, 0, 0, 184331, 185911, '2021-05-06', '5460316199', 'BCA', 185911, 185911, 0, '', NULL, 5, '000753/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(531, '1042012055/018-DN', '1042012055/018/AJRI-DN/IV/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-04-16', '2021-05-07', 0, '0-30', 987000, 0, 987000, 98700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 888300, 888300, '2021-05-07', '5460316199', 'BCA', 888300, 888300, 0, '', NULL, 1, '000784/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(532, '1011701103/009-DN', '1011701103/009/AJRI-DN/IV/2021', '1011701000103', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-15', '2021-05-06', 0, '0-30', 783750, 0, 783750, 235125, 0, 0, 0, 0, -4703, 0, 0, 0, 0, 0, 548625, 553328, '2021-05-06', '5460316199', 'BCA', 553328, 553328, 0, '', NULL, 1, '000755/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(533, '1031608093/007-DN', '1031608093/007/AJRI-DN/IV/2021', '1031608000093', 'PD.BPR BANK JOGJA', '', 'PD.BPR BANK JOGJA', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-05', 0, '0-30', 601642, 0, 601642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 601642, 601642, '2019-11-22', '0012152632', 'JOGJA', 601642, 601642, 0, '', NULL, 1, '000754/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(534, '1031701102/009-DN', '1031701102/009/AJRI-DN/IV/2021', '1031701000102', 'PT BPR ARTHA BERSAMA', '', 'PT BPR ARTHA BERSAMA', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-06', 0, '0-30', 1623500, 0, 1623500, 162350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1461150, 1461150, '2021-04-23', '5460316199', 'BCA', 1461150, 1461150, 0, '', NULL, 1, '000756/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(535, '1032104224/015-DN', '1032104224/015/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-06', 0, '0-30', 10830850, 0, 10830850, 1083085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9747765, 9747765, '2021-04-13', '1220101001278', 'KERTA RAHARJA', 9747765, 9747765, 0, '', NULL, 58, '000757/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(536, '1011907182/014-DN', '1011907182/014/AJRI-DN/IV/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-04-15', '2021-04-22', 4, '0-30', 4850000, 0, 4850000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4850000, 4850000, '2021-04-26', '5460316199', 'BCA', 4850000, 4850000, 0, '', NULL, 97, '000758/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(537, '1032005194/011-DN', '1032005194/011/AJRI-DN/IV/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-06', 0, '0-30', 953700, 0, 953700, 95370, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 858330, 858330, '2021-04-23', '0182271089618', 'Parung Panjang', 858330, 858330, 0, '', '2021-05-24', 1, '000760/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(538, '1011612098/008-DN', '1011612098/008/AJRI-DN/IV/2021', '1011612000098', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-15', '2021-05-06', 0, '0-30', 2266435, 0, 2266435, 679931, 0, 0, 0, 0, -13599, 0, 0, 0, 0, 0, 1586505, 1600103, '2021-05-06', '5460316199', 'BCA', 1600103, 1600103, 0, '', NULL, 22, '000761/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(539, '1011907182/015-DN', '1011907182/015/AJRI-DN/IV/2021', '1011907000182', 'YAYASAN SOSIAL SANTA MARIA', '', 'YAYASAN SOSIAL SANTA MARIA', 'RTL', 'EKAWARSA', '2021-04-15', '2021-04-22', 4, '0-30', 6100000, 0, 6100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6100000, 6100000, '2021-04-26', '5460316199', 'BCA', 6100000, 6100000, 0, '', NULL, 122, '000759/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(540, '1031906177/007-DN', '1031906177/007/AJRI-DN/IV/2021', '1031906000177', 'PT PINDAD PERSERO', '', 'PT PINDAD PERSERO', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-06', 0, '0-30', 5762920, 0, 5762920, 1152584, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4610336, 4610336, '2021-04-23', '5460316199', 'BCA', 4610336, 4610336, 0, '', NULL, 45, '000762/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(541, '1032007195/003-DN', '1032007195/003/AJRI-DN/IV/2021', '1032007000195', 'PT. BUMI INSURANCE BROKERS QQ PT LKM DEMAK SEJAHTERA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-15', 10, '0-30', 341420, 0, 341420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 341420, 341420, '2021-05-25', '5460316199', 'BCA', 341420, 341420, 0, '', NULL, 29, '000764/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(542, '1031609090/004-DN', '1031609090/004/AJRI-DN/IV/2021', '1031609000090', 'PT.BPR DIAN FARAQO GEMILANG', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-05', 1, '0-30', 2374980, 0, 2374980, 712494, 0, 0, 0, 0, -14250, 0, 0, 0, 0, 0, 1662486, 1676736, '2021-05-06', '5460316199', 'BCA', 1676736, 1676736, 0, '', NULL, 24, '000763/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(543, '1012103231/010-DN', '1012103231/010/AJRI-DN/IV/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-04-15', '2021-05-27', 0, '0-30', 64978314, 0, 64978314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64978314, 64978314, '2021-05-11', '5460316199', 'BCA', 64978314, 64978314, 0, '', NULL, 758, '000767/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(544, '1031510062/009-DN', '1031510062/009/AJRI-DN/IV/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-05', 0, '0-30', 591750, 0, 591750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 591750, 591750, '2021-04-26', '5460316199', 'BCA', 591750, 591750, 0, '', NULL, 1, '000771/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(545, '1032103222/008-DN', '1032103222/008/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-27', 0, '0-30', 126175313, 0, 126175313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126175313, 126175313, '2021-05-11', '5460316199', 'BCA', 126175313, 126175313, 0, '', NULL, 585, '000772/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(546, '1011711135/019-DN', '1011711135/019/AJRI-DN/IV/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-15', '2021-05-06', 0, '0-30', 578790, 0, 578790, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 578790, 578790, '2021-04-29', '5460316199', 'BCA', 578790, 578790, 0, '', '2021-05-06', 19, '000768/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(547, '1012102226/006-DN', '1012102226/006/AJRI-DN/IV/2021', '1012102000226', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-04-16', '2021-05-07', 0, '0-30', 176280, 0, 176280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176280, 176280, '2021-05-04', '5460316199', 'BCA', 176280, 176280, 0, '', '2021-05-25', 5, '000775/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(548, '1032102216/010-DN', '1032102216/010/AJRI-DN/IV/2021', '1032102000216', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BANK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-04-16', '2021-05-07', 0, '0-30', 7737860, 0, 7737860, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7737860, 7737860, '2021-05-04', '5460316199', 'BCA', 7737860, 7737860, 0, '', '2021-05-25', 16, '000774/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(549, '1021406014/043-DN', '1021406014/043/AJRI-DN/IV/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-04-16', '2021-05-16', 0, '0-30', 8433696, 0, 8433696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8433696, 8433696, '2021-05-11', '5460316199', 'BCA', 8433696, 8433696, 0, '', NULL, 70, '000773/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(550, '1041406007/052-DN', '1041406007/052/AJRI-DN/IV/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-16', '2021-05-16', 0, '0-30', 1074000, 0, 1074000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1074000, 1074000, '2021-05-11', '5460316199', 'BCA', 1074000, 1074000, 0, '', NULL, 1, '000776/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL);
INSERT INTO `migration_data` (`id`, `no_register`, `nomor_invoice`, `nomor_polis`, `nama_pemegang_polis`, `sub_polis`, `sub_pemegang_polis`, `jenis_produk`, `line_of_business`, `tanggal_terbit`, `jatuh_tempo`, `aging`, `klasifikasi_aging`, `premi_bruto`, `extra_premi`, `premi_gross`, `discount`, `komisi`, `fee_base`, `lain_lain`, `pajak_ppn`, `pajak_pph`, `pajak_lain`, `biaya_administrasi`, `biaya_polis`, `biaya_sertifikat`, `biaya_materai`, `premi_netto`, `jumlah_bayar`, `tanggal_pendapatan`, `no_rekening`, `bank`, `amount`, `pembayaran`, `piutang`, `status`, `pengajuan_komisi`, `jumlah_peserta`, `no_memo`, `period`, `created_at`, `updated_at`, `manajemen_fee`) VALUES
(551, '1012102221/007-DN', '1012102221/007/AJRI-DN/IV/2021', '1012102000221', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RTL', 'JANGKAWARSA', '2021-04-16', '2021-05-07', 0, '0-30', 2185373, 0, 2185373, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2185373, 2185373, '2021-05-04', '5460316199', 'BCA', 2185373, 2185373, 0, '', '2021-05-25', 42, '000777/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(552, '1032102217/009-DN', '1032102217/009/AJRI-DN/IV/2021', '1032102000217', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK KENDAL', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-04-16', '2021-05-07', 0, '0-30', 8516320, 0, 8516320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8516320, 8516320, '2021-05-04', '5460316199', 'BCA', 8516320, 8516320, 0, '', '2021-05-25', 29, '000778/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(553, '1031609089/006-DN', '1031609089/006/AJRI-DN/IV/2021', '1031609000089', 'BPR MURIA HARTA NUSANTARA', '', 'BPR MURIA HARTA NUSANTARA', 'RCL', 'JANGKAWARSA', '2021-04-16', '2021-05-07', 0, '0-30', 7721457, 0, 7721457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7721457, 7721457, '2021-04-23', '5460316199', 'BCA', 7721457, 7721457, 0, '', '2021-05-24', 20, '000782/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(554, '1032102213/007-DN', '1032102213/007/AJRI-DN/IV/2021', '1032102000213', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK PEMALANG', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-04-16', '2021-05-07', 0, '0-30', 702420, 0, 702420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 702420, 702420, '2021-05-04', '5460316199', 'BCA', 702420, 702420, 0, '', '2021-05-25', 3, '000780/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(555, '1032102212/008-DN', '1032102212/008/AJRI-DN/IV/2021', '1032102000212', 'PT MULTINIAGA INTERMEDIA PROTEKSI QQ PD BKK EROMOKO', '', 'PT MULTINIAGA INTERMEDIA PROTEKSI', 'RCL', 'JANGKAWARSA', '2021-04-16', '2021-05-07', 0, '0-30', 11149170, 0, 11149170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11149170, 11149170, '2021-05-04', '5460316199', 'BCA', 11149170, 11149170, 0, '', '2021-05-25', 108, '000779/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(556, '1032103220/001-DN', '1032103220/001/AJRI-DN/IV/2021', '1032103000220', 'PT BUMI INSURANCE BROKERS QQ PT BPR DHANA MITRATAMA BLORA', '', 'PT BUMI INSURANCE BROKERS', 'RCL', 'JANGKAWARSA', '2021-04-16', '2021-05-28', 0, '0-30', 402273, 0, 402273, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 402273, 512273, '2021-05-25', '5460316199', 'BCA', 512273, 512273, 0, '', NULL, 13, '000783/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(557, '1041709045/026-DN', '1041709045/026/AJRI-DN/IV/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-16', '2021-05-16', 0, '0-30', 2336700, 0, 2336700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2336700, 2336700, '2021-05-11', '5460316199', 'BCA', 2336700, 2336700, 0, '', NULL, 2, '000785/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(558, '1012102228/005-DN', '1012102228/005/AJRI-DN/IV/2021', '1012102000228', 'PT BUMI INSURANCE BROKERS QQ PT BPR ARTHA BUDAYA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-19', '2021-05-31', 0, '0-30', 70600, 0, 70600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70600, 70600, '2021-05-31', '5460316199', 'BCA', 70600, 70600, 0, '', NULL, 1, '000786/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(559, '1032103222/009-DN', '1032103222/009/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-04-19', '2021-05-31', 0, '0-30', 3046400, 0, 3046400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3046400, 3046400, '2021-05-11', '5460316199', 'BCA', 3046400, 3046400, 0, '', NULL, 2, '000787/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(560, '1032103222/010-DN', '1032103222/010/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-04-19', '2021-05-31', 0, '0-30', 152500, 221500, 374000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 374000, 374000, '2021-05-11', '5460316199', 'BCA', 374000, 374000, 0, '', NULL, 1, '000788/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(561, '1031510062/010-DN', '1031510062/010/AJRI-DN/IV/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-04-19', '2021-05-07', 12, '0-30', 750500, 0, 750500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 750500, 750500, '2021-05-19', '5460316199', 'BCA', 750500, 750500, 0, '', NULL, 3, '000790/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(562, '1032104224/016-DN', '1032104224/016/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-19', '2021-05-10', 0, '0-30', 1350910, 0, 1350910, 135091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1215819, 1215819, '2021-04-14', '1220101001278', 'KERTA RAHARJA', 1215819, 1215819, 0, '', NULL, 5, '000789/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:18', '2021-07-13 09:29:18', NULL),
(563, '101210215/007/-DN', '101210215/007/AJRI-DN/IV/2021', '1012101000215', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SINAR SARI MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-19', '2021-05-19', 12, '0-30', 74910, 0, 74910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74910, 74910, '2021-05-31', '5460316199', 'BCA', 74910, 74910, 0, '', NULL, 1, '000791/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(564, '1012008205/006-DN', '1012008205/006/AJRI-DN/IV/2021', '1012008000205', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI GRIYA MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-20', '2021-05-20', 11, '0-30', 307590, 0, 307590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 307590, 307590, '2021-05-31', '5460316199', 'BCA', 307590, 307590, 0, '', NULL, 3, '000792/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(565, '1012104233/001-DN', '1012104233/001/AJRI-DN/IV/2021', '1012104000233', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RTL', 'JANGKAWARSA', '2021-04-20', '2021-05-11', 0, '0-30', 1459200, 0, 1459200, 145920, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 1313280, 1423280, '2021-04-15', '1220101001278', 'KERTA RAHARJA', 1423280, 1423280, 0, '', NULL, 1, '000795/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(566, '1031905175/010-DN', '1031905175/010/AJRI-DN/IV/2021', '1031905000175', 'CAKRABUANA INSURANCE BROKER QQ PINANG ARTHA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-21', '2021-05-12', 34, '31-60', 1174500, 0, 1174500, 411075, 0, 0, 0, 0, -8222, 0, 0, 0, 0, 0, 763425, 771647, '2021-06-15', '5460316199', 'BCA', 771647, 771647, 0, '', NULL, 2, '000797/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(567, '1011801142/002-DN', '1011801142/002/AJRI-DN/IV/2021', '1011801000142', 'PT. BPR HARTA TANAMAS', '', 'PT. BPR HARTA TANAMAS', 'RTL', 'JANGKAWARSA', '2021-04-21', '2021-05-12', 9, '0-30', 1029000, 0, 1029000, 102900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 926100, 926100, '2021-05-21', '5460316199', 'BCA', 926100, 926100, 0, '', NULL, 1, '000798/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(568, '1041709045/027-DN', '1041709045/027/AJRI-DN/IV/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-21', '2021-05-21', 0, '0-30', 484735, 0, 484735, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 484735, 484735, '2021-05-11', '5460316199', 'BCA', 484735, 484735, 0, '', NULL, 16, '000799/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(569, '1032008197/002-DN', '1032008197/002/AJRI-DN/IV/2021', '1032008000197', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI LINGGA ARTHA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-21', '2021-05-21', 10, '0-30', 1589604, 0, 1589604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1589604, 1589604, '2021-05-31', '5460316199', 'BCA', 1589604, 1589604, 0, '', NULL, 7, '000800/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(570, '1012008204/004-DN', '1012008204/004/AJRI-DN/IV/2021', '1012008000204', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI LINGGA ARTHA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-21', '2021-05-21', 10, '0-30', 384770, 0, 384770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 384770, 384770, '2021-05-31', '5460316199', 'BCA', 384770, 384770, 0, '', NULL, 3, '000801/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(571, '1012103231/011-DN', '1012103231/011/AJRI-DN/IV/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-04-21', '2021-06-02', 0, '0-30', 5805000, 0, 5805000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5805000, 5805000, '2021-05-11', '5460316199', 'BCA', 5805000, 5805000, 0, '', NULL, 1, '000802/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(572, '1022008076/007-DN', '1022008076/007/AJRI-DN/IV/2021', '1022008000076', 'PT. ASURANSI ASEI INDONESIA QQ PT. BANK WOORI SAUDARA INDONESIA 1906. TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RTLND', 'JANGKAWARSA', '2021-04-22', '2021-05-13', 0, '0-30', 24175500, 0, 24175500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24175500, 24175500, '2021-05-10', '5460316199', 'BCA', 24175500, 24175500, 0, '', NULL, 79, '000803/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(573, '1022104088/004-DN', '1022104088/004/AJRI-DN/IV/2021', '1022104000088', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ INSTITUSI', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'JANGKAWARSA', '2021-04-23', '2021-05-23', 0, '0-30', 22500, 0, 22500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22500, 22500, '2021-05-11', '5460316199', 'BCA', 22500, 22500, 0, '', NULL, 1, '007922/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(574, '1011609094/011-DN', '1011609094/011/AJRI-DN/IV/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-04-22', '2021-05-12', 0, '0-30', 75000, 0, 75000, 22500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52500, 52500, '2021-04-29', '5460316199', 'BCA', 52500, 52500, 0, '', NULL, 1, '000804/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(575, '1011801140/002-DN', '1011801140/002/AJRI-DN/IV/2021', '1011801000140', 'PT BPR ARTHAKELOLA CAHAYATAMA', '', 'PT BPR ARTHAKELOLA CAHAYATAMA', 'RTL', 'JANGKAWARSA', '2021-04-06', '2021-04-27', 1, '0-30', 346096, 0, 346096, 34610, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 311486, 311486, '2021-04-28', '5460316199', 'BCA', 311486, 311486, 0, '', NULL, 5, '000661/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(576, '1032003190/006-DN', '1032003190/006/AJRI-DN/IV/2021', '1032003000190', 'KOPERASI PEGAWAI PEMERINTAH KAB. BANDUNG \"RAPEH RAPIH KERTA RAHARDJA\" (RRKR)', '', 'KOPERASI PEGAWAI PEMERINTAH KAB. BANDUNG \"RAPEH RAPIH KERTA RAHARDJA\" (RRKR)', 'RCL', 'JANGKAWARSA', '2021-04-13', '2021-05-04', 0, '0-30', 3521220, 0, 3521220, 352122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3169098, 3169098, '2021-04-28', '5460316199', 'BCA', 3169098, 3169098, 0, '', NULL, 91, '000717/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(577, '1011906181/015-DN', '1011906181/015/AJRI-DN/IV/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-14', '2021-05-26', 5, '0-30', 1016490, 0, 1016490, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1016490, 1016490, '2021-05-31', '5460316199', 'BCA', 1016490, 1016490, 0, '', NULL, 14, '000744/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(578, '1041609039/010-DN', '1041609039/010/AJRI-DN/IV/2021', '1041609000039', 'PT.ASURANSI ASEI INDONESIA', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-04-22', '2021-05-13', 8, '0-30', 622071000, 0, 622071000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 622071000, 622071000, '2021-05-21', '5460316199', 'BCA', 622071000, 622071000, 0, '', NULL, 612, '000805/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(579, '1031602068/012-DN', '1031602068/012/AJRI-DN/IV/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-04-22', '2021-05-12', 0, '0-30', 192700, 0, 192700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 192700, 192700, '2021-05-05', '5460316199', 'BCA', 192700, 192700, 0, '', NULL, 3, '000808/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(580, '1032103222/011-DN', '1032103222/011/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-04-22', '2021-06-03', 0, '0-30', 1372500, 0, 1372500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1372500, 1372500, '2021-05-11', '5460316199', 'BCA', 1372500, 1372500, 0, '', NULL, 1, '000809/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(581, '1032104224/017-DN', '1032104224/017/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-23', '2021-05-14', 0, '0-30', 51420, 0, 51420, 5142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46278, 46278, '2021-04-15', '1220101001278', 'KERTA RAHARJA', 46278, 46278, 0, '', NULL, 1, '000812/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(582, '1032104224/018-DN', '1032104224/018/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-23', '2021-05-14', 0, '0-30', 304000, 0, 304000, 30400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 273600, 273600, '2021-04-15', '1220101001278', 'KERTA RAHARJA', 273600, 273600, 0, '', NULL, 1, '000813/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(583, '1032103222/018-DN', '1032103222/018/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-10', '2021-06-21', 0, '0-30', 720614, 0, 720614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 720614, 720614, '2021-06-08', '5460316199', 'BCA', 720614, 720614, 0, '', NULL, 1, '000964/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(584, '1032103222/019-DN', '1032103222/019/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-10', '2021-06-21', 0, '0-30', 3150000, 0, 3150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3150000, 3150000, '2021-06-08', '5460316199', 'BCA', 3150000, 3150000, 0, '', NULL, 1, '000981/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(585, '1032103222/020-DN', '1032103222/020/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-11', '2021-06-22', 0, '0-30', 2050000, 0, 2050000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2050000, 2050000, '2021-06-08', '5460316199', 'BCA', 2050000, 2050000, 0, '', NULL, 1, '000996/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(586, '1012103231/014-DN', '1012103231/014/AJRI-DN/V/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-05-11', '2021-06-22', 0, '0-30', 570000, 0, 570000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 570000, 570000, '2021-06-08', '5460316199', 'BCA', 570000, 570000, 0, '', NULL, 1, '001003/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(587, '1011507056/004-DN', '1011507056/004/AJRI-DN/IV/2021', '1011507000056', 'LPD DP SINGAKERTA', '', 'LPD DP SINGAKERTA', 'RTL', 'EKAWARSA', '2021-04-23', '2021-05-13', 0, '0-30', 1009260, 0, 1009260, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1009260, 1009260, '2021-05-06', '5460316199', 'BCA', 1009260, 1009260, 0, '', NULL, 39, '000821/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(588, '1012101218/007-DN', '1012101218/007/AJRI-DN/IV/2021', '1012101000218', 'PT BUMI INSURANCE BROKERS QQ PD BPR ARTHA PERWIRA PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-23', '2021-06-04', 0, '0-30', 706000, 0, 706000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 706000, 706000, '2021-05-25', '5460316199', 'BCA', 706000, 706000, 0, '', NULL, 1, '000823/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(589, '1012101216/007-DN', '1012101216/007/AJRI-DN/IV/2021', '1012101000216', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-23', '2021-05-23', 8, '0-30', 7060, 0, 7060, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7060, 7060, '2021-05-31', '5460316199', 'BCA', 7060, 7060, 0, '', NULL, 1, '000824/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(590, '1032103222/012-DN', '1032103222/012/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-04-23', '2021-06-04', 0, '0-30', 2625000, 0, 2625000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2625000, 2625000, '2021-05-11', '5460316199', 'BCA', 2625000, 2625000, 0, '', NULL, 1, '000825/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(591, '1031701102/010-DN', '1031701102/010/AJRI-DN/IV/2021', '1031701000102', 'PT BPR ARTHA BERSAMA', '', 'PT BPR ARTHA BERSAMA', 'RCL', 'JANGKAWARSA', '2021-04-26', '2021-05-17', 0, '0-30', 148120, 0, 148120, 14812, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133308, 133308, '2021-04-29', '5460316199', 'BCA', 133308, 133308, 0, '', NULL, 4, '000827/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(592, '101210215/008/-DN', '101210215/008/AJRI-DN/IV/2021', '1012101000215', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SINAR SARI MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-26', '2021-05-26', 5, '0-30', 66000, 0, 66000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66000, 66000, '2021-05-31', '5460316199', 'BCA', 66000, 66000, 0, '', NULL, 1, '000829/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(593, '1011808166/008-DN', '1011808166/008/AJRI-DN/IV/2021', '1011808000166', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-04-26', '2021-05-17', 0, '0-30', 1152832, 0, 1152832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1152832, 1152832, '2020-04-30', '011103230102', 'Arta Kencana', 1152832, 1152832, 0, '', NULL, 19, '000834/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(594, '1011808166/007-DN', '1011808166/007/AJRI-DN/IV/2021', '1011808000166', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-04-26', '2021-05-17', 0, '0-30', 22484, 0, 22484, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22484, 22484, '2020-04-30', '011103230102', 'Arta Kencana', 22484, 22484, 0, '', NULL, 1, '000833/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(595, '1011809168/008-DN', '1011809168/008/AJRI-DN/IV/2021', '1011809000168', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-04-26', '2021-05-17', 0, '0-30', 3899818, 0, 3899818, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3899818, 3899818, '2020-05-14', '011103230102', 'Arta Kencana', 3899818, 3899818, 0, '', NULL, 78, '000836/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(596, '1011809168/007-DN', '1011809168/007/AJRI-DN/IV/2021', '1011809000168', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', '', 'KOPERASI BANK PERKREDITAN RAKYAT ARTA KENCANA', 'RTL', 'JANGKAWARSA', '2021-04-26', '2021-05-17', 0, '0-30', 883658, 0, 883658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 883658, 883658, '2020-05-15', '011103230102', 'Arta Kencana', 883658, 883658, 0, '', NULL, 14, '000835/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(597, '1032104224/019-DN', '1032104224/019/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-26', '2021-05-17', 0, '0-30', 7602150, 0, 7602150, 760215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6841935, 6841935, '2021-04-13', '1220101001278', 'KERTA RAHARJA', 6841935, 6841935, 0, '', NULL, 31, '000838/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(598, '1032104224/020-DN', '1032104224/020/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-26', '2021-05-17', 0, '0-30', 1081040, 0, 1081040, 108104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 972936, 972936, '2021-04-16', '1220101001278', 'KERTA RAHARJA', 972936, 972936, 0, '', NULL, 11, '000839/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(599, '1032104224/021-DN', '1032104224/021/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-04-26', '2021-05-17', 0, '0-30', 46320, 0, 46320, 4632, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41688, 41688, '2021-04-19', '1220101001278', 'KERTA RAHARJA', 41688, 41688, 0, '', NULL, 1, '000840/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(600, '1012009206/007-DN', '1012009206/007/AJRI-DN/IV/2021', '1012009000206', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-01', '2021-05-27', 4, '0-30', 528000, 0, 528000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 528000, 528000, '2021-05-31', '5460316199', 'BCA', 528000, 528000, 0, '', NULL, 2, '000845/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(601, '1032103222/013-DN', '1032103222/013/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-01', '2021-06-08', 0, '0-30', 3675000, 0, 3675000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3675000, 3675000, '2021-05-11', '5460316199', 'BCA', 3675000, 3675000, 0, '', NULL, 1, '000846/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(602, '1022103087/005-DN', '1022103087/005/AJRI-DN/IV/2021', '1022103000087', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ PERUSAHAAN', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'EKAWARSA', '2021-05-01', '2021-05-28', 0, '0-30', 7633530, 0, 7633530, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7633530, 7633530, '2021-05-11', '5460316199', 'BCA', 7633530, 7633530, 0, '', NULL, 638, '007925/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(603, '1022104092/001-DN', '1022104092/001/AJRI-DN/IV/2021', '1022104000092', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967 QQ RELAWAN', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTLND', 'JANGKAWARSA', '2021-05-01', '2021-05-29', 0, '0-30', 419800000, 0, 419800000, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 419800000, 419910000, '2021-05-11', '5460316199', 'BCA', 419910000, 419910000, 0, '', NULL, 2971, '007926/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(604, '1032104224/022-DN', '1032104224/022/AJRI-DN/IV/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-01', '2021-05-18', 0, '0-30', 2012260, 0, 2012260, 201226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1811034, 1811034, '2021-04-16', '1220101001278', 'KERTA RAHARJA', 1811034, 1811034, 0, '', NULL, 6, '000847/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(605, '1021406014/044-DN', '1021406014/044/AJRI-DN/IV/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-01', '2021-05-27', 0, '0-30', 258364, 0, 258364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 258364, 258364, '2021-05-11', '5460316199', 'BCA', 258364, 258364, 0, '', NULL, 5, '000848/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(606, '1032103222/014-DN', '1032103222/014/AJRI-DN/IV/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-01', '2021-06-09', 0, '0-30', 1281000, 0, 1281000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1281000, 1281000, '2021-05-11', '5460316199', 'BCA', 1281000, 1281000, 0, '', NULL, 1, '000850/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(607, '1031906177/008-DN', '1031906177/008/AJRI-DN/IV/2021', '1031906000177', 'PT PINDAD PERSERO', '', 'PT PINDAD PERSERO', 'RCL', 'JANGKAWARSA', '2021-05-01', '2021-05-19', 0, '0-30', 6862030, 0, 6862030, 1372406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5489624, 5489624, '2021-05-04', '5460316199', 'BCA', 5489624, 5489624, 0, '', NULL, 44, '000851/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(608, '1012104233/002-DN', '1012104233/002/AJRI-DN/IV/2021', '1012104000233', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RTL', 'JANGKAWARSA', '2021-05-01', '2021-05-20', 0, '0-30', 5735245, 0, 5735245, 573525, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5161721, 5161721, '2021-04-19', '1220101001278', 'KERTA RAHARJA', 5161721, 5161721, 0, '', NULL, 25, '000858/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(609, '1012103231/012-DN', '1012103231/012/AJRI-DN/IV/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-05-01', '2021-06-10', 0, '0-30', 4155200, 0, 4155200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4155200, 4155200, '2021-05-11', '5460316199', 'BCA', 4155200, 4155200, 0, '', NULL, 1, '000859/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(610, '1031603071/006-DN', '1031603071/006/AJRI-DN/IV/2021', '1031603000071', 'PT.BPR DUTA ARTHA SEJAHTERA', '', 'PT.BPR DUTA ARTHA SEJAHTERA', 'RCL', 'JANGKAWARSA', '2021-04-23', '2021-05-13', 0, '0-30', 264515, 0, 264515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 264515, 264515, '2021-05-04', '5460316199', 'BCA', 264515, 264515, 0, '', NULL, 2, '000820/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(611, '1031709125/007-DN', '1031709125/007/AJRI-DN/IV/2021', '1031709000125', 'PT BPR NBP 32 KARAWANG', '', 'PT BPR NBP 32 KARAWANG', 'RCL', 'JANGKAWARSA', '2021-04-26', '2021-05-17', 0, '0-30', 10223913, 0, 10223913, 2044783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8179130, 8179130, '2021-05-07', '5460316199', 'BCA', 8179130, 8179130, 0, '', NULL, 50, '000828/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(612, '1041406007/363-DN', '1041406007/363/AJRI-DN-E/IV/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-04-28', '2021-05-13', 0, '0-30', -4320850, 0, -4320850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1699594, -1699594, '2021-05-11', '5460316199', 'BCA', -1699594, -1699594, 0, '', NULL, 0, '', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(613, '1031602067/102-DN', '1031602067/102/AJRI-DN-E/IV/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-04-29', '2021-05-12', 5, '0-30', -3999700, 0, -3999700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3027773, -3027773, '2021-05-17', '5460316199', 'BCA', -3027773, -3027773, 0, '', NULL, 0, '', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(614, '1021307003/006-DN', '1021307003/006/AJRI-DN/IV/2021', '1041307000014', 'PT. ASURANSI MEGA PRATAMA (TETAP)', '', 'PT. ASURANSI MEGA PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-01', '2021-05-30', 0, '0-30', 2526965, 0, 2526965, 252697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2274269, 2274269, '2021-05-24', '5460316199', 'BCA', 2274269, 2274269, 0, '', '2021-06-02', 20, '000865/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(615, '1011609094/012-DN', '1011609094/012/AJRI-DN/IV/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-05-01', '2021-05-20', 15, '0-30', 300000, 0, 300000, 90000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 210000, 210000, '2021-06-04', '5460316199', 'BCA', 210000, 210000, 0, '', NULL, 3, '000866/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(616, '1042012055/020-DN', '1042012055/020/AJRI-DN/IV/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-05-01', '2021-05-21', 0, '0-30', 3208891, 0, 3208891, 320889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2888002, 2888002, '2021-05-07', '5460316199', 'BCA', 2888002, 2888002, 0, '', NULL, 2, '000864/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(617, '1011801139/005-DN', '1011801139/005/AJRI-DN/IV/2021', '1011801000139', 'PT. BPR LAKSANA BINA CIMANGGIS', '', 'PT. BPR LAKSANA BINA CIMANGGIS', 'RTL', 'JANGKAWARSA', '2021-05-01', '2021-05-21', 0, '0-30', 1263760, 0, 1263760, 126376, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1137384, 1137384, '2021-05-07', '5460316199', 'BCA', 1137384, 1137384, 0, '', NULL, 7, '000863/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(618, '101210215/009/-DN', '101210215/009/AJRI-DN/IV/2021', '1012101000215', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SINAR SARI MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-01', '2021-05-29', 2, '0-30', 889651, 0, 889651, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 889651, 889651, '2021-05-31', '5460316199', 'BCA', 889651, 889651, 0, '', NULL, 3, '000854/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(619, '1041709045/028-DN', '1041709045/028/AJRI-DN/IV/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-01', '2021-05-29', 0, '0-30', 1933200, 0, 1933200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1933200, 1933200, '2021-05-27', '5460316199', 'BCA', 1933200, 1933200, 0, '', NULL, 1, '000861/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(620, '1032103222/021-DN', '1032103222/021/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-17', '2021-06-28', 0, '0-30', 6066000, 0, 6066000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6066000, 6066000, '2021-06-08', '5460316199', 'BCA', 6066000, 6066000, 0, '', NULL, 3, '001008/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(621, '1032103222/022-DN', '1032103222/022/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-17', '2021-06-28', 0, '0-30', 3185000, 0, 3185000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3185000, 3185000, '2021-06-08', '5460316199', 'BCA', 3185000, 3185000, 0, '', NULL, 1, '001010/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(622, '1031801133/003-DN', '1031801133/003/AJRI-DN/IV/2021', '1031801000133', 'PT BPR METROPOLITAN PUTRA', '', 'PT BPR METROPOLITAN PUTRA', 'RCL', 'JANGKAWARSA', '2021-05-01', '2021-05-21', 0, '0-30', 3489000, 0, 3489000, 348900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3140100, 3140100, '2021-05-10', '5460316199', 'BCA', 3140100, 3140100, 0, '', NULL, 1, '000867/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(623, '1032009201/006-DN', '1032009201/006/AJRI-DN/IV/2021', '1032009000201', 'PT BUMI INSURANCE BROKERS QQ PT BPR GUNADHANA MITRASEMBADA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-01', '2021-05-30', 1, '0-30', 7777200, 0, 7777200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7777200, 7777200, '2021-05-31', '5460316199', 'BCA', 7777200, 7777200, 0, '', NULL, 6, '000869/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(624, '1041307003/015-DN', '1041307003/015/AJRI-DN/IV/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-01', '2021-05-30', 0, '0-30', 153744709, 0, 153744709, 15374471, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138370238, 138370238, '2021-05-24', '5460316199', 'BCA', 138370238, 138370238, 0, '', '2021-06-02', 518, '000868/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(625, '1041307003/016-DN', '1041307003/016/AJRI-DN/V/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-03', '2021-06-02', 0, '0-30', 4470700, 0, 4470700, 447070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4023630, 4023630, '2021-05-24', '5460316199', 'BCA', 4023630, 4023630, 0, '', '2021-06-02', 2, '000870/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(626, '1012104233/003-DN', '1012104233/003/AJRI-DN/V/2021', '1012104000233', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RTL', 'JANGKAWARSA', '2021-05-03', '2021-05-24', 0, '0-30', 1637350, 0, 1637350, 163735, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1473615, 1473615, '2021-04-20', '1220101001278', 'KERTA RAHARJA', 1473615, 1473615, 0, '', NULL, 10, '000872/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(627, '1032003191/004-DN', '1032003191/004/AJRI-DN/V/2021', '1032003000191', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', '', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', 'RCL', 'JANGKAWARSA', '2021-05-03', '2021-05-24', 0, '0-30', 1870740, 0, 1870740, 187074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1683666, 1683666, '2021-05-07', '5460316199', 'BCA', 1683666, 1683666, 0, '', NULL, 19, '000873/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(628, '1032104224/023-DN', '1032104224/023/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-03', '2021-05-24', 0, '0-30', 1128560, 0, 1128560, 112856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1015704, 1015704, '2021-04-20', '1220101001278', 'KERTA RAHARJA', 1015704, 1015704, 0, '', NULL, 8, '000874/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(629, '1031906177/009-DN', '1031906177/009/AJRI-DN/V/2021', '1031906000177', 'PT PINDAD PERSERO', '', 'PT PINDAD PERSERO', 'RCL', 'JANGKAWARSA', '2021-05-03', '2021-05-24', 0, '0-30', 4742680, 0, 4742680, 948536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3794144, 3794144, '2021-05-21', '5460316199', 'BCA', 3794144, 3794144, 0, '', NULL, 16, '000876/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(630, '1032104224/024-DN', '1032104224/024/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-03', '2021-05-24', 0, '0-30', 3592250, 0, 3592250, 359225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3233025, 3233025, '2021-04-21', '1220101001278', 'KERTA RAHARJA', 3233025, 3233025, 0, '', NULL, 31, '000875/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(631, '1032104224/025-DN', '1032104224/025/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-03', '2021-05-24', 0, '0-30', 522790, 0, 522790, 52279, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 470511, 470511, '2021-04-21', '1220101001278', 'KERTA RAHARJA', 470511, 470511, 0, '', NULL, 11, '000877/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(632, '1032003191/005-DN', '1032003191/005/AJRI-DN/V/2021', '1032003000191', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', '', 'KOPEG DINAS KESEHATAN KABUPATEN BANDUNG', 'RCL', 'JANGKAWARSA', '2021-05-03', '2021-05-24', 0, '0-30', 126000, 0, 126000, 12600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113400, 113400, '2021-05-07', '5460316199', 'BCA', 113400, 190890, -77490, '', NULL, 2, '000878/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(633, '1032104224/026-DN', '1032104224/026/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-03', '2021-05-24', 0, '0-30', 1774440, 0, 1774440, 177444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1596996, 1596996, '2021-04-21', '1220101001278', 'KERTA RAHARJA', 1596996, 1596996, 0, '', NULL, 17, '000879/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(634, '1042012055/022-DN', '1042012055/022/AJRI-DN/V/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-05-03', '2021-05-24', 17, '0-30', 46000, 0, 46000, 4600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41400, 41400, '2021-06-10', '5460316199', 'BCA', 41400, 41400, 0, '', NULL, 1, '000881/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(635, '1041307003/017-DN', '1041307003/017/AJRI-DN/V/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-03', '2021-06-02', 0, '0-30', 17329875, 0, 17329875, 1732988, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15596888, 15596888, '2021-05-24', '5460316199', 'BCA', 15596888, 15596888, 0, '', '2021-06-02', 78, '000882/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(636, '1041307003/018-DN', '1041307003/018/AJRI-DN/V/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-03', '2021-06-02', 0, '0-30', 952117, 0, 952117, 95212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 856905, 856905, '2021-05-24', '5460316199', 'BCA', 856905, 856905, 0, '', '2021-06-02', 1, '000885/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(637, '1031602072/020-DN', '1031602072/020/AJRI-DN/V/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-05-03', '2021-05-21', 0, '0-30', 5666990, 0, 5666990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5666990, 5666990, '2021-05-11', '5460316199', 'BCA', 5666990, 5666990, 0, '', NULL, 4, '000886/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(638, '1031711127/004-DN', '1031711127/004/AJRI-DN/V/2021', '1031711000127', 'BUKP WIROBRAJAN', '', 'BUKP WIROBRAJAN', 'RCL', 'JANGKAWARSA', '2021-05-03', '2021-05-24', 0, '0-30', 450560, 0, 450560, 90112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 360448, 360448, '2021-05-10', '5460316199', 'BCA', 360448, 360448, 0, '', NULL, 27, '000887/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(639, '1032103223/002-DN', '1032103223/002/AJRI-DN/V/2021', '1032103000223', 'PT BPR MUARA SUMBER DANA', '', 'PT BPR MUARA SUMBER DANA', 'RCL', 'JANGKAWARSA', '2021-06-01', '2021-06-21', 0, '0-30', 4233200, 0, 4233200, 423320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3809880, 3809880, '2021-06-08', '5460316199', 'BCA', 3809880, 3809880, 0, '', NULL, 2, '001121/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(640, '1031510062/011-DN', '1031510062/011/AJRI-DN/V/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-05-04', '2021-05-24', 0, '0-30', 1006500, 0, 1006500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1006500, 1006500, '2021-05-11', '5460316199', 'BCA', 1006500, 1006500, 0, '', NULL, 4, '000890/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(641, '1011710134/006-DN', '1011710134/006/AJRI-DN/V/2021', '1011710000134', 'PT. BPR BANTORU PERINTIS', '', 'PT. BPR BANTORU PERINTIS', 'RTL', 'JANGKAWARSA', '2021-05-04', '2021-05-25', 0, '0-30', 746160, 0, 746160, 74616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 671544, 671544, '2021-05-10', '5460316199', 'BCA', 671544, 671544, 0, '', NULL, 3, '000891/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(642, '1012102228/006-DN', '1012102228/006/AJRI-DN/V/2021', '1012102000228', 'PT BUMI INSURANCE BROKERS QQ PT BPR ARTHA BUDAYA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-04', '2021-06-15', 0, '0-30', 187090, 0, 187090, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 187090, 187090, '2021-05-31', '5460316199', 'BCA', 187090, 187090, 0, '', NULL, 3, '000892/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(643, '1032101207/004-DN', '1032101207/004/AJRI-DN/V/2021', '1032101000207', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-04', '2021-06-03', 0, '0-30', 382960, 0, 382960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 382960, 382960, '2021-05-31', '5460316199', 'BCA', 382960, 382960, 0, '', NULL, 7, '000893/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(644, '1032102218/002-DN', '1032102218/002/AJRI-DN/V/2021', '1032102000218', 'PT BUMI INSURANCE BROKERS QQ KOPERASI KARYAWAN NALAR PASUPATI KEMAKMURAN INSANI', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-04', '2021-06-03', 0, '0-30', 68250, 0, 68250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68250, 68250, '2021-05-31', '5460316199', 'BCA', 68250, 68250, 0, '', NULL, 1, '000894/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:19', '2021-07-13 09:29:19', NULL),
(645, '1011612098/009-DN', '1011612098/009/AJRI-DN/V/2021', '1011612000098', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-04', '2021-05-25', 9, '0-30', 2178780, 0, 2178780, 653634, 0, 0, 0, 0, -13073, 0, 0, 0, 0, 0, 1525146, 1538219, '2021-06-03', '5460316199', 'BCA', 1538219, 1538219, 0, '', NULL, 19, '000895/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(646, '1031701099/004-DN', '1031701099/004/AJRI-DN/V/2021', '1031701000099', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-04', '2021-05-25', 9, '0-30', 1350000, 0, 1350000, 405000, 0, 0, 0, 0, -8100, 0, 0, 0, 0, 0, 945000, 953100, '2021-06-03', '5460316199', 'BCA', 953100, 953100, 0, '', NULL, 1, '000896/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(647, '1012101216/008-DN', '1012101216/008/AJRI-DN/V/2021', '1012101000216', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-04', '2021-06-03', 0, '0-30', 44125, 0, 44125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44125, 44125, '2021-05-31', '5460316199', 'BCA', 44125, 44125, 0, '', NULL, 5, '000899/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(648, '1012103230/006-DN', '1012103230/006/AJRI-DN/V/2021', '1012103000230', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SARI JAYA SADHANA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-04', '2021-06-15', 0, '0-30', 806024, 0, 806024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 806024, 806024, '2021-05-31', '5460316199', 'BCA', 806024, 806024, 0, '', NULL, 9, '000900/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(649, '1031905175/011-DN', '1031905175/011/AJRI-DN/V/2021', '1031905000175', 'CAKRABUANA INSURANCE BROKER QQ PINANG ARTHA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-04', '2021-05-25', 9, '0-30', 1020000, 0, 1020000, 357000, 0, 0, 0, 0, -7140, 0, 0, 0, 0, 0, 663000, 670140, '2021-06-03', '5460316199', 'BCA', 670140, 670140, 0, '', NULL, 8, '000898/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(650, '1032005194/012-DN', '1032005194/012/AJRI-DN/V/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-05-04', '2021-05-25', 0, '0-30', 787500, 0, 787500, 78750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 708750, 708750, '2021-05-11', '0182271089618', 'Parung Panjang', 708750, 708750, 0, '', '2021-05-24', 1, '000901/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(651, '1032005194/013-DN', '1032005194/013/AJRI-DN/V/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-05-04', '2021-05-25', 0, '0-30', 315000, 0, 315000, 31500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 283500, 283500, '2021-05-11', '0182271089618', 'Parung Panjang', 283500, 283500, 0, '', '2021-05-24', 1, '000902/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(652, '1011704120/007-DN', '1011704120/007/AJRI-DN/V/2021', '1011704000120', 'PT BPR SUKMA KEMANG AGUNG', '', 'PT BPR SUKMA KEMANG AGUNG', 'RTL', 'JANGKAWARSA', '2021-05-04', '2021-05-25', 0, '0-30', 26868665, 199085, 27067750, 2686867, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24380884, 24380884, '2021-05-11', '5460316199', 'BCA', 24380884, 24380884, 0, '', '2021-05-25', 46, '000905/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(653, '1032008196/005-DN', '1032008196/005/AJRI-DN/V/2021', '1032008000196', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-05', '2021-06-04', 0, '0-30', 800000, 584000, 1384000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1384000, 1384000, '2021-05-31', '5460316199', 'BCA', 1384000, 1384000, 0, '', NULL, 1, '000907/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(654, '1011701103/010-DN', '1011701103/010/AJRI-DN/V/2021', '1011701000103', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 8, '0-30', 1213630, 0, 1213630, 364089, 0, 0, 0, 0, -7282, 0, 0, 0, 0, 0, 849541, 856823, '2021-06-03', '5460316199', 'BCA', 856823, 856823, 0, '', NULL, 12, '000908/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(655, '1032104224/027-DN', '1032104224/027/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 0, '0-30', 3788660, 0, 3788660, 378866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3409794, 3409794, '2021-04-21', '1220101001278', 'KERTA RAHARJA', 3409794, 3409794, 0, '', NULL, 38, '000909/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(656, '1011612100/012-DN', '1011612100/012/AJRI-DN/V/2021', '1011612000100', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 8, '0-30', 1872430, 0, 1872430, 561729, 0, 0, 0, 0, -11235, 0, 0, 0, 0, 0, 1310701, 1321936, '2021-06-03', '5460316199', 'BCA', 1321936, 1321936, 0, '', NULL, 16, '000910/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(657, '1012009206/008-DN', '1012009206/008/AJRI-DN/V/2021', '1012009000206', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-05', '2021-06-04', 0, '0-30', 4138993, 0, 4138993, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4138993, 4138993, '2021-05-31', '5460316199', 'BCA', 4138993, 4138993, 0, '', NULL, 10, '000913/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(658, '1032008196/006-DN', '1032008196/006/AJRI-DN/V/2021', '1032008000196', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-05', '2021-06-04', 0, '0-30', 1200000, 0, 1200000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1200000, 1200000, '2021-05-31', '5460316199', 'BCA', 1200000, 1200000, 0, '', NULL, 1, '000911/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(659, '1011612098/011-DN', '1011612098/011/AJRI-DN/V/2021', '1011612000098', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-06-01', '2021-06-17', 0, '0-30', 442340, 0, 442340, 132702, 0, 0, 0, 0, -2654, 0, 0, 0, 0, 0, 309638, 312292, '2021-06-15', '5460316199', 'BCA', 312292, 312292, 0, '', NULL, 8, '001099/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(660, '1032104224/028-DN', '1032104224/028/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 0, '0-30', 6589600, 0, 6589600, 658960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5930640, 5930640, '2021-04-21', '1220101001278', 'KERTA RAHARJA', 5930640, 5930640, 0, '', NULL, 50, '000914/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(661, '1042012055/023-DN', '1042012055/023/AJRI-DN/V/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 15, '0-30', 79200, 0, 79200, 7920, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71280, 71280, '2021-06-10', '5460316199', 'BCA', 71280, 71280, 0, '', NULL, 1, '000915/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL);
INSERT INTO `migration_data` (`id`, `no_register`, `nomor_invoice`, `nomor_polis`, `nama_pemegang_polis`, `sub_polis`, `sub_pemegang_polis`, `jenis_produk`, `line_of_business`, `tanggal_terbit`, `jatuh_tempo`, `aging`, `klasifikasi_aging`, `premi_bruto`, `extra_premi`, `premi_gross`, `discount`, `komisi`, `fee_base`, `lain_lain`, `pajak_ppn`, `pajak_pph`, `pajak_lain`, `biaya_administrasi`, `biaya_polis`, `biaya_sertifikat`, `biaya_materai`, `premi_netto`, `jumlah_bayar`, `tanggal_pendapatan`, `no_rekening`, `bank`, `amount`, `pembayaran`, `piutang`, `status`, `pengajuan_komisi`, `jumlah_peserta`, `no_memo`, `period`, `created_at`, `updated_at`, `manajemen_fee`) VALUES
(662, '1042012055/024-DN', '1042012055/024/AJRI-DN/V/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 15, '0-30', 89750, 0, 89750, 8975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80775, 80775, '2021-06-10', '5460316199', 'BCA', 80775, 80775, 0, '', NULL, 1, '000917/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(663, '1032104224/029-DN', '1032104224/029/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 0, '0-30', 2498570, 0, 2498570, 249857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2248713, 2248713, '2021-04-21', '1220101001278', 'KERTA RAHARJA', 2248713, 2248713, 0, '', NULL, 10, '000916/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(664, '1032104224/030-DN', '1032104224/030/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 0, '0-30', 5097925, 0, 5097925, 509793, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4588133, 4588133, '2021-04-21', '1220101001278', 'KERTA RAHARJA', 4588133, 4588133, 0, '', NULL, 44, '000918/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(665, '1041712046/014-DN', '1041712046/014/AJRI-DN/V/2021', '1041712000046', 'PT ASURANSI ASEI INDONESIA QQ PT BANK WOORI SAUDARA INDONESIA 1906, TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-05-18', '2021-06-08', 1, '0-30', 226087350, 0, 226087350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 226087350, 226087350, '2021-06-09', '5460316199', 'BCA', 226087350, 226087350, 0, '', NULL, 45, '001023/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(666, '1032104224/031-DN', '1032104224/031/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 0, '0-30', 8121435, 0, 8121435, 812144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7309292, 7309292, '2021-04-21', '1220101001278', 'KERTA RAHARJA', 7309292, 7309292, 0, '', NULL, 30, '000920/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(667, '1042012055/025-DN', '1042012055/025/AJRI-DN/V/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 15, '0-30', 107700, 0, 107700, 10770, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96930, 96930, '2021-06-10', '5460316199', 'BCA', 96930, 96930, 0, '', NULL, 1, '000921/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(668, '1042012055/026-DN', '1042012055/026/AJRI-DN/V/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 21, '0-30', 1256500, 0, 1256500, 125650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1130850, 1130850, '2021-06-16', '5460316199', 'BCA', 1130850, 1130850, 0, '', NULL, 1, '000923/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(669, '1031602072/021-DN', '1031602072/021/AJRI-DN/V/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-05-05', '2021-05-25', 0, '0-30', 1120220, 0, 1120220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1120220, 1120220, '2021-05-20', '5460316199', 'BCA', 1120220, 1120220, 0, '', NULL, 2, '000924/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(670, '1042012055/027-DN', '1042012055/027/AJRI-DN/V/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 15, '0-30', 92700, 0, 92700, 9270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83430, 83430, '2021-06-10', '5460316199', 'BCA', 83430, 83430, 0, '', NULL, 1, '000925/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(671, '1031803149/005-DN', '1031803149/005/AJRI-DN/V/2021', '1031803000149', 'BUKP NGAMPILAN', '', 'BUKP NGAMPILAN', 'RCL', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 5, '0-30', 424255, 0, 424255, 84851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 339404, 339404, '2021-05-31', '5460316199', 'BCA', 339404, 339404, 0, '', NULL, 23, '000926/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(672, '1021406014/045-DN', '1021406014/045/AJRI-DN/V/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-05', '2021-06-04', 0, '0-30', 519350, 0, 519350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 519350, 519350, '2021-05-27', '5460316199', 'BCA', 519350, 519350, 0, '', NULL, 1, '000927/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(673, '1012008205/007-DN', '1012008205/007/AJRI-DN/V/2021', '1012008000205', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI GRIYA MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-05', '2021-06-04', 0, '0-30', 559485, 0, 559485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 559485, 559485, '2021-05-31', '5460316199', 'BCA', 559485, 559485, 0, '', NULL, 12, '000928/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(674, '1031510062/012-DN', '1031510062/012/AJRI-DN/V/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-05-06', '2021-05-26', 0, '0-30', 290000, 0, 290000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 290000, 290000, '2021-05-19', '5460316199', 'BCA', 290000, 290000, 0, '', NULL, 3, '000930/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(675, '1012104233/004-DN', '1012104233/004/AJRI-DN/V/2021', '1012104000233', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RTL', 'JANGKAWARSA', '2021-05-06', '2021-05-27', 0, '0-30', 1090550, 0, 1090550, 109055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 981495, 981495, '2021-04-22', '1220101001278', 'KERTA RAHARJA', 981495, 981495, 0, '', NULL, 11, '000933/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(676, '1041709045/029-DN', '1041709045/029/AJRI-DN/V/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-06', '2021-06-05', 0, '0-30', 57224, 0, 57224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57224, 57224, '2021-05-27', '5460316199', 'BCA', 57224, 57224, 0, '', NULL, 3, '000931/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(677, '1041709045/030-DN', '1041709045/030/AJRI-DN/V/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-06', '2021-06-05', 0, '0-30', 812160, 0, 812160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 812160, 812160, '2021-05-27', '5460316199', 'BCA', 812160, 812160, 0, '', NULL, 1, '000932/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(678, '1042012055/028-DN', '1042012055/028/AJRI-DN/V/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-05-06', '2021-05-27', 14, '0-30', 1645000, 0, 1645000, 164500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1480500, 1480500, '2021-06-10', '5460316199', 'BCA', 1480500, 1480500, 0, '', NULL, 1, '000935/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(679, '1032104224/032-DN', '1032104224/032/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-06', '2021-05-27', 0, '0-30', 11741400, 0, 11741400, 1174140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10567260, 10567260, '2021-04-23', '1220101001278', 'KERTA RAHARJA', 10567260, 10567260, 0, '', NULL, 50, '000939/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(680, '1011612100/014-DN', '1011612100/014/AJRI-DN/V/2021', '1011612000100', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-06-01', '2021-06-17', 0, '0-30', 325955, 0, 325955, 97787, 0, 0, 0, 0, -1956, 0, 0, 0, 0, 0, 228169, 230124, '2021-06-15', '5460316199', 'BCA', 230124, 230124, 0, '', NULL, 8, '001102/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(681, '1041406007/053-DN', '1041406007/053/AJRI-DN/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-06', '2021-06-05', 0, '0-30', 38850, 0, 38850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38850, 38850, '2021-05-27', '5460316199', 'BCA', 38850, 38850, 0, '', NULL, 1, '000942/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(682, '1041406007/054-DN', '1041406007/054/AJRI-DN/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-06', '2021-06-05', 0, '0-30', 259658, 0, 259658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 259658, 259658, '2021-05-27', '5460316199', 'BCA', 259658, 259658, 0, '', NULL, 9, '000943/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(683, '1021406014/046-DN', '1021406014/046/AJRI-DN/V/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-07', '2021-06-06', 0, '0-30', 2636700, 0, 2636700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2636700, 2636700, '2021-05-27', '5460316199', 'BCA', 2636700, 2636700, 0, '', NULL, 2, '000945/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(684, '1031510062/013-DN', '1031510062/013/AJRI-DN/V/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-05-07', '2021-05-27', 0, '0-30', 804750, 0, 804750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 804750, 804750, '2021-05-19', '5460316199', 'BCA', 804750, 804750, 0, '', NULL, 11, '000948/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(685, '1031602067/012-DN', '1031602067/012/AJRI-DN/V/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-05-07', '2021-05-27', 15, '0-30', 12691400, 0, 12691400, 2855565, 0, 0, 0, 285557, -57111, 0, 0, 0, 0, 10000, 9835835, 9617390, '2021-06-11', '5460316199', 'BCA', 9617390, 9617390, 0, '', NULL, 2, '000949/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(686, '1012104233/005-DN', '1012104233/005/AJRI-DN/V/2021', '1012104000233', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RTL', 'JANGKAWARSA', '2021-05-07', '2021-05-28', 0, '0-30', 3774260, 0, 3774260, 377426, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3396834, 3396834, '2021-04-24', '1220101001278', 'KERTA RAHARJA', 3396834, 3396834, 0, '', NULL, 24, '000950/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(687, '1032104224/033-DN', '1032104224/033/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-07', '2021-05-28', 0, '0-30', 970260, 0, 970260, 97026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 873234, 873234, '2021-04-24', '1220101001278', 'KERTA RAHARJA', 873234, 873234, 0, '', NULL, 6, '000951/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(688, '1032104224/034-DN', '1032104224/034/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-07', '2021-05-28', 0, '0-30', 147000, 0, 147000, 14700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132300, 132300, '2021-04-24', '1220101001278', 'KERTA RAHARJA', 132300, 132300, 0, '', NULL, 1, '000952/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(689, '1032104224/035-DN', '1032104224/035/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-07', '2021-05-28', 0, '0-30', 5945471, 0, 5945471, 594547, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5350924, 5350924, '2021-04-26', '1220101001278', 'KERTA RAHARJA', 5350924, 5350924, 0, '', NULL, 26, '000953/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(690, '1011809167/005-DN', '1011809167/005/AJRI-DN/III/2021', '1011809000167', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK PURWOKERTO', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-15', '2021-04-14', 57, '31-60', 244350, 0, 244350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244350, 244350, '2021-06-10', '5460316199', 'BCA', 244350, 244350, 0, '', NULL, 6, '000493/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(691, '1011809167/006-DN', '1011809167/006/AJRI-DN/III/2021', '1011809000167', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK PURWOKERTO', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-15', '2021-04-14', 57, '31-60', 530250, 0, 530250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 530250, 530250, '2021-06-10', '5460316199', 'BCA', 530250, 530250, 0, '', NULL, 11, '000494/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(692, '1032103220/002-DN', '1032103220/002/AJRI-DN/V/2021', '1032103000220', 'PT BUMI INSURANCE BROKERS QQ PT BPR DHANA MITRATAMA BLORA', '', 'PT BUMI INSURANCE BROKERS', 'RCL', 'JANGKAWARSA', '2021-05-07', '2021-06-18', 0, '0-30', 1717612, 0, 1717612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1717612, 1717612, '2021-05-25', '5460316199', 'BCA', 1717612, 1717612, 0, '', NULL, 14, '000957/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(693, '1042012055/030-DN', '1042012055/030/AJRI-DN/V/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-05-10', '2021-05-31', 10, '0-30', 36200, 0, 36200, 3620, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32580, 32580, '2021-06-10', '5460316199', 'BCA', 32580, 32580, 0, '', NULL, 1, '000963/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(694, '1011809167/009-DN', '1011809167/009/AJRI-DN/III/2021', '1011809000167', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK PURWOKERTO', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-18', '2021-04-17', 54, '31-60', 4420, 0, 4420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4420, 4420, '2021-06-10', '5460316199', 'BCA', 4420, 4420, 0, '', NULL, 1, '000542/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(695, '1042012055/031-DN', '1042012055/031/AJRI-DN/V/2021', '1042012000055', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT KSK INSURANCE INDONESIA', 'RCL ND', 'JANGKAWARSA', '2021-05-10', '2021-05-31', 10, '0-30', 170745, 0, 170745, 17075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 153671, 153671, '2021-06-10', '5460316199', 'BCA', 153671, 153671, 0, '', NULL, 1, '000965/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(696, '1032103220/003-DN', '1032103220/003/AJRI-DN/V/2021', '1032103000220', 'PT BUMI INSURANCE BROKERS QQ PT BPR DHANA MITRATAMA BLORA', '', 'PT BUMI INSURANCE BROKERS', 'RCL', 'JANGKAWARSA', '2021-05-10', '2021-06-21', 0, '0-30', 705150, 0, 705150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 705150, 705150, '2021-05-25', '5460316199', 'BCA', 705150, 705150, 0, '', NULL, 11, '000967/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(697, '1011705126/008-DN', '1011705126/008/AJRI-DN/III/2021', '1011705000126', 'PT. BUMI INSURANCE BROKER QQ PD BPR BKK PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-03-15', '2021-04-14', 57, '31-60', 267750, 0, 267750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 267750, 267750, '2021-06-10', '5460316199', 'BCA', 267750, 267750, 0, '', NULL, 1, '000497/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(698, '1022008076/009-DN', '1022008076/009/AJRI-DN/V/2021', '1022008000076', 'PT. ASURANSI ASEI INDONESIA QQ PT. BANK WOORI SAUDARA INDONESIA 1906. TBK', '', 'PT. ASURANSI ASEI INDONESIA', 'RTLND', 'JANGKAWARSA', '2021-05-27', '2021-06-17', 0, '0-30', 32492250, 0, 32492250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32492250, 32492250, '2021-06-16', '5460316199', 'BCA', 32492250, 32492250, 0, '', NULL, 98, '001103/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(699, '1012101218/008-DN', '1012101218/008/AJRI-DN/V/2021', '1012101000218', 'PT BUMI INSURANCE BROKERS QQ PD BPR ARTHA PERWIRA PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-10', '2021-06-21', 0, '0-30', 2233068, 0, 2233068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2233068, 2233068, '2021-05-25', '5460316199', 'BCA', 2233068, 2233068, 0, '', NULL, 10, '000972/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(700, '1012102228/007-DN', '1012102228/007/AJRI-DN/V/2021', '1012102000228', 'PT BUMI INSURANCE BROKERS QQ PT BPR ARTHA BUDAYA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-10', '2021-06-21', 1, '0-30', 105900, 0, 105900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105900, 105900, '2021-06-22', '5460316199', 'BCA', 105900, 105900, 0, '', NULL, 1, '000976/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(701, '1012001193/005-DN', '1012001193/005/AJRI-DN/V/2021', '1012001000193', 'PT. PIALANG ASURANSI INDOTEKNO', '', 'PT. PIALANG ASURANSI INDOTEKNO', 'RTL', 'EKAWARSA', '2021-05-07', '2021-05-28', 0, '0-30', 714600, 0, 714600, 214380, 0, 0, 0, 21438, -4288, 0, 0, 0, 0, 0, 500220, 483070, '2021-05-27', '5460316199', 'BCA', 483070, 483070, 0, '', NULL, 7, '000954/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(702, '1032101211/002-DN', '1032101211/002/AJRI-DN/V/2021', '1032101000211', 'PT BUMI INSURANCE BROKERS QQ PD BPR ARTHA PERWIRA PURBALINGGA', '', 'PT BUMI INSURANCE BROKERS', 'RCL', 'JANGKAWARSA', '2021-05-10', '2021-06-09', 0, '0-30', 1643360, 0, 1643360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1643360, 1643360, '2021-05-25', '5460316199', 'BCA', 1643360, 1643360, 0, '', NULL, 12, '000979/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(703, '1031802145/001-DN', '1031802145/001/AJRI-DN/III/2021', '1031802000145', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK KAB PEKALONGAN', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-03-16', '2021-04-06', 65, '61-90', 33740, 0, 33740, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33740, 33740, '2021-06-10', '5460316199', 'BCA', 33740, 33740, 0, '', NULL, 5, '000524/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(704, '1031802145/002-DN', '1031802145/002/AJRI-DN/IV/2021', '1031802000145', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK KAB PEKALONGAN', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-04-12', '2021-05-03', 38, '31-60', 82410, 0, 82410, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82410, 82410, '2021-06-10', '5460316199', 'BCA', 82410, 82410, 0, '', NULL, 7, '000699/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(705, '1041707044/004-DN', '1041707044/004/AJRI-DN/V/2021', '1041707000044', 'PT. ASURANSI HARTA AMAN PRATAMA. Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-10', '2021-06-09', 0, '0-30', 3425619, 0, 3425619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3425619, 3425619, '2021-05-27', '5460316199', 'BCA', 3425619, 3425619, 0, '', NULL, 17, '000982/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(706, '1041406007/055-DN', '1041406007/055/AJRI-DN/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-11', '2021-06-10', 0, '0-30', 96803183, 0, 96803183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96803183, 96803183, '2021-06-10', '5460316199', 'BCA', 96803183, 96803183, 0, '', NULL, 360, '000984/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(707, '1031812168/005-DN', '1031812168/005/AJRI-DN/V/2021', '1031812000168', 'PT BPR KARINAMAS PERMAI', '', 'PT BPR KARINAMAS PERMAI', 'RCL', 'JANGKAWARSA', '2021-05-11', '2021-06-01', 0, '0-30', 1102980, 0, 1102980, 110298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 992682, 992682, '2021-05-27', '5460316199', 'BCA', 992682, 992682, 0, '', NULL, 5, '000985/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(708, '1012104233/006-DN', '1012104233/006/AJRI-DN/V/2021', '1012104000233', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RTL', 'JANGKAWARSA', '2021-05-11', '2021-06-01', 0, '0-30', 289500, 0, 289500, 28950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260550, 260550, '2021-04-26', '1220101001278', 'KERTA RAHARJA', 260550, 260550, 0, '', NULL, 1, '000986/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(709, '1021705047/006-DN', '1021705047/006/AJRI-DN/V/2021', '1021705000047', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-11', '2021-06-10', 0, '0-30', 3740900, 0, 3740900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3740900, 3740900, '2021-06-10', '5460316199', 'BCA', 3740900, 3740900, 0, '', NULL, 6, '000987/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(710, '1011809167/010-DN', '1011809167/010/AJRI-DN/IV/2021', '1011809000167', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK PURWOKERTO', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-12', '2021-05-12', 29, '0-30', 3822190, 0, 3822190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3822190, 3822190, '2021-06-10', '5460316199', 'BCA', 3822190, 3822190, 0, '', NULL, 58, '000701/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(711, '1011705126/013-DN', '1011705126/013/AJRI-DN/IV/2021', '1011705000126', 'PT. BUMI INSURANCE BROKER QQ PD BPR BKK PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-23', '2021-05-23', 18, '0-30', 148500, 0, 148500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 148500, 148500, '2021-06-10', '5460316199', 'BCA', 148500, 148500, 0, '', NULL, 1, '000815/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(712, '1012010212/006-DN', '1012010212/006/AJRI-DN/V/2021', '1012010000212', 'PT. BUMI INSURANCE BROKERS QQ PT LKM DEMAK SEJAHTERA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-11', '2021-06-10', 0, '0-30', 449670, 0, 449670, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 449670, 449670, '2021-05-25', '5460316199', 'BCA', 449670, 449670, 0, '', NULL, 4, '000990/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(713, '1041709045/031-DN', '1041709045/031/AJRI-DN/V/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-11', '2021-06-10', 0, '0-30', 3281336, 0, 3281336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3281336, 3281336, '2021-06-10', '5460316199', 'BCA', 3281336, 3281336, 0, '', NULL, 7, '000991/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(714, '1031602067/015-DN', '1031602067/015/AJRI-DN/V/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-05-11', '2021-05-31', 0, '0-30', 5209050, 0, 5209050, 1172036, 0, 0, 0, 117204, -23441, 0, 0, 0, 10000, 0, 4037014, 3953251, '2021-05-31', '5460316199', 'BCA', 3953251, 3953251, 0, '', NULL, 2, '000992/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(715, '1011710134/007-DN', '1011710134/007/AJRI-DN/V/2021', '1011710000134', 'PT. BPR BANTORU PERINTIS', '', 'PT. BPR BANTORU PERINTIS', 'RTL', 'JANGKAWARSA', '2021-05-11', '2021-06-01', 0, '0-30', 1136850, 0, 1136850, 113685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1023165, 1023165, '2021-05-24', '5460316199', 'BCA', 1023165, 1023165, 0, '', NULL, 2, '000995/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(716, '1011705126/014-DN', '1011705126/014/AJRI-DN/IV/2021', '1011705000126', 'PT. BUMI INSURANCE BROKER QQ PD BPR BKK PURBALINGGA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-23', '2021-05-23', 18, '0-30', 24750, 0, 24750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24750, 24750, '2021-06-10', '5460316199', 'BCA', 24750, 24750, 0, '', NULL, 1, '000816/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(717, '1041707044/005-DN', '1041707044/005/AJRI-DN/V/2021', '1041707000044', 'PT. ASURANSI HARTA AMAN PRATAMA. Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-11', '2021-06-10', 0, '0-30', 5405000, 0, 5405000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5405000, 5405000, '2021-06-10', '5460316199', 'BCA', 5405000, 5405000, 0, '', NULL, 3, '000994/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(718, '1021406014/047-DN', '1021406014/047/AJRI-DN/V/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-11', '2021-06-10', 0, '0-30', 644625503, 0, 644625503, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 644625503, 644625503, '2021-06-10', '5460316199', 'BCA', 644625503, 644625503, 0, '', NULL, 1174, '000993/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(719, '1011711135/020-DN', '1011711135/020/AJRI-DN/IV/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-23', '2021-05-14', 27, '0-30', 13300, 0, 13300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13300, 13300, '2021-06-10', '5460316199', 'BCA', 13300, 13300, 0, '', NULL, 1, '000818/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(720, '1011609094/014-DN', '1011609094/014/AJRI-DN/V/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-05-11', '2021-05-31', 0, '0-30', 75000, 0, 75000, 22500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52500, 52500, '2021-05-31', '5460316199', 'BCA', 52500, 52500, 0, '', NULL, 2, '000998/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(721, '1031906178/003-DN', '1031906178/003/AJRI-DN/V/2021', '1031906000178', 'PT BPR KARINAMAS PERMAI CABANG CIKARANG', '', 'PT BPR KARINAMAS PERMAI', 'RCL', 'JANGKAWARSA', '2021-05-11', '2021-06-01', 0, '0-30', 3825900, 0, 3825900, 382590, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3443310, 3443310, '2021-05-27', '5460316199', 'BCA', 3443310, 3443310, 0, '', NULL, 4, '001000/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(722, '1031906178/004-DN', '1031906178/004/AJRI-DN/V/2021', '1031906000178', 'PT BPR KARINAMAS PERMAI CABANG CIKARANG', '', 'PT BPR KARINAMAS PERMAI', 'RCL', 'JANGKAWARSA', '2021-05-11', '2021-06-01', 0, '0-30', 318000, 0, 318000, 31800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286200, 286200, '2021-05-27', '5460316199', 'BCA', 286200, 286200, 0, '', NULL, 1, '001001/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(723, '1011809167/011-DN', '1011809167/011/AJRI-DN/IV/2021', '1011809000167', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK PURWOKERTO', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-04-23', '2021-05-23', 18, '0-30', 11400, 0, 11400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11400, 11400, '2021-06-10', '5460316199', 'BCA', 11400, 11400, 0, '', NULL, 1, '000819/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(724, '1011704120/008-DN', '1011704120/008/AJRI-DN/V/2021', '1011704000120', 'PT BPR SUKMA KEMANG AGUNG', '', 'PT BPR SUKMA KEMANG AGUNG', 'RTL', 'JANGKAWARSA', '2021-05-17', '2021-06-07', 0, '0-30', 6076000, 0, 6076000, 607600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5468400, 5468400, '2021-05-21', '5460316199', 'BCA', 5468400, 5468400, 0, '', NULL, 2, '001006/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(725, '1031703108/001-DN', '1031703108/001/AJRI-DN/V/2021', '1031703000108', 'PT BUMI INSURANCE BROKER QQ BKK GROGOL SUKOHARJO', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-07', '2021-06-06', 4, '0-30', 217800, 0, 217800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 217800, 217800, '2021-06-10', '5460316199', 'BCA', 217800, 217800, 0, '', NULL, 3, '000956/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(726, '1031701101/003-DN', '1031701101/003/AJRI-DN/V/2021', '1031701000101', 'PT BUMI INSURANCE BROKER QQ BPR BKK KENDAL', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-07', '2021-06-06', 4, '0-30', 569555, 0, 569555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 569555, 569555, '2021-06-10', '5460316199', 'BCA', 569555, 569555, 0, '', NULL, 26, '000955/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(727, '1031608093/008-DN', '1031608093/008/AJRI-DN/V/2021', '1031608000093', 'PD.BPR BANK JOGJA', '', 'PD.BPR BANK JOGJA', 'RCL', 'JANGKAWARSA', '2021-05-17', '2021-06-04', 0, '0-30', 8179288, 92000, 8271288, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8271288, 8271288, '2021-05-31', '0012152632', 'JOGJA', 8271288, 8271288, 0, '', NULL, 27, '001009/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(728, '1011701103/011-DN', '1011701103/011/AJRI-DN/V/2021', '1011701000103', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-17', '2021-06-07', 8, '0-30', 911690, 0, 911690, 273507, 0, 0, 0, 0, -5470, 0, 0, 0, 0, 0, 638183, 643653, '2021-06-15', '5460316199', 'BCA', 643653, 643653, 0, '', NULL, 6, '001012/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:20', '2021-07-13 09:29:20', NULL),
(729, '1011809167/012-DN', '1011809167/012/AJRI-DN/V/2021', '1011809000167', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK PURWOKERTO', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-10', '2021-06-09', 1, '0-30', 68700, 0, 68700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68700, 68700, '2021-06-10', '5460316199', 'BCA', 68700, 68700, 0, '', NULL, 3, '000968/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(730, '1012104233/007-DN', '1012104233/007/AJRI-DN/V/2021', '1012104000233', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RTL', 'JANGKAWARSA', '2021-05-17', '2021-06-07', 0, '0-30', 5836910, 0, 5836910, 583691, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5253219, 5253219, '2021-04-26', '1220101001278', 'KERTA RAHARJA', 5253219, 5253219, 0, '', NULL, 28, '001011/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(731, '1011612098/010-DN', '1011612098/010/AJRI-DN/V/2021', '1011612000098', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-17', '2021-06-07', 0, '0-30', 1895405, 0, 1895405, 568622, 0, 0, 0, 0, -11372, 0, 0, 0, 0, 0, 1326784, 1338156, '2021-06-03', '5460316199', 'BCA', 1338156, 1338156, 0, '', NULL, 8, '001013/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(732, '1031905175/012-DN', '1031905175/012/AJRI-DN/V/2021', '1031905000175', 'CAKRABUANA INSURANCE BROKER QQ PINANG ARTHA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-17', '2021-06-07', 0, '0-30', 327000, 0, 327000, 114450, 0, 0, 0, 0, -2289, 0, 0, 0, 0, 0, 212550, 214839, '2021-06-03', '5460316199', 'BCA', 214839, 214839, 0, '', NULL, 4, '001014/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(733, '1011612100/013-DN', '1011612100/013/AJRI-DN/V/2021', '1011612000100', 'PT. BPR RAMA GANDA', '', 'CAKRABUANA INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-17', '2021-06-07', 0, '0-30', 1835960, 0, 1835960, 550788, 0, 0, 0, 0, -11016, 0, 0, 0, 0, 0, 1285172, 1296188, '2021-06-03', '5460316199', 'BCA', 1296188, 1296188, 0, '', NULL, 16, '001016/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(734, '1032104224/036-DN', '1032104224/036/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-17', '2021-06-07', 0, '0-30', 8137460, 0, 8137460, 813746, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7323714, 7323714, '2021-05-04', '1220101001278', 'KERTA RAHARJA', 7323714, 7323714, 0, '', NULL, 34, '001018/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(735, '1032104224/037-DN', '1032104224/037/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-17', '2021-06-07', 0, '0-30', 9608460, 0, 9608460, 960846, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8647614, 8647614, '2021-05-06', '1220101001278', 'KERTA RAHARJA', 8647614, 8647614, 0, '', NULL, 41, '001019/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(736, '1032104224/038-DN', '1032104224/038/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-17', '2021-06-07', 0, '0-30', 1856650, 0, 1856650, 185665, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1670985, 1670985, '2021-05-06', '1220101001278', 'KERTA RAHARJA', 1670985, 1670985, 0, '', NULL, 20, '001020/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(737, '1041609039/013-DN', '1041609039/013/AJRI-DN/V/2021', '1041609000039', 'PT.ASURANSI ASEI INDONESIA', '', 'PT. ASURANSI ASEI INDONESIA', 'RCLND', 'JANGKAWARSA', '2021-05-27', '2021-06-17', 0, '0-30', 859118685, 0, 859118685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 859118685, 859118685, '2021-06-16', '5460316199', 'BCA', 859118685, 859118685, 0, '', NULL, 1299, '001105/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(738, '1021906064/004-DN', '1021906064/004/AJRI-DN/V/2021', '1021906000064', 'PT ASURANSI HARTA AMAN PRATAMA QQ PT BPR SAYMA KARYA', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-18', '2021-06-17', 0, '0-30', 4490050, 0, 4490050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4490050, 4490050, '2021-06-17', '5460316199', 'BCA', 4490050, 4490050, 0, '', NULL, 9, '001030/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(739, '1011711135/024-DN', '1011711135/024/AJRI-DN/V/2021', '1011711000135', 'PT. BUMI INSURANCE BROKER QQ PD. BPR BKK & BKK', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-10', '2021-05-31', 10, '0-30', 200010, 0, 200010, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200010, 200010, '2021-06-10', '5460316199', 'BCA', 200010, 200010, 0, '', NULL, 5, '000980/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(740, '1021804052/004-DN', '1021804052/004/AJRI-DN/V/2021', '1021804000052', 'PT ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR DANAGUNG', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-18', '2021-06-17', 0, '0-30', 1508000, 0, 1508000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1508000, 1508000, '2021-06-17', '5460316199', 'BCA', 1508000, 1508000, 0, '', NULL, 3, '001021/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(741, '1032104224/039-DN', '1032104224/039/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-18', '2021-06-08', 0, '0-30', 24245, 0, 24245, 2425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21821, 21821, '2021-05-06', '1220101001278', 'KERTA RAHARJA', 21821, 21821, 0, '', NULL, 1, '001026/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(742, '1041709045/032-DN', '1041709045/032/AJRI-DN/V/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-18', '2021-06-17', 0, '0-30', 116302865, 0, 116302865, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116302865, 116302865, '2021-06-17', '5460316199', 'BCA', 116302865, 116302865, 0, '', NULL, 1052, '001027/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(743, '1021406014/048-DN', '1021406014/048/AJRI-DN/V/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-18', '2021-06-17', 0, '0-30', 174000, 223500, 397500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 397500, 397500, '2021-06-10', '5460316199', 'BCA', 397500, 397500, 0, '', NULL, 1, '001031/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(744, '1012103231/015-DN', '1012103231/015/AJRI-DN/V/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-05-19', '2021-06-30', 0, '0-30', 285000, 0, 285000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 285000, 285000, '2021-06-17', '5460316199', 'BCA', 285000, 285000, 0, '', NULL, 1, '001035/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(745, '1032103222/023-DN', '1032103222/023/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-19', '2021-06-30', 0, '0-30', 3503500, 0, 3503500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3503500, 3503500, '2021-06-17', '5460316199', 'BCA', 3503500, 3503500, 0, '', NULL, 1, '001040/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(746, '1032103222/025-DN', '1032103222/025/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-24', '2021-07-05', 0, '0-30', 187458, 0, 187458, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 187458, 187458, '2021-06-17', '5460316199', 'BCA', 187458, 187458, 0, '', NULL, 1, '001064/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(747, '1011609094/013-DN', '1011609094/013/AJRI-DN/V/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-05-03', '2021-05-21', 10, '0-30', 150000, 0, 150000, 45000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105000, 105000, '2021-05-31', '5460316199', 'BCA', 105000, 105000, 0, '', NULL, 2, '000880/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(748, '1032103222/026-DN', '1032103222/026/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-24', '2021-07-05', 0, '0-30', 2135000, 0, 2135000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2135000, 2135000, '2021-06-17', '5460316199', 'BCA', 2135000, 2135000, 0, '', NULL, 1, '001069/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(749, '1032103222/027-DN', '1032103222/027/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-24', '2021-07-05', 0, '0-30', 198250, 0, 198250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198250, 198250, '2021-06-17', '5460316199', 'BCA', 198250, 198250, 0, '', NULL, 1, '001070/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(750, '1031603071/007-DN', '1031603071/007/AJRI-DN/V/2021', '1031603000071', 'PT.BPR DUTA ARTHA SEJAHTERA', '', 'PT.BPR DUTA ARTHA SEJAHTERA', 'RCL', 'JANGKAWARSA', '2021-05-19', '2021-06-08', 0, '0-30', 1229220, 0, 1229220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1229220, 1229220, '2021-05-27', '5460316199', 'BCA', 1229220, 1229220, 0, '', NULL, 11, '001036/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(751, '1032101207/005-DN', '1032101207/005/AJRI-DN/V/2021', '1032101000207', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-19', '2021-06-18', 4, '0-30', 295460, 0, 295460, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 295460, 295460, '2021-06-22', '5460316199', 'BCA', 295460, 295460, 0, '', NULL, 7, '001037/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(752, '1012009208/004-DN', '1012009208/004/AJRI-DN/V/2021', '1012009000208', 'PT BUMI INSRUANCE BROKERS QQ KOPERASI AMERTHA SUWITRE', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-19', '2021-06-18', 4, '0-30', 353000, 0, 353000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 353000, 353000, '2021-06-22', '5460316199', 'BCA', 353000, 353000, 0, '', NULL, 1, '001038/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(753, '1032103222/028-DN', '1032103222/028/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-25', '2021-07-06', 0, '0-30', 135744302, 0, 135744302, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 135744302, 135744302, '2021-06-17', '5460316199', 'BCA', 135744302, 135744302, 0, '', NULL, 691, '001076/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(754, '1031709125/008-DN', '1031709125/008/AJRI-DN/V/2021', '1031709000125', 'PT BPR NBP 32 KARAWANG', '', 'PT BPR NBP 32 KARAWANG', 'RCL', 'JANGKAWARSA', '2021-05-19', '2021-06-09', 0, '0-30', 5616755, 0, 5616755, 1123351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4493404, 4493404, '2021-06-02', '5460316199', 'BCA', 4493404, 4493404, 0, '', NULL, 35, '001041/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(755, '1012008205/008-DN', '1012008205/008/AJRI-DN/V/2021', '1012008000205', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI GRIYA MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-19', '2021-06-18', 4, '0-30', 132000, 0, 132000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 132000, 132000, '2021-06-22', '5460316199', 'BCA', 132000, 132000, 0, '', NULL, 1, '001042/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(756, '1031908183/006-DN', '1031908183/006/AJRI-DN/V/2021', '1031908000183', 'BUKP SLEMAN', '', 'BUKP SLEMAN', 'RCL', 'JANGKAWARSA', '2021-05-20', '2021-06-10', 0, '0-30', 669960, 0, 669960, 133992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 535968, 535968, '2021-05-27', '5460316199', 'BCA', 535968, 535968, 0, '', NULL, 32, '001045/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(757, '1031906177/010-DN', '1031906177/010/AJRI-DN/V/2021', '1031906000177', 'PT PINDAD PERSERO', '', 'PT PINDAD PERSERO', 'RCL', 'JANGKAWARSA', '2021-05-20', '2021-06-10', 0, '0-30', 12669020, 0, 12669020, 2533804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10135216, 10135216, '2021-06-03', '5460316199', 'BCA', 10135216, 10135216, 0, '', NULL, 33, '001046/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(758, '1031903172/002-DN', '1031903172/002/AJRI-DN/V/2021', '1031903000172', 'BUKP KECAMATAN TEMPEL', '', 'BUKP KECAMATAN TEMPEL', 'RCL', 'JANGKAWARSA', '2021-05-20', '2021-06-10', 0, '0-30', 4152214, 0, 4152214, 830443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3321771, 3321771, '2021-05-28', '5460316199', 'BCA', 3321771, 3321771, 0, '', NULL, 43, '001047/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(759, '1012103231/016-DN', '1012103231/016/AJRI-DN/V/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-05-25', '2021-07-06', 0, '0-30', 48123763, 0, 48123763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48123763, 48123763, '2021-06-17', '5460316199', 'BCA', 48123763, 48123763, 0, '', NULL, 447, '001077/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(760, '1012009206/009-DN', '1012009206/009/AJRI-DN/V/2021', '1012009000206', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-20', '2021-06-19', 3, '0-30', 853029, 633126, 1486155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1486155, 1486155, '2021-06-22', '5460316199', 'BCA', 1486155, 1486155, 0, '', NULL, 1, '001048/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(761, '1011906181/016-DN', '1011906181/016/AJRI-DN/V/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-20', '2021-07-01', 0, '0-30', 1175155, 0, 1175155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1175155, 1175155, '2021-06-22', '5460316199', 'BCA', 1175155, 1175155, 0, '', NULL, 16, '001049/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(762, '1032005194/014-DN', '1032005194/014/AJRI-DN/V/2021', '1032005000194', 'PD BPR LPK PARUNG PANJANG', '', 'PD BPR LPK PARUNG PANJANG', 'RCL', 'JANGKAWARSA', '2021-05-21', '2021-06-11', 0, '0-30', 648750, 0, 648750, 64875, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 583875, 583875, '2021-05-28', '0182271089618', 'Parung Panjang', 583875, 583875, 0, '', NULL, 1, '001051/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(763, '1032104224/040-DN', '1032104224/040/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-21', '2021-06-11', 0, '0-30', 11540140, 0, 11540140, 1154014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10386126, 10386126, '2021-05-11', '1220101001278', 'KERTA RAHARJA', 10386126, 10386126, 0, '', NULL, 51, '001052/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(764, '1041406007/057-DN', '1041406007/057/AJRI-DN/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-21', '2021-06-20', 0, '0-30', 376000, 0, 376000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 376000, 376000, '2021-06-10', '5460316199', 'BCA', 376000, 376000, 0, '', NULL, 1, '001057/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(765, '1012103231/017-DN', '1012103231/017/AJRI-DN/V/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-05-25', '2021-07-06', 0, '0-30', 4240000, 0, 4240000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4240000, 4240000, '2021-06-17', '5460316199', 'BCA', 4240000, 4240000, 0, '', NULL, 1, '001082/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(766, '1031602067/013-DN', '1031602067/013/AJRI-DN/V/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-05-11', '2021-05-31', 10, '0-30', 1208250, 0, 1208250, 271856, 0, 0, 0, 27186, -5437, 0, 0, 0, 5000, 0, 936394, 919645, '2021-06-10', '5460316199', 'BCA', 919645, 919645, 0, '', NULL, 1, '000988/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(767, '1032104224/041-DN', '1032104224/041/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-05-24', '2021-06-14', 0, '0-30', 2047640, 0, 2047640, 204764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1842876, 1842876, '2021-05-18', '1220101001278', 'KERTA RAHARJA', 1842876, 1842876, 0, '', NULL, 4, '001061/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(768, '1032103222/024-DN', '1032103222/024/AJRI-DN/V/2021', '1032103000222', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RCL', 'JANGKAWARSA', '2021-05-20', '2021-07-01', 0, '0-30', 121800, 122960, 244760, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 244760, 244760, '2021-06-17', '5460316199', 'BCA', 244760, 244760, 0, '', NULL, 1, '001043/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(769, '1031801133/004-DN', '1031801133/004/AJRI-DN/V/2021', '1031801000133', 'PT BPR METROPOLITAN PUTRA', '', 'PT BPR METROPOLITAN PUTRA', 'RCL', 'JANGKAWARSA', '2021-05-24', '2021-06-14', 0, '0-30', 652000, 0, 652000, 65200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 586800, 586800, '2021-05-28', '5460316199', 'BCA', 586800, 586800, 0, '', NULL, 1, '001063/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(770, '1011906181/017-DN', '1011906181/017/AJRI-DN/V/2021', '1011906000181', 'PT BUMI INSURANCE BROKERS QQ PT BPR MAPALUS TUMETENDEN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-24', '2021-07-05', 0, '0-30', 1988290, 0, 1988290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1988290, 1988290, '2021-06-22', '5460316199', 'BCA', 1988290, 1988290, 0, '', NULL, 14, '001065/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(771, '1012008204/005-DN', '1012008204/005/AJRI-DN/V/2021', '1012008000204', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI LINGGA ARTHA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-25', '2021-06-24', 0, '0-30', 22945, 0, 22945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22945, 22945, '2021-06-22', '5460316199', 'BCA', 22945, 22945, 0, '', NULL, 4, '001075/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(772, '1031602067/014-DN', '1031602067/014/AJRI-DN/V/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-05-11', '2021-05-31', 10, '0-30', 6934400, 0, 6934400, 1560240, 0, 0, 0, 156024, -31205, 0, 0, 0, 5000, 0, 5374160, 5254341, '2021-06-10', '5460316199', 'BCA', 5254341, 5254341, 0, '', NULL, 1, '000989/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL);
INSERT INTO `migration_data` (`id`, `no_register`, `nomor_invoice`, `nomor_polis`, `nama_pemegang_polis`, `sub_polis`, `sub_pemegang_polis`, `jenis_produk`, `line_of_business`, `tanggal_terbit`, `jatuh_tempo`, `aging`, `klasifikasi_aging`, `premi_bruto`, `extra_premi`, `premi_gross`, `discount`, `komisi`, `fee_base`, `lain_lain`, `pajak_ppn`, `pajak_pph`, `pajak_lain`, `biaya_administrasi`, `biaya_polis`, `biaya_sertifikat`, `biaya_materai`, `premi_netto`, `jumlah_bayar`, `tanggal_pendapatan`, `no_rekening`, `bank`, `amount`, `pembayaran`, `piutang`, `status`, `pengajuan_komisi`, `jumlah_peserta`, `no_memo`, `period`, `created_at`, `updated_at`, `manajemen_fee`) VALUES
(773, '1032008197/003-DN', '1032008197/003/AJRI-DN/V/2021', '1032008000197', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI LINGGA ARTHA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-25', '2021-06-24', 0, '0-30', 84491, 0, 84491, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84491, 84491, '2021-06-22', '5460316199', 'BCA', 84491, 84491, 0, '', NULL, 3, '001085/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(774, '1031701101/004-DN', '1031701101/004/AJRI-DN/V/2021', '1031701000101', 'PT BUMI INSURANCE BROKER QQ BPR BKK KENDAL', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-11', '2021-06-10', 0, '0-30', 438750, 0, 438750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 438750, 438750, '2021-06-10', '5460316199', 'BCA', 438750, 438750, 0, '', NULL, 1, '000997/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(775, '1031803149/006-DN', '1031803149/006/AJRI-DN/V/2021', '1031803000149', 'BUKP NGAMPILAN', '', 'BUKP NGAMPILAN', 'RCL', 'JANGKAWARSA', '2021-05-25', '2021-06-15', 0, '0-30', 187400, 0, 187400, 37480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 149920, 149920, '2021-06-04', '5460316199', 'BCA', 149920, 149920, 0, '', NULL, 2, '001084/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(776, '1031503038/084-DN', '1031503038/084/AJRI-DN-E/V/2021', '1031503000038', 'PT. BANK SINARMAS, TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-05-04', '2021-05-24', 29, '0-30', 10989966, 0, 10989966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10989966, 10989966, '2021-06-22', '0031038898', 'SNM', 10989966, 5139442, 5850523, '', NULL, 0, '', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(777, '1011801139/006-DN', '1011801139/006/AJRI-DN/V/2021', '1011801000139', 'PT. BPR LAKSANA BINA CIMANGGIS', '', 'PT. BPR LAKSANA BINA CIMANGGIS', 'RTL', 'JANGKAWARSA', '2021-05-05', '2021-05-26', 20, '0-30', 141000, 0, 141000, 14100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 126900, 126900, '2021-06-15', '5460316199', 'BCA', 126900, 126900, 0, '', NULL, 1, '000912/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(778, '1031905175/013-DN', '1031905175/013/AJRI-DN/V/2021', '1031905000175', 'CAKRABUANA INSURANCE BROKER QQ PINANG ARTHA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-25', '2021-06-15', 0, '0-30', 822497, 0, 822497, 287874, 0, 0, 0, 0, -5757, 0, 0, 0, 0, 0, 534623, 540381, '2021-06-15', '5460316199', 'BCA', 540381, 540381, 0, '', NULL, 2, '001086/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(779, '1031905175/014-DN', '1031905175/014/AJRI-DN/V/2021', '1031905000175', 'CAKRABUANA INSURANCE BROKER QQ PINANG ARTHA', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-05-25', '2021-06-15', 0, '0-30', 2011424, 0, 2011424, 703998, 0, 0, 0, 0, -14080, 0, 0, 0, 0, 0, 1307426, 1321506, '2021-06-15', '5460316199', 'BCA', 1321506, 1321506, 0, '', NULL, 11, '001087/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(780, '1022105093/001-DN', '1022105093/001/AJRI-DN/V/2021', '1022105000093', 'PT. KSK INSURANCE INDONESIA QQ BANK UMUM, BPD, BPR DAN KOPERASI', '', 'PT. KSK INSURANCE INDONESIA', 'RTLND', 'JANGKAWARSA', '2021-05-25', '2021-06-15', 1, '0-30', 1626710, 0, 1626710, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 1626710, 1736710, '2021-06-16', '5460316199', 'BCA', 1736710, 1520613, 216097, '', NULL, 8, '001089/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(781, '1012103231/018-DN', '1012103231/018/AJRI-DN/V/2021', '1012103000231', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', '', 'PT ASURANSI UMUM BUMIPUTERA MUDA 1967', 'RTL', 'JANGKAWARSA', '2021-06-01', '2021-07-12', 0, '0-30', 237500, 46250, 283750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 283750, 283750, '2021-06-17', '5460316199', 'BCA', 283750, 283750, 0, '', NULL, 1, '001131/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(782, '1012008205/009-DN', '1012008205/009/AJRI-DN/V/2021', '1012008000205', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI GRIYA MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-06-01', '2021-06-30', 0, '0-30', 836220, 0, 836220, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 836220, 836220, '2021-06-22', '5460316199', 'BCA', 836220, 836220, 0, '', NULL, 1, '001120/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(783, '1041406007/058-DN', '1041406007/058/AJRI-DN/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-01', '2021-06-26', 0, '0-30', 6298000, 1645000, 7943000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7943000, 7943000, '2021-06-18', '5460316199', 'BCA', 7943000, 7943000, 0, '', NULL, 2, '001095/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(784, '1041406007/059-DN', '1041406007/059/AJRI-DN/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-01', '2021-06-26', 0, '0-30', 1026000, 0, 1026000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1026000, 1026000, '2021-06-18', '5460316199', 'BCA', 1026000, 1026000, 0, '', NULL, 1, '001096/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(785, '1041406007/060-DN', '1041406007/060/AJRI-DN/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-01', '2021-06-26', 0, '0-30', 1539000, 0, 1539000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1539000, 1539000, '2021-06-18', '5460316199', 'BCA', 1539000, 1539000, 0, '', NULL, 1, '001097/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(786, '1021406014/050-DN', '1021406014/050/AJRI-DN/V/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-18', '2021-06-17', 0, '0-30', 61495126, 370500, 61865626, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61865626, 61865626, '2021-06-17', '5460316199', 'BCA', 61865626, 61865626, 0, '', NULL, 646, '001032/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(787, '1021406014/049-DN', '1021406014/049/AJRI-DN/V/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-18', '2021-06-17', 0, '0-30', 205700, 0, 205700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205700, 205700, '2021-06-17', '5460316199', 'BCA', 205700, 205700, 0, '', NULL, 1, '001033/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(788, '1041705043/002-DN', '1041705043/002/AJRI-DN/V/2021', '1041705000043', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-18', '2021-06-17', 0, '0-30', 6752190, 0, 6752190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6752190, 6752190, '2021-06-17', '5460316199', 'BCA', 6752190, 6752190, 0, '', NULL, 43, '001025/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(789, '1021705047/007-DN', '1021705047/007/AJRI-DN/V/2021', '1021705000047', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-18', '2021-06-17', 0, '0-30', 8465155, 0, 8465155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8465155, 8465155, '2021-06-17', '5460316199', 'BCA', 8465155, 8465155, 0, '', NULL, 103, '001028/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(790, '1041707044/006-DN', '1041707044/006/AJRI-DN/V/2021', '1041707000044', 'PT. ASURANSI HARTA AMAN PRATAMA. Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-18', '2021-06-17', 0, '0-30', 5519091, 0, 5519091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5519091, 5519091, '2021-06-17', '5460316199', 'BCA', 5519091, 5519091, 0, '', NULL, 61, '001022/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(791, '1032009204/006-DN', '1032009204/006/AJRI-DN/III/2021', '1032009000204', 'TALISMAN BROKER QQ BTN', '', 'TALISMAN BROKER', 'RCL', 'JANGKAWARSA', '2021-03-08', '2021-05-07', 41, '31-60', 95810785, 0, 95810785, 0, 14371618, 0, 0, 1437162, 0, 0, 0, 0, 0, 0, 81439167, 80002005, '2021-06-17', '5460316199', 'BCA', 80002005, 80002005, 0, '', NULL, 117, '007897/UW-M/AJRI/III/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(792, '1031602067/016-DN', '1031602067/016/AJRI-DN/V/2021', '1031602000067', 'PT.BPR SUPRA ARTAPERSADA', '', 'PT.BPR SUPRA ARTAPERSADA', 'RCL', 'JANGKAWARSA', '2021-05-17', '2021-06-04', 6, '0-30', 2765600, 0, 2765600, 622260, 0, 0, 0, 62226, -12445, 0, 0, 0, 5000, 0, 2143340, 2098559, '2021-06-10', '5460316199', 'BCA', 2098559, 2098559, 0, '', NULL, 1, '001007/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(793, '1011809167/016-DN', '1011809167/016/AJRI-DN/V/2021', '1011809000167', 'PT BUMI INSURANCE BROKER QQ PD BPR BKK PURWOKERTO', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-05-21', '2021-06-20', 0, '0-30', 29700, 25500, 55200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55200, 55200, '2021-06-10', '5460316199', 'BCA', 55200, 55200, 0, '', NULL, 1, '001060/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(794, '1031806159/021-DN', '1031806159/021/AJRI-DN-E/V/2021', '1031806000159', 'PT BANK SINARMAS TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-05-07', '2021-05-27', 0, '0-30', 11989578, 0, 11989578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11989578, 11989578, '2021-05-21', '0031038898', 'SNM', 10043900, 10043900, 1945678, '', NULL, 0, '', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(795, '1031807160/006-DN', '1031807160/006/AJRI-DN-E/V/2021', '1031807000160', 'PT BANK SINARMAS TBK', '', 'PT. BANK SINARMAS, TBK', 'RCL', 'JANGKAWARSA', '2021-05-10', '2021-05-28', 0, '0-30', 1017311, 0, 1017311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1017311, 1017311, '2021-05-28', '0031038898', 'SNM', 1017311, 1017311, 0, '', NULL, 0, '', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(796, '1032009204/007-DN', '1032009204/007/AJRI-DN/IV/2021', '1032009000204', 'TALISMAN BROKER QQ BTN', '', 'TALISMAN BROKER', 'RCL', 'JANGKAWARSA', '2021-04-06', '2021-06-05', 12, '0-30', 135859811, 0, 135859811, 0, 0, 20378972, 0, 2037897, 0, 0, 0, 0, 0, 0, 115480839, 113442942, '2021-06-17', '5460316199', 'BCA', 113442942, 113442942, 0, '', NULL, 156, '007911/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(797, '1041406007/382-DN', '1041406007/382/AJRI-DN-E/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-17', '2021-06-16', 0, '0-30', -256500, 0, -256500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -256500, -256500, '2021-06-10', '5460316199', 'BCA', -256500, -256500, 0, '', NULL, 0, '', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(798, '1041406007/383-DN', '1041406007/383/AJRI-DN-E/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-17', '2021-06-16', 0, '0-30', -56583, 0, -56583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -56583, -56583, '2021-06-10', '5460316199', 'BCA', -56583, -56583, 0, '', NULL, 0, '', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(799, '1041709045/033-DN', '1041709045/033/AJRI-DN/V/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-24', '2021-06-23', 0, '0-30', 8478927, 0, 8478927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8478927, 8478927, '2021-06-18', '5460316199', 'BCA', 8478927, 8478927, 0, '', NULL, 91, '001062/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(800, '1041709045/151-DN', '1041709045/151/AJRI-DN-E/V/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-20', '2021-06-19', 0, '0-30', -1890240, 0, -1890240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1890240, -1890240, '2021-06-18', '5460316199', 'BCA', -1890240, -1890240, 0, '', NULL, 0, '', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(801, '1041406007/056-DN', '1041406007/056/AJRI-DN/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-20', '2021-06-19', 0, '0-30', 242816757, 0, 242816757, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 242816757, 242816757, '2021-06-18', '5460316199', 'BCA', 242816757, 242816757, 0, '', NULL, 2015, '001044/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(802, '1031906177/011-DN', '1031906177/011/AJRI-DN/V/2021', '1031906000177', 'PT PINDAD PERSERO', '', 'PT PINDAD PERSERO', 'RCL', 'JANGKAWARSA', '2021-06-01', '2021-06-21', 0, '0-30', 5786580, 0, 5786580, 1157316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4629264, 4629264, '2021-06-15', '5460316199', 'BCA', 4629264, 4629264, 0, '', NULL, 32, '001127/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(803, '1011609094/016-DN', '1011609094/016/AJRI-DN/V/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-06-01', '2021-06-18', 0, '0-30', 487500, 0, 487500, 146250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 341250, 341250, '2021-06-14', '5460316199', 'BCA', 341250, 341250, 0, '', NULL, 9, '001126/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(804, '1041406007/387-DN', '1041406007/387/AJRI-DN-E/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-20', '2021-06-19', 0, '0-30', -153135, 0, -153135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -153135, -153135, '2021-06-10', '5460316199', 'BCA', -153135, -153135, 0, '', NULL, 0, '', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(805, '1011609094/015-DN', '1011609094/015/AJRI-DN/V/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-06-01', '2021-06-18', 0, '0-30', 712500, 0, 712500, 213750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 498750, 498750, '2021-06-14', '5460316199', 'BCA', 498750, 498750, 0, '', NULL, 7, '001125/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(806, '1011704120/009-DN', '1011704120/009/AJRI-DN/VI/2021', '1011704000120', 'PT BPR SUKMA KEMANG AGUNG', '', 'PT BPR SUKMA KEMANG AGUNG', 'RTL', 'JANGKAWARSA', '2021-06-02', '2021-06-23', 0, '0-30', 11211015, 0, 11211015, 1121102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10089914, 10089914, '2021-06-09', '5460316199', 'BCA', 10089914, 10089914, 0, '', NULL, 25, '001142/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(807, '1031703110/005-DN', '1031703110/005/AJRI-DN/V/2021', '1031703000110', 'PT JAMKRIDA BABEL', '', 'PT JAMKRIDA BABEL', 'RCL', 'JANGKAWARSA', '2021-06-01', '2021-06-18', 12, '0-30', 5326000, 0, 5326000, 532600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4793400, 4793400, '2021-06-30', '5460316199', 'BCA', 4793400, 4793400, 0, '', NULL, 25, '001109/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(808, '1012104233/008-DN', '1012104233/008/AJRI-DN/V/2021', '1012104000233', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RTL', 'JANGKAWARSA', '2021-06-01', '2021-06-18', 0, '0-30', 367720, 0, 367720, 36772, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 330948, 330948, '2021-05-19', '1220101001278', 'KERTA RAHARJA', 330948, 330948, 0, '', NULL, 4, '001114/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(809, '1032104224/042-DN', '1032104224/042/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-06-01', '2021-06-18', 0, '0-30', 1237470, 0, 1237470, 123747, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1113723, 1113723, '2021-05-20', '1220101001278', 'KERTA RAHARJA', 1113723, 1113723, 0, '', NULL, 15, '001115/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(810, '1032104224/043-DN', '1032104224/043/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-06-01', '2021-06-18', 0, '0-30', 5145880, 0, 5145880, 514588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4631292, 4631292, '2021-05-25', '1220101001278', 'KERTA RAHARJA', 4631292, 4631292, 0, '', NULL, 13, '001116/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(811, '1011507056/005-DN', '1011507056/005/AJRI-DN/V/2021', '1011507000056', 'LPD DP SINGAKERTA', '', 'LPD DP SINGAKERTA', 'RTL', 'EKAWARSA', '2021-05-24', '2021-06-11', 0, '0-30', 669915, 0, 669915, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 669915, 669915, '2021-06-10', '5460316199', 'BCA', 669915, 669915, 0, '', NULL, 24, '001067/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(812, '1032103221/002-DN', '1032103221/002/AJRI-DN/IV/2021', '1032103000221', 'PT. USAHA PEMBIAYAAN RELIANCE INDONESIA QQ APARTEMENT LA CITY', '', 'PT. USAHA PEMBIAYAAN RELIANCE INDONESIA', 'RCL', 'JANGKAWARSA', '2021-04-15', '2021-05-06', 36, '31-60', 260035725, 0, 260035725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 260035725, 260035725, '2021-06-11', '5460316199', 'BCA', 260035725, 260035725, 0, '', NULL, 33, '000765/UW-M/AJRI/IV/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(813, '1032104224/045-DN', '1032104224/045/AJRI-DN/VI/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-06-02', '2021-06-23', 0, '0-30', 2636980, 0, 2636980, 263698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2373282, 2373282, '2021-05-28', '1220101001278', 'KERTA RAHARJA', 2373282, 2373282, 0, '', NULL, 22, '001138/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(814, '1032104224/044-DN', '1032104224/044/AJRI-DN/V/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-06-01', '2021-06-21', 0, '0-30', 3200100, 0, 3200100, 320010, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2880090, 2880090, '2021-05-25', '1220101001278', 'KERTA RAHARJA', 2880090, 2880090, 0, '', NULL, 2, '001129/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(815, '1031510062/015-DN', '1031510062/015/AJRI-DN/V/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-05-25', '2021-06-14', 0, '0-30', 275500, 0, 275500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 275500, 275500, '2021-06-10', '5460316199', 'BCA', 275500, 275500, 0, '', NULL, 3, '001079/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(816, '1032104224/046-DN', '1032104224/046/AJRI-DN/VI/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-06-02', '2021-06-23', 0, '0-30', 274200, 0, 274200, 27420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 246780, 246780, '2021-05-28', '1220101001278', 'KERTA RAHARJA', 246780, 246780, 0, '', NULL, 2, '001139/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(817, '1032104224/047-DN', '1032104224/047/AJRI-DN/VI/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-06-02', '2021-06-23', 0, '0-30', 7528280, 0, 7528280, 752828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6775452, 6775452, '2021-05-31', '1220101001278', 'KERTA RAHARJA', 6775452, 6775452, 0, '', NULL, 31, '001140/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(818, '1031602072/022-DN', '1031602072/022/AJRI-DN/VI/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-06-03', '2021-06-23', 0, '0-30', 2921560, 0, 2921560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2921560, 2921560, '2021-06-11', '5460316199', 'BCA', 2921560, 2921560, 0, '', NULL, 14, '001144/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(819, '1011710134/008-DN', '1011710134/008/AJRI-DN/VI/2021', '1011710000134', 'PT. BPR BANTORU PERINTIS', '', 'PT. BPR BANTORU PERINTIS', 'RTL', 'JANGKAWARSA', '2021-06-03', '2021-06-24', 0, '0-30', 172640, 0, 172640, 17264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 155376, 155376, '2021-06-15', '5460316199', 'BCA', 155376, 155376, 0, '', NULL, 6, '001162/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(820, '1032009201/007-DN', '1032009201/007/AJRI-DN/VI/2021', '1032009000201', 'PT BUMI INSURANCE BROKERS QQ PT BPR GUNADHANA MITRASEMBADA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-06-03', '2021-07-03', 0, '0-30', 10011750, 0, 10011750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10011750, 10011750, '2021-06-22', '5460316199', 'BCA', 10011750, 10011750, 0, '', NULL, 4, '001156/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(821, '1011801139/007-DN', '1011801139/007/AJRI-DN/VI/2021', '1011801000139', 'PT. BPR LAKSANA BINA CIMANGGIS', '', 'PT. BPR LAKSANA BINA CIMANGGIS', 'RTL', 'JANGKAWARSA', '2021-06-03', '2021-06-24', 0, '0-30', 459330, 0, 459330, 45933, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 413397, 413397, '2021-06-15', '5460316199', 'BCA', 413397, 413397, 0, '', NULL, 3, '001167/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(822, '1041406007/394-DN', '1041406007/394/AJRI-DN-E/VI/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-03', '2021-07-03', 0, '0-30', -51300, 0, -51300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -51300, -51300, '2021-06-18', '5460316199', 'BCA', -51300, -51300, 0, '', NULL, 1, '497/UW-M-END/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(823, '1031711127/005-DN', '1031711127/005/AJRI-DN/V/2021', '1031711000127', 'BUKP WIROBRAJAN', '', 'BUKP WIROBRAJAN', 'RCL', 'JANGKAWARSA', '2021-06-01', '2021-06-21', 0, '0-30', 609822, 0, 609822, 121964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 487858, 487858, '2021-06-10', '5460316199', 'BCA', 487858, 487858, 0, '', NULL, 36, '001128/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(824, '1012104233/009-DN', '1012104233/009/AJRI-DN/VI/2021', '1012104000233', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RTL', 'JANGKAWARSA', '2021-06-03', '2021-06-24', 0, '0-30', 1883450, 0, 1883450, 188345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1695105, 1695105, '2021-05-31', '1220101001278', 'KERTA RAHARJA', 1695105, 1695105, 0, '', NULL, 16, '001143/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(825, '1032104224/048-DN', '1032104224/048/AJRI-DN/VI/2021', '1032104000224', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-06-03', '2021-06-24', 0, '0-30', 848940, 0, 848940, 84894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 764046, 764046, '2021-05-31', '1220101001278', 'KERTA RAHARJA', 764046, 764046, 0, '', NULL, 6, '001161/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(826, '1021406014/053-DN', '1021406014/053/AJRI-DN/VI/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-06-03', '2021-07-03', 0, '0-30', 16145300, 0, 16145300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16145300, 16145300, '2021-06-29', '5460316199', 'BCA', 16145300, 16145300, 0, '', NULL, 4, '001163/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(827, '1041406007/061-DN', '1041406007/061/AJRI-DN/VI/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-03', '2021-07-03', 0, '0-30', 3076500, 0, 3076500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3076500, 3076500, '2021-06-29', '5460316199', 'BCA', 3076500, 3076500, 0, '', NULL, 2, '001166/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(828, '1031709125/010-DN', '1031709125/010/AJRI-DN/VI/2021', '1031709000125', 'PT BPR NBP 32 KARAWANG', '', 'PT BPR NBP 32 KARAWANG', 'RCL', 'JANGKAWARSA', '2021-06-03', '2021-06-24', 0, '0-30', 1218237, 0, 1218237, 243647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 974590, 974590, '2021-06-15', '5460316199', 'BCA', 974590, 974590, 0, '', NULL, 3, '001172/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(829, '1032003190/008-DN', '1032003190/008/AJRI-DN/VI/2021', '1032003000190', 'KOPERASI PEGAWAI PEMERINTAH KAB. BANDUNG \"RAPEH RAPIH KERTA RAHARDJA\" (RRKR)', '', 'KOPERASI PEGAWAI PEMERINTAH KAB. BANDUNG \"RAPEH RAPIH KERTA RAHARDJA\" (RRKR)', 'RCL', 'JANGKAWARSA', '2021-06-03', '2021-06-24', 0, '0-30', 1676175, 0, 1676175, 167618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1508558, 1508558, '2021-06-23', '5460316199', 'BCA', 1508558, 1508557, 1, '', NULL, 49, '001148/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(830, '1021307003/007-DN', '1021307003/007/AJRI-DN/VI/2021', '1041307000014', 'PT. ASURANSI MEGA PRATAMA (TETAP)', '', 'PT. ASURANSI MEGA PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-06-03', '2021-07-03', 0, '0-30', 5480700, 0, 5480700, 548070, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4932630, 4932630, '2021-06-24', '5460316199', 'BCA', 4932630, 4932630, 0, '', NULL, 35, '001150/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(831, '1031405016/008-DN', '1031405016/008/AJRI-DN/VI/2021', '1031405000016', 'PT. BPR BUMI PENDAWA RAHARJA', '', 'PT. BPR BUMI PENDAWA RAHARJA', 'RCL', 'JANGKAWARSA', '2021-06-03', '2021-06-23', 0, '0-30', 4627332, 0, 4627332, 1156833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3470499, 3470499, '2021-06-14', '5460316199', 'BCA', 3470499, 3470499, 0, '', NULL, 7, '001169/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(832, '1031709125/009-DN', '1031709125/009/AJRI-DN/V/2021', '1031709000125', 'PT BPR NBP 32 KARAWANG', '', 'PT BPR NBP 32 KARAWANG', 'RCL', 'JANGKAWARSA', '2021-06-01', '2021-06-18', 0, '0-30', 801660, 0, 801660, 160332, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 641328, 641328, '2021-06-15', '5460316199', 'BCA', 641328, 641328, 0, '', NULL, 2, '001107/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(833, '1041307003/021-DN', '1041307003/021/AJRI-DN/VI/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-03', '2021-07-03', 0, '0-30', 20224425, 0, 20224425, 2022443, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18201983, 18201983, '2021-06-24', '5460316199', 'BCA', 18201983, 18201983, 0, '', NULL, 69, '001158/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:21', '2021-07-13 09:29:21', NULL),
(834, '1041307003/022-DN', '1041307003/022/AJRI-DN/VI/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-03', '2021-07-03', 0, '0-30', 1034000, 0, 1034000, 103400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 930600, 930600, '2021-06-24', '5460316199', 'BCA', 930600, 930600, 0, '', NULL, 1, '001160/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(835, '1032008196/007-DN', '1032008196/007/AJRI-DN/VI/2021', '1032008000196', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-06-04', '2021-07-04', 0, '0-30', 1597750, 0, 1597750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1597750, 1597750, '2021-06-22', '5460316199', 'BCA', 1597750, 1597750, 0, '', NULL, 1, '001175/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(836, '1012101216/009-DN', '1012101216/009/AJRI-DN/VI/2021', '1012101000216', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-06-04', '2021-07-04', 0, '0-30', 660000, 0, 660000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 660000, 660000, '2021-06-22', '5460316199', 'BCA', 660000, 660000, 0, '', NULL, 1, '001176/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(837, '1012103230/007-DN', '1012103230/007/AJRI-DN/VI/2021', '1012103000230', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SARI JAYA SADHANA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-06-04', '2021-07-16', 0, '0-30', 651015, 0, 651015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 651015, 651015, '2021-06-22', '5460316199', 'BCA', 651015, 651015, 0, '', NULL, 8, '001178/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(838, '1032101207/006-DN', '1032101207/006/AJRI-DN/VI/2021', '1032101000207', 'PT BUMI INSURANCE BROKERS QQ KOPERASI SAD KERTA WINANGUN', '', 'PT. BUMI INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-06-04', '2021-07-04', 0, '0-30', 56550, 0, 56550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56550, 56550, '2021-06-22', '5460316199', 'BCA', 56550, 56550, 0, '', NULL, 7, '001179/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(839, '1021406014/054-DN', '1021406014/054/AJRI-DN/VI/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-06-04', '2021-07-04', 0, '0-30', 2030091, 0, 2030091, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2030091, 2030091, '2021-06-29', '5460316199', 'BCA', 2030091, 2030091, 0, '', NULL, 4, '001180/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(840, '1041307003/020-DN', '1041307003/020/AJRI-DN/V/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-24', '2021-06-23', 1, '0-30', 12670990, 0, 12670990, 1267099, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11403891, 11403891, '2021-06-24', '5460316199', 'BCA', 11403891, 11403891, 0, '', NULL, 3, '001066/UW-M/AJRI/V/2021', '', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(841, '1022101084/006-DN', '1022101084/006/AJRI-DN/V/2021', '1022101000084', 'PT KSK INSURANCE INDONESIA', '', 'PT KSK INSURANCE INDONESIA', 'RTL ND', 'JANGKAWARSA', '2021-06-01', '2021-06-21', 3, '0-30', 5584040, 0, 5584040, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5584040, 5584040, '2021-06-24', '5460316199', 'BCA', 5584040, 5584040, 0, '', NULL, 85, '007935/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(842, '1031803149/007-DN', '1031803149/007/AJRI-DN/VI/2021', '1031803000149', 'BUKP NGAMPILAN', '', 'BUKP NGAMPILAN', 'RCL', 'JANGKAWARSA', '2021-06-05', '2021-06-25', 0, '0-30', 167795, 0, 167795, 33559, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 134236, 134236, '2021-06-14', '5460316199', 'BCA', 134236, 134236, 0, '', NULL, 18, '001183/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(843, '1012009206/010-DN', '1012009206/010/AJRI-DN/VI/2021', '1012009000206', 'PT. BUMI INSURANCE BROKERS QQ PT BPR PADMA', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-06-05', '2021-07-05', 0, '0-30', 4020115, 0, 4020115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4020115, 4020115, '2021-06-22', '5460316199', 'BCA', 4020115, 4020115, 0, '', NULL, 9, '001181/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(844, '1012008205/010-DN', '1012008205/010/AJRI-DN/VI/2021', '1012008000205', 'PT. BUMI INSURANCE BROKERS QQ KOPERASI GRIYA MANDIRI', '', 'PT. BUMI INSURANCE BROKER', 'RTL', 'JANGKAWARSA', '2021-06-05', '2021-07-05', 0, '0-30', 322200, 0, 322200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 322200, 322200, '2021-06-22', '5460316199', 'BCA', 322200, 322200, 0, '', NULL, 6, '001182/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(845, '1012104233/010-DN', '1012104233/010/AJRI-DN/VI/2021', '1012104000233', 'PT BPR KERTA RAHARJA', '', 'PT BPR KERTA RAHARJA', 'RTL', 'JANGKAWARSA', '2021-06-05', '2021-06-25', 0, '0-30', 1909020, 0, 1909020, 190902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1718118, 1718118, '2021-05-31', '1220101001278', 'KERTA RAHARJA', 1718118, 1718118, 0, '', NULL, 11, '001184/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(846, '1041307003/023-DN', '1041307003/023/AJRI-DN/VI/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-05', '2021-07-05', 0, '0-30', 186837252, 0, 186837252, 18683725, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 168153527, 168153527, '2021-06-24', '5460316199', 'BCA', 168153527, 168153527, 0, '', NULL, 1581, '001185/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(847, '1041307003/024-DN', '1041307003/024/AJRI-DN/VI/2021', '1041307000010', 'PT. ASURANSI MEGA PRATAMA (MENURUN)', '', 'PT. ASURANSI MEGA PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-05', '2021-07-05', 0, '0-30', 4432900, 0, 4432900, 443290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3989610, 3989610, '2021-06-24', '5460316199', 'BCA', 3989610, 3989610, 0, '', NULL, 2, '001186/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(848, '1031711127/006-DN', '1031711127/006/AJRI-DN/VI/2021', '1031711000127', 'BUKP WIROBRAJAN', '', 'BUKP WIROBRAJAN', 'RCL', 'JANGKAWARSA', '2021-06-07', '2021-06-28', 0, '0-30', 590254, 0, 590254, 118051, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 472203, 472203, '2021-06-18', '5460316199', 'BCA', 472203, 472203, 0, '', NULL, 31, '001190/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(849, '1031602068/014-DN', '1031602068/014/AJRI-DN/VI/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-06-07', '2021-06-25', 0, '0-30', 963225, 0, 963225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 963225, 963225, '2021-06-22', '5460316199', 'BCA', 963225, 963225, 0, '', NULL, 16, '001187/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(850, '1041709045/034-DN', '1041709045/034/AJRI-DN/VI/2021', '1041709000045', 'PT ASURANSI HARTA AMAN, Tbk', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-07', '2021-07-07', 0, '0-30', 3384000, 0, 3384000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3384000, 3384000, '2021-06-29', '5460316199', 'BCA', 3384000, 3384000, 0, '', NULL, 1, '001192/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(851, '1031906177/012-DN', '1031906177/012/AJRI-DN/VI/2021', '1031906000177', 'PT PINDAD PERSERO', '', 'PT PINDAD PERSERO', 'RCL', 'JANGKAWARSA', '2021-06-07', '2021-06-28', 0, '0-30', 940100, 0, 940100, 188020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 752080, 752080, '2021-06-15', '5460316199', 'BCA', 752080, 749180, 2900, '', NULL, 3, '001193/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(852, '1041406007/062-DN', '1041406007/062/AJRI-DN/VI/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-07', '2021-07-07', 0, '0-30', 3290000, 0, 3290000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3290000, 3290000, '2021-06-29', '5460316199', 'BCA', 3290000, 3290000, 0, '', NULL, 1, '001194/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(853, '1031709125/012-DN', '1031709125/012/AJRI-DN/VI/2021', '1031709000125', 'PT BPR NBP 32 KARAWANG', '', 'PT BPR NBP 32 KARAWANG', 'RCL', 'JANGKAWARSA', '2021-06-07', '2021-06-28', 0, '0-30', 167100, 0, 167100, 33420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133680, 133680, '2021-06-15', '5460316199', 'BCA', 133680, 133680, 0, '', NULL, 1, '001195/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(854, '1011801142/003-DN', '1011801142/003/AJRI-DN/VI/2021', '1011801000142', 'PT. BPR HARTA TANAMAS', '', 'PT. BPR HARTA TANAMAS', 'RTL', 'JANGKAWARSA', '2021-06-07', '2021-06-28', 0, '0-30', 258000, 0, 258000, 25800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 232200, 232200, '2021-06-25', '5460316199', 'BCA', 232200, 232200, 0, '', NULL, 1, '001188/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:29:22', '2021-07-13 09:29:22', NULL),
(855, '1032011205/007-DN', '1032011205/007/AJRI-DN/VI/2021', '1032011000205', 'PT. AA PIALANG ASURANSI QQ PT BANK TABUNGAN NEGARA (PERSERO)', '', 'PT AA PIALANG ASURANSI', 'RCL', 'JANGKAWARSA', '2021-06-08', '2021-09-06', 0, '0-30', 120158124, 0, 120158124, 36047437, 0, 0, 0, 3604744, -720949, 0, 0, 0, 0, 0, 84110687, 81226892, NULL, '', '', 0, 0, 81226892, '', NULL, 104, '007943/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(856, '1031602072/023-DN', '1031602072/023/AJRI-DN/VI/2021', '1031602000072', 'PT. BPR MITRA RUKUN MANDIRI', '', 'PT. BPR MITRA RUKUN MANDIRI', 'RCL', 'JANGKAWARSA', '2021-06-08', '2021-06-28', 0, '0-30', 1350446, 0, 1350446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1350446, 1350446, '2021-06-15', '5460316199', 'BCA', 1350446, 1350446, 0, '', NULL, 10, '001197/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(857, '1031804152/002-DN', '1031804152/002/AJRI-DN/V/2021', '1031804000152', 'KSP SIDHA SIDHI SEDANA', '', 'KSP SIDHA SIDHI SEDANA', 'RCL', 'JANGKAWARSA', '2021-05-25', '2021-06-15', 0, '0-30', 1089900, 0, 1089900, 108990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 980910, 980910, '2021-06-15', '5460316199', 'BCA', 980910, 980910, 0, '', NULL, 3, '001094/UW-M/AJRI/V/2021', '', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(858, '1041406007/393-DN', '1041406007/393/AJRI-CN-C/V/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-05-28', '2021-06-27', 0, '0-30', -85500, 0, -85500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -85500, -85500, '2021-06-18', '5460316199', 'BCA', -85500, -85500, 0, '', NULL, 2, '242/UW-M-CNCL/AJRI/V/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(859, '1011704120/010-DN', '1011704120/010/AJRI-DN/VI/2021', '1011704000120', 'PT BPR SUKMA KEMANG AGUNG', '', 'PT BPR SUKMA KEMANG AGUNG', 'RTL', 'JANGKAWARSA', '2021-06-09', '2021-06-30', 0, '0-30', 1565800, 0, 1565800, 156580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1409220, 1409220, '2021-06-16', '5460316199', 'BCA', 1409220, 1409220, 0, '', NULL, 2, '001209/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(860, '1011801140/003-DN', '1011801140/003/AJRI-DN/VI/2021', '1011801000140', 'PT BPR ARTHAKELOLA CAHAYATAMA', '', 'PT BPR ARTHAKELOLA CAHAYATAMA', 'RTL', 'JANGKAWARSA', '2021-06-09', '2021-06-30', 0, '0-30', 244850, 0, 244850, 24485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220365, 220365, '2021-06-15', '5460316199', 'BCA', 220365, 220365, 0, '', NULL, 2, '001206/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(861, '1031609090/005-DN', '1031609090/005/AJRI-DN/VI/2021', '1031609000090', 'PT.BPR DIAN FARAQO GEMILANG', '', 'CAKRABUANA INSURANCE BROKER', 'RCL', 'JANGKAWARSA', '2021-06-09', '2021-06-29', 0, '0-30', 4997350, 0, 4997350, 1499205, 0, 0, 0, 0, -29984, 0, 0, 0, 0, 0, 3498145, 3528129, '2021-06-15', '5460316199', 'BCA', 3528129, 3528129, 0, '', NULL, 16, '001205/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(862, '1031812168/006-DN', '1031812168/006/AJRI-DN/VI/2021', '1031812000168', 'PT BPR KARINAMAS PERMAI', '', 'PT BPR KARINAMAS PERMAI', 'RCL', 'JANGKAWARSA', '2021-06-10', '2021-07-01', 0, '0-30', 472900, 0, 472900, 47290, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 425610, 425610, '2021-06-22', '5460316199', 'BCA', 425610, 425700, -90, '', NULL, 4, '001214/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(863, '1031802142/008-DN', '1031802142/008/AJRI-DN/V/2021', '1031802000142', 'PT BPR HARTA TANAMAS', '', 'PT. BPR HARTA TANAMAS', 'RCL', 'JANGKAWARSA', '2021-05-28', '2021-06-18', 7, '0-30', 2381300, 0, 2381300, 238130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2143170, 2143170, '2021-06-25', '5460316199', 'BCA', 2143170, 2143170, 0, '', NULL, 4, '001112/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(864, '1031709125/013-DN', '1031709125/013/AJRI-DN/VI/2021', '1031709000125', 'PT BPR NBP 32 KARAWANG', '', 'PT BPR NBP 32 KARAWANG', 'RCL', 'JANGKAWARSA', '2021-06-11', '2021-07-02', 0, '0-30', 4771920, 0, 4771920, 954384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3817536, 3817536, '2021-06-24', '5460316199', 'BCA', 3817536, 3817536, 0, '', NULL, 20, '001221/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(865, '1032103223/003-DN', '1032103223/003/AJRI-DN/VI/2021', '1032103000223', 'PT BPR MUARA SUMBER DANA', '', 'PT BPR MUARA SUMBER DANA', 'RCL', 'JANGKAWARSA', '2021-06-11', '2021-07-02', 0, '0-30', 5013000, 0, 5013000, 501300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4511700, 4511700, '2021-06-22', '5460316199', 'BCA', 4511700, 4511700, 0, '', NULL, 1, '001222/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(866, '1021406014/051-DN', '1021406014/051/AJRI-DN/V/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-05-21', '2021-06-20', 0, '0-30', 692960, 0, 692960, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 692960, 692960, '2021-06-18', '5460316199', 'BCA', 692960, 692960, 0, '', NULL, 3, '001058/UW-M/AJRI/V/2021', '', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(867, '1021406014/052-DN', '1021406014/052/AJRI-DN/V/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-06-01', '2021-06-27', 0, '0-30', 110100, 0, 110100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110100, 110100, '2021-06-18', '5460316199', 'BCA', 110100, 110100, 0, '', NULL, 2, '001106/UW-M/AJRI/V/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(868, '1032103221/001-DN', '1032103221/001/AJRI-DN/IV/2021', '1032103000221', 'PT. USAHA PEMBIAYAAN RELIANCE INDONESIA QQ APARTEMENT LA CITY', '', 'PT. USAHA PEMBIAYAAN RELIANCE INDONESIA', 'RCL', 'JANGKAWARSA', '2021-04-13', '2021-05-04', 45, '31-60', 386512663, 0, 386512663, 0, 0, 0, 0, 0, 0, 0, 0, 100000, 0, 10000, 386512663, 386622663, '2021-06-18', '5460316199', 'BCA', 386622663, 386622663, 0, '', NULL, 46, '000711/UW-M/AJRI/IV/2021', '', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(869, '1021406014/055-DN', '1021406014/055/AJRI-DN/VI/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-06-11', '2021-07-11', 0, '0-30', 17400, 0, 17400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17400, 17400, '2021-06-29', '5460316199', 'BCA', 17400, 17400, 0, '', NULL, 1, '001225/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(870, '1041406007/063-DN', '1041406007/063/AJRI-DN/VI/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-14', '2021-07-14', 0, '0-30', 2565000, 0, 2565000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2565000, 2565000, '2021-06-29', '5460316199', 'BCA', 2565000, 2565000, 0, '', NULL, 1, '001227/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(871, '1031602068/015-DN', '1031602068/015/AJRI-DN/VI/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-06-14', '2021-07-02', 3, '0-30', 1592950, 0, 1592950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1592950, 1592950, '2021-07-05', '5460316199', 'BCA', 1592950, 1592950, 0, '', NULL, 26, '001230/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(872, '1031908183/007-DN', '1031908183/007/AJRI-DN/VI/2021', '1031908000183', 'BUKP SLEMAN', '', 'BUKP SLEMAN', 'RCL', 'JANGKAWARSA', '2021-06-15', '2021-07-06', 0, '0-30', 701930, 0, 701930, 140386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 561544, 561544, '2021-06-22', '5460316199', 'BCA', 561544, 561544, 0, '', NULL, 18, '001238/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(873, '1021406014/056-DN', '1021406014/056/AJRI-DN/VI/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-06-15', '2021-07-15', 0, '0-30', 283800, 0, 283800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 283800, 283800, '2021-06-29', '5460316199', 'BCA', 283800, 283800, 0, '', NULL, 1, '001242/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(874, '1012001193/006-DN', '1012001193/006/AJRI-DN/VI/2021', '1012001000193', 'PT. PIALANG ASURANSI INDOTEKNO', '', 'PT. PIALANG ASURANSI INDOTEKNO', 'RTL', 'EKAWARSA', '2021-05-30', '2021-06-18', 10, '0-30', 3286700, 0, 3286700, 986010, 0, 0, 0, 98601, -19720, 0, 0, 0, 0, 0, 2300690, 2221809, '2021-06-28', '5460316199', 'BCA', 2221809, 2221809, 0, '', NULL, 23, '000796/UW-M/AJRI/IV/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(875, '1021406014/057-DN', '1021406014/057/AJRI-DN/VI/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-06-15', '2021-07-15', 0, '0-30', 552031, 0, 552031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 552031, 552031, '2021-06-29', '5460316199', 'BCA', 552031, 552031, 0, '', NULL, 5, '001249/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(876, '1021406014/058-DN', '1021406014/058/AJRI-DN/VI/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-06-15', '2021-07-15', 0, '0-30', 2095700, 0, 2095700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2095700, 2095700, '2021-06-29', '5460316199', 'BCA', 2095700, 2095700, 0, '', NULL, 1, '001250/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(877, '1041406007/405-DN', '1041406007/405/AJRI-DN-E/VI/2021', '1041406000007', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (MENURUN)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-16', '2021-07-16', 0, '0-30', -13160, 0, -13160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -13160, -13160, '2021-06-29', '5460316199', 'BCA', -13160, -13160, 0, '', NULL, 1, '515/UW-M-END/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(878, '1021406014/059-DN', '1021406014/059/AJRI-DN/VI/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-06-17', '2021-07-17', 0, '0-30', 17445, 0, 17445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17445, 17445, '2021-06-29', '5460316199', 'BCA', 17445, 17445, 0, '', NULL, 1, '001256/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(879, '1021406014/060-DN', '1021406014/060/AJRI-DN/VI/2021', '1021406000014', 'PT. ASURANSI HARTA AMAN PRATAMA, Tbk (TETAP)', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RTLND', 'JANGKAWARSA', '2021-06-17', '2021-07-17', 0, '0-30', 145000, 0, 145000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 145000, 145000, '2021-06-29', '5460316199', 'BCA', 145000, 145000, 0, '', NULL, 1, '001257/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(880, '1041707044/007-DN', '1041707044/007/AJRI-DN/VI/2021', '1041707000044', 'PT. ASURANSI HARTA AMAN PRATAMA. Tbk QQ BPR NUSANTARA BONA PASOGIT', '', 'PT. ASURANSI HARTA AMAN PRATAMA', 'RCLND', 'JANGKAWARSA', '2021-06-17', '2021-07-17', 0, '0-30', 2288630, 0, 2288630, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2288630, 2288630, '2021-06-29', '5460316199', 'BCA', 2288630, 2288630, 0, '', NULL, 48, '001265/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(881, '1031609089/008-DN', '1031609089/008/AJRI-DN/VI/2021', '1031609000089', 'BPR MURIA HARTA NUSANTARA', '', 'BPR MURIA HARTA NUSANTARA', 'RCL', 'JANGKAWARSA', '2021-06-17', '2021-07-08', 0, '0-30', 9786512, 0, 9786512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9786512, 9786512, '2021-06-29', '5460316199', 'BCA', 9786512, 9786512, 0, '', NULL, 27, '001276/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(882, '1031510062/016-DN', '1031510062/016/AJRI-DN/VI/2021', '1031510000062', 'KOPERASI KARYAWAN PERMATA BANK', '', 'KOPERASI KARYAWAN PERMATA BANK', 'RCL', 'JANGKAWARSA', '2021-06-18', '2021-07-08', 0, '0-30', 221400, 0, 221400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221400, 221400, '2021-07-01', '5460316199', 'BCA', 221400, 221400, 0, '', NULL, 5, '001294/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(883, '1011609094/017-DN', '1011609094/017/AJRI-DN/VI/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-06-18', '2021-07-08', 0, '0-30', 450000, 0, 450000, 135000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 315000, 315000, '2021-07-05', '5460316199', 'BCA', 315000, 315000, 0, '', NULL, 5, '001303/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(884, '1011609094/018-DN', '1011609094/018/AJRI-DN/VI/2021', '1011609000094', 'LPD TEGALLALANG GIANYAR', '', 'LPD TEGALLALANG GIANYAR', 'RTL', 'EKAWARSA', '2021-06-18', '2021-07-08', 0, '0-30', 450000, 0, 450000, 135000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 315000, 315000, '2021-07-05', '5460316199', 'BCA', 315000, 315000, 0, '', NULL, 9, '001304/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL);
INSERT INTO `migration_data` (`id`, `no_register`, `nomor_invoice`, `nomor_polis`, `nama_pemegang_polis`, `sub_polis`, `sub_pemegang_polis`, `jenis_produk`, `line_of_business`, `tanggal_terbit`, `jatuh_tempo`, `aging`, `klasifikasi_aging`, `premi_bruto`, `extra_premi`, `premi_gross`, `discount`, `komisi`, `fee_base`, `lain_lain`, `pajak_ppn`, `pajak_pph`, `pajak_lain`, `biaya_administrasi`, `biaya_polis`, `biaya_sertifikat`, `biaya_materai`, `premi_netto`, `jumlah_bayar`, `tanggal_pendapatan`, `no_rekening`, `bank`, `amount`, `pembayaran`, `piutang`, `status`, `pengajuan_komisi`, `jumlah_peserta`, `no_memo`, `period`, `created_at`, `updated_at`, `manajemen_fee`) VALUES
(885, '1031602068/017-DN', '1031602068/017/AJRI-DN/VI/2021', '1031602000068', 'BPR ARTAGANDHITA', '', 'BPR ARTAGANDHITA', 'RCL', 'JANGKAWARSA', '2021-06-21', '2021-07-09', 0, '0-30', 467500, 0, 467500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 467500, 467500, '2021-07-05', '5460316199', 'BCA', 467500, 467500, 0, '', NULL, 1, '001309/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(886, '1031903172/003-DN', '1031903172/003/AJRI-DN/VI/2021', '1031903000172', 'BUKP KECAMATAN TEMPEL', '', 'BUKP KECAMATAN TEMPEL', 'RCL', 'JANGKAWARSA', '2021-06-23', '2021-07-14', 0, '0-30', 494070, 0, 494070, 98814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 395256, 395256, '2021-06-30', '5460316199', 'BCA', 395256, 395256, 0, '', NULL, 5, '001361/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(887, '1031603071/008-DN', '1031603071/008/AJRI-DN/VI/2021', '1031603000071', 'PT.BPR DUTA ARTHA SEJAHTERA', '', 'PT.BPR DUTA ARTHA SEJAHTERA', 'RCL', 'JANGKAWARSA', '2021-06-23', '2021-07-13', 0, '0-30', 3764461, 0, 3764461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3764461, 3764461, '2021-06-30', '5460316199', 'BCA', 3764461, 3764461, 0, '', NULL, 24, '001378/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(888, '1031510060/004-DN', '1031510060/004/AJRI-DN/VI/2021', '1031510000060', 'PT. USAHA PEMBIAYAAN RELIANCE INDONESIA', '', 'PT. USAHA PEMBIAYAAN RELIANCE INDONESIA', 'RCL', 'JANGKAWARSA', '2021-06-23', '2021-07-23', 0, '0-30', 7669626, 0, 7669626, 2300888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5368738, 5368738, '2021-07-01', '5460316199', 'BCA', 5368738, 5394738, -26000, '', NULL, 1, '001387/UW-M/AJRI/VI/2021', 'Juni', '2021-07-13 09:31:15', '2021-07-13 09:31:15', NULL),
(889, '000337/UWS-M/', '000337/UWS-M/AJRI-US/I/2021', '6041902000001', 'PT ASURANSI JASINDO SYARIAH QQ BANK SYARIAH MANDIRI (IMPLAN)', NULL, NULL, 'RPNDS', NULL, '2021-01-14', '2021-02-28', 8, NULL, 1787175, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1787175, 1787175, '2021-03-09', '7107025264', 'BSM', 1787175, 202047064, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(890, '000338/UWS-M/', '000338/UWS-M/AJRI-US/I/2021', '6041906000013', 'PT. ASURANSI JASINDO SYARIAH QQ BANK UMUM (GRAHA)', NULL, NULL, 'RPNDS', NULL, '2021-01-14', '2021-02-20', 16, NULL, 14287624, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14287624, 14287624, '2021-03-09', '7107025264', 'BSM', 14287624, 202047064, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(891, '000339/UWS-M/', '000339/UWS-M/AJRI-US/I/2021', '6032002000002', 'PT ASURANSI CENTRAL ASIA UNIT SYARIAH', NULL, NULL, 'RTLNDS', NULL, '2021-01-27', '2021-03-08', 0, NULL, 70400, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56320, 56320, '2021-01-29', '7107025264', 'BSM', 56320, 15518010, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(892, '000340/UWS-M/', '000340/UWS-M/AJRI-US/I/2021', '6032002000003', 'PT ASURANSI HARTA AMAN, TBK', NULL, NULL, 'RTLNDS', NULL, '2021-01-27', '2021-03-08', 0, NULL, 57600, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46080, 46080, '2021-03-05', '7107025264', 'BSM', 46080, 12696554, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(893, '000341/UWS-M/', '000341/UWS-M/AJRI-US/I/2021', '6041912000015', 'PT ASURANSI CENTRAL ASIA UNIT SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-01-27', '2021-03-08', 0, NULL, 19327113, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15461690, 15461690, '2021-01-29', '7107025264', 'BSM', 15461690, 15518010, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(894, '000342/UWS-M/', '000342/UWS-M/AJRI-US/I/2021', '6042001000016', 'PT ASURANSI HARTA AMAN, TBK', NULL, NULL, 'RPNDS', NULL, '2021-01-27', '2021-03-08', 0, NULL, 15813092, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12650474, 12650474, '2021-03-05', '7107025264', 'BSM', 12650474, 12696554, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(895, '000343/UWS-M/', '000343/UWS-M/AJRI-US/I/2021', '6031907000001', 'PT ASURANSI JASINDO SYARIAH QQ BANK UMUM SYARIAH, BPD SYARIAH, BPR SYARIAH, KOPERASI SYARIAH DAN LEMBAGA KEUANGAN NON BANK SYARIAH', NULL, NULL, 'RTLNDS', NULL, '2021-01-29', '2021-03-08', 1, NULL, 26394450, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26394450, 26394450, '2021-03-09', '7107025264', 'BSM', 26394450, 202047064, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(896, '000344/UWS-M/', '000344/UWS-M/AJRI-US/I/2021', '6041903000005', 'PT ASURANSI JASINDO SYARIAH QQ  BANK UMUM SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-01-29', '2021-03-15', 31, NULL, 255746180, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255746180, 255746180, '2021-04-15', '7107025264', 'BSM', 255746180, 279964255, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(897, '000345/UWS-M/', '000345/UWS-M/AJRI-US/I/2021', '6032006000004', 'PT. ASURANSI JASINDO SYARIAH QQ ANAK BUAH KAPAL (ABK)', NULL, NULL, 'RTLNDS', NULL, '2021-01-29', '2021-03-08', 1, NULL, 21748800, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21748800, 21748800, '2021-03-09', '7107025264', 'BSM', 21748800, 202047064, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(898, '000346/UWS-M/', '000346/UWS-M/AJRI-US/I/2021', '6032101000005', 'PT. ASURANSI JASINDO SYARIAH QQ KARYAWAN BKI (BIRO KLASIFIKASI INDONESIA)', NULL, NULL, 'RTLNDS', NULL, '2021-01-29', '2021-03-08', 1, NULL, 78234000, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 99000, 0, 0, 78234000, 78333000, '2021-03-09', '7107025264', 'BSM', 78333000, 202047064, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(899, '000347/UWS-M/', '000347/UWS-M/AJRI-US/I/2021', '6011710000001', 'PT. BPR MATAHARI ARTADAYA', NULL, NULL, 'RPS', NULL, '2021-01-29', '2021-02-28', 0, NULL, 2593450, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2334105, 2334105, '2021-01-05', '7107025264', 'BSM', 2334105, 0, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(900, '0020/END-UWS/', '0020/END-UWS/AJRIUS/I/2021', '6041903000005', 'PT ASURANSI JASINDO SYARIAH QQ  BANK UMUM SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-01-29', '2021-03-15', 30, NULL, -12300, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, -4100, -4100, '2021-04-15', '7107025264', 'BSM', -4100, 279964255, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(901, '000348/UWS-M/', '000348/UWS-M/AJRI-US/II/2021', '6032006000004', 'PT. ASURANSI JASINDO SYARIAH QQ ANAK BUAH KAPAL (ABK)', NULL, NULL, 'RTLNDS', NULL, '2021-02-18', '2021-03-27', 19, NULL, 24205200, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24205200, 24205200, '2021-04-15', '7107025264', 'BSM', 24205200, 279964255, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(902, '000349/UWS-M/', '000349/UWS-M/AJRI-US/II/2021', '6041906000013', 'PT. ASURANSI JASINDO SYARIAH QQ BANK UMUM (GRAHA)', NULL, NULL, 'RPNDS', NULL, '2021-02-24', '2021-04-02', 2, NULL, 64183639, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64183639, 64183639, '2021-04-05', '7107025264', 'BSM', 64183639, 271002338, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(903, '000350/UWS-M/', '000350/UWS-M/AJRI-US/II/2021', '6041903000005', 'PT ASURANSI JASINDO SYARIAH QQ  BANK UMUM SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-02-24', '2021-04-10', 0, NULL, 206818699, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 206818699, 206818699, '2021-04-05', '7107025264', 'BSM', 206818699, 271002338, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(904, '000351/UWS-M/', '000351/UWS-M/AJRI-US/II/2021', '6031907000001', 'PT ASURANSI JASINDO SYARIAH QQ BANK UMUM SYARIAH, BPD SYARIAH, BPR SYARIAH, KOPERASI SYARIAH DAN LEMBAGA KEUANGAN NON BANK SYARIAH', NULL, NULL, 'RTLNDS', NULL, '2021-02-24', '2021-03-08', 1, NULL, 59496015, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59496015, 59496015, '2021-03-09', '7107025264', 'BSM', 59496015, 202047064, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(905, '000352/UWS-M/', '000352/UWS-M/AJRI-US/II/2021', '6011710000001', 'PT. BPR MATAHARI ARTADAYA', NULL, NULL, 'RPS', NULL, '2021-02-26', '2021-03-28', 0, NULL, 1910240, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1719216, 1719216, '2021-03-04', '7107025264', 'BSM', 1719216, 1228770, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(906, '000353/UWS-M/', '000353/UWS-M/AJRI-US/II/2021', '6032002000002', 'PT ASURANSI CENTRAL ASIA UNIT SYARIAH', NULL, NULL, 'RTLNDS', NULL, '2021-02-26', '2021-04-07', 0, NULL, 105600, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84480, 84480, '2021-03-01', '7107025264', 'BSM', 84480, 9927384, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(907, '000354/UWS-M/', '000354/UWS-M/AJRI-US/II/2021', '6032002000003', 'PT ASURANSI HARTA AMAN, TBK', NULL, NULL, 'RTLNDS', NULL, '2021-02-26', '2021-04-07', 0, NULL, 86400, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69120, 69120, '2021-04-05', '7107025264', 'BSM', 69120, 8122405, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(908, '000355/UWS-M/', '000355/UWS-M/AJRI-US/II/2021', '6041912000015', 'PT ASURANSI CENTRAL ASIA UNIT SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-02-26', '2021-04-07', 0, NULL, 12303631, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9842904, 9842904, '2021-03-01', '7107025264', 'BSM', 9842904, 9927384, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(909, '000356/UWS-M/', '000356/UWS-M/AJRI-US/II/2021', '6042001000016', 'PT ASURANSI HARTA AMAN, TBK', NULL, NULL, 'RPNDS', NULL, '2021-02-26', '2021-04-07', 0, NULL, 10066607, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8053285, 8053285, '2021-04-05', '7107025264', 'BSM', 8053285, 8122405, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(910, '000357/UWS-M/', '000357/UWS-M/AJRI-US/III/2021', '6032006000004', 'PT. ASURANSI JASINDO SYARIAH QQ ANAK BUAH KAPAL (ABK)', NULL, NULL, 'RTLNDS', NULL, '2021-03-12', '2021-04-18', 18, NULL, 26440800, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 26440800, 26440800, '2021-05-07', '7107025264', 'BSM', 26440800, 233615193, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(911, '000358/UWS-M/', '000358/UWS-M/AJRI-US/III/2021', '6041906000013', 'PT. ASURANSI JASINDO SYARIAH QQ BANK UMUM (GRAHA)', NULL, NULL, 'RPNDS', NULL, '2021-03-31', '2021-05-07', 69, NULL, 42084460, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42084460, 42084460, NULL, '', '', 0, 0, -42084460, '', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(912, '000359/UWS-M/', '000359/UWS-M/AJRI-US/III/2021', '6011710000001', 'PT. BPR MATAHARI ARTADAYA', NULL, NULL, 'RPS', NULL, '2021-03-31', '2021-04-30', 0, NULL, 501990, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 451791, 451791, '2021-04-05', '7107025264', 'BSM', 451791, 451791, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(913, '000360/UWS-M/', '000360/UWS-M/AJRI-US/III/2021', '6021910000003', 'PT. BPR MATAHARI ARTADAYA', NULL, NULL, 'RTLS', NULL, '2021-03-31', '2021-05-07', 0, NULL, 82000, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73800, 73800, '2021-05-04', '838282823', 'BNI Syariah', 73800, 73800, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(914, '000361/UWS-M/', '000361/UWS-M/AJRI-US/III/2021', '6041912000015', 'PT ASURANSI CENTRAL ASIA UNIT SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-03-31', '2021-05-10', 0, NULL, 16723258, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13378607, 13378607, '2021-04-07', '7107025264', 'BSM', 13378607, 24324740, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(915, '000362/UWS-M/', '000362/UWS-M/AJRI-US/III/2021', '6042001000016', 'PT ASURANSI HARTA AMAN, TBK', NULL, NULL, 'RPNDS', NULL, '2021-03-31', '2021-05-10', 0, NULL, 13682666, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10946133, 10946133, '2021-05-06', '838282823', 'BNI Syariah', 10946133, 10946133, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(916, '000363/UWS-M/', '000363/UWS-M/AJRI-US/III/2021', '6031907000001', 'PT ASURANSI JASINDO SYARIAH QQ BANK UMUM SYARIAH, BPD SYARIAH, BPR SYARIAH, KOPERASI SYARIAH DAN LEMBAGA KEUANGAN NON BANK SYARIAH', NULL, NULL, 'RTLNDS', NULL, '2021-03-31', '2021-05-07', 0, NULL, 204200101, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 204200101, 204200101, '2021-05-07', '7107025264', 'BSM', 204200101, 233615193, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(917, '000364/UWS-M/', '000364/UWS-M/AJRI-US/III/2021', '6041903000005', 'PT ASURANSI JASINDO SYARIAH QQ  BANK UMUM SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-03-31', '2021-05-15', 61, NULL, 198598185, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 198598185, 198598185, NULL, '', '', 0, 0, -198598185, '', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(918, '000365/UWS-M/', '000365/UWS-M/AJRI-US/III/2021', '6011903000007', 'PT BPR KREO LESTARI', NULL, NULL, 'RPS', NULL, '2021-03-31', '2021-05-07', 0, NULL, 4026600, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3019950, 3019950, '2021-04-21', '7107025264', 'BSM', 3019900, 3019900, -50, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(919, '000366/UWS-M/', '000366/UWS-M/AJRI-US/IV/2021', '6041906000013', 'PT. ASURANSI JASINDO SYARIAH QQ BANK UMUM (GRAHA)', NULL, NULL, 'RPNDS', NULL, '2021-04-14', '2021-05-21', 55, NULL, 51795885, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51795885, 51795885, NULL, '', '', 0, 0, -51795885, '', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(920, '000367/UWS-M/', '000367/UWS-M/AJRI-US/IV/2021', '6032006000004', 'PT. ASURANSI JASINDO SYARIAH QQ ANAK BUAH KAPAL (ABK)', NULL, NULL, 'RTLNDS', NULL, '2021-04-14', '2021-05-21', 55, NULL, 112580400, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112580400, 112580400, NULL, '', '', 0, 0, -112580400, '', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(921, '000368/UWS-M/', '000368/UWS-M/AJRI-US/IV/2021', '6032002000002', 'PT ASURANSI CENTRAL ASIA UNIT SYARIAH', NULL, NULL, 'RTLNDS', NULL, '2021-04-27', '2021-06-06', 0, NULL, 140800, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112640, 112640, '2021-04-30', '838282823', 'BNI Syariah', 112640, 11198079, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(922, '000369/UWS-M/', '000369/UWS-M/AJRI-US/IV/2021', '6032002000003', 'PT ASURANSI HARTA AMAN, TBK', NULL, NULL, 'RTLNDS', NULL, '2021-04-27', '2021-06-06', 0, NULL, 115200, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92160, 92160, '2021-06-03', '838282823', 'BNI Syariah', 92160, 9162065, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(923, '000370/UWS-M/', '000370/UWS-M/AJRI-US/IV/2021', '6041912000015', 'PT ASURANSI CENTRAL ASIA UNIT SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-04-27', '2021-06-06', 0, NULL, 13856799, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11085439, 11085439, '2021-04-30', '838282823', 'BNI Syariah', 11085439, 11198079, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(924, '000371/UWS-M/', '000371/UWS-M/AJRI-US/IV/2021', '6042001000016', 'PT ASURANSI HARTA AMAN, TBK', NULL, NULL, 'RPNDS', NULL, '2021-04-27', '2021-06-06', 0, NULL, 11337381, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9069905, 9069905, '2021-06-03', '838282823', 'BNI Syariah', 9069905, 9162065, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(925, '000372/UWS-M/', '000372/UWS-M/AJRI-US/IV/2021', '6011903000007', 'PT BPR KREO LESTARI', NULL, NULL, 'RPS', NULL, '2021-04-29', '2021-06-05', 4, NULL, 3793000, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2844750, 2844750, '2021-06-09', '838282823', 'BNI Syariah', 2844750, 2767600, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(926, '000373/UWS-M/', '000373/UWS-M/AJRI-US/IV/2021', '6011710000001', 'PT. BPR MATAHARI ARTADAYA', NULL, NULL, 'RPS', NULL, '2021-04-30', '2021-05-30', 0, NULL, 4980040, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4482036, 4482036, '2021-05-04', '838282823', 'BNI Syariah', 4482036, 4482036, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(927, '000374/UWS-M/', '000374/UWS-M/AJRI-US/IV/2021', '6041903000005', 'PT ASURANSI JASINDO SYARIAH QQ  BANK UMUM SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-04-30', '2021-06-14', 15, NULL, 474333165, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 474333165, 474333165, '2021-06-29', '838282823', 'BNI Syariah', 474333165, 505879695, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(928, '000375/UWS-M/', '000375/UWS-M/AJRI-US/IV/2021', '6031907000001', 'PT ASURANSI JASINDO SYARIAH QQ BANK UMUM SYARIAH, BPD SYARIAH, BPR SYARIAH, KOPERASI SYARIAH DAN LEMBAGA KEUANGAN NON BANK SYARIAH', NULL, NULL, 'RTLNDS', NULL, '2021-04-30', '2021-06-06', 2, NULL, 372534903, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 372534903, 372534903, '2021-06-08', '7107025264', 'BSM', 372534903, 372534903, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(929, '000376/UWS-M/', '000376/UWS-M/AJRI-US/V/2021', '6032006000004', 'PT. ASURANSI JASINDO SYARIAH QQ ANAK BUAH KAPAL (ABK)', NULL, NULL, 'RTLNDS', NULL, '2021-05-19', '2021-06-25', 4, NULL, 31546800, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31546800, 31546800, '2021-06-29', '838282823', 'BNI Syariah', 31546800, 505879695, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(930, '000377/UWS-M/', '000377/UWS-M/AJRI-US/V/2021', '6012105000011', 'KOPERASI JASA SYARIAH MANBAUL RIZKI INVESTAMA', NULL, NULL, 'RPS', NULL, '2021-05-25', '2021-07-01', 0, NULL, 2244480, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 99000, 0, 0, 2020032, 2119032, '2021-05-28', '838282823', 'BNI Syariah', 2119032, 2119032, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(931, '000378/UWS-M/', '000378/UWS-M/AJRI-US/V/2021', '6011710000001', 'PT. BPR MATAHARI ARTADAYA', NULL, NULL, 'RPS', NULL, '2021-05-31', '2021-06-30', 0, NULL, 3055340, 6720, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2755854, 2755854, '2021-06-03', '838282823', 'BNI Syariah', 2755854, 2755854, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(932, '000379/UWS-M/', '000379/UWS-M/AJRI-US/V/2021', '6041912000015', 'PT ASURANSI CENTRAL ASIA UNIT SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-05-31', '2021-07-10', 0, NULL, 17098923, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13679139, 13679139, '2021-06-04', '838282823', 'BNI Syariah', 13679139, 11198079, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(933, '000380/UWS-M/', '000380/UWS-M/AJRI-US/V/2021', '6042001000016', 'PT ASURANSI HARTA AMAN, TBK', NULL, NULL, 'RPNDS', NULL, '2021-05-31', '2021-07-10', 0, NULL, 13990028, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11192023, 11192023, '2021-07-07', '838282823', 'BNI Syariah', 11192023, 11192023, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(934, '000381/UWS-M/', '000381/UWS-M/AJRI-US/V/2021', '6041906000013', 'PT. ASURANSI JASINDO SYARIAH QQ BANK UMUM (GRAHA)', NULL, NULL, 'RPNDS', NULL, '2021-05-31', '2021-07-07', 0, NULL, 101380770, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101380770, 101380770, '2021-07-07', '838282823', 'BNI Syariah', 101380770, 161333704, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(935, '000382/UWS-M/', '000382/UWS-M/AJRI-US/V/2021', '6041903000005', 'PT ASURANSI JASINDO SYARIAH QQ  BANK UMUM SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-05-31', '2021-07-15', 0, NULL, 289012274, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 289012274, 289012274, NULL, '', '', 0, 0, -289012274, '', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(936, '000383/UWS-M/', '000383/UWS-M/AJRI-US/V/2021', '6031907000001', 'PT ASURANSI JASINDO SYARIAH QQ BANK UMUM SYARIAH, BPD SYARIAH, BPR SYARIAH, KOPERASI SYARIAH DAN LEMBAGA KEUANGAN NON BANK SYARIAH', NULL, NULL, 'RTLNDS', NULL, '2021-05-31', '2021-07-07', 0, NULL, 59952934, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59952934, 59952934, '2021-07-07', '838282823', 'BNI Syariah', 59952934, 161333704, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(937, '000384/UWS-M/', '000384/UWS-M/AJRI-US/VI/2021', '6032006000004', 'PT. ASURANSI JASINDO SYARIAH QQ ANAK BUAH KAPAL (ABK)', NULL, NULL, 'RTLNDS', NULL, '2021-06-15', '2021-07-22', 0, NULL, 40342000, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40342000, 40342000, NULL, '', '', 0, 0, -40342000, '', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(938, '000385/UWS-M/', '000385/UWS-M/AJRI-US/VI/2021', '6012105000011', 'KOPERASI JASA SYARIAH MANBAUL RIZKI INVESTAMA', NULL, NULL, 'RPS', NULL, '2021-06-25', '2021-08-01', 0, NULL, 2140864, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1926778, 1926778, '2021-06-30', '838282823', 'BNI Syariah', 1926778, 1926778, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(939, '000386/UWS-M/', '000386/UWS-M/AJRI-US/VI/2021', '6041906000013', 'PT. ASURANSI JASINDO SYARIAH QQ BANK UMUM (GRAHA)', NULL, NULL, 'RPNDS', NULL, '2021-06-26', '2021-08-02', 0, NULL, 92930900, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92930900, 92930900, NULL, '', '', 0, 0, -92930900, '', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(940, '000387/UWS-M/', '000387/UWS-M/AJRI-US/VI/2021', '6031907000001', 'PT ASURANSI JASINDO SYARIAH QQ BANK UMUM SYARIAH, BPD SYARIAH, BPR SYARIAH, KOPERASI SYARIAH DAN LEMBAGA KEUANGAN NON BANK SYARIAH', NULL, NULL, 'RTLNDS', NULL, '2021-06-28', '2021-08-04', 0, NULL, 51791793, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51791793, 51791793, NULL, '', '', 0, 0, -51791793, '', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(941, '000388/UWS-M/', '000388/UWS-M/AJRI-US/VI/2021', '6041903000005', 'PT ASURANSI JASINDO SYARIAH QQ  BANK UMUM SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-06-28', '2021-08-12', 0, NULL, 397170112, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 397170112, 397170112, NULL, '', '', 0, 0, -397170112, '', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(942, '000389/UWS-M/', '000389/UWS-M/AJRI-US/VI/2021', '6041912000015', 'PT ASURANSI CENTRAL ASIA UNIT SYARIAH', NULL, NULL, 'RPNDS', NULL, '2021-06-30', '2021-08-09', 0, NULL, 8109475, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6487580, 6487580, '2021-07-06', '838282823', 'BNI Syariah', 6487580, 6487580, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(943, '000390/UWS-M/', '000390/UWS-M/AJRI-US/VI/2021', '6042001000016', 'PT ASURANSI HARTA AMAN, TBK', NULL, NULL, 'RPNDS', NULL, '2021-06-30', '2021-08-09', 0, NULL, 6635025, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5308020, 5308020, NULL, '', '', 0, 0, -5308020, '', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(944, '000391/UWS-M/', '000391/UWS-M/AJRI-US/VI/2021', '6011710000001', 'PT. BPR MATAHARI ARTADAYA', NULL, NULL, 'RPS', NULL, '2021-06-30', '2021-07-30', 0, NULL, 530550, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 477495, 477495, '2021-07-06', '838282823', 'BNI Syariah', 477495, 477495, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL),
(945, '000392/UWS-M/', '000392/UWS-M/AJRI-US/VI/2021', '6021910000003', 'PT. BPR MATAHARI ARTADAYA', NULL, NULL, 'RTLS', NULL, '2021-06-30', '2021-08-06', 0, NULL, 261000, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 234900, 234900, '2021-07-06', '838282823', 'BNI Syariah', 234900, 234900, 0, 'Lunas', NULL, 0, NULL, '', '2021-07-15 18:29:54', '2021-07-15 18:29:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` char(2) NOT NULL,
  `nama` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama`) VALUES
('11', 'Aceh'),
('12', 'Sumatera Utara'),
('13', 'Sumatera Barat'),
('14', 'Riau'),
('15', 'Jambi'),
('16', 'Sumatera Selatan'),
('17', 'Bengkulu'),
('18', 'Lampung'),
('19', 'Kepulauan Bangka Belitung'),
('21', 'Kepulauan Riau'),
('31', 'DKI Jakarta'),
('32', 'Jawa Barat'),
('33', 'Jawa Tengah'),
('34', 'DI Yogyakarta'),
('35', 'Jawa Timur'),
('36', 'Banten'),
('51', 'Bali'),
('52', 'Nusa Tenggara Barat'),
('53', 'Nusa Tenggara Timur'),
('61', 'Kalimantan Barat'),
('62', 'Kalimantan Tengah'),
('63', 'Kalimantan Selatan'),
('64', 'Kalimantan Timur'),
('65', 'Kalimantan Utara'),
('71', 'Sulawesi Utara'),
('72', 'Sulawesi Tengah'),
('73', 'Sulawesi Selatan'),
('74', 'Sulawesi Tenggara'),
('75', 'Gorontalo'),
('76', 'Sulawesi Barat'),
('81', 'Maluku'),
('82', 'Maluku Utara'),
('91', 'Papua Barat'),
('92', 'Papua');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_id` int(11) DEFAULT NULL,
  `po_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `po_date` date DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsibility` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_date` date DEFAULT NULL,
  `submitted_id` int(11) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `discount` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ppn` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pph` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `net_amount` bigint(20) DEFAULT NULL,
  `aging` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `remarks` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `created_at`, `updated_at`) VALUES
(5, 'Ruang Meeting Yogyakarta (Lt.1)	', '2023-12-07 02:50:06', '2023-12-07 02:50:06'),
(7, 'Ruang Meeting Pekanbaru (Lt. 3)', '2023-12-07 02:50:42', '2023-12-07 02:50:42'),
(8, 'Ruang Meeting Medan (Lt. 4)', '2023-12-07 02:50:52', '2023-12-07 02:50:52');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('xvyYokWexESRgOB9SYjstAnBqeCHLytgXV259RGl', 4, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidm14UTd2RUEzWm4wOHUwVzJoRVJyZHVBYlA5WWhub210UUEzbmpBMyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3F1b3RhdGlvbi9jcmVhdGUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozODoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3F1b3RhdGlvbi9jcmVhdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkU0tSY0lzV2tTT1J4VTczVDNHd3ZVdXJCYjh2UWczZTY0RXlZNzBDNE5wdDlhVEdLdUc2TlMiO30=', 1705173498),
('ZrBZV2hHFcDg9yuw2v8rKBURQqiZmSF00Z8ZfFf7', 4, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOVBtcHhTY2I0WE51VFBJRVFVQ2IxdzV6a1hJdXJxd1d5THVqZURqRSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3F1b3RhdGlvbi9jcmVhdGUiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMDoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL21hdGVyaWFsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJFNLUmNJc1drU09SeFU3M1QzR3d2VXVyQmI4dlFnM2U2NEV5WTcwQzROcHQ5YVRHS3VHNk5TIjt9', 1705225500);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'logo20240113073318.png', '2020-11-03 17:34:55', '2024-01-13 12:33:18'),
(2, 'company', 'Wirata Putra Otomasi', '2020-11-03 17:38:50', '2024-01-03 13:07:42'),
(3, 'address', '-', '2020-11-03 18:01:31', '2024-01-03 13:29:58'),
(4, 'email', '-', '2020-11-03 18:03:48', '2023-12-06 12:58:53'),
(5, 'phone', '-', '2020-11-03 18:03:48', '2023-12-06 12:58:53'),
(6, 'website', '-', '2020-11-03 18:03:48', '2023-12-06 12:58:53'),
(7, 'favicon', 'favicon20240113193318.png', '2020-11-19 00:57:10', '2024-01-13 12:33:18'),
(8, 'running_surat', '900', '2022-08-08 17:00:00', '2023-11-17 09:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_access_id` int(11) DEFAULT NULL,
  `telepon` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_supervisor` tinyint(1) DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL,
  `polis_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `user_access_id`, `telepon`, `address`, `is_supervisor`, `deleted_at`, `polis_id`) VALUES
(4, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$SKRcIsWkSORxU73T3GwvUurBb8vQg3e64EyY70C4Npt9aTGKuG6NS', NULL, NULL, NULL, NULL, '/storage/photo/4/01012021082729.png', '2020-11-03 16:11:04', '2021-01-01 01:27:29', 1, '-', 'Jakarta Pusat', 0, NULL, NULL),
(59, 'Handika Aditya', 'handika.aditya@pmt.co.id', NULL, '$2y$10$lgOP.Dpm/8H1CbstZ.krXuZk46eVy9/nz2Ph9/hFSnmqk7JqSH3xq', NULL, NULL, NULL, NULL, NULL, '2023-12-11 09:52:07', '2023-12-11 09:52:39', 2, '081218400116', 'PMT HQ', 0, NULL, NULL),
(60, 'Andy Maulana', 'andy.maulana@pmt.co.id', NULL, '$2y$10$lonm8r.3wbb16LZedHQn9.VoUfLmOhnCO0KaWi2nQVQrXi9u.j0.6', NULL, NULL, NULL, NULL, NULL, '2023-12-12 09:33:19', '2023-12-12 09:33:19', 2, '081291356767', 'PMT HQ', 1, NULL, NULL),
(61, 'Kunasarma', 'kunasarma@pmt.co.id', NULL, '$2y$10$RIXy.GBYAuAqZhkk0nILhez/U8VNAHu0GXENbtyV8MM.Jyn3pV6Vq', NULL, NULL, NULL, NULL, NULL, '2023-12-12 09:34:38', '2023-12-12 09:34:58', 2, '081336317843', 'PMT HQ', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '-', NULL, NULL),
(2, 'Staff', '-', NULL, NULL),
(4, 'Marketing', '-', '2024-01-12 01:37:13', '2024-01-12 01:37:13'),
(5, 'Project Manager', '-', '2024-01-12 01:37:29', '2024-01-12 01:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rekening` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(90) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_code`, `name`, `phone`, `address`, `person`, `position`, `mobile`, `email`, `proposed`, `rekening`, `bank`, `account_name`, `created_at`, `updated_at`) VALUES
(1, 'V0001', 'PT. TIGA MANUNGGAL TEKNOLOGI INDONESIA (WABLAS.ID)', NULL, 'Ruko Green Garden Blok A14 Nomor 36, Kedoya Utara, Kebon Jeruk, Jakarta Barat - 11520.', NULL, NULL, '', 'sales@wablas.com', 'WA API', NULL, NULL, NULL, '2024-01-12 13:17:45', '2024-01-12 13:17:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application_room_request`
--
ALTER TABLE `application_room_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `convert_pdf`
--
ALTER TABLE `convert_pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_pic`
--
ALTER TABLE `customer_pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_activities`
--
ALTER TABLE `log_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_data`
--
ALTER TABLE `migration_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application_room_request`
--
ALTER TABLE `application_room_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `convert_pdf`
--
ALTER TABLE `convert_pdf`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_pic`
--
ALTER TABLE `customer_pic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=705;

--
-- AUTO_INCREMENT for table `log_activities`
--
ALTER TABLE `log_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `migration_data`
--
ALTER TABLE `migration_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=946;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
