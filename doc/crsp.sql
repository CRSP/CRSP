/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : crsp

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2014-05-14 10:23:24
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
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) default NULL,
  `avatar` varchar(100) default NULL,
  `resource_count` int(11) NOT NULL,
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
  `id` int(11) NOT NULL,
  `path` varchar(45) NOT NULL,
  `code` varchar(45) NOT NULL,
  `amount` int(11) NOT NULL default '1',
  `size` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feature
-- ----------------------------
INSERT INTO `feature` VALUES ('1', '', '1', '1', null);
INSERT INTO `feature` VALUES ('2', '', '', '1', null);
INSERT INTO `feature` VALUES ('3', '', '', '1', null);
INSERT INTO `feature` VALUES ('4', '', '', '1', null);
INSERT INTO `feature` VALUES ('5', '', '', '1', null);
INSERT INTO `feature` VALUES ('6', '', '', '1', null);
INSERT INTO `feature` VALUES ('7', '', '', '1', null);
INSERT INTO `feature` VALUES ('8', '', '', '1', null);
INSERT INTO `feature` VALUES ('9', '', '', '1', null);
INSERT INTO `feature` VALUES ('10', '', '', '1', null);

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
  `id` int(11) NOT NULL,
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
  `description` varchar(255) default NULL,
  `avatar` varchar(100) default NULL,
  `resource_count` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_school_province_idx` (`province_id`),
  CONSTRAINT `fk_school_province` FOREIGN KEY (`province_id`) REFERENCES `province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES ('1', '1', '清华大学', '', '', '1');
