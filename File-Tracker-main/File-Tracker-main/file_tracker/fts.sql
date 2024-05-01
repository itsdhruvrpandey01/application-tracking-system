

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `fts`
--
CREATE DATABASE IF NOT EXISTS `fts`;
USE `fts`;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `hardid` varchar(500) NOT NULL,
  `filename` varchar(500) NOT NULL,
  `attachment` LONGBLOB DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--



-- --------------------------------------------------------

--
-- Table structure for table `movements`
--

DROP TABLE IF EXISTS `movements`;
CREATE TABLE IF NOT EXISTS `movements` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `from_id` int(255) DEFAULT NULL,
  `file_id` int(255) DEFAULT NULL,
  `to_id` int(255) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

ALTER TABLE files
ADD attachment_type VARCHAR(255) AFTER attachment;


--


-- Dumping data for table `movements`
--



-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--



-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `usertype` int(11),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;


INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `usertype`) VALUES ('1', 'admin', 'admin@gmail.com','admin' ,'1', '3');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `usertype`) VALUES ('2', 'Principal', 'principal@gmail.com','1234' ,'0', '1');



ALTER TABLE movements
ADD count VARCHAR(255) AFTER updated_at;
--
-- Dumping data for table `users`
--
CREATE TABLE usertype (
  `id` INT PRIMARY KEY,
  `usertype` VARCHAR(255)
);

INSERT INTO `usertype`(`id`, `usertype`) VALUES ('1','Principal');
INSERT INTO `usertype`(`id`, `usertype`) VALUES ('2','Staff');
INSERT INTO `usertype`(`id`, `usertype`) VALUES ('3','Admin');
INSERT INTO `usertype`(`id`, `usertype`) VALUES ('4','Student');


















