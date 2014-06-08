/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : crsp

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2014-05-25 22:20:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(45) NOT NULL,
  `user_pwd` varchar(45) NOT NULL,
  `type` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '管理员1', '123456', '1');
INSERT INTO `admin` VALUES ('2', '管理员2', '123456', '1');
INSERT INTO `admin` VALUES ('3', '管理员3', '123456', '1');
INSERT INTO `admin` VALUES ('4', '管理员4', '123456', '1');
INSERT INTO `admin` VALUES ('5', '管理员5', '123456', '1');
INSERT INTO `admin` VALUES ('6', '管理员6', '123456', '1');
INSERT INTO `admin` VALUES ('7', '管理员7', '123456', '1');
INSERT INTO `admin` VALUES ('8', '管理员8', '123456', '1');
INSERT INTO `admin` VALUES ('9', '管理员9', '123456', '1');
INSERT INTO `admin` VALUES ('10', '管理员10', '123456', '1');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL auto_increment,
  `content` varchar(255) NOT NULL,
  `date` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_comment_resource1` (`resource_id`),
  KEY `fk_comment_user1` (`user_id`),
  CONSTRAINT `fk_comment_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_comment_resource1` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '哎呦！不错哦1', '2014-01-01', '1', '1');
INSERT INTO `comment` VALUES ('2', '哎呦！不错哦2', '2014-01-02', '2', '1');
INSERT INTO `comment` VALUES ('3', '哎呦！不错哦3', '2014-01-03', '3', '1');
INSERT INTO `comment` VALUES ('4', '哎呦！不错哦4', '2014-01-04', '4', '1');
INSERT INTO `comment` VALUES ('5', '哎呦！不错哦5', '2014-01-05', '5', '1');
INSERT INTO `comment` VALUES ('6', '哎呦！不错哦6', '2014-01-06', '6', '1');
INSERT INTO `comment` VALUES ('7', '哎呦！不错哦7', '2014-01-07', '7', '1');
INSERT INTO `comment` VALUES ('8', '哎呦！不错哦8', '2014-01-08', '8', '1');
INSERT INTO `comment` VALUES ('9', '哎呦！不错哦9', '2014-01-09', '9', '1');
INSERT INTO `comment` VALUES ('10', '哎呦！不错哦10', '2014-01-10', '10', '1');
INSERT INTO `comment` VALUES ('11', '哎呦！不错哦11', '2014-01-11', '1', '2');
INSERT INTO `comment` VALUES ('12', '哎呦！不错哦12', '2014-01-12', '2', '2');
INSERT INTO `comment` VALUES ('13', '哎呦！不错哦13', '2014-01-13', '3', '2');
INSERT INTO `comment` VALUES ('14', '哎呦！不错哦14', '2014-01-14', '4', '2');
INSERT INTO `comment` VALUES ('15', '哎呦！不错哦15', '2014-01-15', '5', '2');
INSERT INTO `comment` VALUES ('16', '哎呦！不错哦16', '2014-01-16', '6', '2');
INSERT INTO `comment` VALUES ('17', '哎呦！不错哦17', '2014-01-17', '7', '2');
INSERT INTO `comment` VALUES ('18', '哎呦！不错哦18', '2014-01-18', '8', '2');
INSERT INTO `comment` VALUES ('19', '哎呦！不错哦19', '2014-01-19', '9', '2');
INSERT INTO `comment` VALUES ('20', '哎呦！不错哦20', '2014-01-20', '10', '2');
INSERT INTO `comment` VALUES ('21', '哎呦！不错哦21', '2014-01-21', '1', '3');
INSERT INTO `comment` VALUES ('22', '哎呦！不错哦22', '2014-01-22', '2', '3');
INSERT INTO `comment` VALUES ('23', '哎呦！不错哦23', '2014-01-23', '3', '3');
INSERT INTO `comment` VALUES ('24', '哎呦！不错哦24', '2014-01-24', '4', '3');
INSERT INTO `comment` VALUES ('25', '哎呦！不错哦25', '2014-01-25', '5', '3');
INSERT INTO `comment` VALUES ('26', '哎呦！不错哦26', '2014-01-26', '6', '3');
INSERT INTO `comment` VALUES ('27', '哎呦！不错哦27', '2014-01-27', '7', '3');
INSERT INTO `comment` VALUES ('28', '哎呦！不错哦28', '2014-01-28', '8', '3');
INSERT INTO `comment` VALUES ('29', '哎呦！不错哦29', '2014-01-29', '9', '3');
INSERT INTO `comment` VALUES ('30', '哎呦！不错哦30', '2014-01-30', '10', '3');
INSERT INTO `comment` VALUES ('31', '哎呦！不错哦31', '2014-03-01', '1', '4');
INSERT INTO `comment` VALUES ('32', '哎呦！不错哦32', '2014-03-02', '2', '4');
INSERT INTO `comment` VALUES ('33', '哎呦！不错哦33', '2014-03-03', '3', '4');
INSERT INTO `comment` VALUES ('34', '哎呦！不错哦34', '2014-03-04', '4', '4');
INSERT INTO `comment` VALUES ('35', '哎呦！不错哦35', '2014-03-05', '5', '4');
INSERT INTO `comment` VALUES ('36', '哎呦！不错哦36', '2014-03-06', '6', '4');
INSERT INTO `comment` VALUES ('37', '哎呦！不错哦37', '2014-03-07', '7', '4');
INSERT INTO `comment` VALUES ('38', '哎呦！不错哦38', '2014-03-08', '8', '4');
INSERT INTO `comment` VALUES ('39', '哎呦！不错哦39', '2014-03-09', '9', '4');
INSERT INTO `comment` VALUES ('40', '哎呦！不错哦40', '2014-03-10', '10', '4');
INSERT INTO `comment` VALUES ('41', '哎呦！不错哦41', '2014-03-11', '1', '5');
INSERT INTO `comment` VALUES ('42', '哎呦！不错哦42', '2014-03-12', '2', '5');
INSERT INTO `comment` VALUES ('43', '哎呦！不错哦43', '2014-03-13', '3', '5');
INSERT INTO `comment` VALUES ('44', '哎呦！不错哦44', '2014-03-14', '4', '5');
INSERT INTO `comment` VALUES ('45', '哎呦！不错哦45', '2014-03-15', '5', '5');
INSERT INTO `comment` VALUES ('46', '哎呦！不错哦46', '2014-03-16', '6', '5');
INSERT INTO `comment` VALUES ('47', '哎呦！不错哦47', '2014-03-17', '7', '5');
INSERT INTO `comment` VALUES ('48', '哎呦！不错哦48', '2014-03-18', '8', '5');
INSERT INTO `comment` VALUES ('49', '哎呦！不错哦49', '2014-03-19', '9', '5');
INSERT INTO `comment` VALUES ('50', '哎呦！不错哦50', '2014-03-20', '10', '5');
INSERT INTO `comment` VALUES ('51', '哎呦！不错哦51', '2014-03-21', '1', '6');
INSERT INTO `comment` VALUES ('52', '哎呦！不错哦52', '2014-03-22', '2', '6');
INSERT INTO `comment` VALUES ('53', '哎呦！不错哦53', '2014-03-23', '3', '6');
INSERT INTO `comment` VALUES ('54', '哎呦！不错哦54', '2014-03-24', '4', '6');
INSERT INTO `comment` VALUES ('55', '哎呦！不错哦55', '2014-03-25', '5', '6');
INSERT INTO `comment` VALUES ('56', '哎呦！不错哦56', '2014-03-26', '6', '6');
INSERT INTO `comment` VALUES ('57', '哎呦！不错哦57', '2014-03-27', '7', '6');
INSERT INTO `comment` VALUES ('58', '哎呦！不错哦58', '2014-03-28', '8', '6');
INSERT INTO `comment` VALUES ('59', '哎呦！不错哦59', '2014-03-29', '9', '6');
INSERT INTO `comment` VALUES ('60', '哎呦！不错哦60', '2014-03-30', '10', '6');
INSERT INTO `comment` VALUES ('61', '哎呦！不错哦61', '2014-04-01', '1', '7');
INSERT INTO `comment` VALUES ('62', '哎呦！不错哦62', '2014-04-02', '2', '7');
INSERT INTO `comment` VALUES ('63', '哎呦！不错哦63', '2014-04-03', '3', '7');
INSERT INTO `comment` VALUES ('64', '哎呦！不错哦64', '2014-04-04', '4', '7');
INSERT INTO `comment` VALUES ('65', '哎呦！不错哦65', '2014-04-05', '5', '7');
INSERT INTO `comment` VALUES ('66', '哎呦！不错哦66', '2014-04-06', '6', '7');
INSERT INTO `comment` VALUES ('67', '哎呦！不错哦67', '2014-04-07', '7', '7');
INSERT INTO `comment` VALUES ('68', '哎呦！不错哦68', '2014-04-08', '8', '7');
INSERT INTO `comment` VALUES ('69', '哎呦！不错哦69', '2014-04-09', '9', '7');
INSERT INTO `comment` VALUES ('70', '哎呦！不错哦70', '2014-04-10', '10', '7');
INSERT INTO `comment` VALUES ('71', '哎呦！不错哦71', '2014-04-11', '1', '8');
INSERT INTO `comment` VALUES ('72', '哎呦！不错哦72', '2014-04-12', '2', '8');
INSERT INTO `comment` VALUES ('73', '哎呦！不错哦73', '2014-04-13', '3', '8');
INSERT INTO `comment` VALUES ('74', '哎呦！不错哦74', '2014-04-14', '4', '8');
INSERT INTO `comment` VALUES ('75', '哎呦！不错哦75', '2014-04-15', '5', '8');
INSERT INTO `comment` VALUES ('76', '哎呦！不错哦76', '2014-04-16', '6', '8');
INSERT INTO `comment` VALUES ('77', '哎呦！不错哦77', '2014-04-17', '7', '8');
INSERT INTO `comment` VALUES ('78', '哎呦！不错哦78', '2014-04-18', '8', '8');
INSERT INTO `comment` VALUES ('79', '哎呦！不错哦79', '2014-04-19', '9', '8');
INSERT INTO `comment` VALUES ('80', '哎呦！不错哦80', '2014-04-20', '10', '8');
INSERT INTO `comment` VALUES ('81', '哎呦！不错哦81', '2014-04-21', '1', '9');
INSERT INTO `comment` VALUES ('82', '哎呦！不错哦82', '2014-04-22', '2', '9');
INSERT INTO `comment` VALUES ('83', '哎呦！不错哦83', '2014-04-23', '3', '9');
INSERT INTO `comment` VALUES ('84', '哎呦！不错哦84', '2014-04-24', '4', '9');
INSERT INTO `comment` VALUES ('85', '哎呦！不错哦85', '2014-04-25', '5', '9');
INSERT INTO `comment` VALUES ('86', '哎呦！不错哦86', '2014-04-26', '6', '9');
INSERT INTO `comment` VALUES ('87', '哎呦！不错哦87', '2014-04-27', '7', '9');
INSERT INTO `comment` VALUES ('88', '哎呦！不错哦88', '2014-04-28', '8', '9');
INSERT INTO `comment` VALUES ('89', '哎呦！不错哦89', '2014-04-29', '9', '9');
INSERT INTO `comment` VALUES ('90', '哎呦！不错哦90', '2014-04-30', '10', '9');
INSERT INTO `comment` VALUES ('91', '哎呦！不错哦91', '2014-05-01', '1', '10');
INSERT INTO `comment` VALUES ('92', '哎呦！不错哦92', '2014-05-02', '2', '10');
INSERT INTO `comment` VALUES ('93', '哎呦！不错哦93', '2014-05-03', '3', '10');
INSERT INTO `comment` VALUES ('94', '哎呦！不错哦94', '2014-05-04', '4', '10');
INSERT INTO `comment` VALUES ('95', '哎呦！不错哦95', '2014-05-05', '5', '10');
INSERT INTO `comment` VALUES ('96', '哎呦！不错哦96', '2014-05-06', '6', '10');
INSERT INTO `comment` VALUES ('97', '哎呦！不错哦97', '2014-05-07', '7', '10');
INSERT INTO `comment` VALUES ('98', '哎呦！不错哦98', '2014-05-08', '8', '10');
INSERT INTO `comment` VALUES ('99', '哎呦！不错哦99', '2014-05-09', '9', '10');
INSERT INTO `comment` VALUES ('100', '哎呦！不错哦100', '2014-05-10', '10', '10');

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) default NULL,
  `avatar` varchar(100) default NULL,
  `resource_count` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '经济管理学院', '', '', '1');
INSERT INTO `department` VALUES ('2', '政法学院', '', '', '2');
INSERT INTO `department` VALUES ('3', '文学院', '', '', '3');
INSERT INTO `department` VALUES ('4', '外国语学院', '', '', '4');
INSERT INTO `department` VALUES ('5', '数学与计算科学学院', '', '', '5');
INSERT INTO `department` VALUES ('6', '应用物理与材料学院', '', '', '6');
INSERT INTO `department` VALUES ('7', '信息工程学院', '', '', '7');
INSERT INTO `department` VALUES ('8', '机电工程学院', '', '', '8');
INSERT INTO `department` VALUES ('9', '土木建筑学院', '', '', '9');
INSERT INTO `department` VALUES ('10', '化学与环境工程学院', '', '', '10');
INSERT INTO `department` VALUES ('11', '纺织服装学院', '', '', '11');
INSERT INTO `department` VALUES ('12', '艺术设计系', '', '', '12');
INSERT INTO `department` VALUES ('13', '思想政治理论教学部', '', '', '13');
INSERT INTO `department` VALUES ('14', '体育部 ', '', '', '14');

-- ----------------------------
-- Table structure for `feature`
-- ----------------------------
DROP TABLE IF EXISTS `feature`;
CREATE TABLE `feature` (
  `id` int(11) NOT NULL auto_increment,
  `path` varchar(100) NOT NULL,
  `code` varchar(45) NOT NULL,
  `amount` int(11) NOT NULL default '1',
  `size` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feature
-- ----------------------------
INSERT INTO `feature` VALUES ('1', '', '1', '1', '1');
INSERT INTO `feature` VALUES ('2', '', '', '1', '1');
INSERT INTO `feature` VALUES ('3', '', '', '1', '1');
INSERT INTO `feature` VALUES ('4', '', '', '1', '1');
INSERT INTO `feature` VALUES ('5', '', '', '1', '1');
INSERT INTO `feature` VALUES ('6', '', '', '1', '1');
INSERT INTO `feature` VALUES ('7', '', '', '1', '1');
INSERT INTO `feature` VALUES ('8', '', '', '1', '1');
INSERT INTO `feature` VALUES ('9', '', '', '1', '1');
INSERT INTO `feature` VALUES ('10', '', '', '1', '1');

-- ----------------------------
-- Table structure for `province`
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '直辖市', '北京');
INSERT INTO `province` VALUES ('2', '直辖市', '上海');
INSERT INTO `province` VALUES ('3', '直辖市', '重庆');
INSERT INTO `province` VALUES ('4', '直辖市', '天津');
INSERT INTO `province` VALUES ('5', '省份', '河北');
INSERT INTO `province` VALUES ('6', '省份', '山西');
INSERT INTO `province` VALUES ('7', '省份', '辽宁');
INSERT INTO `province` VALUES ('8', '省份', '吉林');
INSERT INTO `province` VALUES ('9', '省份', '黑龙江');
INSERT INTO `province` VALUES ('10', '省份', '江苏');
INSERT INTO `province` VALUES ('11', '省份', '浙江');
INSERT INTO `province` VALUES ('12', '省份', '安徽');
INSERT INTO `province` VALUES ('13', '省份', '福建');
INSERT INTO `province` VALUES ('14', '省份', '江西');
INSERT INTO `province` VALUES ('15', '省份', '山东');
INSERT INTO `province` VALUES ('16', '省份', '河南');
INSERT INTO `province` VALUES ('17', '省份', '湖北');
INSERT INTO `province` VALUES ('18', '省份', '湖南');
INSERT INTO `province` VALUES ('19', '省份', '广东');
INSERT INTO `province` VALUES ('20', '省份', '海南');
INSERT INTO `province` VALUES ('21', '省份', '四川');
INSERT INTO `province` VALUES ('22', '省份', '贵州');
INSERT INTO `province` VALUES ('23', '省份', '云南');
INSERT INTO `province` VALUES ('24', '省份', '陕西');
INSERT INTO `province` VALUES ('25', '省份', '甘肃');
INSERT INTO `province` VALUES ('26', '省份', '青海');
INSERT INTO `province` VALUES ('27', '省份', '台湾');
INSERT INTO `province` VALUES ('28', '自治区', '内蒙古');
INSERT INTO `province` VALUES ('29', '自治区', '广西');
INSERT INTO `province` VALUES ('30', '自治区', '西藏');
INSERT INTO `province` VALUES ('31', '自治区', '宁夏');
INSERT INTO `province` VALUES ('32', '自治区', '新疆');
INSERT INTO `province` VALUES ('33', '特别行政区', '香港');
INSERT INTO `province` VALUES ('34', '特别行政区', '澳门');

-- ----------------------------
-- Table structure for `record`
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `id` int(11) NOT NULL auto_increment,
  `resource_id` int(11) NOT NULL,
  `upload_user_id` int(11) NOT NULL,
  `download_user_id` int(11) NOT NULL,
  `delta` int(11) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_record_resource1_idx` (`resource_id`),
  KEY `fk_record_user1_idx` (`upload_user_id`),
  KEY `fk_record_user2_idx` (`download_user_id`),
  CONSTRAINT `fk_record_resource1` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_record_user1` FOREIGN KEY (`upload_user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_record_user2` FOREIGN KEY (`download_user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('1', '1', '1', '1', '1', '\"2014-01-01\"');
