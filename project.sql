-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 05:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_book`
--

CREATE TABLE `add_book` (
  `id` int(10) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(5000) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(20) NOT NULL,
  `books_price` varchar(10) NOT NULL,
  `books_quantity` varchar(20) NOT NULL,
  `books_availability` varchar(20) NOT NULL,
  `librarian_username` varchar(20) NOT NULL,
  `books_file` varchar(5000) NOT NULL,
  `rank` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_book`
--

INSERT INTO `add_book` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_quantity`, `books_availability`, `librarian_username`, `books_file`, `rank`) VALUES
(20, 'Data Analytics and visualisation', 'books-image/1706280711.png', 'DAV', 'TECH-NEW Publication ', '26/01/2024', '500', '50', '30', 'shlok1', 'books-file/1706280711.pdf', 45),
(21, 'Cryptographyand System Security', 'books-image/1706280770.png', 'CSS', 'fdg', '26/01/2024', '500', '10', '4', 'shlok1', 'books-file/1706280770.pdf', 56),
(22, 'DWM', 'books-image/1706280829.png', 'DWM', 'TECH-NEW Publication ', '25/01/2024', '230', '10', '3', 'shlok1', 'books-file/1706280829.pdf', 56);

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(1, 'hi', 'Hello, How may I assist you Sir/madam'),
(2, 'books name ', 'asdfasdfasdfasdf'),
(5, 'issue book ', 'all books are issue'),
(6, 'author name', 'there are different names like shlok, sakshi, rohan, snehal this are the famous author ');

-- --------------------------------------------------------

--
-- Table structure for table `finezone`
--

CREATE TABLE `finezone` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `fine` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE `issue_book` (
  `id` int(10) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `session` varchar(10) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `booksissuedate` varchar(10) NOT NULL,
  `booksreturndate` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lib_registration`
--

CREATE TABLE `lib_registration` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lib_registration`
--

INSERT INTO `lib_registration` (`id`, `name`, `username`, `password`, `email`, `phone`, `address`, `photo`, `status`) VALUES
(1, 'Shlok T', 'shlok1', 'admin', 'www@gmail.com', '01721585268', 'www', 'upload/1705244305.jpg', ''),
(2, 'Sakshi L', 'Sakshi2', 'admin2', 'hgke@gmail.com', '01956659918', 'asdf', '', ''),
(3, 'Rohan D', 'Rohan3', 'admin3', 'asdf@gmail.com', '7532587419', 'asdfasdf', '', ''),
(4, 'Snehal Gojare', 'Snehal_4', 'admin4', 'dkjl@gmail.com', '7531254789', 'sdfjaoiwhgiwjenvklaA', 'upload/1704956423.jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(10) NOT NULL,
  `susername` varchar(50) NOT NULL,
  `rusername` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `read1` varchar(10) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_books`
--

CREATE TABLE `request_books` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `utype` varchar(10) NOT NULL,
  `bname` varchar(50) NOT NULL,
  `burl` varchar(500) NOT NULL,
  `read1` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `std_registration`
--

CREATE TABLE `std_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `sem` varchar(10) NOT NULL,
  `dept` varchar(10) NOT NULL,
  `regno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `utype` varchar(7) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL,
  `vkey` varchar(250) NOT NULL,
  `verified` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `std_registration`
--

INSERT INTO `std_registration` (`id`, `name`, `username`, `password`, `email`, `phone`, `sem`, `dept`, `regno`, `address`, `utype`, `photo`, `status`, `vkey`, `verified`) VALUES
(59, 'Sachin', 'Sachin1', 'Test@1234', 'abc@gmail.com', '7512463987', '4th', 'EEE', '45612', 'MG. road ', 'student', 'upload/avatar.jpg', 'pending', 'fe7e1bcec2b18d615778a89fcbed7b91', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `t_issuebook`
--

CREATE TABLE `t_issuebook` (
  `id` int(10) NOT NULL,
  `utype` varchar(20) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lecturer` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `booksname` varchar(50) NOT NULL,
  `booksissuedate` varchar(20) NOT NULL,
  `booksreturndate` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_registration`
--

CREATE TABLE `t_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `lecturer` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `idno` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `utype` varchar(7) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `status` varchar(7) NOT NULL,
  `vkey` varchar(250) NOT NULL,
  `verified` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_book`
--
ALTER TABLE `add_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finezone`
--
ALTER TABLE `finezone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_book`
--
ALTER TABLE `issue_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lib_registration`
--
ALTER TABLE `lib_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_books`
--
ALTER TABLE `request_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_registration`
--
ALTER TABLE `std_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_issuebook`
--
ALTER TABLE `t_issuebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_registration`
--
ALTER TABLE `t_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_book`
--
ALTER TABLE `add_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `finezone`
--
ALTER TABLE `finezone`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `issue_book`
--
ALTER TABLE `issue_book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `lib_registration`
--
ALTER TABLE `lib_registration`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `request_books`
--
ALTER TABLE `request_books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `std_registration`
--
ALTER TABLE `std_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `t_issuebook`
--
ALTER TABLE `t_issuebook`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `t_registration`
--
ALTER TABLE `t_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
