-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2017 at 02:37 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `ssn` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `books` varchar(255) NOT NULL,
  `brth_yr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `reserved` tinyint(1) NOT NULL,
  `due_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `reserved`, `due_date`) VALUES
(2, 'Harry Potter and the Goblet of Fire', 'J.K. Rowling', 1, ''),
(3, 'Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 0, ''),
(4, 'Wind in the Willows', 'Kenneth Grahame', 0, ''),
(5, 'Great Expectations', 'Charles Dickens', 1, ''),
(6, 'A Christmas Carol', 'Charles Dickens', 1, ''),
(7, 'Knots and Crosses', 'Ian Rankin', 1, ''),
(8, 'The Hanging Garden', 'Ian Rankin', 1, ''),
(9, 'Othello', 'William Shakespeare', 0, ''),
(10, 'Twelfth Night', 'William Shakespeare', 0, ''),
(11, 'Macbeth', 'William Shakespeare', 0, ''),
(12, 'King Henry V', 'William Shakespeare', 0, ''),
(13, 'Java in a Nutshell', 'David Flanagan', 0, ''),
(14, 'Modern Operating Systems', 'Andy Tanenbaum', 0, ''),
(15, 'Linux System Programming', 'Robert Love', 0, ''),
(16, 'SUSE Linux', 'Chris Brown', 0, ''),
(17, 'PHP and MySQL', 'Welling and Thomson', 0, ''),
(18, 'High Performance MySQL', 'Schwartz et al', 0, ''),
(19, 'PHP 5 for Dummies', 'Janet Valade', 1, ''),
(20, 'Computer Security', 'Stallings and Brown', 0, ''),
(21, 'Network Security Essentials', 'William Stallings', 0, ''),
(22, 'The Casual Vacancy', 'J. K. Rowling', 0, ''),
(23, 'Home Plumbing Manual', 'Andy Blackwell', 0, ''),
(24, 'Self-sufficiency Home Brewing', 'John Parkes', 0, ''),
(25, 'Notes From a Small Island', 'Bill Bryson', 0, ''),
(26, 'A Short History of Nearly Everything', 'Bill Bryson', 0, ''),
(27, 'A Walk in the Woods', 'Bill Bryson', 0, ''),
(28, 'The Lost Continent', 'Bill Bryson', 0, ''),
(29, 'So Long, and Thanks for all the Fish', 'Douglas Adams', 0, ''),
(30, 'Life, the Universe and Everything', 'Douglas Adams', 0, ''),
(31, 'The Salmon of Doubt', 'Douglas Adams', 0, ''),
(32, 'The Girl with the Dragon Tattoo', 'Stieg Larsson', 0, ''),
(33, 'The Girl who Played with Fire', 'Stieg Larsson', 0, ''),
(34, 'The Deans Watch', 'Elizabeth Goudge', 0, ''),
(35, 'Pilgrims Inn', 'Elizabeth Goudge', 0, ''),
(36, 'The Colour of Magic', 'Terry Pratchett', 0, ''),
(37, 'Dodger', 'Terry Pratchett', 0, ''),
(38, 'The Light Fantastic', 'Terry Pratchett', 0, ''),
(39, 'Childhoods End', 'Arthur C. Clarke', 0, ''),
(40, 'Rendezvous with Rama', 'Arthur C. Clarke', 0, ''),
(41, '2001: A Space Odyssey', 'Arthur C. Clarke', 0, ''),
(42, 'I, Robot', 'Isaac Asimov', 0, ''),
(43, 'The Caves of Steel', 'Isaac Asimov', 0, ''),
(44, 'Dune', 'Frank Herbert', 0, ''),
(45, 'Pilgrim\'s Progress', 'John Bunyan', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `name` varchar(255) NOT NULL,
  `img_id` int(11) NOT NULL,
  `file_ext` varchar(255) NOT NULL,
  `upload_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `userpass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `userpass`) VALUES
('admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`img_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
