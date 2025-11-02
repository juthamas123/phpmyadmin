-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2025 at 05:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` datetime DEFAULT current_timestamp(),
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `email`, `profile_image`, `password`, `role`, `created_at`, `firstname`, `lastname`) VALUES
(9, 'Mm', 'Mm@gmail.com', 'uploads/profile_images/1761581919_453292740_1862480437590989_6430689765328616355_n.jpg', '$2y$10$XRM9Gt4p4p2vxrrENwy71eizgdBFlH9M7Wq/uREU8DAAsTZ5qPrNW', 'admin', '2025-10-22 01:35:19', NULL, NULL),
(11, 'Maree', 'juthamaspromwong@gmail.com', 'uploads/profile_images/1761582657_1.png', '$2y$10$IADipwyprQxtPwW2LOIxceW9K2AQ6cYxc09wbkyeUOR4ikOc7wn6u', 'admin', '2025-10-27 23:28:31', NULL, NULL),
(12, 'Mn', 'Mn@gmail.com', 'uploads/profile_images/1761730923_453292740_1862480437590989_6430689765328616355_n.jpg', '$2y$10$4mnrKdX.qw675VHExZOOfOwTaqxLCDbxF8nreRbL16iv4Tt4bIwXa', 'admin', '2025-10-29 16:38:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'ใหม่',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `status`, `created_at`) VALUES
(3, 'นุ่นนิ่น ', 'admin@gmail.com', 'สวัสดีค่ะ', 'อ่านแล้ว', '2025-10-19 19:57:43'),
(4, 'คนสวย', 'admin@gmail.com', '0638931030\r\n', 'อ่านแล้ว', '2025-10-21 18:37:09'),
(6, 'นุ่นนิ่น', 'juthamaspromwong@gmail.com', '0638931030', 'อ่านแล้ว', '2025-10-26 17:37:11'),
(7, 'จุฑามาศ', 'juthamaspromwong@gmail.com', '123\r\n', 'อ่านแล้ว', '2025-10-27 16:19:07'),
(8, 'คนสวย', 'noon@gmail.com', 'Hiiiiii', 'อ่านแล้ว', '2025-10-29 15:20:04'),
(9, 'นุ่นนิ่น ', 'juthamaspromwong@gmail.com', 'สวัสดีจ้า', 'อ่านแล้ว', '2025-10-31 00:43:50'),
(10, 'นุ่นนิ่น ', 'noon@gmail.com', '1423', 'อ่านแล้ว', '2025-10-31 07:35:24'),
(11, 'จุฑามาศ', 'juthamas@gmail.com', 'ระบบสต็อกสินค้า', 'ใหม่', '2025-10-31 08:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT current_timestamp(),
  `coupon_code` varchar(200) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_name`, `user_id`, `username`, `order_date`, `coupon_code`, `order_status`) VALUES
