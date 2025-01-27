CREATE DATABASE IF NOT EXISTS `vrpex` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `vrpex`;

CREATE TABLE IF NOT EXISTS `vrp_mdt` (
  `slot` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `officer` varchar(255) NOT NULL,
  PRIMARY KEY (`slot`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