INSERT INTO `record` VALUES ('2', '1', '1', '2', '2', '\"2014-01-02\"');
INSERT INTO `record` VALUES ('3', '1', '1', '3', '3', '\"2014-01-03\"');
INSERT INTO `record` VALUES ('4', '1', '1', '4', '4', '\"2014-01-04\"');
INSERT INTO `record` VALUES ('5', '1', '1', '5', '5', '\"2014-01-05\"');
INSERT INTO `record` VALUES ('6', '1', '1', '6', '6', '\"2014-01-06\"');
INSERT INTO `record` VALUES ('7', '1', '1', '7', '7', '\"2014-01-07\"');
INSERT INTO `record` VALUES ('8', '1', '1', '8', '8', '\"2014-01-08\"');
INSERT INTO `record` VALUES ('9', '1', '1', '9', '9', '\"2014-01-09\"');
INSERT INTO `record` VALUES ('10', '1', '1', '10', '10', '\"2014-01-10\"');
INSERT INTO `record` VALUES ('11', '2', '2', '1', '11', '\"2014-01-11\"');
INSERT INTO `record` VALUES ('12', '2', '2', '2', '12', '\"2014-01-12\"');
INSERT INTO `record` VALUES ('13', '2', '2', '3', '13', '\"2014-01-13\"');
INSERT INTO `record` VALUES ('14', '2', '2', '4', '14', '\"2014-01-14\"');
INSERT INTO `record` VALUES ('15', '2', '2', '5', '15', '\"2014-01-15\"');
INSERT INTO `record` VALUES ('16', '2', '2', '6', '16', '\"2014-01-16\"');
INSERT INTO `record` VALUES ('17', '2', '2', '7', '17', '\"2014-01-17\"');
INSERT INTO `record` VALUES ('18', '2', '2', '8', '18', '\"2014-01-18\"');
INSERT INTO `record` VALUES ('19', '2', '2', '9', '19', '\"2014-01-19\"');
INSERT INTO `record` VALUES ('20', '2', '2', '10', '20', '\"2014-01-20\"');
INSERT INTO `record` VALUES ('21', '3', '3', '1', '21', '\"2014-01-21\"');
INSERT INTO `record` VALUES ('22', '3', '3', '2', '22', '\"2014-01-22\"');
INSERT INTO `record` VALUES ('23', '3', '3', '3', '23', '\"2014-01-23\"');
INSERT INTO `record` VALUES ('24', '3', '3', '4', '24', '\"2014-01-24\"');
INSERT INTO `record` VALUES ('25', '3', '3', '5', '25', '\"2014-01-25\"');
INSERT INTO `record` VALUES ('26', '3', '3', '6', '26', '\"2014-01-26\"');
INSERT INTO `record` VALUES ('27', '3', '3', '7', '27', '\"2014-01-27\"');
INSERT INTO `record` VALUES ('28', '3', '3', '8', '28', '\"2014-01-28\"');
INSERT INTO `record` VALUES ('29', '3', '3', '9', '29', '\"2014-01-29\"');
INSERT INTO `record` VALUES ('30', '3', '3', '10', '30', '\"2014-01-30\"');
INSERT INTO `record` VALUES ('31', '4', '4', '1', '31', '\"2014-01-31\"');
INSERT INTO `record` VALUES ('32', '4', '4', '2', '32', '\"2014-02-01\"');
INSERT INTO `record` VALUES ('33', '4', '4', '3', '33', '\"2014-02-02\"');
INSERT INTO `record` VALUES ('34', '4', '4', '4', '34', '\"2014-02-03\"');
INSERT INTO `record` VALUES ('35', '4', '4', '5', '35', '\"2014-02-04\"');
INSERT INTO `record` VALUES ('36', '4', '4', '6', '36', '\"2014-02-05\"');
INSERT INTO `record` VALUES ('37', '4', '4', '7', '37', '\"2014-02-06\"');
INSERT INTO `record` VALUES ('38', '4', '4', '8', '38', '\"2014-02-07\"');
INSERT INTO `record` VALUES ('39', '4', '4', '9', '39', '\"2014-02-08\"');
INSERT INTO `record` VALUES ('40', '4', '4', '10', '40', '\"2014-02-09\"');
INSERT INTO `record` VALUES ('41', '5', '5', '1', '41', '\"2014-02-10\"');
INSERT INTO `record` VALUES ('42', '5', '5', '2', '42', '\"2014-02-11\"');
INSERT INTO `record` VALUES ('43', '5', '5', '3', '43', '\"2014-02-12\"');
INSERT INTO `record` VALUES ('44', '5', '5', '4', '44', '\"2014-02-13\"');
INSERT INTO `record` VALUES ('45', '5', '5', '5', '45', '\"2014-02-14\"');
INSERT INTO `record` VALUES ('46', '5', '5', '6', '46', '\"2014-02-15\"');
INSERT INTO `record` VALUES ('47', '5', '5', '7', '47', '\"2014-02-16\"');
INSERT INTO `record` VALUES ('48', '5', '5', '8', '48', '\"2014-02-17\"');
INSERT INTO `record` VALUES ('49', '5', '5', '9', '49', '\"2014-02-18\"');
INSERT INTO `record` VALUES ('50', '5', '5', '10', '50', '\"2014-02-19\"');
INSERT INTO `record` VALUES ('51', '6', '6', '1', '51', '\"2014-02-20\"');
INSERT INTO `record` VALUES ('52', '6', '6', '2', '52', '\"2014-02-21\"');
INSERT INTO `record` VALUES ('53', '6', '6', '3', '53', '\"2014-02-22\"');
INSERT INTO `record` VALUES ('54', '6', '6', '4', '54', '\"2014-02-23\"');
INSERT INTO `record` VALUES ('55', '6', '6', '5', '55', '\"2014-02-24\"');
INSERT INTO `record` VALUES ('56', '6', '6', '6', '56', '\"2014-02-25\"');
INSERT INTO `record` VALUES ('57', '6', '6', '7', '57', '\"2014-02-26\"');
INSERT INTO `record` VALUES ('58', '6', '6', '8', '58', '\"2014-02-27\"');
INSERT INTO `record` VALUES ('59', '6', '6', '9', '59', '\"2014-02-28\"');
INSERT INTO `record` VALUES ('60', '6', '6', '10', '60', '\"2014-02-29\"');
INSERT INTO `record` VALUES ('61', '7', '7', '1', '61', '\"2014-03-01\"');
INSERT INTO `record` VALUES ('62', '7', '7', '2', '62', '\"2014-03-02\"');
INSERT INTO `record` VALUES ('63', '7', '7', '3', '63', '\"2014-03-03\"');
INSERT INTO `record` VALUES ('64', '7', '7', '4', '64', '\"2014-03-04\"');
INSERT INTO `record` VALUES ('65', '7', '7', '5', '65', '\"2014-03-05\"');
INSERT INTO `record` VALUES ('66', '7', '7', '6', '66', '\"2014-03-06\"');
INSERT INTO `record` VALUES ('67', '7', '7', '7', '67', '\"2014-03-07\"');
INSERT INTO `record` VALUES ('68', '7', '7', '8', '68', '\"2014-03-08\"');
INSERT INTO `record` VALUES ('69', '7', '7', '9', '69', '\"2014-03-09\"');
INSERT INTO `record` VALUES ('70', '7', '7', '10', '70', '\"2014-03-10\"');
INSERT INTO `record` VALUES ('71', '8', '8', '1', '71', '\"2014-03-11\"');
INSERT INTO `record` VALUES ('72', '8', '8', '2', '72', '\"2014-03-12\"');
INSERT INTO `record` VALUES ('73', '8', '8', '3', '73', '\"2014-03-13\"');
INSERT INTO `record` VALUES ('74', '8', '8', '4', '74', '\"2014-03-14\"');
INSERT INTO `record` VALUES ('75', '8', '8', '5', '75', '\"2014-03-15\"');
INSERT INTO `record` VALUES ('76', '8', '8', '6', '76', '\"2014-03-16\"');
INSERT INTO `record` VALUES ('77', '8', '8', '7', '77', '\"2014-03-17\"');
INSERT INTO `record` VALUES ('78', '8', '8', '8', '78', '\"2014-03-18\"');
INSERT INTO `record` VALUES ('79', '8', '8', '9', '79', '\"2014-03-19\"');
INSERT INTO `record` VALUES ('80', '8', '8', '10', '80', '\"2014-03-20\"');
INSERT INTO `record` VALUES ('81', '9', '9', '1', '81', '\"2014-03-21\"');
INSERT INTO `record` VALUES ('82', '9', '9', '2', '82', '\"2014-03-22\"');
INSERT INTO `record` VALUES ('83', '9', '9', '3', '83', '\"2014-03-23\"');
INSERT INTO `record` VALUES ('84', '9', '9', '4', '84', '\"2014-03-24\"');
INSERT INTO `record` VALUES ('85', '9', '9', '5', '85', '\"2014-03-25\"');
INSERT INTO `record` VALUES ('86', '9', '9', '6', '86', '\"2014-03-26\"');
INSERT INTO `record` VALUES ('87', '9', '9', '7', '87', '\"2014-03-27\"');
INSERT INTO `record` VALUES ('88', '9', '9', '8', '88', '\"2014-03-28\"');
INSERT INTO `record` VALUES ('89', '9', '9', '9', '89', '\"2014-03-29\"');
INSERT INTO `record` VALUES ('90', '9', '9', '10', '90', '\"2014-03-30\"');
INSERT INTO `record` VALUES ('91', '10', '10', '1', '91', '\"2014-03-31\"');
INSERT INTO `record` VALUES ('92', '10', '10', '2', '92', '\"2014-04-01\"');
INSERT INTO `record` VALUES ('93', '10', '10', '3', '93', '\"2014-04-02\"');
INSERT INTO `record` VALUES ('94', '10', '10', '4', '94', '\"2014-04-03\"');
INSERT INTO `record` VALUES ('95', '10', '10', '5', '95', '\"2014-04-04\"');
INSERT INTO `record` VALUES ('96', '10', '10', '6', '96', '\"2014-04-05\"');
INSERT INTO `record` VALUES ('97', '10', '10', '7', '97', '\"2014-04-06\"');
INSERT INTO `record` VALUES ('98', '10', '10', '8', '98', '\"2014-04-07\"');
INSERT INTO `record` VALUES ('99', '10', '10', '9', '99', '\"2014-04-08\"');
INSERT INTO `record` VALUES ('100', '10', '10', '10', '100', '\"2014-04-09\"');

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL auto_increment,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `status` int(11) NOT NULL,
  `time` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `download_count` varchar(45) NOT NULL,
  `school_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_resource_resource_type1_idx` (`type_id`),
  KEY `fk_resource_user1_idx` (`user_id`),
  KEY `fk_resource_feature1_idx` (`feature_id`),
  CONSTRAINT `fk_resource_feature1` FOREIGN KEY (`feature_id`) REFERENCES `feature` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_resource_resource_type1` FOREIGN KEY (`type_id`) REFERENCES `resource_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_resource_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '1', '1', '资源1', '1', '\"2014-01-01\"', '1', '漩涡鸣人', '1', '1', '1', '1');
INSERT INTO `resource` VALUES ('2', '2', '2', '资源2', '1', '\"2014-01-02\"', '2', '宇智波佐助', '2', '2', '2', '2');
INSERT INTO `resource` VALUES ('3', '3', '3', '资源3', '1', '\"2014-01-03\"', '3', '春野樱', '3', '3', '3', '3');
INSERT INTO `resource` VALUES ('4', '4', '4', '资源4', '1', '\"2014-01-04\"', '4', '李洛克', '4', '4', '4', '4');
INSERT INTO `resource` VALUES ('5', '5', '5', '资源5', '1', '\"2014-01-05\"', '5', '日向宁次', '5', '5', '5', '5');
INSERT INTO `resource` VALUES ('6', '6', '6', '资源6', '1', '\"2014-01-06\"', '6', '日向雏田', '6', '6', '6', '6');
INSERT INTO `resource` VALUES ('7', '7', '7', '资源7', '1', '\"2014-01-07\"', '7', '千手柱间', '7', '7', '7', '7');
INSERT INTO `resource` VALUES ('8', '8', '8', '资源8', '1', '\"2014-01-08\"', '8', '千手扉间', '8', '8', '8', '8');
INSERT INTO `resource` VALUES ('9', '9', '9', '资源9', '1', '\"2014-01-09\"', '9', '猿飞日斩', '9', '9', '9', '9');
INSERT INTO `resource` VALUES ('10', '10', '10', '资源10', '1', '\"2014-01-10\"', '10', '波风水门', '10', '10', '10', '10');

-- ----------------------------
-- Table structure for `resource_type`
-- ----------------------------
DROP TABLE IF EXISTS `resource_type`;
CREATE TABLE `resource_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource_type
-- ----------------------------
INSERT INTO `resource_type` VALUES ('6', 'Excel文件');
INSERT INTO `resource_type` VALUES ('7', 'PhotoShop文件');
INSERT INTO `resource_type` VALUES ('4', 'PPT文件');
INSERT INTO `resource_type` VALUES ('5', 'Word文件');
INSERT INTO `resource_type` VALUES ('10', '其它');
INSERT INTO `resource_type` VALUES ('1', '程序代码');
INSERT INTO `resource_type` VALUES ('2', '编程文档');
INSERT INTO `resource_type` VALUES ('3', '视频资源');
INSERT INTO `resource_type` VALUES ('9', '论文资源');
INSERT INTO `resource_type` VALUES ('8', '音乐资源');

-- ----------------------------
-- Table structure for `school`
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school` (
  `id` int(11) NOT NULL auto_increment,
  `province_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(400) default NULL,
  `avatar` varchar(100) default NULL,
  `resource_count` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_school_province_idx` (`province_id`),
  CONSTRAINT `fk_school_province` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '1', '清华大学', '清华大学（Tsinghua', '', '1');
