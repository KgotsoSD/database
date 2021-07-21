-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2021 at 12:14 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_ID` int(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='This table stores information about users';

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_ID`, `username`, `email`) VALUES
(101, 'kgmaduna01@gmail.com', 'kgmaduna01@gmail.com'),
(102, 'mananam01@gmail.com', 'mananam@gmail.com'),
(103, 'naledi_magapa', 'naledim@gmail.com'),
(104, 'bright@8', 'bright@8.gmail.com'),
(105, 'mareka_3', 'marekakhensani@gmail.com'),


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='This table contains information about the user';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `f_name`, `l_name`) VALUES
('101', 'maemp@1', 'Pauline', 'Maepa'),
('102', 'maepalerato@10', 'lerato', 'maepa'),
('103', 'malebolebza', 'Malebo', 'Nyaloku'),
('104', 'nampi*7', 'nampi', 'moloto'),
('105', 'karabom@gmail.com', 'Karabo', 'Morukhu'),
('106', 'rele1bogile', 'Refilwe', 'Morukhu'),
('107', 'happy6&', 'Happy', 'Mabuza'),
('108', 'kamosedibe', 'Kamogelo', 'Sedibe'),
('109', 'koketso$rhona', 'Koketso', 'Rhona');
('110', 'koketso$rhona', 'Koketso', 'Rhona');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `t_id` int(3) NOT NULL,
  `time_created` time NOT NULL,
  `time_logged_in` time NOT NULL,
  `time_logged_off` time NOT NULL,
  `time_updated_info` time NOT NULL,
 `u_id`
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='information about user activities';

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`t_id`, `time_created`, `time_logged_in`, `time_logged_off`, `time_updated_info`, `u_id`) VALUES
(1, '07:55:56', '08:00:00', '08:10:00', '07:57:00','101'),
(2, '09:55:56', '10:00:00', '10:05:00', '10:03:00','102'),
(3, '06:00:00', '09:00:05', '10:40:20', '10:00:00','103');
(4, '07:00:00', '0:22:05', '11:40:20', '11:35:00','104');
(5, '14:00:00', '14:08:05', '20:10:20', '11:35:00','105');
(6, '11:20:00', '11:22:05', '11:40:20', '11:35:00','106');
(7, '11:20:00', '11:22:05', '11:40:20', '11:35:00','107');
(8, '11:20:00', '11:22:05', '11:40:20', '11:35:00','108');
(9, '11:20:00', '11:22:05', '11:40:20', '11:35:00','109');
(10, '11:20:00', '11:22:05', '11:40:20', '11:35:00','110');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`t_id`);
COMMIT;

-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD FOREIGN KEY (`u_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
