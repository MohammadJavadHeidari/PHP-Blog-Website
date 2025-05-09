-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 09:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'MohammadJavad', 'Heidari', 'admin', '$2a$12$EoIMbOoYOrIg3Ba9JAIXZObtqpp4H.lfdliQ8MLoA1DotHpurGcIu');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(1, 'Science'),
(2, 'Technology'),
(4, 'Biology'),
(5, 'Poems'),
(6, 'Fiction'),
(7, 'Fantasy'),
(8, 'Programming'),
(9, 'Artificial intelligence');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(127) NOT NULL,
  `post_text` text NOT NULL,
  `category` int(11) NOT NULL,
  `publish` int(2) NOT NULL DEFAULT 1,
  `cover_url` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `crated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_text`, `category`, `publish`, `cover_url`, `crated_at`) VALUES
(14, 'Types of programming languages', '<div><div>While hundreds of programming languages (if not thousands) exist, and there are many ways to classify them, they typically can be grouped into five main categories:</div><div></div><ol style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>Procedural programming languages</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div>Functional programming languages</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div>Object-oriented programming languages</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div>Scripting languages</div></li><li style=\"-webkit-font-smoothing: antialiased;\"><div>Logic programming languages</div></li></ol><div>You can learn more about the different types of programming languages in the article&nbsp;<a href=\"https://www.coursera.org/articles/types-programming-language\" target=\"_self\" rel=\"\" style=\"-webkit-font-smoothing: antialiased; background: transparent; touch-action: manipulation;\">5 Types of Programming Language</a>.</div><div></div><h2 id=\"4-how-to-get-started-in-computer-programming\" style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 30px; line-height: var(--cds-line-height-title1-lg); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">How to get started in computer programming&nbsp;</h2><div>Follow these steps to embark on a journey in the growing field of programming.&nbsp;</div><h3 style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 24px; line-height: var(--cds-line-height-title2); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">1. Identify your programming goals.&nbsp;</h3><div>An important first step is to reflect on your goals and motivations. With clarity on what you want to achieve and why, you can align your actions with the outcomes you desire. Here are some examples of programming goals:&nbsp;&nbsp;</div><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>Launch a new programming career in a specific industry.&nbsp;</div></li></ul><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>Explore programming in your current role and take on new projects that combine programming with what you already do.</div></li></ul><div></div><ul style=\"-webkit-font-smoothing: antialiased; font-size: 20px; outline: 0px; margin-bottom: 16px; margin-top: 0px; padding-left: 45px; margin-left: 0px; color: rgb(31, 31, 31); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; letter-spacing: -0.1px;\"><li style=\"-webkit-font-smoothing: antialiased;\"><div>Pursue programming as a hobby and complete projects that match your interests.&nbsp;&nbsp;</div></li></ul><div></div><h3 style=\"-webkit-font-smoothing: antialiased; margin-top: 3rem; margin-bottom: 0px; max-width: 100%; font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 24px; line-height: var(--cds-line-height-title2); font-weight: var(--cds-font-weight-600); color: rgb(31, 31, 31); letter-spacing: -0.1px;\">2. Enroll in an introductory programming course.</h3><div>Once you know your goals, it’s a good idea to find a course on programming to introduce you to popular programming languages and different avenues for applying programming skills. You can also use an introductory course to refine your goals and focus your efforts.&nbsp;</div><div></div><div>Watch this video to practice coding in an&nbsp;<a href=\"https://www.coursera.org/articles/easiest-programming-language-to-learn\" target=\"_self\" rel=\"\" style=\"-webkit-font-smoothing: antialiased; background: transparent; touch-action: manipulation;\">easy-to-learn programming language</a>, Scratch.&nbsp;&nbsp;</div></div><div><br></div>', 8, 1, 'COVER-64baa5c24d8949.62444141.jpg', '2023-07-21 18:35:30');
-- --------------------------------------------------------

--
-- Table structure for table `post_like`
--

CREATE TABLE `post_like` (
  `like_id` int(11) NOT NULL,
  `liked_by` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `liked_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `username`, `password`) VALUES
(1, 'Ali', 'jahani', '$2a$12$1sCE6SLGQspGlOD5FRXJluJibj9cxaCy.6MXiFgfoMtoK8zYpbfWa'),

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post_like`
--
ALTER TABLE `post_like`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;