INSERT INTO `school` VALUES ('2', '1', '北京大学', '北京大学创办于1898年，初名京师大学堂，是中国第一所国立大学，也是中国近代最早以“大学”身份和名称建立的学校，其成立标志着中国近代高等教育的开端。北大是中国近代唯一以最高学府身份创立的学校，最初也是国家最高教育行政机关，行使教育部职能，统管全国教育；并开创了中国高校中最早的文科、理科、政科、商科、农科、医科等学科的大学教育，是近代以来中国高等教育的奠基者。北大传承着中国数千年来国家最高学府——太学（国子学、国子监）的学统，既继承了中国古代最高学府正统，又开创了中国近代高等教育先河，可谓“上承太学正统，下立大学祖庭”。自建校以来，一直享有崇高的声誉和地位。在中国近现代史上，北大始终与国家民族的命运紧密相连，深刻的影响了中国百年来的历史进程。', '', '2');
INSERT INTO `school` VALUES ('3', '2', '复旦大学', '复旦大学，始建于1905年，初名复旦公学，创始人为中国近代知名教育家马相伯，首任校董为国父孙中山先生。“复旦”二字选自《尚书大传·虞夏传》中“日月光华，旦复旦兮”的名句，意在自强不息，寄托当时中国知识分子自主办学、教育强国的希望，是中国人自主创办的第一所高等学校。', '', '3');
INSERT INTO `school` VALUES ('4', '2', '上海交通大学', '上海交通大学（Shanghai Jiao Tong University）简称上海交大（SJTU），是位于中国上海市的一所具有理工特色，涵盖理、工、医、经、管、文、法等9个学科门类的教育部直属理工类性全国重点大学，中国首批七所211工程和全国首批九所985工程院校之一。国家“111计划”和“珠峰计划”重点建设的研究型大学，中国大学“九校联盟”成员，也是Universitas 21（大学的国际性协会）的创建成员之一。', '', '4');
INSERT INTO `school` VALUES ('5', '3', '重庆大学', '重庆大学坐落于长江上游地区经济和金融中心、美丽的山水都市——中央直辖市重庆，是教育部直属的全国重点大学，国家首批“211工程”和“985工程”重点建设的高水平大学，国家“111计划”重点建设大学，是中国32所副部级重点建设高校之一，34所研究生入学考试自主划线高校之一，建有研究生院，首批认定的22个国家大学科技园的高校之一，是中国首批来华留学示范基地建设高校。', '', '5');
INSERT INTO `school` VALUES ('6', '3', '重庆医科大学', '重庆医科大学创建于1956年，坐落于中国美丽的山水都市——中央直辖市重庆，由上海第一医学院（现为复旦大学上海医学院）分迁来渝组建而成。原名重庆医学院，1985年更名为重庆医科大学。学校是国务院学位委员会批准的首批具有博士和硕士学位授予权的单位。2008年教育部、重庆市《部市战略合作协议》确定为重点建设大学。是中西部高校基础能力建设工程和卓越医生教育培养计划重点建设高校之一。', '', '6');
INSERT INTO `school` VALUES ('7', '4', '天津大学', '天津大学（Tientsin University）简称“天大”，其前身为北洋大学，始建于1895年10月2日，是中国第一所现代大学，开中国现代高等教育之先河，素以“实事求是”的校训、“严谨治学”的校风和“爱国奉献”的传统享誉海内外。1951年经国家院系调整定名为“天津大学”，沿用至今。', '', '7');
INSERT INTO `school` VALUES ('8', '4', '南开大学', '南开大学是中国最顶尖的著名学府之一，坐落于中国四大直辖市之一的天津市。南开大学是中华人民共和国教育部直属综合型全国重点大学，是国家首批211工程、985工程、2011计划重点建设大学，同时是列入国家“111计划”、“珠峰计划”建设的研究型大学。', '', '8');
INSERT INTO `school` VALUES ('9', '5', '河北大学', '学校前身是1921年法国耶稣会士创办的天津工商大学，其后历经天津工商学院、津沽大学、天津师范学院、天津师范大学等几个时期，1960年改建为综合性大学并定名河北大学，1970年由天津迁至国家历史文化名城—保定。河北大学是国家首批“卓越法律人才教育培养计划”基地和国家“卓越工程师教育培养计划”入选高校，具有“推荐免试研究生”资格，是河北省首家接受“中国政府奖学金”留学生资格院校。2012年，入选教育部“中西部高校综合实力提升工程”成为教育部在中西部地区重点建设的14所高水平大学之一，“中西部高校联盟”成员。', '', '9');
INSERT INTO `school` VALUES ('10', '5', '河北工业大学', '河北工业大学，坐落于天津市，是一所以工为主、多学科协调发展的国家“211工程”重点建设大学、“卓越工程师教育培养计划”高校和中西部高校基础能力建设工程高校。它的前身是1903年成立的北洋工艺学堂，为中国最早的工科高校。目前设有国家大学科技园（一园多区模式），一个省部共建国家重点实验室培育基地，一个国家工程技术研究中心，两个教育部工程研究中心；设有河北工业大学国防科技研究院，具有军工保密资质；MBA教育系全国工科院校首创，同时也是河北省内唯一开展EMBA教育的高校。', '', '10');
INSERT INTO `school` VALUES ('11', '6', '山西大学', '山西大学简称山大，位于山西省省会太原市，是山西省人民政府与教育部共同重点建设的省部共建综合性研究型大学。学校前身为创建于1902年的山西大学堂，是中国最早建立的大学堂之一，与京师大学堂（今北京大学）和北洋大学堂（今天津大学）一道，开创了近代中国高等教育的新纪元。其悠远的文脉可以上溯至明代三立书院及清代晋阳书院和令德书院。早期的山西大学堂中西合璧，文理并重，办学思路开阔，育人理念先进，是中国高等教育的重要发祥地之一，也是三晋大地百年文化科教的重镇。', '', '11');
INSERT INTO `school` VALUES ('12', '6', '太原理工大学', '太原理工大学（Taiyuan University of Technology，简称TYUT或TUT)，位于山西省太原市，是国家“211工程”重点建设大学，国家中部地区重点建设的五所高校之一。学校始建于1902年，前身是山西大学堂西学专斋，历经山西大学校工科、山西大学工学院、太原工学院、太原工业大学等阶段，在1997年合并山西矿业学院更名为太原理工大学。经过百余年的传承和发展，太原理工大学已建设成为一所以工为主，理工结合，多学科协调发展的高等学府，是教育部首批“卓越工程师教育培养计划”高校，同时也是省级“2011计划”中 “山西煤炭资源可持续开发利用协同创新中心”、“晋陕蒙煤与煤层气开发利用协同创新中心”牵头高校。', '', '12');
INSERT INTO `school` VALUES ('13', '7', '辽东学院', '辽东学院是经教育部批准成立的省属综合性本科院校 ，位于中国最美丽的边境城市——辽宁省丹东市。是丹东市第一所本科院校。丹东地处黄海之滨，鸭绿江畔，风景秀丽、气候宜人，是学子们求学和生活的理想之地。学校创建于2003年，经过10余年的发展，现学校学科门类齐全，而且拥有一支教学经验丰富和学术水平较高的师资队伍。辽东学院下设17个二级学院，学校面向全国24个省（市）招生，毕业生就业率居辽宁省高校前列。辽东学院现有专业涵盖了经济学、教育学、文学、工学、管理学等八大学科门类。', '', '13');
INSERT INTO `school` VALUES ('14', '7', '沈阳音乐学院', '沈阳音乐学院是中国东北地区唯一一所历史悠久、具有光荣传统的高等音乐艺术院校。缘起于1938年由毛泽东、周恩来等老一辈无产阶级革命家发起、创立的我党第一所艺术院校——延安鲁迅艺术学院。抗日战争胜利后，学院由延安迁至东北，落户沈阳，并于1958年更名为沈阳音乐学院。', '', '14');
INSERT INTO `school` VALUES ('15', '8', '吉林艺术学院', '在风景秀丽、人文荟萃的北国春城——长春坐落着一颗璀璨的明珠，她就是闻名遐迩的吉林艺术学院。吉林艺术学院是全国六所综合性艺术院校之一，即中国六大艺术学院之一，东北地区唯一一所综合性高等艺术学府。学院前身萌发于1946年的东北大学鲁迅文艺学院音乐系，1958年组建吉林艺术专科学校，1978年升格为本科建制，更名为吉林艺术学院。', '', '15');
INSERT INTO `school` VALUES ('16', '8', '吉林工商学院', '吉林工商学院坐落在美丽的北国春城——长春，是2007年3月经国家教育部批准，由原吉林财税高等专科学校、吉林商业高等专科学校和吉林粮食高等专科学校实体合并组建的省属公办本科院校。原三所高等专科学校成立于上世纪50年代，在半个多世纪的办学历程中，打造了财会、餐旅、粮食、食品等一批名牌专业，为国家建设培养输送了数以万计的优秀人才。学院组建后，坚持“突出特色、打造精品、育人为本、名师兴校”的办学理念和“博学善思、厚德自强”的校训，在服务地方、贡献社会的同时，不断赢得自身的发展和社会的好评', '', '16');
INSERT INTO `school` VALUES ('17', '9', '黑龙江工业学院', '黑龙江工业学院（原鸡西大学）是1984年8月17日经黑龙江省人民政府、教育部批准成立并备案的省属普通高等学校。已有近30年办学历史。学校坐落在鸡西市市区中心，是黑龙江省首家全国人才培养工作水平评估优秀院校，是全国精神文明创建工作先进单位、全国普通高校毕业生就业工作典型经验推广学校（50强）、全国教育支援西部地区先进单位、省级文明单位标兵、省级花园式学校、省级“三育人”先进集体，是全国办学特色突出的普通高等学校，是全省同类院校办学条件最好、教育教学资源最充裕、教学质量和毕业生就业率最高的院校之一。2013年4月，教育部批准鸡西大学升格为普通本科学校并更名为黑龙江工业学院。', '', '17');
INSERT INTO `school` VALUES ('18', '9', '哈尔滨金融学院', '哈尔滨金融学院（Harbin Finance University) 坐落在风光秀丽的北国“冰城”－哈尔滨市。学院始建于1950年，历经了中国人民银行齐齐哈尔干部学校、黑龙江银行学校、哈尔滨金融高等专科学校。1983年2月，在黑龙江银行学校的基础上建立了哈尔滨金融高等专科学校，是国务院批准的我国第一所金融高等专科学校。学校原隶属于中国人民银行总行，2000年全国高等学校管理体制改革后，改为中央和地方共建，以地方管理为主。2010年经教育部批准，升格为哈尔滨金融学院。', '', '18');
INSERT INTO `school` VALUES ('19', '10', '南京艺术学院', '南京艺术学院（Nanjing Arts University）简称“南艺”，是中国独立建制创办最早并延续至今的高等艺术学府，中国六大艺术学院之一，江苏省唯一的综合性艺术院校，国家文化部与江苏省政府省部共建大学。其前身是1912年中国美术教育的奠基人刘海粟先生约同画友创办的上海美术图画院，1930年更名为上海美术专科学校，由蔡元培先生任上海美专董事局主席，1959年定名为南京艺术学院。已发展成为在国内外卓有影响的综合性高等艺术学府，是截至2013年全国唯一拥有艺术学五个一级学科博士点和博士后流动站的高校。', '', '19');
INSERT INTO `school` VALUES ('20', '10', '常州大学', '常州大学（Changzhou University）简称常大（CZU），坐落于经济发达、人文荟萃的江南历史文化名城——江苏省常州市。学校始建于1978年，原名为南京化工学院常州分院、无锡分院，是一所在我国改革开放之初创办的省属全日制本科院校。\r\n常州大学与众多国内知名大学、大院、大所共驻常州科教城，现有10个一级学科硕士学位授权点，39个二级学科硕士学位授权点，5个工程硕士专业学位授予权；有56个本科专业，涵盖工学、理学、管理学、经济学、文学、法学、艺术学、医学、农学以及教育学等十大学科门类。', '', '20');
INSERT INTO `school` VALUES ('21', '11', '浙江大学', '浙江大学（Zhejiang University）简称“浙大”，前身是1897年创建的求是书院，是中国人自己最早创办的现代高等学府之一。1928年更名为国立浙江大学。中华民国时期，浙江大学在竺可桢老校长的带领下，成长为中国最顶尖的大学之一，被英国著名学者李约瑟誉为“东方剑桥”。浙大是中国首批7所“211工程”大学，首批9所“985工程”重点建设的全国重点大学，中国大学C9联盟、世界大学联盟、环太平洋大学联盟的成员，是联合国教科文组织全球大学创新联盟亚太中心牵头单位，是中国著名顶尖学府之一。', '', '21');
INSERT INTO `school` VALUES ('22', '11', '温州大学', '温州大学是一所地方综合性大学，办学历史可追溯到温州近代著名爱国爱乡人士黄溯初先生1933年创办的温州师范学校。\r\n学校位于浙江省温州。学校占地总面积2352亩，分茶山校区和学院路校区。学校校舍面积114.6万平方米，教学科研仪器设备总值4.51亿元，馆藏纸质图书243.1万册，电子图书约162.2万册，各类中外文电子期刊和资料数据库59个。现有全日制在校生30166人，教职工2505人，其中专任教师1599人。专任教师中，具有正高职称教师190人、副高职称教师437人。', '', '22');
INSERT INTO `school` VALUES ('23', '12', '安徽大学', '安徽大学（Anhui University）简称“安大”，坐落于安徽省省会合肥市，是国家首批“211工程”重点建设高校，教育部与安徽省人民政府共建高校。国家华文教育基地，国家“卓越法律人才”培养基地。安徽大学前身国立安徽大学是安徽现代高等教育的开端，始创于1928年。', '', '23');
INSERT INTO `school` VALUES ('24', '12', '合肥工业大学', '合肥工业大学（Hefei University of Technology）是中华人民共和国教育部直属的全国重点大学、国家”211工程”重点建设高校和“985工程优势学科创新平台”建设高校，中美绿色合作伙伴关系参与者之一[1]。教育部“卓越工程师培养计划”首批61所试点高校之一；全国首批60所国家建设高水平大学公派研究生项目签约高校；全国首批42所具有自主招生资格的全国重点大学之一；也是安徽省人民政府与教育部、工业与信息化部共建的学校。', '', '24');
INSERT INTO `school` VALUES ('25', '13', '福建工程学院', '福建工程学院是福建省重点建设高校、教育部首批“卓越工程师教育培养计划”全国61所试点高校之一。学校溯源于1896年清末著名乡贤名士林纾、清末宣统帝溥仪帝师陈宝琛创办的“苍霞精舍”，解放前为享有盛誉的福建高工、建专。校友遍及海内外，在建筑、机械、电子电气等各行业做出不凡贡献，素有福建“建筑业的黄埔军校”、“机电工程师的摇篮”美誉。2010年以优异的成绩通过教育部本科教学评估调研，2013年2月，增列为福建省重点建设高校，2013年7月，获批硕士学位授权单位。', '', '25');
INSERT INTO `school` VALUES ('26', '13', '厦门大学', '厦门大学（Amoy University）简称“厦大”，是中华人民共和国教育部直属高等学校，是国家“211工程”和“985工程”重点建设的综合类的高水平研究型大学。是中国近代教育史上第一所由华侨创办的大学，学校是中国最早开展研究生教育的三所大学之一，被誉为“南方之强”。', '', '26');
INSERT INTO `school` VALUES ('27', '14', '江西中医药大学', '江西中医药大学简称“江中”，坐落在江西省省会南昌。 是国家博士学位授权单位，是中央统战部、国家民委、教育部指派的对口支援西部的高校，是全国医药院校中唯一的“少数民族高层次骨干人才医学类硕士研究生（预科）基础培训基地”。', '', '27');
INSERT INTO `school` VALUES ('28', '14', '南昌工程学院', '南昌工程学院坐落于江西省省会城市南昌，是一所中央与地方共建、以地方管理为主的普通高校。前身为创建于1958年的江西水利电力学院，2004年更名为南昌工程学院。2005年获得学士学位授予权，2008年江西省人民政府与水利部签署协议实现省部共建，2011年9月被教育部批准为“卓越工程师教育培养计划”高校，同年10月被国务院学位委员会批准开展培养硕士专业学位研究生试点工作，同年12月通过教育部本科教学工作合格评估。', '', '28');
INSERT INTO `school` VALUES ('29', '15', '山东农业工程学院', '山东农业工程学院是国家教育部批准设立的普通本科高等院校，目前承办普通本科教育、普通专科教育、成人高等教育、县处级领导干部岗位培训、农业科技人员继续教育和新型农民培训。前身是1971年6月组建的山东省“五七”干部学校，1976年1月改称山东省省级机关“五七”干部学校，1979年4月改为山东省农林干部学校，1983年10月，改建为山东省农业管理干部学院，2013年4月改建为山东农业工程学院。', '', '29');
INSERT INTO `school` VALUES ('30', '15', '泰山学院', '泰山学院是2002年3月经教育部批准设立的一所全日制普通本科高校，自1958年开始举办高等教育，其办学历史可追溯到1905年（清光绪三十一年）创办的泰安府官立师范学堂。校园坐落在世界首例自然与文化双重遗产、世界地质公园——泰山南麓，毗邻省级旅游度假区——天平湖，建有以党和国家主要领导人命名并设在高校的第一座图书馆——万里图书馆。校园建筑错落有致，环境幽雅，景色宜人，是读书治学的理想之地。', '', '30');
INSERT INTO `school` VALUES ('31', '16', '河南科技学院', '河南科技学院（Henan Institute of Science and Technology）是一所省属普通本科院校，学校地处中原名城新乡市。始建于1949年，前身是北京农业大学长治分校和平原省立农业学校，历经平原农学院、百泉农业专科学校、河南职业技术师范学院等时期。2004年5月，经国家教育部批准，更名为河南科技学院。', '', '31');
INSERT INTO `school` VALUES ('32', '16', '郑州大学', '郑州大学(Zhengzhou University)简称“郑大”，创建于1956年，是新中国成立后国家创办的第一所综合性大学，坐落在中国历史文化名城、中国八大古都之一的河南省省会郑州市。原郑州大学、郑州工业大学、河南医科大学于2000年合并组建新的郑州大学，学校涵盖哲学、理学、工学、医学、文学、历史学、法学、经济学、管理学、艺术学等13大学科门类。', '', '32');
INSERT INTO `school` VALUES ('33', '17', '湖北科技学院', '湖北科技学院坐落于长江之滨的中国香城泉都——湖北省咸宁市，是湖北省属、中央财政重点支持建设高校，是国家教育部本科教学工作水平评估“优秀”高校，是第一批卓越医生教育培养计划项目试点高校。学院现已建成占地面积1860亩、建筑面积65万平方米，设施先进、功能齐全、环境优美的校园。', '', '33');
INSERT INTO `school` VALUES ('34', '17', '湖北理工学院', '学校最早是由1978年成立的湖北省高等院校黄石高工班；1981年成立武汉工学院（现武汉理工大学）黄石分院；1991年武汉工学院黄石分院和黄石职业大学合并组建为黄石高等专科学校；2004年黄石高等专科学校与黄石教育学院合并组建成立黄石理工学院；2011年经教育部批准更名为湖北理工学院。', '', '34');
INSERT INTO `school` VALUES ('35', '18', '湖南大学', '湖南大学，简称湖大，坐落在湖南长沙湘江西岸的国家5A级风景名胜岳麓山风景名胜区。是隶属教育部的全国重点大学，“211工程”、“985工程”重点建设高校，“111计划”、“卓越工程师教育培养计划”、“卓越法律人才教育培养计划”建设高校，是“卓越研究生生源合作协议”高校成员之一和“高水平大学优秀研究生生源互推联盟”高校成员之一。', '', '35');
INSERT INTO `school` VALUES ('36', '18', '中南大学', '中南大学坐落在中国历史文化名城湖南省长沙市，占地面积5632亩，跨湘江两岸，依巍巍岳麓，临滔滔湘水，环境幽雅，景色宜人，为求知治学的理想园地。\r\n中南大学是教育部直属的综合性全国重点大学，国家“211工程”首批重点建设高校，国家“985工程”部省重点共建的高水平大学，国家首批“2011计划”高校，又是国家111计划23所入选高校最核心大学之一，“是教育部卓越工程师教育培养计划”、“卓越医生教育培养计划”、“卓越法律人才教育培养计划”试点高校。', '', '36');
INSERT INTO `school` VALUES ('37', '19', '五邑大学', '五邑大学地处', '/', '37');
INSERT INTO `school` VALUES ('38', '19', '广东工业大学', '广东工业大学（Guangdong University of Technology）是一所以工学为主，工、理、经、管、文、法、艺术多科性协调发展的广东省“211工程”省属重点大学，由原广东工学院、广东机械学院和华南建设学院（东院）于1995年6月合并组建而成，已有50余年的学科办学历史。学校是教育部本科教学评估优秀学校，教育部“卓越工程师教育培养计划“高校。工程学科进入国际ESI排名，位列全球前1%。学校以“与广东崛起共成长，为广东发展作贡献”为办学理念，深化与产业界深度融合。', '', '38');
INSERT INTO `school` VALUES ('39', '20', '海南大学', '海南大学(英文简称：HNU)是国家“211工程”重点建设大学之一，是海南省，教育部和财政部共建的综合性高校、国家综合性重点大学、国家卓越工程师教育培养计划高校、国家卓越法律人才教育培养计划高校。是国家“中西部高校综合实力提升工程”的14所院校之一，“中西部高校联盟”成员。也是海南省唯一拥有国家级重点学科、博士授权点、博士后工作站、免试推荐研究生资格的高校。', '', '39');
INSERT INTO `school` VALUES ('40', '20', '三亚学院', '三亚学院是经国家教育部批准，由吉利控股集团董事长李书福先生出资建设，在中国三亚市设立的第一所民办普通本科院校。校园中座落着万年古人类文明遗址落笔洞，是海南黎族文化的发源地。2012年三亚学院位列全国独立学院权威排行榜第3名，2013年位列中国民办大学排行榜第5名，并入围2013中国一流民办大学。在《2014中国大学评价研究报告》中，三亚学院在2014中国两岸四地大学星级排名中，获评五星级民办大学，被认可为中国大陆地区办学水平和办学层次最高的综合类民办大学；同时，在校友会网2014中国综合类民办大学排名中，也名列排行榜第四名。', '', '40');
INSERT INTO `school` VALUES ('41', '21', '四川大学', '四川大学（Sichuan University）简称\"川大\"，是中国“985工程”和“211工程”重点建设的高水平综合研究型大学，首批入选“2011计划”（“高等学校创新能力提升计划，首批14所）、“珠峰计划”（首批11所）、“卓越计划”、“111计划”（高等学校学科创新引智计划，首批26所）的高校之一，31所教育部直属副部级[1]高校之一[2]。', '', '41');
INSERT INTO `school` VALUES ('42', '21', '成都师范学院', '成都师范学院是全日制普通本科师范院校，前身为创建于1955年的四川教育学院，学校位于中国历史文化名城——“天府之国”腹地成都市。2012年3月，经教育部和四川省人民政府批准，四川教育学院改建更名为成都师范学院，正式由一所成人本科师范院校改制为普通本科师范院校。2012年6月16日，成都师范学院正式揭牌', '', '42');
INSERT INTO `school` VALUES ('43', '22', '贵州理工学院', '贵州理工学院经过教育部批准建立本科高等院校。2012年教育部下文正式筹建，于2013年4月，正式批准建校，是省属院校最年轻的一所，贵州理工学院是省委、省政府应实施工业强省战略和城镇化带动战略对理工类实用型人才之需而决定创办的一所省属本科院校，校区位于贵州省贵阳市云岩区蔡关路1号。', '', '43');
INSERT INTO `school` VALUES ('44', '22', '贵阳学院', '贵阳学院是教育部批准建立的具有高等学历教育招生资格的普通高等学校，由贵州省领导和管理，实行省市共建以贵阳市为主的办学体制，是贵阳市人民政府举办的本科院校和教育部本科教学工作合格评估学校。校园占地规划面积为1200亩。学校共设15个二级分院3教学部，现有专任教师590人，其中正高职称56人，副高职称238人，博士34人，硕士350人，国务院特殊津贴专家1人、享受省政府特殊津贴专家1人、省管专家5人、全国优秀教师1人、省高校“教学名师”3人、省高校哲学社会科学学术带头人6人、贵阳市专业技术带头人10人，贵阳市中青年科技骨干4人。是2011年第九届全国少数民族传统体育运动会的比赛场地之一。', '', '44');
INSERT INTO `school` VALUES ('45', '23', '云南艺术学院', '云南艺术学院（Yunnan Arts University）简称“云艺”，是中国西南地区一所综合性高等艺术院校，也是中国六大艺术学院之一。\r\n学院坐落于春城——昆明，始建于1959年，建校以来，为国家、特别是为边疆少数民族地区的文化教育事业发展作出了自己的贡献，艺术学院共为社会培养了各类艺术人才7000多名。毕业生包括了汉、回、白、苗、壮、德昂族等20多个民族的学生。[1]\r\n云南艺术学院是国务院学位委员会批准的硕士学位授予单位，同时也是教育部确定的31所独立设置的本科艺术院校之一。', '', '45');
INSERT INTO `school` VALUES ('46', '23', '昆明学院', '昆明学院是国家教育部2004年5月批准建立的全日制普通高等学校，在原昆明师范高等专科学校和原昆明大学合并的基础上整合昆明市优质教育资源组建而成。目前昆明学院正筹备更名为昆明大学。[1]\r\n学校位于历史文化名城昆明市区、国家级昆明经济技术开发区浦新路2号。截至2013年3月，占地1800多亩，规划建筑面积60多万平米，环境优美，功能齐全，设备现代。校外还建有500多亩实习实训基地。学校固定资产总值18.8亿元，其中，教学、科研仪器设备1.3亿元；藏书178万册。', '', '46');
INSERT INTO `school` VALUES ('47', '24', '陕西师范大学', '陕西师范大学（Shaanxi Normal University）坐落于世界四大历史文化名城之一的古都西安，是教育部直属“国家重点大学”，是国家“211工程”、国家“985工程优势学科创新平台”重点建设高校，是六所教育部直属重点师范大学之一，国家师范生免费教育试点高校，国家“111计划”即高等学校学科创新引智计划重点建设高校、“2011计划”高校，是国家培养高等院校、中等学校师资和教育管理干部以及其他高级专门人才的重要基地，被誉为西北地区 “ 教师的摇篮 ” 。', '', '47');
INSERT INTO `school` VALUES ('48', '24', '西北大学', '西北大学（Northwest University），简称“西大”，始建于1902年，由清末光绪皇帝御笔朱批设立，坐落于世界历史名城古都西安，是国家教育部与陕西省人民政府共建的综合性全国重点大学，“211工程”大学，是中国西北地区历史最为悠久的高等学府。', '', '48');
INSERT INTO `school` VALUES ('49', '25', '甘肃政法学院', '甘肃政法学院位于甘肃省兰州市安宁区，其前身是1956年创建的甘肃省政法干部学校，1984年更名为甘肃政法学院，是甘肃省属的唯一一所政法公安类普通高等院校。', '', '49');
INSERT INTO `school` VALUES ('50', '25', '兰州城市学院', '兰州城市学院是2006年经教育部批准成立的一所普通全日制本科大学，其前身是1958年成立的兰州高等师范专科学校和新西兰国际友人路易·艾黎于上世纪40年代创办的培黎石油学校。学校位于甘肃省省会兰州市安宁区，风景秀丽、环境幽雅。现占地面积760余亩，有三个校区，校舍建筑面积40.93万平方米，固定资产总值3.6亿元，教学仪器设备值9165万元，图书馆藏纸质图书88.87万册，电子图书48万册，中外文学术期刊2960种，电子期刊8500余种。', '', '50');
INSERT INTO `school` VALUES ('51', '26', '青海大学', '青海大学是位于青海省省会——“夏都”西宁市北郊，是一所国家重点支持、清华大学对口支援、教育部和青海省共同建设的“211工程”大学[1-2]。国家“中西部高校综合实力提升工程”14所重点建设大学之一[3]，卓越医生教育培养计划建设高校和卓越工程师人才教育培养计划建设高校[4-5]，“中西部高校联盟”成员单位[6]。', '', '51');
INSERT INTO `school` VALUES ('52', '26', '青海师范大学', '青海师范大学建于1956年。学校以本科教育为重点，兼有研究生教育、留学生教育、成人教育和职业教育，学科专业覆盖文学、理学、历史学、教育学、哲学、经济学、法学、工学、管理学等9大门类。\r\n学校是博士学位授予单位、西部地区理科藏汉双语教师培养培训重点院校、全国培养高水平运动员试点院校、国家社会体育指导员培训基地、全国汉语言水平测试（HSK）主考单位、CALIS青海省文献信息服务中心、中国教育和科研计算机网络青海省主节点院校，全国50所毕业生就业典型经验高校之一，具有推荐优秀应届本科毕业生免试攻读硕士学位研究生资格。', '', '52');
INSERT INTO `school` VALUES ('53', '27', '国立交通大学 ', '国立交通大学（英语：National Chiao Tung University），简称交大，中国大陆惯称台湾交通大学或新竹交大，是台湾一所顶尖的研究型国立大学。台湾交大前身为1896年创立于上海的南洋公学，即今日大陆之上海交通大学与西安交通大学。1949年国民政府迁台，中国大陆的交通大学由上海市军管会高教处接管，国民政府下的交通大学校务则被迫中断。1958年由原交通大学的学院及校友在台湾复校而建立。目前主要校区位于新竹市，与台湾清华大学（清大）相邻。交大因其在管理学、电子工程、计算机科学领域的出色科研及教学成果而极负盛名。根据上海交通大学高等教育研究院世界一流大学研究中心研究团队完成的「中国·两岸四地大学排名」，交大排名第八。[1]在海峡两岸，台湾交大也与上海交大，西安交大，西南交大，北京交大等四校共称「五校一家」。', '', '53');
INSERT INTO `school` VALUES ('54', '27', '国立中央大学 ', '南京大学，简称“南大”[1]，是一所源远流长的高等学府。追溯学脉古为源自三国吴永安元年的南京太学，近代校史肇始于1902年筹办的三江师范学堂，历经多次变迁，1949年“国立中央大学”易名“国立南京大学”，翌年径称“南京大学”，沿用至今。\r\n南京大学现为教育部直属重点大学，国家首批“211工程”、“985工程”高校，首批“珠峰计划”、“111计划”、“2011计划”实施高校，九校联盟、世界大学联盟、环太平洋大学联盟、21世纪学术联盟的重要成员和东亚研究型大学协会高校。', '', '54');
INSERT INTO `school` VALUES ('55', '28', '内蒙古大学', '内蒙古大学创建于1957年，是新中国成立后在少数民族地区最早创立的一所综合性大学，在国家高等教育布局中具有重要作用和特殊区域定位。1997年成为首批国家“211工程”建设院校，2004年成为内蒙古自治区和中国教育部共建大学，2012年入选中国国家“中西部高校综合实力提升工程”高校。有28个省部级重点实验室、工程技术研究中心、人文社会科学重点研究基地。蒙古学和生命科学两个学科具有鲜明的民族特色和地区特色，在国内外享有盛誉。是一所拥有哲学、经济学、法学、文学、历史学、理学、工学、农学、管理学、艺术学等10大门类学科的中国重点综合研究性大学', '', '55');
INSERT INTO `school` VALUES ('56', '28', '内蒙古农业大学', '内蒙古农业大学成立于1952年，是内蒙古自治区成立最早的本科高等学校，是国家大学生文化素质教育基地院校之一，是国家草业学会会长单位之一，是一所以农为主，以草原畜牧业为优势和特色，具有农、工、理、经、管、文、教、法、艺等9个学科门类的多科性大学。', '', '56');
INSERT INTO `school` VALUES ('57', '29', '广西艺术学院', '广西艺术学院（Guangxi Arts Institute）位于广西壮族自治区的首府南宁市。其前身广西省会国民基础学校艺术师资训练班。是全国六所省属综合性艺术院校之一，是中华人民共和国文化部与广西壮族自治区人民政府共建高校，也是中国六大艺术学院中仅有的两所与国家文化部合办的省部共建大学之一。', '', '57');
INSERT INTO `school` VALUES ('58', '29', '梧州学院', '梧州学院（Wuzhou University）是一所多科性地方全日制普通高等本科院校，实行“区市共建，以市为主”的管理体制。前身是广西大学梧州分校。2003年10月，广西大学梧州分校与梧州教育学院、梧州师范学校合并组建新的广西大学梧州分校。2006年2月，教育部批准，在广西大学梧州分校的基础上建立梧州学院。', '', '58');
INSERT INTO `school` VALUES ('59', '30', '西藏大学', '西藏大学是西藏自治区所属的综合性大学，“211工程”重点建设大学，西藏自治区人民政府与教育部共建高校，2013年5月列入中西部高等教育振兴计划，2013年7月成功获批为博士学位授予单位。\r\n学校办学历史可追溯到1951年的藏文干部训练班，1985年7月，成立西藏大学。1999年以来，西藏自治区艺术学校、西藏医学高等专科学校和西藏民族学院医疗系、西藏自治区财经学校、西藏农牧学院先后并入西藏大学。', '', '59');
INSERT INTO `school` VALUES ('60', '30', '西藏藏医学院', '西藏藏医学院前身系西藏藏医学校（中专）和西藏大学藏医系，1989年9月成立西藏大学藏医学院，1993年2月经国家教委批准独立设置为西藏藏医学院。从此，藏医药高等教育正式列入全国普通高等教育的序列，是国内外第一所独立设置的培养高层次藏医药专业人才的高等学府。', '', '60');
INSERT INTO `school` VALUES ('61', '31', '宁夏大学', '宁夏大学简称宁大，是宁夏回族自治区与教育部共建的以文、理、工、农为主体的综合性大学，是国家“211工程”重点建设大学，教育部本科教学工作水平评估优秀等次学校，“中西部高校提升综合实力建设高校”。学校坐落于贺兰山下有着“塞上湖城、西夏古都、回族之乡”美誉的历史文化名城银川市，拥有学士、硕士、博士三级学位授予权，是教育部首批批准的招收留学生和中国政府奖学金来华留学生培养高校。', '', '61');
INSERT INTO `school` VALUES ('62', '31', '宁夏理工学院', '宁夏理工学院是教育部批准的国有民办本科高校，学校坐落在宁夏石嘴山市。学校前身为创建于1985年的宁夏石嘴山联合职业大学。2005年3月12日，经教育部批准升格为本科普通高等学校，并更名为宁夏理工学院。2009年，被列为学士学位授予单位。2011年学校接受教育部本科教学工作合格评估。', '', '62');
INSERT INTO `school` VALUES ('63', '32', '新疆大学', '新疆大学（Xinjiang University）位于新疆维吾尔自治区首府乌鲁木齐，简称新大，是1978年确定的全国重点大学，国家“211工程”建设高校、国家西部大开发重点建设高校、中西部高校基础能力建设工程高校、教育部与新疆维吾尔自治区人民政府共建高校，“中西部高校联盟”成员。新疆大学前身是创办于1924年的新疆俄文法政专门学校。1935年1月改建为新疆学院，1960年10月1日，正式成立新疆大学，1978年被国务院确定为新疆唯一的全国重点大学，1997年被列入国家“211工程”重点建设高校，2000年被确定为国家西部大开发重点建设高校。2000年12月30日，新疆大学与原新疆工学院合并组建新的新疆大学。2004年，学校成为新疆维吾尔自治区人民政府、教育部“区部共建”高校。', '', '63');
INSERT INTO `school` VALUES ('64', '32', '塔里木大学', '塔里木大学原名塔里木农垦大学，中西部高等教育振兴计划高校（小211）[2]，教育部实施援疆学科建设计划，[3]指定浙江大学、武汉大学、中国农业大学、东华大学、兰州大学、华中农业大学、东北农业大学、北京化工大学等著名高校对口支援塔里木大学。为了适应国家屯垦戍边事业和开发塔里木垦区对各类人才的需要，在原国家副主席王震将军的倡导和关怀下，于1958年创建，他生前一直任名誉校长。学校是国务院学位委员会批准的首批具有学士学位授予权的本科院校，2003年获得硕士学位授予权，2004年5月经教育部批准，更名为塔里木大学。原为农业部直属高校，现为中央和新疆生产建设兵团共建。', '', '64');
INSERT INTO `school` VALUES ('65', '33', '香港大学', '香港大学，简称港大（英语：The University of Hong Kong，缩写：HKU），是一所位于香港岛薄扶林的公立研究型大学。\r\n该校于1911年创立，并在翌年正式办学，[1-2]是香港第一所高等教育机构。1887年成立的香港华人西医书院获合并成为了这所新落成大学的医学院，与工程学院及文学院同为其创校学院。校方也在1916年举行了首届毕业礼，但后来的日战时期曾对大学的运作造成了很大的干扰。二次大战后，学校则继续发展，多个新部门及学院也相继落成。', '', '65');
INSERT INTO `school` VALUES ('66', '33', '香港浸会大学', '香港浸会大学（简称浸大；英文名：Hong Kong Baptist University，HKBU）是香港第二所历史最悠久的高等教育学府，为一所具有基督教教育传统的公立大学，以“全人教育”为其教育目标及理想，其校训为“笃信力行”。 根据2011年QS世界大学排名，浸大位居全球最佳学府第243位。2012年QS亚洲大学排名，浸大位居亚洲最佳学府第48位。而2010年泰晤士高等教育全球大学排名中香港浸会大学排名第111位，首次进入世界200强，同时，在亚洲大学排行榜中位列第13位', '', '66');
INSERT INTO `school` VALUES ('67', '34', '澳门大学', '澳门大学简称澳大，是澳门第一所现代大学，也是澳门唯一的公立综合性大学。澳门大学前身为由香港、澳门、东南亚等地的知名人士资助开办，1981年3月28日创立的私立东亚大学。中国澳门的一所文理科综合高等学府。澳门大学在澳门是具有公允口碑的尖端学府。校园位于澳门氹仔岛。2010 年12月20澳门大学新校区在珠海经济特区的横琴岛开工建设。2013年11月5日，澳门大学新校区已经正式启用。', '', '67');
INSERT INTO `school` VALUES ('68', '34', '澳门科技大学', '澳门科技大学（葡语：Universidade de Ciência e Tecnologia de Macau；英语：Macau University of Science and Technology）成立于2000年，是澳门主权移交给中华人民共和国后成立的第一所私立大学，开设课程可颁授博士、硕士、学士及高等专科学位与学历证书，大学主校区位于澳门氹仔伟龙马路.', '', '68');

