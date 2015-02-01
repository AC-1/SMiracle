/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : miracle

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-02-01 15:20:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `USER_ID` varchar(200) NOT NULL,
  `USER_PW` varchar(255) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_AGE` int(50) NOT NULL,
  `USER_BIRTHDAY` varchar(50) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1111', '84ec8d2a7320b636', 'Joshua', '31', '2010-02-07');

-- ----------------------------
-- Table structure for `camp`
-- ----------------------------
DROP TABLE IF EXISTS `camp`;
CREATE TABLE `camp` (
  `ID` char(32) NOT NULL,
  `NAME` text NOT NULL,
  `PIC` text NOT NULL,
  `BEGIN` datetime NOT NULL,
  `END` datetime NOT NULL,
  `NOTE` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of camp
-- ----------------------------

-- ----------------------------
-- Table structure for `car`
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', 'Bizane');
INSERT INTO `car` VALUES ('2', '');
INSERT INTO `car` VALUES ('3', '新增車子');
INSERT INTO `car` VALUES ('5', '');
INSERT INTO `car` VALUES ('7', 'test2');
INSERT INTO `car` VALUES ('222', '');
INSERT INTO `car` VALUES ('223', 'YAHOO1');

-- ----------------------------
-- Table structure for `care`
-- ----------------------------
DROP TABLE IF EXISTS `care`;
CREATE TABLE `care` (
  `ID` char(32) NOT NULL,
  `LEADER` char(32) NOT NULL,
  `CARE_WAY` tinyint(3) unsigned NOT NULL,
  `ITEMS` double unsigned NOT NULL,
  `CONTENTS` text NOT NULL,
  `STATEMENT` text NOT NULL,
  `CARE_TIME` datetime NOT NULL,
  `CREATE` datetime NOT NULL,
  `LAST_UPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `NOTE` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of care
-- ----------------------------

