/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.231
Source Server Version : 50549
Source Host           : 192.168.1.231:3306
Source Database       : mooc_center

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-09-28 17:47:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '回答的用户id  from',
  `question_id` int(11) NOT NULL COMMENT 'question id',
  `reply_id` int(11) NOT NULL COMMENT 'to ',
  `content` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '回复的内容',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `delete_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '13', '1', '21', '123456', '1533091920', '0');
INSERT INTO `answer` VALUES ('2', '13', '1', '21', '123456', '1533092000', '0');
INSERT INTO `answer` VALUES ('3', '13', '1', '21', '123456', '1533092061', '1533092101');
INSERT INTO `answer` VALUES ('5', '13', '2', '21', '大师哦分地扫', '1533092656', '0');
INSERT INTO `answer` VALUES ('6', '6', '16', '6', '大师哦分地扫', '1533092656', '0');
INSERT INTO `answer` VALUES ('7', '6', '16', '6', '大师哦分地扫', '1533092656', '0');
INSERT INTO `answer` VALUES ('8', '6', '16', '6', '大师哦分地扫', '1533092656', '0');
INSERT INTO `answer` VALUES ('9', '6', '16', '6', '大师哦分地扫', '1533092656', '0');
INSERT INTO `answer` VALUES ('10', '6', '28', '47', '大师哦分地扫', '1533092656', '0');
INSERT INTO `answer` VALUES ('11', '6', '28', '47', '大发射点', '1533092656', '0');
INSERT INTO `answer` VALUES ('12', '40', '29', '40', '我来回答', '1536819349', '0');
INSERT INTO `answer` VALUES ('13', '40', '29', '40', '我再来回答一次', '1536820129', '0');
INSERT INTO `answer` VALUES ('14', '40', '30', '40', '会大大大', '1536821997', '0');
INSERT INTO `answer` VALUES ('15', '40', '30', '40', 'sfd sdf', '1536824903', '0');
INSERT INTO `answer` VALUES ('16', '40', '47', '40', '啊实打实萨大萨大', '1536830750', '0');
INSERT INTO `answer` VALUES ('17', '40', '47', '40', '啊实打实萨大是', '1536830774', '0');
INSERT INTO `answer` VALUES ('18', '47', '47', '40', '啊是大', '1536920306', '0');
INSERT INTO `answer` VALUES ('19', '47', '47', '40', '幸存者行政村', '1536920382', '0');
INSERT INTO `answer` VALUES ('20', '47', '47', '40', '嘿嘿哈哈', '1536921043', '0');
INSERT INTO `answer` VALUES ('21', '47', '47', '40', '呀嘛一儿嘿', '1536921795', '0');
INSERT INTO `answer` VALUES ('22', '47', '47', '40', '昂是昂是', '1536921947', '0');
INSERT INTO `answer` VALUES ('23', '47', '47', '40', '昂是昂是啊是大', '1536921951', '0');
INSERT INTO `answer` VALUES ('24', '47', '6', '40', 'z z zxc x', '1537233955', '0');
INSERT INTO `answer` VALUES ('25', '47', '6', '40', 'asd', '1537233984', '0');
INSERT INTO `answer` VALUES ('26', '53', '49', '53', 'wonvejh', '1537326139', '0');
INSERT INTO `answer` VALUES ('27', '53', '49', '53', '我们', '1537326162', '0');
INSERT INTO `answer` VALUES ('28', '52', '48', '52', '请描述问题内容', '1537327588', '0');
INSERT INTO `answer` VALUES ('29', '52', '55', '46', '这个问题很好解决', '1537845384', '0');
INSERT INTO `answer` VALUES ('30', '55', '57', '55', '就是这么帅', '1537858346', '0');
INSERT INTO `answer` VALUES ('31', '55', '57', '55', '你也很帅', '1537858380', '0');
INSERT INTO `answer` VALUES ('32', '55', '57', '55', '你也很帅', '1537858390', '0');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `creator_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者id',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 pc端  2 wx端',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 1显示 0隐藏',
  `dateline` int(32) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '2', 'drgerg', 'http://192.168.1.231:9334/6,d09815d4c1', '', '1', '1', '1', '0');
INSERT INTO `banner` VALUES ('2', '3', 'ddf', 'rgreg', '', '1', '1', '1', '0');
INSERT INTO `banner` VALUES ('5', '1', 'banner2', 'http://mooc.com/upload/20180927/741f2fb489c25d0b4dc2ac84d1bfc1e0.jpg', '', '1', '1', '1', '0');
INSERT INTO `banner` VALUES ('11', '1', '地方', 'http://192.168.1.231:9334/4,017e72f3b67d', '', '1', '2', '1', '1537430363');
INSERT INTO `banner` VALUES ('13', '14', '范德萨', 'http://192.168.1.231:9334/2,0183cbea4b60', '', '1', '2', '1', '1537431203');
INSERT INTO `banner` VALUES ('14', '14', '范德萨', 'http://192.168.1.231:9334/4,0184dfffe66c', '', '1', '2', '1', '1537431302');
INSERT INTO `banner` VALUES ('15', '14', '范德萨', 'http://192.168.1.231:9334/4,0184dfffe66c', '', '15', '2', '1', '1537431302');
INSERT INTO `banner` VALUES ('18', '1', '慕课-绿色banner', 'http://192.168.1.231:9334/6,01c0327a8b00', '', '1', '1', '1', '1538019849');

-- ----------------------------
-- Table structure for baoming
-- ----------------------------
DROP TABLE IF EXISTS `baoming`;
CREATE TABLE `baoming` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '文化馆id',
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '报名时间',
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1 通过 0 不通过',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of baoming
-- ----------------------------
INSERT INTO `baoming` VALUES ('8', '1', '7', '40', '1533197420', '1');
INSERT INTO `baoming` VALUES ('11', '1', '10', '23', '1533197436', '1');
INSERT INTO `baoming` VALUES ('12', '1', '15', '23', '1533197468', '1');
INSERT INTO `baoming` VALUES ('13', '1', '16', '23', '1533197475', '1');
INSERT INTO `baoming` VALUES ('15', '1', '19', '23', '1533197509', '1');
INSERT INTO `baoming` VALUES ('16', '1', '19', '24', '1533197541', '1');
INSERT INTO `baoming` VALUES ('17', '1', '15', '24', '1533197561', '1');
INSERT INTO `baoming` VALUES ('18', '1', '4', '24', '1533197567', '1');
INSERT INTO `baoming` VALUES ('19', '1', '5', '24', '1533197574', '1');
INSERT INTO `baoming` VALUES ('21', '14', '12', '40', '1533282678', '1');
INSERT INTO `baoming` VALUES ('22', '14', '13', '40', '1533282685', '1');
INSERT INTO `baoming` VALUES ('23', '14', '12', '40', '1533282752', '1');
INSERT INTO `baoming` VALUES ('24', '14', '13', '40', '1533282757', '1');
INSERT INTO `baoming` VALUES ('30', '14', '15', '21', '1533715964', '1');
INSERT INTO `baoming` VALUES ('36', '1', '17', '22', '1535003240', '1');
INSERT INTO `baoming` VALUES ('37', '14', '6', '23', '1535003240', '1');
INSERT INTO `baoming` VALUES ('68', '1', '17', '6', '1536312808', '1');
INSERT INTO `baoming` VALUES ('69', '1', '30', '47', '1536549367', '1');
INSERT INTO `baoming` VALUES ('70', '1', '4', '6', '1536549948', '1');
INSERT INTO `baoming` VALUES ('71', '1', '8', '47', '1536565308', '1');
INSERT INTO `baoming` VALUES ('72', '1', '8', '6', '1536565917', '1');
INSERT INTO `baoming` VALUES ('73', '1', '1', '47', '1536722739', '1');
INSERT INTO `baoming` VALUES ('75', '1', '17', '46', '1536896294', '1');
INSERT INTO `baoming` VALUES ('76', '1', '34', '39', '1536903251', '1');
INSERT INTO `baoming` VALUES ('77', '1', '9', '46', '1536904906', '1');
INSERT INTO `baoming` VALUES ('78', '1', '9', '47', '1536906232', '1');
INSERT INTO `baoming` VALUES ('82', '1', '1', '39', '1536911642', '1');
INSERT INTO `baoming` VALUES ('85', '1', '5', '39', '1536912259', '1');
INSERT INTO `baoming` VALUES ('86', '1', '9', '39', '1536917619', '1');
INSERT INTO `baoming` VALUES ('87', '1', '9', '40', '1537148843', '1');
INSERT INTO `baoming` VALUES ('88', '1', '30', '6', '1537166479', '1');
INSERT INTO `baoming` VALUES ('89', '1', '8', '46', '1537235303', '1');
INSERT INTO `baoming` VALUES ('90', '1', '1', '6', '1537250390', '1');
INSERT INTO `baoming` VALUES ('98', '1', '6', '6', '1537251689', '1');
INSERT INTO `baoming` VALUES ('104', '1', '1', '50', '1537261170', '1');
INSERT INTO `baoming` VALUES ('105', '1', '9', '50', '1537263680', '1');
INSERT INTO `baoming` VALUES ('106', '1', '77', '47', '1537321731', '1');
INSERT INTO `baoming` VALUES ('107', '1', '69', '52', '1537322002', '1');
INSERT INTO `baoming` VALUES ('108', '1', '2', '50', '1537323715', '1');
INSERT INTO `baoming` VALUES ('109', '1', '68', '48', '1537324655', '1');
INSERT INTO `baoming` VALUES ('110', '1', '69', '50', '1537325669', '1');
INSERT INTO `baoming` VALUES ('111', '1', '75', '53', '1537326043', '1');
INSERT INTO `baoming` VALUES ('112', '1', '1', '48', '1537326470', '1');
INSERT INTO `baoming` VALUES ('113', '1', '2', '52', '1537328501', '1');
INSERT INTO `baoming` VALUES ('114', '1', '1', '52', '1537328814', '1');
INSERT INTO `baoming` VALUES ('115', '1', '9', '52', '1537328983', '1');
INSERT INTO `baoming` VALUES ('116', '1', '28', '39', '1537331084', '1');
INSERT INTO `baoming` VALUES ('117', '1', '1', '54', '1537346183', '1');
INSERT INTO `baoming` VALUES ('118', '1', '9', '54', '1537346201', '1');
INSERT INTO `baoming` VALUES ('119', '1', '7', '46', '1537433934', '1');
INSERT INTO `baoming` VALUES ('120', '1', '2', '46', '1537433949', '1');
INSERT INTO `baoming` VALUES ('121', '1', '28', '46', '1537434422', '1');
INSERT INTO `baoming` VALUES ('122', '1', '4', '46', '1537434711', '1');
INSERT INTO `baoming` VALUES ('129', '1', '78', '47', '1537522369', '1');
INSERT INTO `baoming` VALUES ('130', '1', '78', '6', '1537523525', '1');
INSERT INTO `baoming` VALUES ('131', '1', '79', '47', '1537838132', '1');
INSERT INTO `baoming` VALUES ('132', '1', '80', '52', '1537844290', '1');
INSERT INTO `baoming` VALUES ('133', '1', '81', '54', '1537845182', '1');
INSERT INTO `baoming` VALUES ('134', '1', '4', '52', '1537845362', '1');
INSERT INTO `baoming` VALUES ('135', '1', '75', '52', '1537845486', '1');
INSERT INTO `baoming` VALUES ('136', '1', '5', '52', '1537845587', '1');
INSERT INTO `baoming` VALUES ('138', '1', '8', '52', '1537846472', '1');
INSERT INTO `baoming` VALUES ('139', '1', '28', '54', '1537855775', '1');
INSERT INTO `baoming` VALUES ('141', '1', '1', '56', '1537855944', '1');
INSERT INTO `baoming` VALUES ('142', '1', '8', '56', '1537855997', '1');
INSERT INTO `baoming` VALUES ('143', '1', '2', '54', '1537856829', '1');
INSERT INTO `baoming` VALUES ('144', '1', '17', '55', '1537858295', '1');
INSERT INTO `baoming` VALUES ('145', '1', '79', '40', '1537858325', '1');
INSERT INTO `baoming` VALUES ('146', '1', '79', '56', '1537858974', '1');
INSERT INTO `baoming` VALUES ('147', '1', '3', '52', '1537859332', '1');
INSERT INTO `baoming` VALUES ('148', '1', '17', '52', '1537860687', '1');
INSERT INTO `baoming` VALUES ('149', '1', '3', '56', '1537861453', '1');
INSERT INTO `baoming` VALUES ('150', '1', '82', '55', '1537861597', '1');
INSERT INTO `baoming` VALUES ('154', '1', '82', '56', '1537862122', '1');
INSERT INTO `baoming` VALUES ('155', '1', '17', '56', '1537863560', '1');
INSERT INTO `baoming` VALUES ('156', '1', '17', '40', '1537930967', '1');
INSERT INTO `baoming` VALUES ('157', '1', '1', '40', '1537940316', '1');
INSERT INTO `baoming` VALUES ('158', '1', '82', '40', '1537946413', '1');
INSERT INTO `baoming` VALUES ('159', '1', '9', '6', '1537946972', '1');
INSERT INTO `baoming` VALUES ('160', '1', '82', '6', '1537948388', '1');
INSERT INTO `baoming` VALUES ('161', '1', '23', '40', '1538014272', '1');
INSERT INTO `baoming` VALUES ('162', '1', '98', '52', '1538016672', '1');
INSERT INTO `baoming` VALUES ('163', '1', '6', '50', '1538017539', '1');
INSERT INTO `baoming` VALUES ('164', '1', '82', '60', '1538018025', '1');
INSERT INTO `baoming` VALUES ('165', '1', '98', '6', '1538018148', '1');
INSERT INTO `baoming` VALUES ('166', '1', '1', '60', '1538018669', '1');
INSERT INTO `baoming` VALUES ('167', '1', '8', '60', '1538018835', '1');
INSERT INTO `baoming` VALUES ('168', '1', '2', '51', '1538018885', '1');
INSERT INTO `baoming` VALUES ('169', '1', '98', '47', '1538033259', '1');
INSERT INTO `baoming` VALUES ('170', '1', '78', '40', '1538036506', '1');
INSERT INTO `baoming` VALUES ('171', '1', '98', '40', '1538037676', '1');
INSERT INTO `baoming` VALUES ('172', '1', '1', '51', '1538097664', '1');
INSERT INTO `baoming` VALUES ('173', '1', '80', '40', '1538104915', '1');
INSERT INTO `baoming` VALUES ('174', '1', '98', '49', '1538105258', '1');
INSERT INTO `baoming` VALUES ('175', '1', '100', '47', '1538117498', '1');

-- ----------------------------
-- Table structure for center_course
-- ----------------------------
DROP TABLE IF EXISTS `center_course`;
CREATE TABLE `center_course` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文化馆/课程关系ID',
  `center_id` int(7) NOT NULL COMMENT '文化馆ID',
  `course_id` int(10) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐 0不推荐 1推荐',
  `play_num` int(11) NOT NULL DEFAULT '0' COMMENT '播放量',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '课程状态：0 不显示  1显示',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniqid_course_id_and_cen_id` (`center_id`,`course_id`),
  KEY `course_id` (`course_id`),
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of center_course
-- ----------------------------
INSERT INTO `center_course` VALUES ('1', '1', '1', '0', '47', '1', '1530584469');
INSERT INTO `center_course` VALUES ('2', '1', '2', '0', '12', '1', '1530584488');
INSERT INTO `center_course` VALUES ('3', '1', '3', '0', '10', '1', '1530584494');
INSERT INTO `center_course` VALUES ('4', '1', '4', '0', '4', '1', '1530584501');
INSERT INTO `center_course` VALUES ('5', '1', '5', '0', '6', '1', '1530669210');
INSERT INTO `center_course` VALUES ('6', '1', '6', '0', '5', '1', '1530669217');
INSERT INTO `center_course` VALUES ('7', '1', '7', '0', '2', '1', '1530669536');
INSERT INTO `center_course` VALUES ('8', '1', '8', '0', '11', '1', '1530669608');
INSERT INTO `center_course` VALUES ('9', '1', '9', '0', '31', '1', '1530669771');
INSERT INTO `center_course` VALUES ('13', '14', '6', '0', '1', '1', '1531104580');
INSERT INTO `center_course` VALUES ('14', '14', '7', '0', '0', '1', '1531104580');
INSERT INTO `center_course` VALUES ('15', '14', '5', '0', '1', '1', '1531104580');
INSERT INTO `center_course` VALUES ('16', '14', '2', '0', '0', '1', '1531104759');
INSERT INTO `center_course` VALUES ('17', '1', '10', '1', '1', '1', '1531806502');
INSERT INTO `center_course` VALUES ('18', '14', '11', '0', '0', '1', '1531811093');
INSERT INTO `center_course` VALUES ('19', '14', '12', '0', '2', '1', '1531811302');
INSERT INTO `center_course` VALUES ('20', '14', '13', '0', '2', '1', '1531811408');
INSERT INTO `center_course` VALUES ('21', '14', '9', '0', '3', '1', '1531811621');
INSERT INTO `center_course` VALUES ('22', '1', '15', '1', '2', '1', '1531812916');
INSERT INTO `center_course` VALUES ('23', '1', '16', '0', '1', '1', '1531814670');
INSERT INTO `center_course` VALUES ('24', '1', '17', '0', '20', '1', '1531816524');
INSERT INTO `center_course` VALUES ('26', '1', '19', '0', '2', '1', '1532330963');
INSERT INTO `center_course` VALUES ('27', '14', '20', '0', '0', '1', '1532398830');
INSERT INTO `center_course` VALUES ('36', '18', '3', '0', '0', '1', '1532412558');
INSERT INTO `center_course` VALUES ('37', '18', '8', '0', '0', '1', '1532412558');
INSERT INTO `center_course` VALUES ('38', '18', '15', '0', '0', '1', '1532412558');
INSERT INTO `center_course` VALUES ('39', '18', '7', '0', '0', '1', '1532412558');
INSERT INTO `center_course` VALUES ('40', '18', '16', '0', '0', '1', '1532412558');
INSERT INTO `center_course` VALUES ('41', '18', '4', '0', '0', '1', '1532412558');
INSERT INTO `center_course` VALUES ('42', '14', '17', '0', '0', '1', '1532412558');
INSERT INTO `center_course` VALUES ('43', '18', '5', '0', '0', '1', '1532412598');
INSERT INTO `center_course` VALUES ('44', '14', '21', '0', '0', '1', '1532415723');
INSERT INTO `center_course` VALUES ('45', '14', '22', '0', '0', '1', '1532415802');
INSERT INTO `center_course` VALUES ('46', '1', '23', '0', '1', '1', '1533549872');
INSERT INTO `center_course` VALUES ('47', '1', '24', '0', '2', '1', '1533605713');
INSERT INTO `center_course` VALUES ('48', '14', '24', '0', '0', '1', '1533605713');
INSERT INTO `center_course` VALUES ('49', '14', '15', '0', '0', '1', '1533605713');
INSERT INTO `center_course` VALUES ('50', '1', '25', '0', '0', '1', '1535017384');
INSERT INTO `center_course` VALUES ('51', '1', '26', '1', '0', '1', '1535018101');
INSERT INTO `center_course` VALUES ('52', '1', '27', '0', '0', '1', '1535018236');
INSERT INTO `center_course` VALUES ('53', '1', '28', '1', '3', '1', '1535018363');
INSERT INTO `center_course` VALUES ('54', '1', '29', '0', '0', '1', '1535435941');
INSERT INTO `center_course` VALUES ('55', '1', '30', '0', '7', '1', '1535439597');
INSERT INTO `center_course` VALUES ('56', '1', '31', '0', '0', '1', '1536894075');
INSERT INTO `center_course` VALUES ('57', '1', '32', '0', '0', '1', '1536899652');
INSERT INTO `center_course` VALUES ('60', '26', '33', '0', '0', '1', '1536902834');
INSERT INTO `center_course` VALUES ('61', '1', '34', '1', '1', '1', '1536903147');
INSERT INTO `center_course` VALUES ('62', '14', '1', '1', '1', '1', '1536903147');
INSERT INTO `center_course` VALUES ('76', '1', '49', '0', '0', '1', '1537172622');
INSERT INTO `center_course` VALUES ('77', '1', '50', '0', '0', '1', '1537172650');
INSERT INTO `center_course` VALUES ('78', '1', '51', '0', '0', '1', '1537172686');
INSERT INTO `center_course` VALUES ('79', '1', '52', '0', '0', '1', '1537172695');
INSERT INTO `center_course` VALUES ('80', '1', '53', '0', '0', '1', '1537172759');
INSERT INTO `center_course` VALUES ('81', '1', '54', '0', '0', '1', '1537234242');
INSERT INTO `center_course` VALUES ('82', '1', '55', '0', '0', '1', '1537234474');
INSERT INTO `center_course` VALUES ('83', '1', '56', '0', '0', '1', '1537234511');
INSERT INTO `center_course` VALUES ('84', '1', '57', '0', '0', '1', '1537234628');
INSERT INTO `center_course` VALUES ('85', '1', '58', '0', '0', '1', '1537235396');
INSERT INTO `center_course` VALUES ('86', '1', '59', '0', '0', '1', '1537235509');
INSERT INTO `center_course` VALUES ('87', '1', '60', '0', '0', '1', '1537236780');
INSERT INTO `center_course` VALUES ('88', '1', '61', '0', '0', '1', '1537236841');
INSERT INTO `center_course` VALUES ('91', '1', '65', '0', '0', '1', '1537237907');
INSERT INTO `center_course` VALUES ('92', '1', '66', '0', '0', '1', '1537238146');
INSERT INTO `center_course` VALUES ('93', '1', '67', '0', '0', '1', '1537238191');
INSERT INTO `center_course` VALUES ('94', '1', '68', '0', '2', '1', '1537252257');
INSERT INTO `center_course` VALUES ('95', '1', '69', '0', '9', '1', '1537252475');
INSERT INTO `center_course` VALUES ('96', '1', '70', '0', '0', '1', '1537258173');
INSERT INTO `center_course` VALUES ('97', '1', '71', '0', '0', '1', '1537259031');
INSERT INTO `center_course` VALUES ('99', '1', '73', '0', '0', '1', '1537259706');
INSERT INTO `center_course` VALUES ('100', '1', '74', '0', '0', '1', '1537259790');
INSERT INTO `center_course` VALUES ('101', '1', '75', '0', '2', '1', '1537260139');
INSERT INTO `center_course` VALUES ('102', '1', '76', '0', '0', '1', '1537321160');
INSERT INTO `center_course` VALUES ('103', '1', '77', '0', '1', '1', '1537321598');
INSERT INTO `center_course` VALUES ('104', '1', '78', '0', '3', '1', '1537522198');
INSERT INTO `center_course` VALUES ('105', '1', '79', '0', '3', '1', '1537522497');
INSERT INTO `center_course` VALUES ('106', '1', '80', '0', '2', '1', '1537838624');
INSERT INTO `center_course` VALUES ('107', '1', '81', '0', '2', '1', '1537845132');
INSERT INTO `center_course` VALUES ('108', '1', '82', '1', '20', '1', '1537861546');
INSERT INTO `center_course` VALUES ('109', '1', '83', '0', '0', '1', '1537866043');
INSERT INTO `center_course` VALUES ('110', '1', '84', '0', '0', '1', '1537866048');
INSERT INTO `center_course` VALUES ('111', '1', '85', '0', '0', '1', '1537866049');
INSERT INTO `center_course` VALUES ('112', '1', '86', '0', '0', '1', '1537866049');
INSERT INTO `center_course` VALUES ('113', '1', '87', '0', '0', '1', '1537866050');
INSERT INTO `center_course` VALUES ('114', '1', '88', '0', '0', '1', '1537866050');
INSERT INTO `center_course` VALUES ('115', '1', '89', '0', '0', '1', '1537866050');
INSERT INTO `center_course` VALUES ('116', '1', '90', '0', '0', '1', '1537866050');
INSERT INTO `center_course` VALUES ('117', '1', '91', '0', '0', '1', '1537866050');
INSERT INTO `center_course` VALUES ('118', '1', '92', '0', '0', '1', '1537866050');
INSERT INTO `center_course` VALUES ('119', '1', '93', '0', '0', '1', '1537866060');
INSERT INTO `center_course` VALUES ('120', '1', '94', '0', '0', '1', '1537866072');
INSERT INTO `center_course` VALUES ('121', '1', '95', '0', '0', '1', '1537866116');
INSERT INTO `center_course` VALUES ('122', '1', '96', '0', '0', '1', '1537866240');
INSERT INTO `center_course` VALUES ('123', '14', '97', '0', '0', '1', '1538015777');
INSERT INTO `center_course` VALUES ('124', '1', '98', '0', '5', '1', '1538015886');
INSERT INTO `center_course` VALUES ('125', '1', '99', '0', '0', '1', '1538105698');
INSERT INTO `center_course` VALUES ('126', '1', '100', '0', '1', '1', '1538105772');

-- ----------------------------
-- Table structure for center_cx_type
-- ----------------------------
DROP TABLE IF EXISTS `center_cx_type`;
CREATE TABLE `center_cx_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `cx_typeid` int(11) NOT NULL DEFAULT '0' COMMENT '超星的课程分类id',
  `other_typeid` int(11) NOT NULL DEFAULT '0' COMMENT '其他文化馆的分类id',
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '其他的文化馆id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of center_cx_type
-- ----------------------------
INSERT INTO `center_cx_type` VALUES ('76', '1', '72', '14');
INSERT INTO `center_cx_type` VALUES ('77', '3', '73', '14');
INSERT INTO `center_cx_type` VALUES ('78', '4', '74', '14');
INSERT INTO `center_cx_type` VALUES ('79', '6', '75', '14');
INSERT INTO `center_cx_type` VALUES ('80', '7', '76', '14');
INSERT INTO `center_cx_type` VALUES ('86', '1', '89', '18');
INSERT INTO `center_cx_type` VALUES ('87', '2', '90', '18');
INSERT INTO `center_cx_type` VALUES ('88', '3', '91', '18');
INSERT INTO `center_cx_type` VALUES ('89', '4', '93', '18');
INSERT INTO `center_cx_type` VALUES ('90', '7', '94', '18');

-- ----------------------------
-- Table structure for chapter
-- ----------------------------
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '课程章ID',
  `course_id` int(9) NOT NULL COMMENT '课程ID',
  `chapter_title` varchar(40) NOT NULL COMMENT '章标题',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 0不可用 1可用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='课程章表';

-- ----------------------------
-- Records of chapter
-- ----------------------------
INSERT INTO `chapter` VALUES ('1', '9', '第一单元5444', '1', '1');
INSERT INTO `chapter` VALUES ('43', '9', 'rrr', '43', '1');
INSERT INTO `chapter` VALUES ('5', '8', '第四单元', '5', '1');
INSERT INTO `chapter` VALUES ('19', '17', '45535435', '19', '1');
INSERT INTO `chapter` VALUES ('20', '10', '大法官1', '20', '1');
INSERT INTO `chapter` VALUES ('33', '30', '第一章', '33', '1');
INSERT INTO `chapter` VALUES ('23', '19', '第三章', '23', '1');
INSERT INTO `chapter` VALUES ('24', '5', '大概', '10000', '1');
INSERT INTO `chapter` VALUES ('25', '4', '电饭锅', '10000', '1');
INSERT INTO `chapter` VALUES ('26', '15', '范德萨', '10000', '1');
INSERT INTO `chapter` VALUES ('32', '25', '第一单元', '32', '1');
INSERT INTO `chapter` VALUES ('29', '28', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('30', '28', '第二单元', '10000', '1');
INSERT INTO `chapter` VALUES ('34', '22', '第一', '34', '1');
INSERT INTO `chapter` VALUES ('35', '29', 'dsjfa', '35', '1');
INSERT INTO `chapter` VALUES ('45', '29', 'eseeee', '45', '1');
INSERT INTO `chapter` VALUES ('37', '9', 't\'yu', '37', '1');
INSERT INTO `chapter` VALUES ('38', '9', 'hhhhhhhhhhhhhhhh', '38', '1');
INSERT INTO `chapter` VALUES ('46', '31', '第一章', '46', '1');
INSERT INTO `chapter` VALUES ('41', '9', 'a', '41', '1');
INSERT INTO `chapter` VALUES ('42', '30', '幅度萨芬萨', '42', '1');
INSERT INTO `chapter` VALUES ('47', '31', '第一节', '47', '1');
INSERT INTO `chapter` VALUES ('48', '245', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('49', '249', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('50', '251', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('51', '253', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('52', '256', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('53', '261', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('54', '266', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('55', '271', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('56', '277', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('57', '283', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('58', '287', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('59', '291', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('60', '295', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('61', '65', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('62', '66', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('63', '67', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('64', '68', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('65', '69', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('67', '33', '范德萨', '67', '1');
INSERT INTO `chapter` VALUES ('68', '323', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('69', '327', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('70', '73', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('71', '74', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('72', '75', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('73', '76', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('74', '77', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('75', '33', '范德萨', '75', '1');
INSERT INTO `chapter` VALUES ('76', '78', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('77', '78', '第二单元', '10000', '1');
INSERT INTO `chapter` VALUES ('78', '79', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('79', '79', '第二单元', '10000', '1');
INSERT INTO `chapter` VALUES ('80', '80', '热风哇', '80', '1');
INSERT INTO `chapter` VALUES ('81', '80', '富士达', '81', '1');
INSERT INTO `chapter` VALUES ('82', '17', '范德萨', '82', '1');
INSERT INTO `chapter` VALUES ('83', '81', 'dgs', '83', '1');
INSERT INTO `chapter` VALUES ('84', '82', '第一章', '84', '1');
INSERT INTO `chapter` VALUES ('85', '83', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('86', '84', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('87', '85', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('88', '86', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('89', '87', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('90', '88', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('91', '89', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('92', '90', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('93', '91', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('94', '92', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('95', '93', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('96', '94', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('97', '98', '中国古代史绪论', '97', '1');
INSERT INTO `chapter` VALUES ('98', '98', '文献介绍', '98', '1');
INSERT INTO `chapter` VALUES ('99', '99', '第一单元', '10000', '1');
INSERT INTO `chapter` VALUES ('100', '100', '第一单元', '10000', '1');

-- ----------------------------
-- Table structure for city_info
-- ----------------------------
DROP TABLE IF EXISTS `city_info`;
CREATE TABLE `city_info` (
  `city_id` varchar(9) NOT NULL,
  `province` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='utf8_general_ci';

-- ----------------------------
-- Records of city_info
-- ----------------------------
INSERT INTO `city_info` VALUES ('101010100', '北京', '北京', '北京');
INSERT INTO `city_info` VALUES ('101010200', '北京', '北京', '海淀');
INSERT INTO `city_info` VALUES ('101010300', '北京', '北京', '朝阳');
INSERT INTO `city_info` VALUES ('101010400', '北京', '北京', '顺义');
INSERT INTO `city_info` VALUES ('101010500', '北京', '北京', '怀柔');
INSERT INTO `city_info` VALUES ('101010600', '北京', '北京', '通州');
INSERT INTO `city_info` VALUES ('101010700', '北京', '北京', '昌平');
INSERT INTO `city_info` VALUES ('101010800', '北京', '北京', '延庆');
INSERT INTO `city_info` VALUES ('101010900', '北京', '北京', '丰台');
INSERT INTO `city_info` VALUES ('101011000', '北京', '北京', '石景山');
INSERT INTO `city_info` VALUES ('101011100', '北京', '北京', '大兴');
INSERT INTO `city_info` VALUES ('101011200', '北京', '北京', '房山');
INSERT INTO `city_info` VALUES ('101011300', '北京', '北京', '密云');
INSERT INTO `city_info` VALUES ('101011400', '北京', '北京', '门头沟');
INSERT INTO `city_info` VALUES ('101011500', '北京', '北京', '平谷');
INSERT INTO `city_info` VALUES ('101020100', '上海', '上海', '上海');
INSERT INTO `city_info` VALUES ('101020200', '上海', '上海', '闵行');
INSERT INTO `city_info` VALUES ('101020300', '上海', '上海', '宝山');
INSERT INTO `city_info` VALUES ('101020500', '上海', '上海', '嘉定');
INSERT INTO `city_info` VALUES ('101020600', '上海', '上海', '浦东南汇');
INSERT INTO `city_info` VALUES ('101020700', '上海', '上海', '金山');
INSERT INTO `city_info` VALUES ('101020800', '上海', '上海', '青浦');
INSERT INTO `city_info` VALUES ('101020900', '上海', '上海', '松江');
INSERT INTO `city_info` VALUES ('101021000', '上海', '上海', '奉贤');
INSERT INTO `city_info` VALUES ('101021100', '上海', '上海', '崇明');
INSERT INTO `city_info` VALUES ('101021200', '上海', '上海', '徐家汇');
INSERT INTO `city_info` VALUES ('101021300', '上海', '上海', '浦东');
INSERT INTO `city_info` VALUES ('101030100', '天津', '天津', '天津');
INSERT INTO `city_info` VALUES ('101030200', '天津', '天津', '武清');
INSERT INTO `city_info` VALUES ('101030300', '天津', '天津', '宝坻');
INSERT INTO `city_info` VALUES ('101030400', '天津', '天津', '东丽');
INSERT INTO `city_info` VALUES ('101030500', '天津', '天津', '西青');
INSERT INTO `city_info` VALUES ('101030600', '天津', '天津', '北辰');
INSERT INTO `city_info` VALUES ('101030700', '天津', '天津', '宁河');
INSERT INTO `city_info` VALUES ('101030800', '天津', '天津', '汉沽');
INSERT INTO `city_info` VALUES ('101030900', '天津', '天津', '静海');
INSERT INTO `city_info` VALUES ('101031000', '天津', '天津', '津南');
INSERT INTO `city_info` VALUES ('101031100', '天津', '天津', '塘沽');
INSERT INTO `city_info` VALUES ('101031200', '天津', '天津', '大港');
INSERT INTO `city_info` VALUES ('101031400', '天津', '天津', '蓟县');
INSERT INTO `city_info` VALUES ('101040100', '重庆', '重庆', '重庆');
INSERT INTO `city_info` VALUES ('101040200', '重庆', '重庆', '永川');
INSERT INTO `city_info` VALUES ('101040300', '重庆', '重庆', '合川');
INSERT INTO `city_info` VALUES ('101040400', '重庆', '重庆', '南川');
INSERT INTO `city_info` VALUES ('101040500', '重庆', '重庆', '江津');
INSERT INTO `city_info` VALUES ('101040600', '重庆', '重庆', '万盛');
INSERT INTO `city_info` VALUES ('101040700', '重庆', '重庆', '渝北');
INSERT INTO `city_info` VALUES ('101040800', '重庆', '重庆', '北碚');
INSERT INTO `city_info` VALUES ('101040900', '重庆', '重庆', '巴南');
INSERT INTO `city_info` VALUES ('101041000', '重庆', '重庆', '长寿');
INSERT INTO `city_info` VALUES ('101041100', '重庆', '重庆', '黔江');
INSERT INTO `city_info` VALUES ('101041300', '重庆', '重庆', '万州');
INSERT INTO `city_info` VALUES ('101041400', '重庆', '重庆', '涪陵');
INSERT INTO `city_info` VALUES ('101041500', '重庆', '重庆', '开县');
INSERT INTO `city_info` VALUES ('101041600', '重庆', '重庆', '城口');
INSERT INTO `city_info` VALUES ('101041700', '重庆', '重庆', '云阳');
INSERT INTO `city_info` VALUES ('101041800', '重庆', '重庆', '巫溪');
INSERT INTO `city_info` VALUES ('101041900', '重庆', '重庆', '奉节');
INSERT INTO `city_info` VALUES ('101042000', '重庆', '重庆', '巫山');
INSERT INTO `city_info` VALUES ('101042100', '重庆', '重庆', '潼南');
INSERT INTO `city_info` VALUES ('101042200', '重庆', '重庆', '垫江');
INSERT INTO `city_info` VALUES ('101042300', '重庆', '重庆', '梁平');
INSERT INTO `city_info` VALUES ('101042400', '重庆', '重庆', '忠县');
INSERT INTO `city_info` VALUES ('101042500', '重庆', '重庆', '石柱');
INSERT INTO `city_info` VALUES ('101042600', '重庆', '重庆', '大足');
INSERT INTO `city_info` VALUES ('101042700', '重庆', '重庆', '荣昌');
INSERT INTO `city_info` VALUES ('101042800', '重庆', '重庆', '铜梁');
INSERT INTO `city_info` VALUES ('101042900', '重庆', '重庆', '璧山');
INSERT INTO `city_info` VALUES ('101043000', '重庆', '重庆', '丰都');
INSERT INTO `city_info` VALUES ('101043100', '重庆', '重庆', '武隆');
INSERT INTO `city_info` VALUES ('101043200', '重庆', '重庆', '彭水');
INSERT INTO `city_info` VALUES ('101043300', '重庆', '重庆', '綦江');
INSERT INTO `city_info` VALUES ('101043400', '重庆', '重庆', '酉阳');
INSERT INTO `city_info` VALUES ('101043600', '重庆', '重庆', '秀山');
INSERT INTO `city_info` VALUES ('101050101', '黑龙江', '哈尔滨', '哈尔滨');
INSERT INTO `city_info` VALUES ('101050102', '黑龙江', '哈尔滨', '双城');
INSERT INTO `city_info` VALUES ('101050103', '黑龙江', '哈尔滨', '呼兰');
INSERT INTO `city_info` VALUES ('101050104', '黑龙江', '哈尔滨', '阿城');
INSERT INTO `city_info` VALUES ('101050105', '黑龙江', '哈尔滨', '宾县');
INSERT INTO `city_info` VALUES ('101050106', '黑龙江', '哈尔滨', '依兰');
INSERT INTO `city_info` VALUES ('101050107', '黑龙江', '哈尔滨', '巴彦');
INSERT INTO `city_info` VALUES ('101050108', '黑龙江', '哈尔滨', '通河');
INSERT INTO `city_info` VALUES ('101050109', '黑龙江', '哈尔滨', '方正');
INSERT INTO `city_info` VALUES ('101050110', '黑龙江', '哈尔滨', '延寿');
INSERT INTO `city_info` VALUES ('101050111', '黑龙江', '哈尔滨', '尚志');
INSERT INTO `city_info` VALUES ('101050112', '黑龙江', '哈尔滨', '五常');
INSERT INTO `city_info` VALUES ('101050113', '黑龙江', '哈尔滨', '木兰');
INSERT INTO `city_info` VALUES ('101050201', '黑龙江', '齐齐哈尔', '齐齐哈尔');
INSERT INTO `city_info` VALUES ('101050202', '黑龙江', '齐齐哈尔', '讷河');
INSERT INTO `city_info` VALUES ('101050203', '黑龙江', '齐齐哈尔', '龙江');
INSERT INTO `city_info` VALUES ('101050204', '黑龙江', '齐齐哈尔', '甘南');
INSERT INTO `city_info` VALUES ('101050205', '黑龙江', '齐齐哈尔', '富裕');
INSERT INTO `city_info` VALUES ('101050206', '黑龙江', '齐齐哈尔', '依安');
INSERT INTO `city_info` VALUES ('101050207', '黑龙江', '齐齐哈尔', '拜泉');
INSERT INTO `city_info` VALUES ('101050208', '黑龙江', '齐齐哈尔', '克山');
INSERT INTO `city_info` VALUES ('101050209', '黑龙江', '齐齐哈尔', '克东');
INSERT INTO `city_info` VALUES ('101050210', '黑龙江', '齐齐哈尔', '泰来');
INSERT INTO `city_info` VALUES ('101050301', '黑龙江', '牡丹江', '牡丹江');
INSERT INTO `city_info` VALUES ('101050302', '黑龙江', '牡丹江', '海林');
INSERT INTO `city_info` VALUES ('101050303', '黑龙江', '牡丹江', '穆棱');
INSERT INTO `city_info` VALUES ('101050304', '黑龙江', '牡丹江', '林口');
INSERT INTO `city_info` VALUES ('101050305', '黑龙江', '牡丹江', '绥芬河');
INSERT INTO `city_info` VALUES ('101050306', '黑龙江', '牡丹江', '宁安');
INSERT INTO `city_info` VALUES ('101050307', '黑龙江', '牡丹江', '东宁');
INSERT INTO `city_info` VALUES ('101050401', '黑龙江', '佳木斯', '佳木斯');
INSERT INTO `city_info` VALUES ('101050402', '黑龙江', '佳木斯', '汤原');
INSERT INTO `city_info` VALUES ('101050403', '黑龙江', '佳木斯', '抚远');
INSERT INTO `city_info` VALUES ('101050404', '黑龙江', '佳木斯', '桦川');
INSERT INTO `city_info` VALUES ('101050405', '黑龙江', '佳木斯', '桦南');
INSERT INTO `city_info` VALUES ('101050406', '黑龙江', '佳木斯', '同江');
INSERT INTO `city_info` VALUES ('101050407', '黑龙江', '佳木斯', '富锦');
INSERT INTO `city_info` VALUES ('101050501', '黑龙江', '绥化', '绥化');
INSERT INTO `city_info` VALUES ('101050502', '黑龙江', '绥化', '肇东');
INSERT INTO `city_info` VALUES ('101050503', '黑龙江', '绥化', '安达');
INSERT INTO `city_info` VALUES ('101050504', '黑龙江', '绥化', '海伦');
INSERT INTO `city_info` VALUES ('101050505', '黑龙江', '绥化', '明水');
INSERT INTO `city_info` VALUES ('101050506', '黑龙江', '绥化', '望奎');
INSERT INTO `city_info` VALUES ('101050507', '黑龙江', '绥化', '兰西');
INSERT INTO `city_info` VALUES ('101050508', '黑龙江', '绥化', '青冈');
INSERT INTO `city_info` VALUES ('101050509', '黑龙江', '绥化', '庆安');
INSERT INTO `city_info` VALUES ('101050510', '黑龙江', '绥化', '绥棱');
INSERT INTO `city_info` VALUES ('101050601', '黑龙江', '黑河', '黑河');
INSERT INTO `city_info` VALUES ('101050602', '黑龙江', '黑河', '嫩江');
INSERT INTO `city_info` VALUES ('101050603', '黑龙江', '黑河', '孙吴');
INSERT INTO `city_info` VALUES ('101050604', '黑龙江', '黑河', '逊克');
INSERT INTO `city_info` VALUES ('101050605', '黑龙江', '黑河', '五大连池');
INSERT INTO `city_info` VALUES ('101050606', '黑龙江', '黑河', '北安');
INSERT INTO `city_info` VALUES ('101050701', '黑龙江', '大兴安岭', '大兴安岭');
INSERT INTO `city_info` VALUES ('101050702', '黑龙江', '大兴安岭', '塔河');
INSERT INTO `city_info` VALUES ('101050703', '黑龙江', '大兴安岭', '漠河');
INSERT INTO `city_info` VALUES ('101050704', '黑龙江', '大兴安岭', '呼玛');
INSERT INTO `city_info` VALUES ('101050705', '黑龙江', '大兴安岭', '呼中');
INSERT INTO `city_info` VALUES ('101050706', '黑龙江', '大兴安岭', '新林');
INSERT INTO `city_info` VALUES ('101050708', '黑龙江', '大兴安岭', '加格达奇');
INSERT INTO `city_info` VALUES ('101050801', '黑龙江', '伊春', '伊春');
INSERT INTO `city_info` VALUES ('101050802', '黑龙江', '伊春', '乌伊岭');
INSERT INTO `city_info` VALUES ('101050803', '黑龙江', '伊春', '五营');
INSERT INTO `city_info` VALUES ('101050804', '黑龙江', '伊春', '铁力');
INSERT INTO `city_info` VALUES ('101050805', '黑龙江', '伊春', '嘉荫');
INSERT INTO `city_info` VALUES ('101050901', '黑龙江', '大庆', '大庆');
INSERT INTO `city_info` VALUES ('101050902', '黑龙江', '大庆', '林甸');
INSERT INTO `city_info` VALUES ('101050903', '黑龙江', '大庆', '肇州');
INSERT INTO `city_info` VALUES ('101050904', '黑龙江', '大庆', '肇源');
INSERT INTO `city_info` VALUES ('101050905', '黑龙江', '大庆', '杜尔伯特');
INSERT INTO `city_info` VALUES ('101051002', '黑龙江', '七台河', '七台河');
INSERT INTO `city_info` VALUES ('101051003', '黑龙江', '七台河', '勃利');
INSERT INTO `city_info` VALUES ('101051101', '黑龙江', '鸡西', '鸡西');
INSERT INTO `city_info` VALUES ('101051102', '黑龙江', '鸡西', '虎林');
INSERT INTO `city_info` VALUES ('101051103', '黑龙江', '鸡西', '密山');
INSERT INTO `city_info` VALUES ('101051104', '黑龙江', '鸡西', '鸡东');
INSERT INTO `city_info` VALUES ('101051201', '黑龙江', '鹤岗', '鹤岗');
INSERT INTO `city_info` VALUES ('101051202', '黑龙江', '鹤岗', '绥滨');
INSERT INTO `city_info` VALUES ('101051203', '黑龙江', '鹤岗', '萝北');
INSERT INTO `city_info` VALUES ('101051301', '黑龙江', '双鸭山', '双鸭山');
INSERT INTO `city_info` VALUES ('101051302', '黑龙江', '双鸭山', '集贤');
INSERT INTO `city_info` VALUES ('101051303', '黑龙江', '双鸭山', '宝清');
INSERT INTO `city_info` VALUES ('101051304', '黑龙江', '双鸭山', '饶河');
INSERT INTO `city_info` VALUES ('101051305', '黑龙江', '双鸭山', '友谊');
INSERT INTO `city_info` VALUES ('101060101', '吉林', '长春', '长春');
INSERT INTO `city_info` VALUES ('101060102', '吉林', '长春', '农安');
INSERT INTO `city_info` VALUES ('101060103', '吉林', '长春', '德惠');
INSERT INTO `city_info` VALUES ('101060104', '吉林', '长春', '九台');
INSERT INTO `city_info` VALUES ('101060105', '吉林', '长春', '榆树');
INSERT INTO `city_info` VALUES ('101060106', '吉林', '长春', '双阳');
INSERT INTO `city_info` VALUES ('101060201', '吉林', '吉林', '吉林');
INSERT INTO `city_info` VALUES ('101060202', '吉林', '吉林', '舒兰');
INSERT INTO `city_info` VALUES ('101060203', '吉林', '吉林', '永吉');
INSERT INTO `city_info` VALUES ('101060204', '吉林', '吉林', '蛟河');
INSERT INTO `city_info` VALUES ('101060205', '吉林', '吉林', '磐石');
INSERT INTO `city_info` VALUES ('101060206', '吉林', '吉林', '桦甸');
INSERT INTO `city_info` VALUES ('101060301', '吉林', '延边', '延吉');
INSERT INTO `city_info` VALUES ('101060302', '吉林', '延边', '敦化');
INSERT INTO `city_info` VALUES ('101060303', '吉林', '延边', '安图');
INSERT INTO `city_info` VALUES ('101060304', '吉林', '延边', '汪清');
INSERT INTO `city_info` VALUES ('101060305', '吉林', '延边', '和龙');
INSERT INTO `city_info` VALUES ('101060307', '吉林', '延边', '龙井');
INSERT INTO `city_info` VALUES ('101060308', '吉林', '延边', '珲春');
INSERT INTO `city_info` VALUES ('101060309', '吉林', '延边', '图们');
INSERT INTO `city_info` VALUES ('101060401', '吉林', '四平', '四平');
INSERT INTO `city_info` VALUES ('101060402', '吉林', '四平', '双辽');
INSERT INTO `city_info` VALUES ('101060403', '吉林', '四平', '梨树');
INSERT INTO `city_info` VALUES ('101060404', '吉林', '四平', '公主岭');
INSERT INTO `city_info` VALUES ('101060405', '吉林', '四平', '伊通');
INSERT INTO `city_info` VALUES ('101060501', '吉林', '通化', '通化');
INSERT INTO `city_info` VALUES ('101060502', '吉林', '通化', '梅河口');
INSERT INTO `city_info` VALUES ('101060503', '吉林', '通化', '柳河');
INSERT INTO `city_info` VALUES ('101060504', '吉林', '通化', '辉南');
INSERT INTO `city_info` VALUES ('101060505', '吉林', '通化', '集安');
INSERT INTO `city_info` VALUES ('101060506', '吉林', '通化', '通化县');
INSERT INTO `city_info` VALUES ('101060601', '吉林', '白城', '白城');
INSERT INTO `city_info` VALUES ('101060602', '吉林', '白城', '洮南');
INSERT INTO `city_info` VALUES ('101060603', '吉林', '白城', '大安');
INSERT INTO `city_info` VALUES ('101060604', '吉林', '白城', '镇赉');
INSERT INTO `city_info` VALUES ('101060605', '吉林', '白城', '通榆');
INSERT INTO `city_info` VALUES ('101060701', '吉林', '辽源', '辽源');
INSERT INTO `city_info` VALUES ('101060702', '吉林', '辽源', '东丰');
INSERT INTO `city_info` VALUES ('101060703', '吉林', '辽源', '东辽');
INSERT INTO `city_info` VALUES ('101060801', '吉林', '松原', '松原');
INSERT INTO `city_info` VALUES ('101060802', '吉林', '松原', '乾安');
INSERT INTO `city_info` VALUES ('101060803', '吉林', '松原', '前郭');
INSERT INTO `city_info` VALUES ('101060804', '吉林', '松原', '长岭');
INSERT INTO `city_info` VALUES ('101060805', '吉林', '松原', '扶余');
INSERT INTO `city_info` VALUES ('101060901', '吉林', '白山', '白山');
INSERT INTO `city_info` VALUES ('101060902', '吉林', '白山', '靖宇');
INSERT INTO `city_info` VALUES ('101060903', '吉林', '白山', '临江');
INSERT INTO `city_info` VALUES ('101060904', '吉林', '白山', '东岗');
INSERT INTO `city_info` VALUES ('101060905', '吉林', '白山', '长白');
INSERT INTO `city_info` VALUES ('101060906', '吉林', '白山', '抚松');
INSERT INTO `city_info` VALUES ('101060907', '吉林', '白山', '江源');
INSERT INTO `city_info` VALUES ('101070101', '辽宁', '沈阳', '沈阳');
INSERT INTO `city_info` VALUES ('101070103', '辽宁', '沈阳', '辽中');
INSERT INTO `city_info` VALUES ('101070104', '辽宁', '沈阳', '康平');
INSERT INTO `city_info` VALUES ('101070105', '辽宁', '沈阳', '法库');
INSERT INTO `city_info` VALUES ('101070106', '辽宁', '沈阳', '新民');
INSERT INTO `city_info` VALUES ('101070201', '辽宁', '大连', '大连');
INSERT INTO `city_info` VALUES ('101070202', '辽宁', '大连', '瓦房店');
INSERT INTO `city_info` VALUES ('101070203', '辽宁', '大连', '金州');
INSERT INTO `city_info` VALUES ('101070204', '辽宁', '大连', '普兰店');
INSERT INTO `city_info` VALUES ('101070205', '辽宁', '大连', '旅顺');
INSERT INTO `city_info` VALUES ('101070206', '辽宁', '大连', '长海');
INSERT INTO `city_info` VALUES ('101070207', '辽宁', '大连', '庄河');
INSERT INTO `city_info` VALUES ('101070301', '辽宁', '鞍山', '鞍山');
INSERT INTO `city_info` VALUES ('101070302', '辽宁', '鞍山', '台安');
INSERT INTO `city_info` VALUES ('101070303', '辽宁', '鞍山', '岫岩');
INSERT INTO `city_info` VALUES ('101070304', '辽宁', '鞍山', '海城');
INSERT INTO `city_info` VALUES ('101070401', '辽宁', '抚顺', '抚顺');
INSERT INTO `city_info` VALUES ('101070402', '辽宁', '抚顺', '新宾');
INSERT INTO `city_info` VALUES ('101070403', '辽宁', '抚顺', '清原');
INSERT INTO `city_info` VALUES ('101070404', '辽宁', '抚顺', '章党');
INSERT INTO `city_info` VALUES ('101070501', '辽宁', '本溪', '本溪');
INSERT INTO `city_info` VALUES ('101070502', '辽宁', '本溪', '本溪县');
INSERT INTO `city_info` VALUES ('101070504', '辽宁', '本溪', '桓仁');
INSERT INTO `city_info` VALUES ('101070601', '辽宁', '丹东', '丹东');
INSERT INTO `city_info` VALUES ('101070602', '辽宁', '丹东', '凤城');
INSERT INTO `city_info` VALUES ('101070603', '辽宁', '丹东', '宽甸');
INSERT INTO `city_info` VALUES ('101070604', '辽宁', '丹东', '东港');
INSERT INTO `city_info` VALUES ('101070701', '辽宁', '锦州', '锦州');
INSERT INTO `city_info` VALUES ('101070702', '辽宁', '锦州', '凌海');
INSERT INTO `city_info` VALUES ('101070704', '辽宁', '锦州', '义县');
INSERT INTO `city_info` VALUES ('101070705', '辽宁', '锦州', '黑山');
INSERT INTO `city_info` VALUES ('101070706', '辽宁', '锦州', '北镇');
INSERT INTO `city_info` VALUES ('101070801', '辽宁', '营口', '营口');
INSERT INTO `city_info` VALUES ('101070802', '辽宁', '营口', '大石桥');
INSERT INTO `city_info` VALUES ('101070803', '辽宁', '营口', '盖州');
INSERT INTO `city_info` VALUES ('101070901', '辽宁', '阜新', '阜新');
INSERT INTO `city_info` VALUES ('101070902', '辽宁', '阜新', '彰武');
INSERT INTO `city_info` VALUES ('101071001', '辽宁', '辽阳', '辽阳');
INSERT INTO `city_info` VALUES ('101071002', '辽宁', '辽阳', '辽阳县');
INSERT INTO `city_info` VALUES ('101071003', '辽宁', '辽阳', '灯塔');
INSERT INTO `city_info` VALUES ('101071004', '辽宁', '辽阳', '弓长岭');
INSERT INTO `city_info` VALUES ('101071101', '辽宁', '铁岭', '铁岭');
INSERT INTO `city_info` VALUES ('101071102', '辽宁', '铁岭', '开原');
INSERT INTO `city_info` VALUES ('101071103', '辽宁', '铁岭', '昌图');
INSERT INTO `city_info` VALUES ('101071104', '辽宁', '铁岭', '西丰');
INSERT INTO `city_info` VALUES ('101071105', '辽宁', '铁岭', '调兵山');
INSERT INTO `city_info` VALUES ('101071201', '辽宁', '朝阳', '朝阳');
INSERT INTO `city_info` VALUES ('101071203', '辽宁', '朝阳', '凌源');
INSERT INTO `city_info` VALUES ('101071204', '辽宁', '朝阳', '喀左');
INSERT INTO `city_info` VALUES ('101071205', '辽宁', '朝阳', '北票');
INSERT INTO `city_info` VALUES ('101071207', '辽宁', '朝阳', '建平县');
INSERT INTO `city_info` VALUES ('101071301', '辽宁', '盘锦', '盘锦');
INSERT INTO `city_info` VALUES ('101071302', '辽宁', '盘锦', '大洼');
INSERT INTO `city_info` VALUES ('101071303', '辽宁', '盘锦', '盘山');
INSERT INTO `city_info` VALUES ('101071401', '辽宁', '葫芦岛', '葫芦岛');
INSERT INTO `city_info` VALUES ('101071402', '辽宁', '葫芦岛', '建昌');
INSERT INTO `city_info` VALUES ('101071403', '辽宁', '葫芦岛', '绥中');
INSERT INTO `city_info` VALUES ('101071404', '辽宁', '葫芦岛', '兴城');
INSERT INTO `city_info` VALUES ('101080101', '内蒙古', '呼和浩特', '呼和浩特');
INSERT INTO `city_info` VALUES ('101080102', '内蒙古', '呼和浩特', '土左旗');
INSERT INTO `city_info` VALUES ('101080103', '内蒙古', '呼和浩特', '托县');
INSERT INTO `city_info` VALUES ('101080104', '内蒙古', '呼和浩特', '和林');
INSERT INTO `city_info` VALUES ('101080105', '内蒙古', '呼和浩特', '清水河');
INSERT INTO `city_info` VALUES ('101080106', '内蒙古', '呼和浩特', '呼市郊区');
INSERT INTO `city_info` VALUES ('101080107', '内蒙古', '呼和浩特', '武川');
INSERT INTO `city_info` VALUES ('101080201', '内蒙古', '包头', '包头');
INSERT INTO `city_info` VALUES ('101080202', '内蒙古', '包头', '白云鄂博');
INSERT INTO `city_info` VALUES ('101080203', '内蒙古', '包头', '满都拉');
INSERT INTO `city_info` VALUES ('101080204', '内蒙古', '包头', '土右旗');
INSERT INTO `city_info` VALUES ('101080205', '内蒙古', '包头', '固阳');
INSERT INTO `city_info` VALUES ('101080206', '内蒙古', '包头', '达茂旗');
INSERT INTO `city_info` VALUES ('101080207', '内蒙古', '包头', '希拉穆仁');
INSERT INTO `city_info` VALUES ('101080301', '内蒙古', '乌海', '乌海');
INSERT INTO `city_info` VALUES ('101080401', '内蒙古', '乌兰察布', '乌兰察布');
INSERT INTO `city_info` VALUES ('101080402', '内蒙古', '乌兰察布', '卓资');
INSERT INTO `city_info` VALUES ('101080403', '内蒙古', '乌兰察布', '化德');
INSERT INTO `city_info` VALUES ('101080404', '内蒙古', '乌兰察布', '商都');
INSERT INTO `city_info` VALUES ('101080406', '内蒙古', '乌兰察布', '兴和');
INSERT INTO `city_info` VALUES ('101080407', '内蒙古', '乌兰察布', '凉城');
INSERT INTO `city_info` VALUES ('101080408', '内蒙古', '乌兰察布', '察右前旗');
INSERT INTO `city_info` VALUES ('101080409', '内蒙古', '乌兰察布', '察右中旗');
INSERT INTO `city_info` VALUES ('101080410', '内蒙古', '乌兰察布', '察右后旗');
INSERT INTO `city_info` VALUES ('101080411', '内蒙古', '乌兰察布', '四子王旗');
INSERT INTO `city_info` VALUES ('101080412', '内蒙古', '乌兰察布', '丰镇');
INSERT INTO `city_info` VALUES ('101080501', '内蒙古', '通辽', '通辽');
INSERT INTO `city_info` VALUES ('101080502', '内蒙古', '通辽', '舍伯吐');
INSERT INTO `city_info` VALUES ('101080503', '内蒙古', '通辽', '科左中旗');
INSERT INTO `city_info` VALUES ('101080504', '内蒙古', '通辽', '科左后旗');
INSERT INTO `city_info` VALUES ('101080505', '内蒙古', '通辽', '青龙山');
INSERT INTO `city_info` VALUES ('101080506', '内蒙古', '通辽', '开鲁');
INSERT INTO `city_info` VALUES ('101080507', '内蒙古', '通辽', '库伦');
INSERT INTO `city_info` VALUES ('101080508', '内蒙古', '通辽', '奈曼');
INSERT INTO `city_info` VALUES ('101080509', '内蒙古', '通辽', '扎鲁特');
INSERT INTO `city_info` VALUES ('101080510', '内蒙古', '兴安盟', '兴安盟');
INSERT INTO `city_info` VALUES ('101080511', '内蒙古', '通辽', '巴雅尔吐胡硕');
INSERT INTO `city_info` VALUES ('101080601', '内蒙古', '赤峰', '赤峰');
INSERT INTO `city_info` VALUES ('101080603', '内蒙古', '赤峰', '阿鲁旗');
INSERT INTO `city_info` VALUES ('101080604', '内蒙古', '赤峰', '浩尔吐');
INSERT INTO `city_info` VALUES ('101080605', '内蒙古', '赤峰', '巴林左旗');
INSERT INTO `city_info` VALUES ('101080606', '内蒙古', '赤峰', '巴林右旗');
INSERT INTO `city_info` VALUES ('101080607', '内蒙古', '赤峰', '林西');
INSERT INTO `city_info` VALUES ('101080608', '内蒙古', '赤峰', '克什克腾');
INSERT INTO `city_info` VALUES ('101080609', '内蒙古', '赤峰', '翁牛特');
INSERT INTO `city_info` VALUES ('101080610', '内蒙古', '赤峰', '岗子');
INSERT INTO `city_info` VALUES ('101080611', '内蒙古', '赤峰', '喀喇沁');
INSERT INTO `city_info` VALUES ('101080612', '内蒙古', '赤峰', '八里罕');
INSERT INTO `city_info` VALUES ('101080613', '内蒙古', '赤峰', '宁城');
INSERT INTO `city_info` VALUES ('101080614', '内蒙古', '赤峰', '敖汉');
INSERT INTO `city_info` VALUES ('101080615', '内蒙古', '赤峰', '宝国吐');
INSERT INTO `city_info` VALUES ('101080701', '内蒙古', '鄂尔多斯', '鄂尔多斯');
INSERT INTO `city_info` VALUES ('101080703', '内蒙古', '鄂尔多斯', '达拉特');
INSERT INTO `city_info` VALUES ('101080704', '内蒙古', '鄂尔多斯', '准格尔');
INSERT INTO `city_info` VALUES ('101080705', '内蒙古', '鄂尔多斯', '鄂前旗');
INSERT INTO `city_info` VALUES ('101080706', '内蒙古', '鄂尔多斯', '河南');
INSERT INTO `city_info` VALUES ('101080707', '内蒙古', '鄂尔多斯', '伊克乌素');
INSERT INTO `city_info` VALUES ('101080708', '内蒙古', '鄂尔多斯', '鄂托克');
INSERT INTO `city_info` VALUES ('101080709', '内蒙古', '鄂尔多斯', '杭锦旗');
INSERT INTO `city_info` VALUES ('101080710', '内蒙古', '鄂尔多斯', '乌审旗');
INSERT INTO `city_info` VALUES ('101080711', '内蒙古', '鄂尔多斯', '伊金霍洛');
INSERT INTO `city_info` VALUES ('101080712', '内蒙古', '鄂尔多斯', '乌审召');
INSERT INTO `city_info` VALUES ('101080713', '内蒙古', '鄂尔多斯', '东胜');
INSERT INTO `city_info` VALUES ('101080801', '内蒙古', '巴彦淖尔', '巴彦淖尔');
INSERT INTO `city_info` VALUES ('101080802', '内蒙古', '巴彦淖尔', '五原');
INSERT INTO `city_info` VALUES ('101080803', '内蒙古', '巴彦淖尔', '磴口');
INSERT INTO `city_info` VALUES ('101080804', '内蒙古', '巴彦淖尔', '乌前旗');
INSERT INTO `city_info` VALUES ('101080805', '内蒙古', '巴彦淖尔', '大佘太');
INSERT INTO `city_info` VALUES ('101080806', '内蒙古', '巴彦淖尔', '乌中旗');
INSERT INTO `city_info` VALUES ('101080807', '内蒙古', '巴彦淖尔', '乌后旗');
INSERT INTO `city_info` VALUES ('101080808', '内蒙古', '巴彦淖尔', '海力素');
INSERT INTO `city_info` VALUES ('101080809', '内蒙古', '巴彦淖尔', '那仁宝力格');
INSERT INTO `city_info` VALUES ('101080810', '内蒙古', '巴彦淖尔', '杭锦后旗');
INSERT INTO `city_info` VALUES ('101080901', '内蒙古', '锡林郭勒', '锡林郭勒');
INSERT INTO `city_info` VALUES ('101080903', '内蒙古', '锡林郭勒', '二连浩特');
INSERT INTO `city_info` VALUES ('101080904', '内蒙古', '锡林郭勒', '阿巴嘎');
INSERT INTO `city_info` VALUES ('101080906', '内蒙古', '锡林郭勒', '苏左旗');
INSERT INTO `city_info` VALUES ('101080907', '内蒙古', '锡林郭勒', '苏右旗');
INSERT INTO `city_info` VALUES ('101080908', '内蒙古', '锡林郭勒', '朱日和');
INSERT INTO `city_info` VALUES ('101080909', '内蒙古', '锡林郭勒', '东乌旗');
INSERT INTO `city_info` VALUES ('101080910', '内蒙古', '锡林郭勒', '西乌旗');
INSERT INTO `city_info` VALUES ('101080911', '内蒙古', '锡林郭勒', '太仆寺');
INSERT INTO `city_info` VALUES ('101080912', '内蒙古', '锡林郭勒', '镶黄旗');
INSERT INTO `city_info` VALUES ('101080913', '内蒙古', '锡林郭勒', '正镶白旗');
INSERT INTO `city_info` VALUES ('101080914', '内蒙古', '锡林郭勒', '正蓝旗');
INSERT INTO `city_info` VALUES ('101080915', '内蒙古', '锡林郭勒', '多伦');
INSERT INTO `city_info` VALUES ('101080916', '内蒙古', '锡林郭勒', '博克图');
INSERT INTO `city_info` VALUES ('101080917', '内蒙古', '锡林郭勒', '乌拉盖');
INSERT INTO `city_info` VALUES ('101081001', '内蒙古', '呼伦贝尔', '呼伦贝尔');
INSERT INTO `city_info` VALUES ('101081002', '内蒙古', '呼伦贝尔', '小二沟');
INSERT INTO `city_info` VALUES ('101081003', '内蒙古', '呼伦贝尔', '阿荣旗');
INSERT INTO `city_info` VALUES ('101081004', '内蒙古', '呼伦贝尔', '莫力达瓦');
INSERT INTO `city_info` VALUES ('101081005', '内蒙古', '呼伦贝尔', '鄂伦春旗');
INSERT INTO `city_info` VALUES ('101081006', '内蒙古', '呼伦贝尔', '鄂温克旗');
INSERT INTO `city_info` VALUES ('101081007', '内蒙古', '呼伦贝尔', '陈旗');
INSERT INTO `city_info` VALUES ('101081008', '内蒙古', '呼伦贝尔', '新左旗');
INSERT INTO `city_info` VALUES ('101081009', '内蒙古', '呼伦贝尔', '新右旗');
INSERT INTO `city_info` VALUES ('101081010', '内蒙古', '呼伦贝尔', '满洲里');
INSERT INTO `city_info` VALUES ('101081011', '内蒙古', '呼伦贝尔', '牙克石');
INSERT INTO `city_info` VALUES ('101081012', '内蒙古', '呼伦贝尔', '扎兰屯');
INSERT INTO `city_info` VALUES ('101081014', '内蒙古', '呼伦贝尔', '额尔古纳');
INSERT INTO `city_info` VALUES ('101081015', '内蒙古', '呼伦贝尔', '根河');
INSERT INTO `city_info` VALUES ('101081016', '内蒙古', '呼伦贝尔', '图里河');
INSERT INTO `city_info` VALUES ('101081101', '内蒙古', '兴安盟', '乌兰浩特');
INSERT INTO `city_info` VALUES ('101081102', '内蒙古', '兴安盟', '阿尔山');
INSERT INTO `city_info` VALUES ('101081103', '内蒙古', '兴安盟', '科右中旗');
INSERT INTO `city_info` VALUES ('101081104', '内蒙古', '兴安盟', '胡尔勒');
INSERT INTO `city_info` VALUES ('101081105', '内蒙古', '兴安盟', '扎赉特');
INSERT INTO `city_info` VALUES ('101081106', '内蒙古', '兴安盟', '索伦');
INSERT INTO `city_info` VALUES ('101081107', '内蒙古', '兴安盟', '突泉');
INSERT INTO `city_info` VALUES ('101081108', '内蒙古', '通辽', '霍林郭勒');
INSERT INTO `city_info` VALUES ('101081109', '内蒙古', '兴安盟', '科右前旗');
INSERT INTO `city_info` VALUES ('101081201', '内蒙古', '阿拉善盟', '阿拉善盟');
INSERT INTO `city_info` VALUES ('101081202', '内蒙古', '阿拉善盟', '阿右旗');
INSERT INTO `city_info` VALUES ('101081203', '内蒙古', '阿拉善盟', '额济纳');
INSERT INTO `city_info` VALUES ('101081204', '内蒙古', '阿拉善盟', '拐子湖');
INSERT INTO `city_info` VALUES ('101081205', '内蒙古', '阿拉善盟', '吉兰太');
INSERT INTO `city_info` VALUES ('101081206', '内蒙古', '阿拉善盟', '锡林高勒');
INSERT INTO `city_info` VALUES ('101081207', '内蒙古', '阿拉善盟', '头道湖');
INSERT INTO `city_info` VALUES ('101081208', '内蒙古', '阿拉善盟', '中泉子');
INSERT INTO `city_info` VALUES ('101081209', '内蒙古', '阿拉善盟', '诺尔公');
INSERT INTO `city_info` VALUES ('101081210', '内蒙古', '阿拉善盟', '雅布赖');
INSERT INTO `city_info` VALUES ('101081211', '内蒙古', '阿拉善盟', '乌斯泰');
INSERT INTO `city_info` VALUES ('101081212', '内蒙古', '阿拉善盟', '孪井滩');
INSERT INTO `city_info` VALUES ('101090101', '河北', '石家庄', '石家庄');
INSERT INTO `city_info` VALUES ('101090102', '河北', '石家庄', '井陉');
INSERT INTO `city_info` VALUES ('101090103', '河北', '石家庄', '正定');
INSERT INTO `city_info` VALUES ('101090104', '河北', '石家庄', '栾城');
INSERT INTO `city_info` VALUES ('101090105', '河北', '石家庄', '行唐');
INSERT INTO `city_info` VALUES ('101090106', '河北', '石家庄', '灵寿');
INSERT INTO `city_info` VALUES ('101090107', '河北', '石家庄', '高邑');
INSERT INTO `city_info` VALUES ('101090108', '河北', '石家庄', '深泽');
INSERT INTO `city_info` VALUES ('101090109', '河北', '石家庄', '赞皇');
INSERT INTO `city_info` VALUES ('101090110', '河北', '石家庄', '无极');
INSERT INTO `city_info` VALUES ('101090111', '河北', '石家庄', '平山');
INSERT INTO `city_info` VALUES ('101090112', '河北', '石家庄', '元氏');
INSERT INTO `city_info` VALUES ('101090113', '河北', '石家庄', '赵县');
INSERT INTO `city_info` VALUES ('101090114', '河北', '石家庄', '辛集');
INSERT INTO `city_info` VALUES ('101090115', '河北', '石家庄', '藁城');
INSERT INTO `city_info` VALUES ('101090116', '河北', '石家庄', '晋州');
INSERT INTO `city_info` VALUES ('101090117', '河北', '石家庄', '新乐');
INSERT INTO `city_info` VALUES ('101090118', '河北', '石家庄', '鹿泉');
INSERT INTO `city_info` VALUES ('101090201', '河北', '保定', '保定');
INSERT INTO `city_info` VALUES ('101090202', '河北', '保定', '满城');
INSERT INTO `city_info` VALUES ('101090203', '河北', '保定', '阜平');
INSERT INTO `city_info` VALUES ('101090204', '河北', '保定', '徐水');
INSERT INTO `city_info` VALUES ('101090205', '河北', '保定', '唐县');
INSERT INTO `city_info` VALUES ('101090206', '河北', '保定', '高阳');
INSERT INTO `city_info` VALUES ('101090207', '河北', '保定', '容城');
INSERT INTO `city_info` VALUES ('101090209', '河北', '保定', '涞源');
INSERT INTO `city_info` VALUES ('101090210', '河北', '保定', '望都');
INSERT INTO `city_info` VALUES ('101090211', '河北', '保定', '安新');
INSERT INTO `city_info` VALUES ('101090212', '河北', '保定', '易县');
INSERT INTO `city_info` VALUES ('101090214', '河北', '保定', '曲阳');
INSERT INTO `city_info` VALUES ('101090215', '河北', '保定', '蠡县');
INSERT INTO `city_info` VALUES ('101090216', '河北', '保定', '顺平');
INSERT INTO `city_info` VALUES ('101090217', '河北', '保定', '雄县');
INSERT INTO `city_info` VALUES ('101090218', '河北', '保定', '涿州');
INSERT INTO `city_info` VALUES ('101090219', '河北', '保定', '定州');
INSERT INTO `city_info` VALUES ('101090220', '河北', '保定', '安国');
INSERT INTO `city_info` VALUES ('101090221', '河北', '保定', '高碑店');
INSERT INTO `city_info` VALUES ('101090222', '河北', '保定', '涞水');
INSERT INTO `city_info` VALUES ('101090223', '河北', '保定', '定兴');
INSERT INTO `city_info` VALUES ('101090224', '河北', '保定', '清苑');
INSERT INTO `city_info` VALUES ('101090225', '河北', '保定', '博野');
INSERT INTO `city_info` VALUES ('101090301', '河北', '张家口', '张家口');
INSERT INTO `city_info` VALUES ('101090302', '河北', '张家口', '宣化');
INSERT INTO `city_info` VALUES ('101090303', '河北', '张家口', '张北');
INSERT INTO `city_info` VALUES ('101090304', '河北', '张家口', '康保');
INSERT INTO `city_info` VALUES ('101090305', '河北', '张家口', '沽源');
INSERT INTO `city_info` VALUES ('101090306', '河北', '张家口', '尚义');
INSERT INTO `city_info` VALUES ('101090307', '河北', '张家口', '蔚县');
INSERT INTO `city_info` VALUES ('101090308', '河北', '张家口', '阳原');
INSERT INTO `city_info` VALUES ('101090309', '河北', '张家口', '怀安');
INSERT INTO `city_info` VALUES ('101090310', '河北', '张家口', '万全');
INSERT INTO `city_info` VALUES ('101090311', '河北', '张家口', '怀来');
INSERT INTO `city_info` VALUES ('101090312', '河北', '张家口', '涿鹿');
INSERT INTO `city_info` VALUES ('101090313', '河北', '张家口', '赤城');
INSERT INTO `city_info` VALUES ('101090314', '河北', '张家口', '崇礼');
INSERT INTO `city_info` VALUES ('101090402', '河北', '承德', '承德');
INSERT INTO `city_info` VALUES ('101090403', '河北', '承德', '承德县');
INSERT INTO `city_info` VALUES ('101090404', '河北', '承德', '兴隆');
INSERT INTO `city_info` VALUES ('101090405', '河北', '承德', '平泉');
INSERT INTO `city_info` VALUES ('101090406', '河北', '承德', '滦平');
INSERT INTO `city_info` VALUES ('101090407', '河北', '承德', '隆化');
INSERT INTO `city_info` VALUES ('101090408', '河北', '承德', '丰宁');
INSERT INTO `city_info` VALUES ('101090409', '河北', '承德', '宽城');
INSERT INTO `city_info` VALUES ('101090410', '河北', '承德', '围场');
INSERT INTO `city_info` VALUES ('101090501', '河北', '唐山', '唐山');
INSERT INTO `city_info` VALUES ('101090502', '河北', '唐山', '丰南');
INSERT INTO `city_info` VALUES ('101090503', '河北', '唐山', '丰润');
INSERT INTO `city_info` VALUES ('101090504', '河北', '唐山', '滦县');
INSERT INTO `city_info` VALUES ('101090505', '河北', '唐山', '滦南');
INSERT INTO `city_info` VALUES ('101090506', '河北', '唐山', '乐亭');
INSERT INTO `city_info` VALUES ('101090507', '河北', '唐山', '迁西');
INSERT INTO `city_info` VALUES ('101090508', '河北', '唐山', '玉田');
INSERT INTO `city_info` VALUES ('101090509', '河北', '唐山', '唐海');
INSERT INTO `city_info` VALUES ('101090510', '河北', '唐山', '遵化');
INSERT INTO `city_info` VALUES ('101090511', '河北', '唐山', '迁安');
INSERT INTO `city_info` VALUES ('101090512', '河北', '唐山', '曹妃甸');
INSERT INTO `city_info` VALUES ('101090601', '河北', '廊坊', '廊坊');
INSERT INTO `city_info` VALUES ('101090602', '河北', '廊坊', '固安');
INSERT INTO `city_info` VALUES ('101090603', '河北', '廊坊', '永清');
INSERT INTO `city_info` VALUES ('101090604', '河北', '廊坊', '香河');
INSERT INTO `city_info` VALUES ('101090605', '河北', '廊坊', '大城');
INSERT INTO `city_info` VALUES ('101090606', '河北', '廊坊', '文安');
INSERT INTO `city_info` VALUES ('101090607', '河北', '廊坊', '大厂');
INSERT INTO `city_info` VALUES ('101090608', '河北', '廊坊', '霸州');
INSERT INTO `city_info` VALUES ('101090609', '河北', '廊坊', '三河');
INSERT INTO `city_info` VALUES ('101090701', '河北', '沧州', '沧州');
INSERT INTO `city_info` VALUES ('101090702', '河北', '沧州', '青县');
INSERT INTO `city_info` VALUES ('101090703', '河北', '沧州', '东光');
INSERT INTO `city_info` VALUES ('101090704', '河北', '沧州', '海兴');
INSERT INTO `city_info` VALUES ('101090705', '河北', '沧州', '盐山');
INSERT INTO `city_info` VALUES ('101090706', '河北', '沧州', '肃宁');
INSERT INTO `city_info` VALUES ('101090707', '河北', '沧州', '南皮');
INSERT INTO `city_info` VALUES ('101090708', '河北', '沧州', '吴桥');
INSERT INTO `city_info` VALUES ('101090709', '河北', '沧州', '献县');
INSERT INTO `city_info` VALUES ('101090710', '河北', '沧州', '孟村');
INSERT INTO `city_info` VALUES ('101090711', '河北', '沧州', '泊头');
INSERT INTO `city_info` VALUES ('101090712', '河北', '沧州', '任丘');
INSERT INTO `city_info` VALUES ('101090713', '河北', '沧州', '黄骅');
INSERT INTO `city_info` VALUES ('101090714', '河北', '沧州', '河间');
INSERT INTO `city_info` VALUES ('101090716', '河北', '沧州', '沧县');
INSERT INTO `city_info` VALUES ('101090801', '河北', '衡水', '衡水');
INSERT INTO `city_info` VALUES ('101090802', '河北', '衡水', '枣强');
INSERT INTO `city_info` VALUES ('101090803', '河北', '衡水', '武邑');
INSERT INTO `city_info` VALUES ('101090804', '河北', '衡水', '武强');
INSERT INTO `city_info` VALUES ('101090805', '河北', '衡水', '饶阳');
INSERT INTO `city_info` VALUES ('101090806', '河北', '衡水', '安平');
INSERT INTO `city_info` VALUES ('101090807', '河北', '衡水', '故城');
INSERT INTO `city_info` VALUES ('101090808', '河北', '衡水', '景县');
INSERT INTO `city_info` VALUES ('101090809', '河北', '衡水', '阜城');
INSERT INTO `city_info` VALUES ('101090810', '河北', '衡水', '冀州');
INSERT INTO `city_info` VALUES ('101090811', '河北', '衡水', '深州');
INSERT INTO `city_info` VALUES ('101090901', '河北', '邢台', '邢台');
INSERT INTO `city_info` VALUES ('101090902', '河北', '邢台', '临城');
INSERT INTO `city_info` VALUES ('101090904', '河北', '邢台', '内丘');
INSERT INTO `city_info` VALUES ('101090905', '河北', '邢台', '柏乡');
INSERT INTO `city_info` VALUES ('101090906', '河北', '邢台', '隆尧');
INSERT INTO `city_info` VALUES ('101090907', '河北', '邢台', '南和');
INSERT INTO `city_info` VALUES ('101090908', '河北', '邢台', '宁晋');
INSERT INTO `city_info` VALUES ('101090909', '河北', '邢台', '巨鹿');
INSERT INTO `city_info` VALUES ('101090910', '河北', '邢台', '新河');
INSERT INTO `city_info` VALUES ('101090911', '河北', '邢台', '广宗');
INSERT INTO `city_info` VALUES ('101090912', '河北', '邢台', '平乡');
INSERT INTO `city_info` VALUES ('101090913', '河北', '邢台', '威县');
INSERT INTO `city_info` VALUES ('101090914', '河北', '邢台', '清河');
INSERT INTO `city_info` VALUES ('101090915', '河北', '邢台', '临西');
INSERT INTO `city_info` VALUES ('101090916', '河北', '邢台', '南宫');
INSERT INTO `city_info` VALUES ('101090917', '河北', '邢台', '沙河');
INSERT INTO `city_info` VALUES ('101090918', '河北', '邢台', '任县');
INSERT INTO `city_info` VALUES ('101091001', '河北', '邯郸', '邯郸');
INSERT INTO `city_info` VALUES ('101091002', '河北', '邯郸', '峰峰');
INSERT INTO `city_info` VALUES ('101091003', '河北', '邯郸', '临漳');
INSERT INTO `city_info` VALUES ('101091004', '河北', '邯郸', '成安');
INSERT INTO `city_info` VALUES ('101091005', '河北', '邯郸', '大名');
INSERT INTO `city_info` VALUES ('101091006', '河北', '邯郸', '涉县');
INSERT INTO `city_info` VALUES ('101091007', '河北', '邯郸', '磁县');
INSERT INTO `city_info` VALUES ('101091008', '河北', '邯郸', '肥乡');
INSERT INTO `city_info` VALUES ('101091009', '河北', '邯郸', '永年');
INSERT INTO `city_info` VALUES ('101091010', '河北', '邯郸', '邱县');
INSERT INTO `city_info` VALUES ('101091011', '河北', '邯郸', '鸡泽');
INSERT INTO `city_info` VALUES ('101091012', '河北', '邯郸', '广平');
INSERT INTO `city_info` VALUES ('101091013', '河北', '邯郸', '馆陶');
INSERT INTO `city_info` VALUES ('101091014', '河北', '邯郸', '魏县');
INSERT INTO `city_info` VALUES ('101091015', '河北', '邯郸', '曲周');
INSERT INTO `city_info` VALUES ('101091016', '河北', '邯郸', '武安');
INSERT INTO `city_info` VALUES ('101091101', '河北', '秦皇岛', '秦皇岛');
INSERT INTO `city_info` VALUES ('101091102', '河北', '秦皇岛', '青龙');
INSERT INTO `city_info` VALUES ('101091103', '河北', '秦皇岛', '昌黎');
INSERT INTO `city_info` VALUES ('101091104', '河北', '秦皇岛', '抚宁');
INSERT INTO `city_info` VALUES ('101091105', '河北', '秦皇岛', '卢龙');
INSERT INTO `city_info` VALUES ('101091106', '河北', '秦皇岛', '北戴河');
INSERT INTO `city_info` VALUES ('101100101', '山西', '太原', '太原');
INSERT INTO `city_info` VALUES ('101100102', '山西', '太原', '清徐');
INSERT INTO `city_info` VALUES ('101100103', '山西', '太原', '阳曲');
INSERT INTO `city_info` VALUES ('101100104', '山西', '太原', '娄烦');
INSERT INTO `city_info` VALUES ('101100105', '山西', '太原', '古交');
INSERT INTO `city_info` VALUES ('101100106', '山西', '太原', '尖草坪区');
INSERT INTO `city_info` VALUES ('101100107', '山西', '太原', '小店区');
INSERT INTO `city_info` VALUES ('101100201', '山西', '大同', '大同');
INSERT INTO `city_info` VALUES ('101100202', '山西', '大同', '阳高');
INSERT INTO `city_info` VALUES ('101100203', '山西', '大同', '大同县');
INSERT INTO `city_info` VALUES ('101100204', '山西', '大同', '天镇');
INSERT INTO `city_info` VALUES ('101100205', '山西', '大同', '广灵');
INSERT INTO `city_info` VALUES ('101100206', '山西', '大同', '灵丘');
INSERT INTO `city_info` VALUES ('101100207', '山西', '大同', '浑源');
INSERT INTO `city_info` VALUES ('101100208', '山西', '大同', '左云');
INSERT INTO `city_info` VALUES ('101100301', '山西', '阳泉', '阳泉');
INSERT INTO `city_info` VALUES ('101100302', '山西', '阳泉', '盂县');
INSERT INTO `city_info` VALUES ('101100303', '山西', '阳泉', '平定');
INSERT INTO `city_info` VALUES ('101100401', '山西', '晋中', '晋中');
INSERT INTO `city_info` VALUES ('101100402', '山西', '晋中', '榆次');
INSERT INTO `city_info` VALUES ('101100403', '山西', '晋中', '榆社');
INSERT INTO `city_info` VALUES ('101100404', '山西', '晋中', '左权');
INSERT INTO `city_info` VALUES ('101100405', '山西', '晋中', '和顺');
INSERT INTO `city_info` VALUES ('101100406', '山西', '晋中', '昔阳');
INSERT INTO `city_info` VALUES ('101100407', '山西', '晋中', '寿阳');
INSERT INTO `city_info` VALUES ('101100408', '山西', '晋中', '太谷');
INSERT INTO `city_info` VALUES ('101100409', '山西', '晋中', '祁县');
INSERT INTO `city_info` VALUES ('101100410', '山西', '晋中', '平遥');
INSERT INTO `city_info` VALUES ('101100411', '山西', '晋中', '灵石');
INSERT INTO `city_info` VALUES ('101100412', '山西', '晋中', '介休');
INSERT INTO `city_info` VALUES ('101100501', '山西', '长治', '长治');
INSERT INTO `city_info` VALUES ('101100502', '山西', '长治', '黎城');
INSERT INTO `city_info` VALUES ('101100503', '山西', '长治', '屯留');
INSERT INTO `city_info` VALUES ('101100504', '山西', '长治', '潞城');
INSERT INTO `city_info` VALUES ('101100505', '山西', '长治', '襄垣');
INSERT INTO `city_info` VALUES ('101100506', '山西', '长治', '平顺');
INSERT INTO `city_info` VALUES ('101100507', '山西', '长治', '武乡');
INSERT INTO `city_info` VALUES ('101100508', '山西', '长治', '沁县');
INSERT INTO `city_info` VALUES ('101100509', '山西', '长治', '长子');
INSERT INTO `city_info` VALUES ('101100510', '山西', '长治', '沁源');
INSERT INTO `city_info` VALUES ('101100511', '山西', '长治', '壶关');
INSERT INTO `city_info` VALUES ('101100601', '山西', '晋城', '晋城');
INSERT INTO `city_info` VALUES ('101100602', '山西', '晋城', '沁水');
INSERT INTO `city_info` VALUES ('101100603', '山西', '晋城', '阳城');
INSERT INTO `city_info` VALUES ('101100604', '山西', '晋城', '陵川');
INSERT INTO `city_info` VALUES ('101100605', '山西', '晋城', '高平');
INSERT INTO `city_info` VALUES ('101100606', '山西', '晋城', '泽州');
INSERT INTO `city_info` VALUES ('101100701', '山西', '临汾', '临汾');
INSERT INTO `city_info` VALUES ('101100702', '山西', '临汾', '曲沃');
INSERT INTO `city_info` VALUES ('101100703', '山西', '临汾', '永和');
INSERT INTO `city_info` VALUES ('101100704', '山西', '临汾', '隰县');
INSERT INTO `city_info` VALUES ('101100705', '山西', '临汾', '大宁');
INSERT INTO `city_info` VALUES ('101100706', '山西', '临汾', '吉县');
INSERT INTO `city_info` VALUES ('101100707', '山西', '临汾', '襄汾');
INSERT INTO `city_info` VALUES ('101100708', '山西', '临汾', '蒲县');
INSERT INTO `city_info` VALUES ('101100709', '山西', '临汾', '汾西');
INSERT INTO `city_info` VALUES ('101100710', '山西', '临汾', '洪洞');
INSERT INTO `city_info` VALUES ('101100711', '山西', '临汾', '霍州');
INSERT INTO `city_info` VALUES ('101100712', '山西', '临汾', '乡宁');
INSERT INTO `city_info` VALUES ('101100713', '山西', '临汾', '翼城');
INSERT INTO `city_info` VALUES ('101100714', '山西', '临汾', '侯马');
INSERT INTO `city_info` VALUES ('101100715', '山西', '临汾', '浮山');
INSERT INTO `city_info` VALUES ('101100716', '山西', '临汾', '安泽');
INSERT INTO `city_info` VALUES ('101100717', '山西', '临汾', '古县');
INSERT INTO `city_info` VALUES ('101100801', '山西', '运城', '运城');
INSERT INTO `city_info` VALUES ('101100802', '山西', '运城', '临猗');
INSERT INTO `city_info` VALUES ('101100803', '山西', '运城', '稷山');
INSERT INTO `city_info` VALUES ('101100804', '山西', '运城', '万荣');
INSERT INTO `city_info` VALUES ('101100805', '山西', '运城', '河津');
INSERT INTO `city_info` VALUES ('101100806', '山西', '运城', '新绛');
INSERT INTO `city_info` VALUES ('101100807', '山西', '运城', '绛县');
INSERT INTO `city_info` VALUES ('101100808', '山西', '运城', '闻喜');
INSERT INTO `city_info` VALUES ('101100809', '山西', '运城', '垣曲');
INSERT INTO `city_info` VALUES ('101100810', '山西', '运城', '永济');
INSERT INTO `city_info` VALUES ('101100811', '山西', '运城', '芮城');
INSERT INTO `city_info` VALUES ('101100812', '山西', '运城', '夏县');
INSERT INTO `city_info` VALUES ('101100813', '山西', '运城', '平陆');
INSERT INTO `city_info` VALUES ('101100901', '山西', '朔州', '朔州');
INSERT INTO `city_info` VALUES ('101100902', '山西', '朔州', '平鲁');
INSERT INTO `city_info` VALUES ('101100903', '山西', '朔州', '山阴');
INSERT INTO `city_info` VALUES ('101100904', '山西', '朔州', '右玉');
INSERT INTO `city_info` VALUES ('101100905', '山西', '朔州', '应县');
INSERT INTO `city_info` VALUES ('101100906', '山西', '朔州', '怀仁');
INSERT INTO `city_info` VALUES ('101101001', '山西', '忻州', '忻州');
INSERT INTO `city_info` VALUES ('101101002', '山西', '忻州', '定襄');
INSERT INTO `city_info` VALUES ('101101003', '山西', '忻州', '五台县');
INSERT INTO `city_info` VALUES ('101101004', '山西', '忻州', '河曲');
INSERT INTO `city_info` VALUES ('101101005', '山西', '忻州', '偏关');
INSERT INTO `city_info` VALUES ('101101006', '山西', '忻州', '神池');
INSERT INTO `city_info` VALUES ('101101007', '山西', '忻州', '宁武');
INSERT INTO `city_info` VALUES ('101101008', '山西', '忻州', '代县');
INSERT INTO `city_info` VALUES ('101101009', '山西', '忻州', '繁峙');
INSERT INTO `city_info` VALUES ('101101010', '山西', '忻州', '五台山');
INSERT INTO `city_info` VALUES ('101101011', '山西', '忻州', '保德');
INSERT INTO `city_info` VALUES ('101101012', '山西', '忻州', '静乐');
INSERT INTO `city_info` VALUES ('101101013', '山西', '忻州', '岢岚');
INSERT INTO `city_info` VALUES ('101101014', '山西', '忻州', '五寨');
INSERT INTO `city_info` VALUES ('101101015', '山西', '忻州', '原平');
INSERT INTO `city_info` VALUES ('101101100', '山西', '吕梁', '吕梁');
INSERT INTO `city_info` VALUES ('101101101', '山西', '吕梁', '离石');
INSERT INTO `city_info` VALUES ('101101102', '山西', '吕梁', '临县');
INSERT INTO `city_info` VALUES ('101101103', '山西', '吕梁', '兴县');
INSERT INTO `city_info` VALUES ('101101104', '山西', '吕梁', '岚县');
INSERT INTO `city_info` VALUES ('101101105', '山西', '吕梁', '柳林');
INSERT INTO `city_info` VALUES ('101101106', '山西', '吕梁', '石楼');
INSERT INTO `city_info` VALUES ('101101107', '山西', '吕梁', '方山');
INSERT INTO `city_info` VALUES ('101101108', '山西', '吕梁', '交口');
INSERT INTO `city_info` VALUES ('101101109', '山西', '吕梁', '中阳');
INSERT INTO `city_info` VALUES ('101101110', '山西', '吕梁', '孝义');
INSERT INTO `city_info` VALUES ('101101111', '山西', '吕梁', '汾阳');
INSERT INTO `city_info` VALUES ('101101112', '山西', '吕梁', '文水');
INSERT INTO `city_info` VALUES ('101101113', '山西', '吕梁', '交城');
INSERT INTO `city_info` VALUES ('101110101', '陕西', '西安', '西安');
INSERT INTO `city_info` VALUES ('101110102', '陕西', '西安', '长安');
INSERT INTO `city_info` VALUES ('101110103', '陕西', '西安', '临潼');
INSERT INTO `city_info` VALUES ('101110104', '陕西', '西安', '蓝田');
INSERT INTO `city_info` VALUES ('101110105', '陕西', '西安', '周至');
INSERT INTO `city_info` VALUES ('101110106', '陕西', '西安', '户县');
INSERT INTO `city_info` VALUES ('101110107', '陕西', '西安', '高陵');
INSERT INTO `city_info` VALUES ('101110200', '陕西', '咸阳', '咸阳');
INSERT INTO `city_info` VALUES ('101110201', '陕西', '咸阳', '三原');
INSERT INTO `city_info` VALUES ('101110202', '陕西', '咸阳', '礼泉');
INSERT INTO `city_info` VALUES ('101110203', '陕西', '咸阳', '永寿');
INSERT INTO `city_info` VALUES ('101110204', '陕西', '咸阳', '淳化');
INSERT INTO `city_info` VALUES ('101110205', '陕西', '咸阳', '泾阳');
INSERT INTO `city_info` VALUES ('101110206', '陕西', '咸阳', '武功');
INSERT INTO `city_info` VALUES ('101110207', '陕西', '咸阳', '乾县');
INSERT INTO `city_info` VALUES ('101110208', '陕西', '咸阳', '彬县');
INSERT INTO `city_info` VALUES ('101110209', '陕西', '咸阳', '长武');
INSERT INTO `city_info` VALUES ('101110210', '陕西', '咸阳', '旬邑');
INSERT INTO `city_info` VALUES ('101110211', '陕西', '咸阳', '兴平');
INSERT INTO `city_info` VALUES ('101110300', '陕西', '延安', '延安');
INSERT INTO `city_info` VALUES ('101110301', '陕西', '延安', '延长');
INSERT INTO `city_info` VALUES ('101110302', '陕西', '延安', '延川');
INSERT INTO `city_info` VALUES ('101110303', '陕西', '延安', '子长');
INSERT INTO `city_info` VALUES ('101110304', '陕西', '延安', '宜川');
INSERT INTO `city_info` VALUES ('101110305', '陕西', '延安', '富县');
INSERT INTO `city_info` VALUES ('101110306', '陕西', '延安', '志丹');
INSERT INTO `city_info` VALUES ('101110307', '陕西', '延安', '安塞');
INSERT INTO `city_info` VALUES ('101110308', '陕西', '延安', '甘泉');
INSERT INTO `city_info` VALUES ('101110309', '陕西', '延安', '洛川');
INSERT INTO `city_info` VALUES ('101110310', '陕西', '延安', '黄陵');
INSERT INTO `city_info` VALUES ('101110311', '陕西', '延安', '黄龙');
INSERT INTO `city_info` VALUES ('101110312', '陕西', '延安', '吴起');
INSERT INTO `city_info` VALUES ('101110401', '陕西', '榆林', '榆林');
INSERT INTO `city_info` VALUES ('101110402', '陕西', '榆林', '府谷');
INSERT INTO `city_info` VALUES ('101110403', '陕西', '榆林', '神木');
INSERT INTO `city_info` VALUES ('101110404', '陕西', '榆林', '佳县');
INSERT INTO `city_info` VALUES ('101110405', '陕西', '榆林', '定边');
INSERT INTO `city_info` VALUES ('101110406', '陕西', '榆林', '靖边');
INSERT INTO `city_info` VALUES ('101110407', '陕西', '榆林', '横山');
INSERT INTO `city_info` VALUES ('101110408', '陕西', '榆林', '米脂');
INSERT INTO `city_info` VALUES ('101110409', '陕西', '榆林', '子洲');
INSERT INTO `city_info` VALUES ('101110410', '陕西', '榆林', '绥德');
INSERT INTO `city_info` VALUES ('101110411', '陕西', '榆林', '吴堡');
INSERT INTO `city_info` VALUES ('101110412', '陕西', '榆林', '清涧');
INSERT INTO `city_info` VALUES ('101110413', '陕西', '榆林', '榆阳');
INSERT INTO `city_info` VALUES ('101110501', '陕西', '渭南', '渭南');
INSERT INTO `city_info` VALUES ('101110502', '陕西', '渭南', '华县');
INSERT INTO `city_info` VALUES ('101110503', '陕西', '渭南', '潼关');
INSERT INTO `city_info` VALUES ('101110504', '陕西', '渭南', '大荔');
INSERT INTO `city_info` VALUES ('101110505', '陕西', '渭南', '白水');
INSERT INTO `city_info` VALUES ('101110506', '陕西', '渭南', '富平');
INSERT INTO `city_info` VALUES ('101110507', '陕西', '渭南', '蒲城');
INSERT INTO `city_info` VALUES ('101110508', '陕西', '渭南', '澄城');
INSERT INTO `city_info` VALUES ('101110509', '陕西', '渭南', '合阳');
INSERT INTO `city_info` VALUES ('101110510', '陕西', '渭南', '韩城');
INSERT INTO `city_info` VALUES ('101110511', '陕西', '渭南', '华阴');
INSERT INTO `city_info` VALUES ('101110601', '陕西', '商洛', '商洛');
INSERT INTO `city_info` VALUES ('101110602', '陕西', '商洛', '洛南');
INSERT INTO `city_info` VALUES ('101110603', '陕西', '商洛', '柞水');
INSERT INTO `city_info` VALUES ('101110604', '陕西', '商洛', '商州');
INSERT INTO `city_info` VALUES ('101110605', '陕西', '商洛', '镇安');
INSERT INTO `city_info` VALUES ('101110606', '陕西', '商洛', '丹凤');
INSERT INTO `city_info` VALUES ('101110607', '陕西', '商洛', '商南');
INSERT INTO `city_info` VALUES ('101110608', '陕西', '商洛', '山阳');
INSERT INTO `city_info` VALUES ('101110701', '陕西', '安康', '安康');
INSERT INTO `city_info` VALUES ('101110702', '陕西', '安康', '紫阳');
INSERT INTO `city_info` VALUES ('101110703', '陕西', '安康', '石泉');
INSERT INTO `city_info` VALUES ('101110704', '陕西', '安康', '汉阴');
INSERT INTO `city_info` VALUES ('101110705', '陕西', '安康', '旬阳');
INSERT INTO `city_info` VALUES ('101110706', '陕西', '安康', '岚皋');
INSERT INTO `city_info` VALUES ('101110707', '陕西', '安康', '平利');
INSERT INTO `city_info` VALUES ('101110708', '陕西', '安康', '白河');
INSERT INTO `city_info` VALUES ('101110709', '陕西', '安康', '镇坪');
INSERT INTO `city_info` VALUES ('101110710', '陕西', '安康', '宁陕');
INSERT INTO `city_info` VALUES ('101110801', '陕西', '汉中', '汉中');
INSERT INTO `city_info` VALUES ('101110802', '陕西', '汉中', '略阳');
INSERT INTO `city_info` VALUES ('101110803', '陕西', '汉中', '勉县');
INSERT INTO `city_info` VALUES ('101110804', '陕西', '汉中', '留坝');
INSERT INTO `city_info` VALUES ('101110805', '陕西', '汉中', '洋县');
INSERT INTO `city_info` VALUES ('101110806', '陕西', '汉中', '城固');
INSERT INTO `city_info` VALUES ('101110807', '陕西', '汉中', '西乡');
INSERT INTO `city_info` VALUES ('101110808', '陕西', '汉中', '佛坪');
INSERT INTO `city_info` VALUES ('101110809', '陕西', '汉中', '宁强');
INSERT INTO `city_info` VALUES ('101110810', '陕西', '汉中', '南郑');
INSERT INTO `city_info` VALUES ('101110811', '陕西', '汉中', '镇巴');
INSERT INTO `city_info` VALUES ('101110901', '陕西', '宝鸡', '宝鸡');
INSERT INTO `city_info` VALUES ('101110903', '陕西', '宝鸡', '千阳');
INSERT INTO `city_info` VALUES ('101110904', '陕西', '宝鸡', '麟游');
INSERT INTO `city_info` VALUES ('101110905', '陕西', '宝鸡', '岐山');
INSERT INTO `city_info` VALUES ('101110906', '陕西', '宝鸡', '凤翔');
INSERT INTO `city_info` VALUES ('101110907', '陕西', '宝鸡', '扶风');
INSERT INTO `city_info` VALUES ('101110908', '陕西', '宝鸡', '眉县');
INSERT INTO `city_info` VALUES ('101110909', '陕西', '宝鸡', '太白');
INSERT INTO `city_info` VALUES ('101110910', '陕西', '宝鸡', '凤县');
INSERT INTO `city_info` VALUES ('101110911', '陕西', '宝鸡', '陇县');
INSERT INTO `city_info` VALUES ('101110912', '陕西', '宝鸡', '陈仓');
INSERT INTO `city_info` VALUES ('101111001', '陕西', '铜川', '铜川');
INSERT INTO `city_info` VALUES ('101111002', '陕西', '铜川', '耀县');
INSERT INTO `city_info` VALUES ('101111003', '陕西', '铜川', '宜君');
INSERT INTO `city_info` VALUES ('101111004', '陕西', '铜川', '耀州');
INSERT INTO `city_info` VALUES ('101111101', '陕西', '杨凌', '杨凌');
INSERT INTO `city_info` VALUES ('101120101', '山东', '济南', '济南');
INSERT INTO `city_info` VALUES ('101120102', '山东', '济南', '长清');
INSERT INTO `city_info` VALUES ('101120103', '山东', '济南', '商河');
INSERT INTO `city_info` VALUES ('101120104', '山东', '济南', '章丘');
INSERT INTO `city_info` VALUES ('101120105', '山东', '济南', '平阴');
INSERT INTO `city_info` VALUES ('101120106', '山东', '济南', '济阳');
INSERT INTO `city_info` VALUES ('101120201', '山东', '青岛', '青岛');
INSERT INTO `city_info` VALUES ('101120202', '山东', '青岛', '崂山');
INSERT INTO `city_info` VALUES ('101120204', '山东', '青岛', '即墨');
INSERT INTO `city_info` VALUES ('101120205', '山东', '青岛', '胶州');
INSERT INTO `city_info` VALUES ('101120206', '山东', '青岛', '胶南');
INSERT INTO `city_info` VALUES ('101120207', '山东', '青岛', '莱西');
INSERT INTO `city_info` VALUES ('101120208', '山东', '青岛', '平度');
INSERT INTO `city_info` VALUES ('101120301', '山东', '淄博', '淄博');
INSERT INTO `city_info` VALUES ('101120302', '山东', '淄博', '淄川');
INSERT INTO `city_info` VALUES ('101120303', '山东', '淄博', '博山');
INSERT INTO `city_info` VALUES ('101120304', '山东', '淄博', '高青');
INSERT INTO `city_info` VALUES ('101120305', '山东', '淄博', '周村');
INSERT INTO `city_info` VALUES ('101120306', '山东', '淄博', '沂源');
INSERT INTO `city_info` VALUES ('101120307', '山东', '淄博', '桓台');
INSERT INTO `city_info` VALUES ('101120308', '山东', '淄博', '临淄');
INSERT INTO `city_info` VALUES ('101120401', '山东', '德州', '德州');
INSERT INTO `city_info` VALUES ('101120402', '山东', '德州', '武城');
INSERT INTO `city_info` VALUES ('101120403', '山东', '德州', '临邑');
INSERT INTO `city_info` VALUES ('101120404', '山东', '德州', '陵县');
INSERT INTO `city_info` VALUES ('101120405', '山东', '德州', '齐河');
INSERT INTO `city_info` VALUES ('101120406', '山东', '德州', '乐陵');
INSERT INTO `city_info` VALUES ('101120407', '山东', '德州', '庆云');
INSERT INTO `city_info` VALUES ('101120408', '山东', '德州', '平原');
INSERT INTO `city_info` VALUES ('101120409', '山东', '德州', '宁津');
INSERT INTO `city_info` VALUES ('101120410', '山东', '德州', '夏津');
INSERT INTO `city_info` VALUES ('101120411', '山东', '德州', '禹城');
INSERT INTO `city_info` VALUES ('101120501', '山东', '烟台', '烟台');
INSERT INTO `city_info` VALUES ('101120502', '山东', '烟台', '莱州');
INSERT INTO `city_info` VALUES ('101120503', '山东', '烟台', '长岛');
INSERT INTO `city_info` VALUES ('101120504', '山东', '烟台', '蓬莱');
INSERT INTO `city_info` VALUES ('101120505', '山东', '烟台', '龙口');
INSERT INTO `city_info` VALUES ('101120506', '山东', '烟台', '招远');
INSERT INTO `city_info` VALUES ('101120507', '山东', '烟台', '栖霞');
INSERT INTO `city_info` VALUES ('101120508', '山东', '烟台', '福山');
INSERT INTO `city_info` VALUES ('101120509', '山东', '烟台', '牟平');
INSERT INTO `city_info` VALUES ('101120510', '山东', '烟台', '莱阳');
INSERT INTO `city_info` VALUES ('101120511', '山东', '烟台', '海阳');
INSERT INTO `city_info` VALUES ('101120601', '山东', '潍坊', '潍坊');
INSERT INTO `city_info` VALUES ('101120602', '山东', '潍坊', '青州');
INSERT INTO `city_info` VALUES ('101120603', '山东', '潍坊', '寿光');
INSERT INTO `city_info` VALUES ('101120604', '山东', '潍坊', '临朐');
INSERT INTO `city_info` VALUES ('101120605', '山东', '潍坊', '昌乐');
INSERT INTO `city_info` VALUES ('101120606', '山东', '潍坊', '昌邑');
INSERT INTO `city_info` VALUES ('101120607', '山东', '潍坊', '安丘');
INSERT INTO `city_info` VALUES ('101120608', '山东', '潍坊', '高密');
INSERT INTO `city_info` VALUES ('101120609', '山东', '潍坊', '诸城');
INSERT INTO `city_info` VALUES ('101120701', '山东', '济宁', '济宁');
INSERT INTO `city_info` VALUES ('101120702', '山东', '济宁', '嘉祥');
INSERT INTO `city_info` VALUES ('101120703', '山东', '济宁', '微山');
INSERT INTO `city_info` VALUES ('101120704', '山东', '济宁', '鱼台');
INSERT INTO `city_info` VALUES ('101120705', '山东', '济宁', '兖州');
INSERT INTO `city_info` VALUES ('101120706', '山东', '济宁', '金乡');
INSERT INTO `city_info` VALUES ('101120707', '山东', '济宁', '汶上');
INSERT INTO `city_info` VALUES ('101120708', '山东', '济宁', '泗水');
INSERT INTO `city_info` VALUES ('101120709', '山东', '济宁', '梁山');
INSERT INTO `city_info` VALUES ('101120710', '山东', '济宁', '曲阜');
INSERT INTO `city_info` VALUES ('101120711', '山东', '济宁', '邹城');
INSERT INTO `city_info` VALUES ('101120801', '山东', '泰安', '泰安');
INSERT INTO `city_info` VALUES ('101120802', '山东', '泰安', '新泰');
INSERT INTO `city_info` VALUES ('101120804', '山东', '泰安', '肥城');
INSERT INTO `city_info` VALUES ('101120805', '山东', '泰安', '东平');
INSERT INTO `city_info` VALUES ('101120806', '山东', '泰安', '宁阳');
INSERT INTO `city_info` VALUES ('101120901', '山东', '临沂', '临沂');
INSERT INTO `city_info` VALUES ('101120902', '山东', '临沂', '莒南');
INSERT INTO `city_info` VALUES ('101120903', '山东', '临沂', '沂南');
INSERT INTO `city_info` VALUES ('101120904', '山东', '临沂', '苍山');
INSERT INTO `city_info` VALUES ('101120905', '山东', '临沂', '临沭');
INSERT INTO `city_info` VALUES ('101120906', '山东', '临沂', '郯城');
INSERT INTO `city_info` VALUES ('101120907', '山东', '临沂', '蒙阴');
INSERT INTO `city_info` VALUES ('101120908', '山东', '临沂', '平邑');
INSERT INTO `city_info` VALUES ('101120909', '山东', '临沂', '费县');
INSERT INTO `city_info` VALUES ('101120910', '山东', '临沂', '沂水');
INSERT INTO `city_info` VALUES ('101121001', '山东', '菏泽', '菏泽');
INSERT INTO `city_info` VALUES ('101121002', '山东', '菏泽', '鄄城');
INSERT INTO `city_info` VALUES ('101121003', '山东', '菏泽', '郓城');
INSERT INTO `city_info` VALUES ('101121004', '山东', '菏泽', '东明');
INSERT INTO `city_info` VALUES ('101121005', '山东', '菏泽', '定陶');
INSERT INTO `city_info` VALUES ('101121006', '山东', '菏泽', '巨野');
INSERT INTO `city_info` VALUES ('101121007', '山东', '菏泽', '曹县');
INSERT INTO `city_info` VALUES ('101121008', '山东', '菏泽', '成武');
INSERT INTO `city_info` VALUES ('101121009', '山东', '菏泽', '单县');
INSERT INTO `city_info` VALUES ('101121101', '山东', '滨州', '滨州');
INSERT INTO `city_info` VALUES ('101121102', '山东', '滨州', '博兴');
INSERT INTO `city_info` VALUES ('101121103', '山东', '滨州', '无棣');
INSERT INTO `city_info` VALUES ('101121104', '山东', '滨州', '阳信');
INSERT INTO `city_info` VALUES ('101121105', '山东', '滨州', '惠民');
INSERT INTO `city_info` VALUES ('101121106', '山东', '滨州', '沾化');
INSERT INTO `city_info` VALUES ('101121107', '山东', '滨州', '邹平');
INSERT INTO `city_info` VALUES ('101121201', '山东', '东营', '东营');
INSERT INTO `city_info` VALUES ('101121202', '山东', '东营', '河口');
INSERT INTO `city_info` VALUES ('101121203', '山东', '东营', '垦利');
INSERT INTO `city_info` VALUES ('101121204', '山东', '东营', '利津');
INSERT INTO `city_info` VALUES ('101121205', '山东', '东营', '广饶');
INSERT INTO `city_info` VALUES ('101121301', '山东', '威海', '威海');
INSERT INTO `city_info` VALUES ('101121302', '山东', '威海', '文登');
INSERT INTO `city_info` VALUES ('101121303', '山东', '威海', '荣成');
INSERT INTO `city_info` VALUES ('101121304', '山东', '威海', '乳山');
INSERT INTO `city_info` VALUES ('101121305', '山东', '威海', '成山头');
INSERT INTO `city_info` VALUES ('101121306', '山东', '威海', '石岛');
INSERT INTO `city_info` VALUES ('101121401', '山东', '枣庄', '枣庄');
INSERT INTO `city_info` VALUES ('101121402', '山东', '枣庄', '薛城');
INSERT INTO `city_info` VALUES ('101121403', '山东', '枣庄', '峄城');
INSERT INTO `city_info` VALUES ('101121404', '山东', '枣庄', '台儿庄');
INSERT INTO `city_info` VALUES ('101121405', '山东', '枣庄', '滕州');
INSERT INTO `city_info` VALUES ('101121501', '山东', '日照', '日照');
INSERT INTO `city_info` VALUES ('101121502', '山东', '日照', '五莲');
INSERT INTO `city_info` VALUES ('101121503', '山东', '日照', '莒县');
INSERT INTO `city_info` VALUES ('101121601', '山东', '莱芜', '莱芜');
INSERT INTO `city_info` VALUES ('101121701', '山东', '聊城', '聊城');
INSERT INTO `city_info` VALUES ('101121702', '山东', '聊城', '冠县');
INSERT INTO `city_info` VALUES ('101121703', '山东', '聊城', '阳谷');
INSERT INTO `city_info` VALUES ('101121704', '山东', '聊城', '高唐');
INSERT INTO `city_info` VALUES ('101121705', '山东', '聊城', '茌平');
INSERT INTO `city_info` VALUES ('101121706', '山东', '聊城', '东阿');
INSERT INTO `city_info` VALUES ('101121707', '山东', '聊城', '临清');
INSERT INTO `city_info` VALUES ('101121709', '山东', '聊城', '莘县');
INSERT INTO `city_info` VALUES ('101130101', '新疆', '乌鲁木齐', '乌鲁木齐');
INSERT INTO `city_info` VALUES ('101130103', '新疆', '乌鲁木齐', '小渠子');
INSERT INTO `city_info` VALUES ('101130105', '新疆', '乌鲁木齐', '达坂城');
INSERT INTO `city_info` VALUES ('101130108', '新疆', '乌鲁木齐', '乌鲁木齐牧试站');
INSERT INTO `city_info` VALUES ('101130109', '新疆', '乌鲁木齐', '天池');
INSERT INTO `city_info` VALUES ('101130110', '新疆', '乌鲁木齐', '白杨沟');
INSERT INTO `city_info` VALUES ('101130201', '新疆', '克拉玛依', '克拉玛依');
INSERT INTO `city_info` VALUES ('101130202', '新疆', '克拉玛依', '乌尔禾');
INSERT INTO `city_info` VALUES ('101130203', '新疆', '克拉玛依', '白碱滩');
INSERT INTO `city_info` VALUES ('101130301', '新疆', '石河子', '石河子');
INSERT INTO `city_info` VALUES ('101130302', '新疆', '石河子', '炮台');
INSERT INTO `city_info` VALUES ('101130303', '新疆', '石河子', '莫索湾');
INSERT INTO `city_info` VALUES ('101130401', '新疆', '昌吉', '昌吉');
INSERT INTO `city_info` VALUES ('101130402', '新疆', '昌吉', '呼图壁');
INSERT INTO `city_info` VALUES ('101130403', '新疆', '昌吉', '米泉');
INSERT INTO `city_info` VALUES ('101130404', '新疆', '昌吉', '阜康');
INSERT INTO `city_info` VALUES ('101130405', '新疆', '昌吉', '吉木萨尔');
INSERT INTO `city_info` VALUES ('101130406', '新疆', '昌吉', '奇台');
INSERT INTO `city_info` VALUES ('101130407', '新疆', '昌吉', '玛纳斯');
INSERT INTO `city_info` VALUES ('101130408', '新疆', '昌吉', '木垒');
INSERT INTO `city_info` VALUES ('101130409', '新疆', '昌吉', '蔡家湖');
INSERT INTO `city_info` VALUES ('101130501', '新疆', '吐鲁番', '吐鲁番');
INSERT INTO `city_info` VALUES ('101130502', '新疆', '吐鲁番', '托克逊');
INSERT INTO `city_info` VALUES ('101130504', '新疆', '吐鲁番', '鄯善');
INSERT INTO `city_info` VALUES ('101130601', '新疆', '巴音郭楞', '库尔勒');
INSERT INTO `city_info` VALUES ('101130602', '新疆', '巴音郭楞', '轮台');
INSERT INTO `city_info` VALUES ('101130603', '新疆', '巴音郭楞', '尉犁');
INSERT INTO `city_info` VALUES ('101130604', '新疆', '巴音郭楞', '若羌');
INSERT INTO `city_info` VALUES ('101130605', '新疆', '巴音郭楞', '且末');
INSERT INTO `city_info` VALUES ('101130606', '新疆', '巴音郭楞', '和静');
INSERT INTO `city_info` VALUES ('101130607', '新疆', '巴音郭楞', '焉耆');
INSERT INTO `city_info` VALUES ('101130608', '新疆', '巴音郭楞', '和硕');
INSERT INTO `city_info` VALUES ('101130610', '新疆', '巴音郭楞', '巴音布鲁克');
INSERT INTO `city_info` VALUES ('101130611', '新疆', '巴音郭楞', '铁干里克');
INSERT INTO `city_info` VALUES ('101130612', '新疆', '巴音郭楞', '博湖');
INSERT INTO `city_info` VALUES ('101130613', '新疆', '巴音郭楞', '塔中');
INSERT INTO `city_info` VALUES ('101130614', '新疆', '巴音郭楞', '巴仑台');
INSERT INTO `city_info` VALUES ('101130701', '新疆', '阿拉尔', '阿拉尔');
INSERT INTO `city_info` VALUES ('101130801', '新疆', '阿克苏', '阿克苏');
INSERT INTO `city_info` VALUES ('101130802', '新疆', '阿克苏', '乌什');
INSERT INTO `city_info` VALUES ('101130803', '新疆', '阿克苏', '温宿');
INSERT INTO `city_info` VALUES ('101130804', '新疆', '阿克苏', '拜城');
INSERT INTO `city_info` VALUES ('101130805', '新疆', '阿克苏', '新和');
INSERT INTO `city_info` VALUES ('101130806', '新疆', '阿克苏', '沙雅');
INSERT INTO `city_info` VALUES ('101130807', '新疆', '阿克苏', '库车');
INSERT INTO `city_info` VALUES ('101130808', '新疆', '阿克苏', '柯坪');
INSERT INTO `city_info` VALUES ('101130809', '新疆', '阿克苏', '阿瓦提');
INSERT INTO `city_info` VALUES ('101130901', '新疆', '喀什', '喀什');
INSERT INTO `city_info` VALUES ('101130902', '新疆', '喀什', '英吉沙');
INSERT INTO `city_info` VALUES ('101130903', '新疆', '喀什', '塔什库尔干');
INSERT INTO `city_info` VALUES ('101130904', '新疆', '喀什', '麦盖提');
INSERT INTO `city_info` VALUES ('101130905', '新疆', '喀什', '莎车');
INSERT INTO `city_info` VALUES ('101130906', '新疆', '喀什', '叶城');
INSERT INTO `city_info` VALUES ('101130907', '新疆', '喀什', '泽普');
INSERT INTO `city_info` VALUES ('101130908', '新疆', '喀什', '巴楚');
INSERT INTO `city_info` VALUES ('101130909', '新疆', '喀什', '岳普湖');
INSERT INTO `city_info` VALUES ('101130910', '新疆', '喀什', '伽师');
INSERT INTO `city_info` VALUES ('101130911', '新疆', '喀什', '疏附');
INSERT INTO `city_info` VALUES ('101130912', '新疆', '喀什', '疏勒');
INSERT INTO `city_info` VALUES ('101131001', '新疆', '伊犁', '伊宁');
INSERT INTO `city_info` VALUES ('101131002', '新疆', '伊犁', '察布查尔');
INSERT INTO `city_info` VALUES ('101131003', '新疆', '伊犁', '尼勒克');
INSERT INTO `city_info` VALUES ('101131004', '新疆', '伊犁', '伊宁县');
INSERT INTO `city_info` VALUES ('101131005', '新疆', '伊犁', '巩留');
INSERT INTO `city_info` VALUES ('101131006', '新疆', '伊犁', '新源');
INSERT INTO `city_info` VALUES ('101131007', '新疆', '伊犁', '昭苏');
INSERT INTO `city_info` VALUES ('101131008', '新疆', '伊犁', '特克斯');
INSERT INTO `city_info` VALUES ('101131009', '新疆', '伊犁', '霍城');
INSERT INTO `city_info` VALUES ('101131010', '新疆', '伊犁', '霍尔果斯');
INSERT INTO `city_info` VALUES ('101131011', '新疆', '伊犁', '奎屯');
INSERT INTO `city_info` VALUES ('101131101', '新疆', '塔城', '塔城');
INSERT INTO `city_info` VALUES ('101131102', '新疆', '塔城', '裕民');
INSERT INTO `city_info` VALUES ('101131103', '新疆', '塔城', '额敏');
INSERT INTO `city_info` VALUES ('101131104', '新疆', '塔城', '和布克赛尔');
INSERT INTO `city_info` VALUES ('101131105', '新疆', '塔城', '托里');
INSERT INTO `city_info` VALUES ('101131106', '新疆', '塔城', '乌苏');
INSERT INTO `city_info` VALUES ('101131107', '新疆', '塔城', '沙湾');
INSERT INTO `city_info` VALUES ('101131201', '新疆', '哈密', '哈密');
INSERT INTO `city_info` VALUES ('101131203', '新疆', '哈密', '巴里坤');
INSERT INTO `city_info` VALUES ('101131204', '新疆', '哈密', '伊吾');
INSERT INTO `city_info` VALUES ('101131301', '新疆', '和田', '和田');
INSERT INTO `city_info` VALUES ('101131302', '新疆', '和田', '皮山');
INSERT INTO `city_info` VALUES ('101131303', '新疆', '和田', '策勒');
INSERT INTO `city_info` VALUES ('101131304', '新疆', '和田', '墨玉');
INSERT INTO `city_info` VALUES ('101131305', '新疆', '和田', '洛浦');
INSERT INTO `city_info` VALUES ('101131306', '新疆', '和田', '民丰');
INSERT INTO `city_info` VALUES ('101131307', '新疆', '和田', '于田');
INSERT INTO `city_info` VALUES ('101131401', '新疆', '阿勒泰', '阿勒泰');
INSERT INTO `city_info` VALUES ('101131402', '新疆', '阿勒泰', '哈巴河');
INSERT INTO `city_info` VALUES ('101131405', '新疆', '阿勒泰', '吉木乃');
INSERT INTO `city_info` VALUES ('101131406', '新疆', '阿勒泰', '布尔津');
INSERT INTO `city_info` VALUES ('101131407', '新疆', '阿勒泰', '福海');
INSERT INTO `city_info` VALUES ('101131408', '新疆', '阿勒泰', '富蕴');
INSERT INTO `city_info` VALUES ('101131409', '新疆', '阿勒泰', '青河');
INSERT INTO `city_info` VALUES ('101131501', '新疆', '克州', '阿图什');
INSERT INTO `city_info` VALUES ('101131502', '新疆', '克州', '乌恰');
INSERT INTO `city_info` VALUES ('101131503', '新疆', '克州', '阿克陶');
INSERT INTO `city_info` VALUES ('101131504', '新疆', '克州', '阿合奇');
INSERT INTO `city_info` VALUES ('101131601', '新疆', '博尔塔拉', '博乐');
INSERT INTO `city_info` VALUES ('101131602', '新疆', '博尔塔拉', '温泉');
INSERT INTO `city_info` VALUES ('101131603', '新疆', '博尔塔拉', '精河');
INSERT INTO `city_info` VALUES ('101131606', '新疆', '博尔塔拉', '阿拉山口');
INSERT INTO `city_info` VALUES ('101140101', '西藏', '拉萨', '拉萨');
INSERT INTO `city_info` VALUES ('101140102', '西藏', '拉萨', '当雄');
INSERT INTO `city_info` VALUES ('101140103', '西藏', '拉萨', '尼木');
INSERT INTO `city_info` VALUES ('101140104', '西藏', '拉萨', '林周');
INSERT INTO `city_info` VALUES ('101140105', '西藏', '拉萨', '堆龙德庆');
INSERT INTO `city_info` VALUES ('101140106', '西藏', '拉萨', '曲水');
INSERT INTO `city_info` VALUES ('101140107', '西藏', '拉萨', '达孜');
INSERT INTO `city_info` VALUES ('101140108', '西藏', '拉萨', '墨竹工卡');
INSERT INTO `city_info` VALUES ('101140201', '西藏', '日喀则', '日喀则');
INSERT INTO `city_info` VALUES ('101140202', '西藏', '日喀则', '拉孜');
INSERT INTO `city_info` VALUES ('101140203', '西藏', '日喀则', '南木林');
INSERT INTO `city_info` VALUES ('101140204', '西藏', '日喀则', '聂拉木');
INSERT INTO `city_info` VALUES ('101140205', '西藏', '日喀则', '定日');
INSERT INTO `city_info` VALUES ('101140206', '西藏', '日喀则', '江孜');
INSERT INTO `city_info` VALUES ('101140207', '西藏', '日喀则', '帕里');
INSERT INTO `city_info` VALUES ('101140208', '西藏', '日喀则', '仲巴');
INSERT INTO `city_info` VALUES ('101140209', '西藏', '日喀则', '萨嘎');
INSERT INTO `city_info` VALUES ('101140210', '西藏', '日喀则', '吉隆');
INSERT INTO `city_info` VALUES ('101140211', '西藏', '日喀则', '昂仁');
INSERT INTO `city_info` VALUES ('101140212', '西藏', '日喀则', '定结');
INSERT INTO `city_info` VALUES ('101140213', '西藏', '日喀则', '萨迦');
INSERT INTO `city_info` VALUES ('101140214', '西藏', '日喀则', '谢通门');
INSERT INTO `city_info` VALUES ('101140216', '西藏', '日喀则', '岗巴');
INSERT INTO `city_info` VALUES ('101140217', '西藏', '日喀则', '白朗');
INSERT INTO `city_info` VALUES ('101140218', '西藏', '日喀则', '亚东');
INSERT INTO `city_info` VALUES ('101140219', '西藏', '日喀则', '康马');
INSERT INTO `city_info` VALUES ('101140220', '西藏', '日喀则', '仁布');
INSERT INTO `city_info` VALUES ('101140301', '西藏', '山南', '山南');
INSERT INTO `city_info` VALUES ('101140302', '西藏', '山南', '贡嘎');
INSERT INTO `city_info` VALUES ('101140303', '西藏', '山南', '扎囊');
INSERT INTO `city_info` VALUES ('101140304', '西藏', '山南', '加查');
INSERT INTO `city_info` VALUES ('101140305', '西藏', '山南', '浪卡子');
INSERT INTO `city_info` VALUES ('101140306', '西藏', '山南', '错那');
INSERT INTO `city_info` VALUES ('101140307', '西藏', '山南', '隆子');
INSERT INTO `city_info` VALUES ('101140308', '西藏', '山南', '泽当');
INSERT INTO `city_info` VALUES ('101140309', '西藏', '山南', '乃东');
INSERT INTO `city_info` VALUES ('101140310', '西藏', '山南', '桑日');
INSERT INTO `city_info` VALUES ('101140311', '西藏', '山南', '洛扎');
INSERT INTO `city_info` VALUES ('101140312', '西藏', '山南', '措美');
INSERT INTO `city_info` VALUES ('101140313', '西藏', '山南', '琼结');
INSERT INTO `city_info` VALUES ('101140314', '西藏', '山南', '曲松');
INSERT INTO `city_info` VALUES ('101140401', '西藏', '林芝', '林芝');
INSERT INTO `city_info` VALUES ('101140402', '西藏', '林芝', '波密');
INSERT INTO `city_info` VALUES ('101140403', '西藏', '林芝', '米林');
INSERT INTO `city_info` VALUES ('101140404', '西藏', '林芝', '察隅');
INSERT INTO `city_info` VALUES ('101140405', '西藏', '林芝', '工布江达');
INSERT INTO `city_info` VALUES ('101140406', '西藏', '林芝', '朗县');
INSERT INTO `city_info` VALUES ('101140407', '西藏', '林芝', '墨脱');
INSERT INTO `city_info` VALUES ('101140501', '西藏', '昌都', '昌都');
INSERT INTO `city_info` VALUES ('101140502', '西藏', '昌都', '丁青');
INSERT INTO `city_info` VALUES ('101140503', '西藏', '昌都', '边坝');
INSERT INTO `city_info` VALUES ('101140504', '西藏', '昌都', '洛隆');
INSERT INTO `city_info` VALUES ('101140505', '西藏', '昌都', '左贡');
INSERT INTO `city_info` VALUES ('101140506', '西藏', '昌都', '芒康');
INSERT INTO `city_info` VALUES ('101140507', '西藏', '昌都', '类乌齐');
INSERT INTO `city_info` VALUES ('101140508', '西藏', '昌都', '八宿');
INSERT INTO `city_info` VALUES ('101140509', '西藏', '昌都', '江达');
INSERT INTO `city_info` VALUES ('101140510', '西藏', '昌都', '察雅');
INSERT INTO `city_info` VALUES ('101140511', '西藏', '昌都', '贡觉');
INSERT INTO `city_info` VALUES ('101140601', '西藏', '那曲', '那曲');
INSERT INTO `city_info` VALUES ('101140602', '西藏', '那曲', '尼玛');
INSERT INTO `city_info` VALUES ('101140603', '西藏', '那曲', '嘉黎');
INSERT INTO `city_info` VALUES ('101140604', '西藏', '那曲', '班戈');
INSERT INTO `city_info` VALUES ('101140605', '西藏', '那曲', '安多');
INSERT INTO `city_info` VALUES ('101140606', '西藏', '那曲', '索县');
INSERT INTO `city_info` VALUES ('101140607', '西藏', '那曲', '聂荣');
INSERT INTO `city_info` VALUES ('101140608', '西藏', '那曲', '巴青');
INSERT INTO `city_info` VALUES ('101140609', '西藏', '那曲', '比如');
INSERT INTO `city_info` VALUES ('101140610', '西藏', '那曲', '双湖');
INSERT INTO `city_info` VALUES ('101140701', '西藏', '阿里', '阿里');
INSERT INTO `city_info` VALUES ('101140702', '西藏', '阿里', '改则');
INSERT INTO `city_info` VALUES ('101140703', '西藏', '阿里', '申扎');
INSERT INTO `city_info` VALUES ('101140704', '西藏', '阿里', '狮泉河');
INSERT INTO `city_info` VALUES ('101140705', '西藏', '阿里', '普兰');
INSERT INTO `city_info` VALUES ('101140706', '西藏', '阿里', '札达');
INSERT INTO `city_info` VALUES ('101140707', '西藏', '阿里', '噶尔');
INSERT INTO `city_info` VALUES ('101140708', '西藏', '阿里', '日土');
INSERT INTO `city_info` VALUES ('101140709', '西藏', '阿里', '革吉');
INSERT INTO `city_info` VALUES ('101140710', '西藏', '阿里', '措勤');
INSERT INTO `city_info` VALUES ('101150101', '青海', '西宁', '西宁');
INSERT INTO `city_info` VALUES ('101150102', '青海', '西宁', '大通');
INSERT INTO `city_info` VALUES ('101150103', '青海', '西宁', '湟源');
INSERT INTO `city_info` VALUES ('101150104', '青海', '西宁', '湟中');
INSERT INTO `city_info` VALUES ('101150201', '青海', '海东', '海东');
INSERT INTO `city_info` VALUES ('101150202', '青海', '海东', '乐都');
INSERT INTO `city_info` VALUES ('101150203', '青海', '海东', '民和');
INSERT INTO `city_info` VALUES ('101150204', '青海', '海东', '互助');
INSERT INTO `city_info` VALUES ('101150205', '青海', '海东', '化隆');
INSERT INTO `city_info` VALUES ('101150206', '青海', '海东', '循化');
INSERT INTO `city_info` VALUES ('101150207', '青海', '海东', '冷湖');
INSERT INTO `city_info` VALUES ('101150208', '青海', '海东', '平安');
INSERT INTO `city_info` VALUES ('101150301', '青海', '黄南', '黄南');
INSERT INTO `city_info` VALUES ('101150302', '青海', '黄南', '尖扎');
INSERT INTO `city_info` VALUES ('101150303', '青海', '黄南', '泽库');
INSERT INTO `city_info` VALUES ('101150304', '青海', '黄南', '河南');
INSERT INTO `city_info` VALUES ('101150305', '青海', '黄南', '同仁');
INSERT INTO `city_info` VALUES ('101150401', '青海', '海南', '海南');
INSERT INTO `city_info` VALUES ('101150404', '青海', '海南', '贵德');
INSERT INTO `city_info` VALUES ('101150406', '青海', '海南', '兴海');
INSERT INTO `city_info` VALUES ('101150407', '青海', '海南', '贵南');
INSERT INTO `city_info` VALUES ('101150408', '青海', '海南', '同德');
INSERT INTO `city_info` VALUES ('101150409', '青海', '海南', '共和');
INSERT INTO `city_info` VALUES ('101150501', '青海', '果洛', '果洛');
INSERT INTO `city_info` VALUES ('101150502', '青海', '果洛', '班玛');
INSERT INTO `city_info` VALUES ('101150503', '青海', '果洛', '甘德');
INSERT INTO `city_info` VALUES ('101150504', '青海', '果洛', '达日');
INSERT INTO `city_info` VALUES ('101150505', '青海', '果洛', '久治');
INSERT INTO `city_info` VALUES ('101150506', '青海', '果洛', '玛多');
INSERT INTO `city_info` VALUES ('101150507', '青海', '果洛', '多县');
INSERT INTO `city_info` VALUES ('101150508', '青海', '果洛', '玛沁');
INSERT INTO `city_info` VALUES ('101150601', '青海', '玉树', '玉树');
INSERT INTO `city_info` VALUES ('101150602', '青海', '玉树', '称多');
INSERT INTO `city_info` VALUES ('101150603', '青海', '玉树', '治多');
INSERT INTO `city_info` VALUES ('101150604', '青海', '玉树', '杂多');
INSERT INTO `city_info` VALUES ('101150605', '青海', '玉树', '囊谦');
INSERT INTO `city_info` VALUES ('101150606', '青海', '玉树', '曲麻莱');
INSERT INTO `city_info` VALUES ('101150701', '青海', '海西', '海西');
INSERT INTO `city_info` VALUES ('101150708', '青海', '海西', '天峻');
INSERT INTO `city_info` VALUES ('101150709', '青海', '海西', '乌兰');
INSERT INTO `city_info` VALUES ('101150712', '青海', '海西', '茫崖');
INSERT INTO `city_info` VALUES ('101150713', '青海', '海西', '大柴旦');
INSERT INTO `city_info` VALUES ('101150716', '青海', '海西', '德令哈');
INSERT INTO `city_info` VALUES ('101150801', '青海', '海北', '海北');
INSERT INTO `city_info` VALUES ('101150802', '青海', '海北', '门源');
INSERT INTO `city_info` VALUES ('101150803', '青海', '海北', '祁连');
INSERT INTO `city_info` VALUES ('101150804', '青海', '海北', '海晏');
INSERT INTO `city_info` VALUES ('101150806', '青海', '海北', '刚察');
INSERT INTO `city_info` VALUES ('101150901', '青海', '格尔木', '格尔木');
INSERT INTO `city_info` VALUES ('101150902', '青海', '格尔木', '都兰');
INSERT INTO `city_info` VALUES ('101160101', '甘肃', '兰州', '兰州');
INSERT INTO `city_info` VALUES ('101160102', '甘肃', '兰州', '皋兰');
INSERT INTO `city_info` VALUES ('101160103', '甘肃', '兰州', '永登');
INSERT INTO `city_info` VALUES ('101160104', '甘肃', '兰州', '榆中');
INSERT INTO `city_info` VALUES ('101160201', '甘肃', '定西', '定西');
INSERT INTO `city_info` VALUES ('101160202', '甘肃', '定西', '通渭');
INSERT INTO `city_info` VALUES ('101160203', '甘肃', '定西', '陇西');
INSERT INTO `city_info` VALUES ('101160204', '甘肃', '定西', '渭源');
INSERT INTO `city_info` VALUES ('101160205', '甘肃', '定西', '临洮');
INSERT INTO `city_info` VALUES ('101160206', '甘肃', '定西', '漳县');
INSERT INTO `city_info` VALUES ('101160207', '甘肃', '定西', '岷县');
INSERT INTO `city_info` VALUES ('101160208', '甘肃', '定西', '安定');
INSERT INTO `city_info` VALUES ('101160301', '甘肃', '平凉', '平凉');
INSERT INTO `city_info` VALUES ('101160302', '甘肃', '平凉', '泾川');
INSERT INTO `city_info` VALUES ('101160303', '甘肃', '平凉', '灵台');
INSERT INTO `city_info` VALUES ('101160304', '甘肃', '平凉', '崇信');
INSERT INTO `city_info` VALUES ('101160305', '甘肃', '平凉', '华亭');
INSERT INTO `city_info` VALUES ('101160306', '甘肃', '平凉', '庄浪');
INSERT INTO `city_info` VALUES ('101160307', '甘肃', '平凉', '静宁');
INSERT INTO `city_info` VALUES ('101160308', '甘肃', '平凉', '崆峒');
INSERT INTO `city_info` VALUES ('101160401', '甘肃', '庆阳', '西峰');
INSERT INTO `city_info` VALUES ('101160403', '甘肃', '庆阳', '环县');
INSERT INTO `city_info` VALUES ('101160404', '甘肃', '庆阳', '华池');
INSERT INTO `city_info` VALUES ('101160405', '甘肃', '庆阳', '合水');
INSERT INTO `city_info` VALUES ('101160406', '甘肃', '庆阳', '正宁');
INSERT INTO `city_info` VALUES ('101160407', '甘肃', '庆阳', '宁县');
INSERT INTO `city_info` VALUES ('101160408', '甘肃', '庆阳', '镇原');
INSERT INTO `city_info` VALUES ('101160409', '甘肃', '庆阳', '庆城');
INSERT INTO `city_info` VALUES ('101160501', '甘肃', '武威', '武威');
INSERT INTO `city_info` VALUES ('101160502', '甘肃', '武威', '民勤');
INSERT INTO `city_info` VALUES ('101160503', '甘肃', '武威', '古浪');
INSERT INTO `city_info` VALUES ('101160505', '甘肃', '武威', '天祝');
INSERT INTO `city_info` VALUES ('101160601', '甘肃', '金昌', '金昌');
INSERT INTO `city_info` VALUES ('101160602', '甘肃', '金昌', '永昌');
INSERT INTO `city_info` VALUES ('101160701', '甘肃', '张掖', '张掖');
INSERT INTO `city_info` VALUES ('101160702', '甘肃', '张掖', '肃南');
INSERT INTO `city_info` VALUES ('101160703', '甘肃', '张掖', '民乐');
INSERT INTO `city_info` VALUES ('101160704', '甘肃', '张掖', '临泽');
INSERT INTO `city_info` VALUES ('101160705', '甘肃', '张掖', '高台');
INSERT INTO `city_info` VALUES ('101160706', '甘肃', '张掖', '山丹');
INSERT INTO `city_info` VALUES ('101160801', '甘肃', '酒泉', '酒泉');
INSERT INTO `city_info` VALUES ('101160803', '甘肃', '酒泉', '金塔');
INSERT INTO `city_info` VALUES ('101160804', '甘肃', '酒泉', '阿克塞');
INSERT INTO `city_info` VALUES ('101160805', '甘肃', '酒泉', '瓜州');
INSERT INTO `city_info` VALUES ('101160806', '甘肃', '酒泉', '肃北');
INSERT INTO `city_info` VALUES ('101160807', '甘肃', '酒泉', '玉门');
INSERT INTO `city_info` VALUES ('101160808', '甘肃', '酒泉', '敦煌');
INSERT INTO `city_info` VALUES ('101160901', '甘肃', '天水', '天水');
INSERT INTO `city_info` VALUES ('101160903', '甘肃', '天水', '清水');
INSERT INTO `city_info` VALUES ('101160904', '甘肃', '天水', '秦安');
INSERT INTO `city_info` VALUES ('101160905', '甘肃', '天水', '甘谷');
INSERT INTO `city_info` VALUES ('101160906', '甘肃', '天水', '武山');
INSERT INTO `city_info` VALUES ('101160907', '甘肃', '天水', '张家川');
INSERT INTO `city_info` VALUES ('101160908', '甘肃', '天水', '麦积');
INSERT INTO `city_info` VALUES ('101161001', '甘肃', '陇南', '武都');
INSERT INTO `city_info` VALUES ('101161002', '甘肃', '陇南', '成县');
INSERT INTO `city_info` VALUES ('101161003', '甘肃', '陇南', '文县');
INSERT INTO `city_info` VALUES ('101161004', '甘肃', '陇南', '宕昌');
INSERT INTO `city_info` VALUES ('101161005', '甘肃', '陇南', '康县');
INSERT INTO `city_info` VALUES ('101161006', '甘肃', '陇南', '西和');
INSERT INTO `city_info` VALUES ('101161007', '甘肃', '陇南', '礼县');
INSERT INTO `city_info` VALUES ('101161008', '甘肃', '陇南', '徽县');
INSERT INTO `city_info` VALUES ('101161009', '甘肃', '陇南', '两当');
INSERT INTO `city_info` VALUES ('101161101', '甘肃', '临夏', '临夏');
INSERT INTO `city_info` VALUES ('101161102', '甘肃', '临夏', '康乐');
INSERT INTO `city_info` VALUES ('101161103', '甘肃', '临夏', '永靖');
INSERT INTO `city_info` VALUES ('101161104', '甘肃', '临夏', '广河');
INSERT INTO `city_info` VALUES ('101161105', '甘肃', '临夏', '和政');
INSERT INTO `city_info` VALUES ('101161106', '甘肃', '临夏', '东乡');
INSERT INTO `city_info` VALUES ('101161107', '甘肃', '临夏', '积石山');
INSERT INTO `city_info` VALUES ('101161201', '甘肃', '甘南', '合作');
INSERT INTO `city_info` VALUES ('101161202', '甘肃', '甘南', '临潭');
INSERT INTO `city_info` VALUES ('101161203', '甘肃', '甘南', '卓尼');
INSERT INTO `city_info` VALUES ('101161204', '甘肃', '甘南', '舟曲');
INSERT INTO `city_info` VALUES ('101161205', '甘肃', '甘南', '迭部');
INSERT INTO `city_info` VALUES ('101161206', '甘肃', '甘南', '玛曲');
INSERT INTO `city_info` VALUES ('101161207', '甘肃', '甘南', '碌曲');
INSERT INTO `city_info` VALUES ('101161208', '甘肃', '甘南', '夏河');
INSERT INTO `city_info` VALUES ('101161301', '甘肃', '白银', '白银');
INSERT INTO `city_info` VALUES ('101161302', '甘肃', '白银', '靖远');
INSERT INTO `city_info` VALUES ('101161303', '甘肃', '白银', '会宁');
INSERT INTO `city_info` VALUES ('101161304', '甘肃', '白银', '平川');
INSERT INTO `city_info` VALUES ('101161305', '甘肃', '白银', '景泰');
INSERT INTO `city_info` VALUES ('101161401', '甘肃', '嘉峪关', '嘉峪关');
INSERT INTO `city_info` VALUES ('101170101', '宁夏', '银川', '银川');
INSERT INTO `city_info` VALUES ('101170102', '宁夏', '银川', '永宁');
INSERT INTO `city_info` VALUES ('101170103', '宁夏', '银川', '灵武');
INSERT INTO `city_info` VALUES ('101170104', '宁夏', '银川', '贺兰');
INSERT INTO `city_info` VALUES ('101170201', '宁夏', '石嘴山', '石嘴山');
INSERT INTO `city_info` VALUES ('101170202', '宁夏', '石嘴山', '惠农');
INSERT INTO `city_info` VALUES ('101170203', '宁夏', '石嘴山', '平罗');
INSERT INTO `city_info` VALUES ('101170204', '宁夏', '石嘴山', '陶乐');
INSERT INTO `city_info` VALUES ('101170301', '宁夏', '吴忠', '吴忠');
INSERT INTO `city_info` VALUES ('101170302', '宁夏', '吴忠', '同心');
INSERT INTO `city_info` VALUES ('101170303', '宁夏', '吴忠', '盐池');
INSERT INTO `city_info` VALUES ('101170306', '宁夏', '吴忠', '青铜峡');
INSERT INTO `city_info` VALUES ('101170401', '宁夏', '固原', '固原');
INSERT INTO `city_info` VALUES ('101170402', '宁夏', '固原', '西吉');
INSERT INTO `city_info` VALUES ('101170403', '宁夏', '固原', '隆德');
INSERT INTO `city_info` VALUES ('101170404', '宁夏', '固原', '泾源');
INSERT INTO `city_info` VALUES ('101170406', '宁夏', '固原', '彭阳');
INSERT INTO `city_info` VALUES ('101170501', '宁夏', '中卫', '中卫');
INSERT INTO `city_info` VALUES ('101170502', '宁夏', '中卫', '中宁');
INSERT INTO `city_info` VALUES ('101170504', '宁夏', '中卫', '海原');
INSERT INTO `city_info` VALUES ('101180101', '河南', '郑州', '郑州');
INSERT INTO `city_info` VALUES ('101180102', '河南', '郑州', '巩义');
INSERT INTO `city_info` VALUES ('101180103', '河南', '郑州', '荥阳');
INSERT INTO `city_info` VALUES ('101180104', '河南', '郑州', '登封');
INSERT INTO `city_info` VALUES ('101180105', '河南', '郑州', '新密');
INSERT INTO `city_info` VALUES ('101180106', '河南', '郑州', '新郑');
INSERT INTO `city_info` VALUES ('101180107', '河南', '郑州', '中牟');
INSERT INTO `city_info` VALUES ('101180108', '河南', '郑州', '上街');
INSERT INTO `city_info` VALUES ('101180201', '河南', '安阳', '安阳');
INSERT INTO `city_info` VALUES ('101180202', '河南', '安阳', '汤阴');
INSERT INTO `city_info` VALUES ('101180203', '河南', '安阳', '滑县');
INSERT INTO `city_info` VALUES ('101180204', '河南', '安阳', '内黄');
INSERT INTO `city_info` VALUES ('101180205', '河南', '安阳', '林州');
INSERT INTO `city_info` VALUES ('101180301', '河南', '新乡', '新乡');
INSERT INTO `city_info` VALUES ('101180302', '河南', '新乡', '获嘉');
INSERT INTO `city_info` VALUES ('101180303', '河南', '新乡', '原阳');
INSERT INTO `city_info` VALUES ('101180304', '河南', '新乡', '辉县');
INSERT INTO `city_info` VALUES ('101180305', '河南', '新乡', '卫辉');
INSERT INTO `city_info` VALUES ('101180306', '河南', '新乡', '延津');
INSERT INTO `city_info` VALUES ('101180307', '河南', '新乡', '封丘');
INSERT INTO `city_info` VALUES ('101180308', '河南', '新乡', '长垣');
INSERT INTO `city_info` VALUES ('101180401', '河南', '许昌', '许昌');
INSERT INTO `city_info` VALUES ('101180402', '河南', '许昌', '鄢陵');
INSERT INTO `city_info` VALUES ('101180403', '河南', '许昌', '襄城');
INSERT INTO `city_info` VALUES ('101180404', '河南', '许昌', '长葛');
INSERT INTO `city_info` VALUES ('101180405', '河南', '许昌', '禹州');
INSERT INTO `city_info` VALUES ('101180501', '河南', '平顶山', '平顶山');
INSERT INTO `city_info` VALUES ('101180502', '河南', '平顶山', '郏县');
INSERT INTO `city_info` VALUES ('101180503', '河南', '平顶山', '宝丰');
INSERT INTO `city_info` VALUES ('101180504', '河南', '平顶山', '汝州');
INSERT INTO `city_info` VALUES ('101180505', '河南', '平顶山', '叶县');
INSERT INTO `city_info` VALUES ('101180506', '河南', '平顶山', '舞钢');
INSERT INTO `city_info` VALUES ('101180507', '河南', '平顶山', '鲁山');
INSERT INTO `city_info` VALUES ('101180508', '河南', '平顶山', '石龙');
INSERT INTO `city_info` VALUES ('101180601', '河南', '信阳', '信阳');
INSERT INTO `city_info` VALUES ('101180602', '河南', '信阳', '息县');
INSERT INTO `city_info` VALUES ('101180603', '河南', '信阳', '罗山');
INSERT INTO `city_info` VALUES ('101180604', '河南', '信阳', '光山');
INSERT INTO `city_info` VALUES ('101180605', '河南', '信阳', '新县');
INSERT INTO `city_info` VALUES ('101180606', '河南', '信阳', '淮滨');
INSERT INTO `city_info` VALUES ('101180607', '河南', '信阳', '潢川');
INSERT INTO `city_info` VALUES ('101180608', '河南', '信阳', '固始');
INSERT INTO `city_info` VALUES ('101180609', '河南', '信阳', '商城');
INSERT INTO `city_info` VALUES ('101180701', '河南', '南阳', '南阳');
INSERT INTO `city_info` VALUES ('101180702', '河南', '南阳', '南召');
INSERT INTO `city_info` VALUES ('101180703', '河南', '南阳', '方城');
INSERT INTO `city_info` VALUES ('101180704', '河南', '南阳', '社旗');
INSERT INTO `city_info` VALUES ('101180705', '河南', '南阳', '西峡');
INSERT INTO `city_info` VALUES ('101180706', '河南', '南阳', '内乡');
INSERT INTO `city_info` VALUES ('101180707', '河南', '南阳', '镇平');
INSERT INTO `city_info` VALUES ('101180708', '河南', '南阳', '淅川');
INSERT INTO `city_info` VALUES ('101180709', '河南', '南阳', '新野');
INSERT INTO `city_info` VALUES ('101180710', '河南', '南阳', '唐河');
INSERT INTO `city_info` VALUES ('101180711', '河南', '南阳', '邓州');
INSERT INTO `city_info` VALUES ('101180712', '河南', '南阳', '桐柏');
INSERT INTO `city_info` VALUES ('101180801', '河南', '开封', '开封');
INSERT INTO `city_info` VALUES ('101180802', '河南', '开封', '杞县');
INSERT INTO `city_info` VALUES ('101180803', '河南', '开封', '尉氏');
INSERT INTO `city_info` VALUES ('101180804', '河南', '开封', '通许');
INSERT INTO `city_info` VALUES ('101180805', '河南', '开封', '兰考');
INSERT INTO `city_info` VALUES ('101180901', '河南', '洛阳', '洛阳');
INSERT INTO `city_info` VALUES ('101180902', '河南', '洛阳', '新安');
INSERT INTO `city_info` VALUES ('101180903', '河南', '洛阳', '孟津');
INSERT INTO `city_info` VALUES ('101180904', '河南', '洛阳', '宜阳');
INSERT INTO `city_info` VALUES ('101180905', '河南', '洛阳', '洛宁');
INSERT INTO `city_info` VALUES ('101180906', '河南', '洛阳', '伊川');
INSERT INTO `city_info` VALUES ('101180907', '河南', '洛阳', '嵩县');
INSERT INTO `city_info` VALUES ('101180908', '河南', '洛阳', '偃师');
INSERT INTO `city_info` VALUES ('101180909', '河南', '洛阳', '栾川');
INSERT INTO `city_info` VALUES ('101180910', '河南', '洛阳', '汝阳');
INSERT INTO `city_info` VALUES ('101180911', '河南', '洛阳', '吉利');
INSERT INTO `city_info` VALUES ('101181001', '河南', '商丘', '商丘');
INSERT INTO `city_info` VALUES ('101181003', '河南', '商丘', '睢县');
INSERT INTO `city_info` VALUES ('101181004', '河南', '商丘', '民权');
INSERT INTO `city_info` VALUES ('101181005', '河南', '商丘', '虞城');
INSERT INTO `city_info` VALUES ('101181006', '河南', '商丘', '柘城');
INSERT INTO `city_info` VALUES ('101181007', '河南', '商丘', '宁陵');
INSERT INTO `city_info` VALUES ('101181008', '河南', '商丘', '夏邑');
INSERT INTO `city_info` VALUES ('101181009', '河南', '商丘', '永城');
INSERT INTO `city_info` VALUES ('101181101', '河南', '焦作', '焦作');
INSERT INTO `city_info` VALUES ('101181102', '河南', '焦作', '修武');
INSERT INTO `city_info` VALUES ('101181103', '河南', '焦作', '武陟');
INSERT INTO `city_info` VALUES ('101181104', '河南', '焦作', '沁阳');
INSERT INTO `city_info` VALUES ('101181106', '河南', '焦作', '博爱');
INSERT INTO `city_info` VALUES ('101181107', '河南', '焦作', '温县');
INSERT INTO `city_info` VALUES ('101181108', '河南', '焦作', '孟州');
INSERT INTO `city_info` VALUES ('101181201', '河南', '鹤壁', '鹤壁');
INSERT INTO `city_info` VALUES ('101181202', '河南', '鹤壁', '浚县');
INSERT INTO `city_info` VALUES ('101181203', '河南', '鹤壁', '淇县');
INSERT INTO `city_info` VALUES ('101181301', '河南', '濮阳', '濮阳');
INSERT INTO `city_info` VALUES ('101181302', '河南', '濮阳', '台前');
INSERT INTO `city_info` VALUES ('101181303', '河南', '濮阳', '南乐');
INSERT INTO `city_info` VALUES ('101181304', '河南', '濮阳', '清丰');
INSERT INTO `city_info` VALUES ('101181305', '河南', '濮阳', '范县');
INSERT INTO `city_info` VALUES ('101181401', '河南', '周口', '周口');
INSERT INTO `city_info` VALUES ('101181402', '河南', '周口', '扶沟');
INSERT INTO `city_info` VALUES ('101181403', '河南', '周口', '太康');
INSERT INTO `city_info` VALUES ('101181404', '河南', '周口', '淮阳');
INSERT INTO `city_info` VALUES ('101181405', '河南', '周口', '西华');
INSERT INTO `city_info` VALUES ('101181406', '河南', '周口', '商水');
INSERT INTO `city_info` VALUES ('101181407', '河南', '周口', '项城');
INSERT INTO `city_info` VALUES ('101181408', '河南', '周口', '郸城');
INSERT INTO `city_info` VALUES ('101181409', '河南', '周口', '鹿邑');
INSERT INTO `city_info` VALUES ('101181410', '河南', '周口', '沈丘');
INSERT INTO `city_info` VALUES ('101181501', '河南', '漯河', '漯河');
INSERT INTO `city_info` VALUES ('101181502', '河南', '漯河', '临颍');
INSERT INTO `city_info` VALUES ('101181503', '河南', '漯河', '舞阳');
INSERT INTO `city_info` VALUES ('101181601', '河南', '驻马店', '驻马店');
INSERT INTO `city_info` VALUES ('101181602', '河南', '驻马店', '西平');
INSERT INTO `city_info` VALUES ('101181603', '河南', '驻马店', '遂平');
INSERT INTO `city_info` VALUES ('101181604', '河南', '驻马店', '上蔡');
INSERT INTO `city_info` VALUES ('101181605', '河南', '驻马店', '汝南');
INSERT INTO `city_info` VALUES ('101181606', '河南', '驻马店', '泌阳');
INSERT INTO `city_info` VALUES ('101181607', '河南', '驻马店', '平舆');
INSERT INTO `city_info` VALUES ('101181608', '河南', '驻马店', '新蔡');
INSERT INTO `city_info` VALUES ('101181609', '河南', '驻马店', '确山');
INSERT INTO `city_info` VALUES ('101181610', '河南', '驻马店', '正阳');
INSERT INTO `city_info` VALUES ('101181701', '河南', '三门峡', '三门峡');
INSERT INTO `city_info` VALUES ('101181702', '河南', '三门峡', '灵宝');
INSERT INTO `city_info` VALUES ('101181703', '河南', '三门峡', '渑池');
INSERT INTO `city_info` VALUES ('101181704', '河南', '三门峡', '卢氏');
INSERT INTO `city_info` VALUES ('101181705', '河南', '三门峡', '义马');
INSERT INTO `city_info` VALUES ('101181706', '河南', '三门峡', '陕县');
INSERT INTO `city_info` VALUES ('101181801', '河南', '济源', '济源');
INSERT INTO `city_info` VALUES ('101190101', '江苏', '南京', '南京');
INSERT INTO `city_info` VALUES ('101190102', '江苏', '南京', '溧水');
INSERT INTO `city_info` VALUES ('101190103', '江苏', '南京', '高淳');
INSERT INTO `city_info` VALUES ('101190104', '江苏', '南京', '江宁');
INSERT INTO `city_info` VALUES ('101190105', '江苏', '南京', '六合');
INSERT INTO `city_info` VALUES ('101190106', '江苏', '南京', '江浦');
INSERT INTO `city_info` VALUES ('101190107', '江苏', '南京', '浦口');
INSERT INTO `city_info` VALUES ('101190201', '江苏', '无锡', '无锡');
INSERT INTO `city_info` VALUES ('101190202', '江苏', '无锡', '江阴');
INSERT INTO `city_info` VALUES ('101190203', '江苏', '无锡', '宜兴');
INSERT INTO `city_info` VALUES ('101190204', '江苏', '无锡', '锡山');
INSERT INTO `city_info` VALUES ('101190301', '江苏', '镇江', '镇江');
INSERT INTO `city_info` VALUES ('101190302', '江苏', '镇江', '丹阳');
INSERT INTO `city_info` VALUES ('101190303', '江苏', '镇江', '扬中');
INSERT INTO `city_info` VALUES ('101190304', '江苏', '镇江', '句容');
INSERT INTO `city_info` VALUES ('101190305', '江苏', '镇江', '丹徒');
INSERT INTO `city_info` VALUES ('101190401', '江苏', '苏州', '苏州');
INSERT INTO `city_info` VALUES ('101190402', '江苏', '苏州', '常熟');
INSERT INTO `city_info` VALUES ('101190403', '江苏', '苏州', '张家港');
INSERT INTO `city_info` VALUES ('101190404', '江苏', '苏州', '昆山');
INSERT INTO `city_info` VALUES ('101190405', '江苏', '苏州', '吴中');
INSERT INTO `city_info` VALUES ('101190407', '江苏', '苏州', '吴江');
INSERT INTO `city_info` VALUES ('101190408', '江苏', '苏州', '太仓');
INSERT INTO `city_info` VALUES ('101190501', '江苏', '南通', '南通');
INSERT INTO `city_info` VALUES ('101190502', '江苏', '南通', '海安');
INSERT INTO `city_info` VALUES ('101190503', '江苏', '南通', '如皋');
INSERT INTO `city_info` VALUES ('101190504', '江苏', '南通', '如东');
INSERT INTO `city_info` VALUES ('101190507', '江苏', '南通', '启东');
INSERT INTO `city_info` VALUES ('101190508', '江苏', '南通', '海门');
INSERT INTO `city_info` VALUES ('101190509', '江苏', '南通', '通州');
INSERT INTO `city_info` VALUES ('101190601', '江苏', '扬州', '扬州');
INSERT INTO `city_info` VALUES ('101190602', '江苏', '扬州', '宝应');
INSERT INTO `city_info` VALUES ('101190603', '江苏', '扬州', '仪征');
INSERT INTO `city_info` VALUES ('101190604', '江苏', '扬州', '高邮');
INSERT INTO `city_info` VALUES ('101190605', '江苏', '扬州', '江都');
INSERT INTO `city_info` VALUES ('101190606', '江苏', '扬州', '邗江');
INSERT INTO `city_info` VALUES ('101190701', '江苏', '盐城', '盐城');
INSERT INTO `city_info` VALUES ('101190702', '江苏', '盐城', '响水');
INSERT INTO `city_info` VALUES ('101190703', '江苏', '盐城', '滨海');
INSERT INTO `city_info` VALUES ('101190704', '江苏', '盐城', '阜宁');
INSERT INTO `city_info` VALUES ('101190705', '江苏', '盐城', '射阳');
INSERT INTO `city_info` VALUES ('101190706', '江苏', '盐城', '建湖');
INSERT INTO `city_info` VALUES ('101190707', '江苏', '盐城', '东台');
INSERT INTO `city_info` VALUES ('101190708', '江苏', '盐城', '大丰');
INSERT INTO `city_info` VALUES ('101190709', '江苏', '盐城', '盐都');
INSERT INTO `city_info` VALUES ('101190801', '江苏', '徐州', '徐州');
INSERT INTO `city_info` VALUES ('101190802', '江苏', '徐州', '铜山');
INSERT INTO `city_info` VALUES ('101190803', '江苏', '徐州', '丰县');
INSERT INTO `city_info` VALUES ('101190804', '江苏', '徐州', '沛县');
INSERT INTO `city_info` VALUES ('101190805', '江苏', '徐州', '邳州');
INSERT INTO `city_info` VALUES ('101190806', '江苏', '徐州', '睢宁');
INSERT INTO `city_info` VALUES ('101190807', '江苏', '徐州', '新沂');
INSERT INTO `city_info` VALUES ('101190901', '江苏', '淮安', '淮安');
INSERT INTO `city_info` VALUES ('101190902', '江苏', '淮安', '金湖');
INSERT INTO `city_info` VALUES ('101190903', '江苏', '淮安', '盱眙');
INSERT INTO `city_info` VALUES ('101190904', '江苏', '淮安', '洪泽');
INSERT INTO `city_info` VALUES ('101190905', '江苏', '淮安', '涟水');
INSERT INTO `city_info` VALUES ('101190906', '江苏', '淮安', '淮阴区');
INSERT INTO `city_info` VALUES ('101190908', '江苏', '淮安', '淮安区');
INSERT INTO `city_info` VALUES ('101191001', '江苏', '连云港', '连云港');
INSERT INTO `city_info` VALUES ('101191002', '江苏', '连云港', '东海');
INSERT INTO `city_info` VALUES ('101191003', '江苏', '连云港', '赣榆');
INSERT INTO `city_info` VALUES ('101191004', '江苏', '连云港', '灌云');
INSERT INTO `city_info` VALUES ('101191005', '江苏', '连云港', '灌南');
INSERT INTO `city_info` VALUES ('101191101', '江苏', '常州', '常州');
INSERT INTO `city_info` VALUES ('101191102', '江苏', '常州', '溧阳');
INSERT INTO `city_info` VALUES ('101191103', '江苏', '常州', '金坛');
INSERT INTO `city_info` VALUES ('101191104', '江苏', '常州', '武进');
INSERT INTO `city_info` VALUES ('101191201', '江苏', '泰州', '泰州');
INSERT INTO `city_info` VALUES ('101191202', '江苏', '泰州', '兴化');
INSERT INTO `city_info` VALUES ('101191203', '江苏', '泰州', '泰兴');
INSERT INTO `city_info` VALUES ('101191204', '江苏', '泰州', '姜堰');
INSERT INTO `city_info` VALUES ('101191205', '江苏', '泰州', '靖江');
INSERT INTO `city_info` VALUES ('101191301', '江苏', '宿迁', '宿迁');
INSERT INTO `city_info` VALUES ('101191302', '江苏', '宿迁', '沭阳');
INSERT INTO `city_info` VALUES ('101191303', '江苏', '宿迁', '泗阳');
INSERT INTO `city_info` VALUES ('101191304', '江苏', '宿迁', '泗洪');
INSERT INTO `city_info` VALUES ('101191305', '江苏', '宿迁', '宿豫');
INSERT INTO `city_info` VALUES ('101200101', '湖北', '武汉', '武汉');
INSERT INTO `city_info` VALUES ('101200102', '湖北', '武汉', '蔡甸');
INSERT INTO `city_info` VALUES ('101200103', '湖北', '武汉', '黄陂');
INSERT INTO `city_info` VALUES ('101200104', '湖北', '武汉', '新洲');
INSERT INTO `city_info` VALUES ('101200105', '湖北', '武汉', '江夏');
INSERT INTO `city_info` VALUES ('101200106', '湖北', '武汉', '东西湖');
INSERT INTO `city_info` VALUES ('101200201', '湖北', '襄阳', '襄阳');
INSERT INTO `city_info` VALUES ('101200202', '湖北', '襄阳', '襄州');
INSERT INTO `city_info` VALUES ('101200203', '湖北', '襄阳', '保康');
INSERT INTO `city_info` VALUES ('101200204', '湖北', '襄阳', '南漳');
INSERT INTO `city_info` VALUES ('101200205', '湖北', '襄阳', '宜城');
INSERT INTO `city_info` VALUES ('101200206', '湖北', '襄阳', '老河口');
INSERT INTO `city_info` VALUES ('101200207', '湖北', '襄阳', '谷城');
INSERT INTO `city_info` VALUES ('101200208', '湖北', '襄阳', '枣阳');
INSERT INTO `city_info` VALUES ('101200301', '湖北', '鄂州', '鄂州');
INSERT INTO `city_info` VALUES ('101200302', '湖北', '鄂州', '梁子湖');
INSERT INTO `city_info` VALUES ('101200401', '湖北', '孝感', '孝感');
INSERT INTO `city_info` VALUES ('101200402', '湖北', '孝感', '安陆');
INSERT INTO `city_info` VALUES ('101200403', '湖北', '孝感', '云梦');
INSERT INTO `city_info` VALUES ('101200404', '湖北', '孝感', '大悟');
INSERT INTO `city_info` VALUES ('101200405', '湖北', '孝感', '应城');
INSERT INTO `city_info` VALUES ('101200406', '湖北', '孝感', '汉川');
INSERT INTO `city_info` VALUES ('101200407', '湖北', '孝感', '孝昌');
INSERT INTO `city_info` VALUES ('101200501', '湖北', '黄冈', '黄冈');
INSERT INTO `city_info` VALUES ('101200502', '湖北', '黄冈', '红安');
INSERT INTO `city_info` VALUES ('101200503', '湖北', '黄冈', '麻城');
INSERT INTO `city_info` VALUES ('101200504', '湖北', '黄冈', '罗田');
INSERT INTO `city_info` VALUES ('101200505', '湖北', '黄冈', '英山');
INSERT INTO `city_info` VALUES ('101200506', '湖北', '黄冈', '浠水');
INSERT INTO `city_info` VALUES ('101200507', '湖北', '黄冈', '蕲春');
INSERT INTO `city_info` VALUES ('101200508', '湖北', '黄冈', '黄梅');
INSERT INTO `city_info` VALUES ('101200509', '湖北', '黄冈', '武穴');
INSERT INTO `city_info` VALUES ('101200510', '湖北', '黄冈', '团风');
INSERT INTO `city_info` VALUES ('101200601', '湖北', '黄石', '黄石');
INSERT INTO `city_info` VALUES ('101200602', '湖北', '黄石', '大冶');
INSERT INTO `city_info` VALUES ('101200603', '湖北', '黄石', '阳新');
INSERT INTO `city_info` VALUES ('101200604', '湖北', '黄石', '铁山');
INSERT INTO `city_info` VALUES ('101200605', '湖北', '黄石', '下陆');
INSERT INTO `city_info` VALUES ('101200606', '湖北', '黄石', '西塞山');
INSERT INTO `city_info` VALUES ('101200701', '湖北', '咸宁', '咸宁');
INSERT INTO `city_info` VALUES ('101200702', '湖北', '咸宁', '赤壁');
INSERT INTO `city_info` VALUES ('101200703', '湖北', '咸宁', '嘉鱼');
INSERT INTO `city_info` VALUES ('101200704', '湖北', '咸宁', '崇阳');
INSERT INTO `city_info` VALUES ('101200705', '湖北', '咸宁', '通城');
INSERT INTO `city_info` VALUES ('101200706', '湖北', '咸宁', '通山');
INSERT INTO `city_info` VALUES ('101200801', '湖北', '荆州', '荆州');
INSERT INTO `city_info` VALUES ('101200802', '湖北', '荆州', '江陵');
INSERT INTO `city_info` VALUES ('101200803', '湖北', '荆州', '公安');
INSERT INTO `city_info` VALUES ('101200804', '湖北', '荆州', '石首');
INSERT INTO `city_info` VALUES ('101200805', '湖北', '荆州', '监利');
INSERT INTO `city_info` VALUES ('101200806', '湖北', '荆州', '洪湖');
INSERT INTO `city_info` VALUES ('101200807', '湖北', '荆州', '松滋');
INSERT INTO `city_info` VALUES ('101200901', '湖北', '宜昌', '宜昌');
INSERT INTO `city_info` VALUES ('101200902', '湖北', '宜昌', '远安');
INSERT INTO `city_info` VALUES ('101200903', '湖北', '宜昌', '秭归');
INSERT INTO `city_info` VALUES ('101200904', '湖北', '宜昌', '兴山');
INSERT INTO `city_info` VALUES ('101200906', '湖北', '宜昌', '五峰');
INSERT INTO `city_info` VALUES ('101200907', '湖北', '宜昌', '当阳');
INSERT INTO `city_info` VALUES ('101200908', '湖北', '宜昌', '长阳');
INSERT INTO `city_info` VALUES ('101200909', '湖北', '宜昌', '宜都');
INSERT INTO `city_info` VALUES ('101200910', '湖北', '宜昌', '枝江');
INSERT INTO `city_info` VALUES ('101200911', '湖北', '宜昌', '三峡');
INSERT INTO `city_info` VALUES ('101200912', '湖北', '宜昌', '夷陵');
INSERT INTO `city_info` VALUES ('101201001', '湖北', '恩施', '恩施');
INSERT INTO `city_info` VALUES ('101201002', '湖北', '恩施', '利川');
INSERT INTO `city_info` VALUES ('101201003', '湖北', '恩施', '建始');
INSERT INTO `city_info` VALUES ('101201004', '湖北', '恩施', '咸丰');
INSERT INTO `city_info` VALUES ('101201005', '湖北', '恩施', '宣恩');
INSERT INTO `city_info` VALUES ('101201006', '湖北', '恩施', '鹤峰');
INSERT INTO `city_info` VALUES ('101201007', '湖北', '恩施', '来凤');
INSERT INTO `city_info` VALUES ('101201008', '湖北', '恩施', '巴东');
INSERT INTO `city_info` VALUES ('101201101', '湖北', '十堰', '十堰');
INSERT INTO `city_info` VALUES ('101201102', '湖北', '十堰', '竹溪');
INSERT INTO `city_info` VALUES ('101201103', '湖北', '十堰', '郧西');
INSERT INTO `city_info` VALUES ('101201104', '湖北', '十堰', '郧县');
INSERT INTO `city_info` VALUES ('101201105', '湖北', '十堰', '竹山');
INSERT INTO `city_info` VALUES ('101201106', '湖北', '十堰', '房县');
INSERT INTO `city_info` VALUES ('101201107', '湖北', '十堰', '丹江口');
INSERT INTO `city_info` VALUES ('101201108', '湖北', '十堰', '茅箭');
INSERT INTO `city_info` VALUES ('101201109', '湖北', '十堰', '张湾');
INSERT INTO `city_info` VALUES ('101201201', '湖北', '神农架', '神农架');
INSERT INTO `city_info` VALUES ('101201301', '湖北', '随州', '随州');
INSERT INTO `city_info` VALUES ('101201302', '湖北', '随州', '广水');
INSERT INTO `city_info` VALUES ('101201401', '湖北', '荆门', '荆门');
INSERT INTO `city_info` VALUES ('101201402', '湖北', '荆门', '钟祥');
INSERT INTO `city_info` VALUES ('101201403', '湖北', '荆门', '京山');
INSERT INTO `city_info` VALUES ('101201404', '湖北', '荆门', '掇刀');
INSERT INTO `city_info` VALUES ('101201405', '湖北', '荆门', '沙洋');
INSERT INTO `city_info` VALUES ('101201406', '湖北', '荆州', '沙市');
INSERT INTO `city_info` VALUES ('101201501', '湖北', '天门', '天门');
INSERT INTO `city_info` VALUES ('101201601', '湖北', '仙桃', '仙桃');
INSERT INTO `city_info` VALUES ('101201701', '湖北', '潜江', '潜江');
INSERT INTO `city_info` VALUES ('101210101', '浙江', '杭州', '杭州');
INSERT INTO `city_info` VALUES ('101210102', '浙江', '杭州', '萧山');
INSERT INTO `city_info` VALUES ('101210103', '浙江', '杭州', '桐庐');
INSERT INTO `city_info` VALUES ('101210104', '浙江', '杭州', '淳安');
INSERT INTO `city_info` VALUES ('101210105', '浙江', '杭州', '建德');
INSERT INTO `city_info` VALUES ('101210106', '浙江', '杭州', '余杭');
INSERT INTO `city_info` VALUES ('101210107', '浙江', '杭州', '临安');
INSERT INTO `city_info` VALUES ('101210108', '浙江', '杭州', '富阳');
INSERT INTO `city_info` VALUES ('101210201', '浙江', '湖州', '湖州');
INSERT INTO `city_info` VALUES ('101210202', '浙江', '湖州', '长兴');
INSERT INTO `city_info` VALUES ('101210203', '浙江', '湖州', '安吉');
INSERT INTO `city_info` VALUES ('101210204', '浙江', '湖州', '德清');
INSERT INTO `city_info` VALUES ('101210301', '浙江', '嘉兴', '嘉兴');
INSERT INTO `city_info` VALUES ('101210302', '浙江', '嘉兴', '嘉善');
INSERT INTO `city_info` VALUES ('101210303', '浙江', '嘉兴', '海宁');
INSERT INTO `city_info` VALUES ('101210304', '浙江', '嘉兴', '桐乡');
INSERT INTO `city_info` VALUES ('101210305', '浙江', '嘉兴', '平湖');
INSERT INTO `city_info` VALUES ('101210306', '浙江', '嘉兴', '海盐');
INSERT INTO `city_info` VALUES ('101210401', '浙江', '宁波', '宁波');
INSERT INTO `city_info` VALUES ('101210403', '浙江', '宁波', '慈溪');
INSERT INTO `city_info` VALUES ('101210404', '浙江', '宁波', '余姚');
INSERT INTO `city_info` VALUES ('101210405', '浙江', '宁波', '奉化');
INSERT INTO `city_info` VALUES ('101210406', '浙江', '宁波', '象山');
INSERT INTO `city_info` VALUES ('101210408', '浙江', '宁波', '宁海');
INSERT INTO `city_info` VALUES ('101210410', '浙江', '宁波', '北仑');
INSERT INTO `city_info` VALUES ('101210411', '浙江', '宁波', '鄞州');
INSERT INTO `city_info` VALUES ('101210412', '浙江', '宁波', '镇海');
INSERT INTO `city_info` VALUES ('101210501', '浙江', '绍兴', '绍兴');
INSERT INTO `city_info` VALUES ('101210502', '浙江', '绍兴', '诸暨');
INSERT INTO `city_info` VALUES ('101210503', '浙江', '绍兴', '上虞');
INSERT INTO `city_info` VALUES ('101210504', '浙江', '绍兴', '新昌');
INSERT INTO `city_info` VALUES ('101210505', '浙江', '绍兴', '嵊州');
INSERT INTO `city_info` VALUES ('101210601', '浙江', '台州', '台州');
INSERT INTO `city_info` VALUES ('101210603', '浙江', '台州', '玉环');
INSERT INTO `city_info` VALUES ('101210604', '浙江', '台州', '三门');
INSERT INTO `city_info` VALUES ('101210605', '浙江', '台州', '天台');
INSERT INTO `city_info` VALUES ('101210606', '浙江', '台州', '仙居');
INSERT INTO `city_info` VALUES ('101210607', '浙江', '台州', '温岭');
INSERT INTO `city_info` VALUES ('101210609', '浙江', '台州', '洪家');
INSERT INTO `city_info` VALUES ('101210610', '浙江', '台州', '临海');
INSERT INTO `city_info` VALUES ('101210611', '浙江', '台州', '椒江');
INSERT INTO `city_info` VALUES ('101210612', '浙江', '台州', '黄岩');
INSERT INTO `city_info` VALUES ('101210613', '浙江', '台州', '路桥');
INSERT INTO `city_info` VALUES ('101210701', '浙江', '温州', '温州');
INSERT INTO `city_info` VALUES ('101210702', '浙江', '温州', '泰顺');
INSERT INTO `city_info` VALUES ('101210703', '浙江', '温州', '文成');
INSERT INTO `city_info` VALUES ('101210704', '浙江', '温州', '平阳');
INSERT INTO `city_info` VALUES ('101210705', '浙江', '温州', '瑞安');
INSERT INTO `city_info` VALUES ('101210706', '浙江', '温州', '洞头');
INSERT INTO `city_info` VALUES ('101210707', '浙江', '温州', '乐清');
INSERT INTO `city_info` VALUES ('101210708', '浙江', '温州', '永嘉');
INSERT INTO `city_info` VALUES ('101210709', '浙江', '温州', '苍南');
INSERT INTO `city_info` VALUES ('101210801', '浙江', '丽水', '丽水');
INSERT INTO `city_info` VALUES ('101210802', '浙江', '丽水', '遂昌');
INSERT INTO `city_info` VALUES ('101210803', '浙江', '丽水', '龙泉');
INSERT INTO `city_info` VALUES ('101210804', '浙江', '丽水', '缙云');
INSERT INTO `city_info` VALUES ('101210805', '浙江', '丽水', '青田');
INSERT INTO `city_info` VALUES ('101210806', '浙江', '丽水', '云和');
INSERT INTO `city_info` VALUES ('101210807', '浙江', '丽水', '庆元');
INSERT INTO `city_info` VALUES ('101210808', '浙江', '丽水', '松阳');
INSERT INTO `city_info` VALUES ('101210809', '浙江', '丽水', '景宁');
INSERT INTO `city_info` VALUES ('101210901', '浙江', '金华', '金华');
INSERT INTO `city_info` VALUES ('101210902', '浙江', '金华', '浦江');
INSERT INTO `city_info` VALUES ('101210903', '浙江', '金华', '兰溪');
INSERT INTO `city_info` VALUES ('101210904', '浙江', '金华', '义乌');
INSERT INTO `city_info` VALUES ('101210905', '浙江', '金华', '东阳');
INSERT INTO `city_info` VALUES ('101210906', '浙江', '金华', '武义');
INSERT INTO `city_info` VALUES ('101210907', '浙江', '金华', '永康');
INSERT INTO `city_info` VALUES ('101210908', '浙江', '金华', '磐安');
INSERT INTO `city_info` VALUES ('101211001', '浙江', '衢州', '衢州');
INSERT INTO `city_info` VALUES ('101211002', '浙江', '衢州', '常山');
INSERT INTO `city_info` VALUES ('101211003', '浙江', '衢州', '开化');
INSERT INTO `city_info` VALUES ('101211004', '浙江', '衢州', '龙游');
INSERT INTO `city_info` VALUES ('101211005', '浙江', '衢州', '江山');
INSERT INTO `city_info` VALUES ('101211006', '浙江', '衢州', '衢江');
INSERT INTO `city_info` VALUES ('101211101', '浙江', '舟山', '舟山');
INSERT INTO `city_info` VALUES ('101211102', '浙江', '舟山', '嵊泗');
INSERT INTO `city_info` VALUES ('101211104', '浙江', '舟山', '岱山');
INSERT INTO `city_info` VALUES ('101211105', '浙江', '舟山', '普陀');
INSERT INTO `city_info` VALUES ('101211106', '浙江', '舟山', '定海');
INSERT INTO `city_info` VALUES ('101220101', '安徽', '合肥', '合肥');
INSERT INTO `city_info` VALUES ('101220102', '安徽', '合肥', '长丰');
INSERT INTO `city_info` VALUES ('101220103', '安徽', '合肥', '肥东');
INSERT INTO `city_info` VALUES ('101220104', '安徽', '合肥', '肥西');
INSERT INTO `city_info` VALUES ('101220201', '安徽', '蚌埠', '蚌埠');
INSERT INTO `city_info` VALUES ('101220202', '安徽', '蚌埠', '怀远');
INSERT INTO `city_info` VALUES ('101220203', '安徽', '蚌埠', '固镇');
INSERT INTO `city_info` VALUES ('101220204', '安徽', '蚌埠', '五河');
INSERT INTO `city_info` VALUES ('101220301', '安徽', '芜湖', '芜湖');
INSERT INTO `city_info` VALUES ('101220302', '安徽', '芜湖', '繁昌');
INSERT INTO `city_info` VALUES ('101220303', '安徽', '芜湖', '芜湖县');
INSERT INTO `city_info` VALUES ('101220304', '安徽', '芜湖', '南陵');
INSERT INTO `city_info` VALUES ('101220401', '安徽', '淮南', '淮南');
INSERT INTO `city_info` VALUES ('101220402', '安徽', '淮南', '凤台');
INSERT INTO `city_info` VALUES ('101220403', '安徽', '淮南', '潘集');
INSERT INTO `city_info` VALUES ('101220501', '安徽', '马鞍山', '马鞍山');
INSERT INTO `city_info` VALUES ('101220502', '安徽', '马鞍山', '当涂');
INSERT INTO `city_info` VALUES ('101220601', '安徽', '安庆', '安庆');
INSERT INTO `city_info` VALUES ('101220602', '安徽', '安庆', '枞阳');
INSERT INTO `city_info` VALUES ('101220603', '安徽', '安庆', '太湖');
INSERT INTO `city_info` VALUES ('101220604', '安徽', '安庆', '潜山');
INSERT INTO `city_info` VALUES ('101220605', '安徽', '安庆', '怀宁');
INSERT INTO `city_info` VALUES ('101220606', '安徽', '安庆', '宿松');
INSERT INTO `city_info` VALUES ('101220607', '安徽', '安庆', '望江');
INSERT INTO `city_info` VALUES ('101220608', '安徽', '安庆', '岳西');
INSERT INTO `city_info` VALUES ('101220609', '安徽', '安庆', '桐城');
INSERT INTO `city_info` VALUES ('101220701', '安徽', '宿州', '宿州');
INSERT INTO `city_info` VALUES ('101220702', '安徽', '宿州', '砀山');
INSERT INTO `city_info` VALUES ('101220703', '安徽', '宿州', '灵璧');
INSERT INTO `city_info` VALUES ('101220704', '安徽', '宿州', '泗县');
INSERT INTO `city_info` VALUES ('101220705', '安徽', '宿州', '萧县');
INSERT INTO `city_info` VALUES ('101220801', '安徽', '阜阳', '阜阳');
INSERT INTO `city_info` VALUES ('101220802', '安徽', '阜阳', '阜南');
INSERT INTO `city_info` VALUES ('101220803', '安徽', '阜阳', '颍上');
INSERT INTO `city_info` VALUES ('101220804', '安徽', '阜阳', '临泉');
INSERT INTO `city_info` VALUES ('101220805', '安徽', '阜阳', '界首');
INSERT INTO `city_info` VALUES ('101220806', '安徽', '阜阳', '太和');
INSERT INTO `city_info` VALUES ('101220901', '安徽', '亳州', '亳州');
INSERT INTO `city_info` VALUES ('101220902', '安徽', '亳州', '涡阳');
INSERT INTO `city_info` VALUES ('101220903', '安徽', '亳州', '利辛');
INSERT INTO `city_info` VALUES ('101220904', '安徽', '亳州', '蒙城');
INSERT INTO `city_info` VALUES ('101221001', '安徽', '黄山', '黄山市');
INSERT INTO `city_info` VALUES ('101221002', '安徽', '黄山', '黄山区');
INSERT INTO `city_info` VALUES ('101221003', '安徽', '黄山', '屯溪');
INSERT INTO `city_info` VALUES ('101221004', '安徽', '黄山', '祁门');
INSERT INTO `city_info` VALUES ('101221005', '安徽', '黄山', '黟县');
INSERT INTO `city_info` VALUES ('101221006', '安徽', '黄山', '歙县');
INSERT INTO `city_info` VALUES ('101221007', '安徽', '黄山', '休宁');
INSERT INTO `city_info` VALUES ('101221008', '安徽', '黄山', '黄山风景区');
INSERT INTO `city_info` VALUES ('101221101', '安徽', '滁州', '滁州');
INSERT INTO `city_info` VALUES ('101221102', '安徽', '滁州', '凤阳');
INSERT INTO `city_info` VALUES ('101221103', '安徽', '滁州', '明光');
INSERT INTO `city_info` VALUES ('101221104', '安徽', '滁州', '定远');
INSERT INTO `city_info` VALUES ('101221105', '安徽', '滁州', '全椒');
INSERT INTO `city_info` VALUES ('101221106', '安徽', '滁州', '来安');
INSERT INTO `city_info` VALUES ('101221107', '安徽', '滁州', '天长');
INSERT INTO `city_info` VALUES ('101221201', '安徽', '淮北', '淮北');
INSERT INTO `city_info` VALUES ('101221202', '安徽', '淮北', '濉溪');
INSERT INTO `city_info` VALUES ('101221301', '安徽', '铜陵', '铜陵');
INSERT INTO `city_info` VALUES ('101221401', '安徽', '宣城', '宣城');
INSERT INTO `city_info` VALUES ('101221402', '安徽', '宣城', '泾县');
INSERT INTO `city_info` VALUES ('101221403', '安徽', '宣城', '旌德');
INSERT INTO `city_info` VALUES ('101221404', '安徽', '宣城', '宁国');
INSERT INTO `city_info` VALUES ('101221405', '安徽', '宣城', '绩溪');
INSERT INTO `city_info` VALUES ('101221406', '安徽', '宣城', '广德');
INSERT INTO `city_info` VALUES ('101221407', '安徽', '宣城', '郎溪');
INSERT INTO `city_info` VALUES ('101221501', '安徽', '六安', '六安');
INSERT INTO `city_info` VALUES ('101221502', '安徽', '六安', '霍邱');
INSERT INTO `city_info` VALUES ('101221503', '安徽', '六安', '寿县');
INSERT INTO `city_info` VALUES ('101221505', '安徽', '六安', '金寨');
INSERT INTO `city_info` VALUES ('101221506', '安徽', '六安', '霍山');
INSERT INTO `city_info` VALUES ('101221507', '安徽', '六安', '舒城');
INSERT INTO `city_info` VALUES ('101221601', '安徽', '巢湖', '巢湖');
INSERT INTO `city_info` VALUES ('101221602', '安徽', '巢湖', '庐江');
INSERT INTO `city_info` VALUES ('101221603', '安徽', '巢湖', '无为');
INSERT INTO `city_info` VALUES ('101221604', '安徽', '巢湖', '含山');
INSERT INTO `city_info` VALUES ('101221605', '安徽', '巢湖', '和县');
INSERT INTO `city_info` VALUES ('101221701', '安徽', '池州', '池州');
INSERT INTO `city_info` VALUES ('101221702', '安徽', '池州', '东至');
INSERT INTO `city_info` VALUES ('101221703', '安徽', '池州', '青阳');
INSERT INTO `city_info` VALUES ('101221704', '安徽', '池州', '九华山');
INSERT INTO `city_info` VALUES ('101221705', '安徽', '池州', '石台');
INSERT INTO `city_info` VALUES ('101230101', '福建', '福州', '福州');
INSERT INTO `city_info` VALUES ('101230102', '福建', '福州', '闽清');
INSERT INTO `city_info` VALUES ('101230103', '福建', '福州', '闽侯');
INSERT INTO `city_info` VALUES ('101230104', '福建', '福州', '罗源');
INSERT INTO `city_info` VALUES ('101230105', '福建', '福州', '连江');
INSERT INTO `city_info` VALUES ('101230107', '福建', '福州', '永泰');
INSERT INTO `city_info` VALUES ('101230108', '福建', '福州', '平潭');
INSERT INTO `city_info` VALUES ('101230110', '福建', '福州', '长乐');
INSERT INTO `city_info` VALUES ('101230111', '福建', '福州', '福清');
INSERT INTO `city_info` VALUES ('101230201', '福建', '厦门', '厦门');
INSERT INTO `city_info` VALUES ('101230202', '福建', '厦门', '同安');
INSERT INTO `city_info` VALUES ('101230301', '福建', '宁德', '宁德');
INSERT INTO `city_info` VALUES ('101230302', '福建', '宁德', '古田');
INSERT INTO `city_info` VALUES ('101230303', '福建', '宁德', '霞浦');
INSERT INTO `city_info` VALUES ('101230304', '福建', '宁德', '寿宁');
INSERT INTO `city_info` VALUES ('101230305', '福建', '宁德', '周宁');
INSERT INTO `city_info` VALUES ('101230306', '福建', '宁德', '福安');
INSERT INTO `city_info` VALUES ('101230307', '福建', '宁德', '柘荣');
INSERT INTO `city_info` VALUES ('101230308', '福建', '宁德', '福鼎');
INSERT INTO `city_info` VALUES ('101230309', '福建', '宁德', '屏南');
INSERT INTO `city_info` VALUES ('101230401', '福建', '莆田', '莆田');
INSERT INTO `city_info` VALUES ('101230402', '福建', '莆田', '仙游');
INSERT INTO `city_info` VALUES ('101230403', '福建', '莆田', '秀屿港');
INSERT INTO `city_info` VALUES ('101230404', '福建', '莆田', '涵江');
INSERT INTO `city_info` VALUES ('101230405', '福建', '莆田', '秀屿');
INSERT INTO `city_info` VALUES ('101230406', '福建', '莆田', '荔城');
INSERT INTO `city_info` VALUES ('101230407', '福建', '莆田', '城厢');
INSERT INTO `city_info` VALUES ('101230501', '福建', '泉州', '泉州');
INSERT INTO `city_info` VALUES ('101230502', '福建', '泉州', '安溪');
INSERT INTO `city_info` VALUES ('101230504', '福建', '泉州', '永春');
INSERT INTO `city_info` VALUES ('101230505', '福建', '泉州', '德化');
INSERT INTO `city_info` VALUES ('101230506', '福建', '泉州', '南安');
INSERT INTO `city_info` VALUES ('101230507', '福建', '泉州', '崇武');
INSERT INTO `city_info` VALUES ('101230508', '福建', '泉州', '惠安');
INSERT INTO `city_info` VALUES ('101230509', '福建', '泉州', '晋江');
INSERT INTO `city_info` VALUES ('101230510', '福建', '泉州', '石狮');
INSERT INTO `city_info` VALUES ('101230601', '福建', '漳州', '漳州');
INSERT INTO `city_info` VALUES ('101230602', '福建', '漳州', '长泰');
INSERT INTO `city_info` VALUES ('101230603', '福建', '漳州', '南靖');
INSERT INTO `city_info` VALUES ('101230604', '福建', '漳州', '平和');
INSERT INTO `city_info` VALUES ('101230605', '福建', '漳州', '龙海');
INSERT INTO `city_info` VALUES ('101230606', '福建', '漳州', '漳浦');
INSERT INTO `city_info` VALUES ('101230607', '福建', '漳州', '诏安');
INSERT INTO `city_info` VALUES ('101230608', '福建', '漳州', '东山');
INSERT INTO `city_info` VALUES ('101230609', '福建', '漳州', '云霄');
INSERT INTO `city_info` VALUES ('101230610', '福建', '漳州', '华安');
INSERT INTO `city_info` VALUES ('101230701', '福建', '龙岩', '龙岩');
INSERT INTO `city_info` VALUES ('101230702', '福建', '龙岩', '长汀');
INSERT INTO `city_info` VALUES ('101230703', '福建', '龙岩', '连城');
INSERT INTO `city_info` VALUES ('101230704', '福建', '龙岩', '武平');
INSERT INTO `city_info` VALUES ('101230705', '福建', '龙岩', '上杭');
INSERT INTO `city_info` VALUES ('101230706', '福建', '龙岩', '永定');
INSERT INTO `city_info` VALUES ('101230707', '福建', '龙岩', '漳平');
INSERT INTO `city_info` VALUES ('101230801', '福建', '三明', '三明');
INSERT INTO `city_info` VALUES ('101230802', '福建', '三明', '宁化');
INSERT INTO `city_info` VALUES ('101230803', '福建', '三明', '清流');
INSERT INTO `city_info` VALUES ('101230804', '福建', '三明', '泰宁');
INSERT INTO `city_info` VALUES ('101230805', '福建', '三明', '将乐');
INSERT INTO `city_info` VALUES ('101230806', '福建', '三明', '建宁');
INSERT INTO `city_info` VALUES ('101230807', '福建', '三明', '明溪');
INSERT INTO `city_info` VALUES ('101230808', '福建', '三明', '沙县');
INSERT INTO `city_info` VALUES ('101230809', '福建', '三明', '尤溪');
INSERT INTO `city_info` VALUES ('101230810', '福建', '三明', '永安');
INSERT INTO `city_info` VALUES ('101230811', '福建', '三明', '大田');
INSERT INTO `city_info` VALUES ('101230901', '福建', '南平', '南平');
INSERT INTO `city_info` VALUES ('101230902', '福建', '南平', '顺昌');
INSERT INTO `city_info` VALUES ('101230903', '福建', '南平', '光泽');
INSERT INTO `city_info` VALUES ('101230904', '福建', '南平', '邵武');
INSERT INTO `city_info` VALUES ('101230905', '福建', '南平', '武夷山');
INSERT INTO `city_info` VALUES ('101230906', '福建', '南平', '浦城');
INSERT INTO `city_info` VALUES ('101230907', '福建', '南平', '建阳');
INSERT INTO `city_info` VALUES ('101230908', '福建', '南平', '松溪');
INSERT INTO `city_info` VALUES ('101230909', '福建', '南平', '政和');
INSERT INTO `city_info` VALUES ('101230910', '福建', '南平', '建瓯');
INSERT INTO `city_info` VALUES ('101240101', '江西', '南昌', '南昌');
INSERT INTO `city_info` VALUES ('101240102', '江西', '南昌', '新建');
INSERT INTO `city_info` VALUES ('101240103', '江西', '南昌', '南昌县');
INSERT INTO `city_info` VALUES ('101240104', '江西', '南昌', '安义');
INSERT INTO `city_info` VALUES ('101240105', '江西', '南昌', '进贤');
INSERT INTO `city_info` VALUES ('101240201', '江西', '九江', '九江');
INSERT INTO `city_info` VALUES ('101240202', '江西', '九江', '瑞昌');
INSERT INTO `city_info` VALUES ('101240203', '江西', '九江', '庐山');
INSERT INTO `city_info` VALUES ('101240204', '江西', '九江', '武宁');
INSERT INTO `city_info` VALUES ('101240205', '江西', '九江', '德安');
INSERT INTO `city_info` VALUES ('101240206', '江西', '九江', '永修');
INSERT INTO `city_info` VALUES ('101240207', '江西', '九江', '湖口');
INSERT INTO `city_info` VALUES ('101240208', '江西', '九江', '彭泽');
INSERT INTO `city_info` VALUES ('101240209', '江西', '九江', '星子');
INSERT INTO `city_info` VALUES ('101240210', '江西', '九江', '都昌');
INSERT INTO `city_info` VALUES ('101240212', '江西', '九江', '修水');
INSERT INTO `city_info` VALUES ('101240301', '江西', '上饶', '上饶');
INSERT INTO `city_info` VALUES ('101240302', '江西', '上饶', '鄱阳');
INSERT INTO `city_info` VALUES ('101240303', '江西', '上饶', '婺源');
INSERT INTO `city_info` VALUES ('101240305', '江西', '上饶', '余干');
INSERT INTO `city_info` VALUES ('101240306', '江西', '上饶', '万年');
INSERT INTO `city_info` VALUES ('101240307', '江西', '上饶', '德兴');
INSERT INTO `city_info` VALUES ('101240308', '江西', '上饶', '上饶县');
INSERT INTO `city_info` VALUES ('101240309', '江西', '上饶', '弋阳');
INSERT INTO `city_info` VALUES ('101240310', '江西', '上饶', '横峰');
INSERT INTO `city_info` VALUES ('101240311', '江西', '上饶', '铅山');
INSERT INTO `city_info` VALUES ('101240312', '江西', '上饶', '玉山');
INSERT INTO `city_info` VALUES ('101240313', '江西', '上饶', '广丰');
INSERT INTO `city_info` VALUES ('101240401', '江西', '抚州', '抚州');
INSERT INTO `city_info` VALUES ('101240402', '江西', '抚州', '广昌');
INSERT INTO `city_info` VALUES ('101240403', '江西', '抚州', '乐安');
INSERT INTO `city_info` VALUES ('101240404', '江西', '抚州', '崇仁');
INSERT INTO `city_info` VALUES ('101240405', '江西', '抚州', '金溪');
INSERT INTO `city_info` VALUES ('101240406', '江西', '抚州', '资溪');
INSERT INTO `city_info` VALUES ('101240407', '江西', '抚州', '宜黄');
INSERT INTO `city_info` VALUES ('101240408', '江西', '抚州', '南城');
INSERT INTO `city_info` VALUES ('101240409', '江西', '抚州', '南丰');
INSERT INTO `city_info` VALUES ('101240410', '江西', '抚州', '黎川');
INSERT INTO `city_info` VALUES ('101240411', '江西', '抚州', '东乡');
INSERT INTO `city_info` VALUES ('101240501', '江西', '宜春', '宜春');
INSERT INTO `city_info` VALUES ('101240502', '江西', '宜春', '铜鼓');
INSERT INTO `city_info` VALUES ('101240503', '江西', '宜春', '宜丰');
INSERT INTO `city_info` VALUES ('101240504', '江西', '宜春', '万载');
INSERT INTO `city_info` VALUES ('101240505', '江西', '宜春', '上高');
INSERT INTO `city_info` VALUES ('101240506', '江西', '宜春', '靖安');
INSERT INTO `city_info` VALUES ('101240507', '江西', '宜春', '奉新');
INSERT INTO `city_info` VALUES ('101240508', '江西', '宜春', '高安');
INSERT INTO `city_info` VALUES ('101240509', '江西', '宜春', '樟树');
INSERT INTO `city_info` VALUES ('101240510', '江西', '宜春', '丰城');
INSERT INTO `city_info` VALUES ('101240601', '江西', '吉安', '吉安');
INSERT INTO `city_info` VALUES ('101240602', '江西', '吉安', '吉安县');
INSERT INTO `city_info` VALUES ('101240603', '江西', '吉安', '吉水');
INSERT INTO `city_info` VALUES ('101240604', '江西', '吉安', '新干');
INSERT INTO `city_info` VALUES ('101240605', '江西', '吉安', '峡江');
INSERT INTO `city_info` VALUES ('101240606', '江西', '吉安', '永丰');
INSERT INTO `city_info` VALUES ('101240607', '江西', '吉安', '永新');
INSERT INTO `city_info` VALUES ('101240608', '江西', '吉安', '井冈山');
INSERT INTO `city_info` VALUES ('101240609', '江西', '吉安', '万安');
INSERT INTO `city_info` VALUES ('101240610', '江西', '吉安', '遂川');
INSERT INTO `city_info` VALUES ('101240611', '江西', '吉安', '泰和');
INSERT INTO `city_info` VALUES ('101240612', '江西', '吉安', '安福');
INSERT INTO `city_info` VALUES ('101240613', '江西', '吉安', '宁冈');
INSERT INTO `city_info` VALUES ('101240701', '江西', '赣州', '赣州');
INSERT INTO `city_info` VALUES ('101240702', '江西', '赣州', '崇义');
INSERT INTO `city_info` VALUES ('101240703', '江西', '赣州', '上犹');
INSERT INTO `city_info` VALUES ('101240704', '江西', '赣州', '南康');
INSERT INTO `city_info` VALUES ('101240705', '江西', '赣州', '大余');
INSERT INTO `city_info` VALUES ('101240706', '江西', '赣州', '信丰');
INSERT INTO `city_info` VALUES ('101240707', '江西', '赣州', '宁都');
INSERT INTO `city_info` VALUES ('101240708', '江西', '赣州', '石城');
INSERT INTO `city_info` VALUES ('101240709', '江西', '赣州', '瑞金');
INSERT INTO `city_info` VALUES ('101240710', '江西', '赣州', '于都');
INSERT INTO `city_info` VALUES ('101240711', '江西', '赣州', '会昌');
INSERT INTO `city_info` VALUES ('101240712', '江西', '赣州', '安远');
INSERT INTO `city_info` VALUES ('101240713', '江西', '赣州', '全南');
INSERT INTO `city_info` VALUES ('101240714', '江西', '赣州', '龙南');
INSERT INTO `city_info` VALUES ('101240715', '江西', '赣州', '定南');
INSERT INTO `city_info` VALUES ('101240716', '江西', '赣州', '寻乌');
INSERT INTO `city_info` VALUES ('101240717', '江西', '赣州', '兴国');
INSERT INTO `city_info` VALUES ('101240718', '江西', '赣州', '赣县');
INSERT INTO `city_info` VALUES ('101240801', '江西', '景德镇', '景德镇');
INSERT INTO `city_info` VALUES ('101240802', '江西', '景德镇', '乐平');
INSERT INTO `city_info` VALUES ('101240803', '江西', '景德镇', '浮梁');
INSERT INTO `city_info` VALUES ('101240901', '江西', '萍乡', '萍乡');
INSERT INTO `city_info` VALUES ('101240902', '江西', '萍乡', '莲花');
INSERT INTO `city_info` VALUES ('101240903', '江西', '萍乡', '上栗');
INSERT INTO `city_info` VALUES ('101240904', '江西', '萍乡', '安源');
INSERT INTO `city_info` VALUES ('101240905', '江西', '萍乡', '芦溪');
INSERT INTO `city_info` VALUES ('101240906', '江西', '萍乡', '湘东');
INSERT INTO `city_info` VALUES ('101241001', '江西', '新余', '新余');
INSERT INTO `city_info` VALUES ('101241002', '江西', '新余', '分宜');
INSERT INTO `city_info` VALUES ('101241101', '江西', '鹰潭', '鹰潭');
INSERT INTO `city_info` VALUES ('101241102', '江西', '鹰潭', '余江');
INSERT INTO `city_info` VALUES ('101241103', '江西', '鹰潭', '贵溪');
INSERT INTO `city_info` VALUES ('101250101', '湖南', '长沙', '长沙');
INSERT INTO `city_info` VALUES ('101250102', '湖南', '长沙', '宁乡');
INSERT INTO `city_info` VALUES ('101250103', '湖南', '长沙', '浏阳');
INSERT INTO `city_info` VALUES ('101250104', '湖南', '长沙', '马坡岭');
INSERT INTO `city_info` VALUES ('101250105', '湖南', '长沙', '望城');
INSERT INTO `city_info` VALUES ('101250201', '湖南', '湘潭', '湘潭');
INSERT INTO `city_info` VALUES ('101250202', '湖南', '湘潭', '韶山');
INSERT INTO `city_info` VALUES ('101250203', '湖南', '湘潭', '湘乡');
INSERT INTO `city_info` VALUES ('101250301', '湖南', '株洲', '株洲');
INSERT INTO `city_info` VALUES ('101250302', '湖南', '株洲', '攸县');
INSERT INTO `city_info` VALUES ('101250303', '湖南', '株洲', '醴陵');
INSERT INTO `city_info` VALUES ('101250305', '湖南', '株洲', '茶陵');
INSERT INTO `city_info` VALUES ('101250306', '湖南', '株洲', '炎陵');
INSERT INTO `city_info` VALUES ('101250401', '湖南', '衡阳', '衡阳');
INSERT INTO `city_info` VALUES ('101250402', '湖南', '衡阳', '衡山');
INSERT INTO `city_info` VALUES ('101250403', '湖南', '衡阳', '衡东');
INSERT INTO `city_info` VALUES ('101250404', '湖南', '衡阳', '祁东');
INSERT INTO `city_info` VALUES ('101250405', '湖南', '衡阳', '衡阳县');
INSERT INTO `city_info` VALUES ('101250406', '湖南', '衡阳', '常宁');
INSERT INTO `city_info` VALUES ('101250407', '湖南', '衡阳', '衡南');
INSERT INTO `city_info` VALUES ('101250408', '湖南', '衡阳', '耒阳');
INSERT INTO `city_info` VALUES ('101250409', '湖南', '衡阳', '南岳');
INSERT INTO `city_info` VALUES ('101250501', '湖南', '郴州', '郴州');
INSERT INTO `city_info` VALUES ('101250502', '湖南', '郴州', '桂阳');
INSERT INTO `city_info` VALUES ('101250503', '湖南', '郴州', '嘉禾');
INSERT INTO `city_info` VALUES ('101250504', '湖南', '郴州', '宜章');
INSERT INTO `city_info` VALUES ('101250505', '湖南', '郴州', '临武');
INSERT INTO `city_info` VALUES ('101250507', '湖南', '郴州', '资兴');
INSERT INTO `city_info` VALUES ('101250508', '湖南', '郴州', '汝城');
INSERT INTO `city_info` VALUES ('101250509', '湖南', '郴州', '安仁');
INSERT INTO `city_info` VALUES ('101250510', '湖南', '郴州', '永兴');
INSERT INTO `city_info` VALUES ('101250511', '湖南', '郴州', '桂东');
INSERT INTO `city_info` VALUES ('101250512', '湖南', '郴州', '苏仙');
INSERT INTO `city_info` VALUES ('101250601', '湖南', '常德', '常德');
INSERT INTO `city_info` VALUES ('101250602', '湖南', '常德', '安乡');
INSERT INTO `city_info` VALUES ('101250603', '湖南', '常德', '桃源');
INSERT INTO `city_info` VALUES ('101250604', '湖南', '常德', '汉寿');
INSERT INTO `city_info` VALUES ('101250605', '湖南', '常德', '澧县');
INSERT INTO `city_info` VALUES ('101250606', '湖南', '常德', '临澧');
INSERT INTO `city_info` VALUES ('101250607', '湖南', '常德', '石门');
INSERT INTO `city_info` VALUES ('101250608', '湖南', '常德', '津市');
INSERT INTO `city_info` VALUES ('101250700', '湖南', '益阳', '益阳');
INSERT INTO `city_info` VALUES ('101250701', '湖南', '益阳', '赫山区');
INSERT INTO `city_info` VALUES ('101250702', '湖南', '益阳', '南县');
INSERT INTO `city_info` VALUES ('101250703', '湖南', '益阳', '桃江');
INSERT INTO `city_info` VALUES ('101250704', '湖南', '益阳', '安化');
INSERT INTO `city_info` VALUES ('101250705', '湖南', '益阳', '沅江');
INSERT INTO `city_info` VALUES ('101250801', '湖南', '娄底', '娄底');
INSERT INTO `city_info` VALUES ('101250802', '湖南', '娄底', '双峰');
INSERT INTO `city_info` VALUES ('101250803', '湖南', '娄底', '冷水江');
INSERT INTO `city_info` VALUES ('101250805', '湖南', '娄底', '新化');
INSERT INTO `city_info` VALUES ('101250806', '湖南', '娄底', '涟源');
INSERT INTO `city_info` VALUES ('101250901', '湖南', '邵阳', '邵阳');
INSERT INTO `city_info` VALUES ('101250902', '湖南', '邵阳', '隆回');
INSERT INTO `city_info` VALUES ('101250903', '湖南', '邵阳', '洞口');
INSERT INTO `city_info` VALUES ('101250904', '湖南', '邵阳', '新邵');
INSERT INTO `city_info` VALUES ('101250905', '湖南', '邵阳', '邵东');
INSERT INTO `city_info` VALUES ('101250906', '湖南', '邵阳', '绥宁');
INSERT INTO `city_info` VALUES ('101250907', '湖南', '邵阳', '新宁');
INSERT INTO `city_info` VALUES ('101250908', '湖南', '邵阳', '武冈');
INSERT INTO `city_info` VALUES ('101250909', '湖南', '邵阳', '城步');
INSERT INTO `city_info` VALUES ('101250910', '湖南', '邵阳', '邵阳县');
INSERT INTO `city_info` VALUES ('101251001', '湖南', '岳阳', '岳阳');
INSERT INTO `city_info` VALUES ('101251002', '湖南', '岳阳', '华容');
INSERT INTO `city_info` VALUES ('101251003', '湖南', '岳阳', '湘阴');
INSERT INTO `city_info` VALUES ('101251004', '湖南', '岳阳', '汨罗');
INSERT INTO `city_info` VALUES ('101251005', '湖南', '岳阳', '平江');
INSERT INTO `city_info` VALUES ('101251006', '湖南', '岳阳', '临湘');
INSERT INTO `city_info` VALUES ('101251101', '湖南', '张家界', '张家界');
INSERT INTO `city_info` VALUES ('101251102', '湖南', '张家界', '桑植');
INSERT INTO `city_info` VALUES ('101251103', '湖南', '张家界', '慈利');
INSERT INTO `city_info` VALUES ('101251104', '湖南', '张家界', '武陵源');
INSERT INTO `city_info` VALUES ('101251201', '湖南', '怀化', '怀化');
INSERT INTO `city_info` VALUES ('101251203', '湖南', '怀化', '沅陵');
INSERT INTO `city_info` VALUES ('101251204', '湖南', '怀化', '辰溪');
INSERT INTO `city_info` VALUES ('101251205', '湖南', '怀化', '靖州');
INSERT INTO `city_info` VALUES ('101251206', '湖南', '怀化', '会同');
INSERT INTO `city_info` VALUES ('101251207', '湖南', '怀化', '通道');
INSERT INTO `city_info` VALUES ('101251208', '湖南', '怀化', '麻阳');
INSERT INTO `city_info` VALUES ('101251209', '湖南', '怀化', '新晃');
INSERT INTO `city_info` VALUES ('101251210', '湖南', '怀化', '芷江');
INSERT INTO `city_info` VALUES ('101251211', '湖南', '怀化', '溆浦');
INSERT INTO `city_info` VALUES ('101251212', '湖南', '怀化', '中方');
INSERT INTO `city_info` VALUES ('101251213', '湖南', '怀化', '洪江');
INSERT INTO `city_info` VALUES ('101251401', '湖南', '永州', '永州');
INSERT INTO `city_info` VALUES ('101251402', '湖南', '永州', '祁阳');
INSERT INTO `city_info` VALUES ('101251403', '湖南', '永州', '东安');
INSERT INTO `city_info` VALUES ('101251404', '湖南', '永州', '双牌');
INSERT INTO `city_info` VALUES ('101251405', '湖南', '永州', '道县');
INSERT INTO `city_info` VALUES ('101251406', '湖南', '永州', '宁远');
INSERT INTO `city_info` VALUES ('101251407', '湖南', '永州', '江永');
INSERT INTO `city_info` VALUES ('101251408', '湖南', '永州', '蓝山');
INSERT INTO `city_info` VALUES ('101251409', '湖南', '永州', '新田');
INSERT INTO `city_info` VALUES ('101251410', '湖南', '永州', '江华');
INSERT INTO `city_info` VALUES ('101251411', '湖南', '永州', '冷水滩');
INSERT INTO `city_info` VALUES ('101251501', '湖南', '湘西', '吉首');
INSERT INTO `city_info` VALUES ('101251502', '湖南', '湘西', '保靖');
INSERT INTO `city_info` VALUES ('101251503', '湖南', '湘西', '永顺');
INSERT INTO `city_info` VALUES ('101251504', '湖南', '湘西', '古丈');
INSERT INTO `city_info` VALUES ('101251505', '湖南', '湘西', '凤凰');
INSERT INTO `city_info` VALUES ('101251506', '湖南', '湘西', '泸溪');
INSERT INTO `city_info` VALUES ('101251507', '湖南', '湘西', '龙山');
INSERT INTO `city_info` VALUES ('101251508', '湖南', '湘西', '花垣');
INSERT INTO `city_info` VALUES ('101260101', '贵州', '贵阳', '贵阳');
INSERT INTO `city_info` VALUES ('101260102', '贵州', '贵阳', '白云');
INSERT INTO `city_info` VALUES ('101260103', '贵州', '贵阳', '花溪');
INSERT INTO `city_info` VALUES ('101260104', '贵州', '贵阳', '乌当');
INSERT INTO `city_info` VALUES ('101260105', '贵州', '贵阳', '息烽');
INSERT INTO `city_info` VALUES ('101260106', '贵州', '贵阳', '开阳');
INSERT INTO `city_info` VALUES ('101260107', '贵州', '贵阳', '修文');
INSERT INTO `city_info` VALUES ('101260108', '贵州', '贵阳', '清镇');
INSERT INTO `city_info` VALUES ('101260109', '贵州', '贵阳', '小河');
INSERT INTO `city_info` VALUES ('101260110', '贵州', '贵阳', '云岩');
INSERT INTO `city_info` VALUES ('101260111', '贵州', '贵阳', '南明');
INSERT INTO `city_info` VALUES ('101260201', '贵州', '遵义', '遵义');
INSERT INTO `city_info` VALUES ('101260202', '贵州', '遵义', '遵义县');
INSERT INTO `city_info` VALUES ('101260203', '贵州', '遵义', '仁怀');
INSERT INTO `city_info` VALUES ('101260204', '贵州', '遵义', '绥阳');
INSERT INTO `city_info` VALUES ('101260205', '贵州', '遵义', '湄潭');
INSERT INTO `city_info` VALUES ('101260206', '贵州', '遵义', '凤冈');
INSERT INTO `city_info` VALUES ('101260207', '贵州', '遵义', '桐梓');
INSERT INTO `city_info` VALUES ('101260208', '贵州', '遵义', '赤水');
INSERT INTO `city_info` VALUES ('101260209', '贵州', '遵义', '习水');
INSERT INTO `city_info` VALUES ('101260210', '贵州', '遵义', '道真');
INSERT INTO `city_info` VALUES ('101260211', '贵州', '遵义', '正安');
INSERT INTO `city_info` VALUES ('101260212', '贵州', '遵义', '务川');
INSERT INTO `city_info` VALUES ('101260213', '贵州', '遵义', '余庆');
INSERT INTO `city_info` VALUES ('101260214', '贵州', '遵义', '汇川');
INSERT INTO `city_info` VALUES ('101260215', '贵州', '遵义', '红花岗');
INSERT INTO `city_info` VALUES ('101260301', '贵州', '安顺', '安顺');
INSERT INTO `city_info` VALUES ('101260302', '贵州', '安顺', '普定');
INSERT INTO `city_info` VALUES ('101260303', '贵州', '安顺', '镇宁');
INSERT INTO `city_info` VALUES ('101260304', '贵州', '安顺', '平坝');
INSERT INTO `city_info` VALUES ('101260305', '贵州', '安顺', '紫云');
INSERT INTO `city_info` VALUES ('101260306', '贵州', '安顺', '关岭');
INSERT INTO `city_info` VALUES ('101260401', '贵州', '黔南', '都匀');
INSERT INTO `city_info` VALUES ('101260402', '贵州', '黔南', '贵定');
INSERT INTO `city_info` VALUES ('101260403', '贵州', '黔南', '瓮安');
INSERT INTO `city_info` VALUES ('101260404', '贵州', '黔南', '长顺');
INSERT INTO `city_info` VALUES ('101260405', '贵州', '黔南', '福泉');
INSERT INTO `city_info` VALUES ('101260406', '贵州', '黔南', '惠水');
INSERT INTO `city_info` VALUES ('101260407', '贵州', '黔南', '龙里');
INSERT INTO `city_info` VALUES ('101260408', '贵州', '黔南', '罗甸');
INSERT INTO `city_info` VALUES ('101260409', '贵州', '黔南', '平塘');
INSERT INTO `city_info` VALUES ('101260410', '贵州', '黔南', '独山');
INSERT INTO `city_info` VALUES ('101260411', '贵州', '黔南', '三都');
INSERT INTO `city_info` VALUES ('101260412', '贵州', '黔南', '荔波');
INSERT INTO `city_info` VALUES ('101260501', '贵州', '黔东南', '凯里');
INSERT INTO `city_info` VALUES ('101260502', '贵州', '黔东南', '岑巩');
INSERT INTO `city_info` VALUES ('101260503', '贵州', '黔东南', '施秉');
INSERT INTO `city_info` VALUES ('101260504', '贵州', '黔东南', '镇远');
INSERT INTO `city_info` VALUES ('101260505', '贵州', '黔东南', '黄平');
INSERT INTO `city_info` VALUES ('101260507', '贵州', '黔东南', '麻江');
INSERT INTO `city_info` VALUES ('101260508', '贵州', '黔东南', '丹寨');
INSERT INTO `city_info` VALUES ('101260509', '贵州', '黔东南', '三穗');
INSERT INTO `city_info` VALUES ('101260510', '贵州', '黔东南', '台江');
INSERT INTO `city_info` VALUES ('101260511', '贵州', '黔东南', '剑河');
INSERT INTO `city_info` VALUES ('101260512', '贵州', '黔东南', '雷山');
INSERT INTO `city_info` VALUES ('101260513', '贵州', '黔东南', '黎平');
INSERT INTO `city_info` VALUES ('101260514', '贵州', '黔东南', '天柱');
INSERT INTO `city_info` VALUES ('101260515', '贵州', '黔东南', '锦屏');
INSERT INTO `city_info` VALUES ('101260516', '贵州', '黔东南', '榕江');
INSERT INTO `city_info` VALUES ('101260517', '贵州', '黔东南', '从江');
INSERT INTO `city_info` VALUES ('101260601', '贵州', '铜仁', '铜仁');
INSERT INTO `city_info` VALUES ('101260602', '贵州', '铜仁', '江口');
INSERT INTO `city_info` VALUES ('101260603', '贵州', '铜仁', '玉屏');
INSERT INTO `city_info` VALUES ('101260604', '贵州', '铜仁', '万山');
INSERT INTO `city_info` VALUES ('101260605', '贵州', '铜仁', '思南');
INSERT INTO `city_info` VALUES ('101260607', '贵州', '铜仁', '印江');
INSERT INTO `city_info` VALUES ('101260608', '贵州', '铜仁', '石阡');
INSERT INTO `city_info` VALUES ('101260609', '贵州', '铜仁', '沿河');
INSERT INTO `city_info` VALUES ('101260610', '贵州', '铜仁', '德江');
INSERT INTO `city_info` VALUES ('101260611', '贵州', '铜仁', '松桃');
INSERT INTO `city_info` VALUES ('101260701', '贵州', '毕节', '毕节');
INSERT INTO `city_info` VALUES ('101260702', '贵州', '毕节', '赫章');
INSERT INTO `city_info` VALUES ('101260703', '贵州', '毕节', '金沙');
INSERT INTO `city_info` VALUES ('101260704', '贵州', '毕节', '威宁');
INSERT INTO `city_info` VALUES ('101260705', '贵州', '毕节', '大方');
INSERT INTO `city_info` VALUES ('101260706', '贵州', '毕节', '纳雍');
INSERT INTO `city_info` VALUES ('101260707', '贵州', '毕节', '织金');
INSERT INTO `city_info` VALUES ('101260708', '贵州', '毕节', '黔西');
INSERT INTO `city_info` VALUES ('101260801', '贵州', '六盘水', '水城');
INSERT INTO `city_info` VALUES ('101260802', '贵州', '六盘水', '六枝');
INSERT INTO `city_info` VALUES ('101260804', '贵州', '六盘水', '盘县');
INSERT INTO `city_info` VALUES ('101260901', '贵州', '黔西南', '兴义');
INSERT INTO `city_info` VALUES ('101260902', '贵州', '黔西南', '晴隆');
INSERT INTO `city_info` VALUES ('101260903', '贵州', '黔西南', '兴仁');
INSERT INTO `city_info` VALUES ('101260904', '贵州', '黔西南', '贞丰');
INSERT INTO `city_info` VALUES ('101260905', '贵州', '黔西南', '望谟');
INSERT INTO `city_info` VALUES ('101260907', '贵州', '黔西南', '安龙');
INSERT INTO `city_info` VALUES ('101260908', '贵州', '黔西南', '册亨');
INSERT INTO `city_info` VALUES ('101260909', '贵州', '黔西南', '普安');
INSERT INTO `city_info` VALUES ('101270101', '四川', '成都', '成都');
INSERT INTO `city_info` VALUES ('101270102', '四川', '成都', '龙泉驿');
INSERT INTO `city_info` VALUES ('101270103', '四川', '成都', '新都');
INSERT INTO `city_info` VALUES ('101270104', '四川', '成都', '温江');
INSERT INTO `city_info` VALUES ('101270105', '四川', '成都', '金堂');
INSERT INTO `city_info` VALUES ('101270106', '四川', '成都', '双流');
INSERT INTO `city_info` VALUES ('101270107', '四川', '成都', '郫县');
INSERT INTO `city_info` VALUES ('101270108', '四川', '成都', '大邑');
INSERT INTO `city_info` VALUES ('101270109', '四川', '成都', '蒲江');
INSERT INTO `city_info` VALUES ('101270110', '四川', '成都', '新津');
INSERT INTO `city_info` VALUES ('101270111', '四川', '成都', '都江堰');
INSERT INTO `city_info` VALUES ('101270112', '四川', '成都', '彭州');
INSERT INTO `city_info` VALUES ('101270113', '四川', '成都', '邛崃');
INSERT INTO `city_info` VALUES ('101270114', '四川', '成都', '崇州');
INSERT INTO `city_info` VALUES ('101270201', '四川', '攀枝花', '攀枝花');
INSERT INTO `city_info` VALUES ('101270202', '四川', '攀枝花', '仁和');
INSERT INTO `city_info` VALUES ('101270203', '四川', '攀枝花', '米易');
INSERT INTO `city_info` VALUES ('101270204', '四川', '攀枝花', '盐边');
INSERT INTO `city_info` VALUES ('101270301', '四川', '自贡', '自贡');
INSERT INTO `city_info` VALUES ('101270302', '四川', '自贡', '富顺');
INSERT INTO `city_info` VALUES ('101270303', '四川', '自贡', '荣县');
INSERT INTO `city_info` VALUES ('101270401', '四川', '绵阳', '绵阳');
INSERT INTO `city_info` VALUES ('101270402', '四川', '绵阳', '三台');
INSERT INTO `city_info` VALUES ('101270403', '四川', '绵阳', '盐亭');
INSERT INTO `city_info` VALUES ('101270404', '四川', '绵阳', '安县');
INSERT INTO `city_info` VALUES ('101270405', '四川', '绵阳', '梓潼');
INSERT INTO `city_info` VALUES ('101270406', '四川', '绵阳', '北川');
INSERT INTO `city_info` VALUES ('101270407', '四川', '绵阳', '平武');
INSERT INTO `city_info` VALUES ('101270408', '四川', '绵阳', '江油');
INSERT INTO `city_info` VALUES ('101270501', '四川', '南充', '南充');
INSERT INTO `city_info` VALUES ('101270502', '四川', '南充', '南部');
INSERT INTO `city_info` VALUES ('101270503', '四川', '南充', '营山');
INSERT INTO `city_info` VALUES ('101270504', '四川', '南充', '蓬安');
INSERT INTO `city_info` VALUES ('101270505', '四川', '南充', '仪陇');
INSERT INTO `city_info` VALUES ('101270506', '四川', '南充', '西充');
INSERT INTO `city_info` VALUES ('101270507', '四川', '南充', '阆中');
INSERT INTO `city_info` VALUES ('101270601', '四川', '达州', '达州');
INSERT INTO `city_info` VALUES ('101270602', '四川', '达州', '宣汉');
INSERT INTO `city_info` VALUES ('101270603', '四川', '达州', '开江');
INSERT INTO `city_info` VALUES ('101270604', '四川', '达州', '大竹');
INSERT INTO `city_info` VALUES ('101270605', '四川', '达州', '渠县');
INSERT INTO `city_info` VALUES ('101270606', '四川', '达州', '万源');
INSERT INTO `city_info` VALUES ('101270607', '四川', '达州', '通川');
INSERT INTO `city_info` VALUES ('101270608', '四川', '达州', '达县');
INSERT INTO `city_info` VALUES ('101270701', '四川', '遂宁', '遂宁');
INSERT INTO `city_info` VALUES ('101270702', '四川', '遂宁', '蓬溪');
INSERT INTO `city_info` VALUES ('101270703', '四川', '遂宁', '射洪');
INSERT INTO `city_info` VALUES ('101270801', '四川', '广安', '广安');
INSERT INTO `city_info` VALUES ('101270802', '四川', '广安', '岳池');
INSERT INTO `city_info` VALUES ('101270803', '四川', '广安', '武胜');
INSERT INTO `city_info` VALUES ('101270804', '四川', '广安', '邻水');
INSERT INTO `city_info` VALUES ('101270805', '四川', '广安', '华蓥');
INSERT INTO `city_info` VALUES ('101270901', '四川', '巴中', '巴中');
INSERT INTO `city_info` VALUES ('101270902', '四川', '巴中', '通江');
INSERT INTO `city_info` VALUES ('101270903', '四川', '巴中', '南江');
INSERT INTO `city_info` VALUES ('101270904', '四川', '巴中', '平昌');
INSERT INTO `city_info` VALUES ('101271001', '四川', '泸州', '泸州');
INSERT INTO `city_info` VALUES ('101271003', '四川', '泸州', '泸县');
INSERT INTO `city_info` VALUES ('101271004', '四川', '泸州', '合江');
INSERT INTO `city_info` VALUES ('101271005', '四川', '泸州', '叙永');
INSERT INTO `city_info` VALUES ('101271006', '四川', '泸州', '古蔺');
INSERT INTO `city_info` VALUES ('101271007', '四川', '泸州', '纳溪');
INSERT INTO `city_info` VALUES ('101271101', '四川', '宜宾', '宜宾');
INSERT INTO `city_info` VALUES ('101271103', '四川', '宜宾', '宜宾县');
INSERT INTO `city_info` VALUES ('101271104', '四川', '宜宾', '南溪');
INSERT INTO `city_info` VALUES ('101271105', '四川', '宜宾', '江安');
INSERT INTO `city_info` VALUES ('101271106', '四川', '宜宾', '长宁');
INSERT INTO `city_info` VALUES ('101271107', '四川', '宜宾', '高县');
INSERT INTO `city_info` VALUES ('101271108', '四川', '宜宾', '珙县');
INSERT INTO `city_info` VALUES ('101271109', '四川', '宜宾', '筠连');
INSERT INTO `city_info` VALUES ('101271110', '四川', '宜宾', '兴文');
INSERT INTO `city_info` VALUES ('101271111', '四川', '宜宾', '屏山');
INSERT INTO `city_info` VALUES ('101271201', '四川', '内江', '内江');
INSERT INTO `city_info` VALUES ('101271202', '四川', '内江', '东兴');
INSERT INTO `city_info` VALUES ('101271203', '四川', '内江', '威远');
INSERT INTO `city_info` VALUES ('101271204', '四川', '内江', '资中');
INSERT INTO `city_info` VALUES ('101271205', '四川', '内江', '隆昌');
INSERT INTO `city_info` VALUES ('101271301', '四川', '资阳', '资阳');
INSERT INTO `city_info` VALUES ('101271302', '四川', '资阳', '安岳');
INSERT INTO `city_info` VALUES ('101271303', '四川', '资阳', '乐至');
INSERT INTO `city_info` VALUES ('101271304', '四川', '资阳', '简阳');
INSERT INTO `city_info` VALUES ('101271401', '四川', '乐山', '乐山');
INSERT INTO `city_info` VALUES ('101271402', '四川', '乐山', '犍为');
INSERT INTO `city_info` VALUES ('101271403', '四川', '乐山', '井研');
INSERT INTO `city_info` VALUES ('101271404', '四川', '乐山', '夹江');
INSERT INTO `city_info` VALUES ('101271405', '四川', '乐山', '沐川');
INSERT INTO `city_info` VALUES ('101271406', '四川', '乐山', '峨边');
INSERT INTO `city_info` VALUES ('101271407', '四川', '乐山', '马边');
INSERT INTO `city_info` VALUES ('101271408', '四川', '乐山', '峨眉');
INSERT INTO `city_info` VALUES ('101271409', '四川', '乐山', '峨眉山');
INSERT INTO `city_info` VALUES ('101271501', '四川', '眉山', '眉山');
INSERT INTO `city_info` VALUES ('101271502', '四川', '眉山', '仁寿');
INSERT INTO `city_info` VALUES ('101271503', '四川', '眉山', '彭山');
INSERT INTO `city_info` VALUES ('101271504', '四川', '眉山', '洪雅');
INSERT INTO `city_info` VALUES ('101271505', '四川', '眉山', '丹棱');
INSERT INTO `city_info` VALUES ('101271506', '四川', '眉山', '青神');
INSERT INTO `city_info` VALUES ('101271601', '四川', '凉山', '凉山');
INSERT INTO `city_info` VALUES ('101271603', '四川', '凉山', '木里');
INSERT INTO `city_info` VALUES ('101271604', '四川', '凉山', '盐源');
INSERT INTO `city_info` VALUES ('101271605', '四川', '凉山', '德昌');
INSERT INTO `city_info` VALUES ('101271606', '四川', '凉山', '会理');
INSERT INTO `city_info` VALUES ('101271607', '四川', '凉山', '会东');
INSERT INTO `city_info` VALUES ('101271608', '四川', '凉山', '宁南');
INSERT INTO `city_info` VALUES ('101271609', '四川', '凉山', '普格');
INSERT INTO `city_info` VALUES ('101271610', '四川', '凉山', '西昌');
INSERT INTO `city_info` VALUES ('101271611', '四川', '凉山', '金阳');
INSERT INTO `city_info` VALUES ('101271612', '四川', '凉山', '昭觉');
INSERT INTO `city_info` VALUES ('101271613', '四川', '凉山', '喜德');
INSERT INTO `city_info` VALUES ('101271614', '四川', '凉山', '冕宁');
INSERT INTO `city_info` VALUES ('101271615', '四川', '凉山', '越西');
INSERT INTO `city_info` VALUES ('101271616', '四川', '凉山', '甘洛');
INSERT INTO `city_info` VALUES ('101271617', '四川', '凉山', '雷波');
INSERT INTO `city_info` VALUES ('101271618', '四川', '凉山', '美姑');
INSERT INTO `city_info` VALUES ('101271619', '四川', '凉山', '布拖');
INSERT INTO `city_info` VALUES ('101271701', '四川', '雅安', '雅安');
INSERT INTO `city_info` VALUES ('101271702', '四川', '雅安', '名山');
INSERT INTO `city_info` VALUES ('101271703', '四川', '雅安', '荥经');
INSERT INTO `city_info` VALUES ('101271704', '四川', '雅安', '汉源');
INSERT INTO `city_info` VALUES ('101271705', '四川', '雅安', '石棉');
INSERT INTO `city_info` VALUES ('101271706', '四川', '雅安', '天全');
INSERT INTO `city_info` VALUES ('101271707', '四川', '雅安', '芦山');
INSERT INTO `city_info` VALUES ('101271708', '四川', '雅安', '宝兴');
INSERT INTO `city_info` VALUES ('101271801', '四川', '甘孜', '甘孜');
INSERT INTO `city_info` VALUES ('101271802', '四川', '甘孜', '康定');
INSERT INTO `city_info` VALUES ('101271803', '四川', '甘孜', '泸定');
INSERT INTO `city_info` VALUES ('101271804', '四川', '甘孜', '丹巴');
INSERT INTO `city_info` VALUES ('101271805', '四川', '甘孜', '九龙');
INSERT INTO `city_info` VALUES ('101271806', '四川', '甘孜', '雅江');
INSERT INTO `city_info` VALUES ('101271807', '四川', '甘孜', '道孚');
INSERT INTO `city_info` VALUES ('101271808', '四川', '甘孜', '炉霍');
INSERT INTO `city_info` VALUES ('101271809', '四川', '甘孜', '新龙');
INSERT INTO `city_info` VALUES ('101271810', '四川', '甘孜', '德格');
INSERT INTO `city_info` VALUES ('101271811', '四川', '甘孜', '白玉');
INSERT INTO `city_info` VALUES ('101271812', '四川', '甘孜', '石渠');
INSERT INTO `city_info` VALUES ('101271813', '四川', '甘孜', '色达');
INSERT INTO `city_info` VALUES ('101271814', '四川', '甘孜', '理塘');
INSERT INTO `city_info` VALUES ('101271815', '四川', '甘孜', '巴塘');
INSERT INTO `city_info` VALUES ('101271816', '四川', '甘孜', '乡城');
INSERT INTO `city_info` VALUES ('101271817', '四川', '甘孜', '稻城');
INSERT INTO `city_info` VALUES ('101271818', '四川', '甘孜', '得荣');
INSERT INTO `city_info` VALUES ('101271901', '四川', '阿坝', '阿坝');
INSERT INTO `city_info` VALUES ('101271902', '四川', '阿坝', '汶川');
INSERT INTO `city_info` VALUES ('101271903', '四川', '阿坝', '理县');
INSERT INTO `city_info` VALUES ('101271904', '四川', '阿坝', '茂县');
INSERT INTO `city_info` VALUES ('101271905', '四川', '阿坝', '松潘');
INSERT INTO `city_info` VALUES ('101271906', '四川', '阿坝', '九寨沟');
INSERT INTO `city_info` VALUES ('101271907', '四川', '阿坝', '金川');
INSERT INTO `city_info` VALUES ('101271908', '四川', '阿坝', '小金');
INSERT INTO `city_info` VALUES ('101271909', '四川', '阿坝', '黑水');
INSERT INTO `city_info` VALUES ('101271910', '四川', '阿坝', '马尔康');
INSERT INTO `city_info` VALUES ('101271911', '四川', '阿坝', '壤塘');
INSERT INTO `city_info` VALUES ('101271912', '四川', '阿坝', '若尔盖');
INSERT INTO `city_info` VALUES ('101271913', '四川', '阿坝', '红原');
INSERT INTO `city_info` VALUES ('101272001', '四川', '德阳', '德阳');
INSERT INTO `city_info` VALUES ('101272002', '四川', '德阳', '中江');
INSERT INTO `city_info` VALUES ('101272003', '四川', '德阳', '广汉');
INSERT INTO `city_info` VALUES ('101272004', '四川', '德阳', '什邡');
INSERT INTO `city_info` VALUES ('101272005', '四川', '德阳', '绵竹');
INSERT INTO `city_info` VALUES ('101272006', '四川', '德阳', '罗江');
INSERT INTO `city_info` VALUES ('101272101', '四川', '广元', '广元');
INSERT INTO `city_info` VALUES ('101272102', '四川', '广元', '旺苍');
INSERT INTO `city_info` VALUES ('101272103', '四川', '广元', '青川');
INSERT INTO `city_info` VALUES ('101272104', '四川', '广元', '剑阁');
INSERT INTO `city_info` VALUES ('101272105', '四川', '广元', '苍溪');
INSERT INTO `city_info` VALUES ('101280101', '广东', '广州', '广州');
INSERT INTO `city_info` VALUES ('101280102', '广东', '广州', '番禺');
INSERT INTO `city_info` VALUES ('101280103', '广东', '广州', '从化');
INSERT INTO `city_info` VALUES ('101280104', '广东', '广州', '增城');
INSERT INTO `city_info` VALUES ('101280105', '广东', '广州', '花都');
INSERT INTO `city_info` VALUES ('101280201', '广东', '韶关', '韶关');
INSERT INTO `city_info` VALUES ('101280202', '广东', '韶关', '乳源');
INSERT INTO `city_info` VALUES ('101280203', '广东', '韶关', '始兴');
INSERT INTO `city_info` VALUES ('101280204', '广东', '韶关', '翁源');
INSERT INTO `city_info` VALUES ('101280205', '广东', '韶关', '乐昌');
INSERT INTO `city_info` VALUES ('101280206', '广东', '韶关', '仁化');
INSERT INTO `city_info` VALUES ('101280207', '广东', '韶关', '南雄');
INSERT INTO `city_info` VALUES ('101280208', '广东', '韶关', '新丰');
INSERT INTO `city_info` VALUES ('101280209', '广东', '韶关', '曲江');
INSERT INTO `city_info` VALUES ('101280210', '广东', '韶关', '浈江');
INSERT INTO `city_info` VALUES ('101280211', '广东', '韶关', '武江');
INSERT INTO `city_info` VALUES ('101280301', '广东', '惠州', '惠州');
INSERT INTO `city_info` VALUES ('101280302', '广东', '惠州', '博罗');
INSERT INTO `city_info` VALUES ('101280303', '广东', '惠州', '惠阳');
INSERT INTO `city_info` VALUES ('101280304', '广东', '惠州', '惠东');
INSERT INTO `city_info` VALUES ('101280305', '广东', '惠州', '龙门');
INSERT INTO `city_info` VALUES ('101280401', '广东', '梅州', '梅州');
INSERT INTO `city_info` VALUES ('101280402', '广东', '梅州', '兴宁');
INSERT INTO `city_info` VALUES ('101280403', '广东', '梅州', '蕉岭');
INSERT INTO `city_info` VALUES ('101280404', '广东', '梅州', '大埔');
INSERT INTO `city_info` VALUES ('101280406', '广东', '梅州', '丰顺');
INSERT INTO `city_info` VALUES ('101280407', '广东', '梅州', '平远');
INSERT INTO `city_info` VALUES ('101280408', '广东', '梅州', '五华');
INSERT INTO `city_info` VALUES ('101280409', '广东', '梅州', '梅县');
INSERT INTO `city_info` VALUES ('101280501', '广东', '汕头', '汕头');
INSERT INTO `city_info` VALUES ('101280502', '广东', '汕头', '潮阳');
INSERT INTO `city_info` VALUES ('101280503', '广东', '汕头', '澄海');
INSERT INTO `city_info` VALUES ('101280504', '广东', '汕头', '南澳');
INSERT INTO `city_info` VALUES ('101280601', '广东', '深圳', '深圳');
INSERT INTO `city_info` VALUES ('101280701', '广东', '珠海', '珠海');
INSERT INTO `city_info` VALUES ('101280702', '广东', '珠海', '斗门');
INSERT INTO `city_info` VALUES ('101280703', '广东', '珠海', '金湾');
INSERT INTO `city_info` VALUES ('101280800', '广东', '佛山', '佛山');
INSERT INTO `city_info` VALUES ('101280801', '广东', '佛山', '顺德');
INSERT INTO `city_info` VALUES ('101280802', '广东', '佛山', '三水');
INSERT INTO `city_info` VALUES ('101280803', '广东', '佛山', '南海');
INSERT INTO `city_info` VALUES ('101280804', '广东', '佛山', '高明');
INSERT INTO `city_info` VALUES ('101280901', '广东', '肇庆', '肇庆');
INSERT INTO `city_info` VALUES ('101280902', '广东', '肇庆', '广宁');
INSERT INTO `city_info` VALUES ('101280903', '广东', '肇庆', '四会');
INSERT INTO `city_info` VALUES ('101280905', '广东', '肇庆', '德庆');
INSERT INTO `city_info` VALUES ('101280906', '广东', '肇庆', '怀集');
INSERT INTO `city_info` VALUES ('101280907', '广东', '肇庆', '封开');
INSERT INTO `city_info` VALUES ('101280908', '广东', '肇庆', '高要');
INSERT INTO `city_info` VALUES ('101281001', '广东', '湛江', '湛江');
INSERT INTO `city_info` VALUES ('101281002', '广东', '湛江', '吴川');
INSERT INTO `city_info` VALUES ('101281003', '广东', '湛江', '雷州');
INSERT INTO `city_info` VALUES ('101281004', '广东', '湛江', '徐闻');
INSERT INTO `city_info` VALUES ('101281005', '广东', '湛江', '廉江');
INSERT INTO `city_info` VALUES ('101281006', '广东', '湛江', '赤坎');
INSERT INTO `city_info` VALUES ('101281007', '广东', '湛江', '遂溪');
INSERT INTO `city_info` VALUES ('101281008', '广东', '湛江', '坡头');
INSERT INTO `city_info` VALUES ('101281009', '广东', '湛江', '霞山');
INSERT INTO `city_info` VALUES ('101281010', '广东', '湛江', '麻章');
INSERT INTO `city_info` VALUES ('101281101', '广东', '江门', '江门');
INSERT INTO `city_info` VALUES ('101281103', '广东', '江门', '开平');
INSERT INTO `city_info` VALUES ('101281104', '广东', '江门', '新会');
INSERT INTO `city_info` VALUES ('101281105', '广东', '江门', '恩平');
INSERT INTO `city_info` VALUES ('101281106', '广东', '江门', '台山');
INSERT INTO `city_info` VALUES ('101281107', '广东', '江门', '蓬江');
INSERT INTO `city_info` VALUES ('101281108', '广东', '江门', '鹤山');
INSERT INTO `city_info` VALUES ('101281109', '广东', '江门', '江海');
INSERT INTO `city_info` VALUES ('101281201', '广东', '河源', '河源');
INSERT INTO `city_info` VALUES ('101281202', '广东', '河源', '紫金');
INSERT INTO `city_info` VALUES ('101281203', '广东', '河源', '连平');
INSERT INTO `city_info` VALUES ('101281204', '广东', '河源', '和平');
INSERT INTO `city_info` VALUES ('101281205', '广东', '河源', '龙川');
INSERT INTO `city_info` VALUES ('101281206', '广东', '河源', '东源');
INSERT INTO `city_info` VALUES ('101281301', '广东', '清远', '清远');
INSERT INTO `city_info` VALUES ('101281302', '广东', '清远', '连南');
INSERT INTO `city_info` VALUES ('101281303', '广东', '清远', '连州');
INSERT INTO `city_info` VALUES ('101281304', '广东', '清远', '连山');
INSERT INTO `city_info` VALUES ('101281305', '广东', '清远', '阳山');
INSERT INTO `city_info` VALUES ('101281306', '广东', '清远', '佛冈');
INSERT INTO `city_info` VALUES ('101281307', '广东', '清远', '英德');
INSERT INTO `city_info` VALUES ('101281308', '广东', '清远', '清新');
INSERT INTO `city_info` VALUES ('101281401', '广东', '云浮', '云浮');
INSERT INTO `city_info` VALUES ('101281402', '广东', '云浮', '罗定');
INSERT INTO `city_info` VALUES ('101281403', '广东', '云浮', '新兴');
INSERT INTO `city_info` VALUES ('101281404', '广东', '云浮', '郁南');
INSERT INTO `city_info` VALUES ('101281406', '广东', '云浮', '云安');
INSERT INTO `city_info` VALUES ('101281501', '广东', '潮州', '潮州');
INSERT INTO `city_info` VALUES ('101281502', '广东', '潮州', '饶平');
INSERT INTO `city_info` VALUES ('101281503', '广东', '潮州', '潮安');
INSERT INTO `city_info` VALUES ('101281601', '广东', '东莞', '东莞');
INSERT INTO `city_info` VALUES ('101281701', '广东', '中山', '中山');
INSERT INTO `city_info` VALUES ('101281801', '广东', '阳江', '阳江');
INSERT INTO `city_info` VALUES ('101281802', '广东', '阳江', '阳春');
INSERT INTO `city_info` VALUES ('101281803', '广东', '阳江', '阳东');
INSERT INTO `city_info` VALUES ('101281804', '广东', '阳江', '阳西');
INSERT INTO `city_info` VALUES ('101281901', '广东', '揭阳', '揭阳');
INSERT INTO `city_info` VALUES ('101281902', '广东', '揭阳', '揭西');
INSERT INTO `city_info` VALUES ('101281903', '广东', '揭阳', '普宁');
INSERT INTO `city_info` VALUES ('101281904', '广东', '揭阳', '惠来');
INSERT INTO `city_info` VALUES ('101281905', '广东', '揭阳', '揭东');
INSERT INTO `city_info` VALUES ('101282001', '广东', '茂名', '茂名');
INSERT INTO `city_info` VALUES ('101282002', '广东', '茂名', '高州');
INSERT INTO `city_info` VALUES ('101282003', '广东', '茂名', '化州');
INSERT INTO `city_info` VALUES ('101282004', '广东', '茂名', '电白');
INSERT INTO `city_info` VALUES ('101282005', '广东', '茂名', '信宜');
INSERT INTO `city_info` VALUES ('101282006', '广东', '茂名', '茂港');
INSERT INTO `city_info` VALUES ('101282101', '广东', '汕尾', '汕尾');
INSERT INTO `city_info` VALUES ('101282102', '广东', '汕尾', '海丰');
INSERT INTO `city_info` VALUES ('101282103', '广东', '汕尾', '陆丰');
INSERT INTO `city_info` VALUES ('101282104', '广东', '汕尾', '陆河');
INSERT INTO `city_info` VALUES ('101290101', '云南', '昆明', '昆明');
INSERT INTO `city_info` VALUES ('101290103', '云南', '昆明', '东川');
INSERT INTO `city_info` VALUES ('101290104', '云南', '昆明', '寻甸');
INSERT INTO `city_info` VALUES ('101290105', '云南', '昆明', '晋宁');
INSERT INTO `city_info` VALUES ('101290106', '云南', '昆明', '宜良');
INSERT INTO `city_info` VALUES ('101290107', '云南', '昆明', '石林');
INSERT INTO `city_info` VALUES ('101290108', '云南', '昆明', '呈贡');
INSERT INTO `city_info` VALUES ('101290109', '云南', '昆明', '富民');
INSERT INTO `city_info` VALUES ('101290110', '云南', '昆明', '嵩明');
INSERT INTO `city_info` VALUES ('101290111', '云南', '昆明', '禄劝');
INSERT INTO `city_info` VALUES ('101290112', '云南', '昆明', '安宁');
INSERT INTO `city_info` VALUES ('101290113', '云南', '昆明', '太华山');
INSERT INTO `city_info` VALUES ('101290201', '云南', '大理', '大理');
INSERT INTO `city_info` VALUES ('101290202', '云南', '大理', '云龙');
INSERT INTO `city_info` VALUES ('101290203', '云南', '大理', '漾濞');
INSERT INTO `city_info` VALUES ('101290204', '云南', '大理', '永平');
INSERT INTO `city_info` VALUES ('101290205', '云南', '大理', '宾川');
INSERT INTO `city_info` VALUES ('101290206', '云南', '大理', '弥渡');
INSERT INTO `city_info` VALUES ('101290207', '云南', '大理', '祥云');
INSERT INTO `city_info` VALUES ('101290208', '云南', '大理', '巍山');
INSERT INTO `city_info` VALUES ('101290209', '云南', '大理', '剑川');
INSERT INTO `city_info` VALUES ('101290210', '云南', '大理', '洱源');
INSERT INTO `city_info` VALUES ('101290211', '云南', '大理', '鹤庆');
INSERT INTO `city_info` VALUES ('101290212', '云南', '大理', '南涧');
INSERT INTO `city_info` VALUES ('101290301', '云南', '红河', '红河');
INSERT INTO `city_info` VALUES ('101290302', '云南', '红河', '石屏');
INSERT INTO `city_info` VALUES ('101290303', '云南', '红河', '建水');
INSERT INTO `city_info` VALUES ('101290304', '云南', '红河', '弥勒');
INSERT INTO `city_info` VALUES ('101290305', '云南', '红河', '元阳');
INSERT INTO `city_info` VALUES ('101290306', '云南', '红河', '绿春');
INSERT INTO `city_info` VALUES ('101290307', '云南', '红河', '开远');
INSERT INTO `city_info` VALUES ('101290308', '云南', '红河', '个旧');
INSERT INTO `city_info` VALUES ('101290309', '云南', '红河', '蒙自');
INSERT INTO `city_info` VALUES ('101290310', '云南', '红河', '屏边');
INSERT INTO `city_info` VALUES ('101290311', '云南', '红河', '泸西');
INSERT INTO `city_info` VALUES ('101290312', '云南', '红河', '金平');
INSERT INTO `city_info` VALUES ('101290313', '云南', '红河', '河口');
INSERT INTO `city_info` VALUES ('101290401', '云南', '曲靖', '曲靖');
INSERT INTO `city_info` VALUES ('101290402', '云南', '曲靖', '沾益');
INSERT INTO `city_info` VALUES ('101290403', '云南', '曲靖', '陆良');
INSERT INTO `city_info` VALUES ('101290404', '云南', '曲靖', '富源');
INSERT INTO `city_info` VALUES ('101290405', '云南', '曲靖', '马龙');
INSERT INTO `city_info` VALUES ('101290406', '云南', '曲靖', '师宗');
INSERT INTO `city_info` VALUES ('101290407', '云南', '曲靖', '罗平');
INSERT INTO `city_info` VALUES ('101290408', '云南', '曲靖', '会泽');
INSERT INTO `city_info` VALUES ('101290409', '云南', '曲靖', '宣威');
INSERT INTO `city_info` VALUES ('101290501', '云南', '保山', '保山');
INSERT INTO `city_info` VALUES ('101290503', '云南', '保山', '龙陵');
INSERT INTO `city_info` VALUES ('101290504', '云南', '保山', '施甸');
INSERT INTO `city_info` VALUES ('101290505', '云南', '保山', '昌宁');
INSERT INTO `city_info` VALUES ('101290506', '云南', '保山', '腾冲');
INSERT INTO `city_info` VALUES ('101290601', '云南', '文山', '文山');
INSERT INTO `city_info` VALUES ('101290602', '云南', '文山', '西畴');
INSERT INTO `city_info` VALUES ('101290603', '云南', '文山', '马关');
INSERT INTO `city_info` VALUES ('101290604', '云南', '文山', '麻栗坡');
INSERT INTO `city_info` VALUES ('101290605', '云南', '文山', '砚山');
INSERT INTO `city_info` VALUES ('101290606', '云南', '文山', '丘北');
INSERT INTO `city_info` VALUES ('101290607', '云南', '文山', '广南');
INSERT INTO `city_info` VALUES ('101290608', '云南', '文山', '富宁');
INSERT INTO `city_info` VALUES ('101290701', '云南', '玉溪', '玉溪');
INSERT INTO `city_info` VALUES ('101290702', '云南', '玉溪', '澄江');
INSERT INTO `city_info` VALUES ('101290703', '云南', '玉溪', '江川');
INSERT INTO `city_info` VALUES ('101290704', '云南', '玉溪', '通海');
INSERT INTO `city_info` VALUES ('101290705', '云南', '玉溪', '华宁');
INSERT INTO `city_info` VALUES ('101290706', '云南', '玉溪', '新平');
INSERT INTO `city_info` VALUES ('101290707', '云南', '玉溪', '易门');
INSERT INTO `city_info` VALUES ('101290708', '云南', '玉溪', '峨山');
INSERT INTO `city_info` VALUES ('101290709', '云南', '玉溪', '元江');
INSERT INTO `city_info` VALUES ('101290801', '云南', '楚雄', '楚雄');
INSERT INTO `city_info` VALUES ('101290802', '云南', '楚雄', '大姚');
INSERT INTO `city_info` VALUES ('101290803', '云南', '楚雄', '元谋');
INSERT INTO `city_info` VALUES ('101290804', '云南', '楚雄', '姚安');
INSERT INTO `city_info` VALUES ('101290805', '云南', '楚雄', '牟定');
INSERT INTO `city_info` VALUES ('101290806', '云南', '楚雄', '南华');
INSERT INTO `city_info` VALUES ('101290807', '云南', '楚雄', '武定');
INSERT INTO `city_info` VALUES ('101290808', '云南', '楚雄', '禄丰');
INSERT INTO `city_info` VALUES ('101290809', '云南', '楚雄', '双柏');
INSERT INTO `city_info` VALUES ('101290810', '云南', '楚雄', '永仁');
INSERT INTO `city_info` VALUES ('101290901', '云南', '普洱', '普洱');
INSERT INTO `city_info` VALUES ('101290902', '云南', '普洱', '景谷');
INSERT INTO `city_info` VALUES ('101290903', '云南', '普洱', '景东');
INSERT INTO `city_info` VALUES ('101290904', '云南', '普洱', '澜沧');
INSERT INTO `city_info` VALUES ('101290906', '云南', '普洱', '墨江');
INSERT INTO `city_info` VALUES ('101290907', '云南', '普洱', '江城');
INSERT INTO `city_info` VALUES ('101290908', '云南', '普洱', '孟连');
INSERT INTO `city_info` VALUES ('101290909', '云南', '普洱', '西盟');
INSERT INTO `city_info` VALUES ('101290911', '云南', '普洱', '镇沅');
INSERT INTO `city_info` VALUES ('101290912', '云南', '普洱', '宁洱');
INSERT INTO `city_info` VALUES ('101291001', '云南', '昭通', '昭通');
INSERT INTO `city_info` VALUES ('101291002', '云南', '昭通', '鲁甸');
INSERT INTO `city_info` VALUES ('101291003', '云南', '昭通', '彝良');
INSERT INTO `city_info` VALUES ('101291004', '云南', '昭通', '镇雄');
INSERT INTO `city_info` VALUES ('101291005', '云南', '昭通', '威信');
INSERT INTO `city_info` VALUES ('101291006', '云南', '昭通', '巧家');
INSERT INTO `city_info` VALUES ('101291007', '云南', '昭通', '绥江');
INSERT INTO `city_info` VALUES ('101291008', '云南', '昭通', '永善');
INSERT INTO `city_info` VALUES ('101291009', '云南', '昭通', '盐津');
INSERT INTO `city_info` VALUES ('101291010', '云南', '昭通', '大关');
INSERT INTO `city_info` VALUES ('101291011', '云南', '昭通', '水富');
INSERT INTO `city_info` VALUES ('101291101', '云南', '临沧', '临沧');
INSERT INTO `city_info` VALUES ('101291102', '云南', '临沧', '沧源');
INSERT INTO `city_info` VALUES ('101291103', '云南', '临沧', '耿马');
INSERT INTO `city_info` VALUES ('101291104', '云南', '临沧', '双江');
INSERT INTO `city_info` VALUES ('101291105', '云南', '临沧', '凤庆');
INSERT INTO `city_info` VALUES ('101291106', '云南', '临沧', '永德');
INSERT INTO `city_info` VALUES ('101291107', '云南', '临沧', '云县');
INSERT INTO `city_info` VALUES ('101291108', '云南', '临沧', '镇康');
INSERT INTO `city_info` VALUES ('101291201', '云南', '怒江', '怒江');
INSERT INTO `city_info` VALUES ('101291203', '云南', '怒江', '福贡');
INSERT INTO `city_info` VALUES ('101291204', '云南', '怒江', '兰坪');
INSERT INTO `city_info` VALUES ('101291205', '云南', '怒江', '泸水');
INSERT INTO `city_info` VALUES ('101291206', '云南', '怒江', '六库');
INSERT INTO `city_info` VALUES ('101291207', '云南', '怒江', '贡山');
INSERT INTO `city_info` VALUES ('101291301', '云南', '迪庆', '香格里拉');
INSERT INTO `city_info` VALUES ('101291302', '云南', '迪庆', '德钦');
INSERT INTO `city_info` VALUES ('101291303', '云南', '迪庆', '维西');
INSERT INTO `city_info` VALUES ('101291304', '云南', '迪庆', '中甸');
INSERT INTO `city_info` VALUES ('101291401', '云南', '丽江', '丽江');
INSERT INTO `city_info` VALUES ('101291402', '云南', '丽江', '永胜');
INSERT INTO `city_info` VALUES ('101291403', '云南', '丽江', '华坪');
INSERT INTO `city_info` VALUES ('101291404', '云南', '丽江', '宁蒗');
INSERT INTO `city_info` VALUES ('101291501', '云南', '德宏', '德宏');
INSERT INTO `city_info` VALUES ('101291503', '云南', '德宏', '陇川');
INSERT INTO `city_info` VALUES ('101291504', '云南', '德宏', '盈江');
INSERT INTO `city_info` VALUES ('101291506', '云南', '德宏', '瑞丽');
INSERT INTO `city_info` VALUES ('101291507', '云南', '德宏', '梁河');
INSERT INTO `city_info` VALUES ('101291508', '云南', '德宏', '潞西');
INSERT INTO `city_info` VALUES ('101291601', '云南', '西双版纳', '景洪');
INSERT INTO `city_info` VALUES ('101291603', '云南', '西双版纳', '勐海');
INSERT INTO `city_info` VALUES ('101291605', '云南', '西双版纳', '勐腊');
INSERT INTO `city_info` VALUES ('101300101', '广西', '南宁', '南宁');
INSERT INTO `city_info` VALUES ('101300103', '广西', '南宁', '邕宁');
INSERT INTO `city_info` VALUES ('101300104', '广西', '南宁', '横县');
INSERT INTO `city_info` VALUES ('101300105', '广西', '南宁', '隆安');
INSERT INTO `city_info` VALUES ('101300106', '广西', '南宁', '马山');
INSERT INTO `city_info` VALUES ('101300107', '广西', '南宁', '上林');
INSERT INTO `city_info` VALUES ('101300108', '广西', '南宁', '武鸣');
INSERT INTO `city_info` VALUES ('101300109', '广西', '南宁', '宾阳');
INSERT INTO `city_info` VALUES ('101300201', '广西', '崇左', '崇左');
INSERT INTO `city_info` VALUES ('101300202', '广西', '崇左', '天等');
INSERT INTO `city_info` VALUES ('101300203', '广西', '崇左', '龙州');
INSERT INTO `city_info` VALUES ('101300204', '广西', '崇左', '凭祥');
INSERT INTO `city_info` VALUES ('101300205', '广西', '崇左', '大新');
INSERT INTO `city_info` VALUES ('101300206', '广西', '崇左', '扶绥');
INSERT INTO `city_info` VALUES ('101300207', '广西', '崇左', '宁明');
INSERT INTO `city_info` VALUES ('101300301', '广西', '柳州', '柳州');
INSERT INTO `city_info` VALUES ('101300302', '广西', '柳州', '柳城');
INSERT INTO `city_info` VALUES ('101300304', '广西', '柳州', '鹿寨');
INSERT INTO `city_info` VALUES ('101300305', '广西', '柳州', '柳江');
INSERT INTO `city_info` VALUES ('101300306', '广西', '柳州', '融安');
INSERT INTO `city_info` VALUES ('101300307', '广西', '柳州', '融水');
INSERT INTO `city_info` VALUES ('101300308', '广西', '柳州', '三江');
INSERT INTO `city_info` VALUES ('101300401', '广西', '来宾', '来宾');
INSERT INTO `city_info` VALUES ('101300402', '广西', '来宾', '忻城');
INSERT INTO `city_info` VALUES ('101300403', '广西', '来宾', '金秀');
INSERT INTO `city_info` VALUES ('101300404', '广西', '来宾', '象州');
INSERT INTO `city_info` VALUES ('101300405', '广西', '来宾', '武宣');
INSERT INTO `city_info` VALUES ('101300406', '广西', '来宾', '合山');
INSERT INTO `city_info` VALUES ('101300501', '广西', '桂林', '桂林');
INSERT INTO `city_info` VALUES ('101300503', '广西', '桂林', '龙胜');
INSERT INTO `city_info` VALUES ('101300504', '广西', '桂林', '永福');
INSERT INTO `city_info` VALUES ('101300505', '广西', '桂林', '临桂');
INSERT INTO `city_info` VALUES ('101300506', '广西', '桂林', '兴安');
INSERT INTO `city_info` VALUES ('101300507', '广西', '桂林', '灵川');
INSERT INTO `city_info` VALUES ('101300508', '广西', '桂林', '全州');
INSERT INTO `city_info` VALUES ('101300509', '广西', '桂林', '灌阳');
INSERT INTO `city_info` VALUES ('101300510', '广西', '桂林', '阳朔');
INSERT INTO `city_info` VALUES ('101300511', '广西', '桂林', '恭城');
INSERT INTO `city_info` VALUES ('101300512', '广西', '桂林', '平乐');
INSERT INTO `city_info` VALUES ('101300513', '广西', '桂林', '荔浦');
INSERT INTO `city_info` VALUES ('101300514', '广西', '桂林', '资源');
INSERT INTO `city_info` VALUES ('101300601', '广西', '梧州', '梧州');
INSERT INTO `city_info` VALUES ('101300602', '广西', '梧州', '藤县');
INSERT INTO `city_info` VALUES ('101300604', '广西', '梧州', '苍梧');
INSERT INTO `city_info` VALUES ('101300605', '广西', '梧州', '蒙山');
INSERT INTO `city_info` VALUES ('101300606', '广西', '梧州', '岑溪');
INSERT INTO `city_info` VALUES ('101300701', '广西', '贺州', '贺州');
INSERT INTO `city_info` VALUES ('101300702', '广西', '贺州', '昭平');
INSERT INTO `city_info` VALUES ('101300703', '广西', '贺州', '富川');
INSERT INTO `city_info` VALUES ('101300704', '广西', '贺州', '钟山');
INSERT INTO `city_info` VALUES ('101300801', '广西', '贵港', '贵港');
INSERT INTO `city_info` VALUES ('101300802', '广西', '贵港', '桂平');
INSERT INTO `city_info` VALUES ('101300803', '广西', '贵港', '平南');
INSERT INTO `city_info` VALUES ('101300901', '广西', '玉林', '玉林');
INSERT INTO `city_info` VALUES ('101300902', '广西', '玉林', '博白');
INSERT INTO `city_info` VALUES ('101300903', '广西', '玉林', '北流');
INSERT INTO `city_info` VALUES ('101300904', '广西', '玉林', '容县');
INSERT INTO `city_info` VALUES ('101300905', '广西', '玉林', '陆川');
INSERT INTO `city_info` VALUES ('101300906', '广西', '玉林', '兴业');
INSERT INTO `city_info` VALUES ('101301001', '广西', '百色', '百色');
INSERT INTO `city_info` VALUES ('101301002', '广西', '百色', '那坡');
INSERT INTO `city_info` VALUES ('101301003', '广西', '百色', '田阳');
INSERT INTO `city_info` VALUES ('101301004', '广西', '百色', '德保');
INSERT INTO `city_info` VALUES ('101301005', '广西', '百色', '靖西');
INSERT INTO `city_info` VALUES ('101301006', '广西', '百色', '田东');
INSERT INTO `city_info` VALUES ('101301007', '广西', '百色', '平果');
INSERT INTO `city_info` VALUES ('101301008', '广西', '百色', '隆林');
INSERT INTO `city_info` VALUES ('101301009', '广西', '百色', '西林');
INSERT INTO `city_info` VALUES ('101301010', '广西', '百色', '乐业');
INSERT INTO `city_info` VALUES ('101301011', '广西', '百色', '凌云');
INSERT INTO `city_info` VALUES ('101301012', '广西', '百色', '田林');
INSERT INTO `city_info` VALUES ('101301101', '广西', '钦州', '钦州');
INSERT INTO `city_info` VALUES ('101301102', '广西', '钦州', '浦北');
INSERT INTO `city_info` VALUES ('101301103', '广西', '钦州', '灵山');
INSERT INTO `city_info` VALUES ('101301201', '广西', '河池', '河池');
INSERT INTO `city_info` VALUES ('101301202', '广西', '河池', '天峨');
INSERT INTO `city_info` VALUES ('101301203', '广西', '河池', '东兰');
INSERT INTO `city_info` VALUES ('101301204', '广西', '河池', '巴马');
INSERT INTO `city_info` VALUES ('101301205', '广西', '河池', '环江');
INSERT INTO `city_info` VALUES ('101301206', '广西', '河池', '罗城');
INSERT INTO `city_info` VALUES ('101301207', '广西', '河池', '宜州');
INSERT INTO `city_info` VALUES ('101301208', '广西', '河池', '凤山');
INSERT INTO `city_info` VALUES ('101301209', '广西', '河池', '南丹');
INSERT INTO `city_info` VALUES ('101301210', '广西', '河池', '都安');
INSERT INTO `city_info` VALUES ('101301211', '广西', '河池', '大化');
INSERT INTO `city_info` VALUES ('101301301', '广西', '北海', '北海');
INSERT INTO `city_info` VALUES ('101301302', '广西', '北海', '合浦');
INSERT INTO `city_info` VALUES ('101301303', '广西', '北海', '涠洲岛');
INSERT INTO `city_info` VALUES ('101301401', '广西', '防城港', '防城港');
INSERT INTO `city_info` VALUES ('101301402', '广西', '防城港', '上思');
INSERT INTO `city_info` VALUES ('101301403', '广西', '防城港', '东兴');
INSERT INTO `city_info` VALUES ('101301405', '广西', '防城港', '防城');
INSERT INTO `city_info` VALUES ('101310101', '海南', '海口', '海口');
INSERT INTO `city_info` VALUES ('101310201', '海南', '三亚', '三亚');
INSERT INTO `city_info` VALUES ('101310202', '海南', '东方', '东方');
INSERT INTO `city_info` VALUES ('101310203', '海南', '临高', '临高');
INSERT INTO `city_info` VALUES ('101310204', '海南', '澄迈', '澄迈');
INSERT INTO `city_info` VALUES ('101310205', '海南', '儋州', '儋州');
INSERT INTO `city_info` VALUES ('101310206', '海南', '昌江', '昌江');
INSERT INTO `city_info` VALUES ('101310207', '海南', '白沙', '白沙');
INSERT INTO `city_info` VALUES ('101310208', '海南', '琼中', '琼中');
INSERT INTO `city_info` VALUES ('101310209', '海南', '定安', '定安');
INSERT INTO `city_info` VALUES ('101310210', '海南', '屯昌', '屯昌');
INSERT INTO `city_info` VALUES ('101310211', '海南', '琼海', '琼海');
INSERT INTO `city_info` VALUES ('101310212', '海南', '文昌', '文昌');
INSERT INTO `city_info` VALUES ('101310214', '海南', '保亭', '保亭');
INSERT INTO `city_info` VALUES ('101310215', '海南', '万宁', '万宁');
INSERT INTO `city_info` VALUES ('101310216', '海南', '陵水', '陵水');
INSERT INTO `city_info` VALUES ('101310217', '海南', '西沙', '西沙');
INSERT INTO `city_info` VALUES ('101310220', '海南', '南沙', '南沙');
INSERT INTO `city_info` VALUES ('101310221', '海南', '乐东', '乐东');
INSERT INTO `city_info` VALUES ('101310222', '海南', '五指山', '五指山');
INSERT INTO `city_info` VALUES ('101320101', '香港', '香港', '香港');
INSERT INTO `city_info` VALUES ('101320102', '香港', '香港', '九龙');
INSERT INTO `city_info` VALUES ('101320103', '香港', '香港', '新界');
INSERT INTO `city_info` VALUES ('101330101', '澳门', '澳门', '澳门');
INSERT INTO `city_info` VALUES ('101330102', '澳门', '澳门', '氹仔岛');
INSERT INTO `city_info` VALUES ('101330103', '澳门', '澳门', '路环岛');
INSERT INTO `city_info` VALUES ('101340101', '台湾', '台北', '台北');
INSERT INTO `city_info` VALUES ('101340102', '台湾', '台北', '桃园');
INSERT INTO `city_info` VALUES ('101340103', '台湾', '台北', '新竹');
INSERT INTO `city_info` VALUES ('101340104', '台湾', '台北', '宜兰');
INSERT INTO `city_info` VALUES ('101340201', '台湾', '高雄', '高雄');
INSERT INTO `city_info` VALUES ('101340202', '台湾', '高雄', '嘉义');
INSERT INTO `city_info` VALUES ('101340203', '台湾', '高雄', '台南');
INSERT INTO `city_info` VALUES ('101340204', '台湾', '高雄', '台东');
INSERT INTO `city_info` VALUES ('101340205', '台湾', '高雄', '屏东');
INSERT INTO `city_info` VALUES ('101340401', '台湾', '台中', '台中');
INSERT INTO `city_info` VALUES ('101340402', '台湾', '台中', '苗栗');
INSERT INTO `city_info` VALUES ('101340403', '台湾', '台中', '彰化');
INSERT INTO `city_info` VALUES ('101340404', '台湾', '台中', '南投');
INSERT INTO `city_info` VALUES ('101340405', '台湾', '台中', '花莲');
INSERT INTO `city_info` VALUES ('101340406', '台湾', '台中', '云林');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `center_id` int(10) NOT NULL DEFAULT '0' COMMENT '文化馆id',
  `course_id` int(10) NOT NULL DEFAULT '0' COMMENT '课程id',
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('1', '1', '1', '22', '1533613714');
INSERT INTO `collect` VALUES ('2', '1', '2', '40', '1533784622');
INSERT INTO `collect` VALUES ('3', '1', '5', '40', '1533785178');
INSERT INTO `collect` VALUES ('4', '1', '6', '40', '1533785203');
INSERT INTO `collect` VALUES ('5', '1', '1', '40', '40');
INSERT INTO `collect` VALUES ('6', '1', '1', '40', '40');
INSERT INTO `collect` VALUES ('7', '1', '1', '40', '40');
INSERT INTO `collect` VALUES ('8', '1', '1', '40', '40');
INSERT INTO `collect` VALUES ('9', '1', '1', '40', '40');
INSERT INTO `collect` VALUES ('10', '1', '17', '46', '1536896300');
INSERT INTO `collect` VALUES ('11', '1', '17', '47', '1537178580');
INSERT INTO `collect` VALUES ('12', '1', '1', '6', '1537250399');
INSERT INTO `collect` VALUES ('13', '1', '9', '46', '1537434455');
INSERT INTO `collect` VALUES ('14', '1', '4', '46', '1537434693');
INSERT INTO `collect` VALUES ('15', '1', '4', '49', '1537518919');
INSERT INTO `collect` VALUES ('16', '1', '6', '50', '1537839744');
INSERT INTO `collect` VALUES ('18', '1', '8', '52', '1537854331');
INSERT INTO `collect` VALUES ('23', '1', '2', '54', '1537856882');
INSERT INTO `collect` VALUES ('24', '1', '96', '60', '1538018421');
INSERT INTO `collect` VALUES ('25', '1', '2', '60', '1538018798');
INSERT INTO `collect` VALUES ('26', '14', '9', '26', '1538121756');
INSERT INTO `collect` VALUES ('28', '1', '9', '51', '1538125775');

-- ----------------------------
-- Table structure for column
-- ----------------------------
DROP TABLE IF EXISTS `column`;
CREATE TABLE `column` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '场馆ID',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '栏目标题',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '排序',
  `cover_img` varchar(255) NOT NULL DEFAULT '' COMMENT '封面图',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 0 不显示 1 显示',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COMMENT='栏目表';

-- ----------------------------
-- Records of column
-- ----------------------------
INSERT INTO `column` VALUES ('1', '1', '栏目1', '超星', '10000', '', '0', '0', '1530525304');
INSERT INTO `column` VALUES ('2', '1', '最新课程', '超星', '10000', '', '0', '1', '1530580882');
INSERT INTO `column` VALUES ('4', '14', '栏目测试', '天津', '10000', '', '1', '0', '1530606652');
INSERT INTO `column` VALUES ('5', '14', '栏目2', '天津', '10000', '', '1', '4', '1530606753');
INSERT INTO `column` VALUES ('6', '1', '经典课程', '超星', '10000', '', '1', '1', '1530606811');
INSERT INTO `column` VALUES ('8', '1', '飞洒', '川岛雄三发生vfd', '10000', '', '1', '0', '1532054521');
INSERT INTO `column` VALUES ('9', '1', '法撒旦', '发生栏目', '10000', '', '1', '1', '1532054556');
INSERT INTO `column` VALUES ('11', '1', '是否', '飞洒', '10000', '', '1', '8', '1532057080');
INSERT INTO `column` VALUES ('12', '1', '富士达', '范德萨', '10000', '', '1', '8', '1532057103');
INSERT INTO `column` VALUES ('13', '14', '飞洒', '地方', '10000', '', '1', '5', '1533536529');
INSERT INTO `column` VALUES ('14', '1', '栏目添加测试', '添加测试', '10000', '', '1', '1', '1535446376');
INSERT INTO `column` VALUES ('15', '1', '栏目添加测试', '添加测试', '10000', '', '1', '0', '1535446376');
INSERT INTO `column` VALUES ('16', '1', '美术', '中国美术', '10000', '', '1', '0', '1538015432');
INSERT INTO `column` VALUES ('17', '1', '中国美术', '中国美术', '10000', '', '1', '16', '1538015468');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `center_id` int(10) NOT NULL COMMENT '文化馆ID',
  `course_id` int(10) NOT NULL COMMENT '课时ID',
  `user_id` int(10) NOT NULL COMMENT '发送者ID',
  `content` text COMMENT '评论内容',
  `practical_score` float(2,0) NOT NULL DEFAULT '0' COMMENT '内容实用分数',
  `concise_score` float(2,0) NOT NULL DEFAULT '0' COMMENT '简洁易懂 分数',
  `clear_score` float(2,0) NOT NULL DEFAULT '0' COMMENT '逻辑清晰 分数',
  `like_num` int(10) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 0不可用 1可用',
  `create_time` int(10) NOT NULL COMMENT '发送时间',
  `delete_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='课程评论';

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '14', '9', '13', '非常好的课程，值得学习', '7', '7', '7', '0', '1', '1512010099', '0');
INSERT INTO `comment` VALUES ('2', '14', '9', '13', 'good', '0', '0', '0', '0', '1', '1512010199', '0');
INSERT INTO `comment` VALUES ('3', '14', '9', '21', '真的吗', '0', '0', '0', '0', '1', '1512010299', '0');
INSERT INTO `comment` VALUES ('4', '14', '9', '21', '真的很好耶', '0', '0', '0', '0', '1', '1512010099', '0');
INSERT INTO `comment` VALUES ('5', '14', '9', '23', '说的不错', '0', '0', '0', '0', '1', '1512012099', '0');
INSERT INTO `comment` VALUES ('6', '14', '9', '21', '1-2: 太好了', '8', '8', '8', '0', '1', '1512010299', '0');
INSERT INTO `comment` VALUES ('7', '14', '2', '23', '课程实用', '8', '8', '8', '1', '1', '1533094217', '1535005380');
INSERT INTO `comment` VALUES ('8', '1', '2', '22', '课程内容丰富', '8', '8', '8', '0', '1', '1535004806', '0');
INSERT INTO `comment` VALUES ('9', '1', '2', '22', '课程非常好', '5', '5', '5', '0', '1', '1535005209', '0');
INSERT INTO `comment` VALUES ('10', '1', '4', '6', '课程非常好是fda', '8', '8', '8', '2', '1', '1535005209', '0');
INSERT INTO `comment` VALUES ('11', '1', '9', '40', '阿斯顿萨大', '10', '10', '10', '3', '1', '1536832482', '0');
INSERT INTO `comment` VALUES ('12', '1', '9', '40', '阿斯顿萨大', '10', '10', '10', '0', '1', '1536832532', '0');
INSERT INTO `comment` VALUES ('13', '1', '9', '46', '飞洒', '10', '10', '10', '1', '1', '1536832696', '0');
INSERT INTO `comment` VALUES ('14', '1', '9', '47', '啊啊', '6', '6', '6', '0', '1', '1536904160', '0');
INSERT INTO `comment` VALUES ('15', '1', '9', '47', '特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分特别特别长的评价而且我还要给低分', '2', '2', '2', '1', '1', '1536905085', '0');
INSERT INTO `comment` VALUES ('16', '1', '9', '47', 'textareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextareatextarea', '10', '10', '10', '0', '1', '1536905554', '0');
INSERT INTO `comment` VALUES ('17', '1', '9', '47', '青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球', '10', '10', '10', '0', '1', '1536905562', '0');
INSERT INTO `comment` VALUES ('18', '1', '9', '47', '青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙打网球青蛙', '10', '10', '10', '0', '1', '1536905593', '0');
INSERT INTO `comment` VALUES ('19', '1', '69', '52', '讲得非常好', '8', '8', '8', '0', '1', '1537322671', '0');
INSERT INTO `comment` VALUES ('20', '1', '75', '53', '第我好和 i 回复 i 好i 和 i 啊 u 哈佛和 v i 皇帝和 v凇 if 和 i 是 v方式回归 vv 个VS顾 vi 中vHv哦红豆杉 vv 教科书数据存储世乒赛 v 成绩上课就迟到洪水泛滥惧怕思考和反思发送简历性别 v方式的环境粉红色的方式降低厚底疯狂的举手； 大家佛山东方惧怕视频分局今年绝代风华 v 地结合 v 收到回复 i 哦舒服；福建科学家和健身房和 i 送话费辛苦师傅', '10', '10', '10', '1', '1', '1537326271', '0');
INSERT INTO `comment` VALUES ('21', '1', '77', '47', '啊实打实', '10', '10', '10', '0', '1', '1537342986', '0');
INSERT INTO `comment` VALUES ('22', '1', '77', '47', '评价评价', '10', '10', '10', '0', '1', '1537343259', '0');
INSERT INTO `comment` VALUES ('23', '1', '77', '47', '大苏打啊是大啊是大', '10', '10', '10', '0', '1', '1537343413', '0');
INSERT INTO `comment` VALUES ('24', '1', '77', '47', '爱的微软万人前往温前', '10', '10', '10', '0', '1', '1537343477', '0');
INSERT INTO `comment` VALUES ('25', '1', '77', '47', '爱的微软万人前往温前', '10', '10', '10', '0', '1', '1537343502', '0');
INSERT INTO `comment` VALUES ('26', '1', '77', '47', '爱的微软万人前往温前', '10', '10', '10', '0', '1', '1537343555', '0');
INSERT INTO `comment` VALUES ('27', '1', '77', '47', '啊是大', '10', '10', '10', '0', '1', '1537343635', '0');
INSERT INTO `comment` VALUES ('28', '1', '77', '47', '啊是大啊是大发的', '10', '10', '10', '0', '1', '1537343651', '0');
INSERT INTO `comment` VALUES ('29', '1', '77', '47', 'asd asd', '6', '6', '6', '0', '1', '1537344005', '0');
INSERT INTO `comment` VALUES ('30', '1', '69', '50', '哈哈哈哈', '10', '10', '10', '0', '1', '1537345654', '0');
INSERT INTO `comment` VALUES ('31', '1', '69', '50', '非官方十几个卡里克攻击力宫颈癌零距离的非官方十几个卡里克攻击力宫颈癌零距离的非官方十几个卡里克攻击力宫颈癌零距离的非官方十几个卡里克攻击力宫颈癌零距离的非官方十几个卡里克攻击力宫颈癌零距离的非官方十几个卡里克攻击力宫颈癌零距离的非官方十几个卡里克攻击力宫颈癌零距离的非官方十几个卡里克攻击力宫颈癌零距离的非官方十几个卡里克攻击力宫颈癌零距离的非官方十几个卡里克攻击力宫颈癌零距离的非官方十几个卡里克攻', '2', '2', '2', '0', '1', '1537345740', '0');
INSERT INTO `comment` VALUES ('32', '1', '9', '46', '还不错', '10', '10', '10', '0', '1', '1537434076', '0');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `mooc_id` int(11) NOT NULL DEFAULT '0' COMMENT '慕课ID',
  `course_title` varchar(40) NOT NULL COMMENT '课程标题',
  `cover_img` varchar(255) NOT NULL DEFAULT '' COMMENT '封面图',
  `cover_video` varchar(255) NOT NULL DEFAULT '' COMMENT '封面视频',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型 1 后台 2 前台',
  `creator_id` int(11) NOT NULL DEFAULT '1' COMMENT '创建慕课的场馆ID',
  `open_status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '开放状态 0 不开放 1 限时开放 2 开放',
  `keyword` varchar(255) NOT NULL DEFAULT '' COMMENT '关键词',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '结束时间',
  `total_time` int(11) NOT NULL DEFAULT '0' COMMENT '总时长',
  `label` varchar(255) NOT NULL DEFAULT '' COMMENT '标签',
  `content` text COMMENT '课程介绍',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '0', '测试慕课11111', 'http://192.168.1.231:9334/5,d32ced08ba', '', '2', '13', '1', '', '1527992469', '1533262869', '7200', '', '测试慕课1测试慕课1测试慕课1测试慕课1测试慕课1测试慕课1测试慕课1', '1530584469', '0', '0');
INSERT INTO `course` VALUES ('2', '0', '测试慕课2', 'http://192.168.1.231:9334/5,d32ced08ba', '', '2', '13', '1', '', '1527992488', '1533262888', '7200', '', '测试慕课1测试慕课1测试慕课1测试慕课1测试慕课1测试慕课1测试慕课1', '1530584488', '0', '0');
INSERT INTO `course` VALUES ('3', '0', '测试慕课3-1', 'http://192.168.1.231:9334/5,d32ced08ba', '', '2', '13', '1', '', '1527995448', '1533265848', '3600', '', 'xinwen xinwenxinwenxinwen', '1530584494', '0', '0');
INSERT INTO `course` VALUES ('4', '0', '测试慕课4', 'http://192.168.1.231:9334/5,d32ced08ba', '', '2', '47', '2', '', '1527992501', '1533262901', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '1530584501', '0', '0');
INSERT INTO `course` VALUES ('5', '0', '测试慕课5', 'http://192.168.1.231:9334/5,d32ced08ba', '', '2', '13', '1', '', '1528077210', '1533347610', '7200', '', '测试慕课1测试慕课1测试慕课1测试慕课1测试慕课1测试慕课1测试慕课1', '1530669210', '0', '0');
INSERT INTO `course` VALUES ('6', '0', '测试慕课3-1', 'http://192.168.1.231:9334/5,d32ced08ba', '', '2', '13', '1', '', '1528078236', '1533348636', '3600', '', 'xinwen xinwenxinwenxinwen', '1530669217', '0', '0');
INSERT INTO `course` VALUES ('7', '0', '测试慕课5111', 'http://192.168.1.231:9334/5,d32ced08ba', '', '1', '1', '1', '', '1528077536', '1533347936', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '1530669536', '0', '0');
INSERT INTO `course` VALUES ('8', '0', '测试慕课5', 'http://192.168.1.231:9334/5,d32ced08ba', '', '1', '1', '1', '', '1528077608', '1533348008', '7200', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;123456&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', '1530669608', '1536564356', '0');
INSERT INTO `course` VALUES ('9', '0', 'goodtest', 'http://192.168.1.231:9334/5,d32ced08ba', '', '2', '47', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '1530669771', '1536634562', '0');
INSERT INTO `course` VALUES ('10', '0', '发的方式发士大夫', 'http://192.168.1.231:9334/5,d32ced08ba', '', '2', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>反对犯得上犯得上</p>\n</body>\n</html>', '1531806502', '0', '1535095640');
INSERT INTO `course` VALUES ('11', '0', '6一趟一趟医院', 'http://192.168.1.231:9334/5,d32ced08ba', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>叶天涯天涯 有说用途</p>\n</body>\n</html>', '1531811093', '0', '1537249220');
INSERT INTO `course` VALUES ('12', '0', '43424', 'http://192.168.1.231:9334/5,d32ced08ba', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>43423423432</p>\n</body>\n</html>', '1531811302', '0', '1537248604');
INSERT INTO `course` VALUES ('13', '0', '反对发射点发射点反对', 'http://192.168.1.231:9334/5,d32ced08ba', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>发士大夫说是道非是</p>\n</body>\n</html>', '1531811408', '0', '1537249213');
INSERT INTO `course` VALUES ('14', '0', '豆腐干反对的', '', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>广泛大锅饭</p>\n</body>\n</html>', '1531811621', '0', '0');
INSERT INTO `course` VALUES ('15', '0', '撒大苏打', '', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '1531812916', '0', '1535095640');
INSERT INTO `course` VALUES ('16', '0', '54', '', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '1531814669', '0', '1533547577');
INSERT INTO `course` VALUES ('17', '0', '小明', 'http://mooc.com/upload/20180724/881554b99bc0e100e58c6ebb42e38a57.png', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '1531816524', '0', '0');
INSERT INTO `course` VALUES ('19', '0', 'dsfdsfsdfsdf', 'http://192.168.1.231:9334/4,01231da606c3', '', '1', '1', '0', '', '0', '0', '7200', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;&amp;lt;!DOCTYPE html&amp;gt; &amp;lt;html&amp;gt; &amp;lt;head&amp;gt; &amp;lt;/head&amp;gt; &amp;lt;body&amp;gt; &amp;lt;p&amp;gt;&amp;amp;lt;!DOCTYPE html&amp;amp;gt; &amp;amp;lt;html&amp;amp;gt; &amp;amp;lt;head&amp;amp;gt; &amp;amp;lt;/head&amp;amp;gt; &amp;amp;lt;body&amp;amp;gt; &amp;amp;lt;p&amp;amp;gt;&amp;amp;amp;lt;!DOCTYPE html&amp;amp;amp;gt; &amp;amp;amp;lt;html&amp;amp;amp;gt; &amp;amp;amp;lt;head&amp;amp;amp;gt; &amp;amp;amp;lt;/head&amp;amp;amp;gt; &amp;amp;amp;lt;body&amp;amp;amp;gt; &amp;amp;amp;lt;/body&amp;amp;amp;gt; &amp;amp;amp;lt;/html&amp;amp;amp;gt;&amp;amp;lt;/p&amp;amp;gt; &amp;amp;lt;/body&amp;amp;gt; &amp;amp;lt;/html&amp;amp;gt;&amp;lt;/p&amp;gt; &amp;lt;/body&amp;gt; &amp;lt;/html&amp;gt;&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', '1532330963', '1536561239', '1537245967');
INSERT INTO `course` VALUES ('20', '0', '54546546546', 'http://mooc.com/upload/20180724/c8ff26c6abbba94858af2f3281b4d2d5.png', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>6565465</p>\n</body>\n</html>', '1532398830', '0', '0');
INSERT INTO `course` VALUES ('21', '0', 'klkjkljkl', '', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '1532415723', '0', '0');
INSERT INTO `course` VALUES ('22', '0', '=-=0-=0-', '', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>梵蒂冈</p>\n</body>\n</html>', '1532415802', '1535095693', '0');
INSERT INTO `course` VALUES ('23', '0', '123456', 'http://192.168.1.231:9334/5,01701f6c763e', '', '1', '1', '2', '', '0', '0', '7200', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;', '1533549872', '1537344917', '0');
INSERT INTO `course` VALUES ('24', '0', '12', '', '', '1', '1', '2', '', '0', '0', '7200', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>123</p>\n</body>\n</html>', '1533605713', '0', '0');
INSERT INTO `course` VALUES ('25', '0', '12', '', '', '1', '1', '2', '', '0', '0', '0', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '1535017384', '0', '1537242684');
INSERT INTO `course` VALUES ('26', '0', '测试慕课5', '', '', '1', '25', '1', '', '1532339700', '1537696500', '0', '', '测试慕课123测试慕课123测试慕课123测试慕课123测试慕课123测试慕课123测试慕课123', '1535018101', '0', '0');
INSERT INTO `course` VALUES ('28', '0', '测试慕课123456789', '', '', '1', '25', '1', '', '1532339963', '1537696763', '0', '', '测试慕课123测试慕课123测试慕课123测试慕课123测试慕课123测试慕课123测试慕课123', '1535018363', '0', '0');
INSERT INTO `course` VALUES ('29', '0', '测试诗文', 'http://192.168.1.231:9334/2,c53a18ce79', '', '1', '1', '2', '', '1535414400', '1535500800', '0', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '1535435941', '0', '1537242676');
INSERT INTO `course` VALUES ('30', '0', '测试测试老师 aaaaa 12', 'http://192.168.1.231:9334/6,c9a0e7c03a', '', '1', '1', '2', '', '1535328000', '1535500800', '0', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介课程简介&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', '1535439597', '1536741100', '1537248324');
INSERT INTO `course` VALUES ('31', '0', '测试测试', 'http://192.168.1.231:9334/3,0127f73aacde', '', '1', '1', '2', '', '0', '0', '0', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;', '1536894075', '1536894378', '1537247439');
INSERT INTO `course` VALUES ('32', '0', 'ttt', 'http://192.168.1.231:9334/4,012db1828191', '', '1', '1', '2', '', '0', '0', '0', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;ttt&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', '1536899652', '0', '1536899704');
INSERT INTO `course` VALUES ('33', '0', '国子监解析', 'http://192.168.1.231:9334/7,012e3fce925e', '', '1', '1', '2', '', '0', '0', '0', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;国子监解析&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', '1536902834', '0', '0');
INSERT INTO `course` VALUES ('34', '0', '这个杀手不太冷', 'http://192.168.1.231:9334/5,012f8d019c5b', '', '1', '1', '2', '', '0', '0', '0', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;这个沙洲不&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', '1536903147', '0', '1537243905');
INSERT INTO `course` VALUES ('49', '0', 'a ', 'http://192.168.1.231:9334/7,013d49cd006e', '', '1', '47', '2', '', '0', '0', '0', '', 'aa ', '1537172622', '0', '0');
INSERT INTO `course` VALUES ('50', '0', 'a ', 'http://192.168.1.231:9334/7,013d49cd006e', '', '1', '47', '2', '', '0', '0', '0', '', 'aa ', '1537172650', '0', '0');
INSERT INTO `course` VALUES ('51', '0', 'fd ', 'http://192.168.1.231:9334/7,0135cdd8951c', '', '1', '47', '2', '', '0', '0', '0', '', 'fds', '1537172686', '0', '0');
INSERT INTO `course` VALUES ('52', '0', 'fd ', 'http://192.168.1.231:9334/7,0135cdd8951c', '', '1', '47', '2', '', '0', '0', '0', '', 'fds', '1537172695', '0', '0');
INSERT INTO `course` VALUES ('53', '0', 'aa', 'http://192.168.1.231:9334/5,013e564b341c', '', '1', '47', '2', '', '0', '0', '0', '', 'aaa', '1537172759', '0', '0');
INSERT INTO `course` VALUES ('54', '0', '新课程', 'http://192.168.1.231:9334/3,0140cee39eda', '', '1', '47', '1', '', '1536595200', '1537200000', '0', '', '啊啊', '1537234242', '0', '0');
INSERT INTO `course` VALUES ('55', '0', '新课程2', 'http://192.168.1.231:9334/4,0141b26bef77', '', '1', '47', '1', '', '1536595200', '1537200000', '0', '', '阿大撒都是', '1537234474', '0', '0');
INSERT INTO `course` VALUES ('56', '0', '新建课程3', 'http://192.168.1.231:9334/2,014284f9c19f', '', '1', '47', '1', '', '1536595200', '1537200000', '0', '', '啊是大撒', '1537234511', '0', '0');
INSERT INTO `course` VALUES ('57', '0', 'gggggg', 'http://192.168.1.231:9334/4,01430d52b338', '', '1', '39', '2', '', '0', '0', '0', '', 'ffffffff', '1537234628', '0', '0');
INSERT INTO `course` VALUES ('58', '0', 'U_NET', 'http://192.168.1.231:9334/5,0144032123f5', '', '1', '48', '2', '', '0', '0', '0', '', 'u-net', '1537235396', '0', '0');
INSERT INTO `course` VALUES ('59', '0', '333', 'http://192.168.1.231:9334/7,0145d71815c7', '', '1', '48', '2', '', '0', '0', '0', '', '33', '1537235509', '0', '0');
INSERT INTO `course` VALUES ('60', '0', '鹅鹅鹅饿e', 'http://192.168.1.231:9334/7,0146b6ef10b8', '', '1', '48', '2', '', '0', '0', '0', '', '22222', '1537236780', '0', '0');
INSERT INTO `course` VALUES ('61', '0', 'のの33', 'http://192.168.1.231:9334/4,01478a8f5458', '', '1', '48', '2', '', '0', '0', '0', '', '3333', '1537236841', '0', '0');
INSERT INTO `course` VALUES ('65', '0', '222222', 'http://192.168.1.231:9334/7,014b3e8c83e7', '', '1', '48', '2', '', '0', '0', '0', '', '3456', '1537237907', '0', '1537248544');
INSERT INTO `course` VALUES ('66', '0', '阿大撒', 'http://192.168.1.231:9334/1,014c9f3d8ff9', '', '1', '47', '1', '', '1535990400', '1537286400', '0', '', '啊实打实', '1537238146', '0', '0');
INSERT INTO `course` VALUES ('67', '0', '建课123456', 'http://192.168.1.231:9334/1,014d13b6138e', '', '1', '47', '2', '', '0', '0', '0', '', '啊是大昂是的sad ', '1537238191', '1537347593', '0');
INSERT INTO `course` VALUES ('68', '0', '建课123456', 'http://192.168.1.231:9334/1,014d13b6138e', '', '1', '48', '2', '', '0', '0', '0', '', '啊是大昂是的sad ', '1537252257', '1537519934', '0');
INSERT INTO `course` VALUES ('69', '0', '5555555555555555555', 'http://192.168.1.231:9334/2,015122b21fcf', '', '1', '48', '2', '', '0', '0', '0', '', '5555555555555', '1537252475', '0', '0');
INSERT INTO `course` VALUES ('70', '0', '9999', '', '', '1', '48', '2', '', '0', '0', '0', '', '9999', '1537258173', '0', '0');
INSERT INTO `course` VALUES ('71', '0', '909', '', '', '1', '48', '2', '', '0', '0', '0', '', '9909', '1537259031', '0', '0');
INSERT INTO `course` VALUES ('73', '0', '888', 'http://192.168.1.231:9334/6,0152536399bf', '', '1', '48', '2', '', '0', '0', '0', '', '88', '1537259706', '0', '0');
INSERT INTO `course` VALUES ('74', '0', '890', 'http://192.168.1.231:9334/6,015318d4e55a', '', '1', '48', '2', '', '0', '0', '0', '', '99', '1537259790', '0', '0');
INSERT INTO `course` VALUES ('75', '0', '777', 'http://192.168.1.231:9334/6,01550700a506', '', '2', '48', '2', '', '0', '0', '0', '', '777', '1537260139', '0', '0');
INSERT INTO `course` VALUES ('76', '0', '999900000', 'http://192.168.1.231:9334/1,0156fd85670e', '', '2', '48', '2', '', '0', '0', '0', '', '0000', '1537321160', '0', '0');
INSERT INTO `course` VALUES ('77', '0', '建课123456', 'http://192.168.1.231:9334/1,014d13b6138e', '', '2', '47', '2', '', '0', '0', '0', '', '啊是大昂是的sad ', '1537321598', '1537521622', '0');
INSERT INTO `course` VALUES ('78', '0', '正式测试1', 'http://192.168.1.231:9334/1,01922d4fb15b', '', '2', '47', '1', '', '1537200000', '1538236800', '0', '', '啊是大', '1537522198', '1537522224', '0');
INSERT INTO `course` VALUES ('79', '0', '去', 'http://192.168.1.231:9334/3,0194750afe87', '', '2', '47', '2', '', '0', '0', '0', '', '去', '1537522497', '0', '0');
INSERT INTO `course` VALUES ('80', '0', '测试课程测试测试', 'http://192.168.1.231:9334/2,0198e6255b5c', '', '1', '1', '2', '', '0', '0', '0', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;发大水&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', '1537838624', '0', '0');
INSERT INTO `course` VALUES ('81', '0', '测试穆勒', 'http://192.168.1.231:9334/1,01a25495b49c', '', '1', '1', '2', '', '0', '0', '0', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>发撒就</p>\n</body>\n</html>', '1537845132', '0', '0');
INSERT INTO `course` VALUES ('82', '0', '林宥嘉', 'http://192.168.1.231:9334/6,01b11e9480ee', '', '1', '1', '2', '', '0', '0', '0', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉林宥嘉&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', '1537861546', '0', '0');
INSERT INTO `course` VALUES ('83', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866043', '0', '0');
INSERT INTO `course` VALUES ('84', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866048', '0', '0');
INSERT INTO `course` VALUES ('85', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866049', '0', '0');
INSERT INTO `course` VALUES ('86', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866049', '0', '0');
INSERT INTO `course` VALUES ('87', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866050', '0', '0');
INSERT INTO `course` VALUES ('88', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866050', '0', '0');
INSERT INTO `course` VALUES ('89', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866050', '0', '0');
INSERT INTO `course` VALUES ('90', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866050', '0', '0');
INSERT INTO `course` VALUES ('91', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866050', '0', '0');
INSERT INTO `course` VALUES ('92', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866050', '0', '0');
INSERT INTO `course` VALUES ('93', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866060', '0', '0');
INSERT INTO `course` VALUES ('94', '0', '林宥嘉', 'http://192.168.1.231:9334/2,01b6e852cdd2', '', '2', '57', '2', '', '0', '0', '0', '', '林宥嘉', '1537866072', '0', '0');
INSERT INTO `course` VALUES ('95', '0', 'muke', 'http://192.168.1.231:9334/1,01b796d6598f', '', '1', '1', '2', '', '0', '0', '0', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;范德萨广东省&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', '1537866116', '0', '0');
INSERT INTO `course` VALUES ('96', '0', '范德萨', 'http://192.168.1.231:9334/2,01b87a4509c0', '', '1', '1', '2', '', '0', '0', '0', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;幅度萨芬&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', '1537866240', '0', '0');
INSERT INTO `course` VALUES ('97', '0', '请问', 'http://192.168.1.231:9334/1,01bc74dc1f0d', '', '1', '1', '2', '', '0', '0', '0', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>反对sea官方</p>\n</body>\n</html>', '1538015777', '0', '0');
INSERT INTO `course` VALUES ('98', '0', '中国古代史', 'http://192.168.1.231:9334/1,01bb4aeb6aef', '', '1', '1', '2', '', '0', '0', '0', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<pre>本课程从人类社会的起源谈起，历数夏、商、周国家的建立，春秋战国的动荡，梳理秦汉、三国、魏晋、隋唐、宋元明清朝代的更替，深入浅出地描绘了各朝各代的政治经济文化及社会状况，让学生对中国的过去有一个全貌式的了解。</pre>\n<div id=\"courseArticle_127414626\" class=\"courseArticle f20 mb10  pb5 bbc \">历史沿革</div>\n</body>\n</html>', '1538015886', '0', '0');
INSERT INTO `course` VALUES ('99', '0', 'sdf ', 'http://192.168.1.231:9334/5,01c346a295c5', '', '2', '40', '2', '', '0', '0', '0', '', 'dsf', '1538105698', '0', '0');
INSERT INTO `course` VALUES ('100', '0', '123', 'http://192.168.1.231:9334/3,01c4dc521a05', '', '2', '47', '2', '', '0', '0', '0', '', 'asd ', '1538105772', '0', '0');

-- ----------------------------
-- Table structure for course_rela
-- ----------------------------
DROP TABLE IF EXISTS `course_rela`;
CREATE TABLE `course_rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型 1 课程类型关联 2 专题课程关联 3 老师课程关联 4 栏目关联',
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `other_id` int(11) NOT NULL DEFAULT '0' COMMENT '视频ID',
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '场馆ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=472 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of course_rela
-- ----------------------------
INSERT INTO `course_rela` VALUES ('1', '1', '1', '6', '1', '1', '1530584469');
INSERT INTO `course_rela` VALUES ('5', '1', '2', '2', '1', '1', '1530584488');
INSERT INTO `course_rela` VALUES ('9', '1', '3', '2', '1', '1', '1530584494');
INSERT INTO `course_rela` VALUES ('13', '1', '4', '3', '1', '1', '1530584501');
INSERT INTO `course_rela` VALUES ('19', '4', '1', '8', '1', '1', '1530585035');
INSERT INTO `course_rela` VALUES ('23', '1', '5', '7', '1', '1', '1530669210');
INSERT INTO `course_rela` VALUES ('27', '1', '6', '2', '1', '1', '1530669217');
INSERT INTO `course_rela` VALUES ('31', '1', '7', '2', '1', '1', '1530669536');
INSERT INTO `course_rela` VALUES ('35', '1', '8', '2', '1', '1', '1530669608');
INSERT INTO `course_rela` VALUES ('39', '1', '9', '2', '14', '1', '1530669771');
INSERT INTO `course_rela` VALUES ('47', '1', '7', '75', '14', '1', '1531104580');
INSERT INTO `course_rela` VALUES ('48', '1', '9', '3', '1', '1', '1531104580');
INSERT INTO `course_rela` VALUES ('49', '1', '10', '3', '1', '1', '1531806502');
INSERT INTO `course_rela` VALUES ('52', '1', '11', '75', '14', '1', '1531811093');
INSERT INTO `course_rela` VALUES ('55', '1', '12', '75', '14', '1', '1531811302');
INSERT INTO `course_rela` VALUES ('58', '1', '13', '76', '14', '1', '1531811408');
INSERT INTO `course_rela` VALUES ('62', '1', '14', '76', '14', '1', '1531811621');
INSERT INTO `course_rela` VALUES ('65', '1', '15', '2', '1', '1', '1531812916');
INSERT INTO `course_rela` VALUES ('69', '1', '16', '2', '1', '1', '1531814670');
INSERT INTO `course_rela` VALUES ('73', '1', '17', '3', '1', '1', '1531816524');
INSERT INTO `course_rela` VALUES ('74', '3', '17', '19', '1', '1', '1531816524');
INSERT INTO `course_rela` VALUES ('79', '3', '17', '13', '1', '1', '1531885619');
INSERT INTO `course_rela` VALUES ('80', '3', '8', '19', '1', '1', '1531893381');
INSERT INTO `course_rela` VALUES ('81', '4', '3', '6', '1', '1', '1532314538');
INSERT INTO `course_rela` VALUES ('82', '4', '1', '6', '1', '1', '1532314538');
INSERT INTO `course_rela` VALUES ('83', '4', '2', '6', '1', '1', '1532314538');
INSERT INTO `course_rela` VALUES ('93', '1', '19', '80', '1', '1', '1532330963');
INSERT INTO `course_rela` VALUES ('97', '3', '19', '19', '1', '1', '1532330978');
INSERT INTO `course_rela` VALUES ('98', '3', '19', '18', '1', '1', '1532330978');
INSERT INTO `course_rela` VALUES ('128', '4', '1', '1', '1', '1', '1532333501');
INSERT INTO `course_rela` VALUES ('129', '4', '2', '1', '1', '1', '1532333501');
INSERT INTO `course_rela` VALUES ('130', '4', '3', '1', '1', '1', '1532333501');
INSERT INTO `course_rela` VALUES ('132', '1', '20', '73', '14', '1', '1532398830');
INSERT INTO `course_rela` VALUES ('133', '3', '9', '19', '14', '1', '1532398830');
INSERT INTO `course_rela` VALUES ('134', '3', '20', '18', '14', '1', '1532398830');
INSERT INTO `course_rela` VALUES ('135', '4', '1', '4', '1', '1', '1532399281');
INSERT INTO `course_rela` VALUES ('136', '4', '2', '4', '1', '1', '1532399281');
INSERT INTO `course_rela` VALUES ('140', '2', '2', '4', '1', '1', '1532400852');
INSERT INTO `course_rela` VALUES ('141', '2', '3', '4', '1', '1', '1532400852');
INSERT INTO `course_rela` VALUES ('142', '2', '4', '4', '1', '1', '1532400852');
INSERT INTO `course_rela` VALUES ('151', '1', '3', '90', '18', '1', '1532412558');
INSERT INTO `course_rela` VALUES ('152', '1', '8', '90', '18', '1', '1532412558');
INSERT INTO `course_rela` VALUES ('153', '1', '15', '90', '18', '1', '1532412558');
INSERT INTO `course_rela` VALUES ('154', '1', '7', '92', '18', '1', '1532412558');
INSERT INTO `course_rela` VALUES ('155', '1', '16', '91', '18', '1', '1532412558');
INSERT INTO `course_rela` VALUES ('156', '1', '4', '91', '18', '1', '1532412558');
INSERT INTO `course_rela` VALUES ('157', '1', '17', '91', '18', '1', '1532412558');
INSERT INTO `course_rela` VALUES ('158', '1', '5', '94', '18', '1', '1532412598');
INSERT INTO `course_rela` VALUES ('159', '3', '4', '2', '1', '1', '1532413944');
INSERT INTO `course_rela` VALUES ('160', '3', '7', '19', '18', '1', '1532415622');
INSERT INTO `course_rela` VALUES ('161', '1', '21', '73', '14', '1', '1532415723');
INSERT INTO `course_rela` VALUES ('162', '3', '21', '1', '14', '1', '1532415723');
INSERT INTO `course_rela` VALUES ('163', '3', '21', '3', '14', '1', '1532415723');
INSERT INTO `course_rela` VALUES ('164', '3', '21', '5', '14', '1', '1532415723');
INSERT INTO `course_rela` VALUES ('165', '1', '22', '73', '14', '1', '1532415802');
INSERT INTO `course_rela` VALUES ('166', '3', '22', '19', '14', '1', '1532415802');
INSERT INTO `course_rela` VALUES ('167', '3', '15', '19', '18', '1', '1532416268');
INSERT INTO `course_rela` VALUES ('168', '4', '1', '2', '1', '1', '1533115414');
INSERT INTO `course_rela` VALUES ('169', '1', '23', '2', '1', '1', '1533549872');
INSERT INTO `course_rela` VALUES ('171', '1', '24', '2', '1', '1', '1533605713');
INSERT INTO `course_rela` VALUES ('172', '3', '24', '13', '1', '1', '1533605713');
INSERT INTO `course_rela` VALUES ('175', '3', '19', '17', '1', '1', '1534814704');
INSERT INTO `course_rela` VALUES ('176', '4', '4', '2', '1', '1', '1534818678');
INSERT INTO `course_rela` VALUES ('177', '1', '25', '2', '1', '1', '1535017384');
INSERT INTO `course_rela` VALUES ('178', '3', '25', '19', '1', '1', '1535017384');
INSERT INTO `course_rela` VALUES ('179', '1', '26', '4', '1', '1', '1535018101');
INSERT INTO `course_rela` VALUES ('180', '3', '26', '25', '1', '1', '1535018101');
INSERT INTO `course_rela` VALUES ('181', '1', '27', '4', '1', '1', '1535018236');
INSERT INTO `course_rela` VALUES ('182', '3', '27', '25', '1', '1', '1535018236');
INSERT INTO `course_rela` VALUES ('183', '1', '28', '4', '1', '1', '1535018363');
INSERT INTO `course_rela` VALUES ('184', '3', '28', '25', '1', '1', '1535018363');
INSERT INTO `course_rela` VALUES ('185', '1', '29', '7', '1', '1', '1535435941');
INSERT INTO `course_rela` VALUES ('186', '3', '29', '19', '1', '1', '1535435941');
INSERT INTO `course_rela` VALUES ('187', '1', '30', '2', '1', '1', '1535439597');
INSERT INTO `course_rela` VALUES ('188', '3', '30', '13', '1', '1', '1535439597');
INSERT INTO `course_rela` VALUES ('189', '3', '30', '15', '1', '1', '1535439597');
INSERT INTO `course_rela` VALUES ('190', '4', '2', '2', '1', '1', '1536042649');
INSERT INTO `course_rela` VALUES ('191', '4', '3', '2', '1', '1', '1536042649');
INSERT INTO `course_rela` VALUES ('192', '4', '5', '2', '1', '1', '1536042649');
INSERT INTO `course_rela` VALUES ('193', '4', '6', '2', '1', '1', '1536042649');
INSERT INTO `course_rela` VALUES ('194', '4', '7', '2', '1', '1', '1536042649');
INSERT INTO `course_rela` VALUES ('195', '4', '8', '2', '1', '1', '1536042649');
INSERT INTO `course_rela` VALUES ('196', '4', '9', '2', '1', '1', '1536042649');
INSERT INTO `course_rela` VALUES ('197', '4', '10', '2', '1', '1', '1536042649');
INSERT INTO `course_rela` VALUES ('199', '4', '5', '6', '1', '1', '1536045339');
INSERT INTO `course_rela` VALUES ('200', '4', '6', '6', '1', '1', '1536045339');
INSERT INTO `course_rela` VALUES ('201', '4', '7', '6', '1', '1', '1536045339');
INSERT INTO `course_rela` VALUES ('202', '4', '10', '6', '1', '1', '1536045339');
INSERT INTO `course_rela` VALUES ('203', '4', '15', '6', '1', '1', '1536045339');
INSERT INTO `course_rela` VALUES ('204', '4', '16', '6', '1', '1', '1536045339');
INSERT INTO `course_rela` VALUES ('205', '4', '17', '6', '1', '1', '1536045339');
INSERT INTO `course_rela` VALUES ('206', '2', '1', '5', '1', '1', '1536117992');
INSERT INTO `course_rela` VALUES ('207', '2', '2', '5', '1', '1', '1536117992');
INSERT INTO `course_rela` VALUES ('208', '3', '30', '44', '1', '1', '1536561022');
INSERT INTO `course_rela` VALUES ('209', '3', '30', '46', '1', '1', '1536561022');
INSERT INTO `course_rela` VALUES ('210', '3', '30', '47', '1', '1', '1536561022');
INSERT INTO `course_rela` VALUES ('211', '3', '30', '48', '1', '1', '1536561022');
INSERT INTO `course_rela` VALUES ('212', '3', '19', '44', '1', '1', '1536561119');
INSERT INTO `course_rela` VALUES ('213', '3', '19', '46', '1', '1', '1536561119');
INSERT INTO `course_rela` VALUES ('214', '3', '19', '47', '1', '1', '1536561119');
INSERT INTO `course_rela` VALUES ('215', '3', '19', '48', '1', '1', '1536561119');
INSERT INTO `course_rela` VALUES ('216', '3', '19', '43', '1', '1', '1536561119');
INSERT INTO `course_rela` VALUES ('217', '3', '8', '15', '1', '1', '1536561331');
INSERT INTO `course_rela` VALUES ('218', '3', '18', '44', '1', '1', '1536561331');
INSERT INTO `course_rela` VALUES ('219', '3', '17', '46', '1', '1', '1536561331');
INSERT INTO `course_rela` VALUES ('220', '3', '16', '47', '1', '1', '1536561331');
INSERT INTO `course_rela` VALUES ('221', '3', '15', '48', '1', '1', '1536561331');
INSERT INTO `course_rela` VALUES ('222', '3', '14', '47', '1', '1', '1536561331');
INSERT INTO `course_rela` VALUES ('223', '3', '13', '47', '1', '1', '1536561331');
INSERT INTO `course_rela` VALUES ('224', '3', '12', '47', '1', '1', '1536561331');
INSERT INTO `course_rela` VALUES ('225', '3', '11', '47', '1', '1', '1536561331');
INSERT INTO `course_rela` VALUES ('226', '3', '10', '47', '1', '1', '1536561331');
INSERT INTO `course_rela` VALUES ('227', '1', '31', '3', '1', '1', '1536894075');
INSERT INTO `course_rela` VALUES ('228', '3', '31', '47', '1', '1', '1536894075');
INSERT INTO `course_rela` VALUES ('229', '3', '31', '48', '1', '1', '1536894075');
INSERT INTO `course_rela` VALUES ('230', '1', '32', '3', '1', '1', '1536899652');
INSERT INTO `course_rela` VALUES ('231', '3', '32', '47', '1', '1', '1536899652');
INSERT INTO `course_rela` VALUES ('234', '1', '33', '118', '26', '1', '1536902834');
INSERT INTO `course_rela` VALUES ('235', '3', '33', '44', '26', '1', '1536902834');
INSERT INTO `course_rela` VALUES ('236', '3', '33', '46', '26', '1', '1536902834');
INSERT INTO `course_rela` VALUES ('237', '1', '34', '3', '1', '1', '1536903147');
INSERT INTO `course_rela` VALUES ('238', '3', '34', '44', '1', '1', '1536903147');
INSERT INTO `course_rela` VALUES ('239', '3', '34', '46', '1', '1', '1536903147');
INSERT INTO `course_rela` VALUES ('240', '2', '34', '4', '1', '1', '1536906665');
INSERT INTO `course_rela` VALUES ('241', '2', '10', '4', '1', '1', '1536906677');
INSERT INTO `course_rela` VALUES ('242', '1', '76', '3', '1', '1', '1537172622');
INSERT INTO `course_rela` VALUES ('243', '3', '242', '47', '1', '1', '1537172622');
INSERT INTO `course_rela` VALUES ('244', '3', '242', '1', '1', '1', '1537172622');
INSERT INTO `course_rela` VALUES ('245', '3', '242', '24', '1', '1', '1537172622');
INSERT INTO `course_rela` VALUES ('246', '1', '77', '3', '1', '1', '1537172650');
INSERT INTO `course_rela` VALUES ('247', '3', '246', '47', '1', '1', '1537172650');
INSERT INTO `course_rela` VALUES ('248', '3', '246', '1', '1', '1', '1537172650');
INSERT INTO `course_rela` VALUES ('249', '3', '246', '24', '1', '1', '1537172650');
INSERT INTO `course_rela` VALUES ('250', '1', '78', '3', '1', '1', '1537172686');
INSERT INTO `course_rela` VALUES ('251', '3', '250', '47', '1', '1', '1537172686');
INSERT INTO `course_rela` VALUES ('252', '1', '79', '3', '1', '1', '1537172695');
INSERT INTO `course_rela` VALUES ('253', '3', '252', '47', '1', '1', '1537172695');
INSERT INTO `course_rela` VALUES ('254', '1', '80', '3', '1', '1', '1537172759');
INSERT INTO `course_rela` VALUES ('255', '3', '254', '47', '1', '1', '1537172759');
INSERT INTO `course_rela` VALUES ('256', '3', '254', '24', '1', '1', '1537172759');
INSERT INTO `course_rela` VALUES ('257', '1', '81', '3', '1', '1', '1537234242');
INSERT INTO `course_rela` VALUES ('258', '3', '257', '47', '1', '1', '1537234242');
INSERT INTO `course_rela` VALUES ('259', '3', '257', '1', '1', '1', '1537234242');
INSERT INTO `course_rela` VALUES ('260', '3', '257', '24', '1', '1', '1537234242');
INSERT INTO `course_rela` VALUES ('261', '3', '10', '46', '1', '1', '1537234242');
INSERT INTO `course_rela` VALUES ('262', '1', '82', '3', '1', '1', '1537234474');
INSERT INTO `course_rela` VALUES ('263', '3', '262', '47', '1', '1', '1537234474');
INSERT INTO `course_rela` VALUES ('264', '3', '262', '1', '1', '1', '1537234474');
INSERT INTO `course_rela` VALUES ('265', '3', '262', '39', '1', '1', '1537234474');
INSERT INTO `course_rela` VALUES ('266', '3', '262', '40', '1', '1', '1537234474');
INSERT INTO `course_rela` VALUES ('267', '1', '83', '3', '1', '1', '1537234511');
INSERT INTO `course_rela` VALUES ('268', '3', '267', '47', '1', '1', '1537234511');
INSERT INTO `course_rela` VALUES ('269', '3', '267', '39', '1', '1', '1537234511');
INSERT INTO `course_rela` VALUES ('270', '3', '267', '40', '1', '1', '1537234511');
INSERT INTO `course_rela` VALUES ('271', '3', '267', '44', '1', '1', '1537234511');
INSERT INTO `course_rela` VALUES ('272', '1', '84', '3', '1', '1', '1537234628');
INSERT INTO `course_rela` VALUES ('273', '3', '272', '39', '1', '1', '1537234628');
INSERT INTO `course_rela` VALUES ('274', '3', '272', '1', '1', '1', '1537234628');
INSERT INTO `course_rela` VALUES ('275', '3', '272', '14', '1', '1', '1537234628');
INSERT INTO `course_rela` VALUES ('276', '3', '272', '15', '1', '1', '1537234628');
INSERT INTO `course_rela` VALUES ('277', '3', '272', '16', '1', '1', '1537234628');
INSERT INTO `course_rela` VALUES ('278', '1', '85', '3', '1', '1', '1537235396');
INSERT INTO `course_rela` VALUES ('279', '3', '278', '48', '1', '1', '1537235396');
INSERT INTO `course_rela` VALUES ('280', '3', '278', '6', '1', '1', '1537235396');
INSERT INTO `course_rela` VALUES ('281', '3', '278', '49', '1', '1', '1537235396');
INSERT INTO `course_rela` VALUES ('282', '3', '278', '44', '1', '1', '1537235396');
INSERT INTO `course_rela` VALUES ('283', '3', '278', '50', '1', '1', '1537235396');
INSERT INTO `course_rela` VALUES ('284', '1', '86', '3', '1', '1', '1537235509');
INSERT INTO `course_rela` VALUES ('285', '3', '284', '48', '1', '1', '1537235509');
INSERT INTO `course_rela` VALUES ('286', '3', '284', '14', '1', '1', '1537235509');
INSERT INTO `course_rela` VALUES ('287', '3', '284', '41', '1', '1', '1537235509');
INSERT INTO `course_rela` VALUES ('288', '1', '87', '3', '1', '1', '1537236780');
INSERT INTO `course_rela` VALUES ('289', '3', '288', '48', '1', '1', '1537236780');
INSERT INTO `course_rela` VALUES ('290', '3', '288', '1', '1', '1', '1537236780');
INSERT INTO `course_rela` VALUES ('291', '3', '288', '40', '1', '1', '1537236780');
INSERT INTO `course_rela` VALUES ('292', '1', '88', '3', '1', '1', '1537236841');
INSERT INTO `course_rela` VALUES ('293', '3', '292', '48', '1', '1', '1537236841');
INSERT INTO `course_rela` VALUES ('294', '3', '292', '14', '1', '1', '1537236841');
INSERT INTO `course_rela` VALUES ('295', '3', '292', '41', '1', '1', '1537236841');
INSERT INTO `course_rela` VALUES ('296', '1', '65', '3', '1', '1', '1537237907');
INSERT INTO `course_rela` VALUES ('297', '3', '65', '48', '1', '1', '1537237907');
INSERT INTO `course_rela` VALUES ('298', '3', '65', '40', '1', '1', '1537237907');
INSERT INTO `course_rela` VALUES ('299', '3', '65', '49', '1', '1', '1537237907');
INSERT INTO `course_rela` VALUES ('300', '1', '66', '2', '1', '1', '1537238146');
INSERT INTO `course_rela` VALUES ('301', '3', '66', '47', '1', '1', '1537238146');
INSERT INTO `course_rela` VALUES ('302', '3', '66', '1', '1', '1', '1537238146');
INSERT INTO `course_rela` VALUES ('303', '3', '66', '39', '1', '1', '1537238146');
INSERT INTO `course_rela` VALUES ('304', '3', '66', '40', '1', '1', '1537238146');
INSERT INTO `course_rela` VALUES ('305', '1', '67', '3', '1', '1', '1537238191');
INSERT INTO `course_rela` VALUES ('309', '3', '67', '44', '1', '1', '1537238191');
INSERT INTO `course_rela` VALUES ('310', '1', '68', '3', '1', '1', '1537252257');
INSERT INTO `course_rela` VALUES ('316', '1', '69', '2', '1', '1', '1537252475');
INSERT INTO `course_rela` VALUES ('317', '3', '69', '48', '1', '1', '1537252475');
INSERT INTO `course_rela` VALUES ('318', '3', '69', '1', '1', '1', '1537252475');
INSERT INTO `course_rela` VALUES ('319', '3', '69', '41', '1', '1', '1537252475');
INSERT INTO `course_rela` VALUES ('320', '1', '96', '3', '1', '1', '1537258173');
INSERT INTO `course_rela` VALUES ('321', '3', '320', '48', '1', '1', '1537258173');
INSERT INTO `course_rela` VALUES ('322', '3', '320', '40', '1', '1', '1537258173');
INSERT INTO `course_rela` VALUES ('323', '3', '320', '44', '1', '1', '1537258173');
INSERT INTO `course_rela` VALUES ('324', '1', '97', '3', '1', '1', '1537259031');
INSERT INTO `course_rela` VALUES ('325', '3', '324', '48', '1', '1', '1537259031');
INSERT INTO `course_rela` VALUES ('326', '3', '324', '40', '1', '1', '1537259031');
INSERT INTO `course_rela` VALUES ('327', '3', '324', '41', '1', '1', '1537259031');
INSERT INTO `course_rela` VALUES ('331', '1', '73', '3', '1', '1', '1537259706');
INSERT INTO `course_rela` VALUES ('332', '3', '73', '48', '1', '1', '1537259706');
INSERT INTO `course_rela` VALUES ('333', '3', '73', '1', '1', '1', '1537259706');
INSERT INTO `course_rela` VALUES ('334', '3', '73', '22', '1', '1', '1537259706');
INSERT INTO `course_rela` VALUES ('335', '1', '74', '3', '1', '1', '1537259790');
INSERT INTO `course_rela` VALUES ('336', '3', '74', '48', '1', '1', '1537259790');
INSERT INTO `course_rela` VALUES ('337', '3', '74', '14', '1', '1', '1537259790');
INSERT INTO `course_rela` VALUES ('338', '1', '75', '3', '1', '1', '1537260139');
INSERT INTO `course_rela` VALUES ('339', '3', '75', '48', '1', '1', '1537260139');
INSERT INTO `course_rela` VALUES ('340', '3', '75', '1', '1', '1', '1537260139');
INSERT INTO `course_rela` VALUES ('341', '3', '75', '44', '1', '1', '1537260139');
INSERT INTO `course_rela` VALUES ('342', '1', '76', '3', '1', '1', '1537321160');
INSERT INTO `course_rela` VALUES ('343', '3', '76', '48', '1', '1', '1537321160');
INSERT INTO `course_rela` VALUES ('344', '3', '76', '40', '1', '1', '1537321160');
INSERT INTO `course_rela` VALUES ('345', '3', '76', '49', '1', '1', '1537321160');
INSERT INTO `course_rela` VALUES ('346', '3', '76', '44', '1', '1', '1537321160');
INSERT INTO `course_rela` VALUES ('347', '1', '77', '3', '1', '1', '1537321598');
INSERT INTO `course_rela` VALUES ('354', '3', '23', '36', '1', '1', '1537344917');
INSERT INTO `course_rela` VALUES ('359', '3', '68', '44', '1', '1', '1537347579');
INSERT INTO `course_rela` VALUES ('361', '3', '67', '46', '1', '1', '1537347593');
INSERT INTO `course_rela` VALUES ('362', '3', '67', '48', '1', '1', '1537347593');
INSERT INTO `course_rela` VALUES ('364', '3', '68', '48', '1', '1', '1537347663');
INSERT INTO `course_rela` VALUES ('375', '3', '68', '46', '1', '1', '1537519934');
INSERT INTO `course_rela` VALUES ('379', '3', '77', '44', '1', '1', '1537520763');
INSERT INTO `course_rela` VALUES ('382', '3', '77', '47', '1', '1', '1537521568');
INSERT INTO `course_rela` VALUES ('383', '3', '77', '46', '1', '1', '1537521580');
INSERT INTO `course_rela` VALUES ('384', '3', '77', '48', '1', '1', '1537521580');
INSERT INTO `course_rela` VALUES ('385', '1', '78', '3', '1', '1', '1537522198');
INSERT INTO `course_rela` VALUES ('386', '3', '78', '47', '1', '1', '1537522198');
INSERT INTO `course_rela` VALUES ('388', '3', '78', '44', '1', '1', '1537522198');
INSERT INTO `course_rela` VALUES ('389', '3', '78', '48', '1', '1', '1537522198');
INSERT INTO `course_rela` VALUES ('390', '3', '78', '46', '1', '1', '1537522224');
INSERT INTO `course_rela` VALUES ('391', '1', '79', '115', '1', '1', '1537522497');
INSERT INTO `course_rela` VALUES ('392', '3', '79', '47', '1', '1', '1537522497');
INSERT INTO `course_rela` VALUES ('399', '3', '8', '44', '18', '1', '1537524337');
INSERT INTO `course_rela` VALUES ('400', '3', '8', '43', '18', '1', '1537524337');
INSERT INTO `course_rela` VALUES ('401', '1', '80', '3', '1', '1', '1537838624');
INSERT INTO `course_rela` VALUES ('402', '3', '80', '47', '1', '1', '1537838624');
INSERT INTO `course_rela` VALUES ('403', '3', '80', '19', '1', '1', '1537838624');
INSERT INTO `course_rela` VALUES ('404', '3', '80', '48', '1', '1', '1537838624');
INSERT INTO `course_rela` VALUES ('405', '1', '81', '3', '1', '1', '1537845132');
INSERT INTO `course_rela` VALUES ('406', '3', '81', '48', '1', '1', '1537845132');
INSERT INTO `course_rela` VALUES ('407', '3', '0', '47', '1', '1', '1537855583');
INSERT INTO `course_rela` VALUES ('408', '3', '0', '44', '1', '1', '1537855583');
INSERT INTO `course_rela` VALUES ('410', '3', '0', '48', '1', '1', '1537855583');
INSERT INTO `course_rela` VALUES ('411', '1', '82', '3', '1', '1', '1537861546');
INSERT INTO `course_rela` VALUES ('413', '3', '82', '57', '1', '1', '1537861707');
INSERT INTO `course_rela` VALUES ('414', '1', '83', '2', '1', '1', '1537866043');
INSERT INTO `course_rela` VALUES ('415', '3', '83', '57', '1', '1', '1537866043');
INSERT INTO `course_rela` VALUES ('416', '1', '84', '2', '1', '1', '1537866048');
INSERT INTO `course_rela` VALUES ('417', '3', '84', '57', '1', '1', '1537866048');
INSERT INTO `course_rela` VALUES ('418', '1', '85', '2', '1', '1', '1537866049');
INSERT INTO `course_rela` VALUES ('419', '3', '85', '57', '1', '1', '1537866049');
INSERT INTO `course_rela` VALUES ('420', '1', '86', '2', '1', '1', '1537866049');
INSERT INTO `course_rela` VALUES ('421', '3', '86', '57', '1', '1', '1537866049');
INSERT INTO `course_rela` VALUES ('422', '1', '87', '2', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('423', '3', '87', '57', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('424', '1', '88', '2', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('425', '3', '88', '57', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('426', '1', '89', '2', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('427', '3', '89', '57', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('428', '1', '90', '2', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('429', '3', '90', '57', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('430', '1', '91', '2', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('431', '3', '91', '57', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('432', '1', '92', '2', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('433', '3', '92', '57', '1', '1', '1537866050');
INSERT INTO `course_rela` VALUES ('434', '1', '93', '2', '1', '1', '1537866060');
INSERT INTO `course_rela` VALUES ('435', '3', '93', '57', '1', '1', '1537866060');
INSERT INTO `course_rela` VALUES ('436', '1', '94', '2', '1', '1', '1537866072');
INSERT INTO `course_rela` VALUES ('437', '3', '94', '57', '1', '1', '1537866072');
INSERT INTO `course_rela` VALUES ('438', '1', '95', '3', '1', '1', '1537866116');
INSERT INTO `course_rela` VALUES ('439', '3', '95', '17', '1', '1', '1537866116');
INSERT INTO `course_rela` VALUES ('440', '3', '95', '43', '1', '1', '1537866116');
INSERT INTO `course_rela` VALUES ('441', '1', '96', '3', '1', '1', '1537866240');
INSERT INTO `course_rela` VALUES ('442', '3', '96', '17', '1', '1', '1537866240');
INSERT INTO `course_rela` VALUES ('443', '3', '96', '47', '1', '1', '1537866240');
INSERT INTO `course_rela` VALUES ('450', '3', '9', '15', '1', '1', '1537866240');
INSERT INTO `course_rela` VALUES ('451', '1', '97', '73', '14', '1', '1538015777');
INSERT INTO `course_rela` VALUES ('452', '3', '97', '46', '14', '1', '1538015777');
INSERT INTO `course_rela` VALUES ('453', '3', '97', '44', '14', '1', '1538015777');
INSERT INTO `course_rela` VALUES ('454', '3', '97', '47', '14', '1', '1538015777');
INSERT INTO `course_rela` VALUES ('455', '1', '98', '110', '1', '1', '1538015886');
INSERT INTO `course_rela` VALUES ('456', '3', '98', '59', '1', '1', '1538015886');
INSERT INTO `course_rela` VALUES ('457', '4', '98', '17', '1', '1', '1538016933');
INSERT INTO `course_rela` VALUES ('459', '4', '1', '9', '1', '1', '1538029492');
INSERT INTO `course_rela` VALUES ('460', '4', '2', '9', '1', '1', '1538029492');
INSERT INTO `course_rela` VALUES ('461', '4', '3', '9', '1', '1', '1538029492');
INSERT INTO `course_rela` VALUES ('462', '4', '4', '9', '1', '1', '1538029492');
INSERT INTO `course_rela` VALUES ('463', '4', '5', '9', '1', '1', '1538029492');
INSERT INTO `course_rela` VALUES ('464', '4', '6', '9', '1', '1', '1538029492');
INSERT INTO `course_rela` VALUES ('465', '1', '99', '2', '1', '1', '1538105698');
INSERT INTO `course_rela` VALUES ('466', '3', '99', '40', '1', '1', '1538105698');
INSERT INTO `course_rela` VALUES ('467', '3', '99', '6', '1', '1', '1538105698');
INSERT INTO `course_rela` VALUES ('468', '3', '99', '47', '1', '1', '1538105698');
INSERT INTO `course_rela` VALUES ('469', '3', '99', '48', '1', '1', '1538105698');
INSERT INTO `course_rela` VALUES ('470', '1', '100', '3', '1', '1', '1538105772');
INSERT INTO `course_rela` VALUES ('471', '3', '100', '47', '1', '1', '1538105772');

-- ----------------------------
-- Table structure for course_type
-- ----------------------------
DROP TABLE IF EXISTS `course_type`;
CREATE TABLE `course_type` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT COMMENT '课程分类ID',
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '场馆ID',
  `course_type` varchar(20) NOT NULL COMMENT '课程分类名称',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：0 不可用 1 可用',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='课程分类表';

-- ----------------------------
-- Records of course_type
-- ----------------------------
INSERT INTO `course_type` VALUES ('1', '1', '国学', '0', '发富士达', '1', '0', '1536139537');
INSERT INTO `course_type` VALUES ('2', '1', '语言艺术', '4', '范德萨富士达', '1', '0', '1536139558');
INSERT INTO `course_type` VALUES ('3', '1', '电影', '1', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('4', '1', '心理', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('5', '1', '艺术鉴赏', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('6', '1', '经典导读', '4', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('7', '1', '诗文', '4', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('72', '14', '国学', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('73', '14', '电影', '72', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('74', '14', '心理', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('75', '14', '经典导读', '74', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('76', '14', '诗文', '74', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('116', '26', '心理', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('96', '1', '上的飞机哦', '0', '', '1', '1536138858', '0');
INSERT INTO `course_type` VALUES ('80', '1', '语言', '0', '发的fsk', '1', '1531983579', '0');
INSERT INTO `course_type` VALUES ('97', '1', '幅度萨芬看快乐的方式', '0', '发vda', '1', '1536138865', '0');
INSERT INTO `course_type` VALUES ('95', '1', 'fad ', '0', 'fdsa ', '1', '1536133199', '0');
INSERT INTO `course_type` VALUES ('89', '18', '国学', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('90', '18', '语言艺术', '89', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('91', '18', '电影', '89', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('92', '18', '心理', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('93', '18', '心理', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('94', '18', '诗文', '93', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('98', '1', '风刀霜剑 ', '0', '', '1', '1536138872', '1537173033');
INSERT INTO `course_type` VALUES ('99', '1', '啊大哥', '1', '', '1', '1536139672', '1536219708');
INSERT INTO `course_type` VALUES ('100', '1', '范德萨发', '1', '', '1', '1536139680', '1536219618');
INSERT INTO `course_type` VALUES ('101', '1', '电影那', '0', '', '1', '1536139689', '0');
INSERT INTO `course_type` VALUES ('123', '0', '语言艺术', '122', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('103', '1', 'FDSA', '0', '', '1', '1536139709', '0');
INSERT INTO `course_type` VALUES ('122', '0', '心理', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('105', '1', '国学国学', '0', '', '1', '1536139736', '0');
INSERT INTO `course_type` VALUES ('106', '1', '诗词', '0', '', '1', '1536139748', '0');
INSERT INTO `course_type` VALUES ('107', '1', '成语接龙', '0', '', '1', '1536139766', '0');
INSERT INTO `course_type` VALUES ('108', '1', '音乐', '0', '', '1', '1536139788', '0');
INSERT INTO `course_type` VALUES ('109', '1', '英语', '0', '', '1', '1536139795', '0');
INSERT INTO `course_type` VALUES ('110', '1', '美术', '0', '', '1', '1536139801', '0');
INSERT INTO `course_type` VALUES ('111', '1', '文章', '0', '', '1', '1536139812', '0');
INSERT INTO `course_type` VALUES ('112', '1', '奖赏鉴赏家', '0', '', '1', '1536139829', '0');
INSERT INTO `course_type` VALUES ('113', '1', '阿奎罗', '98', '', '1', '1536201006', '0');
INSERT INTO `course_type` VALUES ('114', '1', '鉴赏', '5', '', '1', '1536201042', '0');
INSERT INTO `course_type` VALUES ('115', '1', '阿斯蒂芬', '96', '', '1', '1536201084', '0');
INSERT INTO `course_type` VALUES ('117', '26', '语言艺术', '116', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('118', '26', '国学', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('119', '26', '心理', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('120', '26', '心理', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('121', '26', '语言', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('124', '0', '国学', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('125', '0', '心理', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('126', '0', '心理', '0', '', '1', '0', '0');
INSERT INTO `course_type` VALUES ('127', '0', '语言', '0', '', '1', '0', '0');

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户id',
  `follow_id` int(10) NOT NULL COMMENT '粉丝id',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '关注时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES ('8', '48', '47', '1537326749');
INSERT INTO `follow` VALUES ('11', '52', '47', '1537328894');
INSERT INTO `follow` VALUES ('12', '39', '47', '1537335080');
INSERT INTO `follow` VALUES ('14', '47', '47', '1537337170');
INSERT INTO `follow` VALUES ('15', '46', '46', '1537434028');
INSERT INTO `follow` VALUES ('18', '49', '44', '1537518075');
INSERT INTO `follow` VALUES ('20', '56', '15', '1537855982');
INSERT INTO `follow` VALUES ('21', '52', '44', '1537859882');
INSERT INTO `follow` VALUES ('36', '40', '46', '1537930748');

-- ----------------------------
-- Table structure for home_page_tpl
-- ----------------------------
DROP TABLE IF EXISTS `home_page_tpl`;
CREATE TABLE `home_page_tpl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '资源名称',
  `resource` varchar(255) NOT NULL DEFAULT '' COMMENT '资源api',
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '场馆id',
  `list_order` int(11) NOT NULL DEFAULT '1000',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '显示1 隐藏0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of home_page_tpl
-- ----------------------------
INSERT INTO `home_page_tpl` VALUES ('2', '首页经典', '/v1/', '1', '1000', '1');
INSERT INTO `home_page_tpl` VALUES ('3', '附近的撒赖科技', 'api', '1', '1000', '1');

-- ----------------------------
-- Table structure for like
-- ----------------------------
DROP TABLE IF EXISTS `like`;
CREATE TABLE `like` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `user_id` int(10) NOT NULL COMMENT '点赞人',
  `resource_id` int(10) NOT NULL DEFAULT '0' COMMENT '资源id (评论id 或 笔记id )',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '1 评论点赞  2笔记点赞 3问题点赞',
  `create_time` int(10) NOT NULL DEFAULT '0' COMMENT '点赞时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of like
-- ----------------------------
INSERT INTO `like` VALUES ('8', '21', '6', '2', '1533091042');
INSERT INTO `like` VALUES ('12', '21', '7', '1', '1533094728');
INSERT INTO `like` VALUES ('13', '22', '6', '2', '1534931047');
INSERT INTO `like` VALUES ('18', '40', '14', '2', '1536286936');
INSERT INTO `like` VALUES ('26', '40', '11', '2', '1536288987');
INSERT INTO `like` VALUES ('48', '6', '10', '1', '1536735202');
INSERT INTO `like` VALUES ('49', '6', '113', '2', '1536738408');
INSERT INTO `like` VALUES ('55', '40', '13', '2', '1536804299');
INSERT INTO `like` VALUES ('74', '40', '10', '2', '1536892494');
INSERT INTO `like` VALUES ('75', '46', '10', '2', '1536892694');
INSERT INTO `like` VALUES ('76', '40', '12', '2', '1536894062');
INSERT INTO `like` VALUES ('77', '40', '13', '1', '1536894625');
INSERT INTO `like` VALUES ('79', '40', '11', '1', '1536894794');
INSERT INTO `like` VALUES ('82', '47', '11', '1', '1536922625');
INSERT INTO `like` VALUES ('83', '47', '15', '1', '1536922935');
INSERT INTO `like` VALUES ('84', '6', '114', '2', '1537166501');
INSERT INTO `like` VALUES ('86', '50', '121', '2', '1537323906');
INSERT INTO `like` VALUES ('87', '48', '125', '2', '1537324694');
INSERT INTO `like` VALUES ('88', '53', '20', '1', '1537326302');
INSERT INTO `like` VALUES ('89', '53', '132', '2', '1537326758');
INSERT INTO `like` VALUES ('90', '52', '125', '2', '1537328920');
INSERT INTO `like` VALUES ('91', '52', '119', '2', '1537329059');
INSERT INTO `like` VALUES ('93', '39', '125', '2', '1537331139');
INSERT INTO `like` VALUES ('94', '46', '11', '1', '1537434442');
INSERT INTO `like` VALUES ('97', '49', '10', '1', '1537518965');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `center_id` int(32) DEFAULT NULL,
  `sender` int(32) DEFAULT '0' COMMENT '发送者UID',
  `receiver` int(11) DEFAULT '0' COMMENT '接收者UID',
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '发送内容',
  `datetime` int(32) DEFAULT '0' COMMENT '发送时间',
  `status` tinyint(2) DEFAULT '0' COMMENT '状态 0：未读 1：已读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', '39', '1', 'bbbb', '1537498284', '0');
INSERT INTO `message` VALUES ('2', '1', '1', '39', 'rgrty', '1537498300', '0');
INSERT INTO `message` VALUES ('3', '1', '1', '39', 'rgrty', '1537498305', '0');
INSERT INTO `message` VALUES ('4', '1', '1', '1', 'llll', '1537498400', '0');
INSERT INTO `message` VALUES ('5', '1', '1', '39', '管理员回复', '1537510141', '0');
INSERT INTO `message` VALUES ('6', '1', '1', '1', 'eee', '1537520529', '0');
INSERT INTO `message` VALUES ('7', '1', '1', '1', 'eee', '1537520535', '0');
INSERT INTO `message` VALUES ('8', '1', '1', '1', 'dee', '1537520538', '0');
INSERT INTO `message` VALUES ('9', '1', '1', '1', 'rrtt', '1537520551', '0');
INSERT INTO `message` VALUES ('10', '1', '40', '1', '啊啊', '1537925648', '1');
INSERT INTO `message` VALUES ('11', '1', '40', '1', '啊', '1537925828', '1');
INSERT INTO `message` VALUES ('12', '1', '39', '1', '', '1537926105', '0');
INSERT INTO `message` VALUES ('13', '1', '40', '1', '1', '1537926187', '1');
INSERT INTO `message` VALUES ('14', '1', '40', '1', '', '1537926864', '1');
INSERT INTO `message` VALUES ('15', '1', '40', '1', '', '1537928993', '1');
INSERT INTO `message` VALUES ('16', '1', '47', '1', '3344', '1537941910', '1');
INSERT INTO `message` VALUES ('17', '1', '1', '47', '44t4t4y56y', '1537942072', '0');
INSERT INTO `message` VALUES ('18', '1', '47', '1', '昂是的', '1537954324', '1');
INSERT INTO `message` VALUES ('19', '1', '40', '1', '啊啊', '1538013575', '1');
INSERT INTO `message` VALUES ('20', '1', '60', '1', 'g', '1538018308', '1');
INSERT INTO `message` VALUES ('21', '1', '60', '1', 'dfhg', '1538018320', '1');
INSERT INTO `message` VALUES ('22', '1', '40', '1', 'asd asd as dsa ds d sad sadadas sd s as das asd asd as dsa ds d sad sadadas sd s as das asd asd as dsa ds d sad sadadas sd s as das asd asd as dsa ds d sad sadadas sd s as das asd asd as dsa ds d sad sadadas sd s as das asd asd as dsa ds d sad sadadas sd ', '1538019923', '1');
INSERT INTO `message` VALUES ('23', '1', '40', '1', '啊是大啊是大萨大撒', '1538020156', '1');
INSERT INTO `message` VALUES ('24', '1', '40', '1', '啊是大昂是', '1538020170', '1');
INSERT INTO `message` VALUES ('25', '1', '40', '1', '昂是啊是大', '1538020324', '1');
INSERT INTO `message` VALUES ('26', '1', '40', '1', '啊', '1538020462', '1');
INSERT INTO `message` VALUES ('27', '1', '40', '1', '啊', '1538020570', '1');
INSERT INTO `message` VALUES ('28', '1', '40', '1', '啊', '1538020607', '1');
INSERT INTO `message` VALUES ('29', '1', '40', '1', '昂是', '1538020610', '1');
INSERT INTO `message` VALUES ('30', '1', '40', '1', '阿三打', '1538020624', '1');
INSERT INTO `message` VALUES ('31', '1', '40', '1', '昂是', '1538021141', '1');
INSERT INTO `message` VALUES ('32', '1', '40', '1', '昂是', '1538021152', '1');
INSERT INTO `message` VALUES ('33', '1', '40', '1', '啊', '1538021246', '1');
INSERT INTO `message` VALUES ('34', '1', '40', '1', '啊', '1538021433', '1');
INSERT INTO `message` VALUES ('35', '1', '40', '1', '啊', '1538021476', '1');
INSERT INTO `message` VALUES ('36', '1', '40', '1', '啊', '1538021542', '1');
INSERT INTO `message` VALUES ('37', '1', '40', '1', '啊啊', '1538021692', '1');
INSERT INTO `message` VALUES ('38', '1', '40', '1', '昂是', '1538021696', '1');
INSERT INTO `message` VALUES ('39', '1', '40', '1', '昂是', '1538021707', '1');
INSERT INTO `message` VALUES ('40', '1', '40', '1', '啊稍等下', '1538021710', '1');
INSERT INTO `message` VALUES ('41', '1', '52', '1', '你好', '1538029664', '0');
INSERT INTO `message` VALUES ('42', '1', '40', '1', '而突然', '1538100468', '1');
INSERT INTO `message` VALUES ('43', '1', '47', '1', '啊', '1538102015', '1');
INSERT INTO `message` VALUES ('44', '1', '47', '1', '啊', '1538102182', '0');

-- ----------------------------
-- Table structure for mooc_center
-- ----------------------------
DROP TABLE IF EXISTS `mooc_center`;
CREATE TABLE `mooc_center` (
  `id` int(7) NOT NULL AUTO_INCREMENT COMMENT '文化馆ID',
  `access_key` varchar(40) NOT NULL COMMENT '登陆key',
  `center_name` varchar(40) NOT NULL COMMENT '文化馆名称',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '地区',
  `center_token` varchar(40) NOT NULL COMMENT '登陆token',
  `salt` char(5) NOT NULL,
  `access_time` int(11) NOT NULL COMMENT '登陆时间',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '文化馆状态：0 不可用 1 可用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='文化馆';

-- ----------------------------
-- Records of mooc_center
-- ----------------------------
INSERT INTO `mooc_center` VALUES ('1', '1de8984ef6dd7ec915248f05684cb6c5cf3bfd9f', '超星文化馆', 'fdfdsfdsfsdfsd', '6167a5f5567fef11117675194be585530eb817e6', 'mTaqN', '1538120394', '1527585432', '0', '1');
INSERT INTO `mooc_center` VALUES ('14', '6ed48ed0de564833f09c9f6e42fb420645826b92', '天津文化馆', '天津市', 'da335ebc326273438d0b420fc74cb683fdbe5dac', 'jO4Xk', '1535530457', '1527150245', '0', '1');
INSERT INTO `mooc_center` VALUES ('17', '8a987b4812908ae0d5d0393f28ddb925658e7430', '东丽文化馆', '', '', '', '0', '1530675662', '0', '1');
INSERT INTO `mooc_center` VALUES ('18', '954e73361c3b2c55fff84be48bbbf83beb9bb39b', '东丽文化馆1', '213232132', '', '', '0', '1530675702', '0', '1');
INSERT INTO `mooc_center` VALUES ('19', 'd56361aa782d8dc6563096f060ba1b534084b6a1', '东丽文化馆', '', '', '', '0', '1530675763', '1530676070', '1');
INSERT INTO `mooc_center` VALUES ('24', '2564848431af6d10afa36a3c4315c47e714f6fdf', 'bjbb', 'jhbjbhjbhj', '', '', '0', '1532592139', '0', '1');
INSERT INTO `mooc_center` VALUES ('23', '8528ec3ca5c7041591dc351742882a2c5316caed', '54353453', '5435435', '', '', '0', '1532569264', '0', '1');
INSERT INTO `mooc_center` VALUES ('25', 'ffdc5f13aa56f68a8460123174395bf2a045db88', '北京文化馆', '北京市', '', '', '0', '1535506100', '0', '1');
INSERT INTO `mooc_center` VALUES ('26', 'a33f57e008e2ffbfda773cca20966f358a01e7cb', '测试文化馆', '天堂', '', '', '0', '1536902740', '0', '1');

-- ----------------------------
-- Table structure for mooc_score
-- ----------------------------
DROP TABLE IF EXISTS `mooc_score`;
CREATE TABLE `mooc_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '课程积分',
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '文化馆id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mooc_score
-- ----------------------------

-- ----------------------------
-- Table structure for mooc_user
-- ----------------------------
DROP TABLE IF EXISTS `mooc_user`;
CREATE TABLE `mooc_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户表ID',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '类型  1 用户  2 老师 3 超级管理员',
  `center_user_id` int(10) NOT NULL DEFAULT '0' COMMENT '文化馆用户ID',
  `center_id` int(7) NOT NULL DEFAULT '0' COMMENT '文化馆ID',
  `nick_name` varchar(40) NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `teacher_title` varchar(50) NOT NULL DEFAULT '' COMMENT '职称',
  `company` varchar(255) NOT NULL DEFAULT '' COMMENT '单位',
  `department` varchar(100) NOT NULL DEFAULT '' COMMENT '部门',
  `profile` varchar(255) NOT NULL DEFAULT '' COMMENT '个人简介',
  `user_token` varchar(40) NOT NULL DEFAULT '' COMMENT '访问token',
  `access_time` int(10) NOT NULL DEFAULT '0' COMMENT '访问时间戳',
  `user_login` varchar(20) NOT NULL DEFAULT '' COMMENT '用户登陆名',
  `user_pass` varchar(100) NOT NULL DEFAULT '' COMMENT '用户密码',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 保密  1男  2女',
  `area` varchar(255) NOT NULL DEFAULT '' COMMENT '地区',
  `mobile` varchar(255) NOT NULL DEFAULT '' COMMENT '手机号码',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `salt` char(5) NOT NULL DEFAULT '' COMMENT '盐',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态：0 不可用 1 可用',
  `fans_num` int(32) DEFAULT '0' COMMENT '用户粉丝数',
  `follow_num` int(32) DEFAULT '0' COMMENT '用户关注数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of mooc_user
-- ----------------------------
INSERT INTO `mooc_user` VALUES ('1', '3', '0', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '', '8fc4d956d0402e5d815c20acd3b61a55706c8e6d', '1535706462', 'admin', '$2y$10$TemlUin6RYGyq3CHeNHn0.yqfRk0F4q0YxlblcV0Nvq6gx58zW9Vq', '0', '987', '456', '789', '8FrkI', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('14', '1', '18', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '', 'efd03d526338e056882f4543a23d38107633ced9', '1530167726', '', '', '0', '987', '456', '789', '', '0', '0', '0');
INSERT INTO `mooc_user` VALUES ('15', '2', '20', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', 'dfgg', '63578a96ed958403af28bf38fa8215d9d8609a57', '1530167796', '小十五', '$2y$10$PTBUxMXulJiZhoeIla3yKe0/EYkriqWGKR3KOax6yyM96Gr84B3PS', '0', '987', '456', '789', '', '1', '1', '0');
INSERT INTO `mooc_user` VALUES ('13', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '的方式发给vadrg', '4800970a86649ca1ce6215864cc3df8cec0319a9', '1534924670', 'aaaaaa', '$2y$10$QS2CZEgz6Mm7eYZcKnpxy.b8EA8LU8gKc3umRP7mDtPXgNwSkwK2.', '0', '987', '456', '789', 'Fkg7e', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('16', '1', '21', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '', '5da0f5fbadc013ca572d8558d237d1a829dab11e', '1530167811', '', '', '0', '987', '456', '789', '', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('17', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '教授', '', '天津大学', '', '6cc6c00edab41244b13e3f71acab82439ae99ada', '1533088851', 'test123', '$2y$10$ZPNUAdUh6X1g4zxq5MLfcOwAeHbsz2Whce9saW7giiQBzTjbJ.7Ku', '0', '987', '456', '789', '0qXig', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('18', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '加快速度', '6513cfffe825daf6cd4883ceb6f34a5cd39720c6', '1530782486', 'test1234', '$2y$10$QlVD0oAw1RZzaKKCAiTxIeke/FCPNxp/oZNYEIPeGg0RSD2bUWBEa', '0', '987', '456', '789', 'w34v6', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('19', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '美国电脑工程师，曾与史蒂夫·乔布斯合伙创立苹果电脑（今之苹果公司）。斯蒂夫·盖瑞·沃兹尼亚克曾就读于美国科罗拉多大学，后转学入美国著名高等学府加州大学伯克利分校（UC Berkeley）并获得电机工程及计算机（EECS）本科学位（1987年）。', '83d68fd896ce59784f3fe70174c286be2904cca2', '1533795696', 'test12345', '$2y$10$qC.plMclFwzQLno8K0hM.e9J/WzybHg3MQV.4RGo6PulbG4WODT7m', '0', '987', '456', '789', 'ovOqW', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('21', '1', '1', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '', 'fd83ca5379ca29332d1c26f69737d080843b4f7a', '1535698103', '', '$2y$10$MfckrDWvOEY8btQxE77f7emq6bO/J/6sdVrOJmAZi6Q9Y7kjYjAUC', '0', '987', '456', '789', 'UM9Cg', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('22', '1', '0', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '1', '', '', '', 'cd69089bea5af15192e10ce17be7d4939eb02bb7', '1534930339', '学生1', '$2y$10$UUq2iWy3YsdGQ4sV69hHAOiwvmVmjooSRkEuGL8qvwHnsq1roeMye', '0', '987', '456', '789', 'ttVm5', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('23', '1', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '', '54743ce1e84beb71df2f65b357912ed6a3726341', '1534930339', 'ab1234', '$2y$10$ibvb/b7qWQwZMT0rDIaOHOW5vQ0Yq/f7c9B1/dB9iFwWYUBgEPehi', '0', '987', '456', '789', '0U07J', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('24', '1', '0', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '', 'b616164e6ce937e8debb6345783a9746ebcd1e5c', '1533716336', 'a123456', '$2y$10$zE99bwBDcNI1ERJaZ/wbieLGv2RFwhKyH7WCwedAI2D7Kyu5oP7XC', '0', '987', '456', '789', 'qSccu', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('25', '2', '0', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', 'e041209f65ee41db866c83471f28826550e188be', '1534840774', '还还受到激发', '$2y$10$SBqV9gQCS.297xXVMvjOmugZUS7Cn8tQLetmzAvBAUpMqnXd/qaKS', '0', '987', '456', '789', 'GpV2V', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('26', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '教授', '牛津大学', '', '', '', '0', '0', '', '0', '987', '456', '789', '', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('27', '2', '0', '15', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '教授', '北京大学', '', '', '', '0', '', '', '0', '987', '456', '789', '', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('28', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '教授', '明朝', '', '', '', '0', '', '', '0', '987', '456', '789', '', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('29', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '教授', '南京大学', '', '', '', '0', '', '', '0', '987', '456', '789', '', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('30', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '教授', '南京大学', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '0', '马大勇', '', '0', '987', '456', '789', '', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('31', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '教授', '南京大学', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '0', 'madayong', '', '0', '987', '456', '789', '', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('32', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '教授', '南京大学', '', '', '356a192b7913b04c54574d18c28d46e6395428ab', '0', 'madayong1', '', '0', '987', '456', '789', '', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('33', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '教授', '南京大学', '', '', '356a192b7913b04c54574d18c28d46e6395428ab', '0', 'madayong2', '', '0', '987', '456', '789', '', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('34', '2', '0', '14', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '教授', '南京大学', '', '', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0', 'madayong3', '', '0', '987', '456', '789', '', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('35', '2', '0', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', 'c1f03efbc8a2aa2b037ea078a2c974775bde1097', '1535512152', '俄官方', '$2y$10$jYu/W6GNDsub8yUc8cT5F.yl5wMzqOgmPtJeTNTg3zmC24pZP63lS', '0', '987', '456', '789', 'yXcx1', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('36', '2', '0', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '老师', '', '', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '0cc68c7c6a4a863bfa720601653f77621089d836', '1535522285', '小小', '$2y$10$3GGCqOXyN/fqENxc8vZCTedVVuUtTTjn5zihJfyebL1xN1BxJQ9H6', '0', '987', '456', '789', 'XRJYV', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('37', '1', '1', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '', '5786e99bd1330f517ad80422cffc6e283c83517c', '1535678043', '', '', '0', '987', '456', '789', 'ezici', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('6', '1', '134', '1', 'zhangchun', 'http://192.168.1.231:9334/2,014f95af74ca', '', '', '', '', '8a85fec69157588db0f7841af9fc4af944211f3f', '1538102269', '', '', '0', '', '456', '789', '6u9oU', '1', '0', '1');
INSERT INTO `mooc_user` VALUES ('39', '1', '169', '1', 'yyyyy', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;', '4ec6aa2c7a282c79e48e8d46ddd598b183184b69', '1538114256', '发士大夫', '', '1', '999', '456', '123@qq.com', 'xlu2Q', '1', '0', '1');
INSERT INTO `mooc_user` VALUES ('40', '1', '170', '1', '啊', 'http://192.168.1.231:9334/6,011e1ca508cb', '44444', '', '', '1有y1', 'ba2beb1a9384b3626507d3ce798cae96a8e286b5', '1538102528', '', '', '0', '101040100', '135464788954', '123459996@qq.com', 'pSyYp', '1', '4', '3');
INSERT INTO `mooc_user` VALUES ('41', '2', '0', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '老师666', '', '南开', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;的萨芬&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', 'f7f5386384b8118e07b5e8599cb2242eab305a52', '1536123080', '老师测试', '$2y$10$3Hx3pOR8m4tz.787b0IhqekYbTdwHrzERJWeA6LHaKFEhyViAonoK', '0', '987', '456', '789', 'RLpkE', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('42', '2', '0', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;', '3da9cfca4d20eba8aadc5181a3382a42b5623519', '1536123109', '方式打开就', '$2y$10$hS7pVmOIuatTV9Kh5xeqs.yfJpXXbBEhmKf76tjiDVK1xszgtJhQ2', '0', '987', '456', '789', 'nkHpR', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('43', '2', '0', '1', 'aaaa', 'http://192.168.1.231:9334/4,01046bf70e52', '', '', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;', '82871ab1efa5ba0a7ba41f43a56fa19d19d4b6f0', '1536123132', '啊付款的理解', '$2y$10$j8qPPE/uqERC386mxWLcuegvhFc2nPyRMJFdklHL3UQBAsi3ZQoGS', '0', '987', '456', '789', 'kaZT3', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('49', '1', '164', '1', '185****3058', 'http://192.168.1.231:9334/3,018f6fee5b1f', '', '', '', '', '24da81e30804afd7ce4ac310d00b68fba082dd52', '1538105238', '', '', '0', '', '', '', 'PZvbG', '1', '0', '1');
INSERT INTO `mooc_user` VALUES ('44', '2', '0', '1', '周老师', 'http://192.168.1.231:9334/4,01bdae0d81c9', '教授', '', '超星集团', '2018年8月云南省文化馆面向社区招考馆办文艺团队，共62支近3000名业余文艺骨干参加考试，经“公平、公正、公开、客观、择优”的评选考试，22支文艺团队1000多名团员纳入云南省文化馆馆办文艺团队规范化、专业化管理。\n\n本场活动为云南省文化馆新招考纳入规范化馆的馆办文艺团队的首场惠民演出，将通过各文艺团队的精品节目组台演出，所有演出节目将坚持“思想性、艺术性、观赏性”的有机统一，为大家献上了一场异彩纷呈的歌舞视听盛宴。演出中将以基层群众通俗易懂、喜闻乐见的艺术形式，如舞蹈、声乐、器乐、戏曲、曲艺等多种艺', 'edd19106e1f5f80fcfdac5bc3d23b3da1ea6d769', '1536284940', 'tiger', '$2y$10$UKV/.KlWoWGfWaSqbvItm./PFndlvmS7OkpBaBBamJwj5aIMPZdWu', '0', '', '', '', 'aln3Z', '1', '2', '0');
INSERT INTO `mooc_user` VALUES ('57', '2', '0', '1', '夏茫', 'http://192.168.1.231:9334/6,01b2ac9e7598', '教授', '', '天才大学', '天才天才天才天才天才天才天才天才天才天才天才天才天才天才天才天才天才', '4da76cfe8f1dcc4247777d55989d4b4fa5ee4f07', '1537865974', 'suikv', '$2y$10$bMqBZS.U2Yc21ADRbhvsDOZ2gYE3zju33xPzKuMRDFldS5UVRzKh2', '0', '', '', '', 'ZKLkg', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('50', '1', '132', '1', '183****0575', '', '', '', '', '', '00ced16a48034a58209c932d0527e70cbc47b3a1', '1538017500', '', '', '0', '', '', '', '4nGfW', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('46', '2', '0', '1', 'zhangchun', 'http://192.168.1.231:9334/3,011f89bd81a6', '', '', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n&lt;p&gt;放假啊的手机哦我饿&lt;/p&gt;\n&lt;/body&gt;\n&lt;/html&gt;', 'f40cf6406fc6ae1ecb7ef6a5e0f5994905b14cc6', '1538106297', 'zhangchun', '$2y$10$0UJhyREu.DD5rthWo5eyouBwyhtW9ENE6XxP4CTodNAovhLRp0XhC', '0', '', '', '', 'gP7lp', '1', '5', '5');
INSERT INTO `mooc_user` VALUES ('47', '2', '0', '1', 'jiafan', 'http://192.168.1.231:9334/3,011f89bd81a6', '老师', '', '', '长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介长简介', 'a626898c4cb75476670a7b6634a7b96ff7a79dac', '1538117454', 'jiafan', '$2y$10$IWQml0ascqGjSjVUtokCe.xLx4GXcrBy1K.KA.y6Q.2keiBSFkL1G', '0', '101060101', '', '', 'sfeAw', '1', '4', '1');
INSERT INTO `mooc_user` VALUES ('48', '2', '0', '1', 'chenge', 'http://192.168.1.231:9334/5,01216c734126', '', '', '', '&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n&lt;head&gt;\n&lt;/head&gt;\n&lt;body&gt;\n\n&lt;/body&gt;\n&lt;/html&gt;', '45f18c96872c5a2f121889a589793566505394df', '1537319633', 'chenge', '$2y$10$9xIcFlKu3flpkbxFJxLObeRfepxqQQnV4KCktmRxzKbc6GlHClfJ2', '0', '', '', '', 'FN6ia', '1', '0', '1');
INSERT INTO `mooc_user` VALUES ('51', '1', '140', '1', '130****8225', '', '', '', '', '', '67eeab6d3bd3c82e159c18836c9e762570626048', '1538018877', '', '', '0', '', '', '', 'cI3iQ', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('59', '2', '0', '1', '马大勇', 'http://192.168.1.231:9334/7,01bee6db37ed', '教授', '', '天津大学', '马大勇，天津大学人文与历史院教授，30年人文历史教学经验，著有一系列相关人文著作。\n马大勇，天津大学人文与历史院教授，30年人文历史教学经验，著有一系列相关人文著作。\n马大勇，天津大学人文与历史院教授，30年人文历史教学经验，著有一系列相关人文著作。', '4e9f75f1ad1e2bae28cbe05241e2f086ea015e12', '1538014695', 'tiger01', '$2y$10$DubYLR7G.td2zygCFRXCJueP/6VrslQMAeIOyYWK.iQJcJqGI48P6', '0', '', '', '', 'FSEBm', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('52', '1', '139', '1', '185****0118', '', '', '', '', '', '55aa8f64f57733134f1d6df79c0063955a353df0', '1537844278', '', '', '0', '101010100', '', '', 'R9BX5', '1', '0', '2');
INSERT INTO `mooc_user` VALUES ('53', '1', '161', '1', '136****0125', 'http://192.168.1.231:9334/5,015c953d0348', '', '', '', '', 'a8120f72b20bcfc2a3b6b8afed9a5397d9425e61', '1537325982', '', '', '0', '101030100', '', '', 'eDQIR', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('54', '1', '136', '1', '159****5311', '', '', '', '', '', '077d923d7a50a9593368b4db79ae703e16a4f6cb', '1537856824', '', '', '0', '', '', '', 'SvyZ6', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('55', '1', '159', '1', '150****2914', 'http://192.168.1.231:9334/7,01a824e5132b', '', '', '', '', '27d3a695c993e867caaac3db057869731a6fc104', '1537864019', '', '', '0', '', '', '', 'yvgUg', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('56', '1', '125', '1', '电脑玩家825', 'http://192.168.1.231:9334/1,01a6e077e865', '', '', '', '', 'c7db9473f8ac5f9a868467edeb0e038caea25125', '1537861436', '', '', '0', '', '', '', 'abghI', '1', '0', '1');
INSERT INTO `mooc_user` VALUES ('58', '2', '0', '1', 'laoshi', '', 'laoshi', '', '', '', '94665373bdf3c58da2ac2ffababbfa3a1566b972', '1537866299', 'laoshi', '$2y$10$GkjE/0ozZQsuNoqWi4O1LuXJ6/OyCC/6ztwUfUYxkzy77JjPczlaq', '0', '', '', '', '6b7lm', '1', '0', '0');
INSERT INTO `mooc_user` VALUES ('60', '1', '135', '1', '182****1079', 'http://192.168.1.231:9334/3,01bf5f9e4945', '', '', '', '', 'fd3b4e352373aea75e7eaeefee7f1bd8260a46b5', '1538017945', '', '', '0', '', '', '', 'WUHYE', '1', '0', '0');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '文化馆id',
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `section_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '问答内容',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `delete_time` int(11) NOT NULL DEFAULT '0' COMMENT '删除时间',
  `page_view` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `like_num` int(11) NOT NULL DEFAULT '0' COMMENT '点赞量',
  `is_top` tinyint(3) NOT NULL DEFAULT '0' COMMENT '1置顶  0不置顶',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态 0未解决 1已解决 2精华',
  `chaola` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '14', '2', '21', '2', '', '????', '1533091611', '0', '16', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('2', '14', '2', '21', '2', '', 'jsajfaosjfasofj?????', '1533092413', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('5', '1', '2', '40', '2', '', '问题1问题问题', '1535004599', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('6', '1', '2', '40', '2', '', '问题1问题问题', '1535004721', '0', '0', '0', '0', '1', '0');
INSERT INTO `question` VALUES ('7', '1', '2', '2240', '2', '', '问题1问题问题', '1535004721', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('8', '1', '2', '40', '2', '', '问题1问题问题', '1535004721', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('9', '1', '0', '40', '0', '', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('10', '1', '0', '40', '0', '', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('11', '1', '0', '40', '0', '', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('12', '1', '0', '40', '0', '', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('13', '1', '0', '40', '0', '', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('14', '1', '0', '40', '0', '', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('15', '1', '0', '40', '0', '', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('16', '1', '4', '6', '47', '', '问题1问题问题', '1533091611', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('17', '1', '4', '6', '47', '', '问题1问题问题', '1536738054', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('18', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('19', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('20', '0', '0', '0', '0', '', '', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('21', '1', '9', '47', '4', '', '&lt;p&gt;大苏打实打实这些&lt;/p&gt;', '1536743869', '1536895984', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('22', '1', '9', '47', '4', '', '&lt;p&gt;阿德亲吻认为发士大夫&lt;/p&gt;', '1536745759', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('23', '1', '9', '47', '4', '', '&lt;p&gt;阿德亲吻认为发士大夫&lt;/p&gt;', '1536745779', '1536833045', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('24', '1', '9', '47', '4', '', '&lt;p&gt;请问请问请问请问&lt;/p&gt;', '1536745908', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('25', '1', '9', '47', '4', '', '&lt;p&gt;阿斯顿全文全文&lt;/p&gt;', '1536745947', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('26', '1', '9', '47', '4', '', '&lt;p&gt;驱蚊器微软问题&lt;/p&gt;', '1536746028', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('27', '1', '9', '47', '4', '天太热我', '&lt;p&gt;tree驱蚊器&lt;/p&gt;', '1536746187', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('28', '1', '30', '47', '71', '天太热我', '&lt;p&gt;tree驱蚊器&lt;/p&gt;', '1536746187', '0', '0', '0', '0', '1', '0');
INSERT INTO `question` VALUES ('29', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536804998', '0', '0', '0', '0', '1', '0');
INSERT INTO `question` VALUES ('30', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805000', '0', '0', '0', '0', '1', '0');
INSERT INTO `question` VALUES ('31', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805004', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('32', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805004', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('33', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805004', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('34', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805005', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('35', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805010', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('36', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805010', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('37', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805011', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('38', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805011', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('39', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805011', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('40', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805011', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('41', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805012', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('42', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805012', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('43', '1', '9', '40', '2', '一个好问题', '&lt;p&gt;这是一个十分优秀的问题提问。 如图&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536804990854967.jpg&quot; title=&quot;1536804990854967.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;求大神解', '1536805013', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('44', '1', '9', '40', '2', '阿斯顿', '&lt;p&gt;阿斯顿 萨大&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536805097231912.jpg&quot; title=&quot;1536805097231912.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;萨大撒萨大&lt;br/&gt', '1536805106', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('45', '1', '9', '40', '2', '阿斯顿', '&lt;p&gt;阿斯顿 萨大&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536805097231912.jpg&quot; title=&quot;1536805097231912.jpg&quot; alt=&quot;index1.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;萨大撒萨大&lt;br/&gt', '1536805113', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('46', '1', '9', '40', '2', '啊啊', '&lt;p&gt;啊实打实&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536826705828547.jpg&quot; title=&quot;1536826705828547.jpg&quot; alt=&quot;index3.jpg&quot;/&gt;阿三打撒撒旦&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;asdsa&l', '1536826720', '0', '0', '0', '0', '0', '1');
INSERT INTO `question` VALUES ('47', '1', '9', '40', '2', '啊阿萨', '&lt;p&gt;爱的说的&lt;br/&gt;&lt;/p&gt;', '1536826822', '0', '0', '0', '0', '3', '0');
INSERT INTO `question` VALUES ('48', '1', '69', '52', '159', '问题1', '&lt;p&gt;这里有很多问题&lt;/p&gt;', '1537322113', '0', '0', '0', '0', '1', '0');
INSERT INTO `question` VALUES ('49', '1', '75', '53', '184', 'womenshi', '&lt;p&gt;dwy&amp;nbsp;&lt;/p&gt;', '1537326107', '0', '0', '0', '0', '1', '0');
INSERT INTO `question` VALUES ('50', '1', '9', '46', '4', '？？？？？？？？', '&lt;p&gt;&lt;span style=&quot;text-decoration: underline; color: rgb(196, 189, 151); font-size: 24px;&quot;&gt;&lt;em&gt;&lt;strong&gt;？？？&lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180920/1537434117406301.jpg&quot', '1537434134', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('51', '1', '9', '46', '4', '搜索', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180920/1537434234186054.png&quot; title=&quot;1537434234186054.png&quot; alt=&quot;u1274.png&quot;/&gt;21232&lt;/p&gt;', '1537434242', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('52', '1', '9', '46', '4', '啊实打实的', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;span style=&quot;color: rgb(196, 189, 151); text-decoration: underline; font-size: 24px;&quot;&gt;&lt;em&gt;&lt;strong&gt;撒大苏打萨达&lt;/strong&gt;&lt;/em&gt;&lt;/span&gt;&lt;img src=&quot;/ueditor/php/upload', '1537434278', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('53', '1', '9', '46', '4', '​给字体加完样式上传的图片就不显示了', '&lt;p&gt;&lt;span style=&quot;font-size: 24px; font-family: 微软雅黑, &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size: 24px; color: rgb(255, 0, 0);&quot;&gt;给字体加完样式上传的图片就不显示了&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&', '1537434337', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('54', '1', '4', '46', '47', '2', '&lt;p&gt;2&lt;/p&gt;', '1537434731', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('55', '1', '4', '46', '47', '我', '&lt;p&gt;我&lt;br/&gt;&lt;/p&gt;', '1537434758', '0', '0', '0', '0', '1', '0');
INSERT INTO `question` VALUES ('56', '1', '8', '56', '60', '啊啊啊', '&lt;p&gt;啊啊啊&lt;br/&gt;&lt;/p&gt;', '1537856110', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('57', '1', '17', '55', '34', '老师你好帅呀', '&lt;p&gt;老师你好帅呀&lt;/p&gt;', '1537858338', '0', '0', '0', '0', '1', '0');
INSERT INTO `question` VALUES ('58', '1', '79', '40', '217', '测试问答123', '&lt;p&gt;啊是大昂是的&lt;img src=&quot;/ueditor/php/upload/image/20180925/1537860634948436.png&quot; title=&quot;1537860634948436.png&quot; alt=&quot;bj.png&quot;/&gt;&lt;/p&gt;', '1537860636', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('59', '1', '79', '40', '217', '测试2', '&lt;p&gt;特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特别特别特别长特', '1537862975', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('60', '1', '9', '40', '2', '啊啊', '&lt;p&gt;大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打撒旦撒大苏打', '1537864960', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('61', '1', '9', '47', '68', '退赛', '&lt;p&gt;退赛退赛退赛退赛退赛退赛退赛退赛退赛退赛退赛退赛退赛退赛退赛&lt;/p&gt;', '1537865577', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('62', '1', '9', '47', '68', '测试', '&lt;p&gt;测试测试测试测试测试测试测试测试测试测试&lt;/p&gt;', '1537865637', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('63', '1', '9', '47', '4', '范德萨', '<p>范德萨个亚特人</p>', '1537866504', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('64', '1', '9', '40', '4', '啊阿萨', '<p>啊实打实啊是大<img src=\"/ueditor/php/upload/image/20180925/1537866829766206.jpg\" title=\"1537866829766206.jpg\" alt=\"index1.jpg\"/></p>', '1537866832', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('65', '1', '9', '40', '2', '测试最新', '<p><img src=\"/ueditor/php/upload/image/20180925/1537869005819241.png\" title=\"1537869005819241.png\" alt=\"fm.png\"/></p>', '1537869008', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('66', '1', '9', '40', '2', '昂是', '<p><img src=\"/ueditor/php/upload/image/20180925/1537869544900246.jpg\" title=\"1537869544900246.jpg\"/></p><p><img src=\"/ueditor/php/upload/image/20180925/1537869544791699.jpg\" title=\"1537869544791699.jpg\"/></p><p><br/></p>', '1537869554', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('67', '1', '9', '40', '2', '啊', '<p>啊</p>', '1537924598', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('68', '1', '17', '40', '34', '测试长数据', '<p><img src=\"/ueditor/php/upload/image/20180926/1537931304182808.jpg\" title=\"1537931304182808.jpg\" alt=\"index3.jpg\"/>测试长数据<img src=\"/ueditor/php/upload/image/20180926/1537931289127684.png\" title=\"1537931289127684.png\" alt=\"fm.png\"/></p><p>测试长数据啊实打实</p>', '1537931312', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('69', '1', '17', '40', '34', '昂是AS ', '<p><img src=\"/ueditor/php/upload/image/20180926/1537931549704047.png\" title=\"1537931549704047.png\"/></p><p><img src=\"/ueditor/php/upload/image/20180926/1537931549497488.jpg\" title=\"1537931549497488.jpg\"/></p><p>AS SA 是啊<br/></p><p>AS&nbsp;</p><p>&nbsp;</p', '1537931570', '0', '0', '0', '0', '0', '0');
INSERT INTO `question` VALUES ('70', '1', '17', '40', '34', '阿大撒', '<p><img src=\"/ueditor/php/upload/image/20180926/1537931690497776.png\" title=\"1537931690497776.png\"/></p><p><img src=\"/ueditor/php/upload/image/20180926/1537931690511289.png\" title=\"1537931690511289.png\"/></p><p><img src=\"/ueditor/php/upload/image/20180926', '1537931695', '0', '0', '0', '0', '0', '1');
INSERT INTO `question` VALUES ('71', '1', '9', '47', '4', '阿三打', '<p><span style=\"color: rgb(149, 179, 215);\"><strong>阿三打啥的<img src=\"/ueditor/php/upload/image/20180928/1538098115675576.png\" title=\"1538098115675576.png\" alt=\"admin.png\"/></strong></span></p>', '1538098117', '0', '0', '0', '0', '0', '1');
INSERT INTO `question` VALUES ('72', '1', '9', '47', '4', '地方', '<p><span style=\"color: rgb(149, 179, 215);\"><strong>地方给<img src=\"/ueditor/php/upload/image/20180928/1538098175886437.png\" title=\"1538098175886437.png\" alt=\"admin.png\"/></strong></span><br/></p>', '1538098181', '0', '0', '0', '0', '0', '1');
INSERT INTO `question` VALUES ('73', '1', '9', '47', '4', '阿三打', '<p><span style=\"color: rgb(84, 141, 212);\">阿德撒旦<img src=\"/ueditor/php/upload/image/20180928/1538098473453866.png\" title=\"1538098473453866.png\" alt=\"admin.png\"/></span></p>', '1538098476', '0', '0', '0', '0', '0', '1');
INSERT INTO `question` VALUES ('74', '1', '9', '47', '4', '上档次', '<p>萨大<img src=\"/ueditor/php/upload/image/20180928/1538098496973624.png\" title=\"1538098496973624.png\" alt=\"admin.png\"/></p>', '1538098499', '0', '0', '0', '0', '0', '1');
INSERT INTO `question` VALUES ('75', '1', '9', '47', '4', '下次', '<p>士大夫<br/></p>', '1538098634', '0', '0', '0', '0', '0', '1');
INSERT INTO `question` VALUES ('76', '1', '9', '47', '4', '阿斯顿', '<p><span style=\"color: rgb(84, 141, 212);\">撒<img src=\"/ueditor/php/upload/image/20180928/1538098818224075.png\" title=\"1538098818224075.png\" alt=\"admin.png\"/></span><br/></p>', '1538098822', '0', '0', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '场馆id',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程id',
  `section_id` int(11) NOT NULL DEFAULT '0' COMMENT '节id',
  `current_time` int(11) NOT NULL DEFAULT '0' COMMENT '当前节的时间',
  `more` text COMMENT '存放用户观看信息的json {section_id:current_time}',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES ('1', '1', '38', '2', '3', '100', '{\"2\":\"50\",\"30\":\"60\"}', '0');
INSERT INTO `schedule` VALUES ('2', '1', '38', '3', '37', '500', '{\"41\":\"30\",\"43\":\"20\",\"49\":\"10\"}', '0');
INSERT INTO `schedule` VALUES ('4', '1', '24', '5', '46', '0', '', '0');
INSERT INTO `schedule` VALUES ('5', '1', '24', '4', '47', '0', '', '0');
INSERT INTO `schedule` VALUES ('6', '1', '24', '15', '48', '0', '', '0');
INSERT INTO `schedule` VALUES ('7', '1', '22', '17', '34', '0', '[{\"34\":0}]', '0');
INSERT INTO `schedule` VALUES ('8', '1', '6', '17', '34', '0', '[{\"34\":0}]', '0');
INSERT INTO `schedule` VALUES ('9', '1', '47', '30', '63', '0', '[{\"63\":0}]', '0');
INSERT INTO `schedule` VALUES ('11', '1', '47', '8', '60', '0', '[{\"60\":0}]', '0');
INSERT INTO `schedule` VALUES ('12', '1', '46', '17', '34', '0', '[{\"34\":0}]', '0');
INSERT INTO `schedule` VALUES ('13', '1', '46', '9', '2', '0', '[{\"2\":0}]', '0');
INSERT INTO `schedule` VALUES ('14', '1', '47', '9', '68', '1081', '[{\"2\":0},{\"68\":\"1081\"}]', '0');
INSERT INTO `schedule` VALUES ('15', '1', '39', '5', '46', '0', '[{\"46\":0}]', '0');
INSERT INTO `schedule` VALUES ('16', '1', '39', '9', '2', '0', '[{\"2\":0}]', '0');
INSERT INTO `schedule` VALUES ('17', '1', '40', '9', '68', '1081', '[{\"4\":\"1081\"},{\"68\":\"1081\"}]', '0');
INSERT INTO `schedule` VALUES ('18', '1', '6', '30', '71', '0', '[{\"71\":0}]', '0');
INSERT INTO `schedule` VALUES ('19', '1', '46', '8', '60', '0', '[{\"60\":0}]', '0');
INSERT INTO `schedule` VALUES ('20', '1', '6', '6', '0', '0', '[[0]]', '0');
INSERT INTO `schedule` VALUES ('21', '1', '6', '9', '4', '103', '[{\"2\":0},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"103\"},{\"4\":\"', '0');
INSERT INTO `schedule` VALUES ('22', '1', '50', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('23', '1', '50', '9', '2', '0', '[{\"2\":0}]', '0');
INSERT INTO `schedule` VALUES ('24', '1', '47', '77', '194', '0', '[{\"194\":0}]', '0');
INSERT INTO `schedule` VALUES ('25', '1', '52', '69', '159', '0', '[{\"159\":0}]', '0');
INSERT INTO `schedule` VALUES ('26', '1', '50', '2', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('27', '1', '48', '68', '154', '0', '[{\"154\":0}]', '0');
INSERT INTO `schedule` VALUES ('28', '1', '50', '69', '159', '0', '[{\"159\":0}]', '0');
INSERT INTO `schedule` VALUES ('29', '1', '53', '75', '184', '0', '[{\"184\":0}]', '0');
INSERT INTO `schedule` VALUES ('30', '1', '48', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('31', '1', '52', '2', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('32', '1', '52', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('33', '1', '52', '9', '2', '59', '[{\"2\":0},{\"2\":\"4\"},\"59\",{\"69\":\"4\"},{\"69\":\"9\"},{\"69\":\"14\"}]', '0');
INSERT INTO `schedule` VALUES ('34', '1', '39', '28', '50', '0', '[{\"50\":0}]', '0');
INSERT INTO `schedule` VALUES ('35', '1', '54', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('36', '1', '54', '9', '2', '0', '[{\"2\":0}]', '0');
INSERT INTO `schedule` VALUES ('37', '1', '46', '7', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('38', '1', '46', '2', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('39', '1', '46', '28', '50', '0', '[{\"50\":0}]', '0');
INSERT INTO `schedule` VALUES ('40', '1', '46', '4', '47', '0', '[{\"47\":0}]', '0');
INSERT INTO `schedule` VALUES ('41', '1', '49', '9', '2', '0', '[{\"2\":0}]', '0');
INSERT INTO `schedule` VALUES ('42', '1', '49', '68', '154', '0', '[{\"154\":0}]', '0');
INSERT INTO `schedule` VALUES ('43', '1', '49', '2', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('44', '1', '49', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('45', '1', '49', '8', '60', '0', '[{\"60\":0}]', '0');
INSERT INTO `schedule` VALUES ('46', '1', '49', '4', '47', '0', '[{\"47\":0}]', '0');
INSERT INTO `schedule` VALUES ('47', '1', '47', '78', '201', '1081', '[{\"201\":\"1081\"}]', '0');
INSERT INTO `schedule` VALUES ('48', '1', '6', '78', '201', '0', '[{\"201\":0}]', '0');
INSERT INTO `schedule` VALUES ('49', '1', '47', '79', '222', '57', '[{\"217\":0},{\"222\":\"4\"},{\"222\":\"9\"},{\"222\":\"13\"},{\"222\":\"18\"},{\"222\":\"23\"},{\"222\":\"28\"},{\"222\":\"33\"},{\"222\":\"38\"},{\"222\":\"43\"},{\"222\":\"48\"},{\"222\":\"53\"},{\"222\":\"57\"}]', '0');
INSERT INTO `schedule` VALUES ('50', '1', '52', '80', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('51', '1', '54', '81', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('52', '1', '52', '4', '47', '50', '[{\"47\":0},{\"47\":\"4\"},{\"47\":\"9\"},{\"47\":\"14\"},{\"47\":\"19\"},{\"47\":\"24\"},{\"47\":\"29\"},{\"47\":\"34\"},{\"47\":\"39\"},{\"47\":\"45\"},{\"47\":\"50\"}]', '0');
INSERT INTO `schedule` VALUES ('53', '1', '52', '75', '184', '0', '[{\"184\":0}]', '0');
INSERT INTO `schedule` VALUES ('54', '1', '52', '5', '46', '0', '[{\"46\":0}]', '0');
INSERT INTO `schedule` VALUES ('55', '1', '55', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('56', '1', '52', '8', '60', '58', '[{\"60\":0},{\"60\":\"4\"},{\"60\":\"9\"},{\"60\":\"14\"},{\"60\":\"19\"},{\"60\":\"23\"},{\"60\":\"28\"},{\"60\":\"37\"},{\"60\":\"45\"},{\"60\":\"50\"},{\"60\":\"56\"},{\"60\":\"6\"},{\"60\":\"11\"},{\"60\":\"16\"},{\"60\":\"21\"},{\"60\":\"25\"},{\"60\":\"37\"},{\"60\":\"48\"},{\"60\":\"53\"},{\"60\":\"58\"}]', '0');
INSERT INTO `schedule` VALUES ('57', '1', '54', '28', '50', '4', '[{\"50\":0},{\"50\":\"4\"}]', '0');
INSERT INTO `schedule` VALUES ('58', '1', '56', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('59', '1', '56', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('60', '1', '56', '8', '60', '43', '[{\"60\":0},{\"60\":\"4\"},{\"60\":\"9\"},{\"60\":\"14\"},{\"60\":\"19\"},{\"60\":\"24\"},{\"60\":\"29\"},{\"60\":\"34\"},{\"60\":\"39\"},{\"60\":\"44\"},{\"60\":\"49\"},{\"60\":\"54\"},{\"60\":\"59\"},{\"60\":\"4\"},{\"60\":\"9\"},{\"60\":\"14\"},{\"60\":\"19\"},{\"60\":\"24\"},{\"60\":\"29\"},{\"60\":\"34\"},{\"60\":\"38\"},{\"60\":\"43', '0');
INSERT INTO `schedule` VALUES ('61', '1', '54', '2', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('62', '1', '55', '17', '34', '58', '[{\"34\":0},{\"34\":\"13\"},{\"34\":\"18\"},{\"34\":\"23\"},{\"34\":\"28\"},{\"34\":\"33\"},{\"34\":\"38\"},{\"34\":\"43\"},{\"34\":\"48\"},{\"34\":\"53\"},{\"34\":\"58\"}]', '0');
INSERT INTO `schedule` VALUES ('63', '1', '40', '79', '217', '165', '[{\"217\":\"165\"}]', '0');
INSERT INTO `schedule` VALUES ('64', '1', '56', '79', '218', '19', '[{\"217\":0},{\"217\":\"1074\"},{\"217\":\"1079\"},{\"218\":\"4\"},{\"218\":\"9\"},{\"218\":\"14\"},{\"218\":\"19\"}]', '0');
INSERT INTO `schedule` VALUES ('65', '1', '52', '3', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('66', '1', '52', '17', '66', '39', '[{\"34\":0},{\"34\":\"4\"},{\"66\":\"4\"},{\"66\":\"9\"},{\"66\":\"14\"},{\"66\":\"19\"},{\"66\":\"24\"},{\"66\":\"29\"},{\"66\":\"34\"},{\"66\":\"39\"},{\"66\":\"44\"},{\"66\":\"49\"},{\"66\":\"54\"},{\"66\":\"59\"},{\"66\":\"4\"},{\"66\":\"9\"},{\"66\":\"14\"},{\"66\":\"19\"},{\"66\":\"24\"},{\"66\":\"29\"},{\"66\":\"34\"},{\"66\":\"39\"', '0');
INSERT INTO `schedule` VALUES ('67', '1', '56', '3', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('68', '1', '55', '82', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('69', '1', '56', '82', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('70', '1', '56', '82', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('71', '1', '56', '82', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('72', '1', '56', '82', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('73', '1', '56', '17', '34', '0', '[{\"34\":0}]', '0');
INSERT INTO `schedule` VALUES ('74', '1', '40', '17', '34', '0', '[{\"34\":0}]', '0');
INSERT INTO `schedule` VALUES ('75', '1', '40', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('76', '1', '40', '82', '2', '0', '', '0');
INSERT INTO `schedule` VALUES ('77', '1', '6', '9', '2', '0', '[{\"2\":0}]', '0');
INSERT INTO `schedule` VALUES ('78', '1', '6', '82', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('79', '1', '40', '23', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('80', '1', '52', '98', '291', '4', '[{\"291\":\"4\"},{\"292\":\"27\"}]', '0');
INSERT INTO `schedule` VALUES ('81', '1', '50', '6', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('82', '1', '60', '82', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('83', '1', '6', '98', '291', '63', '', '0');
INSERT INTO `schedule` VALUES ('84', '1', '60', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('85', '1', '60', '8', '60', '0', '[{\"60\":0}]', '0');
INSERT INTO `schedule` VALUES ('86', '1', '51', '2', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('87', '14', '26', '98', '291', '4', '{\"291\":0}', '0');
INSERT INTO `schedule` VALUES ('88', '1', '47', '98', '290', '0', '[{\"290\":0}]', '0');
INSERT INTO `schedule` VALUES ('89', '1', '40', '78', '201', '0', '[{\"201\":0}]', '0');
INSERT INTO `schedule` VALUES ('90', '1', '40', '98', '290', '0', '[{\"290\":0}]', '0');
INSERT INTO `schedule` VALUES ('91', '14', '26', '78', '201', '4', '{\"201\":0}', '0');
INSERT INTO `schedule` VALUES ('92', '1', '51', '1', '0', '0', '', '0');
INSERT INTO `schedule` VALUES ('93', '1', '40', '80', '227', '0', '[{\"227\":0}]', '0');
INSERT INTO `schedule` VALUES ('94', '1', '49', '98', '290', '0', '[{\"290\":0}]', '0');
INSERT INTO `schedule` VALUES ('95', '1', '47', '100', '298', '0', '[{\"298\":0}]', '0');

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '课程节ID',
  `chapter_id` int(10) NOT NULL COMMENT '课程章ID',
  `section_title` varchar(40) NOT NULL COMMENT '课程节标题',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '节排序',
  `video_main` varchar(255) NOT NULL COMMENT '视频主地址',
  `video_backup` varchar(255) NOT NULL DEFAULT '' COMMENT '视频备用地址',
  `video_time` int(10) NOT NULL COMMENT '视频时长',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 0不可用 1可用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=303 DEFAULT CHARSET=utf8 COMMENT='课程节表';

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES ('2', '1', '课时1', '10000', '112132', '234234', '0', '', '1');
INSERT INTO `section` VALUES ('3', '1', '课时2', '10000', '233432规划和国际环境', '4234234', '43243', '', '1');
INSERT INTO `section` VALUES ('4', '1', '课时3a', '3', 'http://mooc.com/upload/20180925/a97a986319c10d7bb6d63c4b095d9126.mp4', 'dsadsadasdsad', '1081', '', '1');
INSERT INTO `section` VALUES ('69', '38', 'eeeejjjjjjj', '69', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('68', '1', 'rrrrtttt如4', '68', 'http://mooc.com/upload/20180925/a97a986319c10d7bb6d63c4b095d9126.mp4', '', '0', '', '1');
INSERT INTO `section` VALUES ('9', '6', '课时1-1', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('73', '46', '第一节', '73', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('10', '6', '课时1-1', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('11', '6', 'dsadasds', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('12', '6', 'dsadasds', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('14', '6', 'fdsfsdfdsf', '14', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('53', '29', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('54', '30', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('34', '19', '65465654', '34', 'http://192.168.1.230:9334/5,32faa71bd0', 'http://192.168.1.230:9334/2,3441976f5c', '60', '', '1');
INSERT INTO `section` VALUES ('35', '20', '154154155', '35', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('36', '20', '652154545', '36', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('52', '29', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('51', '29', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('50', '29', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('61', '32', '第一课时', '61', 'http:www.baidu.com', '', '0', '', '1');
INSERT INTO `section` VALUES ('62', '32', '第二课时', '62', 'http://mooc.com/upload/20180807/0b61556897583aa6f83ec4ca9cc37b83.mp4', '', '0', '', '1');
INSERT INTO `section` VALUES ('46', '24', '多舒服啊', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('47', '25', '发vd ', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('48', '26', '放大', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('55', '30', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('56', '30', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('57', '30', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('60', '5', '第一课时', '60', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('70', '38', 'rrrrrrr', '70', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('64', '34', '1.是快', '64', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('65', '35', '123456', '65', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('66', '19', 'fdsa ', '66', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('71', '33', '发达', '71', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('72', '42', '第一节', '72', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('74', '48', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('75', '48', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('76', '48', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('77', '48', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('78', '48', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('79', '49', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('80', '49', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('81', '49', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('82', '49', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('83', '49', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('84', '50', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('85', '50', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('86', '50', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('87', '50', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('88', '50', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('89', '51', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('90', '51', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('91', '51', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('92', '51', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('93', '51', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('94', '52', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('95', '52', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('96', '52', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('97', '52', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('98', '52', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('99', '53', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('100', '53', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('101', '53', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('102', '53', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('103', '53', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('104', '54', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('105', '54', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('106', '54', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('107', '54', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('108', '54', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('109', '55', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('110', '55', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('111', '55', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('112', '55', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('113', '55', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('114', '56', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('115', '56', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('116', '56', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('117', '56', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('118', '56', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('119', '57', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('120', '57', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('121', '57', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('122', '57', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('123', '57', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('124', '58', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('125', '58', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('126', '58', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('127', '58', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('128', '58', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('129', '59', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('130', '59', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('131', '59', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('132', '59', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('133', '59', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('134', '60', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('135', '60', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('136', '60', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('137', '60', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('138', '60', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('139', '61', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('140', '61', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('141', '61', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('142', '61', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('143', '61', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('144', '62', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('145', '62', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('146', '62', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('147', '62', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('148', '62', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('149', '63', '课程1-1', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('150', '63', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('151', '63', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('152', '63', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('153', '63', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('154', '64', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('155', '64', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('156', '64', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('157', '64', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('158', '64', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('159', '65', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('160', '65', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('161', '65', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('162', '65', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('163', '65', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('164', '68', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('165', '68', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('166', '68', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('167', '68', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('168', '68', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('169', '69', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('170', '69', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('171', '69', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('172', '69', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('173', '69', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('174', '70', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('175', '70', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('176', '70', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('177', '70', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('178', '70', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('179', '71', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('180', '71', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('181', '71', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('182', '71', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('183', '71', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('184', '72', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('185', '72', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('186', '72', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('187', '72', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('188', '72', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('189', '73', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('190', '73', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('191', '73', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('192', '73', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('193', '73', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('194', '74', '第一课时123', '10000', 'http://mooc.com/upload/20180921/a0b4c6bd59ca49a8b5b1d21a30d997d5.mp4', '', '1081', '', '1');
INSERT INTO `section` VALUES ('195', '74', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('196', '74', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('197', '74', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('198', '74', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('200', '67', '发达', '200', '的身份', '', '0', '', '1');
INSERT INTO `section` VALUES ('201', '76', '第一课时', '10000', 'http://mooc.com/upload/20180921/591c74acca8844a9524484163f8457bf.mp4', '', '1081', '', '1');
INSERT INTO `section` VALUES ('202', '76', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('203', '76', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('204', '76', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('205', '76', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('206', '76', '第六课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('207', '76', '第七课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('208', '76', '第八课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('209', '77', '第一课时', '10000', 'http://mooc.com/upload/20180921/6118969182d92b4b0067546432c2107c.mp4', '', '1081', '', '1');
INSERT INTO `section` VALUES ('210', '77', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('211', '77', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('212', '77', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('213', '77', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('214', '77', '第六课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('215', '77', '第七课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('216', '77', '第八课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('217', '78', '第一课时', '10000', 'http://mooc.com/upload/20180925/465e7b6f53b20779cb7bef496c7fef16.mp4', '', '1081', '', '1');
INSERT INTO `section` VALUES ('218', '78', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('219', '78', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('220', '78', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('221', '78', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('222', '79', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('223', '79', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('224', '79', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('225', '79', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('226', '79', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('227', '80', '范德萨', '227', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('228', '81', '范德萨方法啊', '228', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('229', '83', 'fg fg', '229', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('230', '85', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('231', '85', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('232', '85', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('233', '85', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('234', '85', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('235', '86', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('236', '86', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('237', '86', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('238', '86', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('239', '86', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('240', '87', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('241', '87', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('242', '87', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('243', '87', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('244', '87', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('245', '88', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('246', '88', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('247', '88', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('248', '88', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('249', '88', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('250', '89', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('251', '89', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('252', '89', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('253', '89', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('254', '89', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('255', '90', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('256', '90', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('257', '90', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('258', '90', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('259', '90', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('260', '91', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('261', '91', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('262', '91', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('263', '91', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('264', '91', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('265', '92', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('266', '92', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('267', '92', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('268', '92', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('269', '92', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('270', '93', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('271', '93', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('272', '93', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('273', '93', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('274', '93', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('275', '94', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('276', '94', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('277', '94', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('278', '94', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('279', '94', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('280', '95', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('281', '95', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('282', '95', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('283', '95', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('284', '95', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('285', '96', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('286', '96', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('287', '96', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('288', '96', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('289', '96', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('290', '97', '历史学是什么？', '290', 'http://s1.ananas.chaoxing.com/video/c1/53b368dba31069a533d7ba42/sd.mp4', '', '2000', '', '1');
INSERT INTO `section` VALUES ('291', '97', '历史学研究的方法', '291', 'http://s1.ananas.chaoxing.com/video/f1/53b37d17a31069a533d7bbf8/sd.mp4', '', '1466', '', '1');
INSERT INTO `section` VALUES ('292', '98', '文献分类——历史史料、纪传体、编年体', '292', 'http://s1.ananas.chaoxing.com/video/47/53b37caba31069a533d7bbee/sd.mp4', '', '1494', '', '1');
INSERT INTO `section` VALUES ('293', '99', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('294', '99', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('295', '99', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('296', '99', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('297', '99', '第五课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('298', '100', '第一课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('299', '100', '第二课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('300', '100', '第三课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('301', '100', '第四课时', '10000', '', '', '0', '', '1');
INSERT INTO `section` VALUES ('302', '100', '第五课时', '10000', '', '', '0', '', '1');

-- ----------------------------
-- Table structure for section_exam
-- ----------------------------
DROP TABLE IF EXISTS `section_exam`;
CREATE TABLE `section_exam` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '试题ID',
  `section_id` int(10) NOT NULL COMMENT '节ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课程节考试表';

-- ----------------------------
-- Records of section_exam
-- ----------------------------

-- ----------------------------
-- Table structure for section_note
-- ----------------------------
DROP TABLE IF EXISTS `section_note`;
CREATE TABLE `section_note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '场馆ID',
  `course_id` int(11) NOT NULL DEFAULT '0' COMMENT '课程ID',
  `section_id` int(11) NOT NULL DEFAULT '0' COMMENT '课时ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '笔记',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:自己创建    2:采集他人',
  `collect_from` int(11) NOT NULL DEFAULT '0' COMMENT '被采集的note_id',
  `collect_num` int(11) NOT NULL,
  `page_view` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  `like_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `delete_time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of section_note
-- ----------------------------
INSERT INTO `section_note` VALUES ('1', '14', '2', '2', '13', '', '收获', '1', '0', '0', '14', '0', '1534157986', '0');
INSERT INTO `section_note` VALUES ('2', '14', '17', '34', '13', '', '收获', '1', '0', '0', '0', '0', '1533089869', '0');
INSERT INTO `section_note` VALUES ('3', '14', '17', '34', '13', '', '收获收获收获收获收获收获', '1', '0', '0', '0', '0', '1533089902', '0');
INSERT INTO `section_note` VALUES ('4', '14', '10', '35', '13', '', '收获收获收获收获收获收获', '1', '0', '0', '0', '0', '1533089934', '0');
INSERT INTO `section_note` VALUES ('6', '14', '10', '36', '13', '', '48416648fasdfdsg', '2', '7', '1', '0', '1', '1533090222', '0');
INSERT INTO `section_note` VALUES ('7', '14', '10', '36', '21', '', '48416648fasdfdsg', '1', '0', '1', '0', '0', '1533090764', '1535005767');
INSERT INTO `section_note` VALUES ('8', '1', '19', '41', '22', '', 'dgf', '1', '0', '1', '149', '0', '1533882650', '0');
INSERT INTO `section_note` VALUES ('9', '1', '2', '3', '40', '', '课程1很好', '1', '8', '0', '41', '0', '1533882692', '0');
INSERT INTO `section_note` VALUES ('10', '1', '2', '2', '40', '', '课程1很好fdsa ', '1', '0', '0', '7', '2', '1533882745', '0');
INSERT INTO `section_note` VALUES ('11', '1', '2', '3', '40', '', '撒酒疯的咯军事家欸哦推荐独家试爱付款了', '1', '0', '0', '0', '1', '1533882761', '0');
INSERT INTO `section_note` VALUES ('12', '14', '10', '36', '40', '', '48416648fasdfdsg', '2', '6', '0', '0', '1', '1534930354', '0');
INSERT INTO `section_note` VALUES ('13', '1', '2', '2', '40', '', '笔记123456笔记笔记笔记', '1', '22', '0', '4', '1', '1535004243', '0');
INSERT INTO `section_note` VALUES ('14', '1', '19', '36', '40', '', 'test1', '1', '0', '0', '0', '1', '0', '0');
INSERT INTO `section_note` VALUES ('15', '14', '10', '36', '40', '', 'test2', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('16', '1', '2', '36', '40', '', 'test3', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('17', '1', '2', '36', '40', '', 'test4', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('18', '1', '2', '36', '40', '', 'test5', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `section_note` VALUES ('19', '14', '17', '36', '22', '', 'test6', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('20', '1', '19', '36', '22', '', 'test7', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('21', '14', '2', '36', '22', '', 'test8', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('22', '14', '19', '36', '22', '', 'test9', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('23', '14', '10', '36', '22', '', 'test10', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('24', '1', '19', '36', '22', '', 'test11', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('25', '1', '10', '36', '22', '', 'test12', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('26', '14', '17', '36', '22', '', 'test13', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('27', '14', '17', '36', '22', '', 'test14', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('28', '14', '17', '36', '22', '', 'test15', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('29', '1', '2', '36', '22', '', 'test16', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('30', '1', '17', '36', '22', '', 'test17', '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `section_note` VALUES ('31', '1', '17', '36', '22', '', 'test18', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('32', '1', '2', '36', '22', '', 'test19', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('33', '14', '2', '36', '22', '', 'test20', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('34', '14', '2', '36', '22', '', 'test21', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('35', '1', '19', '36', '22', '', 'test22', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('36', '1', '19', '36', '22', '', 'test23', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('37', '14', '2', '36', '22', '', 'test24', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('38', '1', '10', '36', '22', '', 'test25', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('39', '14', '10', '36', '22', '', 'test26', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('40', '1', '2', '36', '22', '', 'test27', '1', '0', '2', '7', '0', '0', '0');
INSERT INTO `section_note` VALUES ('41', '1', '2', '36', '22', '', 'test28', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('42', '1', '2', '36', '22', '', 'test29', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('43', '14', '2', '36', '22', '', 'test30', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('44', '1', '19', '36', '22', '', 'test31', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('45', '14', '19', '36', '22', '', 'test32', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('46', '14', '17', '36', '22', '', 'test33', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('47', '1', '19', '36', '22', '', 'test34', '1', '0', '0', '2', '0', '0', '0');
INSERT INTO `section_note` VALUES ('48', '1', '2', '36', '22', '', 'test35', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('49', '14', '10', '36', '22', '', 'test36', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('50', '14', '19', '36', '22', '', 'test37', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('51', '14', '2', '36', '22', '', 'test38', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('52', '1', '2', '36', '22', '', 'test39', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('53', '1', '10', '36', '22', '', 'test40', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('54', '1', '10', '36', '22', '', 'test41', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('55', '1', '10', '36', '22', '', 'test42', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('56', '1', '19', '36', '22', '', 'test43', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('57', '1', '10', '36', '22', '', 'test44', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('58', '14', '2', '36', '22', '', 'test45', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('59', '14', '2', '36', '22', '', 'test46', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('60', '1', '10', '36', '22', '', 'test47', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('61', '14', '10', '36', '22', '', 'test48', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('62', '14', '17', '36', '22', '', 'test49', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('63', '14', '2', '36', '22', '', 'test50', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('64', '14', '19', '36', '22', '', 'test51', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('65', '14', '19', '36', '22', '', 'test52', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('66', '14', '19', '36', '22', '', 'test53', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('67', '14', '19', '36', '22', '', 'test54', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('68', '14', '17', '36', '22', '', 'test55', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('69', '14', '17', '36', '22', '', 'test56', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('70', '1', '17', '36', '22', '', 'test57', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('71', '14', '17', '36', '22', '', 'test58', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('72', '1', '2', '36', '22', '', 'test59', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('73', '14', '2', '36', '22', '', 'test60', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('74', '1', '17', '36', '22', '', 'test61', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('75', '14', '17', '36', '22', '', 'test62', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('76', '1', '2', '36', '22', '', 'test63', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('77', '1', '19', '36', '22', '', 'test64', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('78', '14', '17', '36', '22', '', 'test65', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('79', '1', '10', '36', '22', '', 'test66', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('80', '14', '17', '36', '22', '', 'test67', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('81', '14', '19', '36', '22', '', 'test68', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('82', '14', '17', '36', '22', '', 'test69', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('83', '14', '19', '36', '22', '', 'test70', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('84', '14', '10', '36', '22', '', 'test71', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('85', '1', '2', '36', '22', '', 'test72', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('86', '14', '10', '36', '22', '', 'test73', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('87', '14', '17', '36', '22', '', 'test74', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('88', '14', '2', '36', '22', '', 'test75', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('89', '1', '10', '36', '22', '', 'test76', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('90', '1', '10', '36', '22', '', 'test77', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('91', '1', '19', '36', '22', '', 'test78', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('92', '14', '10', '36', '22', '', 'test79', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('93', '14', '10', '36', '22', '', 'test80', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('94', '1', '19', '36', '22', '', 'test81', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('95', '1', '19', '36', '22', '', 'test82', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('96', '1', '17', '36', '22', '', 'test83', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('97', '1', '2', '36', '22', '', 'test84', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('98', '14', '10', '36', '22', '', 'test85', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('99', '1', '2', '36', '22', '', 'test86', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('100', '14', '2', '36', '22', '', 'test87', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('101', '14', '17', '36', '22', '', 'test88', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('102', '14', '2', '36', '22', '', 'test89', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('103', '1', '10', '36', '22', '', 'test90', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('104', '1', '17', '36', '22', '', 'test91', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('105', '1', '17', '36', '22', '', 'test92', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('106', '14', '10', '36', '22', '', 'test93', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('107', '14', '2', '36', '22', '', 'test94', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('108', '14', '19', '36', '22', '', 'test95', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('109', '1', '19', '36', '22', '', 'test96', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('110', '14', '2', '36', '22', '', 'test97', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('111', '1', '17', '36', '22', '', 'test98', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('112', '14', '10', '36', '22', '', 'test99', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `section_note` VALUES ('113', '1', '30', '71', '6', '可是', '打发发生的沟通', '1', '0', '0', '1', '1', '1534157986', '0');
INSERT INTO `section_note` VALUES ('114', '1', '30', '71', '36', '范德萨', '打发发生的沟通', '1', '0', '0', '0', '1', '1536632507', '0');
INSERT INTO `section_note` VALUES ('115', '1', '9', '4', '47', '笔记1', '&lt;p&gt;阿瑟东撒的&lt;img src=&quot;/ueditor/php/upload/image/20180912/1536742152714825.png&quot; title=&quot;1536742152714825.png&quot; alt=&quot;bj.png&quot;/&gt;&lt;/p&gt;', '1', '47', '0', '1', '0', '1536742154', '1536895998');
INSERT INTO `section_note` VALUES ('116', '1', '9', '4', '47', '笔记2', '&lt;p&gt;啊实打实大苏打发生的&lt;/p&gt;', '1', '47', '0', '0', '0', '1536743246', '0');
INSERT INTO `section_note` VALUES ('117', '1', '9', '4', '47', '笔记2', '&lt;p&gt;按时大撒大撒大撒&lt;/p&gt;', '1', '47', '0', '0', '0', '1536743275', '0');
INSERT INTO `section_note` VALUES ('118', '1', '9', '4', '47', '问题1', '&lt;p&gt;阿三倒萨阿斯顿撒旦&lt;/p&gt;', '1', '47', '0', '3', '0', '1536743816', '0');
INSERT INTO `section_note` VALUES ('119', '1', '9', '4', '47', '阿斯顿', '&lt;p&gt;啊实打实&lt;img src=&quot;/ueditor/php/upload/image/20180912/1536748887689882.png&quot; title=&quot;1536748887689882.png&quot; alt=&quot;bj.png&quot;/&gt;&lt;/p&gt;', '1', '47', '0', '4', '1', '1536748889', '0');
INSERT INTO `section_note` VALUES ('120', '1', '9', '4', '47', '阿萨', '&lt;p&gt;啊飒飒阿萨&lt;br/&gt;&lt;/p&gt;', '1', '47', '0', '2', '0', '1536748913', '0');
INSERT INTO `section_note` VALUES ('121', '1', '9', '4', '47', '东撒', '&lt;p&gt;啊实打实萨大萨大&lt;/p&gt;&lt;p style=&quot;text-align: center&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180912/1536749363331428.png&quot; title=&quot;1536749363331428.png&quot; alt=&quot;admin.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;撒旦撒东撒昂是萨大啊实打实 萨大 萨大&lt;br/&gt;&lt;/p&gt;', '1', '47', '0', '5', '1', '1536749373', '0');
INSERT INTO `section_note` VALUES ('122', '1', '9', '4', '47', '阿斯顿', '&lt;p&gt;阿斯顿 啊&lt;img src=&quot;/ueditor/php/upload/image/20180912/1536749428229344.jpg&quot; title=&quot;1536749428229344.jpg&quot; alt=&quot;index3.jpg&quot;/&gt;&lt;/p&gt;', '1', '47', '0', '3', '0', '1536749433', '0');
INSERT INTO `section_note` VALUES ('123', '1', '9', '2', '40', '笔记标题', '&lt;p style=&quot;text-align: left;&quot;&gt;这是个重点这是个重点这是个重点这是个重点这是个重点这是个重点&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536802587758503.jpg&quot; title=&quot;1536802587758503.jpg&quot; alt=&quot;index3.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;这是个重点&lt;br/&gt;&lt;/p&gt;', '1', '40', '0', '0', '0', '1536802617', '0');
INSERT INTO `section_note` VALUES ('124', '1', '9', '2', '40', '笔记2', '&lt;p&gt;阿大撒&lt;img src=&quot;/ueditor/php/upload/image/20180913/1536802673908970.png&quot; title=&quot;1536802673908970.png&quot; alt=&quot;admin.png&quot;/&gt;&lt;/p&gt;&lt;p&gt;阿大撒阿瑟东撒阿瑟东撒阿斯顿阿大撒阿大撒阿瑟东撒阿瑟东撒阿斯顿阿大撒阿大撒阿瑟东撒阿瑟东撒阿斯顿阿大撒阿大撒阿瑟东撒阿瑟东撒阿斯顿阿大撒阿大撒阿瑟东撒阿瑟东撒阿斯顿阿大撒阿大撒阿瑟东撒阿瑟东撒阿斯顿阿大撒阿大撒阿瑟东撒阿瑟东撒阿斯顿阿大撒阿大撒阿瑟东撒阿瑟东撒阿斯顿阿大撒阿大撒阿瑟东撒阿瑟东撒阿斯顿阿大撒&lt;/p&gt;', '1', '40', '0', '29', '0', '1536802687', '0');
INSERT INTO `section_note` VALUES ('125', '1', '9', '2', '47', '地方', '&lt;p&gt;发的&lt;/p&gt;', '1', '47', '7', '180', '3', '1536917301', '0');
INSERT INTO `section_note` VALUES ('126', '1', '75', '184', '53', '我饿叫我空间发 i哦发 i 哦额回复健康护肤 i 我会放声大哭后发货后哈佛年级课程 v', '&lt;p&gt;合肥市 v超级看好 vi 哦毒食品和 vv 出来哦好烦空间相册 vi 舒服；hv hosflsojvxkvhpjhco哦大家说破的家都不惧怕的数据库基础的公司凭借的恐惧哦碰到过的剧开播代购看的剧都接受判决看 v&lt;/p&gt;', '1', '53', '0', '0', '0', '1537326343', '0');
INSERT INTO `section_note` VALUES ('127', '1', '75', '184', '53', '我饿叫我空间发 i哦发 i 哦额回复健康护肤 i 我会放声大哭后发货后哈佛年级课程 v', '&lt;p&gt;合肥市 v超级看好 vi 哦毒食品和 vv 出来哦好烦空间相册 vi 舒服；hv hosflsojvxkvhpjhco哦大家说破的家都不惧怕的数据库基础的公司凭借的恐惧哦碰到过的剧开播代购看的剧都接受判决看 v&lt;/p&gt;', '1', '53', '0', '0', '0', '1537326345', '0');
INSERT INTO `section_note` VALUES ('128', '1', '75', '184', '53', '我饿叫我空间发 i哦发 i 哦额回复健康护肤 i 我会放声大哭后发货后哈佛年级课程 v', '&lt;p&gt;合肥市 v超级看好 vi 哦毒食品和 vv 出来哦好烦空间相册 vi 舒服；hv hosflsojvxkvhpjhco哦大家说破的家都不惧怕的数据库基础的公司凭借的恐惧哦碰到过的剧开播代购看的剧都接受判决看 v&lt;/p&gt;', '1', '53', '0', '0', '0', '1537326346', '0');
INSERT INTO `section_note` VALUES ('129', '1', '75', '184', '53', '我饿叫我空间发 i哦发 i 哦额回复健康护肤 i 我会放声大哭后发货后哈佛年级课程 v', '&lt;p&gt;合肥市 v超级看好 vi 哦毒食品和 vv 出来哦好烦空间相册 vi 舒服；hv hosflsojvxkvhpjhco哦大家说破的家都不惧怕的数据库基础的公司凭借的恐惧哦碰到过的剧开播代购看的剧都接受判决看 v&lt;/p&gt;', '1', '53', '0', '0', '0', '1537326346', '0');
INSERT INTO `section_note` VALUES ('130', '1', '75', '184', '53', '我饿叫我空间发 i哦发 i 哦额回复健康护肤 i 我会放声大哭后发货后哈佛年级课程 v', '&lt;p&gt;合肥市 v超级看好 vi 哦毒食品和 vv 出来哦好烦空间相册 vi 舒服；hv hosflsojvxkvhpjhco哦大家说破的家都不惧怕的数据库基础的公司凭借的恐惧哦碰到过的剧开播代购看的剧都接受判决看 v&lt;/p&gt;', '1', '53', '0', '0', '0', '1537326347', '0');
INSERT INTO `section_note` VALUES ('131', '1', '75', '184', '53', '我饿叫我空间发 i哦发 i 哦额回复健康护肤 i 我会放声大哭后发货后哈佛年级课程 v', '&lt;p&gt;合肥市 v超级看好 vi 哦毒食品和 vv 出来哦好烦空间相册 vi 舒服；hv hosflsojvxkvhpjhco哦大家说破的家都不惧怕的数据库基础的公司凭借的恐惧哦碰到过的剧开播代购看的剧都接受判决看 v&lt;/p&gt;', '1', '53', '0', '0', '0', '1537326348', '0');
INSERT INTO `section_note` VALUES ('132', '1', '75', '184', '53', '我饿叫我空间发 i哦发 i 哦额回复健康护肤 i 我会放声大哭后发货后哈佛年级课程 v', '&lt;p&gt;合肥市 v超级看好 vi 哦毒食品和 vv 出来哦好烦空间相册 vi 舒服；hv hosflsojvxkvhpjhco哦大家说破的家都不惧怕的数据库基础的公司凭借的恐惧哦碰到过的剧开播代购看的剧都接受判决看 v&lt;/p&gt;', '1', '53', '0', '0', '1', '1537326349', '0');
INSERT INTO `section_note` VALUES ('133', '1', '75', '184', '53', '我饿叫我空间发 i哦发 i 哦额回复健康护肤 i 我会放声大哭后发货后哈佛年级课程 v', '&lt;p&gt;合肥市 v超级看好 vi 哦毒食品和 vv 出来哦好烦空间相册 vi 舒服；hv hosflsojvxkvhpjhco哦大家说破的家都不惧怕的数据库基础的公司凭借的恐惧哦碰到过的剧开播代购看的剧都接受判决看 v&lt;/p&gt;', '1', '53', '0', '0', '0', '1537326349', '0');
INSERT INTO `section_note` VALUES ('134', '1', '75', '184', '53', '我饿叫我空间发 i哦发 i 哦额回复健康护肤 i 我会放声大哭后发货后哈佛年级课程 v', '&lt;p&gt;合肥市 v超级看好 vi 哦毒食品和 vv 出来哦好烦空间相册 vi 舒服；hv hosflsojvxkvhpjhco哦大家说破的家都不惧怕的数据库基础的公司凭借的恐惧哦碰到过的剧开播代购看的剧都接受判决看 v&lt;/p&gt;', '1', '53', '0', '0', '0', '1537326350', '0');
INSERT INTO `section_note` VALUES ('135', '1', '75', '184', '53', 'odiwpj看到品牌法兰克没 v 了手机拍v 大家哦时间哦破碎机看 v 句哦时间内看 v 哦大家和 v', '&lt;p&gt;放松就哦 vs 开会和封建社会佛山科举考试哦局开始 v 欢送会哈佛好和 v 手机号还是说 v 从 v 继续送货时间后死shshiso你快结束健康就是哦分会场还是看好即使哦凇&lt;/p&gt;', '1', '53', '0', '0', '0', '1537326482', '0');
INSERT INTO `section_note` VALUES ('136', '1', '75', '184', '53', '开发票数据来看山坡机场接送空间凇 i 家你开始凇 i和数据凇好吃凇 i和措施', '&lt;p&gt;就是破届佛山警方破碎街拍时刻裁判小长假v 的设计哦时间和粉丝哦好还送话费 v计划 v 搜狐v 好似欢送会v 和手机搜狐凇和 v 搜狐哦凇后 v 的 v 互动是看会书我送红色哈佛 i 死就死哦好烦还送粉红色iOS 发货后送回佛山&lt;br/&gt;&lt;/p&gt;', '1', '53', '0', '5', '0', '1537326521', '0');
INSERT INTO `section_note` VALUES ('137', '1', '9', '2', '6', '', '&lt;p&gt;发的&lt;/p&gt;', '2', '125', '0', '0', '0', '1537343654', '0');
INSERT INTO `section_note` VALUES ('138', '1', '9', '2', '6', '', '&lt;p&gt;发的&lt;/p&gt;', '2', '125', '0', '0', '0', '1537343710', '0');
INSERT INTO `section_note` VALUES ('139', '1', '9', '2', '6', '', '&lt;p&gt;发的&lt;/p&gt;', '2', '125', '0', '0', '0', '1537343832', '0');
INSERT INTO `section_note` VALUES ('140', '1', '9', '2', '6', '', '&lt;p&gt;发的&lt;/p&gt;', '2', '125', '0', '0', '0', '1537343918', '0');
INSERT INTO `section_note` VALUES ('141', '1', '9', '2', '6', '', '&lt;p&gt;发的&lt;/p&gt;', '2', '125', '0', '0', '0', '1537344018', '0');
INSERT INTO `section_note` VALUES ('142', '1', '9', '2', '6', '', '&lt;p&gt;发的&lt;/p&gt;', '2', '125', '0', '0', '0', '1537344069', '0');
INSERT INTO `section_note` VALUES ('143', '1', '9', '2', '6', '', '&lt;p&gt;发的&lt;/p&gt;', '2', '125', '1', '22', '0', '1537344249', '0');
INSERT INTO `section_note` VALUES ('144', '1', '9', '2', '6', '', '&lt;p&gt;发的&lt;/p&gt;', '2', '143', '0', '4', '0', '1537346398', '0');
INSERT INTO `section_note` VALUES ('145', '1', '9', '4', '46', '我也爱记笔记', '&lt;p&gt;我也爱记笔记我也爱记笔记我也爱记笔记我也爱记笔记我也爱记笔记&lt;/p&gt;', '1', '46', '0', '1', '0', '1537434006', '0');
INSERT INTO `section_note` VALUES ('146', '1', '9', '4', '46', '323', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180920/1537434211528320.jpg&quot; title=&quot;1537434211528320.jpg&quot; alt=&quot;53ce21ffa310a822ad8b3a73.jpg&quot;/&gt;21232132&lt;/p&gt;', '1', '46', '1', '3', '0', '1537434220', '0');
INSERT INTO `section_note` VALUES ('147', '1', '9', '4', '46', '', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180920/1537434211528320.jpg&quot; title=&quot;1537434211528320.jpg&quot; alt=&quot;53ce21ffa310a822ad8b3a73.jpg&quot;/&gt;21232132&lt;/p&gt;', '2', '146', '3', '1', '0', '1537521991', '0');
INSERT INTO `section_note` VALUES ('148', '1', '9', '4', '47', '', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180920/1537434211528320.jpg&quot; title=&quot;1537434211528320.jpg&quot; alt=&quot;53ce21ffa310a822ad8b3a73.jpg&quot;/&gt;21232132&lt;/p&gt;', '2', '147', '0', '0', '0', '1537841170', '0');
INSERT INTO `section_note` VALUES ('149', '1', '9', '4', '47', '', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180920/1537434211528320.jpg&quot; title=&quot;1537434211528320.jpg&quot; alt=&quot;53ce21ffa310a822ad8b3a73.jpg&quot;/&gt;21232132&lt;/p&gt;', '2', '147', '0', '0', '0', '1537841171', '0');
INSERT INTO `section_note` VALUES ('150', '1', '9', '4', '47', '', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20180920/1537434211528320.jpg&quot; title=&quot;1537434211528320.jpg&quot; alt=&quot;53ce21ffa310a822ad8b3a73.jpg&quot;/&gt;21232132&lt;/p&gt;', '2', '147', '0', '0', '0', '1537841171', '0');
INSERT INTO `section_note` VALUES ('151', '1', '17', '34', '55', '真好看', '&lt;p&gt;真好看&lt;/p&gt;', '1', '55', '0', '2', '0', '1537858318', '0');
INSERT INTO `section_note` VALUES ('152', '1', '2', '36', '40', '', 'test27', '2', '40', '0', '0', '0', '1537858922', '0');
INSERT INTO `section_note` VALUES ('153', '1', '2', '36', '40', '', 'test27', '2', '40', '0', '0', '0', '1537858923', '0');
INSERT INTO `section_note` VALUES ('154', '1', '9', '2', '40', '11', '<p>11</p>', '1', '40', '0', '1', '0', '1537924500', '0');

-- ----------------------------
-- Table structure for section_note_reply
-- ----------------------------
DROP TABLE IF EXISTS `section_note_reply`;
CREATE TABLE `section_note_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '回复着id',
  `reply_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` int(11) NOT NULL,
  `delete_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of section_note_reply
-- ----------------------------
INSERT INTO `section_note_reply` VALUES ('1', '1', '21', '23', '真是太好了', '1533882385', '0');
INSERT INTO `section_note_reply` VALUES ('2', '1', '23', '24', '真是太好了1', '1533882486', '0');
INSERT INTO `section_note_reply` VALUES ('3', '8', '15', '22', '飞洒发生大大发噶', '1533882921', '0');
INSERT INTO `section_note_reply` VALUES ('4', '9', '22', '24', '飞洒发生大大发噶', '1533882942', '1533883893');
INSERT INTO `section_note_reply` VALUES ('5', '9', '22', '24', '时间fda减肥附属卡大家带上飞机啊看', '1534930675', '0');
INSERT INTO `section_note_reply` VALUES ('6', '8', '39', '22', '3333', '1536214074', '0');
INSERT INTO `section_note_reply` VALUES ('7', '8', '39', '22', 'iii', '1536214085', '0');
INSERT INTO `section_note_reply` VALUES ('8', '8', '39', '22', 'eee', '1536214576', '0');
INSERT INTO `section_note_reply` VALUES ('9', '10', '6', '40', 'fds', '1536802407', '0');
INSERT INTO `section_note_reply` VALUES ('10', '10', '6', '40', 'fddghsgh', '1536802587', '0');
INSERT INTO `section_note_reply` VALUES ('11', '9', '47', '40', 'rrr', '1536808133', '0');
INSERT INTO `section_note_reply` VALUES ('12', '9', '6', '40', 'fdghtthdsdfs', '1536823208', '0');
INSERT INTO `section_note_reply` VALUES ('13', '124', '39', '40', '444', '1536907867', '0');
INSERT INTO `section_note_reply` VALUES ('14', '124', '39', '40', 'yyy', '1536907871', '0');
INSERT INTO `section_note_reply` VALUES ('15', '124', '39', '40', 'iiiii', '1536908916', '0');
INSERT INTO `section_note_reply` VALUES ('16', '125', '39', '47', 'gggg', '1536919367', '0');
INSERT INTO `section_note_reply` VALUES ('17', '119', '40', '47', 'ad ad asd', '1537150680', '0');
INSERT INTO `section_note_reply` VALUES ('18', '136', '53', '53', '巨大的四哦副科级回复 i好和佛 if 红诶好饿回复地方喔 v 次机会吼吼共和国我和我 i 凤凰网看句 if 我 iu 好玩fwhowuq-就从服务费 v 好回复 i 我很好ve-w的 v 哦额 u 服务和 i 为 vi 恶搞给我一', '1537326568', '0');
INSERT INTO `section_note_reply` VALUES ('19', '136', '53', '53', '服务和佛文化和 i 回复 i 和 v风我 i 回家哦更好别具风味v 好我 i u 服务器和 v 地黄丸 i 哦 vfuw-义务服务分机房 iw-0bjdfhdoifhww-wjjehdoihdojfw0fjwio好玩句 i 哦 v 机会叫我和 v 的和 v 我v 活动外交官 i 饿我好我放弃哦', '1537326616', '0');
INSERT INTO `section_note_reply` VALUES ('20', '125', '53', '53', '服务和佛文化和 i 回复 i 和 v风我 i 回家哦更好别具风味v 好我 i u 服务器和 v 地黄丸 i 哦 vfuw-义务服务分机房 iw-0bjdfhdoifhww-wjjehdoihdojfw0fjwio好玩句 i 哦 v 机会叫我和 v 的和 v 我v 活动外交官 i 饿我好我放弃哦', '1537326616', '0');

-- ----------------------------
-- Table structure for section_progress
-- ----------------------------
DROP TABLE IF EXISTS `section_progress`;
CREATE TABLE `section_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL DEFAULT '0' COMMENT '课时ID',
  `course_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `dur` int(11) NOT NULL DEFAULT '0' COMMENT '该课时已看时长',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of section_progress
-- ----------------------------

-- ----------------------------
-- Table structure for special_subject
-- ----------------------------
DROP TABLE IF EXISTS `special_subject`;
CREATE TABLE `special_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `remark` text COMMENT '描述',
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT 'center',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
  `list_order` int(11) NOT NULL DEFAULT '10000' COMMENT '排序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='专题表';

-- ----------------------------
-- Records of special_subject
-- ----------------------------
INSERT INTO `special_subject` VALUES ('2', '天津馆创建', '123', '14', '1', '', '1', '10000', '1530510528', '1530514483');
INSERT INTO `special_subject` VALUES ('3', '超星给天津馆创建的专题', '123456', '14', '1', '', '1', '10000', '1530510569', '0');
INSERT INTO `special_subject` VALUES ('4', '超星', '超星123456', '1', '1', 'http://192.168.1.231:9334/2,013082e7ecf6', '1', '10000', '1530603500', '1536906716');
INSERT INTO `special_subject` VALUES ('5', '超星1', '超星', '1', '1', 'http://192.168.1.231:9334/5,d32ced08ba', '1', '10000', '1530603523', '1536123438');
INSERT INTO `special_subject` VALUES ('6', '天津1', '天津馆', '14', '14', '', '1', '10000', '1530603810', '0');
INSERT INTO `special_subject` VALUES ('13', '超星', '超星1232', '1', '0', 'http://192.168.1.231:9334/4,f0345aca3d', '1', '10000', '1532397640', '1536123749');
INSERT INTO `special_subject` VALUES ('14', '专题测试测', '测试', '1', '0', 'http://192.168.1.231:9334/6,d09815d4c1', '1', '10000', '1535450368', '1535450622');
INSERT INTO `special_subject` VALUES ('15', '专题测试测试', '测试专题图', '1', '0', 'http://192.168.1.231:9334/6,d214676fb2', '1', '10000', '1535506026', '0');
INSERT INTO `special_subject` VALUES ('16', '专题专题专题专题专题专题', '专题', '1', '0', 'http://192.168.1.231:9334/3,d545c2a12d', '1', '10000', '1536045624', '1536046331');
INSERT INTO `special_subject` VALUES ('17', 'akljdflaj', '', '1', '0', 'http://192.168.1.231:9334/4,d6bb5abe8a', '1', '10000', '1536046345', '0');
INSERT INTO `special_subject` VALUES ('18', '飞洒', '', '1', '0', 'http://192.168.1.231:9334/4,d7dff09976', '1', '10000', '1536046357', '0');
INSERT INTO `special_subject` VALUES ('19', '测试', '', '1', '0', 'http://192.168.1.231:9334/4,f1a8998bbc', '1', '10000', '1536123837', '0');
INSERT INTO `special_subject` VALUES ('20', '范德萨', '范德萨', '1', '0', '', '1', '10000', '1537426113', '0');
INSERT INTO `special_subject` VALUES ('21', '夏茫说', '一个好的产品，首先要解决用户的需求；\n一个好的产品，其次是要有黏性；\n一个好的产品，要拥有不错的体验。', '1', '0', 'http://192.168.1.231:9334/4,01b06ccaf1fe', '1', '10000', '1537861380', '0');

-- ----------------------------
-- Table structure for terminal
-- ----------------------------
DROP TABLE IF EXISTS `terminal`;
CREATE TABLE `terminal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '场馆id',
  `pc_num` int(11) NOT NULL DEFAULT '0' COMMENT 'pc 登陆数量',
  `wx_num` int(11) NOT NULL DEFAULT '0' COMMENT '手机端登陆数量',
  `app_num` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of terminal
-- ----------------------------
INSERT INTO `terminal` VALUES ('3', '14', '38', '1', '0');
INSERT INTO `terminal` VALUES ('4', '1', '924', '0', '0');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '视频名称',
  `center_id` int(11) NOT NULL DEFAULT '0' COMMENT '场馆id',
  `thumb` varchar(255) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '上传者id',
  `url` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户类型: 1 后台管理员  2用户',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `video_time` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '视频创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `delete_time` int(11) NOT NULL DEFAULT '0' COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '视频12', '1', 'http://192.168.1.231:9334/3,a4a6bd09f6', '1', 'http:', '1', '0', '0', '1530149186', '1535421660', '0');
INSERT INTO `video` VALUES ('2', '超星馆给天津馆创建的视频', '14', 'http://192.168.1.231:9334/', '1', 'http:www.baidu.com', '1', '1', '50', '1530255816', '1535339921', '0');
INSERT INTO `video` VALUES ('3', '天津馆', '14', 'http://192.168.1.230:9334/1,6b94ba5dab', '14', 'http:www.baidu.com', '1', '1', '60', '1530256187', '1530259841', '0');
INSERT INTO `video` VALUES ('4', '天津馆创建的视频', '14', 'http://192.168.1.230:9334/1,6b94ba5dab', '14', 'http:www.baidu.com', '1', '1', '0', '1530258766', '0', '0');
INSERT INTO `video` VALUES ('5', '用户创建视频', '14', 'admin/20180315/e30ee982eae4efb1251873311548dd9a.png', '13', 'http:www.baidu.com', '2', '1', '0', '1530506404', '0', '0');
INSERT INTO `video` VALUES ('6', '视频', '14', 'admin/20180315/e30ee982eae4efb1251873311548dd9a.png', '1', 'http:', '1', '1', '0', '1531797623', '1531798856', '0');
INSERT INTO `video` VALUES ('7', 'dasd', '0', 'admin/20180315/e30ee982eae4efb1251873311548dd9a.png', '1', 'http:www.baidu.com', '1', '1', '0', '1531809976', '0', '0');
INSERT INTO `video` VALUES ('8', 'fgrd', '1', 'http://192.168.1.231:9334/7,c0f46e3a91', '1', 'http://mooc.com/upload/20180828/b29cf1f82f8c4072617db8925e599b63.mp4', '1', '1', '0', '1531811719', '1535425204', '0');
INSERT INTO `video` VALUES ('9', 'adfd', '1', 'http://192.168.1.231:9334/3,cb0ef8725b', '1', 'http:www.baidu.com', '1', '1', '0', '1531812056', '1535445555', '0');
INSERT INTO `video` VALUES ('10', 'fdas', '1', 'http://192.168.1.231:9334/6,01aef8d5358f', '1', 'http:www.baidu.com', '1', '1', '0', '1531812300', '1537851002', '0');
INSERT INTO `video` VALUES ('11', 'sd', '17', 'admin/20180315/e30ee982eae4efb1251873311548dd9a.png', '1', 'http:www.baidu.com', '1', '1', '0', '1531812314', '0', '0');
INSERT INTO `video` VALUES ('12', 'afs', '17', 'admin/20180315/e30ee982eae4efb1251873311548dd9a.png', '1', 'http:www.baidu.com', '1', '1', '0', '1531812341', '0', '0');
INSERT INTO `video` VALUES ('13', 'safd', '17', 'admin/20180315/e30ee982eae4efb1251873311548dd9a.png', '1', 'http:www.baidu.com', '1', '1', '0', '1531812364', '1535340388', '0');
INSERT INTO `video` VALUES ('14', 'sdaf', '1', 'http://192.168.1.231:9334/4,0139cd3e7cda', '1', 'http:www.baidu.com', '1', '1', '0', '1531812393', '1537172034', '0');
INSERT INTO `video` VALUES ('15', 'fdsa', '1', 'admin/20180315/e30ee982eae4efb1251873311548dd9a.png', '1', 'http:www.baidu.com', '1', '1', '0', '1531812626', '0', '0');
INSERT INTO `video` VALUES ('16', 'sdfa', '14', 'admin/20180315/e30ee982eae4efb1251873311548dd9a.png', '1', 'http:www.baidu.com', '1', '1', '0', '1531812681', '0', '0');
INSERT INTO `video` VALUES ('17', 'fsda', '0', 'admin/20180315/e30ee982eae4efb1251873311548dd9a.png', '1', 'http:www.baidu.com', '1', '1', '0', '1531812886', '0', '0');
INSERT INTO `video` VALUES ('18', '示范点', '1', 'http://192.168.1.231:9334/6,013a218ea1fb', '1', 'http://mooc.com/upload/20180917/7c64867a993163b5a9bb9de8a69ba9f9.mp4', '1', '1', '0', '1531880640', '1537172160', '0');
INSERT INTO `video` VALUES ('19', 'dsfg', '1', 'admin/20180315/e30ee982eae4efb1251873311548dd9a.png', '1', 'http:www.baidu.com', '1', '1', '0', '1531982151', '0', '0');
INSERT INTO `video` VALUES ('20', 'sa', '1', 'http://192.168.1.230:9334/1,6b94ba5dab', '1', 'http://mooc.com/upload/20180724/ef92bfc72f14db89d1a819f500019cc8.mp4', '1', '1', '0', '1532416038', '0', '1533547649');
INSERT INTO `video` VALUES ('21', '11111111111111111', '1', 'http://192.168.1.231:9334/4,ca8aa0eb3f', '1', 'http://mooc.com/upload/20180807/0b61556897583aa6f83ec4ca9cc37b83.mp4', '1', '1', '0', '1533605898', '1535442952', '0');
INSERT INTO `video` VALUES ('22', '视频测试视频测试视频测试', '1', 'http://192.168.1.231:9334/6,c2980238ef', '1', 'http://mooc.com/upload/20180828/009dd232904a67b861416378b10c10a4.mp4', '1', '1', '0', '1535425255', '0', '0');
INSERT INTO `video` VALUES ('23', '第一单元第一课时', '1', 'http://192.168.1.231:9334/3,017b2f5dd313', '47', 'http://mooc.com/upload/20180921/41be9e8db507ff641bcd1a7c79cc140a.mp4', '2', '0', '1081080', '1537511918', '0', '0');
INSERT INTO `video` VALUES ('24', '第一单元第一课时123', '1', 'http://192.168.1.231:9334/4,018980b9d3b7', '47', 'http://mooc.com/upload/20180921/34cfe7330d28d36974bea848becaf1bc.mp4', '2', '0', '1081', '1537513380', '0', '0');
INSERT INTO `video` VALUES ('25', '第一单元第一课时123', '1', 'http://192.168.1.231:9334/1,018a9f9da828', '47', 'http://mooc.com/upload/20180921/a0b4c6bd59ca49a8b5b1d21a30d997d5.mp4', '2', '0', '1081', '1537514025', '0', '0');
INSERT INTO `video` VALUES ('26', '第一单元第一课时', '1', 'http://192.168.1.231:9334/3,019301faa2ac', '47', 'http://mooc.com/upload/20180921/591c74acca8844a9524484163f8457bf.mp4', '2', '0', '1081', '1537522353', '0', '0');
INSERT INTO `video` VALUES ('27', '第二单元第一课时', '1', 'http://192.168.1.231:9334/7,0195e6d6029d', '47', 'http://mooc.com/upload/20180921/6118969182d92b4b0067546432c2107c.mp4', '2', '0', '1081', '1537522997', '0', '0');
INSERT INTO `video` VALUES ('28', '第一单元第一课时', '1', 'http://192.168.1.231:9334/1,0197bb8f80fc', '47', 'http://mooc.com/upload/20180925/465e7b6f53b20779cb7bef496c7fef16.mp4', '2', '0', '1081', '1537838112', '0', '0');
INSERT INTO `video` VALUES ('29', 'gfds ', '1', 'http://192.168.1.231:9334/2,019b35941a6d', '1', 'http://mooc.com/upload/20180925/fe46610cad4e9a2cab0c565345edbd25.mp4', '1', '1', '0', '1537843247', '0', '0');
INSERT INTO `video` VALUES ('30', 'gfds ', '1', 'http://192.168.1.231:9334/2,019b35941a6d', '1', 'http://mooc.com/upload/20180925/fe46610cad4e9a2cab0c565345edbd25.mp4', '1', '1', '0', '1537843247', '0', '0');
INSERT INTO `video` VALUES ('31', '民族精神', '1', 'http://192.168.1.231:9334/4,01a0a3ba12d4', '1', 'http://s1.ananas.chaoxing.com/video/e3/53a799a1a3103c3a4ed907d3/sd.mp4', '1', '1', '0', '1537844629', '0', '0');
INSERT INTO `video` VALUES ('32', '民族精神', '1', 'http://192.168.1.231:9334/4,01a0a3ba12d4', '1', 'http://s1.ananas.chaoxing.com/video/e3/53a799a1a3103c3a4ed907d3/sd.mp4', '1', '1', '0', '1537844629', '0', '0');
INSERT INTO `video` VALUES ('33', '第一单元5444课时3a', '1', 'http://192.168.1.231:9334/3,01b4c9de5b8f', '47', 'http://mooc.com/upload/20180925/64c4af31c9ae18e26709d64cf2414ccd.mp4', '2', '0', '10', '1537865437', '0', '0');
INSERT INTO `video` VALUES ('34', '第一单元5444课时3a', '1', 'http://192.168.1.231:9334/2,01b565422d75', '47', 'http://mooc.com/upload/20180925/a97a986319c10d7bb6d63c4b095d9126.mp4', '2', '0', '1081', '1537865527', '0', '0');
