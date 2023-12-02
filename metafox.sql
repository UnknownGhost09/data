-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2023 at 09:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metafox`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add levels', 7, 'add_levels'),
(26, 'Can change levels', 7, 'change_levels'),
(27, 'Can delete levels', 7, 'delete_levels'),
(28, 'Can view levels', 7, 'view_levels'),
(29, 'Can add rank', 8, 'add_rank'),
(30, 'Can change rank', 8, 'change_rank'),
(31, 'Can delete rank', 8, 'delete_rank'),
(32, 'Can view rank', 8, 'view_rank'),
(33, 'Can add wallet', 9, 'add_wallet'),
(34, 'Can change wallet', 9, 'change_wallet'),
(35, 'Can delete wallet', 9, 'delete_wallet'),
(36, 'Can view wallet', 9, 'view_wallet'),
(37, 'Can add user referral', 10, 'add_userreferral'),
(38, 'Can change user referral', 10, 'change_userreferral'),
(39, 'Can delete user referral', 10, 'delete_userreferral'),
(40, 'Can view user referral', 10, 'view_userreferral'),
(41, 'Can add user rank', 11, 'add_userrank'),
(42, 'Can change user rank', 11, 'change_userrank'),
(43, 'Can delete user rank', 11, 'delete_userrank'),
(44, 'Can view user rank', 11, 'view_userrank'),
(45, 'Can add transactions', 12, 'add_transactions'),
(46, 'Can change transactions', 12, 'change_transactions'),
(47, 'Can delete transactions', 12, 'delete_transactions'),
(48, 'Can view transactions', 12, 'view_transactions'),
(49, 'Can add login_history', 13, 'add_login_history'),
(50, 'Can change login_history', 13, 'change_login_history'),
(51, 'Can delete login_history', 13, 'delete_login_history'),
(52, 'Can view login_history', 13, 'view_login_history'),
(53, 'Can add current_level', 14, 'add_current_level'),
(54, 'Can change current_level', 14, 'change_current_level'),
(55, 'Can delete current_level', 14, 'delete_current_level'),
(56, 'Can view current_level', 14, 'view_current_level'),
(57, 'Can add status_activity', 15, 'add_status_activity'),
(58, 'Can change status_activity', 15, 'change_status_activity'),
(59, 'Can delete status_activity', 15, 'delete_status_activity'),
(60, 'Can view status_activity', 15, 'view_status_activity'),
(61, 'Can add emailservice', 16, 'add_emailservice'),
(62, 'Can change emailservice', 16, 'change_emailservice'),
(63, 'Can delete emailservice', 16, 'delete_emailservice'),
(64, 'Can view emailservice', 16, 'view_emailservice'),
(65, 'Can add membership', 17, 'add_membership'),
(66, 'Can change membership', 17, 'change_membership'),
(67, 'Can delete membership', 17, 'delete_membership'),
(68, 'Can view membership', 17, 'view_membership'),
(69, 'Can add user membership', 18, 'add_usermembership'),
(70, 'Can change user membership', 18, 'change_usermembership'),
(71, 'Can delete user membership', 18, 'delete_usermembership'),
(72, 'Can view user membership', 18, 'view_usermembership'),
(73, 'Can add user withdrawls', 19, 'add_userwithdrawls'),
(74, 'Can change user withdrawls', 19, 'change_userwithdrawls'),
(75, 'Can delete user withdrawls', 19, 'delete_userwithdrawls'),
(76, 'Can view user withdrawls', 19, 'view_userwithdrawls'),
(77, 'Can add withdrawsettingmodel', 20, 'add_withdrawsettingmodel'),
(78, 'Can change withdrawsettingmodel', 20, 'change_withdrawsettingmodel'),
(79, 'Can delete withdrawsettingmodel', 20, 'delete_withdrawsettingmodel'),
(80, 'Can view withdrawsettingmodel', 20, 'view_withdrawsettingmodel'),
(81, 'Can add ticket model', 21, 'add_ticketmodel'),
(82, 'Can change ticket model', 21, 'change_ticketmodel'),
(83, 'Can delete ticket model', 21, 'delete_ticketmodel'),
(84, 'Can view ticket model', 21, 'view_ticketmodel'),
(85, 'Can add verify', 22, 'add_verify'),
(86, 'Can change verify', 22, 'change_verify'),
(87, 'Can delete verify', 22, 'delete_verify'),
(88, 'Can view verify', 22, 'view_verify'),
(89, 'Can add plansmodel', 23, 'add_plansmodel'),
(90, 'Can change plansmodel', 23, 'change_plansmodel'),
(91, 'Can delete plansmodel', 23, 'delete_plansmodel'),
(92, 'Can view plansmodel', 23, 'view_plansmodel'),
(93, 'Can add association', 24, 'add_association'),
(94, 'Can change association', 24, 'change_association'),
(95, 'Can delete association', 24, 'delete_association'),
(96, 'Can view association', 24, 'view_association'),
(97, 'Can add code', 25, 'add_code'),
(98, 'Can change code', 25, 'change_code'),
(99, 'Can delete code', 25, 'delete_code'),
(100, 'Can view code', 25, 'view_code'),
(101, 'Can add nonce', 26, 'add_nonce'),
(102, 'Can change nonce', 26, 'change_nonce'),
(103, 'Can delete nonce', 26, 'delete_nonce'),
(104, 'Can view nonce', 26, 'view_nonce'),
(105, 'Can add user social auth', 27, 'add_usersocialauth'),
(106, 'Can change user social auth', 27, 'change_usersocialauth'),
(107, 'Can delete user social auth', 27, 'delete_usersocialauth'),
(108, 'Can view user social auth', 27, 'view_usersocialauth'),
(109, 'Can add partial', 28, 'add_partial'),
(110, 'Can change partial', 28, 'change_partial'),
(111, 'Can delete partial', 28, 'delete_partial'),
(112, 'Can view partial', 28, 'view_partial'),
(113, 'Can add email address', 29, 'add_emailaddress'),
(114, 'Can change email address', 29, 'change_emailaddress'),
(115, 'Can delete email address', 29, 'delete_emailaddress'),
(116, 'Can view email address', 29, 'view_emailaddress'),
(117, 'Can add email confirmation', 30, 'add_emailconfirmation'),
(118, 'Can change email confirmation', 30, 'change_emailconfirmation'),
(119, 'Can delete email confirmation', 30, 'delete_emailconfirmation'),
(120, 'Can view email confirmation', 30, 'view_emailconfirmation'),
(121, 'Can add social account', 31, 'add_socialaccount'),
(122, 'Can change social account', 31, 'change_socialaccount'),
(123, 'Can delete social account', 31, 'delete_socialaccount'),
(124, 'Can view social account', 31, 'view_socialaccount'),
(125, 'Can add social application', 32, 'add_socialapp'),
(126, 'Can change social application', 32, 'change_socialapp'),
(127, 'Can delete social application', 32, 'delete_socialapp'),
(128, 'Can view social application', 32, 'view_socialapp'),
(129, 'Can add social application token', 33, 'add_socialtoken'),
(130, 'Can change social application token', 33, 'change_socialtoken'),
(131, 'Can delete social application token', 33, 'delete_socialtoken'),
(132, 'Can view social application token', 33, 'view_socialtoken'),
(133, 'Can add newsmodel', 34, 'add_newsmodel'),
(134, 'Can change newsmodel', 34, 'change_newsmodel'),
(135, 'Can delete newsmodel', 34, 'delete_newsmodel'),
(136, 'Can view newsmodel', 34, 'view_newsmodel'),
(137, 'Can add appsettings', 35, 'add_appsettings'),
(138, 'Can change appsettings', 35, 'change_appsettings'),
(139, 'Can delete appsettings', 35, 'delete_appsettings'),
(140, 'Can view appsettings', 35, 'view_appsettings'),
(141, 'Can add user address detail', 36, 'add_useraddressdetail'),
(142, 'Can change user address detail', 36, 'change_useraddressdetail'),
(143, 'Can delete user address detail', 36, 'delete_useraddressdetail'),
(144, 'Can view user address detail', 36, 'view_useraddressdetail'),
(145, 'Can add fastrack model', 37, 'add_fastrackmodel'),
(146, 'Can change fastrack model', 37, 'change_fastrackmodel'),
(147, 'Can delete fastrack model', 37, 'delete_fastrackmodel'),
(148, 'Can view fastrack model', 37, 'view_fastrackmodel'),
(149, 'Can add levelincome', 38, 'add_levelincome'),
(150, 'Can change levelincome', 38, 'change_levelincome'),
(151, 'Can delete levelincome', 38, 'delete_levelincome'),
(152, 'Can view levelincome', 38, 'view_levelincome'),
(153, 'Can add userunlockedlevel', 39, 'add_userunlockedlevel'),
(154, 'Can change userunlockedlevel', 39, 'change_userunlockedlevel'),
(155, 'Can delete userunlockedlevel', 39, 'delete_userunlockedlevel'),
(156, 'Can view userunlockedlevel', 39, 'view_userunlockedlevel'),
(157, 'Can add user staking', 40, 'add_userstaking'),
(158, 'Can change user staking', 40, 'change_userstaking'),
(159, 'Can delete user staking', 40, 'delete_userstaking'),
(160, 'Can view user staking', 40, 'view_userstaking'),
(161, 'Can add gallaryimages', 41, 'add_gallaryimages'),
(162, 'Can change gallaryimages', 41, 'change_gallaryimages'),
(163, 'Can delete gallaryimages', 41, 'delete_gallaryimages'),
(164, 'Can view gallaryimages', 41, 'view_gallaryimages'),
(165, 'Can add ptransfer', 42, 'add_ptransfer'),
(166, 'Can change ptransfer', 42, 'change_ptransfer'),
(167, 'Can delete ptransfer', 42, 'delete_ptransfer'),
(168, 'Can view ptransfer', 42, 'view_ptransfer'),
(169, 'Can add staking roi logs', 43, 'add_stakingroilogs'),
(170, 'Can change staking roi logs', 43, 'change_stakingroilogs'),
(171, 'Can delete staking roi logs', 43, 'delete_stakingroilogs'),
(172, 'Can view staking roi logs', 43, 'view_stakingroilogs'),
(173, 'Can add farming roi logs', 44, 'add_farmingroilogs'),
(174, 'Can change farming roi logs', 44, 'change_farmingroilogs'),
(175, 'Can delete farming roi logs', 44, 'delete_farmingroilogs'),
(176, 'Can view farming roi logs', 44, 'view_farmingroilogs'),
(177, 'Can add youtubevideo', 45, 'add_youtubevideo'),
(178, 'Can change youtubevideo', 45, 'change_youtubevideo'),
(179, 'Can delete youtubevideo', 45, 'delete_youtubevideo'),
(180, 'Can view youtubevideo', 45, 'view_youtubevideo'),
(181, 'Can add cofounderclub', 46, 'add_cofounderclub'),
(182, 'Can change cofounderclub', 46, 'change_cofounderclub'),
(183, 'Can delete cofounderclub', 46, 'delete_cofounderclub'),
(184, 'Can view cofounderclub', 46, 'view_cofounderclub'),
(185, 'Can add usercofounderclub', 47, 'add_usercofounderclub'),
(186, 'Can change usercofounderclub', 47, 'change_usercofounderclub'),
(187, 'Can delete usercofounderclub', 47, 'delete_usercofounderclub'),
(188, 'Can view usercofounderclub', 47, 'view_usercofounderclub'),
(189, 'Can add businesslogs', 48, 'add_businesslogs'),
(190, 'Can change businesslogs', 48, 'change_businesslogs'),
(191, 'Can delete businesslogs', 48, 'delete_businesslogs'),
(192, 'Can view businesslogs', 48, 'view_businesslogs'),
(193, 'Can add manage roi', 49, 'add_manageroi'),
(194, 'Can change manage roi', 49, 'change_manageroi'),
(195, 'Can delete manage roi', 49, 'delete_manageroi'),
(196, 'Can view manage roi', 49, 'view_manageroi'),
(197, 'Can add changesponserlogs', 50, 'add_changesponserlogs'),
(198, 'Can change changesponserlogs', 50, 'change_changesponserlogs'),
(199, 'Can delete changesponserlogs', 50, 'delete_changesponserlogs'),
(200, 'Can view changesponserlogs', 50, 'view_changesponserlogs'),
(201, 'Can add categorymodel', 51, 'add_categorymodel'),
(202, 'Can change categorymodel', 51, 'change_categorymodel'),
(203, 'Can delete categorymodel', 51, 'delete_categorymodel'),
(204, 'Can view categorymodel', 51, 'view_categorymodel'),
(205, 'Can add rewards', 52, 'add_rewards'),
(206, 'Can change rewards', 52, 'change_rewards'),
(207, 'Can delete rewards', 52, 'delete_rewards'),
(208, 'Can view rewards', 52, 'view_rewards'),
(209, 'Can add user rewards', 53, 'add_userrewards'),
(210, 'Can change user rewards', 53, 'change_userrewards'),
(211, 'Can delete user rewards', 53, 'delete_userrewards'),
(212, 'Can view user rewards', 53, 'view_userrewards'),
(213, 'Can add reward logs', 54, 'add_rewardlogs'),
(214, 'Can change reward logs', 54, 'change_rewardlogs'),
(215, 'Can delete reward logs', 54, 'delete_rewardlogs'),
(216, 'Can view reward logs', 54, 'view_rewardlogs'),
(217, 'Can add principallogs', 55, 'add_principallogs'),
(218, 'Can change principallogs', 55, 'change_principallogs'),
(219, 'Can delete principallogs', 55, 'delete_principallogs'),
(220, 'Can view principallogs', 55, 'view_principallogs'),
(221, 'Can add withdrawapi', 56, 'add_withdrawapi'),
(222, 'Can change withdrawapi', 56, 'change_withdrawapi'),
(223, 'Can delete withdrawapi', 56, 'delete_withdrawapi'),
(224, 'Can view withdrawapi', 56, 'view_withdrawapi'),
(225, 'Can add roiperiod', 57, 'add_roiperiod'),
(226, 'Can change roiperiod', 57, 'change_roiperiod'),
(227, 'Can delete roiperiod', 57, 'delete_roiperiod'),
(228, 'Can view roiperiod', 57, 'view_roiperiod'),
(229, 'Can add sponsorlog', 58, 'add_sponsorlog'),
(230, 'Can change sponsorlog', 58, 'change_sponsorlog'),
(231, 'Can delete sponsorlog', 58, 'delete_sponsorlog'),
(232, 'Can view sponsorlog', 58, 'view_sponsorlog');

-- --------------------------------------------------------

--
-- Table structure for table `core_appsettings`
--

CREATE TABLE `core_appsettings` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `logolight` varchar(200) NOT NULL,
  `logodart` varchar(200) NOT NULL,
  `favicon` varchar(200) NOT NULL,
  `aboutus` longtext NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_appsettings`
--