-- ----------------------------
-- Table structure for `care_time`
-- ----------------------------
DROP TABLE IF EXISTS `care_time`;
CREATE TABLE `care_time` (
  `ID` char(32) NOT NULL,
  `WEEKDAY` tinyint(3) unsigned NOT NULL,
  `STIME` smallint(5) unsigned NOT NULL,
  `ETIME` smallint(5) unsigned NOT NULL,
  `CREATE` datetime NOT NULL,
  `LAST_UPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of care_time
-- ----------------------------

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(32) NOT NULL,
  `TEL` varchar(12) NOT NULL,
  `CREATE` datetime NOT NULL,
  `LAST_UPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------

-- ----------------------------
-- Table structure for `education`
-- ----------------------------
DROP TABLE IF EXISTS `education`;
CREATE TABLE `education` (
  `ID` char(32) NOT NULL,
  `SCHOOL` varchar(32) NOT NULL,
  `GENDER` tinyint(3) unsigned NOT NULL,
  `CREATE` datetime NOT NULL,
  `LAST_UPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education
-- ----------------------------

-- ----------------------------
-- Table structure for `group`
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `ID` char(32) NOT NULL,
  `NAME` text NOT NULL,
  `PIC` text NOT NULL,
  `STATUS` char(32) NOT NULL,
  `TABLE` varchar(64) NOT NULL,
  `OWNER` char(32) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group
-- ----------------------------

-- ----------------------------
-- Table structure for `main`
-- ----------------------------
DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `ID` char(32) NOT NULL,
  `NAME` text NOT NULL,
  `VALUE` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main
-- ----------------------------

-- ----------------------------
-- Table structure for `people`
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(32) NOT NULL,
  `GENDER` char(1) NOT NULL,
  `BIRTHDAY` datetime NOT NULL,
  `ROLE` tinyint(3) unsigned NOT NULL,
  `STATUS` tinyint(3) unsigned NOT NULL,
  `COMM` char(32) NOT NULL,
  `GROUP` char(32) NOT NULL,
  `CREATE` datetime NOT NULL,
  `LAST_UPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `NOTE` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of people
-- ----------------------------

-- ----------------------------
-- Table structure for `permi_grade_main`
-- ----------------------------
DROP TABLE IF EXISTS `permi_grade_main`;
CREATE TABLE `permi_grade_main` (
  `GRADE_ID` varchar(50) NOT NULL,
  `GRADE_NAME` varchar(50) NOT NULL,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`GRADE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permi_grade_main
-- ----------------------------
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000001', '幼稚園一年級', '2014-09-02 12:09:26');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000002', '幼稚園二年級', '2014-09-02 12:09:44');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000003', '幼稚園三年級', '2014-09-02 12:10:03');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000004', '國小一年級', '2014-09-02 12:10:15');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000005', '國小二年級', '2014-09-02 12:10:31');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000006', '國小三年級', '2014-09-02 12:10:40');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000007', '國小四年級', '2014-09-02 12:10:58');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000008', '國小五年級', '2014-09-02 12:11:09');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000009', '國小六年級', '2014-09-02 12:11:21');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000010', '國中一年級', '2014-09-02 12:11:36');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000011', '國中二年級', '2014-09-02 12:11:50');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000012', '國中三年級', '2014-09-02 12:12:09');
INSERT INTO `permi_grade_main` VALUES ('grade_000020140902000013', '大學一年級', '2014-09-02 12:12:23');

-- ----------------------------
-- Table structure for `permi_group_main`
-- ----------------------------
DROP TABLE IF EXISTS `permi_group_main`;
CREATE TABLE `permi_group_main` (
  `GROUP_ID` varchar(50) NOT NULL,
  `GROUP_NAME` varchar(50) NOT NULL,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`GROUP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permi_group_main
-- ----------------------------
INSERT INTO `permi_group_main` VALUES ('group_000020140902000001', '幼兒班', '2014-09-02 12:07:58');
INSERT INTO `permi_group_main` VALUES ('group_000020140902000002', '國小班', '2014-09-02 12:08:16');
INSERT INTO `permi_group_main` VALUES ('group_000020140902000003', '國中班', '2014-09-02 12:08:23');
INSERT INTO `permi_group_main` VALUES ('group_000020140902000004', '專科班', '2014-09-02 12:08:41');
INSERT INTO `permi_group_main` VALUES ('group_000020140902000005', '大學班', '2014-09-02 12:08:53');

-- ----------------------------
-- Table structure for `present_info`
-- ----------------------------
DROP TABLE IF EXISTS `present_info`;
CREATE TABLE `present_info` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(32) NOT NULL,
  `PERSON_ID` char(32) NOT NULL,
  `ACTIVITY_ID` char(32) NOT NULL,
  `CHKIN_TIME` datetime NOT NULL,
  `LAST_UPDATE` datetime NOT NULL,
  `FIND_TIME` datetime NOT NULL,
  `NOTE` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of present_info
-- ----------------------------

-- ----------------------------
-- Table structure for `prg_page_detl`
-- ----------------------------
DROP TABLE IF EXISTS `prg_page_detl`;
CREATE TABLE `prg_page_detl` (
  `PRG_ID` varchar(50) NOT NULL,
  `PRG_ACTION` varchar(255) NOT NULL,
  `PRG_NAME` varchar(100) NOT NULL,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PRG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prg_page_detl
-- ----------------------------
INSERT INTO `prg_page_detl` VALUES ('prg_000020140902000001', 'customLoginAction.do?method=people', '查詢成人', '2014-09-02 12:18:51');
INSERT INTO `prg_page_detl` VALUES ('prg_000020140902000002', 'customLoginAction.do?method=child1', '查詢兒童', '2014-09-02 12:18:44');
INSERT INTO `prg_page_detl` VALUES ('prg_000020140902000003', 'customLoginAction.do?method=child2', '兒童關懷頁', '2014-09-02 12:18:55');

-- ----------------------------
-- Table structure for `statement`
-- ----------------------------
DROP TABLE IF EXISTS `statement`;
CREATE TABLE `statement` (
  `ID` char(32) NOT NULL,
  `SUPERVISOR` char(64) NOT NULL,
  `STATEMENT` text NOT NULL,
  `CREATE` datetime NOT NULL,
  `LAST_UPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `NOTE` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of statement
-- ----------------------------

-- ----------------------------
-- Table structure for `system_parameter`
-- ----------------------------
DROP TABLE IF EXISTS `system_parameter`;
CREATE TABLE `system_parameter` (
  `SYSTEM_VALUE_ID` varchar(255) NOT NULL,
  `SYSTEM_ID` varchar(50) NOT NULL,
  `SYSTEM_PARAMETER_ID` varchar(50) NOT NULL,
  `SYSTEM_VALUE` varchar(255) NOT NULL,
  `SYSTEM_REMARK` varchar(255) DEFAULT NULL,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATE_NAME` varchar(50) NOT NULL,
  PRIMARY KEY (`SYSTEM_VALUE_ID`),
  UNIQUE KEY `SYSTEM_ID_UNIQUE` (`SYSTEM_ID`,`SYSTEM_PARAMETER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_parameter
-- ----------------------------
INSERT INTO `system_parameter` VALUES ('sys1408111045001', 'miracle', 'registerMailTemplatePath', '/usr/emailtemplate/shop-email-register.html', 'E-Mail 範本的路徑', '2014-08-23 17:41:43', 'Joshua');
INSERT INTO `system_parameter` VALUES ('sys1408111045016', 'miracle', 'picture', '/var/www/html/img/', '照片上路徑', '2014-08-23 17:41:44', 'Joshua');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `NAME` varchar(255) NOT NULL DEFAULT '',
  `Test` enum('男','女') NOT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('TEST', '女');

-- ----------------------------
-- Table structure for `user_account`
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `LOGIN_ID` varchar(50) NOT NULL,
  `LOGIN_PASSWORD` varchar(255) NOT NULL,
  `LOGIN_NAME` varchar(50) NOT NULL,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `DEPT_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('log_000020140902000001', '2222', 'Joshua西隆', '2014-09-02 12:14:23', '成人牧區ID');

-- ----------------------------
-- Table structure for `user_auth`
-- ----------------------------
DROP TABLE IF EXISTS `user_auth`;
CREATE TABLE `user_auth` (
  `AUTH_ID` varchar(50) NOT NULL,
  `LOGIN_ID` varchar(50) NOT NULL,
  `GROUP_ID` varchar(50) NOT NULL,
  `GRADE_ID` varchar(50) NOT NULL,
  `PRG_ID` varchar(50) NOT NULL,
  `UPDATE_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`AUTH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_auth
-- ----------------------------
INSERT INTO `user_auth` VALUES ('auth_000020140902000001', 'log_000020140902000001', 'group_000020140902000001', 'grade_000020140902000001', 'prg_000020140902000002', '2014-09-02 12:16:32');
INSERT INTO `user_auth` VALUES ('auth_000020140902000002', 'log_000020140902000001', 'group_000020140902000002', 'grade_000020140902000006', 'prg_000020140902000002', '2014-09-02 12:16:29');
INSERT INTO `user_auth` VALUES ('auth_000020140902000003', 'log_000020140902000001', 'group_000020140902000002', 'grade_000020140902000007', 'prg_000020140902000003', '2014-09-02 12:19:00');

-- ----------------------------
-- Table structure for `worship`
-- ----------------------------
DROP TABLE IF EXISTS `worship`;
CREATE TABLE `worship` (
  `ID` char(32) NOT NULL,
  `NAME` text NOT NULL,
  `PIC` text NOT NULL,
  `STATUS` tinyint(3) unsigned NOT NULL,
  `BEGIN` smallint(5) unsigned NOT NULL,
  `END` smallint(5) unsigned NOT NULL,
  `WEEKDAY` tinyint(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worship
-- ----------------------------
