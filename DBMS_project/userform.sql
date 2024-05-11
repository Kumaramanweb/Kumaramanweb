-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 11:34 AM
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
-- Database: `userform`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicdetails`
--

CREATE TABLE `academicdetails` (
  `ID` int(11) NOT NULL,
  `EducationalQualificationsID` int(11) DEFAULT NULL,
  `DegreeCertificate` varchar(255) DEFAULT NULL,
  `UniversityInstitute` varchar(255) DEFAULT NULL,
  `BranchStream` varchar(255) DEFAULT NULL,
  `YearOfJoining` varchar(10) DEFAULT NULL,
  `YearOfCompletion` varchar(10) DEFAULT NULL,
  `DurationInYears` int(11) DEFAULT NULL,
  `PercentageCGPA` varchar(20) DEFAULT NULL,
  `DivisionClass` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `additionaleducationalqualifications`
--

CREATE TABLE `additionaleducationalqualifications` (
  `ID` int(11) NOT NULL,
  `EducationalQualificationsID` int(11) DEFAULT NULL,
  `Degree` varchar(255) DEFAULT NULL,
  `UniversityInstitute` varchar(255) DEFAULT NULL,
  `BranchStream` varchar(255) DEFAULT NULL,
  `YearOfJoining` varchar(10) DEFAULT NULL,
  `YearOfCompletion` varchar(10) DEFAULT NULL,
  `DurationYears` int(11) DEFAULT NULL,
  `PercentageCGPA` varchar(20) DEFAULT NULL,
  `DivisionClass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `additionaleducationalqualifications`
--

INSERT INTO `additionaleducationalqualifications` (`ID`, `EducationalQualificationsID`, `Degree`, `UniversityInstitute`, `BranchStream`, `YearOfJoining`, `YearOfCompletion`, `DurationYears`, `PercentageCGPA`, `DivisionClass`) VALUES
(1, NULL, '45211 Hage', '64534 Marks Canyon', '104 Gladyce Ridge', '9745 ', '181 M', 5578, '2794 ', 'Expli'),
(2, NULL, '501 Abdul ', '461 Alexys Unions', '5755 Von Wall', '44516', '6202 ', 1117, '2094 ', 'Assum'),
(3, NULL, '45211 Hage', '64534 Marks Canyon', '104 Gladyce Ridge', '9745 ', '181 M', 5578, '2794 ', 'Expli'),
(4, NULL, '501 Abdul ', '461 Alexys Unions', '5755 Von Wall', '44516', '6202 ', 1117, '2094 ', 'Assum');

-- --------------------------------------------------------

--
-- Table structure for table `additional_data`
--

CREATE TABLE `additional_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `additional_data`
--

INSERT INTO `additional_data` (`id`, `field1`, `field2`) VALUES
(1, NULL, NULL),
(2, NULL, NULL),
(3, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `adv_number` varchar(50) DEFAULT NULL,
  `date_of_application` date DEFAULT NULL,
  `application_number` varchar(50) DEFAULT NULL,
  `post_applied` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `adv_number`, `date_of_application`, `application_number`, `post_applied`, `department`) VALUES
(1, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(2, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(3, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(4, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(5, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(6, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(7, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(8, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(9, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(10, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(11, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(12, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(13, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(14, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(15, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(16, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(17, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(18, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(19, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(20, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(21, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(22, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(23, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(24, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(25, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(26, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(27, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(28, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(29, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(30, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(31, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(32, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(33, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(34, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(35, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(36, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(37, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(38, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(39, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(40, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(41, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(42, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(43, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(44, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(45, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(46, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(47, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(48, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(49, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(50, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(51, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(52, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(53, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '5769080', 'Professor', 'Chemical Engineering'),
(54, '', '0000-00-00', '', '', ''),
(55, '', '0000-00-00', '', '', ''),
(56, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '17690809876', 'Professor', 'Chemical Engineering'),
(57, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '17690809876', 'Professor', 'Chemical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `awarded_by` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bachelors_supervision`
--

