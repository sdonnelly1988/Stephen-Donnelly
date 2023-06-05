-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2023 at 11:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `search`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_quiz`
--

CREATE TABLE `assign_quiz` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `student_tutor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_quiz`
--

INSERT INTO `assign_quiz` (`id`, `quiz_id`, `student_tutor_id`) VALUES
(22, 38, 8),
(24, 38, 8),
(27, 38, 16),
(28, 37, 8),
(29, 49, 16),
(30, 50, 16),
(31, 1, 31),
(32, 50, 23),
(33, 1, 31),
(34, 50, 31),
(35, 50, 23),
(36, 50, 23),
(37, 52, 23),
(38, 52, 19);

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

CREATE TABLE `calendar_events` (
  `id` int(11) NOT NULL,
  `event_title` varchar(35) NOT NULL,
  `event_shortdesc` varchar(255) NOT NULL,
  `event_start` datetime NOT NULL,
  `student_tutor_id` int(11) NOT NULL,
  `completed` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`id`, `event_title`, `event_shortdesc`, `event_start`, `student_tutor_id`, `completed`) VALUES
(15, 'Joe is book for this day', 'Maths', '2022-12-21 17:48:54', 7, 1),
(17, 'Test hard code', 'sql', '2022-12-23 11:00:00', 7, 1),
(23, 'fdghfdhd', 'dfghdg', '2022-12-24 01:00:00', 7, 1),
(24, 'hghjdg', 'dghjdgh', '2022-12-29 01:00:00', 7, 1),
(27, 'gsdgsgsdf', 'dsfgsdf', '2022-12-30 01:00:00', 7, 1),
(28, 'asfsafasfas', 'sdfafdgdf', '2022-12-31 01:00:00', 7, 1),
(29, 'Big Joe', 'Lets hope this works', '2022-12-27 01:00:00', 8, 1),
(30, 'Stephen', 'Coding', '2023-01-11 12:00:00', 7, 0),
(31, 'Adding student_id = $id', 'First attempt', '2023-01-20 13:00:00', 7, 0),
(32, 'Bob is my name and testing is my ga', 'Test my cal', '2023-01-14 15:00:00', 8, 1),
(33, 'ngnbgcv', 'bnmcn', '2023-01-10 01:00:00', 9, 1),
(34, 'joe', 'joe', '2023-01-11 18:30:00', 9, 1),
(35, 'Bill Please work', 'work', '2023-01-13 17:15:00', 9, 1),
(36, 'Claire First', 'basics', '2023-01-10 15:00:00', 7, 0),
(40, 'gfdg', 'sdfgds', '2023-01-20 18:00:00', 9, 1),
(41, 'More than One Tutor test!', 'Jessica Day Test with Jody 1', '2023-01-31 15:53:49', 14, 0),
(42, 'john', 'again we go', '2023-01-02 19:00:00', 9, 1),
(43, 'again we go again', 'pleaseeeeee work', '2023-01-27 17:00:00', 14, 1),
(44, 'Gerald Donnelly', 'First on new page!', '2023-01-26 06:00:00', 9, 1),
(46, 'Working Hard', 'Hard working', '2023-02-08 16:00:00', 8, 1),
(47, 'Gerald Donnelly', 'Please work', '2023-02-16 01:00:00', 14, 0),
(48, 'Hello Joe', 'Basics', '2023-02-07 16:00:00', 8, 1),
(49, 'Big Joe is a legend', 'This is a test', '2023-02-09 16:00:00', 8, 1),
(50, 'ghdfhdf', 'dfghdfgh', '2023-02-10 16:00:00', 16, 1),
(51, 'Gerald Donnelly', 'Teacher stuff', '2023-02-25 18:00:00', 16, 1),
(52, 'Big Joes', 'This Christmas', '2023-02-28 01:00:00', 8, 1),
(53, 'dfgsd', 'sdfgsd', '2023-03-14 01:00:00', 16, 1),
(54, 'Testing Student Dashboard', 'Dashboard', '2023-03-31 18:15:00', 16, 0),
(64, 'please work I want you to work!!', 'asdfsa', '2023-03-07 18:30:00', 8, 1),
(67, 'another go at it', 'whats the craic?', '2023-03-13 15:00:00', 8, 1),
(68, 'Numeracy', 'Fractions', '2023-03-02 15:00:00', 16, 1),
(69, 'dgsd', 'sdfgds', '2023-03-15 14:00:00', 16, 0),
(70, 'english', 'basic computer skills', '2023-04-13 14:00:00', 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `quiz_id`, `question_number`, `is_correct`, `text`) VALUES
(1, 1, 1, 0, 'Venice'),
(2, 1, 1, 1, 'Rome'),
(3, 1, 1, 0, 'Naples'),
(4, 1, 1, 0, 'Milan'),
(5, 1, 1, 0, 'Florence'),
(6, 1, 2, 1, 'Zooey Deschanel'),
(7, 1, 2, 0, 'Kaley Cuoco'),
(8, 1, 2, 0, 'Jennifer Aniston'),
(9, 1, 2, 0, 'Alyson Hannigan\r\n'),
(10, 1, 2, 0, 'Jessica Alba'),
(11, 1, 3, 1, 'Le Louvre'),
(12, 1, 3, 0, 'Uffizi Museum'),
(13, 1, 3, 0, 'British Museum'),
(14, 1, 3, 0, 'Metropolitan Museum of Art'),
(15, 1, 4, 1, 'Penny'),
(16, 1, 4, 0, 'Patty'),
(17, 1, 4, 0, 'Lily'),
(18, 1, 4, 0, 'Jessie'),
(19, 1, 5, 0, 'Kamala Harris'),
(20, 1, 5, 0, 'Joe Biden'),
(21, 1, 5, 1, 'Dick Cheney'),
(22, 1, 5, 0, 'Al Gore'),
(52, 37, 1, 1, '1'),
(53, 37, 1, 0, '2'),
(61, 49, 1, 0, 'b'),
(62, 49, 1, 0, 'c'),
(63, 49, 1, 1, 'd'),
(64, 49, 1, 0, 'e'),
(65, 49, 1, 0, 'a'),
(66, 49, 2, 0, ' 8cm squared'),
(67, 49, 2, 0, '1cm squared'),
(68, 49, 2, 0, '20cm squared'),
(69, 49, 2, 1, '16cm squared'),
(70, 49, 2, 0, '32cm squared'),
(71, 49, 3, 0, 'Bottle 1'),
(72, 49, 3, 0, 'Bottle 2'),
(73, 49, 3, 1, 'Bottle 3'),
(74, 49, 3, 0, 'Bottle 4'),
(75, 49, 3, 0, 'Bottle 5'),
(76, 49, 4, 0, 'Bottle 1'),
(77, 49, 4, 1, 'Bottle 2'),
(78, 49, 4, 0, 'Bottle 3'),
(79, 49, 4, 0, 'Bottle 4'),
(80, 49, 4, 0, 'Bottle 5'),
(81, 49, 5, 0, ' 65 Degrees'),
(82, 49, 5, 0, '55'),
(83, 49, 5, 0, '50'),
(84, 49, 5, 0, '70'),
(85, 49, 5, 1, '60'),
(86, 49, 6, 1, '8'),
(87, 49, 6, 0, '32'),
(88, 49, 6, 0, '4'),
(89, 49, 6, 0, '12'),
(90, 49, 6, 0, '2'),
(91, 49, 7, 0, '6'),
(92, 49, 7, 0, '1'),
(93, 49, 7, 0, '3'),
(94, 49, 7, 1, '2'),
(95, 49, 7, 0, '9'),
(96, 49, 8, 0, '39'),
(97, 49, 8, 1, '41'),
(98, 49, 8, 0, '43'),
(99, 49, 8, 0, '40'),
(100, 49, 8, 0, '42'),
(101, 49, 9, 1, '25'),
(102, 49, 9, 0, '15'),
(103, 49, 9, 0, '5'),
(104, 49, 9, 0, '10'),
(105, 49, 9, 0, '20'),
(106, 49, 10, 0, '9.5'),
(107, 49, 10, 0, '10.5'),
(108, 49, 10, 1, '26.5'),
(109, 49, 10, 0, '27.5'),
(110, 49, 10, 0, '29.5'),
(111, 49, 11, 0, '19.5'),
(112, 49, 11, 0, '3.4'),
(113, 49, 11, 0, '14.5'),
(114, 49, 11, 1, '16.5'),
(115, 49, 11, 0, '7'),
(116, 49, 12, 0, '3.47km'),
(117, 49, 12, 0, ' 3.47m '),
(118, 49, 12, 0, ' 50m'),
(119, 49, 12, 1, ' 3047m'),
(120, 49, 12, 0, '50km'),
(121, 49, 13, 0, '44.1'),
(122, 49, 13, 0, '43.1'),
(123, 49, 13, 0, '0.8'),
(124, 49, 13, 0, '0.7'),
(125, 49, 13, 1, '0.9'),
(126, 49, 14, 0, '140 x 34'),
(127, 49, 14, 0, '140 x 0.34'),
(128, 49, 14, 1, '1.4 x 340'),
(129, 49, 14, 0, ' 140 x 340'),
(130, 49, 14, 0, '14 x 340'),
(131, 49, 15, 0, ' £9.50'),
(132, 49, 15, 0, ' £85.00'),
(133, 49, 15, 1, ' £85.50'),
(134, 49, 15, 0, '£10.00'),
(135, 49, 15, 0, ' £86.00'),
(136, 49, 16, 0, '8'),
(137, 49, 16, 0, '3'),
(138, 49, 16, 0, '9'),
(139, 49, 16, 0, '5'),
(140, 49, 16, 1, '6'),
(141, 49, 17, 0, '8'),
(142, 49, 17, 0, '3'),
(143, 49, 17, 0, '9'),
(144, 49, 17, 1, '5'),
(145, 49, 17, 0, '6'),
(146, 49, 18, 0, ' 0.23456'),
(147, 49, 18, 0, '2.3456 '),
(148, 49, 18, 1, ' 23.456'),
(149, 49, 18, 0, '234.56'),
(150, 49, 18, 0, '2345.6'),
(151, 49, 19, 0, ' £700 '),
(152, 49, 19, 1, '£49 '),
(153, 49, 19, 0, ' £70'),
(154, 49, 19, 0, ' £4.90 '),
(155, 49, 19, 0, '£4900'),
(156, 49, 20, 0, '1'),
(157, 49, 20, 0, '2'),
(158, 49, 20, 1, '3'),
(159, 49, 20, 0, '4'),
(160, 49, 20, 0, '5'),
(161, 49, 21, 0, '1'),
(162, 49, 21, 1, '2'),
(163, 49, 21, 0, '3'),
(164, 49, 21, 0, '4'),
(165, 49, 21, 0, '5'),
(166, 49, 22, 0, '1'),
(167, 49, 22, 0, '2'),
(168, 49, 22, 0, '3'),
(169, 49, 22, 1, '4'),
(170, 49, 22, 0, '5'),
(171, 49, 23, 0, ' three hundreds'),
(172, 49, 23, 0, ' three tens'),
(173, 49, 23, 0, ' three units'),
(174, 49, 23, 1, ' three tenths'),
(175, 49, 23, 0, ' three hundredths'),
(176, 49, 24, 1, '(1, 1)'),
(177, 49, 24, 0, '(5, 1) '),
(178, 49, 24, 0, '(5, 7) '),
(179, 49, 24, 0, '(1, 7)'),
(180, 49, 24, 0, '(5, 5)'),
(181, 49, 25, 0, '11°C '),
(182, 49, 25, 0, '10°C '),
(183, 49, 25, 1, ' 9°C'),
(184, 49, 25, 0, '8°C'),
(185, 49, 25, 0, '18°C'),
(186, 49, 26, 0, '20'),
(187, 49, 26, 0, '0'),
(188, 49, 26, 0, '35'),
(189, 49, 26, 0, '25'),
(190, 49, 26, 1, '15'),
(191, 49, 27, 0, '1 hours and 45 minutes'),
(192, 49, 27, 0, ' 3 hours and 5 minutes'),
(193, 49, 27, 0, ' 3 hours and 4 minutes'),
(194, 49, 27, 0, ' 2 hours and 35 minutes'),
(195, 49, 27, 1, '2 hours and 25 minutes'),
(196, 49, 28, 0, ' 1.94 x 320'),
(197, 49, 28, 0, ' 19.4 x 32'),
(198, 49, 28, 1, '1.94 x 32'),
(199, 49, 28, 0, ' 1.94 x 3.2'),
(200, 49, 28, 0, '194 x 3.2'),
(201, 49, 29, 0, ' 5 and 8 '),
(202, 49, 29, 1, ' 6 and 7'),
(203, 49, 29, 0, ' 2 and 24'),
(204, 49, 29, 0, ' 4 and 9 '),
(205, 49, 29, 0, ' 3 and 10'),
(206, 49, 30, 1, '70'),
(207, 49, 30, 0, '6.7'),
(208, 49, 30, 0, '700'),
(209, 49, 30, 0, '67'),
(210, 49, 30, 0, '670'),
(211, 49, 31, 0, '11:15pm'),
(212, 49, 31, 0, '10:35am'),
(213, 49, 31, 1, ' 22:35 '),
(214, 49, 31, 0, ' 10:20pm'),
(215, 49, 31, 0, ' 22:05'),
(216, 49, 32, 0, '3 pots'),
(217, 49, 32, 0, '2 pots'),
(218, 49, 32, 0, '8 pots'),
(219, 49, 32, 1, '9 pots'),
(220, 49, 32, 0, '7 pots'),
(221, 49, 33, 0, '76'),
(222, 49, 33, 0, '32'),
(223, 49, 33, 0, '54'),
(224, 49, 33, 0, '20'),
(225, 49, 33, 1, '28'),
(226, 49, 34, 0, '7'),
(227, 49, 34, 0, '3'),
(228, 49, 34, 0, '6'),
(229, 49, 34, 0, '4'),
(230, 49, 34, 1, '5'),
(231, 49, 35, 0, '7'),
(232, 49, 35, 1, '8'),
(233, 49, 35, 0, '9'),
(234, 49, 35, 0, '4'),
(235, 49, 35, 0, '6'),
(236, 49, 36, 1, '7'),
(237, 49, 36, 0, '6'),
(238, 49, 36, 0, '3'),
(239, 49, 36, 0, '8'),
(240, 49, 36, 0, '5'),
(241, 49, 37, 0, '10°C'),
(242, 49, 37, 0, '23°C'),
(243, 49, 37, 0, '11°C'),
(244, 49, 37, 1, '24°C'),
(245, 49, 37, 0, '25°C'),
(246, 49, 38, 0, '3'),
(247, 49, 38, 1, '4'),
(248, 49, 38, 0, '6'),
(249, 49, 38, 0, '5'),
(250, 49, 38, 0, '2'),
(251, 49, 39, 0, '3'),
(252, 49, 39, 0, '4'),
(253, 49, 39, 1, '6'),
(254, 49, 39, 0, '5'),
(255, 49, 39, 0, '2'),
(256, 49, 40, 0, ' 34%'),
(257, 49, 40, 0, '25%'),
(258, 49, 40, 0, '43%'),
(259, 49, 40, 1, '75%'),
(260, 49, 40, 0, '7.5%'),
(261, 49, 41, 0, '¼'),
(262, 49, 41, 0, '10/40'),
(263, 49, 41, 1, '2/5'),
(264, 49, 41, 0, '4/100'),
(265, 49, 41, 0, '4/5'),
(266, 49, 42, 0, ' 23.14'),
(267, 49, 42, 0, ' 23.4 '),
(268, 49, 42, 0, ' 20.34 '),
(269, 49, 42, 0, ' 23.5 '),
(270, 49, 42, 1, ' 23.25'),
(271, 49, 43, 0, ' 80.0'),
(272, 49, 43, 0, ' 8.0'),
(273, 49, 43, 1, ' 0.8'),
(274, 49, 43, 0, ' 8 /10'),
(275, 49, 43, 0, ' 8.1'),
(276, 49, 44, 0, ' 7.35 '),
(277, 49, 44, 0, '7 ¾'),
(278, 49, 44, 0, '73.5'),
(279, 49, 44, 1, '7.6'),
(280, 49, 44, 0, '10.5'),
(281, 49, 45, 1, '⅗'),
(282, 49, 45, 0, '10/6'),
(283, 49, 45, 0, '⅖'),
(284, 49, 45, 0, ' 6%'),
(285, 49, 45, 0, '16%'),
(286, 50, 1, 0, 'yes'),
(287, 50, 1, 0, 'no'),
(288, 50, 1, 0, 'maybe'),
(289, 50, 2, 0, 'yes'),
(290, 50, 2, 0, 'no'),
(291, 50, 2, 0, 'maybe'),
(292, 50, 2, 0, 'yes'),
(293, 50, 2, 0, 'no'),
(294, 50, 2, 0, 'maybe'),
(295, 50, 2, 0, 'I don\'t know'),
(296, 50, 2, 1, 'who cares?'),
(297, 50, 4, 0, 'dfghdf'),
(298, 50, 4, 1, 'fdghdf'),
(299, 50, 4, 0, 'dfghd'),
(300, 50, 4, 0, 'fdghd'),
(301, 50, 4, 0, 'dfgh'),
(302, 50, 5, 0, 'fdghdf'),
(303, 50, 5, 1, 'dfghdf'),
(304, 50, 5, 0, 'dfghdf'),
(305, 50, 5, 0, 'dfghdf'),
(306, 50, 5, 0, 'dfghdf'),
(307, 50, 5, 0, 'fdghdf'),
(308, 50, 5, 1, 'dfghdf'),
(309, 50, 5, 0, 'dfghdf'),
(310, 50, 5, 0, 'dfghdf'),
(311, 50, 5, 0, 'dfghdf'),
(312, 50, 5, 0, 'fdghdf'),
(313, 50, 5, 1, 'dfghdf'),
(314, 50, 5, 0, 'dfghdf'),
(315, 50, 5, 0, 'dfghdf'),
(316, 50, 5, 0, 'dfghdf'),
(317, 50, 5, 0, 'fdghdf'),
(318, 50, 5, 1, 'dfghdf'),
(319, 50, 5, 0, 'dfghdf'),
(320, 50, 5, 0, 'dfghdf'),
(321, 50, 5, 0, 'dfghdf'),
(322, 50, 5, 0, 'fdghdf'),
(323, 50, 5, 1, 'dfghdf'),
(324, 50, 5, 0, 'dfghdf'),
(325, 50, 5, 0, 'dfghdf'),
(326, 50, 5, 0, 'dfghdf'),
(327, 50, 5, 0, 'fdghdf'),
(328, 50, 5, 1, 'dfghdf'),
(329, 50, 5, 0, 'dfghdf'),
(330, 50, 5, 0, 'dfghdf'),
(331, 50, 5, 0, 'dfghdf'),
(332, 50, 5, 0, 'fdghdf'),
(333, 50, 5, 1, 'dfghdf'),
(334, 50, 5, 0, 'dfghdf'),
(335, 50, 5, 0, 'dfghdf'),
(336, 50, 5, 0, 'dfghdf'),
(337, 50, 5, 0, 'fdghdf'),
(338, 50, 5, 1, 'dfghdf'),
(339, 50, 5, 0, 'dfghdf'),
(340, 50, 5, 0, 'dfghdf'),
(341, 50, 5, 0, 'dfghdf'),
(342, 50, 5, 0, 'fdghdf'),
(343, 50, 5, 1, 'dfghdf'),
(344, 50, 5, 0, 'dfghdf'),
(345, 50, 5, 0, 'dfghdf'),
(346, 50, 5, 0, 'dfghdf'),
(347, 50, 5, 0, 'fdghdf'),
(348, 50, 5, 1, 'dfghdf'),
(349, 50, 5, 0, 'dfghdf'),
(350, 50, 5, 0, 'dfghdf'),
(351, 50, 5, 0, 'dfghdf'),
(352, 50, 5, 0, 'fdghdf'),
(353, 50, 5, 1, 'dfghdf'),
(354, 50, 5, 0, 'dfghdf'),
(355, 50, 5, 0, 'dfghdf'),
(356, 50, 5, 0, 'dfghdf'),
(357, 50, 5, 0, 'fdghdf'),
(358, 50, 5, 1, 'dfghdf'),
(359, 50, 5, 0, 'dfghdf'),
(360, 50, 5, 0, 'dfghdf'),
(361, 50, 5, 0, 'dfghdf'),
(362, 50, 12, 1, 'fggfhd'),
(363, 50, 12, 0, 'dfghdf'),
(364, 50, 12, 1, 'fggfhd'),
(365, 50, 12, 0, 'dfghdf'),
(366, 51, 1, 1, 'Swim'),
(367, 51, 1, 0, 'Dance'),
(368, 51, 1, 0, 'Walk'),
(369, 52, 1, 1, '1'),
(370, 52, 1, 0, '2'),
(371, 52, 2, 0, '1'),
(372, 52, 2, 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `image_table`
--

CREATE TABLE `image_table` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_table`
--