(98, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 15, 'nin', '2025-10-28 19:05:50', '', 'completed'),
(99, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 15, 'nin', '2025-10-28 19:21:03', '', 'completed'),
(101, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 15, 'nin', '2025-10-28 19:43:10', '', 'shipped'),
(102, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 15, 'nin', '2025-10-28 19:48:05', '', 'processing'),
(105, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 13, 'juthamas1', '2025-10-30 13:08:34', '225', 'pending'),
(106, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 13, 'juthamas1', '2025-10-30 13:13:00', '204', 'pending'),
(107, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 13, 'juthamas1', '2025-10-30 13:26:14', '1234', 'pending'),
(108, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 13, 'juthamas1', '2025-10-30 13:57:05', '124', 'pending'),
(109, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 13, 'juthamas1', '2025-10-30 13:59:47', '12', 'pending'),
(112, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 13, 'juthamas1', '2025-10-30 14:16:57', '', 'pending'),
(113, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 13, 'juthamas1', '2025-10-30 14:18:08', '111', 'pending'),
(114, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 13, 'juthamas1', '2025-10-30 14:24:11', '1234', 'pending'),
(120, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 13, 'ซี', '2025-10-31 06:33:35', '', 'pending'),
(121, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 13, 'เอ', '2025-10-31 06:34:29', '', 'pending'),
(122, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 19, 'juthamas', '2025-10-31 08:34:49', '', 'pending'),
(123, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 20, 'เอฟ', '2025-10-31 08:56:20', '', 'pending'),
(124, 'New Order - ข้อมูลลูกค้าเบื้องต้น', 20, 'เอฟ', '2025-10-31 08:56:41', '', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_category` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_code`, `product_name`, `product_category`, `quantity`) VALUES
(130, 120, '', 'AN003', 'แผ่นรั้วสำเร็จรูป', 1),
(131, 120, '', 'ไม่มีรายการสินค้า', 'ทับหลัง', 1),
(132, 120, '', 'ไม่มีรายการสินค้า', 'เสารั้วไอ15', 1),
(133, 120, '', 'ไม่มีรายการสินค้า', 'เสาเข็มไอ18', 1),
(134, 120, '', 'ไม่มีรายการสินค้า', 'แผ่นกันดิน', 1),
(135, 121, '', 'AN001', 'แผ่นรั้วสำเร็จรูป', 1),
(136, 121, '', 'AM003', 'ทับหลัง', 1),
(137, 121, '', 'AK002', 'เสารั้วไอ15', 1),
(138, 121, '', 'AP001', 'เสาเข็มไอ18', 1),
(139, 121, '', 'AR002', 'แผ่นกันดิน', 1),
(140, 122, '', 'AN001', 'แผ่นรั้วสำเร็จรูป', 1),
(145, 123, '', 'AN001', 'แผ่นรั้วสำเร็จรูป', 20),
(146, 123, '', 'ไม่มีรายการสินค้า', 'ทับหลัง', 1),
(147, 123, '', 'ไม่มีรายการสินค้า', 'เสารั้วไอ15', 1),
(148, 123, '', 'ไม่มีรายการสินค้า', 'เสาเข็มไอ18', 1),
(149, 123, '', 'ไม่มีรายการสินค้า', 'แผ่นกันดิน', 1),
(150, 124, '', 'AN001', 'แผ่นรั้วสำเร็จรูป', 100);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_unit` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT 0.00,
  `stock` int(11) DEFAULT 0,
  `reserved` int(11) DEFAULT 0,
  `remaining` int(11) DEFAULT 0,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `product_unit`, `price`, `stock`, `reserved`, `remaining`, `image_path`) VALUES
(29, 'AN001', 'แผ่นรั้วสำเร็จรูปแบบลิ่ม ขนาด 2.91 เมตร', 'แผ่น', 100.00, 349, 151, 198, 'no1.jpg'),
(30, 'AN002', 'แผ่นรั้วสำเร็จรูปแบบลิ่ม ขนาด 2.42 เมตร', 'แผ่น', 210.00, 300, 170, 130, 'no1.jpg'),
(31, 'AN003', 'แผ่นรั้วสำเร็จรูปแบบเรียบ ขนาด 2.91 เมตร', 'แผ่น', 240.00, 300, 163, 137, 'no2.jpg'),
(32, 'AN004', 'แผ่นรั้วสำเร็จรูปแบบเรียบ ขนาด 2.42 เมตร', 'แผ่น', 210.00, 300, 170, 130, 'no2.jpg'),
(33, 'AK001', 'เสารั้วไอ15*15*2.00 เมตร', 'ต้น', 260.00, 200, 75, 125, 'no3.jpg'),
(34, 'AK002', 'เสารั้วไอ15*15*2.20 เมตร', 'ต้น', 286.00, 200, 100, 100, 'no3.jpg'),
(35, 'AK003', 'เสารั้วไอ15*15*2.50 เมตร', 'ต้น', 300.00, 200, 95, 105, 'no3.jpg'),
(36, 'AK004', 'เสารั้วไอ15*15*2.75 เมตร', 'ต้น', 350.00, 200, 90, 110, 'no3.jpg'),
(37, 'AK005', 'เสารั้วไอ15*15*3.00 เมตร', 'ต้น', 400.00, 200, 103, 97, 'no3.jpg'),
(38, 'AK006', 'เสารั้วไอ15*15*3.50 เมตร', 'ต้น', 480.00, 200, 104, 96, 'no3.jpg'),
(39, 'AK007', 'เสารั้วไอ15*15*4.00 เมตร', 'ต้น', 550.00, 200, 119, 81, 'no3.jpg'),
(40, 'AK008', 'เสารั้วไอ15*15*5.00 เมตร', 'ต้น', 700.00, 200, 138, 62, 'no3.jpg'),
(41, 'AK009', 'เสารั้วไอ15*15*6.00 เมตร', 'ต้น', 850.00, 200, 122, 78, 'no3.jpg'),
(42, 'AP001', 'เสาเข็มไอ18*18*2.00 เมตร', 'ต้น', 350.00, 200, 80, 120, 'no4.png'),
(43, 'AP002', 'เสาเข็มไอ18*18*3.00 เมตร', 'ต้น', 500.00, 200, 60, 140, 'no4.png'),
(44, 'AP003', 'เสาเข็มไอ18*18*4.00 เมตร', 'ต้น', 680.00, 200, 89, 111, 'no4.png'),
(45, 'AP004', 'เสาเข็มไอ18*18*5.00 เมตร', 'ต้น', 850.00, 200, 48, 152, 'no4.png'),
(46, 'AP005', 'เสาเข็มไอ18*18*6.00 เมตร', 'ต้น', 1000.00, 200, 138, 62, 'no4.png'),
(47, 'AM001', 'ทับหลังครอบ ขนาด 2.85 เมตร', 'ตัว', 260.00, 99, 70, 29, 'no7.jpg'),
(48, 'AM002', 'ทับหลังครอบ ขนาด 2.42 เมตร', 'ตัว', 260.00, 100, 20, 80, 'no7.jpg'),
(49, 'AM003', 'ทับหลังตัวที ขนาด 2.91 เมตร', 'ตัว', 480.00, 100, 10, 90, 'no6.jpg'),
(50, 'AR001', 'แผ่นกันดิน ขนาด 1.00 เมตร', 'แผ่น', 100.00, 150, 30, 120, 'no8.jpg'),
(51, 'AR002', 'แผ่นกันดิน ขนาด 1.42 เมตร', 'แผ่น', 140.00, 150, 30, 120, 'no8.jpg'),
(52, 'AR003', 'แผ่นกันดิน ขนาด 2.00 เมตร', 'แผ่น', 200.00, 150, 25, 125, 'no8.jpg'),
(53, 'AR004', 'แผ่นกันดิน ขนาด 2.42 เมตร', 'แผ่น', 240.00, 150, 20, 130, 'no8.jpg'),
(54, 'AR005', 'แผ่นกันดิน ขนาด 2.91 เมตร', 'แผ่น', 290.00, 150, 15, 135, 'no8.jpg'),
(55, 'AR006', 'แผ่นกันดิน ขนาด 3.00 เมตร', 'แผ่น', 300.00, 80, 15, 65, 'no8.jpg'),
(56, 'AR007', 'แผ่นกันดิน ขนาด 3.50 เมตร', 'แผ่น', 350.00, 150, 41, 109, 'no8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_queue`
--