CREATE TABLE `bachelors_supervision` (
  `id` int(11) NOT NULL,
  `scholar_name` varchar(255) NOT NULL,
  `thesis_title` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bachelors_supervision`
--

INSERT INTO `bachelors_supervision` (`id`, `scholar_name`, `thesis_title`, `role`, `status`, `year`) VALUES
(1, 'Obcaecati incididunt', 'Est adipisicing aut ', 'Supervisor with Co-supervisor', 'Sit cupidatat dolor', '2004'),
(2, 'Quibusdam nihil reic', 'Ab provident omnis ', 'Co-Supervisor', 'Provident quis proi', '1974'),
(3, 'Iusto cupiditate mol', 'Ea tempora quidem do', 'Supervisor with Co-supervisor', 'Amet vero facere am', '1983'),
(4, 'Obcaecati incididunt', 'Est adipisicing aut ', 'Supervisor with Co-supervisor', 'Sit cupidatat dolor', '2004'),
(5, 'Quibusdam nihil reic', 'Ab provident omnis ', 'Co-Supervisor', 'Provident quis proi', '1974'),
(6, 'Iusto cupiditate mol', 'Ea tempora quidem do', 'Supervisor with Co-supervisor', 'Amet vero facere am', '1983'),
(7, 'Obcaecati incididunt', 'Est adipisicing aut ', 'Supervisor with Co-supervisor', 'Sit cupidatat dolor', '2004'),
(8, 'Quibusdam nihil reic', 'Ab provident omnis ', 'Co-Supervisor', 'Provident quis proi', '1974'),
(9, 'Iusto cupiditate mol', 'Ea tempora quidem do', 'Supervisor with Co-supervisor', 'Amet vero facere am', '1983'),
(10, 'Obcaecati incididunt', 'Est adipisicing aut ', 'Supervisor with Co-supervisor', 'Sit cupidatat dolor', '2004'),
(11, 'Quibusdam nihil reic', 'Ab provident omnis ', 'Co-Supervisor', 'Provident quis proi', '1974'),
(12, 'Iusto cupiditate mol', 'Ea tempora quidem do', 'Supervisor with Co-supervisor', 'Amet vero facere am', '1983'),
(13, 'Obcaecati incididunt', 'Est adipisicing aut ', 'Supervisor with Co-supervisor', 'Sit cupidatat dolor', '2004'),
(14, 'Quibusdam nihil reic', 'Ab provident omnis ', 'Co-Supervisor', 'Provident quis proi', '1974'),
(15, 'Iusto cupiditate mol', 'Ea tempora quidem do', 'Supervisor with Co-supervisor', 'Amet vero facere am', '1983');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `author`, `title`, `year`, `isbn`) VALUES
(1, 'Sit quod veniam quisquam facere debitis.', 'Lead Configuration Officer', 0, 'Tempora id quaerat sit inventore quidem consequatur.'),
(2, 'Eveniet asperiores deleniti earum accusantium ex facilis quaerat.', 'Internal Assurance Representative', 0, 'Sed laudantium quo iure temporibus.'),
(3, 'Harum incidunt voluptates ipsa.', 'District Brand Coordinator', 0, 'Assumenda illum ad.'),
(4, 'Sit quod veniam quisquam facere debitis.', 'Lead Configuration Officer', 0, 'Tempora id quaerat sit inventore quidem consequatur.'),
(5, 'Eveniet asperiores deleniti earum accusantium ex facilis quaerat.', 'Internal Assurance Representative', 0, 'Sed laudantium quo iure temporibus.'),
(6, 'Harum incidunt voluptates ipsa.', 'District Brand Coordinator', 0, 'Assumenda illum ad.'),
(7, 'Sit quod veniam quisquam facere debitis.', 'Lead Configuration Officer', 0, 'Tempora id quaerat sit inventore quidem consequatur.'),
(8, 'Eveniet asperiores deleniti earum accusantium ex facilis quaerat.', 'Internal Assurance Representative', 0, 'Sed laudantium quo iure temporibus.'),
(9, 'Harum incidunt voluptates ipsa.', 'District Brand Coordinator', 0, 'Assumenda illum ad.');

-- --------------------------------------------------------

--
-- Table structure for table `book_chapters`
--

CREATE TABLE `book_chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_chapters`
--

INSERT INTO `book_chapters` (`id`, `author`, `title`, `year`, `isbn`) VALUES
(1, 'Odit quibusdam neque debitis molestiae numquam repudiandae cupiditate non beatae.', 'Central Directives Supervisor', 0, 'Modi eius amet culpa.'),
(2, 'Deserunt soluta dolores perferendis dolore.', 'Internal Group Designer', 0, 'Saepe dolores illo.'),
(3, 'Facere fugit neque aspernatur molestiae deserunt odio ipsum.', 'Customer Security Developer', 0, 'Beatae consectetur corrupti voluptatibus sequi aliquid quibusdam.'),
(4, 'Odit quibusdam neque debitis molestiae numquam repudiandae cupiditate non beatae.', 'Central Directives Supervisor', 0, 'Modi eius amet culpa.'),
(5, 'Deserunt soluta dolores perferendis dolore.', 'Internal Group Designer', 0, 'Saepe dolores illo.'),
(6, 'Facere fugit neque aspernatur molestiae deserunt odio ipsum.', 'Customer Security Developer', 0, 'Beatae consectetur corrupti voluptatibus sequi aliquid quibusdam.'),
(7, 'Odit quibusdam neque debitis molestiae numquam repudiandae cupiditate non beatae.', 'Central Directives Supervisor', 0, 'Modi eius amet culpa.'),
(8, 'Deserunt soluta dolores perferendis dolore.', 'Internal Group Designer', 0, 'Saepe dolores illo.'),
(9, 'Facere fugit neque aspernatur molestiae deserunt odio ipsum.', 'Customer Security Developer', 0, 'Beatae consectetur corrupti voluptatibus sequi aliquid quibusdam.');

-- --------------------------------------------------------

--
-- Table structure for table `conference_publications`
--

CREATE TABLE `conference_publications` (
  `id` int(11) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conference_publications`
--

INSERT INTO `conference_publications` (`id`, `details`) VALUES
(1, '<p>pqr</p>\r\n'),
(2, '<p>jbj jkn</p>\r\n'),
(3, '<p>njvch</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `consultancy_projects`
--

CREATE TABLE `consultancy_projects` (
  `id` int(11) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount_granted` decimal(10,2) DEFAULT NULL,
  `period` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consultancy_projects`
--

INSERT INTO `consultancy_projects` (`id`, `organization`, `title`, `amount_granted`, `period`, `role`, `status`) VALUES
(1, 'Aliquam rerum nisi dolore.', 'Regional Tactics Representative', 0.00, 'Voluptatum aliquid officiis a consectetur voluptatibus earum ad at ducimus.', 'Principal Investigator', 'Maryland'),
(2, 'Asperiores quam dolor distinctio odit quidem quae.', 'Principal Marketing Manager', 0.00, 'Nesciunt libero iure.', 'Principal Investigator', 'South Dakota'),
(3, 'Numquam a possimus tempore.', 'Future Identity Facilitator', 0.00, 'Veritatis dolor illo.', 'Principal Investigator', 'Delaware'),
(4, 'Aliquam rerum nisi dolore.', 'Regional Tactics Representative', 0.00, 'Voluptatum aliquid officiis a consectetur voluptatibus earum ad at ducimus.', 'Principal Investigator', 'Maryland'),
(5, 'Asperiores quam dolor distinctio odit quidem quae.', 'Principal Marketing Manager', 0.00, 'Nesciunt libero iure.', 'Principal Investigator', 'South Dakota'),
(6, 'Numquam a possimus tempore.', 'Future Identity Facilitator', 0.00, 'Veritatis dolor illo.', 'Principal Investigator', 'Delaware'),
(7, 'Aliquam rerum nisi dolore.', 'Regional Tactics Representative', 0.00, 'Voluptatum aliquid officiis a consectetur voluptatibus earum ad at ducimus.', 'Principal Investigator', 'Maryland'),
(8, 'Asperiores quam dolor distinctio odit quidem quae.', 'Principal Marketing Manager', 0.00, 'Nesciunt libero iure.', 'Principal Investigator', 'South Dakota'),
(9, 'Numquam a possimus tempore.', 'Future Identity Facilitator', 0.00, 'Veritatis dolor illo.', 'Principal Investigator', 'Delaware');

-- --------------------------------------------------------

--
-- Table structure for table `declarations`
--

CREATE TABLE `declarations` (
  `id` int(11) NOT NULL,
  `decl_status` tinyint(1) NOT NULL,
  `submission_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `declarations`
--

INSERT INTO `declarations` (`id`, `decl_status`, `submission_time`) VALUES
(1, 1, '2024-05-08 23:34:07'),
(2, 0, '2024-05-08 23:34:13'),
(3, 0, '2024-05-08 23:36:09'),
(4, 0, '2024-05-09 17:01:52'),
(5, 0, '2024-05-09 17:08:34'),
(6, 0, '2024-05-09 17:09:07'),
(7, 0, '2024-05-09 17:11:33'),
(8, 0, '2024-05-09 17:12:03'),
(9, 0, '2024-05-09 17:13:47'),
(10, 0, '2024-05-09 17:14:02'),
(11, 0, '2024-05-09 17:14:08'),
(12, 0, '2024-05-09 17:14:11'),
(13, 0, '2024-05-09 17:14:14'),
(14, 0, '2024-05-09 17:30:11'),
(15, 0, '2024-05-09 17:31:01'),
(16, 0, '2024-05-09 17:32:46'),
(17, 0, '2024-05-09 17:44:53'),
(18, 0, '2024-05-09 17:47:15'),
(19, 0, '2024-05-09 17:47:20'),
(20, 0, '2024-05-09 17:47:25'),
(21, 0, '2024-05-09 18:06:07'),
(22, 0, '2024-05-09 18:09:29'),
(23, 0, '2024-05-09 18:10:24'),
(24, 0, '2024-05-09 18:10:41'),
(25, 0, '2024-05-09 18:12:25'),
(26, 0, '2024-05-09 18:15:25'),
(27, 0, '2024-05-09 18:16:34'),
(28, 0, '2024-05-09 18:17:21'),
(29, 0, '2024-05-09 18:17:28'),
(30, 0, '2024-05-09 18:26:17'),
(31, 0, '2024-05-09 18:31:14'),
(32, 0, '2024-05-09 18:33:13'),
(33, 0, '2024-05-09 18:33:44'),
(34, 0, '2024-05-09 18:41:53'),
(35, 0, '2024-05-09 18:42:51'),
(36, 0, '2024-05-09 18:42:55'),
(37, 0, '2024-05-09 18:43:03'),
(38, 0, '2024-05-09 18:44:15'),
(39, 0, '2024-05-09 18:44:19'),
(40, 0, '2024-05-09 18:44:52'),
(41, 0, '2024-05-09 18:45:20'),
(42, 0, '2024-05-09 18:45:28'),
(43, 0, '2024-05-09 20:23:09'),
(44, 0, '2024-05-09 20:25:26'),
(45, 0, '2024-05-09 20:25:29'),
(46, 0, '2024-05-09 20:34:36'),
(47, 0, '2024-05-09 20:34:39'),
(48, 0, '2024-05-09 20:38:04'),
(49, 0, '2024-05-09 22:47:16'),
(50, 0, '2024-05-09 22:49:25'),
(51, 0, '2024-05-09 22:49:43'),
(52, 0, '2024-05-09 23:07:02'),
(53, 0, '2024-05-09 23:07:10'),
(54, 0, '2024-05-09 23:07:28'),
(55, 0, '2024-05-09 23:07:40'),
(56, 0, '2024-05-09 23:08:06'),
(57, 0, '2024-05-09 23:08:38'),
(58, 0, '2024-05-09 23:08:46'),
(59, 0, '2024-05-09 23:08:57'),
(60, 0, '2024-05-09 23:09:13'),
(61, 0, '2024-05-09 23:09:22'),
(62, 0, '2024-05-09 23:09:59'),
(63, 0, '2024-05-09 23:10:27'),
(64, 0, '2024-05-09 23:10:32'),
(65, 0, '2024-05-09 23:11:02'),
(66, 0, '2024-05-09 23:12:20'),
(67, 0, '2024-05-09 23:14:40'),
(68, 0, '2024-05-09 23:15:03'),
(69, 0, '2024-05-09 23:15:34'),
(70, 0, '2024-05-09 23:15:36'),
(71, 0, '2024-05-09 23:15:45'),
(72, 0, '2024-05-09 23:16:10'),
(73, 0, '2024-05-09 23:17:42'),
(74, 0, '2024-05-09 23:17:48'),
(75, 0, '2024-05-09 23:18:49'),
(76, 0, '2024-05-09 23:19:22'),
(77, 0, '2024-05-09 23:19:37'),
(78, 0, '2024-05-09 23:25:22'),
(79, 0, '2024-05-09 23:25:59'),
(80, 0, '2024-05-09 23:26:32'),
(81, 0, '2024-05-09 23:27:49'),
(82, 0, '2024-05-09 23:27:56'),
(83, 0, '2024-05-09 23:41:17'),
(84, 0, '2024-05-09 23:43:18'),
(85, 0, '2024-05-09 23:43:32'),
(86, 0, '2024-05-09 23:45:19'),
(87, 0, '2024-05-09 23:46:27'),
(88, 0, '2024-05-09 23:46:44'),
(89, 0, '2024-05-09 23:46:59'),
(90, 0, '2024-05-09 23:47:09'),
(91, 0, '2024-05-09 23:47:23'),
(92, 0, '2024-05-09 23:47:33'),
(93, 0, '2024-05-09 23:47:50'),
(94, 0, '2024-05-09 23:49:06'),
(95, 1, '2024-05-09 23:49:24'),
(96, 0, '2024-05-09 23:49:31'),
(97, 1, '2024-05-09 23:49:44'),
(98, 0, '2024-05-09 23:57:57'),
(99, 0, '2024-05-09 23:57:58'),
(100, 0, '2024-05-09 23:59:05'),
(101, 0, '2024-05-09 23:59:56'),
(102, 0, '2024-05-10 00:00:10'),
(103, 0, '2024-05-10 00:00:28'),
(104, 0, '2024-05-10 00:01:04'),
(105, 0, '2024-05-10 00:02:16'),
(106, 0, '2024-05-10 00:02:39'),
(107, 0, '2024-05-10 00:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `educationalqualifications`
--

CREATE TABLE `educationalqualifications` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `UniversityOrInstitute` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Supervisor` varchar(255) DEFAULT NULL,
  `YearOfJoining` varchar(10) DEFAULT NULL,
  `DateOfSuccessfulThesisDefence` date DEFAULT NULL,
  `DateOfAward` date DEFAULT NULL,
  `TitleOfThesis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `educationalqualifications`
--

INSERT INTO `educationalqualifications` (`ID`, `UserID`, `UniversityOrInstitute`, `Department`, `Supervisor`, `YearOfJoining`, `DateOfSuccessfulThesisDefence`, `DateOfAward`, `TitleOfThesis`) VALUES
(18, NULL, '252-839-7224', '92507 Tatum Point', 'Repellat porro ut.', '365-612-60', '0000-00-00', '0000-00-00', 'Dynamic Research Developer'),
(19, NULL, '252-839-7224', '92507 Tatum Point', 'Repellat porro ut.', '365-612-60', '0000-00-00', '0000-00-00', 'Dynamic Research Developer'),
(20, NULL, '252-839-7224', '92507 Tatum Point', 'Repellat porro ut.', '365-612-60', '0000-00-00', '0000-00-00', 'Dynamic Research Developer'),
(21, NULL, '252-839-7224', '92507 Tatum Point', 'Repellat porro ut.', '365-612-60', '0000-00-00', '0000-00-00', 'Dynamic Research Developer'),
(22, NULL, '252-839-7224', '92507 Tatum Point', 'Repellat porro ut.', '365-612-60', '0000-00-00', '0000-00-00', 'Dynamic Research Developer'),
(23, NULL, '252-839-7224', '92507 Tatum Point', 'Repellat porro ut.', '365-612-60', '0000-00-00', '0000-00-00', 'Dynamic Research Developer'),
(24, NULL, '252-839-7224', '92507 Tatum Point', 'Repellat porro ut.', '365-612-60', '0000-00-00', '0000-00-00', 'Dynamic Research Developer'),
(25, NULL, '252-839-7224', '92507 Tatum Point', 'Repellat porro ut.', '365-612-60', '0000-00-00', '0000-00-00', 'Dynamic Research Developer'),
(26, NULL, '252-839-7224', '92507 Tatum Point', 'Repellat porro ut.', '365-612-60', '0000-00-00', '0000-00-00', 'Dynamic Research Developer');

-- --------------------------------------------------------

--
-- Table structure for table `educational_qualifications`
--

CREATE TABLE `educational_qualifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `degree_level` varchar(50) DEFAULT NULL,
  `degree_name` varchar(255) DEFAULT NULL,
  `university_institute` varchar(255) DEFAULT NULL,
  `branch_stream` varchar(255) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `year_of_joining` varchar(20) DEFAULT NULL,
  `year_of_completion` varchar(20) DEFAULT NULL,
  `duration_years` varchar(10) DEFAULT NULL,
  `percentage_cgpa` varchar(10) DEFAULT NULL,
  `division_class` varchar(100) DEFAULT NULL,
  `thesis_title` varchar(255) DEFAULT NULL,
  `date_of_defence` date DEFAULT NULL,
  `date_of_award` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employment_details`
--

CREATE TABLE `employment_details` (
  `id` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employment_details`
--

INSERT INTO `employment_details` (`id`, `position`, `organization`, `status`, `date_of_joining`, `date_of_leaving`, `duration`) VALUES
(1, '1`2448 Sheridan Gateway', '48197 Moises Knoll', 'Private', '0000-00-00', '0000-00-00', 8084),
(2, '1`2448 Sheridan Gateway', '48197 Moises Knoll', 'Private', '0000-00-00', '0000-00-00', 8084),
(3, '1`2448 Sheridan Gateway', '48197 Moises Knoll', 'Private', '0000-00-00', '0000-00-00', 8084),
(4, '1`2448 Sheridan Gateway', '48197 Moises Knoll', 'Private', '0000-00-00', '0000-00-00', 8084),
(5, '1`2448 Sheridan Gateway', '48197 Moises Knoll', 'Private', '0000-00-00', '0000-00-00', 8084),
(6, '1`2448 Sheridan Gateway', '48197 Moises Knoll', 'Private', '0000-00-00', '0000-00-00', 8084);

-- --------------------------------------------------------

--
-- Table structure for table `employment_history`
--

CREATE TABLE `employment_history` (
  `id` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employment_history`
--

INSERT INTO `employment_history` (`id`, `position`, `organization`, `date_of_joining`, `date_of_leaving`, `duration`) VALUES
(1, 'Mollitia eveniet optio suscipit quibusdam.', 'Perspiciatis ex officia itaque adipisci quasi harum qui modi.', '0000-00-00', '0000-00-00', 2024),
(2, 'Fugit nemo expedita eius.', 'Ducimus deserunt beatae similique.', '0000-00-00', '0000-00-00', 2024),
(3, 'Mollitia eveniet optio suscipit quibusdam.', 'Perspiciatis ex officia itaque adipisci quasi harum qui modi.', '0000-00-00', '0000-00-00', 2024),
(4, 'Fugit nemo expedita eius.', 'Ducimus deserunt beatae similique.', '0000-00-00', '0000-00-00', 2024),
(5, 'Mollitia eveniet optio suscipit quibusdam.', 'Perspiciatis ex officia itaque adipisci quasi harum qui modi.', '0000-00-00', '0000-00-00', 2024),
(6, 'Fugit nemo expedita eius.', 'Ducimus deserunt beatae similique.', '0000-00-00', '0000-00-00', 2024),
(7, 'Ullam illum alias neque.', NULL, NULL, NULL, NULL),
(8, 'Architecto placeat saepe qui consectetur doloremque hic.', NULL, NULL, NULL, NULL),
(9, 'Modi libero sunt voluptate nam fuga occaecati debitis in reprehenderit.', NULL, NULL, NULL, NULL),
(10, 'Ullam illum alias neque.', 'Default Employer', '0000-00-00', '0000-00-00', NULL),
(11, 'Architecto placeat saepe qui consectetur doloremque hic.', 'Default Employer', '0000-00-00', '0000-00-00', NULL),
(12, 'Modi libero sunt voluptate nam fuga occaecati debitis in reprehenderit.', 'Default Employer', '0000-00-00', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_uploads`
--

CREATE TABLE `file_uploads` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_type` varchar(50) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `file_uploads`
--

INSERT INTO `file_uploads` (`id`, `file_name`, `file_path`, `file_type`, `upload_time`) VALUES
(1, '1.jpg', 'uploads/1.jpg', 'jpg', '2024-05-08 23:28:58'),
(2, '2.jpg', 'uploads/2.jpg', 'jpg', '2024-05-08 23:28:58'),
(3, '3.jpg', 'uploads/3.jpg', 'jpg', '2024-05-08 23:28:58'),
(4, '4.jpg', 'uploads/4.jpg', 'jpg', '2024-05-08 23:28:58'),
(5, 'banner-1.jpg', 'uploads/banner-1.jpg', 'jpg', '2024-05-08 23:28:58'),
(6, 'banner-2.jpg', 'uploads/banner-2.jpg', 'jpg', '2024-05-08 23:28:58'),
(7, 'belt.jpg', 'uploads/belt.jpg', 'jpg', '2024-05-08 23:28:58'),
(8, 'blog-3.jpg', 'uploads/blog-3.jpg', 'jpg', '2024-05-08 23:28:58'),
(9, 'blog-2.jpg', 'uploads/blog-2.jpg', 'jpg', '2024-05-08 23:28:58'),
(10, 'banner-3.jpg', 'uploads/banner-3.jpg', 'jpg', '2024-05-08 23:28:58'),
(11, 'blog-1.jpg', 'uploads/blog-1.jpg', 'jpg', '2024-05-08 23:28:58'),
(12, '1.jpg', 'uploads/1.jpg', 'jpg', '2024-05-09 23:49:06'),
(13, '2.jpg', 'uploads/2.jpg', 'jpg', '2024-05-09 23:49:06'),
(14, '3.jpg', 'uploads/3.jpg', 'jpg', '2024-05-09 23:49:06'),
(15, 'bag.svg', 'uploads/bag.svg', 'svg', '2024-05-09 23:49:06'),
(16, 'banner-1.jpg', 'uploads/banner-1.jpg', 'jpg', '2024-05-09 23:49:06'),
(17, 'banner-2.jpg', 'uploads/banner-2.jpg', 'jpg', '2024-05-09 23:49:06'),
(18, 'blog-3.jpg', 'uploads/blog-3.jpg', 'jpg', '2024-05-09 23:49:06'),
(19, 'blog-2.jpg', 'uploads/blog-2.jpg', 'jpg', '2024-05-09 23:49:06'),
(20, 'blog-1.jpg', 'uploads/blog-1.jpg', 'jpg', '2024-05-09 23:49:06'),
(21, 'banner-3.jpg', 'uploads/banner-3.jpg', 'jpg', '2024-05-09 23:49:06'),
(22, 'belt.jpg', 'uploads/belt.jpg', 'jpg', '2024-05-09 23:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `Id` int(11) NOT NULL,
  `file` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`Id`, `file`) VALUES
(0, ''),
(0, '');

-- --------------------------------------------------------

--
-- Table structure for table `journal_publications`
--

CREATE TABLE `journal_publications` (
  `id` int(11) NOT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `journal_publications`
--

INSERT INTO `journal_publications` (`id`, `details`) VALUES
(1, '<p>mno</p>\r\n'),
(2, '<p>jhj jhjb</p>\r\n'),
(3, '<p>kjhgc</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `masters_supervision`
--

CREATE TABLE `masters_supervision` (
  `id` int(11) NOT NULL,
  `scholar_name` varchar(255) NOT NULL,
  `thesis_title` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masters_supervision`
--

INSERT INTO `masters_supervision` (`id`, `scholar_name`, `thesis_title`, `role`, `status`, `year`) VALUES
(1, 'Est qui maiores nos', 'Suscipit commodo sin', 'Co-Supervisor', 'Nulla ipsum ea tempo', '2013'),
(2, 'In accusamus iusto c', 'Rem duis provident ', 'Co-Supervisor', 'Quos animi dolorum ', '1991'),
(3, 'Rerum in facere veni', 'Labore ut optio Nam', 'Supervisor with Co-supervisor', 'Totam enim quis culp', '1981'),
(4, 'Est qui maiores nos', 'Suscipit commodo sin', 'Co-Supervisor', 'Nulla ipsum ea tempo', '2013'),
(5, 'In accusamus iusto c', 'Rem duis provident ', 'Co-Supervisor', 'Quos animi dolorum ', '1991'),
(6, 'Rerum in facere veni', 'Labore ut optio Nam', 'Supervisor with Co-supervisor', 'Totam enim quis culp', '1981'),
(7, 'Est qui maiores nos', 'Suscipit commodo sin', 'Co-Supervisor', 'Nulla ipsum ea tempo', '2013'),
(8, 'In accusamus iusto c', 'Rem duis provident ', 'Co-Supervisor', 'Quos animi dolorum ', '1991'),
(9, 'Rerum in facere veni', 'Labore ut optio Nam', 'Supervisor with Co-supervisor', 'Totam enim quis culp', '1981'),
(10, 'Est qui maiores nos', 'Suscipit commodo sin', 'Co-Supervisor', 'Nulla ipsum ea tempo', '2013'),
(11, 'In accusamus iusto c', 'Rem duis provident ', 'Co-Supervisor', 'Quos animi dolorum ', '1991'),
(12, 'Rerum in facere veni', 'Labore ut optio Nam', 'Supervisor with Co-supervisor', 'Totam enim quis culp', '1981'),
(13, 'Est qui maiores nos', 'Suscipit commodo sin', 'Co-Supervisor', 'Nulla ipsum ea tempo', '2013'),
(14, 'In accusamus iusto c', 'Rem duis provident ', 'Co-Supervisor', 'Quos animi dolorum ', '1991'),
(15, 'Rerum in facere veni', 'Labore ut optio Nam', 'Supervisor with Co-supervisor', 'Totam enim quis culp', '1981'),
(16, 'Est qui maiores nos', 'Suscipit commodo sin', 'Co-Supervisor', 'Nulla ipsum ea tempo', '2013'),
(17, 'In accusamus iusto c', 'Rem duis provident ', 'Co-Supervisor', 'Quos animi dolorum ', '1991'),
(18, 'Rerum in facere veni', 'Labore ut optio Nam', 'Supervisor with Co-supervisor', 'Totam enim quis culp', '1981'),
(19, 'Est qui maiores nos', 'Suscipit commodo sin', 'Co-Supervisor', 'Nulla ipsum ea tempo', '2013'),
(20, 'In accusamus iusto c', 'Rem duis provident ', 'Co-Supervisor', 'Quos animi dolorum ', '1991'),
(21, 'Rerum in facere veni', 'Labore ut optio Nam', 'Supervisor with Co-supervisor', 'Totam enim quis culp', '1981');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `name`, `status`) VALUES
(1, 'Bessie Goldner', 'Illinois'),
(2, 'Edwardo Franecki', 'South Carolina'),
(3, 'Antonina Carter', 'Idaho'),
(4, 'Aleen Kuhlman', 'Idaho'),
(5, 'Bessie Goldner', 'Illinois'),
(6, 'Edwardo Franecki', 'South Carolina'),
(7, 'Antonina Carter', 'Idaho'),
(8, 'Aleen Kuhlman', 'Idaho'),
(9, 'Bessie Goldner', 'Illinois'),
(10, 'Edwardo Franecki', 'South Carolina'),
(11, 'Antonina Carter', 'Idaho'),
(12, 'Aleen Kuhlman', 'Idaho');

-- --------------------------------------------------------

--
-- Table structure for table `other_relevant_info`
--

CREATE TABLE `other_relevant_info` (
  `id` int(11) NOT NULL,
  `information` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_relevant_info`
--

INSERT INTO `other_relevant_info` (`id`, `information`) VALUES
(1, '<p>ghi</p>\r\n'),
(2, '<p>hg hh</p>\r\n'),
(3, '<p>lkjhfg</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `patents`
--

CREATE TABLE `patents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `patent_number` varchar(255) DEFAULT NULL,
  `date_filed` date DEFAULT NULL,
  `date_published` date DEFAULT NULL,
  `date_issued` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patents`
--

INSERT INTO `patents` (`id`, `author`, `title`, `country`, `patent_number`, `date_filed`, `date_published`, `date_issued`) VALUES
(1, 'LMFXclcu3JKj6Xb', 'Regional Marketing Analyst', 'Mozambique', '626', '0000-00-00', '0000-00-00', '0000-00-00'),
(2, 'UyE3068CIS7wx8R', 'Dynamic Assurance Developer', 'Virgin Islands, U.S.', '38', '0000-00-00', '0000-00-00', '0000-00-00'),
(3, 'iMwlvzGiuPVmMhv', 'Direct Factors Executive', 'Heard Island and McDonald Islands', '506', '0000-00-00', '0000-00-00', '0000-00-00'),
(4, 'LMFXclcu3JKj6Xb', 'Regional Marketing Analyst', 'Mozambique', '626', '0000-00-00', '0000-00-00', '0000-00-00'),
(5, 'UyE3068CIS7wx8R', 'Dynamic Assurance Developer', 'Virgin Islands, U.S.', '38', '0000-00-00', '0000-00-00', '0000-00-00'),
(6, 'iMwlvzGiuPVmMhv', 'Direct Factors Executive', 'Heard Island and McDonald Islands', '506', '0000-00-00', '0000-00-00', '0000-00-00'),
(7, 'LMFXclcu3JKj6Xb', 'Regional Marketing Analyst', 'Mozambique', '626', '0000-00-00', '0000-00-00', '0000-00-00'),
(8, 'UyE3068CIS7wx8R', 'Dynamic Assurance Developer', 'Virgin Islands, U.S.', '38', '0000-00-00', '0000-00-00', '0000-00-00'),
(9, 'iMwlvzGiuPVmMhv', 'Direct Factors Executive', 'Heard Island and McDonald Islands', '506', '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `id_proof` varchar(50) DEFAULT NULL,
  `id_proof_file_path` varchar(255) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `correspondence_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alternate_mobile` varchar(20) DEFAULT NULL,
  `alternate_email` varchar(100) DEFAULT NULL,
  `landline_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`id`, `first_name`, `middle_name`, `last_name`, `nationality`, `dob`, `gender`, `marital_status`, `category`, `id_proof`, `id_proof_file_path`, `father_name`, `photo_path`, `correspondence_address`, `permanent_address`, `mobile`, `email`, `alternate_mobile`, `alternate_email`, `landline_number`) VALUES
(1, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', 'uploads/id_proof/2.jpg', 'Timmothy_Hilpert77', 'uploads/photos/', 'knjbhjngv, lmkjh, kmh, kmh, 987', 'kmjb, kjbh, mnb,   kjjh, 9876', 'Customer Markets Con', 'sonalikachandra05@gmail.com', 'Legacy Accounts Deve', 'your.email+fakedata28441@gmail.com', '45'),
(2, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', 'uploads/id_proof/1.jpg', 'Timmothy_Hilpert77', 'uploads/photos/2.jpg', 'knjbhjngv, lmkjh, kmh, kmh, 987', 'kmjb, kjbh, mnb,   kjjh, 9876', 'Customer Markets Con', 'sonalikachandra05@gmail.com', 'Legacy Accounts Deve', 'your.email+fakedata28441@gmail.com', '45'),
(3, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', 'uploads/id_proof/1.jpg', 'Timmothy_Hilpert77', 'uploads/photos/2.jpg', 'knjbhjngv, lmkjh, kmh, kmh, 987', 'kmjb, kjbh, mnb,   kjjh, 9876', 'Customer Markets Con', 'sonalikachandra05@gmail.com', 'Legacy Accounts Deve', 'your.email+fakedata28441@gmail.com', '45'),
(4, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', 'uploads/id_proof/1.jpg', 'Timmothy_Hilpert77', 'uploads/photos/2.jpg', 'knjbhjngv, lmkjh, kmh, kmh, 987', 'kmjb, kjbh, mnb,   kjjh, 9876', 'Customer Markets Con', 'sonalikachandra05@gmail.com', 'Legacy Accounts Deve', 'your.email+fakedata28441@gmail.com', '45'),
(5, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', 'uploads/id_proof/1.jpg', 'Timmothy_Hilpert77', 'uploads/photos/2.jpg', 'knjbhjngv, lmkjh, kmh, kmh, 987', 'kmjb, kjbh, mnb,   kjjh, 9876', 'Customer Markets Con', 'sonalikachandra05@gmail.com', 'Legacy Accounts Deve', 'your.email+fakedata28441@gmail.com', '45'),
(6, '', '', '', '', '0000-00-00', '', '', '', '', NULL, '', NULL, ', , , , ', ', , , , ', '', '', '', '', ''),
(7, '', '', '', '', '0000-00-00', '', '', '', '', NULL, '', NULL, ', , , , ', ', , , , ', '', 'sonalikachandra05@gmail.com', '', '', ''),
(8, '', '', '', '', '0000-00-00', '', '', '', '', NULL, '', NULL, ', , , , ', ', , , , ', '', 'sonalikachandra05@gmail.com', '', '', ''),
(9, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', 'uploads/id_proof/clothes-1.jpg', 'Timmothy_Hilpert77', 'uploads/photos/clothes-2.jpg', 'mn, kmj, mj, okj, 987', 'mnb, mn, kmjn, jhgf, 876', 'Customer Markets Con', 'sonalikachandra05@gmail.com', 'Legacy Accounts Deve', 'your.email+fakedata28441@gmail.com', '45'),
(10, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', 'uploads/id_proof/2.jpg', 'Timmothy_Hilpert77', 'uploads/photos/1.jpg', 'khjj, mlnk, kjhvg, bnv, 9867', 'mknjbh, mkn, mnjbh,  njhg, 9876', 'Customer Markets Con', 'sanjaybharti666777@gmail.com', 'Legacy Accounts Deve', 'your.email+fakedata28441@gmail.com', '45');

-- --------------------------------------------------------

--
-- Table structure for table `personal_infos`
--

CREATE TABLE `personal_infos` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `correspondence_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `alternate_mobile` varchar(20) DEFAULT NULL,
  `alternate_email` varchar(100) DEFAULT NULL,
  `landline_number` varchar(20) DEFAULT NULL,
  `id_proof_path` varchar(255) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phd_supervision`
--

CREATE TABLE `phd_supervision` (
  `id` int(11) NOT NULL,
  `scholar_name` varchar(255) NOT NULL,
  `thesis_title` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phd_supervision`
--

INSERT INTO `phd_supervision` (`id`, `scholar_name`, `thesis_title`, `role`, `status`, `year`) VALUES
(1, 'sd', 'Excepteur dolore lab', 'Supervisor with no Co-supervisor', 'Sapiente odit quod p', '1986'),
(2, 'Ut recusandae Magni', 'Pariatur Sit tempor', 'Supervisor with no Co-supervisor', 'Molestiae tenetur re', '2014'),
(3, 'Quis tempore minim ', 'Omnis velit amet po', 'Supervisor with Co-supervisor', 'Aut eaque cumque quo', '2007'),
(4, 'sd', 'Excepteur dolore lab', 'Supervisor with no Co-supervisor', 'Sapiente odit quod p', '1986'),
(5, 'Ut recusandae Magni', 'Pariatur Sit tempor', 'Supervisor with no Co-supervisor', 'Molestiae tenetur re', '2014'),
(6, 'Quis tempore minim ', 'Omnis velit amet po', 'Supervisor with Co-supervisor', 'Aut eaque cumque quo', '2007'),
(7, 'sd', 'Excepteur dolore lab', 'Supervisor with no Co-supervisor', 'Sapiente odit quod p', '1986'),
(8, 'Ut recusandae Magni', 'Pariatur Sit tempor', 'Supervisor with no Co-supervisor', 'Molestiae tenetur re', '2014'),
(9, 'Quis tempore minim ', 'Omnis velit amet po', 'Supervisor with Co-supervisor', 'Aut eaque cumque quo', '2007'),
(10, 'sd', 'Excepteur dolore lab', 'Supervisor with no Co-supervisor', 'Sapiente odit quod p', '1986'),
(11, 'Ut recusandae Magni', 'Pariatur Sit tempor', 'Supervisor with no Co-supervisor', 'Molestiae tenetur re', '2014'),
(12, 'Quis tempore minim ', 'Omnis velit amet po', 'Supervisor with Co-supervisor', 'Aut eaque cumque quo', '2007'),
(13, 'sd', 'Excepteur dolore lab', 'Supervisor with no Co-supervisor', 'Sapiente odit quod p', '1986'),
(14, 'Ut recusandae Magni', 'Pariatur Sit tempor', 'Supervisor with no Co-supervisor', 'Molestiae tenetur re', '2014'),
(15, 'Quis tempore minim ', 'Omnis velit amet po', 'Supervisor with Co-supervisor', 'Aut eaque cumque quo', '2007'),
(16, 'sd', 'Excepteur dolore lab', 'Supervisor with no Co-supervisor', 'Sapiente odit quod p', '1986'),
(17, 'Ut recusandae Magni', 'Pariatur Sit tempor', 'Supervisor with no Co-supervisor', 'Molestiae tenetur re', '2014'),
(18, 'Quis tempore minim ', 'Omnis velit amet po', 'Supervisor with Co-supervisor', 'Aut eaque cumque quo', '2007'),
(19, 'sd', 'Excepteur dolore lab', 'Supervisor with no Co-supervisor', 'Sapiente odit quod p', '1986'),
(20, 'Ut recusandae Magni', 'Pariatur Sit tempor', 'Supervisor with no Co-supervisor', 'Molestiae tenetur re', '2014'),
(21, 'Quis tempore minim ', 'Omnis velit amet po', 'Supervisor with Co-supervisor', 'Aut eaque cumque quo', '2007');

-- --------------------------------------------------------

--
-- Table structure for table `professional_service`
--

CREATE TABLE `professional_service` (
  `id` int(11) NOT NULL,
  `service_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `professional_service`
--

INSERT INTO `professional_service` (`id`, `service_details`) VALUES
(1, '<p>jkl</p>\r\n'),
(2, '<p>uggu hih</p>\r\n'),
(3, '<p>jhghf</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `professional_training`
--

CREATE TABLE `professional_training` (
  `id` int(11) NOT NULL,
  `training_type` varchar(255) NOT NULL,
  `organisation` varchar(255) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `professional_training`
--

INSERT INTO `professional_training` (`id`, `training_type`, `organisation`, `year`, `duration`) VALUES
(1, 'Omnis nemo ipsum est recusandae.', 'Inventore voluptate tempore a ipsam maiores magni.', 0, 'Latvia'),
(2, 'Hic tempora ipsum praesentium possimus.', 'Totam aliquid fuga quibusdam.', 0, 'Brazil'),
(3, 'At deleniti vel harum.', 'Quod placeat quasi nam dolor ipsa dolore dolores ad.', 0, 'Cayman Islands'),
(4, 'Omnis nemo ipsum est recusandae.', 'Inventore voluptate tempore a ipsam maiores magni.', 0, 'Latvia'),
(5, 'Hic tempora ipsum praesentium possimus.', 'Totam aliquid fuga quibusdam.', 0, 'Brazil'),
(6, 'At deleniti vel harum.', 'Quod placeat quasi nam dolor ipsa dolore dolores ad.', 0, 'Cayman Islands'),
(7, 'Omnis nemo ipsum est recusandae.', 'Inventore voluptate tempore a ipsam maiores magni.', 0, 'Latvia'),
(8, 'Hic tempora ipsum praesentium possimus.', 'Totam aliquid fuga quibusdam.', 0, 'Brazil'),
(9, 'At deleniti vel harum.', 'Quod placeat quasi nam dolor ipsa dolore dolores ad.', 0, 'Cayman Islands');

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `journal` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `impact_factor` float DEFAULT NULL,
  `doi` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `author`, `title`, `journal`, `year`, `impact_factor`, `doi`, `status`) VALUES
(1, 'Quibusdam vel sunt quisquam ipsa repellat.', 'Forward Paradigm Liaison', 'Reinhold Lowe', 0, 0, 'Libero sint sequi.', 'accepted'),
(2, 'Enim excepturi eos facere officiis quo.', 'Product Operations Liaison', 'Freda Hegmann', 0, 0, 'Quia alias dolor veritatis eos illum.', 'accepted'),
(3, 'Sit optio facere consectetur tempora laborum esse.', 'Product Markets Orchestrator', 'Whitney Mills', 0, 0, 'Natus sit ducimus.', 'published'),
(4, 'Quidem eius adipisci enim itaque architecto ipsum earum possimus.', 'Global Accountability Orchestrator', '', 0, 0, 'Vero impedit similique harum.', 'accepted'),
(5, 'Quibusdam vel sunt quisquam ipsa repellat.', 'Forward Paradigm Liaison', 'Reinhold Lowe', 0, 0, 'Libero sint sequi.', 'accepted'),
(6, 'Enim excepturi eos facere officiis quo.', 'Product Operations Liaison', 'Freda Hegmann', 0, 0, 'Quia alias dolor veritatis eos illum.', 'accepted'),
(7, 'Sit optio facere consectetur tempora laborum esse.', 'Product Markets Orchestrator', 'Whitney Mills', 0, 0, 'Natus sit ducimus.', 'published'),
(8, 'Quidem eius adipisci enim itaque architecto ipsum earum possimus.', 'Global Accountability Orchestrator', '', 0, 0, 'Vero impedit similique harum.', 'accepted'),
(9, 'Quibusdam vel sunt quisquam ipsa repellat.', 'Forward Paradigm Liaison', 'Reinhold Lowe', 0, 0, 'Libero sint sequi.', 'accepted'),
(10, 'Enim excepturi eos facere officiis quo.', 'Product Operations Liaison', 'Freda Hegmann', 0, 0, 'Quia alias dolor veritatis eos illum.', 'accepted'),
(11, 'Sit optio facere consectetur tempora laborum esse.', 'Product Markets Orchestrator', 'Whitney Mills', 0, 0, 'Natus sit ducimus.', 'published'),
(12, 'Quidem eius adipisci enim itaque architecto ipsum earum possimus.', 'Global Accountability Orchestrator', '', 0, 0, 'Vero impedit similique harum.', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `publications_summary`
--

CREATE TABLE `publications_summary` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `summary_journal_inter` int(11) DEFAULT NULL,
  `summary_journal` int(11) DEFAULT NULL,
  `summary_conf_inter` int(11) DEFAULT NULL,
  `summary_conf_national` int(11) DEFAULT NULL,
  `patent_publish` int(11) DEFAULT NULL,
  `summary_book` int(11) DEFAULT NULL,
  `summary_book_chapter` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publications_summary`
--

INSERT INTO `publications_summary` (`id`, `summary_journal_inter`, `summary_journal`, `summary_conf_inter`, `summary_conf_national`, `patent_publish`, `summary_book`, `summary_book_chapter`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, 0, 0, 0, 0, 0, 0),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 0, 0, 0, 0, 0, 0, 0),
(32, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 0, 0, 0, 0, 0, 0, 0),
(114, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referees`
--

CREATE TABLE `referees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `association` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referees`
--

INSERT INTO `referees` (`id`, `name`, `position`, `association`, `organization`, `email`, `contact_no`) VALUES
(1, 'uYolanda Cummerata', 'Ullam illum alias neque.', 'Research Collaborator', 'Vitae voluptate temporibus minima architecto nisi assumenda.', 'your.email+fakedata18670@gmail.com', '656-293-5557'),
(2, 'Ansel Hamill', 'Architecto placeat saepe qui consectetur doloremque hic.', 'Thesis Supervisor', 'Harum quidem similique sint.', 'your.email+fakedata30661@gmail.com', '420-771-6231'),
(3, 'William Welch', 'Modi libero sunt voluptate nam fuga occaecati debitis in reprehenderit.', 'Thesis Supervisor', 'Modi quod repudiandae occaecati sed distinctio eveniet.', 'your.email+fakedata91750@gmail.com', '676-141-7334'),
(4, 'uYolanda Cummerata', 'Ullam illum alias neque.', 'Research Collaborator', 'Vitae voluptate temporibus minima architecto nisi assumenda.', 'your.email+fakedata18670@gmail.com', '656-293-5557'),
(5, 'Ansel Hamill', 'Architecto placeat saepe qui consectetur doloremque hic.', 'Thesis Supervisor', 'Harum quidem similique sint.', 'your.email+fakedata30661@gmail.com', '420-771-6231'),
(6, 'William Welch', 'Modi libero sunt voluptate nam fuga occaecati debitis in reprehenderit.', 'Thesis Supervisor', 'Modi quod repudiandae occaecati sed distinctio eveniet.', 'your.email+fakedata91750@gmail.com', '676-141-7334'),
(7, 'uYolanda Cummerata', 'Ullam illum alias neque.', 'Research Collaborator', 'Vitae voluptate temporibus minima architecto nisi assumenda.', 'your.email+fakedata18670@gmail.com', '656-293-5557'),
(8, 'Ansel Hamill', 'Architecto placeat saepe qui consectetur doloremque hic.', 'Thesis Supervisor', 'Harum quidem similique sint.', 'your.email+fakedata30661@gmail.com', '420-771-6231'),
(9, 'William Welch', 'Modi libero sunt voluptate nam fuga occaecati debitis in reprehenderit.', 'Thesis Supervisor', 'Modi quod repudiandae occaecati sed distinctio eveniet.', 'your.email+fakedata91750@gmail.com', '676-141-7334'),
(10, 'uYolanda Cummerata', 'Ullam illum alias neque.', 'Research Collaborator', 'Vitae voluptate temporibus minima architecto nisi assumenda.', 'your.email+fakedata18670@gmail.com', '656-293-5557'),
(11, 'Ansel Hamill', 'Architecto placeat saepe qui consectetur doloremque hic.', 'Thesis Supervisor', 'Harum quidem similique sint.', 'your.email+fakedata30661@gmail.com', '420-771-6231'),
(12, 'William Welch', 'Modi libero sunt voluptate nam fuga occaecati debitis in reprehenderit.', 'Thesis Supervisor', 'Modi quod repudiandae occaecati sed distinctio eveniet.', 'your.email+fakedata91750@gmail.com', '676-141-7334'),
(13, 'uYolanda Cummerata', 'Ullam illum alias neque.', 'Research Collaborator', 'Vitae voluptate temporibus minima architecto nisi assumenda.', 'your.email+fakedata18670@gmail.com', '656-293-5557'),
(14, 'Ansel Hamill', 'Architecto placeat saepe qui consectetur doloremque hic.', 'Thesis Supervisor', 'Harum quidem similique sint.', 'your.email+fakedata30661@gmail.com', '420-771-6231'),
(15, 'William Welch', 'Modi libero sunt voluptate nam fuga occaecati debitis in reprehenderit.', 'Thesis Supervisor', 'Modi quod repudiandae occaecati sed distinctio eveniet.', 'your.email+fakedata91750@gmail.com', '676-141-7334');

-- --------------------------------------------------------

--
-- Table structure for table `research_contributions`
--

CREATE TABLE `research_contributions` (
  `id` int(11) NOT NULL,
  `research_statement` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `research_contributions`
--

INSERT INTO `research_contributions` (`id`, `research_statement`) VALUES
(1, '<p>abc</p>\r\n'),
(2, '<p>njbh hjj</p>\r\n'),
(3, '<p>chgknk</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `research_experience`
--

CREATE TABLE `research_experience` (
  `id` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `institute` varchar(255) DEFAULT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `research_experience`
--

INSERT INTO `research_experience` (`id`, `position`, `institute`, `supervisor`, `date_of_joining`, `date_of_leaving`, `duration`) VALUES
(1, 'Numquam iusto eius.', 'Minnesota', 'Laborum omnis quo inventore quod tempora.', '0000-00-00', '0000-00-00', 2024),
(2, 'Maiores fugiat quos.', 'New Hampshire', 'Magni libero harum molestias.', '0000-00-00', '0000-00-00', 2023),
(3, 'Libero nemo sed praesentium error.', 'California', 'Maiores perspiciatis reiciendis iste error dicta natus repellat.', '0000-00-00', '0000-00-00', 2024),
(4, 'Nesciunt magnam est vero libero veniam neque.', 'Kentucky', 'Qui quos quos impedit alias.', '0000-00-00', '0000-00-00', 2024),
(5, 'Numquam iusto eius.', 'Minnesota', 'Laborum omnis quo inventore quod tempora.', '0000-00-00', '0000-00-00', 2024),
(6, 'Maiores fugiat quos.', 'New Hampshire', 'Magni libero harum molestias.', '0000-00-00', '0000-00-00', 2023),
(7, 'Libero nemo sed praesentium error.', 'California', 'Maiores perspiciatis reiciendis iste error dicta natus repellat.', '0000-00-00', '0000-00-00', 2024),
(8, 'Nesciunt magnam est vero libero veniam neque.', 'Kentucky', 'Qui quos quos impedit alias.', '0000-00-00', '0000-00-00', 2024),
(9, 'Numquam iusto eius.', 'Minnesota', 'Laborum omnis quo inventore quod tempora.', '0000-00-00', '0000-00-00', 2024),
(10, 'Maiores fugiat quos.', 'New Hampshire', 'Magni libero harum molestias.', '0000-00-00', '0000-00-00', 2023),
(11, 'Libero nemo sed praesentium error.', 'California', 'Maiores perspiciatis reiciendis iste error dicta natus repellat.', '0000-00-00', '0000-00-00', 2024),
(12, 'Nesciunt magnam est vero libero veniam neque.', 'Kentucky', 'Qui quos quos impedit alias.', '0000-00-00', '0000-00-00', 2024);

-- --------------------------------------------------------

--
-- Table structure for table `schooldetails`
--

CREATE TABLE `schooldetails` (
  `ID` int(11) NOT NULL,
  `EducationalQualificationsID` int(11) DEFAULT NULL,
  `ExamType` varchar(50) DEFAULT NULL,
  `School` varchar(255) DEFAULT NULL,
  `YearOfPassing` varchar(10) DEFAULT NULL,
  `PercentageGrade` varchar(20) DEFAULT NULL,
  `DivisionClass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specialization`
--

CREATE TABLE `specialization` (
  `id` int(11) NOT NULL,
  `area_of_specialization` text DEFAULT NULL,
  `current_area_of_research` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sponsored_projects`
--

CREATE TABLE `sponsored_projects` (
  `id` int(11) NOT NULL,
  `sponsoring_agency` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sanctioned_amount` decimal(10,2) DEFAULT NULL,
  `period` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sponsored_projects`
--

INSERT INTO `sponsored_projects` (`id`, `sponsoring_agency`, `title`, `sanctioned_amount`, `period`, `role`, `status`) VALUES
(1, 'Porro aspernatur doloribus corrupti architecto ipsa animi.', 'Human Response Liaison', 0.00, 'Optio reprehenderit eum.', 'Co-investigator', 'Washington'),
(2, 'Ullam earum ab eaque a.', 'National Response Coordinator', 0.00, 'Provident culpa explicabo quidem voluptatem aspernatur aliquid.', 'Principal Investigator', 'Arizona'),
(3, 'Veniam at corporis laudantium.', 'Dynamic Web Orchestrator', 0.00, 'Quasi eius quibusdam ab vero dolore nostrum molestias quas odio.', 'Principal Investigator', 'Illinois'),
(4, 'Porro aspernatur doloribus corrupti architecto ipsa animi.', 'Human Response Liaison', 0.00, 'Optio reprehenderit eum.', 'Co-investigator', 'Washington'),
(5, 'Ullam earum ab eaque a.', 'National Response Coordinator', 0.00, 'Provident culpa explicabo quidem voluptatem aspernatur aliquid.', 'Principal Investigator', 'Arizona'),
(6, 'Veniam at corporis laudantium.', 'Dynamic Web Orchestrator', 0.00, 'Quasi eius quibusdam ab vero dolore nostrum molestias quas odio.', 'Principal Investigator', 'Illinois'),
(7, 'Porro aspernatur doloribus corrupti architecto ipsa animi.', 'Human Response Liaison', 0.00, 'Optio reprehenderit eum.', 'Co-investigator', 'Washington'),
(8, 'Ullam earum ab eaque a.', 'National Response Coordinator', 0.00, 'Provident culpa explicabo quidem voluptatem aspernatur aliquid.', 'Principal Investigator', 'Arizona'),
(9, 'Veniam at corporis laudantium.', 'Dynamic Web Orchestrator', 0.00, 'Quasi eius quibusdam ab vero dolore nostrum molestias quas odio.', 'Principal Investigator', 'Illinois');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_experience`
--

CREATE TABLE `teaching_experience` (
  `id` int(11) NOT NULL,
  `position` varchar(255) DEFAULT NULL,
  `employer` varchar(255) DEFAULT NULL,
  `course_taught` varchar(255) DEFAULT NULL,
  `ug_pg` varchar(50) DEFAULT NULL,
  `no_of_students` int(11) DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `date_of_leaving` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teaching_experience`
--

INSERT INTO `teaching_experience` (`id`, `position`, `employer`, `course_taught`, `ug_pg`, `no_of_students`, `date_of_joining`, `date_of_leaving`, `duration`) VALUES
(1, 'Molestiae aliquam ducimus ullam incidunt accusamus recusandae. Placeat qui saepe commodi at eligendi sapiente ipsam beatae. Sint occaecati dolores adipisci.Eos exercitationem velit quisquam sequi laborum eos. Tenetur optio reiciendis repudiandae tempore e', 'Nam laboriosam labore tenetur rem dolorem. Quas quis accusamus cum autem nemo odio numquam. Atque cumque ut assumenda.Ipsam deleniti distinctio voluptatum. Quis possimus nostrum. Explicabo quis tempora nihil maiores error.Nihil necessitatibus architecto s', 'Bahrain', 'Quae sit officia deserunt vero explicabo ipsam sun', 619, '0000-00-00', '0000-00-00', 0),
(2, 'Atque in vel quisquam. Consectetur in saepe. Dignissimos itaque occaecati quasi facilis sunt eius mollitia.Et hic dolorum veritatis rerum labore error inventore maiores. Quod fuga ratione maxime magnam laudantium aspernatur cupiditate. Sapiente neque opti', 'Vel iste modi. Voluptates commodi corporis consequuntur illum nobis qui saepe optio. Laboriosam ullam deleniti.Asperiores optio unde corporis quasi. Quasi ipsa adipisci vitae facilis ipsam. Odio corrupti saepe occaecati inventore doloribus neque cumque sa', 'China', 'Dignissimos molestiae illo cum quo consectetur. Co', 574, '0000-00-00', '0000-00-00', 0),
(3, 'Adipisci dolor aperiam excepturi sequi aliquid facilis laudantium quibusdam sequi. Deserunt sint omnis fugiat modi. Laborum dolore expedita est cupiditate qui aut rerum.Pariatur quasi minus cum eligendi quos soluta. Provident itaque expedita. Iure accusan', 'Suscipit culpa labore cum nostrum cumque quisquam. Soluta cupiditate cum a nobis illum. Sapiente quibusdam rerum animi earum.Unde vel eligendi itaque autem quis aut dolor modi. Deserunt cupiditate quidem repellat dolore. Minima ipsa nostrum qui exercitati', 'Republic of Korea', 'Occaecati vero officiis. Dolor atque quam expedita', 624, '0000-00-00', '0000-00-00', 0),
(4, 'Molestiae aliquam ducimus ullam incidunt accusamus recusandae. Placeat qui saepe commodi at eligendi sapiente ipsam beatae. Sint occaecati dolores adipisci.Eos exercitationem velit quisquam sequi laborum eos. Tenetur optio reiciendis repudiandae tempore e', 'Nam laboriosam labore tenetur rem dolorem. Quas quis accusamus cum autem nemo odio numquam. Atque cumque ut assumenda.Ipsam deleniti distinctio voluptatum. Quis possimus nostrum. Explicabo quis tempora nihil maiores error.Nihil necessitatibus architecto s', 'Bahrain', 'Quae sit officia deserunt vero explicabo ipsam sun', 619, '0000-00-00', '0000-00-00', 0),
(5, 'Atque in vel quisquam. Consectetur in saepe. Dignissimos itaque occaecati quasi facilis sunt eius mollitia.Et hic dolorum veritatis rerum labore error inventore maiores. Quod fuga ratione maxime magnam laudantium aspernatur cupiditate. Sapiente neque opti', 'Vel iste modi. Voluptates commodi corporis consequuntur illum nobis qui saepe optio. Laboriosam ullam deleniti.Asperiores optio unde corporis quasi. Quasi ipsa adipisci vitae facilis ipsam. Odio corrupti saepe occaecati inventore doloribus neque cumque sa', 'China', 'Dignissimos molestiae illo cum quo consectetur. Co', 574, '0000-00-00', '0000-00-00', 0),
(6, 'Adipisci dolor aperiam excepturi sequi aliquid facilis laudantium quibusdam sequi. Deserunt sint omnis fugiat modi. Laborum dolore expedita est cupiditate qui aut rerum.Pariatur quasi minus cum eligendi quos soluta. Provident itaque expedita. Iure accusan', 'Suscipit culpa labore cum nostrum cumque quisquam. Soluta cupiditate cum a nobis illum. Sapiente quibusdam rerum animi earum.Unde vel eligendi itaque autem quis aut dolor modi. Deserunt cupiditate quidem repellat dolore. Minima ipsa nostrum qui exercitati', 'Republic of Korea', 'Occaecati vero officiis. Dolor atque quam expedita', 624, '0000-00-00', '0000-00-00', 0),
(7, 'Molestiae aliquam ducimus ullam incidunt accusamus recusandae. Placeat qui saepe commodi at eligendi sapiente ipsam beatae. Sint occaecati dolores adipisci.Eos exercitationem velit quisquam sequi laborum eos. Tenetur optio reiciendis repudiandae tempore e', 'Nam laboriosam labore tenetur rem dolorem. Quas quis accusamus cum autem nemo odio numquam. Atque cumque ut assumenda.Ipsam deleniti distinctio voluptatum. Quis possimus nostrum. Explicabo quis tempora nihil maiores error.Nihil necessitatibus architecto s', 'Bahrain', 'Quae sit officia deserunt vero explicabo ipsam sun', 619, '0000-00-00', '0000-00-00', 0),
(8, 'Atque in vel quisquam. Consectetur in saepe. Dignissimos itaque occaecati quasi facilis sunt eius mollitia.Et hic dolorum veritatis rerum labore error inventore maiores. Quod fuga ratione maxime magnam laudantium aspernatur cupiditate. Sapiente neque opti', 'Vel iste modi. Voluptates commodi corporis consequuntur illum nobis qui saepe optio. Laboriosam ullam deleniti.Asperiores optio unde corporis quasi. Quasi ipsa adipisci vitae facilis ipsam. Odio corrupti saepe occaecati inventore doloribus neque cumque sa', 'China', 'Dignissimos molestiae illo cum quo consectetur. Co', 574, '0000-00-00', '0000-00-00', 0),
(9, 'Adipisci dolor aperiam excepturi sequi aliquid facilis laudantium quibusdam sequi. Deserunt sint omnis fugiat modi. Laborum dolore expedita est cupiditate qui aut rerum.Pariatur quasi minus cum eligendi quos soluta. Provident itaque expedita. Iure accusan', 'Suscipit culpa labore cum nostrum cumque quisquam. Soluta cupiditate cum a nobis illum. Sapiente quibusdam rerum animi earum.Unde vel eligendi itaque autem quis aut dolor modi. Deserunt cupiditate quidem repellat dolore. Minima ipsa nostrum qui exercitati', 'Republic of Korea', 'Occaecati vero officiis. Dolor atque quam expedita', 624, '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teaching_plans`
--

CREATE TABLE `teaching_plans` (
  `id` int(11) NOT NULL,
  `teaching_statement` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teaching_plans`
--

INSERT INTO `teaching_plans` (`id`, `teaching_statement`) VALUES
(1, '<p>def</p>\r\n'),
(2, '<p>jnj&nbsp; nji</p>\r\n'),
(3, '<p>ijhgfuu</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ugdetails`
--

CREATE TABLE `ugdetails` (
  `ID` int(11) NOT NULL,
  `EducationalQualificationsID` int(11) DEFAULT NULL,
  `DegreeCertificate` varchar(255) DEFAULT NULL,
  `UniversityInstitute` varchar(255) DEFAULT NULL,
  `BranchStream` varchar(255) DEFAULT NULL,
  `YearOfJoining` varchar(10) DEFAULT NULL,
  `YearOfCompletion` varchar(10) DEFAULT NULL,
  `DurationInYears` int(11) DEFAULT NULL,
  `PercentageCGPA` varchar(20) DEFAULT NULL,
  `DivisionClass` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `MaritalStatus` varchar(20) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `IDProof` varchar(50) DEFAULT NULL,
  `FathersName` varchar(50) DEFAULT NULL,
  `CorrespondenceAddress` text DEFAULT NULL,
  `PermanentAddress` text DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `AlternateMobile` varchar(15) DEFAULT NULL,
  `AlternateEmail` varchar(100) DEFAULT NULL,
  `LandlineNumber` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`UserID`, `FirstName`, `MiddleName`, `LastName`, `Nationality`, `DateOfBirth`, `Gender`, `MaritalStatus`, `Category`, `IDProof`, `FathersName`, `CorrespondenceAddress`, `PermanentAddress`, `Mobile`, `Email`, `AlternateMobile`, `AlternateEmail`, `LandlineNumber`) VALUES
(1, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', '', 'wf', 'egve', 'Customer Market', 'sonalikachandra05@gmail.com', 'Legacy Accounts', 'your.email+fakedata28441@gmail.com', '45'),
(2, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', '', 'Street: bm\nCity: mnnk\nState: jbj\nCountry: kn\nPincode: 78675\n', 'Street: jhgcf\nCity: kjhgvcf\nState: kjhvgc\nCountry: hgf\nPincode: 9876\n', 'Customer Market', 'sonalikachandra05@gmail.com', 'Legacy Accounts', 'your.email+fakedata28441@gmail.com', '45'),
(3, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', '', 'Street: jbnj\nCity: knj\nState: knj\nCountry: ljkjh\nPincode: ljhg\n', 'Street: nbvc\nCity: lknjbhvg\nState: jv\nCountry:  hg\nPincode: kjjhg\n', 'Customer Market', 'sonalikachandra05@gmail.com', 'Legacy Accounts', 'your.email+fakedata28441@gmail.com', '45'),
(35, 'Trace', 'Danyka Danie', 'McGlynn', ' Indian', '0000-00-00', 'Male', 'Married', 'UR', 'AADHAR', '', 'Street: kh\nCity: kjhg\nState: kjhg\nCountry: kjhbg\nPincode: 9876\n', 'Street: kjh\nCity: kjhg\nState: kjh\nCountry:   kjh\nPincode: 9876\n', 'Customer Market', 'sonalikachandra05@gmail.com', 'Legacy Accounts', 'your.email+fakedata28441@gmail.com', '45');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL,
  `AdvertisementNumber` varchar(255) DEFAULT NULL,
  `DateOfApplication` date DEFAULT NULL,
  `ApplicationNumber` varchar(255) DEFAULT NULL,
  `PostAppliedFor` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userid`, `AdvertisementNumber`, `DateOfApplication`, `ApplicationNumber`, `PostAppliedFor`, `Department`) VALUES
(1, 'IITI/FACREC-CHE/2023/JULY/02', '0000-00-00', '17690809876', 'Professor', 'Chemical Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(1, 'Sonalika Chandra', 'sonalikachandra79@gmail.com', '$2y$10$8z7wWKOEPCgQ9L7goz9VTe/MgTmVoBRf3q5GK6p1Iu5ge38EbNEoS', 0, 'verified'),
(2, 'Sonalika Chandra', 'sonalikachandra05@gmail.com', '$2y$10$gGvec8XIIfovSo7okUgkcuHS9ItB/I/MbAn6B1haagvnj3rTdkMly', 0, 'verified'),
(4, 'Shivangi', 'shivangichandra806@gmail.com', '$2y$10$7Mjel0.JfwsZqGx9.siQDOz3sfpQv7oeBeLRY1Dhl2V3N3z.nqdZe', 0, 'verified'),
(5, 'suryansh', 'sanjaybharti666777@gmail.com', '$2y$10$VKtcXTCu.Fiz2pSBSWnpsuTA0r8ufSenx29xXKSZtq.n8YG8Y0Xhy', 0, 'verified'),
(6, 'surya', 'ksuryansh303@gmail.com', '$2y$10$AIuZ81xHVJCZDGsovZxmvOEdI2gs4LInDMCnv4NgueOiOIgb9u9ya', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicdetails`
--
ALTER TABLE `academicdetails`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EducationalQualificationsID` (`EducationalQualificationsID`);

--
-- Indexes for table `additionaleducationalqualifications`
--
ALTER TABLE `additionaleducationalqualifications`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `additional_data`
--
ALTER TABLE `additional_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bachelors_supervision`
--
ALTER TABLE `bachelors_supervision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_chapters`
--
ALTER TABLE `book_chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conference_publications`
--
ALTER TABLE `conference_publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultancy_projects`
--
ALTER TABLE `consultancy_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `declarations`
--
ALTER TABLE `declarations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educationalqualifications`
--
ALTER TABLE `educationalqualifications`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `educationalqualifications_ibfk_1` (`UserID`);

--
-- Indexes for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_details`
--
ALTER TABLE `employment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employment_history`
--
ALTER TABLE `employment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_uploads`
--
ALTER TABLE `file_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `journal_publications`
--
ALTER TABLE `journal_publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters_supervision`
--
ALTER TABLE `masters_supervision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_relevant_info`
--
ALTER TABLE `other_relevant_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patents`
--
ALTER TABLE `patents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_infos`
--
ALTER TABLE `personal_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phd_supervision`
--
ALTER TABLE `phd_supervision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professional_service`
--
ALTER TABLE `professional_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professional_training`
--
ALTER TABLE `professional_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publications_summary`
--
ALTER TABLE `publications_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referees`
--
ALTER TABLE `referees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_contributions`
--
ALTER TABLE `research_contributions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_experience`
--
ALTER TABLE `research_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schooldetails`
--
ALTER TABLE `schooldetails`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EducationalQualificationsID` (`EducationalQualificationsID`);

--
-- Indexes for table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsored_projects`
--
ALTER TABLE `sponsored_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teaching_experience`
--
ALTER TABLE `teaching_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teaching_plans`
--
ALTER TABLE `teaching_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ugdetails`
--
ALTER TABLE `ugdetails`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ugdetails_ibfk_1` (`EducationalQualificationsID`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicdetails`
--
ALTER TABLE `academicdetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `additionaleducationalqualifications`
--
ALTER TABLE `additionaleducationalqualifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `additional_data`
--
ALTER TABLE `additional_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bachelors_supervision`
--
ALTER TABLE `bachelors_supervision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `book_chapters`
--
ALTER TABLE `book_chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `conference_publications`
--
ALTER TABLE `conference_publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `consultancy_projects`
--
ALTER TABLE `consultancy_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `declarations`
--
ALTER TABLE `declarations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `educationalqualifications`
--
ALTER TABLE `educationalqualifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employment_details`
--
ALTER TABLE `employment_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employment_history`
--
ALTER TABLE `employment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `file_uploads`
--
ALTER TABLE `file_uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `journal_publications`
--
ALTER TABLE `journal_publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `masters_supervision`
--
ALTER TABLE `masters_supervision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `other_relevant_info`
--
ALTER TABLE `other_relevant_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patents`
--
ALTER TABLE `patents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_infos`
--
ALTER TABLE `personal_infos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phd_supervision`
--
ALTER TABLE `phd_supervision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `professional_service`
--
ALTER TABLE `professional_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `professional_training`
--
ALTER TABLE `professional_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `publications_summary`
--
ALTER TABLE `publications_summary`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `referees`
--
ALTER TABLE `referees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `research_contributions`
--
ALTER TABLE `research_contributions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `research_experience`
--
ALTER TABLE `research_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `schooldetails`
--
ALTER TABLE `schooldetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sponsored_projects`
--
ALTER TABLE `sponsored_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teaching_experience`
--
ALTER TABLE `teaching_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teaching_plans`
--
ALTER TABLE `teaching_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ugdetails`
--
ALTER TABLE `ugdetails`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academicdetails`
--
ALTER TABLE `academicdetails`
  ADD CONSTRAINT `academicdetails_ibfk_1` FOREIGN KEY (`EducationalQualificationsID`) REFERENCES `educationalqualifications` (`ID`);

--
-- Constraints for table `educationalqualifications`
--
ALTER TABLE `educationalqualifications`
  ADD CONSTRAINT `educationalqualifications_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userdata` (`UserID`) ON DELETE CASCADE;

--
-- Constraints for table `schooldetails`
--
ALTER TABLE `schooldetails`
  ADD CONSTRAINT `schooldetails_ibfk_1` FOREIGN KEY (`EducationalQualificationsID`) REFERENCES `educationalqualifications` (`ID`);

--
-- Constraints for table `ugdetails`
--
ALTER TABLE `ugdetails`
  ADD CONSTRAINT `ugdetails_ibfk_1` FOREIGN KEY (`EducationalQualificationsID`) REFERENCES `userinfo` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
