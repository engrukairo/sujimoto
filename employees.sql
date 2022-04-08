-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2022 at 04:30 PM
-- Server version: 5.7.19
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xyz_employees`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `lastname`, `gender`, `email`, `phone`, `address`, `designation`, `timein`, `timeout`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Elise', 'Hettinger', 'Female', 'yfeest@auer.com', '949.437.6787', '863 Bednar Motorway\nCassinfurt, UT 15454', 'Loan Counselor', '07:00:00', '20:57:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(2, 'Prof. Camilla', 'Wilderman', 'Female', 'lempi22@stokes.info', '305.405.9935', '17850 Schaefer Square\nSouth Amyfort, AL 80426', 'Molder', '08:08:00', '17:21:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(3, 'Miss Mya', 'Leannon', 'Female', 'katharina.beier@gmail.com', '213.920.2215', '6101 Gleason Passage Suite 841\nThielbury, ND 19922', 'Compliance Officers', '06:19:00', '15:47:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(4, 'Mrs. Zachariah', 'Lind', 'Female', 'edickens@conn.info', '+1-480-709-4496', '1970 Osinski Harbors\nKailynfurt, NJ 80617', 'Credit Authorizer', '05:27:00', '15:05:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(5, 'Ms. Erika', 'Considine', 'Female', 'merlin10@moen.com', '478-539-6665', '901 Fisher Crossroad\nLake Ceceliastad, AZ 74572-9733', 'Construction Equipment Operator', '08:36:00', '17:02:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(6, 'Prof. Justine', 'Sauer', 'Male', 'ervin.rau@hotmail.com', '1-757-951-4711', '9320 Feil Lake Apt. 507\nWest Oscar, CO 70478', 'Child Care Worker', '07:18:00', '23:18:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(7, 'Dr. Damien', 'Rogahn', 'Male', 'gutkowski.frederic@watsica.com', '1-419-967-3847', '6728 Lang Extension\nSauerbury, KY 79147', 'Production Helper', '07:27:00', '13:47:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(8, 'Dr. Muhammad', 'Schmitt', 'Male', 'slueilwitz@yahoo.com', '+1 (231) 319-6593', '16239 Jett Dale\nPricestad, AZ 56373-3667', 'Real Estate Appraiser', '04:42:00', '20:10:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(9, 'Ms. Katheryn', 'Smitham', 'Female', 'rosalyn.paucek@hand.net', '+1-386-482-9194', '555 Hudson Club\nToymouth, OR 01027', 'Surgeon', '10:32:00', '16:51:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(10, 'Dr. Charlie', 'Kuhlman', 'Male', 'quigley.yesenia@rogahn.com', '+1-531-957-9497', '983 Romaguera Spur\nNorth Dedrick, WI 04212', 'Gaming Cage Worker', '11:34:00', '18:28:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(11, 'Dr. Della', 'Orn', 'Male', 'doyle.carolyne@hotmail.com', '+1-757-798-1196', '714 Maymie Spring Suite 090\nWest Alexys, ME 20217-0016', 'Physical Therapist Assistant', '07:21:00', '19:05:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(12, 'Prof. Brandon', 'Hettinger', 'Male', 'lyda.reynolds@lockman.com', '1-947-733-8155', '3724 Moen Mission Suite 838\nAndreannetown, KS 24302-6062', 'Structural Iron and Steel Worker', '06:22:00', '14:08:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(13, 'Prof. Marcellus', 'Gerhold', 'Male', 'lonie.hartmann@yahoo.com', '+1.252.768.9481', '106 Batz Wall\nDellahaven, IA 06327', 'Electrical Drafter', '09:25:00', '19:29:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(14, 'Prof. Gianni', 'Franecki', 'Female', 'rowe.oleta@hotmail.com', '706.921.9415', '98188 Hermann Knoll\nDenesikmouth, ID 61181-0383', 'Brickmason', '05:20:00', '20:23:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(15, 'Miss Rubie', 'Oberbrunner', 'Female', 'jerald.runte@crooks.com', '479.507.7558', '957 Roy Hill Suite 649\nLonnyhaven, MS 27544', 'Environmental Scientist', '07:55:00', '18:47:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(16, 'Miss Colt', 'Berge', 'Female', 'rupert41@gmail.com', '442-636-2920', '56896 Antonina Terrace\nEast Salmastad, LA 86117', 'Medical Transcriptionist', '11:44:00', '23:11:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(17, 'Ms. Merle', 'Greenfelder', 'Female', 'ellen00@mcglynn.net', '408-600-0339', '7054 David Bypass Suite 845\nWest Imogeneburgh, WV 18801-0002', 'Segmental Paver', '07:09:00', '14:25:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(18, 'Prof. Annabel', 'Dietrich', 'Female', 'tomas.trantow@schiller.com', '731.909.2858', '3425 Tillman Estates\nSipesland, CA 74048', 'Production Planner', '10:13:00', '17:01:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(19, 'Prof. Tyrique', 'Ward', 'Male', 'weston50@pfeffer.com', '+1-646-498-7631', '6475 Duane Loop Suite 586\nWest Kayli, MN 72367', 'Biomedical Engineer', '08:01:00', '17:34:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(20, 'Dr. Emerald', 'Raynor', 'Male', 'labadie.sienna@hotmail.com', '989-435-6898', '306 Mathias Points Apt. 338\nSouth Abagailport, VT 24936-3084', 'Personal Service Worker', '08:12:00', '14:50:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(21, 'Mr. Weston', 'Kshlerin', 'Male', 'qberge@christiansen.org', '+1-442-723-9915', '469 Desiree Wells Apt. 247\nSouth Clementinefort, NE 12620', 'Microbiologist', '07:39:00', '21:05:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(22, 'Dr. Libby', 'Adams', 'Male', 'maegan.morissette@schmitt.net', '(201) 414-1324', '6407 Haag Prairie Apt. 513\nNew Jeremieton, PA 46230', 'Supervisor Fire Fighting Worker', '09:05:00', '12:31:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(23, 'Prof. Susan', 'Stamm', 'Female', 'jayson.hudson@schaefer.com', '878-435-3291', '7774 Ernser Gardens Suite 383\nNew Clifton, ND 29841', 'Registered Nurse', '07:48:00', '12:19:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(24, 'Dr. Imani', 'Hirthe', 'Male', 'daryl08@gmail.com', '1-931-336-1249', '8656 Gussie Vista Apt. 524\nEast Astridbury, MT 76431', 'Sculptor', '10:08:00', '17:56:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00'),
(25, 'Mr. Dave', 'Koch', 'Male', 'itzel.nienow@gmail.com', '1-313-523-9179', '68773 Koelpin Throughway\nEast Ed, OR 76585-2755', 'RN', '08:27:00', '21:05:00', '2022-04-08 07:47:00', '2022-04-08 07:47:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
