-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2019 at 09:51 PM
-- Server version: 5.7.27-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Genisys-API`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task` varchar(200) NOT NULL,
  `taskHash` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task`, `taskHash`, `status`, `created_at`) VALUES
(1, 'Khatal', 'b427a48f03d27bcfdd7fd1405dbff5ab', 1, '2016-04-10 23:50:40'),
(2, 'Shahid', '06db98954814ff73a6e662b4e00b1bfb', 1, '2016-04-10 23:50:40'),
(3, 'Karthik', '05488b671fcf62ceea027d457c7ea89e', 1, '2016-04-10 23:50:40'),
(4, 'GenisysWallet', '7e26a63d6c106ed31a76f3ca28b98889', 1, '2019-10-17 22:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `id` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `device_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`id`, `token`, `status`, `created_at`, `device_id`) VALUES
(2, 'e4HA7yjSC1E:APA91bEnimHWmNJTRMbWBv5lIUEnQ5IwQ71pk7BEx5vf0W5BYes4FUBaUCk18MBDZd5A5ZSR2v1sOmo11AnC9gqxUDzticc3riAG8Rg7Q8NYkhDmdguJDZ57UkCD0iEFVTyIt2IsqdyS', 10, '2019-10-18 21:20:59', 'kartik');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `hash` varchar(200) NOT NULL,
  `transactionId` varchar(200) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `hash`, `transactionId`, `status`, `created_at`) VALUES
(1, '0x81785368b81d665b937c3ac67de7b1152126b5685536c47bc8fdcef5f21453c7', 'kartik0x81785368b81d665b937c3ac67de7b1152126b5685536c47bc8fdcef5f21453c7', 0, '2019-10-18 21:23:40'),
(2, '0x24c4a395d1e49e048a34fec5bc62b18b82574b795cf66183b5f2c17880313065', 'kartik0x24c4a395d1e49e048a34fec5bc62b18b82574b795cf66183b5f2c17880313065', 0, '2019-10-18 21:27:35'),
(3, '0x64ea43b8e63b77e26071ebc7890035befc09d427d78562c595439c382dde73cf', 'kartik0x64ea43b8e63b77e26071ebc7890035befc09d427d78562c595439c382dde73cf', 0, '2019-10-18 21:33:41'),
(4, '0x003b98f85cdbd314fd92ee10d5b54905d63864bf2de7ef70464b840ab69524b5', 'kartik0x003b98f85cdbd314fd92ee10d5b54905d63864bf2de7ef70464b840ab69524b5', 0, '2019-10-18 21:40:03'),
(5, '0xd5d66bf0f61021e5299f1e575f478e774a682697350d528d80dc51019347700b', 'kartik', 0, '2019-10-18 21:43:22'),
(6, '0x003b98f85cdbd314fd92ee10d5b54905d63864bf2de7ef70464b840ab69524b5', 'kartik0x003b98f85cdbd314fd92ee10d5b54905d63864bf2de7ef70464b840ab69524b5', 0, '2019-10-18 21:50:13'),
(7, '0x003b98f85cdbd314fd92ee10d5b54905d63864bf2de7ef70464b840ab69524b5', 'kartik', 0, '2019-10-18 21:50:35'),
(8, '0x003b98f85cdbd314fd92ee10d5b54905d63864bf2de7ef70464b840ab69524b5', 'kartik', 0, '2019-10-18 21:50:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