INSERT INTO `image_table` (`id`, `file_name`) VALUES
(2, '64397e276d9a16.78221940.png'),
(3, '64397e2c784c57.56273396.png'),
(4, '64397e32414260.24983966.png'),
(5, '64397e36e4b946.46235673.png'),
(6, '64397e3c7be769.09592073.png'),
(7, '643989b8203ab8.07608915.png'),
(8, '643989bc725694.74791442.png'),
(9, '643989c16c52b3.18385864.png'),
(10, '643989c5d84d35.85774665.png'),
(11, '643989ca2663b1.72801541.png'),
(12, '643989ceb4ec56.19562926.png'),
(13, '643989d39922a5.72675784.png'),
(14, '643989d8a8bc37.41236472.png'),
(15, '643989dd07c0b5.47860013.png'),
(16, '643989e1203da5.57611089.png'),
(17, '643989e59764e1.39741107.png'),
(18, '643989ea1f7cf9.63315120.png'),
(19, '643989ef455ec8.11364440.png'),
(20, '643989f322bfb0.06057190.png'),
(21, '64398a2287a062.98708042.png'),
(22, '64398a2e41a1d0.80450256.png'),
(23, '64398a31f27094.13332431.png'),
(24, '64398a361f98f4.97520395.png'),
(25, '64398a3bad9962.37507690.png'),
(26, '64398a41e040b6.67812822.png'),
(27, '64398a4bca0684.24171262.png'),
(28, '64398a50e9a516.75846098.png'),
(29, '64398a55ce9305.14375440.png'),
(30, '64398a5b0d0204.99277007.png'),
(31, '64398a6302b4d1.56142915.png'),
(32, '64398a6816b3a1.03096403.png'),
(33, '64398a6dc2db32.15101540.png'),
(34, '64398a72a7ffa7.72280044.png'),
(35, '64398a77a71074.40688644.png'),
(36, '64398a7c886090.24630806.png'),
(37, '64398ad275fa32.03295891.png'),
(38, '64398ad81b87e3.94593645.png'),
(39, '64398add3dda48.60852967.png'),
(40, '64398ae241aaa9.09711097.png'),
(41, '64398ae721ca56.99416859.png'),
(42, '64398aec4aded5.40952839.png'),
(43, '64398af184d9d6.70154493.png'),
(44, '64398af6810eb9.21914469.png'),
(45, '64398afb3f5f98.07109915.png'),
(46, '6439950a6be652.73604682.png'),
(47, '6439950fe6ab94.95580156.png'),
(48, '64399516891334.38490649.png'),
(49, '64399527956914.23017030.png'),
(50, '6439952d1e5b75.56789759.png'),
(51, '643995322ee7e4.15067054.png'),
(52, '64399538371bc8.17611646.png'),
(53, '6439953d43b530.52740577.png'),
(54, '643995428a60f2.50378727.png'),
(55, '643995482a7662.98698244.png'),
(56, '64399550b2d9c4.30348348.png'),
(57, '64399555129676.54922101.png'),
(58, '6439955b9d9631.03093777.png'),
(59, '643995609f3c97.04806602.png'),
(60, '64399566cbdea9.35888718.png'),
(61, '6439956c51e4e0.78757079.png'),
(62, '6439957106a744.36992325.png'),
(63, '64399575a32720.32936749.png'),
(64, '6439957b3b8f05.08179991.png'),
(65, '643995805c4079.58429506.png'),
(66, '64399584961289.70960591.png'),
(67, '6439958a4dba71.31293951.png'),
(68, '6439958f038153.04054800.png'),
(69, '64399593b459d8.92584494.png'),
(70, '6439959807c8f3.82971731.png'),
(71, '6439959caddf07.15167913.png');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `name`) VALUES
(1, '11 Plus / Transfer'),
(2, 'A Level'),
(3, 'GCSE'),
(4, 'KS2'),
(5, 'KS3'),
(6, 'National 4 and 5'),
(7, 'Scottish Highers');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `county` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`, `country`, `county`) VALUES
(1, 'Aberdeen', 'Scotland', 'Aberdeen'),
(2, 'Armagh', 'Northern Ireland', 'County Armagh'),
(3, 'Bangor', 'Northern Ireland', 'County Down'),
(4, 'Bangor', 'Wales', 'Gwynedd'),
(5, 'Bath', 'England', 'Somerset'),
(6, 'Belfast', 'Northern Ireland', 'County Antrim'),
(7, 'Birmingham', 'England', 'West Midlands'),
(8, 'Bradford', 'England', 'West Yorkshire'),
(9, 'Brighton and Hove', 'England', 'East Sussex'),
(10, 'Bristol', 'England', 'Bristol'),
(11, 'Cambridge', 'England', 'Cambridgeshire'),
(12, 'Canterbury', 'England', 'Kent'),
(13, 'Cardiff', 'Wales', 'Glamorgan'),
(14, 'Carlisle', 'England', 'Cumbria'),
(15, 'Chelmsford', 'England', 'Essex'),
(16, 'Chester', 'England', 'Cheshire'),
(17, 'Chichester', 'England', 'West Sussex'),
(18, 'Colchester', 'England', 'Essex'),
(19, 'Coventry', 'England', 'West Midlands'),
(20, 'Derby', 'England', 'Derbyshire'),
(21, 'Doncaster', 'England', 'South Yorkshire'),
(22, 'Dundee', 'Scotland', 'Dundee'),
(23, 'Dunfermline', 'Scotland', 'Fife'),
(24, 'Durham', 'England', 'Durham'),
(25, 'Edinburgh', 'Scotland', 'Edinburgh'),
(26, 'Ely', 'England', 'Cambridgeshire'),
(27, 'Exeter', 'England', 'Devon'),
(28, 'Glasgow', 'Scotland', 'Glasgow'),
(29, 'Gloucester', 'England', 'Gloucestershire'),
(30, 'Hereford', 'England', 'Herefordshire'),
(31, 'Inverness', 'Scotland', 'Highland'),
(32, 'Kingston upon Hull', 'England', 'East Riding of Yorkshire'),
(33, 'Lancaster', 'England', 'Lancashire'),
(34, 'Leeds', 'England', 'West Yorkshire'),
(35, 'Leicester', 'England', 'Leicestershire'),
(36, 'Lichfield', 'England', 'Staffordshire'),
(37, 'Lincoln', 'England', 'Lincolnshire'),
(38, 'Lisburn', 'Northern Ireland', 'County Antrim'),
(39, 'Liverpool', 'England', 'Merseyside'),
(40, 'London', 'England', 'Greater London'),
(41, 'Derry', 'Northern Ireland', 'County Derry'),
(42, 'Manchester', 'England', 'Greater Manchester'),
(43, 'Milton Keynes', 'England', 'Buckinghamshire'),
(44, 'Newcastle upon Tyne', 'England', 'Tyne and Wear'),
(45, 'Newport', 'Wales', 'Newport City'),
(46, 'Newry', 'Northern Ireland', 'County Down'),
(47, 'Norwich', 'England', 'Norfolk'),
(48, 'Nottingham', 'England', 'Nottinghamshire'),
(49, 'Oxford', 'England', 'Oxfordshire'),
(50, 'Perth', 'Scotland', 'Perth and Kinross'),
(51, 'Peterborough', 'England', 'Cambridgeshire'),
(52, 'Plymouth', 'England', 'Devon'),
(53, 'Portsmouth', 'England', 'Hampshire'),
(54, 'Preston', 'England', 'Lancashire'),
(55, 'Ripon', 'England', 'North Yorkshire'),
(56, 'Salford', 'England', 'Greater Manchester'),
(57, 'Salisbury', 'England', 'Wiltshire'),
(58, 'Sheffield', 'England', 'South Yorkshire'),
(59, 'Southampton', 'England', 'Hampshire'),
(60, 'Southend-on-Sea', 'England', 'Essex'),
(61, 'St Albans', 'England', 'Hertfordshire'),
(62, 'St Asaph (Llanelwy)', 'Wales', 'Denbighshire'),
(63, 'St Davids', 'Wales', 'Pembrokeshire'),
(64, 'Stirling', 'Scotland', 'Stirlingshire'),
(65, 'Stoke-on-Trent', 'England', 'Staffordshire'),
(66, 'Sunderland', 'England', 'Tyne and Wear'),
(67, 'Swansea', 'Wales', 'Swansea'),
(68, 'Truro', 'England', 'Cornwall'),
(69, 'Wakefield', 'England', 'West Yorkshire'),
(70, 'Wells', 'England', 'Somerset'),
(71, 'Westminster', 'England', 'Greater London'),
(72, 'Winchester', 'England', 'Hampshire'),
(73, 'Wolverhampton', 'England', 'West Midlands'),
(74, 'Worcester', 'England', 'Worcestershire'),
(75, 'Wrexham', 'Wales', 'Wrexham');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL,
  `seen` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`, `seen`) VALUES
