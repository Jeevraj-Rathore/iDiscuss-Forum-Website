-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 22, 2022 at 08:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idiscuss`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(8) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created`) VALUES
(1, 'Python', 'Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation.', '2022-03-14 20:14:31'),
(2, 'JavaScript', 'JavaScript, often abbreviated JS, is a programming language that is one of the core technologies of the World Wide Web, alongside HTML and CSS.', '2022-03-14 20:16:11'),
(3, 'Django', 'Django is a Python-based free and open-source web framework that follows the model–template–views architectural pattern. It is maintained by the Django Software Foundation, an independent organization established in the US as a 501 non-profit.', '2022-03-14 23:27:55'),
(4, 'Flask', 'Flask is considered more Pythonic than the Django web framework because in common situations the equivalent Flask web application is more explicit.', '2022-03-14 23:28:42');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(8) NOT NULL,
  `comment_content` text NOT NULL,
  `thread_id` int(8) NOT NULL,
  `comment_by` int(8) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_content`, `thread_id`, `comment_by`, `comment_time`) VALUES
(1, 'This is a Comment', 1, 1, '2022-03-15 19:14:46'),
(3, 'Somebody please fix this', 1, 3, '2022-03-16 14:06:22'),
(4, 'Somebody please fix this', 1, 2, '2022-03-16 14:15:39'),
(6, 'Please help', 1, 5, '2022-03-16 14:26:17'),
(7, 'Be sure to have your pages set up with the latest design and development standards. That means using an HTML5 doctype and including a viewport meta tag for proper responsive behaviors. Put it all together and your pages should look like this:\r\n', 5, 3, '2022-03-16 14:33:37'),
(8, 'This is a comment', 5, 0, '2022-03-17 08:08:56'),
(12, 'Are you kidding', 9, 5, '2022-03-17 08:59:43'),
(13, 'hello', 9, 6, '2022-03-18 01:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `thread_id` int(7) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(7) NOT NULL,
  `thread_user_id` int(7) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'Unable to install Pyaudio', 'I am not able to install pyaudio on windows.', 1, 5, '2022-03-15 10:22:35'),
(2, 'Not able to use Python', 'Please help me', 1, 3, '2022-03-15 13:02:57'),
(3, 'New Title', 'New desc', 1, 3, '2022-03-15 16:51:32'),
(4, 'jQuery Tutorial for Beginners', 'Please give me some idea of jQuery', 1, 2, '2022-03-15 17:06:18'),
(5, 'Fetch api not working', 'I am into trouble. My fetch api is not working in MS Edge.', 2, 1, '2022-03-15 17:09:25'),
(6, 'Lets learn', 'This is me', 3, 0, '2022-03-17 08:20:25'),
(7, 'What is Django', 'Please tell', 3, 0, '2022-03-17 08:21:42'),
(8, 'What is python', 'Please tell', 1, 0, '2022-03-17 08:22:34'),
(9, 'This is a Test title', 'just for fun', 1, 5, '2022-03-17 08:59:11'),
(10, 'Python tutorial for beginners.', 'Thanks in advance', 1, 6, '2022-03-17 09:24:30'),
(11, '&lt;script&gt;alert(\"you are hacked\");&lt;/script&gt;', '&lt;script&gt;alert(\"you are hacked\");&lt;/script&gt;', 1, 6, '2022-03-17 10:49:27'),
(12, 'How to use Django', '', 3, 7, '2022-04-22 23:13:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(8) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `user_email`, `user_pass`, `timestamp`) VALUES
(1, 'this@test.com', '123', '2022-03-16 15:48:16'),
(2, 'jeev@time.com', '$2y$10$QXHO7Bp15CNUh0NL8/Y3/u/jdseoCx/fxAkvnO8wtmc1azde4Xypm', '2022-03-16 16:50:07'),
(3, 'abc@test.com', '$2y$10$rqgE3bpL2k8vDkwFLV90IueBv4BlzZZ7./cJMUAzG/6ZGf93Zjr/O', '2022-03-16 17:12:41'),
(4, 'bcd@test.com', '$2y$10$5Bl1F4EIrkNAaR9XjbLLYO5mWYzEtAVdV/yGER/Q0pSzCrTLA/xRe', '2022-03-16 17:14:38'),
(5, 'Shubham', '$2y$10$O3PpwHu/wTW.nN/hlo0sGuVIN4fwGpks2gTHbdM0cG5w4NG9Xkpam', '2022-03-16 18:54:59'),
(6, 'Jeevraj', '$2y$10$R3ZdyoCMT6.JRe4rw6hITO81gAq/9O1pvmyFC8XZ3Rmp7HYkCtnK2', '2022-03-17 09:19:45'),
(7, 'Robin', '$2y$10$5J1NQpxQ6J8iSn0IPKjuUeE//2bSKF5UH0XT77WBpyPUHgKOBZ9di', '2022-04-22 14:25:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `threads` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `thread_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
