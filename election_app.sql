-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2025 at 08:20 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `election_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `is_published` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `content`, `featured_image`, `author`, `views`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'বিশাল জনসমুদ্রে প্রার্থীর ভাষণ', 'bisal-jnsmudre-prartheer-vashn-124', '<p>আসন্ন নির্বাচনকে সামনে রেখে সিরাজগঞ্জের রাজনীতি এখন তুঙ্গে। প্রতিটি আসনেই চলছে ব্যাপক প্রচারণা। ভোটারদের দ্বারে দ্বারে যাচ্ছেন প্রার্থীরা।</p>', 'blogs/01KBTESTPMYC59ZPB29F7DYQY3.jpg', 'ডেস্ক রিপোর্ট', 0, 1, '2025-11-25 13:08:25', '2025-12-06 12:29:18'),
(2, 'নির্বাচনী ইশতেহার ঘোষণা করা হলো', 'nirwacnee-istehar-ghoshna-kra-hlo-615', '<p>আসন্ন নির্বাচনকে সামনে রেখে সিরাজগঞ্জের রাজনীতি এখন তুঙ্গে। প্রতিটি আসনেই চলছে ব্যাপক প্রচারণা। ভোটারদের দ্বারে দ্বারে যাচ্ছেন প্রার্থীরা।</p>', 'blogs/01KBTETHFGAQENPDJXAHEHSWV7.jpg', 'ডেস্ক রিপোর্ট', 0, 1, '2025-11-23 13:08:25', '2025-12-06 12:29:42'),
(3, 'তরুণ ভোটারদের ব্যাপক উপস্থিতি লক্ষ্য করা যাচ্ছে', 'trun-votarder-bzapk-upsthiti-lkshz-kra-zacche-76', '<p>আসন্ন নির্বাচনকে সামনে রেখে সিরাজগঞ্জের রাজনীতি এখন তুঙ্গে। প্রতিটি আসনেই চলছে ব্যাপক প্রচারণা। ভোটারদের দ্বারে দ্বারে যাচ্ছেন প্রার্থীরা।</p>', 'blogs/01KBTEVK7ARDF2N534DD0KQMN1.jpg', 'ডেস্ক রিপোর্ট', 0, 1, '2025-11-28 13:08:25', '2025-12-06 12:30:16'),
(4, 'শীত উপেক্ষা করে প্রচারণায় ব্যস্ত প্রার্থীরা', 'seet-upeksha-kre-prcarnay-bzst-prartheera-567', '<p>আসন্ন নির্বাচনকে সামনে রেখে সিরাজগঞ্জের রাজনীতি এখন তুঙ্গে। প্রতিটি আসনেই চলছে ব্যাপক প্রচারণা। ভোটারদের দ্বারে দ্বারে যাচ্ছেন প্রার্থীরা।</p>', 'blogs/01KBTEWEGFCX6MN9ZHVWBHMM7H.jpg', 'ডেস্ক রিপোর্ট', 0, 1, '2025-11-25 13:08:25', '2025-12-06 12:30:44'),
(5, 'শান্তিপূর্ণ নির্বাচনের প্রতিশ্রুতি দিলেন ডিসি', 'santipuurn-nirwacner-prtisruti-dilen-disi-574', '<p>আসন্ন নির্বাচনকে সামনে রেখে সিরাজগঞ্জের রাজনীতি এখন তুঙ্গে। প্রতিটি আসনেই চলছে ব্যাপক প্রচারণা। ভোটারদের দ্বারে দ্বারে যাচ্ছেন প্রার্থীরা।</p>', 'blogs/01KBTEX9RQQ5P4JPMKWT2813QX.jpg', 'ডেস্ক রিপোর্ট', 0, 1, '2025-12-02 13:08:25', '2025-12-06 12:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1765216145),
('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1765216145;', 1765216145),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6', 'i:1;', 1765216072),
('laravel-cache-livewire-rate-limiter:16d36dff9abd246c67dfac3e63b993a169af77e6:timer', 'i:1765216072;', 1765216072),
('laravel-cache-spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:157:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"ViewAny:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:9:\"View:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"Create:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"Update:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:11:\"Delete:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:12:\"Restore:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:16:\"ForceDelete:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:19:\"ForceDeleteAny:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:15:\"RestoreAny:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:14:\"Replicate:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:12:\"Reorder:Blog\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:17:\"ViewAny:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:14:\"View:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"Create:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:16:\"Update:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:16:\"Delete:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:17:\"Restore:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:21:\"ForceDelete:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:24:\"ForceDeleteAny:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:20:\"RestoreAny:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:19:\"Replicate:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:17:\"Reorder:Candidate\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:20:\"ViewAny:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:17:\"View:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:19:\"Create:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:19:\"Update:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:19:\"Delete:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:20:\"Restore:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:24:\"ForceDelete:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:27:\"ForceDeleteAny:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:23:\"RestoreAny:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:22:\"Replicate:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:20:\"Reorder:Constituency\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:15:\"ViewAny:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:12:\"View:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:14:\"Create:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:14:\"Update:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:14:\"Delete:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:15:\"Restore:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:19:\"ForceDelete:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:22:\"ForceDeleteAny:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:18:\"RestoreAny:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:17:\"Replicate:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:15:\"Reorder:Contact\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:44;a:4:{s:1:\"a\";i:45;s:1:\"b\";s:15:\"ViewAny:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:45;a:4:{s:1:\"a\";i:46;s:1:\"b\";s:12:\"View:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:46;a:4:{s:1:\"a\";i:47;s:1:\"b\";s:14:\"Create:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:47;a:4:{s:1:\"a\";i:48;s:1:\"b\";s:14:\"Update:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:48;a:4:{s:1:\"a\";i:49;s:1:\"b\";s:14:\"Delete:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:49;a:4:{s:1:\"a\";i:50;s:1:\"b\";s:15:\"Restore:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:50;a:4:{s:1:\"a\";i:51;s:1:\"b\";s:19:\"ForceDelete:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:51;a:4:{s:1:\"a\";i:52;s:1:\"b\";s:22:\"ForceDeleteAny:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:52;a:4:{s:1:\"a\";i:53;s:1:\"b\";s:18:\"RestoreAny:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:53;a:4:{s:1:\"a\";i:54;s:1:\"b\";s:17:\"Replicate:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:54;a:4:{s:1:\"a\";i:55;s:1:\"b\";s:15:\"Reorder:Gallery\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:55;a:4:{s:1:\"a\";i:56;s:1:\"b\";s:17:\"ViewAny:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:56;a:4:{s:1:\"a\";i:57;s:1:\"b\";s:14:\"View:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:57;a:4:{s:1:\"a\";i:58;s:1:\"b\";s:16:\"Create:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:58;a:4:{s:1:\"a\";i:59;s:1:\"b\";s:16:\"Update:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:59;a:4:{s:1:\"a\";i:60;s:1:\"b\";s:16:\"Delete:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:60;a:4:{s:1:\"a\";i:61;s:1:\"b\";s:17:\"Restore:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:61;a:4:{s:1:\"a\";i:62;s:1:\"b\";s:21:\"ForceDelete:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:62;a:4:{s:1:\"a\";i:63;s:1:\"b\";s:24:\"ForceDeleteAny:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:63;a:4:{s:1:\"a\";i:64;s:1:\"b\";s:20:\"RestoreAny:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:64;a:4:{s:1:\"a\";i:65;s:1:\"b\";s:19:\"Replicate:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:65;a:4:{s:1:\"a\";i:66;s:1:\"b\";s:17:\"Reorder:Manifesto\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:66;a:4:{s:1:\"a\";i:67;s:1:\"b\";s:15:\"ViewAny:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:67;a:4:{s:1:\"a\";i:68;s:1:\"b\";s:12:\"View:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:68;a:4:{s:1:\"a\";i:69;s:1:\"b\";s:14:\"Create:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:69;a:4:{s:1:\"a\";i:70;s:1:\"b\";s:14:\"Update:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:70;a:4:{s:1:\"a\";i:71;s:1:\"b\";s:14:\"Delete:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:71;a:4:{s:1:\"a\";i:72;s:1:\"b\";s:15:\"Restore:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:72;a:4:{s:1:\"a\";i:73;s:1:\"b\";s:19:\"ForceDelete:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:73;a:4:{s:1:\"a\";i:74;s:1:\"b\";s:22:\"ForceDeleteAny:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:74;a:4:{s:1:\"a\";i:75;s:1:\"b\";s:18:\"RestoreAny:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:75;a:4:{s:1:\"a\";i:76;s:1:\"b\";s:17:\"Replicate:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:76;a:4:{s:1:\"a\";i:77;s:1:\"b\";s:15:\"Reorder:Program\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:77;a:4:{s:1:\"a\";i:78;s:1:\"b\";s:13:\"ViewAny:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:78;a:4:{s:1:\"a\";i:79;s:1:\"b\";s:10:\"View:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:79;a:4:{s:1:\"a\";i:80;s:1:\"b\";s:12:\"Create:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:80;a:4:{s:1:\"a\";i:81;s:1:\"b\";s:12:\"Update:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:81;a:4:{s:1:\"a\";i:82;s:1:\"b\";s:12:\"Delete:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:82;a:4:{s:1:\"a\";i:83;s:1:\"b\";s:13:\"Restore:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:83;a:4:{s:1:\"a\";i:84;s:1:\"b\";s:17:\"ForceDelete:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:84;a:4:{s:1:\"a\";i:85;s:1:\"b\";s:20:\"ForceDeleteAny:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:85;a:4:{s:1:\"a\";i:86;s:1:\"b\";s:16:\"RestoreAny:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:86;a:4:{s:1:\"a\";i:87;s:1:\"b\";s:15:\"Replicate:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:87;a:4:{s:1:\"a\";i:88;s:1:\"b\";s:13:\"Reorder:Quote\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:88;a:4:{s:1:\"a\";i:89;s:1:\"b\";s:15:\"ViewAny:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:89;a:4:{s:1:\"a\";i:90;s:1:\"b\";s:12:\"View:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:90;a:4:{s:1:\"a\";i:91;s:1:\"b\";s:14:\"Create:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:91;a:4:{s:1:\"a\";i:92;s:1:\"b\";s:14:\"Update:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:92;a:4:{s:1:\"a\";i:93;s:1:\"b\";s:14:\"Delete:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:93;a:4:{s:1:\"a\";i:94;s:1:\"b\";s:15:\"Restore:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:94;a:4:{s:1:\"a\";i:95;s:1:\"b\";s:19:\"ForceDelete:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:95;a:4:{s:1:\"a\";i:96;s:1:\"b\";s:22:\"ForceDeleteAny:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:96;a:4:{s:1:\"a\";i:97;s:1:\"b\";s:18:\"RestoreAny:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:97;a:4:{s:1:\"a\";i:98;s:1:\"b\";s:17:\"Replicate:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:98;a:4:{s:1:\"a\";i:99;s:1:\"b\";s:15:\"Reorder:Setting\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:99;a:4:{s:1:\"a\";i:100;s:1:\"b\";s:14:\"ViewAny:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:100;a:4:{s:1:\"a\";i:101;s:1:\"b\";s:11:\"View:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:101;a:4:{s:1:\"a\";i:102;s:1:\"b\";s:13:\"Create:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:102;a:4:{s:1:\"a\";i:103;s:1:\"b\";s:13:\"Update:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:103;a:4:{s:1:\"a\";i:104;s:1:\"b\";s:13:\"Delete:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:104;a:4:{s:1:\"a\";i:105;s:1:\"b\";s:14:\"Restore:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:105;a:4:{s:1:\"a\";i:106;s:1:\"b\";s:18:\"ForceDelete:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:106;a:4:{s:1:\"a\";i:107;s:1:\"b\";s:21:\"ForceDeleteAny:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:107;a:4:{s:1:\"a\";i:108;s:1:\"b\";s:17:\"RestoreAny:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:108;a:4:{s:1:\"a\";i:109;s:1:\"b\";s:16:\"Replicate:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:109;a:4:{s:1:\"a\";i:110;s:1:\"b\";s:14:\"Reorder:Slider\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:110;a:4:{s:1:\"a\";i:111;s:1:\"b\";s:12:\"ViewAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:111;a:4:{s:1:\"a\";i:112;s:1:\"b\";s:9:\"View:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:112;a:4:{s:1:\"a\";i:113;s:1:\"b\";s:11:\"Create:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:113;a:4:{s:1:\"a\";i:114;s:1:\"b\";s:11:\"Update:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:114;a:4:{s:1:\"a\";i:115;s:1:\"b\";s:11:\"Delete:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:115;a:4:{s:1:\"a\";i:116;s:1:\"b\";s:12:\"Restore:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:116;a:4:{s:1:\"a\";i:117;s:1:\"b\";s:16:\"ForceDelete:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:117;a:4:{s:1:\"a\";i:118;s:1:\"b\";s:19:\"ForceDeleteAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:118;a:4:{s:1:\"a\";i:119;s:1:\"b\";s:15:\"RestoreAny:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:119;a:4:{s:1:\"a\";i:120;s:1:\"b\";s:14:\"Replicate:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:120;a:4:{s:1:\"a\";i:121;s:1:\"b\";s:12:\"Reorder:User\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:121;a:4:{s:1:\"a\";i:122;s:1:\"b\";s:13:\"ViewAny:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:122;a:4:{s:1:\"a\";i:123;s:1:\"b\";s:10:\"View:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:123;a:4:{s:1:\"a\";i:124;s:1:\"b\";s:12:\"Create:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:124;a:4:{s:1:\"a\";i:125;s:1:\"b\";s:12:\"Update:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:125;a:4:{s:1:\"a\";i:126;s:1:\"b\";s:12:\"Delete:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:126;a:4:{s:1:\"a\";i:127;s:1:\"b\";s:13:\"Restore:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:127;a:4:{s:1:\"a\";i:128;s:1:\"b\";s:17:\"ForceDelete:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:128;a:4:{s:1:\"a\";i:129;s:1:\"b\";s:20:\"ForceDeleteAny:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:129;a:4:{s:1:\"a\";i:130;s:1:\"b\";s:16:\"RestoreAny:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:130;a:4:{s:1:\"a\";i:131;s:1:\"b\";s:15:\"Replicate:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:131;a:4:{s:1:\"a\";i:132;s:1:\"b\";s:13:\"Reorder:Video\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:132;a:4:{s:1:\"a\";i:133;s:1:\"b\";s:17:\"ViewAny:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:133;a:4:{s:1:\"a\";i:134;s:1:\"b\";s:14:\"View:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:134;a:4:{s:1:\"a\";i:135;s:1:\"b\";s:16:\"Create:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:135;a:4:{s:1:\"a\";i:136;s:1:\"b\";s:16:\"Update:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:136;a:4:{s:1:\"a\";i:137;s:1:\"b\";s:16:\"Delete:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:137;a:4:{s:1:\"a\";i:138;s:1:\"b\";s:17:\"Restore:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:138;a:4:{s:1:\"a\";i:139;s:1:\"b\";s:21:\"ForceDelete:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:139;a:4:{s:1:\"a\";i:140;s:1:\"b\";s:24:\"ForceDeleteAny:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:140;a:4:{s:1:\"a\";i:141;s:1:\"b\";s:20:\"RestoreAny:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:141;a:4:{s:1:\"a\";i:142;s:1:\"b\";s:19:\"Replicate:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:142;a:4:{s:1:\"a\";i:143;s:1:\"b\";s:17:\"Reorder:Volunteer\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:143;a:4:{s:1:\"a\";i:144;s:1:\"b\";s:12:\"ViewAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:144;a:4:{s:1:\"a\";i:145;s:1:\"b\";s:9:\"View:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:145;a:4:{s:1:\"a\";i:146;s:1:\"b\";s:11:\"Create:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:146;a:4:{s:1:\"a\";i:147;s:1:\"b\";s:11:\"Update:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:147;a:4:{s:1:\"a\";i:148;s:1:\"b\";s:11:\"Delete:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:148;a:4:{s:1:\"a\";i:149;s:1:\"b\";s:12:\"Restore:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:149;a:4:{s:1:\"a\";i:150;s:1:\"b\";s:16:\"ForceDelete:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:150;a:4:{s:1:\"a\";i:151;s:1:\"b\";s:19:\"ForceDeleteAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:151;a:4:{s:1:\"a\";i:152;s:1:\"b\";s:15:\"RestoreAny:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:152;a:4:{s:1:\"a\";i:153;s:1:\"b\";s:14:\"Replicate:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:153;a:4:{s:1:\"a\";i:154;s:1:\"b\";s:12:\"Reorder:Role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:154;a:4:{s:1:\"a\";i:155;s:1:\"b\";s:18:\"View:MyProfilePage\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:155;a:4:{s:1:\"a\";i:156;s:1:\"b\";s:18:\"View:StatsOverview\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:156;a:4:{s:1:\"a\";i:157;s:1:\"b\";s:19:\"View:VolunteerChart\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}}}', 1765217750);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `constituency_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `symbol_photo` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `intro_video_link` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `constituency_id`, `name`, `photo`, `symbol_photo`, `designation`, `biography`, `intro_video_link`, `created_at`, `updated_at`) VALUES
(1, 1, 'জনাব মাওলানা শাহীনুর আলম', 'candidates/01KBZH7ZGCN5ND2KTP1WVFGQ98.jpg', NULL, 'আমীর-বাংলাদেশ জামায়াতে ইসলামী, সিরাজগঞ্জ জেলা', '<p>তিনি দীর্ঘদিন ধরে এলাকার মানুষের সেবায় নিয়োজিত আছেন। শিক্ষা ও স্বাস্থ্যের উন্নয়নে তিনি বিশেষ ভূমিকা রেখেছেন।</p>', 'https://www.youtube.com/watch?v=vRwYnHVrjDg', '2025-12-03 13:08:25', '2025-12-08 11:48:11'),
(2, 2, 'মুহাম্মাদ জাহিদুল ইসলাম', 'candidates/01KBT6Y576QSREA2Y58SGY0HWQ.jpg', NULL, 'সেক্রেটারী-বাংলাদেশ জামায়াতে ইসলামী, সিরাজগঞ্জ জেলা', '<p>তিনি দীর্ঘদিন ধরে এলাকার মানুষের সেবায় নিয়োজিত আছেন। শিক্ষা ও স্বাস্থ্যের উন্নয়নে তিনি বিশেষ ভূমিকা রেখেছেন।</p>', 'https://www.youtube.com/watch?v=vRwYnHVrjDg', '2025-12-03 13:08:25', '2025-12-07 12:35:21'),
(3, 3, 'প্রফেসর শায়খ ড. মাওলানা আব্দুস সামাদ', 'candidates/01KBT6YY3P772DBJS1SK92GWXQ.jpg', NULL, 'কেন্দ্রীয় কর্মপরিষদ সদস্য-বাংলাদেশ জামায়াতে ইসলামী', '<p>তিনি দীর্ঘদিন ধরে এলাকার মানুষের সেবায় নিয়োজিত আছেন। শিক্ষা ও স্বাস্থ্যের উন্নয়নে তিনি বিশেষ ভূমিকা রেখেছেন।</p>', 'https://www.youtube.com/watch?v=vRwYnHVrjDg', '2025-12-03 13:08:25', '2025-12-07 12:35:35'),
(4, 4, 'আলহাজ্ব মাওলানা রফিকুল ইসলাম খান', 'candidates/01KBT6ZN3W75YEDA6RD2FKA3PZ.jpg', NULL, 'সহকারী সেক্রেটারী জেনারেল-বাংলাদেশ জামায়াতে ইসলামী', '<p>তিনি দীর্ঘদিন ধরে এলাকার মানুষের সেবায় নিয়োজিত আছেন। শিক্ষা ও স্বাস্থ্যের উন্নয়নে তিনি বিশেষ ভূমিকা রেখেছেন।</p>', NULL, '2025-12-03 13:08:25', '2025-12-06 10:12:40'),
(5, 5, 'আলহাজ্ব অধ্যক্ষ মোঃ আলী আলম', 'candidates/01KBT70CQHP641JXPX232JTG9T.jpg', NULL, 'নায়েবে আমীর-বাংলাদেশ জামায়াতে ইসলামী, সিরাজগঞ্জ জেলা', '<p>তিনি দীর্ঘদিন ধরে এলাকার মানুষের সেবায় নিয়োজিত আছেন। শিক্ষা ও স্বাস্থ্যের উন্নয়নে তিনি বিশেষ ভূমিকা রেখেছেন।</p>', NULL, '2025-12-03 13:08:25', '2025-12-06 10:13:05'),
(6, 6, 'অধ্যাপক মিজানুর রহমান', 'candidates/01KBT71HK8JP1P9KT24859H19A.jpg', NULL, 'আমীর-বাংলাদেশ জামায়াতে ইসলামী, শাহজাদপুর উপজেলা', '<p>তিনি দীর্ঘদিন ধরে এলাকার মানুষের সেবায় নিয়োজিত আছেন। শিক্ষা ও স্বাস্থ্যের উন্নয়নে তিনি বিশেষ ভূমিকা রেখেছেন।</p>', NULL, '2025-12-03 13:08:25', '2025-12-06 10:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `constituencies`
--

CREATE TABLE `constituencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `areas` varchar(255) NOT NULL,
  `total_voters` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `constituencies`
--

INSERT INTO `constituencies` (`id`, `name`, `areas`, `total_voters`, `created_at`, `updated_at`) VALUES
(1, 'সিরাজগঞ্জ-১', 'কাজিপুর ও সদর আংশিক', '500000', '2025-12-03 13:08:25', '2025-12-06 09:15:35'),
(2, 'সিরাজগঞ্জ-২', 'সদর ও কামারখন্দ', NULL, '2025-12-03 13:08:25', '2025-12-03 13:08:25'),
(3, 'সিরাজগঞ্জ-৩', 'রায়গঞ্জ, তাড়াশ ও সলঙ্গা', '600000', '2025-12-03 13:08:25', '2025-12-06 09:15:02'),
(4, 'সিরাজগঞ্জ-৪', 'উল্লাপাড়া ও সলঙ্গা', '500000', '2025-12-03 13:08:25', '2025-12-06 09:14:19'),
(5, 'সিরাজগঞ্জ-৫', 'বেলকুচি ও চৌহালী', NULL, '2025-12-03 13:08:25', '2025-12-03 13:08:25'),
(6, 'সিরাজগঞ্জ-৬', 'শাহজাদপুর', NULL, '2025-12-03 13:08:25', '2025-12-03 13:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL DEFAULT 'general',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image_path`, `caption`, `category`, `created_at`, `updated_at`) VALUES
(1, 'gallery/01KBTEGGW65J0PJEKZPWGWMJ50.jpg', 'সিরাজগঞ্জ সদরে জনসমুদ্রে প্রার্থীর ভাষণ', 'rally', '2025-12-06 12:24:13', '2025-12-06 12:24:13'),
(2, 'gallery/01KBTEK2C9KKX73YBM3P0T9XD4.jpg', 'উল্লাপাড়ায় গণসংযোগ ও লিফলেট বিতরণ', 'meeting', '2025-12-06 12:25:37', '2025-12-06 12:25:37'),
(3, 'gallery/01KBTEM6A2SFTX2EHFH4GYB78F.jpg', 'মা-বোনদের সাথে একান্ত মতবিনিময়', 'meeting', '2025-12-06 12:26:13', '2025-12-06 12:26:13'),
(4, 'gallery/01KBTEMTGM89CH8KTRZCRBQ8XT.jpg', 'বন্যার্ত মানুষের পাশে মানবিক সহায়তা', 'campaign', '2025-12-06 12:26:34', '2025-12-06 12:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manifestos`
--

CREATE TABLE `manifestos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `serial_no` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manifestos`
--

INSERT INTO `manifestos` (`id`, `title`, `description`, `icon`, `serial_no`, `created_at`, `updated_at`) VALUES
(1, 'প্রতিটি গ্রামে বিদ্যুৎ নিশ্চিতকরণ', 'আমরা নির্বাচিত হলে অগ্রাধিকার ভিত্তিতে এই প্রকল্পটি বাস্তবায়ন করবো। এর জন্য প্রয়োজনীয় বাজেট বরাদ্দ রাখা হবে।', NULL, 1, '2025-12-03 13:08:25', '2025-12-03 13:08:25'),
(2, 'বেকার যুবকদের কর্মসংস্থান', 'আমরা নির্বাচিত হলে অগ্রাধিকার ভিত্তিতে এই প্রকল্পটি বাস্তবায়ন করবো। এর জন্য প্রয়োজনীয় বাজেট বরাদ্দ রাখা হবে।', NULL, 2, '2025-12-03 13:08:25', '2025-12-03 13:08:25'),
(3, 'আধুনিক স্বাস্থ্য কমপ্লেক্স নির্মাণ', 'আমরা নির্বাচিত হলে অগ্রাধিকার ভিত্তিতে এই প্রকল্পটি বাস্তবায়ন করবো। এর জন্য প্রয়োজনীয় বাজেট বরাদ্দ রাখা হবে।', NULL, 3, '2025-12-03 13:08:25', '2025-12-03 13:08:25'),
(4, 'রাস্তাঘাট পাকা করা', 'আমরা নির্বাচিত হলে অগ্রাধিকার ভিত্তিতে এই প্রকল্পটি বাস্তবায়ন করবো। এর জন্য প্রয়োজনীয় বাজেট বরাদ্দ রাখা হবে।', NULL, 4, '2025-12-03 13:08:25', '2025-12-03 13:08:25'),
(5, 'নারী শিক্ষা ও নিরাপত্তা জোরদার', 'আমরা নির্বাচিত হলে অগ্রাধিকার ভিত্তিতে এই প্রকল্পটি বাস্তবায়ন করবো। এর জন্য প্রয়োজনীয় বাজেট বরাদ্দ রাখা হবে।', NULL, 5, '2025-12-03 13:08:25', '2025-12-03 13:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_30_152200_create_settings_table', 1),
(5, '2025_11_30_152605_create_constituencies_table', 1),
(6, '2025_11_30_152606_create_candidates_table', 1),
(7, '2025_11_30_152606_create_manifestos_table', 1),
(8, '2025_11_30_152606_create_sliders_table', 1),
(9, '2025_11_30_152607_create_galleries_table', 1),
(10, '2025_11_30_152607_create_programs_table', 1),
(11, '2025_11_30_152608_create_blogs_table', 1),
(12, '2025_11_30_152608_create_videos_table', 1),
(13, '2025_11_30_152609_create_volunteers_table', 1),
(14, '2025_11_30_152610_create_contacts_table', 1),
(15, '2025_12_01_133813_create_personal_access_tokens_table', 1),
(16, '2025_12_02_152214_create_quotes_table', 1),
(17, '2025_12_02_184209_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'ViewAny:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(2, 'View:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(3, 'Create:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(4, 'Update:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(5, 'Delete:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(6, 'Restore:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(7, 'ForceDelete:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(8, 'ForceDeleteAny:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(9, 'RestoreAny:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(10, 'Replicate:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(11, 'Reorder:Blog', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(12, 'ViewAny:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(13, 'View:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(14, 'Create:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(15, 'Update:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(16, 'Delete:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(17, 'Restore:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(18, 'ForceDelete:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(19, 'ForceDeleteAny:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(20, 'RestoreAny:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(21, 'Replicate:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(22, 'Reorder:Candidate', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(23, 'ViewAny:Constituency', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(24, 'View:Constituency', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(25, 'Create:Constituency', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45'),
(26, 'Update:Constituency', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(27, 'Delete:Constituency', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(28, 'Restore:Constituency', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(29, 'ForceDelete:Constituency', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(30, 'ForceDeleteAny:Constituency', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(31, 'RestoreAny:Constituency', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(32, 'Replicate:Constituency', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(33, 'Reorder:Constituency', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(34, 'ViewAny:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(35, 'View:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(36, 'Create:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(37, 'Update:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(38, 'Delete:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(39, 'Restore:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(40, 'ForceDelete:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(41, 'ForceDeleteAny:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(42, 'RestoreAny:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(43, 'Replicate:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(44, 'Reorder:Contact', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(45, 'ViewAny:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(46, 'View:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(47, 'Create:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(48, 'Update:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(49, 'Delete:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(50, 'Restore:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(51, 'ForceDelete:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(52, 'ForceDeleteAny:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(53, 'RestoreAny:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(54, 'Replicate:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(55, 'Reorder:Gallery', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(56, 'ViewAny:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(57, 'View:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(58, 'Create:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(59, 'Update:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(60, 'Delete:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(61, 'Restore:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(62, 'ForceDelete:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(63, 'ForceDeleteAny:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(64, 'RestoreAny:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(65, 'Replicate:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(66, 'Reorder:Manifesto', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(67, 'ViewAny:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(68, 'View:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(69, 'Create:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(70, 'Update:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(71, 'Delete:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(72, 'Restore:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(73, 'ForceDelete:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(74, 'ForceDeleteAny:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(75, 'RestoreAny:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(76, 'Replicate:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(77, 'Reorder:Program', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(78, 'ViewAny:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(79, 'View:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(80, 'Create:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(81, 'Update:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(82, 'Delete:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(83, 'Restore:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(84, 'ForceDelete:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(85, 'ForceDeleteAny:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(86, 'RestoreAny:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(87, 'Replicate:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(88, 'Reorder:Quote', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(89, 'ViewAny:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(90, 'View:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(91, 'Create:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(92, 'Update:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(93, 'Delete:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(94, 'Restore:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(95, 'ForceDelete:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(96, 'ForceDeleteAny:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(97, 'RestoreAny:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(98, 'Replicate:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(99, 'Reorder:Setting', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(100, 'ViewAny:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(101, 'View:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(102, 'Create:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(103, 'Update:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(104, 'Delete:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(105, 'Restore:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(106, 'ForceDelete:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(107, 'ForceDeleteAny:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(108, 'RestoreAny:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(109, 'Replicate:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(110, 'Reorder:Slider', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(111, 'ViewAny:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(112, 'View:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(113, 'Create:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(114, 'Update:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(115, 'Delete:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(116, 'Restore:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(117, 'ForceDelete:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(118, 'ForceDeleteAny:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(119, 'RestoreAny:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(120, 'Replicate:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(121, 'Reorder:User', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(122, 'ViewAny:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(123, 'View:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(124, 'Create:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(125, 'Update:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(126, 'Delete:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(127, 'Restore:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(128, 'ForceDelete:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(129, 'ForceDeleteAny:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(130, 'RestoreAny:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(131, 'Replicate:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(132, 'Reorder:Video', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(133, 'ViewAny:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(134, 'View:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(135, 'Create:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(136, 'Update:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(137, 'Delete:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(138, 'Restore:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(139, 'ForceDelete:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(140, 'ForceDeleteAny:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(141, 'RestoreAny:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(142, 'Replicate:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(143, 'Reorder:Volunteer', 'web', '2025-12-03 13:11:46', '2025-12-03 13:11:46'),
(144, 'ViewAny:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(145, 'View:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(146, 'Create:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(147, 'Update:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(148, 'Delete:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(149, 'Restore:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(150, 'ForceDelete:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(151, 'ForceDeleteAny:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(152, 'RestoreAny:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(153, 'Replicate:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(154, 'Reorder:Role', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(155, 'View:MyProfilePage', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(156, 'View:StatsOverview', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47'),
(157, 'View:VolunteerChart', 'web', '2025-12-03 13:11:47', '2025-12-03 13:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `title`, `description`, `location`, `date_time`, `image`, `created_at`, `updated_at`) VALUES
(1, 'সিরাজগঞ্জ সদর জনসভা', '<p>প্রধান অতিথি হিসেবে উপস্থিত থাকবেন কেন্দ্রীয় নেতৃবৃন্দ।</p>', 'শহীদ মিনার চত্বর', '2025-12-08 19:08:25', 'programs/01KBX1095HJQAZCNEJWGT6DKA2.jpg', '2025-12-03 13:08:25', '2025-12-07 12:25:53'),
(2, 'সিরাজগঞ্জ সদর মহাবেশ', '<p>প্রধান অতিথি হিসেবে উপস্থিত থাকবেন কেন্দ্রীয় নেতৃবৃন্দ। দলমত নির্বিশেষে সকলকে উপস্থিত থাকার আমন্ত্রণ জানানো হলো।</p>', 'সিরাজগঞ্জ স্টেডিয়াম মাঠ', '2025-12-07 00:20:29', 'programs/01KBTEBEZKRB94G5CYRPHJ3MB2.jpg', '2025-12-06 12:21:27', '2025-12-06 12:21:27'),
(3, 'নারী ভোটারদের সাথে মতবিনিময়', '<p>নারী অধিকার ও নিরাপত্তা নিয়ে বিশেষ আলোচনা সভা। সভাপতিত্ব করবেন মেরিনা জাহান কবিতা।</p>', 'শাহজাদপুর পাইলট স্কুল অডিটোরিয়াম', '2025-12-10 00:21:45', 'programs/01KBTECN60QT0M7R8KBY88535V.jpg', '2025-12-06 12:22:07', '2025-12-06 12:22:07'),
(4, 'বিশাল মোটরসাইকেল শোভাযাত্রা', '<p>নির্বাচনী প্রচারণা জোরদার করতে যুবলীগের উদ্যোগে বিশাল শোভাযাত্রা।</p>', 'উল্লাপাড়া বাজার থেকে শুরু', '2025-12-13 00:22:48', 'programs/01KBTEEDD24YTYFQKDVX6M4PJJ.jpg', '2025-12-06 12:23:04', '2025-12-06 12:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quote` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `quote`, `name`, `designation`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'আমি শাসক হতে চাই না, আপনাদের সেবক হয়ে থাকতে চাই। আমার জীবনের শেষ দিনটি পর্যন্ত সিরাজগঞ্জের মানুষের সেবায় কাটিয়ে দিতে চাই।', 'মাও শাহিনুর আলম', 'প্রার্থী, সিরাজগঞ্জ-১', 'quotes/01KBTF20TB0H87W1B13S8SNW30.jpg', 1, '2025-12-06 12:33:47', '2025-12-06 12:33:47'),
(2, 'শিক্ষাই জাতির মেরুদণ্ড। একটি শিক্ষিত ও দক্ষ জাতি গড়তে আমি আপনাদের মূল্যবান ভোট ও সহযোগিতা কামনা করি।', 'মাওলানা রফিকুল ইসলাম খান', 'প্রার্থী- সিরাজগঞ্জ-৪', 'quotes/01KBTF4BMV1Z0VEEN3SSW56XZK.jpg', 1, '2025-12-06 12:35:03', '2025-12-06 12:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', 'web', '2025-12-03 13:11:45', '2025-12-03 13:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ihCZqFavpOeKqTqzSJCloVDmRlbTf1r70O0omqM8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoicERMaDRLanluSUZiSVowYjhuaDZvd1dFRjNmVnNiUXduTFRlUG1hQSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jYW5kaWRhdGVzLzEvZWRpdCI7czo1OiJyb3V0ZSI7czo0MDoiZmlsYW1lbnQuYWRtaW4ucmVzb3VyY2VzLmNhbmRpZGF0ZXMuZWRpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkV2VCdmZ6eS5pZkNyVHROZmZpV0JCLnk4eXM2cW83MEhHdG5UUGVsQ1hUbXdKTWlMWk1VQUciO3M6NjoidGFibGVzIjthOjE6e3M6NDA6IjZiMmVhMTVmODI2Mzc1YTM0NzY4MTc4NmU4MjAxY2NlX2NvbHVtbnMiO2E6NDp7aTowO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjU6InBob3RvIjtzOjU6ImxhYmVsIjtzOjk6IuCmm+CmrOCmvyI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjE7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NDoibmFtZSI7czo1OiJsYWJlbCI7czo5OiLgpqjgpr7gpq4iO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aToyO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjE3OiJjb25zdGl0dWVuY3kubmFtZSI7czo1OiJsYWJlbCI7czo5OiLgpobgprjgpqgiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjoxO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjowO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7Tjt9aTozO2E6Nzp7czo0OiJ0eXBlIjtzOjY6ImNvbHVtbiI7czo0OiJuYW1lIjtzOjExOiJkZXNpZ25hdGlvbiI7czo1OiJsYWJlbCI7czoxMjoi4Kaq4Kam4Kas4KeAIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fX19czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1765216105);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL DEFAULT 'দাড়িপাল্লা মার্কা',
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `footer_text` text DEFAULT NULL,
  `social_links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`social_links`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `logo`, `favicon`, `contact_phone`, `contact_email`, `contact_address`, `meta_description`, `footer_text`, `social_links`, `created_at`, `updated_at`) VALUES
(1, 'দাড়িপাল্লা মার্কা', 'settings/01KBT353PF4Y52EJDWBGBZPK33.png', 'settings/01KBT353PK34F49MY1MXBM78W6.png', '০১৭০০-০০০০০০', 'info@election.com', 'সদর রোড, সিরাজগঞ্জ', 'বাংলাদেশ জাতীয় সংসদ নির্বাচন - ২০২৬', NULL, '{\"facebook\":\"https:\\/\\/facebook.com\",\"youtube\":\"https:\\/\\/youtube.com\"}', '2025-12-03 13:08:25', '2025-12-06 09:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `subtitle`, `button_text`, `button_link`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'sliders/01KBTA33MT6MMCG1EK89SM9ZK3.jpg', 'বিসমিল্লাহির রাহমানির রাহিম', 'ইনসাফ কায়েম ও সমৃদ্ধ সিরাজগঞ্জ গড়তে দাড়িপাল্লা মার্কায় ভোট দিন।', 'আমাদের ইশতেহার', '#manifesto', 1, '2025-12-03 13:08:25', '2025-12-06 11:26:37'),
(2, 'sliders/01KBTAPY9C5BMX4Z530C7ZXD3A.jpg', 'তারুণ্যের শক্তি, সমৃদ্ধ সিরাজগঞ্জ', 'শিক্ষা, স্বাস্থ্য ও কর্মসংস্থান—আমাদের মূল অগ্রাধিকার। আগামীর স্মার্ট সিরাজগঞ্জ গড়তে আমাদের সাথেই থাকুন।', 'প্রকল্পসমূহ দেখুন', '#programs', 1, '2025-12-03 13:08:25', '2025-12-06 11:27:38'),
(3, 'sliders/01KBTD97B211P9FA21313D06HE.jpg', 'উন্নয়নের মার্কা—দাড়িপাল্লা', 'যোগ্য প্রার্থীকে নির্বাচিত করুন, আপনার এলাকার উন্নয়ন বুঝে নিন। ৬টি আসনেই আমাদের প্রার্থীদের জয়যুক্ত করুন।', 'প্রার্থীদের তালিকা', '#candidates', 1, '2025-12-06 11:30:31', '2025-12-06 12:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar_url`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'superadmin@example.com', NULL, '$2y$12$WeBvfzy.ifCrTtNffiWBB.y8ys6qo70HGtnTPelCXTmwJMiLZMUAG', NULL, NULL, '2025-12-03 13:08:25', '2025-12-03 13:08:25');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `youtube_code` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `youtube_code`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'সিরাজগঞ্জ এনায়েতপুরে জামাত ইসলামীর মহা সমাবেশ, Maulana Rofikul Islam Khan, ', 'fcKmQCC-kbs', 'মাওলানা রফিকুল ইসলাম খাঁন', '2025-12-07 07:26:58', '2025-12-07 07:28:06'),
(2, 'একটা দল আওয়ামী স্টাইলে ক্ষমতায় যাওয়ার স্বপ্ন দেখছে', 'KqdGp8rBiAE', 'রফিকুল ইসলাম খান | Rafiqul Islam Khan | Jamaat', '2025-12-07 07:29:51', '2025-12-07 07:30:57'),
(3, '‘সব দল দেখা শেষ, এবার আলেম-ওলামার বাংলাদেশ’ | Rafiqul Islam Khan | Jamaat | Sayedee Foundation', 'YBeb_G3JUX0', '‘সব দল দেখা শেষ, এবার আলেম-ওলামার বাংলাদেশ’ | Rafiqul Islam Khan | Jamaat | Sayedee Foundation', '2025-12-07 07:32:50', '2025-12-07 07:32:50'),
(4, 'একটি দলের সরকার সরকার ভাব জনগণ মেনে নিবে না\' | Rafiqul Islam Khan', 'x2d9dm3MFq4', 'একটি দলের সরকার সরকার ভাব জনগণ মেনে নিবে না\' | Rafiqul Islam Khan', '2025-12-07 07:36:04', '2025-12-07 07:36:04'),
(5, '\'ব্যাংকের টাকাগুলো তারা বিদেশে পাচার করে দিয়েছে\' | Dr Shafiqur Rahman', 'aaNRBJygC_k', '\'ব্যাংকের টাকাগুলো তারা বিদেশে পাচার করে দিয়েছে\' | Dr Shafiqur Rahman', '2025-12-07 07:37:26', '2025-12-07 07:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `interested_area` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidates_constituency_id_foreign` (`constituency_id`);

--
-- Indexes for table `constituencies`
--
ALTER TABLE `constituencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manifestos`
--
ALTER TABLE `manifestos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `constituencies`
--
ALTER TABLE `constituencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manifestos`
--
ALTER TABLE `manifestos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_constituency_id_foreign` FOREIGN KEY (`constituency_id`) REFERENCES `constituencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