-- ----------------------------
-- Table structure for `school_department`
-- ----------------------------
DROP TABLE IF EXISTS `school_department`;
CREATE TABLE `school_department` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_school_department_school1_idx` (`school_id`),
  KEY `fk_school_department_department1_idx` (`department_id`),
  CONSTRAINT `fk_school_department_department1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_school_department_school1` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school_department
-- ----------------------------
INSERT INTO `school_department` VALUES ('1', '1', '1');
INSERT INTO `school_department` VALUES ('2', '1', '2');
INSERT INTO `school_department` VALUES ('3', '1', '3');
INSERT INTO `school_department` VALUES ('4', '1', '4');
INSERT INTO `school_department` VALUES ('5', '1', '5');
INSERT INTO `school_department` VALUES ('6', '1', '6');
INSERT INTO `school_department` VALUES ('7', '1', '7');
INSERT INTO `school_department` VALUES ('8', '1', '8');
INSERT INTO `school_department` VALUES ('9', '1', '9');
INSERT INTO `school_department` VALUES ('10', '1', '10');
INSERT INTO `school_department` VALUES ('11', '1', '11');
INSERT INTO `school_department` VALUES ('12', '1', '12');
INSERT INTO `school_department` VALUES ('13', '1', '13');
INSERT INTO `school_department` VALUES ('14', '1', '14');
INSERT INTO `school_department` VALUES ('15', '2', '1');
INSERT INTO `school_department` VALUES ('16', '2', '2');
INSERT INTO `school_department` VALUES ('17', '2', '3');
INSERT INTO `school_department` VALUES ('18', '2', '4');
INSERT INTO `school_department` VALUES ('19', '2', '5');
INSERT INTO `school_department` VALUES ('20', '2', '6');
INSERT INTO `school_department` VALUES ('21', '2', '7');
INSERT INTO `school_department` VALUES ('22', '2', '8');
INSERT INTO `school_department` VALUES ('23', '2', '9');
INSERT INTO `school_department` VALUES ('24', '2', '10');
INSERT INTO `school_department` VALUES ('25', '2', '11');
INSERT INTO `school_department` VALUES ('26', '2', '12');
INSERT INTO `school_department` VALUES ('27', '2', '13');
INSERT INTO `school_department` VALUES ('28', '2', '14');
INSERT INTO `school_department` VALUES ('29', '3', '1');
INSERT INTO `school_department` VALUES ('30', '3', '2');
INSERT INTO `school_department` VALUES ('31', '3', '3');
INSERT INTO `school_department` VALUES ('32', '3', '4');
INSERT INTO `school_department` VALUES ('33', '3', '5');
INSERT INTO `school_department` VALUES ('34', '3', '6');
INSERT INTO `school_department` VALUES ('35', '3', '7');
INSERT INTO `school_department` VALUES ('36', '3', '8');
INSERT INTO `school_department` VALUES ('37', '3', '9');
INSERT INTO `school_department` VALUES ('38', '3', '10');
INSERT INTO `school_department` VALUES ('39', '3', '11');
INSERT INTO `school_department` VALUES ('40', '3', '12');
INSERT INTO `school_department` VALUES ('41', '3', '13');
INSERT INTO `school_department` VALUES ('42', '3', '14');
INSERT INTO `school_department` VALUES ('43', '4', '1');
INSERT INTO `school_department` VALUES ('44', '4', '2');
INSERT INTO `school_department` VALUES ('45', '4', '3');
INSERT INTO `school_department` VALUES ('46', '4', '4');
INSERT INTO `school_department` VALUES ('47', '4', '5');
INSERT INTO `school_department` VALUES ('48', '4', '6');
INSERT INTO `school_department` VALUES ('49', '4', '7');
INSERT INTO `school_department` VALUES ('50', '4', '8');
INSERT INTO `school_department` VALUES ('51', '4', '9');
INSERT INTO `school_department` VALUES ('52', '4', '10');
INSERT INTO `school_department` VALUES ('53', '4', '11');
INSERT INTO `school_department` VALUES ('54', '4', '12');
INSERT INTO `school_department` VALUES ('55', '4', '13');
INSERT INTO `school_department` VALUES ('56', '4', '14');
INSERT INTO `school_department` VALUES ('57', '5', '1');
INSERT INTO `school_department` VALUES ('58', '5', '2');
INSERT INTO `school_department` VALUES ('59', '5', '3');
INSERT INTO `school_department` VALUES ('60', '5', '4');
INSERT INTO `school_department` VALUES ('61', '5', '5');
INSERT INTO `school_department` VALUES ('62', '5', '6');
INSERT INTO `school_department` VALUES ('63', '5', '7');
INSERT INTO `school_department` VALUES ('64', '5', '8');
INSERT INTO `school_department` VALUES ('65', '5', '9');
INSERT INTO `school_department` VALUES ('66', '5', '10');
INSERT INTO `school_department` VALUES ('67', '5', '11');
INSERT INTO `school_department` VALUES ('68', '5', '12');
INSERT INTO `school_department` VALUES ('69', '5', '13');
INSERT INTO `school_department` VALUES ('70', '5', '14');
INSERT INTO `school_department` VALUES ('71', '6', '1');
INSERT INTO `school_department` VALUES ('72', '6', '2');
INSERT INTO `school_department` VALUES ('73', '6', '3');
INSERT INTO `school_department` VALUES ('74', '6', '4');
INSERT INTO `school_department` VALUES ('75', '6', '5');
INSERT INTO `school_department` VALUES ('76', '6', '6');
INSERT INTO `school_department` VALUES ('77', '6', '7');
INSERT INTO `school_department` VALUES ('78', '6', '8');
INSERT INTO `school_department` VALUES ('79', '6', '9');
INSERT INTO `school_department` VALUES ('80', '6', '10');
INSERT INTO `school_department` VALUES ('81', '6', '11');
INSERT INTO `school_department` VALUES ('82', '6', '12');
INSERT INTO `school_department` VALUES ('83', '6', '13');
INSERT INTO `school_department` VALUES ('84', '6', '14');
INSERT INTO `school_department` VALUES ('85', '7', '1');
INSERT INTO `school_department` VALUES ('86', '7', '2');
INSERT INTO `school_department` VALUES ('87', '7', '3');
INSERT INTO `school_department` VALUES ('88', '7', '4');
INSERT INTO `school_department` VALUES ('89', '7', '5');
INSERT INTO `school_department` VALUES ('90', '7', '6');
INSERT INTO `school_department` VALUES ('91', '7', '7');
INSERT INTO `school_department` VALUES ('92', '7', '8');
INSERT INTO `school_department` VALUES ('93', '7', '9');
INSERT INTO `school_department` VALUES ('94', '7', '10');
INSERT INTO `school_department` VALUES ('95', '7', '11');
INSERT INTO `school_department` VALUES ('96', '7', '12');
INSERT INTO `school_department` VALUES ('97', '7', '13');
INSERT INTO `school_department` VALUES ('98', '7', '14');
INSERT INTO `school_department` VALUES ('99', '8', '1');
INSERT INTO `school_department` VALUES ('100', '8', '2');
INSERT INTO `school_department` VALUES ('101', '8', '3');
INSERT INTO `school_department` VALUES ('102', '8', '4');
INSERT INTO `school_department` VALUES ('103', '8', '5');
INSERT INTO `school_department` VALUES ('104', '8', '6');
INSERT INTO `school_department` VALUES ('105', '8', '7');
INSERT INTO `school_department` VALUES ('106', '8', '8');
INSERT INTO `school_department` VALUES ('107', '8', '9');
INSERT INTO `school_department` VALUES ('108', '8', '10');
INSERT INTO `school_department` VALUES ('109', '8', '11');
INSERT INTO `school_department` VALUES ('110', '8', '12');
INSERT INTO `school_department` VALUES ('111', '8', '13');
INSERT INTO `school_department` VALUES ('112', '8', '14');
INSERT INTO `school_department` VALUES ('113', '9', '1');
INSERT INTO `school_department` VALUES ('114', '9', '2');
INSERT INTO `school_department` VALUES ('115', '9', '3');
INSERT INTO `school_department` VALUES ('116', '9', '4');
INSERT INTO `school_department` VALUES ('117', '9', '5');
INSERT INTO `school_department` VALUES ('118', '9', '6');
INSERT INTO `school_department` VALUES ('119', '9', '7');
INSERT INTO `school_department` VALUES ('120', '9', '8');
INSERT INTO `school_department` VALUES ('121', '9', '9');
INSERT INTO `school_department` VALUES ('122', '9', '10');
INSERT INTO `school_department` VALUES ('123', '9', '11');
INSERT INTO `school_department` VALUES ('124', '9', '12');
INSERT INTO `school_department` VALUES ('125', '9', '13');
INSERT INTO `school_department` VALUES ('126', '9', '14');
INSERT INTO `school_department` VALUES ('127', '10', '1');
INSERT INTO `school_department` VALUES ('128', '10', '2');
INSERT INTO `school_department` VALUES ('129', '10', '3');
INSERT INTO `school_department` VALUES ('130', '10', '4');
INSERT INTO `school_department` VALUES ('131', '10', '5');
INSERT INTO `school_department` VALUES ('132', '10', '6');
INSERT INTO `school_department` VALUES ('133', '10', '7');
INSERT INTO `school_department` VALUES ('134', '10', '8');
INSERT INTO `school_department` VALUES ('135', '10', '9');
INSERT INTO `school_department` VALUES ('136', '10', '10');
INSERT INTO `school_department` VALUES ('137', '10', '11');
INSERT INTO `school_department` VALUES ('138', '10', '12');
INSERT INTO `school_department` VALUES ('139', '10', '13');
INSERT INTO `school_department` VALUES ('140', '10', '14');
INSERT INTO `school_department` VALUES ('141', '11', '1');
INSERT INTO `school_department` VALUES ('142', '11', '2');
INSERT INTO `school_department` VALUES ('143', '11', '3');
INSERT INTO `school_department` VALUES ('144', '11', '4');
INSERT INTO `school_department` VALUES ('145', '11', '5');
INSERT INTO `school_department` VALUES ('146', '11', '6');
INSERT INTO `school_department` VALUES ('147', '11', '7');
INSERT INTO `school_department` VALUES ('148', '11', '8');
INSERT INTO `school_department` VALUES ('149', '11', '9');
INSERT INTO `school_department` VALUES ('150', '11', '10');
INSERT INTO `school_department` VALUES ('151', '11', '11');
INSERT INTO `school_department` VALUES ('152', '11', '12');
INSERT INTO `school_department` VALUES ('153', '11', '13');
INSERT INTO `school_department` VALUES ('154', '11', '14');
INSERT INTO `school_department` VALUES ('155', '12', '1');
INSERT INTO `school_department` VALUES ('156', '12', '2');
INSERT INTO `school_department` VALUES ('157', '12', '3');
INSERT INTO `school_department` VALUES ('158', '12', '4');
INSERT INTO `school_department` VALUES ('159', '12', '5');
INSERT INTO `school_department` VALUES ('160', '12', '6');
INSERT INTO `school_department` VALUES ('161', '12', '7');
INSERT INTO `school_department` VALUES ('162', '12', '8');
INSERT INTO `school_department` VALUES ('163', '12', '9');
INSERT INTO `school_department` VALUES ('164', '12', '10');
INSERT INTO `school_department` VALUES ('165', '12', '11');
INSERT INTO `school_department` VALUES ('166', '12', '12');
INSERT INTO `school_department` VALUES ('167', '12', '13');
INSERT INTO `school_department` VALUES ('168', '12', '14');
INSERT INTO `school_department` VALUES ('169', '13', '1');
INSERT INTO `school_department` VALUES ('170', '13', '2');
INSERT INTO `school_department` VALUES ('171', '13', '3');
INSERT INTO `school_department` VALUES ('172', '13', '4');
INSERT INTO `school_department` VALUES ('173', '13', '5');
INSERT INTO `school_department` VALUES ('174', '13', '6');
INSERT INTO `school_department` VALUES ('175', '13', '7');
INSERT INTO `school_department` VALUES ('176', '13', '8');
INSERT INTO `school_department` VALUES ('177', '13', '9');
INSERT INTO `school_department` VALUES ('178', '13', '10');
INSERT INTO `school_department` VALUES ('179', '13', '11');
INSERT INTO `school_department` VALUES ('180', '13', '12');
INSERT INTO `school_department` VALUES ('181', '13', '13');
INSERT INTO `school_department` VALUES ('182', '13', '14');
INSERT INTO `school_department` VALUES ('183', '14', '1');
INSERT INTO `school_department` VALUES ('184', '14', '2');
INSERT INTO `school_department` VALUES ('185', '14', '3');
INSERT INTO `school_department` VALUES ('186', '14', '4');
INSERT INTO `school_department` VALUES ('187', '14', '5');
INSERT INTO `school_department` VALUES ('188', '14', '6');
INSERT INTO `school_department` VALUES ('189', '14', '7');
INSERT INTO `school_department` VALUES ('190', '14', '8');
INSERT INTO `school_department` VALUES ('191', '14', '9');
INSERT INTO `school_department` VALUES ('192', '14', '10');
INSERT INTO `school_department` VALUES ('193', '14', '11');
INSERT INTO `school_department` VALUES ('194', '14', '12');
INSERT INTO `school_department` VALUES ('195', '14', '13');
INSERT INTO `school_department` VALUES ('196', '14', '14');
INSERT INTO `school_department` VALUES ('197', '15', '1');
INSERT INTO `school_department` VALUES ('198', '15', '2');
INSERT INTO `school_department` VALUES ('199', '15', '3');
INSERT INTO `school_department` VALUES ('200', '15', '4');
INSERT INTO `school_department` VALUES ('201', '15', '5');
INSERT INTO `school_department` VALUES ('202', '15', '6');
INSERT INTO `school_department` VALUES ('203', '15', '7');
INSERT INTO `school_department` VALUES ('204', '15', '8');
INSERT INTO `school_department` VALUES ('205', '15', '9');
INSERT INTO `school_department` VALUES ('206', '15', '10');
INSERT INTO `school_department` VALUES ('207', '15', '11');
INSERT INTO `school_department` VALUES ('208', '15', '12');
INSERT INTO `school_department` VALUES ('209', '15', '13');
INSERT INTO `school_department` VALUES ('210', '15', '14');
INSERT INTO `school_department` VALUES ('211', '16', '1');
INSERT INTO `school_department` VALUES ('212', '16', '2');
INSERT INTO `school_department` VALUES ('213', '16', '3');
INSERT INTO `school_department` VALUES ('214', '16', '4');
INSERT INTO `school_department` VALUES ('215', '16', '5');
INSERT INTO `school_department` VALUES ('216', '16', '6');
INSERT INTO `school_department` VALUES ('217', '16', '7');
INSERT INTO `school_department` VALUES ('218', '16', '8');
INSERT INTO `school_department` VALUES ('219', '16', '9');
INSERT INTO `school_department` VALUES ('220', '16', '10');
INSERT INTO `school_department` VALUES ('221', '16', '11');
INSERT INTO `school_department` VALUES ('222', '16', '12');
INSERT INTO `school_department` VALUES ('223', '16', '13');
INSERT INTO `school_department` VALUES ('224', '16', '14');
INSERT INTO `school_department` VALUES ('225', '17', '1');
INSERT INTO `school_department` VALUES ('226', '17', '2');
INSERT INTO `school_department` VALUES ('227', '17', '3');
INSERT INTO `school_department` VALUES ('228', '17', '4');
INSERT INTO `school_department` VALUES ('229', '17', '5');
INSERT INTO `school_department` VALUES ('230', '17', '6');
INSERT INTO `school_department` VALUES ('231', '17', '7');
INSERT INTO `school_department` VALUES ('232', '17', '8');
INSERT INTO `school_department` VALUES ('233', '17', '9');
INSERT INTO `school_department` VALUES ('234', '17', '10');
INSERT INTO `school_department` VALUES ('235', '17', '11');
INSERT INTO `school_department` VALUES ('236', '17', '12');
INSERT INTO `school_department` VALUES ('237', '17', '13');
INSERT INTO `school_department` VALUES ('238', '17', '14');
INSERT INTO `school_department` VALUES ('239', '18', '1');
INSERT INTO `school_department` VALUES ('240', '18', '2');
INSERT INTO `school_department` VALUES ('241', '18', '3');
INSERT INTO `school_department` VALUES ('242', '18', '4');
INSERT INTO `school_department` VALUES ('243', '18', '5');
INSERT INTO `school_department` VALUES ('244', '18', '6');
INSERT INTO `school_department` VALUES ('245', '18', '7');
INSERT INTO `school_department` VALUES ('246', '18', '8');
INSERT INTO `school_department` VALUES ('247', '18', '9');
INSERT INTO `school_department` VALUES ('248', '18', '10');
INSERT INTO `school_department` VALUES ('249', '18', '11');
INSERT INTO `school_department` VALUES ('250', '18', '12');
INSERT INTO `school_department` VALUES ('251', '18', '13');
INSERT INTO `school_department` VALUES ('252', '18', '14');
INSERT INTO `school_department` VALUES ('253', '19', '1');
INSERT INTO `school_department` VALUES ('254', '19', '2');
INSERT INTO `school_department` VALUES ('255', '19', '3');
INSERT INTO `school_department` VALUES ('256', '19', '4');
INSERT INTO `school_department` VALUES ('257', '19', '5');
INSERT INTO `school_department` VALUES ('258', '19', '6');
INSERT INTO `school_department` VALUES ('259', '19', '7');
INSERT INTO `school_department` VALUES ('260', '19', '8');
INSERT INTO `school_department` VALUES ('261', '19', '9');
INSERT INTO `school_department` VALUES ('262', '19', '10');
INSERT INTO `school_department` VALUES ('263', '19', '11');
INSERT INTO `school_department` VALUES ('264', '19', '12');
INSERT INTO `school_department` VALUES ('265', '19', '13');
INSERT INTO `school_department` VALUES ('266', '19', '14');
INSERT INTO `school_department` VALUES ('267', '20', '1');
INSERT INTO `school_department` VALUES ('268', '20', '2');
INSERT INTO `school_department` VALUES ('269', '20', '3');
INSERT INTO `school_department` VALUES ('270', '20', '4');
INSERT INTO `school_department` VALUES ('271', '20', '5');
INSERT INTO `school_department` VALUES ('272', '20', '6');
INSERT INTO `school_department` VALUES ('273', '20', '7');
INSERT INTO `school_department` VALUES ('274', '20', '8');
INSERT INTO `school_department` VALUES ('275', '20', '9');
INSERT INTO `school_department` VALUES ('276', '20', '10');
INSERT INTO `school_department` VALUES ('277', '20', '11');
INSERT INTO `school_department` VALUES ('278', '20', '12');
INSERT INTO `school_department` VALUES ('279', '20', '13');
INSERT INTO `school_department` VALUES ('280', '20', '14');
INSERT INTO `school_department` VALUES ('281', '21', '1');
INSERT INTO `school_department` VALUES ('282', '21', '2');
INSERT INTO `school_department` VALUES ('283', '21', '3');
INSERT INTO `school_department` VALUES ('284', '21', '4');
INSERT INTO `school_department` VALUES ('285', '21', '5');
INSERT INTO `school_department` VALUES ('286', '21', '6');
INSERT INTO `school_department` VALUES ('287', '21', '7');
INSERT INTO `school_department` VALUES ('288', '21', '8');
INSERT INTO `school_department` VALUES ('289', '21', '9');
INSERT INTO `school_department` VALUES ('290', '21', '10');
INSERT INTO `school_department` VALUES ('291', '21', '11');
INSERT INTO `school_department` VALUES ('292', '21', '12');
INSERT INTO `school_department` VALUES ('293', '21', '13');
INSERT INTO `school_department` VALUES ('294', '21', '14');
INSERT INTO `school_department` VALUES ('295', '22', '1');
INSERT INTO `school_department` VALUES ('296', '22', '2');
INSERT INTO `school_department` VALUES ('297', '22', '3');
INSERT INTO `school_department` VALUES ('298', '22', '4');
INSERT INTO `school_department` VALUES ('299', '22', '5');
INSERT INTO `school_department` VALUES ('300', '22', '6');
INSERT INTO `school_department` VALUES ('301', '22', '7');
INSERT INTO `school_department` VALUES ('302', '22', '8');
INSERT INTO `school_department` VALUES ('303', '22', '9');
INSERT INTO `school_department` VALUES ('304', '22', '10');
INSERT INTO `school_department` VALUES ('305', '22', '11');
INSERT INTO `school_department` VALUES ('306', '22', '12');
INSERT INTO `school_department` VALUES ('307', '22', '13');
INSERT INTO `school_department` VALUES ('308', '22', '14');
INSERT INTO `school_department` VALUES ('309', '23', '1');
INSERT INTO `school_department` VALUES ('310', '23', '2');
INSERT INTO `school_department` VALUES ('311', '23', '3');
INSERT INTO `school_department` VALUES ('312', '23', '4');
INSERT INTO `school_department` VALUES ('313', '23', '5');
INSERT INTO `school_department` VALUES ('314', '23', '6');
INSERT INTO `school_department` VALUES ('315', '23', '7');
INSERT INTO `school_department` VALUES ('316', '23', '8');
INSERT INTO `school_department` VALUES ('317', '23', '9');
INSERT INTO `school_department` VALUES ('318', '23', '10');
INSERT INTO `school_department` VALUES ('319', '23', '11');
INSERT INTO `school_department` VALUES ('320', '23', '12');
INSERT INTO `school_department` VALUES ('321', '23', '13');
INSERT INTO `school_department` VALUES ('322', '23', '14');
INSERT INTO `school_department` VALUES ('323', '24', '1');
INSERT INTO `school_department` VALUES ('324', '24', '2');
INSERT INTO `school_department` VALUES ('325', '24', '3');
INSERT INTO `school_department` VALUES ('326', '24', '4');
INSERT INTO `school_department` VALUES ('327', '24', '5');
INSERT INTO `school_department` VALUES ('328', '24', '6');
INSERT INTO `school_department` VALUES ('329', '24', '7');
INSERT INTO `school_department` VALUES ('330', '24', '8');
INSERT INTO `school_department` VALUES ('331', '24', '9');
INSERT INTO `school_department` VALUES ('332', '24', '10');
INSERT INTO `school_department` VALUES ('333', '24', '11');
INSERT INTO `school_department` VALUES ('334', '24', '12');
INSERT INTO `school_department` VALUES ('335', '24', '13');
INSERT INTO `school_department` VALUES ('336', '24', '14');
INSERT INTO `school_department` VALUES ('337', '25', '1');
INSERT INTO `school_department` VALUES ('338', '25', '2');
INSERT INTO `school_department` VALUES ('339', '25', '3');
INSERT INTO `school_department` VALUES ('340', '25', '4');
INSERT INTO `school_department` VALUES ('341', '25', '5');
INSERT INTO `school_department` VALUES ('342', '25', '6');
INSERT INTO `school_department` VALUES ('343', '25', '7');
INSERT INTO `school_department` VALUES ('344', '25', '8');
INSERT INTO `school_department` VALUES ('345', '25', '9');
INSERT INTO `school_department` VALUES ('346', '25', '10');
INSERT INTO `school_department` VALUES ('347', '25', '11');
INSERT INTO `school_department` VALUES ('348', '25', '12');
INSERT INTO `school_department` VALUES ('349', '25', '13');
INSERT INTO `school_department` VALUES ('350', '25', '14');
INSERT INTO `school_department` VALUES ('351', '26', '1');
INSERT INTO `school_department` VALUES ('352', '26', '2');
INSERT INTO `school_department` VALUES ('353', '26', '3');
INSERT INTO `school_department` VALUES ('354', '26', '4');
INSERT INTO `school_department` VALUES ('355', '26', '5');
INSERT INTO `school_department` VALUES ('356', '26', '6');
INSERT INTO `school_department` VALUES ('357', '26', '7');
INSERT INTO `school_department` VALUES ('358', '26', '8');
INSERT INTO `school_department` VALUES ('359', '26', '9');
INSERT INTO `school_department` VALUES ('360', '26', '10');
INSERT INTO `school_department` VALUES ('361', '26', '11');
INSERT INTO `school_department` VALUES ('362', '26', '12');
INSERT INTO `school_department` VALUES ('363', '26', '13');
INSERT INTO `school_department` VALUES ('364', '26', '14');
INSERT INTO `school_department` VALUES ('365', '27', '1');
INSERT INTO `school_department` VALUES ('366', '27', '2');
INSERT INTO `school_department` VALUES ('367', '27', '3');
INSERT INTO `school_department` VALUES ('368', '27', '4');
INSERT INTO `school_department` VALUES ('369', '27', '5');
INSERT INTO `school_department` VALUES ('370', '27', '6');
INSERT INTO `school_department` VALUES ('371', '27', '7');
INSERT INTO `school_department` VALUES ('372', '27', '8');
INSERT INTO `school_department` VALUES ('373', '27', '9');
INSERT INTO `school_department` VALUES ('374', '27', '10');
INSERT INTO `school_department` VALUES ('375', '27', '11');
INSERT INTO `school_department` VALUES ('376', '27', '12');
INSERT INTO `school_department` VALUES ('377', '27', '13');
INSERT INTO `school_department` VALUES ('378', '27', '14');
INSERT INTO `school_department` VALUES ('379', '28', '1');
INSERT INTO `school_department` VALUES ('380', '28', '2');
INSERT INTO `school_department` VALUES ('381', '28', '3');
INSERT INTO `school_department` VALUES ('382', '28', '4');
INSERT INTO `school_department` VALUES ('383', '28', '5');
INSERT INTO `school_department` VALUES ('384', '28', '6');
INSERT INTO `school_department` VALUES ('385', '28', '7');
INSERT INTO `school_department` VALUES ('386', '28', '8');
INSERT INTO `school_department` VALUES ('387', '28', '9');
INSERT INTO `school_department` VALUES ('388', '28', '10');
INSERT INTO `school_department` VALUES ('389', '28', '11');
INSERT INTO `school_department` VALUES ('390', '28', '12');
INSERT INTO `school_department` VALUES ('391', '28', '13');
INSERT INTO `school_department` VALUES ('392', '28', '14');
INSERT INTO `school_department` VALUES ('393', '29', '1');
INSERT INTO `school_department` VALUES ('394', '29', '2');
INSERT INTO `school_department` VALUES ('395', '29', '3');
INSERT INTO `school_department` VALUES ('396', '29', '4');
INSERT INTO `school_department` VALUES ('397', '29', '5');
INSERT INTO `school_department` VALUES ('398', '29', '6');
INSERT INTO `school_department` VALUES ('399', '29', '7');
INSERT INTO `school_department` VALUES ('400', '29', '8');
INSERT INTO `school_department` VALUES ('401', '29', '9');
INSERT INTO `school_department` VALUES ('402', '29', '10');
INSERT INTO `school_department` VALUES ('403', '29', '11');
INSERT INTO `school_department` VALUES ('404', '29', '12');
INSERT INTO `school_department` VALUES ('405', '29', '13');
INSERT INTO `school_department` VALUES ('406', '29', '14');
INSERT INTO `school_department` VALUES ('407', '30', '1');
INSERT INTO `school_department` VALUES ('408', '30', '2');
INSERT INTO `school_department` VALUES ('409', '30', '3');
INSERT INTO `school_department` VALUES ('410', '30', '4');
INSERT INTO `school_department` VALUES ('411', '30', '5');
INSERT INTO `school_department` VALUES ('412', '30', '6');
INSERT INTO `school_department` VALUES ('413', '30', '7');
INSERT INTO `school_department` VALUES ('414', '30', '8');
INSERT INTO `school_department` VALUES ('415', '30', '9');
INSERT INTO `school_department` VALUES ('416', '30', '10');
INSERT INTO `school_department` VALUES ('417', '30', '11');
INSERT INTO `school_department` VALUES ('418', '30', '12');
INSERT INTO `school_department` VALUES ('419', '30', '13');
INSERT INTO `school_department` VALUES ('420', '30', '14');
INSERT INTO `school_department` VALUES ('421', '31', '1');
INSERT INTO `school_department` VALUES ('422', '31', '2');
INSERT INTO `school_department` VALUES ('423', '31', '3');
INSERT INTO `school_department` VALUES ('424', '31', '4');
INSERT INTO `school_department` VALUES ('425', '31', '5');
INSERT INTO `school_department` VALUES ('426', '31', '6');
INSERT INTO `school_department` VALUES ('427', '31', '7');
INSERT INTO `school_department` VALUES ('428', '31', '8');
INSERT INTO `school_department` VALUES ('429', '31', '9');
INSERT INTO `school_department` VALUES ('430', '31', '10');
INSERT INTO `school_department` VALUES ('431', '31', '11');
INSERT INTO `school_department` VALUES ('432', '31', '12');
INSERT INTO `school_department` VALUES ('433', '31', '13');
INSERT INTO `school_department` VALUES ('434', '31', '14');
INSERT INTO `school_department` VALUES ('435', '32', '1');
INSERT INTO `school_department` VALUES ('436', '32', '2');
INSERT INTO `school_department` VALUES ('437', '32', '3');
INSERT INTO `school_department` VALUES ('438', '32', '4');
INSERT INTO `school_department` VALUES ('439', '32', '5');
INSERT INTO `school_department` VALUES ('440', '32', '6');
INSERT INTO `school_department` VALUES ('441', '32', '7');
INSERT INTO `school_department` VALUES ('442', '32', '8');
INSERT INTO `school_department` VALUES ('443', '32', '9');
INSERT INTO `school_department` VALUES ('444', '32', '10');
INSERT INTO `school_department` VALUES ('445', '32', '11');
INSERT INTO `school_department` VALUES ('446', '32', '12');
INSERT INTO `school_department` VALUES ('447', '32', '13');
INSERT INTO `school_department` VALUES ('448', '32', '14');
INSERT INTO `school_department` VALUES ('449', '33', '1');
INSERT INTO `school_department` VALUES ('450', '33', '2');
INSERT INTO `school_department` VALUES ('451', '33', '3');
INSERT INTO `school_department` VALUES ('452', '33', '4');
INSERT INTO `school_department` VALUES ('453', '33', '5');
INSERT INTO `school_department` VALUES ('454', '33', '6');
INSERT INTO `school_department` VALUES ('455', '33', '7');
INSERT INTO `school_department` VALUES ('456', '33', '8');
INSERT INTO `school_department` VALUES ('457', '33', '9');
INSERT INTO `school_department` VALUES ('458', '33', '10');
INSERT INTO `school_department` VALUES ('459', '33', '11');
INSERT INTO `school_department` VALUES ('460', '33', '12');
INSERT INTO `school_department` VALUES ('461', '33', '13');
INSERT INTO `school_department` VALUES ('462', '33', '14');
INSERT INTO `school_department` VALUES ('463', '34', '1');
INSERT INTO `school_department` VALUES ('464', '34', '2');
INSERT INTO `school_department` VALUES ('465', '34', '3');
INSERT INTO `school_department` VALUES ('466', '34', '4');
INSERT INTO `school_department` VALUES ('467', '34', '5');
INSERT INTO `school_department` VALUES ('468', '34', '6');
INSERT INTO `school_department` VALUES ('469', '34', '7');
INSERT INTO `school_department` VALUES ('470', '34', '8');
INSERT INTO `school_department` VALUES ('471', '34', '9');
INSERT INTO `school_department` VALUES ('472', '34', '10');
INSERT INTO `school_department` VALUES ('473', '34', '11');
INSERT INTO `school_department` VALUES ('474', '34', '12');
INSERT INTO `school_department` VALUES ('475', '34', '13');
INSERT INTO `school_department` VALUES ('476', '34', '14');
INSERT INTO `school_department` VALUES ('477', '35', '1');
INSERT INTO `school_department` VALUES ('478', '35', '2');
INSERT INTO `school_department` VALUES ('479', '35', '3');
INSERT INTO `school_department` VALUES ('480', '35', '4');
INSERT INTO `school_department` VALUES ('481', '35', '5');
INSERT INTO `school_department` VALUES ('482', '35', '6');
INSERT INTO `school_department` VALUES ('483', '35', '7');
INSERT INTO `school_department` VALUES ('484', '35', '8');
INSERT INTO `school_department` VALUES ('485', '35', '9');
INSERT INTO `school_department` VALUES ('486', '35', '10');
INSERT INTO `school_department` VALUES ('487', '35', '11');
INSERT INTO `school_department` VALUES ('488', '35', '12');
INSERT INTO `school_department` VALUES ('489', '35', '13');
INSERT INTO `school_department` VALUES ('490', '35', '14');
INSERT INTO `school_department` VALUES ('491', '36', '1');
INSERT INTO `school_department` VALUES ('492', '36', '2');
INSERT INTO `school_department` VALUES ('493', '36', '3');
INSERT INTO `school_department` VALUES ('494', '36', '4');
INSERT INTO `school_department` VALUES ('495', '36', '5');
INSERT INTO `school_department` VALUES ('496', '36', '6');
INSERT INTO `school_department` VALUES ('497', '36', '7');
INSERT INTO `school_department` VALUES ('498', '36', '8');
INSERT INTO `school_department` VALUES ('499', '36', '9');
INSERT INTO `school_department` VALUES ('500', '36', '10');
INSERT INTO `school_department` VALUES ('501', '36', '11');
INSERT INTO `school_department` VALUES ('502', '36', '12');
INSERT INTO `school_department` VALUES ('503', '36', '13');
INSERT INTO `school_department` VALUES ('504', '36', '14');
INSERT INTO `school_department` VALUES ('505', '37', '1');
INSERT INTO `school_department` VALUES ('506', '37', '2');
INSERT INTO `school_department` VALUES ('507', '37', '3');
INSERT INTO `school_department` VALUES ('508', '37', '4');
INSERT INTO `school_department` VALUES ('509', '37', '5');
INSERT INTO `school_department` VALUES ('510', '37', '6');
INSERT INTO `school_department` VALUES ('511', '37', '7');
INSERT INTO `school_department` VALUES ('512', '37', '8');
INSERT INTO `school_department` VALUES ('513', '37', '9');
INSERT INTO `school_department` VALUES ('514', '37', '10');
INSERT INTO `school_department` VALUES ('515', '37', '11');
INSERT INTO `school_department` VALUES ('516', '37', '12');
INSERT INTO `school_department` VALUES ('517', '37', '13');
INSERT INTO `school_department` VALUES ('518', '37', '14');
INSERT INTO `school_department` VALUES ('519', '38', '1');
INSERT INTO `school_department` VALUES ('520', '38', '2');
INSERT INTO `school_department` VALUES ('521', '38', '3');
INSERT INTO `school_department` VALUES ('522', '38', '4');
INSERT INTO `school_department` VALUES ('523', '38', '5');
INSERT INTO `school_department` VALUES ('524', '38', '6');
INSERT INTO `school_department` VALUES ('525', '38', '7');
INSERT INTO `school_department` VALUES ('526', '38', '8');
INSERT INTO `school_department` VALUES ('527', '38', '9');
INSERT INTO `school_department` VALUES ('528', '38', '10');
INSERT INTO `school_department` VALUES ('529', '38', '11');
INSERT INTO `school_department` VALUES ('530', '38', '12');
INSERT INTO `school_department` VALUES ('531', '38', '13');
INSERT INTO `school_department` VALUES ('532', '38', '14');
INSERT INTO `school_department` VALUES ('533', '39', '1');
INSERT INTO `school_department` VALUES ('534', '39', '2');
INSERT INTO `school_department` VALUES ('535', '39', '3');
INSERT INTO `school_department` VALUES ('536', '39', '4');
INSERT INTO `school_department` VALUES ('537', '39', '5');
INSERT INTO `school_department` VALUES ('538', '39', '6');
INSERT INTO `school_department` VALUES ('539', '39', '7');
INSERT INTO `school_department` VALUES ('540', '39', '8');
INSERT INTO `school_department` VALUES ('541', '39', '9');
INSERT INTO `school_department` VALUES ('542', '39', '10');
INSERT INTO `school_department` VALUES ('543', '39', '11');
INSERT INTO `school_department` VALUES ('544', '39', '12');
INSERT INTO `school_department` VALUES ('545', '39', '13');
INSERT INTO `school_department` VALUES ('546', '39', '14');
INSERT INTO `school_department` VALUES ('547', '40', '1');
INSERT INTO `school_department` VALUES ('548', '40', '2');
INSERT INTO `school_department` VALUES ('549', '40', '3');
INSERT INTO `school_department` VALUES ('550', '40', '4');
INSERT INTO `school_department` VALUES ('551', '40', '5');
INSERT INTO `school_department` VALUES ('552', '40', '6');
INSERT INTO `school_department` VALUES ('553', '40', '7');
INSERT INTO `school_department` VALUES ('554', '40', '8');
INSERT INTO `school_department` VALUES ('555', '40', '9');
INSERT INTO `school_department` VALUES ('556', '40', '10');
INSERT INTO `school_department` VALUES ('557', '40', '11');
INSERT INTO `school_department` VALUES ('558', '40', '12');
INSERT INTO `school_department` VALUES ('559', '40', '13');
INSERT INTO `school_department` VALUES ('560', '40', '14');
INSERT INTO `school_department` VALUES ('561', '41', '1');
INSERT INTO `school_department` VALUES ('562', '41', '2');
INSERT INTO `school_department` VALUES ('563', '41', '3');
INSERT INTO `school_department` VALUES ('564', '41', '4');
INSERT INTO `school_department` VALUES ('565', '41', '5');
INSERT INTO `school_department` VALUES ('566', '41', '6');
INSERT INTO `school_department` VALUES ('567', '41', '7');
INSERT INTO `school_department` VALUES ('568', '41', '8');
INSERT INTO `school_department` VALUES ('569', '41', '9');
INSERT INTO `school_department` VALUES ('570', '41', '10');
INSERT INTO `school_department` VALUES ('571', '41', '11');
INSERT INTO `school_department` VALUES ('572', '41', '12');
INSERT INTO `school_department` VALUES ('573', '41', '13');
INSERT INTO `school_department` VALUES ('574', '41', '14');
INSERT INTO `school_department` VALUES ('575', '42', '1');
INSERT INTO `school_department` VALUES ('576', '42', '2');
INSERT INTO `school_department` VALUES ('577', '42', '3');
INSERT INTO `school_department` VALUES ('578', '42', '4');
INSERT INTO `school_department` VALUES ('579', '42', '5');
INSERT INTO `school_department` VALUES ('580', '42', '6');
INSERT INTO `school_department` VALUES ('581', '42', '7');
INSERT INTO `school_department` VALUES ('582', '42', '8');
INSERT INTO `school_department` VALUES ('583', '42', '9');
INSERT INTO `school_department` VALUES ('584', '42', '10');
INSERT INTO `school_department` VALUES ('585', '42', '11');
INSERT INTO `school_department` VALUES ('586', '42', '12');
INSERT INTO `school_department` VALUES ('587', '42', '13');
INSERT INTO `school_department` VALUES ('588', '42', '14');
INSERT INTO `school_department` VALUES ('589', '43', '1');
INSERT INTO `school_department` VALUES ('590', '43', '2');
INSERT INTO `school_department` VALUES ('591', '43', '3');
INSERT INTO `school_department` VALUES ('592', '43', '4');
INSERT INTO `school_department` VALUES ('593', '43', '5');
INSERT INTO `school_department` VALUES ('594', '43', '6');
INSERT INTO `school_department` VALUES ('595', '43', '7');
INSERT INTO `school_department` VALUES ('596', '43', '8');
INSERT INTO `school_department` VALUES ('597', '43', '9');
INSERT INTO `school_department` VALUES ('598', '43', '10');
INSERT INTO `school_department` VALUES ('599', '43', '11');
INSERT INTO `school_department` VALUES ('600', '43', '12');
INSERT INTO `school_department` VALUES ('601', '43', '13');
INSERT INTO `school_department` VALUES ('602', '43', '14');
INSERT INTO `school_department` VALUES ('603', '44', '1');
INSERT INTO `school_department` VALUES ('604', '44', '2');
INSERT INTO `school_department` VALUES ('605', '44', '3');
INSERT INTO `school_department` VALUES ('606', '44', '4');
INSERT INTO `school_department` VALUES ('607', '44', '5');
INSERT INTO `school_department` VALUES ('608', '44', '6');
INSERT INTO `school_department` VALUES ('609', '44', '7');
INSERT INTO `school_department` VALUES ('610', '44', '8');
INSERT INTO `school_department` VALUES ('611', '44', '9');
INSERT INTO `school_department` VALUES ('612', '44', '10');
INSERT INTO `school_department` VALUES ('613', '44', '11');
INSERT INTO `school_department` VALUES ('614', '44', '12');
INSERT INTO `school_department` VALUES ('615', '44', '13');
INSERT INTO `school_department` VALUES ('616', '44', '14');
INSERT INTO `school_department` VALUES ('617', '45', '1');
INSERT INTO `school_department` VALUES ('618', '45', '2');
INSERT INTO `school_department` VALUES ('619', '45', '3');
INSERT INTO `school_department` VALUES ('620', '45', '4');
INSERT INTO `school_department` VALUES ('621', '45', '5');
INSERT INTO `school_department` VALUES ('622', '45', '6');
INSERT INTO `school_department` VALUES ('623', '45', '7');
INSERT INTO `school_department` VALUES ('624', '45', '8');
INSERT INTO `school_department` VALUES ('625', '45', '9');
INSERT INTO `school_department` VALUES ('626', '45', '10');
INSERT INTO `school_department` VALUES ('627', '45', '11');
INSERT INTO `school_department` VALUES ('628', '45', '12');
INSERT INTO `school_department` VALUES ('629', '45', '13');
INSERT INTO `school_department` VALUES ('630', '45', '14');
INSERT INTO `school_department` VALUES ('631', '46', '1');
INSERT INTO `school_department` VALUES ('632', '46', '2');
INSERT INTO `school_department` VALUES ('633', '46', '3');
INSERT INTO `school_department` VALUES ('634', '46', '4');
INSERT INTO `school_department` VALUES ('635', '46', '5');
INSERT INTO `school_department` VALUES ('636', '46', '6');
INSERT INTO `school_department` VALUES ('637', '46', '7');
INSERT INTO `school_department` VALUES ('638', '46', '8');
INSERT INTO `school_department` VALUES ('639', '46', '9');
INSERT INTO `school_department` VALUES ('640', '46', '10');
INSERT INTO `school_department` VALUES ('641', '46', '11');
INSERT INTO `school_department` VALUES ('642', '46', '12');
INSERT INTO `school_department` VALUES ('643', '46', '13');
INSERT INTO `school_department` VALUES ('644', '46', '14');
INSERT INTO `school_department` VALUES ('645', '47', '1');
INSERT INTO `school_department` VALUES ('646', '47', '2');
INSERT INTO `school_department` VALUES ('647', '47', '3');
INSERT INTO `school_department` VALUES ('648', '47', '4');
INSERT INTO `school_department` VALUES ('649', '47', '5');
INSERT INTO `school_department` VALUES ('650', '47', '6');
INSERT INTO `school_department` VALUES ('651', '47', '7');
INSERT INTO `school_department` VALUES ('652', '47', '8');
INSERT INTO `school_department` VALUES ('653', '47', '9');
INSERT INTO `school_department` VALUES ('654', '47', '10');
INSERT INTO `school_department` VALUES ('655', '47', '11');
INSERT INTO `school_department` VALUES ('656', '47', '12');
INSERT INTO `school_department` VALUES ('657', '47', '13');
INSERT INTO `school_department` VALUES ('658', '47', '14');
INSERT INTO `school_department` VALUES ('659', '48', '1');
INSERT INTO `school_department` VALUES ('660', '48', '2');
INSERT INTO `school_department` VALUES ('661', '48', '3');
INSERT INTO `school_department` VALUES ('662', '48', '4');
INSERT INTO `school_department` VALUES ('663', '48', '5');
INSERT INTO `school_department` VALUES ('664', '48', '6');
INSERT INTO `school_department` VALUES ('665', '48', '7');
INSERT INTO `school_department` VALUES ('666', '48', '8');
INSERT INTO `school_department` VALUES ('667', '48', '9');
INSERT INTO `school_department` VALUES ('668', '48', '10');
INSERT INTO `school_department` VALUES ('669', '48', '11');
INSERT INTO `school_department` VALUES ('670', '48', '12');
INSERT INTO `school_department` VALUES ('671', '48', '13');
INSERT INTO `school_department` VALUES ('672', '48', '14');
INSERT INTO `school_department` VALUES ('673', '49', '1');
INSERT INTO `school_department` VALUES ('674', '49', '2');
INSERT INTO `school_department` VALUES ('675', '49', '3');
INSERT INTO `school_department` VALUES ('676', '49', '4');
INSERT INTO `school_department` VALUES ('677', '49', '5');
INSERT INTO `school_department` VALUES ('678', '49', '6');
INSERT INTO `school_department` VALUES ('679', '49', '7');
INSERT INTO `school_department` VALUES ('680', '49', '8');
INSERT INTO `school_department` VALUES ('681', '49', '9');
INSERT INTO `school_department` VALUES ('682', '49', '10');
INSERT INTO `school_department` VALUES ('683', '49', '11');
INSERT INTO `school_department` VALUES ('684', '49', '12');
INSERT INTO `school_department` VALUES ('685', '49', '13');
INSERT INTO `school_department` VALUES ('686', '49', '14');
INSERT INTO `school_department` VALUES ('687', '50', '1');
INSERT INTO `school_department` VALUES ('688', '50', '2');
INSERT INTO `school_department` VALUES ('689', '50', '3');
INSERT INTO `school_department` VALUES ('690', '50', '4');
INSERT INTO `school_department` VALUES ('691', '50', '5');
INSERT INTO `school_department` VALUES ('692', '50', '6');
INSERT INTO `school_department` VALUES ('693', '50', '7');
INSERT INTO `school_department` VALUES ('694', '50', '8');
INSERT INTO `school_department` VALUES ('695', '50', '9');
INSERT INTO `school_department` VALUES ('696', '50', '10');
INSERT INTO `school_department` VALUES ('697', '50', '11');
INSERT INTO `school_department` VALUES ('698', '50', '12');
INSERT INTO `school_department` VALUES ('699', '50', '13');
INSERT INTO `school_department` VALUES ('700', '50', '14');
INSERT INTO `school_department` VALUES ('701', '51', '1');
INSERT INTO `school_department` VALUES ('702', '51', '2');
INSERT INTO `school_department` VALUES ('703', '51', '3');
INSERT INTO `school_department` VALUES ('704', '51', '4');
INSERT INTO `school_department` VALUES ('705', '51', '5');
INSERT INTO `school_department` VALUES ('706', '51', '6');
INSERT INTO `school_department` VALUES ('707', '51', '7');
INSERT INTO `school_department` VALUES ('708', '51', '8');
INSERT INTO `school_department` VALUES ('709', '51', '9');
INSERT INTO `school_department` VALUES ('710', '51', '10');
INSERT INTO `school_department` VALUES ('711', '51', '11');
INSERT INTO `school_department` VALUES ('712', '51', '12');
INSERT INTO `school_department` VALUES ('713', '51', '13');
INSERT INTO `school_department` VALUES ('714', '51', '14');
INSERT INTO `school_department` VALUES ('715', '52', '1');
INSERT INTO `school_department` VALUES ('716', '52', '2');
INSERT INTO `school_department` VALUES ('717', '52', '3');
INSERT INTO `school_department` VALUES ('718', '52', '4');
INSERT INTO `school_department` VALUES ('719', '52', '5');
INSERT INTO `school_department` VALUES ('720', '52', '6');
INSERT INTO `school_department` VALUES ('721', '52', '7');
INSERT INTO `school_department` VALUES ('722', '52', '8');
INSERT INTO `school_department` VALUES ('723', '52', '9');
INSERT INTO `school_department` VALUES ('724', '52', '10');
INSERT INTO `school_department` VALUES ('725', '52', '11');
INSERT INTO `school_department` VALUES ('726', '52', '12');
INSERT INTO `school_department` VALUES ('727', '52', '13');
INSERT INTO `school_department` VALUES ('728', '52', '14');
INSERT INTO `school_department` VALUES ('729', '53', '1');
INSERT INTO `school_department` VALUES ('730', '53', '2');
INSERT INTO `school_department` VALUES ('731', '53', '3');
INSERT INTO `school_department` VALUES ('732', '53', '4');
INSERT INTO `school_department` VALUES ('733', '53', '5');
INSERT INTO `school_department` VALUES ('734', '53', '6');
INSERT INTO `school_department` VALUES ('735', '53', '7');
INSERT INTO `school_department` VALUES ('736', '53', '8');
INSERT INTO `school_department` VALUES ('737', '53', '9');
INSERT INTO `school_department` VALUES ('738', '53', '10');
INSERT INTO `school_department` VALUES ('739', '53', '11');
INSERT INTO `school_department` VALUES ('740', '53', '12');
INSERT INTO `school_department` VALUES ('741', '53', '13');
INSERT INTO `school_department` VALUES ('742', '53', '14');
INSERT INTO `school_department` VALUES ('743', '54', '1');
INSERT INTO `school_department` VALUES ('744', '54', '2');
INSERT INTO `school_department` VALUES ('745', '54', '3');
INSERT INTO `school_department` VALUES ('746', '54', '4');
INSERT INTO `school_department` VALUES ('747', '54', '5');
INSERT INTO `school_department` VALUES ('748', '54', '6');
INSERT INTO `school_department` VALUES ('749', '54', '7');
INSERT INTO `school_department` VALUES ('750', '54', '8');
INSERT INTO `school_department` VALUES ('751', '54', '9');
INSERT INTO `school_department` VALUES ('752', '54', '10');
INSERT INTO `school_department` VALUES ('753', '54', '11');
INSERT INTO `school_department` VALUES ('754', '54', '12');
INSERT INTO `school_department` VALUES ('755', '54', '13');
INSERT INTO `school_department` VALUES ('756', '54', '14');
INSERT INTO `school_department` VALUES ('757', '55', '1');
INSERT INTO `school_department` VALUES ('758', '55', '2');
INSERT INTO `school_department` VALUES ('759', '55', '3');
INSERT INTO `school_department` VALUES ('760', '55', '4');
INSERT INTO `school_department` VALUES ('761', '55', '5');
INSERT INTO `school_department` VALUES ('762', '55', '6');
INSERT INTO `school_department` VALUES ('763', '55', '7');
INSERT INTO `school_department` VALUES ('764', '55', '8');
INSERT INTO `school_department` VALUES ('765', '55', '9');
INSERT INTO `school_department` VALUES ('766', '55', '10');
INSERT INTO `school_department` VALUES ('767', '55', '11');
INSERT INTO `school_department` VALUES ('768', '55', '12');
INSERT INTO `school_department` VALUES ('769', '55', '13');
INSERT INTO `school_department` VALUES ('770', '55', '14');
INSERT INTO `school_department` VALUES ('771', '56', '1');
INSERT INTO `school_department` VALUES ('772', '56', '2');
INSERT INTO `school_department` VALUES ('773', '56', '3');
INSERT INTO `school_department` VALUES ('774', '56', '4');
INSERT INTO `school_department` VALUES ('775', '56', '5');
INSERT INTO `school_department` VALUES ('776', '56', '6');
INSERT INTO `school_department` VALUES ('777', '56', '7');
INSERT INTO `school_department` VALUES ('778', '56', '8');
INSERT INTO `school_department` VALUES ('779', '56', '9');
INSERT INTO `school_department` VALUES ('780', '56', '10');
INSERT INTO `school_department` VALUES ('781', '56', '11');
INSERT INTO `school_department` VALUES ('782', '56', '12');
INSERT INTO `school_department` VALUES ('783', '56', '13');
INSERT INTO `school_department` VALUES ('784', '56', '14');
INSERT INTO `school_department` VALUES ('785', '57', '1');
INSERT INTO `school_department` VALUES ('786', '57', '2');
INSERT INTO `school_department` VALUES ('787', '57', '3');
INSERT INTO `school_department` VALUES ('788', '57', '4');
INSERT INTO `school_department` VALUES ('789', '57', '5');
INSERT INTO `school_department` VALUES ('790', '57', '6');
INSERT INTO `school_department` VALUES ('791', '57', '7');
INSERT INTO `school_department` VALUES ('792', '57', '8');
INSERT INTO `school_department` VALUES ('793', '57', '9');
INSERT INTO `school_department` VALUES ('794', '57', '10');
INSERT INTO `school_department` VALUES ('795', '57', '11');
INSERT INTO `school_department` VALUES ('796', '57', '12');
INSERT INTO `school_department` VALUES ('797', '57', '13');
INSERT INTO `school_department` VALUES ('798', '57', '14');
INSERT INTO `school_department` VALUES ('799', '58', '1');
INSERT INTO `school_department` VALUES ('800', '58', '2');
INSERT INTO `school_department` VALUES ('801', '58', '3');
INSERT INTO `school_department` VALUES ('802', '58', '4');
INSERT INTO `school_department` VALUES ('803', '58', '5');
INSERT INTO `school_department` VALUES ('804', '58', '6');
INSERT INTO `school_department` VALUES ('805', '58', '7');
INSERT INTO `school_department` VALUES ('806', '58', '8');
INSERT INTO `school_department` VALUES ('807', '58', '9');
INSERT INTO `school_department` VALUES ('808', '58', '10');
INSERT INTO `school_department` VALUES ('809', '58', '11');
INSERT INTO `school_department` VALUES ('810', '58', '12');
INSERT INTO `school_department` VALUES ('811', '58', '13');
INSERT INTO `school_department` VALUES ('812', '58', '14');
INSERT INTO `school_department` VALUES ('813', '59', '1');
INSERT INTO `school_department` VALUES ('814', '59', '2');
INSERT INTO `school_department` VALUES ('815', '59', '3');
INSERT INTO `school_department` VALUES ('816', '59', '4');
INSERT INTO `school_department` VALUES ('817', '59', '5');
INSERT INTO `school_department` VALUES ('818', '59', '6');
INSERT INTO `school_department` VALUES ('819', '59', '7');
INSERT INTO `school_department` VALUES ('820', '59', '8');
INSERT INTO `school_department` VALUES ('821', '59', '9');
INSERT INTO `school_department` VALUES ('822', '59', '10');
INSERT INTO `school_department` VALUES ('823', '59', '11');
INSERT INTO `school_department` VALUES ('824', '59', '12');
INSERT INTO `school_department` VALUES ('825', '59', '13');
INSERT INTO `school_department` VALUES ('826', '59', '14');
INSERT INTO `school_department` VALUES ('827', '60', '1');
INSERT INTO `school_department` VALUES ('828', '60', '2');
INSERT INTO `school_department` VALUES ('829', '60', '3');
INSERT INTO `school_department` VALUES ('830', '60', '4');
INSERT INTO `school_department` VALUES ('831', '60', '5');
INSERT INTO `school_department` VALUES ('832', '60', '6');
INSERT INTO `school_department` VALUES ('833', '60', '7');
INSERT INTO `school_department` VALUES ('834', '60', '8');
INSERT INTO `school_department` VALUES ('835', '60', '9');
INSERT INTO `school_department` VALUES ('836', '60', '10');
INSERT INTO `school_department` VALUES ('837', '60', '11');
INSERT INTO `school_department` VALUES ('838', '60', '12');
INSERT INTO `school_department` VALUES ('839', '60', '13');
INSERT INTO `school_department` VALUES ('840', '60', '14');
INSERT INTO `school_department` VALUES ('841', '61', '1');
INSERT INTO `school_department` VALUES ('842', '61', '2');
INSERT INTO `school_department` VALUES ('843', '61', '3');
INSERT INTO `school_department` VALUES ('844', '61', '4');
INSERT INTO `school_department` VALUES ('845', '61', '5');
INSERT INTO `school_department` VALUES ('846', '61', '6');
INSERT INTO `school_department` VALUES ('847', '61', '7');
INSERT INTO `school_department` VALUES ('848', '61', '8');
INSERT INTO `school_department` VALUES ('849', '61', '9');
INSERT INTO `school_department` VALUES ('850', '61', '10');
INSERT INTO `school_department` VALUES ('851', '61', '11');
INSERT INTO `school_department` VALUES ('852', '61', '12');
INSERT INTO `school_department` VALUES ('853', '61', '13');
INSERT INTO `school_department` VALUES ('854', '61', '14');
INSERT INTO `school_department` VALUES ('855', '62', '1');
INSERT INTO `school_department` VALUES ('856', '62', '2');
INSERT INTO `school_department` VALUES ('857', '62', '3');
INSERT INTO `school_department` VALUES ('858', '62', '4');
INSERT INTO `school_department` VALUES ('859', '62', '5');
INSERT INTO `school_department` VALUES ('860', '62', '6');
INSERT INTO `school_department` VALUES ('861', '62', '7');
INSERT INTO `school_department` VALUES ('862', '62', '8');
INSERT INTO `school_department` VALUES ('863', '62', '9');
INSERT INTO `school_department` VALUES ('864', '62', '10');
INSERT INTO `school_department` VALUES ('865', '62', '11');
INSERT INTO `school_department` VALUES ('866', '62', '12');
INSERT INTO `school_department` VALUES ('867', '62', '13');
INSERT INTO `school_department` VALUES ('868', '62', '14');
INSERT INTO `school_department` VALUES ('869', '63', '1');
INSERT INTO `school_department` VALUES ('870', '63', '2');
INSERT INTO `school_department` VALUES ('871', '63', '3');
INSERT INTO `school_department` VALUES ('872', '63', '4');
INSERT INTO `school_department` VALUES ('873', '63', '5');
INSERT INTO `school_department` VALUES ('874', '63', '6');
INSERT INTO `school_department` VALUES ('875', '63', '7');
INSERT INTO `school_department` VALUES ('876', '63', '8');
INSERT INTO `school_department` VALUES ('877', '63', '9');
INSERT INTO `school_department` VALUES ('878', '63', '10');
INSERT INTO `school_department` VALUES ('879', '63', '11');
INSERT INTO `school_department` VALUES ('880', '63', '12');
INSERT INTO `school_department` VALUES ('881', '63', '13');
INSERT INTO `school_department` VALUES ('882', '63', '14');
INSERT INTO `school_department` VALUES ('883', '64', '1');
INSERT INTO `school_department` VALUES ('884', '64', '2');
INSERT INTO `school_department` VALUES ('885', '64', '3');
INSERT INTO `school_department` VALUES ('886', '64', '4');
INSERT INTO `school_department` VALUES ('887', '64', '5');
INSERT INTO `school_department` VALUES ('888', '64', '6');
INSERT INTO `school_department` VALUES ('889', '64', '7');
INSERT INTO `school_department` VALUES ('890', '64', '8');
INSERT INTO `school_department` VALUES ('891', '64', '9');
INSERT INTO `school_department` VALUES ('892', '64', '10');
INSERT INTO `school_department` VALUES ('893', '64', '11');
INSERT INTO `school_department` VALUES ('894', '64', '12');
INSERT INTO `school_department` VALUES ('895', '64', '13');
INSERT INTO `school_department` VALUES ('896', '64', '14');
INSERT INTO `school_department` VALUES ('897', '65', '1');
INSERT INTO `school_department` VALUES ('898', '65', '2');
INSERT INTO `school_department` VALUES ('899', '65', '3');
INSERT INTO `school_department` VALUES ('900', '65', '4');
INSERT INTO `school_department` VALUES ('901', '65', '5');
INSERT INTO `school_department` VALUES ('902', '65', '6');
INSERT INTO `school_department` VALUES ('903', '65', '7');
INSERT INTO `school_department` VALUES ('904', '65', '8');
INSERT INTO `school_department` VALUES ('905', '65', '9');
INSERT INTO `school_department` VALUES ('906', '65', '10');
INSERT INTO `school_department` VALUES ('907', '65', '11');
INSERT INTO `school_department` VALUES ('908', '65', '12');
INSERT INTO `school_department` VALUES ('909', '65', '13');
INSERT INTO `school_department` VALUES ('910', '65', '14');
INSERT INTO `school_department` VALUES ('911', '66', '1');
INSERT INTO `school_department` VALUES ('912', '66', '2');
INSERT INTO `school_department` VALUES ('913', '66', '3');
INSERT INTO `school_department` VALUES ('914', '66', '4');
INSERT INTO `school_department` VALUES ('915', '66', '5');
INSERT INTO `school_department` VALUES ('916', '66', '6');
INSERT INTO `school_department` VALUES ('917', '66', '7');
INSERT INTO `school_department` VALUES ('918', '66', '8');
INSERT INTO `school_department` VALUES ('919', '66', '9');
INSERT INTO `school_department` VALUES ('920', '66', '10');
INSERT INTO `school_department` VALUES ('921', '66', '11');
INSERT INTO `school_department` VALUES ('922', '66', '12');
INSERT INTO `school_department` VALUES ('923', '66', '13');
INSERT INTO `school_department` VALUES ('924', '66', '14');
INSERT INTO `school_department` VALUES ('925', '67', '1');
INSERT INTO `school_department` VALUES ('926', '67', '2');
INSERT INTO `school_department` VALUES ('927', '67', '3');
INSERT INTO `school_department` VALUES ('928', '67', '4');
INSERT INTO `school_department` VALUES ('929', '67', '5');
INSERT INTO `school_department` VALUES ('930', '67', '6');
INSERT INTO `school_department` VALUES ('931', '67', '7');
INSERT INTO `school_department` VALUES ('932', '67', '8');
INSERT INTO `school_department` VALUES ('933', '67', '9');
INSERT INTO `school_department` VALUES ('934', '67', '10');
INSERT INTO `school_department` VALUES ('935', '67', '11');
INSERT INTO `school_department` VALUES ('936', '67', '12');
INSERT INTO `school_department` VALUES ('937', '67', '13');
INSERT INTO `school_department` VALUES ('938', '67', '14');
INSERT INTO `school_department` VALUES ('939', '68', '1');
INSERT INTO `school_department` VALUES ('940', '68', '2');
INSERT INTO `school_department` VALUES ('941', '68', '3');
INSERT INTO `school_department` VALUES ('942', '68', '4');
INSERT INTO `school_department` VALUES ('943', '68', '5');
INSERT INTO `school_department` VALUES ('944', '68', '6');
INSERT INTO `school_department` VALUES ('945', '68', '7');
INSERT INTO `school_department` VALUES ('946', '68', '8');
INSERT INTO `school_department` VALUES ('947', '68', '9');
INSERT INTO `school_department` VALUES ('948', '68', '10');
INSERT INTO `school_department` VALUES ('949', '68', '11');
INSERT INTO `school_department` VALUES ('950', '68', '12');
INSERT INTO `school_department` VALUES ('951', '68', '13');
INSERT INTO `school_department` VALUES ('952', '68', '14');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `school_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `user_pwd` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `avatar` varchar(100) default NULL,
  `points` int(11) default NULL,
  `email` varchar(45) NOT NULL,
  `status` int(11) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `fk_user_school1_idx` (`school_id`),
  KEY `fk_user_department1_idx` (`department_id`),
  CONSTRAINT `fk_user_department1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_school1` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', '11080701', '123456', '漩涡鸣人', '', '30', '123456@163.com', '1');