(5, 324523, 20, 'hello', 0),
(6, 324523, 20, 'your the best around', 0),
(7, 234532, 20, 'your the best', 0),
(8, 23452, 20, 'test', 0),
(9, 23452, 209719760, 'test', 0),
(10, 23452, 209719760, 'is this working now', 0),
(11, 23452, 209719760, 'hello', 0),
(12, 34535674, 324523, 'well boss hows it cutting?', 0),
(13, 209719760, 324523, 'Well boss hows it cutting?', 1),
(14, 324523, 209719760, 'not bad skin, how you doing?', 1),
(15, 324523, 209719760, 'well', 1),
(16, 23452, 209719760, 'well', 0),
(17, 23452, 209719760, 'how', 0),
(18, 209719760, 23452, 'you keeping well?', 1),
(19, 34535674, 324523, 'not bad', 0),
(20, 209719760, 324523, 'dfs', 1),
(21, 757952002, 324523, 'How are you getting on with your studying?', 0),
(22, 324523, 209719760, 'I am keeping well thank you!', 1),
(23, 324523, 209719760, 'Good lad yourself, remember to keep on studying hard!', 1),
(24, 209719760, 324523, 'ok', 1),
(25, 324523, 209719760, 'thanks for all the help!', 1),
(26, 324523, 34535674, 'thank you for your help', 1),
(27, 324523, 209719760, 'you\'re the greatest of them all', 1),
(28, 324523, 209719760, 'hows it going?', 1),
(29, 209719760, 324523, 'Glad you are working hard, keep up the great work', 1),
(30, 209719760, 324523, 'You\'re a top lad, so i\'m pleased you\'re doing well', 1),
(31, 209719760, 324523, 'lets hope this works!', 1),
(32, 209719760, 324523, 'That\'s great lad, keep up the good work!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `new_quiz`
--

CREATE TABLE `new_quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_name` varchar(255) NOT NULL,
  `quiz_level` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `share` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_quiz`
--

INSERT INTO `new_quiz` (`quiz_id`, `quiz_name`, `quiz_level`, `tutor_id`, `share`) VALUES
(1, 'General Knowledge Quiz First Attempt', 1, 16, 1),
(37, 'The best house in the world', 1, 16, 0),
(49, 'Transfer Practice Paper 1 - Maths', 1, 16, 1),
(50, 'Test quiz to be deleted!', 1, 16, 1),
(51, 'This is only a test of level insert!', 3, 16, 0),
(52, 'Hello this is a test to see if it loads ok!', 3, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `name` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `name`) VALUES
(1, '0.00'),
(2, '20.00'),
(3, '35.00'),
(4, '40.00'),
(5, '45.00'),
(6, '50.00'),
(7, '55.00');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_number`, `quiz_id`, `text`, `img`) VALUES
(1, 1, 1, 'In which Italian city can you find the Colosseum?', ''),
(2, 2, 1, 'In the TV show New Girl, which actress plays Jessica Day?', ''),
(3, 3, 1, 'In which museum can you find Leonardo Da Vinci’s Mona Lisa?', ''),
(4, 4, 1, 'In the Big Bang Theory, what is the name of Sheldon and Leonard’s neighbour?', ''),
(5, 5, 1, 'Who was George W. Bush’ vice president?', ''),
(18, 1, 37, 'what is the answer', '63efc0af2563e5.90128283.jpg'),
(21, 1, 49, 'Which letter has the smallest value?', '6410acf56e1066.04284580.png'),
(22, 2, 49, 'What is the area of the square?', '6410ad5c1e4ed3.86346563.png'),
(23, 3, 49, 'Which bottle holds the greatest amount of water?', '6410adad046360.04438622.png'),
(24, 4, 49, 'Which bottle holds the smallest amount of water?', '6410ade19332e4.66222373.png'),
(25, 5, 49, 'What is the value of x?', '6410ae4e4a89e6.48112844.png'),
(26, 6, 49, 'What is the value of x?', '6410ae85dc1d01.60358675.png'),
(27, 7, 49, 'What is the value of y?', '6410aebd34a212.92871810.png'),
(28, 8, 49, 'What is the mean (average) mark for the pupils?', '6410aef5a6a142.43841607.png'),
(29, 9, 49, 'Look again at the marks.  What is the range for these marks? ', '6410af22f3a102.88502325.png'),
(30, 10, 49, 'What answer does the function machine give when the starting  number is 7?', '6410af663f6501.19253791.png'),
(31, 11, 49, 'What answer does the function machine give when the starting  number is 4.5?', '6410af923b7391.67341332.png'),
(32, 12, 49, 'A train travels 3 kilometres. A second train travels 47 metres further. How far does the second train travel?  ', ''),
(33, 13, 49, 'What number goes in the box to complete the calculation?', '6410b0119295c5.42547050.png'),
(34, 14, 49, 'Which of the calculations below also gives the answer 476?', '6410b05ac8c417.82732466.png'),
(35, 15, 49, 'A coat costs £95. It is reduced in price by 10% in a sale.  What is the price of the coat in the sale?  ', ''),
(36, 16, 49, 'The triangular prism has how many vertices?', '6410b0e3b5c744.80724142.png'),
(37, 17, 49, 'The triangular prism has how many faces?', '6410b1109b4c58.05392732.png'),
(38, 18, 49, 'What is the answer to the calculation? ', '6410b15800cf37.19182507.png'),
(39, 19, 49, 'A teacher is photocopying some busy sheets.  The cost of 100 photocopies is £7.  What is the cost of 700 photocopies?  ', ''),
(40, 20, 49, 'Which arrow shows the probability that a yellow cube is chosen?', '6410b1d35cdba9.45629539.png'),
(41, 21, 49, 'Which arrow shows the probability that a white cube is chosen?', '6410b1f7ca6b10.86661308.png'),
(42, 22, 49, 'Which arrow shows the probability that a white cube isn’t chosen?', '6410b2152fbb22.91429651.png'),
(43, 23, 49, 'What is the value of the 3 digit in this number?', '6410b25d971e62.57041198.png'),
(44, 24, 49, 'What are the coordinates of the fourth point that forms the rectangle?', '6410b4f3841ef4.82392593.png'),
(45, 25, 49, 'What is the difference between the highest and lowest temperature  recorded? ', '6410b55bc407d2.31155419.png'),
(46, 26, 49, 'What is the correct number that completes this calculation?', '6410b58bc37d37.31651184.png'),
(47, 27, 49, 'How much time does Bobby spend altogether on his 3 homeworks?', '6410b5ddba1fe7.60357266.png'),
(48, 28, 49, 'Which calculation below also gives the answer 62.08?', '6410b61e25f3d3.26298168.png'),
(49, 29, 49, 'Jason thinks of 2 consecutive numbers. When he adds the numbers he gets  13. When he multiplies the numbers he gets 42. What are the two numbers Jason thinks of?  ', ''),
(50, 30, 49, 'What is the answer when you multiply the larger of the two numbers  by 100?', '6410b6860b49e6.58580019.png'),
(51, 31, 49, 'A film on TV lasts for 100 minutes. It finishes at 00:15.  At what time did the film start? ', ''),
(52, 32, 49, 'How many full pots of compost can Russell get from the container?', '6410b71f6bd709.16903467.png'),
(53, 33, 49, 'What is the correct number that completes this calculation?', '6410b773bb48a2.23151247.png'),
(54, 34, 49, 'How frequently did Ben get scored 1-3 marks?', '6410b79e9399e9.55886991.png'),
(55, 35, 49, 'How frequently did Ben get scored 4-6 marks?', '6410b7c1393417.45139445.png'),
(56, 36, 49, 'How frequently did Ben get scored 7-9 marks?', '6410b7df984e38.70545843.png'),
(57, 37, 49, 'The temperature in Malaga is 17°C and the temperature in Kiev is - 7° C. What is the difference between the two temperatures? ', ''),
(58, 38, 49, 'The triangular based pyramid has how many vertices?', '6410b8941398e1.83508381.png'),
(59, 39, 49, 'The triangular based pyramid has how many edges?', '6410b8b98387c2.48593955.png'),
(60, 40, 49, 'Which percentage has the same value as  ¾  ?', ''),
(61, 41, 49, 'Which fraction has the same value as 40%?', ''),
(62, 42, 49, 'What is twenty three and one quarter as a decimal number?', ''),
(63, 43, 49, 'What is eight tenths as a decimal number?', ''),
(64, 44, 49, 'What is seven and three fifths as a decimal number?', ''),
(65, 45, 49, 'Which amount has the same value as 0.6?', ''),
(83, 12, 50, 'dfgsfsdfgggggggggggggggggggggggggggggggggggggg', ''),
(84, 1, 51, 'How do elephants walk in water?', ''),
(85, 1, 52, 'This is a test', ''),
(86, 2, 52, 'Could this really work?', '');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_results`
--

INSERT INTO `quiz_results` (`id`, `quiz_id`, `student_id`, `correct`, `percentage`) VALUES
(38, 37, 20, 1, 100),
(39, 37, 20, 1, 100),
(40, 37, 20, 1, 100),
(45, 49, 20, 43, 96),
(46, 49, 20, 37, 82),
(47, 37, 19, 1, 100),
(48, 52, 20, 1, 50),
(49, 52, 20, 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE `review_table` (
  `review_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_rating` int(11) NOT NULL,
  `student_review` text CHARACTER SET latin1 NOT NULL,
  `datetime` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `approval` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`review_id`, `student_id`, `student_rating`, `student_review`, `datetime`, `tutor_id`, `approval`) VALUES
(38, 20, 4, 'not great to be honest', 1676403696, 22, 1),
(39, 20, 4, 'rtgsrdetyg', 1676406345, 22, 1),
(40, 20, 4, 'she class!', 1676467869, 22, 1),
(42, 20, 1, 'terrible', 1676473432, 22, 1),
(43, 20, 5, 'Great teacher, love him to bits!', 1678135030, 16, 1),
(44, 20, 4, 'absolute legend!', 1678135088, 16, 1),
(45, 20, 5, 'Absolute gent .', 1678473113, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shared_quiz`
--

