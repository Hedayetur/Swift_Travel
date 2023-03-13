-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 11:33 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `st`
--

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `g_iid` int(10) NOT NULL,
  `g_name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `d_id` int(10) NOT NULL,
  `g_avail` binary(1) NOT NULL,
  `g_pic` varchar(255) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `g_charge` int(11) DEFAULT NULL,
  `g_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`g_iid`, `g_name`, `description`, `d_id`, `g_avail`, `g_pic`, `user_id`, `g_charge`, `g_date`) VALUES
(1, 'Hasan Iqbal', 'He have a good sense of humor,empathic,passionate,outgoing personality.', 1, 0x30, './image/Hasan_Iqbal.jpg', 2, 1800, '2021-09-30'),
(2, 'Hasib Haque', 'He have a great public speaking skills,dynamism,passionate,punctual.', 1, 0x31, './image/Hasib_Haque.jpg', 1, 2000, '0000-00-00'),
(3, 'Hrithik Roshan', 'He have a good sense of humor,empathic,passionate,outgoing personality.', 2, 0x31, './image/Hrithik_Roshan.jpg', 1, 1800, '0000-00-00'),
(4, 'Tariq Sohel', 'He have a great public speaking skills,dynamism,passionate,punctual.', 2, 0x31, './image/Tariq_Sohel.jpg', 1, 2000, '0000-00-00'),
(5, 'Tajwar Anwar', 'He have a good sense of humor,empathic,passionate,outgoing personality.', 3, 0x31, './image/Tajwar_Anwar.jpg', 1, 1800, '0000-00-00'),
(6, 'Labib Wahab', 'He have a great public speaking skills,dynamism,passionate,punctual.', 3, 0x31, './image/Labib_Wahab.jpg', 1, 2000, '0000-00-00'),
(7, 'Tahmin Autul', 'He have a good sense of humor,empathic,passionate,outgoing personality.', 4, 0x31, './image/Tahmin_Autul.jpg', 1, 1800, '0000-00-00'),
(8, 'Kaiser Seikh', 'He have a great public speaking skills,dynamism,passionate,punctual.', 4, 0x31, './image/Kaiser_Seikh.jpg', 1, 2000, '0000-00-00'),
(9, 'Md.Rayhan', 'He have a good sense of humor,empathic,passionate,outgoing personality.', 5, 0x31, './image/Md_Rayhan.jpg', 1, 1800, '0000-00-00'),
(10, 'Ankush Hazra', 'He have a great public speaking skills,dynamism,passionate,punctual.', 5, 0x31, './image/Ankush_Hazra.jpg', 1, 2000, '0000-00-00'),
(11, 'Badhon Ayub', 'He have a good sense of humor,empathic,passionate,outgoing personality.', 6, 0x31, './image/Badhon_Ayub.jpg', 1, 1800, '0000-00-00'),
(12, 'Imran Khan', 'He have a great public speaking skills,dynamism,passionate,punctual.', 6, 0x31, './image/Imran_Khan.jpg', 1, 2000, '0000-00-00'),
(13, 'Arif Abdullah', 'He have a good sense of humor,empathic,passionate,outgoing personality.', 7, 0x31, './image/Arif_Abdullah.jpg', 1, 1800, '0000-00-00'),
(14, 'Helal Siam', 'He have a great public speaking skills,dynamism,passionate,punctual.', 7, 0x31, './image/Helal_Siam.jpg', 1, 2000, '0000-00-00'),
(15, 'Zain Imam', 'He have a good sense of humor,empathic,passionate,outgoing personality.', 8, 0x31, './image/Zain_Imam.jpg', 1, 1800, '0000-00-00'),
(16, 'Iqbal Khan', 'He have a great public speaking skills,dynamism,passionate,punctual.', 8, 0x31, './image/Iqbal_Khan.jpg', 1, 2000, '0000-00-00'),
(17, 'Fawad Khan', 'He have a good sense of humor,empathic,passionate,outgoing personality.', 9, 0x31, './image/Fawad_Khan.jpg', 1, 1800, '0000-00-00'),
(18, 'Sidharth Nayem', 'He have a great public speaking skills,dynamism,passionate,punctual.', 9, 0x31, './image/Sidharth_Nayem.jpg', 1, 2000, '0000-00-00'),
(19, 'Salman Khan', 'He have a good sense of humor,empathic,passionate,outgoing personality.', 10, 0x31, './image/Salman_Khan.jpg', 1, 1800, '0000-00-00'),
(20, 'Shahrukh Khan', 'He have a great public speaking skills,dynamism,passionate,punctual.', 10, 0x31, './image/Shahrukh_khan.jpg', 1, 2000, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `information_id` int(10) NOT NULL,
  `h_id` int(10) NOT NULL,
  `room_id` int(10) DEFAULT NULL,
  `t_id` int(10) DEFAULT NULL,
  `car_id` int(10) DEFAULT NULL,
  `insurance_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `user_id` int(10) NOT NULL,
  `insurance_id` int(10) NOT NULL,
  `health_price` int(11) DEFAULT NULL,
  `Things_price` int(11) DEFAULT NULL,
  `trip_cancel_price` int(11) DEFAULT NULL,
  `Health` binary(1) DEFAULT NULL,
  `things` binary(1) DEFAULT NULL,
  `trip_cancel` binary(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`user_id`, `insurance_id`, `health_price`, `Things_price`, `trip_cancel_price`, `Health`, `things`, `trip_cancel`) VALUES
(13, 1, 800, 500, NULL, 0x31, 0x31, 0x30),
(14, 2, 800, NULL, NULL, 0x31, 0x30, 0x30);

-- --------------------------------------------------------

--
-- Table structure for table `packing_tips`
--

CREATE TABLE `packing_tips` (
  `d_id` int(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `places_to_visit`
--

CREATE TABLE `places_to_visit` (
  `d_id` int(10) DEFAULT NULL,
  `place_name` varchar(255) NOT NULL,
  `place_pic` varchar(255) DEFAULT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places_to_visit`
--

INSERT INTO `places_to_visit` (`d_id`, `place_name`, `place_pic`, `Tourist_Spotd_id`) VALUES
(1, 'Lalbagh Fort', './image/lalbag.jpg', 1),
(1, 'Ahsan Manzil', './image/ahsan_monjil.jpg', 1),
(1, 'Sonargaon', './image/panam_city.jpg', 1),
(1, 'Bangladesh National Museum', './image/national_mus.jpg', 1),
(2, 'Bangabandhu Sheikh Mujib Safari Park ', './image/Bangabandhu_Sheikh_Mujib_Safari_Park.jpg', 2),
(2, 'Himchari', './image/Himchari.jpg', 2),
(2, 'Moheshkhali Island', './image/Moheshkhali_Island.jpg', 2),
(2, 'Inani Beach', './image/Inani Beach.jpg', 2),
(3, 'Nafakhum Waterfall', './image/Nafakhum_Waterfall.jpg', 3),
(3, 'Nilgiri', './image/Nilgiri.jpg', 3),
(3, 'Keokradong', './image/keokradong_hill.jpg', 3),
(3, 'Sangu River', './image/Sangu_River.jpg', 3),
(4, 'Ratargul Swamp Forest', './image/Ratargul_Swamp_Forest.jpg', 4),
(4, 'Sreemangal', './image/Sreemangal_tea_garden.jpg', 4),
(4, 'Bisnakandi', './image/Bisnakandi.jpg', 4),
(4, 'Hum Hum Water Falls', './image/Hum_Hum_Water_Falls.jpg', 4),
(5, 'Saint Martin Island ', './image/Saint_Martin_Island.jpg', 5),
(5, 'Chhera Dwip', './image/Chhera_Dwip.jpg', 5),
(6, 'Patenga beach', './image/Patenga_beach.jpg', 6),
(6, 'Battali hills park', './image/Battali_hills_park.jpg', 6),
(6, 'Shrine of Bayazid Bostami', './image/Shrine_of_Bayazid_Bostami.jpg', 6),
(6, 'Foys lake and amusement park', './image/Foys_lake_and_amusement_park.jpg', 6),
(7, 'Konglak Hill', './image/Konglak_Hill.jpg', 7),
(7, 'Pidam Taisa', './image/Pidam_Taisa.jpg', 7),
(8, 'Sundarban National Park', './image/Sundarban_National_Park.jpg', 8),
(8, 'Hiron Point', './image/Hiron_Point.jpg', 8),
(8, 'Kotka Beach', './image/Kotka_Beach.jpg', 8),
(8, 'Dublar Char Island', './image/Dublar_Char_Island.jpg', 8),
(9, 'Kaptai Lake', './image/Kaptai_Lake.jpg', 9),
(9, 'Shuvolong Waterfalls', './image/Shuvolong_Waterfalls.jpg', 9),
(9, 'Rongrang Hill', './image/Rongrang_Hill.jpg', 9),
(9, 'Parjatan Hanging Bridge', './image/Parjatan_Hanging_Bridge.jpg', 9),
(10, 'Banglabanda (Zero Point)', './image/Banglabanda_Zero_Point.jpg', 10),
(10, 'Mughali killah (fort) at Chandan-bari', './image/Mughali_killah_fort_at_Chandan_bari.jpg', 10),
(10, 'Mirzapur Shahi Mosque (400 years old)', './image/Mirzapur_Shahi_Mosque_400_years_old.jpg', 10),
(10, 'Box Museum', './image/Box_Museum.jpg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `rental_car`
--

CREATE TABLE `rental_car` (
  `d_id` int(10) NOT NULL,
  `rent` int(11) DEFAULT NULL,
  `car_id` int(10) NOT NULL,
  `car_model` varchar(255) DEFAULT NULL,
  `c_avail` binary(1) NOT NULL,
  `user_id` int(10) NOT NULL,
  `car_pic` varchar(255) DEFAULT NULL,
  `booking_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rental_car`
--

INSERT INTO `rental_car` (`d_id`, `rent`, `car_id`, `car_model`, `c_avail`, `user_id`, `car_pic`, `booking_date`) VALUES
(1, 1800, 1, 'Axio', 0x30, 2, './image/Axio.jpg', '2021-09-19'),
(1, 1500, 2, 'X Noah', 0x31, 1, './image/X_Noah.jpg', '0000-00-00'),
(1, 2500, 3, 'Tesla', 0x30, 10, './image/Tesla.jpg', '2021-09-21'),
(1, 1900, 4, 'Hiace Micro Bus', 0x31, 1, './image/Hiace_Micro_Bus.jpg', '0000-00-00'),
(2, 1600, 5, 'Avis', 0x31, 1, './image/Avis.jpg', '0000-00-00'),
(2, 1200, 6, 'Toyota Corolla', 0x31, 1, './image/Toyota_Corolla.jpg', '0000-00-00'),
(2, 2200, 7, 'Mitsubishi Pajero', 0x31, 1, './image/Mitsubishi_Pajero.jpg', '0000-00-00'),
(2, 1100, 8, 'Chander Gari', 0x31, 1, './image/Chander_Gari.jpg', '0000-00-00'),
(3, 1450, 9, 'Hiace Super GL', 0x31, 1, './image/Hiace_Super_GL.jpg', '0000-00-00'),
(3, 1250, 10, 'Sedan', 0x31, 1, './image/Sedan.jpg', '0000-00-00'),
(3, 1350, 11, 'Europcar', 0x31, 1, './image/Europcar.jpg', '0000-00-00'),
(3, 1100, 12, 'Chander Gari', 0x31, 1, './image/Chander_Gari.jpg', '0000-00-00'),
(4, 1400, 13, 'Allion', 0x31, 1, './image/Allion.jpg', '0000-00-00'),
(4, 1000, 14, 'Probox', 0x31, 1, './image/Probox.jpg', '0000-00-00'),
(4, 1100, 15, 'Chander Gari', 0x31, 1, './image/Chander_Gari.jpg', '0000-00-00'),
(4, 1800, 16, 'Axio', 0x30, 2, './image/Axio.jpg', '2021-09-12'),
(5, 1250, 17, 'Sedan', 0x31, 1, './image/Sedan.jpg', '0000-00-00'),
(5, 1100, 18, 'Chander Gari', 0x31, 1, './image/Chander_Gari.jpg', '0000-00-00'),
(5, 1450, 19, 'Hiace Super GL', 0x31, 1, './image/Hiace_Super_GL.jpg', '0000-00-00'),
(5, 1600, 20, 'Avis', 0x31, 1, './image/Avis.jpg', '0000-00-00'),
(6, 2250, 21, 'Tesla', 0x31, 1, './image/Tesla.jpg', '0000-00-00'),
(6, 1400, 22, 'Allion', 0x31, 1, './image/Allion.jpg', '0000-00-00'),
(6, 1250, 23, 'Sedan', 0x31, 1, './image/Sedan.jpg', '0000-00-00'),
(6, 1900, 24, 'Hiace Micro Bus', 0x31, 1, './image/1Hiace_Micro_Bus.jpg', '0000-00-00'),
(7, 1500, 25, 'X Noah', 0x31, 1, './image/X_Noah.jpg', '0000-00-00'),
(7, 2200, 26, 'Mitsubishi Pajero', 0x31, 1, './image/Mitsubishi_Pajero.jpg', '0000-00-00'),
(7, 1900, 27, 'Hiace Micro Bus', 0x31, 1, './image/1Hiace_Micro_Bus.jpg', '0000-00-00'),
(7, 1100, 28, 'Chander Gari', 0x31, 1, './image/Chander_Gari.jpg', '0000-00-00'),
(8, 1250, 29, 'Sedan', 0x31, 1, './image/Sedan.jpg', '0000-00-00'),
(8, 1500, 30, 'X Noah', 0x30, 10, './image/X_Noah.jpg', '2021-09-20'),
(8, 1100, 31, 'Chander Gari', 0x31, 1, './image/Chander_Gari.jpg', '0000-00-00'),
(8, 1000, 32, 'Probox', 0x31, 1, './image/Probox.jpg', '0000-00-00'),
(9, 1400, 33, 'Allion', 0x31, 1, './image/Allion.jpg', '0000-00-00'),
(9, 1500, 34, 'X Noah', 0x31, 1, './image/X_Noah.jpg', '0000-00-00'),
(9, 1900, 35, 'Hiace Micro Bus', 0x31, 1, './image/1Hiace_Micro_Bus.jpg', '0000-00-00'),
(9, 1350, 36, 'Europcar', 0x31, 1, './image/Europcar.jpg', '0000-00-00'),
(10, 1250, 37, 'Sedan', 0x31, 1, './image/Sedan.jpg', '0000-00-00'),
(10, 1600, 38, 'Avis', 0x31, 1, './image/Avis.jpg', '0000-00-00'),
(10, 1450, 39, 'Hiace Super GL', 0x31, 1, './image/Hiace_Super_GL.jpg', '0000-00-00'),
(10, 1000, 40, 'Probox', 0x31, 1, './image/Probox.jpg', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `room_booking`
--

CREATE TABLE `room_booking` (
  `h_id` int(10) NOT NULL,
  `h_name` varchar(255) NOT NULL,
  `room_id` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `availability` binary(1) NOT NULL,
  `user_id` int(10) NOT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL,
  `room_pic` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room_booking`
--

INSERT INTO `room_booking` (`h_id`, `h_name`, `room_id`, `price`, `availability`, `user_id`, `Tourist_Spotd_id`, `room_pic`, `start_date`, `end_date`) VALUES
(1, 'Hotel Seven Star', 101, 1050, 0x30, 2, 1, './image/low_budget 1.jpg', '2021-09-18', '2021-10-09'),
(2, 'Hotel Seven Star', 102, 700, 0x30, 10, 1, './image/medium_budget_1.jpg', '2021-09-21', '2021-10-07'),
(3, 'Hotel Seven Star', 103, 850, 0x31, 1, 1, './image/high_budget_1.jpg', '0000-00-00', '0000-00-00'),
(4, 'Hotel City Place', 201, 600, 0x31, 1, 1, './image/low_budget_2.jpg', '0000-00-00', '0000-00-00'),
(5, 'Hotel City Place', 202, 1200, 0x31, 1, 1, './image/medium_budget_2.jpg', '0000-00-00', '0000-00-00'),
(6, 'Hotel City Place', 203, 1757, 0x31, 1, 1, './image/high_budget_2.jpg', '0000-00-00', '0000-00-00'),
(7, 'Hotel Rahmania', 301, 500, 0x30, 2, 1, './image/low_budget_3.jpg', '2021-09-19', '2021-09-12'),
(8, 'Hotel Rahmania', 302, 1500, 0x30, 2, 1, './image/medium_budget_3.jpg', '2021-09-25', '2021-09-11'),
(9, 'Hotel Rahmania', 303, 1000, 0x31, 1, 1, './image/high_budget_3.jpg', '0000-00-00', '0000-00-00'),
(10, ' Muskat holiday Resort', 101, 1372, 0x31, 1, 2, './image/low_budget 1.jpg', '0000-00-00', '0000-00-00'),
(11, ' Muskat holiday Resort', 102, 1568, 0x31, 1, 2, './image/medium_budget_1.jpg', '0000-00-00', '0000-00-00'),
(12, ' Muskat holiday Resort', 103, 950, 0x31, 1, 2, './image/high_budget_1.jpg', '0000-00-00', '0000-00-00'),
(13, 'Grand Beach Resort', 201, 1274, 0x31, 1, 2, './image/low_budget_2.jpg', '0000-00-00', '0000-00-00'),
(14, 'Grand Beach Resort', 202, 1764, 0x31, 1, 2, './image/medium_budget_2.jpg', '0000-00-00', '0000-00-00'),
(15, 'Grand Beach Resort', 203, 700, 0x31, 1, 2, './image/high_budget_2.jpg', '0000-00-00', '0000-00-00'),
(16, 'Hotel Shams Plaza ', 301, 1191, 0x31, 1, 2, './image/low_budget_3.jpg', '0000-00-00', '0000-00-00'),
(17, 'Hotel Shams Plaza ', 302, 700, 0x31, 1, 2, './image/medium_budget_3.jpg', '0000-00-00', '0000-00-00'),
(18, 'Hotel Shams Plaza ', 303, 500, 0x31, 1, 2, './image/high_budget_3.jpg', '0000-00-00', '0000-00-00'),
(19, 'Hill Crown Hotel ', 101, 1200, 0x31, 1, 3, './image/low_budget 1.jpg', '0000-00-00', '0000-00-00'),
(20, 'Hill Crown Hotel ', 102, 1769, 0x31, 1, 3, './image/medium_budget_1.jpg', '0000-00-00', '0000-00-00'),
(21, 'Hill Crown Hotel ', 103, 750, 0x31, 1, 3, './image/high_budget_1.jpg', '0000-00-00', '0000-00-00'),
(22, 'Hotel Diamond Park', 201, 1500, 0x31, 1, 3, './image/low_budget_2.jpg', '0000-00-00', '0000-00-00'),
(23, 'Hotel Diamond Park', 202, 1107, 0x31, 1, 3, './image/medium_budget_2.jpg', '0000-00-00', '0000-00-00'),
(24, 'Hotel Diamond Park', 203, 800, 0x31, 1, 3, './image/high_budget_2.jpg', '0000-00-00', '0000-00-00'),
(25, 'Hotel Prince', 301, 1105, 0x31, 1, 3, './image/low_budget_3.jpg', '0000-00-00', '0000-00-00'),
(26, 'Hotel Prince', 302, 705, 0x31, 1, 3, './image/medium_budget_3.jpg', '0000-00-00', '0000-00-00'),
(27, 'Hotel Prince', 303, 500, 0x31, 1, 3, './image/high_budget_3.jpg', '0000-00-00', '0000-00-00'),
(28, 'The Grand Hotel', 101, 1290, 0x31, 1, 4, './image/low_budget 1.jpg', '0000-00-00', '0000-00-00'),
(29, 'The Grand Hotel', 102, 550, 0x31, 1, 4, './image/medium_budget_1.jpg', '0000-00-00', '0000-00-00'),
(30, 'The Grand Hotel', 103, 870, 0x31, 1, 4, './image/high_budget_1.jpg', '0000-00-00', '0000-00-00'),
(31, ' Hotel Payra ', 201, 400, 0x31, 1, 4, './image/low_budget_2.jpg', '0000-00-00', '0000-00-00'),
(32, ' Hotel Payra ', 202, 950, 0x31, 1, 4, './image/medium_budget_2.jpg', '0000-00-00', '0000-00-00'),
(33, ' Hotel Payra ', 203, 893, 0x31, 1, 4, './image/high_budget_2.jpg', '0000-00-00', '0000-00-00'),
(34, 'W Hotel', 301, 1833, 0x31, 1, 4, './image/low_budget_3.jpg', '0000-00-00', '0000-00-00'),
(35, 'W Hotel', 302, 1260, 0x31, 1, 4, './image/medium_budget_3.jpg', '0000-00-00', '0000-00-00'),
(36, 'W Hotel', 303, 850, 0x31, 1, 4, './image/high_budget_3.jpg', '0000-00-00', '0000-00-00'),
(37, 'Blue Marine', 101, 1090, 0x31, 1, 5, './image/low_budget 1.jpg', '0000-00-00', '0000-00-00'),
(38, 'Blue Marine', 102, 850, 0x31, 1, 5, './image/medium_budget_1.jpg', '0000-00-00', '0000-00-00'),
(39, 'Blue Marine', 103, 620, 0x31, 1, 5, './image/high_budget_1.jpg', '0000-00-00', '0000-00-00'),
(40, 'Darjeeling Resor', 201, 1440, 0x31, 1, 5, './image/low_budget_2.jpg', '0000-00-00', '0000-00-00'),
(41, 'Darjeeling Resor', 202, 650, 0x31, 1, 5, './image/medium_budget_2.jpg', '0000-00-00', '0000-00-00'),
(42, 'Darjeeling Resor', 203, 866, 0x31, 1, 5, './image/high_budget_2.jpg', '0000-00-00', '0000-00-00'),
(43, 'Saint Martains Resort', 301, 1960, 0x31, 1, 5, './image/low_budget_3.jpg', '0000-00-00', '0000-00-00'),
(44, 'Saint Martains Resort', 302, 1560, 0x31, 1, 5, './image/medium_budget_3.jpg', '0000-00-00', '0000-00-00'),
(45, 'Saint Martains Resort', 303, 1850, 0x31, 1, 5, './image/high_budget_3.jpg', '0000-00-00', '0000-00-00'),
(46, 'Hotel Hilton City Residential', 101, 1090, 0x31, 1, 6, './image/low_budget 1.jpg', '0000-00-00', '0000-00-00'),
(47, 'Hotel Hilton City Residential', 102, 850, 0x31, 1, 6, './image/medium_budget_1.jpg', '0000-00-00', '0000-00-00'),
(48, 'Hotel Hilton City Residential', 103, 620, 0x31, 1, 6, './image/high_budget_1.jpg', '0000-00-00', '0000-00-00'),
(49, 'Hotel Diamond Park', 201, 1440, 0x31, 1, 6, './image/low_budget_2.jpg', '0000-00-00', '0000-00-00'),
(50, 'Hotel Diamond Park', 202, 650, 0x31, 1, 6, './image/medium_budget_2.jpg', '0000-00-00', '0000-00-00'),
(51, 'Hotel Diamond Park', 203, 866, 0x31, 1, 6, './image/high_budget_2.jpg', '0000-00-00', '0000-00-00'),
(52, 'Golden Inn Chattagram', 301, 1890, 0x31, 1, 6, './image/low_budget_3.jpg', '0000-00-00', '0000-00-00'),
(53, 'Golden Inn Chattagram', 302, 1760, 0x31, 1, 6, './image/medium_budget_3.jpg', '0000-00-00', '0000-00-00'),
(54, 'Golden Inn Chattagram', 303, 1660, 0x31, 1, 6, './image/high_budget_3.jpg', '0000-00-00', '0000-00-00'),
(55, 'Rung Rang Resort', 101, 1900, 0x31, 1, 7, './image/low_budget 1.jpg', '0000-00-00', '0000-00-00'),
(56, 'Rung Rang Resort', 102, 1400, 0x31, 1, 7, './image/medium_budget_1.jpg', '0000-00-00', '0000-00-00'),
(57, 'Rung Rang Resort', 103, 850, 0x31, 1, 7, './image/high_budget_1.jpg', '0000-00-00', '0000-00-00'),
(58, 'Meghaloy Resort', 201, 1500, 0x31, 1, 7, './image/low_budget_2.jpg', '0000-00-00', '0000-00-00'),
(59, 'Meghaloy Resort', 202, 1700, 0x31, 1, 7, './image/medium_budget_2.jpg', '0000-00-00', '0000-00-00'),
(60, 'Meghaloy Resort', 203, 990, 0x31, 1, 7, './image/high_budget_2.jpg', '0000-00-00', '0000-00-00'),
(61, 'Himachal Guest House', 301, 1800, 0x31, 1, 7, './image/low_budget_3.jpg', '0000-00-00', '0000-00-00'),
(62, 'Himachal Guest House', 302, 2100, 0x31, 1, 7, './image/medium_budget_3.jpg', '0000-00-00', '0000-00-00'),
(63, 'Himachal Guest House', 303, 1695, 0x31, 1, 7, './image/high_budget_3.jpg', '0000-00-00', '0000-00-00'),
(64, 'Sundarban Jangal Mahal', 101, 1400, 0x31, 1, 8, './image/low_budget 1.jpg', '0000-00-00', '0000-00-00'),
(65, 'Sundarban Jangal Mahal', 102, 1600, 0x31, 1, 8, './image/medium_budget_1.jpg', '0000-00-00', '0000-00-00'),
(66, 'Sundarban Jangal Mahal', 103, 800, 0x31, 1, 8, './image/high_budget_1.jpg', '0000-00-00', '0000-00-00'),
(67, 'Cnest Sundarban', 201, 1598, 0x31, 1, 8, './image/low_budget_2.jpg', '0000-00-00', '0000-00-00'),
(68, 'Cnest Sundarban', 202, 1700, 0x31, 1, 8, './image/medium_budget_2.jpg', '0000-00-00', '0000-00-00'),
(69, 'Cnest Sundarban', 203, 945, 0x31, 1, 8, './image/high_budget_2.jpg', '0000-00-00', '0000-00-00'),
(70, 'Swabhumi Guest House', 301, 900, 0x31, 1, 8, './image/low_budget_3.jpg', '0000-00-00', '0000-00-00'),
(71, 'Swabhumi Guest House', 302, 1200, 0x31, 1, 8, './image/medium_budget_3.jpg', '0000-00-00', '0000-00-00'),
(72, 'Swabhumi Guest House', 303, 695, 0x31, 1, 8, './image/high_budget_3.jpg', '0000-00-00', '0000-00-00'),
(73, 'Moti Mahal', 101, 400, 0x31, 1, 9, './image/low_budget 1.jpg', '0000-00-00', '0000-00-00'),
(74, 'Moti Mahal', 102, 600, 0x31, 1, 9, './image/medium_budget_1.jpg', '0000-00-00', '0000-00-00'),
(75, 'Moti Mahal', 103, 1400, 0x31, 1, 9, './image/high_budget_1.jpg', '0000-00-00', '0000-00-00'),
(76, 'Hotel Prince', 201, 1500, 0x31, 1, 9, './image/low_budget_2.jpg', '0000-00-00', '0000-00-00'),
(77, 'Hotel Prince', 202, 1700, 0x31, 1, 9, './image/medium_budget_2.jpg', '0000-00-00', '0000-00-00'),
(78, 'Hotel Prince', 203, 1945, 0x31, 1, 9, './image/high_budget_2.jpg', '0000-00-00', '0000-00-00'),
(79, 'Hotel Green Peace', 301, 1900, 0x31, 1, 9, './image/low_budget_3.jpg', '0000-00-00', '0000-00-00'),
(80, 'Hotel Green Peace', 302, 1300, 0x31, 1, 9, './image/medium_budget_3.jpg', '0000-00-00', '0000-00-00'),
(81, 'Hotel Green Peace', 303, 1195, 0x31, 1, 9, './image/high_budget_3.jpg', '0000-00-00', '0000-00-00'),
(82, 'Hotel Holidon', 101, 600, 0x30, 10, 10, './image/low_budget 1.jpg', '2021-09-20', '2021-09-28'),
(83, 'Hotel Holidon', 102, 1000, 0x31, 1, 10, './image/medium_budget_1.jpg', '0000-00-00', '0000-00-00'),
(84, 'Hotel Holidon', 103, 1500, 0x31, 1, 10, './image/high_budget_1.jpg', '0000-00-00', '0000-00-00'),
(85, 'Jupiter Lodge', 201, 600, 0x31, 1, 10, './image/low_budget_2.jpg', '0000-00-00', '0000-00-00'),
(86, 'Jupiter Lodge', 202, 700, 0x31, 1, 10, './image/medium_budget_2.jpg', '0000-00-00', '0000-00-00'),
(87, 'Jupiter Lodge', 203, 800, 0x31, 1, 10, './image/high_budget_2.jpg', '0000-00-00', '0000-00-00'),
(88, 'Treebo Trip GD Hotel', 301, 900, 0x31, 1, 10, './image/low_budget_3.jpg', '0000-00-00', '0000-00-00'),
(89, 'Treebo Trip GD Hotel', 302, 1300, 0x31, 1, 10, './image/medium_budget_3.jpg', '0000-00-00', '0000-00-00'),
(90, 'Treebo Trip GD Hotel', 303, 1595, 0x31, 1, 10, './image/high_budget_3.jpg', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `things_to_do`
--

CREATE TABLE `things_to_do` (
  `d_id` int(10) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `ttd_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `things_to_do`
--

INSERT INTO `things_to_do` (`d_id`, `description`, `ttd_id`) VALUES
(3, 'Hiking Trails', '1'),
(4, 'Air Tours', '10'),
(1, 'Enjoying the local food', '11'),
(4, 'Enjoying the local food', '12'),
(7, 'Enjoying the local food', '13'),
(10, 'Enjoying the local food', '14'),
(2, 'Kayaking', '15'),
(6, 'Kayaking', '16'),
(9, 'Kayaking', '17'),
(1, 'Speed Boats Tours', '18'),
(2, 'Speed Boats Tours', '19'),
(7, 'Hiking Trails', '2'),
(6, 'Speed Boats Tours', '20'),
(8, 'Speed Boats Tours', '21'),
(2, 'Scuba Diving', '22'),
(5, 'Scuba Diving', '23'),
(2, 'Parasailing', '24'),
(9, 'Parasailing', '25'),
(3, 'Paragliding', '26'),
(9, 'Paragliding', '27'),
(1, 'Safaris', '28'),
(6, 'Safaris', '29'),
(9, 'Hiking Trails', '3'),
(3, 'Nature & Wildlife', '30'),
(4, 'Nature & Wildlife', '31'),
(7, 'Nature & Wildlife', '32'),
(8, 'Nature & Wildlife', '33'),
(10, 'Nature & Wildlife', '34'),
(2, 'Beach', '35'),
(5, 'Beach', '36'),
(6, 'Beach', '37'),
(8, 'Beach', '38'),
(3, '4WD, ATV & Off-Road Tours', '39'),
(1, 'Horseback Riding', '4'),
(4, '4WD, ATV & Off-Road Tours', '40'),
(5, '4WD, ATV & Off-Road Tours', '41'),
(8, '4WD, ATV & Off-Road Tours', '42'),
(10, '4WD, ATV & Off-Road Tours', '43'),
(7, 'Horseback Riding', '5'),
(10, 'Horseback Riding', '6'),
(2, 'Water Sports', '7'),
(5, 'Water Sports', '8'),
(2, 'Air Tours', '9');

-- --------------------------------------------------------

--
-- Table structure for table `things_to_do_tourist spot`
--

CREATE TABLE `things_to_do_tourist spot` (
  `things_to_dottd_id` varchar(255) NOT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_bboking`
--

CREATE TABLE `ticket_bboking` (
  `t_id` int(10) NOT NULL,
  `d_id` int(10) NOT NULL,
  `t_avail` binary(1) NOT NULL,
  `time` time NOT NULL,
  `travel_medium` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `t_price` int(10) NOT NULL,
  `Tourist_Spotd_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `Booking_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket_bboking`
--

INSERT INTO `ticket_bboking` (`t_id`, `d_id`, `t_avail`, `time`, `travel_medium`, `date`, `t_price`, `Tourist_Spotd_id`, `user_id`, `Booking_count`) VALUES
(1010281, 10, 0x31, '09:00:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(1010282, 10, 0x31, '02:30:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(1010283, 10, 0x31, '09:45:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(1010291, 10, 0x31, '09:00:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(1010292, 10, 0x31, '02:30:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(1010293, 10, 0x31, '09:45:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(1010301, 10, 0x31, '09:00:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(1010302, 10, 0x31, '02:30:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(1010303, 10, 0x31, '09:45:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(1111011, 1, 0x31, '09:00:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(1111012, 1, 0x31, '02:30:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(1111013, 1, 0x31, '09:45:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(1111021, 1, 0x31, '09:00:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(1111022, 1, 0x31, '02:30:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(1111023, 1, 0x31, '09:45:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(1111031, 1, 0x31, '09:00:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(1111032, 1, 0x31, '02:30:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(1111033, 1, 0x31, '09:45:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(2222041, 2, 0x31, '09:00:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(2222042, 2, 0x31, '02:30:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(2222043, 2, 0x31, '09:45:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(2222051, 2, 0x31, '09:00:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(2222052, 2, 0x31, '02:30:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(2222053, 2, 0x31, '09:45:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(2222061, 2, 0x31, '09:00:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(2222062, 2, 0x31, '02:30:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(2222063, 2, 0x31, '09:45:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(3333071, 3, 0x31, '09:00:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(3333072, 3, 0x31, '02:30:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(3333073, 3, 0x31, '09:45:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(3333081, 3, 0x31, '09:00:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(3333082, 3, 0x31, '02:30:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(3333083, 3, 0x31, '09:45:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(3333091, 3, 0x31, '09:00:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(3333092, 3, 0x31, '02:30:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(3333093, 3, 0x31, '09:45:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(4444101, 4, 0x31, '09:00:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(4444102, 4, 0x31, '02:30:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(4444103, 4, 0x31, '09:45:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(4444111, 4, 0x31, '09:00:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(4444112, 4, 0x31, '02:30:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(4444113, 4, 0x31, '09:45:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(4444121, 4, 0x31, '09:00:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(4444122, 4, 0x31, '02:30:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(4444123, 4, 0x31, '09:45:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(5555131, 5, 0x31, '09:00:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(5555132, 5, 0x31, '02:30:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(5555133, 5, 0x31, '09:45:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(5555141, 5, 0x31, '09:00:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(5555142, 5, 0x31, '02:30:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(5555143, 5, 0x31, '09:45:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(5555151, 5, 0x31, '09:00:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(5555152, 5, 0x31, '02:30:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(5555153, 5, 0x31, '09:45:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(6666161, 6, 0x31, '09:00:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(6666162, 6, 0x31, '02:30:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(6666163, 6, 0x31, '09:45:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(6666171, 6, 0x31, '09:00:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(6666172, 6, 0x31, '02:30:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(6666173, 6, 0x31, '09:45:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(6666181, 6, 0x31, '09:00:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(6666182, 6, 0x31, '02:30:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(6666183, 6, 0x31, '09:45:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(7777191, 7, 0x31, '09:00:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(7777192, 7, 0x31, '02:30:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(7777193, 7, 0x31, '09:45:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(7777201, 7, 0x31, '09:00:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(7777202, 7, 0x31, '02:30:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(7777203, 7, 0x31, '09:45:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(7777211, 7, 0x31, '09:00:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(7777212, 7, 0x31, '02:30:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(7777213, 7, 0x31, '09:45:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(8888221, 8, 0x31, '09:00:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(8888222, 8, 0x31, '02:30:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(8888223, 8, 0x31, '09:45:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(8888231, 8, 0x31, '09:00:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(8888232, 8, 0x31, '02:30:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(8888233, 8, 0x31, '09:45:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(8888241, 8, 0x31, '09:00:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(8888242, 8, 0x31, '02:30:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(8888243, 8, 0x31, '09:45:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(9999251, 9, 0x31, '09:00:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(9999252, 9, 0x31, '02:30:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(9999253, 9, 0x31, '09:45:00', 'Bus', '0000-00-00', 1000, 1, 1, 0),
(9999261, 9, 0x31, '09:00:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(9999262, 9, 0x31, '02:30:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(9999263, 9, 0x31, '09:45:00', 'Train', '0000-00-00', 600, 1, 1, 0),
(9999271, 9, 0x31, '09:00:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(9999272, 9, 0x31, '02:30:00', 'Plane', '0000-00-00', 3000, 1, 1, 0),
(9999273, 9, 0x31, '09:45:00', 'Plane', '0000-00-00', 3000, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tourist_spot`
--

CREATE TABLE `tourist_spot` (
  `d_id` int(10) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tourist_spot`
--

INSERT INTO `tourist_spot` (`d_id`, `d_name`, `pic`, `description`) VALUES
(1, 'Dhaka City', './image/lalbag.jpg', 'Dhaka, also spelled Dacca, city and capital of Bangladesh. It is located just north of the Buriganga River, a channel of the Dhaleswari River, in the south-central part of the country. Dhaka is Bangladesh\'s most populous city and is one of the largest met'),
(2, 'Cox Bazar', './image/coxbazer.jpg', 'Coxs Bazar town has an area of 6.85 km 2 (2.64 sq mi) and is bounded by Bakkhali River on the north and East, Bay of Bengal in the West, and Jhilwanj Union in the south. The beach in Coxs Bazar has a gentle slope and with an unbroken length of 155 km (9'),
(3, 'Bandarban', './image/Nafakhum_Waterfall.jpg', 'Bandarban is a district in South-Eastern Bangladesh, Coordinates is 22.20N 92.35E, and a part of the Chittagong Division and Chittagong Hill Tracts. ... The newly reported highest peak of Bangladesh - Saka Haphong (3488 ft) is also here in Thanchi upazila'),
(4, 'Sylhet', './image/Ratargul_Swamp_Forest.jpg', 'Sylhet is one of the oldest city in Bangladesh having a vast historical and cultural background and diversified inhabitants of Garo, Khasia, Monipuri and,Hazong. The district is surrounded by the Jaintia, Khasi and Tripura hills.'),
(5, 'Saint Martin', './image/Saint_Martin_Island.jpg', 'St. Martin\'s Island is a small island (area only 3 km 2) in the northeastern part of the Bay of Bengal, about 9 km south of the tip of the Cox\'s Bazar - Teknaf peninsula, and forming the southernmost part of Bangladesh.'),
(6, 'Chattogram', './image/Patenga_beach.jpg', 'Chattogram (Previous Chittagong), the second largest city of Bangladesh and a busy international seaport, is an ideal vacation spot. Its green hills and forests, its broad sandy beaches and its fine cool climate always attract the holiday-makers.'),
(7, 'Sajek Valley', './image/Konglak_Hill.jpg', 'Sajek valley is located among a range of mountains to the southern part of Bangladesh. Although the height of the mountain range is nothing remarkable, it’s a beautiful place to visit and one of the most popular tourist destinations in Bangladesh. Here is'),
(8, 'Sundarban', './image/Sundarban_National_Park.jpg', 'The Sundarbans is a cluster of low-lying islands in the Bay of Bengal, spread across India and Bangladesh, famous for its unique mangrove forests. This active delta region is among the largest in the world, measuring about 40,000 sq km.'),
(9, 'Rangamati', './image/Kaptai_Lake.jpg', 'Rangamati Hill District is the largest district of Bangladesh, about 77 kilometers away from Chittagong. It\'s one of the main tourist spot of Bangladesh for its rich natural resources like green hills, lakes and rivers also for location, tribal people, tr'),
(10, 'Panchagarh', './image/Banglabanda_Zero_Point.jpg', 'Panchagarh was elevated to a district in 01th February 1984. It consists of five upazilas, two municipality, 43 union Parishads and 850 villages.Panchagarh has a strong history and heritage in diversified culture within indigenous Sautal (Tribal) people\'s');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_balance` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`user_id`, `user_name`, `user_mail`, `password`, `user_balance`) VALUES
(1, 'abc', 'abc@gmail.com', 'abc', 0),
(2, 'desf', 'def@gmail.com', '4ed9407630eb1000c0f6b63842defa7d', 0),
(3, 'sanju', 'bbb@gmail.com', 'bbb', 0),
(4, 'ghi', 'ghi@gmail.com', '826bbc5d0522f5f20a1da4b60fa8c871', 0),
(7, 'mno', 'mno@gmail.com', 'd1cf6a6090003989122c4483ed135d55', 0),
(9, 'pqr', 'pqr@gmail.com', 'f734fd4ff1214de59bab601aa34030d2', 0),
(10, 'Sanjida', 'sanjida@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(13, 'Tasmin', 'tasmin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 98700),
(14, 'hedayet', 'hedayet@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', -800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`g_iid`),
  ADD KEY `FKGuide120398` (`user_id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`insurance_id`),
  ADD KEY `FKInsurance991042` (`user_id`);

--
-- Indexes for table `packing_tips`
--
ALTER TABLE `packing_tips`
  ADD PRIMARY KEY (`d_id`),
  ADD KEY `FKPacking_ti894263` (`Tourist_Spotd_id`);

--
-- Indexes for table `places_to_visit`
--
ALTER TABLE `places_to_visit`
  ADD KEY `FKPlaces_to_308030` (`Tourist_Spotd_id`);

--
-- Indexes for table `rental_car`
--
ALTER TABLE `rental_car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `FKRental_car964957` (`user_id`);

--
-- Indexes for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD PRIMARY KEY (`h_id`),
  ADD KEY `FKRoom_Booki97234` (`user_id`);

--
-- Indexes for table `things_to_do`
--
ALTER TABLE `things_to_do`
  ADD PRIMARY KEY (`ttd_id`);

--
-- Indexes for table `things_to_do_tourist spot`
--
ALTER TABLE `things_to_do_tourist spot`
  ADD PRIMARY KEY (`things_to_dottd_id`,`Tourist_Spotd_id`),
  ADD KEY `FKthings_to_290669` (`things_to_dottd_id`),
  ADD KEY `FKthings_to_291151` (`Tourist_Spotd_id`);

--
-- Indexes for table `ticket_bboking`
--
ALTER TABLE `ticket_bboking`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `FKticket_bbo375159` (`user_id`);

--
-- Indexes for table `tourist_spot`
--
ALTER TABLE `tourist_spot`
  ADD PRIMARY KEY (`d_id`),
  ADD UNIQUE KEY `d_name` (`d_name`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guide`
--
ALTER TABLE `guide`
  MODIFY `g_iid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `insurance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packing_tips`
--
ALTER TABLE `packing_tips`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rental_car`
--
ALTER TABLE `rental_car`
  MODIFY `car_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `room_booking`
--
ALTER TABLE `room_booking`
  MODIFY `h_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `ticket_bboking`
--
ALTER TABLE `ticket_bboking`
  MODIFY `t_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9999274;

--
-- AUTO_INCREMENT for table `tourist_spot`
--
ALTER TABLE `tourist_spot`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `guide`
--
ALTER TABLE `guide`
  ADD CONSTRAINT `FKGuide120398` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`);

--
-- Constraints for table `insurance`
--
ALTER TABLE `insurance`
  ADD CONSTRAINT `FKInsurance991042` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`);

--
-- Constraints for table `packing_tips`
--
ALTER TABLE `packing_tips`
  ADD CONSTRAINT `FKPacking_ti894263` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`);

--
-- Constraints for table `places_to_visit`
--
ALTER TABLE `places_to_visit`
  ADD CONSTRAINT `FKPlaces_to_308030` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`);

--
-- Constraints for table `rental_car`
--
ALTER TABLE `rental_car`
  ADD CONSTRAINT `FKRental_car964957` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`);

--
-- Constraints for table `room_booking`
--
ALTER TABLE `room_booking`
  ADD CONSTRAINT `FKRoom_Booki97234` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`);

--
-- Constraints for table `things_to_do_tourist spot`
--
ALTER TABLE `things_to_do_tourist spot`
  ADD CONSTRAINT `FKthings_to_290669` FOREIGN KEY (`things_to_dottd_id`) REFERENCES `things_to_do` (`ttd_id`),
  ADD CONSTRAINT `FKthings_to_291151` FOREIGN KEY (`Tourist_Spotd_id`) REFERENCES `tourist_spot` (`d_id`);

--
-- Constraints for table `ticket_bboking`
--
ALTER TABLE `ticket_bboking`
  ADD CONSTRAINT `FKticket_bbo375159` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
