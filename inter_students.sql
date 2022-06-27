-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2021 at 05:08 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mfu`
--

-- --------------------------------------------------------

--
-- Table structure for table `inter_students`
--

CREATE TABLE `inter_students` (
  `number` int(11) DEFAULT NULL,
  `applicant_no` bigint(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `academic_year` varchar(6) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `conditions` varchar(255) DEFAULT NULL,
  `english_type` varchar(255) DEFAULT NULL,
  `english_score` decimal(10,0) DEFAULT NULL,
  `title` varchar(2) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `apply_date` date DEFAULT NULL,
  `sent_date` date DEFAULT NULL,
  `accepted_date` date DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `programme` varchar(255) DEFAULT NULL,
  `news_online` varchar(5) DEFAULT NULL,
  `news_embassy` varchar(5) DEFAULT NULL,
  `news_university` varchar(5) DEFAULT NULL,
  `news_exhibition` varchar(5) DEFAULT NULL,
  `news_newsletter` varchar(5) DEFAULT NULL,
  `news_friend` varchar(5) DEFAULT NULL,
  `news_agent` varchar(5) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_facebook` varchar(255) DEFAULT NULL,
  `contact_other` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inter_students`
--

INSERT INTO `inter_students` (`number`, `applicant_no`, `type`, `subtype`, `academic_year`, `result`, `conditions`, `english_type`, `english_score`, `title`, `first_name`, `middle_name`, `last_name`, `gender`, `apply_date`, `sent_date`, `accepted_date`, `country`, `city`, `school`, `degree`, `programme`, `news_online`, `news_embassy`, `news_university`, `news_exhibition`, `news_newsletter`, `news_friend`, `news_agent`, `contact_email`, `contact_phone`, `contact_facebook`, `contact_other`) VALUES
(1,30660500740, 'Full Time', 'Agent - Moon', '1/2018', 'Accepted', '', '', '0', 'Ms', 'Gelya', 'gchadwin8@psu.edu', 'Chadwin', 'F', NULL, NULL, NULL, 'China', 'Yunnan', 'Management', 'Bachelor\'s Degree', 'B.B.A. in Business Administration', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'Chadwin@email.com', '173-212-0166', 'https://www.facebook.com/Chadwin', 'https://instagram.com/Chadwin'),
(2,30660500741, 'Scholarship', 'Agent-Moon', '2/2018', 'Accepted but Student Cancel', '', 'TOEFL(iBT)', '85', 'Ms', 'Neesherln', 'loyu@oioo.com', 'Praduvbho', 'M', NULL, NULL, NULL, 'USA', 'New York', 'Science Cosmetic', 'Doctoral Degree', 'B.Sc. in Cosmetic Science', 'TRUE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'TRUE', 'TRUE', 'polpolh@lohiio.com', '0256985631', '', ''),
(3,30666665231, 'Full Time', 'Normal', '2/2020', 'Accepted', '', 'TOEFL(ITP)Level 1', '100', 'Mr', 'Kirsten', 'Bellamy@erto.vol', 'Bellamy', 'M', NULL, NULL, NULL, 'italy', 'Rome', 'Science Cosmetic', 'Master\'s Degree', 'B.Sc. in Cosmetic Science', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'TRUE', 'FALSE', 'TRUE', 'Romeyu7898@hotmail.com', '', '', ''),
(4,30669655568, 'Scholarship', 'Agent-Tu (Aum)', '1/2021', 'Accepted', '', 'CMU-eTEGS', '68', 'Ms', 'Christy', 'Vargas66@kiol.lp', 'Vargas', 'F', NULL, NULL, NULL, 'japan', 'Nara', 'Informetion Technology', 'Bachelor\'s Degree', 'B.Sc. in Multimedia Technology and Animation', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'Vargasadr@hotmail.com', '', '', ''),
(5,30661522202, 'Full Time', 'RE-ID', '2/2019', 'Accepted', '', 'CU-TEP', '29', 'Mr', 'Pololoko', 'pololo@gyj.cjj', 'Vovoiklo', 'M', NULL, NULL, NULL, 'canada', 'Calgary', 'Informetion Technology', 'Doctoral Degree', 'M.Sc. in Information Technology', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'TRUE', 'Aileenhahaze@hotmali.com', '25630-6956-3695', '', ''),
(6,30669855523, 'Full Time', 'Agent-Moon', '2/2020', 'Accepted', '', 'IELTS', '53', 'Ms', 'Anum', 'Noel@jok.vpp', 'Noel', 'F', NULL, NULL, NULL, 'japan', 'Kyoto', 'Health Science', 'Bachelor\'s Degree', 'M.Sc. in Public Health', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'TRUE', 'TRUE', 'FALSE', 'Kyoto345@hotmail.com', '', '', ''),
(7,30660556326, 'Full Time', 'RE-ID', '2/2018', 'Accepted', '', 'TOEFL(iBT)', '99', 'Mr', 'Maximilian', 'Ortega@efty.pp', 'Ortega', 'M', NULL, NULL, NULL, 'china', 'Tianjin', 'Science Cosmetic', 'Master\'s Degree', 'B.Sc. in Beauty Technology', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Ortegar@gmail.com', '', '', ''),
(8,30661525551, 'Full Time', 'Normal', '2/2019', 'Accepted', '', 'MFU-TEP', '93', 'Ms', 'Fosuinho', 'foliog@kol.com', 'Deoply', 'F', NULL, NULL, NULL, 'Pakistan', 'Faisalabad', 'Health Science', 'Bachelor\'s Degree', 'B.Sc. in Sports and Health Science', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'TRUE', 'TRUE', 'pickerider@gmail.com ', '5623-020015-69532', '', ''),
(9,30669632561, 'Scholarship', 'Agent-AEC', '2/2019', 'Accepted', '', 'TOEFL(iBT)', '0', 'Ms', 'Poppy', 'poppy@lopk.com', 'Loviobi', 'F', NULL, NULL, NULL, 'pakistan', 'Lahore', 'Sinology', 'Master\'s Degree', 'B.A. in Chinese Language and Culture', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'TRUE', 'Kzaazz@gmail,com', '25602965478', '', ''),
(10,30668952631, 'Full Time', 'Agent-Tu (Aum)', '2/2018', 'Accepted', '', 'CU-TEP', '36', 'Ms', 'Yamamoto ', 'ameumi@jmojo.com', 'Takeshi ', 'F', NULL, NULL, NULL, 'France', 'Paris', 'Informetion Technology', 'Bachelor\'s Degree', 'B.Eng. in Computer Engineering', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', '', '', '', ''),
(11,30669566777, 'Full Time', 'Normal', '2/2020', 'Accepted', '', 'IELTS', '69', 'Ms', 'Ghokop', 'ghotdh@holp.bo', 'Votai', 'F', NULL, NULL, NULL, 'japan', 'Yokohama', 'Anti-Aging and Regenerative Medicine', 'Doctoral Degree', 'M.Sc. in Anti-Aging and Regenerative Medicine', 'FALSE', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Oloiuor@gmail.com', '', '', ''),
(12,30669366591, 'Scholarship', 'Agent-Tu (Aum)', '1/2021', 'Student Cancel', '', 'IELTS', '58', 'Ms', 'Nadeem', 'Brookes@wer.df', 'Brookes', 'F', NULL, NULL, NULL, 'canada', 'Toronto', 'Anti-Aging and Regenerative Medicine', 'Bachelor\'s Degree', 'B.CM. in Traditional Chinese Medicine', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'Brookes@hotmail.com', '', '', ''),
(13,30665895231, 'Full Time', 'Normal', '2/2018', 'Accepted', '', 'TOEFL(iBT)', '60', 'Mr', 'Kim ', 'saranghaeyo@kmail.com', 'Taehee', 'M', NULL, NULL, NULL, 'USA', 'Los angeles', 'Sinology', 'Bachelor\'s Degree', 'B.A. in Chinese Language and Culture', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'saranghaeyo@kmail.com', '0895845629', '', ''),
(14,30661526598, 'Full Time', 'Normal', '2/2018', 'Accepted', '', 'CMU-eTEGS', '89', 'Mr', 'Xi ', 'Miphu@panda.com', 'Jinphi', 'M', NULL, NULL, NULL, 'India', 'Mumbai', 'Informetion Technology', 'Master\'s Degree', 'B.Sc. in Software Engineering', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'FALSE', '', '', '', ''),
(15,30661122121, 'Full Time', 'RE-ID', '1/2021', 'Accepted', '', 'CMU-eTEGS', '63', 'Mr', 'Dave', 'Drake@wef.fg', 'Drake', 'M', NULL, NULL, NULL, 'china', 'Chongqing', 'Health Science', 'Doctoral Degree', 'Ph.D. in Food Science and Technology', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Drake@hotmail.com', '', '', ''),
(16,30668956236, 'Full Time', 'Agent-Paul', '2/2018', 'Accepted', '', 'MFU-TEP', '82', 'Ms', 'Xi ', 'Miphu@panda.com', 'Jinphi', 'F', NULL, NULL, NULL, 'India', 'Jaipur', 'Science', 'Doctoral Degree', 'M.Sc. in Food Science and Technology', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'TRUE', 'FALSE', 'lovely@gmail.com', '0985621546', '', ''),
(17,30669662301, 'Scholarship', 'Normal', '1/2021', 'Accepted', '', 'TOEFL(ITP)Level 1', '100', 'Ms', 'Mindy', 'Hodson@erg.jj', 'Hodson', 'M', NULL, NULL, NULL, 'china', 'Beijing', 'Law', 'Doctoral Degree', 'LL.M. in Laws', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'chinlp34@gmail.com', '', '', ''),
(18,30661234567, 'Full Time', 'Normal', '1/2021', 'Accepted', '', 'IELTS', '100', 'Mr', 'Dougie', 'Leblancwe@gigo.go', 'Leblanc', 'M', NULL, NULL, NULL, 'UK', 'Sheffield', 'Science Cosmetic', 'Master\'s Degree', 'B.Sc. in Cosmetic Science', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Sheffie9090@hotmail.com', '', '', ''),
(19,30665656200, 'Scholarship', 'Agent-AEC', '2/2021', 'Student Cancel', '', 'TOEFL(iBT)', '98', 'Mr', 'Christopher', 'Woodley', 'Woodley', 'M', NULL, NULL, NULL, 'china', 'Shanghai', 'Health Science', 'Doctoral Degree', 'B.Sc. in Sports and Health Science', 'TRUE', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Woodley@hotmail.com', '', '', ''),
(20,30663636362, 'Full Time', 'Normal', '2/2020', 'Accepted', '', 'TOEFL(ITP)Level 1', '100', 'Ms', 'Sienna', ' Hiltonlo@ioio.vpp', 'Hilton', 'F', NULL, NULL, NULL, 'UK', 'Birmingham', 'Informetion Technology', 'Bachelor\'s Degree', 'B.Sc. in Multimedia Technology and Animation', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'Birmingloi89@hotmail.com', '', '', ''),
(21,30661520269, 'Scholarship', 'RE-ID', '1/2019', 'Accepted', '', 'TOEFL(iBT)', '56', 'Ms', 'Emi', 'khueluena@sharkwow.com', 'Fukuda', 'F', NULL, NULL, NULL, 'Japan', 'Okazaki', 'Informetion Technology', 'Doctoral Degree', 'B.Eng. in Materials Engineering', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Akamaru@gmail.com', '05963254785', '', ''),
(22,30666622103, 'Scholarship', 'Agent-Tu (Aum)', '2/2021', 'Accepted but Student Cancel', '', 'TOEFL(iBT)', '78', 'Ms', 'Elara', 'Fenton@dfol.lp', 'Fenton', 'F', NULL, NULL, NULL, 'china', 'Tianjin', 'Sinology', 'Master\'s Degree', 'B.A. in Business Chinese', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'Tianjin@hotmail.com', '', '', ''),
(23,30669568921, 'Scholarship', 'Agent-Tu (Aum)', '2/2018', 'Reject', '', 'IELTS', '5', 'Ms', 'Jojo', 'jojojaja@lopoi.co', 'jaja', 'F', NULL, NULL, NULL, 'France', 'Drancy', 'Informetion Technology', 'Bachelor\'s Degree', 'B.Sc. in Software Engineering', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', '', '', '', ''),
(24,30665598622, 'Full Time', 'Normal', '2/2021', 'Accepted', '', 'MFU-TEP', '55', 'Ms', 'Zeynep', 'Mcgee@ert.ty', 'Mcgee', 'F', NULL, NULL, NULL, 'china', 'Beijing', 'Science', 'Bachelor\'s Degree', 'Ph.D. in Biological Science', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'Mcgee@hotmail.com', '', '', ''),
(25,30665923487, 'Full Time', 'Agent-Tu (Aum)', '1/2019', 'Accepted', '', 'TOEFL(iBT)', '95', 'Ms', 'Walan ', 'toto_thotemphuen@hommy.com', 'Dimipu', 'F', NULL, NULL, NULL, 'Russia', '	Moscow', 'Management', 'Doctoral Degree', 'B.B.A. in Tourism Management', 'FALSE', 'TRUE', 'FALSE', 'TRUE', 'TRUE', 'FALSE', 'TRUE', 'lilpump@gmail.com', '8596523655', '', ''),
(26,30662569888, 'Full Time', 'Normal', '2/2019', 'Accepted', '', 'TOEFL(iBT)', '58', 'Mr', 'Chifuyu', 'unit1_deputy_chief@tokyomanjikai.com', 'Matsuno', 'M', NULL, NULL, NULL, 'japan', 'Tokyo', 'Health Science', 'Bachelor\'s Degree', 'M.Sc. in Public Health', 'TRUE', 'TRUE', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'unit1_deputy_chief@hotmail.com', '0636-968-965', '', ''),
(27,30668956321, 'Scholarship', 'Normal', '1/2019', 'Reject', '', 'TOEFL(ITP)Level 1', '69', 'Ms', 'Christopher', 'discoverer_one_piece@allblue.com', 'Khuenrotbus', 'F', NULL, NULL, NULL, 'Russia', 'Novosibirsk', 'Management', 'Bachelor\'s Degree', 'B.B.A. in Business Administration', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Alister@gmail.com', '62665269901', '', ''),
(28,30667858596, 'Full Time', 'Normal', '1/2021', 'Accepted', '', 'CMU-eTEGS', '59', 'Mr', 'Robert', 'Alexander@ert.no', 'Alexander', 'M', NULL, NULL, NULL, 'japan', 'Tokyo', 'Informetion Technology', 'Doctoral Degree', 'B.Sc. in Computer Science and Innovation', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Tokyoki@hotmail.com', '', '', ''),
(29,30661115563, 'Full Time', 'Normal', '1/2021', 'Accepted but Student Cancel', '', 'IELTS', '100', 'Ms', 'Polly', 'Simpson@ertop.po', 'Simpson', 'F', NULL, NULL, NULL, 'UK', 'Sheffield', 'Informetion Technology', 'Bachelor\'s Degree', 'B.Sc. in Software Engineering', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'Simpson@hotmail.com', '', '', ''),
(30,30669512365, 'Scholarship', 'Agent-Moon', '1/2021', 'Accepted but Student Cancel', '', 'TOEFL(iBT)', '100', 'Ms', 'Cadi', 'Burnett@hojo.lp', 'Burnett', 'F', NULL, NULL, NULL, 'UK', 'Sheffield', 'Informetion Technology', 'Bachelor\'s Degree', 'B.Sc. in Software Engineering', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Burnett@hotmail.com', '', '', ''),
(31,30669899951, 'Full Time', 'Agent-Moon', '2/2019', 'Accepted but Student Cancel', '', 'TOEFL(iBT)', '79', 'Ms', 'Momoai', 'momo202@asd.bb', 'Lopohoki', 'F', NULL, NULL, NULL, 'japan', 'Nara', 'Informetion Technology', 'Doctoral Degree', 'B.Sc. in Software Engineering', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'narara@hotmail.com', '02561-69854-55121', '', ''),
(32,30662236598, 'Scholarship', 'Agent-Moon', '2/2020', 'Student Cancel', '', 'MFU-TEP', '100', 'Mr', 'Leroy', 'Flores@ggim.vv', 'Flores', 'M', NULL, NULL, NULL, 'UK', 'Manchester', 'Science Cosmetic', 'Bachelor\'s Degree', 'B.Sc. in Cosmetic Science', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Manches@hotmail.com', '', '', ''),
(33,30666932154, 'Full Time', 'Normal', '2/2020', 'Accepted but Student Cancel', '', 'TOEFL(iBT)', '66', 'Ms', 'Samera', 'Lister@gghio.joo', 'Lister', 'M', NULL, NULL, NULL, 'italy', 'Milan', 'Management', 'Master\'s Degree', 'B.B.A. in Aviation Business Management (Aviation Services)', 'FALSE', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Milanlo56@hotmail.com', '', '', ''),
(34,30662002365, 'Scholarship', 'Agent-Moon', '1/2021', 'Student Cancel', '', 'TOEFL(iBT)', '88', 'Ms', 'Michelle', 'Eastwood@wer.nk', 'Eastwood', 'F', NULL, NULL, NULL, 'canada', 'Montreal', 'Health Science', 'Doctoral Degree', 'B.Sc. in Environmental Health', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'Eastwood@hotmail.com', '', '', ''),
(35,30662211523, 'Full Time', 'Normal', '1/2021', 'Student Cancel', '', 'TOEFL(iBT)', '100', 'Mr', 'Kody', 'Acosta@gio.bp', 'Acosta', 'M', NULL, NULL, NULL, 'japan', 'Osaka', 'Social Innovation', 'Doctoral Degree', 'M.Sc. in Materials Innovation', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'Acosta@hotmail.com', '', '', ''),
(36,30669562315, 'Scholarship', 'Agent-Moon', '1/2019', 'Student Cancel', '', 'TOEFL(iBT)', '55', 'Ms', 'Oil', 'rakchanthotforever@narakr.com', 'Kiminoto', 'F', NULL, NULL, NULL, 'pakistan', 'Karachi', 'Informetion Technology', 'Bachelor\'s Degree', 'B.Sc. in Computer Science and Innovation', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'painnz@gmail.com', '0369856231', '', ''),
(37,30663636690, 'Scholarship', 'Agent-Moon', '2/2020', 'Accepted', '', 'CMU-eTEGS', '50', 'Mr', 'Annika', ' Powell@hoio.np', 'Powell', 'M', NULL, NULL, NULL, 'UK', 'Liverpool', 'Informetion Technology', 'Bachelor\'s Degree', 'B.Eng. in Computer Engineering', 'FALSE', 'FALSE', 'TRUE', 'TRUE', 'FALSE', 'TRUE', 'TRUE', 'Powell25@hotmail.com', '', '', ''),
(38,30660500700, 'Full Time', 'Normal', '1/2018', 'Accepted', '', '', '0', 'Ms', 'Paten', 'pcurl0@prlog.org', 'Curl', 'M', NULL, NULL, NULL, 'Bhutan', 'Tsirang', 'Management', 'Bachelor\'s Degree', 'B.B.A. in Tourism Management', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'Curl@email.com', '758-276-2282', 'https://www.facebook.com/Curl', 'https://instagram.com/Curl'),
(39,30664569823, 'Full Time', 'Normal', '1/2019', 'Accepted but Student Cancel', '', 'TOEFL(iBT)', '90', 'Mr', 'Lomi', 'lovata@kolo.com', 'Lovato', 'F', NULL, NULL, NULL, 'Russia', 'Saint Petersburg', 'Management', 'Master\'s Degree', 'B.B.A. in Aviation Business Management (Aviation Services)', 'FALSE', 'TRUE', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'Ormarr@gmail.com', '0256845213', '', ''),
(40,30660500705, 'Full Time', 'Normal', '1/2018', 'Accepted', '', 'TOEFL (iBT)', '53', 'Ms', 'Whittaker', 'wmylchreest1@phpbb.com', 'Mylchreest', 'M', NULL, NULL, NULL, 'South Korea', '', 'Management', 'Bachelor\'s Degree', 'B.B.A. in Aviation Business Management (Aviation Services)', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'Mylchreest@email.com', '457-743-3349', 'https://www.facebook.com/Mylchreest', 'https://instagram.com/Mylchreest'),
(41,30669955555, 'Full Time', 'Normal', '2/2020', 'Accepted', '', 'IELTS', '60', 'Mr', 'Kaitlyn', 'Polla90@jojoko.co', 'Pollard', 'M', NULL, NULL, NULL, 'UK', 'Liverpool', 'Management', 'Doctoral Degree', 'B.B.A. in Tourism Management', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'Pollard45@hotmail.com', '', '', ''),
(42,30660500710, 'Full Time', 'Normal', '1/2018', 'Accepted', '', '', '0', 'Mr', 'Finley', 'fhonisch2@intel.com', 'Honisch', 'M', NULL, NULL, NULL, 'Bhutan', 'Lhuentse', 'Management', 'Bachelor\'s Degree', 'B.B.A. in Business Administration', 'TRUE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'Honisch@email.com', '661-285-4934', 'https://www.facebook.com/Honisch', 'https://instagram.com/Honisch'),
(43,30660500715, 'Full Time', 'Normal', '1/2018', 'Accepted', '', '', '0', 'Ms', 'Ellswerth', 'egiovani3@e-recht24.de', 'Giovani', 'M', NULL, NULL, NULL, 'Myanmar', 'Kyaingtong', 'Management', 'Bachelor\'s Degree', 'B.B.A. in Business Administration', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'Giovani@email.com', '892-585-6068', 'https://www.facebook.com/Giovani', 'https://instagram.com/Giovani'),
(44,30660500720, 'Full Time', 'Normal', '1/2018', 'Accepted', '', '', '0', 'Mr', 'Raimundo', 'rpennetta4@msu.edu', 'Pennetta', 'M', NULL, NULL, NULL, 'Myanmar', 'Kyaingtong', 'Management', 'Bachelor\'s Degree', 'B.B.A. in Business Administration', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'Pennetta@email.com', '925-159-6040', 'https://www.facebook.com/Pennetta', 'https://instagram.com/Pennetta'),
(45,30661555698, 'Scholarship', 'RE-ID', '2/2018', 'Reject', '', 'TOEFL(ITP)Level 1', '1', 'Mr', 'Prayes ', 'ikwai@kalaland.com', 'Chan-o-Chit ', 'M', NULL, NULL, NULL, 'Japan', 'Nagoya', 'Science', 'Bachelor\'s Degree', 'Ph.D. in Applied Chemistry', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'Sarutobii@hotmail.com', '0256985632', '', ''),
(46,30660500725, 'Full Time', 'Normal', '1/2018', 'Accepted', '', '', '0', 'Mr', 'Auberon', 'agormally5@topsy.com', 'Gormally', 'M', NULL, NULL, NULL, 'Myanmar', 'Yangon', 'Management', 'Bachelor\'s Degree', 'B.B.A. in Business Administration', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'Gormally@email.com', '251-880-6545', 'https://www.facebook.com/Gormally', 'https://instagram.com/Gormally'),
(47,30660500730, 'Full Time', 'Normal', '1/2018', 'Accepted but Student Cancel', '', '', '0', 'Mr', 'Bartholemy', 'bhuitson6@answers.com', 'Huitson', 'M', NULL, NULL, NULL, 'Pakistan', 'Lahore', 'Management', 'Bachelor\'s Degree', 'B.B.A. in Business Administration', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'Huitson@email.com', '162-925-3043', 'https://www.facebook.com/Huitson', 'https://instagram.com/Huitson'),
(48,30668956666, 'Full Time', 'Normal', '2/2019', 'Accepted', '', 'TOEFL(iBT)', '93', 'Ms', 'Omamiru', 'omammi@dokk.vlo', 'Arikashan', 'F', NULL, NULL, NULL, 'japan', 'Osaka', 'Anti-Aging and Regenerative Medicine', 'Bachelor\'s Degree', 'M.Sc. in Anti-Aging and Regenerative Medicine', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'TRUE', 'FALSE', 'FALSE', 'omomo@hotmail.com', '0256369845', '', ''),
(49,30666932222, 'Full Time', 'Normal', '2/2020', 'Accepted', '', 'IELTS', '100', 'Ms', 'Dru', 'Mossui@jklo.vol', 'Moss', 'F', NULL, NULL, NULL, 'italy', 'Naples', 'Management', 'Master\'s Degree', 'B.B.A. in Business Administration', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'TRUE', 'TRUE', 'Napleslo34@hotmail.com', '', '', ''),
(50,30660500735, 'Full Time', 'Normal', '1/2018', 'Accepted', '', '', '0', 'Mr', 'Darya', 'dlarive7@china.com.cn', 'Larive', 'F', NULL, NULL, NULL, 'China', 'Yunnan', 'Management', 'Bachelor\'s Degree', 'B.B.A. in Business Administration', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'FALSE', 'TRUE', 'FALSE', 'Larive@email.com', '682-914-2069', 'https://www.facebook.com/Larive', 'https://instagram.com/Larive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inter_students`
--
ALTER TABLE `inter_students`
  ADD PRIMARY KEY (`applicant_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inter_students`
--
ALTER TABLE `inter_students`
  MODIFY `applicant_no` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30660500741;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