CREATE TABLE `shared_quiz` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shared_quiz`
--

INSERT INTO `shared_quiz` (`id`, `quiz_id`, `tutor_id`) VALUES
(1, 50, 18),
(3, 1, 18),
(4, 52, 22),
(6, 52, 16);

-- --------------------------------------------------------

--
-- Table structure for table `specialism`
--

CREATE TABLE `specialism` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialism`
--

INSERT INTO `specialism` (`id`, `name`) VALUES
(1, 'Business Studies'),
(2, 'Chemistry'),
(3, 'Classical Civilisation'),
(4, 'Computing'),
(5, 'Design & Technology'),
(6, 'Economics'),
(7, 'English'),
(8, 'English Language'),
(9, 'English Literature'),
(10, 'French'),
(11, 'Geography'),
(12, 'German'),
(13, 'Government and Politics'),
(14, 'History'),
(15, 'ICT'),
(16, 'Italian'),
(17, 'Mandarin'),
(18, 'Maths'),
(19, 'Physical Education'),
(20, 'Physics'),
(21, 'Science'),
(22, 'Sociology'),
(23, 'Spanish');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `img` varchar(255) NOT NULL,
  `validation_code` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `role` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `unique_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone_number`, `gender_id`, `img`, `validation_code`, `active`, `role`, `status`) VALUES