CREATE TABLE `shipping_queue` (
  `id` int(11) NOT NULL,
  `day_th` varchar(50) NOT NULL COMMENT 'วัน (จันทร์ - อาทิตย์)',
  `date` varchar(20) NOT NULL COMMENT 'วันที่ (เช่น 26/10/2568)',
  `sender` varchar(100) NOT NULL COMMENT 'ชื่อผู้ส่ง',
  `buyer` varchar(100) DEFAULT NULL COMMENT 'ชื่อผู้ซื้อ / ผู้ขาย',
  `status` varchar(50) NOT NULL COMMENT 'สถานะการจัดส่ง',
  `remark` text DEFAULT NULL COMMENT 'หมายเหตุเพิ่มเติม',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'วันที่เพิ่มข้อมูล'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipping_queue`
--

INSERT INTO `shipping_queue` (`id`, `day_th`, `date`, `sender`, `buyer`, `status`, `remark`, `created_at`) VALUES
(9, 'ศุกร์', '31/10/2568', 'โทนี่', 'คุณบี', 'จัดส่งสำเร็จ', '', '2025-10-31 09:58:39'),
(10, 'จันทร์', '03/11/2568', 'แจ็ค', 'คุณซี', 'กำลังจัดส่ง', '', '2025-10-31 10:09:54'),
(12, 'ศุกร์', '31/10/2568', 'วิคเตอร์', 'คุณเอฟ', 'กำลังจัดส่ง', '', '2025-10-31 14:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_image` varchar(255) DEFAULT 'img/profiles/default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`, `profile_image`) VALUES
(11, 'จุฑามาศ', 'aa@gmail.com', '$2y$10$XjyagddFSfldTHkUoO6koO9fYzcrD9ILKotUqhTfEylBMd74H5ToS', 'user', '2025-10-19 17:25:00', 'img/profiles/profile_11_1761582607.jpg'),
(13, 'เอ', 'noonjuthamas@gmail.com', '$2y$10$aSHR4qh2vXwdcbs7xpzlmeXnvQJgijcEm8nNRIwm9m70N7Xr4ZFD.', 'user', '2025-10-19 18:41:00', 'img/profiles/profile_13_1761686761.jpg'),
(15, 'nin', 'nin@gmail.com', '$2y$10$7.9b1SWoPcBMlZ12bT/tVedZMgz/iFhxDWd7w5EkWH3iFtx7AsMH2', 'user', '2025-10-22 06:45:00', 'img/profiles/profile_15_1761670651.jpg'),
(16, 'juthamasN', 'Mn@gmail.com', '$2y$10$gLHis1/fVtS0bqb/tFDC4uYxesJHZJYijFVaReEl534V/hhxYjPyq', 'user', '2025-10-27 11:36:00', 'img/profiles/profile_16_1761568280.jpg'),
(17, 'mmmmm', 'mmmmm@gmail.com', '$2y$10$Gj8dxuAT9EeQMgCRGQyXOeogsh/WYTwJF351d8wOodL4evVAoNSh.', 'user', '2025-10-29 14:51:21', 'img/profiles/default.png'),
(18, 'pp naka', 'ppnaka@gmail.com', '$2y$10$n5TNTu8MBGXIYPkyYZNyxuf4rSgqfrn6PbydnoqJMPYW4LyPvExDy', 'user', '2025-10-30 07:07:24', 'img/profiles/default.png'),
(19, 'juthamas', 'juthamaspromwong@gmail.com', '$2y$10$a5a9lvBMcwqp96Z3KA.54eayXekEuiSbcukdseLRqVHg7hsi9AOuO', 'user', '2025-10-31 07:32:00', 'img/profiles/profile_19_1761895971.jpg'),
(20, 'เอฟ', 'juthamas@gmail.com', '$2y$10$Yiik.cHShb4WH43Ad/Egau6EdNSyXxKuoao23bXPB5/RcTszBN70O', 'user', '2025-10-31 07:54:00', 'img/profiles/default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `shipping_queue`
--
ALTER TABLE `shipping_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `shipping_queue`
--
ALTER TABLE `shipping_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