INSERT INTO `school` VALUES ('2', '1', '北京大学', '', '', '2');
INSERT INTO `school` VALUES ('3', '2', '复旦大学', '', '', '3');
INSERT INTO `school` VALUES ('4', '2', '上海交通大学', '', '', '4');
INSERT INTO `school` VALUES ('5', '3', '重庆大学', '', '', '5');
INSERT INTO `school` VALUES ('6', '3', '重庆医科大学', '', '', '6');
INSERT INTO `school` VALUES ('7', '4', '天津大学', '', '', '7');
INSERT INTO `school` VALUES ('8', '4', '南开大学', '', '', '8');
INSERT INTO `school` VALUES ('9', '5', '河北大学', '', '', '9');
INSERT INTO `school` VALUES ('10', '5', '河北工业大学', '', '', '10');
INSERT INTO `school` VALUES ('11', '6', '山西大学', '', '', '11');
INSERT INTO `school` VALUES ('12', '6', '太原理工大学', '', '', '12');
INSERT INTO `school` VALUES ('13', '7', '辽东学院', '', '', '13');
INSERT INTO `school` VALUES ('14', '7', '沈阳音乐学院', '', '', '14');
INSERT INTO `school` VALUES ('15', '8', '吉林艺术学院', '', '', '15');
INSERT INTO `school` VALUES ('16', '8', '吉林工商学院', '', '', '16');
INSERT INTO `school` VALUES ('17', '9', '黑龙江工业学院', '', '', '17');
INSERT INTO `school` VALUES ('18', '9', '哈尔滨金融学院', '', '', '18');
INSERT INTO `school` VALUES ('19', '10', '南京艺术学院', '', '', '19');
INSERT INTO `school` VALUES ('20', '10', '常州大学', '', '', '20');
INSERT INTO `school` VALUES ('21', '11', '浙江大学', '', '', '21');
INSERT INTO `school` VALUES ('22', '11', '温州大学', '', '', '22');
INSERT INTO `school` VALUES ('23', '12', '安徽大学', '', '', '23');
INSERT INTO `school` VALUES ('24', '12', '合肥工业大学', '', '', '24');
INSERT INTO `school` VALUES ('25', '13', '福建工程学院', '', '', '25');
INSERT INTO `school` VALUES ('26', '13', '厦门大学', '', '', '26');
INSERT INTO `school` VALUES ('27', '14', '江西中医药大学', '', '', '27');
INSERT INTO `school` VALUES ('28', '14', '南昌工程学院', '', '', '28');
INSERT INTO `school` VALUES ('29', '15', '山东农业工程学院', '', '', '29');
INSERT INTO `school` VALUES ('30', '15', '泰山学院', '', '', '30');
INSERT INTO `school` VALUES ('31', '16', '河南科技学院', '', '', '31');
INSERT INTO `school` VALUES ('32', '16', '郑州大学', '', '', '32');
INSERT INTO `school` VALUES ('33', '17', '湖北科技学院', '', '', '33');
INSERT INTO `school` VALUES ('34', '17', '湖北理工学院', '', '', '34');
INSERT INTO `school` VALUES ('35', '18', '湖南大学', '', '', '35');
INSERT INTO `school` VALUES ('36', '18', '中南大学', '', '', '36');
INSERT INTO `school` VALUES ('37', '19', '五邑大学', '', '', '37');
INSERT INTO `school` VALUES ('38', '19', '广东工业大学', '', '', '38');
INSERT INTO `school` VALUES ('39', '20', '海南大学', '', '', '39');
INSERT INTO `school` VALUES ('40', '20', '三亚学院', '', '', '40');
INSERT INTO `school` VALUES ('41', '21', '四川大学', '', '', '41');
INSERT INTO `school` VALUES ('42', '21', '成都师范学院', '', '', '42');
INSERT INTO `school` VALUES ('43', '22', '贵州理工学院', '', '', '43');
INSERT INTO `school` VALUES ('44', '22', '贵阳学院', '', '', '44');
INSERT INTO `school` VALUES ('45', '23', '云南艺术学院', '', '', '45');
INSERT INTO `school` VALUES ('46', '23', '昆明学院', '', '', '46');
INSERT INTO `school` VALUES ('47', '24', '陕西师范大学', '', '', '47');
INSERT INTO `school` VALUES ('48', '24', '西北大学', '', '', '48');
INSERT INTO `school` VALUES ('49', '25', '甘肃政法学院', '', '', '49');
INSERT INTO `school` VALUES ('50', '25', '兰州城市学院', '', '', '50');
INSERT INTO `school` VALUES ('51', '26', '青海大学', '', '', '51');
INSERT INTO `school` VALUES ('52', '26', '青海师范大学', '', '', '52');
INSERT INTO `school` VALUES ('53', '27', '国立交通大学 ', '', '', '53');
INSERT INTO `school` VALUES ('54', '27', '国立中央大学 ', '', '', '54');
INSERT INTO `school` VALUES ('55', '28', '内蒙古大学', '', '', '55');
INSERT INTO `school` VALUES ('56', '28', '内蒙古农业大学', '', '', '56');
INSERT INTO `school` VALUES ('57', '29', '广西艺术学院', '', '', '57');
INSERT INTO `school` VALUES ('58', '29', '梧州学院', '', '', '58');
INSERT INTO `school` VALUES ('59', '30', '西藏大学', '', '', '59');
INSERT INTO `school` VALUES ('60', '30', '西藏藏医学院', '', '', '60');
INSERT INTO `school` VALUES ('61', '31', '宁夏大学', '', '', '61');
INSERT INTO `school` VALUES ('62', '31', '宁夏理工学院', '', '', '62');
INSERT INTO `school` VALUES ('63', '32', '新疆大学', '', '', '63');
INSERT INTO `school` VALUES ('64', '32', '塔里木大学', '', '', '64');
INSERT INTO `school` VALUES ('65', '33', '香港大学', '', '', '65');
INSERT INTO `school` VALUES ('66', '33', '香港浸会大学', '', '', '66');
INSERT INTO `school` VALUES ('67', '34', '澳门大学', '', '', '67');
INSERT INTO `school` VALUES ('68', '34', '澳门科技大学', '', '', '68');

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
INSERT INTO `user` VALUES ('1', '1', '1', '11080701', '123456', '漩涡鸣人', '', null, '123456@163.com');
INSERT INTO `user` VALUES ('2', '2', '2', '11080702', '123456', '宇智波佐助', '', null, '123456@164.com');
INSERT INTO `user` VALUES ('3', '3', '3', '11080703', '123456', '春野樱', '', null, '123456@165.com');
INSERT INTO `user` VALUES ('4', '4', '4', '11080704', '123456', '李洛克', '', null, '123456@166.com');
INSERT INTO `user` VALUES ('5', '5', '5', '11080705', '123456', '日向宁次', '', null, '123456@167.com');
INSERT INTO `user` VALUES ('6', '6', '6', '11080706', '123456', '日向雏田', '', null, '123456@168.com');
INSERT INTO `user` VALUES ('7', '7', '7', '11080707', '123456', '千手柱间', '', null, '123456@169.com');
INSERT INTO `user` VALUES ('8', '8', '8', '11080708', '123456', '千手扉间', '', null, '123456@170.com');
INSERT INTO `user` VALUES ('9', '9', '9', '11080709', '123456', '猿飞日斩', '', null, '123456@171.com');
INSERT INTO `user` VALUES ('10', '10', '10', '11080710', '123456', '波风水门', '', null, '123456@172.com');
