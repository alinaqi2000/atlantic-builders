-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2021 at 12:28 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fusionmaxcarwash_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_backup`
--

CREATE TABLE `tbl_backup` (
  `backup_id` int(11) NOT NULL,
  `backup_filename` varchar(100) NOT NULL,
  `backup_data` longtext NOT NULL,
  `backup_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_backup`
--

INSERT INTO `tbl_backup` (`backup_id`, `backup_filename`, `backup_data`, `backup_date`) VALUES
(3, 'multipurpose_db1625304867-f55172cd68f205cfd9226c3eca8820f2.sql', 'DROP TABLE IF EXISTS tbl_backup;\n\nCREATE TABLE `tbl_backup` (\n  `backup_id` int(11) NOT NULL AUTO_INCREMENT,\n  `backup_filename` varchar(100) NOT NULL,\n  `backup_data` longtext NOT NULL,\n  `backup_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),\n  PRIMARY KEY (`backup_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;\n\n\n\n\nDROP TABLE IF EXISTS tbl_categories;\n\nCREATE TABLE `tbl_categories` (\n  `cat_id` int(11) NOT NULL AUTO_INCREMENT,\n  `cat_title` varchar(100) NOT NULL,\n  `cat_slug` varchar(100) NOT NULL,\n  `cat_status` int(1) NOT NULL,\n  `cat_order` int(11) NOT NULL,\n  PRIMARY KEY (`cat_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_categories VALUES(\"1\",\"Website\",\"website\",\"1\",\"1\"),\n(\"2\",\"App\",\"app\",\"1\",\"2\"),\n(\"3\",\"Graphic\",\"graphic\",\"1\",\"3\"),\n(\"4\",\"Android\",\"android\",\"1\",\"4\"),\n(\"5\",\"Print\",\"print\",\"1\",\"5\");\n\n\n\nDROP TABLE IF EXISTS tbl_countvisit;\n\nCREATE TABLE `tbl_countvisit` (\n  `visit_count_id` int(11) NOT NULL AUTO_INCREMENT,\n  `visit_count_ip` varchar(15) NOT NULL,\n  `visit_count_date` varchar(20) NOT NULL,\n  PRIMARY KEY (`visit_count_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_countvisit VALUES(\"1\",\"::1\",\"2021-Jun-22\"),\n(\"3\",\"::1\",\"2021-Jun-22\"),\n(\"4\",\"::1\",\"2021-Jun-22\"),\n(\"5\",\"::1\",\"2021-Jun-22\"),\n(\"6\",\"::1\",\"2021-Jun-22\"),\n(\"7\",\"::1\",\"2021-Jun-22\"),\n(\"8\",\"::1\",\"2021-Jun-22\"),\n(\"9\",\"::1\",\"2021-Jun-23\"),\n(\"10\",\"::1\",\"2021-Jun-24\"),\n(\"11\",\"::1\",\"2021-Jun-24\"),\n(\"12\",\"::1\",\"2021-Jun-24\"),\n(\"13\",\"::1\",\"2021-Jun-24\"),\n(\"14\",\"::1\",\"2021-Jun-24\"),\n(\"15\",\"::1\",\"2021-Jun-24\"),\n(\"16\",\"::1\",\"2021-Jun-24\"),\n(\"17\",\"::1\",\"2021-Jun-24\"),\n(\"18\",\"::1\",\"2021-Jun-24\"),\n(\"19\",\"::1\",\"2021-Jun-24\"),\n(\"20\",\"::1\",\"2021-Jun-24\"),\n(\"21\",\"::1\",\"2021-Jun-25\"),\n(\"22\",\"::1\",\"2021-Jun-25\"),\n(\"23\",\"::1\",\"2021-Jun-25\"),\n(\"24\",\"::1\",\"2021-Jun-25\"),\n(\"25\",\"::1\",\"2021-Jun-25\"),\n(\"26\",\"::1\",\"2021-Jun-25\"),\n(\"27\",\"::1\",\"2021-Jun-25\"),\n(\"28\",\"::1\",\"2021-Jun-25\"),\n(\"29\",\"::1\",\"2021-Jun-25\"),\n(\"30\",\"::1\",\"2021-Jun-25\"),\n(\"31\",\"::1\",\"2021-Jun-25\"),\n(\"32\",\"::1\",\"2021-Jun-25\"),\n(\"33\",\"::1\",\"2021-Jun-25\"),\n(\"34\",\"::1\",\"2021-Jun-25\"),\n(\"35\",\"::1\",\"2021-Jun-25\"),\n(\"36\",\"::1\",\"2021-Jun-26\"),\n(\"37\",\"::1\",\"2021-Jun-26\"),\n(\"38\",\"::1\",\"2021-Jun-26\"),\n(\"39\",\"::1\",\"2021-Jun-26\"),\n(\"40\",\"::1\",\"2021-Jun-26\"),\n(\"41\",\"::1\",\"2021-Jun-26\"),\n(\"42\",\"::1\",\"2021-Jun-26\"),\n(\"43\",\"::1\",\"2021-Jun-26\"),\n(\"44\",\"::1\",\"2021-Jun-26\"),\n(\"45\",\"::1\",\"2021-Jun-26\"),\n(\"46\",\"::1\",\"2021-Jun-26\"),\n(\"47\",\"::1\",\"2021-Jun-26\"),\n(\"48\",\"::1\",\"2021-Jun-26\"),\n(\"49\",\"::1\",\"2021-Jun-26\"),\n(\"50\",\"::1\",\"2021-Jun-26\"),\n(\"51\",\"::1\",\"2021-Jun-26\"),\n(\"52\",\"::1\",\"2021-Jun-26\"),\n(\"53\",\"::1\",\"2021-Jun-26\"),\n(\"54\",\"::1\",\"2021-Jun-26\"),\n(\"55\",\"::1\",\"2021-Jun-26\"),\n(\"56\",\"::1\",\"2021-Jun-26\"),\n(\"57\",\"::1\",\"2021-Jun-26\"),\n(\"58\",\"::1\",\"2021-Jun-26\"),\n(\"59\",\"::1\",\"2021-Jun-26\"),\n(\"60\",\"::1\",\"2021-Jun-26\"),\n(\"61\",\"::1\",\"2021-Jun-26\"),\n(\"62\",\"::1\",\"2021-Jun-26\"),\n(\"63\",\"::1\",\"2021-Jun-26\"),\n(\"64\",\"::1\",\"2021-Jun-26\"),\n(\"65\",\"::1\",\"2021-Jun-26\"),\n(\"66\",\"::1\",\"2021-Jun-28\"),\n(\"67\",\"::1\",\"2021-Jun-30\"),\n(\"68\",\"::1\",\"2021-Jun-30\"),\n(\"69\",\"::1\",\"2021-Jun-30\"),\n(\"70\",\"::1\",\"2021-Jun-30\"),\n(\"71\",\"::1\",\"2021-Jun-30\"),\n(\"72\",\"::1\",\"2021-Jun-30\"),\n(\"73\",\"::1\",\"2021-Jun-30\"),\n(\"74\",\"::1\",\"2021-Jun-30\"),\n(\"75\",\"::1\",\"2021-Jun-30\"),\n(\"76\",\"::1\",\"2021-Jun-30\"),\n(\"77\",\"::1\",\"2021-Jun-30\"),\n(\"78\",\"::1\",\"2021-Jun-30\"),\n(\"79\",\"::1\",\"2021-Jun-30\"),\n(\"80\",\"::1\",\"2021-Jun-30\"),\n(\"81\",\"::1\",\"2021-Jun-30\"),\n(\"82\",\"::1\",\"2021-Jun-30\"),\n(\"83\",\"::1\",\"2021-Jun-30\"),\n(\"84\",\"::1\",\"2021-Jun-30\"),\n(\"85\",\"::1\",\"2021-Jun-30\"),\n(\"86\",\"127.0.0.1\",\"2021-Jul-01\"),\n(\"87\",\"::1\",\"2021-Jul-01\"),\n(\"88\",\"::1\",\"2021-Jul-01\"),\n(\"89\",\"::1\",\"2021-Jul-01\"),\n(\"90\",\"::1\",\"2021-Jul-01\"),\n(\"91\",\"::1\",\"2021-Jul-01\"),\n(\"92\",\"::1\",\"2021-Jul-01\"),\n(\"93\",\"::1\",\"2021-Jul-01\"),\n(\"94\",\"::1\",\"2021-Jul-01\"),\n(\"95\",\"::1\",\"2021-Jul-01\"),\n(\"96\",\"::1\",\"2021-Jul-01\"),\n(\"97\",\"::1\",\"2021-Jul-01\"),\n(\"98\",\"::1\",\"2021-Jul-01\"),\n(\"99\",\"::1\",\"2021-Jul-01\"),\n(\"100\",\"::1\",\"2021-Jul-01\");\n\n\n\nDROP TABLE IF EXISTS tbl_emails;\n\nCREATE TABLE `tbl_emails` (\n  `email_id` int(11) NOT NULL AUTO_INCREMENT,\n  `email_from` varchar(100) NOT NULL,\n  `email_to` varchar(100) NOT NULL,\n  `email_type` varchar(100) NOT NULL,\n  `email_subject` varchar(100) NOT NULL,\n  `email_body` mediumtext NOT NULL,\n  `email_status` int(1) NOT NULL,\n  `email_order` int(11) NOT NULL,\n  PRIMARY KEY (`email_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_emails VALUES(\"1\",\"a@a.com\",\"info@zairone.com\",\"contact\",\"Auto-reply From Zairone.com\",\"<p style=\\\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\\\"><span style=\\\"font-family: Arial;\\\">Thank you for inquiring about our new email marketing enterprise application. A team member will contact you tomorrow with a detailed explanation of the product that fits your business need.</span></p><p style=\\\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\\\"><span style=\\\"font-family: Arial;\\\">Thanks again for your inquiry.</span></p><p style=\\\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\\\"><span style=\\\"font-family: Arial;\\\">Sincerely,</span></p><p style=\\\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\\\"><span style=\\\"font-family: Arial;\\\">Zairone Developer Team</span></p>\",\"1\",\"0\"),\n(\"2\",\"b@b.com\",\"info@zairone.com\",\"newsletter\",\"Response\",\"<p style=\\\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\\\"><span style=\\\"font-family: Arial;\\\">Thank you for inquiring about our new email marketing enterprise application. A team member will contact you tomorrow with a detailed explanation of the product that fits your business need.</span></p><p style=\\\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\\\"><span style=\\\"font-family: Arial;\\\">Thanks again for your inquiry.</span></p><p style=\\\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\\\"><span style=\\\"font-family: Arial;\\\">Sincerely,</span></p><p style=\\\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\\\"><span style=\\\"font-family: Arial;\\\">Zairone Developer Team</span></p>\",\"1\",\"0\");\n\n\n\nDROP TABLE IF EXISTS tbl_faq;\n\nCREATE TABLE `tbl_faq` (\n  `faq_id` int(11) NOT NULL AUTO_INCREMENT,\n  `faq_ques` varchar(255) NOT NULL,\n  `faq_ans` mediumtext NOT NULL,\n  `faq_position` int(1) NOT NULL,\n  `faq_status` int(1) NOT NULL,\n  `faq_order` int(11) NOT NULL,\n  PRIMARY KEY (`faq_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_faq VALUES(\"1\",\"This is a Testing Question?\",\"Yes This is Working good.\",\"0\",\"1\",\"1\"),\n(\"2\",\"This is a Testing Question?\",\"This is a Testing Answer...\",\"0\",\"1\",\"2\"),\n(\"3\",\"This is a Testing Question?\",\"This is a Testing Answer...\",\"0\",\"1\",\"3\"),\n(\"4\",\"This is a Testing Question?\",\"This is a Testing Answer...\",\"1\",\"1\",\"4\"),\n(\"5\",\"This is a Testing Question?\",\"This is a Testing Answer...\",\"1\",\"1\",\"5\"),\n(\"6\",\"This is a Testing Question?\",\"This is a Testing Answer...\",\"1\",\"1\",\"6\");\n\n\n\nDROP TABLE IF EXISTS tbl_gallery_photos;\n\nCREATE TABLE `tbl_gallery_photos` (\n  `p_id` int(11) NOT NULL AUTO_INCREMENT,\n  `p_image` varchar(255) NOT NULL,\n  `p_status` int(1) NOT NULL,\n  `p_order` int(11) NOT NULL,\n  PRIMARY KEY (`p_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_gallery_photos VALUES(\"1\",\"image_16233930505582.jpg\",\"1\",\"1\"),\n(\"2\",\"image_16233930509063.jpg\",\"1\",\"2\"),\n(\"3\",\"image_16233930502563.jpg\",\"1\",\"3\"),\n(\"4\",\"image_16234008658684.jpg\",\"1\",\"4\");\n\n\n\nDROP TABLE IF EXISTS tbl_gallery_videos;\n\nCREATE TABLE `tbl_gallery_videos` (\n  `v_id` int(11) NOT NULL AUTO_INCREMENT,\n  `v_image` varchar(255) NOT NULL,\n  `v_video` varchar(255) NOT NULL,\n  `v_status` int(1) NOT NULL,\n  `v_order` int(11) NOT NULL,\n  PRIMARY KEY (`v_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_gallery_videos VALUES(\"1\",\"image_16234811022231.jpg\",\"ULEQb_l-N08\",\"1\",\"0\"),\n(\"2\",\"image_16234811176224.jpg\",\"buBvqw6G3WU\",\"1\",\"1\"),\n(\"3\",\"image_16234811325757.jpg\",\"buBvqw6G3WU\",\"1\",\"2\"),\n(\"4\",\"image_16234835975938.jpg\",\"buBvqw6G3WU\",\"1\",\"3\");\n\n\n\nDROP TABLE IF EXISTS tbl_listings;\n\nCREATE TABLE `tbl_listings` (\n  `list_id` int(11) NOT NULL AUTO_INCREMENT,\n  `list_option_text` text DEFAULT NULL,\n  `list_type` varchar(50) NOT NULL,\n  `list_title` varchar(255) DEFAULT NULL,\n  `list_slug` varchar(255) DEFAULT NULL,\n  `list_gender` varchar(11) NOT NULL,\n  `list_desc` varchar(1000) DEFAULT NULL,\n  `list_detail` longtext DEFAULT NULL,\n  `list_link` varchar(100) NOT NULL,\n  `list_thumb` varchar(50) DEFAULT NULL,\n  `list_image` varchar(50) DEFAULT NULL,\n  `list_banner` varchar(50) DEFAULT NULL,\n  `list_price` float NOT NULL,\n  `list_label` int(11) NOT NULL DEFAULT 0,\n  `list_order` int(11) DEFAULT NULL,\n  `list_status` int(11) NOT NULL DEFAULT 1,\n  PRIMARY KEY (`list_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;\n\nINSERT INTO tbl_listings VALUES(\"19\",\"\",\"events\",\"Bimply dummy text of the printing and typesetting industry\",\"bimply-dummy-text-of-the-printing-and-typesetting-industry\",\"\",\"NewYork Tower, Melbourne\",\"<p>Bimply dummy text of the printing and typesetting istryrem Ipsum has  been the industry\\\'s standard dummy text ever since the 1500s, when an  unknown printer.when an unknown printer took a galley of type and  scrambled it to make a type specimen book. It has survived not only five  centuriesp into electronic.simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book.Bimply dummy text of  the printing and typesetting istryrem Ipsum has been the industry\\\'s  standard dummy text ever since the 1500s, when an unknown printer.when  an unknown printer took a galley of type and scrambled it to make a type  specimen book. It has survived not only five centuriesp into  electronic.simply dummy text of the printing and typesetting industry.</p>\",\"\",\"06 September, 2019\",\"image_15630433616150.jpg\",\"\",\"0\",\"1\",\"1\",\"1\"),\n(\"20\",\"\",\"events\",\"Bimply dummy text of the printing\",\"bimply-dummy-text-of-the-printing\",\"\",\"\",\"<p>Bimply dummy text of the printing and typesetting istryrem Ipsum has  been the industry\\\'s standard dummy text ever since the 1500s, when an  unknown printer.when an unknown printer took a galley of type and  scrambled it to make a type specimen book. It has survived not only five  centuriesp into electronic.simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book.Bimply dummy text of  the printing and typesetting istryrem Ipsum has been the industry\\\'s  standard dummy text ever since the 1500s, when an unknown printer.when  an unknown printer took a galley of type and scrambled it to make a type  specimen book. It has survived not only five centuriesp into  electronic.simply dummy text of the printing and typesetting industry.</p>\",\"\",\"22 December, 2019\",\"image_15630433939524.jpg\",\"\",\"0\",\"1\",\"2\",\"1\"),\n(\"21\",\"\",\"courses\",\"Physiology\",\"physiology\",\"\",\"Rmply dummy text printing setting industry itâ€™s free demo.\",\"\",\"http://localhost/np1/hospital\",\"\",\"image_15630470856516.jpg\",\"\",\"0\",\"1\",\"1\",\"1\"),\n(\"22\",\"\",\"courses\",\"Biochemistry\",\"biochemistry\",\"\",\"Rmply dummy text printing setting industry itâ€™s free demo.\",\"\",\"http://localhost/np1/medical-education\",\"\",\"image_15630471442505.jpg\",\"\",\"0\",\"1\",\"2\",\"1\"),\n(\"23\",\"\",\"courses\",\"Forensic Medicine\",\"forensic-medicine\",\"\",\"Rmply dummy text printing setting industry itâ€™s free demo.\",\"\",\"http://localhost/np1/medical-education\",\"\",\"image_15630471741750.jpg\",\"\",\"0\",\"1\",\"3\",\"1\"),\n(\"24\",\"\",\"courses\",\"Ophthalmology\",\"ophthalmology\",\"\",\"Rmply dummy text printing setting industry itâ€™s free demo.\",\"\",\"http://localhost/np1/medical-education\",\"\",\"image_15630472301165.jpg\",\"\",\"0\",\"1\",\"4\",\"1\"),\n(\"25\",\"\",\"courses\",\"Paediatrics\",\"paediatrics\",\"\",\"Rmply dummy text printing setting industry itâ€™s free demo.\",\"\",\"localhost/np1/college-of-dentistry\",\"\",\"image_15630472737512.jpg\",\"\",\"0\",\"1\",\"5\",\"1\"),\n(\"26\",\"\",\"courses\",\"Pathology\",\"pathology\",\"\",\"Rmply dummy text printing setting industry itâ€™s free demo.\",\"\",\"http://localhost/np1/vision-mission-values\",\"\",\"image_15630473428601.jpg\",\"\",\"0\",\"1\",\"6\",\"1\"),\n(\"27\",\"\",\"testimonials\",\"Jason Smith\",\"\",\"\",\"Analyst\",\"There anyone who loves or pursues nor desires to obtain pain of itself, bet it is pain, but because occasionally can packages as their default all the Lorem Ipsum generators on the Internet tend to repeat predefined.\",\"\",\"\",\"image_15784396945883.jpg\",\"\",\"4\",\"0\",\"1\",\"1\"),\n(\"28\",\"\",\"testimonials\",\"Mona Kruew\",\"\",\"\",\"Social Activist\",\"There anyone who loves or pursues nor desires to obtain pain of itself, bet it is pain, but because occasionally can packages as their default all the Lorem Ipsum generators on the Internet tend to repeat predefined.\",\"\",\"\",\"image_15784397029659.jpg\",\"\",\"3\",\"0\",\"2\",\"1\"),\n(\"29\",\"\",\"testimonials\",\"Henery Ford\",\"\",\"\",\"Journalist\",\"There anyone who loves or pursues nor desires to obtain pain of itself, bet it is pain, but because occasionally can packages as their default all the Lorem Ipsum generators on the Internet tend to repeat predefined.\",\"\",\"\",\"image_15784397102891.jpg\",\"\",\"2\",\"0\",\"3\",\"1\"),\n(\"30\",\"\",\"services\",\"Education Visa\",\"education-visa\",\"\",\"It is a long established fact that and reader will by the readable based of content page banned.\",\"<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\\\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\\\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\r\\n<p>By injected humour, or randomised words which don\\\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\\\'t anything embarrassing hidden in the middle of text.</p>\r\\n<div class=\\\"service-details-contant\\\">\r\\n<div class=\\\"row\\\">\r\\n<div class=\\\"col-lg-1\\\">&nbsp;</div>\r\\n<div class=\\\"col-lg-11\\\">\r\\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\r\\n</div>\r\\n</div>\r\\n<div class=\\\"row\\\">\r\\n<div class=\\\"col-lg-1\\\">&nbsp;</div>\r\\n<div class=\\\"col-lg-11\\\">\r\\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\\\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\r\\n</div>\r\\n</div>\r\\n</div>\r\\n<h3 class=\\\"service-details-heading\\\">Our Benefits</h3>\r\\n<p>A randomised words which don\\\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\\\'t anything embarrassing hidden in the middle of  text.</p>\",\"\",\"\",\"image_15638866429463.jpg\",\"image_15638890982055.jpg\",\"0\",\"1\",\"1\",\"1\"),\n(\"31\",\"\",\"services\",\"Business Visa\",\"business-visa\",\"\",\"It is a long established fact that and reader will by the readable based of content page banned.\",\"<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\\\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\\\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\r\\n<p>By injected humour, or randomised words which don\\\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\\\'t anything embarrassing hidden in the middle of text.</p>\r\\n<div class=\\\"service-details-contant\\\">\r\\n<div class=\\\"row\\\">\r\\n<div class=\\\"col-lg-1\\\">&nbsp;</div>\r\\n<div class=\\\"col-lg-11\\\">\r\\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\r\\n</div>\r\\n</div>\r\\n<div class=\\\"row\\\">\r\\n<div class=\\\"col-lg-1\\\">&nbsp;</div>\r\\n<div class=\\\"col-lg-11\\\">\r\\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\\\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\r\\n</div>\r\\n</div>\r\\n</div>\r\\n<h3 class=\\\"service-details-heading\\\">Our Benefits</h3>\r\\n<p>A randomised words which don\\\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\\\'t anything embarrassing hidden in the middle of  text.</p>\",\"\",\"\",\"image_15638869396774.jpg\",\"image_15638891352659.jpg\",\"0\",\"1\",\"2\",\"1\"),\n(\"32\",\"\",\"services\",\"Travel Visa\",\"travel-visa\",\"\",\"It is a long established fact that and reader will by the readable based of content page banned.\",\"<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\\\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\\\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\r\\n<p>By injected humour, or randomised words which don\\\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\\\'t anything embarrassing hidden in the middle of text.</p>\r\\n<div class=\\\"service-details-contant\\\">\r\\n<div class=\\\"row\\\">\r\\n<div class=\\\"col-lg-1\\\">&nbsp;</div>\r\\n<div class=\\\"col-lg-11\\\">\r\\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\r\\n</div>\r\\n</div>\r\\n<div class=\\\"row\\\">\r\\n<div class=\\\"col-lg-1\\\">&nbsp;</div>\r\\n<div class=\\\"col-lg-11\\\">\r\\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\\\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\r\\n</div>\r\\n</div>\r\\n</div>\r\\n<h3 class=\\\"service-details-heading\\\">Our Benefits</h3>\r\\n<p>A randomised words which don\\\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\\\'t anything embarrassing hidden in the middle of  text.</p>\",\"\",\"\",\"image_15638869769510.jpg\",\"image_15638891456197.jpg\",\"0\",\"1\",\"3\",\"1\"),\n(\"33\",\"\",\"services\",\"Family Visa\",\"family-visa\",\"\",\"It is a long established fact that and reader will by the readable based of content page banned.\",\"<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\\\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\\\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\r\\n<p>By injected humour, or randomised words which don\\\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\\\'t anything embarrassing hidden in the middle of text.</p>\r\\n<div class=\\\"service-details-contant\\\">\r\\n<div class=\\\"row\\\">\r\\n<div class=\\\"col-lg-1\\\">&nbsp;</div>\r\\n<div class=\\\"col-lg-11\\\">\r\\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\r\\n</div>\r\\n</div>\r\\n<div class=\\\"row\\\">\r\\n<div class=\\\"col-lg-1\\\">&nbsp;</div>\r\\n<div class=\\\"col-lg-11\\\">\r\\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\\\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\r\\n</div>\r\\n</div>\r\\n</div>\r\\n<h3 class=\\\"service-details-heading\\\">Our Benefits</h3>\r\\n<p>A randomised words which don\\\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\\\'t anything embarrassing hidden in the middle of  text.</p>\",\"\",\"\",\"image_15638870116398.jpg\",\"image_15638891557918.jpg\",\"0\",\"0\",\"4\",\"1\"),\n(\"35\",\"\",\"boxes\",\" United States\",\"united-states\",\"\",\"It is a long established fact that a reader will by the readable content page.\",\"\",\"about\",\"\",\"image_15639920731737.png\",\"\",\"0\",\"0\",\"1\",\"1\"),\n(\"36\",\"\",\"boxes\",\"Australia\",\"australia\",\"\",\"It is a long established fact that a reader will by the readable content page.\",\"\",\"\",\"\",\"image_15639920918901.png\",\"\",\"0\",\"0\",\"2\",\"1\"),\n(\"37\",\"\",\"boxes\",\"United Kingdom\",\"united-kingdom\",\"\",\"It is a long established fact that a reader will by the readable content page.\",\"\",\"\",\"\",\"image_15639921195143.png\",\"\",\"0\",\"0\",\"3\",\"1\"),\n(\"38\",\"\",\"boxes\",\" Singapore\",\"singapore\",\"\",\"It is a long established fact that a reader will by the readable content page.\",\"\",\"\",\"\",\"image_15639921503128.png\",\"\",\"0\",\"0\",\"4\",\"1\"),\n(\"39\",\"\",\"faqs\",\"How soon should I apply for my appointment?\",\"how-soon-should-i-apply-for-my-appointment-\",\"\",\"Many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\\\'t look even more slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\\\'t anything embarrassing hidden in the middle of text.  \r\\nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet it uses a dictionary of over latin words, combined with a handful of model sentence structures.\r\\n                         \",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"2\",\"1\"),\n(\"40\",\"\",\"faqs\",\"How long does my passport have to be valid in order to apply for a U. S. visa?\",\"how-long-does-my-passport-have-to-be-valid-in-order-to-apply-for-a-u-s-visa-\",\"\",\"Many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\\\'t look even more slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\\\'t anything embarrassing hidden in the middle of text.  \",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"1\",\"1\"),\n(\"41\",\"\",\"programs\",\"Visit\",\"\",\"\",\"https://www.lipsum.com\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"1\",\"1\"),\n(\"42\",\"\",\"programs\",\"Study\",\"\",\"\",\"https://www.lipsum.com\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"2\",\"1\"),\n(\"43\",\"\",\"programs\",\"Work\",\"\",\"\",\"https://www.lipsum.com\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"3\",\"1\"),\n(\"44\",\"\",\"programs\",\"Immigration\",\"\",\"\",\"https://www.lipsum.com\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"4\",\"1\"),\n(\"45\",\"\",\"programs\",\"Business\",\"\",\"\",\"https://www.lipsum.com\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"5\",\"1\"),\n(\"46\",\"\",\"programs\",\"Citizenship\",\"\",\"\",\"https://www.lipsum.com\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"6\",\"1\"),\n(\"47\",\"\",\"programs\",\"Other Services\",\"\",\"\",\"https://www.lipsum.com\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"7\",\"1\"),\n(\"48\",\"\",\"partners\",\"https://www.lipsum.com\",\"\",\"\",\"Immigrating to ENWT\",\"\",\"\",\"\",\"image_15784405263260.png\",\"\",\"0\",\"0\",\"1\",\"1\"),\n(\"49\",\"\",\"partners\",\"https://www.lipsum.com\",\"\",\"\",\"Immigrate to B C\",\"\",\"\",\"\",\"image_15784405358226.png\",\"\",\"0\",\"0\",\"2\",\"1\"),\n(\"50\",\"\",\"partners\",\"https://www.lipsum.com\",\"\",\"\",\"Immigrating to Manitoba\",\"\",\"\",\"\",\"image_15784405399449.png\",\"\",\"0\",\"0\",\"3\",\"1\"),\n(\"51\",\"\",\"partners\",\"https://www.lipsum.com\",\"\",\"\",\"Immigrating to NB\",\"\",\"\",\"\",\"image_15784405437134.png\",\"\",\"0\",\"0\",\"4\",\"1\"),\n(\"52\",\"\",\"partners\",\"https://www.lipsum.com\",\"\",\"\",\"Immigrating to NL\",\"\",\"\",\"\",\"image_15784405496612.png\",\"\",\"0\",\"0\",\"5\",\"1\"),\n(\"53\",\"\",\"partners\",\"https://www.lipsum.com\",\"\",\"\",\"Immigrating to Manitoba\",\"\",\"\",\"\",\"image_15784405541540.png\",\"\",\"0\",\"0\",\"6\",\"1\"),\n(\"55\",\"\",\"offers\",\"2 Piece burger & 1 cold drink\",\"\",\"\",\"Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.\",\"\",\"\",\"\",\"image_16051015001974.jpg\",\"\",\"18.89\",\"1\",\"1\",\"1\"),\n(\"56\",\"\",\"offers\",\"3 Plets rice & 1 cold drink\",\"\",\"\",\"Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.\",\"\",\"\",\"\",\"image_16051015529384.jpg\",\"\",\"42\",\"1\",\"2\",\"1\"),\n(\"57\",\"\",\"offers\",\"4 Glass Orange Juice\",\"\",\"\",\"Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.\",\"\",\"\",\"\",\"image_16051015707342.jpg\",\"\",\"22.09\",\"1\",\"3\",\"1\"),\n(\"58\",\"\",\"offers\",\"4 Piece Pizza & Cold drink\",\"\",\"\",\"Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.\",\"\",\"\",\"\",\"image_16051015853917.jpg\",\"\",\"18\",\"1\",\"4\",\"1\"),\n(\"59\",\"\",\"offers\",\"Type food Name here\",\"\",\"\",\"Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.\",\"\",\"\",\"\",\"image_16051032708942.jpg\",\"\",\"0\",\"0\",\"5\",\"1\"),\n(\"60\",\"\",\"offers\",\"Type food Name here\",\"\",\"\",\"Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.\",\"\",\"\",\"\",\"image_16051033702581.jpg\",\"\",\"58.8\",\"0\",\"6\",\"1\"),\n(\"61\",\"\",\"offers\",\"Type food Name here\",\"\",\"\",\"Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.\",\"\",\"\",\"\",\"image_16051033843603.jpg\",\"\",\"58.8\",\"0\",\"7\",\"1\"),\n(\"62\",\"\",\"offers\",\"Type food Name here\",\"\",\"\",\"Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.\",\"\",\"\",\"\",\"image_16051033962421.jpg\",\"\",\"58.8\",\"0\",\"8\",\"1\"),\n(\"64\",\"\",\"categories\",\"SHOE\",\"shoe\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"1\",\"1\"),\n(\"65\",\"\",\"categories\",\"PIZZA\",\"pizza\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"2\",\"1\"),\n(\"67\",\"\",\"categories\",\"LUNCH\",\"lunch\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"3\",\"1\"),\n(\"68\",\"\",\"categories\",\"DRINKS\",\"drinks\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"4\",\"1\"),\n(\"69\",\"\",\"categories\",\"SOUP\",\"soup\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"5\",\"1\"),\n(\"70\",\"\",\"categories\",\"DINNER\",\"dinner\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"6\",\"1\"),\n(\"74\",\"a:3:{i:0;s:2:\\\"65\\\";i:1;s:2:\\\"67\\\";i:2;s:2:\\\"68\\\";}\",\"menus\",\"Honey green tea\",\"honey-green-tea\",\"\",\"Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .\",\"\",\"\",\"\",\"\",\"\",\"8\",\"0\",\"1\",\"1\"),\n(\"75\",\"a:2:{i:0;s:2:\\\"64\\\";i:1;s:2:\\\"69\\\";}\",\"menus\",\"Ambra plum juice\",\"ambra-plum-juice\",\"\",\"Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .\",\"\",\"\",\"\",\"\",\"\",\"8\",\"0\",\"2\",\"1\"),\n(\"76\",\"a:1:{i:0;s:2:\\\"64\\\";}\",\"menus\",\"Mango\",\"mango\",\"\",\"Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .\",\"\",\"\",\"\",\"\",\"\",\"8\",\"0\",\"3\",\"1\"),\n(\"77\",\"a:2:{i:0;s:2:\\\"64\\\";i:1;s:2:\\\"70\\\";}\",\"menus\",\"Milk tea\",\"milk-tea\",\"\",\"Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .\",\"\",\"\",\"\",\"\",\"\",\"8\",\"0\",\"4\",\"1\"),\n(\"78\",\"a:2:{i:0;s:2:\\\"67\\\";i:1;s:2:\\\"68\\\";}\",\"menus\",\"Soya bean\",\"soya-bean\",\"\",\"Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .\",\"\",\"\",\"\",\"\",\"\",\"8\",\"0\",\"5\",\"1\"),\n(\"79\",\"a:1:{i:0;s:2:\\\"68\\\";}\",\"menus\",\"Keat la plum juice\",\"keat-la-plum-juice\",\"\",\"Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .\",\"\",\"\",\"\",\"\",\"\",\"8\",\"0\",\"6\",\"1\"),\n(\"80\",\"a:2:{i:0;s:2:\\\"64\\\";i:1;s:2:\\\"68\\\";}\",\"menus\",\"Herbal tea\",\"herbal-tea\",\"\",\"Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .\",\"\",\"\",\"\",\"\",\"\",\"8\",\"0\",\"7\",\"1\"),\n(\"81\",\"a:2:{i:0;s:2:\\\"64\\\";i:1;s:2:\\\"70\\\";}\",\"menus\",\"ice lemon tea\",\"ice-lemon-tea\",\"\",\"Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse \",\"\",\"\",\"\",\"\",\"\",\"8\",\"0\",\"8\",\"1\"),\n(\"82\",\"a:2:{i:0;s:2:\\\"68\\\";i:1;s:2:\\\"69\\\";}\",\"menus\",\"Ambra plum juice\",\"ambra-plum-juice\",\"\",\"Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .\",\"\",\"\",\"\",\"\",\"\",\"8\",\"0\",\"9\",\"1\"),\n(\"92\",\"\",\"videos\",\"\",\"\",\"\",\"https://youtu.be/JWRx28ZI7D8\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"1\",\"1\"),\n(\"93\",\"\",\"videos\",\"\",\"\",\"\",\"https://youtu.be/u7Ta4O2sPro\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"2\",\"1\"),\n(\"94\",\"\",\"videos\",\"\",\"\",\"\",\"https://youtu.be/ULrYr7IyvcI\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"3\",\"1\"),\n(\"95\",\"\",\"videos\",\"\",\"\",\"\",\"https://youtu.be/pyHdHYtbC7w\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"4\",\"1\"),\n(\"96\",\"\",\"videos\",\"\",\"\",\"\",\"https://youtu.be/1qHtTrezkWs\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"5\",\"1\"),\n(\"97\",\"\",\"videos\",\"\",\"\",\"\",\"https://youtu.be/HtoQXaHHmXI\",\"\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"6\",\"1\"),\n(\"100\",\"\",\"nav_menus\",\"Dinner Menu\",\"dinner-menu\",\"\",\"\",\"<p style=\\\"text-align: center;\\\"><img src=\\\"/UserFiles/dinner.png\\\" style=\\\"width:100%\\\" alt=\\\"\\\" /></p>\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"1\",\"1\"),\n(\"101\",\"\",\"nav_menus\",\"Dessert Menu\",\"dessert-menu\",\"\",\"\",\"<p style=\\\"text-align: center;\\\"><img src=\\\"/UserFiles/Dessert-0.jpg\\\" style=\\\"width:100%;\\\" alt=\\\"\\\" /></p>\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"3\",\"1\"),\n(\"102\",\"\",\"nav_menus\",\"Happy Hour\",\"happy-hour\",\"\",\"\",\"<p style=\\\"text-align: center;\\\">&nbsp;<img src=\\\"/UserFiles/Happy Hour.png\\\" style=\\\"width:100%;\\\" alt=\\\"\\\" /></p>\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"4\",\"1\"),\n(\"103\",\"\",\"nav_menus\",\"Wine List & Sips\",\"wine-list-sips\",\"\",\"\",\"<p style=\\\"text-align: center;\\\"><img src=\\\"/UserFiles/WINE LIST-0.png\\\" style=\\\"width:100%;\\\" alt=\\\"\\\" /></p>\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"5\",\"1\"),\n(\"104\",\"\",\"nav_menus\",\"Kids Menu\",\"kids-menu\",\"\",\"\",\"<p style=\\\"text-align: center;\\\">&nbsp;<img src=\\\"/UserFiles/KIDS-MENU.png\\\" style=\\\"width:50%;\\\" alt=\\\"\\\" /></p>\",\"\",\"\",\"\",\"\",\"0\",\"0\",\"2\",\"1\"),\n(\"108\",\"\",\"deals\",\"\",\"\",\"\",\"\",\"<ul class=\\\"set_menu\\\">\r\\n    <li>Rice 1 Plets<span>Price: $9.00</span></li>\r\\n    <li>Checken 2 Piece<span>Price: $15.00</span></li>\r\\n    <li>Salad 1 Plets<span>Price: $7.00</span></li>\r\\n    <li>1 250ml Cook<span>Price: $3.00</span></li>\r\\n    <li class=\\\"total\\\">Total:<span>$24.00</span></li>\r\\n</ul>\",\"\",\"\",\"image_16051169691185.jpg\",\"\",\"0\",\"0\",\"1\",\"1\"),\n(\"109\",\"\",\"deals\",\"\",\"\",\"\",\"\",\"<ul class=\\\"set_menu\\\">\r\\n    <li>Rice 1 Plets<span>Price: $9.00</span></li>\r\\n    <li>Checken 2 Piece<span>Price: $15.00</span></li>\r\\n    <li>Salad 1 Plets<span>Price: $7.00</span></li>\r\\n    <li>1 250ml Cook<span>Price: $3.00</span></li>\r\\n    <li class=\\\"total\\\">Total:<span>$24.00</span></li>\r\\n</ul>\",\"\",\"\",\"image_16051170165332.jpg\",\"\",\"0\",\"0\",\"2\",\"1\"),\n(\"110\",\"\",\"deals\",\"\",\"\",\"\",\"\",\"<ul class=\\\"set_menu\\\">\r\\n    <li>Rice 1 Plets<span>Price: $9.00</span></li>\r\\n    <li>Checken 2 Piece<span>Price: $15.00</span></li>\r\\n    <li>Salad 1 Plets<span>Price: $7.00</span></li>\r\\n    <li>1 250ml Cook<span>Price: $3.00</span></li>\r\\n    <li class=\\\"total\\\">Total:<span>$24.00</span></li>\r\\n</ul>\",\"\",\"\",\"image_16051170282647.jpg\",\"\",\"0\",\"0\",\"3\",\"1\"),\n(\"111\",\"\",\"photos\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image_16215205755168.png\",\"\",\"0\",\"0\",\"1\",\"1\"),\n(\"112\",\"\",\"photos\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image_16052206178186.jpg\",\"\",\"0\",\"0\",\"2\",\"1\"),\n(\"113\",\"\",\"photos\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image_16052206269956.jpg\",\"\",\"0\",\"0\",\"3\",\"1\"),\n(\"114\",\"\",\"photos\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image_16052206341564.jpg\",\"\",\"0\",\"0\",\"4\",\"1\"),\n(\"115\",\"\",\"photos\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image_16052206433732.jpg\",\"\",\"0\",\"0\",\"5\",\"1\"),\n(\"116\",\"\",\"photos\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image_16052206542786.jpg\",\"\",\"0\",\"0\",\"6\",\"1\"),\n(\"117\",\"\",\"photos\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image_16052206623019.jpg\",\"\",\"0\",\"0\",\"7\",\"1\"),\n(\"118\",\"\",\"photos\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image_16052206699331.jpg\",\"\",\"0\",\"0\",\"8\",\"1\"),\n(\"119\",\"\",\"photos\",\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"image_16052206788588.jpg\",\"\",\"0\",\"0\",\"9\",\"1\");\n\n\n\nDROP TABLE IF EXISTS tbl_module;\n\nCREATE TABLE `tbl_module` (\n  `mod_id` int(11) NOT NULL AUTO_INCREMENT,\n  `mod_title` varchar(100) NOT NULL,\n  `mod_status` int(1) NOT NULL,\n  PRIMARY KEY (`mod_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_module VALUES(\"1\",\"Gallery\",\"1\"),\n(\"2\",\"Services\",\"1\"),\n(\"3\",\"Projects\",\"1\"),\n(\"4\",\"News\",\"1\"),\n(\"5\",\"Pricing-list\",\"1\"),\n(\"6\",\"FAQ\",\"1\");\n\n\n\nDROP TABLE IF EXISTS tbl_news;\n\nCREATE TABLE `tbl_news` (\n  `news_id` int(10) NOT NULL AUTO_INCREMENT,\n  `news_category` varchar(255) DEFAULT NULL,\n  `news_title` varchar(255) DEFAULT NULL,\n  `news_slug` varchar(255) DEFAULT NULL,\n  `news_validity` varchar(250) DEFAULT NULL,\n  `news_desc` longtext DEFAULT NULL,\n  `news_detail` varchar(2000) DEFAULT NULL,\n  `news_link` varchar(255) NOT NULL,\n  `news_label` int(10) DEFAULT NULL,\n  `news_status` int(10) DEFAULT NULL,\n  `news_order` int(11) DEFAULT NULL,\n  `news_image` varchar(50) DEFAULT NULL,\n  `news_thumb` varchar(50) DEFAULT NULL,\n  `news_date` varchar(50) DEFAULT NULL,\n  `news_publish` varchar(50) DEFAULT NULL,\n  `news_modify` varchar(50) DEFAULT NULL,\n  PRIMARY KEY (`news_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;\n\nINSERT INTO tbl_news VALUES(\"10\",\"Finance\",\"Business Immigration News\",\"business-immigration-news\",\"2018-2019\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing\r\\n                                Lorem Ipsum passages.</p>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries.</p>\r\\n                            <blockquote class=\\\"blockquote\\\">\r\\n                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to\r\\n                                    make a type specimen book. It has survived not only five centuries.</p>\r\\n                                <h4>- Tomas Edison</h4>\r\\n                            </blockquote>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\\n                            <div class=\\\"row mt-30\\\">\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-img\\\">\r\\n                                        <div class=\\\"video-video-box full-width\\\"> <img src=\\\"assets/img/blog/blog-6.jpg\\\" class=\\\"rounded-border\\\" alt=\\\"img\\\">\r\\n                                            <div class=\\\"video-video-box-overlay\\\">\r\\n                                                <div class=\\\"video-video-box-button\\\"> <button class=\\\"video-video-play-icon\\\" data-toggle=\\\"modal\\\" data-target=\\\".video-modal\\\"> <i class=\\\"fa fa-play\\\"></i> </button> </div>\r\\n                                            </div>\r\\n                                        </div>\r\\n                                        <div class=\\\"modal fade video-modal\\\" id=\\\"videomodal1\\\" tabindex=\\\"-1\\\" role=\\\"dialog\\\">\r\\n                                            <div class=\\\"modal-dialog modal-lg\\\" role=\\\"document\\\"> <iframe height=\\\"415\\\" src=\\\"<?php echo $single[\\\'news_link\\\'] ?>\\\" class=\\\"full-width round-frame image-shadow\\\" allowfullscreen=\\\"\\\"></iframe> </div>\r\\n                                        </div>\r\\n                                    </div>\r\\n                                </div>\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-bottom-text\\\">\r\\n                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\\n                                            it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining\r\\n                                            essentially unchanged.It was popularised in the 1960s with Letraset.</p>\r\\n                                    </div>\r\\n                                </div>\r\\n                            </div>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with Letraset.</p>\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard.</p>\",\"https://www.lipsum.com\",\"1\",\"1\",\"1\",\"image_16233144895763.jpg\",\"image_15639837094960.jpg\",\"2020-01-02\",\"\",\"2021-06-10 14:56:34\"),\n(\"12\",\"CONSULTING\",\"General Immigration News\",\"general-immigration-news\",\"2018-2020\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing\r\\n                                Lorem Ipsum passages.</p>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries.</p>\r\\n                            <blockquote class=\\\"blockquote\\\">\r\\n                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to\r\\n                                    make a type specimen book. It has survived not only five centuries.</p>\r\\n                                <h4>- Tomas Edison</h4>\r\\n                            </blockquote>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\\n                            <div class=\\\"row mt-30\\\">\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-img\\\">\r\\n                                        <div class=\\\"video-video-box full-width\\\"> <img src=\\\"assets/img/blog/blog-6.jpg\\\" class=\\\"rounded-border\\\" alt=\\\"img\\\">\r\\n                                            <div class=\\\"video-video-box-overlay\\\">\r\\n                                                <div class=\\\"video-video-box-button\\\"> <button class=\\\"video-video-play-icon\\\" data-toggle=\\\"modal\\\" data-target=\\\".video-modal\\\"> <i class=\\\"fa fa-play\\\"></i> </button> </div>\r\\n                                            </div>\r\\n                                        </div>\r\\n                                        <div class=\\\"modal fade video-modal\\\" id=\\\"videomodal1\\\" tabindex=\\\"-1\\\" role=\\\"dialog\\\">\r\\n                                            <div class=\\\"modal-dialog modal-lg\\\" role=\\\"document\\\"> <iframe height=\\\"415\\\" src=\\\"<?php echo $single[\\\'news_link\\\'] ?>\\\" class=\\\"full-width round-frame image-shadow\\\" allowfullscreen=\\\"\\\"></iframe> </div>\r\\n                                        </div>\r\\n                                    </div>\r\\n                                </div>\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-bottom-text\\\">\r\\n                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\\n                                            it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining\r\\n                                            essentially unchanged.It was popularised in the 1960s with Letraset.</p>\r\\n                                    </div>\r\\n                                </div>\r\\n                            </div>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with Letraset.</p>\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard.</p>\",\"https://www.lipsum.com\",\"1\",\"1\",\"3\",\"image_16233145225555.jpg\",\"image_15639863615043.jpg\",\"2019-12-19\",\"\",\"2021-06-10 15:01:39\"),\n(\"13\",\"FINANCE\",\"What Planning Process Needs?\",\"what-planning-process-needs-\",\"\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing\r\\n                                Lorem Ipsum passages.</p>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries.</p>\r\\n                            <blockquote class=\\\"blockquote\\\">\r\\n                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to\r\\n                                    make a type specimen book. It has survived not only five centuries.</p>\r\\n                                <h4>- Tomas Edison</h4>\r\\n                            </blockquote>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\\n                            <div class=\\\"row mt-30\\\">\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-img\\\">\r\\n                                        <div class=\\\"video-video-box full-width\\\"> <img src=\\\"assets/img/blog/blog-6.jpg\\\" class=\\\"rounded-border\\\" alt=\\\"img\\\">\r\\n                                            <div class=\\\"video-video-box-overlay\\\">\r\\n                                                <div class=\\\"video-video-box-button\\\"> <button class=\\\"video-video-play-icon\\\" data-toggle=\\\"modal\\\" data-target=\\\".video-modal\\\"> <i class=\\\"fa fa-play\\\"></i> </button> </div>\r\\n                                            </div>\r\\n                                        </div>\r\\n                                        <div class=\\\"modal fade video-modal\\\" id=\\\"videomodal1\\\" tabindex=\\\"-1\\\" role=\\\"dialog\\\">\r\\n                                            <div class=\\\"modal-dialog modal-lg\\\" role=\\\"document\\\"> <iframe height=\\\"415\\\" src=\\\"<?php echo $single[\\\'news_link\\\'] ?>\\\" class=\\\"full-width round-frame image-shadow\\\" allowfullscreen=\\\"\\\"></iframe> </div>\r\\n                                        </div>\r\\n                                    </div>\r\\n                                </div>\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-bottom-text\\\">\r\\n                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\\n                                            it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining\r\\n                                            essentially unchanged.It was popularised in the 1960s with Letraset.</p>\r\\n                                    </div>\r\\n                                </div>\r\\n                            </div>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with Letraset.</p>\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard.</p>\",\"https://www.lipsum.com\",\"\",\"1\",\"4\",\"image_16233146478694.jpg\",\"\",\"2019-12-19\",\"2021-06-10 01:44:07\",\"2021-06-10 15:01:58\"),\n(\"14\",\"Business\",\"What Planning Process Needs?\",\"what-planning-process-needs-\",\"\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing\r\\n                                Lorem Ipsum passages.</p>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries.</p>\r\\n                            <blockquote class=\\\"blockquote\\\">\r\\n                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to\r\\n                                    make a type specimen book. It has survived not only five centuries.</p>\r\\n                                <h4>- Tomas Edison</h4>\r\\n                            </blockquote>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\\n                            <div class=\\\"row mt-30\\\">\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-img\\\">\r\\n                                        <div class=\\\"video-video-box full-width\\\"> <img src=\\\"assets/img/blog/blog-6.jpg\\\" class=\\\"rounded-border\\\" alt=\\\"img\\\">\r\\n                                            <div class=\\\"video-video-box-overlay\\\">\r\\n                                                <div class=\\\"video-video-box-button\\\"> <button class=\\\"video-video-play-icon\\\" data-toggle=\\\"modal\\\" data-target=\\\".video-modal\\\"> <i class=\\\"fa fa-play\\\"></i> </button> </div>\r\\n                                            </div>\r\\n                                        </div>\r\\n                                        <div class=\\\"modal fade video-modal\\\" id=\\\"videomodal1\\\" tabindex=\\\"-1\\\" role=\\\"dialog\\\">\r\\n                                            <div class=\\\"modal-dialog modal-lg\\\" role=\\\"document\\\"> <iframe height=\\\"415\\\" src=\\\"<?php echo $single[\\\'news_link\\\'] ?>\\\" class=\\\"full-width round-frame image-shadow\\\" allowfullscreen=\\\"\\\"></iframe> </div>\r\\n                                        </div>\r\\n                                    </div>\r\\n                                </div>\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-bottom-text\\\">\r\\n                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\\n                                            it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining\r\\n                                            essentially unchanged.It was popularised in the 1960s with Letraset.</p>\r\\n                                    </div>\r\\n                                </div>\r\\n                            </div>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with Letraset.</p>\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard.</p>\",\"https://www.lipsum.com\",\"\",\"1\",\"5\",\"image_16233146814350.jpg\",\"\",\"2019-12-19\",\"2021-06-10 01:44:41\",\"2021-06-10 15:02:51\"),\n(\"15\",\"Consulting\",\"What Do You Needs?\",\"what-do-you-needs-\",\"\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing\r\\n                                Lorem Ipsum passages.</p>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries.</p>\r\\n                            <blockquote class=\\\"blockquote\\\">\r\\n                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to\r\\n                                    make a type specimen book. It has survived not only five centuries.</p>\r\\n                                <h4>- Tomas Edison</h4>\r\\n                            </blockquote>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\\n                            <div class=\\\"row mt-30\\\">\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-img\\\">\r\\n                                        <div class=\\\"video-video-box full-width\\\"> <img src=\\\"assets/img/blog/blog-6.jpg\\\" class=\\\"rounded-border\\\" alt=\\\"img\\\">\r\\n                                            <div class=\\\"video-video-box-overlay\\\">\r\\n                                                <div class=\\\"video-video-box-button\\\"> <button class=\\\"video-video-play-icon\\\" data-toggle=\\\"modal\\\" data-target=\\\".video-modal\\\"> <i class=\\\"fa fa-play\\\"></i> </button> </div>\r\\n                                            </div>\r\\n                                        </div>\r\\n                                        <div class=\\\"modal fade video-modal\\\" id=\\\"videomodal1\\\" tabindex=\\\"-1\\\" role=\\\"dialog\\\">\r\\n                                            <div class=\\\"modal-dialog modal-lg\\\" role=\\\"document\\\"> <iframe height=\\\"415\\\" src=\\\"<?php echo $single[\\\'news_link\\\'] ?>\\\" class=\\\"full-width round-frame image-shadow\\\" allowfullscreen=\\\"\\\"></iframe> </div>\r\\n                                        </div>\r\\n                                    </div>\r\\n                                </div>\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-bottom-text\\\">\r\\n                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\\n                                            it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining\r\\n                                            essentially unchanged.It was popularised in the 1960s with Letraset.</p>\r\\n                                    </div>\r\\n                                </div>\r\\n                            </div>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with Letraset.</p>\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard.</p>\",\"https://www.lipsum.com\",\"\",\"1\",\"6\",\"image_16233147455976.jpg\",\"\",\"2019-12-19\",\"2021-06-10 01:45:45\",\"2021-06-10 15:03:08\"),\n(\"16\",\"Business\",\"What Is To Be Produced?\",\"what-is-to-be-produced-\",\"\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing\r\\n                                Lorem Ipsum passages.</p>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries.</p>\r\\n                            <blockquote class=\\\"blockquote\\\">\r\\n                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to\r\\n                                    make a type specimen book. It has survived not only five centuries.</p>\r\\n                                <h4>- Tomas Edison</h4>\r\\n                            </blockquote>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\r\\n                            <div class=\\\"row mt-30\\\">\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-img\\\">\r\\n                                        <div class=\\\"video-video-box full-width\\\"> <img src=\\\"assets/img/blog/blog-6.jpg\\\" class=\\\"rounded-border\\\" alt=\\\"img\\\">\r\\n                                            <div class=\\\"video-video-box-overlay\\\">\r\\n                                                <div class=\\\"video-video-box-button\\\"> <button class=\\\"video-video-play-icon\\\" data-toggle=\\\"modal\\\" data-target=\\\".video-modal\\\"> <i class=\\\"fa fa-play\\\"></i> </button> </div>\r\\n                                            </div>\r\\n                                        </div>\r\\n                                        <div class=\\\"modal fade video-modal\\\" id=\\\"videomodal1\\\" tabindex=\\\"-1\\\" role=\\\"dialog\\\">\r\\n                                            <div class=\\\"modal-dialog modal-lg\\\" role=\\\"document\\\"> <iframe height=\\\"415\\\" src=\\\"<?php echo $single[\\\'news_link\\\'] ?>\\\" class=\\\"full-width round-frame image-shadow\\\" allowfullscreen=\\\"\\\"></iframe> </div>\r\\n                                        </div>\r\\n                                    </div>\r\\n                                </div>\r\\n                                <div class=\\\"col-md-6 col-sm-6 col-12\\\">\r\\n                                    <div class=\\\"blog-list-bottom-text\\\">\r\\n                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled\r\\n                                            it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining\r\\n                                            essentially unchanged.It was popularised in the 1960s with Letraset.</p>\r\\n                                    </div>\r\\n                                </div>\r\\n                            </div>\r\\n                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make\r\\n                                a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. but also the leap into electronic typesetting, remaining essentially unchanged.It\r\\n                                was popularised in the 1960s with Letraset.</p>\",\"<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard.</p>\",\"https://www.lipsum.com\",\"\",\"1\",\"7\",\"image_16233147991984.jpg\",\"\",\"2019-12-19\",\"2021-06-10 01:46:39\",\"2021-06-10 15:03:28\");\n\n\n\nDROP TABLE IF EXISTS tbl_pages;\n\nCREATE TABLE `tbl_pages` (\n  `page_id` int(11) NOT NULL AUTO_INCREMENT,\n  `page_type` varchar(255) NOT NULL DEFAULT \'general\',\n  `page_menu` int(11) NOT NULL DEFAULT 0,\n  `page_parent` int(11) NOT NULL DEFAULT 0,\n  `page_name` varchar(255) NOT NULL,\n  `page_meta_title` varchar(100) NOT NULL,\n  `page_title` varchar(255) NOT NULL,\n  `page_detail` longtext DEFAULT NULL,\n  `page_link` varchar(100) NOT NULL,\n  `page_label` int(11) NOT NULL,\n  `page_image` varchar(100) NOT NULL,\n  `page_thumb` varchar(255) DEFAULT NULL,\n  `page_embed_video` text DEFAULT NULL,\n  `page_meta_desc` text DEFAULT NULL,\n  `page_meta_keywords` text DEFAULT NULL,\n  `page_footer` int(11) NOT NULL DEFAULT 0,\n  `page_status` int(1) NOT NULL DEFAULT 1,\n  `page_modify_date` timestamp NOT NULL DEFAULT current_timestamp(),\n  `page_date` datetime NOT NULL,\n  `page_order` int(11) NOT NULL,\n  PRIMARY KEY (`page_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;\n\nINSERT INTO tbl_pages VALUES(\"1\",\"general\",\"0\",\"0\",\"page-not-found\",\"404 Error\",\"404 Error\",\"<div class=\\\"container\\\">\r\\n<div class=\\\"row text-center\\\">\r\\n<div class=\\\"col-lg-8 col-md-8 col-8 mx-auto\\\">\r\\n<div class=\\\"error-page-wrap\\\">\r\\n<h3>404</h3>\r\\n<h4>Sorry! Page Not Found</h4>\r\\n<p>Page you are looking for counld not be found</p>\r\\n<a href=\\\"./\\\" class=\\\"btn-style btn-filled btn-filled-2\\\">< Back to home</a></div>\r\\n</div>\r\\n</div>\r\\n</div>\",\"page-not-found\",\"0\",\"image_16226151836183.png\",\"\",\"\",\"\",\"\",\"0\",\"1\",\"2021-06-02 11:26:23\",\"2018-05-25 04:43:52\",\"0\"),\n(\"2\",\"general\",\"0\",\"0\",\"terms-conditions\",\"Terms  &  Conditions\",\"Terms & Conditions\",\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet nisi ornare, luctus est at, elementum arcu. Nam convallis, risus quis commodo auctor, tortor lorem interdum lorem, nec iaculis tortor nisl ut elit. Quisque lacinia felis eu lectus hendrerit vestibulum a nec mi. Ut neque diam, fringilla vel pharetra sit amet, vulputate eu lorem. Curabitur eget congue lacus. Aliquam erat volutpat. Nullam rhoncus iaculis urna, vel lobortis sem interdum vitae.</p>\r\\n<p>Aenean et ligula sit amet diam tempus sagittis. Nunc in enim blandit, placerat sapien quis, eleifend mauris. Nulla rhoncus ultrices urna. Aenean semper nunc tortor, vel congue purus tempus quis. Aenean sit amet elit vel tortor accumsan consequat sed non erat. Integer et augue in nibh tempus tincidunt quis quis nisl. Nam eget consequat lacus.</p>\r\\n<p>Quisque est lectus, scelerisque ut nulla ac, euismod ultricies justo. Aliquam tempus iaculis augue, in dignissim ex porta in. Nulla facilisi. Integer sed blandit orci. Etiam lobortis, magna non laoreet ultricies, enim est tempus mi, non elementum dolor mauris pretium orci. Praesent enim ligula, commodo ut augue eu, molestie interdum leo. Phasellus eget pulvinar lacus. Nunc ac vulputate odio. Nunc mattis quam eros, vitae aliquam dolor efficitur eget. Sed vitae venenatis nunc, ut aliquet lectus. Morbi dictum congue ultrices. Proin vel risus commodo, maximus mi ac, rhoncus lacus.</p>\",\"terms-conditions\",\"0\",\"image_16226385064881.jpg\",\"\",\"\",\"\",\"\",\"1\",\"1\",\"2021-06-02 17:55:06\",\"2019-06-24 02:14:27\",\"1\"),\n(\"3\",\"general\",\"0\",\"0\",\"privacy-policy\",\"Privacy Policy\",\"Privacy Policy\",\"<h2 style=\\\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Fira Sans&quot;, sans-serif; font-weight: 700; line-height: 1.3; color: rgb(17, 17, 17); font-size: 2rem;\\\"><p style=\\\"margin-bottom: 0px; font-size: 14px; color: rgb(153, 153, 153); line-height: 1.7;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet nisi ornare, luctus est at, elementum arcu. Nam convallis, risus quis commodo auctor, tortor lorem interdum lorem, nec iaculis tortor nisl ut elit. Quisque lacinia felis eu lectus hendrerit vestibulum a nec mi. Ut neque diam, fringilla vel pharetra sit amet, vulputate eu lorem. Curabitur eget congue lacus. Aliquam erat volutpat. Nullam rhoncus iaculis urna, vel lobortis sem interdum vitae.</p><p style=\\\"margin-bottom: 0px; font-size: 14px; color: rgb(153, 153, 153); line-height: 1.7;\\\">Aenean et ligula sit amet diam tempus sagittis. Nunc in enim blandit, placerat sapien quis, eleifend mauris. Nulla rhoncus ultrices urna. Aenean semper nunc tortor, vel congue purus tempus quis. Aenean sit amet elit vel tortor accumsan consequat sed non erat. Integer et augue in nibh tempus tincidunt quis quis nisl. Nam eget consequat lacus.</p><p style=\\\"margin-bottom: 0px; font-size: 14px; color: rgb(153, 153, 153); line-height: 1.7;\\\">Quisque est lectus, scelerisque ut nulla ac, euismod ultricies justo. Aliquam tempus iaculis augue, in dignissim ex porta in. Nulla facilisi. Integer sed blandit orci. Etiam lobortis, magna non laoreet ultricies, enim est tempus mi, non elementum dolor mauris pretium orci. Praesent enim ligula, commodo ut augue eu, molestie interdum leo. Phasellus eget pulvinar lacus. Nunc ac vulputate odio. Nunc mattis quam eros, vitae aliquam dolor efficitur eget. Sed vitae venenatis nunc, ut aliquet lectus. Morbi dictum congue ultrices. Proin vel risus commodo, maximus mi ac, rhoncus lacus.</p></h2>\",\"privacy-policy\",\"0\",\"image_16226379661669.jpg\",\"\",\"\",\"\",\"\",\"1\",\"1\",\"2021-06-11 14:30:26\",\"2019-06-24 04:22:44\",\"2\"),\n(\"4\",\"general\",\"1\",\"0\",\"reviews\",\"Reviews and Press \",\"Reviews and Press\",\"<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font-weight: bold;\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(0, 0, 0);\\\">Trip Advisor</span></span><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(0, 0, 0);\\\">: Rated #1 Family Restauraunt in Victoria BC Canada</span><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(0, 0, 0);\\\">?</span></p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\">&nbsp;</p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\"><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 0);\\\">Monday Magazine -&nbsp;</span><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(48, 120, 190);\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-decoration-line: underline;\\\"><a href=\\\"https://www.mondaymag.com/opinion/allan-reid-put-on-your-greek-hat-at-ithaka-restaurant/\\\" target=\\\"_blank\\\" data-content=\\\"https://www.mondaymag.com/opinion/allan-reid-put-on-your-greek-hat-at-ithaka-restaurant/\\\" data-type=\\\"external\\\" rel=\\\"noopener\\\" style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; cursor: pointer; text-decoration-line: none;\\\">&quot;Put on your Greek Hat at Ithaka Restaurant&quot;</a></span></span></p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\">&nbsp;</p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\"><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold;\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(0, 0, 0);\\\">Best of the City:&nbsp;</span></span><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 0);\\\">Best Greek Food in the City, 6&nbsp;Years in a Row!</span></p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\">&nbsp;</p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\"><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 0);\\\">Times Colonist -&nbsp;</span><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; cursor: pointer; color: rgb(48, 120, 190);\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-decoration-line: underline;\\\"><a href=\\\"https://www.timescolonist.com/business/opa-young-greeks-find-their-ithaka-at-restaurant-1.544935\\\" target=\\\"_blank\\\" data-content=\\\"https://www.timescolonist.com/business/opa-young-greeks-find-their-ithaka-at-restaurant-1.544935\\\" data-type=\\\"external\\\" rel=\\\"noopener\\\" style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; cursor: pointer; text-decoration-line: none;\\\">&quot;Opa! Young Greeks find their Ithaka at restaurant&quot;</a></span></span></p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\">&nbsp;</p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\"><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 0);\\\">Eat Magazine -&nbsp;</span><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; cursor: pointer; color: rgb(48, 120, 190);\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-decoration-line: underline;\\\"><a href=\\\"https://eatmagazine.ca/first-look-ithaka-greek-restaurant/\\\" target=\\\"_blank\\\" data-content=\\\"https://eatmagazine.ca/first-look-ithaka-greek-restaurant/\\\" data-type=\\\"external\\\" rel=\\\"noopener\\\" style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; cursor: pointer; text-decoration-line: none;\\\">&quot;First Look: Ithaka Greek Restaurant&quot;</a></span></span></p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\">&nbsp;</p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\"><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(0, 0, 0);\\\">Eat Magazine -&nbsp;</span><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; cursor: pointer; color: rgb(48, 120, 190);\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-decoration-line: underline;\\\"><a href=\\\"https://eatmagazine.ca/finding-quality-take-out-in-victoria/\\\" target=\\\"_blank\\\" data-content=\\\"https://eatmagazine.ca/finding-quality-take-out-in-victoria/\\\" data-type=\\\"external\\\" rel=\\\"noopener\\\" style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; cursor: pointer; text-decoration-line: none;\\\">&quot;Finding Quality Take-Out in Victoria&quot;</a></span></span></p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\">&nbsp;</p>\r\\n<p class=\\\"font_7\\\" style=\\\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 17px; line-height: normal; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif; background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(95, 0, 56); pointer-events: auto;\\\"><a href=\\\"https://www.youtube.com/watch?v=D1V9RVQePv8\\\" target=\\\"_blank\\\" data-content=\\\"https://www.youtube.com/watch?v=D1V9RVQePv8\\\" data-type=\\\"external\\\" rel=\\\"noopener\\\" style=\\\"background: 0px 0px; font-family: lulo-clean-w01-one-bold, sans-serif; font-size: 16px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; cursor: pointer; text-decoration-line: none;\\\"><span style=\\\"background: 0px 0px; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; cursor: pointer;\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font-family: helvetica-w01-roman, helvetica-w02-roman, helvetica-lt-w10-roman, sans-serif;\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; letter-spacing: 0.05em;\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; font-weight: bold;\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(41, 41, 41);\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-decoration-line: underline;\\\">CHEK 6 Order up -&nbsp;</span></span><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: rgb(48, 120, 190);\\\"><span style=\\\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; text-decoration-line: underline;\\\">&quot;The New Ithaka 2.0&quot;</span></span></span></span></span></span></a></p>\",\"reviews\",\"0\",\"\",\"m\",\"\",\"Reviews and Press \",\"Reviews and Press \",\"0\",\"0\",\"2020-11-06 09:23:38\",\"2019-07-12 01:44:37\",\"3\"),\n(\"10\",\"general\",\"0\",\"0\",\"faq\",\"About Us\",\"FAQ\\\'s\",\"<h2 style=\\\"-webkit-font-smoothing: antialiased; padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; line-height: 52px; font-size: 40px; font-family: Poppins, sans-serif; color: rgb(5, 7, 72);\\\">About Agency</h2><p style=\\\"-webkit-font-smoothing: antialiased; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; vertical-align: baseline; font-size: 17px; line-height: 28px; color: rgb(106, 106, 142); font-family: \\\"Open Sans\\\", sans-serif;\\\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry.</p><p style=\\\"-webkit-font-smoothing: antialiased; padding: 0px; margin: 25px 0px 0px; outline: 0px; vertical-align: baseline; font-size: 17px; line-height: 28px; color: rgb(106, 106, 142); font-family: \\\"Open Sans\\\", sans-serif;\\\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry.</p>\",\"\",\"0\",\"image_16236486801303.jpg\",\"\",\"\",\"\",\"\",\"0\",\"1\",\"2021-06-14 10:31:20\",\"2021-05-28 04:24:01\",\"4\"),\n(\"11\",\"general\",\"0\",\"0\",\"services\",\"Gain a Success With Us!\",\"Services We Provide\",\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\r\\n					<br>incididunt ut labore et dolore magna aliqua.</p>\",\"\",\"0\",\"image_16234949864410.jpg\",\"\",\"\",\"\",\"\",\"0\",\"1\",\"2021-06-14 19:43:33\",\"2021-05-29 09:07:58\",\"5\"),\n(\"12\",\"general\",\"0\",\"0\",\"portfolio\",\"Our Work\",\"Portfolio\",\"<h2 style=\\\"-webkit-font-smoothing: antialiased; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; line-height: 52px; font-size: 40px; font-family: Poppins, sans-serif; color: rgb(5, 7, 72);\\\">Portfolio</h2>\",\"\",\"0\",\"image_16234952734061.jpg\",\"\",\"\",\"\",\"\",\"0\",\"1\",\"2021-06-12 15:54:33\",\"2021-05-29 09:10:05\",\"6\"),\n(\"13\",\"general\",\"0\",\"0\",\"contact-us\",\"Contact Now\",\"Contact Us\",\"<p><div class=\\\"form-block\\\" style=\\\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline; color: rgb(106, 106, 142); font-family: \\\"Open Sans\\\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\\\"><form action=\\\"http://localhost/zairone.com/contact#\\\" method=\\\"post\\\" data-url=\\\"http://localhost/zairone.com/send-contact-message\\\" data-type=\\\"contact\\\" class=\\\"contact-form contact\\\" style=\\\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline;\\\"><div class=\\\"fieldsets row\\\" style=\\\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px -15px; outline: 0px; vertical-align: baseline; display: flex; flex-wrap: wrap;\\\"></div></form></div></p><div class=\\\"common-heading text-l\\\" style=\\\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline; text-align: left; position: relative; z-index: 10; color: rgb(106, 106, 142); font-family: \\\"Open Sans\\\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\\\"><h2 class=\\\"mt0 mb0\\\" style=\\\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; line-height: 52px; font-size: 40px; font-family: Poppins, sans-serif; color: rgb(5, 7, 72);\\\">Have Question? Write a Message</h2><p class=\\\"mb60 mt20\\\" style=\\\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 20px 0px 60px; outline: 0px; vertical-align: baseline; font-size: 17px; line-height: 28px;\\\">We will catch you as early as we receive the message</p></div>\",\"\",\"0\",\"image_16234949487496.jpg\",\"\",\"\",\"\",\"\",\"0\",\"1\",\"2021-06-12 15:49:08\",\"2021-05-29 09:12:17\",\"7\"),\n(\"14\",\"general\",\"0\",\"0\",\"about-us\",\"About Us\",\"About Us\",\"<span style=\\\"color: rgb(153, 153, 153); font-family: &quot;Fira Sans&quot;, sans-serif;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>\",\"\",\"0\",\"image_16231556353452.jpg\",\"\",\"\",\"\",\"\",\"0\",\"1\",\"2021-06-08 17:41:48\",\"2021-05-29 09:19:59\",\"8\"),\n(\"15\",\"general\",\"0\",\"0\",\"team\",\"Our Team\",\"Team\",\"<p><span style=\\\"color: rgb(153, 153, 153); font-family: &quot;Fira Sans&quot;, sans-serif; font-size: 14px; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span><br></p>\",\"\",\"0\",\"image_16232334864930.jpg\",\"\",\"\",\"\",\"\",\"0\",\"1\",\"2021-06-09 15:11:26\",\"2021-06-09 03:11:26\",\"9\"),\n(\"16\",\"general\",\"0\",\"0\",\"partners\",\"Our Partners\",\"Partners\",\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.<br></p>\",\"\",\"0\",\"image_16232355948813.jpg\",\"\",\"\",\"\",\"\",\"0\",\"1\",\"2021-06-09 15:46:34\",\"2021-06-09 03:46:34\",\"11\"),\n(\"17\",\"general\",\"0\",\"0\",\"news\",\"Latest News\",\"News\",\"<p><span style=\\\"color: rgb(153, 153, 153); font-family: &quot;Fira Sans&quot;, sans-serif;\\\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard.</span><br></p>\",\"\",\"0\",\"image_16233157923462.jpg\",\"\",\"\",\"\",\"\",\"0\",\"1\",\"2021-06-10 14:03:12\",\"2021-06-10 02:03:12\",\"12\"),\n(\"18\",\"general\",\"0\",\"0\",\"pricing-list\",\"Our Packages\",\"Pick The Best Plan For You\",\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\r\\n					<br>incididunt ut labore et dolore magna aliqua.</p>\",\"\",\"0\",\"image_16233297653115.jpg\",\"\",\"\",\"\",\"\",\"0\",\"1\",\"2021-06-14 19:37:29\",\"2021-06-10 05:56:05\",\"10\");\n\n\n\nDROP TABLE IF EXISTS tbl_partners;\n\nCREATE TABLE `tbl_partners` (\n  `part_id` int(11) NOT NULL AUTO_INCREMENT,\n  `part_name` varchar(100) NOT NULL,\n  `part_type` varchar(255) NOT NULL,\n  `part_desc` mediumtext NOT NULL,\n  `part_image` varchar(255) NOT NULL,\n  `part_sign` varchar(255) NOT NULL,\n  `part_logo` varchar(100) NOT NULL,\n  `part_status` int(1) NOT NULL,\n  `part_order` int(11) NOT NULL,\n  PRIMARY KEY (`part_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_partners VALUES(\"1\",\"Ann Clarck\",\"MAJORITY OWNER\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.\",\"image_16231426817144.jpg\",\"image_16231426817512.png\",\"image_16231446523246.png\",\"1\",\"0\"),\n(\"2\",\"Joseph Austen\",\"TECHNICAL LEAD\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.\",\"image_16231430646313.jpg\",\"image_16231430645223.png\",\"image_16231446703690.png\",\"1\",\"1\"),\n(\"3\",\"Tim Cuck\",\"MAJORITY OWNER\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.\",\"image_16231431195158.jpg\",\"image_16231431199546.png\",\"image_16231446868847.png\",\"1\",\"2\"),\n(\"4\",\"Ann Clarck\",\"TECHNICAL LEAD\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.\",\"image_16231431639483.jpg\",\"image_16231431631605.png\",\"image_16231447026216.png\",\"1\",\"3\"),\n(\"5\",\"Ann Clarck\",\"MAJORITY OWNER\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.\",\"image_16231443744844.jpg\",\"image_16231443742084.png\",\"image_16231447173815.png\",\"1\",\"4\"),\n(\"6\",\"Tim Cuck\",\"TECHNICAL LEAD\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.\",\"image_16231445049090.jpg\",\"image_16231445048911.png\",\"image_16231447325417.png\",\"1\",\"5\");\n\n\n\nDROP TABLE IF EXISTS tbl_portfolio;\n\nCREATE TABLE `tbl_portfolio` (\n  `portfolio_id` int(11) NOT NULL AUTO_INCREMENT,\n  `portfolio_title` varchar(100) NOT NULL,\n  `portfolio_detail` mediumtext NOT NULL,\n  `portfolio_image` varchar(100) NOT NULL,\n  `portfolio_client_name` varchar(100) NOT NULL,\n  `portfolio_features` varchar(255) NOT NULL,\n  `portfolio_project_date` date NOT NULL,\n  `portfolio_order` int(11) NOT NULL,\n  `portfolio_status` int(1) NOT NULL,\n  `portfolio_project_status` int(1) NOT NULL,\n  PRIMARY KEY (`portfolio_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_portfolio VALUES(\"1\",\"Pets Care & Training\",\"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\",\"image_16232419353150.jpg\",\"Rao Rizwan\",\"<ul>\r\\n								<li><i class=\\\"fa fa-check\\\"></i>Immigration consultant, Information technology consulting.</li>\r\\n								<li><i class=\\\"fa fa-check\\\"></i>Consultant pharmacist Creative consultant.</li>\r\\n								<li><i class=\\\"fa fa-check\\\"></i>Employment consult\",\"2021-05-28\",\"1\",\"1\",\"1\"),\n(\"2\",\"Car Rental App\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.\r\\n\r\\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"image_16232420206018.jpg\",\"PORTFOLIO 2\",\"\",\"2021-05-28\",\"2\",\"1\",\"0\"),\n(\"4\",\"Event Management\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.\r\\n\r\\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"image_16232420518278.jpg\",\"Rao Rizwan\",\"\",\"2021-05-28\",\"4\",\"1\",\"2\"),\n(\"5\",\"Restaurant App\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.\r\\n\r\\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"image_16232420908972.jpg\",\"Rao Rizwan\",\"\",\"2021-05-28\",\"5\",\"1\",\"0\"),\n(\"6\",\"Restaurant / Hotel\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.\r\\n\r\\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"image_16232421341753.jpg\",\"Rao Rizwan\",\"\",\"2021-05-28\",\"6\",\"1\",\"0\"),\n(\"7\",\"Super Mart App\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.\r\\n\r\\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"image_16232421609497.jpg\",\"Rao Rizwan\",\"\",\"2021-05-28\",\"7\",\"1\",\"0\");\n\n\n\nDROP TABLE IF EXISTS tbl_portfolio_categories;\n\nCREATE TABLE `tbl_portfolio_categories` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `portfolio_id` int(11) NOT NULL,\n  `cat_id` int(11) NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `Portfolio Foreign Key` (`portfolio_id`),\n  KEY `Category Foreign Key` (`cat_id`),\n  CONSTRAINT `Category Foreign Key` FOREIGN KEY (`cat_id`) REFERENCES `tbl_categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  CONSTRAINT `Portfolio Foreign Key` FOREIGN KEY (`portfolio_id`) REFERENCES `tbl_portfolio` (`portfolio_id`) ON DELETE CASCADE ON UPDATE CASCADE\n) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_portfolio_categories VALUES(\"54\",\"5\",\"4\"),\n(\"57\",\"7\",\"1\"),\n(\"58\",\"7\",\"2\"),\n(\"59\",\"7\",\"3\"),\n(\"60\",\"7\",\"5\"),\n(\"63\",\"2\",\"1\"),\n(\"66\",\"6\",\"2\"),\n(\"67\",\"6\",\"4\"),\n(\"69\",\"1\",\"1\"),\n(\"72\",\"4\",\"2\"),\n(\"73\",\"4\",\"3\");\n\n\n\nDROP TABLE IF EXISTS tbl_pricing;\n\nCREATE TABLE `tbl_pricing` (\n  `pri_id` int(11) NOT NULL AUTO_INCREMENT,\n  `pri_title` varchar(100) NOT NULL,\n  `pri_price` int(100) NOT NULL,\n  `pri_pkg` varchar(255) NOT NULL,\n  `pri_features` mediumtext NOT NULL,\n  `pri_pos` varchar(255) NOT NULL,\n  `pri_date` date NOT NULL,\n  `pri_status` int(1) NOT NULL,\n  `pri_order` int(11) NOT NULL,\n  PRIMARY KEY (`pri_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_pricing VALUES(\"1\",\"Classic\",\"37\",\"week\",\"<ul>\r\\n							<li>Express, Support</li>\r\\n							<li>Business Analyzing</li>\r\\n							<li>Swift Management</li>\r\\n						</ul>\",\"\",\"0000-00-00\",\"1\",\"1\"),\n(\"2\",\"Popular\",\"79\",\"month\",\"<ul>\r\\n							<li>Express, Support</li>\r\\n							<li>Business Analyzing</li>\r\\n							<li>Swift Management</li>\r\\n						</ul>\",\"New\",\"0000-00-00\",\"1\",\"2\"),\n(\"3\",\"Premium\",\"99\",\"month\",\"<ul>\r\\n							<li>Express, Support</li>\r\\n							<li>Business Analyzing</li>\r\\n							<li>Swift Management</li>\r\\n						</ul>\",\"\",\"0000-00-00\",\"1\",\"3\");\n\n\n\nDROP TABLE IF EXISTS tbl_service_technologies;\n\nCREATE TABLE `tbl_service_technologies` (\n  `id` int(11) NOT NULL AUTO_INCREMENT,\n  `service_id` int(11) NOT NULL,\n  `tec_id` int(11) NOT NULL,\n  PRIMARY KEY (`id`),\n  KEY `RELATION WITH SERVICES` (`service_id`),\n  KEY `RELATION WITH SERVICE TECHNOLOGIES` (`tec_id`),\n  CONSTRAINT `RELATION WITH SERVICE TECHNOLOGIES` FOREIGN KEY (`tec_id`) REFERENCES `tbl_technologies` (`tec_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  CONSTRAINT `RELATION WITH SERVICES` FOREIGN KEY (`service_id`) REFERENCES `tbl_services` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE\n) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4;\n\n\n\n\nDROP TABLE IF EXISTS tbl_services;\n\nCREATE TABLE `tbl_services` (\n  `service_id` int(11) NOT NULL AUTO_INCREMENT,\n  `service_image` varchar(100) NOT NULL,\n  `service_thumb` varchar(100) NOT NULL,\n  `service_icon` varchar(100) NOT NULL,\n  `service_title` varchar(100) NOT NULL,\n  `service_slug` varchar(255) DEFAULT NULL,\n  `service_short_desc` varchar(255) NOT NULL,\n  `service_detail_desc` varchar(255) NOT NULL,\n  `service_order` int(11) NOT NULL,\n  `service_status` int(1) NOT NULL,\n  PRIMARY KEY (`service_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_services VALUES(\"14\",\"image_16231391897062.jpg\",\"image_16227018155863.png\",\"icon-telemarketer2\",\" Business Solutions\",\"business-solutions\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \",\"0\",\"1\"),\n(\"15\",\"image_16231391305569.jpg\",\"thumb_16221826534512.svg\",\"icon-line-chart\",\"Global Consumer insights\",\"global-consumer-insights\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \",\"0\",\"1\"),\n(\"16\",\"image_16231376562894.jpg\",\"thumb_16221827351664.svg\",\"icon-balance3\",\"Thought Leadership\",\"thought-leadership\",\"orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \",\"0\",\"1\"),\n(\"17\",\"image_16231377356251.jpg\",\"thumb_16221827807311.svg\",\"icon-briefcase\",\"Finance Advisor\",\"finance-advisor\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \",\"0\",\"1\"),\n(\"18\",\"image_16231378108902.jpg\",\"thumb_16221828723061.svg\",\"icon-target\",\"Professional Approach\",\"professional-approach\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \",\"0\",\"1\"),\n(\"19\",\"image_16231378845121.jpg\",\"thumb_16221285312792.jpg\",\"icon-diamond\",\"Effective Solutions\",\"effective-solutions\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \",\"0\",\"1\");\n\n\n\nDROP TABLE IF EXISTS tbl_siteadmin;\n\nCREATE TABLE `tbl_siteadmin` (\n  `site_id` int(11) NOT NULL AUTO_INCREMENT,\n  `site_login` varchar(20) NOT NULL,\n  `site_pswd` varchar(32) NOT NULL,\n  `site_info_data` longtext DEFAULT NULL,\n  `site_contact_data` longtext DEFAULT NULL,\n  `site_email_data` longtext NOT NULL,\n  `site_smtp_data` longtext NOT NULL,\n  `site_meta_data` longtext DEFAULT NULL,\n  `site_script_data` longtext NOT NULL,\n  `site_social_data` longtext DEFAULT NULL,\n  `site_og_data` longtext DEFAULT NULL,\n  `site_email_details` longtext NOT NULL,\n  `site_captcha` longtext NOT NULL,\n  `site_theme` varchar(20) NOT NULL,\n  PRIMARY KEY (`site_id`),\n  UNIQUE KEY `login` (`site_login`)\n) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;\n\nINSERT INTO tbl_siteadmin VALUES(\"1\",\"admin\",\"7565v3q454040333\",\"a:10:{s:9:\\\"site_name\\\";s:16:\\\"Multipurpose CMS\\\";s:11:\\\"site_domain\\\";s:20:\\\"multipurpose_cms.com\\\";s:12:\\\"site_version\\\";s:3:\\\"1.1\\\";s:9:\\\"site_logo\\\";s:24:\\\"image_16230733597750.png\\\";s:12:\\\"site_favicon\\\";s:24:\\\"image_16234837981553.png\\\";s:11:\\\"login_image\\\";s:0:\\\"\\\";s:8:\\\"timezone\\\";s:53:\\\"(GMT-8:00) America/Whitehorse (Pacific Standard Time)\\\";s:11:\\\"site_status\\\";s:1:\\\"1\\\";s:14:\\\"site_translate\\\";s:1:\\\"1\\\";s:8:\\\"site_msg\\\";s:49:\\\"Site is going to be offline for a couple of days.\\\";}\",\"a:7:{s:10:\\\"site_email\\\";s:21:\\\"info@multipurpose.com\\\";s:8:\\\"site_fax\\\";s:21:\\\"info@multipurpose.com\\\";s:10:\\\"site_phone\\\";s:15:\\\"+92 333 6063901\\\";s:11:\\\"site_phone2\\\";s:15:\\\"+92 333 6063901\\\";s:12:\\\"site_address\\\";s:50:\\\"AL-E-AHMED SHOPPING MALL UNIVERSITY ROAD SARGODHA.\\\";s:12:\\\"site_website\\\";s:21:\\\"info@multipurpose.com\\\";s:10:\\\"site_skype\\\";s:21:\\\"info@multipurpose.com\\\";}\",\"a:6:{s:18:\\\"site_contact_email\\\";s:21:\\\"info@multipurpose.com\\\";s:23:\\\"site_contact_email_from\\\";s:21:\\\"info@multipurpose.com\\\";s:21:\\\"site_contact_auto_sub\\\";s:29:\\\"Thank you for considering us.\\\";s:23:\\\"site_contact_auto_reply\\\";s:51:\\\"This is a response message from Multipurpose CMS...\\\";s:18:\\\"site_email_details\\\";s:75:\\\"<p><u><strong> Thank you for considering us.</strong></u></p>\r\\n<p><br></p>\\\";s:16:\\\"site_contact_map\\\";s:0:\\\"\\\";}\",\"a:6:{s:11:\\\"site_driver\\\";s:4:\\\"smtp\\\";s:14:\\\"site_mail_host\\\";s:17:\\\"multtipurpose_cms\\\";s:14:\\\"site_mail_port\\\";s:2:\\\"21\\\";s:18:\\\"site_mail_username\\\";s:16:\\\"multipurpose_cms\\\";s:18:\\\"site_mail_password\\\";s:5:\\\"admin\\\";s:20:\\\"site_mail_incription\\\";s:16:\\\"multipurpose_cms\\\";}\",\"a:5:{s:15:\\\"site_meta_title\\\";s:16:\\\"Multipurpose CMS\\\";s:21:\\\"site_meta_description\\\";s:16:\\\"Multipurpose CMS\\\";s:18:\\\"site_meta_keywords\\\";s:16:\\\"Multipurpose CMS\\\";s:19:\\\"site_meta_copyright\\\";s:16:\\\"Multipurpose CMS\\\";s:16:\\\"site_meta_author\\\";s:16:\\\"Multipurpose CMS\\\";}\",\"a:2:{s:21:\\\"site_meta_script_head\\\";s:16:\\\"Multipurpose CMS\\\";s:21:\\\"site_meta_script_body\\\";s:16:\\\"Multipurpose CMS\\\";}\",\"a:6:{s:13:\\\"site_facebook\\\";s:21:\\\"info@multipurpose.com\\\";s:12:\\\"site_twitter\\\";s:21:\\\"info@multipurpose.com\\\";s:11:\\\"site_google\\\";s:21:\\\"info@multipurpose.com\\\";s:12:\\\"site_youtube\\\";s:21:\\\"info@multipurpose.com\\\";s:13:\\\"site_linkedin\\\";s:21:\\\"info@multipurpose.com\\\";s:10:\\\"site_skype\\\";s:21:\\\"info@multipurpose.com\\\";}\",\"a:6:{s:13:\\\"site_og_title\\\";s:25:\\\"Prime Cargo International\\\";s:12:\\\"site_og_type\\\";s:7:\\\"website\\\";s:13:\\\"site_og_image\\\";s:73:\\\"http://localhost/paperbirdpackaging/uploads/logo/Image_15474478326709.png\\\";s:18:\\\"site_og_image_type\\\";s:10:\\\"image/jpeg\\\";s:14:\\\"site_og_locale\\\";s:5:\\\"en_US\\\";s:19:\\\"site_og_description\\\";s:25:\\\"Prime Cargo International\\\";}\",\"\",\"a:3:{s:14:\\\"captcha_status\\\";s:1:\\\"1\\\";s:9:\\\"admin_key\\\";s:40:\\\"6Lf_nWwUAAAAAN_QKbYWwwf0r6DDWct52DoYzETF\\\";s:10:\\\"public_key\\\";s:40:\\\"6Lf_nWwUAAAAAOWsOO1Uc71lQo8aWGt1p93MlWym\\\";}\",\"a:1:{s:10:\\\"site_colo\");\n\n\n\nDROP TABLE IF EXISTS tbl_slider;\n\nCREATE TABLE `tbl_slider` (\n  `slider_id` int(11) NOT NULL AUTO_INCREMENT,\n  `slider_title` varchar(255) DEFAULT NULL,\n  `slider_desc` varchar(1000) DEFAULT NULL,\n  `slider_btn1_text` varchar(100) DEFAULT NULL,\n  `slider_btn1_link` varchar(500) DEFAULT NULL,\n  `slider_btn2_text` varchar(100) DEFAULT NULL,\n  `slider_btn2_link` varchar(500) DEFAULT NULL,\n  `slider_thumb` varchar(50) DEFAULT NULL,\n  `slider_image` varchar(50) DEFAULT NULL,\n  `slider_order` int(11) DEFAULT NULL,\n  `slider_status` int(11) NOT NULL DEFAULT 1,\n  PRIMARY KEY (`slider_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;\n\nINSERT INTO tbl_slider VALUES(\"4\",\"We will help to improve your business\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus, risus sit amet auctor sodales, justo erat tempor eros.\",\"Contact us\",\"https://www.facebook.com\",\"\",\"\",\"thumb_16230722359148.jpg\",\"image_16230722359148.jpg\",\"1\",\"1\"),\n(\"5\",\"We will help to improve your business\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus, risus sit amet auctor sodales, justo erat tempor eros.\",\"Contact us\",\"https://www.facebook.com\",\"\",\"\",\"thumb_16230723158490.jpg\",\"image_16230723158490.jpg\",\"2\",\"1\"),\n(\"6\",\"We will help to improve your business\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus, risus sit amet auctor sodales, justo erat tempor eros.\",\"Contact us\",\"https://www.facebook.com\",\"\",\"\",\"thumb_16230727649139.jpg\",\"image_16230727649139.jpg\",\"3\",\"1\");\n\n\n\nDROP TABLE IF EXISTS tbl_subscribers;\n\nCREATE TABLE `tbl_subscribers` (\n  `sub_id` int(11) NOT NULL AUTO_INCREMENT,\n  `sub_email` varchar(255) DEFAULT NULL,\n  `sub_date` timestamp NOT NULL DEFAULT current_timestamp(),\n  `sub_status` int(1) NOT NULL,\n  `sub_order` int(11) NOT NULL,\n  PRIMARY KEY (`sub_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_subscribers VALUES(\"1\",\"DelsieEOrtiz@armyspy.com\",\"2020-11-11 06:46:49\",\"1\",\"0\"),\n(\"2\",\"DeborahMWilliams@armyspy.com\",\"2020-11-11 06:46:59\",\"1\",\"1\"),\n(\"3\",\"ebbieSCalder@teleworm.us\",\"2020-11-11 06:47:09\",\"1\",\"2\"),\n(\"6\",\"a@a.com\",\"2021-06-02 07:15:37\",\"1\",\"0\");\n\n\n\nDROP TABLE IF EXISTS tbl_team;\n\nCREATE TABLE `tbl_team` (\n  `team_id` int(11) NOT NULL AUTO_INCREMENT,\n  `team_name` varchar(100) NOT NULL,\n  `team_portfolio` varchar(100) NOT NULL,\n  `team_email` varchar(255) NOT NULL,\n  `team_phone` varchar(15) NOT NULL,\n  `team_fb` varchar(100) NOT NULL,\n  `team_twt` varchar(100) NOT NULL,\n  `team_linkedin` varchar(100) NOT NULL,\n  `team_desc` mediumtext NOT NULL,\n  `team_order` int(11) NOT NULL,\n  `team_status` int(11) NOT NULL,\n  `team_image` varchar(50) NOT NULL,\n  PRIMARY KEY (`team_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;\n\nINSERT INTO tbl_team VALUES(\"1\",\"Jack Semper\",\"Majority Owner\",\"multipurpose@info.com\",\"+9233112233444\",\"https://www.facebook.com\",\"https://www.twitter.com\",\"https://www.linkedin.com\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"1\",\"1\",\"image_16231601414226.jpg\"),\n(\"2\",\"Ann Smith\",\"Finance Lead\",\"multipurpose@info.com\",\"+9233112233444\",\"http://www.facebook.com\",\"http://www.twitter.com\",\"http://www.linkedin.com\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua\",\"2\",\"1\",\"image_16231602011411.jpg\"),\n(\"3\",\"Philip Wilson\",\"Networking Lead\",\"multipurpose@info.com\",\"+9233112233444\",\"http://www.facebook.com\",\"http://www.twitter.com\",\"http://www.linkedin.com\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"3\",\"1\",\"image_16231602539330.jpg\"),\n(\"4\",\"Dr M Ashfaq Hussain\",\"MD (USA), FAAP (USA)\",\"multipurpose@info.com\",\"+9233112233444\",\"http://www.facebook.com\",\"http://www.twitter.com\",\"http://www.linkedin.com\",\"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\",\"4\",\"1\",\"image_16232333205492.jpg\");\n\n\n\nDROP TABLE IF EXISTS tbl_technologies;\n\nCREATE TABLE `tbl_technologies` (\n  `tec_id` int(11) NOT NULL AUTO_INCREMENT,\n  `tec_title` varchar(100) NOT NULL,\n  `tec_status` int(1) NOT NULL,\n  `tec_order` int(11) NOT NULL,\n  PRIMARY KEY (`tec_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_technologies VALUES(\"2\",\"PHP\",\"1\",\"1\"),\n(\"3\",\"LARAVEL\",\"1\",\"2\"),\n(\"4\",\"CODEIGNITER\",\"0\",\"3\"),\n(\"5\",\"Custom\",\"1\",\"4\");\n\n\n\nDROP TABLE IF EXISTS tbl_testimonials;\n\nCREATE TABLE `tbl_testimonials` (\n  `test_id` int(11) NOT NULL AUTO_INCREMENT,\n  `test_title` varchar(100) NOT NULL,\n  `test_slug` varchar(100) NOT NULL,\n  `test_image` varchar(100) NOT NULL,\n  `test_desc` varchar(255) NOT NULL,\n  `test_portfolio` varchar(255) NOT NULL,\n  `test_status` int(1) NOT NULL,\n  `test_order` int(11) NOT NULL,\n  PRIMARY KEY (`test_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_testimonials VALUES(\"6\",\"Moana Smile\",\"moana-smile\",\"image_16231451737568.jpg\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"Consultant\",\"0\",\"7\"),\n(\"7\",\"Mary Kay\",\"mary-kay\",\"image_16221959928879.jpg\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"Design Lead\",\"0\",\"8\"),\n(\"8\",\"Mary Kay\",\"mary-kay\",\"image_16231453331567.jpg\",\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\",\"Networking Lead\",\"1\",\"9\");\n\n\n\nDROP TABLE IF EXISTS tbl_texts;\n\nCREATE TABLE `tbl_texts` (\n  `txt_id` int(11) NOT NULL AUTO_INCREMENT,\n  `txt_type` varchar(50) NOT NULL,\n  `txt_data` longtext DEFAULT NULL,\n  PRIMARY KEY (`txt_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;\n\nINSERT INTO tbl_texts VALUES(\"1\",\"header\",\"a:3:{s:7:\\\"formOne\\\";s:6:\\\"posted\\\";s:10:\\\"mod_status\\\";s:1:\\\"1\\\";s:4:\\\"text\\\";s:41:\\\"Welcome to Professional Consulting Agency\\\";}\"),\n(\"2\",\"footer\",\"a:4:{s:10:\\\"mod_status\\\";s:1:\\\"1\\\";s:5:\\\"title\\\";s:16:\\\"Multipurpose CMS\\\";s:4:\\\"desc\\\";s:148:\\\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\\\";s:14:\\\"text_copyright\\\";s:57:\\\" © Copyright 2021 MULTIPURPOSE CMS, All Rights reserved.\\\";}\"),\n(\"3\",\"about\",\"a:9:{s:10:\\\"mod_status\\\";s:1:\\\"1\\\";s:5:\\\"title\\\";s:32:\\\"Welcome To Our Consulting Agency\\\";s:6:\\\"detail\\\";s:366:\\\"<p><span style=\\\"color: rgb(153, 153, 153); font-family: \\\"Fira Sans\\\", sans-serif; background-color: rgb(249, 249, 249);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>\\\";s:5:\\\"image\\\";s:24:\\\"image_16231332211167.jpg\\\";s:6:\\\"title1\\\";s:57:\\\"Immigration consultant, Information technology consulting\\\";s:6:\\\"title2\\\";s:41:\\\"Consultant pharmacist Creative consultant\\\";s:6:\\\"title3\\\";s:46:\\\"Employment consultant Environmental consultant\\\";s:4:\\\"text\\\";s:10:\\\"Contact Us\\\";s:4:\\\"link\\\";s:24:\\\"https://www.facebook.com\\\";}\"),\n(\"4\",\"offers\",\"a:4:{s:9:\\\"sec_title\\\";s:11:\\\"COMBO OFFER\\\";s:8:\\\"sec_desc\\\";s:63:\\\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit\\\";s:10:\\\"sec_banner\\\";s:24:\\\"image_16051026155403.jpg\\\";s:8:\\\"sec_logo\\\";s:24:\\\"image_16051026153216.png\\\";}\"),\n(\"5\",\"special_food\",\"a:4:{s:9:\\\"sec_title\\\";s:19:\\\"ITHAKA SPECIAL FOOD\\\";s:8:\\\"sec_desc\\\";s:64:\\\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit.\\\";s:10:\\\"sec_banner\\\";s:0:\\\"\\\";s:8:\\\"sec_logo\\\";s:24:\\\"image_16051038149859.png\\\";}\"),\n(\"6\",\"menus\",\"a:4:{s:9:\\\"sec_title\\\";s:14:\\\"OUR DAILY MENU\\\";s:8:\\\"sec_desc\\\";s:64:\\\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit.\\\";s:10:\\\"sec_banner\\\";s:24:\\\"image_16051211994039.jpg\\\";s:8:\\\"sec_logo\\\";s:24:\\\"image_16051127092665.png\\\";}\"),\n(\"8\",\"deals\",\"a:4:{s:9:\\\"sec_title\\\";s:14:\\\"DAILY SET MENU\\\";s:8:\\\"sec_desc\\\";s:66:\\\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit.\r\\n\\\";s:10:\\\"sec_banner\\\";s:24:\\\"image_16051164822838.png\\\";s:8:\\\"sec_logo\\\";s:24:\\\"image_16051164822595.png\\\";}\"),\n(\"10\",\"testimonials\",\"a:4:{s:10:\\\"mod_status\\\";s:1:\\\"1\\\";s:5:\\\"title\\\";s:15:\\\"What People Say\\\";s:9:\\\"sec_title\\\";s:11:\\\"Testmonials\\\";s:5:\\\"image\\\";s:24:\\\"image_16236549449774.jpg\\\";}\"),\n(\"11\",\"contact\",\"a:7:{s:10:\\\"mod_status\\\";s:1:\\\"1\\\";s:5:\\\"title\\\";s:26:\\\"We are Available Worldwide\\\";s:6:\\\"detail\\\";s:345:\\\"<p><span style=\\\"color: rgb(153, 153, 153); font-family: \\\"Fira Sans\\\", sans-serif; font-size: 14px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>\\\";s:5:\\\"image\\\";s:24:\\\"image_16231336107821.png\\\";s:8:\\\"duration\\\";s:21:\\\"Mon-Sat 09:00 - 19:00\\\";s:4:\\\"text\\\";s:10:\\\"Contact Us\\\";s:4:\\\"link\\\";s:24:\\\"https://www.facebook.com\\\";}\"),\n(\"12\",\"business\",\"a:28:{s:5:\\\"title\\\";s:17:\\\"Our Business Plan\\\";s:9:\\\"secondary\\\";s:19:\\\"Business Model View\\\";s:6:\\\"detail\\\";s:474:\\\"<p><span style=\\\"color: rgb(106, 106, 142); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 17px;\\\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry.</span><br></p>\\\";s:14:\\\"business_image\\\";s:24:\\\"image_16220311988171.jpg\\\";s:6:\\\"title1\\\";s:17:\\\"Social Networking\\\";s:6:\\\"image1\\\";s:24:\\\"image_16221313647374.png\\\";s:6:\\\"title2\\\";s:17:\\\"Digital Marketing\\\";s:6:\\\"image2\\\";s:24:\\\"image_16221313646287.png\\\";s:6:\\\"title3\\\";s:21:\\\"Ecommerce Development\\\";s:6:\\\"image3\\\";s:24:\\\"image_16221313646022.png\\\";s:6:\\\"title4\\\";s:13:\\\"Video Service\\\";s:6:\\\"image4\\\";s:24:\\\"image_16221313649376.png\\\";s:6:\\\"title5\\\";s:15:\\\"Banking Service\\\";s:6:\\\"image5\\\";s:24:\\\"image_16221313644504.png\\\";s:6:\\\"title6\\\";s:18:\\\"Enterprise Service\\\";s:6:\\\"image6\\\";s:24:\\\"image_16221313641359.png\\\";s:6:\\\"title7\\\";s:17:\\\"Education Service\\\";s:6:\\\"image7\\\";s:24:\\\"image_16221313647288.png\\\";s:6:\\\"title8\\\";s:16:\\\"Tour and Travels\\\";s:6:\\\"image8\\\";s:24:\\\"image_16221313641973.png\\\";s:6:\\\"title9\\\";s:14:\\\"Health Service\\\";s:6:\\\"image9\\\";s:24:\\\"image_16221313645753.png\\\";s:7:\\\"title10\\\";s:14:\\\"Event & Ticket\\\";s:7:\\\"image10\\\";s:24:\\\"image_16221313646179.png\\\";s:7:\\\"title11\\\";s:18:\\\"Restaurant Service\\\";s:7:\\\"image11\\\";s:24:\\\"image_16221313645846.png\\\";s:7:\\\"title12\\\";s:19:\\\"Business Consultant\\\";s:7:\\\"image12\\\";s:24:\\\"image_16221313641950.png\\\";}\"),\n(\"13\",\"stats\",\"a:12:{s:6:\\\"title1\\\";s:13:\\\"Happy Clients\\\";s:6:\\\"count1\\\";s:3:\\\"450\\\";s:6:\\\"image1\\\";s:24:\\\"image_16221949899580.svg\\\";s:6:\\\"title2\\\";s:13:\\\"Projects Done\\\";s:6:\\\"count2\\\";s:3:\\\"48k\\\";s:6:\\\"image2\\\";s:24:\\\"image_16221949898874.svg\\\";s:6:\\\"title3\\\";s:12:\\\"Hours Worked\\\";s:6:\\\"count3\\\";s:3:\\\"95k\\\";s:6:\\\"image3\\\";s:24:\\\"image_16221949892338.svg\\\";s:6:\\\"title4\\\";s:17:\\\"Support Available\\\";s:6:\\\"count4\\\";s:4:\\\"24/7\\\";s:6:\\\"image4\\\";s:24:\\\"image_16221949897830.svg\\\";}\"),\n(\"14\",\"hero\",\"a:6:{s:5:\\\"title\\\";s:32:\\\"Creative Web Development Company\\\";s:4:\\\"text\\\";s:11:\\\"Get Started\\\";s:4:\\\"link\\\";s:24:\\\"https://www.facebook.com\\\";s:6:\\\"detail\\\";s:247:\\\"<p><span style=\\\"color: rgb(106, 106, 142); font-family: \\\"Open Sans\\\", sans-serif; font-size: 20px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus, risus sit amet auctor sodales, justo erat tempor eros.</span><br></p>\\\";s:5:\\\"image\\\";s:24:\\\"image_16222051109337.png\\\";s:8:\\\"bg_image\\\";s:24:\\\"image_16225515093791.png\\\";}\"),\n(\"15\",\"newsletter\",\"a:4:{s:10:\\\"mod_status\\\";s:1:\\\"1\\\";s:5:\\\"title\\\";s:13:\\\"Stay informed\\\";s:6:\\\"detail\\\";s:442:\\\"<p><span style=\\\"color: rgb(255, 255, 255); font-family: \\\"Fira Sans\\\", sans-serif; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</span><br style=\\\"color: rgb(255, 255, 255); font-family: \\\"Fira Sans\\\", sans-serif; text-align: center;\\\"><span style=\\\"color: rgb(255, 255, 255); font-family: \\\"Fira Sans\\\", sans-serif; text-align: center;\\\">incididunt ut labore et dolore magna aliqua.</span><br></p>\\\";s:5:\\\"image\\\";s:24:\\\"image_16231501437608.png\\\";}\"),\n(\"16\",\"portfolio\",\"a:12:{s:10:\\\"mod_status\\\";s:1:\\\"1\\\";s:5:\\\"title\\\";s:24:\\\"Make Successful Business\\\";s:9:\\\"sec_title\\\";s:11:\\\"How We Work\\\";s:6:\\\"detail\\\";s:442:\\\"<p><span style=\\\"color: rgb(170, 170, 170); font-family: \\\"Fira Sans\\\", sans-serif; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</span><br style=\\\"color: rgb(170, 170, 170); font-family: \\\"Fira Sans\\\", sans-serif; text-align: center;\\\"><span style=\\\"color: rgb(170, 170, 170); font-family: \\\"Fira Sans\\\", sans-serif; text-align: center;\\\">incididunt ut labore et dolore magna aliqua.</span><br></p>\\\";s:6:\\\"title1\\\";s:23:\\\"Professional Consulting\\\";s:5:\\\"desc1\\\";s:76:\\\"Lorem ipsum dolor sit amet, te ridens gloriatur temporibus per enim veritus.\\\";s:6:\\\"title2\\\";s:17:\\\"Online Reputation\\\";s:5:\\\"desc2\\\";s:76:\\\"Lorem ipsum dolor sit amet, te ridens gloriatur temporibus per enim veritus.\\\";s:6:\\\"title3\\\";s:15:\\\"Market Research\\\";s:5:\\\"desc3\\\";s:76:\\\"Lorem ipsum dolor sit amet, te ridens gloriatur temporibus per enim veritus.\\\";s:6:\\\"title4\\\";s:15:\\\"Budget Friendly\\\";s:5:\\\"desc4\\\";s:76:\\\"Lorem ipsum dolor sit amet, te ridens gloriatur temporibus per enim veritus.\\\";}\"),\n(\"17\",\"service\",\"a:4:{s:10:\\\"mod_status\\\";s:1:\\\"1\\\";s:5:\\\"title\\\";s:19:\\\"Services We Provide\\\";s:9:\\\"sec_title\\\";s:23:\\\"Gain a Success With Us!\\\";s:6:\\\"detail\\\";s:442:\\\"<p><span style=\\\"color: rgb(170, 170, 170); font-family: \\\"Fira Sans\\\", sans-serif; text-align: center;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</span><br style=\\\"color: rgb(170, 170, 170); font-family: \\\"Fira Sans\\\", sans-serif; text-align: center;\\\"><span style=\\\"color: rgb(170, 170, 170); font-family: \\\"Fira Sans\\\", sans-serif; text-align: center;\\\">incididunt ut labore et dolore magna aliqua.</span><br></p>\\\";}\"),\n(\"18\",\"client\",\"a:7:{s:10:\\\"mod_status\\\";s:1:\\\"1\\\";s:5:\\\"title\\\";s:23:\\\"Gain a Success With Us!\\\";s:6:\\\"detail\\\";s:530:\\\"<h2 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \\\"Fira Sans\\\", sans-serif; line-height: 54.6px; color: rgb(255, 255, 255); font-size: 42px; position: relative; text-align: center;\\\"><span style=\\\"font-weight: 600;\\\">Doing the right thing</span></h2><h4 style=\\\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \\\"Fira Sans\\\", sans-serif; font-weight: 600; line-height: 48px; color: rgb(255, 255, 255); font-size: 30px; position: relative; text-align: center;\\\">At the Right Time.</h4>\\\";s:5:\\\"image\\\";s:24:\\\"image_16231400177693.jpg\\\";s:10:\\\"live_image\\\";s:185:\\\"videoURL:\\\'https://www.youtube.com/watch?v=buBvqw6G3WU\\\', containment:\\\'#video-area\\\', showControls:false, autoPlay:true, zoom:0, loop:true, mute:true, startAt:55, opacity:1, quality:\\\'low\\\',\\\";s:4:\\\"text\\\";s:15:\\\"Become a Client\\\";s:4:\\\"link\\\";s:24:\\\"https://www.facebook.com\\\";}\"),\n(\"19\",\"mission\",\"a:12:{s:10:\\\"mod_status\\\";s:1:\\\"1\\\";s:5:\\\"title\\\";s:50:\\\"Our Mission is to Turn Your Ideas Into Businesses.\\\";s:9:\\\"sec_title\\\";s:11:\\\"Our mission\\\";s:6:\\\"detail\\\";s:338:\\\"<span style=\\\"color: rgb(153, 153, 153); font-family: \\\"Fira Sans\\\", sans-serif; font-size: 14px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>\\\";s:6:\\\"title1\\\";s:15:\\\"Market Research\\\";s:6:\\\"count1\\\";s:2:\\\"10\\\";s:6:\\\"title2\\\";s:14:\\\"Sales Services\\\";s:6:\\\"count2\\\";s:1:\\\"5\\\";s:6:\\\"title3\\\";s:17:\\\"Online Reputation\\\";s:6:\\\"count3\\\";s:2:\\\"50\\\";s:6:\\\"title4\\\";s:20:\\\"Strategic Consulting\\\";s:6:\\\"count4\\\";s:2:\\\"75\\\";}\"),\n(\"20\",\"team\",\"a:3:{s:5:\\\"title\\\";s:28:\\\"We Are Team Of Professionals\\\";s:9:\\\"sec_title\\\";s:13:\\\"Meet Our Team\\\";s:6:\\\"detail\\\";s:586:\\\"<p><span style=\\\"color: rgb(170, 170, 170); font-family: &quot;Fira Sans&quot;, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</span><br style=\\\"color: rgb(170, 170, 170); font-family: &quot;Fira Sans&quot;, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\\\"><span style=\\\"color: rgb(170, 170, 170); font-family: &quot;Fira Sans&quot;, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\\\">incididunt ut labore et dolore magna aliqua.</span><br></p>\\\";}\");\n\n\n\nDROP TABLE IF EXISTS tbl_visitadmins;\n\nCREATE TABLE `tbl_visitadmins` (\n  `visit_id` int(11) NOT NULL AUTO_INCREMENT,\n  `visit_admin_id` int(11) NOT NULL,\n  `visit_ip_address` varchar(15) NOT NULL,\n  `visit_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),\n  PRIMARY KEY (`visit_id`),\n  KEY `Foreign Key To Site Admin` (`visit_admin_id`),\n  CONSTRAINT `Foreign Key To Site Admin` FOREIGN KEY (`visit_admin_id`) REFERENCES `tbl_siteadmin` (`site_id`) ON DELETE CASCADE ON UPDATE CASCADE\n) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;\n\nINSERT INTO tbl_visitadmins VALUES(\"1\",\"1\",\"::1\",\"2021-06-20 12:24:33\"),\n(\"2\",\"1\",\"::1\",\"2021-06-20 12:54:13\"),\n(\"3\",\"1\",\"::1\",\"2021-06-24 16:50:19\"),\n(\"4\",\"1\",\"::1\",\"2021-06-24 16:50:32\"),\n(\"5\",\"1\",\"::1\",\"2021-06-24 16:50:53\"),\n(\"6\",\"1\",\"::1\",\"2021-06-24 16:51:29\"),\n(\"7\",\"1\",\"::1\",\"2021-06-24 16:51:38\"),\n(\"8\",\"1\",\"::1\",\"2021-06-24 16:51:47\"),\n(\"9\",\"1\",\"::1\",\"2021-06-24 16:51:57\"),\n(\"10\",\"1\",\"::1\",\"2021-06-24 16:52:13\");\n\n\n\n', '2021-07-03 09:34:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(100) NOT NULL,
  `cat_slug` varchar(100) NOT NULL,
  `cat_status` int(1) NOT NULL,
  `cat_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`cat_id`, `cat_title`, `cat_slug`, `cat_status`, `cat_order`) VALUES
(6, 'Hand Wash', 'hand-wash', 1, 1),
(7, 'Hand Wax', 'hand-wax', 1, 2),
(8, 'Auto Wash', 'auto-wash', 1, 3),
(9, 'Tripple', 'tripple', 1, 4),
(10, 'Auto Details', 'auto-details', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countvisit`
--

CREATE TABLE `tbl_countvisit` (
  `visit_count_id` int(11) NOT NULL,
  `visit_count_ip` varchar(15) NOT NULL,
  `visit_count_date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_countvisit`
--

INSERT INTO `tbl_countvisit` (`visit_count_id`, `visit_count_ip`, `visit_count_date`) VALUES
(1, '::1', '2021-Jun-22'),
(3, '::1', '2021-Jun-22'),
(4, '::1', '2021-Jun-22'),
(5, '::1', '2021-Jun-22'),
(6, '::1', '2021-Jun-22'),
(7, '::1', '2021-Jun-22'),
(8, '::1', '2021-Jun-22'),
(9, '::1', '2021-Jun-23'),
(10, '::1', '2021-Jun-24'),
(11, '::1', '2021-Jun-24'),
(12, '::1', '2021-Jun-24'),
(13, '::1', '2021-Jun-24'),
(14, '::1', '2021-Jun-24'),
(15, '::1', '2021-Jun-24'),
(16, '::1', '2021-Jun-24'),
(17, '::1', '2021-Jun-24'),
(18, '::1', '2021-Jun-24'),
(19, '::1', '2021-Jun-24'),
(20, '::1', '2021-Jun-24'),
(21, '::1', '2021-Jun-25'),
(22, '::1', '2021-Jun-25'),
(23, '::1', '2021-Jun-25'),
(24, '::1', '2021-Jun-25'),
(25, '::1', '2021-Jun-25'),
(26, '::1', '2021-Jun-25'),
(27, '::1', '2021-Jun-25'),
(28, '::1', '2021-Jun-25'),
(29, '::1', '2021-Jun-25'),
(30, '::1', '2021-Jun-25'),
(31, '::1', '2021-Jun-25'),
(32, '::1', '2021-Jun-25'),
(33, '::1', '2021-Jun-25'),
(34, '::1', '2021-Jun-25'),
(35, '::1', '2021-Jun-25'),
(36, '::1', '2021-Jun-26'),
(37, '::1', '2021-Jun-26'),
(38, '::1', '2021-Jun-26'),
(39, '::1', '2021-Jun-26'),
(40, '::1', '2021-Jun-26'),
(41, '::1', '2021-Jun-26'),
(42, '::1', '2021-Jun-26'),
(43, '::1', '2021-Jun-26'),
(44, '::1', '2021-Jun-26'),
(45, '::1', '2021-Jun-26'),
(46, '::1', '2021-Jun-26'),
(47, '::1', '2021-Jun-26'),
(48, '::1', '2021-Jun-26'),
(49, '::1', '2021-Jun-26'),
(50, '::1', '2021-Jun-26'),
(51, '::1', '2021-Jun-26'),
(52, '::1', '2021-Jun-26'),
(53, '::1', '2021-Jun-26'),
(54, '::1', '2021-Jun-26'),
(55, '::1', '2021-Jun-26'),
(56, '::1', '2021-Jun-26'),
(57, '::1', '2021-Jun-26'),
(58, '::1', '2021-Jun-26'),
(59, '::1', '2021-Jun-26'),
(60, '::1', '2021-Jun-26'),
(61, '::1', '2021-Jun-26'),
(62, '::1', '2021-Jun-26'),
(63, '::1', '2021-Jun-26'),
(64, '::1', '2021-Jun-26'),
(65, '::1', '2021-Jun-26'),
(66, '::1', '2021-Jun-28'),
(67, '::1', '2021-Jun-30'),
(68, '::1', '2021-Jun-30'),
(69, '::1', '2021-Jun-30'),
(70, '::1', '2021-Jun-30'),
(71, '::1', '2021-Jun-30'),
(72, '::1', '2021-Jun-30'),
(73, '::1', '2021-Jun-30'),
(74, '::1', '2021-Jun-30'),
(75, '::1', '2021-Jun-30'),
(76, '::1', '2021-Jun-30'),
(77, '::1', '2021-Jun-30'),
(78, '::1', '2021-Jun-30'),
(79, '::1', '2021-Jun-30'),
(80, '::1', '2021-Jun-30'),
(81, '::1', '2021-Jun-30'),
(82, '::1', '2021-Jun-30'),
(83, '::1', '2021-Jun-30'),
(84, '::1', '2021-Jun-30'),
(85, '::1', '2021-Jun-30'),
(86, '127.0.0.1', '2021-Jul-01'),
(87, '::1', '2021-Jul-01'),
(88, '::1', '2021-Jul-01'),
(89, '::1', '2021-Jul-01'),
(90, '::1', '2021-Jul-01'),
(91, '::1', '2021-Jul-01'),
(92, '::1', '2021-Jul-01'),
(93, '::1', '2021-Jul-01'),
(94, '::1', '2021-Jul-01'),
(95, '::1', '2021-Jul-01'),
(96, '::1', '2021-Jul-01'),
(97, '::1', '2021-Jul-01'),
(98, '::1', '2021-Jul-01'),
(99, '::1', '2021-Jul-01'),
(100, '::1', '2021-Jul-01'),
(101, '::1', '2021-Jul-05'),
(102, '::1', '2021-Jul-05'),
(103, '::1', '2021-Jul-06'),
(104, '::1', '2021-Jul-06'),
(105, '::1', '2021-Jul-06'),
(106, '::1', '2021-Jul-06'),
(107, '::1', '2021-Jul-06'),
(108, '::1', '2021-Jul-06'),
(109, '::1', '2021-Jul-06'),
(110, '::1', '2021-Jul-06'),
(111, '::1', '2021-Jul-06'),
(112, '::1', '2021-Jul-06'),
(113, '::1', '2021-Jul-06'),
(114, '::1', '2021-Jul-06'),
(115, '::1', '2021-Jul-06'),
(116, '::1', '2021-Jul-05'),
(117, '::1', '2021-Jul-05'),
(118, '::1', '2021-Jul-05'),
(119, '::1', '2021-Jul-05'),
(120, '::1', '2021-Jul-05'),
(121, '::1', '2021-Jul-05'),
(122, '::1', '2021-Jul-05'),
(123, '::1', '2021-Jul-05'),
(124, '::1', '2021-Jul-05'),
(125, '::1', '2021-Jul-05'),
(126, '::1', '2021-Jul-05'),
(127, '::1', '2021-Jul-05'),
(128, '::1', '2021-Jul-05'),
(129, '::1', '2021-Jul-05'),
(130, '::1', '2021-Jul-05'),
(131, '::1', '2021-Jul-05'),
(132, '::1', '2021-Jul-05'),
(133, '::1', '2021-Jul-05'),
(134, '::1', '2021-Jul-05'),
(135, '::1', '2021-Jul-05'),
(136, '::1', '2021-Jul-05'),
(137, '::1', '2021-Jul-05'),
(138, '::1', '2021-Jul-05'),
(139, '::1', '2021-Jul-05'),
(140, '::1', '2021-Jul-05'),
(141, '::1', '2021-Jul-05'),
(142, '::1', '2021-Jul-05'),
(143, '::1', '2021-Jul-05'),
(144, '::1', '2021-Jul-05'),
(145, '::1', '2021-Jul-05'),
(146, '::1', '2021-Jul-05'),
(147, '::1', '2021-Jul-05'),
(148, '::1', '2021-Jul-05'),
(149, '::1', '2021-Jul-05'),
(150, '::1', '2021-Jul-05'),
(151, '::1', '2021-Jul-05'),
(152, '::1', '2021-Jul-05'),
(153, '::1', '2021-Jul-05'),
(154, '::1', '2021-Jul-05'),
(155, '::1', '2021-Jul-05'),
(156, '::1', '2021-Jul-05'),
(157, '::1', '2021-Jul-05'),
(158, '::1', '2021-Jul-05'),
(159, '::1', '2021-Jul-05'),
(160, '::1', '2021-Jul-05'),
(161, '::1', '2021-Jul-05'),
(162, '::1', '2021-Jul-05'),
(163, '::1', '2021-Jul-05'),
(164, '::1', '2021-Jul-05'),
(165, '::1', '2021-Jul-05'),
(166, '::1', '2021-Jul-05'),
(167, '::1', '2021-Jul-05'),
(168, '::1', '2021-Jul-05'),
(169, '::1', '2021-Jul-05'),
(170, '::1', '2021-Jul-05'),
(171, '::1', '2021-Jul-05'),
(172, '::1', '2021-Jul-05'),
(173, '::1', '2021-Jul-05'),
(174, '::1', '2021-Jul-05'),
(175, '::1', '2021-Jul-05'),
(176, '::1', '2021-Jul-05'),
(177, '::1', '2021-Jul-05'),
(178, '::1', '2021-Jul-05'),
(179, '::1', '2021-Jul-05'),
(180, '::1', '2021-Jul-05'),
(181, '::1', '2021-Jul-05'),
(182, '::1', '2021-Jul-05'),
(183, '::1', '2021-Jul-05'),
(184, '::1', '2021-Jul-05'),
(185, '::1', '2021-Jul-05'),
(186, '::1', '2021-Jul-05'),
(187, '::1', '2021-Jul-05'),
(188, '::1', '2021-Jul-05'),
(189, '::1', '2021-Jul-05'),
(190, '::1', '2021-Jul-05'),
(191, '::1', '2021-Jul-05'),
(192, '::1', '2021-Jul-05'),
(193, '::1', '2021-Jul-05'),
(194, '::1', '2021-Jul-05'),
(195, '::1', '2021-Jul-05'),
(196, '::1', '2021-Jul-05'),
(197, '::1', '2021-Jul-05'),
(198, '::1', '2021-Jul-05'),
(199, '::1', '2021-Jul-05'),
(200, '::1', '2021-Jul-05'),
(201, '::1', '2021-Jul-05'),
(202, '::1', '2021-Jul-05'),
(203, '::1', '2021-Jul-05'),
(204, '::1', '2021-Jul-05'),
(205, '::1', '2021-Jul-05'),
(206, '::1', '2021-Jul-05'),
(207, '::1', '2021-Jul-05'),
(208, '::1', '2021-Jul-05'),
(209, '::1', '2021-Jul-05'),
(210, '::1', '2021-Jul-05'),
(211, '::1', '2021-Jul-05'),
(212, '::1', '2021-Jul-05'),
(213, '::1', '2021-Jul-05'),
(214, '::1', '2021-Jul-05'),
(215, '::1', '2021-Jul-05'),
(216, '::1', '2021-Jul-05'),
(217, '::1', '2021-Jul-05'),
(218, '::1', '2021-Jul-05'),
(219, '::1', '2021-Jul-05'),
(220, '::1', '2021-Jul-05'),
(221, '::1', '2021-Jul-05'),
(222, '::1', '2021-Jul-05'),
(223, '::1', '2021-Jul-06'),
(224, '::1', '2021-Jul-06'),
(225, '::1', '2021-Jul-06'),
(226, '::1', '2021-Jul-06'),
(227, '::1', '2021-Jul-06'),
(228, '::1', '2021-Jul-06'),
(229, '::1', '2021-Jul-06'),
(230, '::1', '2021-Jul-06'),
(231, '::1', '2021-Jul-06'),
(232, '::1', '2021-Jul-06'),
(233, '::1', '2021-Jul-06'),
(234, '::1', '2021-Jul-06'),
(235, '::1', '2021-Jul-06'),
(236, '::1', '2021-Jul-06'),
(237, '::1', '2021-Jul-06'),
(238, '::1', '2021-Jul-06'),
(239, '::1', '2021-Jul-06'),
(240, '::1', '2021-Jul-06'),
(241, '::1', '2021-Jul-06'),
(242, '::1', '2021-Jul-06'),
(243, '::1', '2021-Jul-06'),
(244, '::1', '2021-Jul-06'),
(245, '::1', '2021-Jul-06'),
(246, '::1', '2021-Jul-06'),
(247, '::1', '2021-Jul-06'),
(248, '::1', '2021-Jul-06'),
(249, '::1', '2021-Jul-06'),
(250, '::1', '2021-Jul-06'),
(251, '::1', '2021-Jul-06'),
(252, '::1', '2021-Jul-06'),
(253, '::1', '2021-Jul-06'),
(254, '::1', '2021-Jul-06'),
(255, '::1', '2021-Jul-06'),
(256, '::1', '2021-Jul-06'),
(257, '::1', '2021-Jul-06'),
(258, '::1', '2021-Jul-06'),
(259, '::1', '2021-Jul-06'),
(260, '::1', '2021-Jul-06'),
(261, '::1', '2021-Jul-06'),
(262, '::1', '2021-Jul-06'),
(263, '::1', '2021-Jul-06'),
(264, '::1', '2021-Jul-06'),
(265, '::1', '2021-Jul-06'),
(266, '::1', '2021-Jul-06'),
(267, '::1', '2021-Jul-06'),
(268, '::1', '2021-Jul-06'),
(269, '::1', '2021-Jul-06'),
(270, '::1', '2021-Jul-06'),
(271, '::1', '2021-Jul-13'),
(272, '::1', '2021-Jul-13'),
(273, '::1', '2021-Jul-13'),
(274, '::1', '2021-Jul-14'),
(275, '::1', '2021-Jul-14'),
(276, '::1', '2021-Jul-14'),
(277, '::1', '2021-Jul-14'),
(278, '::1', '2021-Jul-14'),
(279, '::1', '2021-Jul-14'),
(280, '::1', '2021-Jul-14'),
(281, '::1', '2021-Jul-14'),
(282, '::1', '2021-Jul-14'),
(283, '::1', '2021-Jul-14'),
(284, '::1', '2021-Jul-14'),
(285, '::1', '2021-Jul-14'),
(286, '::1', '2021-Jul-14'),
(287, '::1', '2021-Jul-14'),
(288, '::1', '2021-Jul-14'),
(289, '::1', '2021-Jul-14'),
(290, '::1', '2021-Jul-14'),
(291, '::1', '2021-Jul-14'),
(292, '::1', '2021-Jul-14'),
(293, '::1', '2021-Jul-14'),
(294, '::1', '2021-Jul-14'),
(295, '::1', '2021-Jul-14'),
(296, '::1', '2021-Jul-14'),
(297, '::1', '2021-Jul-14'),
(298, '::1', '2021-Jul-14'),
(299, '::1', '2021-Jul-14'),
(300, '::1', '2021-Jul-14'),
(301, '::1', '2021-Jul-14'),
(302, '::1', '2021-Jul-14'),
(303, '::1', '2021-Jul-14'),
(304, '::1', '2021-Jul-14'),
(305, '::1', '2021-Jul-14'),
(306, '::1', '2021-Jul-14'),
(307, '::1', '2021-Jul-14'),
(308, '::1', '2021-Jul-14'),
(309, '::1', '2021-Jul-14'),
(310, '::1', '2021-Jul-14'),
(311, '::1', '2021-Jul-14'),
(312, '::1', '2021-Jul-14'),
(313, '::1', '2021-Jul-14'),
(314, '::1', '2021-Jul-14'),
(315, '::1', '2021-Jul-14'),
(316, '::1', '2021-Jul-14'),
(317, '::1', '2021-Jul-14'),
(318, '::1', '2021-Jul-14'),
(319, '::1', '2021-Jul-14'),
(320, '::1', '2021-Jul-14'),
(321, '::1', '2021-Jul-14'),
(322, '::1', '2021-Jul-14'),
(323, '::1', '2021-Jul-14'),
(324, '::1', '2021-Jul-14'),
(325, '::1', '2021-Jul-14'),
(326, '::1', '2021-Jul-14'),
(327, '::1', '2021-Jul-14'),
(328, '::1', '2021-Jul-14'),
(329, '::1', '2021-Jul-14'),
(330, '::1', '2021-Jul-14'),
(331, '::1', '2021-Jul-15'),
(332, '::1', '2021-Jul-15'),
(333, '::1', '2021-Jul-15'),
(334, '::1', '2021-Jul-15'),
(335, '::1', '2021-Jul-15'),
(336, '::1', '2021-Jul-15'),
(337, '::1', '2021-Jul-15'),
(338, '::1', '2021-Jul-15'),
(339, '::1', '2021-Jul-15'),
(340, '::1', '2021-Jul-15'),
(341, '::1', '2021-Jul-15'),
(342, '::1', '2021-Jul-15'),
(343, '::1', '2021-Jul-15'),
(344, '::1', '2021-Jul-15'),
(345, '::1', '2021-Jul-15'),
(346, '::1', '2021-Jul-15'),
(347, '::1', '2021-Jul-15'),
(348, '::1', '2021-Jul-15'),
(349, '::1', '2021-Jul-15'),
(350, '::1', '2021-Jul-15'),
(351, '::1', '2021-Jul-15'),
(352, '::1', '2021-Jul-15'),
(353, '::1', '2021-Jul-15'),
(354, '::1', '2021-Jul-15'),
(355, '::1', '2021-Jul-15'),
(356, '::1', '2021-Jul-15'),
(357, '::1', '2021-Jul-15'),
(358, '::1', '2021-Jul-15'),
(359, '::1', '2021-Jul-15'),
(360, '::1', '2021-Jul-15'),
(361, '::1', '2021-Jul-15'),
(362, '::1', '2021-Jul-15'),
(363, '::1', '2021-Jul-15'),
(364, '::1', '2021-Jul-15'),
(365, '::1', '2021-Jul-15'),
(366, '::1', '2021-Jul-15'),
(367, '::1', '2021-Jul-15'),
(368, '::1', '2021-Jul-15'),
(369, '::1', '2021-Jul-15'),
(370, '::1', '2021-Jul-15'),
(371, '::1', '2021-Jul-15'),
(372, '::1', '2021-Jul-15'),
(373, '::1', '2021-Jul-15'),
(374, '::1', '2021-Jul-15'),
(375, '::1', '2021-Jul-15'),
(376, '::1', '2021-Jul-15'),
(377, '::1', '2021-Jul-15'),
(378, '::1', '2021-Jul-15'),
(379, '::1', '2021-Jul-15'),
(380, '::1', '2021-Jul-15'),
(381, '::1', '2021-Jul-15'),
(382, '::1', '2021-Jul-15'),
(383, '::1', '2021-Jul-15'),
(384, '::1', '2021-Jul-15'),
(385, '::1', '2021-Jul-15'),
(386, '::1', '2021-Jul-15'),
(387, '::1', '2021-Jul-15'),
(388, '::1', '2021-Jul-15'),
(389, '::1', '2021-Jul-15'),
(390, '::1', '2021-Jul-15'),
(391, '::1', '2021-Jul-15'),
(392, '::1', '2021-Jul-15'),
(393, '::1', '2021-Jul-15'),
(394, '::1', '2021-Jul-15'),
(395, '::1', '2021-Jul-15'),
(396, '::1', '2021-Jul-15'),
(397, '::1', '2021-Jul-15'),
(398, '::1', '2021-Jul-15'),
(399, '::1', '2021-Jul-15'),
(400, '::1', '2021-Jul-15'),
(401, '::1', '2021-Jul-15'),
(402, '::1', '2021-Jul-15'),
(403, '::1', '2021-Jul-15'),
(404, '::1', '2021-Jul-15'),
(405, '::1', '2021-Jul-15'),
(406, '127.0.0.1', '2021-Jul-15'),
(407, '::1', '2021-Jul-15'),
(408, '::1', '2021-Jul-15'),
(409, '::1', '2021-Jul-15'),
(410, '::1', '2021-Jul-15'),
(411, '::1', '2021-Jul-15'),
(412, '::1', '2021-Jul-15'),
(413, '::1', '2021-Jul-15'),
(414, '::1', '2021-Jul-15'),
(415, '::1', '2021-Jul-15'),
(416, '::1', '2021-Jul-15'),
(417, '::1', '2021-Jul-15'),
(418, '::1', '2021-Jul-15'),
(419, '::1', '2021-Jul-15'),
(420, '::1', '2021-Jul-15'),
(421, '::1', '2021-Jul-15'),
(422, '::1', '2021-Jul-15'),
(423, '::1', '2021-Jul-15'),
(424, '::1', '2021-Jul-15'),
(425, '::1', '2021-Jul-15'),
(426, '::1', '2021-Jul-15'),
(427, '::1', '2021-Jul-15'),
(428, '::1', '2021-Jul-15'),
(429, '::1', '2021-Jul-15'),
(430, '::1', '2021-Jul-15'),
(431, '::1', '2021-Jul-15'),
(432, '::1', '2021-Jul-15'),
(433, '::1', '2021-Jul-15'),
(434, '::1', '2021-Jul-15'),
(435, '::1', '2021-Jul-15'),
(436, '::1', '2021-Jul-15'),
(437, '::1', '2021-Jul-15'),
(438, '::1', '2021-Jul-15'),
(439, '::1', '2021-Jul-15'),
(440, '::1', '2021-Jul-15'),
(441, '::1', '2021-Jul-15'),
(442, '::1', '2021-Jul-15'),
(443, '::1', '2021-Jul-15'),
(444, '::1', '2021-Jul-15'),
(445, '::1', '2021-Jul-15'),
(446, '::1', '2021-Jul-15'),
(447, '::1', '2021-Jul-15'),
(448, '::1', '2021-Jul-15'),
(449, '::1', '2021-Jul-15'),
(450, '::1', '2021-Jul-15'),
(451, '::1', '2021-Jul-15'),
(452, '::1', '2021-Jul-15'),
(453, '::1', '2021-Jul-15'),
(454, '::1', '2021-Jul-15'),
(455, '::1', '2021-Jul-15'),
(456, '::1', '2021-Jul-15'),
(457, '::1', '2021-Jul-15'),
(458, '::1', '2021-Jul-15'),
(459, '::1', '2021-Jul-15'),
(460, '::1', '2021-Jul-15'),
(461, '::1', '2021-Jul-15'),
(462, '::1', '2021-Jul-15'),
(463, '::1', '2021-Jul-15'),
(464, '::1', '2021-Jul-15'),
(465, '::1', '2021-Jul-15'),
(466, '::1', '2021-Jul-15'),
(467, '::1', '2021-Jul-15'),
(468, '::1', '2021-Jul-15'),
(469, '::1', '2021-Jul-15'),
(470, '::1', '2021-Jul-15'),
(471, '::1', '2021-Jul-15'),
(472, '::1', '2021-Jul-15'),
(473, '::1', '2021-Jul-15'),
(474, '::1', '2021-Jul-15'),
(475, '::1', '2021-Jul-15'),
(476, '::1', '2021-Jul-15'),
(477, '::1', '2021-Jul-15'),
(478, '::1', '2021-Jul-15'),
(479, '::1', '2021-Jul-15'),
(480, '::1', '2021-Jul-15'),
(481, '::1', '2021-Jul-15'),
(482, '::1', '2021-Jul-15'),
(483, '::1', '2021-Jul-15'),
(484, '::1', '2021-Jul-15'),
(485, '::1', '2021-Jul-15'),
(486, '::1', '2021-Jul-15'),
(487, '::1', '2021-Jul-15'),
(488, '::1', '2021-Jul-15'),
(489, '::1', '2021-Jul-15'),
(490, '::1', '2021-Jul-15'),
(491, '::1', '2021-Jul-15'),
(492, '::1', '2021-Jul-15'),
(493, '::1', '2021-Jul-15'),
(494, '::1', '2021-Jul-15'),
(495, '::1', '2021-Jul-15'),
(496, '::1', '2021-Jul-15'),
(497, '::1', '2021-Jul-15'),
(498, '::1', '2021-Jul-15'),
(499, '::1', '2021-Jul-15'),
(500, '::1', '2021-Jul-15'),
(501, '::1', '2021-Jul-15'),
(502, '::1', '2021-Jul-15'),
(503, '::1', '2021-Jul-15'),
(504, '::1', '2021-Jul-15'),
(505, '::1', '2021-Jul-15'),
(506, '::1', '2021-Jul-15'),
(507, '::1', '2021-Jul-15'),
(508, '::1', '2021-Jul-15'),
(509, '::1', '2021-Jul-15'),
(510, '::1', '2021-Jul-15'),
(511, '::1', '2021-Jul-15'),
(512, '::1', '2021-Jul-15'),
(513, '::1', '2021-Jul-16'),
(514, '::1', '2021-Jul-16'),
(515, '::1', '2021-Jul-16'),
(516, '::1', '2021-Jul-16'),
(517, '::1', '2021-Jul-16'),
(518, '::1', '2021-Jul-16'),
(519, '::1', '2021-Jul-16'),
(520, '::1', '2021-Jul-16'),
(521, '::1', '2021-Jul-16'),
(522, '::1', '2021-Jul-16'),
(523, '::1', '2021-Jul-16'),
(524, '::1', '2021-Jul-16'),
(525, '::1', '2021-Jul-16'),
(526, '::1', '2021-Jul-16'),
(527, '::1', '2021-Jul-16'),
(528, '::1', '2021-Jul-16'),
(529, '::1', '2021-Jul-16'),
(530, '::1', '2021-Jul-16'),
(531, '::1', '2021-Jul-16'),
(532, '::1', '2021-Jul-16'),
(533, '::1', '2021-Jul-16'),
(534, '::1', '2021-Jul-16'),
(535, '::1', '2021-Jul-16'),
(536, '::1', '2021-Jul-16'),
(537, '::1', '2021-Jul-16'),
(538, '::1', '2021-Jul-16'),
(539, '::1', '2021-Jul-16'),
(540, '::1', '2021-Jul-16'),
(541, '::1', '2021-Jul-17'),
(542, '::1', '2021-Jul-17'),
(543, '::1', '2021-Jul-17'),
(544, '::1', '2021-Jul-17'),
(545, '::1', '2021-Jul-17'),
(546, '::1', '2021-Jul-17'),
(547, '::1', '2021-Jul-17'),
(548, '::1', '2021-Jul-17'),
(549, '::1', '2021-Jul-17'),
(550, '::1', '2021-Jul-17'),
(551, '::1', '2021-Jul-17'),
(552, '::1', '2021-Jul-17'),
(553, '::1', '2021-Jul-17'),
(554, '::1', '2021-Jul-17'),
(555, '::1', '2021-Jul-17'),
(556, '::1', '2021-Jul-17'),
(557, '::1', '2021-Jul-17'),
(558, '::1', '2021-Jul-17'),
(559, '::1', '2021-Jul-17'),
(560, '::1', '2021-Jul-17'),
(561, '::1', '2021-Jul-17'),
(562, '::1', '2021-Jul-17'),
(563, '::1', '2021-Jul-17'),
(564, '::1', '2021-Jul-17'),
(565, '::1', '2021-Jul-17'),
(566, '::1', '2021-Jul-17'),
(567, '::1', '2021-Jul-17'),
(568, '::1', '2021-Jul-17'),
(569, '::1', '2021-Jul-17'),
(570, '::1', '2021-Jul-17'),
(571, '::1', '2021-Jul-17'),
(572, '::1', '2021-Jul-17'),
(573, '::1', '2021-Jul-17'),
(574, '::1', '2021-Jul-17'),
(575, '::1', '2021-Jul-17'),
(576, '::1', '2021-Jul-17'),
(577, '::1', '2021-Jul-17'),
(578, '::1', '2021-Jul-17'),
(579, '::1', '2021-Jul-17'),
(580, '::1', '2021-Jul-17'),
(581, '::1', '2021-Jul-17'),
(582, '::1', '2021-Jul-17'),
(583, '::1', '2021-Jul-17'),
(584, '::1', '2021-Jul-17'),
(585, '::1', '2021-Jul-17'),
(586, '::1', '2021-Jul-17'),
(587, '::1', '2021-Jul-17'),
(588, '::1', '2021-Jul-17'),
(589, '::1', '2021-Jul-17'),
(590, '::1', '2021-Jul-17'),
(591, '::1', '2021-Jul-17'),
(592, '::1', '2021-Jul-17'),
(593, '::1', '2021-Jul-17'),
(594, '::1', '2021-Jul-17'),
(595, '::1', '2021-Jul-17'),
(596, '::1', '2021-Jul-17'),
(597, '::1', '2021-Jul-17'),
(598, '::1', '2021-Jul-17'),
(599, '::1', '2021-Jul-17'),
(600, '::1', '2021-Jul-17'),
(601, '::1', '2021-Jul-17'),
(602, '::1', '2021-Jul-17'),
(603, '::1', '2021-Jul-17'),
(604, '::1', '2021-Jul-17'),
(605, '::1', '2021-Jul-17'),
(606, '::1', '2021-Jul-17'),
(607, '::1', '2021-Jul-17'),
(608, '::1', '2021-Jul-17'),
(609, '::1', '2021-Jul-17'),
(610, '::1', '2021-Jul-17'),
(611, '::1', '2021-Jul-17'),
(612, '::1', '2021-Jul-17'),
(613, '::1', '2021-Jul-17'),
(614, '::1', '2021-Jul-17'),
(615, '::1', '2021-Jul-17'),
(616, '::1', '2021-Jul-17'),
(617, '::1', '2021-Jul-17'),
(618, '::1', '2021-Jul-17'),
(619, '::1', '2021-Jul-17'),
(620, '::1', '2021-Jul-17'),
(621, '::1', '2021-Jul-17'),
(622, '::1', '2021-Jul-17'),
(623, '::1', '2021-Jul-17'),
(624, '::1', '2021-Jul-17'),
(625, '::1', '2021-Jul-17'),
(626, '::1', '2021-Jul-17'),
(627, '::1', '2021-Jul-17'),
(628, '::1', '2021-Jul-17'),
(629, '::1', '2021-Jul-17'),
(630, '::1', '2021-Jul-17'),
(631, '::1', '2021-Jul-17'),
(632, '::1', '2021-Jul-17'),
(633, '::1', '2021-Jul-17'),
(634, '::1', '2021-Jul-17'),
(635, '::1', '2021-Jul-17'),
(636, '::1', '2021-Jul-17'),
(637, '::1', '2021-Jul-17'),
(638, '::1', '2021-Jul-17'),
(639, '::1', '2021-Jul-17'),
(640, '::1', '2021-Jul-17'),
(641, '::1', '2021-Jul-17'),
(642, '::1', '2021-Jul-17'),
(643, '::1', '2021-Jul-17'),
(644, '::1', '2021-Jul-17'),
(645, '::1', '2021-Jul-17'),
(646, '::1', '2021-Jul-17'),
(647, '::1', '2021-Jul-17'),
(648, '::1', '2021-Jul-17'),
(649, '::1', '2021-Jul-17'),
(650, '::1', '2021-Jul-17'),
(651, '::1', '2021-Jul-17'),
(652, '::1', '2021-Jul-17'),
(653, '::1', '2021-Jul-17'),
(654, '::1', '2021-Jul-17'),
(655, '::1', '2021-Jul-17'),
(656, '::1', '2021-Jul-17'),
(657, '::1', '2021-Jul-17'),
(658, '::1', '2021-Jul-17'),
(659, '::1', '2021-Jul-17'),
(660, '::1', '2021-Jul-17'),
(661, '::1', '2021-Jul-17'),
(662, '::1', '2021-Jul-17'),
(663, '::1', '2021-Jul-17'),
(664, '::1', '2021-Jul-17'),
(665, '::1', '2021-Jul-17'),
(666, '::1', '2021-Jul-17'),
(667, '::1', '2021-Jul-17'),
(668, '::1', '2021-Jul-17'),
(669, '::1', '2021-Jul-17'),
(670, '::1', '2021-Jul-17'),
(671, '::1', '2021-Jul-17'),
(672, '::1', '2021-Jul-17'),
(673, '::1', '2021-Jul-17'),
(674, '::1', '2021-Jul-17'),
(675, '::1', '2021-Jul-17'),
(676, '::1', '2021-Jul-17'),
(677, '::1', '2021-Jul-17'),
(678, '::1', '2021-Jul-17'),
(679, '::1', '2021-Jul-17'),
(680, '::1', '2021-Jul-17'),
(681, '::1', '2021-Jul-17'),
(682, '::1', '2021-Jul-17'),
(683, '::1', '2021-Jul-17'),
(684, '::1', '2021-Jul-17'),
(685, '::1', '2021-Jul-17'),
(686, '::1', '2021-Jul-17'),
(687, '::1', '2021-Jul-17'),
(688, '::1', '2021-Jul-17'),
(689, '::1', '2021-Jul-17'),
(690, '::1', '2021-Jul-17'),
(691, '::1', '2021-Jul-17'),
(692, '::1', '2021-Jul-17'),
(693, '::1', '2021-Jul-17'),
(694, '::1', '2021-Jul-17'),
(695, '::1', '2021-Jul-17'),
(696, '::1', '2021-Jul-17'),
(697, '::1', '2021-Jul-17'),
(698, '::1', '2021-Jul-17'),
(699, '::1', '2021-Jul-17'),
(700, '::1', '2021-Jul-17'),
(701, '::1', '2021-Jul-17'),
(702, '::1', '2021-Jul-17'),
(703, '::1', '2021-Jul-17'),
(704, '::1', '2021-Jul-17'),
(705, '::1', '2021-Jul-17'),
(706, '::1', '2021-Jul-17'),
(707, '::1', '2021-Jul-17'),
(708, '::1', '2021-Jul-17'),
(709, '::1', '2021-Jul-17'),
(710, '::1', '2021-Jul-17'),
(711, '::1', '2021-Jul-17'),
(712, '::1', '2021-Jul-17'),
(713, '::1', '2021-Jul-17'),
(714, '::1', '2021-Jul-17'),
(715, '::1', '2021-Jul-17'),
(716, '::1', '2021-Jul-17'),
(717, '::1', '2021-Jul-17'),
(718, '::1', '2021-Jul-17'),
(719, '::1', '2021-Jul-17'),
(720, '::1', '2021-Jul-17'),
(721, '::1', '2021-Jul-17'),
(722, '::1', '2021-Jul-17'),
(723, '::1', '2021-Jul-17'),
(724, '::1', '2021-Jul-17'),
(725, '::1', '2021-Jul-17'),
(726, '::1', '2021-Jul-17'),
(727, '::1', '2021-Jul-17'),
(728, '::1', '2021-Jul-17'),
(729, '::1', '2021-Jul-17'),
(730, '::1', '2021-Jul-17'),
(731, '::1', '2021-Jul-17'),
(732, '::1', '2021-Jul-17'),
(733, '::1', '2021-Jul-18'),
(734, '::1', '2021-Jul-18'),
(735, '::1', '2021-Jul-19'),
(736, '::1', '2021-Jul-19'),
(737, '::1', '2021-Jul-19'),
(738, '::1', '2021-Jul-26'),
(739, '::1', '2021-Jul-26'),
(740, '::1', '2021-Jul-26'),
(741, '::1', '2021-Jul-26'),
(742, '::1', '2021-Jul-26'),
(743, '::1', '2021-Jul-26'),
(744, '::1', '2021-Jul-26'),
(745, '::1', '2021-Jul-26'),
(746, '::1', '2021-Jul-26'),
(747, '::1', '2021-Jul-26'),
(748, '::1', '2021-Jul-26'),
(749, '::1', '2021-Jul-26'),
(750, '::1', '2021-Jul-26'),
(751, '::1', '2021-Jul-26'),
(752, '::1', '2021-Jul-26'),
(753, '::1', '2021-Jul-26'),
(754, '::1', '2021-Jul-26'),
(755, '::1', '2021-Jul-26'),
(756, '::1', '2021-Jul-26'),
(757, '::1', '2021-Jul-26'),
(758, '::1', '2021-Jul-26'),
(759, '::1', '2021-Jul-26'),
(760, '::1', '2021-Jul-26'),
(761, '::1', '2021-Jul-26'),
(762, '::1', '2021-Jul-26'),
(763, '::1', '2021-Jul-26'),
(764, '::1', '2021-Jul-26'),
(765, '::1', '2021-Jul-26'),
(766, '::1', '2021-Jul-26'),
(767, '::1', '2021-Jul-26'),
(768, '::1', '2021-Jul-26'),
(769, '::1', '2021-Jul-26'),
(770, '::1', '2021-Jul-26'),
(771, '::1', '2021-Jul-26'),
(772, '::1', '2021-Jul-26'),
(773, '::1', '2021-Jul-26'),
(774, '::1', '2021-Jul-26'),
(775, '::1', '2021-Jul-26'),
(776, '::1', '2021-Jul-26'),
(777, '::1', '2021-Jul-26'),
(778, '::1', '2021-Jul-26'),
(779, '::1', '2021-Jul-26'),
(780, '::1', '2021-Jul-26'),
(781, '::1', '2021-Jul-26'),
(782, '::1', '2021-Jul-26'),
(783, '::1', '2021-Jul-26'),
(784, '::1', '2021-Jul-26'),
(785, '::1', '2021-Jul-26'),
(786, '::1', '2021-Jul-26'),
(787, '::1', '2021-Jul-26'),
(788, '::1', '2021-Jul-26'),
(789, '::1', '2021-Jul-26'),
(790, '::1', '2021-Jul-26'),
(791, '::1', '2021-Jul-26'),
(792, '::1', '2021-Jul-26'),
(793, '::1', '2021-Jul-26'),
(794, '::1', '2021-Jul-26'),
(795, '::1', '2021-Jul-26'),
(796, '::1', '2021-Jul-26'),
(797, '::1', '2021-Jul-26'),
(798, '::1', '2021-Jul-26'),
(799, '::1', '2021-Jul-26'),
(800, '::1', '2021-Jul-26'),
(801, '::1', '2021-Jul-26'),
(802, '::1', '2021-Jul-26'),
(803, '::1', '2021-Jul-26'),
(804, '::1', '2021-Jul-26'),
(805, '::1', '2021-Jul-26'),
(806, '::1', '2021-Jul-26'),
(807, '::1', '2021-Jul-26'),
(808, '::1', '2021-Jul-26'),
(809, '::1', '2021-Jul-26'),
(810, '::1', '2021-Jul-26'),
(811, '::1', '2021-Jul-26'),
(812, '::1', '2021-Jul-26'),
(813, '::1', '2021-Jul-26'),
(814, '::1', '2021-Jul-26'),
(815, '::1', '2021-Jul-26'),
(816, '::1', '2021-Jul-26'),
(817, '::1', '2021-Jul-26'),
(818, '::1', '2021-Jul-26'),
(819, '::1', '2021-Jul-26'),
(820, '::1', '2021-Jul-26'),
(821, '::1', '2021-Jul-26'),
(822, '::1', '2021-Jul-26'),
(823, '::1', '2021-Jul-26'),
(824, '::1', '2021-Jul-26'),
(825, '::1', '2021-Jul-26'),
(826, '::1', '2021-Jul-26'),
(827, '::1', '2021-Jul-26'),
(828, '::1', '2021-Jul-26'),
(829, '::1', '2021-Jul-26'),
(830, '::1', '2021-Jul-26'),
(831, '::1', '2021-Jul-26'),
(832, '::1', '2021-Jul-26'),
(833, '::1', '2021-Jul-26'),
(834, '::1', '2021-Jul-26'),
(835, '::1', '2021-Jul-26'),
(836, '::1', '2021-Jul-26'),
(837, '::1', '2021-Jul-26'),
(838, '::1', '2021-Jul-26'),
(839, '::1', '2021-Jul-26'),
(840, '::1', '2021-Jul-26'),
(841, '::1', '2021-Jul-26'),
(842, '::1', '2021-Jul-26'),
(843, '::1', '2021-Jul-26'),
(844, '::1', '2021-Jul-26'),
(845, '::1', '2021-Jul-26'),
(846, '::1', '2021-Jul-26'),
(847, '::1', '2021-Jul-26'),
(848, '::1', '2021-Jul-26'),
(849, '::1', '2021-Jul-26'),
(850, '::1', '2021-Jul-26'),
(851, '::1', '2021-Jul-26'),
(852, '::1', '2021-Jul-26'),
(853, '::1', '2021-Jul-26'),
(854, '::1', '2021-Jul-26'),
(855, '::1', '2021-Jul-26'),
(856, '::1', '2021-Jul-26'),
(857, '::1', '2021-Jul-26'),
(858, '::1', '2021-Jul-26'),
(859, '::1', '2021-Jul-26'),
(860, '::1', '2021-Jul-26'),
(861, '::1', '2021-Jul-26'),
(862, '::1', '2021-Jul-26'),
(863, '::1', '2021-Jul-26'),
(864, '::1', '2021-Jul-26'),
(865, '::1', '2021-Jul-26'),
(866, '::1', '2021-Jul-26'),
(867, '::1', '2021-Jul-26'),
(868, '::1', '2021-Jul-26'),
(869, '::1', '2021-Jul-26'),
(870, '::1', '2021-Jul-26'),
(871, '::1', '2021-Jul-26'),
(872, '::1', '2021-Jul-26'),
(873, '::1', '2021-Jul-26'),
(874, '::1', '2021-Jul-26'),
(875, '::1', '2021-Jul-26'),
(876, '::1', '2021-Jul-26'),
(877, '::1', '2021-Jul-26'),
(878, '::1', '2021-Jul-26'),
(879, '::1', '2021-Jul-26'),
(880, '::1', '2021-Jul-26'),
(881, '::1', '2021-Jul-26'),
(882, '::1', '2021-Jul-26'),
(883, '::1', '2021-Jul-27'),
(884, '::1', '2021-Jul-27'),
(885, '::1', '2021-Jul-27'),
(886, '::1', '2021-Jul-27'),
(887, '::1', '2021-Jul-27'),
(888, '::1', '2021-Jul-27'),
(889, '::1', '2021-Jul-27'),
(890, '::1', '2021-Jul-27'),
(891, '::1', '2021-Jul-27'),
(892, '::1', '2021-Jul-27'),
(893, '::1', '2021-Jul-27'),
(894, '::1', '2021-Jul-27'),
(895, '::1', '2021-Jul-27'),
(896, '::1', '2021-Jul-27'),
(897, '::1', '2021-Jul-27'),
(898, '::1', '2021-Jul-27'),
(899, '::1', '2021-Jul-27'),
(900, '::1', '2021-Jul-27'),
(901, '::1', '2021-Jul-27'),
(902, '::1', '2021-Jul-27'),
(903, '::1', '2021-Jul-27'),
(904, '::1', '2021-Jul-27'),
(905, '::1', '2021-Jul-27'),
(906, '::1', '2021-Jul-27'),
(907, '::1', '2021-Jul-27'),
(908, '::1', '2021-Jul-27'),
(909, '::1', '2021-Jul-27'),
(910, '::1', '2021-Jul-27'),
(911, '::1', '2021-Jul-27'),
(912, '::1', '2021-Jul-27'),
(913, '::1', '2021-Jul-27'),
(914, '::1', '2021-Jul-27'),
(915, '::1', '2021-Jul-27'),
(916, '::1', '2021-Jul-27'),
(917, '::1', '2021-Jul-27'),
(918, '::1', '2021-Jul-27'),
(919, '::1', '2021-Jul-27'),
(920, '::1', '2021-Jul-27'),
(921, '::1', '2021-Jul-27'),
(922, '::1', '2021-Jul-27'),
(923, '::1', '2021-Jul-27'),
(924, '::1', '2021-Jul-27'),
(925, '::1', '2021-Jul-27'),
(926, '::1', '2021-Jul-27'),
(927, '::1', '2021-Jul-27'),
(928, '::1', '2021-Jul-27'),
(929, '::1', '2021-Jul-27'),
(930, '::1', '2021-Jul-27'),
(931, '::1', '2021-Jul-27'),
(932, '::1', '2021-Jul-27'),
(933, '::1', '2021-Jul-27'),
(934, '::1', '2021-Jul-27'),
(935, '::1', '2021-Jul-27'),
(936, '::1', '2021-Jul-27'),
(937, '::1', '2021-Jul-27'),
(938, '::1', '2021-Jul-27'),
(939, '::1', '2021-Jul-27'),
(940, '::1', '2021-Jul-27'),
(941, '::1', '2021-Jul-27'),
(942, '::1', '2021-Jul-27'),
(943, '::1', '2021-Jul-27'),
(944, '::1', '2021-Jul-27'),
(945, '::1', '2021-Jul-27'),
(946, '::1', '2021-Jul-27'),
(947, '::1', '2021-Jul-27'),
(948, '::1', '2021-Jul-27'),
(949, '::1', '2021-Jul-27'),
(950, '::1', '2021-Jul-27'),
(951, '::1', '2021-Jul-27'),
(952, '::1', '2021-Jul-27'),
(953, '::1', '2021-Jul-27'),
(954, '::1', '2021-Jul-27'),
(955, '::1', '2021-Jul-27'),
(956, '::1', '2021-Jul-27'),
(957, '::1', '2021-Jul-27'),
(958, '::1', '2021-Jul-27'),
(959, '::1', '2021-Jul-27'),
(960, '::1', '2021-Jul-27'),
(961, '::1', '2021-Jul-27'),
(962, '::1', '2021-Jul-27'),
(963, '::1', '2021-Jul-27'),
(964, '::1', '2021-Jul-27'),
(965, '::1', '2021-Jul-27'),
(966, '::1', '2021-Jul-27'),
(967, '::1', '2021-Jul-27'),
(968, '::1', '2021-Jul-27'),
(969, '::1', '2021-Jul-27'),
(970, '::1', '2021-Jul-27'),
(971, '::1', '2021-Jul-27'),
(972, '::1', '2021-Jul-27'),
(973, '::1', '2021-Jul-27'),
(974, '::1', '2021-Jul-27'),
(975, '::1', '2021-Jul-27'),
(976, '::1', '2021-Jul-27'),
(977, '::1', '2021-Jul-28'),
(978, '::1', '2021-Jul-28'),
(979, '::1', '2021-Jul-28'),
(980, '::1', '2021-Jul-28'),
(981, '::1', '2021-Jul-28'),
(982, '::1', '2021-Jul-28'),
(983, '::1', '2021-Jul-28'),
(984, '::1', '2021-Jul-28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emails`
--

CREATE TABLE `tbl_emails` (
  `email_id` int(11) NOT NULL,
  `email_from` varchar(100) NOT NULL,
  `email_to` varchar(100) NOT NULL,
  `email_type` varchar(100) NOT NULL,
  `email_subject` varchar(100) NOT NULL,
  `email_body` mediumtext NOT NULL,
  `email_status` int(1) NOT NULL,
  `email_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_emails`
--

INSERT INTO `tbl_emails` (`email_id`, `email_from`, `email_to`, `email_type`, `email_subject`, `email_body`, `email_status`, `email_order`) VALUES
(1, 'info.contact@gmail.com', 'info.contact@gmail.com', 'contact', 'Auto-reply From Fusion Max', '<p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thank you for inquiring about our new email marketing enterprise application. A team member will contact you tomorrow with a detailed explanation of the product that fits your business need.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thanks again for your inquiry.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Sincerely,</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Fusion Max Carwash</span></p>', 1, 0),
(2, 'info.contact@gmail.com', 'info.contact@gmail.com', 'newsletter', 'Response', '<p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thank you for inquiring about our new email marketing enterprise application. A team member will contact you tomorrow with a detailed explanation of the product that fits your business need.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thanks again for your inquiry.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Sincerely,</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Fusion Max Carwash</span></p>', 1, 0),
(3, 'info.contact@gmail.com', 'info.contact@gmail.com', 'call_back', 'Response', '<p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thank you for inquiring about our new email marketing enterprise application. A team member will contact you tomorrow with a detailed explanation of the product that fits your business need.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thanks again for your inquiry.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Sincerely,</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Fusion Max Carwash</span></p>', 1, 0),
(4, 'info@fusionmaxcarwash.com', 'info@fusionmaxcarwash.com', 'order', 'Response', '<p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thank you for inquiring about our new email marketing enterprise application. A team member will contact you tomorrow with a detailed explanation of the product that fits your business need.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Thanks again for your inquiry.</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Sincerely,</span></p><p style=\"margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Muli; font-size: 17px;\"><span style=\"font-family: Arial;\">Fusion Max Carwash</span></p>', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_ques` varchar(255) NOT NULL,
  `faq_ans` mediumtext NOT NULL,
  `faq_position` int(1) NOT NULL,
  `faq_status` int(1) NOT NULL,
  `faq_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_ques`, `faq_ans`, `faq_position`, `faq_status`, `faq_order`) VALUES
(1, 'This is a Testing Question?', 'Yes This is Working good.', 0, 1, 1),
(2, 'This is a Testing Question?', 'This is a Testing Answer...', 0, 1, 2),
(3, 'This is a Testing Question?', 'This is a Testing Answer...', 0, 1, 3),
(4, 'This is a Testing Question?', 'This is a Testing Answer...', 1, 1, 4),
(5, 'This is a Testing Question?', 'This is a Testing Answer...', 1, 1, 5),
(6, 'This is a Testing Question?', 'This is a Testing Answer...', 1, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_photos`
--

CREATE TABLE `tbl_gallery_photos` (
  `p_id` int(11) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `p_status` int(1) NOT NULL,
  `p_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gallery_photos`
--

INSERT INTO `tbl_gallery_photos` (`p_id`, `p_image`, `p_status`, `p_order`) VALUES
(1, 'image_16233930505582.jpg', 1, 1),
(2, 'image_16233930509063.jpg', 1, 2),
(3, 'image_16233930502563.jpg', 1, 3),
(4, 'image_16234008658684.jpg', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_videos`
--

CREATE TABLE `tbl_gallery_videos` (
  `v_id` int(11) NOT NULL,
  `v_image` varchar(255) NOT NULL,
  `v_video` varchar(255) NOT NULL,
  `v_status` int(1) NOT NULL,
  `v_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gallery_videos`
--

INSERT INTO `tbl_gallery_videos` (`v_id`, `v_image`, `v_video`, `v_status`, `v_order`) VALUES
(1, 'image_16234811022231.jpg', 'ULEQb_l-N08', 1, 0),
(2, 'image_16234811176224.jpg', 'buBvqw6G3WU', 1, 1),
(3, 'image_16234811325757.jpg', 'buBvqw6G3WU', 1, 2),
(4, 'image_16234835975938.jpg', 'buBvqw6G3WU', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_listings`
--

CREATE TABLE `tbl_listings` (
  `list_id` int(11) NOT NULL,
  `list_option_text` text DEFAULT NULL,
  `list_type` varchar(50) NOT NULL,
  `list_title` varchar(255) DEFAULT NULL,
  `list_slug` varchar(255) DEFAULT NULL,
  `list_gender` varchar(11) NOT NULL,
  `list_desc` varchar(1000) DEFAULT NULL,
  `list_detail` longtext DEFAULT NULL,
  `list_link` varchar(100) NOT NULL,
  `list_thumb` varchar(50) DEFAULT NULL,
  `list_image` varchar(50) DEFAULT NULL,
  `list_banner` varchar(50) DEFAULT NULL,
  `list_price` float NOT NULL,
  `list_label` int(11) NOT NULL DEFAULT 0,
  `list_order` int(11) DEFAULT NULL,
  `list_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_listings`
--

INSERT INTO `tbl_listings` (`list_id`, `list_option_text`, `list_type`, `list_title`, `list_slug`, `list_gender`, `list_desc`, `list_detail`, `list_link`, `list_thumb`, `list_image`, `list_banner`, `list_price`, `list_label`, `list_order`, `list_status`) VALUES
(19, NULL, 'events', 'Bimply dummy text of the printing and typesetting industry', 'bimply-dummy-text-of-the-printing-and-typesetting-industry', '', 'NewYork Tower, Melbourne', '<p>Bimply dummy text of the printing and typesetting istryrem Ipsum has  been the industry\'s standard dummy text ever since the 1500s, when an  unknown printer.when an unknown printer took a galley of type and  scrambled it to make a type specimen book. It has survived not only five  centuriesp into electronic.simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry\'s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book.Bimply dummy text of  the printing and typesetting istryrem Ipsum has been the industry\'s  standard dummy text ever since the 1500s, when an unknown printer.when  an unknown printer took a galley of type and scrambled it to make a type  specimen book. It has survived not only five centuriesp into  electronic.simply dummy text of the printing and typesetting industry.</p>', '', '06 September, 2019', 'image_15630433616150.jpg', NULL, 0, 1, 1, 1),
(20, NULL, 'events', 'Bimply dummy text of the printing', 'bimply-dummy-text-of-the-printing', '', '', '<p>Bimply dummy text of the printing and typesetting istryrem Ipsum has  been the industry\'s standard dummy text ever since the 1500s, when an  unknown printer.when an unknown printer took a galley of type and  scrambled it to make a type specimen book. It has survived not only five  centuriesp into electronic.simply dummy text of the printing and  typesetting industry. Lorem Ipsum has been the industry\'s standard dummy  text ever since the 1500s, when an unknown printer took a galley of  type and scrambled it to make a type specimen book.Bimply dummy text of  the printing and typesetting istryrem Ipsum has been the industry\'s  standard dummy text ever since the 1500s, when an unknown printer.when  an unknown printer took a galley of type and scrambled it to make a type  specimen book. It has survived not only five centuriesp into  electronic.simply dummy text of the printing and typesetting industry.</p>', '', '22 December, 2019', 'image_15630433939524.jpg', NULL, 0, 1, 2, 1),
(21, NULL, 'courses', 'Physiology', 'physiology', '', 'Rmply dummy text printing setting industry itâ€™s free demo.', '', 'http://localhost/np1/hospital', NULL, 'image_15630470856516.jpg', NULL, 0, 1, 1, 1),
(22, NULL, 'courses', 'Biochemistry', 'biochemistry', '', 'Rmply dummy text printing setting industry itâ€™s free demo.', '', 'http://localhost/np1/medical-education', NULL, 'image_15630471442505.jpg', NULL, 0, 1, 2, 1),
(23, NULL, 'courses', 'Forensic Medicine', 'forensic-medicine', '', 'Rmply dummy text printing setting industry itâ€™s free demo.', '', 'http://localhost/np1/medical-education', NULL, 'image_15630471741750.jpg', NULL, 0, 1, 3, 1),
(24, NULL, 'courses', 'Ophthalmology', 'ophthalmology', '', 'Rmply dummy text printing setting industry itâ€™s free demo.', '', 'http://localhost/np1/medical-education', NULL, 'image_15630472301165.jpg', NULL, 0, 1, 4, 1),
(25, NULL, 'courses', 'Paediatrics', 'paediatrics', '', 'Rmply dummy text printing setting industry itâ€™s free demo.', '', 'localhost/np1/college-of-dentistry', NULL, 'image_15630472737512.jpg', NULL, 0, 1, 5, 1),
(26, NULL, 'courses', 'Pathology', 'pathology', '', 'Rmply dummy text printing setting industry itâ€™s free demo.', '', 'http://localhost/np1/vision-mission-values', NULL, 'image_15630473428601.jpg', NULL, 0, 1, 6, 1),
(27, NULL, 'testimonials', 'Jason Smith', '', '', 'Analyst', 'There anyone who loves or pursues nor desires to obtain pain of itself, bet it is pain, but because occasionally can packages as their default all the Lorem Ipsum generators on the Internet tend to repeat predefined.', '', NULL, 'image_15784396945883.jpg', NULL, 4, 0, 1, 1),
(28, NULL, 'testimonials', 'Mona Kruew', '', '', 'Social Activist', 'There anyone who loves or pursues nor desires to obtain pain of itself, bet it is pain, but because occasionally can packages as their default all the Lorem Ipsum generators on the Internet tend to repeat predefined.', '', NULL, 'image_15784397029659.jpg', NULL, 3, 0, 2, 1),
(29, NULL, 'testimonials', 'Henery Ford', '', '', 'Journalist', 'There anyone who loves or pursues nor desires to obtain pain of itself, bet it is pain, but because occasionally can packages as their default all the Lorem Ipsum generators on the Internet tend to repeat predefined.', '', NULL, 'image_15784397102891.jpg', NULL, 2, 0, 3, 1),
(30, NULL, 'services', 'Education Visa', 'education-visa', '', 'It is a long established fact that and reader will by the readable based of content page banned.', '<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\r\n<p>By injected humour, or randomised words which don\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\'t anything embarrassing hidden in the middle of text.</p>\r\n<div class=\"service-details-contant\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\">&nbsp;</div>\r\n<div class=\"col-lg-11\">\r\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\">&nbsp;</div>\r\n<div class=\"col-lg-11\">\r\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<h3 class=\"service-details-heading\">Our Benefits</h3>\r\n<p>A randomised words which don\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\'t anything embarrassing hidden in the middle of  text.</p>', '', NULL, 'image_15638866429463.jpg', 'image_15638890982055.jpg', 0, 1, 1, 1),
(31, NULL, 'services', 'Business Visa', 'business-visa', '', 'It is a long established fact that and reader will by the readable based of content page banned.', '<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\r\n<p>By injected humour, or randomised words which don\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\'t anything embarrassing hidden in the middle of text.</p>\r\n<div class=\"service-details-contant\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\">&nbsp;</div>\r\n<div class=\"col-lg-11\">\r\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\">&nbsp;</div>\r\n<div class=\"col-lg-11\">\r\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<h3 class=\"service-details-heading\">Our Benefits</h3>\r\n<p>A randomised words which don\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\'t anything embarrassing hidden in the middle of  text.</p>', '', NULL, 'image_15638869396774.jpg', 'image_15638891352659.jpg', 0, 1, 2, 1),
(32, NULL, 'services', 'Travel Visa', 'travel-visa', '', 'It is a long established fact that and reader will by the readable based of content page banned.', '<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\r\n<p>By injected humour, or randomised words which don\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\'t anything embarrassing hidden in the middle of text.</p>\r\n<div class=\"service-details-contant\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\">&nbsp;</div>\r\n<div class=\"col-lg-11\">\r\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\">&nbsp;</div>\r\n<div class=\"col-lg-11\">\r\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<h3 class=\"service-details-heading\">Our Benefits</h3>\r\n<p>A randomised words which don\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\'t anything embarrassing hidden in the middle of  text.</p>', '', NULL, 'image_15638869769510.jpg', 'image_15638891456197.jpg', 0, 1, 3, 1),
(33, NULL, 'services', 'Family Visa', 'family-visa', '', 'It is a long established fact that and reader will by the readable based of content page banned.', '<p>There are many variations of passages of  Lorem Ipsum available, but the majority have suffered alteration in  some form, by injected humour, or randomised words which don\'t look even  more slightly believable. If you are going to use a passage of Lorem  Ipsum, you need to be sure there isn\'t anything embarrassing hidden in  the middle of text. All the Lorem Ipsum generators on the Internet tend  to repeat predefined chunks.</p>\r\n<p>By injected humour, or randomised words which don\'t look even  more slightly believable. If you are going toos you need to be sure  there isn\'t anything embarrassing hidden in the middle of text.</p>\r\n<div class=\"service-details-contant\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\">&nbsp;</div>\r\n<div class=\"col-lg-11\">\r\n<p>All the Lorem Ipsum generators on the Internet tend to repeat  predefined chunks as necessary, making this the first true generator on  the Internet it uses a dictionary of over latin words, combined with a  handful of model sentence structures.</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-1\">&nbsp;</div>\r\n<div class=\"col-lg-11\">\r\n<p>But the majority have suffered alteration in some form, by  injected humour, or randomised odds which don\'t look even more slightly  believable. If you are going to use a passage of Lorem sum, you need to  of the Lorem Ipsum generators on the Internet tend to repeat predefined  chunks.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<h3 class=\"service-details-heading\">Our Benefits</h3>\r\n<p>A randomised words which don\'t look even more slightly  believable. If you are going to use a passage of Lorem Ipsum, you need  to be sure there isn\'t anything embarrassing hidden in the middle of  text.</p>', '', NULL, 'image_15638870116398.jpg', 'image_15638891557918.jpg', 0, 0, 4, 1),
(35, NULL, 'boxes', ' United States', 'united-states', '', 'It is a long established fact that a reader will by the readable content page.', NULL, 'about', NULL, 'image_15639920731737.png', NULL, 0, 0, 1, 1),
(36, NULL, 'boxes', 'Australia', 'australia', '', 'It is a long established fact that a reader will by the readable content page.', NULL, '', NULL, 'image_15639920918901.png', NULL, 0, 0, 2, 1),
(37, NULL, 'boxes', 'United Kingdom', 'united-kingdom', '', 'It is a long established fact that a reader will by the readable content page.', NULL, '', NULL, 'image_15639921195143.png', NULL, 0, 0, 3, 1),
(38, NULL, 'boxes', ' Singapore', 'singapore', '', 'It is a long established fact that a reader will by the readable content page.', NULL, '', NULL, 'image_15639921503128.png', NULL, 0, 0, 4, 1),
(39, NULL, 'faqs', 'How soon should I apply for my appointment?', 'how-soon-should-i-apply-for-my-appointment-', '', 'Many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even more slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.  \r\nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet it uses a dictionary of over latin words, combined with a handful of model sentence structures.\r\n                         ', NULL, '', NULL, NULL, NULL, 0, 0, 2, 1),
(40, NULL, 'faqs', 'How long does my passport have to be valid in order to apply for a U. S. visa?', 'how-long-does-my-passport-have-to-be-valid-in-order-to-apply-for-a-u-s-visa-', '', 'Many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even more slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.  ', NULL, '', NULL, NULL, NULL, 0, 0, 1, 1),
(41, NULL, 'programs', 'Visit', '', '', 'https://www.lipsum.com', NULL, '', NULL, NULL, NULL, 0, 0, 1, 1),
(42, NULL, 'programs', 'Study', '', '', 'https://www.lipsum.com', NULL, '', NULL, NULL, NULL, 0, 0, 2, 1),
(43, NULL, 'programs', 'Work', '', '', 'https://www.lipsum.com', NULL, '', NULL, NULL, NULL, 0, 0, 3, 1),
(44, NULL, 'programs', 'Immigration', '', '', 'https://www.lipsum.com', NULL, '', NULL, NULL, NULL, 0, 0, 4, 1),
(45, NULL, 'programs', 'Business', '', '', 'https://www.lipsum.com', NULL, '', NULL, NULL, NULL, 0, 0, 5, 1),
(46, NULL, 'programs', 'Citizenship', '', '', 'https://www.lipsum.com', NULL, '', NULL, NULL, NULL, 0, 0, 6, 1),
(47, NULL, 'programs', 'Other Services', '', '', 'https://www.lipsum.com', NULL, '', NULL, NULL, NULL, 0, 0, 7, 1),
(48, NULL, 'partners', 'https://www.lipsum.com', '', '', 'Immigrating to ENWT', NULL, '', NULL, 'image_15784405263260.png', NULL, 0, 0, 1, 1),
(49, NULL, 'partners', 'https://www.lipsum.com', '', '', 'Immigrate to B C', NULL, '', NULL, 'image_15784405358226.png', NULL, 0, 0, 2, 1),
(50, NULL, 'partners', 'https://www.lipsum.com', '', '', 'Immigrating to Manitoba', NULL, '', NULL, 'image_15784405399449.png', NULL, 0, 0, 3, 1),
(51, NULL, 'partners', 'https://www.lipsum.com', '', '', 'Immigrating to NB', NULL, '', NULL, 'image_15784405437134.png', NULL, 0, 0, 4, 1),
(52, NULL, 'partners', 'https://www.lipsum.com', '', '', 'Immigrating to NL', NULL, '', NULL, 'image_15784405496612.png', NULL, 0, 0, 5, 1),
(53, NULL, 'partners', 'https://www.lipsum.com', '', '', 'Immigrating to Manitoba', NULL, '', NULL, 'image_15784405541540.png', NULL, 0, 0, 6, 1),
(55, NULL, 'offers', '2 Piece burger & 1 cold drink', '', '', 'Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.', NULL, '', NULL, 'image_16051015001974.jpg', NULL, 18.89, 1, 1, 1),
(56, NULL, 'offers', '3 Plets rice & 1 cold drink', '', '', 'Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.', NULL, '', NULL, 'image_16051015529384.jpg', NULL, 42, 1, 2, 1),
(57, NULL, 'offers', '4 Glass Orange Juice', '', '', 'Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.', NULL, '', NULL, 'image_16051015707342.jpg', NULL, 22.09, 1, 3, 1),
(58, NULL, 'offers', '4 Piece Pizza & Cold drink', '', '', 'Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.', NULL, '', NULL, 'image_16051015853917.jpg', NULL, 18, 1, 4, 1),
(59, NULL, 'offers', 'Type food Name here', '', '', 'Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.', NULL, '', NULL, 'image_16051032708942.jpg', NULL, 0, 0, 5, 1),
(60, NULL, 'offers', 'Type food Name here', '', '', 'Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.', NULL, '', NULL, 'image_16051033702581.jpg', NULL, 58.8, 0, 6, 1),
(61, NULL, 'offers', 'Type food Name here', '', '', 'Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.', NULL, '', NULL, 'image_16051033843603.jpg', NULL, 58.8, 0, 7, 1),
(62, NULL, 'offers', 'Type food Name here', '', '', 'Lorem ipsum dolor sit amet conse ctetuer adipiscing elit sed.', NULL, '', NULL, 'image_16051033962421.jpg', NULL, 58.8, 0, 8, 1),
(64, NULL, 'categories', 'SHOE', 'shoe', '', NULL, NULL, '', NULL, NULL, NULL, 0, 0, 1, 1),
(65, NULL, 'categories', 'PIZZA', 'pizza', '', NULL, NULL, '', NULL, NULL, NULL, 0, 0, 2, 1),
(67, NULL, 'categories', 'LUNCH', 'lunch', '', NULL, NULL, '', NULL, NULL, NULL, 0, 0, 3, 1),
(68, NULL, 'categories', 'DRINKS', 'drinks', '', NULL, NULL, '', NULL, NULL, NULL, 0, 0, 4, 1),
(69, NULL, 'categories', 'SOUP', 'soup', '', NULL, NULL, '', NULL, NULL, NULL, 0, 0, 5, 1),
(70, NULL, 'categories', 'DINNER', 'dinner', '', NULL, NULL, '', NULL, NULL, NULL, 0, 0, 6, 1),
(74, 'a:3:{i:0;s:2:\"65\";i:1;s:2:\"67\";i:2;s:2:\"68\";}', 'menus', 'Honey green tea', 'honey-green-tea', '', 'Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .', NULL, '', NULL, NULL, NULL, 8, 0, 1, 1),
(75, 'a:2:{i:0;s:2:\"64\";i:1;s:2:\"69\";}', 'menus', 'Ambra plum juice', 'ambra-plum-juice', '', 'Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .', NULL, '', NULL, NULL, NULL, 8, 0, 2, 1),
(76, 'a:1:{i:0;s:2:\"64\";}', 'menus', 'Mango', 'mango', '', 'Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .', NULL, '', NULL, NULL, NULL, 8, 0, 3, 1),
(77, 'a:2:{i:0;s:2:\"64\";i:1;s:2:\"70\";}', 'menus', 'Milk tea', 'milk-tea', '', 'Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .', NULL, '', NULL, NULL, NULL, 8, 0, 4, 1),
(78, 'a:2:{i:0;s:2:\"67\";i:1;s:2:\"68\";}', 'menus', 'Soya bean', 'soya-bean', '', 'Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .', NULL, '', NULL, NULL, NULL, 8, 0, 5, 1),
(79, 'a:1:{i:0;s:2:\"68\";}', 'menus', 'Keat la plum juice', 'keat-la-plum-juice', '', 'Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .', NULL, '', NULL, NULL, NULL, 8, 0, 6, 1),
(80, 'a:2:{i:0;s:2:\"64\";i:1;s:2:\"68\";}', 'menus', 'Herbal tea', 'herbal-tea', '', 'Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .', NULL, '', NULL, NULL, NULL, 8, 0, 7, 1),
(81, 'a:2:{i:0;s:2:\"64\";i:1;s:2:\"70\";}', 'menus', 'ice lemon tea', 'ice-lemon-tea', '', 'Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse ', NULL, '', NULL, NULL, NULL, 8, 0, 8, 1),
(82, 'a:2:{i:0;s:2:\"68\";i:1;s:2:\"69\";}', 'menus', 'Ambra plum juice', 'ambra-plum-juice', '', 'Duis autem vel eum iriure dolor inhe ndrerit in vulputate velit esse .', NULL, '', NULL, NULL, NULL, 8, 0, 9, 1),
(92, NULL, 'videos', NULL, '', '', 'https://youtu.be/JWRx28ZI7D8', NULL, '', NULL, NULL, NULL, 0, 0, 1, 1),
(93, NULL, 'videos', NULL, '', '', 'https://youtu.be/u7Ta4O2sPro', NULL, '', NULL, NULL, NULL, 0, 0, 2, 1),
(94, NULL, 'videos', NULL, '', '', 'https://youtu.be/ULrYr7IyvcI', NULL, '', NULL, NULL, NULL, 0, 0, 3, 1),
(95, NULL, 'videos', NULL, '', '', 'https://youtu.be/pyHdHYtbC7w', NULL, '', NULL, NULL, NULL, 0, 0, 4, 1),
(96, NULL, 'videos', NULL, '', '', 'https://youtu.be/1qHtTrezkWs', NULL, '', NULL, NULL, NULL, 0, 0, 5, 1),
(97, NULL, 'videos', NULL, '', '', 'https://youtu.be/HtoQXaHHmXI', NULL, '', NULL, NULL, NULL, 0, 0, 6, 1),
(100, NULL, 'nav_menus', 'Dinner Menu', 'dinner-menu', '', NULL, '<p style=\"text-align: center;\"><img src=\"/UserFiles/dinner.png\" style=\"width:100%\" alt=\"\" /></p>', '', NULL, NULL, NULL, 0, 0, 1, 1),
(101, NULL, 'nav_menus', 'Dessert Menu', 'dessert-menu', '', NULL, '<p style=\"text-align: center;\"><img src=\"/UserFiles/Dessert-0.jpg\" style=\"width:100%;\" alt=\"\" /></p>', '', NULL, NULL, NULL, 0, 0, 3, 1),
(102, NULL, 'nav_menus', 'Happy Hour', 'happy-hour', '', NULL, '<p style=\"text-align: center;\">&nbsp;<img src=\"/UserFiles/Happy Hour.png\" style=\"width:100%;\" alt=\"\" /></p>', '', NULL, NULL, NULL, 0, 0, 4, 1),
(103, NULL, 'nav_menus', 'Wine List & Sips', 'wine-list-sips', '', NULL, '<p style=\"text-align: center;\"><img src=\"/UserFiles/WINE LIST-0.png\" style=\"width:100%;\" alt=\"\" /></p>', '', NULL, NULL, NULL, 0, 0, 5, 1),
(104, NULL, 'nav_menus', 'Kids Menu', 'kids-menu', '', NULL, '<p style=\"text-align: center;\">&nbsp;<img src=\"/UserFiles/KIDS-MENU.png\" style=\"width:50%;\" alt=\"\" /></p>', '', NULL, NULL, NULL, 0, 0, 2, 1),
(108, NULL, 'deals', NULL, '', '', NULL, '<ul class=\"set_menu\">\r\n    <li>Rice 1 Plets<span>Price: $9.00</span></li>\r\n    <li>Checken 2 Piece<span>Price: $15.00</span></li>\r\n    <li>Salad 1 Plets<span>Price: $7.00</span></li>\r\n    <li>1 250ml Cook<span>Price: $3.00</span></li>\r\n    <li class=\"total\">Total:<span>$24.00</span></li>\r\n</ul>', '', NULL, 'image_16051169691185.jpg', NULL, 0, 0, 1, 1),
(109, NULL, 'deals', NULL, '', '', NULL, '<ul class=\"set_menu\">\r\n    <li>Rice 1 Plets<span>Price: $9.00</span></li>\r\n    <li>Checken 2 Piece<span>Price: $15.00</span></li>\r\n    <li>Salad 1 Plets<span>Price: $7.00</span></li>\r\n    <li>1 250ml Cook<span>Price: $3.00</span></li>\r\n    <li class=\"total\">Total:<span>$24.00</span></li>\r\n</ul>', '', NULL, 'image_16051170165332.jpg', NULL, 0, 0, 2, 1),
(110, NULL, 'deals', NULL, '', '', NULL, '<ul class=\"set_menu\">\r\n    <li>Rice 1 Plets<span>Price: $9.00</span></li>\r\n    <li>Checken 2 Piece<span>Price: $15.00</span></li>\r\n    <li>Salad 1 Plets<span>Price: $7.00</span></li>\r\n    <li>1 250ml Cook<span>Price: $3.00</span></li>\r\n    <li class=\"total\">Total:<span>$24.00</span></li>\r\n</ul>', '', NULL, 'image_16051170282647.jpg', NULL, 0, 0, 3, 1),
(111, NULL, 'photos', NULL, '', '', NULL, NULL, '', NULL, 'image_16215205755168.png', NULL, 0, 0, 1, 1),
(112, NULL, 'photos', NULL, '', '', NULL, NULL, '', NULL, 'image_16052206178186.jpg', NULL, 0, 0, 2, 1),
(113, NULL, 'photos', NULL, '', '', NULL, NULL, '', NULL, 'image_16052206269956.jpg', NULL, 0, 0, 3, 1),
(114, NULL, 'photos', NULL, '', '', NULL, NULL, '', NULL, 'image_16052206341564.jpg', NULL, 0, 0, 4, 1),
(115, NULL, 'photos', NULL, '', '', NULL, NULL, '', NULL, 'image_16052206433732.jpg', NULL, 0, 0, 5, 1),
(116, NULL, 'photos', NULL, '', '', NULL, NULL, '', NULL, 'image_16052206542786.jpg', NULL, 0, 0, 6, 1),
(117, NULL, 'photos', NULL, '', '', NULL, NULL, '', NULL, 'image_16052206623019.jpg', NULL, 0, 0, 7, 1),
(118, NULL, 'photos', NULL, '', '', NULL, NULL, '', NULL, 'image_16052206699331.jpg', NULL, 0, 0, 8, 1),
(119, NULL, 'photos', NULL, '', '', NULL, NULL, '', NULL, 'image_16052206788588.jpg', NULL, 0, 0, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `loc_id` int(11) NOT NULL,
  `loc_type` int(1) NOT NULL,
  `loc_state` varchar(255) NOT NULL,
  `loc_address` varchar(255) NOT NULL,
  `loc_city` varchar(255) NOT NULL,
  `loc_postcode` int(100) NOT NULL,
  `loc_phone` varchar(20) NOT NULL,
  `loc_status` int(1) NOT NULL,
  `loc_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`loc_id`, `loc_type`, `loc_state`, `loc_address`, `loc_city`, `loc_postcode`, `loc_phone`, `loc_status`, `loc_order`) VALUES
(1, 1, 'texas', '8331 Copper Creek LaneMissouri City,', 'Missouri City', 77459, '+(066) 517 800 628', 1, 1),
(2, 1, 'texas', '1501 E Broadway Street Pearland', 'Pearland', 77581, '+(066) 517 800 628', 1, 2),
(3, 1, 'texas', '320 W FM 544 Murphy City,', 'Murphy', 75094, '+(066) 517 800 628', 1, 3),
(4, 0, 'texas', '10300 West Grand Parkway South\r\nRichmond,', 'Harvest Green (Opening Fall 2020)', 77406, '+(066) 517 800 628', 1, 4),
(5, 0, 'texas', '14651 West Lake Houston Parkway Houston,', 'Summer Lake (Opening Fall 2020)', 77044, '+(066) 517 800 628', 1, 5),
(6, 0, 'texas', '6762 Reading Road Rosenberg,', 'Rosenberg (Opening Spring 2021)', 77471, '+(066) 517 800 628', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module`
--

CREATE TABLE `tbl_module` (
  `mod_id` int(11) NOT NULL,
  `mod_title` varchar(100) NOT NULL,
  `mod_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_module`
--

INSERT INTO `tbl_module` (`mod_id`, `mod_title`, `mod_status`) VALUES
(1, 'Gallery', 1),
(2, 'Services', 1),
(3, 'Projects', 1),
(4, 'News', 1),
(5, 'Pricing-list', 1),
(6, 'FAQ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(10) NOT NULL,
  `news_category` varchar(255) DEFAULT NULL,
  `news_title` varchar(255) DEFAULT NULL,
  `news_slug` varchar(255) DEFAULT NULL,
  `news_validity` varchar(250) DEFAULT NULL,
  `news_desc` longtext DEFAULT NULL,
  `news_detail` varchar(2000) DEFAULT NULL,
  `news_link` varchar(255) NOT NULL,
  `news_label` int(10) DEFAULT NULL,
  `news_status` int(10) DEFAULT NULL,
  `news_order` int(11) DEFAULT NULL,
  `news_image` varchar(50) DEFAULT NULL,
  `news_thumb` varchar(50) DEFAULT NULL,
  `news_date` varchar(50) DEFAULT NULL,
  `news_publish` varchar(50) DEFAULT NULL,
  `news_modify` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_category`, `news_title`, `news_slug`, `news_validity`, `news_desc`, `news_detail`, `news_link`, `news_label`, `news_status`, `news_order`, `news_image`, `news_thumb`, `news_date`, `news_publish`, `news_modify`) VALUES
(17, NULL, 'Smash Podcast Epiod With Paul Boag', 'smash-podcast-epiod-with-paul-boag', NULL, '<div class=\"entry-content\">\r\n                                <h3 class=\"title\">HOW TO CHOOSE A CAR DETAILING COMPANY</h3>\r\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur et adipisicing  eiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dol aliqu aminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor sit amet, consectetur adipisicing elit tempor incididunt . Lorem ipsum dolor sit amet, consectetur .</p>\r\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                                <div class=\"block-box\">\r\n                                    <h4>Improve Your Car</h4>\r\n                                    <div class=\"box-list\">\r\n                                        <div class=\"row\">\r\n                                            <div class=\"col-lg-6\">\r\n                                                <ul class=\"list\">\r\n                                                    <li>Soft - free rinse dolore magna.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>Soft - free rinse dolore magna.</li>\r\n                                                </ul>\r\n                                            </div>\r\n                                            <div class=\"col-lg-6\">\r\n                                                <ul class=\"list\">\r\n                                                    <li>Hand Wash magna aliqua.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>Hand Wash magna aliqua.</li>\r\n                                                </ul>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"block-box\">\r\n                                    <h4>Daily Car Wash</h4>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\r\n                                    <div class=\"row\">\r\n                                        <div class=\"col-lg-6\">\r\n                                            <div class=\"block-img\">\r\n                                                <img src=\"assets/images/blog/single-blog-1.jpg\" class=\"img-fluid\" alt=\"\">\r\n                                            </div>\r\n                                        </div>\r\n                                        <div class=\"col-lg-6\">\r\n                                            <div class=\"block-img\">\r\n                                                <img src=\"assets/images/blog/single-blog-2.jpg\" class=\"img-fluid\" alt=\"\">\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                                </div>\r\n<div class=\"block-box\">\r\n                                    <h4>Multipole Wash Location</h4>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                                </div></div>', '<p>Lorem ipsum dolor consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliquaenim dolore</p>', '', NULL, 1, 1, 'image_16258114296023.jpg', 'image_16258126981820.jpg', '2019-12-19', NULL, '2021-07-08 21:38:18'),
(18, NULL, 'Smash Podcast Epiod With Paul Boag', 'smash-podcast-epiod-with-paul-boag', NULL, '<div class=\"entry-content\">\r\n                                <h3 class=\"title\">HOW TO CHOOSE A CAR DETAILING COMPANY</h3>\r\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur et adipisicing  eiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dol aliqu aminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor sit amet, consectetur adipisicing elit tempor incididunt . Lorem ipsum dolor sit amet, consectetur .</p>\r\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                                <div class=\"block-box\">\r\n                                    <h4>Improve Your Car</h4>\r\n                                    <div class=\"box-list\">\r\n                                        <div class=\"row\">\r\n                                            <div class=\"col-lg-6\">\r\n                                                <ul class=\"list\">\r\n                                                    <li>Soft - free rinse dolore magna.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>Soft - free rinse dolore magna.</li>\r\n                                                </ul>\r\n                                            </div>\r\n                                            <div class=\"col-lg-6\">\r\n                                                <ul class=\"list\">\r\n                                                    <li>Hand Wash magna aliqua.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>Hand Wash magna aliqua.</li>\r\n                                                </ul>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"block-box\">\r\n                                    <h4>Daily Car Wash</h4>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\r\n                                    <div class=\"row\">\r\n                                        <div class=\"col-lg-6\">\r\n                                            <div class=\"block-img\">\r\n                                                <img src=\"assets/images/blog/single-blog-1.jpg\" class=\"img-fluid\" alt=\"\">\r\n                                            </div>\r\n                                        </div>\r\n                                        <div class=\"col-lg-6\">\r\n                                            <div class=\"block-img\">\r\n                                                <img src=\"assets/images/blog/single-blog-2.jpg\" class=\"img-fluid\" alt=\"\">\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                                </div>\r\n<div class=\"block-box\">\r\n                                    <h4>Multipole Wash Location</h4>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                                </div></div>', '<p>Lorem ipsum dolor consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliquaenim dolore</p>', '', NULL, 1, 2, 'image_16258127396739.jpg', 'image_16258127399925.jpg', '2019-12-19', NULL, '2021-07-08 21:38:59'),
(19, NULL, 'Smash Podcast Epiod With Paul Boag', 'smash-podcast-epiod-with-paul-boag', NULL, '<div class=\"entry-content\">\r\n                                <h3 class=\"title\">HOW TO CHOOSE A CAR DETAILING COMPANY</h3>\r\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur et adipisicing  eiLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dol aliqu aminim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor sit amet, consectetur adipisicing elit tempor incididunt . Lorem ipsum dolor sit amet, consectetur .</p>\r\n                                <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                                <div class=\"block-box\">\r\n                                    <h4>Improve Your Car</h4>\r\n                                    <div class=\"box-list\">\r\n                                        <div class=\"row\">\r\n                                            <div class=\"col-lg-6\">\r\n                                                <ul class=\"list\">\r\n                                                    <li>Soft - free rinse dolore magna.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>Soft - free rinse dolore magna.</li>\r\n                                                </ul>\r\n                                            </div>\r\n                                            <div class=\"col-lg-6\">\r\n                                                <ul class=\"list\">\r\n                                                    <li>Hand Wash magna aliqua.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>wash et dolore magna aliqua.</li>\r\n                                                    <li>Hand Wash magna aliqua.</li>\r\n                                                </ul>\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                </div>\r\n                                <div class=\"block-box\">\r\n                                    <h4>Daily Car Wash</h4>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\r\n                                    <div class=\"row\">\r\n                                        <div class=\"col-lg-6\">\r\n                                            <div class=\"block-img\">\r\n                                                <img src=\"assets/images/blog/single-blog-1.jpg\" class=\"img-fluid\" alt=\"\">\r\n                                            </div>\r\n                                        </div>\r\n                                        <div class=\"col-lg-6\">\r\n                                            <div class=\"block-img\">\r\n                                                <img src=\"assets/images/blog/single-blog-2.jpg\" class=\"img-fluid\" alt=\"\">\r\n                                            </div>\r\n                                        </div>\r\n                                    </div>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                                </div>\r\n<div class=\"block-box\">\r\n                                    <h4>Multipole Wash Location</h4>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor si consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore commodo consequat.</p>\r\n                                    <p>Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetuLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\r\n                                </div></div>', '<p>Lorem ipsum dolor consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliquaenim dolore</p>', '', NULL, 1, 3, 'image_16258126461651.jpg', 'image_16258126465747.jpg', '', NULL, '2021-07-08 21:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newscategories`
--

CREATE TABLE `tbl_newscategories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(100) NOT NULL,
  `cat_slug` varchar(100) NOT NULL,
  `cat_status` int(1) NOT NULL,
  `cat_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_newscategories`
--

INSERT INTO `tbl_newscategories` (`cat_id`, `cat_title`, `cat_slug`, `cat_status`, `cat_order`) VALUES
(1, 'Wash', 'wash', 1, 1),
(2, 'Hand Wash', 'hand-wash', 1, 2),
(3, 'Business', 'business', 1, 3),
(4, 'Booking', 'booking', 1, 4),
(5, 'Branding', 'branding', 1, 5),
(6, 'New Device', 'new-device', 1, 6),
(7, 'Trend', 'trend', 1, 7),
(8, 'Latest', 'latest', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news_categories`
--

CREATE TABLE `tbl_news_categories` (
  `id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news_categories`
--

INSERT INTO `tbl_news_categories` (`id`, `news_id`, `cat_id`) VALUES
(6, 19, 5),
(7, 19, 6),
(8, 19, 7),
(9, 17, 1),
(10, 17, 2),
(11, 17, 7),
(12, 18, 3),
(13, 18, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(11) NOT NULL,
  `order_data` longtext NOT NULL,
  `order_code` varchar(20) NOT NULL,
  `order_status` int(1) NOT NULL,
  `order_order` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_orders`
--

INSERT INTO `tbl_orders` (`order_id`, `order_data`, `order_code`, `order_status`, `order_order`, `order_date`) VALUES
(89, 'a:6:{s:9:\"pkg_title\";s:4:\"GOLD\";s:8:\"currency\";s:3:\"USD\";s:9:\"pkg_price\";s:2:\"24\";s:5:\"email\";s:25:\"zuhaibhassan381@gmail.com\";s:8:\"phone_no\";s:11:\"03005060708\";s:8:\"fullname\";s:13:\"Zuhaib Hassan\";}', '146610', 1, 7, '2021-07-27 09:04:10'),
(90, 'a:6:{s:9:\"pkg_title\";s:6:\"SILVER\";s:8:\"currency\";s:3:\"USD\";s:9:\"pkg_price\";s:2:\"29\";s:5:\"email\";s:25:\"zuhaibhassan381@gmail.com\";s:8:\"phone_no\";s:11:\"03005060708\";s:8:\"fullname\";s:13:\"Zuhaib Hassan\";}', '627101', 1, 8, '2021-07-27 09:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `page_id` int(11) NOT NULL,
  `page_type` varchar(255) NOT NULL DEFAULT 'general',
  `page_menu` int(11) NOT NULL DEFAULT 0,
  `page_parent` int(11) NOT NULL DEFAULT 0,
  `page_name` varchar(255) NOT NULL,
  `page_meta_title` varchar(100) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_detail` longtext DEFAULT NULL,
  `page_link` varchar(100) NOT NULL,
  `page_label` int(11) NOT NULL,
  `page_image` varchar(100) NOT NULL,
  `page_thumb` varchar(255) DEFAULT NULL,
  `page_embed_video` text DEFAULT NULL,
  `page_meta_desc` text DEFAULT NULL,
  `page_meta_keywords` text DEFAULT NULL,
  `page_footer` int(11) NOT NULL DEFAULT 0,
  `page_status` int(1) NOT NULL DEFAULT 1,
  `page_modify_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `page_date` datetime NOT NULL,
  `page_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`page_id`, `page_type`, `page_menu`, `page_parent`, `page_name`, `page_meta_title`, `page_title`, `page_detail`, `page_link`, `page_label`, `page_image`, `page_thumb`, `page_embed_video`, `page_meta_desc`, `page_meta_keywords`, `page_footer`, `page_status`, `page_modify_date`, `page_date`, `page_order`) VALUES
(1, 'general', 0, 0, 'page-not-found', '404 Error', '404 Error', '<div class=\"container\">\r\n<div class=\"row text-center\">\r\n<div class=\"col-lg-8 col-md-8 col-8 mx-auto\">\r\n<div class=\"error-page-wrap\">\r\n<h3>404</h3>\r\n<h4>Sorry! Page Not Found</h4>\r\n<p>Page you are looking for counld not be found</p>\r\n<a href=\"./\" class=\"btn-style btn-filled btn-filled-2\">< Back to home</a></div>\r\n</div>\r\n</div>\r\n</div>', 'page-not-found', 1, 'image_16226151836183.png', NULL, NULL, '', '', 0, 1, '2021-06-02 06:26:23', '2018-05-25 04:43:52', 12),
(2, 'general', 0, 0, 'terms-conditions', 'Terms  &  Conditions', 'Terms & Conditions', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet nisi ornare, luctus est at, elementum arcu. Nam convallis, risus quis commodo auctor, tortor lorem interdum lorem, nec iaculis tortor nisl ut elit. Quisque lacinia felis eu lectus hendrerit vestibulum a nec mi. Ut neque diam, fringilla vel pharetra sit amet, vulputate eu lorem. Curabitur eget congue lacus. Aliquam erat volutpat. Nullam rhoncus iaculis urna, vel lobortis sem interdum vitae.</p>\r\n<p>Aenean et ligula sit amet diam tempus sagittis. Nunc in enim blandit, placerat sapien quis, eleifend mauris. Nulla rhoncus ultrices urna. Aenean semper nunc tortor, vel congue purus tempus quis. Aenean sit amet elit vel tortor accumsan consequat sed non erat. Integer et augue in nibh tempus tincidunt quis quis nisl. Nam eget consequat lacus.</p>\r\n<p>Quisque est lectus, scelerisque ut nulla ac, euismod ultricies justo. Aliquam tempus iaculis augue, in dignissim ex porta in. Nulla facilisi. Integer sed blandit orci. Etiam lobortis, magna non laoreet ultricies, enim est tempus mi, non elementum dolor mauris pretium orci. Praesent enim ligula, commodo ut augue eu, molestie interdum leo. Phasellus eget pulvinar lacus. Nunc ac vulputate odio. Nunc mattis quam eros, vitae aliquam dolor efficitur eget. Sed vitae venenatis nunc, ut aliquet lectus. Morbi dictum congue ultrices. Proin vel risus commodo, maximus mi ac, rhoncus lacus.</p>', 'terms-conditions', 0, 'image_16226385064881.jpg', '', NULL, '', '', 0, 1, '2021-06-02 12:55:06', '2019-06-24 02:14:27', 1),
(3, 'general', 0, 0, 'privacy-policy', 'Privacy Policy', 'Privacy Policy', '<h2 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: &quot;Fira Sans&quot;, sans-serif; font-weight: 700; line-height: 1.3; color: rgb(17, 17, 17); font-size: 2rem;\"><p style=\"margin-bottom: 0px; font-size: 14px; color: rgb(153, 153, 153); line-height: 1.7;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet nisi ornare, luctus est at, elementum arcu. Nam convallis, risus quis commodo auctor, tortor lorem interdum lorem, nec iaculis tortor nisl ut elit. Quisque lacinia felis eu lectus hendrerit vestibulum a nec mi. Ut neque diam, fringilla vel pharetra sit amet, vulputate eu lorem. Curabitur eget congue lacus. Aliquam erat volutpat. Nullam rhoncus iaculis urna, vel lobortis sem interdum vitae.</p><p style=\"margin-bottom: 0px; font-size: 14px; color: rgb(153, 153, 153); line-height: 1.7;\">Aenean et ligula sit amet diam tempus sagittis. Nunc in enim blandit, placerat sapien quis, eleifend mauris. Nulla rhoncus ultrices urna. Aenean semper nunc tortor, vel congue purus tempus quis. Aenean sit amet elit vel tortor accumsan consequat sed non erat. Integer et augue in nibh tempus tincidunt quis quis nisl. Nam eget consequat lacus.</p><p style=\"margin-bottom: 0px; font-size: 14px; color: rgb(153, 153, 153); line-height: 1.7;\">Quisque est lectus, scelerisque ut nulla ac, euismod ultricies justo. Aliquam tempus iaculis augue, in dignissim ex porta in. Nulla facilisi. Integer sed blandit orci. Etiam lobortis, magna non laoreet ultricies, enim est tempus mi, non elementum dolor mauris pretium orci. Praesent enim ligula, commodo ut augue eu, molestie interdum leo. Phasellus eget pulvinar lacus. Nunc ac vulputate odio. Nunc mattis quam eros, vitae aliquam dolor efficitur eget. Sed vitae venenatis nunc, ut aliquet lectus. Morbi dictum congue ultrices. Proin vel risus commodo, maximus mi ac, rhoncus lacus.</p></h2>', 'privacy-policy', 0, 'image_16226379661669.jpg', NULL, NULL, '', '', 0, 1, '2021-06-11 09:30:26', '2019-06-24 04:22:44', 2),
(10, 'general', 0, 0, 'faq', 'About Us', 'FAQ\'s', '<h2 style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; line-height: 52px; font-size: 40px; font-family: Poppins, sans-serif; color: rgb(5, 7, 72);\">About Agency</h2><p style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; vertical-align: baseline; font-size: 17px; line-height: 28px; color: rgb(106, 106, 142); font-family: \"Open Sans\", sans-serif;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry.</p><p style=\"-webkit-font-smoothing: antialiased; padding: 0px; margin: 25px 0px 0px; outline: 0px; vertical-align: baseline; font-size: 17px; line-height: 28px; color: rgb(106, 106, 142); font-family: \"Open Sans\", sans-serif;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry.</p>', '', 0, 'image_16236486801303.jpg', NULL, NULL, '', '', 0, 1, '2021-06-14 05:31:20', '2021-05-28 04:24:01', 7),
(11, 'general', 0, 0, 'service', 'Latest services', 'Our Best Service', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\r\n					<br>incididunt ut labore et dolore magna aliqua.</p>', '', 0, 'image_16258933962805.jpg', NULL, NULL, '', '', 0, 1, '2021-07-09 19:27:53', '2021-05-29 09:07:58', 5),
(13, 'general', 0, 0, 'contact', 'Contact Now', 'Contact Us', '<p><div class=\"form-block\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline; color: rgb(106, 106, 142); font-family: \"Open Sans\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><form action=\"http://localhost/zairone.com/contact#\" method=\"post\" data-url=\"http://localhost/zairone.com/send-contact-message\" data-type=\"contact\" class=\"contact-form contact\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline;\"><div class=\"fieldsets row\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px -15px; outline: 0px; vertical-align: baseline; display: flex; flex-wrap: wrap;\"></div></form></div></p><div class=\"common-heading text-l\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline; text-align: left; position: relative; z-index: 10; color: rgb(106, 106, 142); font-family: \"Open Sans\", sans-serif; font-size: 17px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><h2 class=\"mt0 mb0\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 0px; outline: 0px; vertical-align: baseline; font-weight: 600; line-height: 52px; font-size: 40px; font-family: Poppins, sans-serif; color: rgb(5, 7, 72);\">Have Question? Write a Message</h2><p class=\"mb60 mt20\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; padding: 0px; margin: 20px 0px 60px; outline: 0px; vertical-align: baseline; font-size: 17px; line-height: 28px;\">We will catch you as early as we receive the message</p></div>', '', 0, 'image_16256637924144.jpg', NULL, NULL, '', '', 1, 1, '2021-07-09 19:27:28', '2021-05-29 09:12:17', 6),
(14, 'general', 0, 0, 'about', 'About Us', 'Want To Know About Us', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Owning an&nbsp;<em>iShineExpress Car Wash &amp; Detail™&nbsp;</em>has potential to be one of the most rewarding experiences of your professional life.&nbsp; The information below represents general guidelines and does not constitute an official offer; however, it is representative of the experiences of current&nbsp;<em>iShine</em>&nbsp;franchisees.&nbsp; For more information or to request a franchise package.</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Concept</h1><span style=\"color: rgb(67 186 255); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgbrgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Dual-tunnel automatic wash</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">3-5 detail bays, offering five packages:<ul style=\"padding: 12px 0px 10px 23px;\"><li style=\"margin-bottom: 9px; list-style: disc;\">Show Room New</li><li style=\"margin-bottom: 9px; list-style: disc;\">Express Hand Wax</li><li style=\"margin-bottom: 9px; list-style: disc;\">Interior Super Clean</li><li style=\"margin-bottom: 9px; list-style: disc;\">Carpet Shampoo</li><li style=\"margin-bottom: 9px; list-style: disc;\">Seat Shampoo/Conditioning</li></ul></li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">12-16 Self-Vacuum bays per site (free to customers)</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">&nbsp;</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Franchise Investment</h1><span style=\"color: rgb(67 186 255); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Complete project cost: $3,500,000 to $4,500,000</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Equity required: $200,000 to $800,000</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">&nbsp;</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Brand</h1><span style=\"color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85)); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Upscale Express Car Wash &amp; Detail</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Fine Finishes in Lobby for Customer Appeal</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Dual-tunnel Design</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Arched Roofs &amp; Shade Canopies</li></ul><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Why iShine?</h1><span style=\"color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Pre-identified sites throughout the US for franchise opportunity</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Franchisor Start-Up and On-Going Support<ul style=\"padding: 12px 0px 10px 23px;\"><li style=\"margin-bottom: 9px; list-style: disc;\">Site selection and development assistance</li><li style=\"margin-bottom: 9px; list-style: disc;\">Full training and operations manual</li><li style=\"margin-bottom: 9px; list-style: disc;\">On-going inspection and maintenance</li><li style=\"margin-bottom: 9px; list-style: disc;\">Management training</li><li style=\"margin-bottom: 9px; list-style: disc;\">Marketing support</li><li style=\"margin-bottom: 9px; list-style: disc;\">Total business overview assistance</li></ul></li></ul>', '', 0, 'image_16258358795477.jpg', NULL, NULL, '', '', 0, 1, '2021-07-09 23:21:27', '2021-05-29 09:19:59', 3),
(15, 'general', 0, 0, 'gallery', 'Gallery', 'We Like To Share ...', '', '', 0, 'image_16259047164109.jpg', NULL, NULL, '', '', 0, 1, '2021-07-09 18:15:52', '2021-06-09 03:11:26', 4),
(18, 'general', 0, 0, 'pricing-list', 'Our Packages', 'Pick The Best Plan For You', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor\r\n					<br>incididunt ut labore et dolore magna aliqua.</p>', '', 0, 'image_16259225959059.jpg', NULL, NULL, '', '', 0, 1, '2021-07-09 23:09:55', '2021-06-10 05:56:05', 8),
(19, 'general', 0, 0, 'franchising', 'Franchising', 'Franchising', '<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Owning an&nbsp;<em>iShineExpress Car Wash &amp; Detail™&nbsp;</em>has potential to be one of the most rewarding experiences of your professional life.&nbsp; The information below represents general guidelines and does not constitute an official offer; however, it is representative of the experiences of current&nbsp;<em>iShine</em>&nbsp;franchisees.&nbsp; For more information or to request a franchise package.</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Concept</h1><span style=\"color: rgb(67 186 255); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgbrgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Dual-tunnel automatic wash</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">3-5 detail bays, offering five packages:<ul style=\"padding: 12px 0px 10px 23px;\"><li style=\"margin-bottom: 9px; list-style: disc;\">Show Room New</li><li style=\"margin-bottom: 9px; list-style: disc;\">Express Hand Wax</li><li style=\"margin-bottom: 9px; list-style: disc;\">Interior Super Clean</li><li style=\"margin-bottom: 9px; list-style: disc;\">Carpet Shampoo</li><li style=\"margin-bottom: 9px; list-style: disc;\">Seat Shampoo/Conditioning</li></ul></li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">12-16 Self-Vacuum bays per site (free to customers)</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">&nbsp;</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Franchise Investment</h1><span style=\"color: rgb(67 186 255); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Complete project cost: $3,500,000 to $4,500,000</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Equity required: $200,000 to $800,000</li></ul><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">&nbsp;</p><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Brand</h1><span style=\"color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Upscale Express Car Wash &amp; Detail</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Fine Finishes in Lobby for Customer Appeal</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Dual-tunnel Design</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Arched Roofs &amp; Shade Canopies</li></ul><h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">Why iShine?</h1><span style=\"color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"></span><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(27 50 85); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Pre-identified sites throughout the US for franchise opportunity</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\" ..=\"\" images=\"\" right-tick-images.png\");\"=\"\">Franchisor Start-Up and On-Going Support<ul style=\"padding: 12px 0px 10px 23px;\"><li style=\"margin-bottom: 9px; list-style: disc;\">Site selection and development assistance</li><li style=\"margin-bottom: 9px; list-style: disc;\">Full training and operations manual</li><li style=\"margin-bottom: 9px; list-style: disc;\">On-going inspection and maintenance</li><li style=\"margin-bottom: 9px; list-style: disc;\">Management training</li><li style=\"margin-bottom: 9px; list-style: disc;\">Marketing support</li><li style=\"margin-bottom: 9px; list-style: disc;\">Total business overview assistance</li></ul></li></ul>', '', 0, 'image_16259234381858.jpg', NULL, NULL, '', '', 1, 1, '2021-07-10 00:31:25', '2021-07-10 04:23:58', 9),
(20, 'general', 0, 0, 'wash-club', 'Wash Club', 'Unlimited Wash Club', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', 0, 'image_16259265403998.jpg', NULL, NULL, '', '', 1, 1, '2021-07-10 01:31:59', '2021-07-10 05:15:40', 10),
(21, 'general', 0, 0, 'choose-us', 'Why Choose Us', 'Why Choose Us', '<h1 style=\"margin-right: 0px; margin-bottom: 13px; margin-left: 0px; font-size: 24px; font-family: Poppins, sans-serif; font-weight: 500; line-height: 1.1; color: rgb(27 50 85); background-color: rgb(242, 242, 243); padding: 10px; display: inline-block; clear: both; border-left: 4px solid rgb(27 50 85); width: 1140px; text-shadow: inherit;\">What Do Car Wash Consumers Want Most?</h1><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"> </div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\"><span style=\"font-size: 24px;\"><em><span style=\"font-weight: 700;\">Low Prices, Fast Wash, Convenience, and A Clean Dry Shiny Car</span></em></span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">iShine Express delivers all the above and more with just a quick 3-minute ride from the automated pay station to the end of the wash tunnel. Since you stay in the vehicle, no one will disturb your private space. Our wash packages start as low as $6 (prices vary by location) including always FREE VACUUMS. Our Unlimited Wash Clubs provide even more value for you frequent washers.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Unlike most Express Car Washes, we also offer affordable Express Detailing services. No reservations needed and no waiting hours to get your car back. Each package is completed in 30 minutes or less while you wait in our comfortable lobby with big screen TV and free WiFi. All wash and detail services come with our 100% satisfaction guarantee.</p><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"> </div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\"><span style=\"font-size: 24px;\"><em><span style=\"font-weight: 700;\">iShine’s Modern Technology</span></em></span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">One of the first things you recognize when you drive on to our facility is that this is not your father\'s old car wash. The site design, finishes, and tunnel equipment are all top of the line. Our tunnels are very bright with many windows and skylights. Every aspect of our wash was carefully thought out to give you the best modern car wash experience possible.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Equipment technology in the automated car wash industry has improved dramatically over the last few years and we have chosen the best. The processes and materials used with the computer-controlled equipment are safer than ever and virtually assure a consistently clean dry shiny car every time. The biggest change may be the material used to remove stubborn dirt. We use a lightweight soft foam that helps to buff and shine while it gently washes your car with no marks or dull finish.</p><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"> </div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\"><span style=\"font-size: 24px;\"><em><span style=\"font-weight: 700;\">Wheels & Tires</span></em></span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Everybody likes good looking wheels and tires. iShine Express tunnels use computerized brushes with high pressure sprayers and specialized wheel brightener& tire cleaning solutions. This process is very effective at removing the dirt and road grime while it brightens aluminum and chrome wheels. Also, if you select the \"Tire Shine\" option at the pay station, it will be neatly applied to the tires just before you exit the tunnel.</p><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"> </div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\"><span style=\"font-size: 24px;\"><em><span style=\"font-weight: 700;\">Our Secret Sauce</span></em></span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">The secret to a car cleaning is the water. Most people think all water is the same, but this is far from true. Good water is the one ingredient that makes everything work. Since good water quality is not guaranteed, our water is specially treated to soften and highly filter so it will work much better with our soaps and give your car a spot free rinse. After cleaning is done the water is recycled.</p><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"> </div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\"><span style=\"font-size: 24px;\"><em><span style=\"font-weight: 700;\">Always Clean, Dry & Shiny Cars</span></em></span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">A clean car will not stay that way if not dried properly. The iShine Express drying process begins with a spot free rinse and a drying solution. The spot free rinse is a special process that greatly filters the final rinse water to eliminate spots if any water drops are left on the surface. The drying solution is like that used in your dishwasher. It treats the vehicle surface area which provides for faster runoff under the dryers. The dryers are a powerful array of blower fans that blast off any remaining rinse water as the car exits the tunnel.</p><div class=\"clear\" style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"> </div><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\"><span style=\"font-size: 24px;\"><em><span style=\"font-weight: 700;\">The iShine Green Initiative</span></em></span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Because environmental consciousness isvery important to iShine, we have integrated many key features into our car wash building and processes. We are one of the only car washes companies in the United States that qualify for unlimited Federal SBA lending based on our high-level green initiatives.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; color: rgb(0, 0, 0); font-size: 16px; line-height: 23px; font-family: Poppins, sans-serif;\">Here is a list of some our specific green initiatives implemented at all locations:</p><p><span style=\"color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"></span></p><ul style=\"margin-bottom: 10px; padding: 12px 0px 10px 23px; color: rgb(51, 51, 51); font-family: Poppins, sans-serif; font-size: 18px;\"><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">Our tunnels are outfitted with a water reclaim systems. Water reclaim has two major benefits to the business. First, our water reclamation rate is approximately 80% which equates to savings of about 70% on both water usage and sewer charges.</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">Rainwater from the building is captured and funneled into the water reclaim system. With a normal amount of rainfall, consumption of new domestic water is reduced to only 5%-10%</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">Solar panels are installed on all sites to produce nearly 15% of the energy usage for the entire site</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">Recaptured water not used in our facility to service cars is diverted and used in our irrigation system</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">LED fixtures are used in most of the high energy consuming areas (Lot lights, exterior lighting, signage, etc.).</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">Skylights and glass/glazing are used extensively to promote natural light usage versus solely relying on electrical</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">lighting in the tunnels. This cuts down on the electrical needs of the facility while enhancing the customer’s experience.</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">Majority of building components are made from post-consumer recycled material. All steel on site is made from a minimum of 80% recycled material. This includes the structural steel, re-bar, studs, shade structures and conveyor equipment within the tunnels.</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">All site vacuums are timed to ensure that they are not accidently left running</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">All facility lot lights are required to be on timers</li><li style=\"color: rgb(0, 0, 0); font-size: 16px; margin-bottom: 9px; list-style-image: url(\"../images/right-tick-images.png\");\">Biodegradable and Photodegradable soaps are used through-out the car wash and detailing process at all locations</li></ul>', '', 0, 'image_16259275795252.jpg', NULL, NULL, '', '', 1, 1, '2021-07-10 00:33:22', '2021-07-10 05:32:59', 11),
(22, 'general', 0, 0, 'location', 'Our Locations', 'Location', '', '', 0, 'image_16263318327745.jpg', NULL, NULL, '', '', 0, 1, '2021-07-14 16:50:32', '2021-07-14 09:50:32', 0),
(23, 'general', 0, 0, 'booking-details', 'Booking Details', 'Booking Details', '', '', 0, 'image_16264212509828.jpg', NULL, NULL, '', '', 0, 1, '2021-07-15 17:40:50', '2021-07-15 10:40:50', 13);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partners`
--

CREATE TABLE `tbl_partners` (
  `part_id` int(11) NOT NULL,
  `part_name` varchar(100) NOT NULL,
  `part_type` varchar(255) NOT NULL,
  `part_desc` mediumtext NOT NULL,
  `part_image` varchar(255) NOT NULL,
  `part_sign` varchar(255) NOT NULL,
  `part_logo` varchar(100) NOT NULL,
  `part_status` int(1) NOT NULL,
  `part_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_partners`
--

INSERT INTO `tbl_partners` (`part_id`, `part_name`, `part_type`, `part_desc`, `part_image`, `part_sign`, `part_logo`, `part_status`, `part_order`) VALUES
(1, 'Ann Clarck', 'MAJORITY OWNER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.', 'image_16231426817144.jpg', 'image_16231426817512.png', 'image_16231446523246.png', 1, 0),
(2, 'Joseph Austen', 'TECHNICAL LEAD', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.', 'image_16231430646313.jpg', 'image_16231430645223.png', 'image_16231446703690.png', 1, 1),
(3, 'Tim Cuck', 'MAJORITY OWNER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.', 'image_16231431195158.jpg', 'image_16231431199546.png', 'image_16231446868847.png', 1, 2),
(4, 'Ann Clarck', 'TECHNICAL LEAD', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.', 'image_16231431639483.jpg', 'image_16231431631605.png', 'image_16231447026216.png', 1, 3),
(5, 'Ann Clarck', 'MAJORITY OWNER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.', 'image_16231443744844.jpg', 'image_16231443742084.png', 'image_16231447173815.png', 1, 4),
(6, 'Tim Cuck', 'TECHNICAL LEAD', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.', 'image_16231445049090.jpg', 'image_16231445048911.png', 'image_16231447325417.png', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio`
--

CREATE TABLE `tbl_portfolio` (
  `portfolio_id` int(11) NOT NULL,
  `portfolio_title` varchar(100) NOT NULL,
  `portfolio_detail` mediumtext NOT NULL,
  `portfolio_image` varchar(100) NOT NULL,
  `portfolio_client_name` varchar(100) NOT NULL,
  `portfolio_features` varchar(255) NOT NULL,
  `portfolio_project_date` date NOT NULL,
  `portfolio_order` int(11) NOT NULL,
  `portfolio_status` int(1) NOT NULL,
  `portfolio_project_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_portfolio`
--

INSERT INTO `tbl_portfolio` (`portfolio_id`, `portfolio_title`, `portfolio_detail`, `portfolio_image`, `portfolio_client_name`, `portfolio_features`, `portfolio_project_date`, `portfolio_order`, `portfolio_status`, `portfolio_project_status`) VALUES
(8, '', '', 'image_16259073979074.jpg', '', '', '0000-00-00', 1, 1, 0),
(9, '', '', 'image_16259074137334.jpg', '', '', '0000-00-00', 2, 1, 0),
(10, '', '', 'image_16259074314185.jpg', '', '', '0000-00-00', 3, 1, 0),
(11, '', '', 'image_16259074656550.jpg', '', '', '0000-00-00', 4, 1, 0),
(12, '', '', 'image_16259074803691.jpg', '', '', '0000-00-00', 5, 1, 0),
(13, '', '', 'image_16259074934053.jpg', '', '', '0000-00-00', 6, 1, 0),
(15, '', '', 'image_16259075292046.jpg', '', '', '0000-00-00', 8, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio_categories`
--

CREATE TABLE `tbl_portfolio_categories` (
  `id` int(11) NOT NULL,
  `portfolio_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_portfolio_categories`
--

INSERT INTO `tbl_portfolio_categories` (`id`, `portfolio_id`, `cat_id`) VALUES
(84, 8, 6),
(85, 9, 7),
(86, 10, 8),
(87, 11, 8),
(88, 12, 9),
(89, 13, 10),
(90, 15, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pricing`
--

CREATE TABLE `tbl_pricing` (
  `pri_id` int(11) NOT NULL,
  `pri_title` varchar(100) NOT NULL,
  `pri_price` int(100) NOT NULL,
  `pri_features` mediumtext NOT NULL,
  `pri_status` int(1) NOT NULL,
  `pri_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pricing`
--

INSERT INTO `tbl_pricing` (`pri_id`, `pri_title`, `pri_price`, `pri_features`, `pri_status`, `pri_order`) VALUES
(1, 'PLATINUM', 34, '<div class=\"pricing-body\">\r\n                                <ul class=\"list\">\r\n                                    <li class=\"check\">Gold Wash Plus</li>\r\n                                    <li class=\"check\">Wheels & Tires</li>\r\n                                    <li class=\"check\">Clear Coat Protection</li>\r\n                                    <li class=\"check\">Bug PREP</li>\r\n                                    <li class=\"uncheck\">Max Cuba Wax</li>\r\n                                    <li class=\"uncheck\">Fusion Bath</li>\r\n                                </ul>\r\n                            </div>', 1, 1),
(2, 'GOLD', 29, '<div class=\"pricing-body\">\r\n                                <ul class=\"list\">\r\n                                    <li class=\"check\">Silver Wash Plus</li>\r\n                                    <li class=\"check\">Wheels & Tires</li>\r\n                                    <li class=\"check\">Clear Coat Protection</li>\r\n                                    <li class=\"check\">Bug PREP</li>\r\n                                    <li class=\"uncheck\">Max Cuba Wax</li>\r\n                                    <li class=\"uncheck\">Fusion Bath</li>\r\n                                </ul>\r\n                            </div>', 1, 2),
(3, 'SILVER', 24, '<div class=\"pricing-body\">\r\n                                <ul class=\"list\">\r\n                                    <li class=\"check\">Bronze Wash Plus</li>\r\n                                    <li class=\"check\">Max Cuba Wax</li>\r\n                                    <li class=\"check\">Fusion Bath</li>\r\n                                    <li class=\"check\">Total Body</li>                                    \r\n                                    <li class=\"uncheck\">Triple Foam</li>\r\n                                    <li class=\"uncheck\">Under Carriage Wash</li>\r\n                                </ul>\r\n                            </div>', 1, 3),
(4, 'BRONZE', 19, '<div class=\"pricing-body\">\r\n                                <ul class=\"list\">\r\n                                    <li class=\"uncheck\">Bronze Wash Plus</li>\r\n                                    <li class=\"uncheck\">Wheels & Tires</li>\r\n                                    <li class=\"check\">PRC Soak</li>\r\n                                    <li class=\"check\">Spot Free Rinse</li>\r\n                                    <li class=\"check\">Triple Foam</li>\r\n                                    <li class=\"check\">Under Carriage Wash</li>\r\n                                </ul>\r\n                            </div>', 1, 4),
(5, 'PLATINUM', 25, '<div class=\"pricing-body\">\r\n                                <ul class=\"list\">\r\n                                    <li class=\"check\">Gold Wash Plus</li>\r\n                                    <li class=\"check\">Wheels &amp; Tires</li>\r\n                                    <li class=\"check\">Clear Coat Protection</li>\r\n                                    <li class=\"check\">Bug PREP</li>\r\n                                    <li class=\"uncheck\">Max Cuba Wax</li>\r\n                                    <li class=\"uncheck\">Fusion Bath</li>\r\n                                </ul>\r\n                            </div>', 1, 5),
(6, 'GOLD', 20, '<div class=\"pricing-body\">\r\n                                <ul class=\"list\">\r\n                                    <li class=\"check\">Gold Wash Plus</li>\r\n                                    <li class=\"check\">Wheels &amp; Tires</li>\r\n                                    <li class=\"check\">Clear Coat Protection</li>\r\n                                    <li class=\"check\">Bug PREP</li>\r\n                                    <li class=\"uncheck\">Max Cuba Wax</li>\r\n                                    <li class=\"uncheck\">Fusion Bath</li>\r\n                                </ul>\r\n                            </div>', 1, 6),
(7, 'SILVER', 15, '<div class=\"pricing-body\">\r\n                                <ul class=\"list\">\r\n                                    <li class=\"check\">Gold Wash Plus</li>\r\n                                    <li class=\"check\">Wheels &amp; Tires</li>\r\n                                    <li class=\"check\">Clear Coat Protection</li>\r\n                                    <li class=\"check\">Bug PREP</li>\r\n                                    <li class=\"uncheck\">Max Cuba Wax</li>\r\n                                    <li class=\"uncheck\">Fusion Bath</li>\r\n                                </ul>\r\n                            </div>', 1, 7),
(8, 'BRONZE', 10, '<div class=\"pricing-body\">\r\n                                <ul class=\"list\">\r\n                                    <li class=\"check\">Gold Wash Plus</li>\r\n                                    <li class=\"check\">Wheels &amp; Tires</li>\r\n                                    <li class=\"check\">Clear Coat Protection</li>\r\n                                    <li class=\"check\">Bug PREP</li>\r\n                                    <li class=\"uncheck\">Max Cuba Wax</li>\r\n                                    <li class=\"uncheck\">Fusion Bath</li>\r\n                                </ul>\r\n                            </div>', 1, 8),
(13, 'FULL SERVICE WASH', 55, '<div class=\"pricing-body\">\r\n                                <ul class=\"list\">\r\n<h5 class=\"text-center pb-10\">Gold Wash Plus</h5>\r\n                                    <li class=\"check\">Hand Dry</li>\r\n                                    <li class=\"check\">Vaccum</li>\r\n                                    <li class=\"check\">Interior Wipe Down</li>\r\n                                    <li class=\"check\">Cup Holders Cleaned</li>\r\n                                    <li class=\"check\">Inside Windows Cleaned</li>\r\n                                    <li class=\"check\">Floor Mats Cleaned And Shampooed</li>\r\n                                    <li class=\"check\">Fusion Max Exterior Protectants</li>\r\n                                </ul>\r\n<ul class=\"list\">\r\n<h5 class=\"text-center pb-10\">Applied At Request</h5>\r\n                                    <li class=\"check\">Additional Tire Shine</li>\r\n                                    <li class=\"check\">Exterior Trim Protectant</li>\r\n                                    <li class=\"check\">Bumper Gel</li>\r\n                                </ul>\r\n                            </div>', 1, 13),
(14, 'FULL SERVICE WASH', 35, '<div class=\"pricing-body\">\r\n                                <ul class=\"list\">\r\n<h5 class=\"text-center pb-10\">Gold Wash Plus</h5>\r\n                                    <li class=\"check\">Hand Dry</li>\r\n                                    <li class=\"check\">Vaccum</li>\r\n                                    <li class=\"check\">Interior Wipe Down</li>\r\n                                    <li class=\"check\">Cup Holders Cleaned</li>\r\n                                    <li class=\"check\">Inside Windows Cleaned</li>\r\n                                    <li class=\"check\">Floor Mats Cleaned And Shampooed</li>\r\n                                    <li class=\"check\">Fusion Max Exterior Protectants</li>\r\n                                </ul>\r\n<ul class=\"list\">\r\n<h5 class=\"text-center pb-10\">Applied At Request</h5>\r\n                                    <li class=\"check\">Additional Tire Shine</li>\r\n                                    <li class=\"check\">Exterior Trim Protectant</li>\r\n                                    <li class=\"uncheck\">Bumper Gel</li>\r\n                                </ul>\r\n                            </div>', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pricing_type`
--

CREATE TABLE `tbl_pricing_type` (
  `id` int(11) NOT NULL,
  `pri_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pricing_type`
--

INSERT INTO `tbl_pricing_type` (`id`, `pri_id`, `type_id`) VALUES
(12, 5, 2),
(13, 6, 2),
(14, 7, 2),
(15, 8, 2),
(24, 1, 1),
(25, 2, 1),
(26, 3, 1),
(28, 4, 1),
(32, 13, 4),
(33, 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pri_types`
--

CREATE TABLE `tbl_pri_types` (
  `type_id` int(11) NOT NULL,
  `type_slug` varchar(255) NOT NULL,
  `type_title` varchar(255) NOT NULL,
  `type_image` varchar(255) NOT NULL,
  `type_status` int(1) NOT NULL,
  `type_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pri_types`
--

INSERT INTO `tbl_pri_types` (`type_id`, `type_slug`, `type_title`, `type_image`, `type_status`, `type_order`) VALUES
(1, 'unlimited-plan', 'Unlimited Plan', 'fa fa-shopping-bag', 1, 1),
(2, 'exterior-wash', 'Exterior Wash', 'fa fa-soap', 1, 2),
(4, 'full-service', 'Full Service', 'fa fa-hand-sparkles', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `service_id` int(11) NOT NULL,
  `service_image` varchar(100) NOT NULL,
  `service_thumb` varchar(100) NOT NULL,
  `service_icon` varchar(100) NOT NULL,
  `service_title` varchar(100) NOT NULL,
  `service_slug` varchar(255) DEFAULT NULL,
  `service_price` varchar(100) NOT NULL,
  `service_short_desc` varchar(255) NOT NULL,
  `service_detail_desc` longtext NOT NULL,
  `service_order` int(11) NOT NULL,
  `service_status` int(1) NOT NULL,
  `service_featured` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`service_id`, `service_image`, `service_thumb`, `service_icon`, `service_title`, `service_slug`, `service_price`, `service_short_desc`, `service_detail_desc`, `service_order`, `service_status`, `service_featured`) VALUES
(20, 'image_16257314062104.jpg', '', 'flaticon-car-service', 'EXPRESS EXTARIOR', 'express-extarior', '25.85', 'consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.', '<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-lg-6\">\r\n                                    <ul class=\"check_list mb-25\">\r\n                                        <li>We offer multiple services at a great value</li>\r\n                                        <li>Multiple car wash locations throughout Portland</li>\r\n                                        <li>We are very open and easy to reach company</li>\r\n                                        <li>Multiple car wash locations throughout Portland</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <div class=\"col-lg-6\">\r\n                                    <ul class=\"check_list mb-25\">\r\n                                        <li>You can pay online for your appointment</li>\r\n                                        <li>Book an appointment online under 3 minutes</li>\r\n                                        <li>Pay for your wash electronically and securely</li>\r\n                                        <li>Book an appointment online under 3 minutes</li>\r\n                                    </ul>\r\n                                </div>\r\n                            </div>\r\n<div class=\"row\">\r\n                                <div class=\"col-lg-6\">\r\n                                    <div class=\"block-box-one mb-50\">\r\n<h5>Oil Changes</h5>\r\n                                        <ul class=\"list-dot\">\r\n                                            <li>conventional </li>\r\n                                            <li>Semi-synthetic </li>\r\n                                            <li>Full synthetic</li>\r\n                                            <li>Air Filter Replacement</li>\r\n                                            <li>Fuel Filter Replacement </li>\r\n<li>Cabin Filter Replacement </li>\r\n                                            \r\n                                        </ul>\r\n                                    </div>\r\n                                </div>\r\n<div class=\"col-lg-6\">\r\n                                    <div class=\"block-box-one mb-50\">\r\n<h5>Fluid Top Offs</h5>\r\n                                        <ul class=\"list-dot\">\r\n                                            \r\n                                            <li>Transmission</li>\r\n                                            <li>Brake Fluid</li>\r\n                                            <li>Coolant </li>\r\n<li>Wiper Fluid</li>\r\n                                            <li>Front and Rear Diff</li>\r\n                                            <li>Transfer Fluid</li>\r\n                                        </ul>\r\n                                    </div>\r\n                                </div>\r\n</div>', 1, 1, 1),
(21, 'image_16257315446913.jpg', '', 'flaticon-car-service-1', 'CLOTH WASH', 'cloth-wash', '63.30', 'consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.', '<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-lg-6\">\r\n                                    <ul class=\"check_list mb-25\">\r\n                                        <li>We offer multiple services at a great value</li>\r\n                                        <li>Multiple car wash locations throughout Portland</li>\r\n                                        <li>We are very open and easy to reach company</li>\r\n                                        <li>Multiple car wash locations throughout Portland</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <div class=\"col-lg-6\">\r\n                                    <ul class=\"check_list mb-25\">\r\n                                        <li>You can pay online for your appointment</li>\r\n                                        <li>Book an appointment online under 3 minutes</li>\r\n                                        <li>Pay for your wash electronically and securely</li>\r\n                                        <li>Book an appointment online under 3 minutes</li>\r\n                                    </ul>\r\n                                </div>\r\n                            </div>', 2, 1, 1),
(22, 'image_16257316255410.jpg', '', 'flaticon-mechanic', 'FREE SERVICE', 'free-service', '63.30', 'consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.', '<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-lg-6\">\r\n                                    <ul class=\"check_list mb-25\">\r\n                                        <li>We offer multiple services at a great value</li>\r\n                                        <li>Multiple car wash locations throughout Portland</li>\r\n                                        <li>We are very open and easy to reach company</li>\r\n                                        <li>Multiple car wash locations throughout Portland</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <div class=\"col-lg-6\">\r\n                                    <ul class=\"check_list mb-25\">\r\n                                        <li>You can pay online for your appointment</li>\r\n                                        <li>Book an appointment online under 3 minutes</li>\r\n                                        <li>Pay for your wash electronically and securely</li>\r\n                                        <li>Book an appointment online under 3 minutes</li>\r\n                                    </ul>\r\n                                </div>\r\n                            </div>', 3, 1, 1),
(23, 'image_16257316721972.jpg', '', 'flaticon-car-wash-1', 'EXPRESS EXTARIOR', 'express-extarior', '80.29', 'consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.', '<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-lg-6\">\r\n                                    <ul class=\"check_list mb-25\">\r\n                                        <li>We offer multiple services at a great value</li>\r\n                                        <li>Multiple car wash locations throughout Portland</li>\r\n                                        <li>We are very open and easy to reach company</li>\r\n                                        <li>Multiple car wash locations throughout Portland</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <div class=\"col-lg-6\">\r\n                                    <ul class=\"check_list mb-25\">\r\n                                        <li>You can pay online for your appointment</li>\r\n                                        <li>Book an appointment online under 3 minutes</li>\r\n                                        <li>Pay for your wash electronically and securely</li>\r\n                                        <li>Book an appointment online under 3 minutes</li>\r\n                                    </ul>\r\n                                </div>\r\n                            </div>', 4, 1, 1),
(24, 'image_16257317349300.jpg', '', 'flaticon-vehicle', 'CLOTH WASH', 'cloth-wash', '22.60', 'consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.', '<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-lg-6\">\r\n                                    <ul class=\"check_list mb-25\">\r\n                                        <li>We offer multiple services at a great value</li>\r\n                                        <li>Multiple car wash locations throughout Portland</li>\r\n                                        <li>We are very open and easy to reach company</li>\r\n                                        <li>Multiple car wash locations throughout Portland</li>\r\n                                    </ul>\r\n                                </div>\r\n                                <div class=\"col-lg-6\">\r\n                                    <ul class=\"check_list mb-25\">\r\n                                        <li>You can pay online for your appointment</li>\r\n                                        <li>Book an appointment online under 3 minutes</li>\r\n                                        <li>Pay for your wash electronically and securely</li>\r\n                                        <li>Book an appointment online under 3 minutes</li>\r\n                                    </ul>\r\n                                </div>\r\n                            </div>', 5, 1, 1),
(25, 'image_16257349369079.jpg', '', 'flaticon-polisher', 'FREE SERVICE', 'free-service', '49.50', 'consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.', '<h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>\r\n                            <div class=\"row\">', 6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_technologies`
--

CREATE TABLE `tbl_service_technologies` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `tec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_service_technologies`
--

INSERT INTO `tbl_service_technologies` (`id`, `service_id`, `tec_id`) VALUES
(109, 21, 7),
(110, 22, 8),
(111, 23, 10),
(113, 24, 9),
(114, 25, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siteadmin`
--

CREATE TABLE `tbl_siteadmin` (
  `site_id` int(11) NOT NULL,
  `site_login` varchar(20) NOT NULL,
  `site_pswd` varchar(32) NOT NULL,
  `site_info_data` longtext DEFAULT NULL,
  `site_contact_data` longtext DEFAULT NULL,
  `site_email_data` longtext NOT NULL,
  `site_smtp_data` longtext NOT NULL,
  `site_meta_data` longtext DEFAULT NULL,
  `site_script_data` longtext NOT NULL,
  `site_social_data` longtext DEFAULT NULL,
  `site_og_data` longtext DEFAULT NULL,
  `site_email_details` longtext NOT NULL,
  `site_captcha` longtext NOT NULL,
  `site_theme` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_siteadmin`
--

INSERT INTO `tbl_siteadmin` (`site_id`, `site_login`, `site_pswd`, `site_info_data`, `site_contact_data`, `site_email_data`, `site_smtp_data`, `site_meta_data`, `site_script_data`, `site_social_data`, `site_og_data`, `site_email_details`, `site_captcha`, `site_theme`) VALUES
(1, 'admin', '7565v3q454040333', 'a:6:{s:9:\"site_name\";s:10:\"Fusion Max\";s:11:\"site_domain\";s:20:\"fusionmaxcarwash.com\";s:12:\"site_version\";s:3:\"1.0\";s:9:\"site_logo\";s:24:\"image_16258894338726.png\";s:11:\"login_image\";s:0:\"\";s:8:\"timezone\";s:12:\"America/Adak\";}', 'a:7:{s:10:\"site_email\";s:22:\"info.contact@gmail.com\";s:8:\"site_fax\";s:22:\"info.contact@gmail.com\";s:10:\"site_phone\";s:18:\"+(066) 517 800 628\";s:11:\"site_phone2\";s:18:\"+(066) 517 800 628\";s:12:\"site_address\";s:33:\"420 Love Sreet 133/2 Mirpur Dhaka\";s:12:\"site_website\";s:22:\"info.contact@gmail.com\";s:8:\"site_map\";s:72:\"https://maps.google.com/maps?q=dhaka&t=&z=13&ie=UTF8&iwloc=&output=embed\";}', 'a:6:{s:18:\"site_contact_email\";s:21:\"info@multipurpose.com\";s:23:\"site_contact_email_from\";s:21:\"info@multipurpose.com\";s:21:\"site_contact_auto_sub\";s:29:\"Thank you for considering us.\";s:23:\"site_contact_auto_reply\";s:51:\"This is a response message from Multipurpose CMS...\";s:18:\"site_email_details\";s:75:\"<p><u><strong> Thank you for considering us.</strong></u></p>\r\n<p><br></p>\";s:16:\"site_contact_map\";s:0:\"\";}', 'a:6:{s:11:\"site_driver\";s:4:\"smtp\";s:14:\"site_mail_host\";s:13:\"fusionmax.com\";s:14:\"site_mail_port\";s:2:\"21\";s:18:\"site_mail_username\";s:13:\"fusionmax.com\";s:18:\"site_mail_password\";s:5:\"admin\";s:20:\"site_mail_incription\";s:13:\"fusionmax.com\";}', 'a:5:{s:15:\"site_meta_title\";s:16:\"Multipurpose CMS\";s:21:\"site_meta_description\";s:16:\"Multipurpose CMS\";s:18:\"site_meta_keywords\";s:16:\"Multipurpose CMS\";s:19:\"site_meta_copyright\";s:16:\"Multipurpose CMS\";s:16:\"site_meta_author\";s:16:\"Multipurpose CMS\";}', 'a:2:{s:21:\"site_meta_script_head\";s:16:\"Multipurpose CMS\";s:21:\"site_meta_script_body\";s:16:\"Multipurpose CMS\";}', 'a:5:{s:13:\"site_facebook\";s:22:\"info.contact@gmail.com\";s:12:\"site_twitter\";s:22:\"info.contact@gmail.com\";s:10:\"site_skype\";s:22:\"info.contact@gmail.com\";s:14:\"site_instagram\";s:22:\"info.contact@gmail.com\";s:14:\"site_pinterest\";s:22:\"info.contact@gmail.com\";}', 'a:6:{s:13:\"site_og_title\";s:25:\"Prime Cargo International\";s:12:\"site_og_type\";s:7:\"website\";s:13:\"site_og_image\";s:73:\"http://localhost/paperbirdpackaging/uploads/logo/Image_15474478326709.png\";s:18:\"site_og_image_type\";s:10:\"image/jpeg\";s:14:\"site_og_locale\";s:5:\"en_US\";s:19:\"site_og_description\";s:25:\"Prime Cargo International\";}', '', 'a:2:{s:9:\"admin_key\";s:40:\"6Lf_nWwUAAAAAN_QKbYWwwf0r6DDWct52DoYzETF\";s:10:\"public_key\";s:40:\"6Lf_nWwUAAAAAOWsOO1Uc71lQo8aWGt1p93MlWym\";}', 'de3e16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` varchar(255) DEFAULT NULL,
  `slider_desc` varchar(1000) DEFAULT NULL,
  `slider_btn1_text` varchar(100) DEFAULT NULL,
  `slider_btn1_link` varchar(500) DEFAULT NULL,
  `slider_btn2_text` varchar(100) DEFAULT NULL,
  `slider_btn2_link` varchar(500) DEFAULT NULL,
  `slider_thumb` varchar(50) DEFAULT NULL,
  `slider_image` varchar(50) DEFAULT NULL,
  `slider_order` int(11) DEFAULT NULL,
  `slider_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_title`, `slider_desc`, `slider_btn1_text`, `slider_btn1_link`, `slider_btn2_text`, `slider_btn2_link`, `slider_thumb`, `slider_image`, `slider_order`, `slider_status`) VALUES
(4, 'We will help to improve your business', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus, risus sit amet auctor sodales, justo erat tempor eros.', 'Contact us', 'https://www.facebook.com', '', '', 'thumb_16230722359148.jpg', 'image_16230722359148.jpg', 1, 1),
(5, 'We will help to improve your business', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus, risus sit amet auctor sodales, justo erat tempor eros.', 'Contact us', 'https://www.facebook.com', '', '', 'thumb_16230723158490.jpg', 'image_16230723158490.jpg', 2, 1),
(6, 'We will help to improve your business', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse faucibus, risus sit amet auctor sodales, justo erat tempor eros.', 'Contact us', 'https://www.facebook.com', '', '', 'thumb_16230727649139.jpg', 'image_16230727649139.jpg', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `sub_id` int(11) NOT NULL,
  `sub_email` varchar(255) DEFAULT NULL,
  `sub_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sub_status` int(1) NOT NULL,
  `sub_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_subscribers`
--

INSERT INTO `tbl_subscribers` (`sub_id`, `sub_email`, `sub_date`, `sub_status`, `sub_order`) VALUES
(1, 'DelsieEOrtiz@armyspy.com', '2020-11-11 01:46:49', 1, 0),
(2, 'DeborahMWilliams@armyspy.com', '2020-11-11 01:46:59', 1, 1),
(3, 'ebbieSCalder@teleworm.us', '2020-11-11 01:47:09', 1, 2),
(6, 'a@a.com', '2021-06-02 02:15:37', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team`
--

CREATE TABLE `tbl_team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `team_portfolio` varchar(100) NOT NULL,
  `team_email` varchar(255) NOT NULL,
  `team_phone` varchar(15) NOT NULL,
  `team_fb` varchar(100) NOT NULL,
  `team_twt` varchar(100) NOT NULL,
  `team_linkedin` varchar(100) NOT NULL,
  `team_desc` mediumtext NOT NULL,
  `team_order` int(11) NOT NULL,
  `team_status` int(11) NOT NULL,
  `team_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_team`
--

INSERT INTO `tbl_team` (`team_id`, `team_name`, `team_portfolio`, `team_email`, `team_phone`, `team_fb`, `team_twt`, `team_linkedin`, `team_desc`, `team_order`, `team_status`, `team_image`) VALUES
(1, 'Jack Semper', 'Majority Owner', 'multipurpose@info.com', '+9233112233444', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.linkedin.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 1, 1, 'image_16231601414226.jpg'),
(2, 'Ann Smith', 'Finance Lead', 'multipurpose@info.com', '+9233112233444', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 2, 1, 'image_16231602011411.jpg'),
(3, 'Philip Wilson', 'Networking Lead', 'multipurpose@info.com', '+9233112233444', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 3, 1, 'image_16231602539330.jpg'),
(4, 'Dr M Ashfaq Hussain', 'MD (USA), FAAP (USA)', 'multipurpose@info.com', '+9233112233444', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 4, 1, 'image_16232333205492.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_technologies`
--

CREATE TABLE `tbl_technologies` (
  `tec_id` int(11) NOT NULL,
  `tec_title` varchar(100) NOT NULL,
  `tec_status` int(1) NOT NULL,
  `tec_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_technologies`
--

INSERT INTO `tbl_technologies` (`tec_id`, `tec_title`, `tec_status`, `tec_order`) VALUES
(6, 'Hand Wash', 1, 1),
(7, 'Hand Wax', 1, 2),
(8, 'Auto Wash', 1, 3),
(9, 'Tripple', 1, 4),
(10, 'Auto Details', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE `tbl_testimonials` (
  `test_id` int(11) NOT NULL,
  `test_title` varchar(100) NOT NULL,
  `test_slug` varchar(100) NOT NULL,
  `test_image` varchar(100) NOT NULL,
  `test_desc` varchar(255) NOT NULL,
  `test_portfolio` varchar(255) NOT NULL,
  `test_status` int(1) NOT NULL,
  `test_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`test_id`, `test_title`, `test_slug`, `test_image`, `test_desc`, `test_portfolio`, `test_status`, `test_order`) VALUES
(6, 'Moana Smile', 'moana-smile', 'image_16231451737568.jpg', '“Lorem ipsum dolor consectetur elit Lorem ipsum dolor sit amet sed do eiusmod tempor incididunt’’', 'Consultant', 1, 7),
(7, 'Mary Kay', 'mary-kay', 'image_16221959928879.jpg', '“Lorem ipsum dolor consectetur elit Lorem ipsum dolor sit amet sed do eiusmod tempor incididunt’’', 'Design Lead', 0, 8),
(8, 'Mary Kay', 'mary-kay', 'image_16231453331567.jpg', '“Lorem ipsum dolor consectetur elit Lorem ipsum dolor sit amet sed do eiusmod tempor incididunt’’', 'Networking Lead', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_texts`
--

CREATE TABLE `tbl_texts` (
  `txt_id` int(11) NOT NULL,
  `txt_type` varchar(50) NOT NULL,
  `txt_data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_texts`
--

INSERT INTO `tbl_texts` (`txt_id`, `txt_type`, `txt_data`) VALUES
(1, 'header', 'a:5:{s:4:\"text\";s:27:\"Monday-Saturday 9 AM - 6 PM\";s:6:\"title1\";s:0:\"\";s:5:\"desc1\";s:0:\"\";s:6:\"title2\";s:0:\"\";s:5:\"desc2\";s:0:\"\";}'),
(2, 'footer', 'a:4:{s:10:\"mod_status\";s:1:\"1\";s:5:\"title\";s:16:\"Multipurpose CMS\";s:4:\"desc\";s:148:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.\";s:14:\"text_copyright\";s:59:\" © Copyright 2021 FUSION MAX CARWASH, All Rights reserved.\";}'),
(3, 'about', 'a:7:{s:5:\"title\";s:13:\"ABOUT COMPANY\";s:6:\"detail\";s:1768:\"<h2>We Discover 45 Years  About Car Wash</h2>\r\n                            \r\n                            <p>Sed perspiciatis unde ste natus error voluptatem accusantium architecto doloremque udantium totam rem aperiam eaque ipsa quae inventore veritatis et quasi architecto beatae dicta sunt explicabo aperiam eaque</p>\r\n                            <div class=\"row\">\r\n                                <div class=\"col-lg-6\">\r\n                                    <div class=\"box mb-15\">\r\n                                        <div class=\"icon\">\r\n                                            <i class=\"flaticon-cogs\"></i>\r\n                                        </div>\r\n                                        <div class=\"info\">\r\n                                            <h5>Company Experience</h5>\r\n                                        </div> \r\n                                    </div>                                  \r\n                                </div>\r\n                                <div class=\"col-lg-6\">\r\n                                    <div class=\"box mb-15\">\r\n                                        <div class=\"icon\">\r\n                                            <i class=\"flaticon-light-bulb\"></i>\r\n                                        </div>\r\n                                        <div class=\"info\">\r\n                                            <h5>Quick Support & Help</h5>\r\n                                        </div>\r\n                                    </div>                               \r\n                                </div>\r\n                            </div>\r\n                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>\";s:6:\"image1\";s:24:\"image_16257250598008.jpg\";s:6:\"image2\";s:24:\"image_16257250598913.jpg\";s:6:\"image3\";s:24:\"image_16257250599822.jpg\";s:4:\"text\";s:8:\"ABOUT Us\";s:4:\"link\";s:5:\"about\";}'),
(4, 'offers', 'a:4:{s:9:\"sec_title\";s:11:\"COMBO OFFER\";s:8:\"sec_desc\";s:63:\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit\";s:10:\"sec_banner\";s:24:\"image_16051026155403.jpg\";s:8:\"sec_logo\";s:24:\"image_16051026153216.png\";}'),
(5, 'special_food', 'a:4:{s:9:\"sec_title\";s:19:\"ITHAKA SPECIAL FOOD\";s:8:\"sec_desc\";s:64:\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit.\";s:10:\"sec_banner\";s:0:\"\";s:8:\"sec_logo\";s:24:\"image_16051038149859.png\";}'),
(6, 'menus', 'a:4:{s:9:\"sec_title\";s:14:\"OUR DAILY MENU\";s:8:\"sec_desc\";s:64:\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit.\";s:10:\"sec_banner\";s:24:\"image_16051211994039.jpg\";s:8:\"sec_logo\";s:24:\"image_16051127092665.png\";}'),
(8, 'deals', 'a:4:{s:9:\"sec_title\";s:14:\"DAILY SET MENU\";s:8:\"sec_desc\";s:66:\"Duis autem vel eum iriure dolor in hendrerit in vulputate velit.\r\n\";s:10:\"sec_banner\";s:24:\"image_16051164822838.png\";s:8:\"sec_logo\";s:24:\"image_16051164822595.png\";}'),
(10, 'testimonials', 'a:3:{s:5:\"title\";s:11:\"Testomonial\";s:9:\"sec_title\";s:15:\"Our Testomonial\";s:5:\"image\";s:24:\"image_16257492482455.jpg\";}'),
(11, 'contact', 'a:7:{s:10:\"mod_status\";s:1:\"1\";s:5:\"title\";s:26:\"We are Available Worldwide\";s:6:\"detail\";s:345:\"<p><span style=\"color: rgb(153, 153, 153); font-family: \"Fira Sans\", sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br></p>\";s:5:\"image\";s:24:\"image_16231336107821.png\";s:8:\"duration\";s:21:\"Mon-Sat 09:00 - 19:00\";s:4:\"text\";s:10:\"Contact Us\";s:4:\"link\";s:24:\"https://www.facebook.com\";}'),
(12, 'business', 'a:28:{s:5:\"title\";s:17:\"Our Business Plan\";s:9:\"secondary\";s:19:\"Business Model View\";s:6:\"detail\";s:474:\"<p><span style=\"color: rgb(106, 106, 142); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 17px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. is simply dummy text of the printing and typesetting industry.</span><br></p>\";s:14:\"business_image\";s:24:\"image_16220311988171.jpg\";s:6:\"title1\";s:17:\"Social Networking\";s:6:\"image1\";s:24:\"image_16221313647374.png\";s:6:\"title2\";s:17:\"Digital Marketing\";s:6:\"image2\";s:24:\"image_16221313646287.png\";s:6:\"title3\";s:21:\"Ecommerce Development\";s:6:\"image3\";s:24:\"image_16221313646022.png\";s:6:\"title4\";s:13:\"Video Service\";s:6:\"image4\";s:24:\"image_16221313649376.png\";s:6:\"title5\";s:15:\"Banking Service\";s:6:\"image5\";s:24:\"image_16221313644504.png\";s:6:\"title6\";s:18:\"Enterprise Service\";s:6:\"image6\";s:24:\"image_16221313641359.png\";s:6:\"title7\";s:17:\"Education Service\";s:6:\"image7\";s:24:\"image_16221313647288.png\";s:6:\"title8\";s:16:\"Tour and Travels\";s:6:\"image8\";s:24:\"image_16221313641973.png\";s:6:\"title9\";s:14:\"Health Service\";s:6:\"image9\";s:24:\"image_16221313645753.png\";s:7:\"title10\";s:14:\"Event & Ticket\";s:7:\"image10\";s:24:\"image_16221313646179.png\";s:7:\"title11\";s:18:\"Restaurant Service\";s:7:\"image11\";s:24:\"image_16221313645846.png\";s:7:\"title12\";s:19:\"Business Consultant\";s:7:\"image12\";s:24:\"image_16221313641950.png\";}'),
(13, 'stats', 'a:12:{s:6:\"title1\";s:15:\"Years Experienc\";s:6:\"count1\";s:2:\"25\";s:6:\"image1\";s:24:\"image_16221949899580.svg\";s:6:\"title2\";s:14:\"Total Car Wash\";s:6:\"count2\";s:3:\"15k\";s:6:\"image2\";s:24:\"image_16221949898874.svg\";s:6:\"title3\";s:14:\"Expert Workers\";s:6:\"count3\";s:2:\"43\";s:6:\"image3\";s:24:\"image_16221949892338.svg\";s:6:\"title4\";s:14:\"Trusted Client\";s:6:\"count4\";s:3:\"10k\";s:6:\"image4\";s:24:\"image_16221949897830.svg\";}'),
(14, 'hero', 'a:8:{s:5:\"title\";s:20:\"Keeping Your Car New\";s:9:\"sec_title\";s:27:\"Wash Your Car & Make It New\";s:5:\"text1\";s:8:\"SERVICES\";s:5:\"link1\";s:7:\"service\";s:5:\"text2\";s:10:\"CONTACT US\";s:5:\"link2\";s:7:\"contact\";s:4:\"desc\";s:122:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua.\";s:5:\"image\";s:24:\"image_16257219786470.jpg\";}'),
(15, 'newsletter', 'a:4:{s:10:\"mod_status\";s:1:\"1\";s:5:\"title\";s:16:\"Join Newsletters\";s:6:\"detail\";s:175:\"<p><span style=\"color: rgb(109, 109, 109); font-family: Rubik, sans-serif; font-size: 16px;\">Bed perspiciatis unde omnis iste natus error voluptatem accusantium</span><br></p>\";s:5:\"image\";s:24:\"image_16231501437608.png\";}'),
(16, 'portfolio', 'a:4:{s:5:\"title\";s:12:\"Lattest Work\";s:9:\"sec_title\";s:18:\"Our Latest Project\";s:4:\"text\";s:9:\"View More\";s:4:\"link\";s:7:\"gallery\";}'),
(17, 'service', 'a:4:{s:5:\"title\";s:16:\"Our Best Service\";s:9:\"sec_title\";s:7:\"Service\";s:4:\"text\";s:7:\"SEE ALL\";s:4:\"link\";s:7:\"service\";}'),
(18, 'client', 'a:7:{s:10:\"mod_status\";s:1:\"1\";s:5:\"title\";s:23:\"Gain a Success With Us!\";s:6:\"detail\";s:530:\"<h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Fira Sans\", sans-serif; line-height: 54.6px; color: rgb(255, 255, 255); font-size: 42px; position: relative; text-align: center;\"><span style=\"font-weight: 600;\">Doing the right thing</span></h2><h4 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-family: \"Fira Sans\", sans-serif; font-weight: 600; line-height: 48px; color: rgb(255, 255, 255); font-size: 30px; position: relative; text-align: center;\">At the Right Time.</h4>\";s:5:\"image\";s:24:\"image_16231400177693.jpg\";s:10:\"live_image\";s:185:\"videoURL:\'https://www.youtube.com/watch?v=buBvqw6G3WU\', containment:\'#video-area\', showControls:false, autoPlay:true, zoom:0, loop:true, mute:true, startAt:55, opacity:1, quality:\'low\',\";s:4:\"text\";s:15:\"Become a Client\";s:4:\"link\";s:24:\"https://www.facebook.com\";}'),
(19, 'mission', 'a:12:{s:10:\"mod_status\";s:1:\"1\";s:5:\"title\";s:50:\"Our Mission is to Turn Your Ideas Into Businesses.\";s:9:\"sec_title\";s:11:\"Our mission\";s:6:\"detail\";s:338:\"<span style=\"color: rgb(153, 153, 153); font-family: \"Fira Sans\", sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span><br>\";s:6:\"title1\";s:15:\"Market Research\";s:6:\"count1\";s:2:\"10\";s:6:\"title2\";s:14:\"Sales Services\";s:6:\"count2\";s:1:\"5\";s:6:\"title3\";s:17:\"Online Reputation\";s:6:\"count3\";s:2:\"50\";s:6:\"title4\";s:20:\"Strategic Consulting\";s:6:\"count4\";s:2:\"75\";}'),
(20, 'team', 'a:3:{s:5:\"title\";s:28:\"We Are Team Of Professionals\";s:9:\"sec_title\";s:13:\"Meet Our Team\";s:6:\"detail\";s:586:\"<p><span style=\"color: rgb(170, 170, 170); font-family: &quot;Fira Sans&quot;, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor</span><br style=\"color: rgb(170, 170, 170); font-family: &quot;Fira Sans&quot;, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\"><span style=\"color: rgb(170, 170, 170); font-family: &quot;Fira Sans&quot;, sans-serif; text-align: center; background-color: rgb(249, 249, 249);\">incididunt ut labore et dolore magna aliqua.</span><br></p>\";}'),
(21, 'feature', 'a:12:{s:6:\"title1\";s:19:\"Contactless Washing\";s:5:\"icon1\";s:17:\"flaticon-mechanic\";s:5:\"desc1\";s:60:\"consectetur adipisicing eiusmod tempor incididunt ut labore.\";s:6:\"title2\";s:16:\"Safety Materials\";s:5:\"icon2\";s:20:\"flaticon-car-service\";s:5:\"desc2\";s:60:\"consectetur adipisicing eiusmod tempor incididunt ut labore.\";s:6:\"title3\";s:17:\"Mordern Equipment\";s:5:\"icon3\";s:17:\"flaticon-car-wash\";s:5:\"desc3\";s:60:\"consectetur adipisicing eiusmod tempor incididunt ut labore.\";s:6:\"title4\";s:18:\"Extensive Cleaning\";s:5:\"icon4\";s:17:\"flaticon-car-wash\";s:5:\"desc4\";s:60:\"consectetur adipisicing eiusmod tempor incididunt ut labore.\";}'),
(22, 'news', 'a:4:{s:5:\"title\";s:15:\"Our Recent News\";s:9:\"sec_title\";s:15:\"Our Latest Blog\";s:4:\"text\";s:9:\"Read More\";s:4:\"link\";s:4:\"blog\";}'),
(23, 'washclub', 'a:12:{s:6:\"title1\";s:26:\"ULTIMATE ISHINE UNLIMITED:\";s:5:\"desc1\";s:331:\"Hands down our best car wash value. Includes our signature Soft Touch Wash process, Presoak Coating, Supersuds Wall of Foam, Triple Foam Polish, Wheel Cleaner, Wheel Brite Plus, Carnauba Hot Wax bath, Clearcoat Protectant, Rain Shield, Spot Free Rinse, Power Air Dry and Tire Shine. It’s the ultimate express car wash experience.\";s:6:\"image1\";s:24:\"image_16259271059885.jpg\";s:6:\"title2\";s:26:\"PROTECT & SHINE UNLIMITED:\";s:5:\"desc2\";s:331:\"Hands down our best car wash value. Includes our signature Soft Touch Wash process, Presoak Coating, Supersuds Wall of Foam, Triple Foam Polish, Wheel Cleaner, Wheel Brite Plus, Carnauba Hot Wax bath, Clearcoat Protectant, Rain Shield, Spot Free Rinse, Power Air Dry and Tire Shine. It’s the ultimate express car wash experience.\";s:6:\"image2\";s:24:\"image_16259271055512.jpg\";s:6:\"title3\";s:20:\"SUPERSUDS UNLIMITED:\";s:5:\"desc3\";s:331:\"Hands down our best car wash value. Includes our signature Soft Touch Wash process, Presoak Coating, Supersuds Wall of Foam, Triple Foam Polish, Wheel Cleaner, Wheel Brite Plus, Carnauba Hot Wax bath, Clearcoat Protectant, Rain Shield, Spot Free Rinse, Power Air Dry and Tire Shine. It’s the ultimate express car wash experience.\";s:6:\"image3\";s:24:\"image_16259271051372.jpg\";s:6:\"title4\";s:22:\"CLEAN TOUCH UNLIMITED:\";s:5:\"desc4\";s:331:\"Hands down our best car wash value. Includes our signature Soft Touch Wash process, Presoak Coating, Supersuds Wall of Foam, Triple Foam Polish, Wheel Cleaner, Wheel Brite Plus, Carnauba Hot Wax bath, Clearcoat Protectant, Rain Shield, Spot Free Rinse, Power Air Dry and Tire Shine. It’s the ultimate express car wash experience.\";s:6:\"image4\";s:24:\"image_16259271051321.jpg\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitadmins`
--

CREATE TABLE `tbl_visitadmins` (
  `visit_id` int(11) NOT NULL,
  `visit_admin_id` int(11) NOT NULL,
  `visit_ip_address` varchar(15) NOT NULL,
  `visit_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_visitadmins`
--

INSERT INTO `tbl_visitadmins` (`visit_id`, `visit_admin_id`, `visit_ip_address`, `visit_date`) VALUES
(1, 1, '::1', '2021-06-20 07:24:33'),
(2, 1, '::1', '2021-06-20 07:54:13'),
(3, 1, '::1', '2021-06-24 11:50:19'),
(4, 1, '::1', '2021-06-24 11:50:32'),
(5, 1, '::1', '2021-06-24 11:50:53'),
(6, 1, '::1', '2021-06-24 11:51:29'),
(7, 1, '::1', '2021-06-24 11:51:38'),
(8, 1, '::1', '2021-06-24 11:51:47'),
(9, 1, '::1', '2021-06-24 11:51:57'),
(10, 1, '::1', '2021-06-24 11:52:13'),
(11, 1, '::1', '2021-07-15 05:47:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_backup`
--
ALTER TABLE `tbl_backup`
  ADD PRIMARY KEY (`backup_id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_countvisit`
--
ALTER TABLE `tbl_countvisit`
  ADD PRIMARY KEY (`visit_count_id`);

--
-- Indexes for table `tbl_emails`
--
ALTER TABLE `tbl_emails`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_gallery_photos`
--
ALTER TABLE `tbl_gallery_photos`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_gallery_videos`
--
ALTER TABLE `tbl_gallery_videos`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `tbl_listings`
--
ALTER TABLE `tbl_listings`
  ADD PRIMARY KEY (`list_id`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`loc_id`);

--
-- Indexes for table `tbl_module`
--
ALTER TABLE `tbl_module`
  ADD PRIMARY KEY (`mod_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_newscategories`
--
ALTER TABLE `tbl_newscategories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_news_categories`
--
ALTER TABLE `tbl_news_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `News Foreign Key` (`news_id`),
  ADD KEY `News Category Foreign Key` (`cat_id`);

--
-- Indexes for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tbl_partners`
--
ALTER TABLE `tbl_partners`
  ADD PRIMARY KEY (`part_id`);

--
-- Indexes for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  ADD PRIMARY KEY (`portfolio_id`);

--
-- Indexes for table `tbl_portfolio_categories`
--
ALTER TABLE `tbl_portfolio_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Portfolio Foreign Key` (`portfolio_id`),
  ADD KEY `Category Foreign Key` (`cat_id`);

--
-- Indexes for table `tbl_pricing`
--
ALTER TABLE `tbl_pricing`
  ADD PRIMARY KEY (`pri_id`);

--
-- Indexes for table `tbl_pricing_type`
--
ALTER TABLE `tbl_pricing_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Foreign Key To Pricing Table` (`pri_id`),
  ADD KEY `Type Foreign Key` (`type_id`);

--
-- Indexes for table `tbl_pri_types`
--
ALTER TABLE `tbl_pri_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `tbl_service_technologies`
--
ALTER TABLE `tbl_service_technologies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `RELATION WITH SERVICES` (`service_id`),
  ADD KEY `RELATION WITH SERVICE TECHNOLOGIES` (`tec_id`);

--
-- Indexes for table `tbl_siteadmin`
--
ALTER TABLE `tbl_siteadmin`
  ADD PRIMARY KEY (`site_id`),
  ADD UNIQUE KEY `login` (`site_login`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `tbl_team`
--
ALTER TABLE `tbl_team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `tbl_technologies`
--
ALTER TABLE `tbl_technologies`
  ADD PRIMARY KEY (`tec_id`);

--
-- Indexes for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `tbl_texts`
--
ALTER TABLE `tbl_texts`
  ADD PRIMARY KEY (`txt_id`);

--
-- Indexes for table `tbl_visitadmins`
--
ALTER TABLE `tbl_visitadmins`
  ADD PRIMARY KEY (`visit_id`),
  ADD KEY `Foreign Key To Site Admin` (`visit_admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_backup`
--
ALTER TABLE `tbl_backup`
  MODIFY `backup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_countvisit`
--
ALTER TABLE `tbl_countvisit`
  MODIFY `visit_count_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=985;

--
-- AUTO_INCREMENT for table `tbl_emails`
--
ALTER TABLE `tbl_emails`
  MODIFY `email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_gallery_photos`
--
ALTER TABLE `tbl_gallery_photos`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_gallery_videos`
--
ALTER TABLE `tbl_gallery_videos`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_listings`
--
ALTER TABLE `tbl_listings`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `loc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_module`
--
ALTER TABLE `tbl_module`
  MODIFY `mod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_newscategories`
--
ALTER TABLE `tbl_newscategories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_news_categories`
--
ALTER TABLE `tbl_news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_partners`
--
ALTER TABLE `tbl_partners`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_portfolio`
--
ALTER TABLE `tbl_portfolio`
  MODIFY `portfolio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_portfolio_categories`
--
ALTER TABLE `tbl_portfolio_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbl_pricing`
--
ALTER TABLE `tbl_pricing`
  MODIFY `pri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_pricing_type`
--
ALTER TABLE `tbl_pricing_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_pri_types`
--
ALTER TABLE `tbl_pri_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_service_technologies`
--
ALTER TABLE `tbl_service_technologies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `tbl_siteadmin`
--
ALTER TABLE `tbl_siteadmin`
  MODIFY `site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_team`
--
ALTER TABLE `tbl_team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_technologies`
--
ALTER TABLE `tbl_technologies`
  MODIFY `tec_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_texts`
--
ALTER TABLE `tbl_texts`
  MODIFY `txt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_visitadmins`
--
ALTER TABLE `tbl_visitadmins`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_news_categories`
--
ALTER TABLE `tbl_news_categories`
  ADD CONSTRAINT `News Category Foreign Key` FOREIGN KEY (`cat_id`) REFERENCES `tbl_newscategories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `News Foreign Key` FOREIGN KEY (`news_id`) REFERENCES `tbl_news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_portfolio_categories`
--
ALTER TABLE `tbl_portfolio_categories`
  ADD CONSTRAINT `Category Foreign Key` FOREIGN KEY (`cat_id`) REFERENCES `tbl_categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Portfolio Foreign Key` FOREIGN KEY (`portfolio_id`) REFERENCES `tbl_portfolio` (`portfolio_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pricing_type`
--
ALTER TABLE `tbl_pricing_type`
  ADD CONSTRAINT `Foreign Key To Pricing Table` FOREIGN KEY (`pri_id`) REFERENCES `tbl_pricing` (`pri_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Type Foreign Key` FOREIGN KEY (`type_id`) REFERENCES `tbl_pri_types` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_service_technologies`
--
ALTER TABLE `tbl_service_technologies`
  ADD CONSTRAINT `RELATION WITH SERVICE TECHNOLOGIES` FOREIGN KEY (`tec_id`) REFERENCES `tbl_technologies` (`tec_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RELATION WITH SERVICES` FOREIGN KEY (`service_id`) REFERENCES `tbl_services` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_visitadmins`
--
ALTER TABLE `tbl_visitadmins`
  ADD CONSTRAINT `Foreign Key To Site Admin` FOREIGN KEY (`visit_admin_id`) REFERENCES `tbl_siteadmin` (`site_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
