-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2025 at 11:09 AM
-- Server version: 8.0.33
-- PHP Version: 8.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chill_stream`
--

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int NOT NULL,
  `genre_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id_genre`, `genre_title`, `added_at`) VALUES
(1, 'action', '2025-11-21 14:29:45'),
(2, 'romance', '2025-11-21 14:30:00'),
(3, 'horror', '2025-11-21 14:30:18'),
(4, 'comedy', '2025-11-21 14:30:48'),
(5, 'mystery', '2025-11-21 14:31:04'),
(6, 'animation', '2025-11-21 14:31:23'),
(7, 'thriller', '2025-11-21 14:31:30'),
(8, 'drama', '2025-11-21 14:31:44'),
(9, 'fiction', '2025-11-21 14:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id_movie` int NOT NULL,
  `id_genre` int DEFAULT NULL,
  `movie_title` varchar(50) NOT NULL,
  `movie_subtitle` varchar(255) NOT NULL,
  `movie_year` year NOT NULL,
  `movie_classification` varchar(255) NOT NULL,
  `movie_producer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `movie_cast` varchar(100) NOT NULL,
  `movie_image` varchar(100) NOT NULL,
  `movie_duration` varchar(50) NOT NULL,
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `movie_rating` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `movie_ongoing` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id_movie`, `id_genre`, `movie_title`, `movie_subtitle`, `movie_year`, `movie_classification`, `movie_producer`, `movie_cast`, `movie_image`, `movie_duration`, `added_at`, `movie_rating`, `movie_ongoing`) VALUES
(45, 3, '2', 'Film', '2020', 'mature', 'Universal Pictures', 'Hugh Grant, Emma Thompson', 'number3', '2 Hoursss', '2025-11-21 16:22:15', '7.6', 1),
(46, 1, 'Shazam!', 'Film', '2025', 'mature', 'Warner Bros', 'Zachary Levi, Mark Strong', 'number2', '2 Hours', '2025-11-21 16:22:15', '7.0', 0),
(47, 1, 'Avatar', 'Film', '2025', 'mature', '20th Century Studios', 'Sam Worthington, Zoe Saldana', 'number3', '2 Hours', '2025-11-21 16:22:15', '7.9', 0),
(48, 1, 'Fast X', 'Film', '2025', 'mature', 'Universal Pictures', 'Vin Diesel, Jason Momoa', 'number4', '2 Hours', '2025-11-21 16:22:15', '5.9', 0),
(49, 6, 'Blue Lock', '24 Episode', '2025', 'mature', 'Eight Bit Studio', 'Kazuki Ura, Tasuku Kaito', 'number5', '2 Hours', '2025-11-21 16:22:15', '8.4', 1),
(50, 9, 'The Little Mermaid', 'Film', '2025', 'mature', 'Walt Disney Pictures', 'Halle Bailey, Jonah Hauer-King', 'number6', '2 Hours', '2025-11-21 16:22:15', '7.2', 0),
(51, 1, 'The Tomorrow War', 'Film', '2025', 'mature', 'Skydance Media', 'Chris Pratt, Yvonne Strahovski', 'number7', '2 Hours', '2025-11-21 16:22:15', '6.5', 0),
(52, 1, 'Batman', 'Film', '2025', 'mature', 'DC Films', 'Robert Pattinson, Zoe Kravitz', 'number8', '2 Hours', '2025-11-21 16:22:15', '6.9', 0),
(53, 8, 'All of Us Are Dead', 'Film', '2025', 'mature', 'Film Monster', 'Park Ji-hu, Yoon Chan-young', 'number9', '2 Hours', '2025-11-21 16:22:15', '7.5', 0),
(54, 8, 'A man Called Otto', 'Film', '2025', 'mature', 'Sony Pictures', 'Tom Hanks, Mariana Trevino', 'number10', '2 Hours', '2025-11-21 16:22:15', '7.8', 0),
(55, 7, 'Alice in Borderland', 'Film', '2025', 'mature', 'Netflix', 'Kento Yamazaki, Tao Tsuchiya', 'number11', '2 Hours', '2025-11-21 16:22:15', '7.9', 0),
(56, 6, 'Big Hero 6', 'Film', '2025', 'mature', 'Walt Disney Pictures', 'Ryan Potter, Scott Adsit', 'number12', '2 Hours', '2025-11-21 16:22:15', '7.8', 0),
(57, 5, 'Missing', 'Film', '2025', 'mature', 'Screen Gems', 'Storm Reid, Joaquim de Almeida', 'number13', '2 Hours', '2025-11-21 16:22:15', '6.0', 0),
(58, 6, 'Suzume', 'Film', '2025', 'mature', 'CoMix Wave Films', 'Nanoka Hara, Hokuto Matsumura', 'number14', '2 Hours', '2025-11-21 16:22:15', '7.8', 0),
(59, 7, 'Megan', 'Film', '2025', 'mature', 'Blumhouse Productions', 'Allison Williams, Violet McGraw', 'number15', '2 Hours', '2025-11-21 16:22:15', '7.4', 0),
(60, 1, 'Quantumania', 'Film', '2025', 'mature', 'Marvel Studios', 'Paul Rudd, Evangeline Lilly', 'number16', '2 Hours', '2025-11-21 16:22:15', '8.0', 0),
(61, 8, 'Duty After School', 'Film', '2025', 'mature', 'TVING', 'Shin Hyun-soo, Lim Se-mi', 'number17', '2 Hours', '2025-11-21 16:22:15', '7.5', 0),
(62, 6, 'My Hero Academia: World Heroes Mission', '24 Episode', '2025', 'mature', 'Bones Studio', 'Daiki Yamashita, Nobuhiko Okamoto', 'number18', '2 Hours', '2025-11-21 16:22:15', '8.2', 1),
(63, 5, 'Doctor Strange in the Multiverse of Madness', 'Film', '2025', 'mature', 'Marvel Studios', 'Benedict Cumberbatch, Elizabeth Olsen', 'number19', '2 Hours', '2025-11-21 16:22:15', '7.4', 0),
(64, 9, 'Dont Look Up', 'Film', '2025', 'mature', 'Hyperobject Industries', 'Leonardo DiCaprio, Jennifer Lawrence', 'number20', '2 Hours', '2025-11-21 16:22:15', '6.5', 0),
(65, 1, 'Black Adam', 'Film', '2025', 'mature', 'DC Films', 'Dwayne Johnson, Aldis Hodge', 'number21', '2 Hours', '2025-11-21 16:22:15', '5.6', 0),
(66, 8, 'Devil All The Time', 'Film', '2025', 'mature', 'Nine Stories Productions', 'Tom Holland, Robert Pattinson', 'number22', '2 Hours', '2025-11-21 16:22:15', '6.2', 0),
(67, 4, 'Ted Lasso', 'Film', '2025', 'mature', 'Apple TV+', 'Jason Sudeikis, Hannah Waddingham', 'number23', '2 Hours', '2025-11-21 16:22:15', '6.5', 0),
(68, 6, 'Stuart Little', 'Film', '2025', 'mature', 'Columbia Pictures', 'Michael J. Fox, Geena Davis', 'number24', '2 Hours', '2025-11-21 16:22:15', '8.7', 0),
(69, 1, 'Jurassic Park Dominion', 'Film', '2025', 'mature', 'Amblin Entertainment', 'Chris Pratt, Bryce Dallas Howard', 'number25', '2 Hours', '2025-11-21 16:22:15', '6.1', 0),
(70, 6, 'Baymax', 'Film', '2025', 'mature', 'Walt Disney Pictures', 'Scott Adsit, Maya Rudolph', 'number26', '2 Hours', '2025-11-21 16:22:15', '7.3', 0),
(71, 2, 'Dilan 1991', 'Film', '2025', 'mature', 'Falcon Pictures', 'Iqbaal Ramadhan, Vanesha Prescilla', 'number27', '2 Hours', '2025-11-21 16:22:15', '7.5', 0),
(72, 3, 'Happiness', 'Film', '2025', 'mature', 'Studio Dragon', 'Han Hyo-joo, Park Hyung-sik', 'number28', '2 Hours', '2025-11-21 16:22:15', '6.2', 0),
(73, 6, 'Sonic 2', 'Film', '2025', 'mature', 'Paramount Pictures', 'Ben Schwartz, James Marsden', 'number29', '2 Hours', '2025-11-21 16:22:15', '7.1', 0),
(74, 4, 'Guardian of the Galaxy', 'Film', '2025', 'mature', 'Marvel Studios', 'Chris Pratt, Zoe Saldana', 'number30', '2 Hours', '2025-11-21 16:22:15', '8.8', 0),
(75, 6, 'Spiderman: Across the Spider-Verse', 'Film', '2025', 'mature', 'Sony Pictures Animation', 'Shameik Moore, Hailee Steinfeld', 'number31', '2 Hours', '2025-11-21 16:22:15', '7.2', 0),
(76, 3, 'contohku', 'Film', '2020', 'mature', 'Universal Pictures', 'Hugh Grant, Emma Thompson', 'number3', '2 Hoursss', '2025-11-22 08:48:32', '7.6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_list`
--

CREATE TABLE `my_list` (
  `id_mylist` int NOT NULL,
  `id_user` int DEFAULT NULL,
  `id_movie` int DEFAULT NULL,
  `id_series` int DEFAULT NULL,
  `list_image` varchar(100) NOT NULL,
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int NOT NULL,
  `id_payment` int DEFAULT NULL,
  `order_price` int NOT NULL,
  `order_history` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packets`
--

CREATE TABLE `packets` (
  `id_packet` int NOT NULL,
  `packet_name` varchar(100) NOT NULL,
  `packet_status` enum('Ready','Not Ready') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id_payment` int NOT NULL,
  `id_packet` int DEFAULT NULL,
  `payment_price` int NOT NULL,
  `code_voucher` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_status` enum('Success','Pending','Rejected') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id_series` int NOT NULL,
  `id_genre` int DEFAULT NULL,
  `series_title` varchar(50) NOT NULL,
  `series_subtitle` varchar(255) NOT NULL,
  `series_desc` varchar(255) NOT NULL,
  `series_year` year NOT NULL,
  `series_classification` varchar(255) NOT NULL,
  `series_producer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `series_cast` varchar(100) NOT NULL,
  `series_image` varchar(100) NOT NULL,
  `series_duration` varchar(50) DEFAULT NULL,
  `amount_episode` varchar(50) NOT NULL,
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `series_rating` varchar(20) NOT NULL,
  `series_ongoing` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id_series`, `id_genre`, `series_title`, `series_subtitle`, `series_desc`, `series_year`, `series_classification`, `series_producer`, `series_cast`, `series_image`, `series_duration`, `amount_episode`, `added_at`, `series_rating`, `series_ongoing`) VALUES
(4, 2, 'Love Actually aku ganteng banget', 'Film', 'A heartfelt romantic drama about intertwined lives.', '2025', 'mature', 'Universal Pictures', 'Hugh Grant, Emma Thompson', 'number1', '2 Hours', '12', '2025-11-21 17:15:48', '7.6', 1),
(5, 2, 'Love Actually yebah', 'Film', 'A heartfelt romantic drama about intertwined lives.', '2025', 'mature', 'Universal Pictures', 'Hugh Grant, Emma Thompson', 'number1', '2 Hours', '12', '2025-11-21 17:15:48', '7.6', 1),
(8, 2, 'Love Actually wadidaw', 'Film', 'A heartfelt romantic drama about intertwined lives.', '2025', 'mature', 'Universal Pictures', 'Hugh Grant, Emma Thompson', 'number1', '2 Hours', '12', '2025-11-22 09:07:13', '7.6', 1),
(9, 2, 'contih21', 'Film', 'A heartfelt romantic drama about intertwined lives.', '2025', 'mature', 'Universal Pictures', 'Hugh Grant, Emma Thompson', 'number1', '2 Hours', '12', '2025-11-22 09:12:46', '7.6', 1),
(10, 2, 'Ldaasdku ganteng banget', 'Film', 'A heartfelt romantic drama about intertwined lives.', '2025', 'mature', 'Universal Pictures', 'Hugh Grant, Emma Thompson', 'number1', '2 Hours', '12', '2025-11-22 09:12:46', '7.6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`),
  ADD UNIQUE KEY `genre_title` (`genre_title`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id_movie`),
  ADD UNIQUE KEY `movie_title` (`movie_title`),
  ADD KEY `fk_movies_genre` (`id_genre`);

--
-- Indexes for table `my_list`
--
ALTER TABLE `my_list`
  ADD PRIMARY KEY (`id_mylist`),
  ADD UNIQUE KEY `id_user` (`id_user`),
  ADD UNIQUE KEY `id_movie` (`id_movie`),
  ADD UNIQUE KEY `id_series` (`id_series`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD UNIQUE KEY `id_payment` (`id_payment`);

--
-- Indexes for table `packets`
--
ALTER TABLE `packets`
  ADD PRIMARY KEY (`id_packet`),
  ADD UNIQUE KEY `packet_name` (`packet_name`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_payment`),
  ADD UNIQUE KEY `id_packet` (`id_packet`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id_series`),
  ADD UNIQUE KEY `series_title` (`series_title`),
  ADD KEY `fk_series_genre` (`id_genre`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id_movie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `my_list`
--
ALTER TABLE `my_list`
  MODIFY `id_mylist` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packets`
--
ALTER TABLE `packets`
  MODIFY `id_packet` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id_payment` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id_series` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `fk_movies_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `my_list`
--
ALTER TABLE `my_list`
  ADD CONSTRAINT `fk_movies` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id_movie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_series` FOREIGN KEY (`id_series`) REFERENCES `series` (`id_series`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_payments` FOREIGN KEY (`id_payment`) REFERENCES `payments` (`id_payment`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_packets` FOREIGN KEY (`id_packet`) REFERENCES `packets` (`id_packet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `fk_series_genre` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