(18, 3453, 'Stefan', 'Donelli', 'Donelli1', 'sdon88@gmail.com', '$2y$12$b8ZM5YsKGHRUIPbPZ1EnR.0SRXRbZi/iMsnCcl57EcQoKTJ4iOXFy', '', 1, '1672852406passport photo bigger.jpg', '0', 1, 'user', 'Offline now'),
(19, 34535674, 'Barry', 'Johnston', 'bigBarryJohnson', 'bigBarry@msn.com', '$2y$12$uRwINZ5rlVHF1MNacnqR2efAPNHlO6YBj7gHbT/1bGocGtlvL63gO', '07834743698', 1, '63c6e736730e08.08726396.jpg', '0', 1, 'user', 'Active now'),
(20, 209719760, 'Gerald', 'Donnelly', 'jodydonnelly', 'jodydonnelly91@hotmail.com', '$2y$12$v6J36QNsPO/GfO0b3cnAVetNgEFyOHBD/kSCrJtlmrbNDu7PDRTfS', '02837527939', 1, '64399aa94ebe79.10742663.jpg', '0', 1, 'admin', 'Offline now'),
(21, 872765662, 'Joe', 'Johnson', 'Johnson!', 'johnson@gmail.com', '$2y$12$bqtKXAttahehEqm546/hiuiMSsZNAnA9i7UhmCA8GiCHODC79f8R2', '', 1, '63c6e4d69d69d9.68508244.jpg', '0', 1, 'user', 'Offline now'),
(22, 1456221118, 'John', 'Carpenter', 'thething87', 'jcar@msn.com', '$2y$12$uMPmAnSzYin96nUGvFwxsutHdhU2lzW.9JeWagoyH50vroIgYP9s6', '', 1, 'default_head.jpg', '0', 1, 'user', 'Offline now'),
(28, 812194887, 'Dennis', 'Bergkamp', 'dbergkamp', 'gunner96@gmail.com', '$2y$12$zR4rTk5nTbtUx9xXDCgM/.zX02NM62qY1IsJj.6fAbIyPVtFRw/3O', '', 1, 'default_head.jpg', '0', 1, 'user', 'Offline now'),
(29, 757952002, 'Thierry', 'Henry', 'henry14', 'gooner14@gmail.com', '$2y$12$f/JsGWp8ZTxBDoI1AuFLx.OnUbc3lEtd7638cdzldKkTSHBMmK6zu', '', 1, '63fd108fd90082.25669814.png', '0', 1, 'user', 'Offline now');