INSERT INTO `core_appsettings` (`id`, `title`, `logolight`, `logodart`, `favicon`, `aboutus`, `facebook`, `twitter`, `linkedin`, `instagram`, `email`, `status`) VALUES
(1, 'MLM', 'logo-2.png', 'logo-1.png', 'logo-3.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '0'),
(2, 'MLM', 'alp-icon.png', 'alp-icon.png', 'alp-icon.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '0'),
(3, 'BSTmeta', 'meta-logo.png', 'meta-logo.png', 'meta-logo.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '0'),
(4, 'ALPtoken', 'meta-logo.png', 'meta-logo.png', 'meta-logo.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '0'),
(5, 'ALPtoken', 'alp-icon.png', 'alp-icon.png', 'alp-icon.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '0'),
(6, 'MetaFox', 'logo-light.png', 'logo-light.png', 'logo-light.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '0'),
(7, 'MetaFox', 'logo-light.png', 'logo-light.png', 'logo-light.png', 'Giving readers a sense of who you are or what your business stands for should be your first priority. Give a clear and simple explanation of the website\'s or company\'s objective. You should mention your passion, mission, or vision here.', 'https://facebook.com', 'https://twitter.com', 'https://linkedin.com', 'https://instagram.com', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_businesslogs`
--

CREATE TABLE `core_businesslogs` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL,
  `plan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_businesslogs`
--

INSERT INTO `core_businesslogs` (`id`, `amount`, `date`, `status`, `child_id_id`, `parent_id_id`, `plan_id`) VALUES
(32711, '2500', '2023-11-22 05:28:31.577659', '1', 178, 177, 21),
(32712, '2500', '2023-11-22 05:28:31.577659', '1', 177, 176, 21),
(32713, '2500', '2023-11-22 05:28:31.577659', '1', 177, 176, 21),
(32714, '2500', '2023-11-22 05:43:49.005292', '1', 179, 176, 21),
(32715, '2500', '2023-11-22 05:52:30.092508', '1', 180, 176, 21),
(32716, '2500', '2023-11-22 05:58:25.009330', '1', 181, 176, 21),
(32717, '2500', '2023-11-22 06:00:55.979031', '1', 182, 176, 21);

-- --------------------------------------------------------

--
-- Table structure for table `core_changesponserlogs`
--

CREATE TABLE `core_changesponserlogs` (
  `id` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `from_id_id` bigint(20) NOT NULL,
  `to_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_cofounderclub`
--

CREATE TABLE `core_cofounderclub` (
  `id` bigint(20) NOT NULL,
  `club` varchar(200) NOT NULL,
  `business` varchar(200) NOT NULL,
  `reward` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_cofounderclub`
--

INSERT INTO `core_cofounderclub` (`id`, `club`, `business`, `reward`, `status`) VALUES
(1, 'Club1', '25000', '5000', '1'),
(2, 'Club2', '50000', '10000', '1'),
(3, 'Club3', '100000', '20000', '1'),
(4, 'Club4', '200000', '30000', '1'),
(5, 'Club5', '500000', '50000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_emailservice`
--

CREATE TABLE `core_emailservice` (
  `id` bigint(20) NOT NULL,
  `service` varchar(200) NOT NULL,
  `host` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `port` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_emailservice`
--

INSERT INTO `core_emailservice` (`id`, `service`, `host`, `user`, `password`, `port`, `status`) VALUES
(1, 'mailtrap', 'smtp-relay.brevo.com', 'shubhamboxfy@gmail.com', 'AkWbKnOYFJ7P9HMt', ' 587', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_gallaryimages`
--

CREATE TABLE `core_gallaryimages` (
  `id` bigint(20) NOT NULL,
  `imgpath` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `title` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_gallaryimages`
--

INSERT INTO `core_gallaryimages` (`id`, `imgpath`, `status`, `title`) VALUES
(1, 'img-1.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.\r\nThe calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(2, 'img-7.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(3, 'img-4.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(4, 'avatar-10.jpg', '1', 'The calendar may say spring, but a cool breeze through your open window makes a lightweight throw blanket a must-have.'),
(5, 'avatar-8.jpg', '1', 'ksjlf dsfjal ksajfll; sfjlsd               ');

-- --------------------------------------------------------

--
-- Table structure for table `core_levelincome`
--

CREATE TABLE `core_levelincome` (
  `id` bigint(20) NOT NULL,
  `level_income` varchar(200) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_levelincome`
--

INSERT INTO `core_levelincome` (`id`, `level_income`, `child_id_id`, `level_id`, `parent_id_id`, `date`, `status`) VALUES
(656, '25.0', 182, 1, 176, '2023-11-22 11:32:24.463393', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_login_history`
--

CREATE TABLE `core_login_history` (
  `id` bigint(20) NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `ip_location` varchar(200) NOT NULL,
  `region` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_login_history`
--

INSERT INTO `core_login_history` (`id`, `login_time`, `logout_time`, `user_id`, `city`, `country`, `ip_location`, `region`) VALUES
(450, '2023-11-22 04:38:06.052085', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(451, '', '', 176, 'NA', 'NA', '127.0.0.1', 'NA'),
(452, '', '2023-11-22 05:21:56.893297', 177, 'NA', 'NA', '127.0.0.1', 'NA'),
(453, '2023-11-22 05:22:31.269939', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(454, '2023-11-22 05:25:46.315358', '2023-11-22 05:28:18.478754', 176, 'NA', 'NA', '127.0.0.1', 'NA'),
(455, '2023-11-22 05:29:02.719069', '', 177, 'NA', 'NA', '127.0.0.1', 'NA'),
(456, '', '2023-11-22 05:29:43.322266', 178, 'NA', 'NA', '127.0.0.1', 'NA'),
(457, '2023-11-22 05:29:53.160813', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(458, '2023-11-22 05:30:08.111773', '2023-11-22 05:30:36.130578', 176, 'NA', 'NA', '127.0.0.1', 'NA'),
(459, '2023-11-22 05:30:44.884210', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(460, '2023-11-22 05:31:46.807053', '2023-11-22 05:32:05.983839', 176, 'NA', 'NA', '127.0.0.1', 'NA'),
(461, '2023-11-22 05:32:17.717046', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(462, '2023-11-22 05:32:34.435285', '2023-11-22 05:32:50.676245', 178, 'NA', 'NA', '127.0.0.1', 'NA'),
(463, '2023-11-22 05:33:01.140533', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(464, '2023-11-22 05:33:12.422452', '2023-11-22 05:33:26.376029', 177, 'NA', 'NA', '127.0.0.1', 'NA'),
(465, '2023-11-22 05:33:36.027622', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(466, '2023-11-22 05:33:50.054181', '', 176, 'NA', 'NA', '127.0.0.1', 'NA'),
(467, '', '2023-11-22 05:44:43.712764', 179, 'NA', 'NA', '127.0.0.1', 'NA'),
(468, '2023-11-22 05:44:54.556337', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(469, '2023-11-22 05:45:28.406801', '2023-11-22 05:45:47.616803', 179, 'NA', 'NA', '127.0.0.1', 'NA'),
(470, '2023-11-22 05:45:58.708210', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(471, '2023-11-22 05:46:12.401702', '', 176, 'NA', 'NA', '127.0.0.1', 'NA'),
(472, '', '2023-11-22 05:53:41.531925', 180, 'NA', 'NA', '127.0.0.1', 'NA'),
(473, '2023-11-22 05:53:59.755032', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(474, '2023-11-22 05:54:32.587034', '2023-11-22 05:54:46.091055', 180, 'NA', 'NA', '127.0.0.1', 'NA'),
(475, '2023-11-22 05:54:54.891223', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(476, '2023-11-22 05:55:04.493943', '2023-11-22 05:59:09.956497', 176, 'NA', 'NA', '127.0.0.1', 'NA'),
(477, '2023-11-22 05:58:51.253398', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(478, '', '', 181, 'NA', 'NA', '127.0.0.1', 'NA'),
(479, '', '', 182, 'NA', 'NA', '127.0.0.1', 'NA'),
(480, '2023-11-22 06:01:42.797211', '2023-11-22 06:05:02.404737', 182, 'NA', 'NA', '127.0.0.1', 'NA'),
(481, '2023-11-22 06:01:59.696883', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(482, '2023-11-22 06:02:46.464796', '', 176, 'NA', 'NA', '127.0.0.1', 'NA'),
(483, '2023-11-22 06:03:10.432160', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(484, '2023-11-22 06:03:18.965737', '', 176, 'NA', 'NA', '127.0.0.1', 'NA'),
(485, '2023-11-22 06:05:11.603415', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(486, '2023-11-22 06:05:20.563316', '', 176, 'NA', 'NA', '127.0.0.1', 'NA'),
(487, '', '', 183, 'NA', 'NA', '127.0.0.1', 'NA'),
(488, '2023-11-29 16:21:46.100374', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(489, '2023-11-29 16:21:55.291070', '2023-11-30 05:20:19.036903', 177, 'NA', 'NA', '127.0.0.1', 'NA'),
(490, '2023-11-30 05:20:56.377057', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(491, '2023-11-30 05:21:03.635719', '2023-11-30 06:54:40.368564', 177, 'NA', 'NA', '127.0.0.1', 'NA'),
(492, '2023-11-30 07:21:18.161677', '2023-11-30 07:21:21.834259', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(493, '2023-11-30 09:57:51.506302', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(494, '2023-11-30 09:58:04.326129', '', 177, 'NA', 'NA', '127.0.0.1', 'NA'),
(495, '2023-12-01 10:22:23.687815', '', 170, 'NA', 'NA', '127.0.0.1', 'NA'),
(496, '2023-12-01 10:22:40.462507', '2023-12-02 06:26:09.750857', 177, 'NA', 'NA', '127.0.0.1', 'NA'),
(497, '2023-12-02 07:21:25.537830', '', 170, 'NA', 'NA', '127.0.0.1', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `core_membership`
--

CREATE TABLE `core_membership` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `refferal_commision` varchar(200) NOT NULL,
  `points` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `directincomepercent` varchar(200) NOT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `plan_period` varchar(100) DEFAULT NULL,
  `roi` varchar(200) NOT NULL,
  `roi_period` varchar(200) NOT NULL,
  `staking` varchar(100) NOT NULL,
  `overall_roi` varchar(200) NOT NULL,
  `pool_id` varchar(200) NOT NULL,
  `matuarity_bonus` varchar(250) NOT NULL,
  `sponser_bonus` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_membership`
--

INSERT INTO `core_membership` (`id`, `name`, `refferal_commision`, `points`, `status`, `directincomepercent`, `amount`, `plan_period`, `roi`, `roi_period`, `staking`, `overall_roi`, `pool_id`, `matuarity_bonus`, `sponser_bonus`) VALUES
(21, 'Package1', '0', '20', '1', '50', '2500', '18', '3', '1', 'False', '54.0', '0', '12500', '1'),
(22, 'Package3', '0', '20', '0', '50', '10000', NULL, '12', '1', 'False', '200', '0', '12500', '0'),
(23, 'Package2', '0', '20', '1', '50', '5000', '36', '3', '1', 'False', '108.0', '1', '25000', '1'),
(24, 'Package3', '0', '20', '1', '50', '10000', '36', '4', '1', 'False', '144.0', '0', '50000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_newsmodel`
--

CREATE TABLE `core_newsmodel` (
  `id` bigint(20) NOT NULL,
  `news` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(200) NOT NULL,
  `datato` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_newsmodel`
--

INSERT INTO `core_newsmodel` (`id`, `news`, `date`, `status`, `datato`) VALUES
(1, 'hello', '2023-08-03', 'True', '2023-08-16'),
(2, 'hello how are you', '2023-08-21', 'True', '2023-08-29'),
(3, 'hello', '2023-09-06', 'True', '2023-09-07'),
(4, 'Abc ', '2023-09-06', 'True', '2023-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `core_plansmodel`
--

CREATE TABLE `core_plansmodel` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_plansmodel`
--

INSERT INTO `core_plansmodel` (`id`, `name`, `status`) VALUES
(6, 'ROIplan', '');

-- --------------------------------------------------------

--
-- Table structure for table `core_roiperiod`
--

CREATE TABLE `core_roiperiod` (
  `id` bigint(20) NOT NULL,
  `period` varchar(200) NOT NULL,
  `plan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_status_activity`
--

CREATE TABLE `core_status_activity` (
  `id` bigint(20) NOT NULL,
  `time` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `amount_freezed` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_ticketmodel`
--

CREATE TABLE `core_ticketmodel` (
  `id` bigint(20) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_useraddressdetail`
--

CREATE TABLE `core_useraddressdetail` (
  `id` bigint(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `pincode` varchar(200) NOT NULL,
  `district` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `country` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_usercofounderclub`
--

CREATE TABLE `core_usercofounderclub` (
  `id` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL,
  `club_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `reward_recieved` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_userunlockedlevel`
--

CREATE TABLE `core_userunlockedlevel` (
  `id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_userwithdrawls`
--

CREATE TABLE `core_userwithdrawls` (
  `id` bigint(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `type` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `fees` varchar(200) NOT NULL,
  `bonus_amount` varchar(250) NOT NULL,
  `direct_amount` varchar(250) NOT NULL,
  `level_amount` varchar(250) NOT NULL,
  `roi_amount` varchar(200) NOT NULL,
  `deposit_amount` varchar(250) NOT NULL,
  `topup_amount` varchar(250) NOT NULL,
  `transfer_amount` varchar(250) NOT NULL,
  `payload` longtext NOT NULL,
  `transaction_hash` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_userwithdrawls`
--

INSERT INTO `core_userwithdrawls` (`id`, `status`, `amount`, `currency`, `address`, `user_id`, `wallet_id`, `type`, `date`, `fees`, `bonus_amount`, `direct_amount`, `level_amount`, `roi_amount`, `deposit_amount`, `topup_amount`, `transfer_amount`, `payload`, `transaction_hash`) VALUES
(28, '1', '100', 'USDT', NULL, 183, 153, '1', '2023-11-28 12:52:58.723651', '0', '0', '0', '0', '0', '100', '0', '0', '{\"to\":\"0xC11057CB8071197d733B6bDBe93E63f15B691107\",\"from\":\"0xa5aD322acf2eF79d5080C714dAb056Cc1B76a3e1\",\"contractAddress\":null,\"transactionIndex\":34,\"gasUsed\":{\"type\":\"BigNumber\",\"hex\":\"0xcc9f\"},\"logsBloom\":\"0x00000000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000200000000000400000000000000000000008000000200000000000000000000000020000000000000000000000000000000000000000000000000000040200000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000000000000010000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\",\"blockHash\":\"0x876ce46d19de208180d96dd1091228c04c4c5f64e6336bc5a22e85bade44dc3c\",\"transactionHash\":\"0xa1f887eae2277e2aaabc813adb034ca61817e20bfda79820cdc40c096a10a56e\",\"logs\":[{\"transactionIndex\":34,\"blockNumber\":10125742,\"transactionHash\":\"0xa1f887eae2277e2aaabc813adb034ca61817e20bfda79820cdc40c096a10a56e\",\"address\":\"0xC11057CB8071197d733B6bDBe93E63f15B691107\",\"topics\":[\"0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef\",\"0x000000000000000000000000a5ad322acf2ef79d5080c714dab056cc1b76a3e1\",\"0x00000000000000000000000029a0ee34fa83a247b749adde780ec09098f5c2d0\"],\"data\":\"0x0000000000000000000000000000000000000000000000056bc75e2d63100000\",\"logIndex\":91,\"blockHash\":\"0x876ce46d19de208180d96dd1091228c04c4c5f64e6336bc5a22e85bade44dc3c\"}],\"blockNumber\":10125742,\"confirmations\":1,\"cumulativeGasUsed\":{\"type\":\"BigNumber\",\"hex\":\"0x3f3820\"},\"status\":1,\"byzantium\":true,\"events\":[{\"transactionIndex\":34,\"blockNumber\":10125742,\"transactionHash\":\"0xa1f887eae2277e2aaabc813adb034ca61817e20bfda79820cdc40c096a10a56e\",\"address\":\"0xC11057CB8071197d733B6bDBe93E63f15B691107\",\"topics\":[\"0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef\",\"0x000000000000000000000000a5ad322acf2ef79d5080c714dab056cc1b76a3e1\",\"0x00000000000000000000000029a0ee34fa83a247b749adde780ec09098f5c2d0\"],\"data\":\"0x0000000000000000000000000000000000000000000000056bc75e2d63100000\",\"logIndex\":91,\"blockHash\":\"0x876ce46d19de208180d96dd1091228c04c4c5f64e6336bc5a22e85bade44dc3c\",\"args\":[\"0xa5aD322acf2eF79d5080C714dAb056Cc1B76a3e1\",\"0x29A0EE34FA83a247B749ADde780EC09098F5C2d0\",{\"type\":\"BigNumber\",\"hex\":\"0x056bc75e2d63100000\"}],\"event\":\"Transfer\",\"eventSignature\":\"Transfer(address,address,uint256)\"}]}', '0xa1f887eae2277e2aaabc813adb034ca61817e20bfda79820cdc40c096a10a56e'),
(29, '1', '1', 'USDT', NULL, 183, 153, '1', '2023-11-28 12:52:58.723651', '0', '0', '0', '0', '0', '1', '0', '0', '{\"to\":\"0xC11057CB8071197d733B6bDBe93E63f15B691107\",\"from\":\"0xa5aD322acf2eF79d5080C714dAb056Cc1B76a3e1\",\"contractAddress\":null,\"transactionIndex\":77,\"gasUsed\":{\"type\":\"BigNumber\",\"hex\":\"0xcc93\"},\"logsBloom\":\"0x00000040000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000200000000000000000000000000000000008000000200000000000000000000000020000000000000000000000000000000000000000000000000000040200000010000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000080000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\",\"blockHash\":\"0x7c6f486f17a81cf57dc0c42dcb78eeb76d653db9564596a1edbc9a763bf7996b\",\"transactionHash\":\"0xb25a45b6aeab4188300433dc8f5f8fef44827a99449304d4f8b6c3461269c0ea\",\"logs\":[{\"transactionIndex\":77,\"blockNumber\":10125753,\"transactionHash\":\"0xb25a45b6aeab4188300433dc8f5f8fef44827a99449304d4f8b6c3461269c0ea\",\"address\":\"0xC11057CB8071197d733B6bDBe93E63f15B691107\",\"topics\":[\"0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef\",\"0x000000000000000000000000a5ad322acf2ef79d5080c714dab056cc1b76a3e1\",\"0x0000000000000000000000007f1ce4010fbcaf99f1c074beb0f29faf93c23a2d\"],\"data\":\"0x0000000000000000000000000000000000000000000000000de0b6b3a7640000\",\"logIndex\":90,\"blockHash\":\"0x7c6f486f17a81cf57dc0c42dcb78eeb76d653db9564596a1edbc9a763bf7996b\"}],\"blockNumber\":10125753,\"confirmations\":1,\"cumulativeGasUsed\":{\"type\":\"BigNumber\",\"hex\":\"0x01be5657\"},\"status\":1,\"byzantium\":true,\"events\":[{\"transactionIndex\":77,\"blockNumber\":10125753,\"transactionHash\":\"0xb25a45b6aeab4188300433dc8f5f8fef44827a99449304d4f8b6c3461269c0ea\",\"address\":\"0xC11057CB8071197d733B6bDBe93E63f15B691107\",\"topics\":[\"0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef\",\"0x000000000000000000000000a5ad322acf2ef79d5080c714dab056cc1b76a3e1\",\"0x0000000000000000000000007f1ce4010fbcaf99f1c074beb0f29faf93c23a2d\"],\"data\":\"0x0000000000000000000000000000000000000000000000000de0b6b3a7640000\",\"logIndex\":90,\"blockHash\":\"0x7c6f486f17a81cf57dc0c42dcb78eeb76d653db9564596a1edbc9a763bf7996b\",\"args\":[\"0xa5aD322acf2eF79d5080C714dAb056Cc1B76a3e1\",\"0x7F1CE4010FBCaF99F1C074beB0F29faf93c23A2d\",{\"type\":\"BigNumber\",\"hex\":\"0x0de0b6b3a7640000\"}],\"event\":\"Transfer\",\"eventSignature\":\"Transfer(address,address,uint256)\"}]}', '0xb25a45b6aeab4188300433dc8f5f8fef44827a99449304d4f8b6c3461269c0ea'),
(30, '1', '1', 'USDT', NULL, 183, 153, '1', '2023-11-28 12:52:58.723651', '0', '0', '0', '0', '0', '1', '0', '0', '{\"to\":\"0xC11057CB8071197d733B6bDBe93E63f15B691107\",\"from\":\"0xa5aD322acf2eF79d5080C714dAb056Cc1B76a3e1\",\"contractAddress\":null,\"transactionIndex\":9,\"gasUsed\":{\"type\":\"BigNumber\",\"hex\":\"0x89c7\"},\"logsBloom\":\"0x00000040000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000200000000000000000000000000000000008000000200000000000000000000000020000000000000000000000000000000000000000000000000000040200000010000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000080000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000\",\"blockHash\":\"0xef508bd3ca4e814989a8c19d7bed2988ee131dfb293572e984c03713e4d20453\",\"transactionHash\":\"0x3201d438cc886638fdbaa45bb2142f1ddce6ed1a976eb42f8a32135203fcaa49\",\"logs\":[{\"transactionIndex\":9,\"blockNumber\":10126045,\"transactionHash\":\"0x3201d438cc886638fdbaa45bb2142f1ddce6ed1a976eb42f8a32135203fcaa49\",\"address\":\"0xC11057CB8071197d733B6bDBe93E63f15B691107\",\"topics\":[\"0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef\",\"0x000000000000000000000000a5ad322acf2ef79d5080c714dab056cc1b76a3e1\",\"0x0000000000000000000000007f1ce4010fbcaf99f1c074beb0f29faf93c23a2d\"],\"data\":\"0x0000000000000000000000000000000000000000000000000de0b6b3a7640000\",\"logIndex\":16,\"blockHash\":\"0xef508bd3ca4e814989a8c19d7bed2988ee131dfb293572e984c03713e4d20453\"}],\"blockNumber\":10126045,\"confirmations\":1,\"cumulativeGasUsed\":{\"type\":\"BigNumber\",\"hex\":\"0x595ff6\"},\"status\":1,\"byzantium\":true,\"events\":[{\"transactionIndex\":9,\"blockNumber\":10126045,\"transactionHash\":\"0x3201d438cc886638fdbaa45bb2142f1ddce6ed1a976eb42f8a32135203fcaa49\",\"address\":\"0xC11057CB8071197d733B6bDBe93E63f15B691107\",\"topics\":[\"0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef\",\"0x000000000000000000000000a5ad322acf2ef79d5080c714dab056cc1b76a3e1\",\"0x0000000000000000000000007f1ce4010fbcaf99f1c074beb0f29faf93c23a2d\"],\"data\":\"0x0000000000000000000000000000000000000000000000000de0b6b3a7640000\",\"logIndex\":16,\"blockHash\":\"0xef508bd3ca4e814989a8c19d7bed2988ee131dfb293572e984c03713e4d20453\",\"args\":[\"0xa5aD322acf2eF79d5080C714dAb056Cc1B76a3e1\",\"0x7F1CE4010FBCaF99F1C074beB0F29faf93c23A2d\",{\"type\":\"BigNumber\",\"hex\":\"0x0de0b6b3a7640000\"}],\"event\":\"Transfer\",\"eventSignature\":\"Transfer(address,address,uint256)\"}]}', '0x3201d438cc886638fdbaa45bb2142f1ddce6ed1a976eb42f8a32135203fcaa49');

-- --------------------------------------------------------

--
-- Table structure for table `core_withdrawapi`
--

CREATE TABLE `core_withdrawapi` (
  `id` bigint(20) NOT NULL,
  `apiKey` varchar(250) NOT NULL,
  `fromAddress` longblob NOT NULL,
  `contractAddress` longblob NOT NULL,
  `privateKey` longblob NOT NULL,
  `rpc_url` longtext NOT NULL,
  `decimal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_withdrawapi`
--

INSERT INTO `core_withdrawapi` (`id`, `apiKey`, `fromAddress`, `contractAddress`, `privateKey`, `rpc_url`, `decimal`) VALUES
(1, 'djfsakldfjlas', 0x80000000006549c1b92af465ff74bf8b29aefa342e62de94954e6252d4b562f862ffd613af8bc7d73efac04fa6f9d21d8d83e2c4e6309b248587628e90d7437b80b50f43b5d4807778ec3a6c56a0186739e8805ae8a978c851, 0x80000000006549c1b999b6d8171664d72f6f770740dfd095fff38b4945cc6d8cb933dedb647fcfc5f825776a376d0d56a399231b1c7eec1e833a1fd66184a97d7846931d29be85860d052f64749994960277d00bdfefabf1df, 0x80000000006549c1b90abb981a87fe47a8c34288868880bcf82367a1ed275180652371c473dc13432ddcb8feb74d2cbfc8bc54bba15ee31a022c1da40d43181cb5c655f04c5fb8d813d47f8edb34eb685a584bca1ff86cedbc, 'fklsafklsa', '18');

-- --------------------------------------------------------

--
-- Table structure for table `core_withdrawsettingmodel`
--

CREATE TABLE `core_withdrawsettingmodel` (
  `id` bigint(20) NOT NULL,
  `min_amount` varchar(200) NOT NULL,
  `fees` varchar(200) NOT NULL,
  `max_amount` varchar(200) NOT NULL,
  `bscaddress` varchar(250) NOT NULL,
  `dates` varchar(250) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_withdrawsettingmodel`
--

INSERT INTO `core_withdrawsettingmodel` (`id`, `min_amount`, `fees`, `max_amount`, `bscaddress`, `dates`, `status`) VALUES
(1, '5', '20', '5000', 'uui4g3iug4iu3b4i3u5gi4g5u', '7,20', '1');

-- --------------------------------------------------------

--
-- Table structure for table `core_youtubevideo`
--

CREATE TABLE `core_youtubevideo` (
  `id` bigint(20) NOT NULL,
  `videolink` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sequence` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_youtubevideo`
--

INSERT INTO `core_youtubevideo` (`id`, `videolink`, `status`, `type`, `sequence`) VALUES
(1, 'https://www.youtube.com/embed/45BNUfZRfoQ?si=5nkUAOfdfhxie4U7\"', '1', '1', '0'),
(2, 'https://www.youtube.com/embed/45BNUfZRfoQ?si=5nkUAOfdfhxie4U7\"', '1', '2', '1'),
(3, 'https://www.youtube.com/embed/45BNUfZRfoQ?si=5nkUAOfdfhxie4U7\"', '1', '2', '1'),
(4, 'https://www.youtube.com/embed/FewUSkeDNnc?si=tsye_wuYsmUhXuqm\"', '1', '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `current_level`
--

CREATE TABLE `current_level` (
  `id` bigint(20) NOT NULL,
  `level_id` varchar(200) NOT NULL,
  `points` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current_level`
--

INSERT INTO `current_level` (`id`, `level_id`, `points`, `user_id`) VALUES
(153, '0', '0', 176),
(154, '0', '0', 177),
(155, '0', '0', 178),
(156, '0', '0', 179),
(157, '0', '0', 180),
(158, '0', '0', 181),
(159, '0', '0', 182),
(160, '0', '0', 183);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(29, 'account', 'emailaddress'),
(30, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(35, 'core', 'appsettings'),
(48, 'core', 'businesslogs'),
(51, 'core', 'categorymodel'),
(50, 'core', 'changesponserlogs'),
(46, 'core', 'cofounderclub'),
(14, 'core', 'current_level'),
(16, 'core', 'emailservice'),
(44, 'core', 'farmingroilogs'),
(37, 'core', 'fastrackmodel'),
(41, 'core', 'gallaryimages'),
(38, 'core', 'levelincome'),
(7, 'core', 'levels'),
(13, 'core', 'login_history'),
(49, 'core', 'manageroi'),
(17, 'core', 'membership'),
(34, 'core', 'newsmodel'),
(23, 'core', 'plansmodel'),
(55, 'core', 'principallogs'),
(42, 'core', 'ptransfer'),
(8, 'core', 'rank'),
(54, 'core', 'rewardlogs'),
(52, 'core', 'rewards'),
(57, 'core', 'roiperiod'),
(58, 'core', 'sponsorlog'),
(43, 'core', 'stakingroilogs'),
(15, 'core', 'status_activity'),
(21, 'core', 'ticketmodel'),
(12, 'core', 'transactions'),
(6, 'core', 'user'),
(36, 'core', 'useraddressdetail'),
(47, 'core', 'usercofounderclub'),
(18, 'core', 'usermembership'),
(11, 'core', 'userrank'),
(10, 'core', 'userreferral'),
(53, 'core', 'userrewards'),
(40, 'core', 'userstaking'),
(39, 'core', 'userunlockedlevel'),
(19, 'core', 'userwithdrawls'),
(9, 'core', 'wallet'),
(56, 'core', 'withdrawapi'),
(20, 'core', 'withdrawsettingmodel'),
(45, 'core', 'youtubevideo'),
(5, 'sessions', 'session'),
(31, 'socialaccount', 'socialaccount'),
(32, 'socialaccount', 'socialapp'),
(33, 'socialaccount', 'socialtoken'),
(24, 'social_django', 'association'),
(25, 'social_django', 'code'),
(26, 'social_django', 'nonce'),
(28, 'social_django', 'partial'),
(27, 'social_django', 'usersocialauth'),
(22, 'userapp', 'verify');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-09 11:28:14.227867'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-07-09 11:28:14.280738'),
(3, 'auth', '0001_initial', '2023-07-09 11:28:14.489109'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-07-09 11:28:14.541357'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-07-09 11:28:14.548355'),
(6, 'auth', '0004_alter_user_username_opts', '2023-07-09 11:28:14.556427'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-07-09 11:28:14.562534'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-07-09 11:28:14.565514'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-07-09 11:28:14.572660'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-07-09 11:28:14.578542'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-07-09 11:28:14.585544'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-07-09 11:28:14.608056'),
(13, 'auth', '0011_update_proxy_permissions', '2023-07-09 11:28:14.613620'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-07-09 11:28:14.620621'),
(15, 'auth', '0013_alter_user_username', '2023-07-09 11:28:14.628122'),
(16, 'core', '0001_initial', '2023-07-09 11:28:15.432138'),
(17, 'admin', '0001_initial', '2023-07-09 11:28:15.546074'),
(18, 'admin', '0002_logentry_remove_auto_add', '2023-07-09 11:28:15.559313'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-09 11:28:15.569694'),
(20, 'sessions', '0001_initial', '2023-07-09 11:28:15.610086'),
(21, 'core', '0002_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:39:48.689880'),
(22, 'core', '0003_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:39:48.717587'),
(23, 'core', '0004_alter_user_created_at_alter_user_referal_code_and_more', '2023-07-10 04:48:08.066752'),
(24, 'core', '0005_userrank_points_alter_user_created_at_and_more', '2023-07-10 07:59:33.197947'),
(25, 'core', '0006_alter_user_created_at_alter_user_updated_at_and_more', '2023-07-13 05:45:46.934449'),
(26, 'core', '0007_emailservice_alter_status_activity_time_and_more', '2023-07-13 07:04:41.939129'),
(27, 'core', '0008_emailservice_status_alter_status_activity_time_and_more', '2023-07-13 07:05:23.383478'),
(28, 'core', '0009_alter_emailservice_service_and_more', '2023-07-13 07:42:06.824628'),
(29, 'core', '0010_user_member_plan_alter_status_activity_time_and_more', '2023-07-13 10:51:46.872198'),
(30, 'core', '0011_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-13 10:53:53.897649'),
(31, 'core', '0012_user_activation_date_alter_status_activity_time_and_more', '2023-07-13 10:55:47.260430'),
(32, 'core', '0013_user_paid_members_alter_status_activity_time_and_more', '2023-07-13 11:12:34.663650'),
(33, 'core', '0014_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-13 11:12:52.877110'),
(34, 'core', '0015_membership_alter_status_activity_time_and_more', '2023-07-13 11:37:32.571834'),
(35, 'core', '0016_membership_refferal_commision_and_more', '2023-07-13 11:54:28.696723'),
(36, 'core', '0017_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 04:18:09.708013'),
(37, 'core', '0018_withdrawsettingmodel_alter_status_activity_time_and_more', '2023-07-14 04:48:56.505884'),
(38, 'core', '0019_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 05:04:09.014936'),
(39, 'core', '0020_membership_points_alter_status_activity_time_and_more', '2023-07-14 05:11:46.807161'),
(40, 'core', '0021_membership_status_alter_status_activity_time_and_more', '2023-07-14 05:37:46.332026'),
(41, 'core', '0022_usermembership_date_alter_status_activity_time_and_more', '2023-07-14 05:55:23.951092'),
(42, 'core', '0023_remove_withdrawsettingmodel_currency_and_more', '2023-07-14 07:23:59.622543'),
(43, 'core', '0024_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:30:59.684170'),
(44, 'core', '0025_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:30:59.740592'),
(45, 'core', '0026_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:46:05.649175'),
(46, 'core', '0027_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:47:48.886490'),
(47, 'core', '0028_delete_withdrawsettingmodel_and_more', '2023-07-14 07:52:14.292788'),
(48, 'core', '0029_withdrawsettingmodel_alter_status_activity_time_and_more', '2023-07-14 07:53:56.930143'),
(49, 'core', '0030_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:55:30.822166'),
(50, 'core', '0031_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:56:21.553718'),
(51, 'core', '0032_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:56:29.679372'),
(52, 'core', '0033_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:56:49.030341'),
(53, 'core', '0034_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-14 07:57:16.913433'),
(54, 'core', '0035_withdrawsettingmodel_max_amount_and_more', '2023-07-14 07:58:19.196518'),
(55, 'core', '0036_ticketmodel_title_alter_status_activity_time_and_more', '2023-07-14 11:18:23.711904'),
(56, 'core', '0037_alter_status_activity_time_alter_ticketmodel_answer_and_more', '2023-07-14 11:23:59.441998'),
(57, 'core', '0038_remove_user_member_plan_alter_status_activity_time_and_more', '2023-07-15 11:03:27.105992'),
(58, 'core', '0039_user_phone_no_alter_status_activity_time_and_more', '2023-07-20 11:35:33.546736'),
(59, 'core', '0040_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-21 04:57:35.351861'),
(60, 'userapp', '0001_initial', '2023-07-21 04:57:35.486718'),
(61, 'core', '0041_remove_transactions_transactions_transactions_amount_and_more', '2023-07-24 05:15:18.115622'),
(62, 'core', '0042_transactions_address_transactions_type_and_more', '2023-07-24 05:22:37.027442'),
(63, 'core', '0043_login_history_city_login_history_country_and_more', '2023-07-24 08:32:35.945840'),
(64, 'core', '0044_plansmodel_alter_status_activity_time_and_more', '2023-07-26 05:36:03.999522'),
(65, 'core', '0045_membership_plan_id_alter_status_activity_time_and_more', '2023-07-26 05:37:49.989775'),
(66, 'core', '0046_alter_status_activity_time_alter_user_created_at_and_more', '2023-07-29 09:38:45.032360'),
(67, 'default', '0001_initial', '2023-07-29 09:38:45.305661'),
(68, 'social_auth', '0001_initial', '2023-07-29 09:38:45.309167'),
(69, 'default', '0002_add_related_name', '2023-07-29 09:38:45.327119'),
(70, 'social_auth', '0002_add_related_name', '2023-07-29 09:38:45.330110'),
(71, 'default', '0003_alter_email_max_length', '2023-07-29 09:38:45.355490'),
(72, 'social_auth', '0003_alter_email_max_length', '2023-07-29 09:38:45.357652'),
(73, 'default', '0004_auto_20160423_0400', '2023-07-29 09:38:45.375915'),
(74, 'social_auth', '0004_auto_20160423_0400', '2023-07-29 09:38:45.378729'),
(75, 'social_auth', '0005_auto_20160727_2333', '2023-07-29 09:38:45.404784'),
(76, 'social_django', '0006_partial', '2023-07-29 09:38:45.454158'),
(77, 'social_django', '0007_code_timestamp', '2023-07-29 09:38:45.509891'),
(78, 'social_django', '0008_partial_timestamp', '2023-07-29 09:38:45.562226'),
(79, 'social_django', '0009_auto_20191118_0520', '2023-07-29 09:38:45.645639'),
(80, 'social_django', '0010_uid_db_index', '2023-07-29 09:38:45.705084'),
(81, 'social_django', '0011_alter_id_fields', '2023-07-29 09:38:45.967481'),
(82, 'social_django', '0002_add_related_name', '2023-07-29 09:38:45.975594'),
(83, 'social_django', '0001_initial', '2023-07-29 09:38:45.982734'),
(84, 'social_django', '0005_auto_20160727_2333', '2023-07-29 09:38:45.986227'),
(85, 'social_django', '0003_alter_email_max_length', '2023-07-29 09:38:45.989225'),
(86, 'social_django', '0004_auto_20160423_0400', '2023-07-29 09:38:45.991224'),
(87, 'account', '0001_initial', '2023-07-29 10:13:02.275341'),
(88, 'account', '0002_email_max_length', '2023-07-29 10:13:02.313838'),
(89, 'socialaccount', '0001_initial', '2023-07-29 10:13:02.615868'),
(90, 'socialaccount', '0002_token_max_lengths', '2023-07-29 10:13:02.692346'),
(91, 'socialaccount', '0003_extra_data_default_dict', '2023-07-29 10:13:02.739183'),
(92, 'core', '0047_newsmodel_alter_status_activity_time_and_more', '2023-08-02 05:14:35.370863'),
(93, 'core', '0048_newsmodel_datato_alter_newsmodel_date_and_more', '2023-08-02 05:23:38.736643'),
(94, 'core', '0049_appsettings_alter_newsmodel_date_and_more', '2023-08-03 09:35:10.504275'),
(95, 'core', '0050_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-03 11:48:14.986323'),
(96, 'core', '0051_alter_appsettings_aboutus_alter_newsmodel_date_and_more', '2023-08-03 11:58:33.989770'),
(97, 'core', '0052_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-04 06:13:38.108602'),
(98, 'core', '0053_useraddressdetail_country_alter_newsmodel_date_and_more', '2023-08-04 06:15:20.751118'),
(99, 'core', '0054_membership_directincomepercent_alter_newsmodel_date_and_more', '2023-08-04 07:45:04.389009'),
(100, 'core', '0055_levels_fifthpoints_levels_forthpoints_and_more', '2023-08-04 08:15:55.855202'),
(101, 'core', '0056_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-04 10:42:04.569555'),
(102, 'core', '0057_usermembership_status_alter_newsmodel_date_and_more', '2023-08-05 06:14:02.945151'),
(103, 'core', '0058_wallet_reserved_balance_alter_newsmodel_date_and_more', '2023-08-05 10:47:39.476782'),
(104, 'core', '0059_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-05 10:56:07.835004'),
(105, 'core', '0060_userreferral_refferal_income_alter_newsmodel_date_and_more', '2023-08-05 10:59:01.677275'),
(106, 'core', '0061_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-05 11:13:28.471577'),
(107, 'core', '0062_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-05 11:24:29.407995'),
(108, 'core', '0063_rename_refferal_income_levelincome_level_income_and_more', '2023-08-05 11:27:26.902675'),
(109, 'core', '0064_levels_plan_id_alter_newsmodel_date_and_more', '2023-08-05 12:11:58.366768'),
(110, 'core', '0065_remove_levels_plan_id_alter_newsmodel_date_and_more', '2023-08-05 12:13:49.540790'),
(111, 'core', '0066_fastrackmodel_income_alter_newsmodel_date_and_more', '2023-08-07 06:33:23.891495'),
(112, 'core', '0067_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 06:33:30.834733'),
(113, 'core', '0068_fastrackmodel_status_alter_newsmodel_date_and_more', '2023-08-07 06:40:37.759568'),
(114, 'core', '0069_fastrackmodel_right_child_and_more', '2023-08-07 06:55:00.499281'),
(115, 'core', '0070_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 07:03:18.727520'),
(116, 'core', '0071_remove_fastrackmodel_left_child_and_more', '2023-08-07 07:05:27.610306'),
(117, 'core', '0072_fastrackmodel_left_child_fastrackmodel_right_child_and_more', '2023-08-07 07:05:56.599335'),
(118, 'core', '0073_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 07:13:50.299134'),
(119, 'core', '0074_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 07:18:22.082972'),
(120, 'core', '0075_fastrackmodel_plan_id_alter_newsmodel_date_and_more', '2023-08-07 08:08:40.756359'),
(121, 'core', '0076_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-07 08:27:00.625026'),
(122, 'core', '0077_ticketmodel_date_alter_newsmodel_date_and_more', '2023-08-08 10:10:13.563289'),
(123, 'core', '0078_remove_membership_amount_membership_max_amount_and_more', '2023-08-11 12:21:12.524390'),
(124, 'core', '0079_membership_overall_roi_alter_newsmodel_date_and_more', '2023-08-11 12:35:20.677361'),
(125, 'core', '0080_usermembership_roi_recieved_alter_newsmodel_date_and_more', '2023-08-14 07:06:07.910023'),
(126, 'core', '0081_remove_levels_fifthpoints_remove_levels_forthpoints_and_more', '2023-08-16 05:09:25.773937'),
(127, 'core', '0082_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-16 06:17:43.854704'),
(128, 'core', '0083_userstaking_roi_recieved_alter_newsmodel_date_and_more', '2023-08-16 06:27:19.206592'),
(129, 'core', '0084_appsettings_status_alter_newsmodel_date_and_more', '2023-08-19 06:45:57.869475'),
(130, 'core', '0085_gallaryimages_alter_newsmodel_date_and_more', '2023-08-19 12:13:12.499545'),
(131, 'core', '0086_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-20 12:05:53.244818'),
(132, 'core', '0087_userwithdrawls_type_alter_newsmodel_date_and_more', '2023-08-20 12:38:25.554183'),
(133, 'core', '0088_userwithdrawls_date_alter_newsmodel_date_and_more', '2023-08-20 13:34:57.792780'),
(134, 'core', '0089_transactions_user_id_alter_newsmodel_date_and_more', '2023-08-20 14:43:49.243812'),
(135, 'core', '0090_alter_newsmodel_date_alter_status_activity_time_and_more', '2023-08-20 14:52:36.141155'),
(136, 'core', '0091_alter_newsmodel_date_alter_ptransfer_date_and_more', '2023-08-20 14:53:40.984782'),
(137, 'core', '0092_alter_newsmodel_date_alter_ptransfer_date_and_more', '2023-08-21 05:45:43.301736'),
(138, 'core', '0093_youtubevideo_alter_farmingroilogs_date_and_more', '2023-08-22 05:03:41.791185'),
(139, 'core', '0094_farmingroilogs_roi_alter_farmingroilogs_date_and_more', '2023-08-22 07:59:58.279261'),
(140, 'core', '0095_ptransfer_currency_alter_farmingroilogs_date_and_more', '2023-08-23 13:13:37.383677'),
(141, 'core', '0096_remove_rank_points_rank_business_required_rank_image_and_more', '2023-08-24 04:53:06.427693'),
(142, 'core', '0097_rank_status_alter_farmingroilogs_date_and_more', '2023-08-24 05:03:35.249526'),
(143, 'core', '0098_cofounderclub_alter_farmingroilogs_date_and_more', '2023-08-24 06:10:54.707293'),
(144, 'core', '0099_usercofounderclub_date_alter_farmingroilogs_date_and_more', '2023-08-24 06:17:44.642557'),
(145, 'core', '0100_alter_cofounderclub_club_alter_cofounderclub_status_and_more', '2023-08-24 06:43:08.028627'),
(146, 'core', '0101_userrank_status_alter_farmingroilogs_date_and_more', '2023-08-24 07:00:31.284959'),
(147, 'core', '0102_userrank_overallbusiness_alter_farmingroilogs_date_and_more', '2023-08-24 07:04:38.297866'),
(148, 'core', '0103_userrank_date_alter_farmingroilogs_date_and_more', '2023-08-24 07:16:47.627704'),
(149, 'core', '0104_userunlockedlevel_plan_id_userunlockedlevel_status_and_more', '2023-08-24 11:06:06.136193'),
(150, 'core', '0105_remove_userunlockedlevel_plan_id_and_more', '2023-08-24 11:37:29.368863'),
(151, 'core', '0106_user_business_alter_farmingroilogs_date_and_more', '2023-08-26 05:23:40.040408'),
(152, 'core', '0107_alter_farmingroilogs_date_alter_newsmodel_date_and_more', '2023-08-26 05:33:01.583619'),
(153, 'core', '0108_levelincome_date_alter_farmingroilogs_date_and_more', '2023-08-26 05:44:31.199512'),
(154, 'core', '0109_remove_userrank_overallbusiness_and_more', '2023-08-26 06:07:58.495868'),
(155, 'core', '0110_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-08-26 06:09:55.896265'),
(156, 'core', '0111_remove_usercofounderclub_reward_recieved_and_more', '2023-08-26 06:42:32.839526'),
(157, 'core', '0112_usercofounderclub_reward_recieved_and_more', '2023-08-26 06:44:29.898006'),
(158, 'core', '0113_userrank_income_alter_businesslogs_date_and_more', '2023-08-26 06:52:58.516902'),
(159, 'core', '0114_levelincome_status_alter_businesslogs_date_and_more', '2023-08-26 09:14:02.744634'),
(160, 'core', '0115_gallaryimages_aboutus_alter_businesslogs_date_and_more', '2023-08-26 09:51:49.930474'),
(161, 'core', '0116_rename_aboutus_gallaryimages_title_and_more', '2023-08-26 09:55:51.687212'),
(162, 'core', '0117_youtubevideo_type_alter_businesslogs_date_and_more', '2023-08-29 06:33:19.100725'),
(163, 'core', '0118_youtubevideo_sequence_alter_businesslogs_date_and_more', '2023-08-29 09:44:35.419875'),
(164, 'core', '0119_usermembership_next_date_userstaking_expire_date_and_more', '2023-08-31 05:59:33.611778'),
(165, 'core', '0120_user_farming_roi_user_level_income_user_staking_roi_and_more', '2023-08-31 09:49:12.103820'),
(166, 'core', '0121_rename_farming_roi_user_farming_roi_status_and_more', '2023-08-31 10:02:40.850412'),
(167, 'core', '0122_manageroi_alter_businesslogs_date_and_more', '2023-08-31 10:04:56.097531'),
(168, 'core', '0123_userreferral_date_alter_businesslogs_date_and_more', '2023-08-31 11:45:41.655659'),
(169, 'core', '0124_userreferral_status_alter_businesslogs_date_and_more', '2023-08-31 11:49:14.500023'),
(170, 'core', '0125_userwithdrawls_fees_alter_businesslogs_date_and_more', '2023-09-01 06:39:24.313330'),
(171, 'core', '0126_withdrawsettingmodel_bscaddress_and_more', '2023-09-01 07:42:16.963538'),
(172, 'core', '0127_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-09-02 12:19:03.772185'),
(173, 'core', '0128_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-09-02 12:20:02.086071'),
(174, 'core', '0129_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-09-02 12:30:59.624236'),
(175, 'core', '0130_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-09-02 12:32:13.310481'),
(176, 'core', '0131_alter_businesslogs_date_alter_farmingroilogs_date_and_more', '2023-09-02 12:35:12.136649'),
(177, 'core', '0002_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-04 06:07:48.775398'),
(178, 'core', '0003_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-05 04:54:50.230097'),
(179, 'core', '0004_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-05 04:54:50.607138'),
(180, 'core', '0005_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-05 04:54:50.940935'),
(181, 'core', '0006_remove_membership_plan_id_alter_businesslogs_date_and_more', '2023-09-05 05:18:17.939981'),
(182, 'core', '0007_alter_businesslogs_date_alter_businesslogs_plan_id_and_more', '2023-09-05 09:18:55.764148'),
(183, 'core', '0008_wallet_level_balance_wallet_referral_balance_and_more', '2023-09-05 09:55:24.260813'),
(184, 'core', '0009_rank_days_alter_businesslogs_date_and_more', '2023-09-05 10:33:24.282833'),
(185, 'core', '0010_withdrawsettingmodel_dates_alter_businesslogs_date_and_more', '2023-09-06 07:43:30.310467'),
(186, 'core', '0011_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-06 07:44:50.145258'),
(187, 'core', '0012_wallet_bonus_balance_alter_businesslogs_date_and_more', '2023-09-06 10:46:49.626659'),
(188, 'core', '0013_userwithdrawls_bonus_amount_and_more', '2023-09-06 12:01:12.117562'),
(189, 'core', '0014_wallet_deposit_balance_wallet_topup_balance_and_more', '2023-09-07 05:54:57.277188'),
(190, 'core', '0015_userwithdrawls_deposit_amount_and_more', '2023-09-07 08:09:34.823579'),
(191, 'core', '0016_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-07 10:16:02.548113'),
(192, 'core', '0017_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-07 12:52:49.254646'),
(193, 'core', '0018_usermembership_c_id_alter_businesslogs_date_and_more', '2023-09-08 04:39:01.019318'),
(194, 'core', '0019_user_zero_pin_alter_businesslogs_date_and_more', '2023-09-08 06:56:05.082077'),
(195, 'core', '0020_user_business_balance_alter_businesslogs_date_and_more', '2023-09-08 10:11:03.137162'),
(196, 'core', '0021_rewards_alter_businesslogs_date_and_more', '2023-09-11 14:59:30.729048'),
(197, 'core', '0022_remove_userrewards_club_id_userrewards_rank_id_and_more', '2023-09-11 15:34:37.133384'),
(198, 'core', '0023_levels_reffers_alter_businesslogs_date_and_more', '2023-09-11 16:21:01.597169'),
(199, 'core', '0024_userrewards_turnover_alter_businesslogs_date_and_more', '2023-09-11 17:34:18.123626'),
(200, 'core', '0025_remove_userrewards_turnover_rewards_turnover_and_more', '2023-09-11 17:36:38.443672'),
(201, 'core', '0026_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-12 07:20:33.093167'),
(202, 'core', '0027_userrewards_next_date_alter_businesslogs_date_and_more', '2023-09-12 07:53:12.398139'),
(203, 'core', '0028_remove_usermembership_c_id_alter_businesslogs_date_and_more', '2023-09-15 10:13:06.172609'),
(204, 'core', '0029_membership_principal_amount_per_month_and_more', '2023-09-15 11:19:46.735467'),
(205, 'core', '0030_membership_principal_amount_alter_businesslogs_date_and_more', '2023-09-15 11:24:30.400115'),
(206, 'core', '0031_user_address_alter_businesslogs_date_and_more', '2023-09-21 10:34:32.797015'),
(207, 'core', '0032_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-09-21 10:36:11.634589'),
(208, 'core', '0033_userwithdrawls_payload_and_more', '2023-09-22 07:14:18.637690'),
(209, 'core', '0034_membership_pool_id_usermembership_payload_and_more', '2023-09-28 10:23:37.374586'),
(210, 'core', '0035_user_total_team_alter_businesslogs_date_and_more', '2023-09-29 05:26:31.906700'),
(211, 'core', '0036_transactions_closing_balance_transactions_comment_and_more', '2023-10-16 06:22:51.289703'),
(212, 'core', '0037_withdrawapi_alter_businesslogs_date_and_more', '2023-10-16 06:27:38.529905'),
(213, 'core', '0038_withdrawsettingmodel_status_alter_businesslogs_date_and_more', '2023-10-16 06:34:12.898236'),
(214, 'core', '0002_remove_usermembership_payload_and_more', '2023-11-07 10:48:54.211823'),
(215, 'core', '0003_remove_usermembership_principal_amount_and_more', '2023-11-07 10:49:55.083053'),
(216, 'core', '0004_membership_sponser_bonus_alter_businesslogs_date_and_more', '2023-11-07 12:11:51.065065'),
(217, 'core', '0006_alter_businesslogs_date_alter_changesponserlogs_date_and_more', '2023-11-09 07:22:54.763423');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0tspg1r34oqjvpy6jh5vgxw720g5acf4', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZo9J:BN9nRN02shDPEc10razh7SvdiCDasxYWb9nCzYkbgyo', '2023-09-09 07:56:01.067517'),
('2sp3hs41tq50hesxdjt0tyt2ehg9eruk', '.eJwVi0sOgjAABe_StRIawERXflBSIjWK5ePGUKxQbEEtGNR4d8ty5r35AiYzLsAMqE7y1jThvBiEkTcSjMCzEUxvnWJPTW1zY7VG9vZL6uV8x31EPghijhSqD06-QhN0uyfRyp8a-iRovLnTQdYY0liYgbvo996lTWOhthK_aKhDGdlDGBxTB7vpO6iIjS3TOGcnhsdZ6VrXniRVMpVik7wK51Gsl2VAPJoRfoIklJYNfn-Rb0Fh:1qg6Gq:lYfhqHXf9StVdBdMmn5jUayg3wpUco1d1dhA5iLk38o', '2023-09-26 16:29:48.005039'),
('6f372505q33ey010ee3u5frcq9p016vp', '.eJwdyt1ugjAAQOF36fVCBC21XokQXMla_yoKNwuQjtaiEMQUXHx32S7Pl_MLxDVTFVgA78t2MZxjhNFsuyz_1CrqK_gAbV2JcXjcRTtWV2txG1MMkczXhdqoiByfxGaK3MltDwufuEQ359iPsDVOVX4Km_wfQ0p5AhkvIXvqKQtXXurYMjuZR-Lgjiij0rM05FL37KLtDS8dyr3-Z2fNpJ_Fcy0nzdF8DlvUhy2i6JvmB0FpkAbOHms-JKaDCXi9AaifREk:1qloyz:nkd2WFdsvEQChBOfnkn9VCclcKnT22jsZLEWLS8NgY8', '2023-10-12 11:15:01.752455'),
('7c99ga078yqx1bcw3hckcyb7alb5aurw', '.eJwljMkOgjAABf-lZyWAwQRPsmoJ0LiAyo02VcpSCFgJGv_dEo8zb_I-gDY5q8EGDDkpGFdVbfuYjULaBixA39ZUjmKgvaRnW1EukU5BgXeEIRbA5A21mMEB8qNBHLiGVXdNncBUZFTji9_hWfK4uOlFh0trjBKb_71RYl1loRPUdG8xVHo6OkcGcqMRuZk8oMtJ4N7z_Ps4iGyVdn5uh6-TGbHeTMxS-AeVZpOwXQK-PxTQQnA:1qdPuI:vUsupo2jH3wuigpZmG7YyqcZrOYHDQ87K7eixzZny4w', '2023-09-19 06:51:26.578771'),
('7zd2ncbpo60tlxm808jg3czcggd9kqym', '.eJwVi0sOgjAABe_StSFgKoorFUFLLEZQEHcUKkXaYgA_aLy7ZTnz3nwBFWnJwRxUaZNKXTcWxSC0rBZgBJqaU7U9Wtoo6uqKSoW09xjZZOW-9NDpgwy_RC2SwSSzkYmq-zmyPUtTJ05i904GKTqWCfeB18v3YZN3SczbnfCfJFShiOAQ4mMy8ddJj28Y-ltdm0o22wX9GOdmA58SXvDLCkXEravtwHGRusf4tmJT5pwc8PsDmsJBPg:1qg6DY:ULr4vfJPVVxFgytcP8pOzzRkkQsFlAV5InEo1H4W6yw', '2023-09-26 16:26:24.262102'),
('8ada9sqzf3qdwhgw8hh7jhh3wwbdp2lq', 'e30:1qhTWx:1P4dB3iXgtPXMfHr9p3VzyEflNobALq7w_BUcT2SWmI', '2023-09-30 11:32:07.235564'),
('99x1auno25ruoan6niqqkmarj5obxr9b', '.eJwVyrsOgjAYQOF36WwIkNiokwJK_g6AChbZgBRb7gEUi_HdreN3cj6INamo0Q7JdOT7xx9a3jVohYauZqo_RzYoTV3FWkUmCc_cXPiCQLSA4QkYob2scxswVH18s8lWU1Od0VOf_WNb89zkh8Q0eErn593cTiBmkcR8hrJ7e2WleyVI34mW4qxVJLYWeXSSbMLBCUtq4ZeLD4JeL9gpHsdAbzYheYVtoKPvD78aP3k:1qg6L7:Sghf34sLIHC-UMK0ppWVBWUovBDSPvs8G2VsAkNKDW8', '2023-09-26 16:34:13.391445'),
('a76lyl2azlt7pfvwlj9qdiwn6pydqg92', '.eJwlylELgjAYheH_suuQKRnZVSalGzkh1PLSby03nZtUUBb994wu3-ecNxJ9rTRaoVvNpTIYu-vmJw63PZqhq9ViGutzr8yUd9sJM7UYqYSYq0xRUryIyxS5EXPweUQWpBtOZUQDZzppOO4G-KFhsvLkAG34SIuN-bvfgofVPqJaJKHK2q2X5R1O825kbRk4HAx7JFCywC6fe49yAY0bNpuXjBNaXbB12bhM76DjOfp8AVciQoQ:1r0ECs:IfGZszFBokoDYwz58gPDPs24-ynWY60ZQldHQwAp4kI', '2023-11-21 05:00:54.630751'),
('arvfa779jpf8v5fz9e2bjl34gy9llmnv', '.eJwVyscOgkAUQNF_mbUhlFhXGpqPCEQSBdkx4wiPqhRHNP67uDw390N4lWBJNiSh7LpN_5BYU5EZaZuST33oeDupbwpeT-Sjk1GboY8OnN6geAgd1MGc6bCA4h6ddWctTVNJQ-tO_7Gy8KIGu1hVsiQUw0Vd94AC4ygTkDcvLy9U10iFbzDtdpQqs5VdZWnU1Ezr5xji3vWGg3ileHzKduQOD200disGvCPfH43tP-A:1qmTDG:BoeixUkAKsSxWa2hJGXsv3GPXj-BmcFcz0q_yUDbh2s', '2023-10-14 06:12:26.792531'),
('b4e1yzxmdcrlflxke9v2c3e3ocx753kb', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZrYQ:sYtrBK3F5YtObJxNFqO-jgVQ5FfQOuB0cFHGNDr-EBU', '2023-09-09 11:34:10.312498'),
('cngr36xz9x7moohcra88wfvdcd9mwltv', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiRDhzd09YS0lYQllRTHFucWFtMkxjczFFVkQ5ZzFFTU8ifQ:1qQLeR:TI6RI3784pN1sjA-JEcuprhmjaf0W658OhejDAKL81s', '2023-08-14 05:41:03.548750'),
('fapzhsdmx4whda8f05f2myblob86amne', '.eJwlyl0TgUAYhuH_ssc05SPDkVRqlzTMUJy1a7VvH1tkrBj_XcbhfT3PG_EygQLNUJMwAVLXjXn6E41VJeqhW1XwbkzOJcgu71XOZde8JYJ6DEIgeP_CxgZwg-VuzGxs4ryODzaZat2poNGypj-UG3EciJpmlgr2C_n3cUYHOqxtUnDfgjBzh4HjGqGTqtA5TLXRNX9E_W0QkSf4rLXbSSMuylSr15rgWxovTqqMXf_pWSP0-QJO7ELE:1r9KJZ:H_KnpnjEEG7s48BUctI5Vd7n_Ywnc2YH787zVC0FztU', '2023-12-16 07:21:25.553740'),
('g2hm2q0lnf5pz8kagcc008tuvvbi0ga5', '.eJxVkEFPhDAQhf9Lz0paoNvFk150s3FFsh68NUM7hYZCDYVEY_zvtuse5DSZ9-abN5lv0nnfObz1sC59LsMCC5I78vIenvFtbZqhfhSHr_3x3Jw-zjWyobd4ev0kN0QmQq4BZ2l1RFjOt2oLasApWcErC04qP2N2VUP2F5w9XUr9kOK3fA-hjzAWWpcMdwY516VhplVamQJEpSktKg77Co2hQpSM53FIV5xyTUG0O8aMaOPSa_5ltYOwSOc7O_07cPOECOAI1kV9hMned6nJlB-jMXuX3pPuIz-_Fvhq2A:1qcRrl:MUSvoJ77m5D3xqE00O2OD6li1gNAVJjsUsLR6SUoBCM', '2023-09-16 14:44:49.616151'),
('gbfd5j69wvv6xwfq9b9mun85iehbemh8', 'e30:1r8bMP:a4uzWqESXej6BBYuUlYaJkQMV1piI0DeH6A_JJIKXSo', '2023-12-14 07:21:21.839311'),
('hap09kaelkrx9e82phi5kjrs49drxc8y', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qXz9d:zkyRcnfh6lDmsmLzlgOgIfNgotBpTnNlxYt_363W8bA', '2023-09-04 07:16:49.954014'),
('hi1wz84e679wfej8zejtjhm5x0fizw77', 'eyJlbWFpbCI6InNodWJoYW1ib3hmeUBnbWFpbC5jb20iLCJyb2xlIjoiYWRtaW4ifQ:1qXNXn:CxAHzTVGFjHERvN5X85OpWcfFrzdOfOwUjeu6HwGEx4', '2023-09-02 15:07:15.340175'),
('hwfba1wcdhswflkyaebtgbnb7u1vyh74', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiUWJzR3VzdEk0ZnU4ek1WMGxzSXFsbUo2c0VCSGF3ZU8ifQ:1qPgYQ:2q6kJEpUsauF07RyzZ3w4EgRZGe8XmOUqabqUsisA3g', '2023-08-12 09:48:06.239172'),
('i8i9ay9bywex6yckuvoe0l24m9p0igk4', '.eJwdytESgUAYQOF32Wsa1W4jV8Jk_qjIrnBjamdpKzKSkvHu4vJ8c95IXCKZoxGylqphEs3UyBCvxuefKry4oB66F7nohqoU964eRSauXYqXk8RzLn3pAGtB9SSUcA0In4IB2W23nTqm0k15HNq3-I-269I98SgQN2XYsyfWQVOTKKyrvWY-QNbysEtqSIvGSzPVp2fdpevmtFbmz34ziIxZ1S4EY8dE6Nhh_Q0ueeivqoDrQabTEG8tzNHnC4RGQ4E:1qlpFl:DtIoZhn0EoXWbIGr5EsXG2M5VauhqMxy8J8RR_KTrAE', '2023-10-12 11:32:21.053967'),
('isyxnuqsfma8cndd4yjrmqjo2ag6leb6', 'e30:1r5gKV:qjAMG1a-wxjqcvSzXDY1UH3jObgr0fe965i4QQy9Vmo', '2023-12-06 06:03:19.487695'),
('jcb80jcobajwoy76oszrh79e9zwkavwf', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qbbx2:6eL757F-SdFZf8_gCRtd3lXrzT9vy7IxpILmmnDnatQ', '2023-09-14 07:18:48.881040'),
('kbssk4dfpm2uijibg6cpmxmbxyyw6gxe', 'e30:1qNsmM:A_OhqFFSGsWQtlshPkfubOHR9KAPAx4QHvrC5bOTfEo', '2023-08-07 10:27:02.095952'),
('kxukd2jsnghzu56jvck5s1zp2auz02po', '.eJwdyt1ugjAYgOF76bEj0lBidzRngvmIrXMpEzlZBIu0UFB-xLF473Y7fN68v6iVnezRKxLtINEMSXNUleVy4_qUYIrJwvt4O_9VJ2uMPdqmknYYOtla9U0pa0v5ExbpOlNbFUI0gcsVdFB_kmwFPpSX-GsVUsdOVboPLul_DBgTB8IFEKYjjwfvywS7xXE_DgdMe1CjSuJiBN3cuS5dNp1HpgHnO6fQVypiwSK5W9-81Cwy31yJmW68NoOv8-9TGL-IJJ_uc_R4ArO4SeE:1qjHMo:WVjUdiEuU3p0CX5CGnfrAG9mBpdOAF2S4C664R8MVWE', '2023-10-05 10:57:06.698520'),
('l88gyea9wrg5jf0c602c20b8iad61p1c', '.eJwVjl8LgjAAxL_LnkMMs7KnUFFmpWD5Z705Gc3c3Jizv_Tdm3D3cr87uC_QoicD2AHyTiiO2y7rElh84DLt4AiH3G0DuIa9rMsg8SxTYriKJJ5DrmnLo2k2KnwXO75GFRuPPH3gsxnzcjWPTxfkpmHxTO_FK6tti8tsJLYKvepwKZdB7dw2eUDzLVXo4GN5HU6Ojina1GIFFoDwpmPmXt-oZjBq9m8h58xqBTdcCUYMnkaiwO8P9-RFEA:1qfc4l:OP-6Wy4kardWlRd7hmL9gaVt16Fj2nHbFsiWS3b9ecs', '2023-09-25 08:15:19.762670'),
('le86bs9uj50uep2puqff8d1ysy2rtuhp', 'eyJlbWFpbCI6InNhY2hpbmJveGZ5QGdtYWlsLmNvbSIsInJvbGUiOiJ1c2VyIn0:1qMpaP:KLW4yo13IT8KTBlVdFV-qX06AaNkCTOZaWP5Cc9tFG4', '2023-08-04 12:50:21.881240'),
('m8pqyztf92uu04732qxn06gwqek1f69a', '.eJxVjsEKwjAQRP8lZy1Jumlab-JBKRZFEb2FJE3aam3QRBDEf7dqD3padnZn5j2QkLdQi5s3V9GUaIIIBTT6VZXUJ9O9T97pRrZCu6uJBtVHlXNVa6L5Z6ymvY3--2vp696MIbPAE44tozZlmYQMbEwNIalW2gKxvExSDIqyOCM0AawUJxYwZTxmRPWhQ_8nupU-iNZVTfcD-GUZOzlQ_O3CBxlM_7U9H-K7DQVJl5fDfG1m-6TLF9Vxs8uh8AuGni9Wd1t4:1qPhVh:AvK3u5aXmgs-odl0YoRWTXx3hv-OWG6ttDJMqFDSTiE', '2023-08-12 10:49:21.969154'),
('mmm3sk6yb7gdcbex6cyajr4iyv3689rn', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZA9I:PjX8x2qnHP9JFDcHfaw0Wh2SJ3qBr8v0O8eyQXFzFk0', '2023-09-07 13:13:20.626249'),
('pqs2vw1mops7sjj765s8rrp70qcqtvcj', 'eyJyZXNldCI6IlRydWUiLCJlbWFpbCI6ImFtYXJqb3RzaW5naEBnbWFpbC5jb20ifQ:1qZskN:rhk3J_59wZgWlADwEbCL97MzTnyw5tlvE1bLP_s4uIo', '2023-09-09 12:50:35.033324'),
('qqey21x9ls820umcghdted1kcxk5by8o', '.eJwdzkFvgjAYgOH_0rMjoWvR7jTGVvMRqWwiCpdFmk5KkTqtA13238d2ffMc3m_krFEdekDqGtfVXOqljmF9A19oOEP3RmUEAZjjNo9i5o2orTb8WP1HniRZQUUGNGnWRPCnsMR-vdv0lwIzB7rX5bbuobGDaAwWmezFs7n_ePVy3_H34CoX7NMMriPRTZVh6u44Wb1Mv8LB7pfQ5SlZtQWaIHXY6XY8DBd-wChmmM5I-rj_q560h1GcbKtGcDmrE_r5BceRRFo:1qoH0j:HWiJ5pTiLWOkVU6-8sZRsAykdsAeJIjLn5-iklSpN0Q', '2023-10-19 05:34:57.999817'),
('r5o0wcmorx2j2oz18bgz59n1uoggde7v', '.eJwljsFSgzAURf8l6w4DKO3gygC2hCkwYlvQHXlNywsQYimjteO_G8blOfcuzp2IvsaOPJGxhgaVbTvP59lYMPRkQS5DJ8xYH3tUBq9DK5RhcUsavgHMMWH7H-ZkyEamCg9CtmStrg5h4lvm1PFyrfksVda8u43mkn6l-0D9e09y18ZtmHQippjLFzffgZPK18csKnzrs8ScsgctJpQl975vq4OOimpqr4pOF1DB6cMOoGKrmJq2XoxjfZ5r3yYAA-T3D8tlSWg:1qsHNj:WviJMEtpCBjYuJ7Wkh2ft1fG0vpwi9YtV6eDy0Vf0wQ', '2023-10-30 06:47:15.593320'),
('s5h70wo6qmfa0dsnz1uhm2wd7havywt3', '.eJwdyskOgjAUQNF_6dqQ0FAUVyqDPCJ1iEphB6RCGSwqBsH476LLe3LfiNexqNAcLTeqbhBsYDLTdovsp0oqazRBd1nxcXg--H2sVpb8OibvvTxZp2IrPDgNoFIBD7geSGqCDmXDzqZnKONUJYHTJH90fP8YEnoE4hcnjTqrZYTVPA66Z4iNFkQnIpZ3UMgXLUqVDqBtray_7BXGPMsNtG52sAZO8r5aTTOquy12h6Bmpt1cbiG35Zo5e_T5AotVRC4:1qkk4I:OddEW6qPIQhdL3QdNwL4Y2T9CxbOXU2zMAUCgWkAi8w', '2023-10-09 11:48:02.747959'),
('szmqxk6aqe4sgo7au3z9qcb71hv97a64', 'eyJyZXNldCI6IlRydWUifQ:1qi9X6:CGvywIfEYAlpprgimtXgYrFgfXCkEX7SHB_dbTu98TQ', '2023-10-02 08:23:04.048262'),
('ufnq4d46s6ufq9i3veoyfm4vym85rj7t', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZrEH:zGhk3tdsqRxbRmXmpuEr-mm2_GZA_2bANEp4jm2VKJ8', '2023-09-09 11:13:21.787768'),
('vjpf7gbj61olkm0bjctfylj2hz2um125', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qOH9J:s3rgBZLDQBtLcKTY3HX-PWq4e46DVMM4MpOq9Uq_y-c', '2023-08-08 12:28:21.496346'),
('w18mcml6udvai3m01stpf8ahe0rugcbt', 'eyJlbWFpbCI6Inh5ekBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qZoHq:Yzpc-VhxE1-7nFQgdbyupEPLZMfDbSZ-9BFIzsAXJ7I', '2023-09-09 08:04:50.991745'),
('zmmazyse57tdyvyys0ma655fgmtlv319', '.eJwVjl8LgjAAxL_LnkOSVLCnNFNmOqXyz3pzMprpdPgXi757E-5e7ncH9wVjV9MWHAFdfUa8sooqHyYfqKIKDrC96eUZGrAWeXr2TUWWGpK5gmwhH1nJ3WkzTmydHOwRZ80QcDSTuxzzVNvG4QPryEkW9A61MN8rhtkPV5UiVk-TM6eLpdsXgYNIpM-EUfHyMy_GWcysEYIdoLyoGnmvLvqilSpOaye2TCk7LnnfNVTiaaA9-P0BDiRFhg:1qfc2X:e1iE_C_FFvCzhSiJUvJV53Jv1ECEaYWWl6SJlSUv_fI', '2023-09-25 08:13:01.482017'),
('zsvix2b2zrt7wykeabeidzlazlal9vcd', 'eyJnb29nbGUtb2F1dGgyX3N0YXRlIjoiQUk4UjNJZmtkSmhnTHhpWVdKbjZLTkg4a09CWFdybHciLCJlbWFpbCI6ImthcmFucmFuYUBnbWFpbC5jb20iLCJyb2xlIjoidXNlciJ9:1qRsIR:LZFIBwfBoxNvt1N2yGiyv5_1bZJFaY0aNP42bczbapI', '2023-08-18 10:44:39.442752');

-- --------------------------------------------------------

--
-- Table structure for table `farmingroilogs`
--

CREATE TABLE `farmingroilogs` (
  `id` bigint(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `roi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmingroilogs`
--

INSERT INTO `farmingroilogs` (`id`, `date`, `status`, `plan_id`, `user_id`, `roi`) VALUES
(637, '2023-11-22 00:00:00', '1', 90, 176, '2.5'),
(638, '2023-11-22 00:00:00', '1', 91, 178, '2.5'),
(639, '2023-11-22 00:00:00', '1', 92, 177, '2.5');

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) NOT NULL,
  `points` varchar(200) NOT NULL,
  `reffers` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `points`, `reffers`) VALUES
(1, '1', '1'),
(2, '1', '1'),
(3, '1', '1'),
(4, '0.5', '1'),
(5, '0.5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `manageroi`
--

CREATE TABLE `manageroi` (
  `id` bigint(20) NOT NULL,
  `farming_roi` varchar(100) NOT NULL,
  `staking_roi` varchar(100) NOT NULL,
  `level_income` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manageroi`
--

INSERT INTO `manageroi` (`id`, `farming_roi`, `staking_roi`, `level_income`) VALUES
(1, '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `principallogs`
--

CREATE TABLE `principallogs` (
  `id` bigint(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `plan_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ptransfer`
--

CREATE TABLE `ptransfer` (
  `id` bigint(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `user_id_id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `currency` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` bigint(20) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `royality_income` varchar(200) NOT NULL,
  `business_required` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `reward` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `days` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rewardlogs`
--

CREATE TABLE `rewardlogs` (
  `id` bigint(20) NOT NULL,
  `reward_recieved` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `rank_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) NOT NULL,
  `rank` varchar(250) NOT NULL,
  `income` varchar(250) NOT NULL,
  `business_required` varchar(250) NOT NULL,
  `days` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `turnover` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` bigint(20) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` bigint(20) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` bigint(20) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` bigint(20) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sponsorlog`
--

CREATE TABLE `sponsorlog` (
  `id` bigint(20) NOT NULL,
  `refferal_income` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sponsorlog`
--

INSERT INTO `sponsorlog` (`id`, `refferal_income`, `date`, `status`, `child_id_id`, `parent_id_id`) VALUES
(1, '0.8333333333333334', '2023-11-22 11:07:18.377510', '1', 178, 177),
(2, '0.8333333333333334', '2023-11-22 11:07:18.377510', '1', 177, 176);

-- --------------------------------------------------------

--
-- Table structure for table `stakingroilogs`
--

CREATE TABLE `stakingroilogs` (
  `id` bigint(20) NOT NULL,
  `roi` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) NOT NULL,
  `wallet_id` bigint(20) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `coin` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `network` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `closing_balance` varchar(250) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `credit_amount` varchar(250) NOT NULL,
  `debit_amount` varchar(250) NOT NULL,
  `freezed_balance` varchar(250) NOT NULL,
  `opening_balance` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `wallet_id`, `amount`, `coin`, `created_at`, `network`, `status`, `address`, `type`, `user_id`, `closing_balance`, `comment`, `credit_amount`, `debit_amount`, `freezed_balance`, `opening_balance`) VALUES
(55, 147, '2500', 'n/a', '2023-11-22 05:31:00.605986', 'n/a', '1', 'NA', '1', 177, '0', '', '0', '0', '0', '0'),
(56, 146, '2500', 'n/a', '2023-11-22 05:31:14.959821', 'n/a', '1', 'NA', '1', 176, '0', '', '0', '0', '0', '0'),
(57, 148, '2500', 'n/a', '2023-11-22 05:31:28.497075', 'n/a', '1', 'NA', '1', 178, '0', '', '0', '0', '0', '0'),
(58, 146, '2500', 'USDT', '2023-11-22 11:01:59.297746', 'n/a', 'n/a', 'NA', '9', 176, '0.0', 'package buy of 2500', '0', '2500', '0.0', '2500.0'),
(59, 148, '2500', 'USDT', '2023-11-22 11:02:42.697549', 'n/a', 'n/a', 'NA', '9', 178, '0.0', 'package buy of 2500', '0', '2500', '0.0', '2500.0'),
(60, 147, '2500', 'USDT', '2023-11-22 11:03:20.218541', 'n/a', 'n/a', 'NA', '9', 177, '0.0', 'package buy of 2500', '0', '2500', '0.0', '2500.0'),
(61, 146, '2.5', 'USDT', '2023-11-22 11:07:40.623235', 'n/a', 'n/a', 'NA', '5', 176, '2.5', 'ROI Recieved package id --> 90 package amount --> 2500', '2.5', '0', '0.0', '0.0'),
(62, 148, '2.5', 'USDT', '2023-11-22 11:07:40.649772', 'n/a', 'n/a', 'NA', '5', 178, '2.5', 'ROI Recieved package id --> 91 package amount --> 2500', '2.5', '0', '0.0', '0.0'),
(63, 147, '0.8333333333333334', 'USDT', '2023-11-22 11:07:40.659913', 'n/a', 'n/a', 'NA', '7', 177, '0.8333333333333334', 'Referral Income from ME1700630976X', '0.8333333333333334', '0', '0.0', '0.0'),
(64, 147, '2.5', 'USDT', '2023-11-22 11:07:40.678323', 'n/a', 'n/a', 'NA', '5', 177, '3.3333333333333335', 'ROI Recieved package id --> 92 package amount --> 2500', '2.5', '0', '0.0', '0.8333333333333334'),
(65, 146, '0.8333333333333334', 'USDT', '2023-11-22 11:07:40.687385', 'n/a', 'n/a', 'NA', '7', 176, '3.3333333333333335', 'Referral Income from AL1700630447P', '0.8333333333333334', '0', '0.0', '2.5'),
(66, 149, '2500', 'n/a', '2023-11-22 05:45:09.524868', 'n/a', '1', 'NA', '1', 179, '0', '', '0', '0', '0', '0'),
(67, 149, '2500', 'USDT', '2023-11-22 11:15:42.932052', 'n/a', 'n/a', 'NA', '9', 179, '0.0', 'package buy of 2500', '0', '2500', '0.0', '2500.0'),
(68, 150, '2500', 'n/a', '2023-11-22 05:54:15.202628', 'n/a', '1', 'NA', '1', 180, '0', '', '0', '0', '0', '0'),
(69, 150, '2500', 'USDT', '2023-11-22 11:24:39.383726', 'n/a', 'n/a', 'NA', '9', 180, '0.0', 'package buy of 2500', '0', '2500', '0.0', '2500.0'),
(70, 151, '2500', 'n/a', '2023-11-22 06:00:03.076890', 'n/a', '1', 'NA', '1', 181, '0', '', '0', '0', '0', '0'),
(71, 151, '2500', 'USDT', '2023-11-22 11:30:12.038674', 'n/a', 'n/a', 'NA', '9', 181, '0.0', 'package buy of 2500', '0', '2500', '0.0', '2500.0'),
(72, 152, '2500', 'n/a', '2023-11-22 06:02:13.607927', 'n/a', '1', 'NA', '1', 182, '0', '', '0', '0', '0', '0'),
(73, 152, '2500', 'USDT', '2023-11-22 11:32:24.424463', 'n/a', 'n/a', 'NA', '9', 182, '0.0', 'package buy of 2500', '0', '2500', '0.0', '2500.0'),
(74, 146, '25.0', 'USDT', '2023-11-22 11:32:24.471539', 'n/a', 'n/a', 'NA', '6', 176, '28.333333333333332', 'Level Income Recieved', '25.0', '0', '0.0', '3.3333333333333335'),
(75, 153, '100', 'USDT', '2023-11-29 11:27:03.620014', 'n/a', 'n/a', 'NA', '3', 183, '100.0', '100 Deopist successfully', '100', '0', '0.0', '0'),
(76, 153, '1', 'USDT', '2023-11-29 11:30:22.070877', 'n/a', 'n/a', 'NA', '3', 183, '101.0', '1 Deopist successfully', '1', '0', '0.0', '100.0'),
(77, 153, '1', 'USDT', '2023-11-29 12:46:17.980599', 'n/a', 'n/a', 'NA', '3', 183, '102.0', '1 Deopist successfully', '1', '0', '0.0', '101.0');

-- --------------------------------------------------------

--
-- Table structure for table `usermembership`
--

CREATE TABLE `usermembership` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `booster_plan` varchar(200) NOT NULL,
  `max_roi` varchar(200) NOT NULL,
  `roi_recieved` varchar(200) NOT NULL,
  `next_date` varchar(200) NOT NULL,
  `price` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usermembership`
--

INSERT INTO `usermembership` (`id`, `amount`, `plan_id`, `user_id`, `date`, `status`, `booster_plan`, `max_roi`, `roi_recieved`, `next_date`, `price`) VALUES
(90, '2500', 21, 176, '2023-11-22 05:28:31.579658', '1', 'False', '54.0', '2.5', '2023-11-23 05:37:40.610820', '0'),
(91, '2500', 21, 178, '2023-11-22 05:28:31.579658', '1', 'False', '54.0', '2.5', '2023-11-23 05:37:40.629637', '0'),
(92, '2500', 21, 177, '2023-11-22 05:28:31.579658', '1', 'False', '54.0', '2.5', '2023-11-23 05:37:40.669858', '0'),
(93, '2500', 21, 179, '2023-11-22 05:43:49.007292', '1', 'False', '54.0', '0', '2023-11-23', '0'),
(94, '2500', 21, 180, '2023-11-22 05:52:30.095329', '1', 'False', '54.0', '0', '2023-11-23', '0'),
(95, '2500', 21, 181, '2023-11-22 05:58:25.012330', '1', 'False', '54.0', '0', '2023-11-23', '0'),
(96, '2500', 21, 182, '2023-11-22 06:00:55.981899', '1', 'False', '54.0', '0', '2023-11-23', '0');

-- --------------------------------------------------------

--
-- Table structure for table `userrewards`
--

CREATE TABLE `userrewards` (
  `id` bigint(20) NOT NULL,
  `reward_recieved` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `rank_id` bigint(20) NOT NULL,
  `next_date` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified_at` varchar(200) NOT NULL,
  `role` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `referal_by` varchar(200) DEFAULT NULL,
  `referal_code` varchar(200) NOT NULL,
  `activation_date` varchar(200) NOT NULL,
  `paid_members` varchar(200) NOT NULL,
  `phone_no` varchar(200) DEFAULT NULL,
  `business` varchar(200) NOT NULL,
  `farming_roi_status` varchar(200) NOT NULL,
  `level_income_status` varchar(100) NOT NULL,
  `staking_roi_status` varchar(100) NOT NULL,
  `zero_pin` varchar(200) NOT NULL,
  `business_balance` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `total_team` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `email`, `verified_at`, `role`, `status`, `updated_at`, `created_at`, `remember_token`, `referal_by`, `referal_code`, `activation_date`, `paid_members`, `phone_no`, `business`, `farming_roi_status`, `level_income_status`, `staking_roi_status`, `zero_pin`, `business_balance`, `address`, `total_team`) VALUES
(170, 'pbkdf2_sha256$390000$Wjh2hS1CzouCDcvu1zidjW$qVKSkoB71N6dCcUs9VGhizJC8GGkz5cp1FVAuMy5xpk=', NULL, 0, 'AL1695025341P', 'shubham', 'Sharma', 0, 1, '2023-09-18 08:22:21.500173', 'sachin001@gmail.com', 'True', 'admin', '1', '2023-09-18 07:59:11.977420', '2023-09-18 07:59:11.977420', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNhY2hpbjAwMUBnbWFpbC5jb20iLCJleHAiOjE2OTUwMjU0NjF9.6iyh3Bx07v5uMz7KAwxf9QSeetHU1DyqPfzHwcv9w_U', NULL, 'd495d6b4', 'N/A', 'False', NULL, '0', '1', '1', '1', '0', '0', '0', '0'),
(175, 'pbkdf2_sha256$390000$CPPi5tzf7c6DBxxrF1hsgU$fxcn4yItkIEsTl76CIGbttAK7pWhG4irSQUBTxpNBdw=', NULL, 0, 'ME1700629208X', 'Anirudh', 'Boxfy', 0, 1, '2023-11-22 05:00:08.674881', 'anirudh2270@gmail.com', 'False', 'user', '1', '2023-11-22 04:59:31.974754', '2023-11-22 04:59:31.974754', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFuaXJ1ZGgyMjcwQGdtYWlsLmNvbSIsImV4cCI6MTcwMDYyOTMyOH0.QoeNOQb0MKDfIBhrO6Aw9ka2gVtQ77hUvH3jF7XlqfE', NULL, 'ME1700629208X', 'N/A', 'False', NULL, '0', '1', '1', '1', '0', '0', '0', '0'),
(176, 'pbkdf2_sha256$390000$tt9xrY6nmtOC88hEumh7uf$7a6CvD3WVfqRGmZmRl0tkSunjDvFTadLR5UABldxtr4=', NULL, 0, 'ME1700630403X', 'Anirudh', 'Boxfy', 0, 1, '2023-11-22 05:20:03.820994', 'abc@gmail.com', 'True', 'user', '1', '2023-11-22 05:17:17.175560', '2023-11-22 05:17:17.175560', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImFiY0BnbWFpbC5jb20iLCJleHAiOjE3MDA2MzA1MjN9.DP6Dwh5aFjQrbJmPMMLbJol0FPbReQI-0ClQxWiOLjo', NULL, 'ME1700630403X', '1700631119.298773', 'True', NULL, '15000.0', '1', '1', '1', '0', '15000.0', '0', '6'),
(177, 'pbkdf2_sha256$390000$YZ2SdsKmSXbAVlFuckjM4c$PAWOXenjbWTmHzrs35QcBGOZ1a+kVXkuOzecV3YA15k=', NULL, 0, 'AL1700630447P', 'shubham', 'Sharma', 0, 1, '2023-11-22 05:20:47.501441', 'sharma@gmail.com', 'True', 'user', '1', '2023-11-22 05:17:17.175560', '2023-11-22 05:17:17.175560', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNoYXJtYUBnbWFpbC5jb20iLCJleHAiOjE3MDA2MzA1Njd9.sn3K7PItsvkf0hXty0dgkKjTeew4lbkuz8M18zmBA1k', 'ME1700630403X', 'AL1700630447P', '1700631200.2210076', 'True', NULL, '2500.0', '1', '1', '1', '0', '2500.0', '0', '1'),
(178, 'pbkdf2_sha256$390000$2i1NP41AqndfXOsiVaktGE$Nu2zrnJurOCpSu+iILfjSWa2UHbz0Fwwk/FeZkuzed4=', NULL, 0, 'ME1700630976X', 'karan', 'Rana', 0, 1, '2023-11-22 05:29:36.857672', 'rana@gmail.com', 'True', 'user', '1', '2023-11-22 05:28:31.575654', '2023-11-22 05:28:31.575654', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbmFAZ21haWwuY29tIiwiZXhwIjoxNzAwNjMxMDk2fQ.FNUgaXxk3FtMecUjK49UqxDrQEfgCmrEaqFIfALdIeg', 'AL1700630447P', 'ME1700630976X', '1700631162.7005777', 'True', NULL, '0', '1', '1', '1', '0', '0', '0', '0'),
(179, 'pbkdf2_sha256$390000$2iPqqu1zbnnPiEsjz2lG6p$noum7692ANzrXMUniGNkOm+obj/p++n361e+sjO9tB4=', NULL, 0, 'ME1700631871X', 'noname', 'bbb', 0, 1, '2023-11-22 05:44:31.160046', 'bbb@gmail.com', 'True', 'user', '1', '2023-11-22 05:43:49.002284', '2023-11-22 05:43:49.002284', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImJiYkBnbWFpbC5jb20iLCJleHAiOjE3MDA2MzE5OTF9.oL_9Jajmdkgbp2aO5bT6RkNM3O0_gMstygX9eW-llng', 'ME1700630403X', 'ME1700631871X', '1700631942.9349504', 'True', NULL, '0', '1', '1', '1', '0', '0', '0', '0'),
(180, 'pbkdf2_sha256$390000$vU1TUMgx1un6bQAuPpqr1Z$MyWzbzGc52+IG07lbzBPBNZ6Rv8dTNoQXAS3T+42+S8=', NULL, 0, 'ME1700632375X', 'bala', 'd', 0, 1, '2023-11-22 05:52:55.061119', 'd@gmail.com', 'True', 'user', '1', '2023-11-22 05:52:30.088596', '2023-11-22 05:52:30.088596', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImRAZ21haWwuY29tIiwiZXhwIjoxNzAwNjMyNDk1fQ._IivNGIITPxHZ2s74iGoRNz3C3TW93IitSqb7AAki2U', 'ME1700630403X', 'ME1700632375X', '1700632479.3857274', 'True', NULL, '0', '1', '1', '1', '0', '0', '0', '0'),
(181, 'pbkdf2_sha256$390000$S3uqtgmwyyCVhG1wqFLZDy$2DNvQOoD0u57fznTNICCBWwA+p/UJ9a6a+tun0g/jeM=', NULL, 0, 'ME1700632785X', 'ram', 'veer', 0, 1, '2023-11-22 05:59:45.627011', 'ramveer@gmail.com', 'True', 'user', '1', '2023-11-22 05:58:25.006330', '2023-11-22 05:58:25.006330', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbXZlZXJAZ21haWwuY29tIiwiZXhwIjoxNzAwNjMyOTA1fQ.jIoxtTqNwGi_LgrAnTxnjxnTZUswDDgpE4jwmawgh6M', 'ME1700630403X', 'ME1700632785X', '1700632812.04194', 'True', NULL, '0', '1', '1', '1', '0', '0', '0', '0'),
(182, 'pbkdf2_sha256$390000$S6ppMO2APOpx7asuooJU5F$7TJ8iAt4+4DNE+9wkf6FsP4BuiHT7DlMZzWUlRlL1Rs=', NULL, 0, 'ME1700632891X', 'veer', 'karan', 0, 1, '2023-11-22 06:01:31.891027', 'karanveer@gmail.com', 'True', 'user', '1', '2023-11-22 06:00:55.977024', '2023-11-22 06:00:55.977024', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImthcmFudmVlckBnbWFpbC5jb20iLCJleHAiOjE3MDA2MzMwMTF9.2eE1z74KntSdQ-_KXYYVC5leSou1-nkxIkT9FYIJmwo', 'ME1700630403X', 'ME1700632891X', '1700632944.426447', 'True', NULL, '0', '1', '1', '1', '0', '0', '0', '0'),
(183, 'pbkdf2_sha256$390000$QbmKu5UgjyIAszFtG6q6go$hGjfytOuiiP1D/E/mWPUW8UDl0Fvd4WUdMKNUCdSEsw=', NULL, 0, 'ME1701176039X', 'Shubham', 'Sharma', 0, 1, '2023-11-28 12:53:59.215672', 'ss969856@gmail.com', 'True', 'user', '1', '2023-11-28 12:52:58.708905', '2023-11-28 12:52:58.708905', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InNzOTY5ODU2QGdtYWlsLmNvbSIsImV4cCI6MTcwMTE3NjE1OX0.dkrAD9SRw91oWYenw6ebVwUOfU-uKvsbbiTTPPUeRb0', NULL, 'ME1701176039X', 'N/A', 'False', NULL, '0', '1', '1', '1', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `userstaking`
--

CREATE TABLE `userstaking` (
  `id` bigint(20) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `roi_per_month` varchar(200) NOT NULL,
  `plan_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `roi_recieved` varchar(200) NOT NULL,
  `expire_date` varchar(200) NOT NULL,
  `next_date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_user_permissions`
--

CREATE TABLE `users_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_rank`
--

CREATE TABLE `user_rank` (
  `id` bigint(20) NOT NULL,
  `rank_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `reward_recieved` varchar(200) NOT NULL,
  `income` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_referral`
--

CREATE TABLE `user_referral` (
  `id` bigint(20) NOT NULL,
  `child_id_id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `parent_id_id` bigint(20) NOT NULL,
  `refferal_income` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_referral`
--

INSERT INTO `user_referral` (`id`, `child_id_id`, `level_id`, `parent_id_id`, `refferal_income`, `date`, `status`) VALUES
(116, 178, 1, 177, '0.8333333333333334', '2023-11-22 05:28:31.587660', '1'),
(117, 177, 1, 176, '0.8333333333333334', '2023-11-22 05:28:31.587660', '1'),
(118, 179, 1, 176, '0', '2023-11-22 05:43:49.016137', '1'),
(119, 180, 1, 176, '0', '2023-11-22 05:52:30.109684', '1'),
(120, 181, 1, 176, '0', '2023-11-22 05:58:25.023330', '1'),
(121, 182, 1, 176, '0', '2023-11-22 06:00:55.987658', '1');

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `start` varchar(200) NOT NULL,
  `sr` int(11) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` bigint(20) NOT NULL,
  `avaliable_balance` varchar(200) NOT NULL,
  `freezed_balance` varchar(200) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `reserved_balance` varchar(200) NOT NULL,
  `level_balance` varchar(200) NOT NULL,
  `referral_balance` varchar(200) NOT NULL,
  `roi_balance` varchar(200) NOT NULL,
  `bonus_balance` varchar(250) NOT NULL,
  `deposit_balance` varchar(250) NOT NULL,
  `topup_balance` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `avaliable_balance`, `freezed_balance`, `user_id`, `reserved_balance`, `level_balance`, `referral_balance`, `roi_balance`, `bonus_balance`, `deposit_balance`, `topup_balance`) VALUES
(146, '28.333333333333332', '0', 176, '0', '25.0', '0.8333333333333334', '2.5', '0', '0', '0'),
(147, '3.3333333333333335', '0', 177, '0', '0', '0.8333333333333334', '2.5', '0', '0', '0'),
(148, '2.5', '0', 178, '0', '0', '0', '2.5', '0', '0', '0'),
(149, '0.0', '0', 179, '0', '0', '0', '0', '0', '0', '0'),
(150, '0.0', '0', 180, '0', '0', '0', '0', '0', '0', '0'),
(151, '0.0', '0', 181, '0', '0', '0', '0', '0', '0', '0'),
(152, '0.0', '0', 182, '0', '0', '0', '0', '0', '0', '0'),
(153, '102.0', '0', 183, '0', '0', '0', '0', '0', '102.0', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_users_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `core_appsettings`
--
ALTER TABLE `core_appsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_businesslogs`
--
ALTER TABLE `core_businesslogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_businesslogs_child_id_id_b59cae4f_fk_users_id` (`child_id_id`),
  ADD KEY `core_businesslogs_parent_id_id_b1d7e131_fk_users_id` (`parent_id_id`),
  ADD KEY `core_businesslogs_plan_id_3e9a372a_fk_core_plansmodel_id` (`plan_id`);

--
-- Indexes for table `core_changesponserlogs`
--
ALTER TABLE `core_changesponserlogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_changesponserlogs_from_id_id_9b5ca4bb_fk_users_id` (`from_id_id`),
  ADD KEY `core_changesponserlogs_to_id_id_591a1af0_fk_users_id` (`to_id_id`);

--
-- Indexes for table `core_cofounderclub`
--
ALTER TABLE `core_cofounderclub`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_cofounderclub_club_98d70073_uniq` (`club`);

--
-- Indexes for table `core_emailservice`
--
ALTER TABLE `core_emailservice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_gallaryimages`
--
ALTER TABLE `core_gallaryimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_levelincome`
--
ALTER TABLE `core_levelincome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_levelincome_child_id_id_fefd5568_fk_users_id` (`child_id_id`),
  ADD KEY `core_levelincome_level_id_7df4ee2f_fk_levels_id` (`level_id`),
  ADD KEY `core_levelincome_parent_id_id_479ecada_fk_users_id` (`parent_id_id`);

--
-- Indexes for table `core_login_history`
--
ALTER TABLE `core_login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_login_history_user_id_c539e665_fk_users_id` (`user_id`);

--
-- Indexes for table `core_membership`
--
ALTER TABLE `core_membership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_newsmodel`
--
ALTER TABLE `core_newsmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_plansmodel`
--
ALTER TABLE `core_plansmodel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `core_roiperiod`
--
ALTER TABLE `core_roiperiod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_roiperiod_plan_id_bbf4119b_fk_core_membership_id` (`plan_id`);

--
-- Indexes for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_status_activity_user_id_b539cf0e_fk_users_id` (`user_id`);

--
-- Indexes for table `core_ticketmodel`
--
ALTER TABLE `core_ticketmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_ticketmodel_user_id_fca908b3_fk_users_id` (`user_id`);

--
-- Indexes for table `core_useraddressdetail`
--
ALTER TABLE `core_useraddressdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_useraddressdetail_user_id_46d53d92_fk_users_id` (`user_id`);

--
-- Indexes for table `core_usercofounderclub`
--
ALTER TABLE `core_usercofounderclub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_usercofounderclub_club_id_a4ccc2a7_fk_core_cofounderclub_id` (`club_id`),
  ADD KEY `core_usercofounderclub_user_id_20907c22_fk_users_id` (`user_id`);

--
-- Indexes for table `core_userunlockedlevel`
--
ALTER TABLE `core_userunlockedlevel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_userunlockedlevel_level_id_74f0feac_fk_levels_id` (`level_id`),
  ADD KEY `core_userunlockedlevel_user_id_e700a745_fk_users_id` (`user_id`);

--
-- Indexes for table `core_userwithdrawls`
--
ALTER TABLE `core_userwithdrawls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_userwithdrawls_user_id_6b158a41_fk_users_id` (`user_id`),
  ADD KEY `core_userwithdrawls_wallet_id_665943e6_fk_wallet_id` (`wallet_id`);

--
-- Indexes for table `core_withdrawapi`
--
ALTER TABLE `core_withdrawapi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_withdrawsettingmodel`
--
ALTER TABLE `core_withdrawsettingmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_youtubevideo`
--
ALTER TABLE `core_youtubevideo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_level`
--
ALTER TABLE `current_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `current_level_user_id_f0128532_fk_users_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `farmingroilogs`
--
ALTER TABLE `farmingroilogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farmingroilogs_plan_id_d7c73c53_fk_usermembership_id` (`plan_id`),
  ADD KEY `farmingroilogs_user_id_30b710b7_fk_users_id` (`user_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manageroi`
--
ALTER TABLE `manageroi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `principallogs`
--
ALTER TABLE `principallogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `principallogs_plan_id_521579c5_fk_usermembership_id` (`plan_id`);

--
-- Indexes for table `ptransfer`
--
ALTER TABLE `ptransfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_ptransfer_child_id_id_e1f7f06e_fk_users_id` (`child_id_id`),
  ADD KEY `core_ptransfer_user_id_id_6008cb53_fk_users_id` (`user_id_id`),
  ADD KEY `core_ptransfer_wallet_id_a4dc1fed_fk_wallet_id` (`wallet_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rank` (`rank`);

--
-- Indexes for table `rewardlogs`
--
ALTER TABLE `rewardlogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rewardlogs_rank_id_e5fee971_fk_userrewards_id` (`rank_id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_users_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_users_id` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

--
-- Indexes for table `sponsorlog`
--
ALTER TABLE `sponsorlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sponsorlog_child_id_id_2085e41d_fk_users_id` (`child_id_id`),
  ADD KEY `sponsorlog_parent_id_id_eac5d63c_fk_users_id` (`parent_id_id`);

--
-- Indexes for table `stakingroilogs`
--
ALTER TABLE `stakingroilogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stakingroilogs_plan_id_cee1076a_fk_core_membership_id` (`plan_id`),
  ADD KEY `stakingroilogs_user_id_4423f67b_fk_users_id` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_wallet_id_ce705075_fk_wallet_id` (`wallet_id`),
  ADD KEY `transactions_user_id_766cc893_fk_users_id` (`user_id`);

--
-- Indexes for table `usermembership`
--
ALTER TABLE `usermembership`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_usermembership_plan_id_063bcaed_fk_core_membership_id` (`plan_id`),
  ADD KEY `core_usermembership_user_id_dfa7c16b_fk_users_id` (`user_id`);

--
-- Indexes for table `userrewards`
--
ALTER TABLE `userrewards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userrewards_user_id_9d18e79f_fk_users_id` (`user_id`),
  ADD KEY `userrewards_rank_id_8024ab65_fk_rewards_id` (`rank_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `referal_code` (`referal_code`);

--
-- Indexes for table `userstaking`
--
ALTER TABLE `userstaking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userstaking_plan_id_ab8536dc_fk_core_membership_id` (`plan_id`),
  ADD KEY `userstaking_user_id_4c06ca72_fk_users_id` (`user_id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_groups_user_id_group_id_fc7788e8_uniq` (`user_id`,`group_id`),
  ADD KEY `users_groups_group_id_2f3517aa_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_user_permissions_user_id_permission_id_3b86cbdf_uniq` (`user_id`,`permission_id`),
  ADD KEY `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `user_rank`
--
ALTER TABLE `user_rank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_rank_rank_id_afdeb20f_fk_rank_id` (`rank_id`),
  ADD KEY `user_rank_user_id_c2b3ca12_fk_users_id` (`user_id`);

--
-- Indexes for table `user_referral`
--
ALTER TABLE `user_referral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_referral_child_id_id_de75dad4_fk_users_id` (`child_id_id`),
  ADD KEY `user_referral_level_id_8f3a91dd_fk_levels_id` (`level_id`),
  ADD KEY `user_referral_parent_id_id_5df4353f_fk_users_id` (`parent_id_id`);

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `verify_id_3bbf7b17_fk_users_id` (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallet_user_id_03d82c01_fk_users_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `core_appsettings`
--
ALTER TABLE `core_appsettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `core_businesslogs`
--
ALTER TABLE `core_businesslogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32718;

--
-- AUTO_INCREMENT for table `core_changesponserlogs`
--
ALTER TABLE `core_changesponserlogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_cofounderclub`
--
ALTER TABLE `core_cofounderclub`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_emailservice`
--
ALTER TABLE `core_emailservice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_gallaryimages`
--
ALTER TABLE `core_gallaryimages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `core_levelincome`
--
ALTER TABLE `core_levelincome`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=657;

--
-- AUTO_INCREMENT for table `core_login_history`
--
ALTER TABLE `core_login_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=498;

--
-- AUTO_INCREMENT for table `core_membership`
--
ALTER TABLE `core_membership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `core_newsmodel`
--
ALTER TABLE `core_newsmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_plansmodel`
--
ALTER TABLE `core_plansmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_roiperiod`
--
ALTER TABLE `core_roiperiod`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `core_ticketmodel`
--
ALTER TABLE `core_ticketmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_useraddressdetail`
--
ALTER TABLE `core_useraddressdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_usercofounderclub`
--
ALTER TABLE `core_usercofounderclub`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_userunlockedlevel`
--
ALTER TABLE `core_userunlockedlevel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `core_userwithdrawls`
--
ALTER TABLE `core_userwithdrawls`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `core_withdrawapi`
--
ALTER TABLE `core_withdrawapi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_withdrawsettingmodel`
--
ALTER TABLE `core_withdrawsettingmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_youtubevideo`
--
ALTER TABLE `core_youtubevideo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `current_level`
--
ALTER TABLE `current_level`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `farmingroilogs`
--
ALTER TABLE `farmingroilogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=640;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `manageroi`
--
ALTER TABLE `manageroi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `principallogs`
--
ALTER TABLE `principallogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ptransfer`
--
ALTER TABLE `ptransfer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rewardlogs`
--
ALTER TABLE `rewardlogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sponsorlog`
--
ALTER TABLE `sponsorlog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stakingroilogs`
--
ALTER TABLE `stakingroilogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `usermembership`
--
ALTER TABLE `usermembership`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `userrewards`
--
ALTER TABLE `userrewards`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `userstaking`
--
ALTER TABLE `userstaking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_rank`
--
ALTER TABLE `user_rank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_referral`
--
ALTER TABLE `user_referral`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `core_businesslogs`
--
ALTER TABLE `core_businesslogs`
  ADD CONSTRAINT `core_businesslogs_child_id_id_b59cae4f_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_businesslogs_parent_id_id_b1d7e131_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_businesslogs_plan_id_3e9a372a_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`);

--
-- Constraints for table `core_changesponserlogs`
--
ALTER TABLE `core_changesponserlogs`
  ADD CONSTRAINT `core_changesponserlogs_from_id_id_9b5ca4bb_fk_users_id` FOREIGN KEY (`from_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_changesponserlogs_to_id_id_591a1af0_fk_users_id` FOREIGN KEY (`to_id_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_levelincome`
--
ALTER TABLE `core_levelincome`
  ADD CONSTRAINT `core_levelincome_child_id_id_fefd5568_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_levelincome_level_id_7df4ee2f_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `core_levelincome_parent_id_id_479ecada_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_login_history`
--
ALTER TABLE `core_login_history`
  ADD CONSTRAINT `core_login_history_user_id_c539e665_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_roiperiod`
--
ALTER TABLE `core_roiperiod`
  ADD CONSTRAINT `core_roiperiod_plan_id_bbf4119b_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`);

--
-- Constraints for table `core_status_activity`
--
ALTER TABLE `core_status_activity`
  ADD CONSTRAINT `core_status_activity_user_id_b539cf0e_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_ticketmodel`
--
ALTER TABLE `core_ticketmodel`
  ADD CONSTRAINT `core_ticketmodel_user_id_fca908b3_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_useraddressdetail`
--
ALTER TABLE `core_useraddressdetail`
  ADD CONSTRAINT `core_useraddressdetail_user_id_46d53d92_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_usercofounderclub`
--
ALTER TABLE `core_usercofounderclub`
  ADD CONSTRAINT `core_usercofounderclub_club_id_a4ccc2a7_fk_core_cofounderclub_id` FOREIGN KEY (`club_id`) REFERENCES `core_cofounderclub` (`id`),
  ADD CONSTRAINT `core_usercofounderclub_user_id_20907c22_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_userunlockedlevel`
--
ALTER TABLE `core_userunlockedlevel`
  ADD CONSTRAINT `core_userunlockedlevel_level_id_74f0feac_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `core_userunlockedlevel_user_id_e700a745_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `core_userwithdrawls`
--
ALTER TABLE `core_userwithdrawls`
  ADD CONSTRAINT `core_userwithdrawls_user_id_6b158a41_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_userwithdrawls_wallet_id_665943e6_fk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

--
-- Constraints for table `current_level`
--
ALTER TABLE `current_level`
  ADD CONSTRAINT `current_level_user_id_f0128532_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `farmingroilogs`
--
ALTER TABLE `farmingroilogs`
  ADD CONSTRAINT `farmingroilogs_plan_id_d7c73c53_fk_usermembership_id` FOREIGN KEY (`plan_id`) REFERENCES `usermembership` (`id`),
  ADD CONSTRAINT `farmingroilogs_user_id_30b710b7_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `principallogs`
--
ALTER TABLE `principallogs`
  ADD CONSTRAINT `principallogs_plan_id_521579c5_fk_usermembership_id` FOREIGN KEY (`plan_id`) REFERENCES `usermembership` (`id`);

--
-- Constraints for table `ptransfer`
--
ALTER TABLE `ptransfer`
  ADD CONSTRAINT `core_ptransfer_child_id_id_e1f7f06e_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_ptransfer_user_id_id_6008cb53_fk_users_id` FOREIGN KEY (`user_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `core_ptransfer_wallet_id_a4dc1fed_fk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

--
-- Constraints for table `rewardlogs`
--
ALTER TABLE `rewardlogs`
  ADD CONSTRAINT `rewardlogs_rank_id_e5fee971_fk_userrewards_id` FOREIGN KEY (`rank_id`) REFERENCES `userrewards` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sponsorlog`
--
ALTER TABLE `sponsorlog`
  ADD CONSTRAINT `sponsorlog_child_id_id_2085e41d_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sponsorlog_parent_id_id_eac5d63c_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `stakingroilogs`
--
ALTER TABLE `stakingroilogs`
  ADD CONSTRAINT `stakingroilogs_plan_id_cee1076a_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`),
  ADD CONSTRAINT `stakingroilogs_user_id_4423f67b_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_766cc893_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_wallet_id_ce705075_fk_wallet_id` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);

--
-- Constraints for table `usermembership`
--
ALTER TABLE `usermembership`
  ADD CONSTRAINT `core_usermembership_plan_id_063bcaed_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`),
  ADD CONSTRAINT `core_usermembership_user_id_dfa7c16b_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `userrewards`
--
ALTER TABLE `userrewards`
  ADD CONSTRAINT `userrewards_rank_id_8024ab65_fk_rewards_id` FOREIGN KEY (`rank_id`) REFERENCES `rewards` (`id`),
  ADD CONSTRAINT `userrewards_user_id_9d18e79f_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `userstaking`
--
ALTER TABLE `userstaking`
  ADD CONSTRAINT `userstaking_plan_id_ab8536dc_fk_core_membership_id` FOREIGN KEY (`plan_id`) REFERENCES `core_membership` (`id`),
  ADD CONSTRAINT `userstaking_user_id_4c06ca72_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `users_groups_group_id_2f3517aa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `users_groups_user_id_f500bee5_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users_user_permissions`
--
ALTER TABLE `users_user_permissions`
  ADD CONSTRAINT `users_user_permissio_permission_id_6d08dcd2_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `users_user_permissions_user_id_92473840_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_rank`
--
ALTER TABLE `user_rank`
  ADD CONSTRAINT `user_rank_rank_id_afdeb20f_fk_rank_id` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`id`),
  ADD CONSTRAINT `user_rank_user_id_c2b3ca12_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_referral`
--
ALTER TABLE `user_referral`
  ADD CONSTRAINT `user_referral_child_id_id_de75dad4_fk_users_id` FOREIGN KEY (`child_id_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_referral_level_id_8f3a91dd_fk_levels_id` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`),
  ADD CONSTRAINT `user_referral_parent_id_id_5df4353f_fk_users_id` FOREIGN KEY (`parent_id_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `verify`
--
ALTER TABLE `verify`
  ADD CONSTRAINT `verify_id_3bbf7b17_fk_users_id` FOREIGN KEY (`id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_user_id_03d82c01_fk_users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
