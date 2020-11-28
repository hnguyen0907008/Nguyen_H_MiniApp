-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 28, 2020 at 03:37 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_mini_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_models`
--

CREATE TABLE `tbl_mini_models` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `description` text,
  `image` varchar(10) DEFAULT NULL,
  `video` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mini_models`
--

INSERT INTO `tbl_mini_models` (`id`, `name`, `price`, `description`, `image`, `video`) VALUES
(1, 'THE MINI 3 DOOR', '$23,490', 'It’s the original icon, reborn and reimagined for modern motoring. The MINI 3 door builds on 60+ years of timeless MINI design, but comes equipped with a whole host of 21st century tech features and practical touches to cater to your every need. ', '3door.jpg', '3door.mp4'),
(2, 'THE MINI 5 DOOR', '$24,790', 'It’s the iconic MINI hatch, with two extra doors and a bit more room for passengers and cargo. Featuring our hallmark wheels-pushed stance and a low centre of gravity, the MINI 5 door is designed to deliver the same level of corner-carving agility as its 3-door brother. ', '5door.jpg', '5door.mp4'),
(3, 'THE MINI CLUBMAN', '$29,990', 'Allow us to introduce you to the most sophisticated MINI ever made. Superbly crafted with sleek exterior contours, refined cockpit accents, and quality materials throughout.', 'club.jpg', 'club.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_mini_models`
--
ALTER TABLE `tbl_mini_models`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_mini_models`
--
ALTER TABLE `tbl_mini_models`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