-- --------------------------------------------------------

--
-- Table structure for table `student_tutor`
--

CREATE TABLE `student_tutor` (
  `student_tutor_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `approval` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_tutor`
--

INSERT INTO `student_tutor` (`student_tutor_id`, `student_id`, `tutor_id`, `approval`) VALUES
(7, 18, 17, 1),
(8, 19, 16, 1),
(9, 20, 17, 1),
(11, 22, 19, 1),
(14, 20, 21, 0),
(16, 20, 16, 1),
(18, 20, 19, 1),
(19, 20, 22, 1),
(23, 20, 18, 1),
(29, 29, 16, 1),
(31, 28, 18, 1),
(32, 20, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `tutor_id` int(11) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `tr_number` varchar(25) NOT NULL,
  `member_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gender_id` int(11) NOT NULL,
  `img` text NOT NULL,
  `bio` text NOT NULL,
  `price_id` int(11) NOT NULL,
  `validation_code` text NOT NULL,
  `active` tinyint(4) NOT NULL,
  `role` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `approved` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`tutor_id`, `unique_id`, `first_name`, `last_name`, `username`, `email`, `password`, `phone_number`, `tr_number`, `member_date`, `gender_id`, `img`, `bio`, `price_id`, `validation_code`, `active`, `role`, `status`, `approved`) VALUES
(16, 324523, 'Stephen', 'Donnelly', 'sdonnelly88', 'sdonnelly88@gmail.com', '$2y$12$b8ZM5YsKGHRUIPbPZ1EnR.0SRXRbZi/iMsnCcl57EcQoKTJ4iOXFy', '07849712498', '234523452', '2023-05-07 10:12:45', 1, '63d831edecee65.64523910.jpg', 'Stephen Donnelly is a passionate and dedicated tutor from Armagh, Ireland, with a wealth of international teaching experience. He has traveled the globe, sharing his knowledge and skills with students in various countries, enriching both his own perspective and the lives of those he has taught. His extensive academic background and hands-on experience make him a versatile and adaptable educator.', 3, '', 1, 'tutor', 'Active now', 1),
(17, 23452, 'John', 'Doe', 'JohnDoe1', 'johndoe@gmail.com', '$2y$12$b8ZM5YsKGHRUIPbPZ1EnR.0SRXRbZi/iMsnCcl57EcQoKTJ4iOXFy', '07849712498', '12341235', '2023-02-24 18:29:53', 1, '63c70d096e96f6.95494420.jpg', 'My passion is exploring life and the world around us, and when teaching Science I aim to enthuse my pupils with the wonders of our world. Science is an exciting subject with many challenges and unanswered questions that I love to explore.\r\n\r\nI really enjoy teaching - to me it is about helping learners to learn and discover things for themselves, and to give them a sense of achievement, confidence and purpose.\r\n\r\nI have a young daughter who keeps me very busy, and my hobbies include horse riding, being out in the countryside, travelling, and spending time with friends and family.', 3, '56adfba809b8abb9e1782034a5eb4937', 1, 'tutor', 'Active now', 1),
(18, 234532, 'Claire', 'Doherty', 'cdoherty', 'cdoherty91@gmail.com', '$2y$12$b8ZM5YsKGHRUIPbPZ1EnR.0SRXRbZi/iMsnCcl57EcQoKTJ4iOXFy', '0783456932', '23452345', '2023-04-12 12:22:55', 2, '63c70c15c54041.06314604.png', 'I am the greatest teacher alive!!!!', 4, '0', 1, 'tutor', 'Offline now', 1),
(19, 988752771, 'George', 'Feeny', 'mrfeeny', 'gfeeny@msn.com', '$2y$12$3607if74d0wTWL0F98Fi1./qcvX9.GvBqAdwH3DiPh8h2JjyGprZW', '073452345', '3524623', '2023-02-24 18:29:53', 1, '63c84c62b70f84.53283029.jpg', 'I have worked as Qualified Teacher since 2003, after gaining my PGCE from the University of Manchester.\r\n\r\nMy aims are to deliver a high standard of teaching in order to help students achieve academic excellence and to help them become independent critical thinkers as well as lifelong learners and responsible global citizens within a rapidly changing world.', 5, '0', 1, 'tutor', 'Active now', 1),
(20, 889231537, 'Walter', 'White', 'wwhite60', 'wwhite@msn.com', '$2y$12$bv1im7ue5a5Mq9XtEpCbpuGB1ioyG//uWtk4SWYHx7uWm7YIUzo/C', '', '', '2023-02-24 18:31:12', 1, '63c974db144705.83534522.png', 'I have a Biological Sciences degree from Oxford University and then I completed my PGCE year at Southampton. I was so inspired by my own Science teachers at school and seeing a child make a breakthrough in understanding makes teaching such an enjoyable role.', 4, '0', 1, 'tutor', 'Active now', 1),
(21, 1502448696, 'Jessica', 'Day', 'JessicaDay', 'jday2013@msn.com', '$2y$12$I1.dxsXUT9gtDsg/tZZ7Ku7ZmAtYWEMsnJXH/EI9JjvmozKYJxVuu', '07857329165', '23416514', '2023-02-24 18:29:53', 2, '63c97704d7b966.32324790.png', 'I am a very experienced teacher with many skills- I am patient, organised, reliable and hard working. I believe that children need to have a good balanced education with lots of fun embedded into their education and daily routines. I tutor because I enjoy working with children and seeing them develop and learn.', 3, '0', 1, 'tutor', 'Active now', 1),
(22, 1440949142, 'Lily', 'Aldrin', 'lily2023', 'lilyaldrin83@msn.com', '$2y$12$AX5JR05FZBC7w86A6RBxQebHFYCP7zZuu3md2PcEQ7DwqEuwyoP1i', '07848446234', '4372466', '2023-04-12 12:24:10', 2, '63c9784e72bc38.53856124.png', 'I am a London-based tutor with five years of teaching experience. Pursuing a career in teaching, I approach tutoring with both professional rigour and personal affection.\r\n\r\nMy academic record includes a First Class BA from the University of Oxford (Philosophy & Psychology) and a distinction from an MPhil at Yenching Academy of Peking University (Chinese History, Philosophy, and Religion). My diverse academic background allows me to help students of all ages excel in humanities and human sciences. My students also benefit from my professional writing skills: I have published both peer-reviewed and magazine-style essays on topics such as the neuroscience of cultural differences, Chinese philosophy of human nature, and fallacies in modern Darwinism.', 4, '0', 1, 'tutor', 'Offline now', 1),
(23, 1358650960, 'Ben', 'Chang', 'BenChang56', 'BenChang56@msn.com', '$2y$12$zgopsLi.AquE3ePPgfwuWuKJLDXe1zt0GQetIijgP1ewifhG6iilC', '07837612376', '23452624', '2023-02-24 18:29:53', 1, '63c979a66894a6.52413218.png', 'I am a Modern Languages with Honours graduate of Trinity Hall, Cambridge, and have spent the whole of my career in the teaching of English and a variety of foreign modern languages, which include French, German, Italian, Russian and Spanish. I have also taught Latin. I now concentrate fully on tuition, though still help out in local private schools when requested. I have lived in the same area for over 30 years, so am well known in the local educational establishments. I am happy to teach in person or online with Skype or Zoom. Lessons can be individual or in small groups.', 6, '0', 1, 'tutor', 'Active now', 1),
(24, 145380055, 'Herbert', 'Garrison', 'HerbG', 'HGarrison2023@msn.com', '$2y$12$GRp2JNEt9ymIfi./5Kah/.vapoXDYcJe7hJyXknH7ETYNi3Vceq.O', '078456212425', '523456', '2023-02-24 18:53:21', 1, '63c97ac13fafd0.01561717.png', 'My name is Herb and I am 23 years old. I am currently a postgraduate student studying Psychology at UCL, having graduated from Oxford last year with the top mark in my year. I am deeply interested in a range of academic subjects ranging from philosophy to maths and everything in between. I speak 4 languages and have been a UK chess champion in my younger years! I also try to stay extremely active - I do jiu jitsu, football, and weightlifting among other sports. I have set up my own book club (and I attend another), a fashion brand, and many events hosting as many as 2000 people. I am highly organised and punctual. At the same time I try to cultivate a fun and interactive work environment where play is balanced out with focus and discipline.', 7, '0', 1, 'tutor', 'Active now', 1),
(25, 1064628837, 'Cameron', 'Tucker', 'cam1', 'cam1@msn.com', '$2y$12$1FcZxgAW/dnTPUwJJ1HfruyQiKegKjAgnoKG2CNeeLuF.dCOF4nrW', '07834521734', '4524523', '2023-02-24 18:29:53', 1, '63c97be948c4c0.31980579.png', 'I love exploring the great outdoors: hillwalking, camping, jogging, cycling and hiking! I\'ll try anything once.\r\n\r\n\"Thank you very much for the great work you did with my daughter Sophie. She progressed from a \'C\' grade to an \'A\' grade in the space of 6 months and I would have no hesitation in recommending you to friends.\" - Billy, Bangor', 4, '0', 1, 'tutor', 'Active now', 1),
(26, 1604830860, 'Edna', 'Krabappel', 'crabapple1', 'krabapple1@msn.com', '$2y$12$PpjQD71Dqm3xL9jV7iPBWOyjP.MfaTZ/fUHWuWWWjZAJ92V9K17vK', '07915736134', '1324551', '2023-02-24 18:29:53', 2, '63c97cf926f095.49286472.png', 'I am a very diligent, highly articulate and detail-oriented tutor with BA Honours degree in Mathematics and MSc Data Analytics with extensive work experience. I possess a positive attitude and I am committed to achieving the highest standards.\r\n', 2, '0', 1, 'tutor', 'Active now', 1),
(27, 524334850, 'John', 'Kimble', 'jkimble', 'jkimble@msn.com', '', '07837612654', '45632562', '2023-02-03 18:55:20', 1, '63c97e77be4b91.46146891.png', '', 3, '0', 1, 'tutor', 'Active now', 1),
(28, 644389320, 'Jennifer', 'Honey', 'money_honey', 'honeyJ@msn.com', '$2y$12$yO23CDOUp6ElzdZtEFTgmOZEN8YNqAIR9y0hGTX7GOIewcrLTEPv2', '078345673', '4563456', '2023-02-03 18:25:38', 2, '63c9afb632e109.22956196.jpg', '', 2, '0', 1, 'tutor', 'Active now', 1),
(29, 535583254, 'Bob', 'Notfound', 'notfound88', 'notfound88@gmail.com', '$2y$12$B9/zhxeskuNab7ev6Sg4buf..je.1uMpTjgpXE6JZ1mPpwjZasB1e', '', '', '2023-03-13 20:13:13', 1, 'default_head.jpg', '', 1, '0', 1, 'tutor', 'Offline now', 1),
(30, 1248856084, 'Darren', 'McCabe', 'danmcabe1', 'dmccabe@gmail.com', '$2y$12$UKo9m9JdsE7j.cJEbh9ikuiV6rGEntxa8txMTqPVBfGJ.0ng2j.zW', '', '', '2023-03-23 20:25:38', 1, 'default_head.jpg', '', 1, '0', 1, 'tutor', '', 0),
(31, 515717892, 'Christy', 'Moore', 'cmoore1', 'cmoore@gmail.com', '$2y$12$YfPEi.fotN5RCuoWn5QdLe.R5aSBCEYIe.XN.JCb3TnZRTlzDWqcO', '', '', '2023-03-23 20:26:58', 1, 'default_head.jpg', '', 1, '0', 1, 'tutor', 'Offline now', 0),
(32, 772560021, 'Sinead', 'O\'Connor', 'soconnor', 'soconnor@gmail.com', '$2y$12$SJBRTIHiTQQrHPE2gGOza.0wJ37YKmDMKERnvrkcVnJVlEFzFgRoy', '', '', '2023-03-23 20:33:03', 2, 'default_head.jpg', '', 1, '0', 1, 'tutor', '', 0),
(33, 1435965335, 'Arsene', 'Wenger', 'awenger', 'awenger@gmail.com', '$2y$12$UqNpCGQ8xJr4OU8fgJKtbOSl00GDcTJ7QIZ6YwXr09OHfBi84wccm', '', '', '2023-03-23 20:33:08', 1, 'default_head.jpg', '', 1, '0', 1, 'tutor', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_level`
--

CREATE TABLE `tutor_level` (
  `id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutor_level`
--

INSERT INTO `tutor_level` (`id`, `tutor_id`, `level_id`) VALUES
(5, 16, 3),
(6, 16, 5),
(7, 17, 3),
(8, 17, 1),
(10, 18, 2),
(11, 18, 3),
(12, 23, 3),
(13, 23, 2),
(14, 25, 3),
(15, 25, 2),
(16, 26, 5),
(17, 26, 6),
(18, 26, 1),
(19, 19, 2),
(20, 19, 3),
(21, 24, 3),
(22, 24, 7),
(23, 24, 6),
(24, 28, 2),
(25, 28, 1),
(26, 21, 4),
(27, 27, 4),
(28, 27, 1),
(29, 22, 3),
(30, 22, 1),
(31, 20, 5),
(32, 20, 6),
(33, 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_location`
--

CREATE TABLE `tutor_location` (
  `id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutor_location`
--

INSERT INTO `tutor_location` (`id`, `tutor_id`, `location_id`) VALUES
(1, 16, 2),
(2, 16, 6),
(3, 23, 1),
(4, 25, 9),
(5, 18, 41),
(6, 27, 19),
(7, 26, 59),
(8, 19, 7),
(9, 19, 35),
(10, 18, 6),
(11, 24, 11),
(12, 24, 49),
(13, 28, 5),
(14, 21, 17),
(15, 17, 51),
(16, 27, 43),
(17, 22, 55),
(18, 16, 46),
(19, 18, 38),
(20, 20, 6),
(21, 20, 38),
(22, 16, 38);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_specialism`
--

CREATE TABLE `tutor_specialism` (
  `id` int(11) NOT NULL,
  `specialism_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutor_specialism`
--

INSERT INTO `tutor_specialism` (`id`, `specialism_id`, `tutor_id`) VALUES
(1, 3, 16),
(2, 10, 16),
(3, 18, 17),
(4, 6, 17),
(5, 11, 21),
(6, 15, 16),
(7, 14, 16),
(8, 19, 16),
(9, 2, 18),
(10, 21, 18),
(12, 11, 16),
(36, 7, 21),
(37, 2, 20),
(38, 21, 20),
(39, 14, 19),
(40, 17, 23),
(41, 23, 23),
(42, 7, 22),
(43, 18, 22),
(44, 11, 22),
(45, 13, 19),
(46, 13, 19),
(47, 19, 25),
(48, 14, 25),
(49, 1, 25),
(50, 17, 24),
(51, 23, 24),
(52, 7, 24),
(53, 10, 24),
(54, 13, 27),
(55, 12, 27),
(56, 4, 26),
(57, 20, 26),
(58, 22, 26),
(59, 11, 21),
(60, 7, 28),
(61, 18, 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_quiz`
--
ALTER TABLE `assign_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_student_tutor_id` (`student_tutor_id`);

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `choices_new_quiz_fk` (`quiz_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_table`
--
ALTER TABLE `image_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `new_quiz`
--
ALTER TABLE `new_quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `new_quiz_tutor_id_FK` (`tutor_id`),
  ADD KEY `new_quiz_level_id_FK` (`quiz_level`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_new_quiz_fk` (`quiz_id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_table`
--
ALTER TABLE `review_table`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FK_tutor_id_ratings` (`tutor_id`),
  ADD KEY `FK_student_id_ratings` (`student_id`);

--
-- Indexes for table `shared_quiz`
--
ALTER TABLE `shared_quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id_FK` (`quiz_id`),
  ADD KEY `tutor_id_FK` (`tutor_id`);

--
-- Indexes for table `specialism`
--
ALTER TABLE `specialism`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `student_gender` (`gender_id`);

--
-- Indexes for table `student_tutor`
--
ALTER TABLE `student_tutor`
  ADD PRIMARY KEY (`student_tutor_id`),
  ADD KEY `student_tutor_FK_1` (`student_id`),
  ADD KEY `student_tutor_FK_2` (`tutor_id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`tutor_id`),
  ADD KEY `tutor_gender_FK_1` (`gender_id`),
  ADD KEY `tutor_price_FK_2` (`price_id`);

--
-- Indexes for table `tutor_level`
--
ALTER TABLE `tutor_level`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Tutor_level_FK_1` (`tutor_id`),
  ADD KEY `Tutor_level_FK_2` (`level_id`);

--
-- Indexes for table `tutor_location`
--
ALTER TABLE `tutor_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_location_tutor_id_FK` (`tutor_id`),
  ADD KEY `tutor_location_location_id_FK` (`location_id`);

--
-- Indexes for table `tutor_specialism`
--
ALTER TABLE `tutor_specialism`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tutor_specialism_FK_1` (`specialism_id`),
  ADD KEY `Tutor_specialism_FK_2` (`tutor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_quiz`
--
ALTER TABLE `assign_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `calendar_events`
--
ALTER TABLE `calendar_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `image_table`
--
ALTER TABLE `image_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `new_quiz`
--
ALTER TABLE `new_quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `review_table`
--
ALTER TABLE `review_table`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `shared_quiz`
--
ALTER TABLE `shared_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `specialism`
--
ALTER TABLE `specialism`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `student_tutor`
--
ALTER TABLE `student_tutor`
  MODIFY `student_tutor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `tutor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tutor_level`
--
ALTER TABLE `tutor_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tutor_location`
--
ALTER TABLE `tutor_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tutor_specialism`
--
ALTER TABLE `tutor_specialism`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD CONSTRAINT `FK_student_tutor_id` FOREIGN KEY (`student_tutor_id`) REFERENCES `student_tutor` (`student_tutor_id`);

--
-- Constraints for table `choices`
--
ALTER TABLE `choices`
  ADD CONSTRAINT `choices_new_quiz_fk` FOREIGN KEY (`quiz_id`) REFERENCES `new_quiz` (`quiz_id`);

--
-- Constraints for table `new_quiz`
--
ALTER TABLE `new_quiz`
  ADD CONSTRAINT `new_quiz_level_id_FK` FOREIGN KEY (`quiz_level`) REFERENCES `level` (`id`),
  ADD CONSTRAINT `new_quiz_tutor_id_FK` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_new_quiz_fk` FOREIGN KEY (`quiz_id`) REFERENCES `new_quiz` (`quiz_id`);

--
-- Constraints for table `review_table`
--
ALTER TABLE `review_table`
  ADD CONSTRAINT `FK_student_id_ratings` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `FK_tutor_id_ratings` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`);

--
-- Constraints for table `shared_quiz`
--
ALTER TABLE `shared_quiz`
  ADD CONSTRAINT `quiz_id_FK` FOREIGN KEY (`quiz_id`) REFERENCES `new_quiz` (`quiz_id`),
  ADD CONSTRAINT `tutor_id_FK` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_gender` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`);

--
-- Constraints for table `student_tutor`
--
ALTER TABLE `student_tutor`
  ADD CONSTRAINT `student_tutor_FK_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `student_tutor_FK_2` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`);

--
-- Constraints for table `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `tutor_gender_FK_1` FOREIGN KEY (`gender_id`) REFERENCES `gender` (`id`),
  ADD CONSTRAINT `tutor_price_FK_2` FOREIGN KEY (`price_id`) REFERENCES `price` (`id`);

--
-- Constraints for table `tutor_level`
--
ALTER TABLE `tutor_level`
  ADD CONSTRAINT `Tutor_level_FK_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`),
  ADD CONSTRAINT `Tutor_level_FK_2` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`);

--
-- Constraints for table `tutor_location`
--
ALTER TABLE `tutor_location`
  ADD CONSTRAINT `tutor_location_location_id_FK` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  ADD CONSTRAINT `tutor_location_tutor_id_FK` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`);

--
-- Constraints for table `tutor_specialism`
--
ALTER TABLE `tutor_specialism`
  ADD CONSTRAINT `Tutor_specialism_FK_2` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`tutor_id`),
  ADD CONSTRAINT `tutor_specialism_FK_1` FOREIGN KEY (`specialism_id`) REFERENCES `specialism` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
