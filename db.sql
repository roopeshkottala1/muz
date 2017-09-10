-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 09, 2017 at 09:58 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `athira`
--
CREATE DATABASE IF NOT EXISTS `athira` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `athira`;

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `mob1` varchar(13) NOT NULL,
  `mob2` varchar(13) NOT NULL,
  `land` varchar(13) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`id`, `name`, `lastname`, `email`, `username`, `pass`, `mob1`, `mob2`, `land`, `status`, `level`, `created`, `updated`) VALUES
(1, 'admin', '', NULL, 'admin', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '1', '2012-10-19 11:35:10', '2012-10-19 11:35:14'),
(2, ' Anees', 'K', 'anees@gmail.com', 'anees', 'b59c67bf196a4758191e42f76670ceba', '9846778456', '', '04902380999', 1, '30', '2012-10-19 12:24:47', '2012-10-19 12:24:47'),
(3, ' Nayana', 'Ramdas', 'nayanar@yahoo.com', 'nayana', 'b59c67bf196a4758191e42f76670ceba', '9645786909', '', '04962527767', 1, '30', '2012-10-19 12:28:18', '2012-10-19 12:28:18'),
(4, ' Nishad', 'VP', 'nishmail.comadvp@g', 'nishad', 'b59c67bf196a4758191e42f76670ceba', '9847864533', '', '04962509978', 1, '30', '2012-10-19 12:31:26', '2012-10-19 12:31:26'),
(5, ' Amrutha', 'P', 'amruthap@in.com', 'amrutha', 'b59c67bf196a4758191e42f76670ceba', '9995345234', '', '04962608766', 1, '30', '2012-10-19 12:38:16', '2012-10-19 12:38:16'),
(6, ' Mahesh', 'Kumar', 'mahesh@gmail.com', 'maheshmar', 'b59c67bf196a4758191e42f76670ceba', '9895336575', '', '04962516787', 1, '30', '2012-10-19 12:40:55', '2012-10-19 12:40:55'),
(7, ' Fathima', 'S', 'fathima@gmail.com', 'fathima', 'b59c67bf196a4758191e42f76670ceba', '9745124678', '', '04962553478', 1, '30', '2012-10-19 12:44:40', '2012-10-19 12:44:40'),
(8, ' Haris', 'Rahman', 'harisrahman@gmail.com', 'haris', 'b59c67bf196a4758191e42f76670ceba', '9946986785', '', '04962534565', 1, '30', '2012-10-19 12:48:56', '2012-10-19 12:48:56'),
(9, ' Sandosh', 'Kumar', 'sandosh123@yahoo.com', 'sandosh', 'b59c67bf196a4758191e42f76670ceba', '8086435678', '', '04962528909', 1, '30', '2012-10-19 12:55:54', '2012-10-19 12:55:54'),
(10, ' Praveena', 'R', 'praveenar1@gmail.com', 'praveena', 'b59c67bf196a4758191e42f76670ceba', '8084324564', '', '0496250984576', 1, '30', '2012-10-19 12:58:33', '2012-10-19 12:58:33'),
(11, ' Vijina', 'K', 'vijinak124@yahoo.co.in', 'vijina', 'b59c67bf196a4758191e42f76670ceba', '8012884312', '', '0496251332895', 1, '30', '2012-10-19 13:01:04', '2012-10-19 13:01:04'),
(12, ' Sooraj', 'R', 'sooracomjr@gmail.com', 'sooraj', 'b59c67bf196a4758191e42f76670ceba', '9746235674', '', '04962553245', 1, '30', '2012-10-19 14:54:49', '2012-10-19 14:54:49'),
(13, ' Varun', 'Kumar', 'varunkumar2012@gmail.c', 'varun', 'b59c67bf196a4758191e42f76670ceba', '8086834323', '', '04962552987om', 1, '30', '2012-10-19 14:57:45', '2012-10-19 14:57:45'),
(14, 'Meghana', 'K', 'meghanak@gmail.com', 'meghana', 'b59c67bf196a4758191e42f76670ceba', '8089433234', '', '04962513987', 1, '30', '2012-10-19 15:00:42', '2012-10-19 15:01:14'),
(15, ' Sruthi', 'Chandran', 'sruthichandran@gmail.com', 'sruthi', 'b59c67bf196a4758191e42f76670ceba', '8089768745', '', '04962209876', 1, '30', '2012-10-19 15:05:51', '2012-10-19 15:05:51'),
(16, ' Aiswarya', 'RS', '', 'aiswarya', 'b59c67bf196a4758191e42f76670ceba', '8089765645', '', '04963309876', 1, '30', '2012-10-19 15:29:56', '2012-10-19 15:29:56'),
(17, ' Muhammed', 'RK', 'muhammedrk@yahoo.com', 'muhammed', 'b59c67bf196a4758191e42f76670ceba', '8089324323', '', '04962508456', 1, '30', '2012-10-19 15:37:55', '2012-10-19 15:37:55'),
(18, ' Fida', 'Habeeb', 'fidahabeeb@gmail.com', 'fidab', 'b59c67bf196a4758191e42f76670ceba', '8086764532', '', '04962208767', 1, '30', '2012-10-19 15:42:15', '2012-10-19 15:42:15'),
(19, ' Mithun', 'Thomas', 'mithunthomas@yahoo.com', 'mithun', 'b59c67bf196a4758191e42f76670ceba', '7430879867', '', '04962563423', 1, '30', '2012-10-19 15:45:48', '2012-10-19 15:45:48'),
(20, ' James', 'Joseph', 'jamesjoseph12@in.com', 'james', 'b59c67bf196a4758191e42f76670ceba', '9048237654', '', '04962348798', 1, '30', '2012-10-19 15:48:37', '2012-10-19 15:48:37'),
(21, ' Navya', 'Ram', 'navyaram@gmail.com', 'navya', 'b59c67bf196a4758191e42f76670ceba', '9046845678', '', '04962534567', 1, '30', '2012-10-19 15:51:07', '2012-10-19 15:51:07'),
(22, NULL, NULL, '', 'abdulla', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '25', '2012-10-19 15:53:19', '2012-10-19 16:08:52'),
(23, ' Nouphal', 'Kizhakkayil', 'nouphalkizhakkayil@gmail.com', 'nouphal', 'b59c67bf196a4758191e42f76670ceba', '9947897887', '', '04962516098', 1, '30', '2012-10-22 11:03:35', '2012-10-22 11:03:35'),
(24, ' Sneha', 'PV', 'snehapv@hotmail.com', 'sneha', 'b59c67bf196a4758191e42f76670ceba', '9746564565', '', '04962537687', 1, '30', '2012-10-22 11:06:30', '2012-10-22 11:06:30'),
(25, ' Arya', 'K', 'aryak@yahoo.com', 'arya', 'b59c67bf196a4758191e42f76670ceba', '9048768796', '', '04962567856', 1, '30', '2012-10-22 11:09:07', '2012-10-22 11:09:07'),
(26, ' Praveen', 'Kumar', 'praveenkumar@yahoo.com', 'praveen', 'b59c67bf196a4758191e42f76670ceba', '9995134987', '', '04962609867', 1, '30', '2012-10-22 11:12:04', '2012-10-22 11:12:04'),
(27, ' Ajesh', 'Kumar', 'ajeshkumar14@gmail.com', 'ajesh', 'b59c67bf196a4758191e42f76670ceba', '9995676586', '', '04962557645', 1, '30', '2012-10-22 11:25:06', '2012-10-22 11:25:06'),
(28, 'Arjun', 'S', 'arjuns@yahoo.co.in', 'arjun', 'b59c67bf196a4758191e42f76670ceba', '9747886754', '', '04952380656', 1, '30', '2012-10-22 11:29:58', '2012-10-22 11:40:21'),
(29, ' Jithin', 'KS', '', 'Jithin', 'b59c67bf196a4758191e42f76670ceba', '9047863466', '', '04902380870', 1, '30', '2012-10-22 11:39:59', '2012-10-22 11:39:59'),
(30, ' Nidhina', 'KJ', 'nidhinakj@reddiff.com', 'nidhina', 'b59c67bf196a4758191e42f76670ceba', '8089768756', '', '04902380989', 1, '30', '2012-10-22 11:43:03', '2012-10-22 11:43:03'),
(31, ' Soumya', 'A', 'soumya.a@gmail.com', 'soumya', 'b59c67bf196a4758191e42f76670ceba', '8086756745', '', '04952380887', 1, '30', '2012-10-22 11:48:29', '2012-10-22 11:48:29'),
(32, ' Vaheeda', 'Basheer', 'vaheedabasheer@gmail.com', 'vaheeda', 'b59c67bf196a4758191e42f76670ceba', '8089768756', '', '04962528767', 1, '30', '2012-10-22 11:51:39', '2012-10-22 11:51:39'),
(33, ' Anooj', 'Kumar', 'anoojkumar2012@in.com', 'anooj', 'b59c67bf196a4758191e42f76670ceba', '9744765434', '', '04902307865', 1, '30', '2012-10-22 14:13:09', '2012-10-22 14:13:09'),
(34, ' Prasad', 'RK', 'rkprasad@hotmail.com', 'prasad', 'b59c67bf196a4758191e42f76670ceba', '8086543467', '', '04963243678', 1, '30', '2012-10-22 14:16:38', '2012-10-22 14:16:38'),
(35, 'Dhanya', 'VP', '', 'dhanya', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '30', '2012-10-22 14:18:42', '2012-10-22 14:48:32'),
(36, NULL, NULL, '', 'chandran', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '25', '2012-10-22 14:21:19', '2012-10-22 14:21:19'),
(37, NULL, NULL, '', 'ashokan', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '25', '2012-10-22 14:22:43', '2012-10-22 14:22:43'),
(38, 'Nithya', 'S', '', 'nithya', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '20', '2012-10-22 14:23:50', '2012-10-22 14:24:32'),
(39, 'Satheesh', 'Kumar', '', 'satheesh', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '20', '2012-10-22 14:27:24', '2012-10-22 14:27:40'),
(40, 'Ramachandran', 'K', '', 'ramachandran', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '20', '2012-10-22 14:29:25', '2012-10-22 14:30:07'),
(41, ' hjh', '', '', 'uuu', 'f0d2e445275a68ffe189df3514c24cba', '', '', '', 1, '20', '2012-10-22 14:31:17', '2012-10-22 14:31:17'),
(42, ' ', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', 1, '20', '2012-10-22 14:31:25', '2012-10-22 14:31:25'),
(43, 'Shaji', 'KP', '', 'shaji', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '15', '2012-10-22 14:42:00', '2012-10-25 10:27:38'),
(44, 'hhhj', '', '', 'hjhj', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '15', '2012-10-22 14:43:11', '2012-10-22 14:48:47'),
(45, 'ggfg', '', '', 'hhgg', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '30', '2012-10-22 14:51:49', '2012-10-22 14:52:45'),
(46, ' hhhh', '', '', 'hhh', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '20', '2012-10-25 10:25:41', '2012-10-25 10:25:41'),
(47, ' 1', '', '', '1', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '30', '2012-10-31 11:10:56', '2012-10-31 11:10:56'),
(48, ' aaaa', '', '', 'aaa', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '30', '2012-11-01 15:28:48', '2012-11-01 15:28:48'),
(49, ' abbb', '', '', 'abbb', 'b59c67bf196a4758191e42f76670ceba', '', '', '', 1, '30', '2012-11-01 15:30:56', '2012-11-01 15:30:56'),
(50, ' 44', '', '', '44', 'dbc4d84bfcfe2284ba11beffb853a8c4', '', '', '', 1, '30', '2012-11-01 15:32:39', '2012-11-01 15:32:39'),
(51, ' 000', '', '', '0', '4a7d1ed414474e4033ac29ccb8653d9b', '', '', '', 1, '30', '2012-11-01 15:40:04', '2012-11-01 15:40:04'),
(52, ' sunil', 'kumar', 'asdf@gmail.com', 'SUNIL', '827ccb0eea8a706c4c34a16891f84e7b', '123456789', '123456789', '23456', 1, '30', '2012-11-07 15:39:05', '2012-11-07 15:39:05'),
(53, ' smitha', 's', 'fghj@gmail.com', 'SMITHA', '827ccb0eea8a706c4c34a16891f84e7b', '23456789', '5432167889', '78906', 1, '30', '2012-11-07 15:42:02', '2012-11-07 15:42:02'),
(54, ' Arun', 'kumar', 'ar@gmail.com', 'ARUN', 'e10adc3949ba59abbe56e057f20f883e', '89012345', '85678901', '56789', 1, '30', '2012-11-07 15:49:58', '2012-11-07 15:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `remarks` varchar(256) NOT NULL,
  `amount` float NOT NULL,
  `added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `short_desc` text NOT NULL,
  `long_desc` text NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `uid` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_desc`, `long_desc`, `price`, `qty`, `added`, `updated`, `uid`, `status`) VALUES
(1, 'test product', 'this is short desc', 'long desc!!', 100.5, 10, '2017-05-29 00:00:00', '2017-05-30 00:00:00', 1, 1),
(2, 'asas', '', 'long_desc', 12, 1212, '2017-06-16 22:47:06', '2017-06-16 22:47:06', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `regs`
--

CREATE TABLE `regs` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `phone1` varchar(11) NOT NULL,
  `address` varchar(256) NOT NULL,
  `place` varchar(256) NOT NULL,
  `updated` datetime NOT NULL,
  `added` datetime NOT NULL,
  `phone2` int(12) NOT NULL,
  `note` varchar(12) NOT NULL,
  `total_fee` float NOT NULL,
  `uid` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regs`
--

INSERT INTO `regs` (`id`, `name`, `phone1`, `address`, `place`, `updated`, `added`, `phone2`, `note`, `total_fee`, `uid`, `status`) VALUES
(1, 'asas', '12', '', 'asas', '2017-05-27 14:27:57', '2017-05-27 14:27:57', 0, '', 0, 0, 1),
(2, 'asas', '12', '', '12', '2017-05-27 14:28:25', '2017-05-27 14:28:25', 0, '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `uid` bigint(20) UNSIGNED DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `multi` varchar(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `name`, `uid`, `level`, `multi`, `time`) VALUES
('5cb95ced4054da511855d002c7497c41', 'admin', 1, '1', '1', '2017-06-18 12:50:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regs`
--
ALTER TABLE `regs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `regs`
--
ALTER TABLE `regs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `muzirisfarms`
--
CREATE DATABASE IF NOT EXISTS `muzirisfarms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `muzirisfarms`;

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`id`, `name`, `email`, `username`, `pass`, `status`, `level`, `created`, `updated`) VALUES
(1, 'admin', NULL, 'admin', 'b59c67bf196a4758191e42f76670ceba', 1, '1', '2012-10-19 11:35:10', '2012-10-19 11:35:14'),
(64, 'roopesh k', 'roopesh.kottala@gmail.com', 'roopesh', 'b576b2c83bda27611a15e3a0fe8bf665', 1, '2', '2017-07-01 14:17:04', '2017-07-01 14:17:04');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(56) NOT NULL,
  `productname` varchar(256) NOT NULL,
  `quantity` int(3) NOT NULL,
  `message` text NOT NULL,
  `added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `productname`, `quantity`, `message`, `added`) VALUES
(2, 'roopesj', '9611866557', 'roop@yahoo.com', 'test', 12, 'test', '2017-07-01 13:54:26');

-- --------------------------------------------------------

--
-- Table structure for table `imagegallery`
--

CREATE TABLE `imagegallery` (
  `id` int(4) NOT NULL,
  `title` varchar(256) NOT NULL,
  `image` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagegallery`
--

INSERT INTO `imagegallery` (`id`, `title`, `image`) VALUES
(4, 'gallery Image 1', 'si_59574fcccc295.jpg'),
(5, 'Land image', 'si_59574fe080149.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(3) NOT NULL,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`) VALUES
(1, 'home-aboutus-section', '<p>Muziries <span class=\"\\\"\\\\\"highlightNode\\\\\"\\\"\">farms</span> Pvt Ltd is a kerala based organization dealing with Food Products and producing organic products like as basmati rice for last 8 years in India. We are one of the largest producer and supplier of organic foods products in India and abroad. The brand is an outcome of more than 8 years of organic food research and development and we presents you an enormous ..</p>'),
(2, 'home-contactus-section', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse id sem purus. Proin ut posuere leo, non porta lectus. Nulla egestas, turpis quis luctus ultricies, massa neque mattis dolor, lacinia sagittis neque velit eu erat. Nulla convallis et tellus a ullamcorper. Maecenas viverra lobortis erat, non commodo augue volutpat vel. Pellentesque eget risus eros.Â </p>'),
(3, 'contact', '<p>lorem ipsum Private Limited <br /> lorem ipsum <br /> </p>\r\n<p><abbr title=\"Phone\">Tel</abbr>:  91 3338524380</p>\r\n<p><abbr title=\"fax\">Fax</abbr>: 91 3393390</p>\r\n<p><abbr title=\"Email\">Email</abbr>: <a href=\"mailto:support@lorem.com\">support@lorem.com</a></p>'),
(4, 'about', '<p>Cancer had existed long back in India.The Ayurveda rishis had prescribed certain diets to fight cancer. one of them is <strong>Rakthashali</strong> rice(A type of brown rice) which contains all essential minerals and abundant Oryzanol which has the property of Anti-carcinogenetic effect to inhibit tumor growth,can prevent cancers such as breast, liver lungs and colorectal cancer.While this rice was extinct an enterprising farmer in south India has started cultivating and harvesting this variety. All you have to do is have about 80 grams of this rice cook like a poridge and take it for dinner ... Rakthashali variety, is a rare red rice. Have medical benefits in Ayurvedic Medicine (traditional medicine of India) and has been used since 3000 years ago. This rice is believed to have benefits in slow the aging process. Results of the study found that this kind of rice is rich in antioxidants, calcium, Zinc, iron and other minerals. contact us for franchise india and abroad  91 8330848300</p>'),
(5, 'about-top-section', '<h1>What we do</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>'),
(6, 'home-products-section', '<p>The Ayurveda rishis had prescribed certain diets to fight cancer. one of them is <strong>Rakthashali</strong> rice which contains all essential minerals and abundant Oryzanol which has the property of Anti-carcinogenetic effect to inhibit tumor growth</p>'),
(7, 'contact-map', '<p><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d250436.87944409173!2d75.67038190941932!3d11.255801803994567!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba65938563d4747:0x32150641ca32ecab!2sKozhikode, Kerala!5e0!3m2!1sen!2sin!4v1498895062956\" width=\"100%\" height=\"450\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>'),
(8, 'gallery', 'gallery comes here'),
(9, 'awards', 'awards comes here');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `filename` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `pid`, `filename`) VALUES
(3, 0, '59574680cce26.jpg'),
(7, 5, '5957486a75bb0.jpg'),
(8, 1, '59574988d0814.jpg'),
(9, 6, '59574de79ce6c.jpg'),
(10, 7, '59574e0bd356a.jpg'),
(11, 8, '59574e31b7d6e.jpg'),
(12, 9, '59574eda208e1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `short_desc` text NOT NULL,
  `long_desc` text NOT NULL,
  `price` float NOT NULL,
  `qty` int(11) NOT NULL,
  `added` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `uid` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_desc`, `long_desc`, `price`, `qty`, `added`, `updated`, `uid`, `status`) VALUES
(1, 'test product', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '<p>Test long dec</p>', 100.5, 10, '2017-05-29 00:00:00', '2017-05-30 00:00:00', 1, 1),
(5, 'Test produt1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '<ul>\r\n<li>sdas</li>\r\n<li>asd</li>\r\n<li>asd</li>\r\n</ul>', 12, 1, '2017-06-20 17:39:11', '2017-06-20 17:39:11', 0, 1),
(6, 'test product', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '', 300, 24, '2017-07-01 12:53:19', '2017-07-01 12:53:19', 0, 1),
(7, 'test product 4', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '', 200, 12, '2017-07-01 12:53:55', '2017-07-01 12:53:55', 0, 1),
(8, 'Sample pro', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500', '', 75.5, 22, '2017-07-01 12:54:33', '2017-07-01 12:54:33', 0, 1),
(9, 'samle 221', 'This is sample Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500', '', 400, 22, '2017-07-01 12:57:22', '2017-07-01 12:57:22', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `uid` bigint(20) UNSIGNED DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `multi` varchar(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `name`, `uid`, `level`, `multi`, `time`) VALUES
('753b73209437989d10c0c85afe771a00', 'admin', 1, '1', '1', '2017-09-09 13:23:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imagegallery`
--
ALTER TABLE `imagegallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `imagegallery`
--
ALTER TABLE `imagegallery`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"staging\",\"table\":\"org_organization\"},{\"db\":\"staging\",\"table\":\"org_rolepermission\"},{\"db\":\"staging\",\"table\":\"emp_employee\"},{\"db\":\"staging\",\"table\":\"org_role\"},{\"db\":\"staging\",\"table\":\"org_designation\"},{\"db\":\"staging\",\"table\":\"org_department\"},{\"db\":\"staging\",\"table\":\"org_category\"},{\"db\":\"staging\",\"table\":\"org_branch\"},{\"db\":\"muzirisfarms\",\"table\":\"pages\"},{\"db\":\"muzirisfarms\",\"table\":\"contact\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'muzirisfarms', 'contact', '{\"sorted_col\":\"`contact`.`quantity`  DESC\"}', '2017-07-01 08:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-04-04 09:08:28', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `staging`
--
CREATE DATABASE IF NOT EXISTS `staging` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `staging`;

-- --------------------------------------------------------

--
-- Table structure for table `dmg_device`
--

CREATE TABLE `dmg_device` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `affiliate_id` bigint(20) NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `organization_id` bigint(20) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `device_communication_type` varchar(255) NOT NULL,
  `device_directions` varchar(255) NOT NULL,
  `device_model_type` varchar(255) NOT NULL,
  `device_models` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `time_zone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dmg_device`
--

INSERT INTO `dmg_device` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `affiliate_id`, `branch_id`, `name`, `organization_id`, `serial_no`, `status`, `type`, `device_communication_type`, `device_directions`, `device_model_type`, `device_models`, `location`, `time_zone`) VALUES
(1, 23232, '2017-06-12 17:28:53', NULL, 213213, 251234, 3, 'BANGALORE', 2, 'OIN6120066121000207', 'ACTIVE', 'ZK', '', '', '', '', '', NULL),
(4, 23232, '2017-06-12 17:28:53', NULL, 213213, 251234, 3, 'BANGALORE', 2, 'OIN7020057022200012', 'ACTIVE', 'ZK', '', '', '', '', '', NULL),
(5, 23232, '2017-06-12 17:28:53', NULL, 213213, 251234, 3, 'BANGALORE', 2, 'OIN7024066123100029', 'ACTIVE', 'ZK', '', '', '', '', '', NULL),
(7, 23232, '2017-06-12 17:28:53', NULL, 213213, 251234, 10, 'BANGALORE', 2, 'OIN7030067032500176', 'ACTIVE', 'ZK', '', '', '', '', '', 'Asia/Kolkata'),
(8, 23232, '2017-06-12 17:28:53', NULL, 213213, 251234, 3, 'BANGALORE', 2, 'OIN7020057022200022', 'ACTIVE', 'ZK', '', '', '', '', '', NULL),
(9, 23232, '2017-06-12 17:28:53', NULL, 213213, 251234, 3, 'BANGALORE', 2, '3576164500013', 'ACTIVE', 'ZK', '', '', '', '', '', NULL),
(10, 12345102, '2017-08-10 13:21:02', '2017-08-10 15:28:14', 12345102, 2, 3, 'TesstingDevice', 4, '122333', 'ACTIVE', 'ZK', 'GPRS', 'OUT', 'ATTENDANCE_AND_ACCESSCONTROL', 'S1000', '', NULL),
(12, 12345612, '2017-08-10 19:16:24', '2017-08-16 17:56:26', 12345612, 251234, 35, 'ZK DEVICE', 1, '789456', 'ACTIVE', 'ZK', 'WIFI', 'IN', 'ATTENDANCE_AND_ACCESSCONTROL', 'S1000', 'Bangalore 2nd floor', 'Asia/Kolkata'),
(14, 12345612, '2017-08-10 19:17:41', '2017-08-16 18:05:30', 12345612, 252379, 13, 'ZK DEVICE', 1, '666666666666666', 'ACTIVE', 'ZK', 'LAN', 'IN', 'ATTENDANCE', 'BSFACE', 'securax 2nd floor', 'Etc/UTC'),
(15, 12345612, '2017-08-14 13:09:48', '2017-08-16 18:04:41', 12345612, 252379, 13, 'ZK DEVICE', 1, '789789', 'ACTIVE', 'ZK', 'WIFI', 'IN', 'ATTENDANCE', 'BSFACE', 'Bangalore securax', 'Etc/UTC'),
(16, 12345612, '2017-08-16 12:58:31', '2017-08-16 18:02:09', 12345612, 252379, 12, 'ZK DEVICE', 1, '998877', 'ACTIVE', 'ZK', 'LAN', 'OUT', 'ATTENDANCE', 'I101', 'Bangalore ,Jayanagar 4th block', 'Etc/UTC'),
(17, 12345612, '2017-08-16 16:06:20', '2017-08-16 18:07:23', 12345612, 251234, 35, 'ZK DEVICE', 1, '1245', 'ACTIVE', 'ZK', 'WIFI', 'IN', 'ATTENDANCE', 'BSFACE', 'Entrance 2', 'Asia/Kolkata'),
(18, 12345612, '2017-08-17 17:58:39', '2017-09-05 10:00:21', 12345612, 251234, 10, 'ZK DEVICE', 2208438157, '343434', 'ACTIVE', 'ZK', 'WIFI', 'IN', 'ATTENDANCE_AND_ACCESSCONTROL', 'I102', 'Sax', NULL),
(19, 12345612, '2017-08-17 18:27:44', '2017-08-17 18:31:19', 12345612, 252379, 13, 'ZK DEVICE', 2208438157, '343435', 'ACTIVE', 'ZK', 'LAN', 'IN', 'ATTENDANCE_AND_ACCESSCONTROL', 'I101', 'securax 3rd floor', 'Etc/UTC'),
(20, 12345612, '2017-08-17 18:30:21', '2017-08-21 13:41:30', 12345612, 251234, 35, 'ZK DEVICE', 2208438157, '343436', 'ACTIVE', 'ZK', 'WIFI', 'IN', 'ATTENDANCE', 'ICLOCK', 'Securax 2nd floor', 'Asia/Kolkata'),
(21, 12345612, '2017-08-21 12:17:25', '2017-08-21 12:17:25', NULL, 252379, 13, 'ZK DEVICE', 2208438157, '565656', 'ACTIVE', 'ZK', 'WIFI', 'OUT', 'ATTENDANCE', 'BSFACE', '2n floor', 'Etc/UTC'),
(22, 12345612, '2017-08-21 12:18:07', '2017-08-21 12:18:07', NULL, 252379, 12, 'ZK DEVICE', 2208438157, '575757', 'ACTIVE', 'ZK', 'WIFI', 'OUT', 'ATTENDANCE', 'S1000', 'bangalore ', 'Etc/UTC'),
(23, 12345612, '2017-08-21 12:19:04', '2017-08-21 12:19:04', NULL, 251234, 35, 'ZK DEVICE', 2208438157, '595959', 'ACTIVE', 'ZK', 'GPRS', 'OUT', 'ATTENDANCE_AND_ACCESSCONTROL', 'I101', 'chennai', 'Asia/Kolkata'),
(25, 12345612, '2017-08-21 12:20:27', '2017-08-21 12:20:27', NULL, 252379, 12, 'ZK DEVICE', 2208438157, '909090', 'ACTIVE', 'ZK', 'LAN', 'OUT', 'ATTENDANCE_AND_ACCESSCONTROL', 'I102', 'Bangalore', 'Etc/UTC'),
(26, 12345612, '2017-08-21 12:21:10', '2017-08-21 12:21:10', NULL, 252379, 12, 'ZK DEVICE', 2208438157, '232323', 'ACTIVE', 'ZK', 'GPRS', 'IN', 'ATTENDANCE', 'I102', 'Bangalore', 'Etc/UTC'),
(27, 12345612, '2017-08-21 12:21:55', '2017-08-21 12:21:55', NULL, 252379, 13, 'ZK DEVICE', 2208438157, '323232', 'ACTIVE', 'ZK', 'WIFI', 'IN', 'ATTENDANCE', 'I102', 'Bangalore 2nd block', 'Etc/UTC'),
(28, 12345612, '2017-08-21 12:22:57', '2017-08-21 12:22:57', NULL, 252379, 13, 'ZK DEVICE', 2208438157, '787878', 'ACTIVE', 'ZK', 'WIFI', 'OUT', 'ATTENDANCE', 'S1000', 'Bangalore royal', 'Etc/UTC'),
(29, 12345612, '2017-08-21 12:24:10', '2017-08-21 12:24:10', NULL, 252379, 13, 'ZK DEVICE', 2208438157, '454545', 'ACTIVE', 'ZK', 'LAN', 'OUT', 'ATTENDANCE', 'BSFACE', 'Bangalore BTM', 'Etc/UTC'),
(30, 12345612, '2017-08-21 13:07:48', '2017-08-21 14:34:25', 12345612, 252379, 13, 'ZK DEVICE', 2208438157, '67678', 'ACTIVE', 'ZK', 'WIFI', 'OUT', 'ATTENDANCE', 'BSFACE', 'silk board', 'Etc/UTC'),
(31, 12345612, '2017-08-23 18:03:40', '2017-08-23 18:03:40', NULL, 252379, 13, 'ZK DEVICE', 2208438157, 'SL00012', 'ACTIVE', 'ZK', 'LAN', 'OUT', 'ATTENDANCE', 'BSFACE', 'Bangalore Refactor', NULL),
(32, 12345612, '2017-08-24 10:42:01', '2017-08-24 10:42:01', NULL, 251234, 11, 'ZK DEVICE', 2208438157, '124543532', 'ACTIVE', 'ZK', 'GPRS', 'IN', 'ATTENDANCE_AND_ACCESSCONTROL', 'I101', '2nd floor', NULL),
(33, 12345612, '2017-08-24 11:07:52', '2017-08-24 11:07:52', NULL, 251234, 36, 'ZK DEVICE', 2208438157, '1238664442', 'ACTIVE', 'ZK', 'GPRS', 'IN', 'ATTENDANCE', 'I101', '3rd floor', NULL),
(34, 12345612, '2017-08-30 12:11:57', '2017-08-30 12:14:27', 12345612, 220617, 58, 'ZK DEVICE', 2208438157, '1243', 'ACTIVE', 'ZK', 'GPRS', 'IN', 'ATTENDANCE_AND_ACCESSCONTROL', 'BSFACE', '2nd ', NULL),
(35, 12345612, '2017-09-01 07:31:11', '2017-09-01 07:31:11', NULL, 251234, 10, 'ZK DEVICE', 2208438157, 'Oin7030067032500219', 'ACTIVE', 'ZK', 'GPRS', 'IN', 'ATTENDANCE_AND_ACCESSCONTROL', 'BSFACE', 'front office', NULL),
(36, 12345612, '2017-09-01 08:33:11', '2017-09-01 08:33:11', NULL, 220617, 58, 'ZK DEVICE', 2208438157, '1213456t', 'ACTIVE', 'ZK', 'LAN', 'OUT', 'ATTENDANCE', 'BSFACE', 'store room', NULL),
(37, 12345612, '2017-09-01 08:34:04', '2017-09-01 08:34:04', NULL, 220617, 58, 'ZK DEVICE', 2208438157, 'oin7030067032500219', 'ACTIVE', 'ZK', 'WIFI', 'OUT', 'ATTENDANCE', 'I101', 'qwer', NULL),
(38, 12345612, '2017-09-01 08:36:37', '2017-09-01 08:36:37', NULL, 251234, 57, 'ZK DEVICE', 2208438157, 'oin7030067032500219', 'ACTIVE', 'ZK', 'LAN', 'OUT', 'ATTENDANCE', 'BSFACE', 'fdsa', NULL),
(39, 12345612, '2017-09-01 08:37:57', '2017-09-01 08:37:57', NULL, 251234, 35, 'ZK DEVICE', 2208438157, 'oin7030067032500219', 'ACTIVE', 'ZK', 'LAN', 'IN', 'ATTENDANCE_AND_ACCESSCONTROL', 'I101', 'gfdsa', NULL),
(41, 12345612, '2017-09-01 08:40:00', '2017-09-01 08:40:00', NULL, 251234, 51, 'ZK DEVICE', 2208438157, 'oin7030067032500219', 'ACTIVE', 'ZK', 'WIFI', 'IN', 'ATTENDANCE_AND_ACCESSCONTROL', 'BSFACE', 'dsz', NULL),
(42, 12345612, '2017-09-01 08:42:03', '2017-09-01 08:42:03', NULL, 222622, 58, 'ZK DEVICE', 2208438157, 'oin7030067032500218', 'ACTIVE', 'ZK', 'GPRS', 'IN', 'ATTENDANCE', 'I101', '432', NULL),
(43, 12345612, '2017-09-01 08:47:02', '2017-09-01 08:47:02', NULL, 220617, 58, 'ZK DEVICE', 2208438157, '220617r', 'ACTIVE', 'ZK', 'LAN', 'IN', 'ATTENDANCE', 'I102', 'tre', NULL),
(44, 12345612, '2017-09-01 08:47:58', '2017-09-01 08:47:58', NULL, 222622, 63, 'ZK DEVICE', 2208438157, '220617w', 'ACTIVE', 'ZK', 'GPRS', 'OUT', 'ATTENDANCE', 'I101', '32', NULL),
(45, 12345612, '2017-09-04 11:23:22', '2017-09-04 11:23:22', NULL, 220617, 58, 'ZK DEVICE', 2208438157, 'SL4455566', 'ACTIVE', 'ZK', 'GPRS', 'BOTH_IN_AND_OUT', 'ATTENDANCE', 'BSFACE', 'JP Nagar 5th', NULL),
(46, 23232, '2017-06-12 17:28:53', NULL, 213213, 251234, 3, 'BANGALORE', 2, '5300723240014', 'ACTIVE', 'ZK', 'GPRS', 'IN', 'ATTENDANCE', 'BSFACE', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dmg_deviceaccess`
--

CREATE TABLE `dmg_deviceaccess` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `account_no` bigint(20) NOT NULL,
  `device_type` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `serial_no` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmg_devicecommands`
--

CREATE TABLE `dmg_devicecommands` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `command` longtext,
  `command_desc` longtext,
  `command_id` varchar(255) NOT NULL,
  `response_data` longtext,
  `response_message` varchar(255) DEFAULT NULL,
  `serial_no` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `branch_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dmg_devicecommands`
--

INSERT INTO `dmg_devicecommands` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `command`, `command_desc`, `command_id`, `response_data`, `response_message`, `serial_no`, `status`, `branch_id`) VALUES
(1, NULL, NULL, '2017-06-12 11:04:01', NULL, 'DATA UPDATE USERINFO PIN=120	Name=Sumaiya	Passwd=220	Card=7303642	Grp=1	TZ=	Pri=0', 'DATA', 'CMD01', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(2, NULL, NULL, '2017-05-30 10:09:10', NULL, 'DATA UPDATE USERINFO PIN=121	Name=Sumaiya	Passwd=1211	Card=	Grp=1	TZ=	Pri=0', 'DATA', 'CMD02', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(3, NULL, NULL, '2017-05-30 10:09:57', NULL, 'DATA DELETE USERINFO PIN=121', 'DATA', 'CMD03', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(5, NULL, NULL, '2017-05-30 10:10:22', NULL, 'DATA UPDATE USERINFO PIN=123	Name=Sumaiya	Passwd=1233	Card=	Grp=1	TZ=	Pri=0', 'DATA', 'CMD04', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(6, NULL, NULL, '2017-05-30 10:11:43', NULL, 'DATA UPDATE USERINFO PIN=124	Name=Sumaiya S	Passwd=	Card=9195731	Grp=1	TZ=	Pri=0', 'DATA', 'CMD06', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(7, NULL, NULL, '2017-05-30 10:11:57', NULL, 'DATA UPDATE USERINFO PIN=124	Name=Sumaiya S	Passwd=	Card=0001408926	Grp=1	TZ=	Pri=0', 'DATA', 'CMD07', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(8, NULL, NULL, '2017-05-30 10:13:13', NULL, 'DATA UPDATE USERINFO PIN=124	Name=Sumaiya S	Passwd=	Card=1408926	Grp=1	TZ=	Pri=0', 'DATA', 'CMD08', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(9, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FINGERTMP PIN=101	FID=9	Size=1320	Valid=1	TMP=Sp1TUzIxAAAD3t0ECAUHCc7QAAAb32kBAAAAgwMcMt4pAOYPfADvAH/RyQBNACsPZgBo3qUPWACJAPkPIt6hAEAPWQAFADHRtwDNALIPKQDj3qoPrQDlAG8PX97rALMP0gA2AKLR6wD5AJ4PDAAE35IPjwAIAWQPw94PAY8P/wDUAYDRUwAWAaIPvAAV35oPJwAbAWQPqt4hAYkP6ADnAYTRSgAjAZEP9AA234YPaAA2AU0Pjd43AYYPFwD9AQbRpQBRAX8PWm/MceKrh5sz29JTuFbqs8Pzw3hOK0y1hg63/zeb9gdUzWaPjoMP+iL3HtX2EN8KGQ77DDTHpPvmCvobS4MZzfYZMRLpBgP4biCk9gYcVAcE9t0rSAv+GSMcHf9a1cvwZf+i5GrZNs4HHuIKzf//FQ3IEB82nOoRGP9d25fp4Qe+6l/2xi5bDAoJdYdo6+Emk/nO7foGJ/0h138CeYNSZKp2pSfG+Jf7bdFwDyPtAAJsIdIHxaED1/1AwQoAkscMMh4/wQUAugTfPgbeQwlicQMA8QxnHBkAMSPiQTnAwyP+//3AwP4FwMIgwcDA/8EOxTUrOcH+//3/wDj+/CD+wA0AeCpFwsEcwnx0wQkA6ytfpmvCBQAZNp/D/BwKAMxPJ1QFwMIgbgoAx1Ewtf5nIRAAeGNwtb3BXyGTwgMA82XywxrepGerwsKbAMKeHf/CwH51/0ATA0Fop8PAw8QAwscdwP/BwXZwygBxskeMwMHAaQSEDt6mby3AwMCAwMMdw8AJAIVw5TDDHlYSAHhyPb1qwSHBxMDAi8HMAIGiO3jAcAsAQnwhI1J0fA8Aikwww7xjwpZyIQDPj8+JVf7///7AOf/97f/AN1vAwKDCCN5Wjzp0wliyCwPZl0BawsH+Op8T3hykQGfCWlr+bNQBJKQ6Zm5BGgOGvbQ7VPz7Pvwymv7AScLBwcIAXh0xwMHAhQrFV8fqwXXBkTUAKNyomsBSW8CRwgbBoxzAwcLAwcAG/sGCwG/DwsDABMNjvJkFAATfQAWEJd7m36c4wcA6e8MfwMHEwsKfBnzDqcFpaZEuAcHroSH/U8DB/8PzwYcdw8DDjcCJBYVqIYL/iKIiACP6kCP+/v//ZMEFwncYyMSXYnvCOsLBVQYQkwsTiOoFExoOAP1xAxHPF2clBRB9GRCDwhATxQ7B/8LC/cAQrv4CwEoDEA3mFsDaETU2AD0D1Ww118MIEJI2AAVWPM8RGDwTxcCdYvy4/kALEKBNRsL8IMJRwf0EEBNPg4IIEKJUelSWwgXOiGODw/7AOlJB3gpDAQAAC4BS', 'DATA', 'CMD09', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(10, NULL, NULL, '2017-05-30 10:13:52', NULL, 'DATA UPDATE FINGERTMP PIN=120	FID=6	Size=1320	Valid=1	TMP=Sp1TUzIxAAAD3t0ECAUHCc7QAAAb32kBAAAAgwMcMt4pAOYPfADvAH/RyQBNACsPZgBo3qUPWACJAPkPIt6hAEAPWQAFADHRtwDNALIPKQDj3qoPrQDlAG8PX97rALMP0gA2AKLR6wD5AJ4PDAAE35IPjwAIAWQPw94PAY8P/wDUAYDRUwAWAaIPvAAV35oPJwAbAWQPqt4hAYkP6ADnAYTRSgAjAZEP9AA234YPaAA2AU0Pjd43AYYPFwD9AQbRpQBRAX8PWm/MceKrh5sz29JTuFbqs8Pzw3hOK0y1hg63/zeb9gdUzWaPjoMP+iL3HtX2EN8KGQ77DDTHpPvmCvobS4MZzfYZMRLpBgP4biCk9gYcVAcE9t0rSAv+GSMcHf9a1cvwZf+i5GrZNs4HHuIKzf//FQ3IEB82nOoRGP9d25fp4Qe+6l/2xi5bDAoJdYdo6+Emk/nO7foGJ/0h138CeYNSZKp2pSfG+Jf7bdFwDyPtAAJsIdIHxaED1/1AwQoAkscMMh4/wQUAugTfPgbeQwlicQMA8QxnHBkAMSPiQTnAwyP+//3AwP4FwMIgwcDA/8EOxTUrOcH+//3/wDj+/CD+wA0AeCpFwsEcwnx0wQkA6ytfpmvCBQAZNp/D/BwKAMxPJ1QFwMIgbgoAx1Ewtf5nIRAAeGNwtb3BXyGTwgMA82XywxrepGerwsKbAMKeHf/CwH51/0ATA0Fop8PAw8QAwscdwP/BwXZwygBxskeMwMHAaQSEDt6mby3AwMCAwMMdw8AJAIVw5TDDHlYSAHhyPb1qwSHBxMDAi8HMAIGiO3jAcAsAQnwhI1J0fA8Aikwww7xjwpZyIQDPj8+JVf7///7AOf/97f/AN1vAwKDCCN5Wjzp0wliyCwPZl0BawsH+Op8T3hykQGfCWlr+bNQBJKQ6Zm5BGgOGvbQ7VPz7Pvwymv7AScLBwcIAXh0xwMHAhQrFV8fqwXXBkTUAKNyomsBSW8CRwgbBoxzAwcLAwcAG/sGCwG/DwsDABMNjvJkFAATfQAWEJd7m36c4wcA6e8MfwMHEwsKfBnzDqcFpaZEuAcHroSH/U8DB/8PzwYcdw8DDjcCJBYVqIYL/iKIiACP6kCP+/v//ZMEFwncYyMSXYnvCOsLBVQYQkwsTiOoFExoOAP1xAxHPF2clBRB9GRCDwhATxQ7B/8LC/cAQrv4CwEoDEA3mFsDaETU2AD0D1Ww118MIEJI2AAVWPM8RGDwTxcCdYvy4/kALEKBNRsL8IMJRwf0EEBNPg4IIEKJUelSWwgXOiGODw/7AOlJB3gpDAQAAC4BS', 'DATA', 'CMD10', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(12, NULL, NULL, '2017-05-30 10:14:31', NULL, 'DATA UPDATE FINGERTMP PIN=125	FID=6	Size=1320	Valid=1	TMP=Sp1TUzIxAAAD3t0ECAUHCc7QAAAb32kBAAAAgwMcMt4pAOYPfADvAH/RyQBNACsPZgBo3qUPWACJAPkPIt6hAEAPWQAFADHRtwDNALIPKQDj3qoPrQDlAG8PX97rALMP0gA2AKLR6wD5AJ4PDAAE35IPjwAIAWQPw94PAY8P/wDUAYDRUwAWAaIPvAAV35oPJwAbAWQPqt4hAYkP6ADnAYTRSgAjAZEP9AA234YPaAA2AU0Pjd43AYYPFwD9AQbRpQBRAX8PWm/MceKrh5sz29JTuFbqs8Pzw3hOK0y1hg63/zeb9gdUzWaPjoMP+iL3HtX2EN8KGQ77DDTHpPvmCvobS4MZzfYZMRLpBgP4biCk9gYcVAcE9t0rSAv+GSMcHf9a1cvwZf+i5GrZNs4HHuIKzf//FQ3IEB82nOoRGP9d25fp4Qe+6l/2xi5bDAoJdYdo6+Emk/nO7foGJ/0h138CeYNSZKp2pSfG+Jf7bdFwDyPtAAJsIdIHxaED1/1AwQoAkscMMh4/wQUAugTfPgbeQwlicQMA8QxnHBkAMSPiQTnAwyP+//3AwP4FwMIgwcDA/8EOxTUrOcH+//3/wDj+/CD+wA0AeCpFwsEcwnx0wQkA6ytfpmvCBQAZNp/D/BwKAMxPJ1QFwMIgbgoAx1Ewtf5nIRAAeGNwtb3BXyGTwgMA82XywxrepGerwsKbAMKeHf/CwH51/0ATA0Fop8PAw8QAwscdwP/BwXZwygBxskeMwMHAaQSEDt6mby3AwMCAwMMdw8AJAIVw5TDDHlYSAHhyPb1qwSHBxMDAi8HMAIGiO3jAcAsAQnwhI1J0fA8Aikwww7xjwpZyIQDPj8+JVf7///7AOf/97f/AN1vAwKDCCN5Wjzp0wliyCwPZl0BawsH+Op8T3hykQGfCWlr+bNQBJKQ6Zm5BGgOGvbQ7VPz7Pvwymv7AScLBwcIAXh0xwMHAhQrFV8fqwXXBkTUAKNyomsBSW8CRwgbBoxzAwcLAwcAG/sGCwG/DwsDABMNjvJkFAATfQAWEJd7m36c4wcA6e8MfwMHEwsKfBnzDqcFpaZEuAcHroSH/U8DB/8PzwYcdw8DDjcCJBYVqIYL/iKIiACP6kCP+/v//ZMEFwncYyMSXYnvCOsLBVQYQkwsTiOoFExoOAP1xAxHPF2clBRB9GRCDwhATxQ7B/8LC/cAQrv4CwEoDEA3mFsDaETU2AD0D1Ww118MIEJI2AAVWPM8RGDwTxcCdYvy4/kALEKBNRsL8IMJRwf0EEBNPg4IIEKJUelSWwgXOiGODw/7AOlJB3gpDAQAAC4BS', 'DATA', 'CMD11', 'DATA', 'The user specified by PIN does not exist in the equipment', '3684160300036', 'FAILURE', 3),
(13, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FINGERTMP PIN=101	FID=6	Size=1320	Valid=1	TMP=Sp1TUzIxAAAD3t0ECAUHCc7QAAAb32kBAAAAgwMcMt4pAOYPfADvAH/RyQBNACsPZgBo3qUPWACJAPkPIt6hAEAPWQAFADHRtwDNALIPKQDj3qoPrQDlAG8PX97rALMP0gA2AKLR6wD5AJ4PDAAE35IPjwAIAWQPw94PAY8P/wDUAYDRUwAWAaIPvAAV35oPJwAbAWQPqt4hAYkP6ADnAYTRSgAjAZEP9AA234YPaAA2AU0Pjd43AYYPFwD9AQbRpQBRAX8PWm/MceKrh5sz29JTuFbqs8Pzw3hOK0y1hg63/zeb9gdUzWaPjoMP+iL3HtX2EN8KGQ77DDTHpPvmCvobS4MZzfYZMRLpBgP4biCk9gYcVAcE9t0rSAv+GSMcHf9a1cvwZf+i5GrZNs4HHuIKzf//FQ3IEB82nOoRGP9d25fp4Qe+6l/2xi5bDAoJdYdo6+Emk/nO7foGJ/0h138CeYNSZKp2pSfG+Jf7bdFwDyPtAAJsIdIHxaED1/1AwQoAkscMMh4/wQUAugTfPgbeQwlicQMA8QxnHBkAMSPiQTnAwyP+//3AwP4FwMIgwcDA/8EOxTUrOcH+//3/wDj+/CD+wA0AeCpFwsEcwnx0wQkA6ytfpmvCBQAZNp/D/BwKAMxPJ1QFwMIgbgoAx1Ewtf5nIRAAeGNwtb3BXyGTwgMA82XywxrepGerwsKbAMKeHf/CwH51/0ATA0Fop8PAw8QAwscdwP/BwXZwygBxskeMwMHAaQSEDt6mby3AwMCAwMMdw8AJAIVw5TDDHlYSAHhyPb1qwSHBxMDAi8HMAIGiO3jAcAsAQnwhI1J0fA8Aikwww7xjwpZyIQDPj8+JVf7///7AOf/97f/AN1vAwKDCCN5Wjzp0wliyCwPZl0BawsH+Op8T3hykQGfCWlr+bNQBJKQ6Zm5BGgOGvbQ7VPz7Pvwymv7AScLBwcIAXh0xwMHAhQrFV8fqwXXBkTUAKNyomsBSW8CRwgbBoxzAwcLAwcAG/sGCwG/DwsDABMNjvJkFAATfQAWEJd7m36c4wcA6e8MfwMHEwsKfBnzDqcFpaZEuAcHroSH/U8DB/8PzwYcdw8DDjcCJBYVqIYL/iKIiACP6kCP+/v//ZMEFwncYyMSXYnvCOsLBVQYQkwsTiOoFExoOAP1xAxHPF2clBRB9GRCDwhATxQ7B/8LC/cAQrv4CwEoDEA3mFsDaETU2AD0D1Ww118MIEJI2AAVWPM8RGDwTxcCdYvy4/kALEKBNRsL8IMJRwf0EEBNPg4IIEKJUelSWwgXOiGODw/7AOlJB3gpDAQAAC4BS', 'DATA', 'CMD12', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(14, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FINGERTMP PIN=126	FID=6	Size=1320	Valid=1	TMP=Sp1TUzIxAAAD3t0ECAUHCc7QAAAb32kBAAAAgwMcMt4pAOYPfADvAH/RyQBNACsPZgBo3qUPWACJAPkPIt6hAEAPWQAFADHRtwDNALIPKQDj3qoPrQDlAG8PX97rALMP0gA2AKLR6wD5AJ4PDAAE35IPjwAIAWQPw94PAY8P/wDUAYDRUwAWAaIPvAAV35oPJwAbAWQPqt4hAYkP6ADnAYTRSgAjAZEP9AA234YPaAA2AU0Pjd43AYYPFwD9AQbRpQBRAX8PWm/MceKrh5sz29JTuFbqs8Pzw3hOK0y1hg63/zeb9gdUzWaPjoMP+iL3HtX2EN8KGQ77DDTHpPvmCvobS4MZzfYZMRLpBgP4biCk9gYcVAcE9t0rSAv+GSMcHf9a1cvwZf+i5GrZNs4HHuIKzf//FQ3IEB82nOoRGP9d25fp4Qe+6l/2xi5bDAoJdYdo6+Emk/nO7foGJ/0h138CeYNSZKp2pSfG+Jf7bdFwDyPtAAJsIdIHxaED1/1AwQoAkscMMh4/wQUAugTfPgbeQwlicQMA8QxnHBkAMSPiQTnAwyP+//3AwP4FwMIgwcDA/8EOxTUrOcH+//3/wDj+/CD+wA0AeCpFwsEcwnx0wQkA6ytfpmvCBQAZNp/D/BwKAMxPJ1QFwMIgbgoAx1Ewtf5nIRAAeGNwtb3BXyGTwgMA82XywxrepGerwsKbAMKeHf/CwH51/0ATA0Fop8PAw8QAwscdwP/BwXZwygBxskeMwMHAaQSEDt6mby3AwMCAwMMdw8AJAIVw5TDDHlYSAHhyPb1qwSHBxMDAi8HMAIGiO3jAcAsAQnwhI1J0fA8Aikwww7xjwpZyIQDPj8+JVf7///7AOf/97f/AN1vAwKDCCN5Wjzp0wliyCwPZl0BawsH+Op8T3hykQGfCWlr+bNQBJKQ6Zm5BGgOGvbQ7VPz7Pvwymv7AScLBwcIAXh0xwMHAhQrFV8fqwXXBkTUAKNyomsBSW8CRwgbBoxzAwcLAwcAG/sGCwG/DwsDABMNjvJkFAATfQAWEJd7m36c4wcA6e8MfwMHEwsKfBnzDqcFpaZEuAcHroSH/U8DB/8PzwYcdw8DDjcCJBYVqIYL/iKIiACP6kCP+/v//ZMEFwncYyMSXYnvCOsLBVQYQkwsTiOoFExoOAP1xAxHPF2clBRB9GRCDwhATxQ7B/8LC/cAQrv4CwEoDEA3mFsDaETU2AD0D1Ww118MIEJI2AAVWPM8RGDwTxcCdYvy4/kALEKBNRsL8IMJRwf0EEBNPg4IIEKJUelSWwgXOiGODw/7AOlJB3gpDAQAAC4BS', 'DATA', 'CMD13', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(16, NULL, NULL, '2017-07-13 10:32:35', 111000999, 'DATA UPDATE FINGERTMP PIN=127	FID=6	Size=1320	Valid=3	TMP=Sp1TUzIxAAAD3t0ECAUHCc7QAAAb32kBAAAAgwMcMt4pAOYPfADvAH/RyQBNACsPZgBo3qUPWACJAPkPIt6hAEAPWQAFADHRtwDNALIPKQDj3qoPrQDlAG8PX97rALMP0gA2AKLR6wD5AJ4PDAAE35IPjwAIAWQPw94PAY8P/wDUAYDRUwAWAaIPvAAV35oPJwAbAWQPqt4hAYkP6ADnAYTRSgAjAZEP9AA234YPaAA2AU0Pjd43AYYPFwD9AQbRpQBRAX8PWm/MceKrh5sz29JTuFbqs8Pzw3hOK0y1hg63/zeb9gdUzWaPjoMP+iL3HtX2EN8KGQ77DDTHpPvmCvobS4MZzfYZMRLpBgP4biCk9gYcVAcE9t0rSAv+GSMcHf9a1cvwZf+i5GrZNs4HHuIKzf//FQ3IEB82nOoRGP9d25fp4Qe+6l/2xi5bDAoJdYdo6+Emk/nO7foGJ/0h138CeYNSZKp2pSfG+Jf7bdFwDyPtAAJsIdIHxaED1/1AwQoAkscMMh4/wQUAugTfPgbeQwlicQMA8QxnHBkAMSPiQTnAwyP+//3AwP4FwMIgwcDA/8EOxTUrOcH+//3/wDj+/CD+wA0AeCpFwsEcwnx0wQkA6ytfpmvCBQAZNp/D/BwKAMxPJ1QFwMIgbgoAx1Ewtf5nIRAAeGNwtb3BXyGTwgMA82XywxrepGerwsKbAMKeHf/CwH51/0ATA0Fop8PAw8QAwscdwP/BwXZwygBxskeMwMHAaQSEDt6mby3AwMCAwMMdw8AJAIVw5TDDHlYSAHhyPb1qwSHBxMDAi8HMAIGiO3jAcAsAQnwhI1J0fA8Aikwww7xjwpZyIQDPj8+JVf7///7AOf/97f/AN1vAwKDCCN5Wjzp0wliyCwPZl0BawsH+Op8T3hykQGfCWlr+bNQBJKQ6Zm5BGgOGvbQ7VPz7Pvwymv7AScLBwcIAXh0xwMHAhQrFV8fqwXXBkTUAKNyomsBSW8CRwgbBoxzAwcLAwcAG/sGCwG/DwsDABMNjvJkFAATfQAWEJd7m36c4wcA6e8MfwMHEwsKfBnzDqcFpaZEuAcHroSH/U8DB/8PzwYcdw8DDjcCJBYVqIYL/iKIiACP6kCP+/v//ZMEFwncYyMSXYnvCOsLBVQYQkwsTiOoFExoOAP1xAxHPF2clBRB9GRCDwhATxQ7B/8LC/cAQrv4CwEoDEA3mFsDaETU2AD0D1Ww118MIEJI2AAVWPM8RGDwTxcCdYvy4/kALEKBNRsL8IMJRwf0EEBNPg4IIEKJUelSWwgXOiGODw/7AOlJB3gpDAQAAC4BS', 'DATA', 'CMD14', 'DATA', 'The user specified by PIN does not exist in the equipment', 'OIN7030067032500219', 'FAILURE', 3),
(17, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=0	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKroAUQBQ1Mg+fgX2Bb4Ohxm/DIVrljmjYwN1h6kLO0e3D9PE9cGMxHOE+NWzFLgJxZnNoHfYHzlZXDsbSV8JVckaGg/Zjw6Ow4uG0HGOscXwzPDLpMuE6FNpSnsxayjTOJ94nrgaeAXoGqwN646sk3mP+YH5wdnh6c+F6fFLg1nxCflN/sf84nwD+I/wD/IN8x70Av2HjYfxh1Ovwc9A5yFfAiugN4A8qCWg8tTjUPt0dnZfcR9xWNnN2dzKBcMfQu7CjyJPZPdBN0B1wwUls+NyRwsSclKMelj6Gnhd+I7NF8Gywp7On8d+A3/B70HWw8FxwsPTw88R0nPu4Pxw/eBdcFXEnUG/YH7gWWZ3sjuHJ7PPy4Kzg0nBR8pY2Qefwh+CH8EPh1nMx0n2YZzx8+D3cqU3JbMjU4JrgXuDTaCbYY+Vru+OnYjPC+9DR0vBwEDAgkGAwEDAQUDA0JUBwgRNf9ABRAWHUQ3CQEADwQNDAgEBBElCQMADj8UAwEaFgUBFxQMEwMIEggBAAUCBSECDRhUCws5/xUCCCd/MQQICihzGg8GAAgNKg4KCQIaMw0NBhBFEwEDOQsCABwCAQgCCQoCAgABAQMcAgsalAIILLEXAgEXaiYJAwMkoh0JAgAGBFsgAQECBx0JAQAMNxgDA3ArDABIBgQBAAEICAEBCggKJAMGJsUDBSSUMQIHDyMhCQ0DFzcUEQICFQ8zKQkDAySIFg0DEn0lCAwgGQAAFQEABQABBwUCAQIGBDoDBwuiBAUFGgkEAgABDQULAw+jBgcEBRQX/zcECQseGxsGAAwVEQkFixEHAykBBAAAAQ0AAAAAAAAAAAIAAAAAHmYAAQJa/wkCAAUT/5AAAAAAAAAAAAAABQgGAAALBwQBAAMAAAABAwEBAQACAwACAwEKGgACDRsEAyjEDAQIGtojBAYMLooZCQEABgkkFwsOARLaEwYBDUsSAQE0HQMBMgIFBAICBgsJAQoCBSMBBxKECQ0nZhQBBhU2KQYCBjNqFQoDABIMFR0DAwgcEQcGACiZDAoH60EHACcCAQ8ACwkBAAAEAwAiAhAT/wEMIR8dAgAUMg8NBgAc/xIJBgEJD1EgBQkHHjscAwIJCgkCAisIAwEfAQIDAAANAQAAAAAAJQAAApoAAAAAAAAAAAAAAQQAAwkAAQEAAU3/HAABAQT/jwAAAAEEAgAAAQIDBAICAAAAAgMAAAQHBAMCAgECAwILBAECAyxcBgMICi//RwYCAgoJFQUDAAgTEgwCARIPAgIAIQkBACgICAMCAA8BAAAAAAEHAAAFBgAEPIkQAgkv7DEFAwMZ/EAIAAADFTMPBgkAEqsgAgADHhACAEENAwAqBgIEAAsFBgQAAgAAJgABH5ESDxf/LgMKBwkcAQMFKSUMCQEACBFGGwUBAykvGAUAGDcWCAnrGwEBGwIBCwIdCwQBAAICAg4AAwgdAgESTRQDBw9uHQMJCT69JgIAAAYKGgkGAgQ2bQoEASGvLwgDoycIBDoFBgMABgwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHSIAAAAAFv85AAABBxMAAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD15', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(18, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=1	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFLDoAUQBQ1Mg+fgXcKtwLRwOfBSdvM9mjY0N1V7GHU6bRB9Pm0eTVRPmE+MK4crgBy8jLcwP+BykbHjsvC08aVa2bWo/Xj9KOwYrDkHGeUeYwz/j6hOqA8EXhRXtWfTh/Gx8YGfkaWApLj/kO04/rg+2P6aG9wdnjpUuX4dXhjVPYkZzOfJk4pngDeA/4jvkV/AL7gveCbZWwiWmfws/Ax4FHjGWAWZjWzHO48thyeP/wP/AH8gtxGsaYSNvCG8ubQp5CYyhvJyWg5ZMej0aZk0QjVyNGZ3ri2Mp5ksxa+PrMEsjPxpZFd0MuFwpLjheKw4KHjeejY6NLZWNmQcdp80wXSHLMN0hzYG5Ifyw/Xh9YD1cG6YDHo0Hhw/NDJUdBywfPM8U3T5HF0cXd4GXhdeAvBiU2D88mdYDPgGuA4+H7oddlo32Dh4HHgMnIycDBgAAAgIHDAINCgwFBUljEQIVOP89BQsONlw3CAQACAIFDAQGAQsTBwACECkMAAVDHAAAHhIJHQQMCwcBAQkEABMCCRlMCQUrxxgJBSKtNQkGBS1zIgwBAAcPKAcHBQIYaQ4GAhNBHwIGPBMDABcICAcCCAsFAQABBQQVAgQfZgIEPJsnAQAbgywICwUs9ywIAQEHBEUlAQMADwoKAAASQBIAAUkbBAE0BAEAAQELCAcBDAMLIAAFMNMFCxudMQIBDQoTBgkBEScKCgMDEBo8KAcFBB6gHA0CC3UgBgJUGwMBDwQCAAAGCQgCAQIEBEgCAwrJAQMIJQsGAgICEAYEAxqlCAYDAhUP/zoFAgweEBAFAA4QEwgHnBAHAi8AAgAAAwoBAAAAAAEBAAABAAABIlEBAABA/yIEAwEa/1YCAQADAQAAAAcABQ4AAAANHQQBAAwCAgEFBAQDAgAFAwAAAQIGIAABFRkAATnWBgMGJdwkBAEHKMUZBQEACQ8zDgwLABqiDQUBBy4ZAwJBDQQBJwQCBwEBCg4JAgYDAxcCChTNDAclfRUEDBEyHwoICCNWGQwFAwsINBgGCgQaEAUIAR5dDwcG4TMGAS4HBg0BCwYCAAABAQEpAQwc/wAFGDw7AAEIJxIEBAEp/yAIAQAED04kAgABEicYBQAGBgYAAyQAAAA4AQAGAQUFAAABAAAAKwAABKEAAAAEBwAAAAAAAQEABAABAAAAAUv/JwAAAAr/kgAAAgQGAgABAwMCBQEAAAABAgIAAQIFBRABBAkQAQIOBwYCAR88BQEDCTT/MgICAQYFJBMEBAUbMREEARMoCQQBHggCARcIBwcBAQ0DAQAAAQALAAMFIgEENoMMAAQxmyIEAAMw/zgPAAAHDkkZAgYBD2ceAwEMIxQCA2oaBgElAwQIAQoGCgkABgEGIAADFmwLDAvkMQMEChQWAwELIC0UDgAACRceEggAATAnDBACGE0ZCQj/JQkAMAQEFwEKDQIAAAAEAQcAAgQAAgQbXAsBCByDPwUKBFa2LAcCAAcGCQIDAgYsSQsBARxmFQIB9xwKBlgNBAYBAhMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGxoAAAAAFP9IAAAADxoAAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD16', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(19, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=3	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKroAUQBQ1Mg+fgX+iV+JDljPC6Fpws2Hacdlh3FHMUexR5LklUWSxHPE+uF4gbghy7HLfhH+A+UYXH5PyE+Y1elXMk+Uj4LOgYOH1jGHs+exzbjnoPuQ44HqQ+8qfjpvqn86FPgNOA9ojaiO+4/ng7mP+aPZAfni4crH6ZrD1+OZo4mOPOc9rDmBeYz4rPgVeQSrgy2DrZexC5mXxK/CB4jvAKeQB52smOsY+Pz4+ezwLPDf8K/xFMnyydnjGscdoE5Aj0WPVfuEK1PvlAsZuQzI5elGQXCBWF9RlczT2ObBM8EWyNtI18GeQ77AzkLKzM0zxMfDw9LDktOTwdNx3MjTSOVkDUH8wNtg9eGfcL4w3HCNrkz0G4ZYhNnHGtWTww/DHclXQ77LH0Jk8GdwjXDdcLRzpHClbwV3AbeBN6ixktWGZM5XnkTbA+8FzwdAwAAAQIFAQEGBRYEAENwBwYGPf8mBwgULU1KCQMACQEDBwUIAQkSBQAADVQKAQEsDwEAFA0HFQUDDQgDAAwFBhABCSBkAhEw0iUBCCBnPAcJCSt+HhYDAAkLMAoFCQMURw4FAAwfDgMEXg0DADYGAw0BEAkGAAADAwcYAQsVNgIGIzkgAgUYuR0IBQQh/zELBQAJDmgeBAMKGnIXAgAOKyIFABUQCgApDgQBAgAIBwkCDAQLJQAFK+AJCB6SJQIFCxMQBAcDBiwJAwAADRFBQA0CBxSYJhECF4ArDQsgIwcCBQABBAECCgIBAgEBAjkDBw6XAAINHgwCAQAKDgkJAgxpCQQEAhcU/ykABBMpFBEEAAshDQgJlg8IBBkCAgEAAAwAAAAAAAAAAAAAAAEBGUUAAABX/yIABQML/3MAAAACAAAAAAAAAAAAAAACAQAAAAAAAAACAQICAAACAgAAAQAEGwAAGCkCAyveBgEJIv8mBgQLH4gpAwEACw4sCAYKAReDBw4EEJkSAgIbEgMAGQIDAQEBBwkGAAsBBSgAAxmQCQknuA8BBRZrEQgBBiZUEBMCARMSchkGAgMoFQ4JBBxtGAQGgB8HBCADAgMCBQoFAAAAAgAmAAgX/wADIT0TAQESMRYJBQEpwxIMAwAIH5IVAgQFGGEkAgAPDwQDAXENAQIuAAYDAAQFAAAAAAAAKQAAAFQAAAAAAAACAAEAAQIBAAABAAAAAEb/HAAAAgj/iwAAAAMGAAIAAQEAAgAAAAAAAgkAAQAGBQMAAwMHAwcQBAUEBRYSDAUJCSr/HwkEAQsDBgUACAMOAQMBABISBQIDFw0EASELBAkDBhECAQAAAQAGAAUILwECH0sVAwIwqSINBwQv/0UGAgEFCjkbCAYFETsZBgMGGhUBAXIQBABCBgQHAQIFAwIAAwICHQECG0YDDiu4KwIIDTYoCAMFNkcUDwIABw4mFgQCARo7EAgBG00ZCAb/FwMBMQIACwEPBwIDAAEBAgQAAQUQBgMVOBACBhE/JQICDjldGAcAAAgEAwQCAgQ+4AYCAB3/OAYCjzIJAjMICAQBAQUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGiUAAAAADf8wAAAACAgAAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD18', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(20, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=4	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKzoAUQBQ1Mg+fgX2RZwG5nzPG+XtRPznZUP01yVHOce1h/Hl0EHV5PjE+OPyw/gxwWHH/GT+EWMcXjhp6E6YVa1VOE80j5DOQ4vDkZrO06eIz9njkOvA4dTjcf8ofypPqG8qXLkVGIWrBaiM6w/rk52P6ZH5AdnC6cPN4ZThleuYo5qPHMcc7jiHOMv4DPia+Av5gqWK7YXhC0mOy4/JpxDnEaOQp5CumG2Y+Hz4uN3wLXDf8K/yjOaqy5zCGMGXoq5io2OPZWOA61B+rAuSvQ4hqulGoXKhWOVRrOzZeEjEhcDXpF7IW8G+QfrA7kDKxsy2xudKxtLHk+Oo5dHj58RzYFnCSVB9wH7gf/A/cT8w/3CPLkyyGxJ4htmkGMSf4R/zN+EXI5PBjcHecMnw22RVcONxpHGzMwVzATOBN6hzmnW3JUdR1yPLKcfBy8FAwEAAAACBgENBBYBBUCvBQAGL/8oCgYOI048AwAAAgAHDQEDAQcWBQEBB1YJAAEkCgIADQkEEAMGBgcBAAYHAyECDSJlBA4sySgECxphKgwECypyIQsFAQQQQxEFBwMVaQ8JBg4mIAICTwcEACIBBQIADAoCAAACAwEbAQoRLwEDIjMWAgAcxw4EBQIb/zMEAwAIDKsXAAIFGHweAQARGh0DABgODAEkEgwEAQMIBAcDDQEMJAEGLrMHCDC8MwMFDisfBQUIDj4PDQEBEBA4IgYGBCN8Fw0CDXoWAwkzFQIBDQIBAQEECQUBAQMBBkkABA3hAgEHKgkDAgMGDgQFARdfBQYEAxod/ykIAxAiHQsCAAkUDQ0FcREMAh4DAwAAAQkAAAAAAAAAAAAAAAAAHmIAAABF/xUAAAEN/20AAAAAAAAAAAAAAAAAAAACBAAAAAQAAAACAgABAAAAAgAAAAEIGQACEB4AAyDuBQMIHv8fBgYJHWQmBQMADgwzDgkIBB+GCQoFCZQgAAIaEQEAGQMCAwECBgUHAAcBBCUABBGoBggqxxEBBhZXFwYCAylFEwwAARUMZCMDAwQkGwwLARaVIQQEgRgFARMCAAMADA4CAwEDAQceAAcT/wMFLEsWAwAPKx4JAgQrxQ8IAwAFDm0UCAQHFzIUCAERHgkEBIMXBAA+BAECAAQGAAAAAQAAJwAAAIQAAAAAAgAAAAAAAAAAAAAAAAAAAEv/GwAAAQz/egYAAAQEBAEAAQEBAAAAAAAAAQMAAAIGAAUAAgIBAAAIAQABBQ8NBgMJByv/GQYAAQcECwEAAgQMEAMAAAgTBQQCGAMBAB4OAwUAAggEAQABAAAKAQUGLAQCJUkXAQUrkSEKBQcq/0YLAQAJB0QbBQQBETMUAwAUMhgAAnIlAQBPCAMGAAIKAwQBBgMBFwIDHEwIBCHFJwIDDy0fAgcEK2IkDQIABgkYFAQCBBEgCQUBHFoMCgf/NAEBOwQADgIOCgUEAAMCBgsAAgQeAwISYhMFBgs5HgIKDixlGAcDAAwQMRMGAwRYPxcDACPaUw8Elj4NASULBQQDAxMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAQAAAAAJv8iAAACPhwAAAMCAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD19', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(21, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=5	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFJzoAUQBQ1Mg+fgX+Vl5UpxtORw0oxO+DLctlj3NDM0bxx5bkleSRxHeE+vJ5NLgw5MDE7DHeE00c1D5JqNvYzaZPsk+Wz5LOgYKH1jEGMe4zTHjzoP+A4tDnY22Id5p4iB+aSviLuk8oj6gP+IejA7zX+BG8IXhi5YbT6ZWhs/mFoYr4nY2e7DmNON1oDajD6meqAqvjrLW5O8hOxM3Dx5NrEouBT4eumO0IzNz8eOz4Z/DX8m3itMXzzNzJnsGXgZXgrzIHF2uRxxPMmQ+erLxKzO3iR+Dh8oPyrcTJyM3I2cnXi1WAW0GbQ8pFy2HKxMszzdLCIsfGw2PjQcdR50xHSGfEaUTx4HHgX/E78R5xj3GOrcwxytbNNMrn3keP4Y8Dl2UDA+9MrUHM8HPwTfHo8HXxDfGSM1D3EBcANwDx2BTlce8J25HNEv8F7sbAQAAAgEFBAIJCyQBBD+XDAICLv8vBAgONT4oCAEABQEECgIEAQwVCAQAD08LAQBTFwAADQwDDgUIDQQCAAgGBBcADB90ChZFqiwGBRlaRBMEBTN+IxYDAAkMJQUDBAQKSQYDAggLBAMElgcEAjgFAgwADQsJAAACAwUUAAMXOAEGJ1YZAQgZvxgLDAMX1zkCAAEJG5kbAwALG3IsAwAPHxoMAgwKCgIUCgkCAwEGBQoDDQILJwADK9sMASCvKgIDBSMMAQQFAQ0FBQEBEQoyOwgDBCGCGxEGD78sEA0lGgcBBAIAAQEECwMAAAIGAkAACxCrAQIKJg0FAAMYEQUBAwVKDAUEBBUR/zECBQ4ZDxUGABInBwgElB4ECBIAAwAAAAoBAAAAAQEAAAAAAAAAKk8AAABM/yoAAgAA/2UAAAABAAABAAAAAAAAAAAAAAAAAAAAAAEAAAQAAAAEAgEBAgEFIQAEESYCBDPDDAEIEv81AgMHIG8fAQAABBBaEwcLARyODwwHD1EhAAUkEAMAFgQBAgEABQcIAgIBAC8AAiOSBAMxpBQEAxzKFAMCAxVGDAUEAQ0SsyEEAwIfLRQDAQ1IDwgCXhAPAQ0FAwYCBwgDAAABAQEnAAQj/wEEMl8wAQAYhiAHAQEomRMHAQAKFHQZAQYFEkAeBQEMHAAAAWUPAAAZAAECAAcCAAAAAQAAJgAAAlgAAAACAwAAAAAAAAAAAAAAAAAAAU//GgAAAAX/hQAAAAAFAgEAAAAAAAAAAAAAAAMBAAACAAcBBQIEAggLBAICAxYiCQoIDB3/IwgDAQUEBQQCAwAJAgIAAAQJAwACFQYEAiUKBAYEAzQDAAAAAwAMAQMKJQAAIycVAAMkiB0HDAc9/zkGAQARDFEfBAYGHBQYAwAXUxwBBJIhBQFABggHAwQIBAUAAwECFwICHWEECCiqMAIIGE0bAQADLD0bCQAACwsODAYBAx8bCQQEHm4VBgv/KwECGQQCDQAQCAYCAAICAggAAQkTAwEVSw0CDw0xIwgEEkBNIgsCAQcFIAgFAgVFgAQBADOpPgQD1DkIAlkNAQ4DBA8AAAABAAQFAAABAAAAAAQBAAAAAAAAAAAAAAAAAAABEhsGAwAACv8sBAEADgIBAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD20', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(22, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=6	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKDoAUQBQ1Mg+fgXHRo5Vg2sHX6ruC6+I7wmlhOlHqkLMx57xkqGR4PWA+NT5lHmYzIDd2HsOE5sMni6bLMssjKLPOsuSz5LBk+OF5nPmU87X5nj4yHzA6DjPc/2EfZRfiLuaTuibMp+un/IM/IfxB/xH+AbMYHxx0YLDydupuziFsYtSivCKOjkSuM2q2qhEZg6oRi5urBeYPkgqw5vDmtGPhXOBH4UmxP8AzMj8POxoZujt6Bvg5w7mzN3DNsBtwzHDA7XDNduDj4Ofh4+Gpg5gPOfiY/Lh8kHy3EJFyPzJrMnl4tdElqWPY5inyyeYpwmnoK9CLueqY6L5qKGq7uRniFVI6UD/YNfg9/E38QnxgvGL74oxiMbDW8+HxwXH5YcHi+Wls5/M/saJcOXwy/BTMCmxCnERswrzgNtAc8RnzGLWZ8wHzMLuE59L3gKAgAAAAEFDAIJE0IICTaVDgEDLM8xCwULOXsgBwIABQETEQMHAAQVBgMADk8NAAGkFAIAEwYAEAQJCQgEAgICAhEEDSNxBBc5jSQHBypgPg4EBz6dHhcDAAsHGggECwMKHgQAAQoTBAEEvg4CAzwFBQoABRAHAgABBgYPAQIQEwQHMykPAQUqtxwICwgk6UAJAAAHHX0SAgcFIVw4BQAUWyEFAB8FBwEVBwUFAQAICQcDDgQMLQACJr4HBg/HKwMJAwQKAwMHAQsHBgMAEh4mLQwCA0NhFxgJF+gyBg8YIAMABAIAAAAFDAMBAAIAAVcBBBOCAQILOBQFAAMIDQQFAQI1CQUDAQwW/00CAg8qMg0DAA5zCwwEhyAEAxEAAAAAAgYAAAAAAAAAAAADGgAANH0GAAAv/ykAAAAA/zoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQAAAgIJFQICEBsBATuoDgIDFeBHBQMBJ3ATAwIABwxdDwgGABnhHgUBGUkQAQE0FAYACgkGCgMCBQQBAAIDABgAAhBFAQETNBEDAhr/EwYEBhFwQQIAAQkl1hIDAgMbWjsEAQxmFAIKVhcDAxAFAQYBBgUDAgAEAgIYAQQWvQMFKUgYAQIjqxYHAgMduigLAQEGFkMbAwEHIX8aBQEMPxYCAm0LAwEWCAABAQUEAAAAAAAAKQAABicAAAAbBAAAAAAAAAAAAAAAAAAAACv/GAIAAAX/PgAAAAMFAAAAAAAAAAAAAAAAAAECAAABAAUAAgEIAgIHAAADBQ0PCgMCAyz/GgUAAAUEDAICAAYNAggAAA0VBQUEFwUEARwEBAQAAQoDAgABAwAQAQMJQQAEIDcPAgIMFAsMBQI7lAQHBQAMCksbAQQHGiAYAgAcgBoFBf9FCgBdBAYHAQYKBgMABQAADgAAE18LAx6XKQIIERQPAgEHJFMQBQABCAYDBgEBBh0cAgQAKvAWBgj/SwYBGAMAAQEWDAMBAQACAgwAAAUcAQEQGQ8EDAcuJwICCjE8EwYAAAkCBwYEAQM2RgUEAUL0MwcC/0UDADwGBQkBAwsBAAIAAQEAAAAAAAEAAwoAAQAAAQIAAwAAAQEAAAADDQsBBQEBLP8cBQEAJRYAAQEDAQABBAABAAACAAAAAAAA', 'DATA', 'CMD21', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(23, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=7	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKDoAUQBQ1Mg+fgXuRd5Uw8uAQ6ltoG+M7Y1lgeNGK2flZ5Zk1+XVxHfAcsZ5h1uhwWPwcnHyc2kZmX5LaIv8TafOOqeW55Kmk8OXxnOOE4djjku4wbDAsmnycz2SOZI/nDqaGui6uocsx+DG9Efiwz0Da5NXE88Q2ZjLgc3R2zjFsc8yxXCKNjqiuIzqVqiM7saqQqbiLjfhO0wNzZ3DnYFN0XuBH4UuiP8Mztz8POT4dvDt8B3hNUz0zEzJNshNwR3BHxFPZUuDz4Pfg42HnJ5InOXi5/LB8tHz7GlV2XXJtcnr4hVAHwnnI9yjw2PpswmzsLMCkuWqZybhqEMx62RnmHfMqURvYPVg95g3cQXjwnPK64uzipLJMs5mz0bPZ48Bi2EFM+dHJsRN8M1w7XBXcOezg/OJN0jzAFvAM8Bz6BbGZc4FzMHtFW5B7iXAQAAAgMFAgEDDikBBTPKDgEFIOcdAQMHOngQBwAABgULCgQCAAIqCwQACz0TAgO/GgQAIgYBDAULBgUHAQQAAQ0FCRetChMmxB0ICxklMwYFCEVkIRADAAQFHgMDAwQJMAcCAQcTBgcC8hQEAT0EAAoCFgkIAgACBgMPAAIKBgIEGCMOAwkgeh4ECwIh/zkEAAAHIokOBQkFH5g0AQASSCYDAB8JBQAhCgkGAAMNBQcDDwAGGAACILAIBybXIgIICh4LAAUIDSsKBQAACAsgGQgBBTNWIRYEGes0BhImJAMAAgEABAEJBwEBAAABAUAACROcAAIFKQ4DAAYcDQUAAQUjCwIBAAob/ykBAgU7VQkHABmwGgsLUhwHBBABAwIAAQcAAAAAAAAAAAABBgABLFMFAAA1/yMAAAAA/0MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIABAIDGgEDChwEAzekEQEED7pJAwEBL34QBAEACxFdFwUEAyLKFgQBEV0VAQFXDQMAEQIGBwIBCQQDAQIFBhgAAhhEBQUgVw8DBh3xHQIDBBRMMwYBAAoW3hcFAgMVRSsGAA9aEAQBZRsNAR0GAAgBBAQAAQECAAEfAQYRmgMFKUYaAwUioBYIAwAh9y0JAgAEElAeAwMBJGkRCAIPRgwAA3oLAAAOAAUDAQQDAAAAAgAAJQAAAVMAAAAEAwAAAAAAAAAAAAAAAAAAADb/EgAAAAT/RgMAAAEGAAAAAAAAAAAAAAAAAAIBAAAABAUAAgMEAQIGAwEAAwgOCwUCBCb/EgQBAAEBDQUGAAMHBAMCAQYEBQABFQcAAB8EAwEAAwYEAQABAwIJAQYNQQQFHDYbAQEMERQFBAI1dwULAAAODGIVAgUDFzcbBgEpyBUHAf9CCQA7AgIHAQQMBAYAAgEACAAADzwFARqoHwAJEhUVAgIEL2QZCgAABwgDAgMAAiUjBwYAKcUlBwT/MwQALwMACQIUBgMAAQQBAAwAAgcmBgIRLwwEDwg6IQIDCjs7GwUAAAcFBgUCAAItKwMMAjvdMQYC/1sDAkAOAwoCBgwAAAACAAEAAAAAAAAAAQYAAAAAAAAAAQAAAAAAAAACCQ4CAAABPv8QAgIGSzsAAAEEAAABAQABAAAAAAAAAAAA', 'DATA', 'CMD22', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(24, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=8	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFLToAUQBQ1Mg+fgX+hV+VpXqOn4erhm2HI4M1D3FFk2bRRtHk0OTQRL3EeuE4KLgxxOHPfRp+Bke8Xj7FqU+aXqXHMl4Vj5PcwsJE1ZPGE+ewTJjxwPLA54liY22Yb5ptih2aHPKdeM9vj/GMdI9xkfyP6bH8Qdhk1cPG4ZVh0vmLAZbNuo2c4PiNeejaDOj7XBrpgXaDqYWyWynNws/Cr4Kjgh+GDYRujO2Y5Njs2OT4bfhW+SP4NMjw2M9iOcEXYh9CDxY/Jj2GL4Uenk2euVto2M9Ta3rkeSPZKMml2XJYcslXQ1dSW8MbUeTDLUT0yyWW4lOTc4pRx1OiYcVR6kinSPbE40TX4FfgWfAb8DziPHUmyxmWMEMhI2ZjDSeHZYcni2GLR9vSy8Lo8Qrw6/JLtiCyCHYznxAfINcAA2Yn4CfXYc8jR2LLA0bGwsLBAAAAggCBAEGDicACD2gDwIFL/8kBQcGOW8uCgEABAEJDAEHAAgJBAEAF04JAQBtEwEAGQ8CFAUICQgFAAUDARYBDxpZBxEpbxwFBheEJwwEBi/9IBwCAA8LHwYBCAIVTAUBAgoXDAQFgQkDATcCDQYDBwsHAwADBAQLAAgKHwQGI1sTAgYXgCUHBwsm+S8EAwIIC2odBAMLL48UAwAfNiUFACQUBwIbDAQHAAQJCgYECwQFHwABLNsNBiK+LAYJCBgIAggMCQ8DAQABGgU0Mw0DAxxuGgkDE3cmDRhVJAkCBgIDAgAJEAIAAAEEA0cABAycAQUHLw8FAAMDCwkIAhF/BwoDAhAW/0cABA4iCw0FAhIQBw0CthgGBSQBBAABAQcAAAAAAAAAAAAAAAAAISUAAAAu/yQAAAAL/zMBAAAAAAAAAAAAAAAAAAABAAAAAAIAAAAEAAABAAEAAgACAQEGGQEDEigBAyaUCwEEHP8ZCAUILGQPBAIACgtGEQQHACGmEQQDCXASAgJWDgABFQcEAwEGCgUEAAMAAigAAxhlBAU2Xg4EBxC1KAMEBR55BggDAA4RjRwGBAQZFxAEAh5SEQUFrjEIAS0DAwIBAggFAgABBQAaAQkiaQMHKddVAwIMJygGBAQj7RcFBAIGESUYBQEDNWsRBQERQSsHBEcNAwEdBAABAAMIAAEAAwAAGwAAAW0AAAAABAEAAAAAAAIAAAAAAQAAAS3/DQEBAh7/OwMAAxMkBQAFAQIAAAAAAQAAAQQBAAIAAAIAAAECAQAGAgACBhIbCAIFDDD/HAECAQoFIQEAAgcSEAgAABAmDAIAHRcEAhsLBQgDAjYBAQAAAQADAAYPTgEKNEkPAQcZXxEJAQRBzhwTBAINCEsNAgUHFRcRAAAdfREHAd8gBgQ6DwQJAQQMAwcABgIAEgAAF0UOAxX/LAIJCxcjAgUGFSgUBAABBgYJBgMAARAJBgMAI5kMBgb/SAMAMAUCDwETDwIAAAMCAwUAAAMBAQIMEgIABBpEHAQCBz6bRQkAAAICAwQFAwE/SQMDATDkXgEA/y8DADsAAQQAAAYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAUAAAAAef8UAAAAfYIAAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD23', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(25, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=9	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKboAUQBQ1Mg+fgXfjJ+Mj5ZPniTsk96DJYt1j1lDmWbRB9Hm2eLRwH3A/uC4LLgZzWDN/g5eTw6cXi5DjEuYTtNPOs/bh5LeQoLF1HPmw+aQzthzw6jAZsdsR2+WfY59mjmaF8LNMI9uh2GO/I/hk/yP7bG8YexjxS/OKdOhwy2TIZKNrIec7HiN2Ml4HOmJXArrgaaDrOWxayjvw29EbcKtgq2DJYCuzOWY5NjsuOx4LHhd+Wv4tM3g3PvjMsnP5o7gj2IvJp+HK5YPlk+ezN7PCM1rB2qg6SPppdll2OLMNs3tZJdAlwFXYYdBzwOHk8UDxjrDI8sgx2PC4ddhs+QhzHrIaUj84TrgXSg/YA9yD3YN6w83CxNHMsU3wyeW5ZNnlOELZ+LBysF7YDrlHXA5ZC3yCSYydwc3EmsDE8Q5Uh7k48xHyeXPF07BzsPCQUDBAYGDAAHEA8DBDZQDwQMP+8uDgoMOpg3DgYAEwcDCA0JBhgbBAUBFjYSBQI2FAgBFhUMFgQFGAUEAAMKBRAEEBVhCBgtoBcDBhhbMQ0ECEuoHgoCAAgGLAsCBAQKOwQAAQoTDAQDswgFAEAICQ0AEA0IAAACBgQQAQgHFwMFH0sWAwkawC8FCwco+zUIAQEIC0wjBAMIJHUPAwEXQiYHARwQCQIfDgoGAAAHCgMABwIHFwMDKOAPAxuzLAYCCBQOBAoGBwUEAQEBFwwyLQsCBBiHERQEH5UmDhVYKgMFAwEDAgADCwIAAQQBBEEBAxCnAQEGMhUDAQIFEAsCBRRZCgcEAREa/0MBAQ4sEA8GABMhDAoCvR8HAyoBAQAAAQkIAgADAQIDAAIJFQICHyEGBAUz/x0GCwUU/zMIAgAMAgUCAwMDCgkBBAAKGQYDAi0NAwEaCwYGAwMQAQEAAAEJFwAAFAYCASF9BAECHf8UBQMIOccVCQEBCQ06BQgIAh6TCAcEEV0TAAE8EQABIQkFBQACBQMCAAEDAS8ABgt4AQcmMw4BBRbvIgsBBi1iCggBABEQUikDBAYbERQBABZZFgUG0DIIAS4BAAgDAwgEAQAGAQAfAAUf1wEHGm9AAAILPhcGBAQtohIIAQIEFTwZAwAIL2IcCAAHGhICAuAJAgAwBAABAAMBAAAAAgAAIwAAAlwAAAACBgAAAAAAAAABAAAAAAAAAiz/FQAAARb/SwEAAwshBQAGBQMAAAAAAAAAAQMAAAEBAAMABAQHBAIWCAYBBA8pEQUFBSP/HgoDAAEAAAEDAQAKBAIAAQUKAwABDAUCABoOAwgBBP8EAAAAAQAIAAIEJQEBHCMKAAEeNQkGCARE/w8GAAALCU8jAgEEITERAAAbYSMMAaEmBQI0DAIIAAIGBAEAAgIADwABEzUEBzLDHAAHLzYqAAACNmEzDAABBQcFBQABAhQJAQEAJ1kJAwP/LwQBMQYCCwMYBQMBAAECAw0AAQUSBAURPA8ACRA2KAICDDRZMQcCAAIDFgYEBAEsQgQBASnfJAIB/zABAT0DAAQBAgkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwcAAAAAc/8RAAADrIAAAAEEAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD24', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(26, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=10	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFLjoAUQBQ1Mg+fgXfhL+Fhpvfk6VpQmynY8NlJ2BDGUbRR9Hm0eTVRLnE2sS5QNgnw2nPdwn+A2tcXn5j6EuYU6VPW1/Vh5LOw8LEwtPGUueYz9jzhHKA44FiQ22cfJpviC2aVOldGo9qj3iPZY9hgZyP/IH0wezC1ULW4bPj0+OX45LfNeee7DiHONV4RWiJbwVpgZ+E7MWlgWzPwc/Cz43jgquOJ46unO2Y5HzkuPd4ZnhTcHPwp5Hq5c3Lg6mNYI9CT0OnRbWTrxcOnk+e5WpEmM1SBvihcZLxrXBOYO8hzzHPylfCk8CvQNLE60NWVMdTxtLD0tPQ08Pg0MJr4uTnTOvKy2H+wnPgb+Iv4n7h7vDO7ObgypvJOtmX3jPPl4bjq8WDTfJK2ynK8Orw/vCq8WZyFPBCJ1R+CBvYW4gx2DZ0ZYPG3wGbAfuDW0HAwEBAgIEBQAGBRACAzFcBQEFPf8iBwsLRKRBBwIADAIJBQMIAg4SBwMCHEALAABlFwEAHw8HFQMJEAgEAQYEAhQDBBZVCQYqrxYCChxhLhEIBDmnIA8GAQ8JKgsDAAMYSAYDAg8YFQICnBAGADwDBAsBEggFAQECAwQMAgULHwMHIjEcBAgXiQ8GCAks/yQKAgAJDV8aAQYKJkgVAgIUaiQJADITCwMwCggDAQUICQcBDQgIKwEEKLQGChWGKgQEBwgOBAsEBhcMBAEDDhVKMAkGBSuzHBkGEaQvDg4lGQUBBgQBAgAECQIDAAUCCj0AAgW9AAEBNAgEAAEECgUBBRBRBwQBARAZ/y4GAg8sHRIJAR4iEwcI6SoKBR0BAwAAAQoAAAABAAABAAAABgEAJDwCAQI9/xwBAAEF/1ACAQAGAAEAAAABAgAAAQAABgACAAMFAQAGAgIDAQAEBAAAAgEEHQABFhYAAxnNAgIDG+EcBQQEP18NAgADCg0vBwQIARrODQMCFpkNAANcGQEAFgIGBgQFDAgDAAIDAyoCAhx9BQUtdhQDBhS0IAUDBB5OCwcFAhAIeyMDAwYcChAEAh6DGgYFjy4MACAEAgUAAgUDAQADAgAWAQAY/wIGIjoPAQQQHRAEAQImuBEGAgIHDScbBAUEJhkFBQIWTBQJBfspBAAaAgADAAAEAAAAAgABNQAAA5YAAAALAgAAAAABAAAAAAAAAAAAATD/KAMCACj/Rw4AAjEdCAABAQMAAAAAAAAAAQMBAAIAAAAAAQEAAwIGAQEBBSgtBgMKC0r/LwMAAAUEBgEBAQ8XJgsCABIPCAEBPAoEACcKBgYDBSUBAAAAAQAHAAEJKgABHSoQAQAlgxcOBQQ9vjAHAgAKDY0aAgUEGj4ZAAAamSIDAnMuBAFGCwEHAQIIBAcBBwMDEQACDjkGCxu8FQENEyEiBAMCPFUVBwABDAkQDQcBAxkPCxACJ6EaCQP/LwMANwQAEgEOCAIBAAABAAcAAAcVAgETeRIABAxMLAICBC9MHQQAAAQJCwUDAgEeKgYHASbfMAcH/2sKAToEAwUDAQUBAAACAAIQAAAFFQABAAwGAAAAAAEABAYLIAMAAAAAGjkPBgABUP80AwEcojYCACMQAAAFAQABAAAAAAAAAAAA', 'DATA', 'CMD25', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(27, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=11	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFLPoAUQBQ1Mg+fgX+iN+OhlnPm6VpBl+naUN1BzNHMWezR5LktcWTxPuE+un4AXikyejOdhH+B2UZXD5LyFeY1ONHMs+Vj5LewYOH3LHFsc3xTfjnoeeQ4RPmY+8qfJpvin2aVfiVOI9pj+iO+Y/nh72H+IPYwdjk4eKT47fj0sMTY6rOHO887DiFeJV4pagJqYenga2HrYWxg5mNwqfAZwjjCqcDY4SumOkI+Jh42PT4JvAd8ivyhsX2icbhHsEbwpdAo0QDZOvTY0nuyw/LtNoOy+bSRtLw0xLT3lPWSU4BXsNaptJAv4G/wqLA40HCZcZBwu3CwdOJlsfDwcbD70ivSf9N30l/4Obg/eB9ojzIfcBN7qTMTNzeXbyctEyPZYdJl2GbSYeN60GhsEPw7aFNsGTtDdbNzozOwHbA2/Q54WzmZs9G5UDbYPcB9wfBAEAAAMCAwALAhEBBS9yBQMJMv8aBw0QOV40BwEABwEEBwIGAAoaBwABGE4TAAFMGQUAFRkHFggIDAcDAgUEAA0EBxZRBAonqhYECCpZLAwFAzuvIhICAAoJMgcEBgMWPQsEAA02DAQGlw0HAD0GBA4BCwgGAAECCwcPAgYLGwEHJkkYAgQaqyUECwYp/zADAgAGCFYbAwQFH0kLAwIZYCILACsWDgMmDAoEAAAEBAYEDwMLJQEBJdcFBRd4IwIHCQQLAQwFBBkFBAEDGRFRMAkDAzFvHA8FHLM1EgtFJwYBCAEBAAAFDAMAAAIEAi4BBQdaAAADFAwEAAIJDAgJAhVdCgICBA4k/xoBBRM2JxQEABgpDQoFmxkPAxkDAgAAAQkAAAAAAAAAAAAAAAABG0cAAABN/xQBAAIL/1UAAAAAAAAAAAAAAgIAAAABAQEAAAIAAAAEAAAAAAABAwABBQEHFwEBDyEBBhbtBAMCErYjAgUCNEkYAwEAEAsoBAEGAB6qAgAFE9UPAQNeJgIAHAgCCgQFCwYDAAMCAyYAAxVaBQZBZhAEBh2cHgsGAShgEAwCAgsQkxQEAwMUEgwLAR1xEQcHmygMADMDAwcBBwgBAAABAAAYAAMR/wEDGy0KAwAPHw0BAQAirQsDBAAGFFsUAgQCJYUECAEdOgoGBP8RAAEbAAAAAAIDAAAAAAAFIwAABjsAAAERBAAAAAABAAAAAAAAAAAAA0j/EggAABL/ZggBAg8QBAAEAgIAAAAAAAAAAAIAAAEDAgIAAAADAQMHAwQAAiI0BQYFCkb/LwQCAAgCBAECBQogJQcCABoRCAICSRAGAjUHCwEBAxcAAAABAgELAAQOPAAGPWobAAIvmD0IAwc4/ysIAAADCCUbDQIBBjkQCAAIGRgAAWobAQA8AwEJAAIDBwIBBAIDHQAHGWgJBSS0MQEHDxQgCQIELDcNFgEBDxIUGQMCASgrCQ4CKooYCgL9NgMCKQIDBAAEBwICAAEAAQIAAQYYAQAHPBEBBAghGQAFEDSdFwAAAAYIBwACAQVM7AUBADHqQQgBpkcJADkHAQABAQUAAAABAAEEAAAAAQAAAAACAAAAAAAAAQAAAAAAAAABIUkDAAAAEf9BAQAABg8AAQAAAAAAAAAAAAAAAAAAAAAA\",\"size\":1648},\"10\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFLjoAUQBQ1Mg+fgXfhL+Fhpvfk6VpQmynY8NlJ2BDGUbRR9Hm0eTVRLnE2sS5QNgnw2nPdwn+A2tcXn5j6EuYU6VPW1/Vh5LOw8LEwtPGUueYz9jzhHKA44FiQ22cfJpviC2aVOldGo9qj3iPZY9hgZyP/IH0wezC1ULW4bPj0+OX45LfNeee7DiHONV4RWiJbwVpgZ+E7MWlgWzPwc/Cz43jgquOJ46unO2Y5HzkuPd4ZnhTcHPwp5Hq5c3Lg6mNYI9CT0OnRbWTrxcOnk+e5WpEmM1SBvihcZLxrXBOYO8hzzHPylfCk8CvQNLE60NWVMdTxtLD0tPQ08Pg0MJr4uTnTOvKy2H+wnPgb+Iv4n7h7vDO7ObgypvJOtmX3jPPl4bjq8WDTfJK2ynK8Orw/vCq8WZyFPBCJ1R+CBvYW4gx2DZ0ZYPG3wGbAfuDW0HAwEBAgIEBQAGBRACAzFcBQEFPf8iBwsLRKRBBwIADAIJBQMIAg4SBwMCHEALAABlFwEAHw8HFQMJEAgEAQYEAhQDBBZVCQYqrxYCChxhLhEIBDmnIA8GAQ8JKgsDAAMYSAYDAg8YFQICnBAGADwDBAsBEggFAQECAwQMAgULHwMHIjEcBAgXiQ8GCAks/yQKAgAJDV8aAQYKJkgVAgIUaiQJADITCwMwCggDAQUICQcBDQgIKwEEKLQGChWGKgQEBwgOBAsEBhcMBAEDDhVKMAkGBSuzHBkGEaQvDg4lGQUBBgQBAgAECQIDAAUCCj0AAgW9AAEBNAgEAAEECgUBBRBRBwQBARAZ/y4GAg8sHRIJAR4iEwcI6SoKBR0BAwAAAQoAAAABAAABAAAABgEAJDwCAQI9/xwBAAEF/1ACAQAGAAEAAAABAgAAAQAABgACAAMFAQAGAgIDAQAEBAAAAgEEHQABFhYAAxnNAgIDG+EcBQQEP18NAgADCg0vBwQIARrODQMCFpkNAANcGQEAFgIGBgQFDAgDAAIDAyoCAhx9BQUtdhQDBhS0IAUDBB5OCwcFAhAIeyMDAwYcChAEAh6DGgYFjy4MACAEAgUAAgUDAQADAgAWAQAY/wIGIjoPAQQQHRAEAQImuBEGAgIHDScbBAUEJhkFBQIWTBQJBfspBAAaAgADAAAEAAAAAgABNQAAA5YAAAALAgAAAAABAAAAAAAAAAAAATD/KAMCACj/Rw4AAjEdCAABAQMAAAAAAAAAAQMBAAIAAAAAAQEAAwIGAQEBBSgtBgMKC0r/LwMAAAUEBgEBAQ8XJgsCABIPCAEBPAoEACcKBgYDBSUBAAAAAQAHAAEJKgABHSoQAQAlgxcOBQQ9vjAHAgAKDY0aAgUEGj4ZAAAamSIDAnMuBAFGCwEHAQIIBAcBBwMDEQACDjkGCxu8FQENEyEiBAMCPFUVBwABDAkQDQcBAxkPCxACJ6EaCQP/LwMANwQAEgEOCAIBAAABAAcAAAcVAgETeRIABAxMLAICBC9MHQQAAAQJCwUDAgEeKgYHASbfMAcH/2sKAToEAwUDAQUBAAACAAIQAAAFFQABAAwGAAAAAAEABAYLIAMAAAAAGjkPBgABUP80AwEcojYCACMQAAAFAQABAAAAAAAAAAAA', 'DATA', 'CMD26', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(28, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=111	FID=2	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFK3oAUQBQ1Mg+fgXOC9wMhhmeCYPpC3yhIws2Q6PPGsfTR8bk0MTQxtnE+OVwUbghwcnCejX+AykZXD0/RZ8JetwabA/Ij47Rw8uG0ZvPscfwz/jjwOvA8RZhUvsobxDbXA9cDbgafAepF6xM6Y+mg6mPuIHZwfnkycfH4cBh0tHwBfjKzkV8onwD/M/4F/JN8I7zgu+Dr5Oxg7GvQn9Ej1D3Qx/AM8i25HPI8lDycP5wfvFdsgt5O05hadrMG+YPxC/IX0S/ZTtF/0NEpsVLpo8iy7PzMtqQ+Zj4ouhL6ObJKcnmwF7A3kD+wZ5C/kONxvTnoo/yVaOjwXHTwZjJo8lryPvEO0h6Ynrw9lD+0HZybNFFr6S1K6nJmfG1Cdy1SZtAq2FbQdNHm0FaMNvwzdDX2OTxg9FkmwMZwvcDN4TnysfUDV4FXwWdBNsF3xHBgAAAAcEBwAGBAUFBTWUBwYYLP8jCQwUKkY5CAAACQMLDAIFBRAoBQABFkgRAQE8FwMAHBQIEwoMBwcGAQQEAxsBBR09CAYz7RsFAx+sKQYDCB5zHwMBAAYRIwwKBAIZQA4OBA9TJAMDUxcFABwGAQIBBgwGAgACBQQYAQgiqQIGObMhBAMcUzEKBQQkohoFBAAKAE0hAgIDDhsFAAAROgkHAYgWAwMvAwQBAAEEBQYCDQAJJQELL/8JDBVSLgMHBQYYBgUFECsLDQIBDxI8LQsDAx6HHg4BDokrCAVPKQABDgQBAAAFCAYAAAEHBEUDDAaGAQIIGAwCAwQFEgYHARWTCwYEAhQf/0sEChAfLSUBAAoEDQgDRw0HBiMCAwAAAAcCAAAAAQAAAAAAAAAAI78AAQMs/xYBAgsOszsAAAACAQAAAAEADV8CAAAGDAkBAQACAQAAAAAAAAACAgEBAQMHHAADFSIAAiadCQkIKeczAgkJNIsqAwMACAwkDwgGARaKCQQDDjQhAQNhHgEBOA0CEQEFBgwIAQMCASUABxCaDwgedxwCCwsbJwkFBihMCw0FAhcQKigJBwUhGwwHACprDgoO+TgFAh4FAhACDA8FAwAAAgMpAxEX/wEIHCUeBAQNCQkKBgMe/wwMAwQMC8kXAQIFERURAgEKBQMBAS4CAgIdBgQEAAAGAgAAAAEAFAAAAVYAAAABAgEBAAABAQIBAgUBAwAAA0v/BgABAQv/ogAAAwAEAQAEAAEBAQECAAAAAwIBAAIFAQMAAgUDAAIIAAMBAwwaCQYCBSz/GgEBAQIQSAYBCAwoTBIAAB4oDgUAKA8IACcRCAUBAQYBAAAAAQAAAAAJGAIEPY4TAAZC/0EBAQMw/0kGAAACAAAEBgEAAw0DBgAGCgMAADYBAAAaAgEGAAIDBgMBBgIFHAEDFDwGDjb/JQIRETdDBAQGIhgbDwEACg4cGgcCBSI2DwkBEVgLAwTvHwIBLgMCCAADBwEBAAICAQgAAAZSAgUKHQ8BAw86KAQGEDNyJwYBAAYMIg0DAAI//w4DAiitQwMATikJAjkKBggBAQgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANFIAAAAAJ/9jAAAAHhgCAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD17', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(29, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=0	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKroAUQBQ1Mg+fgX2Bb4Ohxm/DIVrljmjYwN1h6kLO0e3D9PE9cGMxHOE+NWzFLgJxZnNoHfYHzlZXDsbSV8JVckaGg/Zjw6Ow4uG0HGOscXwzPDLpMuE6FNpSnsxayjTOJ94nrgaeAXoGqwN646sk3mP+YH5wdnh6c+F6fFLg1nxCflN/sf84nwD+I/wD/IN8x70Av2HjYfxh1Ovwc9A5yFfAiugN4A8qCWg8tTjUPt0dnZfcR9xWNnN2dzKBcMfQu7CjyJPZPdBN0B1wwUls+NyRwsSclKMelj6Gnhd+I7NF8Gywp7On8d+A3/B70HWw8FxwsPTw88R0nPu4Pxw/eBdcFXEnUG/YH7gWWZ3sjuHJ7PPy4Kzg0nBR8pY2Qefwh+CH8EPh1nMx0n2YZzx8+D3cqU3JbMjU4JrgXuDTaCbYY+Vru+OnYjPC+9DR0vBwEDAgkGAwEDAQUDA0JUBwgRNf9ABRAWHUQ3CQEADwQNDAgEBBElCQMADj8UAwEaFgUBFxQMEwMIEggBAAUCBSECDRhUCws5/xUCCCd/MQQICihzGg8GAAgNKg4KCQIaMw0NBhBFEwEDOQsCABwCAQgCCQoCAgABAQMcAgsalAIILLEXAgEXaiYJAwMkoh0JAgAGBFsgAQECBx0JAQAMNxgDA3ArDABIBgQBAAEICAEBCggKJAMGJsUDBSSUMQIHDyMhCQ0DFzcUEQICFQ8zKQkDAySIFg0DEn0lCAwgGQAAFQEABQABBwUCAQIGBDoDBwuiBAUFGgkEAgABDQULAw+jBgcEBRQX/zcECQseGxsGAAwVEQkFixEHAykBBAAAAQ0AAAAAAAAAAAIAAAAAHmYAAQJa/wkCAAUT/5AAAAAAAAAAAAAABQgGAAALBwQBAAMAAAABAwEBAQACAwACAwEKGgACDRsEAyjEDAQIGtojBAYMLooZCQEABgkkFwsOARLaEwYBDUsSAQE0HQMBMgIFBAICBgsJAQoCBSMBBxKECQ0nZhQBBhU2KQYCBjNqFQoDABIMFR0DAwgcEQcGACiZDAoH60EHACcCAQ8ACwkBAAAEAwAiAhAT/wEMIR8dAgAUMg8NBgAc/xIJBgEJD1EgBQkHHjscAwIJCgkCAisIAwEfAQIDAAANAQAAAAAAJQAAApoAAAAAAAAAAAAAAQQAAwkAAQEAAU3/HAABAQT/jwAAAAEEAgAAAQIDBAICAAAAAgMAAAQHBAMCAgECAwILBAECAyxcBgMICi//RwYCAgoJFQUDAAgTEgwCARIPAgIAIQkBACgICAMCAA8BAAAAAAEHAAAFBgAEPIkQAgkv7DEFAwMZ/EAIAAADFTMPBgkAEqsgAgADHhACAEENAwAqBgIEAAsFBgQAAgAAJgABH5ESDxf/LgMKBwkcAQMFKSUMCQEACBFGGwUBAykvGAUAGDcWCAnrGwEBGwIBCwIdCwQBAAICAg4AAwgdAgESTRQDBw9uHQMJCT69JgIAAAYKGgkGAgQ2bQoEASGvLwgDoycIBDoFBgMABgwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHSIAAAAAFv85AAABBxMAAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD27', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(30, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=1	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFLDoAUQBQ1Mg+fgXcKtwLRwOfBSdvM9mjY0N1V7GHU6bRB9Pm0eTVRPmE+MK4crgBy8jLcwP+BykbHjsvC08aVa2bWo/Xj9KOwYrDkHGeUeYwz/j6hOqA8EXhRXtWfTh/Gx8YGfkaWApLj/kO04/rg+2P6aG9wdnjpUuX4dXhjVPYkZzOfJk4pngDeA/4jvkV/AL7gveCbZWwiWmfws/Ax4FHjGWAWZjWzHO48thyeP/wP/AH8gtxGsaYSNvCG8ubQp5CYyhvJyWg5ZMej0aZk0QjVyNGZ3ri2Mp5ksxa+PrMEsjPxpZFd0MuFwpLjheKw4KHjeejY6NLZWNmQcdp80wXSHLMN0hzYG5Ifyw/Xh9YD1cG6YDHo0Hhw/NDJUdBywfPM8U3T5HF0cXd4GXhdeAvBiU2D88mdYDPgGuA4+H7oddlo32Dh4HHgMnIycDBgAAAgIHDAINCgwFBUljEQIVOP89BQsONlw3CAQACAIFDAQGAQsTBwACECkMAAVDHAAAHhIJHQQMCwcBAQkEABMCCRlMCQUrxxgJBSKtNQkGBS1zIgwBAAcPKAcHBQIYaQ4GAhNBHwIGPBMDABcICAcCCAsFAQABBQQVAgQfZgIEPJsnAQAbgywICwUs9ywIAQEHBEUlAQMADwoKAAASQBIAAUkbBAE0BAEAAQELCAcBDAMLIAAFMNMFCxudMQIBDQoTBgkBEScKCgMDEBo8KAcFBB6gHA0CC3UgBgJUGwMBDwQCAAAGCQgCAQIEBEgCAwrJAQMIJQsGAgICEAYEAxqlCAYDAhUP/zoFAgweEBAFAA4QEwgHnBAHAi8AAgAAAwoBAAAAAAEBAAABAAABIlEBAABA/yIEAwEa/1YCAQADAQAAAAcABQ4AAAANHQQBAAwCAgEFBAQDAgAFAwAAAQIGIAABFRkAATnWBgMGJdwkBAEHKMUZBQEACQ8zDgwLABqiDQUBBy4ZAwJBDQQBJwQCBwEBCg4JAgYDAxcCChTNDAclfRUEDBEyHwoICCNWGQwFAwsINBgGCgQaEAUIAR5dDwcG4TMGAS4HBg0BCwYCAAABAQEpAQwc/wAFGDw7AAEIJxIEBAEp/yAIAQAED04kAgABEicYBQAGBgYAAyQAAAA4AQAGAQUFAAABAAAAKwAABKEAAAAEBwAAAAAAAQEABAABAAAAAUv/JwAAAAr/kgAAAgQGAgABAwMCBQEAAAABAgIAAQIFBRABBAkQAQIOBwYCAR88BQEDCTT/MgICAQYFJBMEBAUbMREEARMoCQQBHggCARcIBwcBAQ0DAQAAAQALAAMFIgEENoMMAAQxmyIEAAMw/zgPAAAHDkkZAgYBD2ceAwEMIxQCA2oaBgElAwQIAQoGCgkABgEGIAADFmwLDAvkMQMEChQWAwELIC0UDgAACRceEggAATAnDBACGE0ZCQj/JQkAMAQEFwEKDQIAAAAEAQcAAgQAAgQbXAsBCByDPwUKBFa2LAcCAAcGCQIDAgYsSQsBARxmFQIB9xwKBlgNBAYBAhMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGxoAAAAAFP9IAAAADxoAAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD28', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(31, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=2	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFK3oAUQBQ1Mg+fgXOC9wMhhmeCYPpC3yhIws2Q6PPGsfTR8bk0MTQxtnE+OVwUbghwcnCejX+AykZXD0/RZ8JetwabA/Ij47Rw8uG0ZvPscfwz/jjwOvA8RZhUvsobxDbXA9cDbgafAepF6xM6Y+mg6mPuIHZwfnkycfH4cBh0tHwBfjKzkV8onwD/M/4F/JN8I7zgu+Dr5Oxg7GvQn9Ej1D3Qx/AM8i25HPI8lDycP5wfvFdsgt5O05hadrMG+YPxC/IX0S/ZTtF/0NEpsVLpo8iy7PzMtqQ+Zj4ouhL6ObJKcnmwF7A3kD+wZ5C/kONxvTnoo/yVaOjwXHTwZjJo8lryPvEO0h6Ynrw9lD+0HZybNFFr6S1K6nJmfG1Cdy1SZtAq2FbQdNHm0FaMNvwzdDX2OTxg9FkmwMZwvcDN4TnysfUDV4FXwWdBNsF3xHBgAAAAcEBwAGBAUFBTWUBwYYLP8jCQwUKkY5CAAACQMLDAIFBRAoBQABFkgRAQE8FwMAHBQIEwoMBwcGAQQEAxsBBR09CAYz7RsFAx+sKQYDCB5zHwMBAAYRIwwKBAIZQA4OBA9TJAMDUxcFABwGAQIBBgwGAgACBQQYAQgiqQIGObMhBAMcUzEKBQQkohoFBAAKAE0hAgIDDhsFAAAROgkHAYgWAwMvAwQBAAEEBQYCDQAJJQELL/8JDBVSLgMHBQYYBgUFECsLDQIBDxI8LQsDAx6HHg4BDokrCAVPKQABDgQBAAAFCAYAAAEHBEUDDAaGAQIIGAwCAwQFEgYHARWTCwYEAhQf/0sEChAfLSUBAAoEDQgDRw0HBiMCAwAAAAcCAAAAAQAAAAAAAAAAI78AAQMs/xYBAgsOszsAAAACAQAAAAEADV8CAAAGDAkBAQACAQAAAAAAAAACAgEBAQMHHAADFSIAAiadCQkIKeczAgkJNIsqAwMACAwkDwgGARaKCQQDDjQhAQNhHgEBOA0CEQEFBgwIAQMCASUABxCaDwgedxwCCwsbJwkFBihMCw0FAhcQKigJBwUhGwwHACprDgoO+TgFAh4FAhACDA8FAwAAAgMpAxEX/wEIHCUeBAQNCQkKBgMe/wwMAwQMC8kXAQIFERURAgEKBQMBAS4CAgIdBgQEAAAGAgAAAAEAFAAAAVYAAAABAgEBAAABAQIBAgUBAwAAA0v/BgABAQv/ogAAAwAEAQAEAAEBAQECAAAAAwIBAAIFAQMAAgUDAAIIAAMBAwwaCQYCBSz/GgEBAQIQSAYBCAwoTBIAAB4oDgUAKA8IACcRCAUBAQYBAAAAAQAAAAAJGAIEPY4TAAZC/0EBAQMw/0kGAAACAAAEBgEAAw0DBgAGCgMAADYBAAAaAgEGAAIDBgMBBgIFHAEDFDwGDjb/JQIRETdDBAQGIhgbDwEACg4cGgcCBSI2DwkBEVgLAwTvHwIBLgMCCAADBwEBAAICAQgAAAZSAgUKHQ8BAw86KAQGEDNyJwYBAAYMIg0DAAI//w4DAiitQwMATikJAjkKBggBAQgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANFIAAAAAJ/9jAAAAHhgCAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD29', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(32, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=3	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKroAUQBQ1Mg+fgX+iV+JDljPC6Fpws2Hacdlh3FHMUexR5LklUWSxHPE+uF4gbghy7HLfhH+A+UYXH5PyE+Y1elXMk+Uj4LOgYOH1jGHs+exzbjnoPuQ44HqQ+8qfjpvqn86FPgNOA9ojaiO+4/ng7mP+aPZAfni4crH6ZrD1+OZo4mOPOc9rDmBeYz4rPgVeQSrgy2DrZexC5mXxK/CB4jvAKeQB52smOsY+Pz4+ezwLPDf8K/xFMnyydnjGscdoE5Aj0WPVfuEK1PvlAsZuQzI5elGQXCBWF9RlczT2ObBM8EWyNtI18GeQ77AzkLKzM0zxMfDw9LDktOTwdNx3MjTSOVkDUH8wNtg9eGfcL4w3HCNrkz0G4ZYhNnHGtWTww/DHclXQ77LH0Jk8GdwjXDdcLRzpHClbwV3AbeBN6ixktWGZM5XnkTbA+8FzwdAwAAAQIFAQEGBRYEAENwBwYGPf8mBwgULU1KCQMACQEDBwUIAQkSBQAADVQKAQEsDwEAFA0HFQUDDQgDAAwFBhABCSBkAhEw0iUBCCBnPAcJCSt+HhYDAAkLMAoFCQMURw4FAAwfDgMEXg0DADYGAw0BEAkGAAADAwcYAQsVNgIGIzkgAgUYuR0IBQQh/zELBQAJDmgeBAMKGnIXAgAOKyIFABUQCgApDgQBAgAIBwkCDAQLJQAFK+AJCB6SJQIFCxMQBAcDBiwJAwAADRFBQA0CBxSYJhECF4ArDQsgIwcCBQABBAECCgIBAgEBAjkDBw6XAAINHgwCAQAKDgkJAgxpCQQEAhcU/ykABBMpFBEEAAshDQgJlg8IBBkCAgEAAAwAAAAAAAAAAAAAAAEBGUUAAABX/yIABQML/3MAAAACAAAAAAAAAAAAAAACAQAAAAAAAAACAQICAAACAgAAAQAEGwAAGCkCAyveBgEJIv8mBgQLH4gpAwEACw4sCAYKAReDBw4EEJkSAgIbEgMAGQIDAQEBBwkGAAsBBSgAAxmQCQknuA8BBRZrEQgBBiZUEBMCARMSchkGAgMoFQ4JBBxtGAQGgB8HBCADAgMCBQoFAAAAAgAmAAgX/wADIT0TAQESMRYJBQEpwxIMAwAIH5IVAgQFGGEkAgAPDwQDAXENAQIuAAYDAAQFAAAAAAAAKQAAAFQAAAAAAAACAAEAAQIBAAABAAAAAEb/HAAAAgj/iwAAAAMGAAIAAQEAAgAAAAAAAgkAAQAGBQMAAwMHAwcQBAUEBRYSDAUJCSr/HwkEAQsDBgUACAMOAQMBABISBQIDFw0EASELBAkDBhECAQAAAQAGAAUILwECH0sVAwIwqSINBwQv/0UGAgEFCjkbCAYFETsZBgMGGhUBAXIQBABCBgQHAQIFAwIAAwICHQECG0YDDiu4KwIIDTYoCAMFNkcUDwIABw4mFgQCARo7EAgBG00ZCAb/FwMBMQIACwEPBwIDAAEBAgQAAQUQBgMVOBACBhE/JQICDjldGAcAAAgEAwQCAgQ+4AYCAB3/OAYCjzIJAjMICAQBAQUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGiUAAAAADf8wAAAACAgAAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD30', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(33, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=4	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKzoAUQBQ1Mg+fgX2RZwG5nzPG+XtRPznZUP01yVHOce1h/Hl0EHV5PjE+OPyw/gxwWHH/GT+EWMcXjhp6E6YVa1VOE80j5DOQ4vDkZrO06eIz9njkOvA4dTjcf8ofypPqG8qXLkVGIWrBaiM6w/rk52P6ZH5AdnC6cPN4ZThleuYo5qPHMcc7jiHOMv4DPia+Av5gqWK7YXhC0mOy4/JpxDnEaOQp5CumG2Y+Hz4uN3wLXDf8K/yjOaqy5zCGMGXoq5io2OPZWOA61B+rAuSvQ4hqulGoXKhWOVRrOzZeEjEhcDXpF7IW8G+QfrA7kDKxsy2xudKxtLHk+Oo5dHj58RzYFnCSVB9wH7gf/A/cT8w/3CPLkyyGxJ4htmkGMSf4R/zN+EXI5PBjcHecMnw22RVcONxpHGzMwVzATOBN6hzmnW3JUdR1yPLKcfBy8FAwEAAAACBgENBBYBBUCvBQAGL/8oCgYOI048AwAAAgAHDQEDAQcWBQEBB1YJAAEkCgIADQkEEAMGBgcBAAYHAyECDSJlBA4sySgECxphKgwECypyIQsFAQQQQxEFBwMVaQ8JBg4mIAICTwcEACIBBQIADAoCAAACAwEbAQoRLwEDIjMWAgAcxw4EBQIb/zMEAwAIDKsXAAIFGHweAQARGh0DABgODAEkEgwEAQMIBAcDDQEMJAEGLrMHCDC8MwMFDisfBQUIDj4PDQEBEBA4IgYGBCN8Fw0CDXoWAwkzFQIBDQIBAQEECQUBAQMBBkkABA3hAgEHKgkDAgMGDgQFARdfBQYEAxod/ykIAxAiHQsCAAkUDQ0FcREMAh4DAwAAAQkAAAAAAAAAAAAAAAAAHmIAAABF/xUAAAEN/20AAAAAAAAAAAAAAAAAAAACBAAAAAQAAAACAgABAAAAAgAAAAEIGQACEB4AAyDuBQMIHv8fBgYJHWQmBQMADgwzDgkIBB+GCQoFCZQgAAIaEQEAGQMCAwECBgUHAAcBBCUABBGoBggqxxEBBhZXFwYCAylFEwwAARUMZCMDAwQkGwwLARaVIQQEgRgFARMCAAMADA4CAwEDAQceAAcT/wMFLEsWAwAPKx4JAgQrxQ8IAwAFDm0UCAQHFzIUCAERHgkEBIMXBAA+BAECAAQGAAAAAQAAJwAAAIQAAAAAAgAAAAAAAAAAAAAAAAAAAEv/GwAAAQz/egYAAAQEBAEAAQEBAAAAAAAAAQMAAAIGAAUAAgIBAAAIAQABBQ8NBgMJByv/GQYAAQcECwEAAgQMEAMAAAgTBQQCGAMBAB4OAwUAAggEAQABAAAKAQUGLAQCJUkXAQUrkSEKBQcq/0YLAQAJB0QbBQQBETMUAwAUMhgAAnIlAQBPCAMGAAIKAwQBBgMBFwIDHEwIBCHFJwIDDy0fAgcEK2IkDQIABgkYFAQCBBEgCQUBHFoMCgf/NAEBOwQADgIOCgUEAAMCBgsAAgQeAwISYhMFBgs5HgIKDixlGAcDAAwQMRMGAwRYPxcDACPaUw8Elj4NASULBQQDAxMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADAQAAAAAJv8iAAACPhwAAAMCAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD31', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(34, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=5	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFJzoAUQBQ1Mg+fgX+Vl5UpxtORw0oxO+DLctlj3NDM0bxx5bkleSRxHeE+vJ5NLgw5MDE7DHeE00c1D5JqNvYzaZPsk+Wz5LOgYKH1jEGMe4zTHjzoP+A4tDnY22Id5p4iB+aSviLuk8oj6gP+IejA7zX+BG8IXhi5YbT6ZWhs/mFoYr4nY2e7DmNON1oDajD6meqAqvjrLW5O8hOxM3Dx5NrEouBT4eumO0IzNz8eOz4Z/DX8m3itMXzzNzJnsGXgZXgrzIHF2uRxxPMmQ+erLxKzO3iR+Dh8oPyrcTJyM3I2cnXi1WAW0GbQ8pFy2HKxMszzdLCIsfGw2PjQcdR50xHSGfEaUTx4HHgX/E78R5xj3GOrcwxytbNNMrn3keP4Y8Dl2UDA+9MrUHM8HPwTfHo8HXxDfGSM1D3EBcANwDx2BTlce8J25HNEv8F7sbAQAAAgEFBAIJCyQBBD+XDAICLv8vBAgONT4oCAEABQEECgIEAQwVCAQAD08LAQBTFwAADQwDDgUIDQQCAAgGBBcADB90ChZFqiwGBRlaRBMEBTN+IxYDAAkMJQUDBAQKSQYDAggLBAMElgcEAjgFAgwADQsJAAACAwUUAAMXOAEGJ1YZAQgZvxgLDAMX1zkCAAEJG5kbAwALG3IsAwAPHxoMAgwKCgIUCgkCAwEGBQoDDQILJwADK9sMASCvKgIDBSMMAQQFAQ0FBQEBEQoyOwgDBCGCGxEGD78sEA0lGgcBBAIAAQEECwMAAAIGAkAACxCrAQIKJg0FAAMYEQUBAwVKDAUEBBUR/zECBQ4ZDxUGABInBwgElB4ECBIAAwAAAAoBAAAAAQEAAAAAAAAAKk8AAABM/yoAAgAA/2UAAAABAAABAAAAAAAAAAAAAAAAAAAAAAEAAAQAAAAEAgEBAgEFIQAEESYCBDPDDAEIEv81AgMHIG8fAQAABBBaEwcLARyODwwHD1EhAAUkEAMAFgQBAgEABQcIAgIBAC8AAiOSBAMxpBQEAxzKFAMCAxVGDAUEAQ0SsyEEAwIfLRQDAQ1IDwgCXhAPAQ0FAwYCBwgDAAABAQEnAAQj/wEEMl8wAQAYhiAHAQEomRMHAQAKFHQZAQYFEkAeBQEMHAAAAWUPAAAZAAECAAcCAAAAAQAAJgAAAlgAAAACAwAAAAAAAAAAAAAAAAAAAU//GgAAAAX/hQAAAAAFAgEAAAAAAAAAAAAAAAMBAAACAAcBBQIEAggLBAICAxYiCQoIDB3/IwgDAQUEBQQCAwAJAgIAAAQJAwACFQYEAiUKBAYEAzQDAAAAAwAMAQMKJQAAIycVAAMkiB0HDAc9/zkGAQARDFEfBAYGHBQYAwAXUxwBBJIhBQFABggHAwQIBAUAAwECFwICHWEECCiqMAIIGE0bAQADLD0bCQAACwsODAYBAx8bCQQEHm4VBgv/KwECGQQCDQAQCAYCAAICAggAAQkTAwEVSw0CDw0xIwgEEkBNIgsCAQcFIAgFAgVFgAQBADOpPgQD1DkIAlkNAQ4DBA8AAAABAAQFAAABAAAAAAQBAAAAAAAAAAAAAAAAAAABEhsGAwAACv8sBAEADgIBAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD32', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(35, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=6	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKDoAUQBQ1Mg+fgXHRo5Vg2sHX6ruC6+I7wmlhOlHqkLMx57xkqGR4PWA+NT5lHmYzIDd2HsOE5sMni6bLMssjKLPOsuSz5LBk+OF5nPmU87X5nj4yHzA6DjPc/2EfZRfiLuaTuibMp+un/IM/IfxB/xH+AbMYHxx0YLDydupuziFsYtSivCKOjkSuM2q2qhEZg6oRi5urBeYPkgqw5vDmtGPhXOBH4UmxP8AzMj8POxoZujt6Bvg5w7mzN3DNsBtwzHDA7XDNduDj4Ofh4+Gpg5gPOfiY/Lh8kHy3EJFyPzJrMnl4tdElqWPY5inyyeYpwmnoK9CLueqY6L5qKGq7uRniFVI6UD/YNfg9/E38QnxgvGL74oxiMbDW8+HxwXH5YcHi+Wls5/M/saJcOXwy/BTMCmxCnERswrzgNtAc8RnzGLWZ8wHzMLuE59L3gKAgAAAAEFDAIJE0IICTaVDgEDLM8xCwULOXsgBwIABQETEQMHAAQVBgMADk8NAAGkFAIAEwYAEAQJCQgEAgICAhEEDSNxBBc5jSQHBypgPg4EBz6dHhcDAAsHGggECwMKHgQAAQoTBAEEvg4CAzwFBQoABRAHAgABBgYPAQIQEwQHMykPAQUqtxwICwgk6UAJAAAHHX0SAgcFIVw4BQAUWyEFAB8FBwEVBwUFAQAICQcDDgQMLQACJr4HBg/HKwMJAwQKAwMHAQsHBgMAEh4mLQwCA0NhFxgJF+gyBg8YIAMABAIAAAAFDAMBAAIAAVcBBBOCAQILOBQFAAMIDQQFAQI1CQUDAQwW/00CAg8qMg0DAA5zCwwEhyAEAxEAAAAAAgYAAAAAAAAAAAADGgAANH0GAAAv/ykAAAAA/zoAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQAAAgIJFQICEBsBATuoDgIDFeBHBQMBJ3ATAwIABwxdDwgGABnhHgUBGUkQAQE0FAYACgkGCgMCBQQBAAIDABgAAhBFAQETNBEDAhr/EwYEBhFwQQIAAQkl1hIDAgMbWjsEAQxmFAIKVhcDAxAFAQYBBgUDAgAEAgIYAQQWvQMFKUgYAQIjqxYHAgMduigLAQEGFkMbAwEHIX8aBQEMPxYCAm0LAwEWCAABAQUEAAAAAAAAKQAABicAAAAbBAAAAAAAAAAAAAAAAAAAACv/GAIAAAX/PgAAAAMFAAAAAAAAAAAAAAAAAAECAAABAAUAAgEIAgIHAAADBQ0PCgMCAyz/GgUAAAUEDAICAAYNAggAAA0VBQUEFwUEARwEBAQAAQoDAgABAwAQAQMJQQAEIDcPAgIMFAsMBQI7lAQHBQAMCksbAQQHGiAYAgAcgBoFBf9FCgBdBAYHAQYKBgMABQAADgAAE18LAx6XKQIIERQPAgEHJFMQBQABCAYDBgEBBh0cAgQAKvAWBgj/SwYBGAMAAQEWDAMBAQACAgwAAAUcAQEQGQ8EDAcuJwICCjE8EwYAAAkCBwYEAQM2RgUEAUL0MwcC/0UDADwGBQkBAwsBAAIAAQEAAAAAAAEAAwoAAQAAAQIAAwAAAQEAAAADDQsBBQEBLP8cBQEAJRYAAQEDAQABBAABAAACAAAAAAAA', 'DATA', 'CMD33', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(36, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=7	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKDoAUQBQ1Mg+fgXuRd5Uw8uAQ6ltoG+M7Y1lgeNGK2flZ5Zk1+XVxHfAcsZ5h1uhwWPwcnHyc2kZmX5LaIv8TafOOqeW55Kmk8OXxnOOE4djjku4wbDAsmnycz2SOZI/nDqaGui6uocsx+DG9Efiwz0Da5NXE88Q2ZjLgc3R2zjFsc8yxXCKNjqiuIzqVqiM7saqQqbiLjfhO0wNzZ3DnYFN0XuBH4UuiP8Mztz8POT4dvDt8B3hNUz0zEzJNshNwR3BHxFPZUuDz4Pfg42HnJ5InOXi5/LB8tHz7GlV2XXJtcnr4hVAHwnnI9yjw2PpswmzsLMCkuWqZybhqEMx62RnmHfMqURvYPVg95g3cQXjwnPK64uzipLJMs5mz0bPZ48Bi2EFM+dHJsRN8M1w7XBXcOezg/OJN0jzAFvAM8Bz6BbGZc4FzMHtFW5B7iXAQAAAgMFAgEDDikBBTPKDgEFIOcdAQMHOngQBwAABgULCgQCAAIqCwQACz0TAgO/GgQAIgYBDAULBgUHAQQAAQ0FCRetChMmxB0ICxklMwYFCEVkIRADAAQFHgMDAwQJMAcCAQcTBgcC8hQEAT0EAAoCFgkIAgACBgMPAAIKBgIEGCMOAwkgeh4ECwIh/zkEAAAHIokOBQkFH5g0AQASSCYDAB8JBQAhCgkGAAMNBQcDDwAGGAACILAIBybXIgIICh4LAAUIDSsKBQAACAsgGQgBBTNWIRYEGes0BhImJAMAAgEABAEJBwEBAAABAUAACROcAAIFKQ4DAAYcDQUAAQUjCwIBAAob/ykBAgU7VQkHABmwGgsLUhwHBBABAwIAAQcAAAAAAAAAAAABBgABLFMFAAA1/yMAAAAA/0MAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIABAIDGgEDChwEAzekEQEED7pJAwEBL34QBAEACxFdFwUEAyLKFgQBEV0VAQFXDQMAEQIGBwIBCQQDAQIFBhgAAhhEBQUgVw8DBh3xHQIDBBRMMwYBAAoW3hcFAgMVRSsGAA9aEAQBZRsNAR0GAAgBBAQAAQECAAEfAQYRmgMFKUYaAwUioBYIAwAh9y0JAgAEElAeAwMBJGkRCAIPRgwAA3oLAAAOAAUDAQQDAAAAAgAAJQAAAVMAAAAEAwAAAAAAAAAAAAAAAAAAADb/EgAAAAT/RgMAAAEGAAAAAAAAAAAAAAAAAAIBAAAABAUAAgMEAQIGAwEAAwgOCwUCBCb/EgQBAAEBDQUGAAMHBAMCAQYEBQABFQcAAB8EAwEAAwYEAQABAwIJAQYNQQQFHDYbAQEMERQFBAI1dwULAAAODGIVAgUDFzcbBgEpyBUHAf9CCQA7AgIHAQQMBAYAAgEACAAADzwFARqoHwAJEhUVAgIEL2QZCgAABwgDAgMAAiUjBwYAKcUlBwT/MwQALwMACQIUBgMAAQQBAAwAAgcmBgIRLwwEDwg6IQIDCjs7GwUAAAcFBgUCAAItKwMMAjvdMQYC/1sDAkAOAwoCBgwAAAACAAEAAAAAAAAAAQYAAAAAAAAAAQAAAAAAAAACCQ4CAAABPv8QAgIGSzsAAAEEAAABAQABAAAAAAAAAAAA', 'DATA', 'CMD34', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1);
INSERT INTO `dmg_devicecommands` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `command`, `command_desc`, `command_id`, `response_data`, `response_message`, `serial_no`, `status`, `branch_id`) VALUES
(37, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=8	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFLToAUQBQ1Mg+fgX+hV+VpXqOn4erhm2HI4M1D3FFk2bRRtHk0OTQRL3EeuE4KLgxxOHPfRp+Bke8Xj7FqU+aXqXHMl4Vj5PcwsJE1ZPGE+ewTJjxwPLA54liY22Yb5ptih2aHPKdeM9vj/GMdI9xkfyP6bH8Qdhk1cPG4ZVh0vmLAZbNuo2c4PiNeejaDOj7XBrpgXaDqYWyWynNws/Cr4Kjgh+GDYRujO2Y5Njs2OT4bfhW+SP4NMjw2M9iOcEXYh9CDxY/Jj2GL4Uenk2euVto2M9Ta3rkeSPZKMml2XJYcslXQ1dSW8MbUeTDLUT0yyWW4lOTc4pRx1OiYcVR6kinSPbE40TX4FfgWfAb8DziPHUmyxmWMEMhI2ZjDSeHZYcni2GLR9vSy8Lo8Qrw6/JLtiCyCHYznxAfINcAA2Yn4CfXYc8jR2LLA0bGwsLBAAAAggCBAEGDicACD2gDwIFL/8kBQcGOW8uCgEABAEJDAEHAAgJBAEAF04JAQBtEwEAGQ8CFAUICQgFAAUDARYBDxpZBxEpbxwFBheEJwwEBi/9IBwCAA8LHwYBCAIVTAUBAgoXDAQFgQkDATcCDQYDBwsHAwADBAQLAAgKHwQGI1sTAgYXgCUHBwsm+S8EAwIIC2odBAMLL48UAwAfNiUFACQUBwIbDAQHAAQJCgYECwQFHwABLNsNBiK+LAYJCBgIAggMCQ8DAQABGgU0Mw0DAxxuGgkDE3cmDRhVJAkCBgIDAgAJEAIAAAEEA0cABAycAQUHLw8FAAMDCwkIAhF/BwoDAhAW/0cABA4iCw0FAhIQBw0CthgGBSQBBAABAQcAAAAAAAAAAAAAAAAAISUAAAAu/yQAAAAL/zMBAAAAAAAAAAAAAAAAAAABAAAAAAIAAAAEAAABAAEAAgACAQEGGQEDEigBAyaUCwEEHP8ZCAUILGQPBAIACgtGEQQHACGmEQQDCXASAgJWDgABFQcEAwEGCgUEAAMAAigAAxhlBAU2Xg4EBxC1KAMEBR55BggDAA4RjRwGBAQZFxAEAh5SEQUFrjEIAS0DAwIBAggFAgABBQAaAQkiaQMHKddVAwIMJygGBAQj7RcFBAIGESUYBQEDNWsRBQERQSsHBEcNAwEdBAABAAMIAAEAAwAAGwAAAW0AAAAABAEAAAAAAAIAAAAAAQAAAS3/DQEBAh7/OwMAAxMkBQAFAQIAAAAAAQAAAQQBAAIAAAIAAAECAQAGAgACBhIbCAIFDDD/HAECAQoFIQEAAgcSEAgAABAmDAIAHRcEAhsLBQgDAjYBAQAAAQADAAYPTgEKNEkPAQcZXxEJAQRBzhwTBAINCEsNAgUHFRcRAAAdfREHAd8gBgQ6DwQJAQQMAwcABgIAEgAAF0UOAxX/LAIJCxcjAgUGFSgUBAABBgYJBgMAARAJBgMAI5kMBgb/SAMAMAUCDwETDwIAAAMCAwUAAAMBAQIMEgIABBpEHAQCBz6bRQkAAAICAwQFAwE/SQMDATDkXgEA/y8DADsAAQQAAAYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAUAAAAAef8UAAAAfYIAAAAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD35', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(38, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=9	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFKboAUQBQ1Mg+fgXfjJ+Mj5ZPniTsk96DJYt1j1lDmWbRB9Hm2eLRwH3A/uC4LLgZzWDN/g5eTw6cXi5DjEuYTtNPOs/bh5LeQoLF1HPmw+aQzthzw6jAZsdsR2+WfY59mjmaF8LNMI9uh2GO/I/hk/yP7bG8YexjxS/OKdOhwy2TIZKNrIec7HiN2Ml4HOmJXArrgaaDrOWxayjvw29EbcKtgq2DJYCuzOWY5NjsuOx4LHhd+Wv4tM3g3PvjMsnP5o7gj2IvJp+HK5YPlk+ezN7PCM1rB2qg6SPppdll2OLMNs3tZJdAlwFXYYdBzwOHk8UDxjrDI8sgx2PC4ddhs+QhzHrIaUj84TrgXSg/YA9yD3YN6w83CxNHMsU3wyeW5ZNnlOELZ+LBysF7YDrlHXA5ZC3yCSYydwc3EmsDE8Q5Uh7k48xHyeXPF07BzsPCQUDBAYGDAAHEA8DBDZQDwQMP+8uDgoMOpg3DgYAEwcDCA0JBhgbBAUBFjYSBQI2FAgBFhUMFgQFGAUEAAMKBRAEEBVhCBgtoBcDBhhbMQ0ECEuoHgoCAAgGLAsCBAQKOwQAAQoTDAQDswgFAEAICQ0AEA0IAAACBgQQAQgHFwMFH0sWAwkawC8FCwco+zUIAQEIC0wjBAMIJHUPAwEXQiYHARwQCQIfDgoGAAAHCgMABwIHFwMDKOAPAxuzLAYCCBQOBAoGBwUEAQEBFwwyLQsCBBiHERQEH5UmDhVYKgMFAwEDAgADCwIAAQQBBEEBAxCnAQEGMhUDAQIFEAsCBRRZCgcEAREa/0MBAQ4sEA8GABMhDAoCvR8HAyoBAQAAAQkIAgADAQIDAAIJFQICHyEGBAUz/x0GCwUU/zMIAgAMAgUCAwMDCgkBBAAKGQYDAi0NAwEaCwYGAwMQAQEAAAEJFwAAFAYCASF9BAECHf8UBQMIOccVCQEBCQ06BQgIAh6TCAcEEV0TAAE8EQABIQkFBQACBQMCAAEDAS8ABgt4AQcmMw4BBRbvIgsBBi1iCggBABEQUikDBAYbERQBABZZFgUG0DIIAS4BAAgDAwgEAQAGAQAfAAUf1wEHGm9AAAILPhcGBAQtohIIAQIEFTwZAwAIL2IcCAAHGhICAuAJAgAwBAABAAMBAAAAAgAAIwAAAlwAAAACBgAAAAAAAAABAAAAAAAAAiz/FQAAARb/SwEAAwshBQAGBQMAAAAAAAAAAQMAAAEBAAMABAQHBAIWCAYBBA8pEQUFBSP/HgoDAAEAAAEDAQAKBAIAAQUKAwABDAUCABoOAwgBBP8EAAAAAQAIAAIEJQEBHCMKAAEeNQkGCARE/w8GAAALCU8jAgEEITERAAAbYSMMAaEmBQI0DAIIAAIGBAEAAgIADwABEzUEBzLDHAAHLzYqAAACNmEzDAABBQcFBQABAhQJAQEAJ1kJAwP/LwQBMQYCCwMYBQMBAAECAw0AAQUSBAURPA8ACRA2KAICDDRZMQcCAAIDFgYEBAEsQgQBASnfJAIB/zABAT0DAAQBAgkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwcAAAAAc/8RAAADrIAAAAEEAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD36', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(39, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=10	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFLjoAUQBQ1Mg+fgXfhL+Fhpvfk6VpQmynY8NlJ2BDGUbRR9Hm0eTVRLnE2sS5QNgnw2nPdwn+A2tcXn5j6EuYU6VPW1/Vh5LOw8LEwtPGUueYz9jzhHKA44FiQ22cfJpviC2aVOldGo9qj3iPZY9hgZyP/IH0wezC1ULW4bPj0+OX45LfNeee7DiHONV4RWiJbwVpgZ+E7MWlgWzPwc/Cz43jgquOJ46unO2Y5HzkuPd4ZnhTcHPwp5Hq5c3Lg6mNYI9CT0OnRbWTrxcOnk+e5WpEmM1SBvihcZLxrXBOYO8hzzHPylfCk8CvQNLE60NWVMdTxtLD0tPQ08Pg0MJr4uTnTOvKy2H+wnPgb+Iv4n7h7vDO7ObgypvJOtmX3jPPl4bjq8WDTfJK2ynK8Orw/vCq8WZyFPBCJ1R+CBvYW4gx2DZ0ZYPG3wGbAfuDW0HAwEBAgIEBQAGBRACAzFcBQEFPf8iBwsLRKRBBwIADAIJBQMIAg4SBwMCHEALAABlFwEAHw8HFQMJEAgEAQYEAhQDBBZVCQYqrxYCChxhLhEIBDmnIA8GAQ8JKgsDAAMYSAYDAg8YFQICnBAGADwDBAsBEggFAQECAwQMAgULHwMHIjEcBAgXiQ8GCAks/yQKAgAJDV8aAQYKJkgVAgIUaiQJADITCwMwCggDAQUICQcBDQgIKwEEKLQGChWGKgQEBwgOBAsEBhcMBAEDDhVKMAkGBSuzHBkGEaQvDg4lGQUBBgQBAgAECQIDAAUCCj0AAgW9AAEBNAgEAAEECgUBBRBRBwQBARAZ/y4GAg8sHRIJAR4iEwcI6SoKBR0BAwAAAQoAAAABAAABAAAABgEAJDwCAQI9/xwBAAEF/1ACAQAGAAEAAAABAgAAAQAABgACAAMFAQAGAgIDAQAEBAAAAgEEHQABFhYAAxnNAgIDG+EcBQQEP18NAgADCg0vBwQIARrODQMCFpkNAANcGQEAFgIGBgQFDAgDAAIDAyoCAhx9BQUtdhQDBhS0IAUDBB5OCwcFAhAIeyMDAwYcChAEAh6DGgYFjy4MACAEAgUAAgUDAQADAgAWAQAY/wIGIjoPAQQQHRAEAQImuBEGAgIHDScbBAUEJhkFBQIWTBQJBfspBAAaAgADAAAEAAAAAgABNQAAA5YAAAALAgAAAAABAAAAAAAAAAAAATD/KAMCACj/Rw4AAjEdCAABAQMAAAAAAAAAAQMBAAIAAAAAAQEAAwIGAQEBBSgtBgMKC0r/LwMAAAUEBgEBAQ8XJgsCABIPCAEBPAoEACcKBgYDBSUBAAAAAQAHAAEJKgABHSoQAQAlgxcOBQQ9vjAHAgAKDY0aAgUEGj4ZAAAamSIDAnMuBAFGCwEHAQIIBAcBBwMDEQACDjkGCxu8FQENEyEiBAMCPFUVBwABDAkQDQcBAxkPCxACJ6EaCQP/LwMANwQAEgEOCAIBAAABAAcAAAcVAgETeRIABAxMLAICBC9MHQQAAAQJCwUDAgEeKgYHASbfMAcH/2sKAToEAwUDAQUBAAACAAIQAAAFFQABAAwGAAAAAAEABAYLIAMAAAAAGjkPBgABUP80AwEcojYCACMQAAAFAQABAAAAAAAAAAAA', 'DATA', 'CMD37', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(40, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE FACE PIN=112	FID=11	Valid=1	Size=1648	TMP=AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFLPoAUQBQ1Mg+fgX+iN+OhlnPm6VpBl+naUN1BzNHMWezR5LktcWTxPuE+un4AXikyejOdhH+B2UZXD5LyFeY1ONHMs+Vj5LewYOH3LHFsc3xTfjnoeeQ4RPmY+8qfJpvin2aVfiVOI9pj+iO+Y/nh72H+IPYwdjk4eKT47fj0sMTY6rOHO887DiFeJV4pagJqYenga2HrYWxg5mNwqfAZwjjCqcDY4SumOkI+Jh42PT4JvAd8ivyhsX2icbhHsEbwpdAo0QDZOvTY0nuyw/LtNoOy+bSRtLw0xLT3lPWSU4BXsNaptJAv4G/wqLA40HCZcZBwu3CwdOJlsfDwcbD70ivSf9N30l/4Obg/eB9ojzIfcBN7qTMTNzeXbyctEyPZYdJl2GbSYeN60GhsEPw7aFNsGTtDdbNzozOwHbA2/Q54WzmZs9G5UDbYPcB9wfBAEAAAMCAwALAhEBBS9yBQMJMv8aBw0QOV40BwEABwEEBwIGAAoaBwABGE4TAAFMGQUAFRkHFggIDAcDAgUEAA0EBxZRBAonqhYECCpZLAwFAzuvIhICAAoJMgcEBgMWPQsEAA02DAQGlw0HAD0GBA4BCwgGAAECCwcPAgYLGwEHJkkYAgQaqyUECwYp/zADAgAGCFYbAwQFH0kLAwIZYCILACsWDgMmDAoEAAAEBAYEDwMLJQEBJdcFBRd4IwIHCQQLAQwFBBkFBAEDGRFRMAkDAzFvHA8FHLM1EgtFJwYBCAEBAAAFDAMAAAIEAi4BBQdaAAADFAwEAAIJDAgJAhVdCgICBA4k/xoBBRM2JxQEABgpDQoFmxkPAxkDAgAAAQkAAAAAAAAAAAAAAAABG0cAAABN/xQBAAIL/1UAAAAAAAAAAAAAAgIAAAABAQEAAAIAAAAEAAAAAAABAwABBQEHFwEBDyEBBhbtBAMCErYjAgUCNEkYAwEAEAsoBAEGAB6qAgAFE9UPAQNeJgIAHAgCCgQFCwYDAAMCAyYAAxVaBQZBZhAEBh2cHgsGAShgEAwCAgsQkxQEAwMUEgwLAR1xEQcHmygMADMDAwcBBwgBAAABAAAYAAMR/wEDGy0KAwAPHw0BAQAirQsDBAAGFFsUAgQCJYUECAEdOgoGBP8RAAEbAAAAAAIDAAAAAAAFIwAABjsAAAERBAAAAAABAAAAAAAAAAAAA0j/EggAABL/ZggBAg8QBAAEAgIAAAAAAAAAAAIAAAEDAgIAAAADAQMHAwQAAiI0BQYFCkb/LwQCAAgCBAECBQogJQcCABoRCAICSRAGAjUHCwEBAxcAAAABAgELAAQOPAAGPWobAAIvmD0IAwc4/ysIAAADCCUbDQIBBjkQCAAIGRgAAWobAQA8AwEJAAIDBwIBBAIDHQAHGWgJBSS0MQEHDxQgCQIELDcNFgEBDxIUGQMCASgrCQ4CKooYCgL9NgMCKQIDBAAEBwICAAEAAQIAAQYYAQAHPBEBBAghGQAFEDSdFwAAAAYIBwACAQVM7AUBADHqQQgBpkcJADkHAQABAQUAAAABAAEEAAAAAQAAAAACAAAAAAAAAQAAAAAAAAABIUkDAAAAEf9BAQAABg8AAQAAAAAAAAAAAAAAAAAAAAAA', 'DATA', 'CMD38', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(41, NULL, NULL, '2017-05-30 10:16:23', NULL, 'DATA UPDATE USERPIC PIN=102	Size=5236	Content=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', 'DATA', 'CMD39', 'DATA', 'Reading or writing is incorrect', '3684160300036', 'FAILURE', 3),
(42, NULL, NULL, '2017-05-30 10:16:55', NULL, 'DATA UPDATE SMS MSG=MEETING INIVITATION	TAG=254	UID=1	MIN=10	StartTime=2017-05-22 00:00:00', 'DATA', 'CMD40', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(43, NULL, NULL, '2017-05-30 10:23:45', NULL, 'DATA UPDATE SMS MSG=SECURAX	TAG=253	UID=1	MIN=10	StartTime=2017-06-10 00:00:00', 'DATA', 'CMD41', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(44, NULL, NULL, '2017-05-30 10:25:24', NULL, 'DATA UPDATE SMS MSG=SECURAX NEVER EXP	TAG=253	UID=1	MIN=	StartTime=2017-06-22 00:00:00', 'DATA', 'CMD42', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(45, NULL, NULL, '2017-05-30 10:26:30', NULL, 'DATA UPDATE SMS MSG=SECURAX NEVER EXP	TAG=253	UID=3	MIN=	StartTime=2017-06-22 00:00:00', 'DATA', 'CMD43', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(47, NULL, NULL, '2017-05-30 10:27:27', NULL, 'DATA UPDATE SMS MSG=MEETING INIVITATION 2	TAG=254	UID=2	MIN=30	StartTime=2017-05-22 00:00:00', 'DATA', 'CMD44', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(48, NULL, NULL, '2017-05-30 10:21:40', NULL, 'DATA UPDATE SMS MSG=MEETING INIVITATION	TAG=254	UID=1	MIN=10	StartTime=2017-06-10 00:00:00', 'DATA', 'CMD46', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(49, NULL, NULL, '2017-05-30 10:28:43', NULL, 'DATA UPDATE USER_SMS PIN=101	UID=2', 'DATA', 'CMD47', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(50, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE USER_SMS PIN=101	UID=2\n3', 'DATA', 'CMD48', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(51, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE USER_SMS PIN=101\n107	UID=2', 'DATA', 'CMD49', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(53, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE USER_SMS PIN=101	UID=3', 'DATA', 'CMD50', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(54, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE SMS MSG=MEETING	TAG=255	UID=1	MIN=10	StartTime=2017-05-22 00:00:00', 'DATA', 'CMD51', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(55, NULL, NULL, '2017-05-30 06:13:55', NULL, 'DATA UPDATE SMS MSG=MEETING	TAG=255	UID=1	MIN=	StartTime=2017-05-22 00:00:00', 'DATA', 'CMD52', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'SUCCESS', 1),
(56, NULL, NULL, '2017-07-13 11:33:37', 111000999, 'DATA DELETE USERINFO PIN=1', 'DATA', 'CMD53', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 10),
(57, NULL, NULL, '2017-05-30 10:33:43', NULL, 'DATA DELETE FINGERTMP PIN=123	FID=0', 'DATA', 'CMD54', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(58, NULL, NULL, '2017-05-30 06:13:56', NULL, 'DATA DELETE FINGERTMP PIN=120	FID=0', 'DATA', 'CMD55', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(59, NULL, NULL, '2017-05-30 06:16:23', NULL, 'DATA DELETE FINGERTMP PIN=120	FID=5', 'DATA', 'CMD56', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(60, NULL, NULL, '2017-05-30 06:16:23', NULL, 'DATA DELETE FINGERTMP PIN=120	FID=1', 'DATA', 'CMD57', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(61, NULL, NULL, '2017-05-30 06:16:23', NULL, 'DATA DELETE FINGERTMP PIN=120	FID=2', 'DATA', 'CMD58', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(62, NULL, NULL, '2017-05-30 06:16:23', NULL, 'DATA DELETE FINGERTMP PIN=120	FID=3', 'DATA', 'CMD59', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(63, NULL, NULL, '2017-05-30 06:16:23', NULL, 'DATA DELETE FINGERTMP PIN=120	FID=4', 'DATA', 'CMD60', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(64, NULL, NULL, '2017-05-30 06:16:23', NULL, 'DATA DELETE FINGERTMP PIN=120	FID=6', 'DATA', 'CMD61', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(65, NULL, NULL, '2017-05-30 10:34:59', NULL, 'DATA DELETE USERPIC PIN=102', 'DATA', 'CMD62', 'DATA', 'Reading or writing is incorrect', '3684160300036', 'FAILURE', 3),
(66, NULL, NULL, '2017-05-30 06:16:23', NULL, 'DATA DELETE FACE PIN=115', 'DATA', 'CMD63', 'DATA', 'The parameter is incorrect', 'OIN6080036070300060', 'FAILURE', 1),
(67, NULL, NULL, '2017-05-30 10:37:04', NULL, 'DATA DELETE SMS UID=3', 'DATA', 'CMD64', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(69, NULL, NULL, '2017-05-30 10:37:36', NULL, 'DATA DELETE SMS UID=2', 'DATA', 'CMD65', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(70, NULL, NULL, '2017-05-30 10:41:44', NULL, 'DATA QUERY ATTLOG StartTime=2017-07-13 14:15:00	EndTime=2017-07-13 23:40:00', 'DATA', 'CMD66', 'DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(72, NULL, NULL, '2017-07-13 11:37:11', 111000999, 'DATA QUERY ATTLOG StartTime=2017-07-13 14:15:00	EndTime=2017-07-13 23:40:00', 'DATA', 'CMD67', 'DATA', 'Enrolling User Print, enrollment failure, which is usually due to poor quality or not the same fingerprint enrolled for three times', 'OIN6080036070300060', 'FAILURE', 10),
(73, NULL, NULL, '2017-05-30 06:16:26', NULL, 'DATA QUERY ATTLOG StartTime=2017-05-22 10:15:00	EndTime=2017-05-22 15:40:00', 'DATA', 'CMD68', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(74, NULL, NULL, '2017-07-13 11:49:38', 111000999, 'DATA QUERY USERINFO PIN=1', 'DATA', 'CMD69', 'DATA', 'Successful', 'OIN7030067032500219', 'SUCCESS', 3),
(75, NULL, NULL, '2017-05-30 06:16:32', NULL, 'DATA QUERY USERINFO PIN=101', 'DATA', 'CMD71', 'DATA', NULL, 'OIN6080036070300060', 'FAILURE', 1),
(76, NULL, NULL, '2017-05-30 06:16:32', NULL, 'DATA QUERY USERINFO PIN=120', 'DATA', 'CMD72', 'DATA', NULL, 'OIN6080036070300060', 'FAILURE', 1),
(82, NULL, NULL, '2017-05-30 06:16:32', NULL, 'DATA QUERY USERINFO PIN=115', 'DATA', 'CMD74', 'DATA', 'Successful', 'OIN6080036070300060', 'SUCCESS', 1),
(83, NULL, NULL, '2017-07-13 11:52:35', 111000999, 'DATA QUERY FINGERTMP PIN=99903	FingerID=0', 'DATA', 'CMD75', 'DATA', NULL, 'OIN6080036070300060', 'FAILURE', 10),
(84, NULL, NULL, '2017-05-30 10:06:39', NULL, 'CLEAR LOG', 'CLEAR_LOG', 'CMD76', 'CLEAR_LOG', 'Successful', '3684160300036', 'SUCCESS', 3),
(85, NULL, NULL, '2017-05-30 10:07:35', NULL, 'CLEAR DATA', 'CLEAR_DATA', 'CMD77', 'CLEAR_DATA', 'Successful', '3684160300036', 'SUCCESS', 3),
(86, NULL, NULL, '2017-05-30 10:53:30', NULL, 'SHELL ls\n', 'Shell', 'CMD78', '3684160300036\nshellout.txt\nbiometric\n', 'Successful', '3684160300036', 'SUCCESS', 3),
(87, NULL, NULL, '2017-05-30 10:52:59', NULL, 'REBOOT', 'REBOOT', 'CMD79', 'REBOOT', 'Successful', '3684160300036', 'SUCCESS', 3),
(88, NULL, NULL, '2017-05-30 10:56:06', NULL, 'DATA QUERY ATTPHOTO StartTime=2017-05-21 00:00:00	EndTime=2017-06-23 23:00:00', 'DATA', 'CMD80', 'DATA', 'The data and equipment configuration are inconsistent', '3684160300036', 'FAILURE', 3),
(89, NULL, NULL, '2017-05-30 10:59:25', NULL, 'CLEAR PHOTO', 'CLEAR_PHOTO', 'CMD81', 'CLEAR_PHOTO', 'Successful', '3684160300036', 'SUCCESS', 3),
(90, NULL, NULL, '2017-05-30 10:54:09', NULL, 'DATA UPDATE USERPIC PIN=102	Size=7224	Content=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', 'DATA', 'CMD82', 'DATA', 'Reading or writing is incorrect', '3684160300036', 'FAILURE', 3),
(91, NULL, NULL, '2017-07-18 12:57:40', 111000999, 'CHECK', 'CHECK', 'CMD83', 'CHECK', 'Successful', '3576164500013', 'IN_PROGRESS', 3),
(92, NULL, NULL, '2017-05-30 11:05:34', NULL, 'LOG', 'LOG', 'CMD84', 'LOG', 'Successful', '3684160300036', 'SUCCESS', 3),
(93, NULL, NULL, '2017-05-30 11:00:50', NULL, 'VERIFY SUM ATTLOG StartTime=2017-05-29 00:00:00	EndTime=2017-05-31 23:40:00', 'VERIFY SUM', 'CMD85', 'VERIFY SUM\nStartTime:2017-05-29\nEndTime:\nAttlogSum:0', 'Successful', '3684160300036', 'SUCCESS', 3),
(94, NULL, NULL, '2017-05-30 11:02:29', NULL, 'SET OPTION ATTLOGStamp=9999', 'SET OPTION', 'CMD86', 'SET OPTION', 'Successful', '3684160300036', 'SUCCESS', 3),
(95, NULL, NULL, '2017-05-30 11:02:29', NULL, 'SET OPTION TransTimes=16:48', 'SET OPTION', 'CMD87', 'SET OPTION', 'Successful', '3684160300036', 'SUCCESS', 3),
(96, NULL, NULL, '2017-05-30 11:02:32', NULL, 'RELOAD OPTIONS', 'RELOAD OPTIONS', 'CMD88', 'RELOAD OPTIONS', 'Successful', '3684160300036', 'SUCCESS', 3),
(97, NULL, NULL, '2017-05-30 11:02:42', NULL, 'RELOAD', '', 'CMD89', NULL, 'Successful', '3684160300036', 'SUCCESS', 3),
(98, NULL, NULL, '2017-05-30 11:02:52', NULL, 'INFO', 'INFO\nKeyTran', 'CMD90', 'INFO\nKeyTran', 'Successful', '3684160300036', 'SUCCESS', 3),
(99, NULL, NULL, '2017-05-30 06:13:09', NULL, 'ENROLL_FP PIN=123	FID=6	RETRY=10	OVERWRITE=0', 'ENROLL_FP', 'CMD91', 'ENROLL_FP', 'Command execution timeout', 'OIN6080036070300060', 'SUCCESS', 1),
(100, NULL, NULL, '2017-05-30 11:03:39', NULL, 'AC_UNLOCK', 'AC_UNLOCK', 'CMD92', 'AC_UNLOCK', 'Successful', '3684160300036', 'SUCCESS', 3),
(101, NULL, NULL, '2017-05-30 11:03:42', NULL, 'AC_UNALARM', 'AC_UNALARM', 'CMD93', 'AC_UNALARM', 'Successful', '3684160300036', 'SUCCESS', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dmg_deviceconfiguration`
--

CREATE TABLE `dmg_deviceconfiguration` (
  `id` bigint(20) NOT NULL,
  `branch_id` bigint(20) NOT NULL,
  `display_order` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dmg_deviceconfiguration`
--

INSERT INTO `dmg_deviceconfiguration` (`id`, `branch_id`, `display_order`, `name`, `type`, `value`) VALUES
(1, 111000999, 1, 'ATTLOGStamp', 'ZK', '9999'),
(2, 111000999, 2, 'OPERLOGStamp', 'ZK', '9999'),
(3, 111000999, 3, 'ATTPHOTOStamp', 'ZK', '0'),
(4, 111000999, 4, 'USERINFOStamp', 'ZK', '0'),
(5, 111000999, 5, 'FINGERTMPStamp', 'ZK', '0'),
(6, 111000999, 6, 'USERPICStamp', 'ZK', '0'),
(7, 111000999, 7, 'ErrorDelay', 'ZK', '30'),
(8, 111000999, 8, 'Delay', 'ZK', '15'),
(9, 111000999, 9, 'TransTimes', 'ZK', '00:00'),
(10, 111000999, 10, 'TransInterval', 'ZK', '1'),
(11, 111000999, 11, 'TransFlag', 'ZK', 'TransData AttLog OpLog AttPhoto EnrollUser ChgUser EnrollFP ChgFp UserPic FACE  FPimag'),
(12, 111000999, 13, 'Realtime', 'ZK', '1'),
(13, 111000999, 14, 'Encrypt', 'ZK', '0'),
(14, 111000999, 16, 'ServerVer', 'ZK', '2');

-- --------------------------------------------------------

--
-- Table structure for table `emp_employee`
--

CREATE TABLE `emp_employee` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `account_no` bigint(20) NOT NULL,
  `affiliate_id` bigint(20) NOT NULL,
  `biometric_data` longtext,
  `branch_id` bigint(20) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `dob` datetime NOT NULL,
  `doj` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employee_id` varchar(255) NOT NULL,
  `enrollment_id` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `organization_id` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` longtext,
  `photo_file_name` varchar(255) DEFAULT NULL,
  `photo_size` bigint(20) DEFAULT NULL,
  `privilege` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `change_password` bit(1) DEFAULT NULL,
  `aadhar_number` bigint(20) DEFAULT NULL,
  `auto_shift_eligibility` bit(1) NOT NULL,
  `base_shift` bigint(20) DEFAULT NULL,
  `date_of_resignation` datetime DEFAULT NULL,
  `emergency_contact_number` varchar(255) DEFAULT NULL,
  `emirates_number` bigint(20) DEFAULT NULL,
  `last_date_of_employment` datetime DEFAULT NULL,
  `manager_id` bigint(20) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `ot_eligibility` bit(1) NOT NULL,
  `personal_address` varchar(255) DEFAULT NULL,
  `personal_email_id` varchar(255) DEFAULT NULL,
  `pf_number` bigint(20) DEFAULT NULL,
  `reason_for_leaving` varchar(255) DEFAULT NULL,
  `employment_status` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_employee`
--

INSERT INTO `emp_employee` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `account_no`, `affiliate_id`, `biometric_data`, `branch_id`, `category_id`, `department_id`, `designation_id`, `dob`, `doj`, `email`, `employee_id`, `enrollment_id`, `mobile`, `name`, `organization_id`, `password`, `photo`, `photo_file_name`, `photo_size`, `privilege`, `salt`, `change_password`, `aadhar_number`, `auto_shift_eligibility`, `base_shift`, `date_of_resignation`, `emergency_contact_number`, `emirates_number`, `last_date_of_employment`, `manager_id`, `marital_status`, `ot_eligibility`, `personal_address`, `personal_email_id`, `pf_number`, `reason_for_leaving`, `employment_status`, `role_id`) VALUES
(3, NULL, '2017-05-17 17:30:41', '2017-07-18 12:51:47', 111000999, 123123123, 251234, '{\"cardNo\":\"0000000000\",\"pin\":\"0\",\"employeeFingerPrintTemplates\":{\"1\":{\"template\":\"St9TUzIxAAADnKAECAUHCc7QAAAbnWkBAAAAg0Eef5wkAHIPwgDoABWT9wBQAJoPFQBVnCEO4ABpAGQOZ5yJAFAPnQBRAD+RsQCYALYNFACYnCsPpgCdAOkNc5yjAEQPngBuADeS1gC5ADIPQQDZnDEPtADfAH8O9ZzeADIP1AAkAEGTYQDmADQPswD6nC8OsQD6AAcO25wDAVEP9gDHAUSTpgAHAekPRQAOnawOxQAQAasOcpwaAa4PrgDlAe+Q6gAzAdkPkQA0nScP4wBFATYPFMMmV1snnvtCf5jrR/hifoOHQIJZFhcPhYK+COp5YpM6F0sfZBOIiYaWOY9VfSmHV/jZ6NcDQHv082z47mtGEDMIIQjI+i4fCwiS8ncAZwXFYlZ4DfvKeNPTzW2T7a/gwoi/8D2NaAtCBnOJRILyYycBGdiFCydUlnozDO4Quvg/FdiYcCjN/6Z88AGCHs/G+R55h3Ostp2bgTaKSQe4g1my+OlzlUdt+3o85zL7YR07h+ILS70rPCAzAQLXGbyfAaIJA/4GxcQSlf83CwCZFDgxRKQOAG0h+v+KTPzdTQUAxjAWBDUFnE5C60X+DMWYK5r+//1kRv/IAM/Om8LCesHFOMVjlAHUVRr+/wT/WJsBQmTewMA7Lg6ckjMDM1M+jgUDNHqMw6YPALaMU1zDwIlcg8HLEKOvDcTAw8PEB8HAXMNgBAClg0mwB5x8jlPEwAPFdb+mwQYAe+A0QMEOnMuoLf1qMjggEZyzhjR7//4F/MJc/fv5+MH+OhED/Y1Tw2Z4fAdvwZMBu36cwcQGwscNwXfBBQCaUkbBHQcAn5c6wwQrCZw7mMwzSiTLAIzbAjD9wFdWBQcDE5xAwIvEEMXVnrhCZcD8//84/v9hCACIokaQB8H9WggA0J4xwjpPwmIJAKehJzM6/MGVAW3IOsF4BYQbnD2zxjj+/jrAw2D/wPvB/MA6wMNjwWYEADu7hf/AnwGnvjrBBMWC1StDEAB+n9M5+/plwv7///3AOMAhmgGC3jR+wc0A+38xO/79+wfF0+Sh/P7B+/kSxWTqqHKSjYTEwlgKAozoq8H/wf8FwcJcHADPh6J4AcORXv6deHTBwUXCc7wAFd6rwf8EWHPww5eDecF0rMEHjPkFOvz9BNXWBdUhDhBOFisEwcBcwv6ZwXMF1UMhqMGFBhDnNqwx/J8RcVMcwQTVjmOQm1JCAAtDxAADl0RS\",\"size\":1232},\"6\":{\"template\":\"TF1TUzIxAAAFHh4ECAUHCc7QAAAdH2kBAAAAhcM1bB4aAIEPpQD/AB8RPABXAGQPHABuHikPYQBxAK4Pix5wACQPfwC3AI0RpAB1ACcP3QCFHtEOdgCJAKoObR6TADsObgBcACwT0wCcADEP8QCjHj8OjACoAGcNGh6oAE8OwQBuAD0RgQCsAKkMUQCoHkgNFgC4ABYOfh65AK0NagB/ABMQgQDDAJUNJQDAHrUPkQDIALUOCx7IAEEPXwAWABMRrgDWAFMP6ADeHjcPSADiANgPOh7uAB8PkAAzAHIQ9AD8AMoOyQADH0cOAAEOAR4OCx4QATwLbwDXAYgRywAVAV0PNQAZH+EOKAAeAUMOOh4eAZwPtQDkAW0R0wAkAdsPwgEsH2QPtAA3AScPFB45AekPGQD4AfkQaAA9AX8PigBOH4APJABOATIOSR5UAXIPMQCTAVcQ6gBbAWQO0mteAUYbq/e7+z6bM+V+li/fn/gWAa7tG+Q6/E4xHJxg4L+19WRJGr8c5Bjfosu56oMelJZweDRlSeHqrRYo0v/R/PItvbyDtOSDfxcIvfFrbe5u9VpQ+0H2THwoD4cRLQpmhg/zyRUp/9lhzKp8oXjFhIQBlZqVxRuhGVCYZWh5gpBvnfX4Ja3uan5Hh0Z/nN3VK6nH1HFTExf1PQPV+5+Bx/qP3/8cbRuQG+frvABNC+3r/AQA9UcLbu/qJw4I5O//7OtkdA+fwX5DUBEJ/d17OftcpYNW2hs6E67xVJqM9i5+hQVwfxMa/O6NT06NoBoSAqZ8WYoFDtiPVJ4od578sYcUj8qCYH6KCXaGae646XdlHBatBZ95ax5nDsr3TBMrBHcuoKQx/S0THfOIPfP2xVwt4+fQ9hzOi+OH/9sGG3TLHSBBAQJ92M8BHkAIE5QEAPwQFZcHAIUXBvynCAVzHQY+TAUAoB6F3nsNAKE4kAV3Yt/CfQYAqTjfaPobAag+HsBn3wAVUOEz//7//gXB+N7////B//8F/sXewCsEADlWqKAMHkBW9/47PsEAOUVlwcESABau0P4u/cE1QP9GwQDYdSEvCgB7blXCntrAhBAAim5ZxGnaw8LBev+VzwBYcXafdpQHAB1vLN4/wgQAknHbNQAeEnNWwYghxQhxzsEn/zFA/zo9UOFK//49KxrFXXBzwsPBxk3BV8LB2sLBw8KShMEAimslTRUAqXbb/kkrwSozVS8FxaV8OUUDABWEUwcMBW2Eg8fDxsEGwsbcrgkAcot0A8XAkcQDAHqMHDsDBXOU/fgFAGdTRsPdwBYAr5spOT0r4f//Kf7+/jv9KBsBq503QQTF1psz/v4DANGf8cENHgWqQElFCsUgqVfAw1b/xsLVADCyQpb+o8GhAV8THsSuNP87/Tr/Pt/8/////sAFwsMPAb+vOj3+Oyv64f1G/wcA4Qw9+uD+/sAIABIIOliLGwBi1xrDBsXD3KHBwcPCwwPEx9rDwsLD/afNALTHSP0zJgcA9N014MLEiQQADBs9exgBSucgksPBAQ/zUlkFAD/z58N5GhHzAFMvA9QQDHzBDBDGFl4FO8XfwUIDEAQXhf8IDxAXYv7+xDr+xd/+wGADEMzcWvsVEewgZETABf7G48MJEKwnZDv/WODDChEPKFMF+cThwMBRBhEW70P54VYKEQMuZwVLx95RBxAaOO0//sdvCRCwO2v/mUYDDhw+AEPCBNUIRS96BBAhRwm7UkceCkMBAAALgFI\",\"size\":1748},\"0\":{\"template\":\"T0dTUzIxAAAGBAYECAUHCc7QAAAeBWkBAAAAhSlCjwQpAAoP0QD8AB8LXQBNAGkPeABWBJMPOQBRAKUPgARZAA8PVAChAPALoQBsAB4PWAB4BCcPHgCAAIwOGgSXAMgOIABbAEILWACgAD4OOwCkBLYOfwCjAP8OmASnADUPBgF8ALALdAC7AMANUAC5BD8O8ADAAG4POQTFADIPZAANACYKjgDPAMQOtQDVBKIN8ADTAOsPpgTaAKUPLAAYADQLugDrAKcPbADrBJkOCAH7AHcOrwT8AIwP6gA7AK4KdAAAARAPHgAGBZYPWwAEAd8PugQFAYwP5gDPAaUK9AATAb4OWAAcBYwP5QAaAVkMPgQeARUPEwDnAbQJSQAkAZkPLwAgBbsN9gAmAYINbgQoAZsPKAD2ASoK6QA6AUULxQE7BVIN9QA+AQMLGARBATYOPQCFAR4KzgBEAXgMpABDBZEPEQBHAXMOqwRIAYkP/QCPAd4J5gBMAcYMzwFLBV4OkQBOAc0PXQRRAREOfQCUAQsLNABaASgOAABcBQEPWABdAWUOvwReAYAPu/weo5V/x4jL//MToHaQDSNfznhSdq6GPGgf+XcajvA7q5jvWI4mmIPpbPn4FEeOIQma8sMbe4Z3BA/q5Ia4gtmf6X76/GMUgwZkhnsi/QIeDNKJn3tLBG79mfsX/AgWPA59AiqJ4KEPGpCLkXwRC7OYE3nI9qr0qgCTFSzzgHxFYebxSIjTJTsgfYSl5h/gE4EzeZqLCQ2w4YhsKwBDF28bkBEfGjgeKQzl8VD1SAgr9D4RtfTAAdPiJQdVEAXuLPu4cy9vCfTl8Nj/Zwu/gZqChQFw5pzwrf99DCEI9CRfGAB5xgDaAnr0EuOo+NXgeXwM66D46IsCfBL9sIQ8hO8AyHd4I8h1vov4idWtMQ+rBJyGsPhtFjEbjIB7hQCNqI94f5z1vnNIgOXwtYDgDEgkAO618zqAnHoTsvg3RINB83j3s4SvjI4FJQq0gxePcYewe1EUuIGbBbjyrIvNDXib8/lwg4qLRIN9cwD9bAUGfPb94BP48V+J8INRitx7rpewE2Z58INo+tgNyFopvY093IsGJEgBAsUjcsIAbARxUZEHAGzD/cQuwBkBFAg6OlVixFnBVcDAwZRZDASMJQMrODzVAN0il37CWYFnBwoGgSaDhGqUCsWMLQtV/8BKEQAQMpXEcX/CbsDBVRAGuE2XhcCXX0XBDgRYTnDDwsAEiRcEuFKTdMCUBmx6xgQANlNkg8AAx1AWTAwAiVrJQUBO/wYAVWDtO/tGEAFYZfT9KjpPU/vDWCAZAFCtXsTFhcCIwMLBBP/EiMH/hQkAo64X+FBLCgCicB6BRIIQASB81kYj9cEpPDkMAKGBJDpV+Xo9DAAagky1a8TG/cMEAA2IhV8NBHGOZManwQbBQQcBdpNGwQbFb5NUxcSTAwDzUy3GDQFam9D7+D/9+SMGAByhScIEbg0EI6FAZcP/BcSGDwFVokOWwgfBxVACAFujQMLDAJiuNXTBBQD0ASvGRQsAP8c0wrB4xA0BY8wkiGUEBAaP0hrB/gQAMdUrxfwHAO/WNAf++yshACvZuj46wPg/Nfxg/zXBO//G+sFi/wgAKiQ3l0kGADDhMIS2BwYH60DAwMDABB0Gs+2eMf//wVLFwsOJwpLAwpQHXQAErO8TUv4ExR//NIweAOf6ogTA+1VIfKCpwsKr/8N1HABw/Zcx/jHG+P37/vz//jvBxvrAwcDEwP/PAH76EcB3M/wIxQr5Of/GwP79w8YQ6gY7wBMQXwTffMfG/8DC6Pj+BcDG+zAJEHcEEwdO+cb9BBDABRME/AIVDQ5argcQ5BYa+sHDwsAHENwZO8D+wi0EEB7cK3gMETkjIsTAn8MOFE0nFsH/hwQEFu0rTFEDEPLvTMQMEWwtE3ZpwhAtPCP9wsOZBNX5OFdGCRBBQQw7xPj5w3MDED1E58EFFB5FMP4FEApIa/g8BBBMSxpLBBZbUwxOBRCClw/HagUQlFIJepdCBg9CAQAAC0WXAAAAAAAAAA\",\"size\":2064},\"7\":{\"template\":\"TelTUzIxAAAEqqoECAUHCc7QAAAcq2kBAAAAhFcuZKojAHwOZQDrAAKkTgAxAGwPRgA2qocPZAA0AKoOc6pLAA8PaQChAG6l3ABlAKcPagB1qiQPawB0AJcOaaqHADoOeQBCAC2kfACTACoOqQCdqjYOrACZAPAPxqqYACoPvABmADWlFQCmAEQPSACoqqoOeACuAOQOJKqyAEAPlQB8ALCkRAC+ADsPTwDHqqAOwQDIAIUPYarLACEP0AAPADKluwDNAE8PWgDZqooO6ADlAPEOMqr2ADkP5QA5ANykTgD9ACIOjgALqykNOwAXAfQNZ6oYAaQNzADcAeClUwAeAasLVwAkq4APZwAuAU0O96o1AWsOTADzAYCmlAA/AXYP+wBFqwkNPgBSAckObapYAfkPNHv4DW24wZosj/We3P0VwPjyTXuCgL8Y3MDI9ZkFRYvQo8IOUBjuXFIxloQr1S57ovKK/5aA7UJoGVUqSBPE6Y2v3fOMA7H2zQPNX/DxPQ0N/eASZa9MDraNrPsc9gKtJQvl/YrxmAVXoG4PAfhRjdgOWdMI7in74f2LBnOhMBR1CF6Ukx3WVDodweyl+kCDrFhEDP4ROgEr6V4o0PjF6m4F3RIpsJ/E4jya7GvZlfTzAev0URuvEIaibKYG9lumbP3tQbvwiXzF+eQJOaNcigr4UfnQHWnVew63eBtnQITNo2B+Pgx2+0LctU+U320Hr4gKl9eRYH3J2vH/D/SfWnZ9ufxdhYteMa5LiH4XRnPL7yrdzvzT7tM05ToFqF8d3AYAcckawOwCAI8RD8DIAEO29f04//9GnAsEziMD/zI9VMwAWYx7/8SMhAfFSyvewoDADgCH8RNLasHAU0ULAIk1aSbD/4vBDACkNnM4fcHCbBEAvkoUav9CQMD/wpDAA6psZAP9/TDBAOTCH1YHAFFrk5NkrwEMbUyBDMWycI5UwGVpBwCtd14IjhUAUn1MB8CPa8HCwsLBwwbCx2nDnwUAfYfZJACqcIo0wMMYxb+RA8H/lMX+xGWXdmtlwAUAfJb1w/loCADGmyf/BEWBrQFpnT3DoAQEBMWcN5gMAKtYOsVU//z++vv9OMEAqrGdNE8HAASdLf9VGQC6n60EwIBpwcXCwsTDu8L79sBrAwDApujAEaq6pzTAwf46/PhV//7+Iy7+iQMEu6tGwQYAF29AVWodACCuwP8F/jpXwSoqRkpTnwUEt7dDaAcAI3NAxVVTBQBDwkC7EwQ2y8D/w8HDBMTHYcTBwcPBxAdvDqplzS3DwcIBw8JoxQkAz803Bfv5VDoOANTNMDr9/1T+/sD//sA7/xqqo9DQxMGMB8LGacbFw8HC/wbAhmj+xcPDxJ/iAQNgqHL/asBzTsXEaJPDcWnAwI7DxFXC/QQAM/r4PAKqOPo0wMHHBwYFovx6w8JHBsVT+ojAwZ8DAOM6YMSgEAcHdH//BcE6rBFPESfGwU0NFagTZ8D/VVehDBRiHWk9Pkn/yBD5iGH8wFZbwOADFOgmHMYKEO/yZ/rgwFcHEJA8ssBAawYQkUJwQZIIFFtHbUPAcwPV4FPH/lJCAAtDxAAEoURS\",\"size\":1592}},\"employeeFaceTemplates\":{\"2\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFIToAUQBQ1Mg+fgXbAttm0TrTbcG4w7mAy4Bng+NH4wThz2NEwcziwXWF8sNzgXOhrsFq2QzTT8wZ0inS2IJ5mMcOGx7TD8tE0cKCwbPHk8fhx7H2nM6AWJzbbMxw3cLe+J7xHM0eGR/ITshHzEaYx/MHs8azB7HSoR7Rkd2RvZip2KXYpJi0bLgU2EvoXuhM7E78DqZOWdfmD0tPyJ/FHZGZkRuCn4N2wv8Cf4J1kD7g/nAb4FrwLZz9SM8Gd1E+2Q3pE6UOlWeB54PHwwfD18NNw2PjCHLR68TXqyxdbW+GXYI63NxIk8PZg8CnwdOL481zxOvLY8eT51fjw+dD5YA/SG2hTVGz0OXQUcJZkhHAWZMLbMtbjcjLSstDwy/HxkfDJ+TnQWeB75ny2GlYXdiP2S3WC9Y6Thp3BdeTGXFLMTv0ZzHD/w7zCG8I4wmAQEABAEFGwAFIU0EAk2+FgMNGP88BQIEJBMSBAAABgMmGgoBAAQOCgUCD1ANAgYjEAAACQUABgEBBQcFAQUCBwsCAx5iBwhE/zIBBSFIKQcEByBACAwAAAoFFAcCAgMIGgUCAhIyAgIF6SMBAQgDAAUCEQwDBAABBAIbAggqtgIFHq9KAgEPdyYFAgIWSR4EAgAGGHMJBQsCEIsdAwEPEg0BAVgUAgEfAQAGAAEGCAQBEAMNQQMFF/8PBQlnHQIEAwYFAAMEAxcBBAEADBi6PQsCAi1NExADE74aDQwiHAAEBAECAwABCAQCAAEDBTgBCQ15AQQQIAoCAQAVDwYEAAUPCAUBAgkb/zUICgQXKx8BAQQ0BAkDKQgCBQwBAQEAArUAAAAAAAAAAAEPJQAALcYPAAA3/xQBAAAN/0sBAQAAAAAAAAAAAAAAAAAAAAAAAAUAAAALAAAAAAAABAABAwAEMwADJE8AAyn/IQEFFW4tAAECJFAVAwAACBx2EBEDARyaDBIEBlMTAgAvBQIBCQEEBAECBgQBAAEDByQABB4pAAMoKRgDARj/FgADARkuDgACAQwa/xYJBQIYSSAEAA5GEgQATBIGAhAJBAICAAMBAAACAgQrAAUk/wADLV8ZAAATjhANAQMSgBAHBQAFGI0iAAcCHqcWAwAILQYCA0QCAAACAgEBAQEEAgAAAgkBJAAFCUAAAAImCAECBiEGAQ0AAgcDAAAACUj/BgMIABL/WgUAAgUOAwABAgMAAAAHAAAABwUBAAEMBxICCgASAQgKAgEBAilLBgQMCm7/NQkGAQ8BaxIFBwIIAAUAAB4OAwgBRQkGBVMHBwoBAgoGBAAEAgIMAQYQPwMIIzIMBw0iURMFBQpMihkDAQEOCyQLBQUDJUIPBgMf1SsFBKQsAgA4CwMQAwoLCAkAAwECGgIIHW4RBxRbGQYJCRcXCQIJITkLBgEAEREWEwUBBClQDQsBIP8nCgrDKgYAJwwFCgIJEQkCAggBAx4BAg4dAQIPJAkEBwcUEAIGFRo/CwcBARciTw4IAgl9xh0GAiC+WQkHnhwKBBoFBQUBAw0GBQILCAkfAQgNSgQCFRcGBgQJ/w8GCggGCAUAAQATG2okFQkBNv8qGQQCFjoNBQUGBgEFBwMCAAINAAAAAAAA\",\"size\":1648},\"1\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFIroAUQBQ1Mg+fgXfMttmTzvTL8Cuw23B+8FngeNF4wbjxONUwczhxDXF8sdzxbOhruHuxK3TR8x52inC2pp5mM8ey7rTjstE1cJGxLPHs8bhx7HkjOeATMzDZ8x43MLaeJ5wmMUeWR/IjshtzE7ax/+Hs871B/WWpYqR0N2B/Nho2KbYqpit7KQcnE/oX+hN7Az8Di5OOYe3D2G3yh/Fnpmdh9uKnYJ2gN8C74B3kf7gejAL5FrgJIh9aE+UV4JeyQXBLzgXhXeA54HHwwfDl8Mdg3vjCHKR4ZDjs2hdaO+GfZJ82Jyok8lYg7Cn0dOB4YXjxOPL42azZ1PNq+dD98C3SH2APVGy0PTw0cIZ2hvAGZMC7Ik7hWjNS8+Hww/HxwPDJ8H2Q3WDtZi1mGX4Z5hVmWzWEdYCXko3Bv7C20Fr2RvUZ3lDdyZ1w38qswiAAAABAAHGAACHkMDAk+6IQIOEv9IAgEJHhEMAAAAAwQSGQUBAAEbCQwACWINAAEtEgAABwEBBQADCAcBAAIEBw0CBilUAxFI/zMCBR85NAUFBC5MERAEAAsBCQcDBwEGCwABAhgxAwYD6BwBABQCAAkBDwoDAgABAQUZAAYosAIEJ7lCAAUUXC8DAgcaVCMFAQAEFm0GCQQBEpEjAQAMDAgCAGUNAQApAgADAgAHBwYCEQEFOAAIIf8DCRNZJQIFBxQHAwgFBhUDAQEABxeTNA4GAi10FxMCELgkCQkcGAQAAAECAQEFCQMBAAEABi4EAxCYAgAMMw0DAQAPDQQFAAMOBgUEAgYd/ysIAgMgHBkEAAZCBgQDPA0AAg8BAAAABFsAAAAAAgAAAAQMOwADKbMRAAA2/x0AAAAM/2kAAAAAAAABAAAAAAAAAAAAAAAAAAMAAAAMAAAAAAAAAQAABAIGOAAAKl0CAzH/JgMBGGU0AgUFGmIOAQAABxp/FRADAxWUEhMFAycPAgETAgQABgECAgEABAUAAAEEBh8AAhs1AgInKhECBBf/GwMDABZBEwEAAAYY/xoKAQESXR0BAA0gCwEBMw0FAQcHBAYBAAMEAgABAAQ6AAIs/wIGNF4sAwAZmhUMAwIYlhILBQALF3guBQcBIVoPAwAJHwoFAykEBAEEAwUDAQEFAwACAwMHJwABBJECAAYfCQABAxoHAAQAAgUCAQAABkv/DQcKAAr/XgIBAgINAQABAQMAAAEHAAAABAMAAAANABECAwEbAAMHAAMCCSxYCgQIBnb/QQQDAAgAUxIBAwADAAIBAAsHAQMBUwQGAl0CBgkAAggEAgECAQINAAIPPQMGIyUJBg0YRhUCCA9HiRUFAQAQBx0HCAQKKl4MCQEp9iQDBagoBAAxCQUNBAwJCAoACAEEFAIJHWgPCBVxIwIHCg4TAwUKGy8MAwEAEQ4PEgAGAiM0EQkBJP8kDAv7LQYCIAcDBwEKCgcCAAQGAyUBAg4tAwMKMQ0DBgkhFAYEDhxABwcCAhwkVRUKAglDcxoDACPaMg8C3iINASAIAwwBBgwFAQEEBQgcAAUQJwEBJQ4GAgUG+xUHCwMEBAgCAAAPHCIhCgUDVP8vDgIEMEUGAgACAgAGCAYBAgEJAAAAAAAA\",\"size\":1648},\"0\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFIzoAUQBQ1Mg+fgXZJttmka7TKcZYw+mBY4JnkeFV40bhx+dU4MzyxHbFcsdjxXOhrsHm2QzTT88Y0inC2YJ5mMce2z7TDo9E0cLnwbPHM8Thh7H2nM/A+JxLZMxw3MLe+B7xHMUeWR/ITshHzEZTR/5HsMbzB/SQpZLRkd2R3ZAp2KL4rJy0/KgMWEroTuhNbAz8Bo5OMMazTmUUxN/FnZ2ZkbuKn4J2gP8CXoB1kX7gfmAL5FvgJKj9aO+mVyMcwQ1hHyRXlUeA54HHwwfDFsNZw3vhiHDT4cDhqSl9TK2CfZM62NxI04vZg4GnwZOL443jxMtL4+ezZ1Hhy+dD9cC3TL2BvVGz0PXwU8IbkgTIm5MLbYlbiOjFSc9Hww/HxgfDN+E3Qrcjpw222GnYW5jLmS3WG9YKXkp3Ad7TEVlD8Sv0R3HD/y51Qv8CMwkAwEABQMGGgADJEYCATu6HgEHGf8rBgUFIRYOAAAABgclHggCAAMYDAUEDlALAgQzEgIACQEAAQEECgUCAQMDBA4BCCNmBA9Y/zIDByBgPAcFBSpICRIBAQgDFAQABAMFEwIEABEXBQEF/xsBABEDAgYADQoEBAABBAQVAgQnyAMFHLE9AQEPZSgFBAMYRxsIAQEFEmEOBAgBCqIiAAEOEA8BAHINAQEkAwAHAAAGBgkACgMHQgECKP8IBBRcJwIFBgoJAQIFAxcBAQEADReyPQ4BASVSGRADDuEcBQkbFgMCAQEAAgAFCAQAAAADBi0BBw2QBgMKJwwCAQAbDQYGAAMPBQQFAgkj/yQGCAMcQigFAQVCBQMBKQkBAQ4CAQEABGEBAAAAAAABAAAOOgABLb8WAAA0/xMAAQAK/0gEAAABAAABAAAAAAAAAAAAAAAAAAQAAAAMAAAAAAABAwIAAwEGNQABKVoEAiv/GgAGE3YoAwMCIF4TBgAAAxxlFBEDABOmDhAEBTYPAwEsBQMBDAMGBQICBgQCAAEBADABDB4fAAInJxcBBRb/FQUAARM4EwAAAQca/xkOAAMUXCcDAAouEAMCPQwIAQwEAAEBAAMCAwADAgUuAQYo/wMDJlUcAQAXnxYRAgAXghEKAwAIGn4lAQQCIokYAQAKKAoDAysDAQEKAgYCAwAEAwAAAgUFJAACCGAAAQImDQACAycHAAgBAgcDAAAAB07/BgYOAQ3/UwQAAwYNAQACAgMAAAAGAAAABQYAAAENBRACAwAKAgQIAgMCBTE5CQMID3r/NQUCABAEaBQBBAMHBQQAABcZAwcAWQsHBVcDBwwEBAgHBAABAgIMAgMSQQIFIykQCA8gQg8DBwpBgh8FAQEMDBsNBAIFJkkOBQAd1ysIA8IrBgFFEAAMBQkICggABgYCGAAGG2MOBxlcIAIMCBQbBgMDFSgMBQABERERFQMFAh9AEQgALv8iCQb0KQsCHg8FDQMGDAgCAAYDASAAAQ0fAAMNJQcEBwcWDwUJDiNACQcAARogQhAFAwhmtB8IASbUTQkIvBkJBB0IBggDAwkGAwMHBgwdAAQQLAIBGxMKBwgL/xQFEQUCCA0AAAAQGFQmEQgBQf8qFAMBKTsHBAEFBAIGCgQDAQEMAAAAAAAA\",\"size\":1648},\"11\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFJDoAUQBQ1Mg+fgXZJttulaWTpYO9g6mJZ4Dnh6MG4wTUxmeIyMziwXLBcsHmgfLB3sHi1g2TQ4MNkimG6Zb5tY8WWw6TrhOMk8ojw2PHM8NhxTHimMfA2YzDZo9g/8i2+Tb5Pc0+GR+Ir5iH2A5wx/5HsMdWBbDR0ZrQ0faR9slqUebI+FD8ZfUFeEvMD2wU7BzsBg5OFmcSbnbMyP/FH1a6kTtKeYF2yH8AH6F3sJrkemAfrD7gFSj/CH8IPwI14y1gZwEltS+AZ8FPwg/GV8NLw3ngoODw6aPhZgzvDTMJMwik8VnQY4czkw6nrIOPZw3m40JKwONo51DzaeNDr0BvSHcCZ0Dt0GrZX8Y7mBnePZMNz4xxhxTDSedM5RT2RTbDP0meEr5nnmOr2SrZW88SmDpWBlYKZhZ/AS3CGaEV8C10SvaC7kOWQo4hzmOAQEAAQIDEgAHHk8HAjdxFQMDH/8iCwEEJlwkAwAABQcuHAUCAAQUCwYCDU8SBAVrFQEACQIAAwEFBwgEAQACAg8CDBNYBgtZ9RcABCiFRA8HBSJlCxIAAAoEDAQDAgEMAQABAAUOBQIH/wgBABMBAgYADAsDAwEFAAUpAAgWnAUBLYMlAQIXTjALBAAQVB8LAAEFDyUSBgYEGrkJBwQVMhMAAr8aAQAYAgEDAAEEBQYBFgQNSwICGagGAwpJHQEGBQYGAQQCBgwFBQEBEh+4TQ4FAzFyIBICEvEqBgwZGgABAwEAAgADCAUBAAAKBy0ABBF7AwMPJAwFAQEjDQMHAgMMBwUBAQlF/yMKCQMji0AFAQZVCQcCIw4EAQ0BBAAAAgwBAAAAAAABAAMHRQECJXQNAAIgbBAFAAEp/y0HAAADAAAAAQABAQAAAQAAAAABAFUAAQAfAAEAAAABBQEDDgIQJAACFhwDARWsHgQGCmEjAAMJJSUYAgEACRA+Dw4FBjL/FBQEFiMhBQK7FgkDJAwDBQECDgUBAAIHCA4ABgYLAQIKBQkBACT1EAIOBxvqOgIAAAUTtQ8IBAYU/x0CAQoaDAEBJQ8HAQ8EBQMCAQUEAQAGAgUmAAgUlwAEJEQkAAASghsQAgAemxQMAAALFkgjBgMDNJsYAgAOqCQEBTALAgAVBgMBAgAFAgAAAAcBHgEGFD4BAhA8BwEDBG0HAwUBBgYGAwEADC6KCgUFABr/MgQDAgcKBAEBAwEABQAJAgIACgYDAAACAScACgMTBQMNBQIEBRUcCgIBCGj/EwQFARMFtyMCAwwWKAoCARwoDAQDhw4HBE8GCQYAARIGAwABAQAMAAQRQQYOFRgRBQYXFxADAQlDWRUIAQAQDiMIBAAGIi4JAwAk1iMMBf9DCgBFDQEKAQkMCAUACAIGDAAEFUAPBhFMFwAIDRMWBAUJKi8NBAAACgwKDAMEBS1ADAoBLP8yCQX/MAcAKwoECgUDDgUDAAMCBRUABAwMAQMTGQcBBQpbGAQGDyAsCAMBAA8XHwYDBAR2uRAGASr/XwcEmCwIBBsOBwwDAgoJAwYEAwkSAAQEAQcAGBEADBIg/xIDCh0iRBsCAQELFTcGBQcBRegVCQIWajMEBBYYBgEgFgsQCAEPAAAAAAAA\",\"size\":1648},\"10\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFJDoAUQBQ1Mg+fgXZJpmGjJeXj4LZg+mBq4LlkYmX44HQZ+OU8uzzwNpE8sHjgfDQ3sHm2EeeQ4nZ2iuG+Zb5vY8WzR+Rr5u1ksKS43NnM0dh5zHS0NfA8YzbYoxw3cLu+DT4PcU+XQ+sj82H6I7sp9sH9GfXZnVV0RPBgXaR84lq0OLIqNCsYaSFHUvsl+wM7BzsDq3OLleU7xTOyF7BGxKTk3+KOYE+iH+AN4Bfkn7kWmDb6BrkjYzdDN+M+xy1w6XgJzEnlSeAZ4FPwAfCR8JLwzvg4eD56aLh2i1nZdcJFxmntFXQaoOzgwanrKOPZw3m51Ni4Gcg52DzqeNJ9kgvQDdCH0SF2GrYX8U7mRnOOZMN74xzhYrDSOdE4wz+RTdHN0EWQ7pLnm6j2SrZe8sT3TpOEtYKVgpfBS7DD+Ec8Q10TPxKfk0WQs4BzkGBAIBBAUCHAELIWIGCCZ0HQQDKqsiDAYCKYcgBgEABwVBIAcFAAUTDAQDEkoKAAWKFwEACwECBQIHCAYFAQIABAQBDRRdBg1Onh0AAi6JRAUEBCh7IRYAAAQBCgEABAIOCQEAAAoWCQEF/wwCABgBAQ4CCQgEAwAFAgcjAAQZUwQBJl8hAAMWXikHAgMYaSYJAgADEz0TCwUBHdAZAwIXQhMCAroTAgIfAgEEAAAGCAoCEAILQgIFFYIGAw1EHgICBgwDAgUFCSwDAQEAEiKJQw4FAjiAGxUEF/8xDgkYFgYAAwICAQABCwEAAQIBCTwBAiN8BAMcRhUEAwAvEQQEAQMQBQYDAQY9/x0IBQMlqjkGBAR3CwEEIA0CAQsBAAEAAwUBAAAAAQAEAgMHOgECJIkTAAEgZhEDAQE3/yUFAQADAAAEAQABAgAAAAABAQAAAWgBAAEwAAECAAABBAQACQQJJQAFFRoGAxPIGAIED1IYBQgGIBYWBAIACRsoDwsFBCb/IhEFEyQlBQPWFgkBGQwEAwMDCwUBAAACBgcACgMCAQALBQMAAzHQCwUHBCX/TgIAAAIZsAkHBggW/yICAQ0bEAAANQUDABQHAwEBAAMEAQABAQUeAQsXegIEKSslAQIakCAMBgQcniYLBQIKE1UmBAQBLWcWAQAWwhECAkQUBAAUAgsDAgAGAgAAAQIDHwABESkAAAtAEQACAYQDAQEDAQIBAAAADChGDAIFABv/LQMAAAYWAAAAAAEAAAAKAAUACAYBAAAFAS0BCAEaAgMFAgMEBAwaBgkDBn//FgQCAxMGlTEFAwwWIggDABouCggDoAwJBGAHBwQCAQ0FAAIGAQETAgQRRgYNGyEIAgMZHBAABAhCXhUGAgEMDRkJBgAEIjMJBQAixh0JBf9BCgE5CAIJAQwLBgIBCAICEAEEFUMPCBBTGQMGBw8TBwUEJywMBAADCwsPDwUBAS41BgcBKv8nEgf/PwgAKw4BBgALCgUCAAQEABIBAwcMAwIZKQQEBxNOHAECFCswEgUCAREVJgkDBQdYeRIHAC//VwoGrSYIABkOBAkFAg4LAgkFBAsLAAYGAAQCFQoBBxcg/xQECyAjRiMEAAAWBx8IBQYBRvsTAwMKXTgBAgsIBQAeGREUCAMRAAAAAAAA\",\"size\":1648},\"9\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFI7oAUQBQ1Mg+fgXZJpGWh6eRs4K7g6mJu4Dnh6bHp8TUxuNoyuTxwfJF8sHnAfDB7sHmyOeXR4g5mimG2ZZ5nYcXGQ+a55ulkuKz42NnM0Nh7bDS2MfA2fzbZoxw38I02DZ5H8UWGQ+Mr5kH3I605/4H8EdvZbRa0RrAgdYR1glpUeZM7NzsZrQFXVOsB+xMrAysBy1mVmcmf1F0yH7BP1Yesz+QOaFeiH+AN4F70DzkWOBcjLzkXYz9DHuEewZd4SxgDxVnpW+AZ4BfgD/GV8Jbwznh8eC56bHpFy33BbcCtxD58FLYa4MykQ6nrYPPZg3GZ1JqwPMg50DzoedLr0AvQHNBd0NtyPbY28k5mTnOLJkN76ylxwTDLOdk5Qy2Ra7DHmXeQ04hTmNxuFbYW8wW3DJeJt4MZiZ/Ay5iHbEX+C20Zf5H3kbWQU4j7kPBQQEBAMCGAAMHVMFBCZtGgIAM/8WCwUEJmsvAgMABQIyGQUJAAMRCAYBDj4MAgWREwAACgQCAQEFDAUDAAEDAggBDA1cBQ1Z5BQACiaUUA0FBB9pFhACAAQFDwEAAAEICQABAAcMAgAB/wcBABIAAQoBCAYCAQADAwEmAQUWdAMFLGIeAwEZYjEFBQYPaBwLAQAHExgYBggCKbIPAAMTVhwDArkZAQAWAwAIAAAICAkBEAYSQgIEGpUKAwxFHwEBAwQHBQcFBQsBAgEAECG/QBADAz9oHhYBDv8uCAkRFAMCAgECAAAGCAIAAAIBCjQACA10AAkPMQ0CAQM2DAMGAwsSBQYBAAc9/xkMEAUlnD4LCAdJEgIBHA4CAAsCAgAAAwoCAQAAAQAGAAMMUQEBHnIRAgAnVxEDAgEw/ygGAgAGAQEFAQABAQQEAgAAAQAAAGgBAAAtAAABAAABBAABCAIJKQAAFyMEBBCOFwMFD2kUBwoJIiwaAwEABRo0FREIBS7/Hw0IGCEhAgTPHwwDGgYGBQAECAUCAAEHAw8ACQYEAgEOAAMBAiPCDAgOChX/SQAAAAkUqgcLCAUa/yoDAAcmDwIAEAoJABIJBQMDAAYDAwACAQIeAQYZgQIAK0ceAAIScBsRAwIdtRsKBAEFGTweBwUEKJwSDQAWvBQGAkgRAQARAgUBAAECAwAAAQcEIAAIECUCAhFIBQMDBHwLBAcEAQQGAQABCzR2CAUKAB7/OwMBAAkVAgEAAwIAAQMKAgQADAQCAAAHAyMBBQYaAgUIBQQEBAoaCAcHCG3/CwQCAhIHcCcJAwojQA8DABsmEgQEqBAWBGMPBQMAAgoFBAADAAAOAQYQRwcQFRYNAQcUFg0DAQxDPQ8KAgIPDiYNAQMHKSAJAQEpxh4HBP85DARCEQQKAgoPCQIBBwMDEgAEECYNCBJGFQIIEhgUBgQJODwSBQEBDg8MEAMDBT5CCwQCLf8sBwf/MwUDLQgEBQIFEAcCAAUEBQsAAwMKBAETGQAECAt/CgAFDC0oBwMBABIQIAgBAgVrlw4DAT//TwgGkh4IAhoPCAkGAwsKAAQEBAgPAAQIAgcCGg0BDBUY+hoHEB4vSR4BAAAQFCQEBQUBRegTAwQSai8CAiALCQEuHBISCQINAAAAAAAA\",\"size\":1648},\"8\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFJboAUQBQ1Mg+fgXdRozOhSuM24LawduD74Jns+8X4xHRg8OwwpTz4nPBcuPh4fHExujGwDnGy8wfyDvCzoJ8sc8eTzuVi5Ow08KT4WPDY8HjxXHEzMDE5TzDd8x4ydjo3L78l8U2WQ+Ij8iHvIWth5yH84nLgHeFzZjB0N6Av8Gq0bbI2Vi0tPCdeomoj2gNrI2sDazMt6WNnxS0zR9KP8Kdm3uCO4E2gH8AH7B3MT7gPmCa6RrgoYjNTPeYnZUVwT3IFySHtSeCZ4Fn4wfjV9ML43HhqeD56aDh4yjOZNeUl4xjrdXJU4PSg4GnzaOLZ43jx8tK4eeh51Hhq+dD94B3SHcJL0DnwGvAU8Ibgg3YnbML7YlbhK/DSedF4w3Hw0fDNuF3QndkL0qrqKG8VaobhixeGzYKHspfAZrDW0lB4U31Z3hB9sR2QneA9wLAQABAwEECwEFH1cABTq5FgEFKdgZBgMENGAOCAAAAgMSFgMBAAgVCwgCE28bAwaEGgIADQQAAwEFBwMEAAIBAQwBCxuTAxMv3TIDByNUMAUCBSVWGBcBAAYCCAQAAAMHDgIAABUYBwEG/xoBASEEAAYBDgcGAgAJAQMjAQQgQQcEJ2wiAgIUfx8LBgUifB4MAwMLFkoTCAoDGcMeBAUUIBQEAmkYAgA0AAEDAQIGCA0CEwIJMgAAHKUGAxGNIQQBBhMDAgUHCBoBAQEBCy5tKQkBA0JLHA8CGf8mDBMkFwUCBgUDAgIDCwEAAAEBAUABAxmfAAEJORACAAAPEQUDAgkYBgcCAQsy/yIFAQQvXiMEAAh3DAMENREAARMAAQEABQcAAAABAQABAAICHAACKo4JAAMrwx0AAgIp/zYAAAAAAAACAAEAAwEBAAAAAQMBAQ4AAAApAQABAAABAwEABAIJPgAAGDICABXREQEEDWYSAgUGNTwLAAEACyF3HxgDBhzeGxMFCy0XBAJ5DwYCJg0CBAEBBAYAAAAJDA8ABgwHAQEWCwQAAiT/DQUFAhSiMgEAAAEbyA8LAQMZ/zIAAAspEwIAMgwHAA8CAgMCAAEEAAADAQUvAAUf4AEAMzEfAQIcuCYKAQQahBkGAQAGDUQsBQcFMogaBQEKcxsAACcEAAAGAwoCAwAFAQAAAQEBHgAAEGkAAAwjCQABAzQDAQIBAQECAAAABSvmCwEMABr/PgMBAAUWAAAAAAAAAAAKAAAABgYCAQECARYCAgALAgACAAADBBcXBAMFCoT/GgQDAhAKnRgBBQciLgoCABowCAMBaQwGA10GCQcDBA4EAAECAQISAAMZRQcPHSgQAgQcMxIEBQdIeRECAgELBhwNBgIEHyMKBwAhzScKA/9CCQA8CQUOAgsJCgYACAUDFAMGElsLAxBsIAULBh0XBgMHGhkOAAEDDQoPEwQBAy4sCwgBLf8nCwT8MgcBJw0EDQIICwUEAQcBAhMBAQ0XAgYQIwcCBAUUEgIGCzE7DQQCAREYPAYDBAZriRcDADj/SQkGxzAJAiMPBwcBAwwMAwQGDBkMAgIEAgQAGhYCCRIK/xYDExoMGRABAAAXFCkHCAoAWf8WCQYGQEcBAgEFBwAOFg8MCwMRAAAAAAAA\",\"size\":1648},\"7\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFJLoAUQBQ1Mg+fgXZJtlGla+RpYP9g6mB54Knk7EWYwXx5uOE0eTwwHfFcsHjwXGB7sHi3C3WR8wZmimG7ZL5vY8WEw+RrpOFkcIhw2PHM8dhxzHymM/A2HzPYs3w3cD+2DZ4Fs02WR+Ij9qH3A60x/5H8Md3g7LQ2ZLQ0dsR+siqWabY+li8NfU1eBPMH2wMrBysD65OFvd2n3KEyt/NDpbQs3uIOYF2iH8QH6B3MR7kOmCezJrgDYndTD2BPREd4S1hJxVltSeBZ4EPwg/CR1MLo3PhqPDp6aLh1yVnBL+Rv4msoVzBcoM4kwWnzYOPZ43jx0FC4ech51Hz6+dD90hvSDcST1DryPnJV8obgQ3QG5ML7YlTgQ3DSedN4xTXw2cDd0k3EldBV1KNaZf5W0obbTleGnYLdkp/DSrDGWEP8Sl0SfwB9omeEl+FjwOAwAAAgAGGwAJHlEJAUN/FQAFKP8tCQIEIUMRBAAABAQlHwgAAAYbCQcDEGURAQdcFwEACwEBAgAEBwoGAwEDAA0BCBpcCQ9N/yEEAy5dNgkGAytjHQ8BAQwCCAcBBAMJBAECAAkWBgAD/wsAABwCAggBEA0HAgICAwUlAQIfhAIJJ2wzAQESVSQLBQMdbCYNAwAHFDUVBgoGG8QWBQIPIREBBIkZAQAeAQQFAQIFDAkDEQQMSgADGMkSAw1YJAECBQoFAAMGCA8CAgEBECGLPQYFBDJgIBQJGuYnBQgcGwUBAgIEBAABCQIEAAAGCi8BAhFiAQMRKA8BAQE0DAoGAgMXBgMBAQ05/ygHDAoYW0EGAQZIBgUELxIBAgwBAwIABAsCAAAAAAEBAAAIOgECKGkMAQApvSEEAQIq/zoCAAACAQEBAAAAAAIBAQEAAAABAB8AAAAnAAACAAABAwAABwELMQABGTcDAA3gHQIFDGgdAgMIJToGAgIACh9dIBUCBRnxJA8FCxoVBAKnDAQAFgoEBQEABAYAAAEGAxcACBEWAQMYCgkBAiP/FQYJBxSjNQAAAAkY0hIPAgEU/yoCAggeEAAAIQ4CAhAGCAQBAAIEAAACAQMoAgMevwECMzIfAAAZniIMAwMZkREMAAAHHVIlBAQCJa8fBgALfRwHBScFAAEJAAQAAwAEBQIBAAIAKAAJE0cAAQs/CwIFAy8DAQQFBQECAgAACTTaCgcGAhr/RAYCAQUMAQIBAgAAAAEFAQEBCgcCAAACABMCAwEQAgICAAMCCRYTAwQKB27/FgYJCBIMmh0DBAcbFREDARsmEgcEfgYMB1YMEAQBAQoFAQAGAgMKAAQPPAYMHycSAgUcHhIDAwZHcRIHAAALCh4IAwMIIDULBwAm0icJA/8/BwBACgMOAggKBwMACgIDDgAFHV4JChFrHQAKBhUSBgcDHSENAQEBCgoNDgIBBC47CQcALP8yBgj/JwgEHg0ACgIKCQQCAQUABBYBBQoRAgMPJAYEAwYxDgcJBikrCAIAABccKAgEBAZ4wBMBAjn9UAUHnTMJBB4ECQoDBQ4IAAcJDwUUAQoEAQcAEhMADxgT/xMJFxkTIxUDAAEWF04KBg0BVP8aDAQESDYEAAUFCQQOFBUODAEPAAAAAAAA\",\"size\":1648},\"6\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFJDoAUQBQ1Mg+fgXZJpPGiaeDq4K5gquBb4Tnl+NGY0HDx2fkyOTx4fRl8MHmAfDB3IH2mM+OR4w5niuG6Zb5rccOWy/bp4Nl0uJW52NnMMdhzzDS2JbA8dhbZhxg/cI82DbxP9UPWQ+ML8lH3G42Z+pP8Edqa7BV0RLRkXYR+4iq0aba3lm0ZXUFdFv8D2wMrAzsBq9uVldm50L0yT3FPxQxoV+KO4JW4C8AP6BbMhvkGuDbiTnANw3rCn+Nc4x86S3gJ6lntS+Ab4HHxg/GT4JL4Ovg6eDp6CNC5glvRLMJMwkzZVXQb4eyk4iniYODZ8nmwnbC4Ocg51Djw2NDfwA/QA8CH0KaWeNZn8YfmAnUDbcDL4izhwTDacdM5wT2Q3ZDbmUmQ4uDjmameaM5Mc4XPjCWCjYjJla/CTfAPVEN+WN0ZzxH7kXuQ86TzkHBAEBBgIEHgAHJHMFBC+FGgIELt0dDQYDJWElCwEABgUrKAYDAAMZCwUFDDgMBAGAEQEBDAUAAwAECAQCAAIBCAYDCxNeBQdMyiEAAyt8RgsGAzJ1Gw8BAAQEEQEBBAAPFgQCAAgJCAAC/wYBAB8AAQkACwgEAwEGAwQiAAMkhggBKWMiAgIYeSkNAgQWQx8NAAAHEjsOCwYAIIsfCAgbTRQEBJcXAgEbAwEGAAEHBQoADQcPVwEGHZMIBxBHIwABBAQJBAQDChYDAQIBCyOLRwwDBDRlHxMED/8oCg4SFAQAAwEAAwAFBwEAAAABBzIBBhNvAAgRNA0DBQE1EggFAwQVBggCAAU9/y4RDAUeqUUDAQdGCAMDGQ0AAQcCBAAAAwwBAAABAAEAAAMFLQECIm8QAQEoTxIBAQA5/zQDAAAAAAEDAAAAAQABAgAAAAEAAUsAAQAzAAAAAAAAAwIACAEHLQACGywCAAvAJgMDCVgSAQMCLysMAAAACR5FEQ8BCSfnFxACETIUAwHnHwcEKgoAAAEDCAQAAAAGBhEABAoRAAENDAoBAiXxBwUNBR20QwAAAAoWuw4JBgUX/ygEAwonEgAANQsGAR8BBwMBAAMDAAEBAwIhAQMfkwACJlcqAQETkRkLBgQZbyAKAAAIDS8pAAEDMsAWAwASwyoCADEOAAAHAQQCAAACBAACBAkGHwAEDjADAQo1BAECAXoCAQcAAwACAAAACjCGEAQMARz/NQYDAAQQAgABAAIBAQQHAwEBCQkBAAMDBh8ACQYTAgYLCQQDBhAgCgcHCFH/GwUFAhIHuyYGCAshPwwCARYzEggBZAoKA0QHDgYAAg4GAgADAgAKAwYQYAYHHiQRBgUbKBICBQRDfhIDAQALCiYPAwAEGxUFAwElshsLCP84CwNGCQMIAwsMCwkADgQHDQAGFikQBxWTIAQGChcTBQIIJyYMBQIBCgoHDwYCBDIlCAgAMf8kDgvMOAkBKAsCDQAJDgUDAAMCCBcBAAkKAQEmIwMCBgNpJgUGCBkpCgMBABEWKAkEAQOC2BcFAS3QaAcFcysHAhoKBwkBAg0MAwYMAxgHAAADAAsAGCQDCxcd6x4CEh8mSSICAAAYECkCChABPvQWCgQHWiYBAwkKBwEkGxMRDQEUAAAAAAAA\",\"size\":1648},\"5\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFJDoAUQBQ1Mg+fgXZIttC1SjTacJqw0nDZ4Dnk+NX4wXhxeNUwczhxDXE9sVjxfOh2sHK2CzXS8080inS3oJpkc8ex77TjpNU1cLXxfPHs8Xhx7HylM7A+JwPbOw43ND6eB7wncUe2R/Ij8pv3AbEz/4Hs8/3B/PQ1ZLA0N2R3Ylp2KD4KZit/OSM2NPsV+hO7A3sTo5OJuemT2JUzR7CnM2dm7uKm4r2iN8Az6JnkT5gemBK5BrgJIxtbF2In4pWyFVgTyJXlPeAh4HHwwfDFksbw3vjKHLQ4ZDjsWlbbV8U3bK62txIkotYg7GgwbOT4YXjxu8L42azZ1NXq6dD9+gvSG2EfXHz2HXo0cIZwhnImZOL7Il7iWrNS8+2xw/HwwPHJ8HnQ2WF5zDjmGnwU8JbySbOA94CXkpfAO7C+UFt4y30R3FD50z3w18srxmAwIABAAGGgACJ0cDA1bWHgQHGv9CBQIFJRIJAgAABgQjIgUBAAMbCQgCEl0MAgY8GAEACAQABQIECAcHAAQCBA0BBiRlCAxM/ywEBh1YMAoEBCRODwkFAAkCCwQCAgEIDAECABciAwAI/SAAAA0DAAgAEgsEAAABBQUgAAUfogIFKsRIAAQOWjAHAgUgTiQEAAAHEFURAgkCFosdAwEJEwgFAXMKAQEpAgEHAAEFBwYCEwMJOQADGf8JAxBQIAEECBgKAQYEBhYDAwAADhuBPA0EACiEFhYEFMMqCwcVFAUABAABAwECCQMDAAAEBDsCAhV3AwENRhAFAgALFAcEAgQVCQMEAgob/zEFAgYgPhwDAQtYCwICKgwEAA8AAAEBBDQAAAAAAAABAAANRQAAQPESAAA1/yIBAAAG/1ADAAAAAAABAQAAAAAAAAAAAAAAAAMAAAAEAAAAAAAABAEABQIENAEAKWIBACn/JQAJGWIuAgQJHEAfBAEBBxV9Fg4IABahExMDBSYOBQATAgABCQIFAwICCgIEAQECCh4ABhwuAwErKxkCARf/IQMAAQxBEAIBAQUa/xUIAQENRiAAAQcdDQQALgkDAAcJAgYBAQEEAQAAAgUzAAQk/wIGM3ElAwETqRwQBAERmRMNBQAHE5kuBQgFFmAZAQAGFQgCARMDAwAGAQQAAQAHAQABAAMDMQACCaABAAckCQAABBQJAAQAAAMDAQAAA0T/DwMJAAj/TAQCAAACAAAAAAAAAAADAAAAAwIAAAAAAAcCAwASAAMJAwABCSlEBggHDYD/PwgDAQMAKA4CBQMNCQUAABsZBgEBTgkEAHsJAgkBAQcEAAMFAQIJAQMOQwcFIiUTAwgdVhEABwdIZxYIAwMOCxMIBQMHLF0MBQEU8CcEBscuCAE1CgcOAgoKCAUABwIBFAMDJW0PCBJsHwcGBQwUBwkGJh4KBQEBDgsNGAMBAyY4DwIAJv8pBwn/KgIAIggCCwIHCAQDAAUBAiIBAQ01AwQLJA0DBBAbEwcGCytOCQYAARcjQxQFAwVMhRcFASXYLAwF6xsLAxsGBQsCBQ4IAQIJBAUZAAUNKAIAHRIGAgUF0w8CBAYEAgMAAAAMHDwhCQQBTv8xDwIOIEQJAgQFAwECBwUAAQMGAAAAAAAA\",\"size\":1648},\"4\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFI7oAUQBQ1Mg+fgXZMstO3KjDScW+w4rh/gLns8MSw1HRh9N04oziwHOF8sFzwbug0sHO2CzWScw83jnaHorckccez7ORn5MUg8KGxbPDs8cxh7HyxNbE8JxZXOww3ND+eF74ncQeyhfon8if7Eds1/4H88f3B+IVxZLPkM2R3YFp2Kn6LZis5iwkrNZoVehGbA3sBq5OtnemT0NUyJ/LhMmNi9uKm4N2g98D94JvgX5gfjAfZF7gNaj9aHeIHYM+2AxhZyIPpXfBx4HHwwfDlk8Hw3LjLHLw45DjsysaYl8lv6F61FxIk8lZizGh0KPLpMHjxOfL48aTZVJTi8VD4sCvQBWZzWHxyHDA2cAZwjmImdMD7Ml5zWzNSM8mxw7PyofHJ8Cnws+Q7yPnnGdwR8JVgmbOCdZKXkteRn7C20Fr2UvUR/lDbk+1g2sjLwMBAAABgAGGQAEJ3cIAknLJAULFtVDBgIGGBURBQAAAwQxKQcAAAgWDAgAEXgRAgc6EwIACAEAAgIFBgYHBAUFBhABCiJgCQ5GyjECAypbMQUGBSlWFBACAQUFDAkFBAEOJQQEARs9CQQI2jACAAwCAQkDEw0DAwABAgMhAQYjgAQDKJ4vAAYOhS4EBAMZeSMHAAEGD6EPBAcEEWYgAwAKFAkDAl4NBQEjAwEJAAECCAoBEgYKMgECHLsKBhBRIwEDCBgOCAIEDC0DBgIBDxx0Ng0FATmjHRQGFps1BwYeFQYBBwICBwAFBwYEAQEECDkEAhqJBAAKQxQBAAIcEAYHAgUNCQYCAQwh/ywPCAUiMyACAgVXDwcBPA8BARECAQEABTAAAAAAAAAAAAANKQABSP8XAAA0/y0AAAMO/0cCAAAAAAAAAAAAAAAAAAACAgAAAAMBAAANAwADAQAAAgABAwAHMAAAJWkAASr/GgIHGncwAQIFICkYBQIAAhp4FhADABWnFRIDBkIPAgERAwMADAMCAQAABQMBAAACBSkBAyAxAgIsMRUCAhb/IgUCAhUzFAIAABET/woBAwMRThYBAA5GCQMDUw8EBAwDAgICAAYDAAAAAgEsAAwy6gAHMG4nAQIXlRULAAEUkBAKBAAJD7EwBwwBID0QAgALJAoDAk8FAgEIAAQBAgAEAQABAQMDLwABBbYAAQIiBAAAAQgEAAMAAAMCAAAAAj7/EgUBAA//VQEBAAIHAAAAAAAAAAACAAAAAgIBAAEBAQYAAgABAgIGAgMACDRJBwQFEJX/QwUCAAoAJgUBBgcSCQUBACQhCQABYgwDAWsMAA0DAgYHAgQDAAENAAMVPgQIJy4PAgscWhkDCAo8aB8IAAENAyATBQMFKGIMBgEW6y4GBJsuBAA2EgcKAQcJCgwABQIDFAEJIXoSChR6IQEGBwkVCAUGHR8LBAAADgoWFgEDBB44DwcCJ+8wCwn/NQIEHQcCCgAFCwYCAQUBAysAAhJDBAQOLQ8EBAghEwYFChlCCQUBABckXxYFBwNAiB0FARzcMQ4DvhwLBBwIBAoCBQ8DAQIDBgMaAAIOLQMBGAsGBgYCxwoDBgkPCgMAAAALHzggBwIFYv8wBwIQKkoMBQcBBQMDBgkEAgAFAAAAAAAA\",\"size\":1648},\"3\":{\"template\":\"AAAAAAAAAAAAAAAAAAAAAFpLRmlYATFLFJboAUQBQ1Mg+fgXdgpmGlGSVzYO+w/jB34LnktuXwxDRh9Ok0YzRwHeA8uMzwbOg9tDe3HSWWY083jnS3pLZk9eczz7Rn5MVweLBxPPFk8axh7Hw5JPA+DbZXewwzHD++FzwvdWczAfoz8jP2EfMT/4H5G/nB+JUxZHrgU2RzaFo0KnqKZispKKMuMz4TehN/A3sRp5OLmdnT0Z0zRzOtwqZgfuKm4Kmg38C3PBvgH7kPmBrZBvkZajk7HvIZch3SBXMYyKXpPODh4PnwwfDFPcXw3HjqeKh4YDj1zl86VuCW4TySlHJUsnSg5qhwaPT5wHjhOeKw1ejZ1N7qwdD98qiyK2id0l1wHHIWckZwgnEiPGP7MlpieTNasuDxQ/HwofDN8G2wuWHZYh3wq/Bd8cbyiNeAt5CbstdiW7Ebck1w230S39Dzwu3Rl8CtygBgMACAQEIAAJKJcHAiuRLAIKGZkyDAMEIzEOBQAADAQmHwQDAAYZCAcBG2MPAQZ6IQAAEgIAAgEHDAYCAQYAAhQCBx9kBQw23i4EBiVJMgUBBSlJEg8CAQcHIAsEBQMOLAQHARczCQMF/yEDABEBAAoBDAoDAQAABgUeAAYaawIHJ14lAgIQly8EAgEhZScIAAAIFZANCQcFGKYcAgMKGhMCAWUMAAAzBQIHAQAECAYDEgMKOQIDFYkFCA1mHAIFBRUFBQQFDDEGAwMAFRqOLw8EAy1wHBUDFeAqCREuHQQDCwIBAgIEBwMAAQEKA0wDBRyjBAcQVxwCAAAfGwMFAggcCQMDAwcm/zcMBQAmTiEFAAd5CQMISg4BAgwEAQIBAwgAAAAAAAEFAQcUNwICVP8jAQI080ADAQIY/1EFAAAAAQUEAAAAAAIDAwAAAAEBAA4AAAAVAAAAAAAABAIABgAHNAACMlgCAx//KQEHEYskAgEDGTAOAQAACB2RDhEDARuzChQEBTYSAwMhAwYBCgQEBwIBBAQAAAEFBCYABx4YAgIsLQYAARr/FwUBAxNRFgAAAAMZ/xsLAQATdCkAAAchCQMAKQgEAwsGAgQAAAEBAAABAgEfAgoz/wAENHQuAQAWvRQTAgAToBYMAQAHFXciBQgDHlcXAQADFA4DBBEAAgAJAQIBAQAHAAAAAAABJwAACNcAAAEnCQAAAAAFAAAAAAAAAAAAAjD/DwMDAAX/VAMAAAEEAAAAAAAAAAAAAAAAAQIAAAECAgIAAQACAQEIBgICBSBTDAUDCXn/MwUAAAMGEgUDBgYiQgkDAB5IIAEBbgwEAFsJBwgCAQUGBAIDAQEDAAQRUgcKHkIZAwQcRRICCAdBcx4IAAAJAw4NBQEGFiUIBgAZ+RYGCvQ6BAI+DQAMAgkKCgUABQMGGQIHG4ULBhJtIAIKBA0RAgYDIiYMCgADFBMWFwICBTA8FAMBIf8iDAf1IwICIAYFBgAFDQcCAAUAAyMDAw0tAwIKIQ8BBg0WFgUECSxcDgQBARIhVBMDBgZCbiIIAhzQOQkE9iIKAh0JBAYAAw8GAgAFBgUIAAIMEgIAHREEBAQJ8w4CBQcHAgUBAAAIGB0QBgYGc/8hDgIONGMGAw4DAQAABQYFAgAHAAAAAAAA\",\"size\":1648}}}', 10, 1, 6, 6, '2017-05-04 16:17:57', '2017-05-05 16:17:57', 'subramaniam@securax.in', '1', '1', '9480200530', 'Subramaniam S', 2208438157, 'b56fd11989938fbab8ef8e7a431e3ec1bb08d34d0cac5d78e368a9f8a2d3912b162b3ce9df0e5c759c61c4cca8117f40af7840b5b42e639ad6198536d4a05e7b', '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', '1.jpg', 20620, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'0', 12341, b'0', 2, NULL, '987654', 987123, NULL, 0, 1, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 1);
INSERT INTO `emp_employee` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `account_no`, `affiliate_id`, `biometric_data`, `branch_id`, `category_id`, `department_id`, `designation_id`, `dob`, `doj`, `email`, `employee_id`, `enrollment_id`, `mobile`, `name`, `organization_id`, `password`, `photo`, `photo_file_name`, `photo_size`, `privilege`, `salt`, `change_password`, `aadhar_number`, `auto_shift_eligibility`, `base_shift`, `date_of_resignation`, `emergency_contact_number`, `emirates_number`, `last_date_of_employment`, `manager_id`, `marital_status`, `ot_eligibility`, `personal_address`, `personal_email_id`, `pf_number`, `reason_for_leaving`, `employment_status`, `role_id`) VALUES
(8, NULL, NULL, '2017-07-03 12:37:02', 12345101, 12345101, 251234, '{\"cardNo\":\"0000000000\",\"pin\":\"220\",\"employeeFingerPrintTemplates\":{\"0\":{\"template\":\"TGVTUzIxAAAFJiQECAUHCc7QAAAdJ2kBAAAAhcs5miYdAAIOoQCAAAwpeQBwAGcPGQB0Jo4PVAB3AJkPpyZ6AA0PbwBNAPApugCOABoPfwClJiUPQACpAJQOiSaoAFcPjAB2AEApGQC0AMkO/QC8JtAOFQDCAIAOcybDADwPpAADADspPgDHAEEOeQDMJjAPLQDOAIYPFibTAMUOlQAYALkruwDhADIPngDiJjEPoADqAHcOFSbqAD8OowAwAKkorQD2AL4O5ADyJr4OwgD9AGsOSCb/ADIPIgDNATYoygAOAZUOjQAUJ7sP2gARAWEPiCYTARMPGADTAboo/AAWAbgPXwAdJ5AOlwAfAcoPziYhAYwOeQDhAR4pBQE1AToP4AA8JyYNzwBCAfIOwyZCAToOYQCNAaYtVgBOAScKTABKJx8OgABQAWQOwCZRAawObQCXASAoUABUAaMKggBQJycInABZAdsOACdaAccOgQCZATEov/rTn7/38wq+2NqnaXeSDeNfU1FOb2+HPmjb9XIoj/T+q57rnJMjvq+jqfkCDI+PJCuf9rLrhYG3EKOsaReKHE4aOfOgLVsIAYT+BHv42LaEgQWSBXxEgFQhLPsi5GKCjA6cod/47XCxAcfwkCTU9g4OLQXUdrylgIABirWHLAyYpfATEQKpdgSDrCX38yv0BAs09HTeXIEFfm4NHfKN2YDzSBZlDBQSBKpcgQ4AARmk8oxZmHklB8YDyHSsUvv19fAtCVzplK9TipuMZRD4GX/egISVBNH7WIyLJveZAoBOFZYlRaCAgGJ5QILc/OvStPnV6TJVjAtnKluN/oSGdnoGC093Axv0xP5gjAOLQQaIkw6xjX/8pkQBuIZEhwwA2Vi47HUB3IbZb1hbmXetdE6TPIRco+QCvH5YfwABXaFIAEmH9QEY7/RZe45Pk0MfzZcgPuASyPTS2qwqUCchOQECVB5XGgQyCTr/VWTAncFQ5sHBUcDA/sIAeSpo/sDAhwzFtBOlbnt1wRAAHjGW5G7Ai8H/wQZVFCbWOYyFwm6saoAhAaVGBsD9BCwQJu5ZosPCwE3+x+bCZsHCWcDWANxLknR6wmmMBcB6LgF1cm3CkAfAEibZc4xlwZAEwsXkw8HC/8JkXwMFxnUa/wsAUbxgx+bDc3oIAKa5DE7ZQBcA93ypAP7G51uWwMF5awSPAyZwhOn8/i3LAHav8f0n/8H+OkX6MwFrjFyQfkWEYqD7BgC/jBb7wAImv5Ia/8BA1gDwsqPCwMRSbAWbedkCAA+gRsHMALuFIf/+a0EXxfekhsNuwcDC/mLDxeVwe8IHAJBtGvsM/wsAjK1eAcXEv8LC/QYAi3JJx+OGDAA3vUwGwHRRhwsAcsVATMPH5oIEAHjFPQfDCCY9ykNpwcM7w2HlBwBByj3/vgQFgso9bAgAvgg0gOeBDgAr00CiwvrlwYQwBACaeTpUNAG53brAxAfAweLHxcLBwsMEwsTnFgBa48BL6/z5Af7/Q8DA/68IBCvlPf1wewTFveALwcILAF/q9cCN58F+BQBa6/+TASYV7jT8wgnFhPQGdsI3CBBMxDrHtnMIEFEBMAWHaCMRIAtDxoHDECMtNYvAAxDP1xPFIBGeGhDC/5IGFdgbQML8fwbVERocbsEGEJsg1sL6VgYQfSQawAfAxNgJEHooIHwH/vwiESQ9N38h1dY6qlRA//8v/Tr++gL6+zv/wMCXfQA29jA9/1NShwAOZQAAAAtFUgAAAAAAAA\",\"size\":1768}},\"employeeFaceTemplates\":{}}', 10, 8, 5, 9, '2017-05-04 16:17:57', '2017-05-04 16:17:57', 'vinay.s@securax.in', 'emp101', '101', NULL, 'Vinay S', 2208438157, 'df800915136db824362d94048d74b69269f3e0e1342d106e8e6e714f2e1e1ecec81e174b8525e92150dcc661f6a416d02309025b78eebd702e70d612965dab0b', '', '101.jpg', 6320, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'0', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 6),
(15, NULL, NULL, '2017-07-03 13:12:35', 12345102, 12345102, 251234, '{\"cardNo\":\"123\",\"pin\":\"123544534\",\"employeeFingerPrintTemplates\":{\"6\":{\"template\":\"TctTUzIxAAAEiIwECAUHCc7QAAAciWkBAAAAhLUpUYgWAP4OaADdAHuGlAAdAAwPkwAniG8OKwAqAKQOV4gyAPUPbQDwAHaHXABQAF0P8ABQiFoPkgBUAOcPlYh1ADwORAC+AE6H0wB+ADkPbACJiEMPWgCXAP4PaoibAC4PjwBhAMWHuwC0AEoPigCxiC8PgwC4AFsP7YjAAEMPpAAHAFmHawDIAK0PuQDXiOkPPQDUAOsNJojXADEPUQAaABKFRQDjAK8N8wDgiCgNgQDqAE8POojxALYNqgAwAG+HOwAAAacOkQAGiZ0OlgAWAS8PF4gWAZ0OTwDdAYiHIAAoAZAP8gA2iX0PmwA3ATMPe4hIAXcPwJNAgcGDhIFtET0PP4/nFLru0HNZeDjxLuZXCxr3VYhUh1VzkH+pB8n3E2j+ZKMGIgJaExv/pmD+sOPFBhyj/YP0XxHq8w/tf/ufe87/4gmigav7SYWXDOrx2fWnbX4ZFCZOlaKBZO/ig8aIIvRugG8BvVYsu07wy/h66/eHDBeywc6dLMW6mG+AMT3RYqBPhQikBGkaaQqIB1oN3GgB6s1iAJhVACT4VXyBdOz8qS6f3gIjnQiwjBGYb4Ki49MRYPDZh5SDLRJp90Tr1nxvgkdgCQ47I8pzvPKa5FYRUPYFnsrole7m8Wfj8ghHDFeP8oAajq9nvF/W/7MB5T4Finke7QcAlMMJxXVABgB2B3o6wmmDAVkT/cDA/cH4pwUAURh3wwUKBBEaA/3/K//7BQQZHYBsDgCZ5Az7dkH/QMFaBMVSJv+WBABUJ2u0GATdLu0qwvw7Ojj73f7AwMAxCsVPMOXDbsH/w8HWAFO99S//Kv//O8D6Sv//SwUAavJ0gosBJD9nwgXFJkTeUR4AYE7pO/76df/+MTj/Rzr/+cj+/cD//sDIAFzYZYDAwsGEtggEBVJ6w6CICcWVV5/8/zFBBACZVF71DQAwVWKDvcF0mgE1WFfAcbJneUqCDgCUWCT+wPp3///A/fz/wgCA7F3Dj8IFAER2TUqbBACIdkNDHAQddjcswv77N/76oP/+/fv2/Tr++Ej//sD9BABKeETUGADRerDATJGfd8DBw2l4w58HBMh8U8OBwgjFRnvBw//Dbg4AFYI+3Eb9MDkdABCCMMr8/z39/zv7UzyrMQgAqZFAOv76df77BQBXmoXCxksFAFyaN8AGAwTnnjHCGwBOdb06dv7//P7+/j7++3X//0TA/v86KgiIt7dJ///9OP76d/z9/Q0AvHJD+nf//DX+/v07BgTFuTfCw6AJxVO8uMLCwsLGp9EA4kxCQP4xS0c6V8SfAezEPf8x68D638HATMLAbsEAG1I2mgQAJtrogQCIVN8aoQgAz+I+S5OQCQDw8oz9+bBDBwCl9m39Kw2IqPtpwCrC5wcUbxdg/v/BLcYQBZkjxAQQCzPDgw+Yljl3/sHABFBqjRG/PG0tCNV7Q/VqwMDECBC7TXS//JIFELZQRXsAmMVRYvrABNVqWfwuBRCJZAa1UkaICkMBAAALgFI\",\"size\":1548}},\"employeeFaceTemplates\":{}}', 11, 1, 5, 6, '2017-05-17 17:30:41', '2017-05-17 17:30:41', 'deepak@securax.in', 'emp102', '102', NULL, 'Deepak', 2208438157, '4308e5367b1eb2d90e5fe0c0fe4f7a075a27f9732b8ec71c595b2cf807d22a13010a47180948a480fda5d5438409a1fd09fd75274621e662ce912896f9dd6314', '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', '102.jpg', 10988, 'ADMIN', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'0', NULL, b'0', 0, NULL, NULL, NULL, NULL, 12, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(32, NULL, NULL, '2017-06-21 18:18:26', NULL, 12345104, 251234, '{\"cardNo\":\"97\",\"pin\":\"0\",\"employeeFingerPrintTemplates\":{\"6\":{\"template\":\"SrVTUzIxAAAD9vkECAUHCc7QAAAb92kBAAAAgxsdYfZZAHkPkQBCAHn50QCRAIoP7gCb9mEPAAGnAFYP2/apABQPnwB8AG74WwDAAFkPVQDC9vMOFwDDAJIPrfbNAGwNgAAQAFL5YADcAE8PXQDd9ksNpgDfAJUNtfbgACkNzAAtADv4yQADAbAOYwAG9y8MfAAMAfkP/PYRAUUOkADQATP4nQAWASYNBwAj968N5gAgAZ0OuvYgAagNWgDyATf5nQBFARsPkABU9y0OKwNnG4ojPPtKiw/zKXrO+Vzpcgg/C//rq4KA/0pfIY5ughaqgoo4Al4mXQ/7CyicfITpo8aoOvgo9ToLZR1FRnwCDpU8C6oE6fvvAByoOPzF+x3jcAg23gDl3dgJvqDy1uSQi9LqmXvfBCX/qAm5A3qJkA5R7z8TpuzHlnabV/ng9jkH3Pv0+Wl2TQqeANZZ1xSpW8ur1P5qhGv5lf4q+jcHQ3Ti9BwaH/hPEyvzH/714iE9AQJ4IGIEA18dE3cFAKLvAP2sAgBvMoPCwgClxQdOMQMAQ/B0/PEBbTt9Z3LNAJ/IATbBKQcAqkeANGfBCACOSMVG/KsGAF5ZfcIFwvw0EwAbYu3/+/5fwT9bFAEAeFLETzdowG9mwHnVAI5zfHzCwcB+B2nC8wGVhwBAF8WNiIxuwnR3eHE6g8DuAA+QosOFmH/CNGdqwMHBxNEALGPmQV5GR1U7NAb2JpdkwYwGxSqfqsHAgRgBEliedKrBb27BZ1m7FQMLoprCVsJkTouHhR8A/KiQcgT/wXfAhH7CwMI6w/yOwIIGANyp1S/85wGbt3HCwgXEw33AhHULAKN8AC3N/jgQAF68J//+tzn/QEwEAJPAXXMeARHBmsAH/8cId8KGwMLAB8F9hn98BABZxJJsAPYZx1PBDwBvyXQyocLC/8LBBMCQ8AGyzAb9/Tr9GvaC0uL8wPw7//4IwfzA/v7+Ov//C/38/f7//cgAeCFWiHSAjBPFY9shKvz//v/+Ov/8CMH+/sDADcWB2qbAhcGQiA/FqtgG+P3++/7/PsH7Dvz9/woAXBtXxwjCdHEHAGIlT3SHBQC54Br8PgQDZeBQmgQAmSdGh/UBqONQxATFseCltQUAz+s3OysH9rXtOsT9CsU596aCan4JAEAwSWo2wG8KEOIE8vr86f/9/yARE83DxnLBwsCLiIgEwcJyf8FqwwQQwhFAhQYQfBI9hEgIEwoVRjP+/P3NEQDiPP3A/f3+OggS+RRD/8D+/j7/BOaMGDfD/8RACRNqGDCSssUE1Vc5zIgFEF06MQXCwvIRCkI3jATVnkvoiVJCAAtDxAAD/URS\",\"size\":1352}},\"employeeFaceTemplates\":{}}', 11, 1, 5, 6, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp104', '104', NULL, 'Test104', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', '104.jpg', 7224, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 12, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(33, NULL, NULL, NULL, NULL, 12345105, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 14, 8, 5, 9, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp105', '105', NULL, 'Test105', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(34, NULL, NULL, '2017-05-23 08:28:01', NULL, 12345106, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 11, 1, 6, 6, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp106', '106', NULL, 'Test106', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', '106.jpg', 5236, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 12, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(35, NULL, NULL, '2017-05-22 13:11:13', NULL, 12345107, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 11, 1, 5, 6, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp107', '107', NULL, 'test 107 a', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', '107.jpg', 17372, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 12, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(36, NULL, NULL, '2017-05-23 16:24:58', NULL, 12345108, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 10, 1, 5, 6, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp108', '108', NULL, 'Test103', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(37, NULL, NULL, NULL, NULL, 12345109, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 10, 1, 5, 6, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp109', '109', NULL, 'Test109', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(38, NULL, NULL, '2017-05-30 11:48:30', NULL, 12345110, 251234, '{\"cardNo\":\"a814a00000\",\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 10, 8, 5, 9, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp110', '110', NULL, 'Test110', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(39, NULL, NULL, '2017-05-30 11:51:51', NULL, 12345111, 251234, '{\"cardNo\":\"9e7f150000\",\"pin\":null,\"employeeFingerPrintTemplates\":{\"0\":{\"template\":\"So9TUzIxAAADzM4ECAUHCc7QAAAbzWkBAAAAg3Eigcw+AA8POwCVAPvDVABUAHUPhABpzF8PcgCCAOwPKcydAEoPuQBhADrDkgCvAEMPlgDDzCwPdgDKAAcPQszOAC4PbAAKALvDngDXAEoP8ADZzCwPZwDbAF4Oi8zmAF8P0AAsAEfDTgDrAKwOpwD7zOUPDgD6APQPP8wGARMPZgDLAYnDKwAWASAOSQAfzWwPIgAjAW8POMwmAaAO0gDtAdLDfQA2AekP8wA+zY4PxgBMASMPG8xUARwO0wCQAeTDfgBZAfYPYgBazfAP452/6y4bkkvAn4PrkX+vGPil2GsC6Dc2xrboAn7qVx4L7qIevTae8n/3Mg5ngnE3uAJpd3qV6Q8e5utltQA1AkeEtzcZH2GPne8rC8VHNABugDoCcefGFkzzCRfOnXfFzDF+d7/n7cp4E21M1F41OmVLtxJ8RF4g0faydINpsmYHHqLjuXiADoJOa4Si5tMRaIzewv8cKRKBgqz6/SLz72+PbnwT9USsvPKa5FZ2cAAJOWsWSo4vdYZ/MswX+1obSg1LBlRHgw0S/o4PJjb8kwMgMQECEd+PBMybMBBAPgzFgDDK/jFGQgUAjz35jA4Ahj0JKf3/QJ0UAIZDEDD4/lCfQ/04GQA+ifD9Mv7/M0FE/zrAwvP+MRMAP1Iy//z5//4+/ko+zQBTmXXAkoMPAPtsYwzCwMCIwcAHbgnMd4Qtwvz8BP3DMf4IAGqHYgHCwQjDwAgAa46TxMIO2Mb+HAAsUs8sMPz/I/4xOAX/wzP+/f/+wP7BAHJbO1EEAHeX8TUHzOSYMDAWAOOdU0Rzw3rGwcEGwcMIwnwJACyfg3FsDRIAD6DQ/4T+/Q3//S4wOA7Ft6v2Rj3AIjUYxb2r+P5L/0H//Y7/QDJO/hMAkqt/nbQOlsDCwsLOA8ILzI6yQ8D+/jj//8UBlbM6K//hBQPGvUbCfQMAkcQyDhMAQMu9ODr8/jP9+/39//84wv7XATXVukDA7/3+DPv+/v7+wDv/wzPB/v///gXF69bxUwsAm9tJOv//Mv/A/CMGAPbdNA/DoAkAOd3owpgKoxMAzexGBf/+DP3/R///wDr/wugVANPsPf46/vwy/Er+wf5KBf/5xAEC7z19wk0EA8f/N5YEABI7MMINAhBACBfEwhCL12xB//4JEEkgagz8QSsGEOHgVv0zOQgQ0CteBf38iwUQDzAawwQDEygxU/wFEHj9d8P3BRDvOUn6OAYTJDxeKsEFEBpaeQ5DBxCjW3cF/lXMAAAAAAAA\",\"size\":1304}},\"employeeFaceTemplates\":{}}', 10, 1, 5, 6, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp111', '111', NULL, 'Test111', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(40, NULL, NULL, '2017-05-22 11:41:18', NULL, 12345112, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 10, 8, 5, 9, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp112', '112', NULL, 'Test112', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(41, NULL, NULL, NULL, NULL, 12345113, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 10, 1, 5, 6, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp113', '113', NULL, 'Test113', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(42, NULL, NULL, NULL, NULL, 12345114, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 10, 1, 5, 6, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp114', '114', NULL, 'Test114', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(43, NULL, NULL, '2017-07-10 08:20:41', 12345612, 12345115, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 11, 1, 1, 1, '2017-05-04 16:17:57', '2017-05-05 16:17:57', 'sulthana@aa.com', 'emp115', '115', '21332', 'sulthana', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', '115.jpg', 17916, 'ADMIN', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', 8765432, b'1', 12, NULL, NULL, NULL, NULL, 0, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(44, NULL, NULL, NULL, NULL, 12345116, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 10, 1, 5, 6, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp116', '116', NULL, 'Test116', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(45, NULL, NULL, '2017-05-22 07:29:22', NULL, 12345117, 251234, '{\"cardNo\":null,\"pin\":null,\"employeeFingerPrintTemplates\":{},\"employeeFaceTemplates\":{}}', 3, 1, 5, 6, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, 'emp117', '3', NULL, 'Test117', 2208438157, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', '', NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(48, NULL, '2017-06-01 18:39:10', '2017-06-01 18:39:10', NULL, 23232324, 11, NULL, 1, 1, 1, 1, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, '456789', '45679', NULL, 'TestEmployee', 1, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', NULL, NULL, NULL, 'ADMIN', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(49, NULL, '2017-06-01 21:06:28', '2017-06-01 21:06:28', NULL, 23232323, 11, NULL, 2, 1, 1, 1, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, '456784', '45673', NULL, 'TestEmployee', 1, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', NULL, NULL, NULL, 'ADMIN', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(50, NULL, '2017-06-01 21:20:05', '2017-06-01 21:20:05', NULL, 2323232, 11, NULL, 1, 1, 1, 1, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, '4567123', '4567123', NULL, 'Ani', 1, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', NULL, NULL, NULL, 'ADMIN', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(51, NULL, '2017-06-06 12:52:51', '2017-06-06 12:52:51', NULL, 222333, 11, NULL, 1, 1, 1, 1, '2017-05-04 16:17:57', '2017-05-04 16:17:57', NULL, '420420', '222333', NULL, 'AnandM', 1, '8763a81445a57fddef49dc1d9a62f0a70966d9485f0b9532ace4673054445f93cc8f9bc3114c538f28e13cc1ffc2e7c73ad97f868b5cd56d4dfe734f0f1edd1e', NULL, NULL, NULL, 'ADMIN', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'1', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(52, NULL, NULL, '2017-09-01 09:35:44', 12345612, 12345612, 251234, NULL, 10, 1, 5, 6, '2017-06-04 14:41:58', '2017-06-05 14:42:02', 'sumaiya@securax.in', 'emp299', '299', NULL, 'Sumaiya Sulthana', 2208438157, '9e7f46cf33996da75ddbcb6ed7b77510c11ee59f6fec0dd42520a7f5529cc0cfe7d1ef826f7e4f47bada98ecedc000b28bd712c38bffb3d9b71f73b1d01966fb', NULL, NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'0', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 1),
(53, 12345102, '2017-06-28 15:16:17', '2017-07-05 23:28:14', 12345102, 888888, 1, NULL, 1, 2, 2, 2, '2017-05-04 16:17:57', '2017-05-03 16:17:57', 'anand@com', '888888', '01234', '810', 'Anand prabhu', 2, '7af375e9fb523120bdf2dee587ee0867fa496c5d07b76a25aebd39393cbb9720fe1d9d688a54637d8d26de24ace06c28a91cdd3b5b536215d2cd77bd05267667', NULL, NULL, NULL, 'ADMIN', '3DHdw0kMcGGs0JibKjJEk8vFafox4', b'0', 1233, b'0', 5, '2017-05-05 16:17:57', '67890', 5678, '2017-05-29 16:17:57', 40026, 0, b'0', 'Bangalore', 'anand@gmail.com', 12344, 'Relocation', 'ACTIVE', 5),
(67, 12345102, '2017-06-29 15:23:10', '2017-06-29 15:23:10', NULL, 999999, 1, NULL, 1, 1, 1, 1, '2017-05-04 16:17:57', '2017-05-04 16:17:57', 'ani@com', '999999', '999999', '4444', 'Anand Ar', 1, '3041c36434bb5555e5a25d682145754be78bb1b4ea8712f7ff84d476b96b93a810fbf7c711ac6d0ed0735efdd89bebd986f1e6a484546f8b911f6263b465ee47', NULL, NULL, NULL, 'ADMIN', 'GF07XblItAhGkvVVeODQIs3PSOT3D', b'0', NULL, b'0', 1, '2017-05-04 16:17:57', NULL, NULL, '2017-05-04 16:17:57', 1, NULL, b'0', NULL, NULL, NULL, 'Testing ok', 'ACTIVE', 5),
(70, 12345612, '2017-06-30 10:19:44', '2017-06-30 10:19:44', NULL, 820320150, 251234, NULL, 10, 1, 5, 6, '2017-05-04 10:47:57', '2017-05-04 10:47:57', 'roopesh@gmail.com', '1212121212', '12121212', '12121', 'roopesj', 2208438157, '7c1c4e199199fd28a157fe93e852a4b39558af56bf44ab478c727a7de2f50595a10dd6d5467c10cd110132e18edc3d0e623255495fce746d76c29c95ff931102', NULL, NULL, NULL, 'ADMIN', 'bUAXdwS4WgEEHKZOR13Zv3xBecoQu', b'0', NULL, b'0', 1212, NULL, NULL, NULL, NULL, 1212, 0, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(73, 12345612, '2017-06-30 10:27:01', '2017-06-30 10:27:01', NULL, 416086689, 251234, NULL, 10, 1, 5, 6, '2017-05-04 10:47:57', '2017-05-04 10:47:57', 'dad@fdf.oin', '212121', '2121', '213213', 'test1212', 2208438157, '8195244ae6b111a07fe53c958e62dea046f5b9f6369c0200cbef631a9f0f1252b0761ff99b570afd48b7691ea51af0bb478143f5c319978e627b082077c03701', NULL, NULL, NULL, 'ADMIN', 'zM6f3td2Q3FE2zbm0LBTXWok5Ourc', b'0', NULL, b'0', 32423, NULL, NULL, NULL, NULL, 213213, 0, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(77, 12345612, '2017-06-30 10:58:38', '2017-07-04 13:20:14', 12345612, 330828709, 251234, NULL, 10, 1, 1, 6, '2017-05-04 10:47:57', '2017-03-04 10:47:57', 'test_999901@test.com', '999901', '99901', '974249495', 'test 999901', 2208438157, '0f3a5c4441f272270e45dc7b8b51adc58b4bb91a1ccf960b3aad4e10c1715eaaa2576876acbde290e632b95633cee51f8be0d89b7b19361f7dad9e36139aa6b1', NULL, NULL, NULL, 'ADMIN', 'vGJfeoNAvE4gfJZqvGbJRcGMXYb9w', b'0', NULL, b'1', 345, NULL, '765432234567', 12345, NULL, 1, 0, b'0', 'asdfgh54321', NULL, 98765432234567, NULL, 'ACTIVE', 5),
(82, 12345612, '2017-06-30 12:10:45', '2017-07-13 11:52:02', 111000999, 921716, 251234, '{\"cardNo\":\"02c1150000\",\"pin\":\"1\",\"employeeFingerPrintTemplates\":{\"0\":{\"template\":\"TBtTUzIxAAAFWFsECAUHCc7QAAAdWWkBAAAAhYU9pVhCAAcP2QCiAIpXeQBrAGUPZgB3WA8PVQBzAJkPd1iCAPMPvwBDAB5XvQCXACQPwwGkWKEPPwCjAI4OP1i3AMoOegAFADxXPwDBAEAOZwDEWD8OugDCAPUPm1jUAL8OugAYADhVjwDlACYNowDiWDEPxADpAPANnVjzAKQMtgA8AKpUwwD6ALwNkwD5WDMPBAH+APUM8VgAAbMNMgDDAT1W3wANAacNCwAKWZkOAwERARUL61gTAakM9gDXAbxUSgAUAbYP8gAaWbkOfQAhAdkPFlgjAbcOBQHnAT5UnQAlAREO7gAiWTUO1AAnAU4O71goAWwLEQDoATlWKAAyAS0OnQAxWTAOIQA1AX4NVFg4AagMHgCFATNWQgBAARoORABEWS4OUQBFAV8MF1hHAboO6ACPAWNT/QBMAdkNHwBLWTILkABRAdQOrFhTAY0O8QCQAdhTcwBXAaUM8ABfWSkOWQBcAVsNpVhcAQcOu/geppYjT3ZrgktuoHaXUSNbjvX6q1/vPzAf+XcRWZLnmIa9rPgCDUKO4AibrwcbhxNnf7aHhNl7DAvx6I9EgbrLS/5ef3YXNXsHrGISjYFFEqMB1K6Q97pxiYHkmsjfaAgFD4mTRIQ4Mtv6rQNSDuP79KCQeKmJgYBj5OOs1fexfZl3jQ+M0PAmKQehfwP9zCSUYal6xYTM/BhVgIJdh5IFkBDgWODy5fCV3uQOKUPslHWh2PKgBKChSRLE64UI8AKY32CDMYS1BuSOb1Sj7NLvEH80/tTeAGzphr3TM/TXvroAlAs1fGB4/Hqs9sXnmeIYxuzvDYdZgW0KAXYZo7D5tIqhmXwavcoRh6GIwHrdE0DIFX+4fyUJsIBQLFDqdSKpj8sUra90gLlptIdgAoDaQIiRNCGNyPwoLSepQcxZWotdjFUQ5nGGUYiwfoM7SHiJBDGukAqwI9eULhD+9fuRkF7c+oqFVXzQ+R+DYu9IRgcyPAElZAACVh5eGcQUDWL+VWTAWMGQwMWZUFkMALYPRVzHp8L+lgUAXtFxiVUByCKMwcOIZ3RIAeE2kMGEp8NcmmEHAKQ/AO4uCVidQoCLwcE6xcWnwAgApEYMgjcRWO5SpJ2A/05vfd8QANZjlsGygMWawcLCwWAUxdVs18HC/4LAeAZ8xJnAwQ8AdWyskMTRbMHAwQkAYnQJmP41YAwAUbNegZnD/3/BBwC3f+Kk//xZFQB2Qe0kp/9PwP7C/znBMWgLAMOEFz6EVhZYb4ZagMLAtMHHMsNuCADBit8+OFEBwJoi/0qHFARRnKfEUMP/B2lwmpLBIQECoFnAxZl7wcH/n8EHg8WbT/6SXsL6zgCV8mHGw8PDwATDQl4BkbFQxMVNAwXPtUbCCwA5f0nHM8JywAoAe3nM+aH5/S7+EQB8vazaxcbGgMLCBsBlXAGmwzdUCMW+xnX+cMDABwD7xEWYwX4NAHfEhcKW0MD/SwwAfAE6jJz+w1r+AwB8xTKaAgEC2THAxgAiuDzACgBm6/XBxNT/lAQAyOz1w8VDAfD9sGrAp8DHm8DEw6d+f1YEBZ7/IowGAFY6MXmZBhAmBTqSB/4DSQwLWsLBL+cQ6laswUJbg8QHxMD4bcP/g8J/Op4GSB4RNP8GEIgXKJnAPwQQohfVeANIgCIawIAG1X0geoHABhCfJtZzx10RLCwnwlDBEBBoNf3DBBAj/Cs0XBEIPTR3BdVER0L+SwMQH0X1/gFIfkU0/sgE1T1QRJYDEI9VJAYEFfxcA8X2UkLFC0ZZAQALRVIAEB7cK3gM\",\"size\":1832}},\"employeeFaceTemplates\":{}}', 11, 1, 2, 9, '2017-05-04 10:47:57', '2017-07-05 10:47:57', 'test99903@sds.nv', '999903', '99903', '9742049495', 'test 9999_03', 2208438157, '030f1a510a5f5aa711597bde7e78fc00d983974e8f15defc9d06540fd3f5fe27340793293078afefbb63d40adc0e5e14c5fecf56374ed53787a6c009eb589399', NULL, NULL, NULL, 'EMPLOYEE', 'aJUyco0G1EQOu9FgrVZuMrl3Ttvfi', b'0', NULL, b'1', 345, NULL, NULL, NULL, NULL, 1, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(83, 123123123, '2017-06-30 12:39:31', '2017-06-30 12:39:51', 123123123, 744034, 251234, NULL, 10, 1, 5, 6, '2017-05-04 10:47:57', '2017-05-04 10:47:57', 'DASAFFD@GAMIL.COM', '23425342532453', '213234234324', '12123123124234', 'sdaasdSAD-EDITED', 2208438157, 'c76aa17d4a2c62251d90fdcd4ea7bb32246527e7940c2fbed91ce3349d017dc058846f17792c20ff5130841b66d1c0063abee2354ce518b52c58d36715e3a053', NULL, NULL, NULL, 'ADMIN', 'PrFgTrS4SN8d3iloKa41tbtsXO64z', b'0', NULL, b'0', 21323213, NULL, NULL, NULL, NULL, 213123123123123, NULL, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(87, 12345612, '2017-07-03 06:37:50', '2017-07-03 07:02:28', 123123123, 2042282850, 251234, NULL, 10, 1, 5, 6, '2017-05-04 10:47:57', '2017-05-04 10:47:57', 'test_9990901@dfghj.in', '9990901', '99909', '12345678909', 'test 9990901-edited', 2208438157, '1023973d79848439df79ad0c6a61f1af8564517335caa79d9a4898335112c500e290878891e2eb6fbfa63605a45f7d41d9a5fb740e195f1db968a81dd0142130', NULL, NULL, NULL, 'ADMIN', 'XkuF2vF6W83U5KEMfg7SzzfQnpziz', b'0', NULL, b'0', 12, NULL, NULL, NULL, NULL, 1234, 0, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(88, 12345102, '2017-07-03 07:19:54', '2017-07-03 07:19:54', NULL, 2387481452, 251234, NULL, 10, 1, 5, 6, '2017-05-05 10:47:57', '2017-05-06 10:47:57', 'test9904H@com', '323232', '323232', '4444', 'Anand Ar', 2208438157, 'f5e6d1bdabe39b7a11caac73644133dd279502144770f3787c770354c96deaed1ebdb8d2653ac1eac430013fb8c719b3a0cb880a9c597afeb8a7802b88cbb64f', NULL, NULL, NULL, 'EMPLOYEE', 'I4MWEcKOPzOkllh0Ea6b53M7Smq0P', b'1', NULL, b'0', 121, NULL, NULL, NULL, NULL, 1212, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(89, 12345102, '2017-07-03 07:21:15', '2017-07-03 07:21:15', NULL, 2519382605, 251234, NULL, 10, 1, 5, 6, '2017-05-05 10:47:57', '2017-05-06 10:47:57', 'Etest9904H@com', 'E3232321', 'E3232321', '44344', 'sankamma', 2208438157, '56352b5bfdab40455765ed30bef5988beb6974a926af12d352f6b8e865217171cebf3e01fbecde6e4949c0d3efeb8958548a6f0655e9cfd86f4ff9f4dc01e526', NULL, NULL, NULL, 'EMPLOYEE', 'fk4YVeS9PdlZ87jT9V3fuG7eqOczr', b'1', NULL, b'0', 121, NULL, NULL, NULL, NULL, 12, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(91, 12345102, '2017-07-03 07:27:03', '2017-07-10 08:22:42', 12345612, 2981080552, 251234, NULL, 1, 1, 1, 1, '2017-05-05 10:47:57', '2017-05-06 10:47:57', 'Etest9905H@test.com', 'E3232325', 'E3232325', '443544', 'Anand P', 2208438157, 'd1c3ce4475fbdec04af760accc8ba53ffb11b2c144d988f5bc9b24ea759eaa4efe9c4a067557d78e8dfa514ea4ef457dbddd0b456f087bf4616dbb302af7b9fa', NULL, NULL, NULL, 'ADMIN', 'DBlMgujoWttJmzAjCSYdCIBChvN8J', b'1', NULL, b'0', 121, NULL, NULL, NULL, NULL, 1212, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(98, 12345102, '2017-07-03 08:16:51', '2017-07-03 08:16:51', NULL, 2195873961, 251234, NULL, 10, 1, 5, 6, '2017-05-05 10:47:57', '2017-05-06 10:47:57', 'Etest9906H@test.com', 'E32323251', 'E32323251', '4435744', 'Anand Ar', 2208438157, '7a49d6a2ead096026dfd0f2be14fb018a135c1caaae40fce2e25ee0eeafa9dc37dde7dc001d554725f8245714b2d3a6ea8032d0bbe2ece96bac70f4a64f564db', NULL, NULL, NULL, 'EMPLOYEE', 'jQaBLMfZLGuX0ZL0Rz96r8SxVJG7D', b'1', NULL, b'0', 121, NULL, NULL, NULL, NULL, 1212, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(112, 12345102, '2017-07-03 08:27:02', '2017-07-03 08:27:02', NULL, 2380221384, 251234, NULL, 10, 1, 5, 6, '2017-05-05 10:47:57', '2017-05-06 10:47:57', 'Etest9902H@test.com', 'E323231', 'E323231', '44325744', 'Anand Ar', 2208438157, 'bcde80a62a02b4ed8b948a2e0a6598d94f59b6bd447f021410259284d440794b61bb6b77948a30ef4c3e9c6a2df76143ac9fa0d269b5b62408f1059847aa9fe9', NULL, NULL, NULL, 'EMPLOYEE', '1m1AO2n89pKwDHXQL9OUpHr4f3Geu', b'1', NULL, b'0', 121, NULL, NULL, NULL, NULL, 1212, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(117, 12345102, '2017-07-03 08:31:36', '2017-07-03 08:31:36', NULL, 2712251708, 251234, NULL, 10, 1, 5, 6, '2017-05-05 10:47:57', '2017-05-06 10:47:57', 'Etest990201H@test.com', '0', 'E3232031', '443257144', 'Anand Ar', 2208438157, '0c5cd6c78145da38422d2e750b6283eb67eee1e71e8c11a565c369915f9a0d1b14b625a9fa9a7b60cb4430254103631486e37fdc8f6c969c6d955482f0e9741c', NULL, NULL, NULL, 'EMPLOYEE', 'n9yZ6wvR1rDauTz15Puk6HhW70irn', b'1', NULL, b'0', 121, NULL, NULL, NULL, NULL, 1212, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(118, 12345102, '2017-07-03 08:33:14', '2017-07-03 08:46:44', 2457666680, 2457666680, 202, NULL, 31, 3, 3, 4, '2017-05-05 10:47:57', '2017-05-06 10:47:57', 'Etest90201H@test.com', 'E3232032', 'E3232032', '4432527144', 'Anand Ar', 2, 'b3e5d7e7aec8f3edc9d86c22c24daee7a398b96dab8709510f7c66768fcb86c6db1cd3f6d0aa544dd929e636b374879f49a16df3fbaad868d8ada342c721ed5b', NULL, NULL, NULL, 'EMPLOYEE', 'y5rXxrxtj1YXwRfqczubWUvElrnTA', b'0', NULL, b'0', 121, NULL, NULL, NULL, NULL, 1212, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(119, 12345102, '2017-07-03 08:34:55', '2017-07-03 08:34:55', NULL, 2700087618, 201, NULL, 31, 4, 33, 41, '2017-05-05 10:47:57', '2017-05-06 10:47:57', 'Etest90202H@test.com', 'E3232032', 'E3232032', '432527144', 'Anand Ar', 2, '6b94517096b1a46aacd656918aa724a7e8e44947bc2b711ac5abee0f46bcf51209eeefcc01c10a71e6757acf01aaae926e9fa91caad20f9a8bca18afd043ac2f', NULL, NULL, NULL, 'EMPLOYEE', 'jHne3qwJlyYTdu2E6Ci9YKxcdCILj', b'1', NULL, b'0', 121, NULL, NULL, NULL, NULL, 1212, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(120, 12345102, '2017-07-03 08:37:13', '2017-07-03 08:37:13', NULL, 2966575834, 251234, NULL, 10, 1, 5, 6, '2017-05-05 10:47:57', '2017-05-06 10:47:57', 'Etest90202H@test.com', 'E3232032', 'E3232032', '432527144', 'Anand Ar', 2208438157, 'aa8ab911830fcc2012016d730bac18d41acaf6041f81d0582212473dfbfbb576b24f3cefbd7aee5dcfbf4bafcfe623e2693149c041c43403f6b0d28001420a27', NULL, NULL, NULL, 'EMPLOYEE', 'l7glY2Mah0lNHAU9oXFisLGQDW4tF', b'1', NULL, b'0', 121, NULL, NULL, NULL, NULL, 1212, 1, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(121, 12345612, '2017-07-03 08:57:34', '2017-07-03 08:57:34', NULL, 2150533374, 251234, NULL, 10, 1, 5, 6, '2017-05-04 10:47:57', '2017-05-04 10:47:57', 'supriya@securax.in', '170389', '12344321', '9739858430', 'Supriya', 2208438157, '7d22dcb000889bd7ef273a246f27a2b5d5928dd15473d7997f4e595af105ab7029903465da7a123ef39b34ec892eea2498af747b0d84444b7ac0594f82f5c2ce', NULL, NULL, NULL, 'ADMIN', 'ZTTNhThRnRMEQoshAXt91XpvhZ0gm', b'1', NULL, b'0', 12, NULL, NULL, NULL, NULL, 1, 1, b'0', 'blore', 'abc@gmail.com', 12442, '', 'ACTIVE', 1),
(123, 12345102, '2017-07-03 11:06:20', '2017-07-03 11:06:57', 2406927184, 2406927184, 202, NULL, 31, 3, 3, 4, '2017-05-05 10:47:57', '2017-05-06 10:47:57', 'E3232033@test.com', 'E3232033', 'E3232033', '432527144', 'Anand Ar', 2, '9e7f46cf33996da75ddbcb6ed7b77510c11ee59f6fec0dd42520a7f5529cc0cfe7d1ef826f7e4f47bada98ecedc000b28bd712c38bffb3d9b71f73b1d01966fb', NULL, NULL, NULL, 'EMPLOYEE', '1NyEIhvZcHyABuOACbor4OXjHWrOB', b'0', NULL, b'0', 121, NULL, NULL, NULL, NULL, 1212, 1, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(134, 12345612, '2017-07-03 12:31:20', '2017-07-03 12:31:20', NULL, 2298584069, 251234, NULL, 1, 1, 1, 1, '2017-05-04 10:47:57', '2017-05-04 10:47:57', '4321@tre.com', '4321', '4321', '12345678', 'test 4321', 2208438157, '1ca403143ce15c0ea5b63ea5b95bdf59a337bd5822efad2d9dc49c99746df06f1bc476b7c114493416491977ff13f3a9509191dae665d9a520cdbcd1ba0aeee0', NULL, NULL, NULL, 'ADMIN', 'peBHF7ncUvo4xjHWdrqTbD4Bydrv1', b'1', NULL, b'0', 1234567, NULL, NULL, NULL, NULL, 1, 1, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(135, 12345102, '2017-07-03 12:32:18', '2017-07-03 12:32:18', NULL, 2675627950, 202, NULL, 31, 3, 3, 4, '2017-05-05 10:47:57', '2017-05-06 10:47:57', '232033@test.com', '232033', '232033', '43127144', 'Anand Ar', 2, '223ee2dd60c0d7ab7ffd07a6cb132042a76fe3f79e71d48978acc9843642326e25d29fce275a25cdb3635ce418528cf6ac5c319060910ce9f79786686256b2aa', NULL, NULL, NULL, 'EMPLOYEE', 'kVvSMiI3za4Ivau7oRZ7HbsZMO6Jg', b'1', NULL, b'0', 1, NULL, NULL, NULL, NULL, 1212, 1, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(136, 12345102, '2017-07-03 12:32:48', '2017-07-03 12:32:48', NULL, 2527289638, 201, NULL, 31, 3, 3, 4, '2017-05-05 10:47:57', '2017-05-06 10:47:57', '', '232033', '232033', '43127144', 'Anand Ar', 2, '3ed401cbc34218c626b33dce774471df3feb79ff8267da31d1849383c67df4f336f76de454b5b1dcc7b74f8dbeb4c09ef24bca7eccf55ec6a55672ae2e2537ac', NULL, NULL, NULL, 'EMPLOYEE', '7SC0IDKlmbTnaGZ3z0Ti49IxOsBpb', b'1', NULL, b'0', 1, NULL, NULL, NULL, NULL, 1212, 1, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(141, 12345612, '2017-07-03 12:45:02', '2017-07-03 12:45:02', NULL, 2387365796, 251234, NULL, 1, 1, 1, 1, '2017-06-04 10:47:57', '2017-05-04 10:47:57', '123@543.com', '12454', '5432', '32', '13', 2208438157, '2712f8fdc6f9f760f5a5f9d9f0b12ed02db22ffb34e86af2fb0f07294d4eb5fbde2bf16d33a5b8d0338d368f6c8b332bda9c9e7a1ef220213ed61b5d55eb75ef', NULL, NULL, NULL, 'ADMIN', 'HtBBW3wKEOqXHTDeg66rMeBRMswFv', b'1', NULL, b'0', 1, NULL, '123', 1234, NULL, 21, 0, b'1', '# 432 fds -60', 'fdsa@32.com', 32324312, NULL, 'ACTIVE', 5),
(145, 12345102, '2017-07-03 12:48:08', '2017-07-03 12:48:08', NULL, 2900615209, 201118, NULL, 1, 1, 1, 1, '2017-05-04 10:47:57', '2017-05-04 10:47:57', 'ani@com', '9567999', '967999', '4444', 'Anand Ar', 201118, '3a6748000657095ad24faf9cd4ac16149bcd9cde82d49fde9951ac0af512701565afa3c5260ed5092f7d7cb61ac57a84fde0e5e454142a1abff39858a96dfa1c', NULL, NULL, NULL, 'ADMIN', 'OnTH6SwKTXwPmYSvY8Tfyvltw1t4L', b'1', NULL, b'0', 1, NULL, NULL, NULL, NULL, 1, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(148, 12345102, '2017-07-03 12:55:28', '2017-07-03 12:55:28', NULL, 2203865598, 202, NULL, 31, 3, 3, 4, '2017-06-05 10:47:57', '2017-05-06 10:47:57', 'wedf@sd', '23033', '23033', '4311127144', 'Anand', 2, '1fa7293e2e2b5dd4829cfc3097729e8ac81858e7bf939106f6cbda0e242a8f8ca3708ba483d6ed15300fbd710c084eeadb4d91b97bec53f357ffc71eafc00403', NULL, NULL, NULL, 'EMPLOYEE', '5T4kCTkJWePJVjon95ZOwy5NWmgrO', b'1', 654323456, b'1', 1, NULL, '54321', 12345, NULL, 1212, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, NULL, 'ACTIVE', 5),
(150, 12345102, '2017-07-03 13:00:27', '2017-07-03 13:00:27', NULL, 2558440114, 202, NULL, 31, 3, 3, 4, '2017-06-05 10:47:57', '2017-05-06 10:47:57', 'we1df@sd', '213033', '213033', '41127144', 'Anand', 2, 'b7301cec1a3c524d57ff81112257e486151a82329d1e617a12a68af53c248c22684d6b993243016f8ade4db50aeaed977ad97aa8fd58dc076d19356910541876', NULL, NULL, NULL, 'EMPLOYEE', 'ZrHw5qlSB2Hysngjct8ChQCg6pVIY', b'1', 654323456, b'1', 1, NULL, '54321', 12345, NULL, 1212, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, NULL, 'ACTIVE', 5),
(153, 12345102, '2017-07-03 13:02:54', '2017-07-28 08:49:30', 12345102, 2829191855, 201118, NULL, 1, 1, 1, 1, '2017-05-04 10:47:57', '2017-05-05 10:47:57', 'Supriya@com', '967346747999', 'EMP990991', NULL, 'Supriya', 201118, '0bc270ca4dfe2270a5ee02bb3c283a65fa7954276127860878adba5228ce131aee4280b29b7c955919e4d71eb60f5909c088d43a6c65a94a11e59774fc580ef1', NULL, NULL, NULL, 'EMPLOYEE', 'T8i3FmGjVo6ZDHqzryv1OFRsJf73f', b'0', NULL, b'0', 1, NULL, NULL, NULL, NULL, 1, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(154, 12345102, '2017-07-04 13:50:33', '2017-07-04 13:50:51', 2957379465, 2957379465, 202, NULL, 31, 3, 3, 4, '2017-06-05 10:47:57', '2017-05-06 10:47:57', '1test202', '2103033', '21003033', '414', 'Anand', 2, '826070044664d87438f80bd10a7a41b7de32261f0616a1b387bce2d876e6e5b0db2be11869236be1a7afc79f4a403406fa8431d5cca2bfe853991e6a82b7e4a8', NULL, NULL, NULL, 'EMPLOYEE', '7O2jfEhh7YUWt1i5zYZnztVdXqYlE', b'0', 654323456, b'1', 1, NULL, '54321', 12345, NULL, 1212, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, NULL, 'ACTIVE', 5),
(155, 12345102, '2017-07-04 13:53:39', '2017-07-04 13:53:53', 2574940940, 2574940940, 201, NULL, 31, 3, 3, 4, '2017-06-05 10:47:57', '2017-05-06 10:47:57', '1test201', '2103033', '21003033', '414', 'Anand', 2, '1f41f9d87c2590e3082f1a9f4a49dc2c517a70e64e9403f08609d613f007e7f1d7a16fb0bb184c93f7870a47821b9a1dc8804f87284cfe4561da124c3f25284f', NULL, NULL, NULL, 'EMPLOYEE', '6PkZIQ0G7e6CH3e5vHaOeMtsXEm4f', b'0', 654323456, b'1', 1, NULL, '54321', 12345, NULL, 1212, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, NULL, 'ACTIVE', 5),
(158, 12345102, '2017-07-06 06:37:06', '2017-07-06 06:37:06', NULL, 2423042833, 201, NULL, 31, 3, 3, 4, '2017-05-05 10:47:57', '2017-05-05 10:47:57', '2test201', '211003033', '11003033', '4134343432234', 'prabhu', 2, '369001a807277ab003a331982e4448258ffb2d6c2b1b22ee63fd270b80d85ec87307d59888d9912583e2d14558a903a9e72927ec754761bbe178ba847bc26958', NULL, NULL, NULL, 'EMPLOYEE', 'Ln2edCjTk7r2wuvXy2U3E2NWF9UX0', b'1', 654323456, b'1', 1, NULL, '54321', 12345, NULL, NULL, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, NULL, 'ACTIVE', 5),
(165, 12345102, '2017-07-06 12:44:15', '2017-07-06 12:44:15', NULL, 2326475077, 201118, NULL, 1, NULL, NULL, NULL, '2017-05-07 16:17:57', '2017-05-08 17:19:57', 'test9904@com', 'E1234', '4456', '544', 'Anand pr', 201118, 'bbde5a93ab5f8cd07be264f7ce372e425ea526b159d7abb35660fd30f9a75a0950c704ec11d6cd0ecc87fadc0ba83aff9573cd2de916dd95bf70ccba29232e8a', NULL, NULL, NULL, 'EMPLOYEE', 'xgE0NYQjN2bDVxMS5KKY0V69zT2rV', b'1', NULL, b'0', 121, NULL, NULL, NULL, NULL, 1212, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(181, 12345102, '2017-07-06 07:58:52', '2017-07-06 07:58:52', NULL, 2820373720, 201, NULL, 31, NULL, NULL, NULL, '2017-05-05 10:47:57', '2017-05-07 10:47:57', NULL, '11003059', '11003059', '123456789231239', 'prabhu', 2, '79a7af38e38cbf92d1cf17fdb232e94bb086dd235a5dd9e058cbb3c18a5dad8cc1595215fd2a78cd7cdbd1524d30c31b778f28a523efeb104f9c81a29d1c9515', NULL, NULL, NULL, 'EMPLOYEE', 'RLGno8rzMjVLNm0MgHItdB2F5rPRc', b'1', 654323456, b'1', 1, '2017-05-08 10:47:57', '54321', 12345, '2017-03-06 10:47:57', NULL, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, 'becoz of ananad', 'ACTIVE', 5),
(182, 12345102, '2017-07-06 07:59:17', '2017-07-06 07:59:17', NULL, 2579610857, 201, NULL, 31, NULL, NULL, NULL, '2017-05-05 10:47:57', '2017-05-07 10:47:57', NULL, '11003060', '11003060', '12345234234231239', 'prabhu', 2, '935cc21559f4c29ff2791b5d5189d1ca4e518f07eada04550042a89a368d8547e8eed64203b7c4568800a460db903330666128f59a8bfac0fa2199d69d5bd0a0', NULL, NULL, NULL, 'EMPLOYEE', '6jMmoWnj3GoluLFn6IvGn3Yg25ZeT', b'1', 654323456, b'1', 1, '2017-05-08 10:47:57', '54321', 12345, '2017-03-06 10:47:57', NULL, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, 'becoz of ananad', 'ACTIVE', 5),
(183, 12345102, '2017-07-06 09:16:51', '2017-07-06 09:16:51', NULL, 2225570063, 201, NULL, 31, NULL, NULL, NULL, '2017-05-05 10:47:57', '2017-05-07 10:47:57', NULL, '11003068', '11003068', NULL, 'prabhu', 2, 'd50d9d27f93690c08a198d98f6119b78852b3b8f27974f651ed6aac92b9a2fd928e075990444e5bf1c661b031afe21252bf89eb5d3610229b71e96ed7afb4418', NULL, NULL, NULL, 'EMPLOYEE', 'PsP1vohtWAWUqcR2H4VNHlrv6A0lJ', b'1', 654323456, b'1', 1, '2017-05-08 10:47:57', '54321', 12345, '2017-03-06 10:47:57', NULL, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, 'becoz of ananad', 'ACTIVE', 5),
(184, 12345102, '2017-07-06 09:17:43', '2017-07-06 09:17:43', NULL, 2630004527, 201, NULL, 31, NULL, NULL, NULL, '2017-05-05 10:47:57', '2017-05-07 10:47:57', NULL, '11003069', '11003069', NULL, 'prabhu', 2, 'ed43f299e450009c9f0ebd8b02a9d1179c50fa047a709b4785d09a085bc695268cbe77d4f20dbd8eb55a9eafbd27b5f925d27cd50e60e270dbc7c22b5bec7e2a', NULL, NULL, NULL, 'EMPLOYEE', 's5ubhiwVYhSxZyKDAAHxzvqcE6jz3', b'1', 654323456, b'1', 1, '2017-05-08 10:47:57', '54321', 12345, '2017-03-06 10:47:57', NULL, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, 'becoz of ananad', 'ACTIVE', 5);
INSERT INTO `emp_employee` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `account_no`, `affiliate_id`, `biometric_data`, `branch_id`, `category_id`, `department_id`, `designation_id`, `dob`, `doj`, `email`, `employee_id`, `enrollment_id`, `mobile`, `name`, `organization_id`, `password`, `photo`, `photo_file_name`, `photo_size`, `privilege`, `salt`, `change_password`, `aadhar_number`, `auto_shift_eligibility`, `base_shift`, `date_of_resignation`, `emergency_contact_number`, `emirates_number`, `last_date_of_employment`, `manager_id`, `marital_status`, `ot_eligibility`, `personal_address`, `personal_email_id`, `pf_number`, `reason_for_leaving`, `employment_status`, `role_id`) VALUES
(185, 12345102, '2017-07-06 11:55:41', '2017-07-06 11:55:41', NULL, 2594928960, 201, NULL, 31, NULL, NULL, NULL, '2017-05-05 10:47:57', '2017-05-07 10:47:57', NULL, '11003079', '11003079', NULL, 'prabhu', 2, '33e9ae1bd49dd431f78b7c9d31d92ce74bab03594e2de275051b3e6849d8cbe4ff1669169dd63a71837a293b5291bad42c965dba9aedc0dd656e88d098b432df', NULL, NULL, NULL, 'EMPLOYEE', 'o7UFtxxtxUbTp108niYKr1hi6smtT', b'1', 654323456, b'1', 1, '2017-05-08 10:47:57', '54321', 12345, '2017-05-08 10:47:57', NULL, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, 'becoz of ananad', 'ACTIVE', 5),
(187, 12345102, '2017-07-07 06:34:08', '2017-07-07 06:34:08', NULL, 2294812017, 202, NULL, 31, NULL, NULL, NULL, '2017-05-05 10:47:57', '2017-05-07 10:47:57', NULL, '11003079', '11003079', NULL, 'prabhu', 2, '7e2c12d89c8ec5f7213aefb4aaf5c6bd6f792a29293ff8b7fe14d333279e6fa7854208cddab291954c6a317ba90641919897a4ef3c0b8bc1dc286bbd3012cda6', NULL, NULL, NULL, 'EMPLOYEE', 'EmpJQLVypDrW7WApAP0i14DWX32yW', b'1', 654323456, b'1', 1, '2017-05-08 10:47:57', '54321', 12345, '2017-05-08 10:47:57', NULL, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, 'becoz of ananad', 'ACTIVE', 5),
(189, 12345102, '2017-07-07 06:35:14', '2017-07-07 06:35:14', NULL, 2483241463, 251234, NULL, 31, NULL, NULL, NULL, '2017-05-05 10:47:57', '2017-05-07 10:47:57', NULL, '11003079', '11003079', NULL, 'prabhu', 2208438157, 'eaa0d4069d6e89a91e0583843026f2aa980237bb6b4fe7562e2c665a4a36b87377740d0528d71855b96388a9470fcd2327c94b6766aa968573349e16cf109aba', NULL, NULL, NULL, 'EMPLOYEE', 'pwXYv8FH5rkyKajmqTuiktLPEdQ9E', b'1', 654323456, b'1', 1, '2017-05-08 10:47:57', '54321', 12345, '2017-05-08 10:47:57', NULL, 1, b'1', '#sdfgh,%^&', '432test_32@dfghj.com', 765433456, 'becoz of ananad', 'ACTIVE', 5),
(190, 12345612, '2017-07-10 08:17:57', '2017-07-10 08:17:57', NULL, 2796031606, 251234, NULL, 1, 1, 1, 1, '2017-05-04 10:47:57', '2017-05-05 10:47:57', 'test@321.com', 'test321', 'test321', '345678', 'test21', 2208438157, 'b3cb67015acd9d796ab120ce695a97e644e18cede3065290da186092e21e6a61f6ddf0ec698aa50a84ed129b7c08551f4141ca400ba4492b5784831b65af353b', NULL, NULL, NULL, 'ADMIN', 'UpgtllybskUvNmqXJoM69wN8dFwNe', b'1', 12345678, b'1', 3, NULL, NULL, NULL, NULL, 2, 0, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(191, 12345612, '2017-07-17 10:12:13', '2017-07-17 10:12:13', NULL, 2838829456, 251234, NULL, 11, NULL, NULL, NULL, '2017-05-04 10:47:57', '2017-05-05 10:47:57', 's@kk.com', 'emp_999', '999', NULL, 'test 999', 2208438157, 'e23395f509e5861535c36223140b4af20d24f929c2ebd9774c237a7e3250d2eef9a7a8a0843ee84afa0829c096af98f30a4539c0badbc1d193d1c486d8a1ed99', NULL, NULL, NULL, 'EMPLOYEE', 'SyniufPyCwVdU7RgnPDboRUCPlVHQ', b'1', NULL, b'0', 4321, NULL, NULL, NULL, NULL, NULL, 0, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(192, 12345612, '2017-07-19 10:01:44', '2017-07-19 10:01:44', NULL, 2685469622, 251234, NULL, 11, NULL, NULL, NULL, '2017-05-04 10:47:57', '2017-05-05 10:47:57', NULL, 'Emp10901', '10901', NULL, 'Roopesh', 2208438157, 'f62cc573be36fe7c4c179a37f3d59339c95e7e161a8a63fa6e476aaf93bffb7cd21c04de5942c6bcb4a208f1da48532865ac8209844172287315fa00bfc400c8', NULL, NULL, NULL, 'EMPLOYEE', '3Wxwi2wENOkg0E4UkiIzsf1wNQuUl', b'1', 432, b'0', 1, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 5),
(193, 12345102, '2017-07-28 09:42:03', '2017-07-28 09:46:42', 12345102, 2530777028, 251234, NULL, 14, 1, 1, 1, '2017-05-04 10:47:57', '2017-05-05 10:47:57', 'supriya01123@gmail.com', 'EMP990991', 'EMP990991', NULL, 'Supriya narayan', 2208438157, 'bbd7598dcdc810862cb6664006bd4729570e3d33ec0f3ee7d25b84d25614b9c5fe2d0007f8c7d2ed0648d73c441b535b1f22fe7c16e41e86716c4dd9cd13c598', NULL, NULL, NULL, 'EMPLOYEE', 'IOrmKYFKwWdUZq2GGRTlfeUcolHIA', b'1', NULL, b'0', 1, NULL, NULL, NULL, NULL, 1, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 2),
(194, 12345102, '2017-08-01 10:46:30', '2017-08-01 10:46:58', 2596716906, 2596716906, 201, NULL, 14, 1, 1, 1, '2017-05-04 10:47:57', '2017-05-05 10:47:57', 'soumya01@gmail.com', 'EMP990990', 'EMP990990', NULL, 'Soumya', 2, '114b5564523e130272eb80ad872be66d27ba576e44d7f20452452292f47946059e5caf1a9e722178614373dff4304f69184f775a0a0d8fa7109d0f2f0395dd81', NULL, NULL, NULL, 'EMPLOYEE', 'BRYTO22RGvCBatJzieKb9is2D6o7K', b'0', NULL, b'0', 1, NULL, NULL, NULL, NULL, 1, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 7),
(195, 12345102, '2017-08-23 08:12:32', '2017-08-23 08:12:32', NULL, 2347578854, 202, NULL, 11, 1, 1, 1, '2017-05-04 10:47:57', '2017-05-05 10:47:57', 'Supriya@202.com', 'EMP990991', 'EMP990991', NULL, 'Supriya n', 2, '74effa987d8b580713e2907a430c46feb767710b4637880cb8f0b1405bef437b6e97f61a5cc8a84266ba8cacdaf45187a0f7e7105eaad5b7b7f2301e8cc07c01', NULL, NULL, NULL, 'EMPLOYEE', '2MbcTG5PLQWfqgWwJCFCAjNAxFC1C', b'1', NULL, b'0', 1, NULL, NULL, NULL, NULL, 1, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 7),
(196, 12345102, '2017-08-23 08:13:22', '2017-08-23 08:13:22', NULL, 2461905861, 202, NULL, 11, 1, 1, 1, '2017-05-04 10:47:57', '2017-05-05 10:47:57', 'Supriya@202test.com', 'EMP990999', 'EMP990999', NULL, 'Supriya', 2, '18dbb5966736a1d5bf66408eebe46484b603495c7d518496aba92f8368b57e4ab4762ba5093685ef89cb4205b38b1cf8d1fc6e3e878c1a0d6beee0d0cf9863dd', NULL, NULL, NULL, 'EMPLOYEE', 'X72mguUGWBfxYdPqcgjA3O9WszZMg', b'1', NULL, b'0', 1, NULL, NULL, NULL, NULL, 1, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 7),
(198, 12345102, '2017-08-23 08:16:17', '2017-08-23 08:17:07', 2859215270, 2859215270, 202, NULL, 11, 1, 1, 1, '2017-05-04 10:47:57', '2017-05-05 10:47:57', 'Supriya_202@test.com', 'EMP99099', 'EMP99099', NULL, 'Supriya', 2, 'c0a89803cb7d78b74af7ac7a8148f8851503d899532d2985872ce2f805e5f2bec6bc8c3f2320d17818e18acd7bf9bd8434507562e68ab2513d95f9cae1f33a7b', NULL, NULL, NULL, 'EMPLOYEE', 'ZTMQGGRtAb4i92kk36mwhE2T5CVED', b'0', NULL, b'0', 1, NULL, NULL, NULL, NULL, 1, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 7),
(199, 12345102, '2017-09-01 06:25:21', '2017-09-01 06:25:21', NULL, 2217858260, 283617, NULL, 13, NULL, NULL, NULL, '2017-05-04 10:47:57', '2017-05-05 10:47:57', 'sumaiya@tcs.com', 'EMP10001', '10001', NULL, 'Sumaiya Sulthana ', 285947, '480022d6886ddbc915eb6646f619af083d2e84af2306be5d9b614a1460eba056337e77fb5472fd19a14e139701f050d831ce1cfdba4b58c5ecb70a058191073d', NULL, NULL, NULL, 'EMPLOYEE', 'w3BFsjxI7jlgy4a83YBY8cR9CdZrO', b'1', NULL, b'0', 1, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 10),
(200, NULL, NULL, '2017-09-01 11:57:14', 12345612367647467, 12345612367647467, 251234, NULL, 10, 1, 5, 6, '2017-06-04 14:41:58', '2017-06-05 14:42:02', 'naveen@securax.in', 'emp67633', '34555', NULL, 'Naveen', 2208438157, 'b56fd11989938fbab8ef8e7a431e3ec1bb08d34d0cac5d78e368a9f8a2d3912b162b3ce9df0e5c759c61c4cca8117f40af7840b5b42e639ad6198536d4a05e7b', NULL, NULL, NULL, 'EMPLOYEE', 'j1pTSEFa5OLdvUYgkaVtx6dYzK41B', b'0', NULL, b'0', 0, NULL, NULL, NULL, NULL, 0, NULL, b'0', NULL, NULL, NULL, NULL, 'ACTIVE', 1),
(201, 12345101, '2017-09-05 18:41:28', '2017-09-05 18:41:28', NULL, 2077100917, 251234, NULL, 65, 1, NULL, 1, '2017-06-04 05:30:00', '2017-07-30 05:30:00', 'asas@hh.cm', '12112432134', '23142134', NULL, 'malkyA', 2208438157, 'd41c987340e88be465136ac3593b55d626b9191d61c9d4292f81218d6f34a3d267349f419f2ad995f6af46891256dcb6878bae21da09b1bc59e946c33bba1d6c', NULL, NULL, NULL, 'EMPLOYEE', 'c7KRcgeOuqQ4FwqXQR6lKQEzh5tWC', b'1', NULL, b'0', 1212212, NULL, NULL, NULL, NULL, 122, 0, b'1', NULL, NULL, NULL, NULL, 'ACTIVE', 12122),
(202, 12345101, '2017-09-06 11:43:22', '2017-09-07 16:57:54', 12345101, 2182547723, 251234, NULL, 11, 1, 1, 9, '2017-09-01 00:00:00', '2017-09-03 00:00:00', 'def-a@gmail.com', '2131241324', '2425234', NULL, 'deffA', 2208438157, '37182e5c5759f80434ebfaf6e6fdf3ee94ef6e005ec6afe9e051800d75fcc5ab0f9bc9d1ae5b79442113b9d148e5e84e550f005d5408bb1af96566b70a2627a5', NULL, NULL, NULL, 'ADMIN', 'dYpwElzjvJezjnhnF5LGfpmwTMVCA', b'1', NULL, b'0', 1212212, NULL, '1212', NULL, NULL, 1212, 1, b'1', '1212', NULL, NULL, NULL, 'ACTIVE', 12122);

-- --------------------------------------------------------

--
-- Table structure for table `hmg_holiday`
--

CREATE TABLE `hmg_holiday` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `affiliate_id` bigint(20) NOT NULL,
  `day` bigint(20) NOT NULL,
  `flexibility` varchar(255) NOT NULL,
  `month` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rule` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `year` bigint(20) NOT NULL,
  `query_builder_rule` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hmg_holiday`
--

INSERT INTO `hmg_holiday` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `affiliate_id`, `day`, `flexibility`, `month`, `name`, `rule`, `type`, `year`, `query_builder_rule`) VALUES
(1, 12345102, '2017-07-07 05:49:30', '2017-09-05 16:56:35', 12345612, 202, 21, 'OPTIONAL', 3, 'Republic Day', '( departmentId  ==  5 )', 'NATIONAL', 2018, NULL),
(2, 12345102, '2017-07-07 05:49:46', '2017-07-07 05:49:46', NULL, 201, 26, 'MANDATORY', 1, 'Republic Day', NULL, 'NATIONAL', 2017, NULL),
(3, 12345102, '2017-07-07 05:50:59', '2017-08-30 05:48:07', 12345612, 251234, 27, 'OPTIONAL', 1, 'Republic Day', NULL, 'FESTIVAL', 2017, NULL),
(5, 12345102, '2017-07-07 05:52:34', '2017-07-07 05:52:34', NULL, 251234, 26, 'MANDATORY', 2, 'Feb holiday', '', 'FESTIVAL', 2017, NULL),
(7, 12345102, '2017-07-07 06:02:04', '2017-07-07 15:13:03', 12345101, 251234, 31, 'MANDATORY', 3, 'Mar holiday', '(branchId==10)', 'NATIONAL', 2017, NULL),
(9, 12345102, '2017-07-07 06:02:38', '2017-07-07 11:05:10', 12345102, 251234, 1, 'MANDATORY', 3, 'Mar holiday 1', '(branchId == 10) || departmentId !=5', 'NATIONAL', 2017, NULL),
(10, 12345102, '2017-07-07 06:03:25', '2017-07-07 06:03:25', NULL, 252379, 1, 'MANDATORY', 3, ' 1 Mar holiday', NULL, 'FESTIVAL', 2017, NULL),
(11, 12345102, '2017-07-07 06:05:18', '2017-07-07 06:05:18', NULL, 252379, 31, 'OPTIONAL', 3, ' Mar holiday', NULL, 'NATIONAL', 2017, NULL),
(12, 12345102, '2017-07-07 06:07:39', '2017-07-07 06:07:39', NULL, 252379, 26, 'OPTIONAL', 6, 'Ramzan', NULL, 'FESTIVAL', 2017, NULL),
(14, 12345102, '2017-07-07 06:10:31', '2017-08-30 05:48:59', 12345612, 251234, 28, 'MANDATORY', 8, 'Ramzan', NULL, 'FESTIVAL', 2017, NULL),
(15, 12345102, '2017-07-07 06:11:42', '2017-08-30 14:46:40', 12345612, 251234, 16, 'OPTIONAL', 8, 'Indepedence DAY', NULL, 'NATIONAL', 2017, NULL),
(16, 12345102, '2017-07-07 06:12:19', '2017-07-07 06:12:19', NULL, 252379, 15, 'MANDATORY', 8, 'Indepedence DAY', NULL, 'NATIONAL', 2017, NULL),
(17, 12345102, '2017-07-07 06:13:33', '2017-07-31 09:35:37', 12345102, 251234, 25, 'MANDATORY', 12, 'christmas', '( ( categoryId == 1 || categoryId == 1 || ( categoryId == 9 ) ) )', 'FESTIVAL', 2017, NULL),
(18, 12345102, '2017-07-07 12:13:24', '2017-07-07 11:52:40', 12345102, 251234, 11, 'OPTIONAL', 11, 'Test holiday', ' departmentId== 1', 'FESTIVAL', 2017, NULL),
(21, 12345102, '2017-07-07 10:00:59', '2017-07-11 09:56:11', 12345102, 251234, 1, 'MANDATORY', 5, 'Labours day', '(branchId==10 || branchId == 14 ) && designationId == 9 && categoryId==8', 'FESTIVAL', 2017, NULL),
(23, 12345102, '2017-07-07 10:13:06', '2017-07-11 10:01:27', 12345102, 251234, 26, 'OPTIONAL', 1, 'Republic Day', '(branchId==10 && categoryId == 1 ) && designationId != 5', 'FESTIVAL', 2016, NULL),
(27, 12345102, '2017-07-07 10:19:16', '2017-07-07 11:24:05', 12345102, 251234, 26, 'OPTIONAL', 1, 'Republic Day1', 'branchId==10 && categoryId == 1', 'FESTIVAL', 2016, NULL),
(28, 12345101, '2017-08-30 05:35:12', '2017-08-30 05:35:12', NULL, 251234, 16, 'OPTIONAL', 8, 'dfdsdfsdf', NULL, 'NATIONAL', 2017, NULL),
(30, 12345612, '2017-08-30 14:46:05', '2017-08-30 14:46:05', NULL, 251234, 29, 'MANDATORY', 8, 'test holiday', NULL, 'FESTIVAL', 2018, NULL),
(31, 12345612, '2017-08-30 12:22:31', '2017-08-30 12:22:31', NULL, 251234, 7, 'OPTIONAL', 11, 'test holiday', NULL, 'NATIONAL', 2019, NULL),
(32, 12345612, '2017-08-31 09:26:23', '2017-08-31 09:27:40', 12345612, 251234, 20, 'OPTIONAL', 8, 'test holiday create', NULL, 'NATIONAL', 2017, NULL),
(33, 12345612, '2017-08-31 15:11:18', '2017-08-31 15:11:36', 12345612, 251234, 12, 'MANDATORY', 3, 'Holi', NULL, 'FESTIVAL', 2018, NULL),
(34, 12345612, '2017-09-01 05:08:40', '2017-09-01 05:08:40', NULL, 251234, 8, 'MANDATORY', 9, 'test hol', NULL, 'NATIONAL', 2017, NULL),
(35, 12345612, '2017-09-05 08:56:51', '2017-09-05 08:56:51', NULL, 251234, 27, 'MANDATORY', 9, 'test test ewrewe', NULL, 'FESTIVAL', 2017, NULL),
(36, 12345612, '2017-09-05 09:05:11', '2017-09-05 09:05:11', NULL, 251234, 20, 'MANDATORY', 9, 'test etst', '( designationId  ==  6 )', 'FESTIVAL', 2017, NULL),
(37, 12345612, '2017-09-05 17:22:28', '2017-09-05 17:23:52', 12345612, 251234, 24, 'OPTIONAL', 9, 'sup test create', '( departmentId  !=  6  &&  categoryId  ==  1  &&  ( designationId  ==  6  &&  branchId  ==  35 ) )', 'NATIONAL', 2017, '{\"condition\":\"AND\",\"rules\":[{\"id\":\"departmentId\",\"field\":\"departmentId\",\"type\":\"integer\",\"input\":\"select\",\"operator\":\"not_equal\",\"value\":\"6\"},{\"id\":\"categoryId\",\"field\":\"categoryId\",\"type\":\"integer\",\"input\":\"select\",\"operator\":\"equal\",\"value\":\"1\"},{\"condition\":\"AND\",\"rules\":[{\"id\":\"designationId\",\"field\":\"designationId\",\"type\":\"integer\",\"input\":\"select\",\"operator\":\"equal\",\"value\":\"6\"},{\"id\":\"branchId\",\"field\":\"branchId\",\"type\":\"integer\",\"input\":\"select\",\"operator\":\"equal\",\"value\":\"35\"}]}],\"valid\":true}');

-- --------------------------------------------------------

--
-- Table structure for table `lea_leavetype`
--

CREATE TABLE `lea_leavetype` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `affiliate_id` bigint(20) DEFAULT NULL,
  `leave_abbreviation` varchar(3) NOT NULL,
  `leave_name` varchar(100) NOT NULL,
  `organization_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lea_leavetype`
--

INSERT INTO `lea_leavetype` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `deleted`, `affiliate_id`, `leave_abbreviation`, `leave_name`, `organization_id`) VALUES
(1, 12345101, '2017-08-23 06:41:13', '2017-09-05 11:37:10', 12345612, b'0', 251234, 'CL1', 'Casual Leave', 2208438157),
(3, 12345101, '2017-08-23 07:25:20', '2017-08-23 07:27:01', 12345101, b'1', 251234, 'CL3', 'Causual LeaveASASAS', 2208438157),
(4, 12345612, '2017-08-23 07:26:09', '2017-08-23 07:29:16', 12345612, b'0', 251234, 'SL', 'Sick Leave', 2208438157),
(7, 12345612, '2017-08-23 07:43:05', '2017-08-23 07:43:05', NULL, b'0', 251234, 'PL', 'paid', 2208438157),
(9, 12345612, '2017-08-23 07:46:54', '2017-08-23 07:53:37', 12345612, b'0', 251234, 'EL1', 'Earned Leave new', 2208438157),
(10, 2596716906, '2017-08-23 07:55:38', '2017-08-23 09:09:06', 2859215270, b'0', 201, 'C1L', 'Casual Leave', 2),
(11, 2859215270, '2017-08-23 08:17:32', '2017-08-23 08:17:32', NULL, b'0', 202, 'CL', 'Casual 202', 2),
(12, 2859215270, '2017-08-23 09:10:18', '2017-08-23 09:19:21', 2859215270, b'0', 202, 'SL2', 'Sick 202', 2),
(13, 12345101, '2017-08-23 10:04:41', '2017-08-23 10:04:41', NULL, b'0', 251234, 'RPC', 'Test RPC', 2208438157),
(15, 12345612, '2017-08-28 14:33:16', '2017-08-28 14:33:16', NULL, b'0', 251234, 'LT', 'test leave type', 2208438157),
(20, 12345612, '2017-08-28 14:36:20', '2017-08-28 14:39:15', 12345612, b'0', 251234, 'LTT', 'Sick Leave 12', 2208438157),
(21, 12345101, '2017-08-28 09:41:15', '2017-08-28 09:42:53', 12345101, b'1', 251234, 'DuY', 'Dummy Dummy uPDATED', 2208438157),
(32, 12345612, '2017-08-30 11:42:41', '2017-08-30 11:42:41', NULL, b'0', 251234, 'DMN', 'Test Demo Deomon', 2208438157),
(33, 12345612, '2017-08-30 12:19:08', '2017-08-30 12:19:08', NULL, b'0', 220617, 'ads', 'sdsadas', 2208438157),
(34, 12345612, '2017-09-05 10:05:02', '2017-09-05 10:05:02', NULL, b'0', 220617, 'PLL', 'Paid', 2208438157),
(35, 12345612, '2017-09-05 11:34:29', '2017-09-05 11:34:29', NULL, b'0', 220617, 'pl', 'Paid leave', 2208438157),
(36, 2859215270, '2017-09-05 12:08:13', '2017-09-05 12:08:13', NULL, b'0', 217931, 'cl', 'casual', 2);

-- --------------------------------------------------------

--
-- Table structure for table `not_bounceemail`
--

CREATE TABLE `not_bounceemail` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `not_bounceemail`
--

INSERT INTO `not_bounceemail` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `email`) VALUES
(3, NULL, '2017-05-25 16:18:16', '2017-05-25 16:18:16', NULL, 'anand@gmail.com'),
(4, NULL, '2017-05-25 16:18:16', '2017-05-25 16:18:16', NULL, 'geeth@gmail.com'),
(9, NULL, '2017-05-30 13:47:52', '2017-05-30 13:47:52', NULL, '123dasdcsdasd@asdasdx.asdcsxasc'),
(14, NULL, '2017-05-30 17:55:16', '2017-05-30 17:55:16', NULL, 's.rishabhsingh01@janalakshmi.com'),
(16, NULL, NULL, NULL, NULL, 'bharath.b0@janalakshmi.com'),
(17, NULL, NULL, NULL, NULL, 's.kumar33@janalakshmi.com'),
(18, NULL, NULL, NULL, NULL, 'suman.sm@janalakshmi.com'),
(19, NULL, NULL, NULL, NULL, 'nageshchannapattna100@gmail.com'),
(22, NULL, '2017-05-31 14:21:08', '2017-05-31 14:21:08', NULL, 'umesh.mo1@janalakshmi.com'),
(23, NULL, '2017-05-31 14:21:14', '2017-05-31 14:21:14', NULL, 'rajrsh.patidar01@janalakshmi.com'),
(25, NULL, NULL, NULL, NULL, 'manjeet.h@janalakshmi.com'),
(26, NULL, NULL, NULL, NULL, 'navern.kumar09@janalakshmi.com'),
(27, NULL, NULL, NULL, NULL, 'hamansa.tanwar@janalakshmi.com'),
(28, NULL, '2017-06-14 15:00:04', '2017-06-14 15:00:04', NULL, 'debdas.chatterjer@janalakshmi.com'),
(29, NULL, '2017-06-14 15:00:04', '2017-06-14 15:00:04', NULL, 'ghosh.ajay@janalakshmi.com'),
(30, NULL, '2017-06-16 18:00:02', '2017-06-16 18:00:02', NULL, 'rajan.m@janalakshmi.com'),
(31, NULL, '2017-07-11 10:12:58', '2017-07-11 10:12:58', NULL, 'rather_hyd@karvy.com'),
(32, NULL, '2017-07-11 11:00:01', '2017-07-11 11:00:01', NULL, 'sindura.n@alpconsulting.in'),
(33, NULL, '2017-07-11 12:19:22', '2017-07-11 12:19:22', NULL, 'abdhul.katar@janalakshmi.com');

-- --------------------------------------------------------

--
-- Table structure for table `org_branch`
--

CREATE TABLE `org_branch` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `affiliate_id` bigint(20) NOT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `organization_id` bigint(20) NOT NULL,
  `time_zone_id` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `street_address` longtext NOT NULL,
  `branches_affiliate_id` bigint(20) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_branch`
--

INSERT INTO `org_branch` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `affiliate_id`, `lat`, `lon`, `name`, `organization_id`, `time_zone_id`, `city`, `country`, `state`, `street_address`, `branches_affiliate_id`, `postal_code`) VALUES
(1, NULL, NULL, '2017-09-05 05:56:12', 12345612, 201118, 12.9250074, 77.59380280000005, 'BLR Update', 201118, 'Etc/UTC', 'Bengaluru', 'India', 'Karnataka', '1 Jayanagar, Bengaluru, Karnataka, India', NULL, NULL),
(3, NULL, '2017-06-13 11:51:39', '2017-06-13 11:51:39', NULL, 201118, NULL, NULL, 'MUM', 201118, 'Etc/UTC', '', '', '', '', NULL, NULL),
(5, NULL, '2017-06-14 07:30:16', '2017-06-14 07:30:16', NULL, 201, NULL, NULL, 'Bangalore', 2, 'Etc/UTC', '', '', '', '', NULL, NULL),
(7, NULL, '2017-06-14 07:30:42', '2017-06-14 07:30:42', NULL, 2011, NULL, NULL, 'Bangalore', 285947, 'Etc/UTC', '', '', '', '', NULL, NULL),
(8, NULL, '2017-06-14 07:31:14', '2017-06-14 07:31:14', NULL, 2208438157, NULL, NULL, 'Bangalore', 2208438157, 'Etc/UTC', '', '', '', '', NULL, NULL),
(10, NULL, '2017-06-14 07:31:27', '2017-09-04 15:35:06', 12345612, 251234, 25.122451, 55.37804900000003, 'Bengaluru', 2208438157, 'Asia/Kolkata', 'Dubai', 'United Arab Emirates', 'Dubai', 'Techno Point - Dubai - United Arab Emirates', NULL, NULL),
(11, NULL, '2017-06-14 07:31:42', '2017-09-04 15:36:33', 12345612, 251234, NULL, NULL, 'Bangalore WhiteFeild', 2208438157, 'Asia/Kolkata', '', '', '', '', NULL, NULL),
(12, NULL, '2017-06-14 07:32:00', '2017-06-14 07:32:00', NULL, 252379, NULL, NULL, 'Bangalore WHF', 2208438157, 'Etc/UTC', '', '', '', '', NULL, NULL),
(13, NULL, '2017-06-14 07:32:09', '2017-06-14 07:32:09', NULL, 283617, NULL, NULL, 'Bangalore', 285947, 'Etc/UTC', '', '', '', '', NULL, NULL),
(15, NULL, '2017-06-20 11:30:05', '2017-06-20 11:30:05', NULL, 202, NULL, NULL, 'Wonderla_R Bangalore', 2, 'Etc/UTC', 'Bangalore', '', '', '', NULL, NULL),
(17, NULL, '2017-06-20 11:31:04', '2017-06-20 11:31:04', NULL, 202, NULL, NULL, 'Wonderla_P Bangalore', 2, 'Etc/UTC', 'Bangalore', '', '', '', NULL, NULL),
(27, NULL, '2017-06-20 12:39:23', '2017-06-20 12:39:23', NULL, 202, NULL, NULL, 'support Bangalore', 2, 'Etc/UTC', 'Bangalore', '', '', '', NULL, NULL),
(28, NULL, '2017-06-20 12:39:30', '2017-06-20 12:39:30', NULL, 202, NULL, NULL, 'support123 Bangalore', 2, 'Etc/UTC', 'Bangalore', '', '', '', NULL, NULL),
(30, NULL, '2017-06-20 12:40:03', '2017-06-20 12:40:03', NULL, 202, NULL, NULL, 'support12 Bangalore', 2, 'Etc/UTC', 'Bangalore', '', '', '', NULL, NULL),
(31, NULL, '2017-06-20 12:43:40', '2017-06-20 12:43:40', NULL, 202, NULL, NULL, 'support1234567 Bangalore', 2, 'Etc/UTC', 'Bangalore', '', '', '', NULL, NULL),
(35, NULL, NULL, '2017-09-05 07:50:50', 12345612, 251234, 33.5753184, 73.14307400000007, 'Chennai', 2208438157, 'Asia/Karachi', 'Rawalpindi', 'Pakistan', 'Islamabad Capital Territory', 'Pakistan Town, Rawalpindi, Pakistan', NULL, NULL),
(36, 12345612, '2017-08-14 10:30:38', '2017-08-14 10:30:38', NULL, 251234, 28.4669448, 77.06651999999997, 'aaaa', 2208438157, 'Asia/Kolkata', 'Gurugram', 'India', 'Haryana', 'Sector 29, Gurugram, Haryana 122022, India', NULL, '122022'),
(37, 12345612, '2017-08-17 09:47:33', '2017-08-17 09:47:33', NULL, 251234, 12.9175367, 77.58595880000007, 'a', 2208438157, 'Asia/Kolkata', 'Bengaluru', 'India', 'Karnataka', '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', NULL, '560041'),
(38, 12345612, '2017-08-17 09:49:18', '2017-08-30 08:25:12', 12345612, 251234, 24.9563305, 55.08663569999999, 'bbbbb', 2208438157, 'Etc/UTC', 'Dubai', 'United Arab Emirates', 'Dubai', 'Unnamed Road - Dubai - United Arab Emirates', NULL, NULL),
(39, 12345612, '2017-08-17 11:12:39', '2017-08-17 11:12:39', NULL, 251234, 41.38378600000001, 2.1667750000000296, 'ccc', 2208438157, 'Asia/Kolkata', 'Barcelona', 'Spain', 'Catalunya', 'Carrer de Montalegre, 5, 08001 Barcelona, Spain', NULL, '08001'),
(43, 12345612, '2017-08-18 09:43:44', '2017-08-18 09:43:44', NULL, 251234, 12.9175367, 77.58595880000007, 'securax', 2208438157, 'Etc/UTC', 'Bengaluru', 'India', 'Karnataka', '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', NULL, '560041'),
(44, 12345612, '2017-08-18 09:44:08', '2017-08-18 09:44:08', NULL, 251234, 17.49213, 78.39687030000005, 'securax hyd', 2208438157, 'Etc/UTC', 'Hyderabad', 'India', 'Telangana', '#252, Sri sai arcade, 3rd floor, road no:4, remedy hospital lane,, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India', NULL, '500072'),
(45, 12345612, '2017-08-22 04:46:40', '2017-08-22 04:47:15', 12345612, 251234, 34.1634, -118.31447000000003, 'new branch update', 2208438157, 'Etc/UTC', 'Burbank', 'United States', 'California', '1111 W Alameda Ave, Burbank, CA 91506, USA', NULL, '91506'),
(50, 12345612, '2017-08-22 08:21:47', '2017-08-22 08:21:47', NULL, 251234, 12.9175367, 77.58595880000007, 'eeeee', 2208438157, 'Asia/Kolkata', 'Bengaluru', 'India', 'Karnataka', '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', NULL, '560041'),
(51, 12345612, '2017-08-22 09:36:36', '2017-08-22 09:36:36', NULL, 251234, 12.98659, 77.64701200000002, 'create pub sub', 2208438157, 'Asia/Kolkata', 'Bengaluru', 'India', 'Karnataka', 'Swamy Vivekananda Rd, Krishnamurti Nagar, Maruthi Sevanagar, Bengaluru, Karnataka, India', NULL, NULL),
(53, 2859215270, '2017-08-24 12:44:01', '2017-08-24 12:44:01', NULL, 201, 12.8381175, 77.40180370000007, 'resort bangalore', 2, 'Etc/UTC', 'Bengaluru', 'India', 'Karnataka', '28th km, Mysore Road, Bengaluru, Karnataka 562109, India', NULL, '562109'),
(54, 2859215270, '2017-08-24 12:53:19', '2017-08-24 12:53:19', NULL, 202, 12.838229, 77.40293599999995, 'park bglr 1', 2, 'Etc/UTC', 'Kumbalgodu State Forest', 'India', 'Karnataka', 'Kumbalgodu State Forest, Karnataka 562109, India', NULL, '562109'),
(57, 12345612, '2017-08-30 07:38:37', '2017-08-30 07:38:37', NULL, 231985, 18.5934974, 73.70772599999998, 'test', 2208438157, 'Etc/UTC', 'Pimpri-Chinchwad', 'India', 'Maharashtra', 'Phase 2, Hinjewadi Rajiv Gandhi Infotech Park, Hinjawadi, Pimpri-Chinchwad, Maharashtra 411057, India', NULL, '411057'),
(58, 12345612, '2017-08-30 08:05:57', '2017-08-30 08:05:57', NULL, 220617, 12.8501454, 77.66391950000002, 'affiliate 3 branch', 2208438157, 'Etc/UTC', 'Bengaluru', 'India', 'Karnataka', 'Infosys Drive, Konappana Agrahara, Electronic City, Bengaluru, Karnataka 560100, India', NULL, '560100'),
(59, 12345612, '2017-08-30 08:34:59', '2017-08-30 08:34:59', NULL, 236876, 18.5888706, 73.73730019999994, 'branch affiliate4', 2208438157, 'Etc/UTC', 'Pimpri-Chinchwad', 'India', 'Maharashtra', 'Phase 2, Phase 1, Hinjewadi Rajiv Gandhi Infotech Park, Hinjawadi, Pimpri-Chinchwad, Maharashtra 411057, India', NULL, '411057'),
(60, 12345612, '2017-08-30 11:49:08', '2017-08-30 11:49:08', NULL, 231985, 39.3119726, -76.73787089999996, 'test branch add', 2208438157, 'Etc/UTC', 'Woodlawn', 'United States', 'Maryland', 'Security Blvd, Woodlawn, MD, USA', NULL, NULL),
(61, 12345612, '2017-08-31 12:22:16', '2017-08-31 12:22:16', NULL, 222622, -37.8102751, 144.96554909999998, '     sup', 2208438157, 'Etc/UTC', 'Melbourne', 'Australia', 'Victoria', '180 Lonsdale St, Melbourne VIC 3000, Australia', NULL, '3000'),
(62, 12345612, '2017-08-31 12:23:22', '2017-08-31 12:23:22', NULL, 220617, 12.9175367, 77.58595880000007, '   aaaaaasup', 2208438157, 'Etc/UTC', 'Bengaluru', 'India', 'Karnataka', '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', NULL, '560041'),
(63, 12345612, '2017-08-31 12:24:49', '2017-08-31 12:24:49', NULL, 222622, 9.5862413, 77.9603644, '     test absd', 2208438157, 'Etc/UTC', 'Virudhunagar', 'India', 'Tamil Nadu', 'ASSSS Rd, Anna Nagar, Virudhunagar, Tamil Nadu 626001, India', NULL, '626001'),
(64, 12345612, '2017-08-31 12:25:25', '2017-08-31 12:25:25', NULL, 220617, 34.049372, -118.44617900000003, 'estffsds', 2208438157, 'Etc/UTC', 'Los Angeles', 'United States', 'California', '1535 S Sepulveda Blvd, Los Angeles, CA 90025, USA', NULL, '90025'),
(65, 12345612, '2017-09-04 08:19:33', '2017-09-04 08:19:33', NULL, 213040, 41.38506389999999, 2.1734034999999494, 'Teting', 2208438157, 'Asia/Kolkata', 'Barcelona', 'Spain', 'Catalonia', 'Barcelona, Spain', NULL, NULL),
(66, 12345612, '2017-09-04 08:20:56', '2017-09-04 08:20:56', NULL, 220617, 12.9715987, 77.59456269999998, 'Tessting', 2208438157, 'Asia/Kolkata', 'Bengaluru', 'India', 'Karnataka', 'Bengaluru, Karnataka, India', NULL, NULL),
(67, 12345612, '2017-09-04 09:30:38', '2017-09-04 09:30:38', NULL, 213040, 37.7717006, -122.41649990000002, 'ghhhhd', 2208438157, 'Asia/Kolkata', 'San Francisco', 'United States', 'California', '211 12th St, San Francisco, CA 94103, USA', NULL, '94103'),
(68, 12345612, '2017-09-04 16:11:34', '2017-09-04 16:11:34', NULL, 213040, 28.6314512, 77.21666720000007, 'Delhi', 2208438157, 'Asia/Kolkata', 'New Delhi', 'India', 'Delhi', 'Connaught Place, New Delhi, Delhi 110001, India', NULL, '110001'),
(69, 12345612, '2017-09-04 10:55:54', '2017-09-04 10:55:54', NULL, 220617, 12.9715987, 77.59456269999998, 'TimeZoneChecking', 2208438157, 'Asia/Kolkata', 'Bengaluru', 'India', 'Karnataka', 'Bengaluru, Karnataka, India', NULL, NULL),
(70, 12345612, '2017-09-04 10:56:51', '2017-09-04 10:56:51', NULL, 220617, 12.9783484, 77.56839830000001, 'Hello23', 2208438157, 'Asia/Kolkata', 'Bengaluru', 'India', 'Karnataka', 'M.G. Railway Colony, Majestic, Bengaluru, Karnataka 560023, India', NULL, '560023'),
(71, 12345612, '2017-09-04 10:58:06', '2017-09-04 10:58:06', NULL, 220617, 12.9715987, 77.59456269999998, 'Hello232', 2208438157, 'Asia/Kolkata', 'Bengaluru', 'India', 'Karnataka', 'Bengaluru, Karnataka, India', NULL, NULL),
(72, 12345612, '2017-09-04 11:02:45', '2017-09-04 11:02:45', NULL, 220617, 12.9783484, 77.56839830000001, 'Test1234', 2208438157, 'Etc/UTC', 'Bengaluru', 'India', 'Karnataka', 'M.G. Railway Colony, Majestic, Bengaluru, Karnataka 560023, India', NULL, '560023'),
(73, 12345612, '2017-09-04 16:53:48', '2017-09-04 16:53:48', NULL, 220617, 12.9715987, 77.59456269999998, 'HelloTimezone', 2208438157, 'Asia/Calcutta', 'Bengaluru', 'India', 'Karnataka', 'Bengaluru, Karnataka, India', NULL, NULL),
(75, 12345612, '2017-09-04 16:56:26', '2017-09-04 16:56:26', NULL, 220617, 12.303889, 76.65444400000001, 'Testing Timezone', 2208438157, 'Asia/Calcutta', 'Mysuru', 'India', 'Karnataka', 'Mysore Palace, Agrahara, Chamrajpura, Mysuru, Karnataka 570004', NULL, '570004'),
(76, 12345612, '2017-09-04 17:05:51', '2017-09-04 17:05:51', NULL, 220617, 12.9165757, 77.61011630000007, 'Iretama branch', 2208438157, 'Asia/Calcutta', 'Bengaluru', 'India', 'Karnataka', 'BTM Layout, Bengaluru, Karnataka, India', NULL, NULL),
(77, 12345612, '2017-09-04 17:10:06', '2017-09-04 17:10:06', NULL, 231985, 37.758491, -77.47212250000001, 'England', 2208438157, 'America/New_York', 'Ashland', 'United States', 'Virginia', 'England St, Ashland, VA 23005, USA', NULL, '23005'),
(79, 12345612, '2017-09-04 17:11:52', '2017-09-04 17:11:52', NULL, 231985, 37.758491, -77.47212250000001, 'England2', 2208438157, 'America/New_York', 'Ashland', 'United States', 'Virginia', 'England St, Ashland, VA 23005, USA', NULL, '23005'),
(80, 12345612, '2017-09-05 10:56:28', '2017-09-05 11:00:00', 12345612, 220617, 12.9250074, 77.59380280000005, 'BLR', 2208438157, 'Asia/Kolkata', 'Bengaluru', 'India', 'Karnataka', '2 Jayanagar, Bengaluru, Karnataka, India', NULL, NULL),
(81, 12345612, '2017-09-05 12:41:43', '2017-09-05 12:41:43', NULL, 220617, 4.7152156, -74.14173119999998, 'England East', 2208438157, NULL, 'Bogotá', 'Colombia', 'Bogotá', 'Cl. 64 #121-55, Bogotá, Colombia', NULL, '111031'),
(111000999, NULL, NULL, NULL, NULL, 201118, 33.9, 11.2, 'HYD', 201118, 'Asia/Kolkata', '', '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `org_category`
--

CREATE TABLE `org_category` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `affiliate_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `organization_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_category`
--

INSERT INTO `org_category` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `affiliate_id`, `name`, `organization_id`) VALUES
(1, NULL, '2017-06-20 11:10:23', '2017-06-20 11:10:23', NULL, 251234, 'OnRoll', 2208438157),
(2, NULL, '2017-06-20 11:10:39', '2017-06-20 11:10:39', NULL, 252379, 'OnRoll', 2208438157),
(3, NULL, '2017-06-20 11:10:55', '2017-06-20 11:10:55', NULL, 202, 'OnRoll', 2),
(4, NULL, '2017-06-20 11:11:01', '2017-06-22 07:29:25', 12345102, 201, 'cat16', 2),
(5, 12345102, '2017-06-22 07:21:24', '2017-06-29 05:50:37', 12345102, 201118, 'cat18', 2208438157),
(7, 12345102, '2017-06-22 07:30:07', '2017-07-17 06:17:48', 12345102, 201118, 'OnRoll', 2208438157),
(8, NULL, NULL, NULL, NULL, 251234, 'Permanent', 2208438157),
(9, NULL, NULL, NULL, NULL, 251234, 'Contract', 2208438157);

-- --------------------------------------------------------

--
-- Table structure for table `org_department`
--

CREATE TABLE `org_department` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `affiliate_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `organization_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_department`
--

INSERT INTO `org_department` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `affiliate_id`, `name`, `organization_id`) VALUES
(1, NULL, '2017-06-20 11:16:12', '2017-06-20 11:16:12', NULL, 201118, 'SOFTWARE', 2208438157),
(2, NULL, '2017-06-20 11:16:21', '2017-06-20 11:16:21', NULL, 201, 'SOFTWARE', 2),
(3, NULL, '2017-06-20 11:16:27', '2017-06-20 11:16:27', NULL, 202, 'SOFTWARE', 2),
(5, NULL, '2017-06-21 05:26:41', '2017-06-21 05:26:41', NULL, 251234, 'Finance', 2208438157),
(6, NULL, '2017-06-21 05:26:53', '2017-06-21 05:26:53', NULL, 251234, 'Marketing', 2208438157),
(7, NULL, '2017-06-21 05:32:32', '2017-06-21 05:32:32', NULL, 201118, 'sales', 2208438157),
(8, NULL, '2017-06-21 05:32:40', '2017-06-21 05:32:40', NULL, 201118, 'sales1', 2208438157),
(9, 12345102, '2017-06-22 07:18:19', '2017-06-22 07:19:42', 12345102, 201118, 'dept11', 2208438157);

-- --------------------------------------------------------

--
-- Table structure for table `org_designation`
--

CREATE TABLE `org_designation` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `affiliate_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `organization_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_designation`
--

INSERT INTO `org_designation` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `affiliate_id`, `name`, `organization_id`) VALUES
(1, NULL, '2017-06-13 10:35:01', '2017-06-13 10:35:01', NULL, 201, 'sr software engineer', 2),
(4, NULL, '2017-06-13 10:51:24', '2017-06-13 10:51:24', NULL, 202, 'sr software engineer', 2),
(5, NULL, '2017-06-13 10:51:42', '2017-06-13 10:51:42', NULL, 203, 'sr software engineer', 2),
(6, NULL, '2017-06-13 10:52:36', '2017-06-13 10:52:36', NULL, 251234, 'sr software engineer', 2208438157),
(7, NULL, '2017-06-13 10:53:18', '2017-06-13 10:53:18', NULL, 252379, 'sr software engineer', 2208438157),
(8, NULL, '2017-06-13 10:54:39', '2017-06-13 10:54:39', NULL, 201118, 'sr software engineer', 201118),
(9, NULL, '2017-06-13 10:55:08', '2017-06-13 10:55:08', NULL, 251234, 'sr test engineer', 2208438157),
(10, NULL, '2017-06-13 10:55:18', '2017-06-13 11:46:31', NULL, 201, '', 2),
(11, NULL, '2017-06-13 10:56:29', '2017-06-13 10:56:29', NULL, 201118, 'test engineer', 201118),
(12, NULL, '2017-06-13 10:56:57', '2017-06-13 10:56:57', NULL, 282758, 'test engineer', 282758),
(13, NULL, '2017-06-13 10:57:24', '2017-06-13 11:14:16', NULL, 201, 'QA engineer', 2),
(14, NULL, '2017-06-20 11:13:48', '2017-06-20 11:13:48', NULL, 201, 'SOFTWARE ENGINEER', 2),
(15, NULL, '2017-06-20 11:13:55', '2017-06-20 11:13:55', NULL, 202, 'SOFTWARE ENGINEER', 2),
(16, NULL, '2017-06-20 11:14:19', '2017-06-20 11:14:19', NULL, 252379, 'SOFTWARE ENGINEER', 2208438157),
(19, NULL, '2017-06-21 05:27:12', '2017-06-21 05:27:12', NULL, 202, 'sales mgr', 2);

-- --------------------------------------------------------

--
-- Table structure for table `org_holiday`
--

CREATE TABLE `org_holiday` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `organization_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_holiday`
--

INSERT INTO `org_holiday` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `name`, `organization_id`) VALUES
(1, NULL, '2017-05-26 12:10:49', '2017-05-26 12:10:49', NULL, 'roopesh', 121212),
(2, NULL, '2017-05-26 14:53:24', '2017-05-26 14:53:24', NULL, 'roopesh', 121212),
(3, NULL, '2017-05-26 14:53:59', '2017-05-26 14:53:59', NULL, 'roopesh', 121212),
(4, NULL, '2017-05-26 14:59:29', '2017-05-26 14:59:29', NULL, 'roopesh', 121212),
(5, NULL, '2017-05-26 15:07:20', '2017-05-26 15:07:20', NULL, 'roopesh', 121212),
(6, NULL, '2017-05-26 15:45:30', '2017-05-26 15:45:30', NULL, 'roopesh', 121212),
(7, NULL, '2017-05-26 16:16:58', '2017-05-26 16:16:58', NULL, 'Onam', 121212),
(8, NULL, '2017-05-26 16:19:59', '2017-05-26 16:19:59', NULL, 'Onam', 121212),
(9, NULL, '2017-05-26 16:29:03', '2017-05-26 16:29:03', NULL, 'Onam', 121212),
(10, NULL, '2017-05-26 16:32:04', '2017-05-26 16:32:04', NULL, 'Onam', 121212),
(11, NULL, '2017-05-26 16:32:43', '2017-05-26 16:32:43', NULL, 'Onam', 121212),
(12, NULL, '2017-05-26 16:34:24', '2017-05-26 16:34:24', NULL, 'Onam', 121212),
(13, NULL, '2017-05-26 16:34:49', '2017-05-26 16:34:49', NULL, 'Onam', 121212),
(14, NULL, '2017-05-26 16:38:42', '2017-05-26 16:38:42', NULL, 'Onam', 121212),
(15, NULL, '2017-05-26 16:40:00', '2017-05-26 16:40:00', NULL, 'Onam', 121212),
(16, NULL, '2017-05-26 16:41:40', '2017-05-26 16:41:40', NULL, 'Onam', 121212),
(17, NULL, '2017-05-26 16:41:54', '2017-05-26 16:41:54', NULL, 'Onam', 121212),
(18, NULL, '2017-05-26 16:45:26', '2017-05-26 16:45:26', NULL, 'Onam', 121212),
(19, NULL, '2017-05-26 16:45:46', '2017-05-26 16:45:46', NULL, 'Onam', 121212);

-- --------------------------------------------------------

--
-- Table structure for table `org_organization`
--

CREATE TABLE `org_organization` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `affiliate_id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `organization_id` bigint(20) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `background` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_organization`
--

INSERT INTO `org_organization` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `address`, `affiliate_id`, `email`, `logo`, `name`, `organization_id`, `phone_number`, `url`, `background`, `city`, `country`, `lat`, `lon`, `postal_code`, `state`) VALUES
(1, NULL, '2017-06-13 07:16:30', '2017-06-13 11:42:02', NULL, '', 201118, 'securaca@nm.in', 'https://www.google.co.in/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'Securax', 201118, '122a1132', 'securax.securtime.in', '/assets/background.png', NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, '2017-06-13 07:20:52', '2017-06-13 07:20:52', NULL, 'bangalore', 2, 'abc@ss.com', 'https://www.google.co.in/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'Wonderla', 2, '12322456', 'Wonderla@ecurtime.in', '/assets/background.png', NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, '2017-06-13 08:57:38', '2017-06-13 08:57:38', NULL, 'bangalore', 282758, 'abc@ss.com', 'https://www.google.co.in/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'Myntra', 282758, '31131', 'myntraecurtime.in', '/assets/background.png', NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, 2208438157, NULL, 'http://logonoid.com/images/myntra-logo.png', 'ITC', 2208438157, '4567', 'itcsecurtime', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, '2017-06-13 09:09:29', '2017-08-28 10:24:01', 12345612, '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', 251234, NULL, 'https://www.google.co.in/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'ITC affiliatess1', 2208438157, '311315433332', 'itcsecure.com-251234', '/assets/background.png', 'Bengaluru', 'India', 12.9175367, 77.58595880000007, '560041', 'Karnataka'),
(10, NULL, '2017-06-13 09:10:09', '2017-08-24 11:13:57', 12345612, 'bangalore', 252379, NULL, 'https://www.google.co.in/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'ITC affiliate2', 2208438157, '31513165432', 'itcsecure.com-252379', '/assets/background.png', NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, 201, NULL, 'https://www.google.co.in/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'Wonderla resort', 2, '412567', 'Wonderla@ecurtime.in-201', '/assets/background.png', NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, '2017-08-24 12:55:15', 2859215270, '', 202, NULL, 'https://www.google.co.in/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png', 'Wonderla Park', 2, '12232432132', 'Wonderla@ecurtime.in-202', '/assets/background.png', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 12345612, '2017-08-10 11:19:59', '2017-08-24 11:14:47', 12345612, 'test', 220617, NULL, NULL, 'ITC affiliate_3', 2208438157, '1234567890', 'staging-220617', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 12345612, '2017-08-10 06:00:17', '2017-08-24 12:02:19', 12345612, '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', 236876, NULL, NULL, 'itc affi 4 ', 2208438157, '8021216663441', 'staging-236876', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 12345612, '2017-08-10 15:37:14', '2017-09-05 11:02:12', 123123123, 'Techno Point - Dubai - United Arab Emirates', 286189, NULL, NULL, 'test2 test2 test2 test2 test2 test2 test2 test2 test2', 2208438157, '1232321322232', 'staging-286189', NULL, 'Dubai', 'United Arab Emirates', 25.122451, 55.37804900000003, NULL, 'Dubai'),
(24, 12345612, '2017-08-10 15:42:12', '2017-08-24 11:33:58', 12345612, 'Av. Brg. Faria Lima, 3477 - Itaim Bibi, São Paulo - SP, 04538-133, Brazil', 296415, NULL, NULL, ' test ', 2208438157, '445525244334', 'staging-296415', NULL, NULL, 'Brazil', -23.5864194, -46.681888500000014, '04538-133', 'São Paulo'),
(25, 12345612, '2017-08-10 15:51:13', '2017-08-24 11:37:11', 12345612, NULL, 251597, NULL, NULL, 'test', 2208438157, '3113155545454', 'staging-251597', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 12345612, '2017-08-18 05:36:48', '2017-08-24 11:10:55', 12345612, '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', 294079, NULL, NULL, 'ITC test_1.', 2208438157, '7654323214321', 'staging-294079', NULL, 'Bengaluru', 'India', 12.9175367, 77.58595880000007, '560041', 'Karnataka'),
(27, 12345612, '2017-08-23 10:39:21', '2017-08-23 10:39:21', NULL, '#252, Sri sai arcade, 3rd floor, road no:4, remedy hospital lane,, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India', 278851, NULL, NULL, 'test affiliate create', 2208438157, '1468788768786', 'staging-278851', NULL, 'Hyderabad', 'India', 17.49213, 78.39687030000005, '500072', 'Telangana'),
(30, 12345612, '2017-08-24 10:49:05', '2017-08-24 10:49:05', NULL, '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', 285076, NULL, NULL, 'ITC test11', 2208438157, '12345678901234567890', 'staging-285076', NULL, 'Bengaluru', 'India', 12.9175367, 77.58595880000007, '560041', 'Karnataka'),
(32, 12345612, '2017-08-24 11:06:22', '2017-08-24 11:06:22', NULL, '#252, Sri sai arcade, 3rd floor, road no:4, remedy hospital lane,, Kukatpally Housing Board Colony, Kukatpally, Hyderabad, Telangana 500072, India', 246704, NULL, NULL, 'ITC @Hyderabad', 2208438157, '1234567990', 'staging-246704', NULL, 'Hyderabad', 'India', 17.49213, 78.39687030000005, '500072', 'Telangana'),
(33, 12345612, '2017-08-24 11:53:36', '2017-08-24 11:53:36', NULL, 'Secura Way, Santa Fe Springs, CA 90670, USA', 251558, NULL, NULL, 'itc aff12', 2208438157, '1234566543217', 'staging-251558', NULL, 'Santa Fe Springs', 'United States', 33.96437460000001, -118.05669069999999, '90670', 'California'),
(36, 12345612, '2017-08-24 12:20:40', '2017-08-24 12:20:40', NULL, 'Alberta, Canada', 242909, NULL, NULL, 'itc affiliate 12', 2208438157, '345671231131', 'staging-242909', NULL, NULL, 'Canada', 53.9332706, -116.5765035, NULL, 'Alberta'),
(37, 12345612, '2017-08-24 12:35:44', '2017-08-24 12:35:44', NULL, 'San Francisco, CA, USA', 231985, NULL, NULL, 'qwert', 2208438157, '987634561234', 'staging-231985', NULL, 'San Francisco', 'United States', 37.7749295, -122.41941550000001, NULL, 'California'),
(38, 2859215270, '2017-08-24 12:40:15', '2017-08-24 12:40:15', NULL, '28th km, Mysore Road, Bengaluru, Karnataka 562109, India', 294723, NULL, NULL, 'Wonderla Corporate', 2, '1234567890', 'Wonderla@ecurtime.in-294723', NULL, 'Bengaluru', 'India', 12.834556, 77.40097200000002, '562109', 'Karnataka'),
(43, 2859215270, '2017-08-24 12:41:48', '2017-08-24 12:41:48', NULL, 'Wonder Lake, IL, USA', 217931, NULL, NULL, 'qwerty', 2, '1234567990', 'Wonderla@ecurtime.in-217931', NULL, 'Wonder Lake', 'United States', 42.3852983, -88.34731260000001, NULL, 'Illinois'),
(44, 2859215270, '2017-08-24 12:50:17', '2017-08-24 12:50:17', NULL, 'Karnataka 562109, India', 221465, NULL, NULL, 'Wonderla park2', 2, '567831132193', 'Wonderla@ecurtime.in-221465', NULL, NULL, 'India', 12.8383, 77.40269899999998, '562109', 'Karnataka'),
(45, 2859215270, '2017-08-24 12:53:54', '2017-08-24 12:53:54', NULL, 'Karnataka 562109, India', 207589, NULL, NULL, 'wonderla park3', 2, '34567832133', 'Wonderla@ecurtime.in-207589', NULL, NULL, 'India', 12.8383, 77.40269899999998, '562109', 'Karnataka'),
(46, 12345612, '2017-08-31 12:21:45', '2017-08-31 12:21:45', NULL, 'Dhubbat? ??????? ?????? 12625, Saudi Arabia', 222622, NULL, NULL, '     abc', 2208438157, '123232322222', 'staging-222622', NULL, '??????', 'Saudi Arabia', 24.6787338, 46.72485849999998, '12625', '????? ??????'),
(47, 12345612, '2017-08-31 12:30:53', '2017-08-31 12:30:53', NULL, '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', 243839, NULL, NULL, '    test leading space', 2208438157, '232434343434343', 'staging-243839', NULL, 'Bengaluru', 'India', 12.9175367, 77.58595880000007, '560041', 'Karnataka'),
(48, 12345612, '2017-08-31 12:33:05', '2017-08-31 12:33:05', NULL, '18, Dodda Banaswadi Main Rd, Balaji Layout, Maruthi Sevanagar, Bengaluru, Karnataka 560005, India', 298030, NULL, NULL, ' itc infotech ', 2208438157, '765433456765', 'staging-298030', NULL, 'Bengaluru', 'India', 12.9990696, 77.62522650000005, '560005', 'Karnataka'),
(49, 12345612, '2017-08-31 12:33:48', '2017-08-31 12:33:48', NULL, 'Jalan Raya ITS, Keputih, Sukolilo, Keputih, Sukolilo, Kota SBY, Jawa Timur 60111, Indonesia', 231377, NULL, NULL, 'itc infotech', 2208438157, '76543345', 'staging-231377', NULL, NULL, 'Indonesia', -7.2821281, 112.79512780000005, '60111', 'Jawa Timur'),
(51, 12345102, '2017-08-31 12:52:23', '2017-08-31 12:52:23', NULL, 'Bangalore', 285947, 'tata_samaya@tata.in', 'http://logonoid.com/images/myntra-logo.png', 'Tata', 285947, '9742098765', 'staging', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 12345102, '2017-08-31 12:55:15', '2017-08-31 12:55:15', NULL, 'Bangalore', 283617, NULL, NULL, 'Tata Consulting Service Software', 285947, '8098763424', 'tata_securtime.in-283617', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 12345612, '2017-09-01 05:12:44', '2017-09-01 05:12:44', NULL, 'R. Beatriz, 226 - Alto de Pinheiros, São Paulo - SP, 05445-040, Brazil', 213040, NULL, NULL, '        itc infotech', 2208438157, '3235345454565', 'staging-213040', NULL, NULL, 'Brazil', -23.549908, -46.6970819, '05445-040', 'São Paulo'),
(55, 12345612, '2017-09-01 05:16:22', '2017-09-01 05:16:22', NULL, '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', 235068, NULL, NULL, '      itc infotech', 2208438157, '53455343332332', 'staging-235068', NULL, 'Bengaluru', 'India', 12.9175367, 77.58595880000007, '560041', 'Karnataka'),
(56, 12345612, '2017-09-01 06:56:51', '2017-09-01 06:56:51', NULL, 'Av. Corrientes 4440, C1195AAQ CABA, Argentina', 289494, NULL, NULL, 'Raj', 2208438157, '8860396322', 'itcsecurtime-289494', NULL, NULL, 'Argentina', -34.6026083, -58.427800700000034, 'C1195', 'Buenos Aires'),
(58, 12345612, '2017-09-01 09:54:23', '2017-09-01 09:54:23', NULL, '#35, 2nd Floor, Vinyas Arcade,, 11th Main, 5th Block, Jayanagar, 5T Block, Vishya Bank Colony, DK Naik Nagar, Jayanagar, Bengaluru, Karnataka 560041, India', 218695, NULL, NULL, 'itc infotech .', 2208438157, '545534343343', 'itcsecurtime-218695', NULL, 'Bengaluru', 'India', 12.9175367, 77.58595880000007, '560041', 'Karnataka'),
(60, 12345612, '2017-09-01 09:56:25', '2017-09-01 09:56:25', NULL, 'Techno Point - Dubai - United Arab Emirates', 262771, NULL, NULL, 'itc infotech         aaaaaaaaaaaaaaaaaaaaaaddsasasasasasasasasasasasasasasasassassassbddajsdasdnaskdsakjaskjajasnjdnjskdsajksjansdksadkdkjdjdsdjdjdjsjddkjsjdadjksjsjdsjsfkjfsfjffjk,dsnd', 2208438157, '544544343323232', 'itcsecurtime-262771', NULL, 'Dubai', 'United Arab Emirates', 25.122451, 55.37804900000003, NULL, 'Dubai');

-- --------------------------------------------------------

--
-- Table structure for table `org_role`
--

CREATE TABLE `org_role` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `organization_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_role`
--

INSERT INTO `org_role` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `name`, `organization_id`) VALUES
(1, NULL, '2017-07-25 17:07:33', '2017-07-26 16:04:18', 12345102, 'Admin', 2208438157),
(2, 12345102, '2017-07-25 17:09:12', '2017-07-25 17:09:12', NULL, 'HR', 2208438157),
(3, 12345102, '2017-07-26 16:03:38', '2017-07-26 16:03:38', NULL, 'Manager', 2208438157),
(4, 12345102, '2017-07-26 16:03:38', '2017-07-26 16:03:38', NULL, 'Employee', 2208438157),
(6, 12345102, '2017-07-28 09:03:13', '2017-07-28 12:33:45', 12345102, 'Bangalore HR', 2208438157),
(7, 12345102, '2017-08-01 05:57:09', '2017-08-01 05:57:09', NULL, 'Bangalore HR', 2),
(9, 12345102, '2017-08-01 05:57:32', '2017-08-01 05:57:32', NULL, 'Admin', 2),
(10, 12345102, '2017-09-01 06:18:26', '2017-09-01 06:18:26', NULL, 'Admin', 285947);

-- --------------------------------------------------------

--
-- Table structure for table `org_rolepermission`
--

CREATE TABLE `org_rolepermission` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `affiliates` longtext,
  `branches` longtext,
  `departments` longtext,
  `edit_enabled` bit(1) DEFAULT NULL,
  `organization_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `screen_url` varchar(255) NOT NULL,
  `system_defined` bit(1) DEFAULT NULL,
  `view_enabled` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_rolepermission`
--

INSERT INTO `org_rolepermission` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `affiliates`, `branches`, `departments`, `edit_enabled`, `organization_id`, `role_id`, `screen_name`, `screen_url`, `system_defined`, `view_enabled`) VALUES
(1, 12345102, '2017-07-26 16:05:09', '2017-07-26 16:06:11', 12345102, 'ALL', 'ALL', 'ALL', b'1', 2208438157, 1, 'Employee', '/employee', b'1', b'1'),
(2, 12345102, '2017-07-26 16:05:09', '2017-07-26 16:06:11', 12345102, 'ALL', 'ALL', 'ALL', b'1', 2208438157, 1, 'Leave_Master', '/leaveMaster', b'1', b'1'),
(3, 12345102, '2017-07-26 16:05:09', '2017-07-26 16:06:11', 12345102, 'this', 'ALL', 'ALL', b'1', 2208438157, 2, 'Employee', '/employee', b'1', b'1'),
(4, 12345102, '2017-07-26 16:05:09', '2017-07-26 16:06:11', 12345102, 'this', 'ALL', 'ALL', b'1', 2208438157, 2, 'Branch', '/branch', b'1', b'1'),
(5, 12345102, '2017-07-26 16:05:09', '2017-07-26 16:06:11', 12345102, 'this', 'this', 'ALL', b'1', 2208438157, 3, 'Branch', '/branch', b'1', b'1'),
(6, 12345102, '2017-07-26 16:05:09', '2017-07-26 16:06:11', 12345102, 'this', 'this', 'ALL', b'1', 2208438157, 3, 'Employee', '/employee', b'1', b'1'),
(7, 12345102, '2017-07-26 16:05:09', '2017-07-26 16:06:11', 12345102, 'this', 'this', 'this', b'1', 2208438157, 4, 'Branch', '/branch', b'1', b'1'),
(8, 12345102, '2017-07-26 16:05:09', '2017-07-26 16:06:11', 12345102, 'this', 'this', 'this', b'1', 2208438157, 4, 'Employee', '/employee', b'1', b'1'),
(9, 12345102, '2017-07-28 09:05:43', '2017-07-28 09:14:21', 12345102, 'this', '10,11', 'ALL', b'1', 2208438157, 6, 'Leave_Master', '/leaveMaster', b'0', b'1'),
(10, 12345102, '2017-07-28 11:34:49', '2017-07-28 11:34:49', NULL, 'this', '10,11', 'ALL', b'1', 2208438157, 6, 'Employee', '/employee', b'0', b'1'),
(11, 12345102, '2017-07-28 11:52:15', '2017-07-28 11:52:15', NULL, 'this', '10,11', '1,4', b'1', 2208438157, 6, 'Branch', '/branch', b'0', b'1'),
(12, 12345102, '2017-07-28 11:52:58', '2017-07-28 11:52:58', NULL, 'this', '10,11', '1,4', b'1', 2208438157, 2, 'Leave', '/leave', b'1', b'1'),
(13, 12345102, '2017-07-28 12:34:30', '2017-07-28 12:34:30', NULL, '1,2', '10,11', '1,4', b'1', 2208438157, 2, 'Leave1', '/leave1', b'1', b'1'),
(14, 12345102, '2017-07-28 12:35:18', '2017-07-28 12:35:18', NULL, NULL, '10,11', '1,4', b'1', 2208438157, 2, 'Leave2', '/leave2', b'1', b'1'),
(15, 12345102, '2017-07-28 12:35:42', '2017-07-28 12:35:42', NULL, NULL, '10,11', NULL, b'1', 2208438157, 2, 'Leave3', '/leave3', b'1', b'1'),
(16, 12345102, '2017-08-08 12:55:09', '2017-08-08 12:55:09', NULL, 'ALL', NULL, NULL, b'1', 2, 7, 'Leave_Master', '/leaveMaster', b'1', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `org_tag`
--

CREATE TABLE `org_tag` (
  `id` bigint(20) NOT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `affiliate_id` bigint(20) NOT NULL,
  `organization_id` bigint(20) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `tag_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `org_tag`
--

INSERT INTO `org_tag` (`id`, `created_by`, `creation_time`, `last_updated`, `updated_by`, `affiliate_id`, `organization_id`, `tag_name`, `tag_value`) VALUES
(1, 12345612, '2017-09-05 07:00:39', '2017-09-05 07:00:39', NULL, 251234, 2208438157, 'Zone', 'North'),
(2, 12345612, '2017-09-05 07:00:51', '2017-09-05 07:00:51', NULL, 251234, 2208438157, 'Zone', 'South');

-- --------------------------------------------------------

--
-- Table structure for table `usr_users`
--

CREATE TABLE `usr_users` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dmg_device`
--
ALTER TABLE `dmg_device`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKfttk9ligwj97twjst8oq47cfs` (`serial_no`,`branch_id`,`affiliate_id`,`organization_id`,`status`,`type`);

--
-- Indexes for table `dmg_deviceaccess`
--
ALTER TABLE `dmg_deviceaccess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dmg_devicecommands`
--
ALTER TABLE `dmg_devicecommands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKgr7ghbjovygly6sffiixuce1a` (`command_id`);

--
-- Indexes for table `dmg_deviceconfiguration`
--
ALTER TABLE `dmg_deviceconfiguration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKf1gx543odht053uw883m8kfiy` (`type`,`name`,`branch_id`);

--
-- Indexes for table `emp_employee`
--
ALTER TABLE `emp_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK1r394nhuklog923heccf2vi29` (`employee_id`,`affiliate_id`),
  ADD UNIQUE KEY `UKsgcqx446n3onipd6f7f3s1nht` (`enrollment_id`,`affiliate_id`),
  ADD UNIQUE KEY `UK_9ddqhqt2ymbxu1219t4unwx65` (`account_no`),
  ADD UNIQUE KEY `UK9jm0eogpd8xhxg746cvtdb6xb` (`mobile`,`affiliate_id`),
  ADD UNIQUE KEY `UKkd5r7ll9bf7f6840un0j137ua` (`email`,`affiliate_id`);

--
-- Indexes for table `hmg_holiday`
--
ALTER TABLE `hmg_holiday`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKjspntks9cw1be9p1qe3bd4s20` (`affiliate_id`,`name`,`year`);

--
-- Indexes for table `lea_leavetype`
--
ALTER TABLE `lea_leavetype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ukc_leaveabbreivation` (`leave_abbreviation`,`affiliate_id`),
  ADD UNIQUE KEY `ukc_leavename` (`leave_name`,`affiliate_id`);

--
-- Indexes for table `not_bounceemail`
--
ALTER TABLE `not_bounceemail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK9dxw2s33jchxtvnfqii9lowpv` (`email`);

--
-- Indexes for table `org_branch`
--
ALTER TABLE `org_branch`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKgv3929ml5qa6bjel25lodpc54` (`organization_id`,`affiliate_id`,`name`);

--
-- Indexes for table `org_category`
--
ALTER TABLE `org_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKbc99e5rcy10kv6j8rcka9x8bp` (`affiliate_id`,`name`);

--
-- Indexes for table `org_department`
--
ALTER TABLE `org_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKlr1w2mf37b7u2jf3hn07hji5h` (`name`,`affiliate_id`);

--
-- Indexes for table `org_designation`
--
ALTER TABLE `org_designation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKp6v3oawg1y83gwip1r5mohjy8` (`name`,`affiliate_id`);

--
-- Indexes for table `org_holiday`
--
ALTER TABLE `org_holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_organization`
--
ALTER TABLE `org_organization`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKtopxsput2u2nwpn5e82k5dl0c` (`organization_id`,`affiliate_id`),
  ADD UNIQUE KEY `UK4qk10fwmynf4vcpsh7qa1005e` (`organization_id`,`name`),
  ADD UNIQUE KEY `UK8s6s2tovr2d6otr3rt67p6nu6` (`organization_id`,`phone_number`),
  ADD UNIQUE KEY `UK_3ry9co6mtj71g8809ecq6mm6l` (`affiliate_id`),
  ADD UNIQUE KEY `UK_8r7vpkehypfnmcbaxq7t1bm9f` (`name`),
  ADD UNIQUE KEY `UK_5eetambpp0x0xrrjcxq4r7g6w` (`url`),
  ADD UNIQUE KEY `UKjy9rrp91piey20dvjnfb5n16i` (`organization_id`,`email`);

--
-- Indexes for table `org_role`
--
ALTER TABLE `org_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKhmyqy8u54djrduqbh8jr7ks1o` (`name`,`organization_id`);

--
-- Indexes for table `org_rolepermission`
--
ALTER TABLE `org_rolepermission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_tag`
--
ALTER TABLE `org_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK97fs50ip59thv7qav05wandse` (`organization_id`,`affiliate_id`,`tag_name`,`tag_value`);

--
-- Indexes for table `usr_users`
--
ALTER TABLE `usr_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dmg_device`
--
ALTER TABLE `dmg_device`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `dmg_deviceaccess`
--
ALTER TABLE `dmg_deviceaccess`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dmg_devicecommands`
--
ALTER TABLE `dmg_devicecommands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `dmg_deviceconfiguration`
--
ALTER TABLE `dmg_deviceconfiguration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `emp_employee`
--
ALTER TABLE `emp_employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `hmg_holiday`
--
ALTER TABLE `hmg_holiday`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `lea_leavetype`
--
ALTER TABLE `lea_leavetype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `not_bounceemail`
--
ALTER TABLE `not_bounceemail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `org_branch`
--
ALTER TABLE `org_branch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111001000;
--
-- AUTO_INCREMENT for table `org_category`
--
ALTER TABLE `org_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `org_department`
--
ALTER TABLE `org_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `org_designation`
--
ALTER TABLE `org_designation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `org_holiday`
--
ALTER TABLE `org_holiday`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `org_organization`
--
ALTER TABLE `org_organization`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `org_role`
--
ALTER TABLE `org_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `org_rolepermission`
--
ALTER TABLE `org_rolepermission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `org_tag`
--
ALTER TABLE `org_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `usr_users`
--
ALTER TABLE `usr_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
