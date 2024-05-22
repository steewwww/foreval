-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 11:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `description`, `product_price`, `product_image`, `qty`, `total_price`, `product_code`) VALUES
(719, 'pcs', 'BALLPEN, black, 0.7mm ', '8', '', 25, '200', '17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `input_one` text NOT NULL,
  `input_two` text NOT NULL,
  `input_three` text NOT NULL,
  `selected_name` text NOT NULL,
  `selected_role` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`input_one`, `input_two`, `input_three`, `selected_name`, `selected_role`) VALUES
('AGASGASDASDSA', '5:00 PM', 'December 14, 2023', '', ''),
('cavite', '6:00', 'jan 21, 2016', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `description`, `product_price`, `product_qty`, `product_image`, `product_code`, `category`) VALUES
(99, 'Unit', 'Printer for transparent sticker \r\n• Print Dimension: 200mm*200mm, 210mm*290mm, 210mm*300mm, 297mm*210mm, A4 \r\n• Weight: 34kg \r\n• Ink Type: UV Type \r\n• Dimension (L*W*H): 636*547*490mm \r\n• Color and Page: Multicolor \r\n• Video Outgoing Inspection: Provided \r\n• Software: AcroRIP white ver.9.0 \r\n• Printing Resolution: 1440*1440DPI \r\n• Printing Size: 21*30CM \r\n• Color: CMYK+W+Varnish \r\n• Support System: Windows XP \r\n• Printer Gross Weight: 45kg \r\n', '300000', 5, '', 1, 'electronics'),
(101, 'Unit', 'Desktop i3 \r\n• Windows 11 Home \r\n• Intel Core i3-13th gen \r\n• 8GB DDR4 Memory 1TB HDD, 256GB, M.2 2280 PCI-E SSD Intel UHD 770 Graphics \r\n• MS Office home and student 2021 (licensed) \r\n• 23.8\" screen monitor, 1920x1080 @60Hz \r\n keyboard and mouse \r\n', '40000', 5, '', 12, 'electronics'),
(102, 'bag', 'Tile, 300cm x 300cm ', '60', 1, '', 3, 'materials'),
(103, 'pcs ', 'Tek screw, 12 x 65 Steel - Steel ', '2', 2, '', 4, 'materials'),
(104, 'sets ', '0.80m x 1.20m, Glass Window with complete \r\naccessories', '4200', 7, '', 5, 'materials'),
(106, 'unit', 'DSLR CAMERA\r\n\r\n• 18-55mm VT Lens Kit\r\n• Approx. 124 x 97 x 70(4.9x3.9x2.8in)\r\n• 24.2 Megapixel\r\n• 5 FPS Continuous Shooting\r\n• 23.5 mm 15.6mm Image Sensor Size\r\n• 3.2 LCD Monitor\r\n• Built-in Wifi ', '50000', 2, '', 6, 'electronics'),
(107, 'unit', 'BATTERY FOR CAMERA\r\n\r\n• Lithium Ion Battery Pack\r\n• Battery Capacity: 860 mAh\r\n• Output Voltage 7.4 VDC\r\n• Color Black ', '3000', 2, '', 7, 'electronics'),
(108, 'Branded Desktop Computer', 'Branded Desktop Computer\r\n\r\n• Intel Core i7-12th Gen processor (12\r\ncores 20 threads, 25MB L3 Cache 2.1\r\nGhz Base 4.9 Ghz max frequency 65W\r\nPBP)\r\n• 16GB DDR4 3200mhz UDIMM\r\n• 512 GB M.2 2280 PCI-E SSD + 1TB\r\n3.5 inch 7200 RPM, 2GB of Graphics\r\n(supporting: DVI, HDMI)\r\n• WLAN 802.11 ac/b/g/n wireless LAN\r\nand Bluetooth 4.2 LE\r\n• power supply and adapter 300W\r\n• Keyboard and Mouse USB Keyboard\r\nand wired mouse\r\n• k242hyl, Size: 23.8 monitor\r\n• Windows 11 Bundled Software: MS\r\nOffice Home and Student 2021\r\n(Licensed)\r\n• w/ 1year warranty', '70000', 2, '', 8, 'electronics'),
(109, 'unit', 'LAPTOP\r\n• Intel Core i7 12th Gen processor (24MB\r\nSmart Cache, 2.3GHz Performance-core\r\nwith Intel Turbo Boost Max Technology up\r\nto 4.7GHz)\r\n• NVIDIA GeForce RTX3050 1500-1740\r\nMHz Boost Clock NVIDIA Ampere\r\nStreaming Multiprocessors\r\n• 8GB of DDR4 system memory 3200MHz\r\n- 512GB NVMe SSD (HDD Upgrade Kit\r\nIncluded)\r\n• 15.6” display with IPS (In-Plane\r\nSwitching) technology, Full HD 1920 x\r\n1080, high-brightness (300nits) LED-backlit\r\nTFT LCD, supporting 144 Hz and 3 ms\r\nOverdrive\r\n• Windows 11 Home\r\n• Killer Wi-Fi 6 AX1650i Bluetooth 5.1\r\n• 57.5Wh 4-cell Li-Ion battery\r\n• Microsoft Office Home and Student 2021\r\n(Licensed) ', '70000', 1, '', 9, 'electronics'),
(110, 'unit', 'External Hard Drive, 2TB, 2.5\" ', '3850', 2, '', 10, 'electronics'),
(113, 'pcs', 'Whiteboard, wall mount, 4 x 8, 2 x 120 x \r\n240cm', '5500', 1, '', 2, 'materials'),
(114, 'pcs', 'Chair, monobloc, without armrest', '700', 41, '', 14, 'materials'),
(130, 'roll', 'ACETATE, gauge #2.6, 50m per roll (plastic \r\ncover)', '740', 12, '', 15, 'materials'),
(131, 'pcs', 'ACRYLIC TABLE SIGNAGE, 16in x 4in', '2000', 1, '', 16, 'materials'),
(132, 'pcs', 'BALLPEN, black, 0.7mm ', '8', 600, '', 17, 'materials'),
(133, 'pcs', 'BALLPEN, blue, 0.7mm', '8', 100, '', 18, 'materials'),
(135, 'pcs', 'BROWN ENVELOPE, A4', '3', 100, '', 19, 'materials'),
(136, 'pcs', 'BROWN ENVELOPE, Long ', '3', 100, '', 20, 'materials'),
(137, 'pcs', 'CABLE, HDMI, 3m ', '300', 12, '', 21, 'materials'),
(165, 'unit', 'sadasd', '12', 1, '', 2222, 'food');

-- --------------------------------------------------------

--
-- Table structure for table `signatories`
--

CREATE TABLE `signatories` (
  `id` int(11) NOT NULL,
  `signatoryName` varchar(50) NOT NULL,
  `signatoryRole` varchar(255) NOT NULL,
  `signatoryImage` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signatories`
--

INSERT INTO `signatories` (`id`, `signatoryName`, `signatoryRole`, `signatoryImage`) VALUES
(7, 'John Rafael Balaba', 'BAC Secretary, Goods and Consulting Services', '65b651efcb2c7.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL DEFAULT 'canvasser',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_approved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `email`, `password`, `usertype`, `date`, `is_approved`) VALUES
(8, 1, 'admin@gmail.com', '123', 'admin', '2024-05-22 06:59:39', 1),
(29, 0, 'user@user', '123', 'user', '2023-12-04 05:08:54', 0),
(85, 563885656, 'angelolagmay20@gmail.com', '123', 'canvasser', '2024-05-22 08:58:17', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signatories`
--
ALTER TABLE `signatories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `signatories`
--
ALTER TABLE `signatories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
