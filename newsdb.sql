-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2022 at 10:37 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `newslist`
--

DROP TABLE IF EXISTS `newslist`;
CREATE TABLE IF NOT EXISTS `newslist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newslist`
--

INSERT INTO `newslist` (`id`, `title`, `description`, `date`, `image`) VALUES
(35, 'Ukraine says dozens killed in attack on rail station packed with evacuees', 'Ukraine said at least 50 people were killed on Friday and many more wounded in a rocket strike at a railway station in eastern Ukraine packed with civilians fleeing the threat of a major Russian offensive in the east of country .\r\n\r\nAs regional authorities scrambled to evacuate the vulnerable, European Union leaders visited Kyiv to offer Ukrainian President Volodymyr Zelensky support and expedite path of Ukraine toward EU membership.', '2022-04-08 16:27:46', 'Kramatorsk-attack_copy.webp'),
(36, 'The smartphone war: Soldiers, civilians and satellites give the world a window onto Russian invasion', 'A month and a half into Russia invasion of Ukraine, we have become so used to the steady stream of videos and images coming from the front lines that it is easy to forget it is not the norm to have a ringside seat to war unless you are fighting in it.\r\n\r\nSoldiers sharing cellphone video of missile attacks as they happen; residents posting footage of military units occupying their towns in real time and live streaming from bomb shelters; government officials tweeting drone video of destroyed tank columns and downed aircraft.\r\n\r\nAll amplified over thousands of Telegram channels, Twitter feeds and TikTok accounts around the world.', '2022-04-08 16:34:01', 'russia-ukraine-war.webp'),
(37, 'Will Smith banned from the Oscars for 10 years over Chris Rock slap', 'The motion picture academy on Friday banned Will Smith from attending the Oscars or any other academy event for 10 years following his slap of Chris Rock at the Academy Awards.\r\n\r\nThe move comes after a meeting of Board of Governors of the academy to discuss a response to actions of Smith .\r\n\r\n\"The 94th Oscars were meant to be a celebration of the many individuals in our community who did incredible work this past year; however, those moments were overshadowed by the unacceptable and harmful behaviour we saw Mr. Smith exhibit on stage,\" the academy said in a statement.', '2022-04-08 18:00:21', 'aptopix-94th-academy-awards.webp'),
(39, 'Indian international student shot and killed at Toronto subway station', 'Police have identified the victim of fatal shooting of yesterday at Sherbourne subway station as Kartik Vasudev, 21.\r\n\r\nVasudev was an international student from India, the Consulate General of India said in a tweet Friday.\r\n\r\n\"We are shocked [and] distressed at the unfortunate killing of Indian student Kartik Vasudev in a shooting incident in Toronto yesterday,\" the consulate said, adding it is in touch with the family.\r\n\r\nToronto police were called about a shooting at Sherbourne station around 5 p.m. Thursday.', '2022-04-08 18:01:26', 'kartik-vasudev.webp'),
(40, 'Veterans Affairs sent tax slips to hundreds of deceased veterans — some of them war casualties', 'Veterans Affairs Canada mistakenly issued T4A tax slips late last winter in the names of hundreds of deceased veterans across the country, CBC News has learned.\r\n\r\nThe income benefits notices landed in the hands of nearly 700 appalled survivors and relatives. Some of them lost loved ones in Afghanistan more than a decade ago.', '2022-04-08 18:22:54', 'canadian-military-police.webp'),
(41, 'Amazon raises Prime membership rates for Canadians for 1st time', 'Amazon is raising the price of its Prime membership in Canada.\r\n\r\nThe e-commerce subscription of giant service, which offers free shipment on many items, access to its Prime Video streaming platform and an array of other benefits, will begin phasing in higher fees for new subscribers immediately.\r\n\r\nExisting users will see their price jump starting next month.\r\n\r\nAmazon says  Prime\' monthly fee will go up $2 to $9.99 per month, while the annual renewal package will increase by $20 to $99 per year.\r\n\r\nIt is the first price increase for Prime since Amazon launched the membership for Canadians in January 2013.\r\n\r\nThe company says it made the call as \"Amazon continues to invest heavily in Prime,\" with a wider product selection and an introduction earlier this year of free one-day shipping on items in most Canadian cities without a minimum purchase requirement.', '2022-04-08 21:34:05', 'amazon-centre-brampton.webp');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