INSERT INTO `user` VALUES ('2', '2', '2', '11080702', '123456', '宇智波佐助', '', '30', '123456@164.com', '1');
INSERT INTO `user` VALUES ('3', '3', '3', '11080703', '123456', '春野樱', '', '30', '123456@165.com', '1');
INSERT INTO `user` VALUES ('4', '4', '4', '11080704', '123456', '李洛克', '', '30', '123456@166.com', '1');
INSERT INTO `user` VALUES ('5', '5', '5', '11080705', '123456', '日向宁次', '', '30', '123456@167.com', '1');
INSERT INTO `user` VALUES ('6', '6', '6', '11080706', '123456', '日向雏田', '', '30', '123456@168.com', '1');
INSERT INTO `user` VALUES ('7', '7', '7', '11080707', '123456', '千手柱间', '', '30', '123456@169.com', '1');
INSERT INTO `user` VALUES ('8', '8', '8', '11080708', '123456', '千手扉间', '', '30', '123456@170.com', '1');
INSERT INTO `user` VALUES ('9', '9', '9', '11080709', '123456', '猿飞日斩', '', '30', '123456@171.com', '1');
INSERT INTO `user` VALUES ('10', '10', '10', '11080710', '123456', '波风水门', '', '30', '123456@172.com', '1');
