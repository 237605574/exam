/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : exam

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-05-21 00:31:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for id_generator
-- ----------------------------
DROP TABLE IF EXISTS `id_generator`;
CREATE TABLE `id_generator` (
  `name` varchar(255) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  `current_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of id_generator
-- ----------------------------
INSERT INTO `id_generator` VALUES ('user', '1000', '59000');

-- ----------------------------
-- Table structure for major_info
-- ----------------------------
DROP TABLE IF EXISTS `major_info`;
CREATE TABLE `major_info` (
  `school_id` int(11) NOT NULL,
  `major_id` bigint(20) NOT NULL,
  `major_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_rank` int(11) DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 NOT NULL,
  `student_type` int(11) NOT NULL COMMENT '文理科',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `max_rank` int(11) DEFAULT NULL,
  `high_rank` int(11) DEFAULT NULL,
  `middle_rank` int(11) DEFAULT NULL,
  `low_rank` int(11) DEFAULT NULL,
  `max_score` int(11) DEFAULT NULL,
  `high_score` int(11) DEFAULT NULL,
  `middle_score` int(11) DEFAULT NULL,
  `low_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`school_id`,`major_id`,`province`,`student_type`),
  UNIQUE KEY `唯一索引` (`school_id`,`major_name`,`province`,`student_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of major_info
-- ----------------------------
INSERT INTO `major_info` VALUES ('1', '1', '计算机', '1', '广东', '0', '广州', '6000', '5500', '5000', '4000', '600', '610', '620', '630');
INSERT INTO `major_info` VALUES ('1', '2', '传播与设计', '1', '广东', '0', '广州', '6500', '6000', '5500', '5000', '550', '600', '610', '620');
INSERT INTO `major_info` VALUES ('2', '3', '传播与设计', '3', '广东', '0', '广州', '6000', '5500', '5000', '4000', '600', '610', '620', '630');
INSERT INTO `major_info` VALUES ('3', '4', '计算机', '2', '广东', '0', '广州', '6000', '5500', '5000', '4000', '600', '610', '620', '630');

-- ----------------------------
-- Table structure for major_score_rank
-- ----------------------------
DROP TABLE IF EXISTS `major_score_rank`;
CREATE TABLE `major_score_rank` (
  `major_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `min_rank` int(11) DEFAULT NULL,
  `max_rank` int(11) DEFAULT NULL,
  `avg_rank` int(11) DEFAULT NULL,
  `province` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `student_type` tinyint(255) DEFAULT NULL COMMENT '文理科。0：文科，1：理科',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min_score` int(11) DEFAULT NULL,
  `max_score` int(11) DEFAULT NULL,
  `avg_score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of major_score_rank
-- ----------------------------
INSERT INTO `major_score_rank` VALUES ('1', '2017', '6000', '5000', '5500', '广东', '0', '1', '500', '600', '550');
INSERT INTO `major_score_rank` VALUES ('1', '2016', '6001', '5001', '5002', '广东', '0', '2', '500', '600', '550');
INSERT INTO `major_score_rank` VALUES ('2', '2017', '6000', '5000', '5500', '广东', '0', '3', '500', '600', '550');
INSERT INTO `major_score_rank` VALUES ('2', '2016', '6001', '5001', '5002', '广东', '0', '4', '500', '600', '550');
INSERT INTO `major_score_rank` VALUES ('3', '2018', '6000', '5000', '5500', '广东', '0', '5', '500', '600', '550');
INSERT INTO `major_score_rank` VALUES ('3', '2015', '6001', '5001', '5002', '广东', '0', '6', '500', '600', '550');

-- ----------------------------
-- Table structure for school_info
-- ----------------------------
DROP TABLE IF EXISTS `school_info`;
CREATE TABLE `school_info` (
  `school_id` bigint(20) NOT NULL,
  `school_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_rank` int(11) DEFAULT NULL,
  `school_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `school_type` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '如理工类等等',
  `school_pici` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '学校批次，本科一批，二批',
  `school_province` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of school_info
-- ----------------------------
INSERT INTO `school_info` VALUES ('1', '中山大学', '1', '广东', '文理类', '重点985', '广东');
INSERT INTO `school_info` VALUES ('2', '华工', '1', '广东', '工科', '重点985', '北京');
INSERT INTO `school_info` VALUES ('3', '广大', '1', '广东', '文理类', '垃圾学校', '安徽');

-- ----------------------------
-- Table structure for school_major
-- ----------------------------
DROP TABLE IF EXISTS `school_major`;
CREATE TABLE `school_major` (
  `major_id` int(11) NOT NULL AUTO_INCREMENT,
  `school_id` int(11) DEFAULT NULL,
  `major_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`major_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of school_major
-- ----------------------------

-- ----------------------------
-- Table structure for school_score_rank
-- ----------------------------
DROP TABLE IF EXISTS `school_score_rank`;
CREATE TABLE `school_score_rank` (
  `school_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `min_score` int(11) DEFAULT NULL,
  `max_score` int(11) DEFAULT NULL,
  `avg_score` int(11) DEFAULT NULL,
  `province` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `student_type` tinyint(255) DEFAULT NULL COMMENT '文理科。0：文科，1：理科',
  `min_rank` int(11) DEFAULT NULL,
  `max_rank` int(11) DEFAULT NULL,
  `avg_rank` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of school_score_rank
-- ----------------------------
INSERT INTO `school_score_rank` VALUES ('1', '2017', '500', '600', '550', '广东', '0', '6000', '5000', '5500', '1');
INSERT INTO `school_score_rank` VALUES ('1', '2016', '500', '600', '550', '广东', '0', '6001', '5001', '5002', '2');
INSERT INTO `school_score_rank` VALUES ('2', '2017', '500', '600', '550', '广东', '0', '6000', '5000', '5500', '3');
INSERT INTO `school_score_rank` VALUES ('2', '2016', '500', '600', '550', '广东', '0', '6001', '5001', '5002', '4');
INSERT INTO `school_score_rank` VALUES ('3', '2018', '500', '600', '550', '广东', '0', '6000', '5000', '5500', '5');
INSERT INTO `school_score_rank` VALUES ('3', '2015', '500', '600', '550', '广东', '0', '6001', '5001', '5002', '6');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `authority` smallint(6) DEFAULT '0',
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `名字唯一` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123', '123456', '0', '1');
INSERT INTO `user` VALUES ('lvmy', '123456', '0', '2');
SET FOREIGN_KEY_CHECKS=1;
