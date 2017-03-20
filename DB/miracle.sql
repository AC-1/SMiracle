/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : miracle

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-03-20 18:08:04
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
-- Table structure for `camp_activity`
-- ----------------------------
DROP TABLE IF EXISTS `camp_activity`;
CREATE TABLE `camp_activity` (
  `ACTIVITY_ID` varchar(75) NOT NULL,
  `ACTIVITY_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ACTIVITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of camp_activity
-- ----------------------------
INSERT INTO `camp_activity` VALUES ('activity_16021615393155001', '特務聯盟');

-- ----------------------------
-- Table structure for `camp_activity_signup`
-- ----------------------------
DROP TABLE IF EXISTS `camp_activity_signup`;
CREATE TABLE `camp_activity_signup` (
  `SIGNUP_ID` varchar(75) NOT NULL DEFAULT '',
  `ACTIVITY_ID` varchar(255) NOT NULL,
  `COLLEGE_ID` varchar(125) NOT NULL,
  `IF_CHECK_IN` varchar(1) NOT NULL DEFAULT 'N',
  `SIGNUP_DATE` datetime NOT NULL,
  PRIMARY KEY (`SIGNUP_ID`),
  UNIQUE KEY `ACTIVITY_ID, COLLEGE_ID` (`ACTIVITY_ID`,`COLLEGE_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of camp_activity_signup
-- ----------------------------
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254246900', 'activity_16021615393155001', '00dece4487194358a24a3ec9a734c850', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248501', 'activity_16021615393155001', '01479891f8c346ad879cf0db6ed3e926', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248502', 'activity_16021615393155001', '03666df538d4456cba2f3b3e754ffc3e', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248503', 'activity_16021615393155001', '03fb33df04a049bba48e94356da8b34d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248504', 'activity_16021615393155001', '054388d32ae044e8bd5648612376503f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248505', 'activity_16021615393155001', '067f8d66f111430ab4537723426dd11b', 'N', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248506', 'activity_16021615393155001', '06d4abe792d74cab8135c64749daafba', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248507', 'activity_16021615393155001', '07d58204700746328badc0f0a8f1939b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248508', 'activity_16021615393155001', '089f4bb151ca46d9bbe21eefb5fa93fd', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248509', 'activity_16021615393155001', '0a5af13f14c2455d86f78b0ee2b77a13', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248510', 'activity_16021615393155001', '0aef0f2b566e40ba837515a5f12805e6', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248511', 'activity_16021615393155001', '0b2396651fab433ab62a1b79f2275a76', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248512', 'activity_16021615393155001', '0b2c30fb0dce4268a4bee8f573fc04bd', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248513', 'activity_16021615393155001', '0b56ddf0d551487ba848cc5c9c7970c8', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248514', 'activity_16021615393155001', '0b5771eafbc4490081a4590424c3ce9b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248515', 'activity_16021615393155001', '0bb3033a75054503b2b35183fa4643a6', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248516', 'activity_16021615393155001', '0bfad7b53e6345129a643f34522df722', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248517', 'activity_16021615393155001', '0dc44e5b224f4c97a08cf2fee5a4f14b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248518', 'activity_16021615393155001', '0e2e8f96ce154991a179035c00030387', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248519', 'activity_16021615393155001', '10350156c16f4f13b80d9719fe80f7c7', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248520', 'activity_16021615393155001', '1135ee714a7e4b55b370580abc8ec798', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248521', 'activity_16021615393155001', '1158541b417041c8b25dccf9b33d16b1', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248522', 'activity_16021615393155001', '11d1bae8720948029eaddc024c42b309', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248523', 'activity_16021615393155001', '124738e9800b47df946fb149e040aa26', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248524', 'activity_16021615393155001', '13665e762808427eb937b681568b2b9a', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248525', 'activity_16021615393155001', '13935b803e17424394c44d99e9c9a562', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248526', 'activity_16021615393155001', '1403b424f28749e181d1140cb536f31f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248527', 'activity_16021615393155001', '1424be5ffa874d78a4afaf90a1a147ea', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248528', 'activity_16021615393155001', '154e808966bc45f0b642bfa3b51df75b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248529', 'activity_16021615393155001', '1755a0a5219448c7a3e0e280d91bc5f1', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248530', 'activity_16021615393155001', '17d25be19bdf49bcb321bc2b8184dce9', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248531', 'activity_16021615393155001', '18ce73473948410299effaa3aa9d9b67', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248532', 'activity_16021615393155001', '1952facb77e5489ba0a44494f4340233', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248533', 'activity_16021615393155001', '1a81e3a438e04b0ab385bd83a2381c87', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248534', 'activity_16021615393155001', '1bc2f8fd4f3d4a11963c040b22d89068', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248535', 'activity_16021615393155001', '1d1ed38770b54bbd9cefd37fdd7dcdd9', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248536', 'activity_16021615393155001', '1d7b08e2be9f4629a4257b923ed31287', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248537', 'activity_16021615393155001', '1e2b9f6c0d2d48748d276d8159f27494', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248538', 'activity_16021615393155001', '207dacafed854b628715dc2a2fe1b783', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248539', 'activity_16021615393155001', '222b1338ccca4050855bba0d07499f93', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248540', 'activity_16021615393155001', '24d62d28d6bd4b41bb716136271b7ae2', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248541', 'activity_16021615393155001', '26850980972d4c989a03aff4807b9bc3', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248542', 'activity_16021615393155001', '27a7fb6af78d4a77a838b1197adece4c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248543', 'activity_16021615393155001', '28f10cc06e364134a732165aca03a506', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248544', 'activity_16021615393155001', '292612cc954f4caaa4bdd735656d7323', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248545', 'activity_16021615393155001', '2ab952ce49da4dba879f949babe1dc5a', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254248546', 'activity_16021615393155001', '2bfaf0ccc6664a6fbeade7441b59e592', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250047', 'activity_16021615393155001', '2f6341d1ba6a4023938ddb0a2689aebb', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250048', 'activity_16021615393155001', '304e6735b4b0483d971726de17437645', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250049', 'activity_16021615393155001', '3059e576c93440549795d9a35fd63d31', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250050', 'activity_16021615393155001', '3074f55cd9c947dfb00e56b550924d0a', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250051', 'activity_16021615393155001', '30a13c2adbb143128e2bc474cefd351e', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250052', 'activity_16021615393155001', '3133853c609c4e468454a04142eb945c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250053', 'activity_16021615393155001', '3248cb7827734a8ca68849cc5a4be317', 'N', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250054', 'activity_16021615393155001', '33c3ef192dfb4eea806007da7e4e2405', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250055', 'activity_16021615393155001', '33f116441bdb49568eb61c199e0b8966', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250056', 'activity_16021615393155001', '35aacfb3c9454a499cd119def4860676', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250057', 'activity_16021615393155001', '35baec64da714df0b2b2a154328366c3', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250058', 'activity_16021615393155001', '371f9545b3654e29bfcf9e408c29f93d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250059', 'activity_16021615393155001', '378a429ace1148c3bf38e263cdf9fe05', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250060', 'activity_16021615393155001', '38dcaa2d6d784020be259373e4d4be5e', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250061', 'activity_16021615393155001', '3908a477cdf14d1f8eb5eed449579558', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250062', 'activity_16021615393155001', '398596409c93486fa74696a2f007b2a7', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250063', 'activity_16021615393155001', '3a4c68d8c65346c896dd24813fc578c6', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250064', 'activity_16021615393155001', '3c4af06a672149ab8f4c39976f75ddf3', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250065', 'activity_16021615393155001', '3f72a4d0dc7b4030b374aea07166c9f3', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250066', 'activity_16021615393155001', '406fa62963fc410fa167a84e0bf9548d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250068', 'activity_16021615393155001', '427ecb95a19d4ab88a1a641488479eca', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250069', 'activity_16021615393155001', '42a21c081f984a9892817a55427c4b46', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250070', 'activity_16021615393155001', '4323757eac0e483c84b0afb8a659c55f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250071', 'activity_16021615393155001', '44e903e89b8c4526be51bf95ee0a5801', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250072', 'activity_16021615393155001', '45413080ef7742b5942f32fc98b69b7c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250073', 'activity_16021615393155001', '456d07fa5706433d8d03e61ce79cc4b1', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250074', 'activity_16021615393155001', '461c51e4dd34438ca945ddd2e1fa22f7', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250075', 'activity_16021615393155001', '46b361392ed8427ab2d6a7a386c1a375', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250076', 'activity_16021615393155001', '47142390c156437a9c02173ea5940cab', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250077', 'activity_16021615393155001', '473176e3f0c3456a8cce4a01e4a117d4', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250078', 'activity_16021615393155001', '47d9a3f6404a40fc9491c1d66d2c7a78', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250079', 'activity_16021615393155001', '486e709ae39b47aaae16f885b32d259f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250080', 'activity_16021615393155001', '4a32aba3c0674d82b9bc5c865b6775ba', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250081', 'activity_16021615393155001', '4ae617ced4e5441391fc09d45169c23a', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250082', 'activity_16021615393155001', '4bd1dde8fe9942028805f8e1c622a111', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250083', 'activity_16021615393155001', '4c03aba7e5f640ec9b3d4b09e69db205', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250084', 'activity_16021615393155001', '4d97fb640261455597ce8f58ca161872', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250085', 'activity_16021615393155001', '4f2e9663c8da4b789463ee9a109ecbd6', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250086', 'activity_16021615393155001', '4f8a7cf3045a48f788103106c54573da', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250087', 'activity_16021615393155001', '501c061d986f48619cc820348fac1038', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250088', 'activity_16021615393155001', '5147bca86385492ab8bcbd030f199c10', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250089', 'activity_16021615393155001', '519edc91c9e14832a4715adeb26c8ff1', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250090', 'activity_16021615393155001', '523118ab0ddb46f5bffb2c773ce8db83', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254250091', 'activity_16021615393155001', '527e8a6c9da84c93aded6a8479f3e730', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516100', 'activity_16021615393155001', '60305b1bf16a4e8193a368593f07dffa', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516101', 'activity_16021615393155001', '631eff2454424a3ea1d76de07e33d748', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516102', 'activity_16021615393155001', '6389f8cb58944365af6d972cdc0a5657', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516103', 'activity_16021615393155001', '63b8c7eaa1794de0ad7bb3ed877d7c85', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516104', 'activity_16021615393155001', '66011f07de994df7a0cf665169b10df5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516105', 'activity_16021615393155001', '6664af8469e34ff6a72bc24e68cc3805', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516106', 'activity_16021615393155001', '6696d3698c2f401b90596daf1b66e6a6', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516107', 'activity_16021615393155001', '66d8455d796b4004917e0c53375d56ab', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516108', 'activity_16021615393155001', '67f9f4f2bd694824ad512eb849b167bf', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516109', 'activity_16021615393155001', '683a010da4814a6a93b5af4d4370b700', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516110', 'activity_16021615393155001', '698fedbe96f34c4ea3aa301bb9a972f2', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516111', 'activity_16021615393155001', '6b8470df867648388067f147e00ce791', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516112', 'activity_16021615393155001', '6bc2028c4a5c4c948ccb9c243ea58084', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516113', 'activity_16021615393155001', '6c1a7855801d4ccdae3892d85121fd9b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516114', 'activity_16021615393155001', '6cb2a94fa728403982ecc0cf3b69aec0', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516115', 'activity_16021615393155001', '6d25a894d2604d3488988f7265035c9f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516116', 'activity_16021615393155001', '6d3352fe959043b991a3e287ec7661c3', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516117', 'activity_16021615393155001', '6d99c709cf85427fa5fa78d7d1add4e8', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516119', 'activity_16021615393155001', '7096631b4e814461a51cac8a6bc289f0', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516120', 'activity_16021615393155001', '70cf1a1b3f404efb84ba65dccd49ea75', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516121', 'activity_16021615393155001', '714ce4c5b33647ab8f364dadce0a19ce', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516122', 'activity_16021615393155001', '7184199f62254b5d8676e03647254c4a', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516123', 'activity_16021615393155001', '729902710c3c49be94ca8f0d4ed732c4', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516124', 'activity_16021615393155001', '730e9015bfb3434bb7c68a2ff83a3038', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516125', 'activity_16021615393155001', '73551123366b496b8bec2db6568a7ea5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516126', 'activity_16021615393155001', '73fca92c2ffb4ed6a172fff059be7f1b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516127', 'activity_16021615393155001', '7456f594359345f3b94ec46bc30d46a0', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516128', 'activity_16021615393155001', '74fddaeba72546c5ab51f28875b8dcd1', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516129', 'activity_16021615393155001', '7537597d86a444e88bc8110505519da6', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516130', 'activity_16021615393155001', '75ba367b11064db28b0bf42d4c726a84', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516131', 'activity_16021615393155001', '75e48395949c4b459a9e7a46bcb59870', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516132', 'activity_16021615393155001', '772fb7f8ac9449d296aab0d978f3ffa0', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516133', 'activity_16021615393155001', '777ba550e4d64589b958d1397583129b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516134', 'activity_16021615393155001', '77f5b1a492954906939bea5dbf890105', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516135', 'activity_16021615393155001', '78e99ae9d0a5412cad9f07c1c29917ad', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516136', 'activity_16021615393155001', '79175ef5feec44d08fb8bf5fb13a77c5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516137', 'activity_16021615393155001', '798d77d5451a4f0dace6392ccaecdded', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516138', 'activity_16021615393155001', '79f7ef17fdbf4b9ba1274af96ef1d80e', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516139', 'activity_16021615393155001', '7a117ebfeb1a4cd781ed8ed20a0c80b2', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516140', 'activity_16021615393155001', '7afb2760af1144d99bf325dbae3c4abb', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516141', 'activity_16021615393155001', '7bc038c6334c448584bff2b4f6b36ca5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516142', 'activity_16021615393155001', '7e13c58f0c93472e8cdbcec5d4467785', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542516143', 'activity_16021615393155001', '813ce27aa20d4a6c9d325234f2f7d966', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254251692', 'activity_16021615393155001', '5309b73cd02a498fa222c0cc6934f33f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254251693', 'activity_16021615393155001', '539edce297654d079b09e9923aaea1e0', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254251694', 'activity_16021615393155001', '56a1c33aafd74894afe1c38aaaca0a76', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254251695', 'activity_16021615393155001', '59dbdc9092e645f3ad8d5b6156d9a77f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254251696', 'activity_16021615393155001', '5a28a89b38b04bafa1b3fc966e847f9c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254251697', 'activity_16021615393155001', '5b4abfc18d2749f28ab588b1a3a5a768', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254251698', 'activity_16021615393155001', '5d112ab253d942a3a5ce356a48f572d4', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16063015254251699', 'activity_16021615393155001', '5ece42ed79b844a5b910a12cce82a439', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531144', 'activity_16021615393155001', '81d45c7857ce4eeea416ea7a6adb552d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531145', 'activity_16021615393155001', '83bf6c2d98874d37b736228fe9b61ec0', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531148', 'activity_16021615393155001', '88b4280096cd4146a8cc32b53eddcf76', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531149', 'activity_16021615393155001', '895ac7c8aac54de496abf29769b6829e', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531150', 'activity_16021615393155001', '8cf58a61603948dbaa935ee255ec1873', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531151', 'activity_16021615393155001', '8f3b012725ca4d45adf6e5a9cdeccc66', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531152', 'activity_16021615393155001', '904a192614e94d5ca04fdf4897bc935a', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531153', 'activity_16021615393155001', '906737e8da8849b58af6e2fc2db0795f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531154', 'activity_16021615393155001', '90742886e8b446ae952536d760983879', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531155', 'activity_16021615393155001', '91f60fc5064a4c198cc766ab6cb751a2', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531156', 'activity_16021615393155001', '92b8c1f9d91345b5bb59b3b8c0547be5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531157', 'activity_16021615393155001', '935dfcb96ea24143b14ba5f19db77de3', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531159', 'activity_16021615393155001', '951477f25f7d4ce0bfd6ee8fce2835d5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531160', 'activity_16021615393155001', '96d8f6ec73fc4cab8f042bc790168554', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531161', 'activity_16021615393155001', '981b65a6840a4ec18c3cb88f665a5882', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531162', 'activity_16021615393155001', '986c3c4d96174fa59287bd3d3a1ab5cd', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531163', 'activity_16021615393155001', '9abb0d4c6ccd49f5b58c046fcde5e8dc', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531164', 'activity_16021615393155001', '9ae8276a41494793943f4367462388f0', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531166', 'activity_16021615393155001', '9cf34c99828346c4bf5281ce04c10da5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531167', 'activity_16021615393155001', '9d35e24ab051489e91c393eb991e0d24', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531168', 'activity_16021615393155001', '9fda34c991094cb282572c74d2c1c245', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531169', 'activity_16021615393155001', 'a031a42894f9451f917333d41db556aa', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531170', 'activity_16021615393155001', 'a208112004fc47ec8e5691e1e54ce5c3', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542531171', 'activity_16021615393155001', 'a38b2b4095ba4db89406e39ecb8c9297', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542563172', 'activity_16021615393155001', 'a5a28ceca6594fdc87d1d064f40674ac', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542563173', 'activity_16021615393155001', 'a5ee3d5b4c274eaeaa1b56d0251b9e70', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542563174', 'activity_16021615393155001', 'a62a8fed2797446cb193060a60b4b537', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578175', 'activity_16021615393155001', 'a6af8339c75241a9af7531422f3cfda7', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578176', 'activity_16021615393155001', 'a6d1a8196907436396c0b26c3dd6359d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578177', 'activity_16021615393155001', 'a6ff825f7c3640d9a9524836ddc4e703', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578178', 'activity_16021615393155001', 'a80dfe09f7f24d9ebaa10e83efdf5f36', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578179', 'activity_16021615393155001', 'a8c72fa316ad4a6bbadc83ba267ee196', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578180', 'activity_16021615393155001', 'a933435be1724d8290a8b8a56f62048d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578181', 'activity_16021615393155001', 'a9339eb9bf2748778c1f27fe3e06866a', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578182', 'activity_16021615393155001', 'aa2adfb030da42f9ad2fd5bdc3341ac8', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578183', 'activity_16021615393155001', 'aa3b880220c04e869f15db5409e6a533', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578184', 'activity_16021615393155001', 'ac6ed6cc374f4f46a5c98a71ef06554e', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578185', 'activity_16021615393155001', 'ac91aa20749b4563baaae3c044b74d34', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578186', 'activity_16021615393155001', 'acc0debdf2fe41d2b78b9c21b4095883', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578187', 'activity_16021615393155001', 'ad0e55f1d71047669a1852ca36a0bb36', 'N', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578188', 'activity_16021615393155001', 'ad8992bfd8d44b61bf7da698bad49c76', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578189', 'activity_16021615393155001', 'adde3849a403419d87b02a35e99504a5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578190', 'activity_16021615393155001', 'aea007ac6b9741b3885b90339c9ecc62', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578191', 'activity_16021615393155001', 'aeb9944ee93e4de4a1429d2ab7409e66', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578192', 'activity_16021615393155001', 'af2a5e97c8fb4ac9a5ed10e89fb81075', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578193', 'activity_16021615393155001', 'af80d01488d6494bba0b1eda6fec913c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578194', 'activity_16021615393155001', 'afc16029852d4c24a19f07b39e2530ab', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578195', 'activity_16021615393155001', 'b059105ddc854a0db63ccfb4287e72c5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578196', 'activity_16021615393155001', 'b09c35ff17cd49cdafcaeef8bcce41b1', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578197', 'activity_16021615393155001', 'b19809e679f4410d8ac8927dcc1e5f04', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578198', 'activity_16021615393155001', 'b2e6e8f8351a4c50b264cd932b834896', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578199', 'activity_16021615393155001', 'b3b5186765c54c8db2a4cc6416e8798d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578200', 'activity_16021615393155001', 'b51ac4a82cae4f15b56e70b66f4e4ac6', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578201', 'activity_16021615393155001', 'b526d5dbd8a54fc988d8cdd4fc682d1d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578202', 'activity_16021615393155001', 'b6aeb55588c141ea9798047ff7e47f1d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578203', 'activity_16021615393155001', 'b77c3ab9ba904eaf8f3e7ce96f9f2ce9', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578204', 'activity_16021615393155001', 'b7e424848cc84761974202218fc9ffaa', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578205', 'activity_16021615393155001', 'b8adb98275e14eb6b4bd152eabcbaea3', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578206', 'activity_16021615393155001', 'b8b56f47198b45cd81838817f9d2955f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578207', 'activity_16021615393155001', 'b99348d4f558417982d368dce778350e', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578208', 'activity_16021615393155001', 'b99ad517f19d4baf87845d40b17bc7c8', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578209', 'activity_16021615393155001', 'b9daeac80a9d45e9b9eee2133f8551f2', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578210', 'activity_16021615393155001', 'b9f2c6bb10d4485792e339f6ac9e77a5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578211', 'activity_16021615393155001', 'bac7d0c53aa94455bb810e7cce9a90cd', 'N', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578212', 'activity_16021615393155001', 'bae369042d9d48adb1c0737f2a5573a3', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578213', 'activity_16021615393155001', 'bb553949e819483493d147d8973a07e4', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578214', 'activity_16021615393155001', 'bbc1475a9fa14d65a5b4e48a0e4f8f4c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578215', 'activity_16021615393155001', 'bbea6bf1418f4fb79e78d5fc5237c176', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578216', 'activity_16021615393155001', 'bbf2993a9ed44e37bf7fb1403a8bde6d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578217', 'activity_16021615393155001', 'bc9461cf350944f09d01d6212ad57c87', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578218', 'activity_16021615393155001', 'bd976107f444463d85f9e1dd7bf00e74', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578219', 'activity_16021615393155001', 'bfcee17b70474bcd8214fac9459038ec', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578220', 'activity_16021615393155001', 'c0ab2a25bdec42069a664cfc08985161', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578221', 'activity_16021615393155001', 'c1749ce1182e4d3ca45835045176f837', 'N', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542578222', 'activity_16021615393155001', 'c1f5ce3abe604b1da8028ebacbbbcd35', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594224', 'activity_16021615393155001', 'c40a8352527d4401a30f73d6f76cf17c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594225', 'activity_16021615393155001', 'c5c8933e454f4fbb934ad8f9c599dcae', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594226', 'activity_16021615393155001', 'c6b05e7a229a4858b488aab820bd0798', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594227', 'activity_16021615393155001', 'c84a6bef06fd4d0ab8a4fc48e3a31149', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594228', 'activity_16021615393155001', 'c97069a68e02418286386ee2e3583d9c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594229', 'activity_16021615393155001', 'c9c39e3703ca4325a94d46c4ff459a67', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594231', 'activity_16021615393155001', 'ca2ea165f5024e52a5d83a87c6563b7d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594233', 'activity_16021615393155001', 'cc1f1ef751084726ab376f21c70ae07a', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594234', 'activity_16021615393155001', 'cd49453cdf974d4288bb2305cab72775', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594235', 'activity_16021615393155001', 'cf553f84c5844cdeb31481476097d89a', 'N', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594236', 'activity_16021615393155001', 'cf6b09def97c483091f1e1a8a79ec92b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594237', 'activity_16021615393155001', 'd0bc9dda356d4667a3dff9cec16b6d29', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594238', 'activity_16021615393155001', 'd0e62371631045acbee559d0549c7dc7', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594239', 'activity_16021615393155001', 'd102ee072104413d924aa5353ebc2596', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594240', 'activity_16021615393155001', 'd1994b4453bf4820a5adddc35690ce6f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594241', 'activity_16021615393155001', 'd2869b70e183422a83e540885110ac9e', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594242', 'activity_16021615393155001', 'd4088ef4a53d44e9b38c1740bf164edd', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594243', 'activity_16021615393155001', 'd55f43a8ced3400f99eacd5ad91ab169', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594244', 'activity_16021615393155001', 'd56e2488234d4bc8b6ff44dc0a39355c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594245', 'activity_16021615393155001', 'd59ba0ea08884e569f9e6e061474811f', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542594246', 'activity_16021615393155001', 'd66b8907beb54b0db5960342cfe5149d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610247', 'activity_16021615393155001', 'd704a176f0c64fb4b86200ebe97a0d99', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610248', 'activity_16021615393155001', 'd7ae4552d88441feab67c86685d411f4', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610249', 'activity_16021615393155001', 'd8c15159fce14d7da3c40a32f744c6d3', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610250', 'activity_16021615393155001', 'd9431e93464041e9a3d022a36133b32c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610251', 'activity_16021615393155001', 'da033f68471a426aac55db44f64de8df', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610252', 'activity_16021615393155001', 'da8e576b65244772a868439f36211477', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610253', 'activity_16021615393155001', 'daba64f1479d4a4b8b95c95f6949c48c', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610254', 'activity_16021615393155001', 'db7652b8a9ab42c78160b1c330462611', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610255', 'activity_16021615393155001', 'dbd81304ad3640a0a09b777debdad534', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610256', 'activity_16021615393155001', 'dcaf0b014e214045be3d5c95385564ab', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542610257', 'activity_16021615393155001', 'e13e5061e68c4cf8be530dd4b55c7c93', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625258', 'activity_16021615393155001', 'e2b04547e47b45a8873857aa8148c853', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625259', 'activity_16021615393155001', 'e34859f16cee41a796ba5285b29743e1', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625260', 'activity_16021615393155001', 'e35edbba761246a9b2346b4b3fd0bf54', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625261', 'activity_16021615393155001', 'e3a7c22b799b4fe8810f6373fdbc3839', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625262', 'activity_16021615393155001', 'e3c09131628343958f183694f9e2d5b5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625263', 'activity_16021615393155001', 'e4ffadd130894894a3566cbe60050ca9', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625264', 'activity_16021615393155001', 'e5a77dc478f8486cb7e6bdb0a4ce07e0', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625265', 'activity_16021615393155001', 'e65eaf99d0554478aefd32a73b605529', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625266', 'activity_16021615393155001', 'e68d9079dbcb4b47bc621488c853e495', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625267', 'activity_16021615393155001', 'e73f9d288618482c96926c41c0f7a4d5', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625268', 'activity_16021615393155001', 'e800a8b1287d4c0385d7553e7992d133', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625269', 'activity_16021615393155001', 'eb50140933ce4efe96adbcd486f079cb', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625270', 'activity_16021615393155001', 'ed4264a58d4549e5ac920bb07946ea05', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625271', 'activity_16021615393155001', 'eda34f5c44424cb0aeb2a02cb7bef85d', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625272', 'activity_16021615393155001', 'edb9ecc947094e0ab8ad92ceec3b58b7', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625273', 'activity_16021615393155001', 'ee226207c0a540749f11d88b307bb53b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625274', 'activity_16021615393155001', 'f00736bc7c59411f9ce1b76dc1cd1c15', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625275', 'activity_16021615393155001', 'f10cba6b93a0407e81dbe8dc8b5b369a', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625276', 'activity_16021615393155001', 'f12fbeba2a6941f2a515fb280662c2b8', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625277', 'activity_16021615393155001', 'f228c629a97049b49a69c0d86b2e38d7', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625278', 'activity_16021615393155001', 'f2bdda4b9f1540f6aa1fb9e2cf4041c6', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625279', 'activity_16021615393155001', 'f470009456714538a5470f0c96711f16', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625280', 'activity_16021615393155001', 'f482bb4ef2e14a62b1ab0e6da2171416', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625281', 'activity_16021615393155001', 'f6fa5e06ba0742fc9ac30e05affdf01e', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625282', 'activity_16021615393155001', 'f9fa97068a3240239f337f85245fdcf4', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625283', 'activity_16021615393155001', 'fa0f38c0120c467eb6cd6a2909b7a779', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625284', 'activity_16021615393155001', 'fa79831f01c642d1956ccb92dc4ed7bf', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625285', 'activity_16021615393155001', 'fc461f8fd00842a3abc7c2a34eb9ee88', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625286', 'activity_16021615393155001', 'fca2411a474f48b7abe38aa18e183817', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625287', 'activity_16021615393155001', 'fdc3c4e4f3824ea488b2821dd3f9333b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_160630152542625288', 'activity_16021615393155001', 'fe2a4520a93e4fb8a636cb141e79a83b', 'Y', '2016-06-30 15:25:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070512541731500', 'activity_16021615393155001', 'defbe50e30f14756bd439c2149e2225f', 'Y', '2016-07-05 12:54:17');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070512554242100', 'activity_16021615393155001', 'fef67d0f225b41a4a4579d9f7772209c', 'Y', '2016-07-05 12:55:42');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070512573267900', 'activity_16021615393155001', '0ec8537e4c104a499efd069e1a108c07', 'Y', '2016-07-05 12:57:32');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070517400977400', 'activity_16021615393155001', '2c8c83372e43446392f70eb9a85ff7bc', 'Y', '2016-07-05 17:40:09');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070518400254100', 'activity_16021615393155001', '08559c952dd5413286e80295879797aa', 'Y', '2016-07-05 18:40:02');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070518401969600', 'activity_16021615393155001', '2872359f0f794edea64b2a13b2003503', 'Y', '2016-07-05 18:40:19');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070518404563700', 'activity_16021615393155001', '1732bf787a104dfd91aace1b1fa9c666', 'Y', '2016-07-05 18:40:45');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070518411454900', 'activity_16021615393155001', '9a333eb4960149fba9c743f45192697d', 'Y', '2016-07-05 18:41:14');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070518412875100', 'activity_16021615393155001', '7f26f0f785a74ef18ba5eff491f29e1a', 'Y', '2016-07-05 18:41:28');
INSERT INTO `camp_activity_signup` VALUES ('signup_1607051847476500', 'activity_16021615393155001', 'ad77a06f883a45f18a869e49fe527c25', 'Y', '2016-07-05 18:47:47');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070518480325400', 'activity_16021615393155001', 'a9d54b8f4e524308a6aed781bc248dcc', 'Y', '2016-07-05 18:48:03');
INSERT INTO `camp_activity_signup` VALUES ('signup_16070609115799800', 'activity_16021615393155001', '9299dcc670374498a0e3a1f61ab44a38', 'Y', '2016-07-06 09:11:57');

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
INSERT INTO `car` VALUES ('10', 'test');
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
  `PID` char(32) NOT NULL,
  `WEEKDAY` tinyint(3) unsigned NOT NULL,
  `STIME` smallint(5) unsigned NOT NULL,
  `ETIME` smallint(5) unsigned NOT NULL,
  `CREATE` datetime NOT NULL,
  `LAST_UPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of care_time
-- ----------------------------
INSERT INTO `care_time` VALUES ('P_222222222', '7', '1700', '2000', '2015-03-29 17:11:42', '2015-03-29 17:11:45');

-- ----------------------------
-- Table structure for `college_camp_check_in`
-- ----------------------------
DROP TABLE IF EXISTS `college_camp_check_in`;
CREATE TABLE `college_camp_check_in` (
  `CHECK_IN_ID` varchar(75) NOT NULL,
  `COLLEGE_ID` varchar(255) NOT NULL,
  `CHECK_IN_TIME` datetime NOT NULL,
  `CHECK_IN_LAST_TIME` datetime NOT NULL,
  `IF_CHECK_IN` varchar(1) NOT NULL,
  `CAMP_DATE` varchar(50) NOT NULL,
  `ACTIVITY_ID` varchar(75) DEFAULT '',
  `CHECK_TYPE_TIME` varchar(255) DEFAULT NULL,
  `CHECK_INFO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CHECK_IN_ID`),
  UNIQUE KEY `COLLEGE_ID, CAMP_DATE, CHECK_TYPE_TIME` (`COLLEGE_ID`,`CAMP_DATE`,`CHECK_TYPE_TIME`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college_camp_check_in
-- ----------------------------
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16063002400290900', 'cd49453cdf974d4288bb2305cab72775', '2016-06-30 02:40:02', '2016-06-30 02:40:02', 'Y', '2016-06-30', '', '1', '3');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16063002485512400', 'edb9ecc947094e0ab8ad92ceec3b58b7', '2016-06-30 02:48:55', '2016-06-30 02:48:55', 'Y', '2016-06-30', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16063002492661100', 'cd49453cdf974d4288bb2305cab72775', '2016-06-30 02:49:26', '2016-06-30 02:49:35', 'Y', '2016-06-30', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16063011144958400', 'cd49453cdf974d4288bb2305cab72775', '2016-07-06 09:30:00', '2016-07-06 08:29:35', 'Y', '2016-07-06', '', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070120075588200', '9fda34c991094cb282572c74d2c1c245', '2016-07-01 13:30:00', '2016-07-01 13:30:00', 'Y', '2016-07-01', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070120081428600', '7afb2760af1144d99bf325dbae3c4abb', '2016-07-01 13:30:00', '2016-07-01 13:30:00', 'Y', '2016-07-01', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070120103132200', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-01 13:30:00', '2016-07-01 13:30:00', 'Y', '2016-07-01', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070120215957200', '501c061d986f48619cc820348fac1038', '2016-07-01 13:30:00', '2016-07-01 13:30:00', 'Y', '2016-07-01', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070120233626100', '60305b1bf16a4e8193a368593f07dffa', '2016-07-01 13:30:00', '2016-07-01 13:30:00', 'Y', '2016-07-01', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070120240750600', '30a13c2adbb143128e2bc474cefd351e', '2016-07-01 13:30:00', '2016-07-01 13:30:00', 'Y', '2016-07-01', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070120241984700', '27a7fb6af78d4a77a838b1197adece4c', '2016-07-01 13:30:00', '2016-07-01 13:30:00', 'Y', '2016-07-01', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070120244847200', '1d1ed38770b54bbd9cefd37fdd7dcdd9', '2016-07-01 13:30:00', '2016-07-01 13:30:00', 'Y', '2016-07-01', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070120263287300', '73551123366b496b8bec2db6568a7ea5', '2016-07-01 13:30:00', '2016-07-01 13:30:00', 'Y', '2016-07-01', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070120264730900', '88191512f646429d81c0ce48e6bbf5c2', '2016-07-01 13:30:00', '2016-07-01 13:30:00', 'Y', '2016-07-01', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070314223013700', '1d1ed38770b54bbd9cefd37fdd7dcdd9', '2016-07-03 14:22:30', '2016-07-03 13:13:56', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070314240773900', '9d35e24ab051489e91c393eb991e0d24', '2016-07-03 14:24:07', '2016-07-03 14:24:07', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070314280695400', '27a7fb6af78d4a77a838b1197adece4c', '2016-07-03 14:28:07', '2016-07-03 13:09:08', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070314381888600', '38dcaa2d6d784020be259373e4d4be5e', '2016-07-03 13:31:29', '2016-07-03 13:31:29', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070317101668000', '9fda34c991094cb282572c74d2c1c245', '2016-07-03 13:10:16', '2016-07-03 13:50:20', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070317102284000', 'af2a5e97c8fb4ac9a5ed10e89fb81075', '2016-07-03 13:10:22', '2016-07-03 13:50:16', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070317102823600', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-03 13:10:28', '2016-07-03 13:03:28', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070319492532600', '45413080ef7742b5942f32fc98b69b7c', '2016-07-03 13:49:25', '2016-07-03 13:49:25', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607031949388500', 'cd49453cdf974d4288bb2305cab72775', '2016-07-03 13:49:37', '2016-07-03 13:49:37', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070319505256700', 'b77c3ab9ba904eaf8f3e7ce96f9f2ce9', '2016-07-03 13:50:52', '2016-07-03 13:50:52', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070319512747100', '6389f8cb58944365af6d972cdc0a5657', '2016-07-03 13:51:27', '2016-07-03 13:51:27', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070319515436200', '798d77d5451a4f0dace6392ccaecdded', '2016-07-03 13:51:54', '2016-07-03 13:51:54', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070320031927900', '7afb2760af1144d99bf325dbae3c4abb', '2016-07-03 13:03:19', '2016-07-03 13:03:19', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070322114451900', 'd102ee072104413d924aa5353ebc2596', '2016-07-03 13:11:44', '2016-07-03 13:11:44', 'Y', '2016-07-03', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070417255654200', '501c061d986f48619cc820348fac1038', '2016-07-04 13:25:56', '2016-07-04 13:56:37', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070417272095300', 'edb9ecc947094e0ab8ad92ceec3b58b7', '2016-07-04 13:27:20', '2016-07-04 13:27:20', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070417313445000', '88191512f646429d81c0ce48e6bbf5c2', '2016-07-04 13:31:34', '2016-07-04 13:31:34', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070417313889900', '73551123366b496b8bec2db6568a7ea5', '2016-07-04 13:31:38', '2016-07-04 13:31:38', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070417314381900', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-04 13:31:43', '2016-07-04 13:48:55', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070417314638400', '9fda34c991094cb282572c74d2c1c245', '2016-07-04 13:31:46', '2016-07-04 13:04:28', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070420302597700', 'cd49453cdf974d4288bb2305cab72775', '2016-07-04 13:30:25', '2016-07-04 13:30:25', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070420304947800', '38dcaa2d6d784020be259373e4d4be5e', '2016-07-04 13:30:49', '2016-07-04 13:30:49', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070421551830200', 'e4ffadd130894894a3566cbe60050ca9', '2016-07-04 13:55:17', '2016-07-04 13:55:17', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607042155572600', '9d35e24ab051489e91c393eb991e0d24', '2016-07-04 13:55:56', '2016-07-04 13:55:56', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_160704215612400', 'd1994b4453bf4820a5adddc35690ce6f', '2016-07-04 13:56:11', '2016-07-04 13:56:11', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070421563270400', '60305b1bf16a4e8193a368593f07dffa', '2016-07-04 13:56:32', '2016-07-04 13:56:32', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070421564127300', '30a13c2adbb143128e2bc474cefd351e', '2016-07-04 13:56:40', '2016-07-04 13:56:40', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607042156449700', '27a7fb6af78d4a77a838b1197adece4c', '2016-07-04 13:56:43', '2016-07-04 13:56:43', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070421564856300', '1d1ed38770b54bbd9cefd37fdd7dcdd9', '2016-07-04 13:56:48', '2016-07-04 13:56:48', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070421573048400', '304e6735b4b0483d971726de17437645', '2016-07-04 13:57:29', '2016-07-04 13:57:29', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070422114447300', 'a9339eb9bf2748778c1f27fe3e06866a', '2016-07-04 13:11:48', '2016-07-04 13:11:48', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070422120259100', 'ee226207c0a540749f11d88b307bb53b', '2016-07-04 13:12:06', '2016-07-04 13:12:06', 'Y', '2016-07-04', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070509325687200', 'e4ffadd130894894a3566cbe60050ca9', '2016-07-05 13:32:58', '2016-07-05 17:24:21', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070509330632600', '501c061d986f48619cc820348fac1038', '2016-07-05 13:33:07', '2016-07-05 17:24:02', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070509345298700', '9d35e24ab051489e91c393eb991e0d24', '2016-07-05 13:34:54', '2016-07-05 17:23:53', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070509351163500', 'd1994b4453bf4820a5adddc35690ce6f', '2016-07-05 13:35:13', '2016-07-05 17:23:40', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070509354218500', '777ba550e4d64589b958d1397583129b', '2016-07-05 13:35:43', '2016-07-05 17:24:08', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070509362565200', 'cd49453cdf974d4288bb2305cab72775', '2016-07-05 13:36:27', '2016-07-05 17:24:31', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070509364717300', 'b51ac4a82cae4f15b56e70b66f4e4ac6', '2016-07-05 13:36:48', '2016-07-05 17:24:36', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070509471329800', '60305b1bf16a4e8193a368593f07dffa', '2016-07-05 13:47:12', '2016-07-05 17:24:55', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070509473260700', '698fedbe96f34c4ea3aa301bb9a972f2', '2016-07-05 13:47:32', '2016-07-05 17:24:59', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070512202783900', '0dc44e5b224f4c97a08cf2fee5a4f14b', '2016-07-05 13:20:32', '2016-07-05 17:34:25', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070512204770500', '904a192614e94d5ca04fdf4897bc935a', '2016-07-05 13:20:52', '2016-07-05 17:32:59', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070512212135600', '03fb33df04a049bba48e94356da8b34d', '2016-07-05 13:21:25', '2016-07-05 17:31:36', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070512214132600', '4323757eac0e483c84b0afb8a659c55f', '2016-07-05 13:21:45', '2016-07-05 17:30:59', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051221528700', '77f5b1a492954906939bea5dbf890105', '2016-07-05 13:21:56', '2016-07-05 17:31:51', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070516133563500', 'fef67d0f225b41a4a4579d9f7772209c', '2016-07-05 13:13:35', '2016-07-05 21:20:51', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070516291235800', 'ca2ea165f5024e52a5d83a87c6563b7d', '2016-07-05 16:29:12', '2016-07-05 17:26:36', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051715574300', 'd59ba0ea08884e569f9e6e061474811f', '2016-07-05 17:16:01', '2016-07-05 17:16:01', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517161262600', '01479891f8c346ad879cf0db6ed3e926', '2016-07-05 17:16:16', '2016-07-05 17:16:16', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517180156700', '91f60fc5064a4c198cc766ab6cb751a2', '2016-07-05 17:18:05', '2016-07-05 17:18:05', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517190497800', 'a5a28ceca6594fdc87d1d064f40674ac', '2016-07-05 17:19:04', '2016-07-05 17:19:04', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517191172900', '8cf58a61603948dbaa935ee255ec1873', '2016-07-05 17:19:11', '2016-07-05 17:19:11', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517192917100', '42a21c081f984a9892817a55427c4b46', '2016-07-05 17:19:29', '2016-07-05 17:19:29', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517193558800', 'bbea6bf1418f4fb79e78d5fc5237c176', '2016-07-05 17:19:35', '2016-07-05 17:19:35', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517194869000', 'd2869b70e183422a83e540885110ac9e', '2016-07-05 17:19:48', '2016-07-05 17:19:48', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517195596500', '089f4bb151ca46d9bbe21eefb5fa93fd', '2016-07-05 17:19:55', '2016-07-05 17:19:55', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517201196800', '59dbdc9092e645f3ad8d5b6156d9a77f', '2016-07-05 17:20:11', '2016-07-05 17:20:11', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051720282800', '4f2e9663c8da4b789463ee9a109ecbd6', '2016-07-05 17:20:27', '2016-07-05 17:20:27', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517204039000', 'eb50140933ce4efe96adbcd486f079cb', '2016-07-05 17:20:40', '2016-07-05 17:20:40', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517205194100', 'a38b2b4095ba4db89406e39ecb8c9297', '2016-07-05 17:20:51', '2016-07-05 17:20:51', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517205473600', '35baec64da714df0b2b2a154328366c3', '2016-07-05 17:20:54', '2016-07-05 17:20:54', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517205758100', 'fc461f8fd00842a3abc7c2a34eb9ee88', '2016-07-05 17:20:57', '2016-07-05 17:20:57', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517210450100', '981b65a6840a4ec18c3cb88f665a5882', '2016-07-05 17:21:04', '2016-07-05 17:21:04', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517212497400', 'c5c8933e454f4fbb934ad8f9c599dcae', '2016-07-05 17:21:24', '2016-07-05 17:21:24', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051721418600', 'c6b05e7a229a4858b488aab820bd0798', '2016-07-05 17:21:40', '2016-07-05 17:21:40', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051721464800', '35aacfb3c9454a499cd119def4860676', '2016-07-05 17:21:45', '2016-07-05 17:21:45', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517220289500', '222b1338ccca4050855bba0d07499f93', '2016-07-05 17:22:02', '2016-07-05 17:23:07', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517220620300', '5b4abfc18d2749f28ab588b1a3a5a768', '2016-07-05 17:22:06', '2016-07-05 17:23:03', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517220962100', '67f9f4f2bd694824ad512eb849b167bf', '2016-07-05 17:22:09', '2016-07-05 17:22:09', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517221440900', '4f8a7cf3045a48f788103106c54573da', '2016-07-05 17:22:14', '2016-07-05 17:22:27', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517225670500', '92b8c1f9d91345b5bb59b3b8c0547be5', '2016-07-05 17:22:56', '2016-07-05 17:24:50', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517230430300', '75e48395949c4b459a9e7a46bcb59870', '2016-07-05 17:23:04', '2016-07-05 17:24:46', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517230688700', '1d1ed38770b54bbd9cefd37fdd7dcdd9', '2016-07-05 17:23:07', '2016-07-05 13:30:07', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517232861400', '6d3352fe959043b991a3e287ec7661c3', '2016-07-05 17:23:28', '2016-07-05 17:23:46', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517233223100', '3c4af06a672149ab8f4c39976f75ddf3', '2016-07-05 17:23:32', '2016-07-05 17:23:53', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051723374700', 'af80d01488d6494bba0b1eda6fec913c', '2016-07-05 17:23:36', '2016-07-05 17:23:36', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517233873600', 'd0bc9dda356d4667a3dff9cec16b6d29', '2016-07-05 17:23:38', '2016-07-05 17:23:38', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517241482400', '30a13c2adbb143128e2bc474cefd351e', '2016-07-05 17:24:14', '2016-07-05 17:24:14', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517241515000', '47d9a3f6404a40fc9491c1d66d2c7a78', '2016-07-05 17:24:14', '2016-07-05 17:24:34', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517241836700', 'd4088ef4a53d44e9b38c1740bf164edd', '2016-07-05 17:24:18', '2016-07-05 17:24:37', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517242293400', '63b8c7eaa1794de0ad7bb3ed877d7c85', '2016-07-05 17:24:22', '2016-07-05 17:24:43', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517242623400', '27a7fb6af78d4a77a838b1197adece4c', '2016-07-05 17:24:26', '2016-07-05 17:24:26', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_160705172426600', 'c1f5ce3abe604b1da8028ebacbbbcd35', '2016-07-05 17:24:25', '2016-07-05 17:24:25', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517242914800', '6c1a7855801d4ccdae3892d85121fd9b', '2016-07-05 17:24:29', '2016-07-05 17:24:29', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517243221800', '3133853c609c4e468454a04142eb945c', '2016-07-05 17:24:32', '2016-07-05 17:24:32', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517245672900', 'aa2adfb030da42f9ad2fd5bdc3341ac8', '2016-07-05 17:24:56', '2016-07-05 17:24:56', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517245952900', '0b2c30fb0dce4268a4bee8f573fc04bd', '2016-07-05 17:24:59', '2016-07-05 17:25:19', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517251645200', 'a6af8339c75241a9af7531422f3cfda7', '2016-07-05 17:25:16', '2016-07-05 17:25:16', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051725224700', '38dcaa2d6d784020be259373e4d4be5e', '2016-07-05 17:25:22', '2016-07-05 17:25:22', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517252343700', '631eff2454424a3ea1d76de07e33d748', '2016-07-05 17:25:23', '2016-07-05 17:25:23', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517252570500', 'edb9ecc947094e0ab8ad92ceec3b58b7', '2016-07-05 17:25:25', '2016-07-05 17:25:25', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517252654700', '951477f25f7d4ce0bfd6ee8fce2835d5', '2016-07-05 17:25:26', '2016-07-05 17:25:26', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517253020300', '78e99ae9d0a5412cad9f07c1c29917ad', '2016-07-05 17:25:29', '2016-07-05 17:25:39', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051725371600', '398596409c93486fa74696a2f007b2a7', '2016-07-05 17:25:36', '2016-07-05 17:25:36', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517254444600', '124738e9800b47df946fb149e040aa26', '2016-07-05 17:25:44', '2016-07-05 17:29:45', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517255221100', '0a5af13f14c2455d86f78b0ee2b77a13', '2016-07-05 17:25:52', '2016-07-05 17:29:49', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517255953300', '75ba367b11064db28b0bf42d4c726a84', '2016-07-05 17:25:57', '2016-07-05 17:29:54', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517260649600', 'f6fa5e06ba0742fc9ac30e05affdf01e', '2016-07-05 17:26:06', '2016-07-05 17:27:18', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051726083900', '4d97fb640261455597ce8f58ca161872', '2016-07-05 17:26:08', '2016-07-05 17:29:56', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517261172900', 'a62a8fed2797446cb193060a60b4b537', '2016-07-05 17:26:11', '2016-07-05 17:29:59', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517261545600', 'afc16029852d4c24a19f07b39e2530ab', '2016-07-05 17:26:15', '2016-07-05 17:30:01', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517261825900', '519edc91c9e14832a4715adeb26c8ff1', '2016-07-05 17:26:18', '2016-07-05 17:26:18', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517262268700', 'ad8992bfd8d44b61bf7da698bad49c76', '2016-07-05 17:26:22', '2016-07-05 17:30:04', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517262643700', '683a010da4814a6a93b5af4d4370b700', '2016-07-05 17:26:26', '2016-07-05 17:26:26', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517262693200', 'd102ee072104413d924aa5353ebc2596', '2016-07-05 17:26:27', '2016-07-05 17:30:06', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517262948000', 'b7e424848cc84761974202218fc9ffaa', '2016-07-05 17:26:29', '2016-07-05 17:26:29', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517263371100', '7a117ebfeb1a4cd781ed8ed20a0c80b2', '2016-07-05 17:26:33', '2016-07-05 17:26:33', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517263882300', 'aeb9944ee93e4de4a1429d2ab7409e66', '2016-07-05 17:26:38', '2016-07-05 17:26:38', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517264028500', '054388d32ae044e8bd5648612376503f', '2016-07-05 17:26:40', '2016-07-05 17:26:40', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517264278500', 'd0e62371631045acbee559d0549c7dc7', '2016-07-05 17:26:42', '2016-07-05 17:26:42', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517264450100', 'daba64f1479d4a4b8b95c95f6949c48c', '2016-07-05 17:26:44', '2016-07-05 17:26:44', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517264678500', '5d112ab253d942a3a5ce356a48f572d4', '2016-07-05 17:26:46', '2016-07-05 17:26:46', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517264847300', '10350156c16f4f13b80d9719fe80f7c7', '2016-07-05 17:26:48', '2016-07-05 17:26:48', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517265389500', 'a933435be1724d8290a8b8a56f62048d', '2016-07-05 17:26:53', '2016-07-05 17:26:53', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517265614400', 'fe2a4520a93e4fb8a636cb141e79a83b', '2016-07-05 17:26:55', '2016-07-05 17:26:55', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517270011900', '986c3c4d96174fa59287bd3d3a1ab5cd', '2016-07-05 17:27:00', '2016-07-05 17:27:00', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051727046600', 'a5ee3d5b4c274eaeaa1b56d0251b9e70', '2016-07-05 17:27:04', '2016-07-05 17:27:04', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517270749300', '33f116441bdb49568eb61c199e0b8966', '2016-07-05 17:27:07', '2016-07-05 17:27:07', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051727109400', 'bbf2993a9ed44e37bf7fb1403a8bde6d', '2016-07-05 17:27:10', '2016-07-05 17:27:10', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517271467400', 'f10cba6b93a0407e81dbe8dc8b5b369a', '2016-07-05 17:27:14', '2016-07-05 17:27:14', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517271620600', '33c3ef192dfb4eea806007da7e4e2405', '2016-07-05 17:27:16', '2016-07-05 17:27:16', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517271839700', '1424be5ffa874d78a4afaf90a1a147ea', '2016-07-05 17:27:18', '2016-07-05 17:27:18', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517272180900', '527e8a6c9da84c93aded6a8479f3e730', '2016-07-05 17:27:21', '2016-07-05 17:27:21', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517272185500', 'd55f43a8ced3400f99eacd5ad91ab169', '2016-07-05 17:27:22', '2016-07-05 17:27:22', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517272378700', '406fa62963fc410fa167a84e0bf9548d', '2016-07-05 17:27:23', '2016-07-05 17:27:23', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517272562400', 'b77c3ab9ba904eaf8f3e7ce96f9f2ce9', '2016-07-05 17:27:25', '2016-07-05 17:27:25', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517272858000', 'b059105ddc854a0db63ccfb4287e72c5', '2016-07-05 17:27:28', '2016-07-05 17:27:28', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517272878500', '3059e576c93440549795d9a35fd63d31', '2016-07-05 17:27:29', '2016-07-05 17:27:29', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517273168500', 'd7ae4552d88441feab67c86685d411f4', '2016-07-05 17:27:31', '2016-07-05 17:27:31', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517273199800', 'f482bb4ef2e14a62b1ab0e6da2171416', '2016-07-05 17:27:32', '2016-07-05 17:27:32', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517273480000', '1135ee714a7e4b55b370580abc8ec798', '2016-07-05 17:27:34', '2016-07-05 17:27:34', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517273514200', 'b9f2c6bb10d4485792e339f6ac9e77a5', '2016-07-05 17:27:35', '2016-07-05 17:27:35', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051727382800', 'd704a176f0c64fb4b86200ebe97a0d99', '2016-07-05 17:27:38', '2016-07-05 17:27:38', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517274060200', '6389f8cb58944365af6d972cdc0a5657', '2016-07-05 17:27:40', '2016-07-05 17:27:40', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517274352200', '798d77d5451a4f0dace6392ccaecdded', '2016-07-05 17:27:43', '2016-07-05 17:27:43', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517280556300', 'e2b04547e47b45a8873857aa8148c853', '2016-07-05 17:28:05', '2016-07-05 17:32:00', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517280828500', 'adde3849a403419d87b02a35e99504a5', '2016-07-05 17:28:08', '2016-07-05 17:31:56', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517281195800', 'd8c15159fce14d7da3c40a32f744c6d3', '2016-07-05 17:28:11', '2016-07-05 17:31:54', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517281476700', 'eda34f5c44424cb0aeb2a02cb7bef85d', '2016-07-05 17:28:14', '2016-07-05 17:28:14', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517281731400', '17d25be19bdf49bcb321bc2b8184dce9', '2016-07-05 17:28:17', '2016-07-05 17:28:17', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517282014600', '371f9545b3654e29bfcf9e408c29f93d', '2016-07-05 17:28:19', '2016-07-05 17:28:19', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517282297400', '81d45c7857ce4eeea416ea7a6adb552d', '2016-07-05 17:28:22', '2016-07-05 17:28:22', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517282547700', '7e13c58f0c93472e8cdbcec5d4467785', '2016-07-05 17:28:25', '2016-07-05 17:28:25', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517282832900', 'dcaf0b014e214045be3d5c95385564ab', '2016-07-05 17:28:28', '2016-07-05 17:28:28', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517283141100', 'da033f68471a426aac55db44f64de8df', '2016-07-05 17:28:31', '2016-07-05 17:32:07', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517283479900', '1e2b9f6c0d2d48748d276d8159f27494', '2016-07-05 17:28:34', '2016-07-05 17:32:04', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_160705172835700', '730e9015bfb3434bb7c68a2ff83a3038', '2016-07-05 17:28:35', '2016-07-05 17:28:35', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517283873400', 'fa79831f01c642d1956ccb92dc4ed7bf', '2016-07-05 17:28:38', '2016-07-05 17:28:38', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517284159700', '4c03aba7e5f640ec9b3d4b09e69db205', '2016-07-05 17:28:41', '2016-07-05 17:28:41', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517284396700', 'bfcee17b70474bcd8214fac9459038ec', '2016-07-05 17:28:44', '2016-07-05 17:28:44', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517285181400', '70cf1a1b3f404efb84ba65dccd49ea75', '2016-07-05 17:28:52', '2016-07-05 17:28:52', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517285639200', '1a81e3a438e04b0ab385bd83a2381c87', '2016-07-05 17:28:56', '2016-07-05 17:28:56', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517290272900', 'fca2411a474f48b7abe38aa18e183817', '2016-07-05 17:29:02', '2016-07-05 17:33:07', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517290629600', '1d7b08e2be9f4629a4257b923ed31287', '2016-07-05 17:29:06', '2016-07-05 17:33:09', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517291229000', 'fa0f38c0120c467eb6cd6a2909b7a779', '2016-07-05 17:29:12', '2016-07-05 17:33:11', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517291589500', '3074f55cd9c947dfb00e56b550924d0a', '2016-07-05 17:29:15', '2016-07-05 17:33:14', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517291832600', 'a031a42894f9451f917333d41db556aa', '2016-07-05 17:29:18', '2016-07-05 17:29:18', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517291842800', 'b9daeac80a9d45e9b9eee2133f8551f2', '2016-07-05 17:29:18', '2016-07-05 17:33:15', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517292129400', 'cc1f1ef751084726ab376f21c70ae07a', '2016-07-05 17:29:21', '2016-07-05 17:32:57', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517292377100', '6cb2a94fa728403982ecc0cf3b69aec0', '2016-07-05 17:29:23', '2016-07-05 17:29:23', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517292613900', '813ce27aa20d4a6c9d325234f2f7d966', '2016-07-05 17:29:25', '2016-07-05 17:33:03', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517292747000', '26850980972d4c989a03aff4807b9bc3', '2016-07-05 17:29:27', '2016-07-05 17:29:27', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517292836800', '473176e3f0c3456a8cce4a01e4a117d4', '2016-07-05 17:29:28', '2016-07-05 17:33:05', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517293121900', '4ae617ced4e5441391fc09d45169c23a', '2016-07-05 17:29:31', '2016-07-05 17:29:31', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517293472400', '66d8455d796b4004917e0c53375d56ab', '2016-07-05 17:29:34', '2016-07-05 17:29:34', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517293932500', '44e903e89b8c4526be51bf95ee0a5801', '2016-07-05 17:29:39', '2016-07-05 17:29:39', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517294189000', '96d8f6ec73fc4cab8f042bc790168554', '2016-07-05 17:29:42', '2016-07-05 17:29:42', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517294448300', '6b8470df867648388067f147e00ce791', '2016-07-05 17:29:44', '2016-07-05 17:29:44', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517294678100', 'af2a5e97c8fb4ac9a5ed10e89fb81075', '2016-07-05 17:29:47', '2016-07-05 17:29:47', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517295052300', 'd9431e93464041e9a3d022a36133b32c', '2016-07-05 17:29:50', '2016-07-05 17:29:50', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517295435500', '486e709ae39b47aaae16f885b32d259f', '2016-07-05 17:29:54', '2016-07-05 17:29:54', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517300130000', 'e3a7c22b799b4fe8810f6373fdbc3839', '2016-07-05 17:30:01', '2016-07-05 17:30:01', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517300382800', '79175ef5feec44d08fb8bf5fb13a77c5', '2016-07-05 17:30:04', '2016-07-05 17:30:04', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517300613600', 'ac6ed6cc374f4f46a5c98a71ef06554e', '2016-07-05 17:30:06', '2016-07-05 17:30:06', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517300984900', '895ac7c8aac54de496abf29769b6829e', '2016-07-05 17:30:10', '2016-07-05 17:30:10', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517301332000', 'a8c72fa316ad4a6bbadc83ba267ee196', '2016-07-05 17:30:13', '2016-07-05 17:30:13', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517301593500', 'a6ff825f7c3640d9a9524836ddc4e703', '2016-07-05 17:30:16', '2016-07-05 17:30:16', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517302119400', '03666df538d4456cba2f3b3e754ffc3e', '2016-07-05 17:30:21', '2016-07-05 17:30:21', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517302269500', '3a4c68d8c65346c896dd24813fc578c6', '2016-07-05 17:30:22', '2016-07-05 17:32:03', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051730247400', 'e5a77dc478f8486cb7e6bdb0a4ce07e0', '2016-07-05 17:30:24', '2016-07-05 17:30:24', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517302571600', '3908a477cdf14d1f8eb5eed449579558', '2016-07-05 17:30:25', '2016-07-05 17:32:05', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517302723300', '6d25a894d2604d3488988f7265035c9f', '2016-07-05 17:30:27', '2016-07-05 17:30:27', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517302914100', '1158541b417041c8b25dccf9b33d16b1', '2016-07-05 17:30:28', '2016-07-05 17:30:28', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517302950600', '9ae8276a41494793943f4367462388f0', '2016-07-05 17:30:29', '2016-07-05 17:30:29', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517303212500', '714ce4c5b33647ab8f364dadce0a19ce', '2016-07-05 17:30:32', '2016-07-05 17:30:32', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517303456300', 'f2bdda4b9f1540f6aa1fb9e2cf4041c6', '2016-07-05 17:30:34', '2016-07-05 17:30:44', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051730352300', '5ece42ed79b844a5b910a12cce82a439', '2016-07-05 17:30:35', '2016-07-05 17:30:35', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517303764200', 'b2e6e8f8351a4c50b264cd932b834896', '2016-07-05 17:30:37', '2016-07-05 17:30:37', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517304024000', 'e73f9d288618482c96926c41c0f7a4d5', '2016-07-05 17:30:40', '2016-07-05 17:30:40', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517304342100', 'b8adb98275e14eb6b4bd152eabcbaea3', '2016-07-05 17:30:43', '2016-07-05 17:30:43', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517304751700', 'e65eaf99d0554478aefd32a73b605529', '2016-07-05 17:30:47', '2016-07-05 17:30:47', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517304988200', '378a429ace1148c3bf38e263cdf9fE05', '2016-07-05 17:30:49', '2016-07-05 17:30:50', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517305035000', 'a9339eb9bf2748778c1f27fe3e06866a', '2016-07-05 17:30:50', '2016-07-05 17:30:50', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517305244300', 'c9c39e3703ca4325a94d46c4ff459a67', '2016-07-05 17:30:52', '2016-07-05 17:30:52', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517305382600', 'ee226207c0a540749f11d88b307bb53b', '2016-07-05 17:30:54', '2016-07-05 17:30:54', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517305472600', '0b5771eafbc4490081a4590424c3ce9b', '2016-07-05 17:30:54', '2016-07-05 17:30:54', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517305671200', 'db7652b8a9ab42c78160b1c330462611', '2016-07-05 17:30:56', '2016-07-05 17:30:56', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517305761000', '88b4280096cd4146a8cc32b53eddcf76', '2016-07-05 17:30:57', '2016-07-05 17:30:57', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517305933100', 'acc0debdf2fe41d2b78b9c21b4095883', '2016-07-05 17:30:59', '2016-07-05 17:30:59', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517310186500', '5a28a89b38b04bafa1b3fc966e847f9c', '2016-07-05 17:31:01', '2016-07-05 17:31:01', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517310194800', 'd56e2488234d4bc8b6ff44dc0a39355c', '2016-07-05 17:31:02', '2016-07-05 17:31:02', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517310415200', '456d07fa5706433d8d03e61ce79cc4b1', '2016-07-05 17:31:03', '2016-07-05 17:31:03', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517311018000', '1952facb77e5489ba0a44494f4340233', '2016-07-05 17:31:09', '2016-07-05 17:31:09', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517311294500', '935dfcb96ea24143b14ba5f19db77de3', '2016-07-05 17:31:12', '2016-07-05 17:31:12', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517311499700', 'e35edbba761246a9b2346b4b3fd0bf54', '2016-07-05 17:31:15', '2016-07-05 17:31:15', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517311975200', 'bb553949e819483493d147d8973a07e4', '2016-07-05 17:31:19', '2016-07-05 17:31:19', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517312231700', '772fb7f8ac9449d296aab0d978f3ffa0', '2016-07-05 17:31:22', '2016-07-05 17:31:22', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517312624700', '56a1c33aafd74894afe1c38aaaca0a76', '2016-07-05 17:31:26', '2016-07-05 17:31:26', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517312914400', '2ab952ce49da4dba879f949babe1dc5a', '2016-07-05 17:31:28', '2016-07-05 17:31:28', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517313397300', 'b09c35ff17cd49cdafcaeef8bcce41b1', '2016-07-05 17:31:33', '2016-07-05 17:31:33', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517313937200', 'f470009456714538a5470f0c96711f16', '2016-07-05 17:31:39', '2016-07-05 17:31:39', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517314189700', '28f10cc06e364134a732165aca03a506', '2016-07-05 17:31:41', '2016-07-05 17:31:41', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051731455400', 'c40a8352527d4401a30f73d6f76cf17c', '2016-07-05 17:31:44', '2016-07-05 17:31:44', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517314824100', '9abb0d4c6ccd49f5b58c046fcde5e8dc', '2016-07-05 17:31:48', '2016-07-05 17:31:48', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517315559700', 'e13e5061e68c4cf8be530dd4b55c7c93', '2016-07-05 17:31:55', '2016-07-05 17:31:55', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517315843800', 'a208112004fc47ec8e5691e1e54ce5c3', '2016-07-05 17:31:58', '2016-07-05 17:31:58', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517320129800', '154e808966bc45f0b642bfa3b51df75b', '2016-07-05 17:32:01', '2016-07-05 17:32:01', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517323512100', 'b99348d4f558417982d368dce778350e', '2016-07-05 17:32:34', '2016-07-05 17:33:39', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517323731300', '13935b803e17424394c44d99e9c9a562', '2016-07-05 17:32:37', '2016-07-05 17:33:43', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517323931800', '292612cc954f4caaa4bdd735656d7323', '2016-07-05 17:32:39', '2016-07-05 17:33:50', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517324187900', 'bae369042d9d48adb1c0737f2a5573a3', '2016-07-05 17:32:41', '2016-07-05 17:33:51', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517324416600', '66011f07de994df7a0cf665169b10df5', '2016-07-05 17:32:43', '2016-07-05 17:32:43', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517324645900', '4bd1dde8fe9942028805f8e1c622a111', '2016-07-05 17:32:46', '2016-07-05 17:32:46', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517324928500', '0bb3033a75054503b2b35183fa4643a6', '2016-07-05 17:32:49', '2016-07-05 17:32:49', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051732528400', 'd66b8907beb54b0db5960342cfe5149d', '2016-07-05 17:32:51', '2016-07-05 17:32:51', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517325551600', 'da8e576b65244772a868439f36211477', '2016-07-05 17:32:55', '2016-07-05 17:32:55', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517325918800', '73fca92c2ffb4ed6a172fff059be7f1b', '2016-07-05 17:32:59', '2016-07-05 17:32:59', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517330547000', '304e6735b4b0483d971726de17437645', '2016-07-05 17:33:05', '2016-07-05 17:33:05', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517330911300', 'bd976107f444463d85f9e1dd7bf00e74', '2016-07-05 17:33:08', '2016-07-05 17:33:08', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517331247600', '6d99c709cf85427fa5fa78d7d1add4e8', '2016-07-05 17:33:12', '2016-07-05 17:33:12', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517333270900', 'b6aeb55588c141ea9798047ff7e47f1d', '2016-07-05 17:33:32', '2016-07-05 17:33:32', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517333433300', '523118ab0ddb46f5bffb2c773ce8db83', '2016-07-05 17:33:34', '2016-07-05 17:33:34', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517333664600', 'c0ab2a25bdec42069a664cfc08985161', '2016-07-05 17:33:36', '2016-07-05 17:33:36', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051733456300', '5309b73cd02a498fa222c0cc6934f33f', '2016-07-05 17:33:45', '2016-07-05 17:34:27', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517334846400', '79f7ef17fdbf4b9ba1274af96ef1d80e', '2016-07-05 17:33:48', '2016-07-05 17:34:28', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517335075600', '2f6341d1ba6a4023938ddb0a2689aebb', '2016-07-05 17:33:50', '2016-07-05 17:34:33', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051733537900', '0e2e8f96ce154991a179035c00030387', '2016-07-05 17:33:53', '2016-07-05 17:34:34', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517335420600', 'e34859f16cee41a796ba5285b29743e1', '2016-07-05 17:33:54', '2016-07-05 17:34:36', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607051734146200', '11d1bae8720948029eaddc024c42b309', '2016-07-05 17:34:14', '2016-07-05 17:34:38', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517341659600', 'cf6b09def97c483091f1e1a8a79ec92b', '2016-07-05 17:34:16', '2016-07-05 17:34:40', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517341774100', 'b99ad517f19d4baf87845d40b17bc7c8', '2016-07-05 17:34:17', '2016-07-05 17:34:42', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517342142700', '3f72a4d0dc7b4030b374aea07166c9f3', '2016-07-05 17:34:21', '2016-07-05 17:34:43', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517342291100', 'b19809e679f4410d8ac8927dcc1e5f04', '2016-07-05 17:34:23', '2016-07-05 17:34:45', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517431946200', '0ec8537e4c104a499efd069e1a108c07', '2016-07-05 17:43:23', '2016-07-05 21:20:44', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517432315900', '2c8c83372e43446392f70eb9a85ff7bc', '2016-07-05 17:43:27', '2016-07-05 21:20:47', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070517433277900', 'defbe50e30f14756bd439c2149e2225f', '2016-07-05 17:43:36', '2016-07-05 21:21:00', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070519002134400', '9fda34c991094cb282572c74d2c1c245', '2016-07-05 13:00:20', '2016-07-05 13:18:25', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070519024178200', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-05 13:02:41', '2016-07-05 13:02:41', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070519024499800', '73551123366b496b8bec2db6568a7ea5', '2016-07-05 13:02:44', '2016-07-05 13:03:06', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070519030140700', '88191512f646429d81c0ce48e6bbf5c2', '2016-07-05 13:03:00', '2016-07-05 13:03:00', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607052121031200', '24d62d28d6bd4b41bb716136271b7ae2', '2016-07-05 21:21:05', '2016-07-05 21:21:05', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070521210616100', '1755a0a5219448c7a3e0e280d91bc5f1', '2016-07-05 21:21:08', '2016-07-05 21:21:08', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070521212161700', '1732bf787a104dfd91aace1b1fa9c666', '2016-07-05 21:21:23', '2016-07-05 21:21:49', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070521212639200', '9a333eb4960149fba9c743f45192697d', '2016-07-05 21:21:28', '2016-07-05 21:21:28', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070521213311000', '7f26f0f785a74ef18ba5eff491f29e1a', '2016-07-05 21:21:35', '2016-07-05 21:21:35', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607052121439200', '2872359f0f794edea64b2a13b2003503', '2016-07-05 21:21:45', '2016-07-05 21:21:45', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070521215161400', '08559c952dd5413286e80295879797aa', '2016-07-05 21:21:53', '2016-07-05 21:21:53', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070521242345800', 'a9d54b8f4e524308a6aed781bc248dcc', '2016-07-05 21:24:25', '2016-07-05 21:24:25', 'Y', '2016-07-05', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070600480826000', '054388d32ae044e8bd5648612376503f', '2016-07-04 00:48:07', '2016-07-04 00:48:07', 'Y', '2016-07-04', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070600483386800', '9fda34c991094cb282572c74d2c1c245', '2016-07-04 00:48:33', '2016-07-04 01:01:04', 'Y', '2016-07-04', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070601040649000', '9fda34c991094cb282572c74d2c1c245', '2016-07-06 01:04:06', '2016-07-06 01:29:03', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070601044878800', '7afb2760af1144d99bf325dbae3c4abb', '2016-07-06 01:04:48', '2016-07-06 01:04:48', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070601112411900', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-06 01:11:24', '2016-07-06 01:11:24', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070607503446400', '46b361392ed8427ab2d6a7a386c1a375', '2016-07-06 07:50:34', '2016-07-06 07:50:34', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070607504717200', '7537597d86a444e88bc8110505519da6', '2016-07-06 07:50:47', '2016-07-06 07:50:47', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070607505360500', 'a6d1a8196907436396c0b26c3dd6359d', '2016-07-06 07:50:53', '2016-07-06 07:50:53', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070607505741500', 'd59ba0ea08884e569f9e6e061474811f', '2016-07-06 07:50:57', '2016-07-06 07:50:57', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070607511117400', '461c51e4dd34438ca945ddd2e1fa22f7', '2016-07-06 07:51:11', '2016-07-06 07:51:11', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070607514271900', '01479891f8c346ad879cf0db6ed3e926', '2016-07-06 07:51:42', '2016-07-06 07:52:20', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070607515058600', '45413080ef7742b5942f32fc98b69b7c', '2016-07-06 07:51:50', '2016-07-06 07:51:50', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608253540600', '798d77d5451a4f0dace6392ccaecdded', '2016-07-06 08:25:35', '2016-07-06 08:25:35', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608254484700', '6389f8cb58944365af6d972cdc0a5657', '2016-07-06 08:25:44', '2016-07-06 08:25:44', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608260111600', '5a28a89b38b04bafa1b3fc966e847f9c', '2016-07-06 08:26:01', '2016-07-06 08:26:01', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608262891700', '089f4bb151ca46d9bbe21eefb5fa93fd', '2016-07-06 08:26:28', '2016-07-06 08:26:28', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608270354300', '6cb2a94fa728403982ecc0cf3b69aec0', '2016-07-06 08:27:03', '2016-07-06 08:27:03', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608274515600', '4bd1dde8fe9942028805f8e1c622a111', '2016-07-06 08:27:45', '2016-07-06 08:27:45', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608274971500', '08559c952dd5413286e80295879797aa', '2016-07-06 08:27:49', '2016-07-06 08:27:49', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608275319300', '66d8455d796b4004917e0c53375d56ab', '2016-07-06 08:27:53', '2016-07-06 08:27:53', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608275892600', '35baec64da714df0b2b2a154328366c3', '2016-07-06 08:27:58', '2016-07-06 08:27:58', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608283775700', '5b4abfc18d2749f28ab588b1a3a5a768', '2016-07-06 08:28:37', '2016-07-06 08:28:37', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608285248900', 'd9431e93464041e9a3d022a36133b32c', '2016-07-06 08:28:52', '2016-07-06 08:28:52', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608290247700', '519edc91c9e14832a4715adeb26c8ff1', '2016-07-06 08:29:02', '2016-07-06 08:29:02', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608290861000', 'a62a8fed2797446cb193060a60b4b537', '2016-07-06 08:29:08', '2016-07-06 08:29:08', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608291238100', 'a9d54b8f4e524308a6aed781bc248dcc', '2016-07-06 08:29:12', '2016-07-06 08:29:12', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608292990100', 'ad77a06f883a45f18a869e49fe527c25', '2016-07-06 08:29:29', '2016-07-06 08:29:29', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608293858300', 'bd976107f444463d85f9e1dd7bf00e74', '2016-07-06 08:29:38', '2016-07-06 08:29:38', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608294858600', '30a13c2adbb143128e2bc474cefd351e', '2016-07-06 08:29:48', '2016-07-06 08:29:48', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608295250000', '1732bf787a104dfd91aace1b1fa9c666', '2016-07-06 08:29:52', '2016-07-06 08:29:52', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608300531700', '2872359f0f794edea64b2a13b2003503', '2016-07-06 08:30:05', '2016-07-06 08:30:05', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608301580400', '4d97fb640261455597ce8f58ca161872', '2016-07-06 08:30:15', '2016-07-06 08:30:15', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608301933600', '4323757eac0e483c84b0afb8a659c55f', '2016-07-06 08:30:19', '2016-07-06 08:30:19', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608302424000', '935dfcb96ea24143b14ba5f19db77de3', '2016-07-06 08:30:24', '2016-07-06 08:30:24', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608310097800', '9a333eb4960149fba9c743f45192697d', '2016-07-06 08:31:00', '2016-07-06 08:31:00', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608312079600', '0b5771eafbc4490081a4590424c3ce9b', '2016-07-06 08:31:20', '2016-07-06 08:31:20', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608312696000', '2ab952ce49da4dba879f949babe1dc5a', '2016-07-06 08:31:26', '2016-07-06 08:31:26', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608313289300', 'afc16029852d4c24a19f07b39e2530ab', '2016-07-06 08:31:32', '2016-07-06 08:31:32', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608313847100', '7f26f0f785a74ef18ba5eff491f29e1a', '2016-07-06 08:31:38', '2016-07-06 08:31:38', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608314891200', 'a031a42894f9451f917333d41db556aa', '2016-07-06 08:31:48', '2016-07-06 08:31:48', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608314970300', '4ae617ced4e5441391fc09d45169c23a', '2016-07-06 08:31:49', '2016-07-06 08:31:49', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608321583900', '6d25a894d2604d3488988f7265035c9f', '2016-07-06 08:32:15', '2016-07-06 08:32:15', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608321635100', 'e5a77dc478f8486cb7e6bdb0a4ce07e0', '2016-07-06 08:32:16', '2016-07-06 08:32:16', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608323652600', 'e65eaf99d0554478aefd32a73b605529', '2016-07-06 08:32:36', '2016-07-06 08:32:36', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608324369100', 'e73f9d288618482c96926c41c0f7a4d5', '2016-07-06 08:32:43', '2016-07-06 08:32:43', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608324959100', 'defbe50e30f14756bd439c2149e2225f', '2016-07-06 08:32:49', '2016-07-06 08:32:49', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608330710800', 'a6ff825f7c3640d9a9524836ddc4e703', '2016-07-06 08:33:07', '2016-07-06 08:33:07', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608333341300', 'd7ae4552d88441feab67c86685d411f4', '2016-07-06 08:33:33', '2016-07-06 08:33:33', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608334749300', 'b99348d4f558417982d368dce778350e', '2016-07-06 08:33:47', '2016-07-06 08:33:47', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608335135700', 'c0ab2a25bdec42069a664cfc08985161', '2016-07-06 08:33:51', '2016-07-06 08:33:51', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608335722800', '292612cc954f4caaa4bdd735656d7323', '2016-07-06 08:33:57', '2016-07-06 08:33:57', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060834015300', 'da8e576b65244772a868439f36211477', '2016-07-06 08:34:01', '2016-07-06 08:34:01', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608341466200', 'da033f68471a426aac55db44f64de8df', '2016-07-06 08:34:14', '2016-07-06 08:34:14', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608342566100', 'adde3849a403419d87b02a35e99504a5', '2016-07-06 08:34:25', '2016-07-06 08:34:25', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608343258000', 'e2b04547e47b45a8873857aa8148c853', '2016-07-06 08:34:32', '2016-07-06 08:34:32', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608343281900', '371f9545b3654e29bfcf9e408c29f93d', '2016-07-06 08:34:32', '2016-07-06 08:34:32', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608343957400', '17d25be19bdf49bcb321bc2b8184dce9', '2016-07-06 08:34:39', '2016-07-06 08:34:39', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608344356900', '7e13c58f0c93472e8cdbcec5d4467785', '2016-07-06 08:34:43', '2016-07-06 08:34:43', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608344767800', 'eda34f5c44424cb0aeb2a02cb7bef85d', '2016-07-06 08:34:47', '2016-07-06 08:34:47', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608345716000', '3074f55cd9c947dfb00e56b550924d0a', '2016-07-06 08:34:57', '2016-07-06 08:34:57', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608345789300', 'fca2411a474f48b7abe38aa18e183817', '2016-07-06 08:34:57', '2016-07-06 08:34:57', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608350751500', 'fa0f38c0120c467eb6cd6a2909b7a779', '2016-07-06 08:35:07', '2016-07-06 08:35:07', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608352826000', '63b8c7eaa1794de0ad7bb3ed877d7c85', '2016-07-06 08:35:28', '2016-07-06 08:35:28', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060835377900', 'aa2adfb030da42f9ad2fd5bdc3341ac8', '2016-07-06 08:35:37', '2016-07-06 08:35:37', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608354552000', 'ad8992bfd8d44b61bf7da698bad49c76', '2016-07-06 08:35:45', '2016-07-06 08:35:45', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608355479300', 'fe2a4520a93e4fb8a636cb141e79a83b', '2016-07-06 08:35:54', '2016-07-06 08:35:54', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608360731500', 'aeb9944ee93e4de4a1429d2ab7409e66', '2016-07-06 08:36:07', '2016-07-06 08:36:07', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608361916700', '813ce27aa20d4a6c9d325234f2f7d966', '2016-07-06 08:36:19', '2016-07-06 08:36:19', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608361929200', 'cc1f1ef751084726ab376f21c70ae07a', '2016-07-06 08:36:19', '2016-07-06 08:36:19', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608370335200', 'd2869b70e183422a83e540885110ac9e', '2016-07-06 08:37:03', '2016-07-06 08:37:03', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608371556700', '0b2c30fb0dce4268a4bee8f573fc04bd', '2016-07-06 08:37:15', '2016-07-06 08:37:15', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608372732900', 'a5a28ceca6594fdc87d1d064f40674ac', '2016-07-06 08:37:27', '2016-07-06 08:37:27', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608373714600', 'eb50140933ce4efe96adbcd486f079cb', '2016-07-06 08:37:37', '2016-07-06 08:37:37', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608374710300', 'b7e424848cc84761974202218fc9ffaa', '2016-07-06 08:37:47', '2016-07-06 08:37:47', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608374758600', '981b65a6840a4ec18c3cb88f665a5882', '2016-07-06 08:37:47', '2016-07-06 08:37:47', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608375458200', '67f9f4f2bd694824ad512eb849b167bf', '2016-07-06 08:37:54', '2016-07-06 08:37:54', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608380175100', '38dcaa2d6d784020be259373e4d4be5e', '2016-07-06 08:38:01', '2016-07-06 08:38:01', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608380541300', 'b77c3ab9ba904eaf8f3e7ce96f9f2ce9', '2016-07-06 08:38:05', '2016-07-06 08:38:05', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608380612700', '13935b803e17424394c44d99e9c9a562', '2016-07-06 08:38:06', '2016-07-06 08:38:06', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608381150800', '0bb3033a75054503b2b35183fa4643a6', '2016-07-06 08:38:11', '2016-07-06 08:38:11', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608381674200', '66011f07de994df7a0cf665169b10df5', '2016-07-06 08:38:16', '2016-07-06 08:38:16', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608382519800', 'd66b8907beb54b0db5960342cfe5149d', '2016-07-06 08:38:25', '2016-07-06 08:38:25', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608385790800', 'af2a5e97c8fb4ac9a5ed10e89fb81075', '2016-07-06 08:38:57', '2016-07-06 08:38:57', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608390673300', '79175ef5feec44d08fb8bf5fb13a77c5', '2016-07-06 08:39:06', '2016-07-06 08:39:06', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608391562600', '5ece42ed79b844a5b910a12cce82a439', '2016-07-06 08:39:15', '2016-07-06 08:39:15', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608392144100', 'a9339eb9bf2748778c1f27fe3e06866a', '2016-07-06 08:39:21', '2016-07-06 08:39:21', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608393796900', 'a8c72fa316ad4a6bbadc83ba267ee196', '2016-07-06 08:39:37', '2016-07-06 08:39:37', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608403330100', 'd102ee072104413d924aa5353ebc2596', '2016-07-06 08:40:33', '2016-07-06 08:40:33', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060840465400', '44e903e89b8c4526be51bf95ee0a5801', '2016-07-06 08:40:46', '2016-07-06 08:40:46', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060841119600', 'd55f43a8ced3400f99eacd5ad91ab169', '2016-07-06 08:41:11', '2016-07-06 08:41:11', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608412681500', '3059e576c93440549795d9a35fd63d31', '2016-07-06 08:41:26', '2016-07-06 08:41:26', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608413181600', 'f482bb4ef2e14a62b1ab0e6da2171416', '2016-07-06 08:41:31', '2016-07-06 08:41:31', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608413832500', '24d62d28d6bd4b41bb716136271b7ae2', '2016-07-06 08:41:38', '2016-07-06 08:41:38', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608414488600', 'b8adb98275e14eb6b4bd152eabcbaea3', '2016-07-06 08:41:44', '2016-07-06 08:41:44', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608414784500', 'bfcee17b70474bcd8214fac9459038ec', '2016-07-06 08:41:47', '2016-07-06 08:41:47', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608415698000', '4c03aba7e5f640ec9b3d4b09e69db205', '2016-07-06 08:41:56', '2016-07-06 08:41:56', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608415958500', '1a81e3a438e04b0ab385bd83a2381c87', '2016-07-06 08:41:59', '2016-07-06 08:41:59', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608420563500', '70cf1a1b3f404efb84ba65dccd49ea75', '2016-07-06 08:42:05', '2016-07-06 08:42:05', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608421516300', '1d7b08e2be9f4629a4257b923ed31287', '2016-07-06 08:42:15', '2016-07-06 08:42:15', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608422522800', '26850980972d4c989a03aff4807b9bc3', '2016-07-06 08:42:25', '2016-07-06 08:42:25', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608423170200', '398596409c93486fa74696a2f007b2a7', '2016-07-06 08:42:31', '2016-07-06 08:42:31', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608423548300', '6d3352fe959043b991a3e287ec7661c3', '2016-07-06 08:42:35', '2016-07-06 08:42:35', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608424168500', 'a208112004fc47ec8e5691e1e54ce5c3', '2016-07-06 08:42:41', '2016-07-06 08:42:41', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608424966500', 'bb553949e819483493d147d8973a07e4', '2016-07-06 08:42:49', '2016-07-06 08:42:49', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608425574900', '378a429ace1148c3bf38e263cdf9fe05', '2016-07-06 08:42:55', '2016-07-06 08:42:55', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608425652900', '56a1c33aafd74894afe1c38aaaca0a76', '2016-07-06 08:42:56', '2016-07-06 08:42:56', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060843076700', '154e808966bc45f0b642bfa3b51df75b', '2016-07-06 08:43:07', '2016-07-06 08:43:07', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608431889700', 'b9daeac80a9d45e9b9eee2133f8551f2', '2016-07-06 08:43:18', '2016-07-06 08:43:18', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608433088900', 'c5c8933e454f4fbb934ad8f9c599dcae', '2016-07-06 08:43:30', '2016-07-06 08:43:30', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608433289800', '222b1338ccca4050855bba0d07499f93', '2016-07-06 08:43:32', '2016-07-06 08:43:32', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608434388500', 'a6af8339c75241a9af7531422f3cfda7', '2016-07-06 08:43:43', '2016-07-06 08:43:43', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608440226100', '3908a477cdf14d1f8eb5eed449579558', '2016-07-06 08:44:02', '2016-07-06 08:44:02', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608441051400', '35aacfb3c9454a499cd119def4860676', '2016-07-06 08:44:10', '2016-07-06 08:44:10', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608441840700', '5d112ab253d942a3a5ce356a48f572d4', '2016-07-06 08:44:18', '2016-07-06 08:44:18', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060844293800', '714ce4c5b33647ab8f364dadce0a19ce', '2016-07-06 08:44:29', '2016-07-06 08:44:29', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608443133100', 'ac6ed6cc374f4f46a5c98a71ef06554e', '2016-07-06 08:44:31', '2016-07-06 08:44:31', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608443810600', '527e8a6c9da84c93aded6a8479f3e730', '2016-07-06 08:44:38', '2016-07-06 08:44:38', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608444519000', '406fa62963fc410fa167a84e0bf9548d', '2016-07-06 08:44:45', '2016-07-06 08:44:45', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608452856400', '777ba550e4d64589b958d1397583129b', '2016-07-06 08:45:28', '2016-07-06 08:45:28', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608454929600', 'fef67d0f225b41a4a4579d9f7772209c', '2016-07-06 08:45:49', '2016-07-06 08:45:49', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060845514500', '2c8c83372e43446392f70eb9a85ff7bc', '2016-07-06 08:45:51', '2016-07-06 08:45:51', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608463495200', 'e34859f16cee41a796ba5285b29743e1', '2016-07-06 08:46:34', '2016-07-06 08:46:34', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608470995500', '33f116441bdb49568eb61c199e0b8966', '2016-07-06 08:47:09', '2016-07-06 08:47:09', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608473512800', '9ae8276a41494793943f4367462388f0', '2016-07-06 08:47:35', '2016-07-06 08:47:35', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608475391300', '1424be5ffa874d78a4afaf90a1a147ea', '2016-07-06 08:47:53', '2016-07-06 08:47:53', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608481338700', '1755a0a5219448c7a3e0e280d91bc5f1', '2016-07-06 08:48:13', '2016-07-06 08:48:13', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608484117600', '631eff2454424a3ea1d76de07e33d748', '2016-07-06 08:48:41', '2016-07-06 08:48:41', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608485548800', '81d45c7857ce4eeea416ea7a6adb552d', '2016-07-06 08:48:55', '2016-07-06 08:48:55', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608485921600', 'b2e6e8f8351a4c50b264cd932b834896', '2016-07-06 08:48:59', '2016-07-06 08:48:59', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608491644600', 'b09c35ff17cd49cdafcaeef8bcce41b1', '2016-07-06 08:49:16', '2016-07-06 08:49:16', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608492463100', 'db7652b8a9ab42c78160b1c330462611', '2016-07-06 08:49:24', '2016-07-06 08:49:24', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608493411600', 'd56e2488234d4bc8b6ff44dc0a39355c', '2016-07-06 08:49:34', '2016-07-06 08:49:34', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608503564400', 'd0bc9dda356d4667a3dff9cec16b6d29', '2016-07-06 08:50:35', '2016-07-06 08:50:35', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608504935900', '4f2e9663c8da4b789463ee9a109ecbd6', '2016-07-06 08:50:49', '2016-07-06 08:50:49', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608505764600', '3c4af06a672149ab8f4c39976f75ddf3', '2016-07-06 08:50:57', '2016-07-06 08:50:57', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608513393100', 'f2bdda4b9f1540f6aa1fb9e2cf4041c6', '2016-07-06 08:51:33', '2016-07-06 08:51:33', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608522550000', '8cf58a61603948dbaa935ee255ec1873', '2016-07-06 08:52:25', '2016-07-06 08:52:25', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060852392900', '11d1bae8720948029eaddc024c42b309', '2016-07-06 08:52:39', '2016-07-06 08:52:39', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060853128800', '772fb7f8ac9449d296aab0d978f3ffa0', '2016-07-06 08:53:12', '2016-07-06 08:53:12', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608531967000', 'e35edbba761246a9b2346b4b3fd0bf54', '2016-07-06 08:53:19', '2016-07-06 08:53:19', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608532820400', 'bbea6bf1418f4fb79e78d5fc5237c176', '2016-07-06 08:53:28', '2016-07-06 08:53:28', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608534478300', '92b8c1f9d91345b5bb59b3b8c0547be5', '2016-07-06 08:53:44', '2016-07-06 08:53:44', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608534967900', '75e48395949c4b459a9e7a46bcb59870', '2016-07-06 08:53:49', '2016-07-06 08:53:49', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608535337500', '698fedbe96f34c4ea3aa301bb9a972f2', '2016-07-06 08:53:53', '2016-07-06 08:53:53', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608535948400', '1d1ed38770b54bbd9cefd37fdd7dcdd9', '2016-07-06 08:53:59', '2016-07-06 08:53:59', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608540591500', 'd1994b4453bf4820a5adddc35690ce6f', '2016-07-06 08:54:05', '2016-07-06 08:54:05', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608541111900', 'b51ac4a82cae4f15b56e70b66f4e4ac6', '2016-07-06 08:54:11', '2016-07-06 08:54:11', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608541636000', '27a7fb6af78d4a77a838b1197adece4c', '2016-07-06 08:54:16', '2016-07-06 08:54:16', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608541818700', '523118ab0ddb46f5bffb2c773ce8db83', '2016-07-06 08:54:18', '2016-07-06 08:54:18', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608542792600', '6d99c709cf85427fa5fa78d7d1add4e8', '2016-07-06 08:54:27', '2016-07-06 08:54:27', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608543660600', '9d35e24ab051489e91c393eb991e0d24', '2016-07-06 08:54:36', '2016-07-06 08:54:36', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608544245100', '501c061d986f48619cc820348fac1038', '2016-07-06 08:54:42', '2016-07-06 08:54:42', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608551167800', '6b8470df867648388067f147e00ce791', '2016-07-06 08:55:11', '2016-07-06 08:55:11', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608551386200', '486e709ae39b47aaae16f885b32d259f', '2016-07-06 08:55:13', '2016-07-06 08:55:13', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608552814200', 'acc0debdf2fe41d2b78b9c21b4095883', '2016-07-06 08:55:28', '2016-07-06 08:55:28', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608575379300', '473176e3f0c3456a8cce4a01e4a117d4', '2016-07-06 08:57:53', '2016-07-06 08:57:53', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060857587000', '9abb0d4c6ccd49f5b58c046fcde5e8dc', '2016-07-06 08:57:58', '2016-07-06 08:57:58', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608580823800', '28f10cc06e364134a732165aca03a506', '2016-07-06 08:58:08', '2016-07-06 08:58:08', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608582232700', '1158541b417041c8b25dccf9b33d16b1', '2016-07-06 08:58:22', '2016-07-06 08:58:22', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608583224800', 'f470009456714538a5470f0c96711f16', '2016-07-06 08:58:32', '2016-07-06 08:58:32', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608584542900', 'c9c39e3703ca4325a94d46c4ff459a67', '2016-07-06 08:58:45', '2016-07-06 08:58:45', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608585040000', 'e4ffadd130894894a3566cbe60050ca9', '2016-07-06 08:58:50', '2016-07-06 08:58:50', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070608595399400', '42a21c081f984a9892817a55427c4b46', '2016-07-06 08:59:53', '2016-07-06 08:59:53', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609003296700', 'cf6b09def97c483091f1e1a8a79ec92b', '2016-07-06 09:00:32', '2016-07-06 09:00:32', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609004492300', '0dc44e5b224f4c97a08cf2fee5a4f14b', '2016-07-06 09:00:44', '2016-07-06 09:00:44', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060900524700', '2f6341d1ba6a4023938ddb0a2689aebb', '2016-07-06 09:00:52', '2016-07-06 09:00:52', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609005347000', '79f7ef17fdbf4b9ba1274af96ef1d80e', '2016-07-06 09:00:53', '2016-07-06 09:00:53', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609012084900', '75ba367b11064db28b0bf42d4c726a84', '2016-07-06 09:01:20', '2016-07-06 09:01:20', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609012748100', 'd4088ef4a53d44e9b38c1740bf164edd', '2016-07-06 09:01:27', '2016-07-06 09:01:27', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609024483300', '6c1a7855801d4ccdae3892d85121fd9b', '2016-07-06 09:02:44', '2016-07-06 09:02:44', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609025297900', 'b19809e679f4410d8ac8927dcc1e5f04', '2016-07-06 09:02:52', '2016-07-06 09:02:52', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609025934900', '3f72a4d0dc7b4030b374aea07166c9f3', '2016-07-06 09:02:59', '2016-07-06 09:02:59', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609030790900', 'b99ad517f19d4baf87845d40b17bc7c8', '2016-07-06 09:03:07', '2016-07-06 09:03:07', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609032323900', 'fa79831f01c642d1956ccb92dc4ed7bf', '2016-07-06 09:03:23', '2016-07-06 09:03:23', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609033233300', '054388d32ae044e8bd5648612376503f', '2016-07-06 09:03:32', '2016-07-06 09:03:32', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609034471200', 'f6fa5e06ba0742fc9ac30e05affdf01e', '2016-07-06 09:03:44', '2016-07-06 09:03:44', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060903456900', '60305b1bf16a4e8193a368593f07dffa', '2016-07-06 09:03:45', '2016-07-06 09:03:45', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609035314100', '59dbdc9092e645f3ad8d5b6156d9a77f', '2016-07-06 09:03:53', '2016-07-06 09:03:53', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609035557300', 'fc461f8fd00842a3abc7c2a34eb9ee88', '2016-07-06 09:03:55', '2016-07-06 09:03:55', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609041188000', '904a192614e94d5ca04fdf4897bc935a', '2016-07-06 09:04:11', '2016-07-06 09:04:11', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609055811300', 'af80d01488d6494bba0b1eda6fec913c', '2016-07-06 09:05:58', '2016-07-06 09:05:58', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609060922000', 'bae369042d9d48adb1c0737f2a5573a3', '2016-07-06 09:06:09', '2016-07-06 09:06:09', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609072312100', 'b059105ddc854a0db63ccfb4287e72c5', '2016-07-06 09:07:23', '2016-07-06 09:07:23', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609085275200', '88b4280096cd4146a8cc32b53eddcf76', '2016-07-06 09:08:52', '2016-07-06 09:08:52', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609090423500', '03666df538d4456cba2f3b3e754ffc3e', '2016-07-06 09:09:04', '2016-07-06 09:09:04', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609093437300', '1952facb77e5489ba0a44494f4340233', '2016-07-06 09:09:34', '2016-07-06 09:09:34', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609165369800', '4f8a7cf3045a48f788103106c54573da', '2016-07-06 09:16:53', '2016-07-06 09:16:53', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609192818600', '986c3c4d96174fa59287bd3d3a1ab5cd', '2016-07-06 09:19:28', '2016-07-06 09:19:28', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609244538400', 'e3a7c22b799b4fe8810f6373fdbc3839', '2016-07-06 09:24:45', '2016-07-06 09:24:45', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609314382000', '304e6735b4b0483d971726de17437645', '2016-07-06 09:31:43', '2016-07-06 09:31:43', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070609352152700', '9299dcc670374498a0e3a1f61ab44a38', '2016-07-06 09:35:21', '2016-07-06 09:35:21', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607060942377200', '47d9a3f6404a40fc9491c1d66d2c7a78', '2016-07-06 09:42:37', '2016-07-06 09:42:37', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070610095977000', '1135ee714a7e4b55b370580abc8ec798', '2016-07-06 10:09:59', '2016-07-06 10:09:59', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070610261094600', '77f5b1a492954906939bea5dbf890105', '2016-07-06 10:26:10', '2016-07-06 10:26:10', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070610522720200', '96d8f6ec73fc4cab8f042bc790168554', '2016-07-06 10:52:27', '2016-07-06 10:52:27', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070611152289900', 'c1f5ce3abe604b1da8028ebacbbbcd35', '2016-07-06 11:15:22', '2016-07-06 11:15:22', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070611211352200', 'd8c15159fce14d7da3c40a32f744c6d3', '2016-07-06 11:21:13', '2016-07-06 11:21:13', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070611414278100', 'b9f2c6bb10d4485792e339f6ac9e77a5', '2016-07-06 11:41:42', '2016-07-06 11:43:09', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070611490098200', '3133853c609c4e468454a04142eb945c', '2016-07-06 11:49:00', '2016-07-06 11:49:00', 'Y', '2016-07-06', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070612031513100', 'b9f2c6bb10d4485792e339f6ac9e77a5', '2016-07-06 12:03:15', '2016-07-06 13:29:16', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070612520381900', '6c1a7855801d4ccdae3892d85121fd9b', '2016-07-06 12:52:03', '2016-07-06 12:52:03', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070612553016500', 'b9daeac80a9d45e9b9eee2133f8551f2', '2016-07-06 12:55:30', '2016-07-06 13:46:16', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070612563186600', 'c40a8352527d4401a30f73d6f76cf17c', '2016-07-06 12:56:31', '2016-07-06 13:44:32', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613145923800', 'b6aeb55588c141ea9798047ff7e47f1d', '2016-07-06 13:14:59', '2016-07-06 13:14:59', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061328517400', 'fe2a4520a93e4fb8a636cb141e79a83b', '2016-07-06 13:28:51', '2016-07-06 13:28:51', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613285573000', 'd55f43a8ced3400f99eacd5ad91ab169', '2016-07-06 13:28:55', '2016-07-06 13:28:55', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613285981100', 'b77c3ab9ba904eaf8f3e7ce96f9f2ce9', '2016-07-06 13:28:59', '2016-07-06 13:28:59', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613290568500', 'bd976107f444463d85f9e1dd7bf00e74', '2016-07-06 13:29:05', '2016-07-06 13:29:05', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613290630300', '3059e576c93440549795d9a35fd63d31', '2016-07-06 13:29:06', '2016-07-06 13:29:06', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061329138200', 'f482bb4ef2e14a62b1ab0e6da2171416', '2016-07-06 13:29:13', '2016-07-06 13:29:13', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613292452500', '4323757eac0e483c84b0afb8a659c55f', '2016-07-06 13:29:24', '2016-07-06 13:29:24', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613293466800', '222b1338ccca4050855bba0d07499f93', '2016-07-06 13:29:34', '2016-07-06 13:29:34', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613293579100', '935dfcb96ea24143b14ba5f19db77de3', '2016-07-06 13:29:35', '2016-07-06 13:29:35', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613293846700', '4f8a7cf3045a48f788103106c54573da', '2016-07-06 13:29:38', '2016-07-06 13:29:38', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613294536500', '5a28a89b38b04bafa1b3fc966e847f9c', '2016-07-06 13:29:45', '2016-07-06 13:29:45', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613294732300', '1952facb77e5489ba0a44494f4340233', '2016-07-06 13:29:47', '2016-07-06 13:29:47', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061329499800', '88b4280096cd4146a8cc32b53eddcf76', '2016-07-06 13:29:49', '2016-07-06 13:29:49', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613295267600', '67f9f4f2bd694824ad512eb849b167bf', '2016-07-06 13:29:52', '2016-07-06 13:29:52', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613295570600', '5d112ab253d942a3a5ce356a48f572d4', '2016-07-06 13:29:55', '2016-07-06 13:29:55', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613301438500', '304e6735b4b0483d971726de17437645', '2016-07-06 13:30:14', '2016-07-06 13:30:14', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613392132500', '30a13c2adbb143128e2bc474cefd351e', '2016-07-06 13:39:21', '2016-07-06 13:39:21', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061339258600', 'd1994b4453bf4820a5adddc35690ce6f', '2016-07-06 13:39:25', '2016-07-06 13:39:25', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613393115800', '501c061d986f48619cc820348fac1038', '2016-07-06 13:39:31', '2016-07-06 13:39:31', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613393411900', '27a7fb6af78d4a77a838b1197adece4c', '2016-07-06 13:39:34', '2016-07-06 13:39:34', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613393881100', '75ba367b11064db28b0bf42d4c726a84', '2016-07-06 13:39:38', '2016-07-06 13:39:38', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613394268000', '9d35e24ab051489e91c393eb991e0d24', '2016-07-06 13:39:42', '2016-07-06 13:39:42', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613394269700', 'e4ffadd130894894a3566cbe60050ca9', '2016-07-06 13:39:42', '2016-07-06 13:39:42', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613394690700', '777ba550e4d64589b958d1397583129b', '2016-07-06 13:39:46', '2016-07-06 13:39:46', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613395366400', 'bfcee17b70474bcd8214fac9459038ec', '2016-07-06 13:39:53', '2016-07-06 13:39:53', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613395577800', '1732bf787a104dfd91aace1b1fa9c666', '2016-07-06 13:39:55', '2016-07-06 13:39:55', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613400197700', '1a81e3a438e04b0ab385bd83a2381c87', '2016-07-06 13:40:01', '2016-07-06 13:40:01', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613400635600', '70cf1a1b3f404efb84ba65dccd49ea75', '2016-07-06 13:40:06', '2016-07-06 13:40:06', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613400661500', '4c03aba7e5f640ec9b3d4b09e69db205', '2016-07-06 13:40:06', '2016-07-06 13:40:06', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613401216000', 'e35edbba761246a9b2346b4b3fd0bf54', '2016-07-06 13:40:12', '2016-07-06 13:40:12', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613401333200', 'db7652b8a9ab42c78160b1c330462611', '2016-07-06 13:40:13', '2016-07-06 13:40:13', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613401661900', 'd56e2488234d4bc8b6ff44dc0a39355c', '2016-07-06 13:40:16', '2016-07-06 13:40:16', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613402453200', 'acc0debdf2fe41d2b78b9c21b4095883', '2016-07-06 13:40:24', '2016-07-06 13:40:24', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613402717600', 'ad77a06f883a45f18a869e49fe527c25', '2016-07-06 13:40:27', '2016-07-06 13:40:27', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613403124400', 'adde3849a403419d87b02a35e99504a5', '2016-07-06 13:40:31', '2016-07-06 13:40:31', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613403276700', 'e2b04547e47b45a8873857aa8148c853', '2016-07-06 13:40:32', '2016-07-06 13:40:32', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613403718300', 'cf6b09def97c483091f1e1a8a79ec92b', '2016-07-06 13:40:37', '2016-07-06 13:40:37', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613404430400', 'e34859f16cee41a796ba5285b29743e1', '2016-07-06 13:40:44', '2016-07-06 13:40:44', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061340464700', '11d1bae8720948029eaddc024c42b309', '2016-07-06 13:40:46', '2016-07-06 13:40:46', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613404861500', 'a6af8339c75241a9af7531422f3cfda7', '2016-07-06 13:40:48', '2016-07-06 13:40:48', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613405212600', 'aa2adfb030da42f9ad2fd5bdc3341ac8', '2016-07-06 13:40:52', '2016-07-06 13:40:52', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613405623300', 'c5c8933e454f4fbb934ad8f9c599dcae', '2016-07-06 13:40:56', '2016-07-06 13:40:56', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613405812300', '63b8c7eaa1794de0ad7bb3ed877d7c85', '2016-07-06 13:40:58', '2016-07-06 13:40:58', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061341065300', 'c1f5ce3abe604b1da8028ebacbbbcd35', '2016-07-06 13:41:06', '2016-07-06 13:41:06', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613411071000', 'c9c39e3703ca4325a94d46c4ff459a67', '2016-07-06 13:41:10', '2016-07-06 13:41:10', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061341108700', 'a9d54b8f4e524308a6aed781bc248dcc', '2016-07-06 13:41:10', '2016-07-06 13:41:10', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613411424400', '0b5771eafbc4490081a4590424c3ce9b', '2016-07-06 13:41:14', '2016-07-06 13:41:14', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613411814200', '6d3352fe959043b991a3e287ec7661c3', '2016-07-06 13:41:18', '2016-07-06 13:41:18', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613411845200', '378a429ace1148c3bf38e263cdf9fe05', '2016-07-06 13:41:18', '2016-07-06 13:41:18', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613412274200', '3908a477cdf14d1f8eb5eed449579558', '2016-07-06 13:41:22', '2016-07-06 13:41:22', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613412682100', '398596409c93486fa74696a2f007b2a7', '2016-07-06 13:41:26', '2016-07-06 13:41:26', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613413117100', 'cd49453cdf974d4288bb2305cab72775', '2016-07-06 13:41:31', '2016-07-06 13:41:31', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613413239400', '47d9a3f6404a40fc9491c1d66d2c7a78', '2016-07-06 13:41:32', '2016-07-06 13:41:32', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613413480100', '698fedbe96f34c4ea3aa301bb9a972f2', '2016-07-06 13:41:34', '2016-07-06 13:41:34', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613413954100', '9299dcc670374498a0e3a1f61ab44a38', '2016-07-06 13:41:39', '2016-07-06 13:41:39', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613414353300', '60305b1bf16a4e8193a368593f07dffa', '2016-07-06 13:41:43', '2016-07-06 13:41:43', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613414365100', 'd102ee072104413d924aa5353ebc2596', '2016-07-06 13:41:43', '2016-07-06 13:41:43', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613414775400', 'ad8992bfd8d44b61bf7da698bad49c76', '2016-07-06 13:41:47', '2016-07-06 13:41:47', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613415066400', 'afc16029852d4c24a19f07b39e2530ab', '2016-07-06 13:41:50', '2016-07-06 13:41:50', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613415338500', '75e48395949c4b459a9e7a46bcb59870', '2016-07-06 13:41:53', '2016-07-06 13:41:53', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613415517500', 'b51ac4a82cae4f15b56e70b66f4e4ac6', '2016-07-06 13:41:55', '2016-07-06 13:41:55', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613415992500', '92b8c1f9d91345b5bb59b3b8c0547be5', '2016-07-06 13:41:59', '2016-07-06 13:41:59', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061342064800', '1d1ed38770b54bbd9cefd37fdd7dcdd9', '2016-07-06 13:42:06', '2016-07-06 13:42:06', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613420696000', '08559c952dd5413286e80295879797aa', '2016-07-06 13:42:06', '2016-07-06 13:42:06', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613421053800', 'fa79831f01c642d1956ccb92dc4ed7bf', '2016-07-06 13:42:10', '2016-07-06 13:42:10', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613421582600', 'fa0f38c0120c467eb6cd6a2909b7a779', '2016-07-06 13:42:15', '2016-07-06 13:42:15', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613421937100', '1d7b08e2be9f4629a4257b923ed31287', '2016-07-06 13:42:19', '2016-07-06 13:42:19', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613422325300', 'da8e576b65244772a868439f36211477', '2016-07-06 13:42:23', '2016-07-06 13:42:23', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613422524000', 'fca2411a474f48b7abe38aa18e183817', '2016-07-06 13:42:25', '2016-07-06 13:42:25', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061342294600', '3074f55cd9c947dfb00e56b550924d0a', '2016-07-06 13:42:29', '2016-07-06 13:42:29', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061342328000', '03666df538d4456cba2f3b3e754ffc3e', '2016-07-06 13:42:32', '2016-07-06 13:42:32', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613423443300', '13935b803e17424394c44d99e9c9a562', '2016-07-06 13:42:34', '2016-07-06 13:42:34', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613423581400', 'eda34f5c44424cb0aeb2a02cb7bef85d', '2016-07-06 13:42:35', '2016-07-06 13:42:35', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613424117600', 'b99348d4f558417982d368dce778350e', '2016-07-06 13:42:41', '2016-07-06 13:42:41', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613424360400', 'a8c72fa316ad4a6bbadc83ba267ee196', '2016-07-06 13:42:43', '2016-07-06 13:42:43', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613424652400', '2872359f0f794edea64b2a13b2003503', '2016-07-06 13:42:46', '2016-07-06 13:42:46', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613424982400', 'a6ff825f7c3640d9a9524836ddc4e703', '2016-07-06 13:42:49', '2016-07-06 13:42:49', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613425493100', '371f9545b3654e29bfcf9e408c29f93d', '2016-07-06 13:42:54', '2016-07-06 13:42:54', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613425619400', 'd8c15159fce14d7da3c40a32f744c6d3', '2016-07-06 13:42:56', '2016-07-06 13:42:56', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613430281600', 'ac6ed6cc374f4f46a5c98a71ef06554e', '2016-07-06 13:43:02', '2016-07-06 13:43:02', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613430372300', '17d25be19bdf49bcb321bc2b8184dce9', '2016-07-06 13:43:03', '2016-07-06 13:43:03', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613430931500', '9a333eb4960149fba9c743f45192697d', '2016-07-06 13:43:09', '2016-07-06 13:43:09', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613431450400', '895ac7c8aac54de496abf29769b6829e', '2016-07-06 13:43:14', '2016-07-06 13:43:14', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613431710400', '1158541b417041c8b25dccf9b33d16b1', '2016-07-06 13:43:17', '2016-07-06 13:43:17', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613431947500', '3a4c68d8c65346c896dd24813fc578c6', '2016-07-06 13:43:19', '2016-07-06 13:43:19', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613432412000', 'f2bdda4b9f1540f6aa1fb9e2cf4041c6', '2016-07-06 13:43:24', '2016-07-06 13:43:24', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613433010300', 'b8adb98275e14eb6b4bd152eabcbaea3', '2016-07-06 13:43:30', '2016-07-06 13:43:30', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613433062700', '6d99c709cf85427fa5fa78d7d1add4e8', '2016-07-06 13:43:30', '2016-07-06 13:43:30', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613433475000', '523118ab0ddb46f5bffb2c773ce8db83', '2016-07-06 13:43:34', '2016-07-06 13:43:34', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613433568900', 'c0ab2a25bdec42069a664cfc08985161', '2016-07-06 13:43:35', '2016-07-06 13:43:35', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613433918000', 'b2e6e8f8351a4c50b264cd932b834896', '2016-07-06 13:43:39', '2016-07-06 13:43:39', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613434772800', 'e73f9d288618482c96926c41c0f7a4d5', '2016-07-06 13:43:47', '2016-07-06 13:43:47', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613435399700', 'e65eaf99d0554478aefd32a73b605529', '2016-07-06 13:43:53', '2016-07-06 13:43:53', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613435472300', '4f2e9663c8da4b789463ee9a109ecbd6', '2016-07-06 13:43:54', '2016-07-06 13:43:54', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613435891200', '5ece42ed79b844a5b910a12cce82a439', '2016-07-06 13:43:58', '2016-07-06 13:43:58', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613440058500', '3c4af06a672149ab8f4c39976f75ddf3', '2016-07-06 13:44:00', '2016-07-06 13:44:00', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061344048600', 'a38b2b4095ba4db89406e39ecb8c9297', '2016-07-06 13:44:04', '2016-07-06 13:44:04', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613440551300', '981b65a6840a4ec18c3cb88f665a5882', '2016-07-06 13:44:05', '2016-07-06 13:44:05', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613441220400', 'fc461f8fd00842a3abc7c2a34eb9ee88', '2016-07-06 13:44:12', '2016-07-06 13:44:12', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613441499200', 'd2869b70e183422a83e540885110ac9e', '2016-07-06 13:44:14', '2016-07-06 13:44:14', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613441629000', '35baec64da714df0b2b2a154328366c3', '2016-07-06 13:44:16', '2016-07-06 13:44:16', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613441882100', '59dbdc9092e645f3ad8d5b6156d9a77f', '2016-07-06 13:44:18', '2016-07-06 13:44:18', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613442661000', '9abb0d4c6ccd49f5b58c046fcde5e8dc', '2016-07-06 13:44:26', '2016-07-06 13:44:26', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613443652600', '6cb2a94fa728403982ecc0cf3b69aec0', '2016-07-06 13:44:36', '2016-07-06 13:44:36', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_160706134447000', '26850980972d4c989a03aff4807b9bc3', '2016-07-06 13:44:46', '2016-07-06 13:44:46', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613444711600', '0dc44e5b224f4c97a08cf2fee5a4f14b', '2016-07-06 13:44:47', '2016-07-06 13:44:47', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613445441700', '4ae617ced4e5441391fc09d45169c23a', '2016-07-06 13:44:54', '2016-07-06 13:44:54', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613445542200', '154e808966bc45f0b642bfa3b51df75b', '2016-07-06 13:44:55', '2016-07-06 13:44:55', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613445922500', '77f5b1a492954906939bea5dbf890105', '2016-07-06 13:44:59', '2016-07-06 13:44:59', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613450284000', 'b09c35ff17cd49cdafcaeef8bcce41b1', '2016-07-06 13:45:02', '2016-07-06 13:45:02', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613450333600', 'a031a42894f9451f917333d41db556aa', '2016-07-06 13:45:03', '2016-07-06 13:45:03', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613453174400', 'eb50140933ce4efe96adbcd486f079cb', '2016-07-06 13:45:31', '2016-07-06 13:45:31', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613453554700', '519edc91c9e14832a4715adeb26c8ff1', '2016-07-06 13:45:35', '2016-07-06 13:45:35', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613454148100', '1755a0a5219448c7a3e0e280d91bc5f1', '2016-07-06 13:45:41', '2016-07-06 13:45:41', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613455093200', '089f4bb151ca46d9bbe21eefb5fa93fd', '2016-07-06 13:45:50', '2016-07-06 13:45:50', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613455590900', 'cc1f1ef751084726ab376f21c70ae07a', '2016-07-06 13:45:55', '2016-07-06 13:45:55', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613455845100', '2ab952ce49da4dba879f949babe1dc5a', '2016-07-06 13:45:58', '2016-07-06 13:45:58', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613460029000', '813ce27aa20d4a6c9d325234f2f7d966', '2016-07-06 13:46:00', '2016-07-06 13:46:00', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613460445000', '473176e3f0c3456a8cce4a01e4a117d4', '2016-07-06 13:46:04', '2016-07-06 13:46:04', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613460568100', '904a192614e94d5ca04fdf4897bc935a', '2016-07-06 13:46:05', '2016-07-06 13:46:05', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061346088200', '683a010da4814a6a93b5af4d4370b700', '2016-07-06 13:46:08', '2016-07-06 13:46:08', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613461495400', '38dcaa2d6d784020be259373e4d4be5e', '2016-07-06 13:46:14', '2016-07-06 13:46:14', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613461895400', 'aeb9944ee93e4de4a1429d2ab7409e66', '2016-07-06 13:46:18', '2016-07-06 13:46:18', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613462167100', '772fb7f8ac9449d296aab0d978f3ffa0', '2016-07-06 13:46:21', '2016-07-06 13:46:21', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613462486200', '66d8455d796b4004917e0c53375d56ab', '2016-07-06 13:46:24', '2016-07-06 13:46:24', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613462841800', 'f6fa5e06ba0742fc9ac30e05affdf01e', '2016-07-06 13:46:28', '2016-07-06 13:46:28', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613463284100', '56a1c33aafd74894afe1c38aaaca0a76', '2016-07-06 13:46:32', '2016-07-06 13:46:32', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613463920000', '527e8a6c9da84c93aded6a8479f3e730', '2016-07-06 13:46:39', '2016-07-06 13:46:39', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613464328700', 'bb553949e819483493d147d8973a07e4', '2016-07-06 13:46:43', '2016-07-06 13:46:43', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613464677000', '33c3ef192dfb4eea806007da7e4e2405', '2016-07-06 13:46:46', '2016-07-06 13:46:46', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613464794100', '44e903e89b8c4526be51bf95ee0a5801', '2016-07-06 13:46:47', '2016-07-06 13:46:47', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613465410300', 'f470009456714538a5470f0c96711f16', '2016-07-06 13:46:54', '2016-07-06 13:46:54', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613465497900', '96d8f6ec73fc4cab8f042bc790168554', '2016-07-06 13:46:54', '2016-07-06 13:46:54', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613470841100', 'b059105ddc854a0db63ccfb4287e72c5', '2016-07-06 13:47:08', '2016-07-06 13:47:08', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613471132900', '28f10cc06e364134a732165aca03a506', '2016-07-06 13:47:11', '2016-07-06 13:47:11', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613471249100', 'a208112004fc47ec8e5691e1e54ce5c3', '2016-07-06 13:47:12', '2016-07-06 13:47:12', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613471645100', '986c3c4d96174fa59287bd3d3a1ab5cd', '2016-07-06 13:47:16', '2016-07-06 13:47:16', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061347242000', '4d97fb640261455597ce8f58ca161872', '2016-07-06 13:47:24', '2016-07-06 13:47:24', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613474016400', 'a62a8fed2797446cb193060a60b4b537', '2016-07-06 13:47:40', '2016-07-06 13:47:40', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613474214100', 'd7ae4552d88441feab67c86685d411f4', '2016-07-06 13:47:42', '2016-07-06 13:47:42', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613474628400', '24d62d28d6bd4b41bb716136271b7ae2', '2016-07-06 13:47:46', '2016-07-06 13:47:46', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613474778100', '6389f8cb58944365af6d972cdc0a5657', '2016-07-06 13:47:47', '2016-07-06 13:47:47', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061347509800', '798d77d5451a4f0dace6392ccaecdded', '2016-07-06 13:47:50', '2016-07-06 13:47:50', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613475245500', '79f7ef17fdbf4b9ba1274af96ef1d80e', '2016-07-06 13:47:52', '2016-07-06 13:47:52', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613475862000', 'af80d01488d6494bba0b1eda6fec913c', '2016-07-06 13:47:58', '2016-07-06 13:47:58', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613480048000', '2f6341d1ba6a4023938ddb0a2689aebb', '2016-07-06 13:48:00', '2016-07-06 13:48:00', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613480430700', '79175ef5feec44d08fb8bf5fb13a77c5', '2016-07-06 13:48:04', '2016-07-06 13:48:04', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613480485400', 'b19809e679f4410d8ac8927dcc1e5f04', '2016-07-06 13:48:04', '2016-07-06 13:48:04', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613481040100', '1424be5ffa874d78a4afaf90a1a147ea', '2016-07-06 13:48:10', '2016-07-06 13:48:10', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613481044200', '3f72a4d0dc7b4030b374aea07166c9f3', '2016-07-06 13:48:10', '2016-07-06 13:48:10', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613481643800', 'e5a77dc478f8486cb7e6bdb0a4ce07e0', '2016-07-06 13:48:16', '2016-07-06 13:48:16', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613481710300', '6d25a894d2604d3488988f7265035c9f', '2016-07-06 13:48:17', '2016-07-06 13:48:17', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613482146400', 'fef67d0f225b41a4a4579d9f7772209c', '2016-07-06 13:48:21', '2016-07-06 13:48:21', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613482490100', 'b99ad517f19d4baf87845d40b17bc7c8', '2016-07-06 13:48:24', '2016-07-06 13:48:24', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061348304700', '054388d32ae044e8bd5648612376503f', '2016-07-06 13:48:30', '2016-07-06 13:48:30', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613483992400', 'b7e424848cc84761974202218fc9ffaa', '2016-07-06 13:48:39', '2016-07-06 13:48:39', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613484048700', 'defbe50e30f14756bd439c2149e2225f', '2016-07-06 13:48:40', '2016-07-06 13:48:40', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613485277800', 'd0bc9dda356d4667a3dff9cec16b6d29', '2016-07-06 13:48:52', '2016-07-06 13:48:52', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613490039900', 'a5a28ceca6594fdc87d1d064f40674ac', '2016-07-06 13:49:00', '2016-07-06 13:49:00', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613490172100', 'd9431e93464041e9a3d022a36133b32c', '2016-07-06 13:49:01', '2016-07-06 13:49:01', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061349081000', '3133853c609c4e468454a04142eb945c', '2016-07-06 13:49:07', '2016-07-06 13:49:07', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613491278200', 'e3a7c22b799b4fe8810f6373fdbc3839', '2016-07-06 13:49:12', '2016-07-06 13:49:12', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613491556000', 'bbea6bf1418f4fb79e78d5fc5237c176', '2016-07-06 13:49:15', '2016-07-06 13:49:15', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061349201100', '33f116441bdb49568eb61c199e0b8966', '2016-07-06 13:49:20', '2016-07-06 13:49:20', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613492355800', '2c8c83372e43446392f70eb9a85ff7bc', '2016-07-06 13:49:23', '2016-07-06 13:49:23', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061349272600', 'd4088ef4a53d44e9b38c1740bf164edd', '2016-07-06 13:49:27', '2016-07-06 13:49:27', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613493090100', '0b2c30fb0dce4268a4bee8f573fc04bd', '2016-07-06 13:49:30', '2016-07-06 13:49:30', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613493235100', '42a21c081f984a9892817a55427c4b46', '2016-07-06 13:49:32', '2016-07-06 13:49:32', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613494219600', '35aacfb3c9454a499cd119def4860676', '2016-07-06 13:49:42', '2016-07-06 13:49:42', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613494628500', '631eff2454424a3ea1d76de07e33d748', '2016-07-06 13:49:46', '2016-07-06 13:49:46', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613495429500', '292612cc954f4caaa4bdd735656d7323', '2016-07-06 13:49:54', '2016-07-06 13:49:54', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613495636900', '486e709ae39b47aaae16f885b32d259f', '2016-07-06 13:49:56', '2016-07-06 13:49:56', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613500491300', '5b4abfc18d2749f28ab588b1a3a5a768', '2016-07-06 13:50:04', '2016-07-06 13:50:04', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613501024800', 'bae369042d9d48adb1c0737f2a5573a3', '2016-07-06 13:50:10', '2016-07-06 13:50:10', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613501394600', '4bd1dde8fe9942028805f8e1c622a111', '2016-07-06 13:50:13', '2016-07-06 13:50:13', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613501757100', '7e13c58f0c93472e8cdbcec5d4467785', '2016-07-06 13:50:17', '2016-07-06 13:50:17', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613502037500', 'af2a5e97c8fb4ac9a5ed10e89fb81075', '2016-07-06 13:50:20', '2016-07-06 13:50:20', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613502251100', 'da033f68471a426aac55db44f64de8df', '2016-07-06 13:50:22', '2016-07-06 13:50:22', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613502611100', '406fa62963fc410fa167a84e0bf9548d', '2016-07-06 13:50:26', '2016-07-06 13:50:26', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613502677600', '6b8470df867648388067f147e00ce791', '2016-07-06 13:50:26', '2016-07-06 13:50:26', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607061350319900', '81d45c7857ce4eeea416ea7a6adb552d', '2016-07-06 13:50:31', '2016-07-06 13:50:31', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613503617200', '0bb3033a75054503b2b35183fa4643a6', '2016-07-06 13:50:36', '2016-07-06 13:50:36', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613503940700', 'd66b8907beb54b0db5960342cfe5149d', '2016-07-06 13:50:39', '2016-07-06 13:50:39', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613504317700', '66011f07de994df7a0cf665169b10df5', '2016-07-06 13:50:43', '2016-07-06 13:50:43', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613504350400', 'a9339eb9bf2748778c1f27fe3e06866a', '2016-07-06 13:50:43', '2016-07-06 13:50:43', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613505849400', '456d07fa5706433d8d03e61ce79cc4b1', '2016-07-06 13:50:58', '2016-07-06 13:50:58', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613510830200', '714ce4c5b33647ab8f364dadce0a19ce', '2016-07-06 13:51:08', '2016-07-06 13:51:08', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613521594700', '9ae8276a41494793943f4367462388f0', '2016-07-06 13:52:15', '2016-07-06 13:52:31', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613531820100', '1135ee714a7e4b55b370580abc8ec798', '2016-07-06 13:53:18', '2016-07-06 13:53:18', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613545033900', '46b361392ed8427ab2d6a7a386c1a375', '2016-07-06 13:54:50', '2016-07-06 13:54:50', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613545390900', '7537597d86a444e88bc8110505519da6', '2016-07-06 13:54:53', '2016-07-06 13:54:53', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613545755000', 'd59ba0ea08884e569f9e6e061474811f', '2016-07-06 13:54:57', '2016-07-06 13:54:57', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613550490800', '45413080ef7742b5942f32fc98b69b7c', '2016-07-06 13:55:04', '2016-07-06 13:55:04', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613550893300', '01479891f8c346ad879cf0db6ed3e926', '2016-07-06 13:55:08', '2016-07-06 13:55:08', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613551514900', '91f60fc5064a4c198cc766ab6cb751a2', '2016-07-06 13:55:15', '2016-07-06 13:55:15', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070613555063600', '461c51e4dd34438ca945ddd2e1fa22f7', '2016-07-06 13:55:50', '2016-07-06 13:55:50', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070614462828400', 'a5ee3d5b4c274eaeaa1b56d0251b9e70', '2016-07-06 14:46:28', '2016-07-06 14:46:28', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070615160068900', 'edb9ecc947094e0ab8ad92ceec3b58b7', '2016-07-06 15:16:00', '2016-07-06 15:16:00', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070618020637000', 'd0e62371631045acbee559d0549c7dc7', '2016-07-06 18:02:06', '2016-07-06 18:02:06', 'Y', '2016-07-06', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070830415400', 'b51ac4a82cae4f15b56e70b66f4e4ac6', '2016-07-07 08:30:41', '2016-07-07 08:57:41', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708415548000', 'da8e576b65244772a868439f36211477', '2016-07-07 08:41:55', '2016-07-07 08:41:55', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708481399400', 'cf6b09def97c483091f1e1a8a79ec92b', '2016-07-07 08:48:13', '2016-07-07 08:48:13', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708482655800', '11d1bae8720948029eaddc024c42b309', '2016-07-07 08:48:26', '2016-07-07 08:48:26', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708483144700', 'adde3849a403419d87b02a35e99504a5', '2016-07-07 08:48:31', '2016-07-07 08:48:31', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070848355300', 'e2b04547e47b45a8873857aa8148c853', '2016-07-07 08:48:35', '2016-07-07 08:48:35', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708483742700', 'e34859f16cee41a796ba5285b29743e1', '2016-07-07 08:48:37', '2016-07-07 08:48:37', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708483975800', 'aa2adfb030da42f9ad2fd5bdc3341ac8', '2016-07-07 08:48:39', '2016-07-07 08:48:39', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708484655800', 'a6af8339c75241a9af7531422f3cfda7', '2016-07-07 08:48:46', '2016-07-07 08:48:46', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708485222100', 'c5c8933e454f4fbb934ad8f9c599dcae', '2016-07-07 08:48:52', '2016-07-07 08:48:52', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708491328900', 'ad77a06f883a45f18a869e49fe527c25', '2016-07-07 08:49:13', '2016-07-07 08:49:18', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708493811600', '378a429ace1148c3bf38e263cdf9fe05', '2016-07-07 08:49:38', '2016-07-07 08:49:38', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708493986200', 'a9d54b8f4e524308a6aed781bc248dcc', '2016-07-07 08:49:39', '2016-07-07 08:49:39', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708494162600', '0b5771eafbc4490081a4590424c3ce9b', '2016-07-07 08:49:41', '2016-07-07 08:49:41', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708494724700', '63b8c7eaa1794de0ad7bb3ed877d7c85', '2016-07-07 08:49:47', '2016-07-07 08:49:47', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708495638800', '6c1a7855801d4ccdae3892d85121fd9b', '2016-07-07 08:49:56', '2016-07-07 08:49:56', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708495985300', '398596409c93486fa74696a2f007b2a7', '2016-07-07 08:49:59', '2016-07-07 08:49:59', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708500427300', 'c1f5ce3abe604b1da8028ebacbbbcd35', '2016-07-07 08:50:04', '2016-07-07 08:50:04', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708501110400', '66d8455d796b4004917e0c53375d56ab', '2016-07-07 08:50:11', '2016-07-07 08:50:11', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708501787000', '527e8a6c9da84c93aded6a8479f3e730', '2016-07-07 08:50:17', '2016-07-07 08:50:17', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708502133900', '44e903e89b8c4526be51bf95ee0a5801', '2016-07-07 08:50:21', '2016-07-07 08:50:21', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708502583800', '07d58204700746328badc0f0a8f1939b', '2016-07-07 08:50:25', '2016-07-07 08:50:25', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708503065600', '33c3ef192dfb4eea806007da7e4e2405', '2016-07-07 08:50:30', '2016-07-07 08:50:30', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070850599800', 'ee226207c0a540749f11d88b307bb53b', '2016-07-07 08:50:59', '2016-07-07 08:50:59', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708512133600', '1755a0a5219448c7a3e0e280d91bc5f1', '2016-07-07 08:51:21', '2016-07-07 08:51:21', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708512391100', '519edc91c9e14832a4715adeb26c8ff1', '2016-07-07 08:51:23', '2016-07-07 08:51:23', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708513851300', '24d62d28d6bd4b41bb716136271b7ae2', '2016-07-07 08:51:38', '2016-07-07 08:51:38', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708514342800', '38dcaa2d6d784020be259373e4d4be5e', '2016-07-07 08:51:43', '2016-07-07 08:51:43', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708514818000', 'aeb9944ee93e4de4a1429d2ab7409e66', '2016-07-07 08:51:48', '2016-07-07 08:51:48', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708515230800', 'b7e424848cc84761974202218fc9ffaa', '2016-07-07 08:51:52', '2016-07-07 08:51:52', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708515677700', '683a010da4814a6a93b5af4d4370b700', '2016-07-07 08:51:56', '2016-07-07 08:51:56', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708520123200', 'edb9ecc947094e0ab8ad92ceec3b58b7', '2016-07-07 08:52:01', '2016-07-07 08:52:01', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708520570000', 'b77c3ab9ba904eaf8f3e7ce96f9f2ce9', '2016-07-07 08:52:05', '2016-07-07 08:52:05', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708521130700', 'fe2a4520a93e4fb8a636cb141e79a83b', '2016-07-07 08:52:11', '2016-07-07 08:52:11', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708521472900', 'd55f43a8ced3400f99eacd5ad91ab169', '2016-07-07 08:52:14', '2016-07-07 08:52:14', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708521782500', 'b9f2c6bb10d4485792e339f6ac9e77a5', '2016-07-07 08:52:17', '2016-07-07 08:52:17', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708522718100', 'bd976107f444463d85f9e1dd7bf00e74', '2016-07-07 08:52:27', '2016-07-07 08:52:27', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708524737200', '10350156c16f4f13b80d9719fe80f7c7', '2016-07-07 08:52:47', '2016-07-07 08:52:47', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708525171700', 'a62a8fed2797446cb193060a60b4b537', '2016-07-07 08:52:51', '2016-07-07 08:52:51', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708525616300', '798d77d5451a4f0dace6392ccaecdded', '2016-07-07 08:52:56', '2016-07-07 08:52:56', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070853022300', '6389f8cb58944365af6d972cdc0a5657', '2016-07-07 08:53:02', '2016-07-07 08:53:02', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708532450600', '714ce4c5b33647ab8f364dadce0a19ce', '2016-07-07 08:53:24', '2016-07-07 08:53:27', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708534013300', '73fca92c2ffb4ed6a172fff059be7f1b', '2016-07-07 08:53:40', '2016-07-07 08:53:40', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708534788300', 'fa79831f01c642d1956ccb92dc4ed7bf', '2016-07-07 08:53:47', '2016-07-07 08:53:47', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708535223100', 'fa0f38c0120c467eb6cd6a2909b7a779', '2016-07-07 08:53:52', '2016-07-07 08:53:52', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708535636900', '13935b803e17424394c44d99e9c9a562', '2016-07-07 08:53:56', '2016-07-07 08:53:56', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708540630700', 'fca2411a474f48b7abe38aa18e183817', '2016-07-07 08:54:06', '2016-07-07 08:54:06', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708541214300', '3074f55cd9c947dfb00e56b550924d0a', '2016-07-07 08:54:12', '2016-07-07 08:54:12', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708541657000', 'e5a77dc478f8486cb7e6bdb0a4ce07e0', '2016-07-07 08:54:16', '2016-07-07 08:54:16', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708542126900', '6d25a894d2604d3488988f7265035c9f', '2016-07-07 08:54:21', '2016-07-07 08:54:21', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708542518000', '2f6341d1ba6a4023938ddb0a2689aebb', '2016-07-07 08:54:25', '2016-07-07 08:54:25', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708542992300', '79f7ef17fdbf4b9ba1274af96ef1d80e', '2016-07-07 08:54:29', '2016-07-07 08:54:29', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708543490900', 'a6ff825f7c3640d9a9524836ddc4e703', '2016-07-07 08:54:34', '2016-07-07 08:54:34', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708544141300', '9a333eb4960149fba9c743f45192697d', '2016-07-07 08:54:41', '2016-07-07 08:54:41', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708544819400', 'a8c72fa316ad4a6bbadc83ba267ee196', '2016-07-07 08:54:48', '2016-07-07 08:54:48', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708550134700', '895ac7c8aac54de496abf29769b6829e', '2016-07-07 08:55:01', '2016-07-07 08:55:01', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708551138500', '2872359f0f794edea64b2a13b2003503', '2016-07-07 08:55:11', '2016-07-07 08:55:11', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708551279100', 'eda34f5c44424cb0aeb2a02cb7bef85d', '2016-07-07 08:55:12', '2016-07-07 08:55:12', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708551489100', 'ac6ed6cc374f4f46a5c98a71ef06554e', '2016-07-07 08:55:14', '2016-07-07 08:55:14', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708551928000', 'd8c15159fce14d7da3c40a32f744c6d3', '2016-07-07 08:55:19', '2016-07-07 08:55:19', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_160707085529000', '17d25be19bdf49bcb321bc2b8184dce9', '2016-07-07 08:55:28', '2016-07-07 08:55:28', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708553574700', 'e65eaf99d0554478aefd32a73b605529', '2016-07-07 08:55:35', '2016-07-07 08:55:35', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708553953400', 'e73f9d288618482c96926c41c0f7a4d5', '2016-07-07 08:55:39', '2016-07-07 08:55:39', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070855441000', '6d99c709cf85427fa5fa78d7d1add4e8', '2016-07-07 08:55:44', '2016-07-07 08:55:44', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708554755200', 'b2e6e8f8351a4c50b264cd932b834896', '2016-07-07 08:55:47', '2016-07-07 08:55:47', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708555172800', '5ece42ed79b844a5b910a12cce82a439', '2016-07-07 08:55:51', '2016-07-07 08:55:51', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708555932600', 'a5a28ceca6594fdc87d1d064f40674ac', '2016-07-07 08:55:59', '2016-07-07 08:55:59', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708560612400', 'b99348d4f558417982d368dce778350e', '2016-07-07 08:56:06', '2016-07-07 08:56:06', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708561043700', '08559c952dd5413286e80295879797aa', '2016-07-07 08:56:10', '2016-07-07 08:56:10', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708561728100', '631eff2454424a3ea1d76de07e33d748', '2016-07-07 08:56:17', '2016-07-07 08:56:17', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708562164200', '5b4abfc18d2749f28ab588b1a3a5a768', '2016-07-07 08:56:21', '2016-07-07 08:56:21', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708562612100', '35baec64da714df0b2b2a154328366c3', '2016-07-07 08:56:26', '2016-07-07 08:56:26', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708563216900', '59dbdc9092e645f3ad8d5b6156d9a77f', '2016-07-07 08:56:32', '2016-07-07 08:56:32', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708563768100', 'eb50140933ce4efe96adbcd486f079cb', '2016-07-07 08:56:37', '2016-07-07 08:56:37', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708564120700', '981b65a6840a4ec18c3cb88f665a5882', '2016-07-07 08:56:41', '2016-07-07 08:56:41', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708564664300', 'c40a8352527d4401a30f73d6f76cf17c', '2016-07-07 08:56:46', '2016-07-07 08:56:46', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708565011800', '9abb0d4c6ccd49f5b58c046fcde5e8dc', '2016-07-07 08:56:50', '2016-07-07 08:56:50', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708565431500', 'a38b2b4095ba4db89406e39ecb8c9297', '2016-07-07 08:56:54', '2016-07-07 08:56:54', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708570338800', 'b09c35ff17cd49cdafcaeef8bcce41b1', '2016-07-07 08:57:03', '2016-07-07 08:57:03', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708571161000', '77f5b1a492954906939bea5dbf890105', '2016-07-07 08:57:11', '2016-07-07 08:57:11', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708572731300', '75e48395949c4b459a9e7a46bcb59870', '2016-07-07 08:57:27', '2016-07-07 08:57:27', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070857471000', '698fedbe96f34c4ea3aa301bb9a972f2', '2016-07-07 08:57:47', '2016-07-07 08:57:47', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708575188500', 'cd49453cdf974d4288bb2305cab72775', '2016-07-07 08:57:51', '2016-07-07 08:57:51', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708575551200', '1d1ed38770b54bbd9cefd37fdd7dcdd9', '2016-07-07 08:57:55', '2016-07-07 08:57:55', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708580246800', 'ad8992bfd8d44b61bf7da698bad49c76', '2016-07-07 08:58:02', '2016-07-07 08:58:02', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708580590000', 'd102ee072104413d924aa5353ebc2596', '2016-07-07 08:58:05', '2016-07-07 08:58:05', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708580951800', 'afc16029852d4c24a19f07b39e2530ab', '2016-07-07 08:58:09', '2016-07-07 08:58:09', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070858133300', '935dfcb96ea24143b14ba5f19db77de3', '2016-07-07 08:58:13', '2016-07-07 08:58:13', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708581663900', '88b4280096cd4146a8cc32b53eddcf76', '2016-07-07 08:58:16', '2016-07-07 08:58:16', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708582030000', '5a28a89b38b04bafa1b3fc966e847f9c', '2016-07-07 08:58:20', '2016-07-07 08:58:20', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708582620100', '456d07fa5706433d8d03e61ce79cc4b1', '2016-07-07 08:58:26', '2016-07-07 08:58:26', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708583351800', '67f9f4f2bd694824ad512eb849b167bf', '2016-07-07 08:58:33', '2016-07-07 08:58:33', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070858373800', 'd0e62371631045acbee559d0549c7dc7', '2016-07-07 08:58:37', '2016-07-07 08:58:37', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708584065600', '501c061d986f48619cc820348fac1038', '2016-07-07 08:58:40', '2016-07-07 08:58:40', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708584422000', 'd1994b4453bf4820a5adddc35690ce6f', '2016-07-07 08:58:44', '2016-07-07 08:58:44', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708584895900', '9d35e24ab051489e91c393eb991e0d24', '2016-07-07 08:58:48', '2016-07-07 08:58:48', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708585942900', '27a7fb6af78d4a77a838b1197adece4c', '2016-07-07 08:58:59', '2016-07-07 08:58:59', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708590434800', '3f72a4d0dc7b4030b374aea07166c9f3', '2016-07-07 08:59:04', '2016-07-07 08:59:04', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708590799700', 'b19809e679f4410d8ac8927dcc1e5f04', '2016-07-07 08:59:07', '2016-07-07 08:59:07', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708591153000', 'f10cba6b93a0407e81dbe8dc8b5b369a', '2016-07-07 08:59:11', '2016-07-07 08:59:11', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708591862900', '0a5af13f14c2455d86f78b0ee2b77a13', '2016-07-07 08:59:18', '2016-07-07 08:59:18', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708592220100', '7f26f0f785a74ef18ba5eff491f29e1a', '2016-07-07 08:59:22', '2016-07-07 08:59:22', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708592574900', '30a13c2adbb143128e2bc474cefd351e', '2016-07-07 08:59:25', '2016-07-07 08:59:25', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708592934200', '79175ef5feec44d08fb8bf5fb13a77c5', '2016-07-07 08:59:29', '2016-07-07 08:59:29', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708593664300', '486e709aE39b47aaae16f885b32d259f', '2016-07-07 08:59:36', '2016-07-07 08:59:36', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708594028500', 'af2a5e97c8fb4ac9a5ed10e89fb81075', '2016-07-07 08:59:40', '2016-07-07 08:59:40', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708594475700', '1424be5ffa874d78a4afaf90a1a147ea', '2016-07-07 08:59:44', '2016-07-07 08:59:44', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708594924300', 'd9431e93464041e9a3d022a36133b32c', '2016-07-07 08:59:49', '2016-07-07 08:59:49', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708595395500', 'fef67d0f225b41a4a4579d9f7772209c', '2016-07-07 08:59:53', '2016-07-07 08:59:53', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070708595760300', 'b99ad517f19d4baf87845d40b17bc7c8', '2016-07-07 08:59:57', '2016-07-07 08:59:57', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709000173900', '56a1c33aafd74894afe1c38aaaca0a76', '2016-07-07 09:00:01', '2016-07-07 09:00:01', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709000829500', '772fb7f8ac9449d296aab0d978f3ffa0', '2016-07-07 09:00:08', '2016-07-07 09:00:08', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070900115800', 'cc1f1ef751084726ab376f21c70ae07a', '2016-07-07 09:00:11', '2016-07-07 09:00:11', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709001495100', 'b9daeac80a9d45e9b9eee2133f8551f2', '2016-07-07 09:00:14', '2016-07-07 09:00:14', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709001914600', '3133853c609c4e468454a04142eb945c', '2016-07-07 09:00:19', '2016-07-07 09:00:19', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070900496000', '42a21c081f984a9892817a55427c4b46', '2016-07-07 09:00:49', '2016-07-07 09:00:49', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070901026800', '0b2c30fb0dce4268a4bee8f573fc04bd', '2016-07-07 09:01:02', '2016-07-07 09:01:02', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709010646000', 'd4088ef4a53d44e9b38c1740bf164edd', '2016-07-07 09:01:06', '2016-07-07 09:01:06', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709011528800', '1732bf787a104dfd91aace1b1fa9c666', '2016-07-07 09:01:15', '2016-07-07 09:01:15', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709011944800', '4c03aba7e5f640ec9b3d4b09e69db205', '2016-07-07 09:01:19', '2016-07-07 09:01:19', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709012357200', '70cf1a1b3f404efb84ba65dccd49ea75', '2016-07-07 09:01:23', '2016-07-07 09:01:23', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709012778000', 'bfcee17b70474bcd8214fac9459038ec', '2016-07-07 09:01:27', '2016-07-07 09:01:27', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709013256000', '1a81e3a438e04b0ab385bd83a2381c87', '2016-07-07 09:01:32', '2016-07-07 09:01:32', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709013884700', 'bbea6bf1418f4fb79e78d5fc5237c176', '2016-07-07 09:01:38', '2016-07-07 09:01:38', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709014420900', 'db7652b8a9ab42c78160b1c330462611', '2016-07-07 09:01:44', '2016-07-07 09:01:44', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709014862600', 'e35edbba761246a9b2346b4b3fd0bf54', '2016-07-07 09:01:48', '2016-07-07 09:01:48', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709015341000', 'd56e2488234d4bc8b6ff44dc0a39355c', '2016-07-07 09:01:53', '2016-07-07 09:01:53', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070901574000', 'acc0debdf2fe41d2b78b9c21b4095883', '2016-07-07 09:01:57', '2016-07-07 09:01:57', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709020064200', 'a9339eb9bf2748778c1f27fe3e06866a', '2016-07-07 09:02:00', '2016-07-07 09:02:00', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709020513600', 'a5ee3d5b4c274eaeaa1b56d0251b9e70', '2016-07-07 09:02:05', '2016-07-07 09:02:05', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709020872300', '4d97fb640261455597ce8f58ca161872', '2016-07-07 09:02:08', '2016-07-07 09:02:08', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709021327400', 'af80d01488d6494bba0b1eda6fec913c', '2016-07-07 09:02:13', '2016-07-07 09:02:13', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070902258100', 'd7ae4552d88441feab67c86685d411f4', '2016-07-07 09:02:25', '2016-07-07 09:02:25', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709023241700', '33f116441bdb49568eb61c199e0b8966', '2016-07-07 09:02:32', '2016-07-07 09:02:32', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709023730700', 'bbf2993a9ed44e37bf7fb1403a8bde6d', '2016-07-07 09:02:37', '2016-07-07 09:02:37', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709024179200', 'da033f68471a426aac55db44f64de8df', '2016-07-07 09:02:41', '2016-07-07 09:02:41', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709024659800', '81d45c7857ce4eeea416ea7a6adb552d', '2016-07-07 09:02:46', '2016-07-07 09:02:46', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709025199500', '7e13c58f0c93472e8cdbcec5d4467785', '2016-07-07 09:02:51', '2016-07-07 09:02:51', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709025698200', '292612cc954f4caaa4bdd735656d7323', '2016-07-07 09:02:56', '2016-07-07 09:02:56', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070903083000', '4bd1dde8fe9942028805f8e1c622a111', '2016-07-07 09:03:08', '2016-07-07 09:03:08', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709031555700', '0bb3033a75054503b2b35183fa4643a6', '2016-07-07 09:03:15', '2016-07-07 09:03:15', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709032047200', 'fc461f8fd00842a3abc7c2a34eb9ee88', '2016-07-07 09:03:20', '2016-07-07 09:03:20', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709034391900', 'f6fa5e06ba0742fc9ac30e05affdf01e', '2016-07-07 09:03:43', '2016-07-07 09:03:43', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709040527400', '054388d32ae044e8bd5648612376503f', '2016-07-07 09:04:05', '2016-07-07 09:04:05', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709042454500', '0ec8537e4c104a499efd069e1a108c07', '2016-07-07 09:04:24', '2016-07-07 09:04:24', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709043045300', 'defbe50e30f14756bd439c2149e2225f', '2016-07-07 09:04:30', '2016-07-07 09:04:30', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709051686100', 'd0bc9dda356d4667a3dff9cec16b6d29', '2016-07-07 09:05:16', '2016-07-07 09:05:16', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709061324300', '0dc44e5b224f4c97a08cf2fee5a4f14b', '2016-07-07 09:06:13', '2016-07-07 09:06:13', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709062520200', '4ae617ced4e5441391fc09d45169c23a', '2016-07-07 09:06:25', '2016-07-07 09:06:25', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709063474700', 'a031a42894f9451f917333d41db556aa', '2016-07-07 09:06:34', '2016-07-07 09:06:34', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709072549200', 'bae369042d9d48adb1c0737f2a5573a3', '2016-07-07 09:07:25', '2016-07-07 09:07:25', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709091850000', '523118ab0ddb46f5bffb2c773ce8db83', '2016-07-07 09:09:18', '2016-07-07 09:09:18', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709092382100', '4f8a7cf3045a48f788103106c54573da', '2016-07-07 09:09:23', '2016-07-07 09:09:23', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709102797800', 'd2869b70e183422a83e540885110ac9e', '2016-07-07 09:10:27', '2016-07-07 09:10:27', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709130432700', '5d112ab253d942a3a5ce356a48f572d4', '2016-07-07 09:13:04', '2016-07-07 09:13:04', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709142882700', 'b059105ddc854a0db63ccfb4287e72c5', '2016-07-07 09:14:28', '2016-07-07 09:14:28', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_160707091507800', '904a192614e94d5ca04fdf4897bc935a', '2016-07-07 09:15:07', '2016-07-07 09:15:07', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709151363400', '96d8f6ec73fc4cab8f042bc790168554', '2016-07-07 09:15:13', '2016-07-07 09:15:13', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709154314400', '26850980972d4c989a03aff4807b9bc3', '2016-07-07 09:15:43', '2016-07-07 09:15:43', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709241457900', 'c0ab2a25bdec42069a664cfc08985161', '2016-07-07 09:24:14', '2016-07-07 09:24:14', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709263217200', '730e9015bfb3434bb7c68a2ff83a3038', '2016-07-07 09:26:32', '2016-07-07 09:26:32', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709321678600', '461c51e4dd34438ca945ddd2e1fa22f7', '2016-07-07 09:32:16', '2016-07-07 09:32:16', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709322038500', '91f60fc5064a4c198cc766ab6cb751a2', '2016-07-07 09:32:20', '2016-07-07 09:32:20', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709322750800', '01479891f8c346ad879cf0db6ed3e926', '2016-07-07 09:32:27', '2016-07-07 09:32:27', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607070932313900', '45413080ef7742b5942f32fc98b69b7c', '2016-07-07 09:32:31', '2016-07-07 09:32:31', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709323463900', '46b361392ed8427ab2d6a7a386c1a375', '2016-07-07 09:32:34', '2016-07-07 09:32:34', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709323819900', '7537597d86a444e88bc8110505519da6', '2016-07-07 09:32:38', '2016-07-07 09:32:38', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709324181600', 'a6d1a8196907436396c0b26c3dd6359d', '2016-07-07 09:32:41', '2016-07-07 09:32:41', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709324534900', 'd59ba0ea08884e569f9e6e061474811f', '2016-07-07 09:32:45', '2016-07-07 09:32:45', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709372228100', '6cb2a94fa728403982ecc0cf3b69aec0', '2016-07-07 09:37:22', '2016-07-07 09:37:22', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070709413022500', '28f10cc06e364134a732165aca03a506', '2016-07-07 09:41:30', '2016-07-07 09:41:30', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070710135345000', '089f4bb151ca46d9bbe21eefb5fa93fd', '2016-07-07 10:13:53', '2016-07-07 10:13:53', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711141822800', '60305b1bf16a4e8193a368593f07dffa', '2016-07-07 11:14:18', '2016-07-07 11:14:18', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711144776300', '1d7b08e2be9f4629a4257b923ed31287', '2016-07-07 11:14:47', '2016-07-07 11:14:47', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711394961200', '4323757eac0e483c84b0afb8a659c55f', '2016-07-07 11:39:49', '2016-07-07 11:39:49', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711430399800', '6b8470df867648388067f147e00ce791', '2016-07-07 11:43:03', '2016-07-07 11:43:03', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711475081000', '2c8c83372e43446392f70eb9a85ff7bc', '2016-07-07 11:47:50', '2016-07-07 11:47:50', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711475490100', '35aacfb3c9454a499cd119def4860676', '2016-07-07 11:47:54', '2016-07-07 11:47:54', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711475879700', '777ba550e4d64589b958d1397583129b', '2016-07-07 11:47:58', '2016-07-07 11:47:58', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711481684900', '222b1338ccca4050855bba0d07499f93', '2016-07-07 11:48:16', '2016-07-07 11:48:16', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711501341700', '371f9545b3654e29bfcf9e408c29f93d', '2016-07-07 11:50:13', '2016-07-07 11:50:13', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711505593300', '1952facb77e5489ba0a44494f4340233', '2016-07-07 11:50:55', '2016-07-07 11:50:55', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711564814400', 'e3a7c22b799b4fe8810f6373fdbc3839', '2016-07-07 11:56:48', '2016-07-07 11:56:48', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070711594418400', 'f482bb4ef2e14a62b1ab0e6da2171416', '2016-07-07 11:59:44', '2016-07-07 11:59:44', 'Y', '2016-07-07', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070712131411600', '154e808966bc45f0b642bfa3b51df75b', '2016-07-07 12:13:14', '2016-07-07 13:45:21', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070712271173100', '406fa62963fc410fa167a84e0bf9548d', '2016-07-07 12:27:11', '2016-07-07 13:43:27', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713313073500', '2ab952ce49da4dba879f949babe1dc5a', '2016-07-07 13:31:30', '2016-07-07 13:31:30', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713313339400', '089f4bb151ca46d9bbe21eefb5fa93fd', '2016-07-07 13:31:33', '2016-07-07 13:31:33', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713314921000', '904a192614e94d5ca04fdf4897bc935a', '2016-07-07 13:31:49', '2016-07-07 13:31:49', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713315893500', 'cc1f1ef751084726ab376f21c70ae07a', '2016-07-07 13:31:58', '2016-07-07 13:31:58', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713320377600', 'b9daeac80a9d45e9b9eee2133f8551f2', '2016-07-07 13:32:03', '2016-07-07 13:32:06', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713320844600', '772fb7f8ac9449d296aab0d978f3ffa0', '2016-07-07 13:32:08', '2016-07-07 13:32:08', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713321985600', '56a1c33aafd74894afe1c38aaaca0a76', '2016-07-07 13:32:19', '2016-07-07 13:32:19', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713322761100', '1755a0a5219448c7a3e0e280d91bc5f1', '2016-07-07 13:32:27', '2016-07-07 13:32:27', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713323042500', '519edc91c9e14832a4715adeb26c8ff1', '2016-07-07 13:32:30', '2016-07-07 13:32:49', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713323224500', '683a010da4814a6a93b5af4d4370b700', '2016-07-07 13:32:32', '2016-07-07 13:32:32', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713324417200', '38dcaa2d6d784020be259373e4d4be5e', '2016-07-07 13:32:44', '2016-07-07 13:32:44', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713324862000', 'edb9ecc947094e0ab8ad92ceec3b58b7', '2016-07-07 13:32:48', '2016-07-07 13:32:48', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713325617100', '054388d32ae044e8bd5648612376503f', '2016-07-07 13:32:56', '2016-07-07 13:32:56', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713325766100', 'aeb9944ee93e4de4a1429d2ab7409e66', '2016-07-07 13:32:57', '2016-07-07 13:33:01', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713330693500', 'b7e424848cc84761974202218fc9ffaa', '2016-07-07 13:33:06', '2016-07-07 13:33:06', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713331255400', '66d8455d796b4004917e0c53375d56ab', '2016-07-07 13:33:12', '2016-07-07 13:33:12', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713331686200', '6b8470df867648388067f147e00ce791', '2016-07-07 13:33:16', '2016-07-07 13:33:16', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071333187800', '24d62d28d6bd4b41bb716136271b7ae2', '2016-07-07 13:33:18', '2016-07-07 13:33:18', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713332177400', '44e903e89b8c4526be51bf95ee0a5801', '2016-07-07 13:33:21', '2016-07-07 13:33:21', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713333648900', '33c3ef192dfb4eea806007da7e4e2405', '2016-07-07 13:33:36', '2016-07-07 13:33:36', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713334455400', 'defbe50e30f14756bd439c2149e2225f', '2016-07-07 13:33:44', '2016-07-07 13:33:44', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713334526700', '96d8f6ec73fc4cab8f042bc790168554', '2016-07-07 13:33:45', '2016-07-07 13:33:45', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713335290500', '28f10cc06e364134a732165aca03a506', '2016-07-07 13:33:52', '2016-07-07 13:33:57', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713335753400', 'f6fa5e06ba0742fc9ac30e05affdf01e', '2016-07-07 13:33:57', '2016-07-07 13:33:57', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713340285300', 'f470009456714538a5470f0c96711f16', '2016-07-07 13:34:02', '2016-07-07 13:34:02', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713341312400', '79f7ef17fdbf4b9ba1274af96ef1d80e', '2016-07-07 13:34:13', '2016-07-07 13:34:13', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071334177100', '6389f8cb58944365af6d972cdc0a5657', '2016-07-07 13:34:17', '2016-07-07 13:34:17', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713342295100', '798d77d5451a4f0dace6392ccaecdded', '2016-07-07 13:34:22', '2016-07-07 13:34:22', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713342748400', '6d25a894d2604d3488988f7265035c9f', '2016-07-07 13:34:27', '2016-07-07 13:34:33', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713342788300', 'a62a8fed2797446cb193060a60b4b537', '2016-07-07 13:34:27', '2016-07-07 13:34:27', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713343176800', '714ce4c5b33647ab8f364dadce0a19ce', '2016-07-07 13:34:31', '2016-07-07 13:34:31', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713343616700', 'd9431e93464041e9a3d022a36133b32c', '2016-07-07 13:34:36', '2016-07-07 13:34:36', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713343896800', '1424be5ffa874d78a4afaf90a1a147ea', '2016-07-07 13:34:38', '2016-07-07 13:34:38', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713344384400', '527e8a6c9da84c93aded6a8479f3e730', '2016-07-07 13:34:43', '2016-07-07 13:34:43', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713344773000', '3f72a4d0dc7b4030b374aea07166c9f3', '2016-07-07 13:34:47', '2016-07-07 13:34:53', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713345236900', '79175ef5feec44d08fb8bf5fb13a77c5', '2016-07-07 13:34:52', '2016-07-07 13:34:52', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713345589200', 'b19809e679f4410d8ac8927dcc1e5f04', '2016-07-07 13:34:55', '2016-07-07 13:34:55', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713345678400', 'e3a7c22b799b4fe8810f6373fdbc3839', '2016-07-07 13:34:56', '2016-07-07 13:34:56', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713350072300', 'af2a5e97c8fb4ac9a5ed10e89fb81075', '2016-07-07 13:35:00', '2016-07-07 13:35:00', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713350433600', '486e709ae39b47aaae16f885b32d259f', '2016-07-07 13:35:04', '2016-07-07 13:35:04', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713350914400', 'fef67d0f225b41a4a4579d9f7772209c', '2016-07-07 13:35:09', '2016-07-07 13:35:09', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071335131300', 'f10cba6b93a0407e81dbe8dc8b5b369a', '2016-07-07 13:35:13', '2016-07-07 13:35:13', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713351887700', 'bb553949e819483493d147d8973a07e4', '2016-07-07 13:35:18', '2016-07-07 13:35:18', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713352488200', 'b99ad517f19d4baf87845d40b17bc7c8', '2016-07-07 13:35:24', '2016-07-07 13:35:24', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071336001600', '27a7fb6af78d4a77a838b1197adece4c', '2016-07-07 13:36:00', '2016-07-07 13:36:00', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713360534800', '30a13c2adbb143128e2bc474cefd351e', '2016-07-07 13:36:05', '2016-07-07 13:36:05', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713360856600', 'd1994b4453bf4820a5adddc35690ce6f', '2016-07-07 13:36:08', '2016-07-07 13:36:12', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713361673300', '501c061d986f48619cc820348fac1038', '2016-07-07 13:36:16', '2016-07-07 13:36:16', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713362158200', '0a5af13f14c2455d86f78b0ee2b77a13', '2016-07-07 13:36:21', '2016-07-07 13:36:21', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713362627000', '75ba367b11064db28b0bf42d4c726a84', '2016-07-07 13:36:26', '2016-07-07 13:36:26', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713362690700', 'e4ffadd130894894a3566cbe60050ca9', '2016-07-07 13:36:26', '2016-07-07 13:36:26', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713363056900', '9d35e24ab051489e91c393eb991e0d24', '2016-07-07 13:36:30', '2016-07-07 13:36:30', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713363610300', 'bfcee17b70474bcd8214fac9459038ec', '2016-07-07 13:36:36', '2016-07-07 13:36:36', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713363677700', '1732bf787a104dfd91aace1b1fa9c666', '2016-07-07 13:36:36', '2016-07-07 13:36:36', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713364091000', '1a81e3a438e04b0ab385bd83a2381c87', '2016-07-07 13:36:40', '2016-07-07 13:36:40', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713364466000', '70cF1a1b3f404efb84ba65dccd49ea75', '2016-07-07 13:36:44', '2016-07-07 13:36:44', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713364577800', '4c03aba7e5f640ec9b3d4b09e69db205', '2016-07-07 13:36:45', '2016-07-07 13:36:45', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713365356400', 'e35edbba761246a9b2346b4b3fd0bf54', '2016-07-07 13:36:53', '2016-07-07 13:36:53', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713370023000', 'db7652b8a9ab42c78160b1c330462611', '2016-07-07 13:37:00', '2016-07-07 13:37:00', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713371030100', 'acc0debdf2fe41d2b78b9c21b4095883', '2016-07-07 13:37:10', '2016-07-07 13:37:10', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713371492500', 'd56e2488234d4bc8b6ff44dc0a39355c', '2016-07-07 13:37:14', '2016-07-07 13:37:14', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713371613800', 'ee226207c0a540749f11d88b307bb53b', '2016-07-07 13:37:16', '2016-07-07 13:37:16', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713372253800', 'ad77a06f883a45f18a869e49fe527c25', '2016-07-07 13:37:22', '2016-07-07 13:37:22', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713372615800', 'a9339eb9bf2748778c1f27fe3e06866a', '2016-07-07 13:37:26', '2016-07-07 13:37:26', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713373352600', '8cf58a61603948dbaa935ee255ec1873', '2016-07-07 13:37:33', '2016-07-07 13:37:33', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713373819300', 'e2b04547e47b45a8873857aa8148c853', '2016-07-07 13:37:38', '2016-07-07 13:37:38', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713374044300', '777ba550e4d64589b958d1397583129b', '2016-07-07 13:37:40', '2016-07-07 13:37:40', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713374658600', '11d1bae8720948029eaddc024c42b309', '2016-07-07 13:37:46', '2016-07-07 13:37:46', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713374683400', '0ec8537e4c104a499efd069e1a108c07', '2016-07-07 13:37:46', '2016-07-07 13:37:46', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713375673000', 'cf6b09def97c483091f1e1a8a79ec92b', '2016-07-07 13:37:56', '2016-07-07 13:37:56', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713380044000', 'adde3849a403419d87b02a35e99504a5', '2016-07-07 13:38:00', '2016-07-07 13:38:00', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713380329600', 'e34859f16cee41a796ba5285b29743e1', '2016-07-07 13:38:03', '2016-07-07 13:38:03', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071338042600', 'a6af8339c75241a9af7531422f3cfda7', '2016-07-07 13:38:04', '2016-07-07 13:38:04', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713380898900', 'aa2adfb030da42f9ad2fd5bdc3341ac8', '2016-07-07 13:38:08', '2016-07-07 13:38:08', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713381278000', 'c5c8933e454f4fbb934ad8f9c599dcae', '2016-07-07 13:38:12', '2016-07-07 13:38:12', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713381443900', 'a9d54b8f4e524308a6aed781bc248dcc', '2016-07-07 13:38:14', '2016-07-07 13:38:14', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713381927700', '378a429ace1148c3bf38e263cdf9fe05', '2016-07-07 13:38:19', '2016-07-07 13:38:19', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713382060600', 'c9c39e3703ca4325a94d46c4ff459a67', '2016-07-07 13:38:20', '2016-07-07 13:38:20', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713382354800', '0b5771eafbc4490081a4590424c3ce9b', '2016-07-07 13:38:23', '2016-07-07 13:38:23', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713382926700', 'c1f5ce3abe604b1da8028ebacbbbcd35', '2016-07-07 13:38:29', '2016-07-07 13:38:29', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713382956900', '398596409c93486fa74696a2f007b2a7', '2016-07-07 13:38:29', '2016-07-07 13:38:29', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713383274600', '63b8c7eaa1794de0ad7bb3ed877d7c85', '2016-07-07 13:38:32', '2016-07-07 13:38:32', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713383638900', '2f6341d1ba6a4023938ddb0a2689aebb', '2016-07-07 13:38:36', '2016-07-07 13:38:36', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713383685300', 'e5a77dc478f8486cb7e6bdb0a4ce07e0', '2016-07-07 13:38:36', '2016-07-07 13:38:36', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713384238200', 'cd49453cdf974d4288bb2305cab72775', '2016-07-07 13:38:42', '2016-07-07 13:38:42', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713384243600', '698fedbe96f34c4ea3aa301bb9a972f2', '2016-07-07 13:38:42', '2016-07-07 13:38:42', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713384596300', 'b51ac4a82cae4f15b56e70b66f4e4ac6', '2016-07-07 13:38:45', '2016-07-07 13:38:45', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713385086200', '1d1ed38770b54bbd9cefd37fdd7dcdd9', '2016-07-07 13:38:50', '2016-07-07 13:38:50', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713385698300', '75e48395949c4b459a9e7a46bcb59870', '2016-07-07 13:38:56', '2016-07-07 13:38:56', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713385710400', '60305b1bf16a4e8193a368593f07dffa', '2016-07-07 13:38:57', '2016-07-07 13:38:57', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713390229600', 'ad8992bfd8d44b61bf7da698bad49c76', '2016-07-07 13:39:02', '2016-07-07 13:39:02', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713390366100', 'd102ee072104413d924aa5353ebc2596', '2016-07-07 13:39:03', '2016-07-07 13:39:03', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713390876400', 'afc16029852d4c24a19f07b39e2530ab', '2016-07-07 13:39:08', '2016-07-07 13:39:08', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713391226600', '4bd1dde8fe9942028805f8e1c622a111', '2016-07-07 13:39:12', '2016-07-07 13:39:12', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713391770600', 'da033f68471a426aac55db44f64de8df', '2016-07-07 13:39:17', '2016-07-07 13:39:17', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071339223000', '81d45c7857ce4eeea416ea7a6adb552d', '2016-07-07 13:39:22', '2016-07-07 13:39:25', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713392524300', '7e13c58f0c93472e8cdbcec5d4467785', '2016-07-07 13:39:25', '2016-07-07 13:39:25', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713393340500', 'bae369042d9d48adb1c0737f2a5573a3', '2016-07-07 13:39:33', '2016-07-07 13:39:33', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713393344100', '0bb3033a75054503b2b35183fa4643a6', '2016-07-07 13:39:33', '2016-07-07 13:39:33', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713394382100', '935dfcb96ea24143b14ba5f19db77de3', '2016-07-07 13:39:43', '2016-07-07 13:39:43', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713394833400', '4323757eac0e483c84b0afb8a659c55f', '2016-07-07 13:39:48', '2016-07-07 13:39:48', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713395741200', '222b1338ccca4050855bba0d07499f93', '2016-07-07 13:39:57', '2016-07-07 13:39:57', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713400092400', '4f8a7cf3045a48f788103106c54573da', '2016-07-07 13:40:00', '2016-07-07 13:40:00', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713400451900', '292612cc954f4caaa4bdd735656d7323', '2016-07-07 13:40:04', '2016-07-07 13:40:04', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713400849700', '66011f07de994df7a0cf665169b10df5', '2016-07-07 13:40:08', '2016-07-07 13:40:08', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713400939600', 'd0e62371631045acbee559d0549c7dc7', '2016-07-07 13:40:09', '2016-07-07 13:40:09', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713401494300', '1952facb77e5489ba0a44494f4340233', '2016-07-07 13:40:14', '2016-07-07 13:40:14', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713401542800', '456d07fa5706433d8d03e61ce79cc4b1', '2016-07-07 13:40:15', '2016-07-07 13:40:15', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713402081800', '67f9f4f2bd694824ad512eb849b167bf', '2016-07-07 13:40:20', '2016-07-07 13:40:20', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713402218400', '5a28a89b38b04bafa1b3fc966e847f9c', '2016-07-07 13:40:22', '2016-07-07 13:40:22', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713402672200', 'b77c3ab9ba904eaf8f3e7ce96f9f2ce9', '2016-07-07 13:40:26', '2016-07-07 13:40:26', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713403342500', 'f482bb4ef2e14a62b1ab0e6da2171416', '2016-07-07 13:40:33', '2016-07-07 13:40:33', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713403389100', 'd55f43a8ced3400f99eacd5ad91ab169', '2016-07-07 13:40:33', '2016-07-07 13:40:33', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713403814500', 'b9f2c6bb10d4485792e339f6ac9e77a5', '2016-07-07 13:40:38', '2016-07-07 13:40:38', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713404499900', 'd0bc9dda356d4667a3dff9cec16b6d29', '2016-07-07 13:40:44', '2016-07-07 13:40:44', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713404561600', 'fe2a4520a93e4fb8a636cb141e79a83b', '2016-07-07 13:40:45', '2016-07-07 13:40:45', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713405385000', '4d97fb640261455597ce8f58ca161872', '2016-07-07 13:40:53', '2016-07-07 13:40:53', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713410327000', 'af80d01488d6494bba0b1eda6fec913c', '2016-07-07 13:41:03', '2016-07-07 13:41:04', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713410341100', '10350156c16f4f13b80d9719fe80f7c7', '2016-07-07 13:41:03', '2016-07-07 13:41:03', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713411682200', 'b059105ddc854a0db63ccfb4287e72c5', '2016-07-07 13:41:16', '2016-07-07 13:41:16', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713411724800', '07d58204700746328badc0f0a8f1939b', '2016-07-07 13:41:17', '2016-07-07 13:41:17', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071341295600', 'a5ee3d5b4c274eaeaa1b56d0251b9e70', '2016-07-07 13:41:29', '2016-07-07 13:41:29', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071341362500', 'd7ae4552d88441feab67c86685d411f4', '2016-07-07 13:41:36', '2016-07-07 13:41:36', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713413763700', 'bbf2993a9ed44e37bf7fb1403a8bde6d', '2016-07-07 13:41:37', '2016-07-07 13:41:37', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713414312700', '33f116441bdb49568eb61c199e0b8966', '2016-07-07 13:41:43', '2016-07-07 13:41:43', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713414842100', 'd66b8907beb54b0db5960342cfe5149d', '2016-07-07 13:41:48', '2016-07-07 13:41:48', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713415115600', '3133853c609c4e468454a04142eb945c', '2016-07-07 13:41:51', '2016-07-07 13:41:51', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713415711000', 'bbea6bf1418f4fb79e78d5fc5237c176', '2016-07-07 13:41:57', '2016-07-07 13:41:57', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713420081700', 'd4088ef4a53d44e9b38c1740bf164edd', '2016-07-07 13:42:00', '2016-07-07 13:42:00', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713420282400', '2c8c83372e43446392f70eb9a85ff7bc', '2016-07-07 13:42:02', '2016-07-07 13:42:02', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713421286700', '5b4abfc18d2749f28ab588b1a3a5a768', '2016-07-07 13:42:12', '2016-07-07 13:42:14', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713421625000', '631eff2454424a3ea1d76de07e33d748', '2016-07-07 13:42:16', '2016-07-07 13:42:16', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713421772100', '35aacfb3c9454a499cd119def4860676', '2016-07-07 13:42:17', '2016-07-07 13:42:17', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713422511900', '42a21c081f984a9892817a55427c4b46', '2016-07-07 13:42:25', '2016-07-07 13:42:25', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713422976100', 'bd976107f444463d85f9e1dd7bf00e74', '2016-07-07 13:42:29', '2016-07-07 13:42:29', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713422997300', '0b2c30fb0dce4268a4bee8f573fc04bd', '2016-07-07 13:42:29', '2016-07-07 13:42:29', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713423655100', '88b4280096cd4146a8cc32b53eddcf76', '2016-07-07 13:42:36', '2016-07-07 13:42:36', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713423896200', '5d112ab253d942a3a5ce356a48f572d4', '2016-07-07 13:42:38', '2016-07-07 13:42:38', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713424614500', 'fa79831f01c642d1956ccb92dc4ed7bf', '2016-07-07 13:42:46', '2016-07-07 13:42:46', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713424782400', '08559c952dd5413286e80295879797aa', '2016-07-07 13:42:47', '2016-07-07 13:42:47', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713425571500', 'fa0f38c0120c467eb6cd6a2909b7a779', '2016-07-07 13:42:55', '2016-07-07 13:42:55', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713430098300', 'fca2411a474f48b7abe38aa18e183817', '2016-07-07 13:43:00', '2016-07-07 13:43:00', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713430196700', '730e9015bfb3434bb7c68a2ff83a3038', '2016-07-07 13:43:01', '2016-07-07 13:43:01', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713430955900', 'da8e576b65244772a868439f36211477', '2016-07-07 13:43:09', '2016-07-07 13:43:09', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713431772100', '3074f55cd9c947dfb00e56b550924d0a', '2016-07-07 13:43:17', '2016-07-07 13:43:17', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713431931100', '1d7b08e2be9f4629a4257b923ed31287', '2016-07-07 13:43:19', '2016-07-07 13:43:19', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713432426300', 'a5a28ceca6594fdc87d1d064f40674ac', '2016-07-07 13:43:24', '2016-07-07 13:43:24', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713433297800', 'b99348d4f558417982d368dce778350e', '2016-07-07 13:43:32', '2016-07-07 13:43:35', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713433397700', '13935b803e17424394c44d99e9c9a562', '2016-07-07 13:43:33', '2016-07-07 13:43:33', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713433882700', '73fca92c2ffb4ed6a172fff059be7f1b', '2016-07-07 13:43:38', '2016-07-07 13:43:38', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713433981000', '2872359f0f794edea64b2a13b2003503', '2016-07-07 13:43:39', '2016-07-07 13:43:39', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713434536900', 'ac6ed6cc374f4f46a5c98a71ef06554e', '2016-07-07 13:43:45', '2016-07-07 13:43:45', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713435067900', 'a8c72fa316ad4a6bbadc83ba267ee196', '2016-07-07 13:43:50', '2016-07-07 13:43:50', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071343519200', '9a333eb4960149fba9c743f45192697d', '2016-07-07 13:43:51', '2016-07-07 13:43:51', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713435433200', '371f9545b3654e29bfcf9e408c29f93d', '2016-07-07 13:43:54', '2016-07-07 13:43:54', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713435844400', 'd8c15159fce14d7da3c40a32f744c6d3', '2016-07-07 13:43:58', '2016-07-07 13:43:58', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713440424100', '895ac7c8aac54de496abf29769b6829e', '2016-07-07 13:44:04', '2016-07-07 13:44:04', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713440598200', '17d25be19bdf49bcb321bc2b8184dce9', '2016-07-07 13:44:05', '2016-07-07 13:44:05', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713440915900', 'eda34f5c44424cb0aeb2a02cb7bef85d', '2016-07-07 13:44:09', '2016-07-07 13:44:09', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713441089800', '3a4c68d8c65346c896dd24813fc578c6', '2016-07-07 13:44:10', '2016-07-07 13:44:10', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713441586700', 'c0ab2a25bdec42069a664cfc08985161', '2016-07-07 13:44:15', '2016-07-07 13:44:15', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071344175700', 'e65eaf99d0554478aefd32a73b605529', '2016-07-07 13:44:17', '2016-07-07 13:44:17', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071344207600', '523118ab0ddb46f5bffb2c773ce8db83', '2016-07-07 13:44:20', '2016-07-07 13:44:20', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713442477500', '6d99c709cf85427fa5fa78d7d1add4e8', '2016-07-07 13:44:24', '2016-07-07 13:44:24', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713442599800', '5ece42ed79b844a5b910a12cce82a439', '2016-07-07 13:44:25', '2016-07-07 13:44:25', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713442921000', '981b65a6840a4ec18c3cb88f665a5882', '2016-07-07 13:44:29', '2016-07-07 13:44:29', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713443128100', '6cb2a94fa728403982ecc0cf3b69aec0', '2016-07-07 13:44:31', '2016-07-07 13:44:31', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713443420700', 'c40a8352527d4401a30f73d6f76cf17c', '2016-07-07 13:44:34', '2016-07-07 13:44:34', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713443979900', '9abb0d4c6ccd49f5b58c046fcde5e8dc', '2016-07-07 13:44:39', '2016-07-07 13:44:39', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713444313000', '4f2e9663c8da4b789463ee9a109ecbd6', '2016-07-07 13:44:43', '2016-07-07 13:44:43', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713444417400', '35baec64da714df0b2b2a154328366c3', '2016-07-07 13:44:44', '2016-07-07 13:44:44', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713444696000', 'a38b2b4095ba4db89406e39ecb8c9297', '2016-07-07 13:44:46', '2016-07-07 13:44:46', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713445144900', '59dbdc9092e645f3ad8d5b6156d9a77f', '2016-07-07 13:44:51', '2016-07-07 13:44:51', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713445630100', 'd2869b70e183422a83e540885110ac9e', '2016-07-07 13:44:56', '2016-07-07 13:44:56', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713445656400', '26850980972d4c989a03aff4807b9bc3', '2016-07-07 13:44:56', '2016-07-07 13:44:56', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713450191400', 'fc461f8fd00842a3abc7c2a34eb9ee88', '2016-07-07 13:45:01', '2016-07-07 13:45:01', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713450630000', 'b2e6e8f8351a4c50b264cd932b834896', '2016-07-07 13:45:06', '2016-07-07 13:45:06', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713450760400', 'a031a42894f9451f917333d41db556aa', '2016-07-07 13:45:07', '2016-07-07 13:45:07', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713451076100', 'e73f9d288618482c96926c41c0f7a4d5', '2016-07-07 13:45:10', '2016-07-07 13:45:10', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713451493100', 'a6ff825f7c3640d9a9524836ddc4e703', '2016-07-07 13:45:14', '2016-07-07 13:45:14', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713451657600', 'eb50140933ce4efe96adbcd486f079cb', '2016-07-07 13:45:16', '2016-07-07 13:45:16', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713452913200', '77f5b1a492954906939bea5dbf890105', '2016-07-07 13:45:29', '2016-07-07 13:45:29', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713453010300', '4ae617ced4e5441391fc09d45169c23a', '2016-07-07 13:45:30', '2016-07-07 13:45:30', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713454030000', '0dc44e5b224f4c97a08cf2fee5a4f14b', '2016-07-07 13:45:40', '2016-07-07 13:45:40', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713465988500', '304e6735b4b0483d971726de17437645', '2016-07-07 13:46:59', '2016-07-07 13:46:59', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713473678600', 'b6aeb55588c141ea9798047ff7e47f1d', '2016-07-07 13:47:36', '2016-07-07 13:47:36', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070713555918800', '3908a477cdf14d1f8eb5eed449579558', '2016-07-07 13:55:59', '2016-07-07 13:55:59', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607071403371200', '3c4af06a672149ab8f4c39976f75ddf3', '2016-07-07 14:03:37', '2016-07-07 14:03:37', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070714102188100', '1135ee714a7e4b55b370580abc8ec798', '2016-07-07 14:10:21', '2016-07-07 14:10:22', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070714190658200', '6d3352fe959043b991a3e287ec7661c3', '2016-07-07 14:19:06', '2016-07-07 14:19:06', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070714264411300', '3059e576c93440549795d9a35fd63d31', '2016-07-07 14:26:44', '2016-07-07 14:26:44', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070714571166800', '986c3c4d96174fa59287bd3d3a1ab5cd', '2016-07-07 14:57:11', '2016-07-07 14:57:11', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070718241310200', 'f2bdda4b9f1540f6aa1fb9e2cf4041c6', '2016-07-07 18:24:13', '2016-07-07 18:24:16', 'Y', '2016-07-07', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908291528400', '456d07fa5706433d8d03e61ce79cc4b1', '2016-07-09 08:29:15', '2016-07-09 08:29:15', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908291963900', 'c40a8352527d4401a30f73d6f76cf17c', '2016-07-09 08:29:19', '2016-07-09 08:29:19', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908330039600', '24d62d28d6bd4b41bb716136271b7ae2', '2016-07-09 08:33:00', '2016-07-09 08:33:00', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908330425500', '35baec64da714df0b2b2a154328366c3', '2016-07-09 08:33:04', '2016-07-09 08:33:04', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908332888700', '292612cc954f4caaa4bdd735656d7323', '2016-07-09 08:33:28', '2016-07-09 08:33:28', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908384460000', '089f4bb151ca46D9bbe21eefb5fa93fd', '2016-07-09 08:38:44', '2016-07-09 08:38:44', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908430761400', 'a62a8fed2797446cb193060a60b4b537', '2016-07-09 08:43:07', '2016-07-09 08:43:07', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908431138200', 'd704a176f0c64fb4b86200ebe97a0d99', '2016-07-09 08:43:11', '2016-07-09 08:43:11', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908431487900', '6389f8cb58944365af6d972cdc0a5657', '2016-07-09 08:43:14', '2016-07-09 08:43:14', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908432095300', '798d77d5451a4f0dace6392ccaecdded', '2016-07-09 08:43:20', '2016-07-09 08:43:20', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908432448900', '2f6341d1ba6a4023938ddb0a2689aebb', '2016-07-09 08:43:24', '2016-07-09 08:43:24', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908432563000', '79f7ef17fdbf4b9ba1274af96ef1d80e', '2016-07-09 08:43:25', '2016-07-09 08:43:25', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908433055000', 'e5a77dc478f8486cb7e6bdb0a4ce07e0', '2016-07-09 08:43:30', '2016-07-09 08:43:30', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908433366200', '9ae8276a41494793943f4367462388f0', '2016-07-09 08:43:33', '2016-07-09 08:43:33', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908433898700', '6d25a894d2604d3488988f7265035c9f', '2016-07-09 08:43:38', '2016-07-09 08:43:38', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908434051800', '714ce4c5b33647ab8f364dadce0a19ce', '2016-07-09 08:43:40', '2016-07-09 08:43:40', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908465156800', 'cd49453cdf974d4288bb2305cab72775', '2016-07-09 08:46:51', '2016-07-09 08:46:51', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908470080100', '698fedbe96f34c4ea3aa301bb9a972f2', '2016-07-09 08:47:00', '2016-07-09 08:47:00', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908470856000', '92b8c1f9d91345b5bb59b3b8c0547be5', '2016-07-09 08:47:08', '2016-07-09 08:47:08', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908471267500', '1d1ed38770b54bbd9cefd37fdd7dcdd9', '2016-07-09 08:47:12', '2016-07-09 08:47:12', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908471877900', 'b51ac4a82cae4f15b56e70b66f4e4ac6', '2016-07-09 08:47:18', '2016-07-09 08:47:18', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908472074700', '75e48395949c4b459a9e7a46bcb59870', '2016-07-09 08:47:20', '2016-07-09 08:47:20', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908472451800', '9299dcc670374498a0e3a1f61ab44a38', '2016-07-09 08:47:24', '2016-07-09 08:47:24', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908472790500', 'ad8992bfd8d44b61bf7da698bad49c76', '2016-07-09 08:47:27', '2016-07-09 08:47:27', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908473459800', 'afc16029852d4c24a19f07b39e2530ab', '2016-07-09 08:47:34', '2016-07-09 08:47:34', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908473517000', 'd102ee072104413d924aa5353ebc2596', '2016-07-09 08:47:35', '2016-07-09 08:47:35', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908492737200', '935dfcb96ea24143b14ba5f19db77de3', '2016-07-09 08:49:27', '2016-07-09 08:49:27', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908493468500', '5a28a89b38b04bafa1b3fc966e847f9c', '2016-07-09 08:49:34', '2016-07-09 08:49:34', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908493642000', '4323757eac0e483c84b0afb8a659c55f', '2016-07-09 08:49:36', '2016-07-09 08:49:36', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908494173300', '88b4280096cd4146a8cc32b53eddcf76', '2016-07-09 08:49:41', '2016-07-09 08:49:41', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908494193800', '1952facb77e5489ba0a44494f4340233', '2016-07-09 08:49:41', '2016-07-09 08:49:41', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908494719700', '5d112ab253d942a3a5ce356a48f572d4', '2016-07-09 08:49:47', '2016-07-09 08:49:47', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908494941000', '67f9f4f2bd694824ad512eb849b167bf', '2016-07-09 08:49:49', '2016-07-09 08:49:49', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908495558600', 'd0e62371631045acbee559d0549c7dc7', '2016-07-09 08:49:55', '2016-07-09 08:49:55', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908495631600', '4f8a7cf3045a48f788103106c54573da', '2016-07-09 08:49:56', '2016-07-09 08:49:56', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090850239600', '27a7fb6af78d4a77a838b1197adece4c', '2016-07-09 08:50:23', '2016-07-09 08:50:23', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908502537100', '30a13c2adbb143128e2bc474cefd351e', '2016-07-09 08:50:25', '2016-07-09 08:50:25', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908502861500', 'd1994b4453bf4820a5adddc35690ce6f', '2016-07-09 08:50:28', '2016-07-09 08:50:28', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908503213300', '501c061d986f48619cc820348fac1038', '2016-07-09 08:50:32', '2016-07-09 08:50:32', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908504188600', '9d35e24ab051489e91c393eb991e0d24', '2016-07-09 08:50:41', '2016-07-09 08:50:41', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908504651300', '777ba550e4d64589b958d1397583129b', '2016-07-09 08:50:46', '2016-07-09 08:50:46', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908504749700', '7f26f0f785a74ef18ba5eff491f29e1a', '2016-07-09 08:50:47', '2016-07-09 08:50:47', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908505229800', '0a5af13f14c2455d86f78b0ee2b77a13', '2016-07-09 08:50:52', '2016-07-09 08:50:52', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090850554300', 'e4ffadd130894894a3566cbe60050ca9', '2016-07-09 08:50:55', '2016-07-09 08:50:55', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908510534800', 'fa79831f01c642d1956ccb92dc4ed7bf', '2016-07-09 08:51:05', '2016-07-09 08:51:05', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908510569100', '08559c952dd5413286e80295879797aa', '2016-07-09 08:51:05', '2016-07-09 08:51:05', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908511064700', 'fa0f38c0120c467eb6cd6a2909b7a779', '2016-07-09 08:51:10', '2016-07-09 08:51:10', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090851147700', 'fca2411a474f48b7abe38aa18e183817', '2016-07-09 08:51:14', '2016-07-09 08:51:14', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908512384300', '13935b803e17424394c44d99e9c9a562', '2016-07-09 08:51:23', '2016-07-09 08:51:25', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908513351800', 'b99348d4f558417982d368dce778350e', '2016-07-09 08:51:33', '2016-07-09 08:51:33', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908513544000', '3074f55cd9c947dfb00e56b550924d0a', '2016-07-09 08:51:35', '2016-07-09 08:51:35', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908514254800', 'da8e576b65244772a868439f36211477', '2016-07-09 08:51:42', '2016-07-09 08:51:42', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908515991400', '3133853c609c4e468454a04142eb945c', '2016-07-09 08:51:59', '2016-07-09 08:51:59', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090852049700', 'bbea6bf1418f4fb79e78d5fc5237c176', '2016-07-09 08:52:04', '2016-07-09 08:52:04', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908520995100', 'a5a28ceca6594fdc87d1d064f40674ac', '2016-07-09 08:52:09', '2016-07-09 08:52:09', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908521538900', '1d7b08e2be9f4629a4257b923ed31287', '2016-07-09 08:52:15', '2016-07-09 08:52:15', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908521575100', '0b2c30fb0dce4268a4bee8f573fc04bd', '2016-07-09 08:52:15', '2016-07-09 08:52:15', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908522265800', '73fca92c2ffb4ed6a172fff059be7f1b', '2016-07-09 08:52:22', '2016-07-09 08:52:22', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908522359700', 'd4088ef4a53d44e9b38c1740bf164edd', '2016-07-09 08:52:23', '2016-07-09 08:52:23', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908522795700', '5b4abfc18d2749f28ab588b1a3a5a768', '2016-07-09 08:52:27', '2016-07-09 08:52:27', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908523055300', '35aacfb3c9454a499cd119def4860676', '2016-07-09 08:52:30', '2016-07-09 08:52:30', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908523552600', 'bfcee17b70474bcd8214fac9459038ec', '2016-07-09 08:52:35', '2016-07-09 08:52:35', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908523921600', '1a81e3a438e04b0ab385bd83a2381c87', '2016-07-09 08:52:39', '2016-07-09 08:52:39', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908524021100', '4c03aba7e5f640ec9b3d4b09e69db205', '2016-07-09 08:52:40', '2016-07-09 08:52:40', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908524382600', '70cf1a1b3f404efb84ba65dccd49ea75', '2016-07-09 08:52:43', '2016-07-09 08:52:43', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908525773900', 'db7652b8a9ab42c78160b1c330462611', '2016-07-09 08:52:57', '2016-07-09 08:52:57', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_160709085302000', 'e35edbba761246a9b2346b4b3fd0bf54', '2016-07-09 08:53:01', '2016-07-09 08:53:01', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908530464500', 'd56e2488234d4bc8b6ff44dc0a39355c', '2016-07-09 08:53:04', '2016-07-09 08:53:04', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908530870100', 'a9339eb9bf2748778c1f27fe3e06866a', '2016-07-09 08:53:08', '2016-07-09 08:53:08', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908531533300', 'ac6ed6cc374f4f46a5c98a71ef06554e', '2016-07-09 08:53:15', '2016-07-09 08:53:15', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908531939400', '1732bf787a104dfd91aace1b1fa9c666', '2016-07-09 08:53:19', '2016-07-09 08:53:19', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908532465000', '17d25be19bdf49bcb321bc2b8184dce9', '2016-07-09 08:53:24', '2016-07-09 08:53:24', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908532524200', '371f9545b3654e29bfcf9e408c29f93d', '2016-07-09 08:53:25', '2016-07-09 08:53:25', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908533310100', '2872359f0f794edea64b2a13b2003503', '2016-07-09 08:53:33', '2016-07-09 08:53:33', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908533620200', 'eda34f5c44424cb0aeb2a02cb7bef85d', '2016-07-09 08:53:36', '2016-07-09 08:53:36', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908534115800', '9a333eb4960149fba9c743f45192697d', '2016-07-09 08:53:41', '2016-07-09 08:53:41', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090853461600', '03666df538d4456cba2f3b3e754ffc3e', '2016-07-09 08:53:46', '2016-07-09 08:53:46', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908534892100', 'a6ff825f7c3640d9a9524836ddc4e703', '2016-07-09 08:53:48', '2016-07-09 08:53:48', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908535495500', 'a8c72fa316ad4a6bbadc83ba267ee196', '2016-07-09 08:53:54', '2016-07-09 08:53:54', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908540177800', '895ac7c8Aac54de496abf29769b6829e', '2016-07-09 08:54:01', '2016-07-09 08:54:01', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090854036600', '6cb2a94fa728403982ecc0cf3b69aec0', '2016-07-09 08:54:03', '2016-07-09 08:54:03', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908541340900', 'a031a42894f9451f917333d41db556aa', '2016-07-09 08:54:13', '2016-07-09 08:54:13', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908541972400', '4ae617ced4e5441391fc09d45169c23a', '2016-07-09 08:54:19', '2016-07-09 08:54:19', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090854282800', '26850980972d4c989a03aff4807b9bc3', '2016-07-09 08:54:28', '2016-07-09 08:54:28', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908543687000', '5309b73cd02a498fa222c0cc6934f33f', '2016-07-09 08:54:36', '2016-07-09 08:54:36', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908545432200', '0dc44e5b224f4c97a08cf2fee5a4f14b', '2016-07-09 08:54:54', '2016-07-09 08:54:54', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908545432700', 'b09c35ff17cd49cdafcaeef8bcce41b1', '2016-07-09 08:54:54', '2016-07-09 08:54:54', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908550353200', '154e808966bc45f0b642bfa3b51df75b', '2016-07-09 08:55:03', '2016-07-09 08:55:03', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090855048700', '77f5b1a492954906939bea5dbf890105', '2016-07-09 08:55:04', '2016-07-09 08:55:04', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908551526900', 'a6af8339c75241a9af7531422f3cfda7', '2016-07-09 08:55:15', '2016-07-09 08:55:15', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908552052300', 'c5c8933e454f4fbb934ad8f9c599dcae', '2016-07-09 08:55:20', '2016-07-09 08:55:20', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908552373800', '8cf58a61603948dbaa935ee255ec1873', '2016-07-09 08:55:23', '2016-07-09 08:55:23', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090855261900', 'cf6b09def97c483091f1e1a8a79ec92b', '2016-07-09 08:55:26', '2016-07-09 08:55:26', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908553096300', 'adde3849a403419d87b02a35e99504a5', '2016-07-09 08:55:30', '2016-07-09 08:55:30', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908553223200', 'e34859f16cee41a796ba5285b29743e1', '2016-07-09 08:55:32', '2016-07-09 08:55:32', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090855389100', '11d1bae8720948029eaddc024c42b309', '2016-07-09 08:55:38', '2016-07-09 08:55:38', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908554037700', 'aa2adfb030da42f9ad2fd5bdc3341ac8', '2016-07-09 08:55:40', '2016-07-09 08:55:40', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908554270800', 'e2b04547e47b45a8873857aa8148c853', '2016-07-09 08:55:42', '2016-07-09 08:55:42', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908555412700', '38dcaa2d6d784020be259373e4d4be5e', '2016-07-09 08:55:54', '2016-07-09 08:55:54', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908555567800', '519edc91c9e14832a4715adeb26c8ff1', '2016-07-09 08:55:55', '2016-07-09 08:55:55', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090856003900', 'aeb9944ee93e4de4a1429d2ab7409e66', '2016-07-09 08:56:00', '2016-07-09 08:56:00', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908560194200', 'edb9ecc947094e0ab8ad92ceec3b58b7', '2016-07-09 08:56:01', '2016-07-09 08:56:01', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090856083300', 'b7e424848cc84761974202218fc9ffaa', '2016-07-09 08:56:08', '2016-07-09 08:56:08', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908560910100', '683a010da4814a6a93b5af4d4370b700', '2016-07-09 08:56:09', '2016-07-09 08:56:09', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908562523600', 'bb553949e819483493d147d8973a07e4', '2016-07-09 08:56:25', '2016-07-09 08:56:25', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908562572200', '56a1c33aafd74894afe1c38aaaca0a76', '2016-07-09 08:56:25', '2016-07-09 08:56:25', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908563081400', '772fb7f8ac9449d296aab0d978f3ffa0', '2016-07-09 08:56:30', '2016-07-09 08:56:30', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908563342800', '813ce27aa20d4a6c9d325234f2f7d966', '2016-07-09 08:56:33', '2016-07-09 08:56:33', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908563825300', 'cc1f1ef751084726ab376f21c70ae07a', '2016-07-09 08:56:38', '2016-07-09 08:56:38', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908563894200', 'b9daeac80a9d45e9b9eee2133f8551f2', '2016-07-09 08:56:38', '2016-07-09 08:56:38', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908564583200', '378a429ace1148c3bf38e263cdf9fe05', '2016-07-09 08:56:45', '2016-07-09 08:56:45', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908565388500', 'a9d54b8f4e524308a6aed781bc248dcc', '2016-07-09 08:56:53', '2016-07-09 08:56:53', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908565965200', '0b5771eafbc4490081a4590424c3ce9b', '2016-07-09 08:56:59', '2016-07-09 08:56:59', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908570114700', '3908a477cdf14d1f8eb5eed449579558', '2016-07-09 08:57:01', '2016-07-09 08:57:01', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908570729300', '398596409c93486fa74696a2f007b2a7', '2016-07-09 08:57:07', '2016-07-09 08:57:07', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908570747300', '63b8c7eaa1794de0ad7bb3ed877d7c85', '2016-07-09 08:57:07', '2016-07-09 08:57:07', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908571542300', '6c1a7855801d4ccdae3892d85121fd9b', '2016-07-09 08:57:15', '2016-07-09 08:57:15', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908571720300', '4d97fb640261455597ce8f58ca161872', '2016-07-09 08:57:17', '2016-07-09 08:57:17', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908572273000', 'a5ee3d5b4c274eaeaa1b56d0251b9e70', '2016-07-09 08:57:22', '2016-07-09 08:57:22', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908573397600', '07d58204700746328badc0f0a8f1939b', '2016-07-09 08:57:33', '2016-07-09 08:57:33', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908573860300', '406fa62963fc410fa167a84e0bf9548d', '2016-07-09 08:57:38', '2016-07-09 08:57:38', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908575567500', '3059e576c93440549795d9a35fd63d31', '2016-07-09 08:57:55', '2016-07-09 08:57:55', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908580178300', 'd7ae4552d88441feab67c86685d411f4', '2016-07-09 08:58:01', '2016-07-09 08:58:01', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908580757300', 'f482bb4ef2e14a62b1ab0e6da2171416', '2016-07-09 08:58:07', '2016-07-09 08:58:07', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908581569500', 'd55f43a8ced3400f99eacd5ad91ab169', '2016-07-09 08:58:15', '2016-07-09 08:58:15', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908581631900', 'fe2a4520a93e4fb8a636cb141e79a83b', '2016-07-09 08:58:16', '2016-07-09 08:58:16', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908582047400', '1755a0a5219448c7a3e0e280d91bc5f1', '2016-07-09 08:58:20', '2016-07-09 08:58:20', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908582494600', '6b8470df867648388067f147e00ce791', '2016-07-09 08:58:24', '2016-07-09 08:58:24', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908582678200', '66d8455d796b4004917e0c53375d56ab', '2016-07-09 08:58:26', '2016-07-09 08:58:26', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908583116000', '44e903e89b8c4526be51bf95ee0a5801', '2016-07-09 08:58:31', '2016-07-09 08:58:31', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908583952100', 'f6fa5e06ba0742fc9ac30e05affdf01e', '2016-07-09 08:58:39', '2016-07-09 08:58:39', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908584443100', 'f470009456714538a5470f0c96711f16', '2016-07-09 08:58:44', '2016-07-09 08:58:44', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908584586500', '527e8a6c9da84c93aded6a8479f3e730', '2016-07-09 08:58:45', '2016-07-09 08:58:45', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908585141100', '33c3ef192dfb4eea806007da7e4e2405', '2016-07-09 08:58:51', '2016-07-09 08:58:51', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090858579000', 'defbe50e30f14756bd439c2149e2225f', '2016-07-09 08:58:57', '2016-07-09 08:58:57', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908585955500', 'a208112004fc47ec8e5691e1e54ce5c3', '2016-07-09 08:58:59', '2016-07-09 08:58:59', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908590565900', 'af2a5e97c8fb4ac9a5ed10e89fb81075', '2016-07-09 08:59:05', '2016-07-09 08:59:05', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908591452300', 'b19809e679f4410d8ac8927dcc1e5f04', '2016-07-09 08:59:14', '2016-07-09 08:59:14', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908591796100', 'd9431e93464041e9a3d022a36133b32c', '2016-07-09 08:59:17', '2016-07-09 08:59:17', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908592237200', '1424be5ffa874d78a4afaf90a1a147ea', '2016-07-09 08:59:22', '2016-07-09 08:59:22', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908593291000', '486e709ae39b47aaae16f885b32d259f', '2016-07-09 08:59:32', '2016-07-09 08:59:32', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908593452200', '3f72a4d0dc7b4030b374aea07166c9f3', '2016-07-09 08:59:34', '2016-07-09 08:59:34', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908593944000', '79175ef5feec44d08fb8bf5fb13a77c5', '2016-07-09 08:59:39', '2016-07-09 08:59:39', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908594237000', 'fef67d0f225b41a4a4579d9f7772209c', '2016-07-09 08:59:42', '2016-07-09 08:59:42', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908594591600', 'b99ad517f19d4baf87845d40b17bc7c8', '2016-07-09 08:59:45', '2016-07-09 08:59:45', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908594760500', 'a38b2b4095ba4db89406e39ecb8c9297', '2016-07-09 08:59:47', '2016-07-09 08:59:47', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908595115100', 'd2869b70e183422a83e540885110ac9e', '2016-07-09 08:59:51', '2016-07-09 08:59:51', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070908595864400', '59dbdc9092e645f3ad8d5b6156d9a77f', '2016-07-09 08:59:58', '2016-07-09 08:59:58', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909000135500', '4f2e9663c8da4b789463ee9a109ecbd6', '2016-07-09 09:00:01', '2016-07-09 09:00:01', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909000584600', '9abb0d4c6ccd49f5b58c046fcde5e8dc', '2016-07-09 09:00:05', '2016-07-09 09:00:05', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909001360800', 'fc461f8fd00842a3abc7c2a34eb9ee88', '2016-07-09 09:00:13', '2016-07-09 09:00:13', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909001797100', '1158541b417041c8b25dccf9b33d16b1', '2016-07-09 09:00:17', '2016-07-09 09:00:17', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909002327200', 'f2bdda4b9f1540f6aa1fb9e2cf4041c6', '2016-07-09 09:00:23', '2016-07-09 09:00:23', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909002660700', 'e73f9d288618482c96926c41c0f7a4d5', '2016-07-09 09:00:26', '2016-07-09 09:00:26', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909003352800', '5ece42ed79b844a5b910a12cce82a439', '2016-07-09 09:00:33', '2016-07-09 09:00:33', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909004370900', '0bb3033a75054503b2b35183fa4643a6', '2016-07-09 09:00:43', '2016-07-09 09:00:43', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909004372900', 'd66b8907beb54b0db5960342cfe5149d', '2016-07-09 09:00:43', '2016-07-09 09:00:43', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090900556500', '4bd1dde8fe9942028805f8e1c622a111', '2016-07-09 09:00:55', '2016-07-09 09:00:55', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909010053800', '2c8c83372e43446392f70eb9a85ff7bc', '2016-07-09 09:01:00', '2016-07-09 09:01:00', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909010166500', '66011f07de994df7a0cf665169b10df5', '2016-07-09 09:01:01', '2016-07-09 09:01:01', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090901082400', '3a4c68d8c65346c896dd24813fc578c6', '2016-07-09 09:01:08', '2016-07-09 09:01:08', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909011698400', 'da033f68471a426aac55db44f64de8df', '2016-07-09 09:01:16', '2016-07-09 09:01:16', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909012587400', '631eff2454424a3ea1d76de07e33d748', '2016-07-09 09:01:25', '2016-07-09 09:01:25', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909012646100', '81d45c7857ce4eeea416ea7a6adb552d', '2016-07-09 09:01:26', '2016-07-09 09:01:26', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909013450800', '7e13c58f0c93472e8cdbcec5d4467785', '2016-07-09 09:01:34', '2016-07-09 09:01:34', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909014583900', 'acc0debdf2fe41d2b78b9c21b4095883', '2016-07-09 09:01:45', '2016-07-09 09:01:45', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909015320800', 'e3a7c22b799b4fe8810f6373fdbc3839', '2016-07-09 09:01:53', '2016-07-09 09:01:53', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909022962500', '523118ab0ddb46f5bffb2c773ce8db83', '2016-07-09 09:02:29', '2016-07-09 09:02:29', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909025327600', '28f10cc06e364134a732165aca03a506', '2016-07-09 09:02:53', '2016-07-09 09:02:53', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909025992200', '7a117ebfeb1a4cd781ed8ed20a0c80b2', '2016-07-09 09:02:59', '2016-07-09 09:02:59', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909031479100', 'c0ab2a25bdec42069a664cfc08985161', '2016-07-09 09:03:14', '2016-07-09 09:03:14', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090904125200', '75ba367b11064db28b0bf42d4c726a84', '2016-07-09 09:04:12', '2016-07-09 09:04:12', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909042639200', 'f10cba6b93a0407e81dbe8dc8b5b369a', '2016-07-09 09:04:26', '2016-07-09 09:04:26', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909052495100', '904a192614e94d5ca04fdf4897bc935a', '2016-07-09 09:05:24', '2016-07-09 09:05:24', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909073264900', '054388d32ae044e8bd5648612376503f', '2016-07-09 09:07:32', '2016-07-09 09:07:32', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909102593300', '3c4af06a672149ab8f4c39976f75ddf3', '2016-07-09 09:10:25', '2016-07-09 09:10:25', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909104427500', 'c9c39e3703ca4325a94d46c4ff459a67', '2016-07-09 09:10:44', '2016-07-09 09:10:44', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909143345400', 'd0bc9dda356d4667a3dff9cec16b6d29', '2016-07-09 09:14:33', '2016-07-09 09:14:33', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909143473800', '473176e3f0c3456a8cce4a01e4a117d4', '2016-07-09 09:14:34', '2016-07-09 09:14:34', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909145057600', '986c3c4d96174fa59287bd3d3a1ab5cd', '2016-07-09 09:14:50', '2016-07-09 09:14:50', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909171050300', 'b77c3ab9ba904eaf8f3e7ce96f9f2ce9', '2016-07-09 09:17:10', '2016-07-09 09:17:10', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090917153900', 'b6aeb55588c141ea9798047ff7e47f1d', '2016-07-09 09:17:15', '2016-07-09 09:17:15', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607090917225800', '730e9015bfb3434bb7c68a2ff83a3038', '2016-07-09 09:17:22', '2016-07-09 09:17:22', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909210434900', 'bae369042d9d48adb1c0737f2a5573a3', '2016-07-09 09:21:04', '2016-07-09 09:21:04', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909210535800', 'b2e6e8f8351a4c50b264cd932b834896', '2016-07-09 09:21:05', '2016-07-09 09:21:05', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909255368200', 'b059105ddc854a0db63ccfb4287e72c5', '2016-07-09 09:25:53', '2016-07-09 09:25:53', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909260141100', '42a21c081f984a9892817a55427c4b46', '2016-07-09 09:26:01', '2016-07-09 09:26:01', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909280066000', 'd8c15159fce14d7da3c40a32f744c6d3', '2016-07-09 09:28:00', '2016-07-09 09:28:00', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909303780400', '2ab952ce49da4dba879f949babe1dc5a', '2016-07-09 09:30:37', '2016-07-09 09:30:37', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909395376000', 'bbf2993a9ed44e37bf7fb1403a8bde6d', '2016-07-09 09:39:53', '2016-07-09 09:39:53', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070909401198900', '33f116441bdb49568eb61c199e0b8966', '2016-07-09 09:40:11', '2016-07-09 09:40:11', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16070910334459400', '96d8f6ec73fc4cab8f042bc790168554', '2016-07-09 10:33:44', '2016-07-09 10:33:44', 'Y', '2016-07-09', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308033828700', 'c84a6bef06fd4d0ab8a4fc48e3a31149', '2016-07-13 08:03:38', '2016-07-13 08:03:38', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308034724300', '90742886e8b446ae952536d760983879', '2016-07-13 08:03:47', '2016-07-13 08:03:47', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308035667800', '9cf34c99828346c4bf5281ce04c10da5', '2016-07-13 08:03:56', '2016-07-13 08:03:56', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308042877300', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-13 08:04:28', '2016-07-13 08:04:28', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308044288100', '8f3b012725ca4d45adf6e5a9cdeccc66', '2016-07-13 08:04:42', '2016-07-13 08:24:23', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308054844500', 'e3c09131628343958f183694f9e2d5b5', '2016-07-13 08:05:48', '2016-07-13 08:05:48', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308092755700', 'a80dfe09f7f24d9ebaa10e83efdf5f36', '2016-07-13 08:09:27', '2016-07-13 08:09:27', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308130627600', 'f228c629a97049b49a69c0d86b2e38d7', '2016-07-13 08:13:06', '2016-07-13 08:13:06', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308174829200', 'f12fbeba2a6941f2a515fb280662c2b8', '2016-07-13 08:17:48', '2016-07-13 08:17:48', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308201326300', '7bc038c6334c448584bff2b4f6b36ca5', '2016-07-13 08:20:13', '2016-07-13 08:20:13', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308201757500', '47142390c156437a9c02173ea5940cab', '2016-07-13 08:20:17', '2016-07-13 08:20:17', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308210795800', '06d4abe792d74cab8135c64749daafba', '2016-07-13 08:21:07', '2016-07-13 08:21:07', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308241350300', '7184199f62254b5d8676e03647254c4a', '2016-07-13 08:24:13', '2016-07-13 08:24:13', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308321984000', '1bc2f8fd4f3d4a11963c040b22d89068', '2016-07-13 08:32:19', '2016-07-13 08:32:19', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308372185300', '6bc2028c4a5c4c948ccb9c243ea58084', '2016-07-13 08:37:21', '2016-07-13 08:37:21', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308373190600', 'bc9461cf350944f09d01d6212ad57c87', '2016-07-13 08:37:31', '2016-07-13 08:37:31', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308373948400', '4a32aba3c0674d82b9bc5c865b6775ba', '2016-07-13 08:37:39', '2016-07-13 08:37:39', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607130838211400', 'e800a8b1287d4c0385d7553e7992d133', '2016-07-13 08:38:20', '2016-07-13 08:39:08', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308395470200', '124738e9800b47df946fb149e040aa26', '2016-07-13 08:39:54', '2016-07-13 08:39:54', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308400036800', '13665e762808427eb937b681568b2b9a', '2016-07-13 08:40:00', '2016-07-13 08:40:00', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308405145900', '207dacafed854b628715dc2a2fe1b783', '2016-07-13 08:40:51', '2016-07-13 08:40:51', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308444646900', 'bbc1475a9fa14d65a5b4e48a0e4f8f4c', '2016-07-13 08:44:46', '2016-07-13 08:44:46', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308464957800', 'aea007ac6b9741b3885b90339c9ecc62', '2016-07-13 08:46:49', '2016-07-13 08:46:49', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308465778200', 'fdc3c4e4f3824ea488b2821dd3f9333b', '2016-07-13 08:46:57', '2016-07-13 08:46:57', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308471793800', 'e68d9079dbcb4b47bc621488c853e495', '2016-07-13 08:47:17', '2016-07-13 08:47:17', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308473512100', '906737e8da8849b58af6e2fc2db0795f', '2016-07-13 08:47:35', '2016-07-13 08:47:35', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607130848132100', '78e99ae9d0a5412cad9f07c1c29917ad', '2016-07-13 08:48:13', '2016-07-13 08:48:13', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308492180000', '91f60fc5064a4c198cc766ab6cb751a2', '2016-07-13 08:49:21', '2016-07-13 08:49:21', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607130850286500', '2bfaf0ccc6664a6fbeade7441b59e592', '2016-07-13 08:50:28', '2016-07-13 08:50:28', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308511063300', '74fddaeba72546c5ab51f28875b8dcd1', '2016-07-13 08:51:10', '2016-07-13 08:51:10', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308525540200', 'b8b56f47198b45cd81838817f9d2955f', '2016-07-13 08:52:55', '2016-07-13 08:52:55', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308532566800', '7456f594359345f3b94ec46bc30d46a0', '2016-07-13 08:53:25', '2016-07-13 08:53:25', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308533688500', '539edce297654d079b09e9923aaea1e0', '2016-07-13 08:53:36', '2016-07-13 08:53:36', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308534535400', '5147bca86385492ab8bcbd030f199c10', '2016-07-13 08:53:45', '2016-07-13 08:53:45', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308540398100', '00dece4487194358a24a3ec9a734c850', '2016-07-13 08:54:03', '2016-07-13 08:54:03', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308545236900', '729902710c3c49be94ca8f0d4ed732c4', '2016-07-13 08:54:52', '2016-07-13 08:54:52', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308550048600', '6696d3698c2f401b90596daf1b66e6a6', '2016-07-13 08:55:00', '2016-07-13 08:55:00', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308551651800', 'ed4264a58d4549e5ac920bb07946ea05', '2016-07-13 08:55:16', '2016-07-13 08:55:16', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308563286100', '0bfad7b53e6345129a643f34522df722', '2016-07-13 08:56:32', '2016-07-13 08:56:32', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308580686000', 'b526d5dbd8a54fc988d8cdd4fc682d1d', '2016-07-13 08:58:06', '2016-07-13 08:58:06', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071308581066100', '18ce73473948410299effaa3aa9d9b67', '2016-07-13 08:58:10', '2016-07-13 08:58:10', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071309001449600', '73551123366b496b8bec2db6568a7ea5', '2016-07-13 09:00:14', '2016-07-13 09:00:14', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071309001578800', '6664af8469e34ff6a72bc24e68cc3805', '2016-07-13 09:00:15', '2016-07-13 09:00:15', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071309031492100', '9fda34c991094cb282572c74d2c1c245', '2016-07-13 09:03:14', '2016-07-13 09:03:14', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071309044199100', '0b2396651fab433ab62a1b79f2275a76', '2016-07-13 09:04:41', '2016-07-13 09:04:41', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071309045362100', '83bf6c2d98874d37b736228fe9b61ec0', '2016-07-13 09:04:53', '2016-07-13 09:04:53', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071309070983100', 'dbd81304ad3640a0a09b777debdad534', '2016-07-13 09:07:09', '2016-07-13 09:07:09', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071309154129500', 'f00736bc7c59411f9ce1b76dc1cd1c15', '2016-07-13 09:15:41', '2016-07-13 09:15:41', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607130918393500', 'b3b5186765c54c8db2a4cc6416e8798d', '2016-07-13 09:18:39', '2016-07-13 09:18:39', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607130919501100', '427ecb95a19d4ab88a1a641488479eca', '2016-07-13 09:19:50', '2016-07-13 09:19:50', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071309273961700', 'ac91aa20749b4563baaae3c044b74d34', '2016-07-13 09:27:39', '2016-07-13 09:27:39', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071310255055400', '0b56ddf0d551487ba848cc5c9c7970c8', '2016-07-13 10:25:50', '2016-07-13 10:25:50', 'Y', '2016-07-13', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314001560200', '539edce297654d079b09e9923aaea1e0', '2016-07-13 14:00:15', '2016-07-13 14:00:15', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314002262600', 'bc9461cf350944f09d01d6212ad57c87', '2016-07-13 14:00:22', '2016-07-13 14:00:22', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314002679200', '73551123366b496b8bec2db6568a7ea5', '2016-07-13 14:00:26', '2016-07-13 14:00:26', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314002882800', '78e99ae9d0a5412cad9f07c1c29917ad', '2016-07-13 14:00:28', '2016-07-13 14:00:28', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314003311300', '6bc2028c4a5c4c948ccb9c243ea58084', '2016-07-13 14:00:33', '2016-07-13 14:00:33', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607131400369900', 'c84a6bef06fd4d0ab8a4fc48e3a31149', '2016-07-13 14:00:36', '2016-07-13 14:00:36', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314004153700', '83bf6c2d98874d37b736228fe9b61ec0', '2016-07-13 14:00:41', '2016-07-13 14:00:41', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314004714400', 'fdc3c4e4f3824ea488b2821dd3f9333b', '2016-07-13 14:00:47', '2016-07-13 14:00:47', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314005528900', 'f00736bc7c59411f9ce1b76dc1cd1c15', '2016-07-13 14:00:55', '2016-07-13 14:00:55', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314005890800', '1bc2f8fd4f3d4a11963c040b22d89068', '2016-07-13 14:00:58', '2016-07-13 14:00:58', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314010536900', 'a80dfe09f7f24d9ebaa10e83efdf5f36', '2016-07-13 14:01:05', '2016-07-13 14:01:05', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314010938300', 'b526d5dbd8a54fc988d8cdd4fc682d1d', '2016-07-13 14:01:09', '2016-07-13 14:01:09', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314011414000', '2bfaf0ccc6664a6fbeade7441b59e592', '2016-07-13 14:01:14', '2016-07-13 14:01:14', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314012153400', 'b8b56f47198b45cd81838817f9d2955f', '2016-07-13 14:01:21', '2016-07-13 14:01:21', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314012760700', '0b2396651fab433ab62a1b79f2275a76', '2016-07-13 14:01:27', '2016-07-13 14:01:27', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314013128400', 'bbc1475a9fa14d65a5b4e48a0e4f8f4c', '2016-07-13 14:01:31', '2016-07-13 14:01:31', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314014560000', '427ecb95a19d4ab88a1a641488479eca', '2016-07-13 14:01:45', '2016-07-13 14:01:45', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314014960300', '90742886e8b446ae952536d760983879', '2016-07-13 14:01:49', '2016-07-13 14:01:49', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314015267900', '7456f594359345f3b94ec46bc30d46a0', '2016-07-13 14:01:52', '2016-07-13 14:01:52', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314020424500', '00dece4487194358a24a3ec9a734c850', '2016-07-13 14:02:04', '2016-07-13 14:02:04', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314021175800', '7bc038c6334c448584bff2b4f6b36ca5', '2016-07-13 14:02:11', '2016-07-13 14:02:11', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314021637400', '207dacafed854b628715dc2a2fe1b783', '2016-07-13 14:02:16', '2016-07-13 14:02:16', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314021932700', '47142390c156437a9c02173ea5940cab', '2016-07-13 14:02:19', '2016-07-13 14:02:19', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314022453500', '74fddaeba72546c5ab51f28875b8dcd1', '2016-07-13 14:02:24', '2016-07-13 14:02:24', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314022659800', 'e800a8b1287d4c0385d7553e7992d133', '2016-07-13 14:02:26', '2016-07-13 14:02:26', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314023741300', '9cf34c99828346c4bf5281ce04c10da5', '2016-07-13 14:02:37', '2016-07-13 14:02:37', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314024442900', 'e68d9079dbcb4b47bc621488c853e495', '2016-07-13 14:02:44', '2016-07-13 14:02:44', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314024443200', '6664af8469e34ff6a72bc24e68cc3805', '2016-07-13 14:02:44', '2016-07-13 14:02:44', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314025732000', 'ac91aa20749b4563baaae3c044b74d34', '2016-07-13 14:02:57', '2016-07-13 14:02:57', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314025775300', '0bfad7b53e6345129a643f34522df722', '2016-07-13 14:02:57', '2016-07-13 14:02:57', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314030617300', 'b3b5186765c54c8db2a4cc6416e8798d', '2016-07-13 14:03:06', '2016-07-13 14:03:06', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314031721300', 'f228c629a97049b49a69c0d86b2e38d7', '2016-07-13 14:03:17', '2016-07-13 14:03:17', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314032489300', '4a32aba3c0674d82b9bc5c865b6775ba', '2016-07-13 14:03:24', '2016-07-13 14:03:24', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314032941000', '729902710c3c49be94ca8f0d4ed732c4', '2016-07-13 14:03:29', '2016-07-13 14:03:29', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314033022200', '5147bca86385492ab8bcbd030f199c10', '2016-07-13 14:03:30', '2016-07-13 14:03:30', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314033775900', 'aea007ac6b9741b3885b90339c9ecc62', '2016-07-13 14:03:37', '2016-07-13 14:03:37', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314034057300', '124738e9800b47df946fb149e040aa26', '2016-07-13 14:03:40', '2016-07-13 14:03:40', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314034426400', 'f9fa97068a3240239f337f85245fdcf4', '2016-07-13 14:03:44', '2016-07-13 14:03:44', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314034730700', '13665e762808427eb937b681568b2b9a', '2016-07-13 14:03:47', '2016-07-13 14:03:47', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314035313000', 'f12fbeba2a6941f2a515fb280662c2b8', '2016-07-13 14:03:53', '2016-07-13 14:03:53', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314040098800', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-13 14:04:00', '2016-07-13 14:04:00', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314040784600', '0b56ddf0d551487ba848cc5c9c7970c8', '2016-07-13 14:04:07', '2016-07-13 14:04:07', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314040855500', '18ce73473948410299effaa3aa9d9b67', '2016-07-13 14:04:08', '2016-07-13 14:04:08', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314041288500', '8f3b012725ca4d45adf6e5a9cdeccc66', '2016-07-13 14:04:12', '2016-07-13 14:04:12', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314042010000', 'e3c09131628343958f183694f9e2d5b5', '2016-07-13 14:04:20', '2016-07-13 14:04:20', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314042183500', '7184199f62254b5d8676e03647254c4a', '2016-07-13 14:04:21', '2016-07-13 14:04:21', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314044940400', '91f60fc5064a4c198cc766ab6cb751a2', '2016-07-13 14:04:49', '2016-07-13 14:04:49', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607131405213200', '6696d3698c2f401b90596daf1b66e6a6', '2016-07-13 14:05:21', '2016-07-13 14:05:21', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314052892800', '9fda34c991094cb282572c74d2c1c245', '2016-07-13 14:05:28', '2016-07-13 14:05:28', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314083456400', 'dbd81304ad3640a0a09b777debdad534', '2016-07-13 14:08:34', '2016-07-13 14:08:34', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314085540400', '06d4abe792d74cab8135c64749daafba', '2016-07-13 14:08:55', '2016-07-13 14:08:55', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607131409213400', '906737e8da8849b58af6e2fc2db0795f', '2016-07-13 14:09:21', '2016-07-13 14:09:21', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071314095789700', 'ed4264a58d4549e5ac920bb07946ea05', '2016-07-13 14:09:57', '2016-07-13 14:09:57', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071315082643700', '1403b424f28749e181d1140cb536f31f', '2016-07-13 15:08:26', '2016-07-13 15:08:26', 'Y', '2016-07-13', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408324079400', '7bc038c6334c448584bff2b4f6b36ca5', '2016-07-14 08:32:40', '2016-07-14 08:32:40', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408325532100', '0bfad7b53e6345129a643f34522df722', '2016-07-14 08:32:55', '2016-07-14 08:32:55', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408330148000', '47142390c156437a9c02173ea5940cab', '2016-07-14 08:33:01', '2016-07-14 08:33:01', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408330550300', 'f9fa97068a3240239f337f85245fdcf4', '2016-07-14 08:33:05', '2016-07-14 08:33:05', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408331396600', '90742886e8b446ae952536d760983879', '2016-07-14 08:33:13', '2016-07-14 08:33:13', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408335651900', 'f228c629a97049b49a69c0d86b2e38d7', '2016-07-14 08:33:56', '2016-07-14 08:33:56', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408344259800', 'e800a8b1287d4c0385d7553e7992d133', '2016-07-14 08:34:42', '2016-07-14 08:34:42', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408350768400', '4a32aba3c0674d82b9bc5c865b6775ba', '2016-07-14 08:35:07', '2016-07-14 08:35:07', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408353985100', '06d4abe792d74cab8135c64749daafba', '2016-07-14 08:35:39', '2016-07-14 08:35:39', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408361716100', '6bc2028c4a5c4c948ccb9c243ea58084', '2016-07-14 08:36:17', '2016-07-14 08:36:17', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408362243500', 'bc9461cf350944f09d01d6212ad57c87', '2016-07-14 08:36:22', '2016-07-14 08:36:22', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408370998000', '207dacafed854b628715dc2a2fe1b783', '2016-07-14 08:37:09', '2016-07-14 08:37:09', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408383490300', 'c84a6bef06fd4d0ab8a4fc48e3a31149', '2016-07-14 08:38:34', '2016-07-14 08:38:34', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408404270900', 'f12fbeba2a6941f2a515fb280662c2b8', '2016-07-14 08:40:42', '2016-07-14 08:40:42', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408413458800', 'b8b56f47198b45cd81838817f9d2955f', '2016-07-14 08:41:34', '2016-07-14 08:41:34', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408470528300', '9cf34c99828346c4bf5281ce04c10da5', '2016-07-14 08:47:05', '2016-07-14 08:47:05', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408482662300', '78e99ae9d0a5412cad9f07c1c29917ad', '2016-07-14 08:48:26', '2016-07-14 08:48:26', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408492255900', 'a80dfe09f7f24d9ebaa10e83efdf5f36', '2016-07-14 08:49:22', '2016-07-14 08:49:22', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408511524800', '7184199f62254b5d8676e03647254c4a', '2016-07-14 08:51:15', '2016-07-14 08:51:15', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408511964100', '8f3b012725ca4d45adf6e5a9cdeccc66', '2016-07-14 08:51:19', '2016-07-14 08:51:19', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408514420200', '6664af8469e34ff6a72bc24e68cc3805', '2016-07-14 08:51:44', '2016-07-14 08:51:44', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607140852491800', '74fddaeba72546c5ab51f28875b8dcd1', '2016-07-14 08:52:49', '2016-07-14 08:52:49', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408531799600', '13665e762808427eb937b681568b2b9a', '2016-07-14 08:53:17', '2016-07-14 08:53:17', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408531865800', '124738e9800b47df946fb149e040aa26', '2016-07-14 08:53:18', '2016-07-14 08:53:18', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408534337300', '2bfaf0ccc6664a6fbeade7441b59e592', '2016-07-14 08:53:43', '2016-07-14 08:53:43', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408540078300', 'c97069a68e02418286386ee2e3583d9c', '2016-07-14 08:54:00', '2016-07-14 08:54:00', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408550080000', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-14 08:55:00', '2016-07-14 08:55:00', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408552212900', '729902710c3c49be94ca8f0d4ed732c4', '2016-07-14 08:55:22', '2016-07-14 08:55:22', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408554786300', '1403b424f28749e181d1140cb536f31f', '2016-07-14 08:55:47', '2016-07-14 08:55:47', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408571353300', '91f60fc5064a4c198cc766ab6cb751a2', '2016-07-14 08:57:13', '2016-07-14 08:57:13', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408575846600', '18ce73473948410299effaa3aa9d9b67', '2016-07-14 08:57:58', '2016-07-14 08:57:58', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408580376000', '73551123366b496b8bec2db6568a7ea5', '2016-07-14 08:58:03', '2016-07-14 08:58:03', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408582558600', '5147bca86385492ab8bcbd030f199c10', '2016-07-14 08:58:25', '2016-07-14 08:58:25', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408582616000', '6696d3698c2f401b90596daf1b66e6a6', '2016-07-14 08:58:26', '2016-07-14 08:58:26', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071408583611000', '539edce297654d079b09e9923aaea1e0', '2016-07-14 08:58:36', '2016-07-14 08:58:36', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607140859106300', 'b526d5dbd8a54fc988d8cdd4fc682d1d', '2016-07-14 08:59:10', '2016-07-14 08:59:10', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409001458000', 'aa3b880220c04e869f15db5409e6a533', '2016-07-14 09:00:14', '2016-07-14 09:00:14', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607140900372200', 'e3c09131628343958f183694f9e2d5b5', '2016-07-14 09:00:37', '2016-07-14 09:00:37', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409014162000', 'dbd81304ad3640a0a09b777debdad534', '2016-07-14 09:01:41', '2016-07-14 09:01:41', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409021112800', '00dece4487194358a24a3ec9a734c850', '2016-07-14 09:02:11', '2016-07-14 09:02:11', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409031719600', 'bbc1475a9fa14d65a5b4e48a0e4f8f4c', '2016-07-14 09:03:17', '2016-07-14 09:03:17', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409033726000', '7456f594359345f3b94ec46bc30d46a0', '2016-07-14 09:03:37', '2016-07-14 09:03:37', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409054273600', '83bf6c2d98874d37b736228fe9b61ec0', '2016-07-14 09:05:42', '2016-07-14 09:05:42', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409054318200', '0b2396651fab433ab62a1b79f2275a76', '2016-07-14 09:05:43', '2016-07-14 09:05:43', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409065423800', '1bc2f8fd4f3d4a11963c040b22d89068', '2016-07-14 09:06:54', '2016-07-14 09:06:54', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409083460200', 'b3b5186765c54c8db2a4cc6416e8798d', '2016-07-14 09:08:34', '2016-07-14 09:08:34', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409102319800', 'ed4264a58d4549e5ac920bb07946ea05', '2016-07-14 09:10:23', '2016-07-14 09:10:23', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409112391100', 'f00736bc7c59411f9ce1b76dc1cd1c15', '2016-07-14 09:11:23', '2016-07-14 09:11:23', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409120639500', '906737e8da8849b58af6e2fc2db0795f', '2016-07-14 09:12:06', '2016-07-14 09:12:06', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607140913587500', 'e68d9079dbcb4b47bc621488c853e495', '2016-07-14 09:13:58', '2016-07-14 09:13:58', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071409422341000', '427ecb95a19d4ab88a1a641488479eca', '2016-07-14 09:42:23', '2016-07-14 09:42:23', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071410045033200', '0b56ddf0d551487ba848cc5c9c7970c8', '2016-07-14 10:04:50', '2016-07-14 10:04:50', 'Y', '2016-07-14', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414002886100', '7bc038c6334c448584bff2b4f6b36ca5', '2016-07-14 14:00:28', '2016-07-14 14:00:28', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414002888000', '0bfad7b53e6345129a643f34522df722', '2016-07-14 14:00:28', '2016-07-14 14:00:28', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414003380400', '47142390c156437a9c02173ea5940cab', '2016-07-14 14:00:33', '2016-07-14 14:00:33', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414003654600', '6664af8469e34ff6a72bc24e68cc3805', '2016-07-14 14:00:36', '2016-07-14 14:00:36', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414004121000', 'c84a6bef06fd4d0ab8a4fc48e3a31149', '2016-07-14 14:00:41', '2016-07-14 14:00:41', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414004496400', 'b526d5dbd8a54fc988d8cdd4fc682d1d', '2016-07-14 14:00:44', '2016-07-14 14:00:44', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414004643600', '5147bca86385492ab8bcbd030f199c10', '2016-07-14 14:00:46', '2016-07-14 14:00:46', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414005176500', '6bc2028c4a5c4c948ccb9c243ea58084', '2016-07-14 14:00:51', '2016-07-14 14:00:51', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414005312100', 'bc9461cf350944f09d01d6212ad57c87', '2016-07-14 14:00:53', '2016-07-14 14:00:53', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414005559000', '9cf34c99828346c4bf5281ce04c10da5', '2016-07-14 14:00:55', '2016-07-14 14:00:55', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414010041300', 'b3b5186765c54c8db2a4cc6416e8798d', '2016-07-14 14:01:00', '2016-07-14 14:01:00', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414010336400', '90742886e8b446ae952536d760983879', '2016-07-14 14:01:03', '2016-07-14 14:01:03', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607141401044700', 'f00736bc7c59411f9ce1b76dc1cd1c15', '2016-07-14 14:01:04', '2016-07-14 14:01:04', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414010966500', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-14 14:01:09', '2016-07-14 14:01:09', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607141401099400', '4a32aba3c0674d82b9bc5c865b6775ba', '2016-07-14 14:01:09', '2016-07-14 14:01:09', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414011523200', '18ce73473948410299effaa3aa9d9b67', '2016-07-14 14:01:15', '2016-07-14 14:01:15', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414011671900', '00dece4487194358a24a3ec9a734c850', '2016-07-14 14:01:16', '2016-07-14 14:01:16', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414012113500', '906737e8da8849b58af6e2fc2db0795f', '2016-07-14 14:01:21', '2016-07-14 14:01:21', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414012517500', '83bf6c2d98874d37b736228fe9b61ec0', '2016-07-14 14:01:25', '2016-07-14 14:01:25', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414012599900', 'ed4264a58d4549e5ac920bb07946ea05', '2016-07-14 14:01:25', '2016-07-14 14:01:25', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414013265800', '0b2396651fab433ab62a1b79f2275a76', '2016-07-14 14:01:32', '2016-07-14 14:01:32', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414013719900', '2bfaf0ccc6664a6fbeade7441b59e592', '2016-07-14 14:01:37', '2016-07-14 14:01:37', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414014462400', '8f3b012725ca4d45adf6e5a9cdeccc66', '2016-07-14 14:01:44', '2016-07-14 14:01:44', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414014729900', 'c97069a68e02418286386ee2e3583d9c', '2016-07-14 14:01:47', '2016-07-14 14:01:47', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607141401557700', '1bc2f8fd4f3d4a11963c040b22d89068', '2016-07-14 14:01:55', '2016-07-14 14:01:55', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414015691900', 'f9fa97068a3240239f337f85245fdcf4', '2016-07-14 14:01:56', '2016-07-14 14:01:56', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414020373900', 'f228c629a97049b49a69c0d86b2e38d7', '2016-07-14 14:02:03', '2016-07-14 14:02:03', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414020738300', 'bbc1475a9fa14d65a5b4e48a0e4f8f4c', '2016-07-14 14:02:07', '2016-07-14 14:02:07', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414021599800', '78e99ae9d0a5412cad9f07c1c29917ad', '2016-07-14 14:02:15', '2016-07-14 14:02:15', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414021750400', '9fda34c991094cb282572c74d2c1c245', '2016-07-14 14:02:17', '2016-07-14 14:02:17', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414022414300', '7184199f62254b5d8676e03647254c4a', '2016-07-14 14:02:24', '2016-07-14 14:02:24', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607141402241600', '74fddaeba72546c5ab51f28875b8dcd1', '2016-07-14 14:02:24', '2016-07-14 14:02:24', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414023021800', 'a80dfe09f7f24d9ebaa10e83efdf5f36', '2016-07-14 14:02:30', '2016-07-14 14:02:30', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607141402353600', 'e3c09131628343958f183694f9e2d5b5', '2016-07-14 14:02:35', '2016-07-14 14:02:35', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414023665700', '1403b424f28749e181d1140cb536f31f', '2016-07-14 14:02:36', '2016-07-14 14:02:36', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414023974400', 'e800a8b1287d4c0385d7553e7992d133', '2016-07-14 14:02:39', '2016-07-14 14:02:39', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414024631000', '729902710c3c49be94ca8f0d4ed732c4', '2016-07-14 14:02:46', '2016-07-14 14:02:46', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414025362200', '0b56ddf0d551487ba848cc5c9c7970c8', '2016-07-14 14:02:53', '2016-07-14 14:02:53', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414025852100', '207dacafed854b628715dc2a2fe1b783', '2016-07-14 14:02:58', '2016-07-14 14:02:58', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414030922400', 'aa3b880220c04e869f15db5409e6a533', '2016-07-14 14:03:09', '2016-07-14 14:03:09', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414033717900', '6696d3698c2f401b90596daf1b66e6a6', '2016-07-14 14:03:37', '2016-07-14 14:03:37', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414035677900', '124738e9800b47df946fb149e040aa26', '2016-07-14 14:03:56', '2016-07-14 14:03:56', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414044384300', '13665e762808427eb937b681568b2b9a', '2016-07-14 14:04:43', '2016-07-14 14:04:43', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414044657100', '427ecb95a19d4ab88a1a641488479eca', '2016-07-14 14:04:46', '2016-07-14 14:04:46', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414045912900', '91f60fc5064a4c198cc766ab6cb751a2', '2016-07-14 14:04:59', '2016-07-14 14:04:59', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414052124000', '73551123366b496b8bec2db6568a7ea5', '2016-07-14 14:05:21', '2016-07-14 14:05:21', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414053565400', 'b8b56f47198b45cd81838817f9d2955f', '2016-07-14 14:05:35', '2016-07-14 14:05:35', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414060118900', '7456f594359345f3b94ec46bc30d46a0', '2016-07-14 14:06:01', '2016-07-14 14:06:01', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414063287800', '539edce297654d079b09e9923aaea1e0', '2016-07-14 14:06:32', '2016-07-14 14:06:32', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414072314400', 'dbd81304ad3640a0a09b777debdad534', '2016-07-14 14:07:23', '2016-07-14 14:07:23', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071414072942600', 'e68d9079dbcb4b47bc621488c853e495', '2016-07-14 14:07:29', '2016-07-14 14:07:29', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071415545870700', '7096631b4e814461a51cac8a6bc289f0', '2016-07-14 15:54:58', '2016-07-14 15:54:58', 'Y', '2016-07-14', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508275713200', '90742886e8b446ae952536d760983879', '2016-07-15 08:27:57', '2016-07-15 08:27:57', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508280612900', 'e3c09131628343958f183694f9e2d5b5', '2016-07-15 08:28:06', '2016-07-15 08:28:06', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508284385200', 'f9fa97068a3240239f337f85245fdcf4', '2016-07-15 08:28:43', '2016-07-15 08:28:43', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508294515200', '06d4abe792d74cab8135c64749daafba', '2016-07-15 08:29:45', '2016-07-15 08:29:45', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508294617800', '47142390c156437a9c02173ea5940cab', '2016-07-15 08:29:46', '2016-07-15 08:29:46', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508295047400', '7bc038c6334c448584bff2b4f6b36ca5', '2016-07-15 08:29:50', '2016-07-15 08:29:50', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508304594100', 'f228c629a97049b49a69c0d86b2e38d7', '2016-07-15 08:30:45', '2016-07-15 08:30:45', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607150836522600', '124738e9800b47df946fb149e040aa26', '2016-07-15 08:36:52', '2016-07-15 08:36:52', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508365781400', '13665e762808427eb937b681568b2b9a', '2016-07-15 08:36:57', '2016-07-15 08:36:57', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508370784900', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-15 08:37:07', '2016-07-15 08:37:07', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508372235900', '0bfad7b53e6345129a643f34522df722', '2016-07-15 08:37:22', '2016-07-15 08:37:22', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607150839087200', '207dacafed854b628715dc2a2fe1b783', '2016-07-15 08:39:08', '2016-07-15 08:39:08', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508391829500', 'f12fbeba2a6941f2a515fb280662c2b8', '2016-07-15 08:39:18', '2016-07-15 08:39:18', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508393342400', '8f3b012725ca4d45ádf6e5a9cdeccc66', '2016-07-15 08:39:33', '2016-07-15 08:39:33', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508395084900', '7184199f62254b5d8676e03647254c4a', '2016-07-15 08:39:50', '2016-07-15 08:39:50', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508401996800', '6664af8469e34ff6a72bc24e68cc3805', '2016-07-15 08:40:19', '2016-07-15 08:40:19', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607150841572500', '00dece4487194358a24a3ec9a734c850', '2016-07-15 08:41:57', '2016-07-15 08:41:57', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508482751500', '78e99ae9d0a5412cad9f07c1c29917ad', '2016-07-15 08:48:27', '2016-07-15 08:48:27', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508490380600', '2bfaf0ccc6664a6fbeade7441b59e592', '2016-07-15 08:49:03', '2016-07-15 08:49:03', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508513317400', 'c84a6bef06fd4d0ab8a4fc48e3a31149', '2016-07-15 08:51:33', '2016-07-15 08:51:33', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508520483700', 'e800a8b1287d4c0385d7553e7992d133', '2016-07-15 08:52:04', '2016-07-15 08:52:04', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508521697200', '6bc2028c4a5c4c948ccb9c243ea58084', '2016-07-15 08:52:16', '2016-07-15 08:52:16', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508523292400', 'bc9461cf350944f09d01d6212ad57c87', '2016-07-15 08:52:32', '2016-07-15 08:52:32', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508542761200', '729902710c3c49be94ca8f0d4ed732c4', '2016-07-15 08:54:27', '2016-07-15 08:54:27', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508553778400', '9cf34c99828346c4bf5281ce04c10da5', '2016-07-15 08:55:37', '2016-07-15 08:55:37', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508562289600', '18ce73473948410299effaa3aa9d9b67', '2016-07-15 08:56:22', '2016-07-15 08:56:22', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508565546900', '7456f594359345f3b94ec46bc30d46a0', '2016-07-15 08:56:55', '2016-07-15 08:56:55', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508570645100', 'b526d5dbd8a54fc988d8cdd4fc682d1d', '2016-07-15 08:57:06', '2016-07-15 08:57:06', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607150857495700', '7096631b4e814461a51cac8a6bc289f0', '2016-07-15 08:57:49', '2016-07-15 08:57:49', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071508575873300', '91f60fc5064a4c198cc766ab6cb751a2', '2016-07-15 08:57:58', '2016-07-15 08:57:58', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509002485300', '0b2396651fab433ab62a1b79f2275a76', '2016-07-15 09:00:24', '2016-07-15 09:00:24', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509003366400', '539edce297654d079b09e9923aaea1e0', '2016-07-15 09:00:33', '2016-07-15 09:00:33', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607150900386200', '5147bca86385492ab8bcbd030f199c10', '2016-07-15 09:00:38', '2016-07-15 09:00:38', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607150901127300', 'c97069a68e02418286386ee2e3583d9c', '2016-07-15 09:01:12', '2016-07-15 09:01:12', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509015660900', '73551123366b496b8bec2db6568a7ea5', '2016-07-15 09:01:56', '2016-07-15 09:01:56', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509020237700', '74fddaeba72546c5ab51f28875b8dcd1', '2016-07-15 09:02:02', '2016-07-15 09:02:02', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509021925400', 'a80dfe09f7f24d9ebaa10e83efdf5f36', '2016-07-15 09:02:19', '2016-07-15 09:02:19', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509030637800', '1bc2f8fd4f3d4a11963c040b22d89068', '2016-07-15 09:03:06', '2016-07-15 09:03:06', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509065945300', '1403b424f28749e181d1140cb536f31f', '2016-07-15 09:06:59', '2016-07-15 09:06:59', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509072790600', '9fda34c991094cb282572c74d2c1c245', '2016-07-15 09:07:27', '2016-07-15 09:07:27', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509073412200', 'e68d9079dbcb4b47bc621488c853e495', '2016-07-15 09:07:34', '2016-07-15 09:07:34', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607150909108100', 'f00736bc7c59411f9ce1b76dc1cd1c15', '2016-07-15 09:09:10', '2016-07-15 09:09:10', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509104459800', 'dbd81304ad3640a0a09b777debdad534', '2016-07-15 09:10:44', '2016-07-15 09:10:44', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509144297600', 'aa3b880220c04e869f15db5409e6a533', '2016-07-15 09:14:42', '2016-07-15 09:14:42', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509282169900', 'ed4264a58d4549e5ac920bb07946ea05', '2016-07-15 09:28:21', '2016-07-15 09:28:21', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509552866200', '6696d3698c2f401b90596daf1b66e6a6', '2016-07-15 09:55:28', '2016-07-15 09:55:28', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071509554080900', '427ecb95a19d4ab88a1a641488479eca', '2016-07-15 09:55:40', '2016-07-15 09:55:40', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071510171285700', 'bbc1475a9fa14d65a5b4e48a0e4f8f4c', '2016-07-15 10:17:12', '2016-07-15 10:17:12', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071510172530400', 'b8b56f47198b45cd81838817f9d2955f', '2016-07-15 10:17:25', '2016-07-15 10:17:25', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071510303960600', '906737e8da8849b58af6e2fc2db0795f', '2016-07-15 10:30:39', '2016-07-15 10:30:39', 'Y', '2016-07-15', 'activity_16021615393155001', '1', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514041275600', '0bfad7b53e6345129a643f34522df722', '2016-07-15 14:04:12', '2016-07-15 14:04:12', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514041952000', '7bc038c6334c448584bff2b4f6b36ca5', '2016-07-15 14:04:19', '2016-07-15 14:04:19', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514042829400', '47142390c156437a9c02173ea5940cab', '2016-07-15 14:04:28', '2016-07-15 14:04:28', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607151404327400', 'e800a8b1287d4c0385d7553e7992d133', '2016-07-15 14:04:32', '2016-07-15 14:04:32', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514043624800', '6bc2028c4a5c4c948ccb9c243ea58084', '2016-07-15 14:04:36', '2016-07-15 14:04:36', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514043984300', 'ed4264a58d4549e5ac920bb07946ea05', '2016-07-15 14:04:39', '2016-07-15 14:04:39', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514044557300', '6664af8469e34ff6a72bc24e68cc3805', '2016-07-15 14:04:45', '2016-07-15 14:04:45', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514044936500', 'bc9461cf350944f09d01d6212ad57c87', '2016-07-15 14:04:49', '2016-07-15 14:04:49', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514045345900', '74fddaeba72546c5ab51f28875b8dcd1', '2016-07-15 14:04:53', '2016-07-15 14:04:53', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514045738500', 'b8b56f47198b45cd81838817f9d2955f', '2016-07-15 14:04:57', '2016-07-15 14:04:57', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514050412200', '7096631b4e814461a51cac8a6bc289f0', '2016-07-15 14:05:04', '2016-07-15 14:05:04', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514050778500', 'f00736bc7c59411f9ce1b76dc1cd1c15', '2016-07-15 14:05:07', '2016-07-15 14:05:07', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514051164900', '427ecb95a19d4ab88a1a641488479eca', '2016-07-15 14:05:11', '2016-07-15 14:05:11', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514051644600', '5147bca86385492ab8bcbd030f199c10', '2016-07-15 14:05:16', '2016-07-15 14:05:16', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514052112300', '90742886e8b446ae952536d760983879', '2016-07-15 14:05:21', '2016-07-15 14:05:21', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514052689800', 'f228c629a97049b49a69c0d86b2e38d7', '2016-07-15 14:05:26', '2016-07-15 14:05:26', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514053060800', '2bfaf0ccc6664a6fbeade7441b59e592', '2016-07-15 14:05:30', '2016-07-15 14:05:30', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514053093800', '13665e762808427eb937b681568b2b9a', '2016-07-15 14:05:30', '2016-07-15 14:05:30', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514053770500', 'f12fbeba2a6941f2a515fb280662c2b8', '2016-07-15 14:05:37', '2016-07-15 14:05:37', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514054347900', 'a80dfe09f7f24d9ebaa10e83efdf5f36', '2016-07-15 14:05:43', '2016-07-15 14:05:43', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514054553300', '8f3b012725ca4d45adf6e5a9cdeccc66', '2016-07-15 14:05:45', '2016-07-15 14:05:45', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514054839400', 'b526d5dbd8a54fc988d8cdd4fc682d1d', '2016-07-15 14:05:48', '2016-07-15 14:05:48', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514055432900', '78e99ae9d0a5412cad9f07c1c29917ad', '2016-07-15 14:05:54', '2016-07-15 14:05:54', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514055772800', '1bc2f8fd4f3d4a11963c040b22d89068', '2016-07-15 14:05:57', '2016-07-15 14:06:00', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514060113300', '124738e9800b47df946fb149e040aa26', '2016-07-15 14:06:01', '2016-07-15 14:06:01', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514060713000', '9cf34c99828346c4bf5281ce04c10da5', '2016-07-15 14:06:07', '2016-07-15 14:06:07', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514060988700', 'c84a6bef06fd4d0ab8a4fc48e3a31149', '2016-07-15 14:06:09', '2016-07-15 14:06:12', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514061344700', '729902710c3c49be94ca8f0d4ed732c4', '2016-07-15 14:06:13', '2016-07-15 14:06:13', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514061628500', '18ce73473948410299effaa3aa9d9b67', '2016-07-15 14:06:16', '2016-07-15 14:06:16', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514061999800', 'c97069a68e02418286386ee2e3583d9c', '2016-07-15 14:06:19', '2016-07-15 14:06:19', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514062313400', 'dbd81304ad3640a0a09b777debdad534', '2016-07-15 14:06:23', '2016-07-15 14:06:23', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607151406333100', '9fda34c991094cb282572c74d2c1c245', '2016-07-15 14:06:33', '2016-07-15 14:06:33', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514064698900', '207dacafed854b628715dc2a2fe1b783', '2016-07-15 14:06:46', '2016-07-15 14:06:46', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514065822400', '0aef0f2b566e40ba837515a5f12805e6', '2016-07-15 14:06:58', '2016-07-15 14:06:58', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514070555400', 'aa3b880220c04e869f15db5409e6a533', '2016-07-15 14:07:05', '2016-07-15 14:07:05', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514070712300', '73551123366b496b8bec2db6568a7ea5', '2016-07-15 14:07:07', '2016-07-15 14:07:07', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514071388300', '6696d3698c2f401b90596daf1b66e6a6', '2016-07-15 14:07:13', '2016-07-15 14:07:13', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514073027000', '7184199f62254b5d8676e03647254c4a', '2016-07-15 14:07:30', '2016-07-15 14:07:30', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514080649500', '1403b424f28749e181d1140cb536f31f', '2016-07-15 14:08:06', '2016-07-15 14:08:06', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514083223100', '0b2396651fab433ab62a1b79f2275a76', '2016-07-15 14:08:32', '2016-07-15 14:08:32', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514084283100', 'bbc1475a9fa14d65a5b4e48a0e4f8f4c', '2016-07-15 14:08:42', '2016-07-15 14:08:42', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514084749600', '83bf6c2d98874d37b736228fe9b61ec0', '2016-07-15 14:08:47', '2016-07-15 14:08:47', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514085138500', '00dece4487194358a24a3ec9a734c850', '2016-07-15 14:08:51', '2016-07-15 14:08:51', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514090130500', 'f9fa97068a3240239f337f85245fdcf4', '2016-07-15 14:09:01', '2016-07-15 14:09:01', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514090561300', '7456f594359345f3b94ec46bc30d46a0', '2016-07-15 14:09:05', '2016-07-15 14:09:05', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607151409137300', '91f60fc5064a4c198cc766ab6cb751a2', '2016-07-15 14:09:13', '2016-07-15 14:09:13', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514091676100', '0b56ddf0d551487ba848cc5c9c7970c8', '2016-07-15 14:09:16', '2016-07-15 14:09:16', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514092068100', '539edce297654d079b09e9923aaea1e0', '2016-07-15 14:09:20', '2016-07-15 14:09:20', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514092540200', '906737e8da8849b58af6e2fc2db0795f', '2016-07-15 14:09:25', '2016-07-15 14:09:25', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_16071514093110700', '06d4abe792d74cab8135c64749daafba', '2016-07-15 14:09:31', '2016-07-15 14:09:31', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');
INSERT INTO `college_camp_check_in` VALUES ('checkIn_1607151410463200', 'e3c09131628343958f183694f9e2d5b5', '2016-07-15 14:10:46', '2016-07-15 14:10:46', 'Y', '2016-07-15', 'activity_16021615393155001', '2', '');

-- ----------------------------
-- Table structure for `college_people`
-- ----------------------------
DROP TABLE IF EXISTS `college_people`;
CREATE TABLE `college_people` (
  `COLLEGE_ID` varchar(75) NOT NULL,
  `COLLEGE_NAME` varchar(255) NOT NULL,
  `COLLEGE_AREA` varchar(255) DEFAULT NULL,
  `COLLEGE_GROUP` varchar(255) DEFAULT NULL,
  `COLLEGE_GENDER` varchar(255) DEFAULT NULL,
  `COLLEGE_BIRTHDAY` varchar(255) DEFAULT NULL,
  `COLLEGE_SCHOOL_GRADE` varchar(255) DEFAULT NULL,
  `COLLEGE_PHONE` varchar(255) DEFAULT NULL,
  `COLLEGE_TEL` varchar(255) DEFAULT NULL,
  `COLLEGE_GRADE` varchar(255) DEFAULT NULL,
  `COLLEGE_LEADER` varchar(1) DEFAULT 'N',
  PRIMARY KEY (`COLLEGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college_people
-- ----------------------------
INSERT INTO `college_people` VALUES ('00dece4487194358a24a3ec9a734c850', '林宏遠', '5', '彭柏霖', '男', '1997/1/17', '輔仁大學/一年級', '0976-382-900', '02-2809-6452', '2', 'N');
INSERT INTO `college_people` VALUES ('01479891f8c346ad879cf0db6ed3e926', '羅子霽', '7', '莊博勝', '男', '1992/11/18', '台灣大學/五年級', '0926-808-360', '02-2794-4202', '1', 'Y');
INSERT INTO `college_people` VALUES ('03666df538d4456cba2f3b3e754ffc3e', '林家名', '3', '陳彥儒', '男', '2001/7/27', '八里國中/九年級', '無', '02-2619-2430', '1', 'N');
INSERT INTO `college_people` VALUES ('03fb33df04a049bba48e94356da8b34d', '黃歆雁', '8', '彭子欣', '女', '2000/11/22', '蘭雅國中/九年級', '0987-239-301', '02-2885-8479', '1', 'N');
INSERT INTO `college_people` VALUES ('054388d32ae044e8bd5648612376503f', '許慕義', '12', '陳傑恩', '男', '2002/1/11', '三民國中/八年級', '0916-318-582', '02-2847-3471', '1', 'N');
INSERT INTO `college_people` VALUES ('06d4abe792d74cab8135c64749daafba', '王曦晟', '5', '彭柏霖', '男', '1992/12/6', '大學', '0920-236-649', '02-2723-4138', '2', 'N');
INSERT INTO `college_people` VALUES ('07d58204700746328badc0f0a8f1939b', '黃子渝', '12', '江翊銘', '男', '2000/4/26', '南港高工/一年級', '0979-005-009', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('08559c952dd5413286e80295879797aa', '萬祈', '11', '萬祈', '女', '85.3.7', '東吳大學/二年級', '0980-989-984', '03-357-4984', '1', 'Y');
INSERT INTO `college_people` VALUES ('089f4bb151ca46d9bbe21eefb5fa93fd', '乙峻嘉', '7', '陳翰', '男', '2001/5/13', '蘆洲國中/九年級', '0970-310-631', '02-2288-9445', '1', 'N');
INSERT INTO `college_people` VALUES ('0a5af13f14c2455d86f78b0ee2b77a13', '林筠軒', '4', '林主恩', '女', '2003/1/15', '弘道國中/七年級', '0922-855-623', '02-2308-7463', '1', 'N');
INSERT INTO `college_people` VALUES ('0aef0f2b566e40ba837515a5f12805e6', '劉佳恩', '3', '洪睿奕', '男', '1997/4/18', '志仁高職/三年級', '0980-276-188', '02-2791-1148', '2', 'N');
INSERT INTO `college_people` VALUES ('0b2396651fab433ab62a1b79f2275a76', '林彥濬', '12', '柏泰年', '男', '1998/6/8', '南港高工/三年級', '0978-592-552', '02-2632-4430', '2', 'N');
INSERT INTO `college_people` VALUES ('0b2c30fb0dce4268a4bee8f573fc04bd', '江采蓁', '7', '葉俊毅', '女', '2002/10/25', '石牌國中/七年級', '0965-314-382', '02-2827-3261', '1', 'N');
INSERT INTO `college_people` VALUES ('0b56ddf0d551487ba848cc5c9c7970c8', '顏詩詠', '10', '江奕緯', '女', '1996/10/9', '銘傳大學/一年級', '無', '02-2841-2537', '2', 'N');
INSERT INTO `college_people` VALUES ('0b5771eafbc4490081a4590424c3ce9b', '謝汶霈', '8', '吳其芬', '女', '2000/12/19', '明德國中/九年級', '0903-903-615', '02-22871967', '1', 'N');
INSERT INTO `college_people` VALUES ('0bb3033a75054503b2b35183fa4643a6', '李冠賢', '5', '蔡加榮', '男', '1999/11/6', '泰山高中/一年級', '0925-296-775', '02-2882-3199', '1', 'N');
INSERT INTO `college_people` VALUES ('0bfad7b53e6345129a643f34522df722', '郭祈宣', '11', '林思吟', '女', '1997/7/4', '中原大學/一年級', '0931-070-992', '02-2986-9360', '2', 'N');
INSERT INTO `college_people` VALUES ('0dc44e5b224f4c97a08cf2fee5a4f14b', '周凱廉', '北投', '嬥臻', '男', '2003/12/3', '泉源國小/六年級', '0918-736-636', '02-2898-5788', '1', 'N');
INSERT INTO `college_people` VALUES ('0e2e8f96ce154991a179035c00030387', '黃柏偉', '北投', '嬥臻', '男', '2001/11/11', '北投國中/二年級', '0936-227-326', '02-2898-8028', '1', 'N');
INSERT INTO `college_people` VALUES ('0ec8537e4c104a499efd069e1a108c07', '王晨怡', '北投', '嬥臻', '女', '2004/727', '北投國小/六年級', '0970-764-143', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('10350156c16f4f13b80d9719fe80f7c7', '洪鼎翔', '12', '陳傑恩', '男', '1999/12/6', '基隆高中/一年級', '0917-881-206', '02-2585-5773', '1', 'N');
INSERT INTO `college_people` VALUES ('1135ee714a7e4b55b370580abc8ec798', '楊健威', '12', '江翊銘', '男', '2002/11/9', '百齡國中/七年級', '0931-068-809', '02-2881-0922', '1', 'N');
INSERT INTO `college_people` VALUES ('1158541b417041c8b25dccf9b33d16b1', '張婉宜', '8', '張嘉文', '女', '2001/8/15', '積穗國中/九年級', '0982-225-010', '02-2223-1123', '1', 'N');
INSERT INTO `college_people` VALUES ('11d1bae8720948029eaddc024c42b309', '何美齡', '北投', '嬥臻', '女', '2003/11/3', '聖心女中/七年級', '0936-194-225', '02-2618-8419', '1', 'N');
INSERT INTO `college_people` VALUES ('124738e9800b47df946fb149e040aa26', '馬靖雯', '4', '李雅婷', '女', '1998/4/12', '新莊高中/三年級', '0918-016-799', '02-2297-0369', '2', 'N');
INSERT INTO `college_people` VALUES ('13665e762808427eb937b681568b2b9a', '黃婕瑛', '4', '李雅婷', '女', '1998/4/23', '明倫高中/三年級', '0955-756-078', '02-2296-9227', '2', 'N');
INSERT INTO `college_people` VALUES ('13935b803e17424394c44d99e9c9a562', '徐威辰', '5', '蔡加榮', '男', '1999/9/30', '陽明高中/一年級', '0981-948479', '02-2880-7590', '1', 'N');
INSERT INTO `college_people` VALUES ('1403b424f28749e181d1140cb536f31f', '鄭聿涵', '6', '李西純', '女', '1996/12/29', '中國科技大學/二年級', '0977-386-513', '02-2820-0648', '2', 'N');
INSERT INTO `college_people` VALUES ('1424be5ffa874d78a4afaf90a1a147ea', '張嘉芸', '6', '嵇鈺淳', '女', '2002/12/24', '金陵女中/七年級', '0935-920-616', '02-2981-6312', '1', 'N');
INSERT INTO `college_people` VALUES ('154e808966bc45f0b642bfa3b51df75b', '李雨函', '8', '彭子欣', '女', '2001/2/8', '百齡國中/九年級', '0930-608-353', '02-2882-2929', '1', 'N');
INSERT INTO `college_people` VALUES ('1732bf787a104dfd91aace1b1fa9c666', '蔡昀倢', '11', '蔡昀倢', '女', '85.2.2', '臺北市立大學/一年級', '0932-889-254', '02-2563-2020', '1', 'Y');
INSERT INTO `college_people` VALUES ('1755a0a5219448c7a3e0e280d91bc5f1', '林采臻', '6', '嵇鈺淳', '女', '2003/3/8', '華興中學/八年級', '0937-056-304', '02-8286-1171', '1', 'N');
INSERT INTO `college_people` VALUES ('17d25be19bdf49bcb321bc2b8184dce9', '董擎', '10', '郭奕君', '女', '2003/4/5', '蘭雅國中/七年級', '0953-350-966', '02-2838-5523', '1', 'N');
INSERT INTO `college_people` VALUES ('18ce73473948410299effaa3aa9d9b67', '洪芷寧', '11', '萬祈', '女', '1998/8/25', '板橋高中/三年級', '0978-503-876', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('1952facb77e5489ba0a44494f4340233', '丁芸', '8', '彭子欣', '女', '1999/10/2', '奎山國中/三年級', '無', '02-2820-7020', '1', 'N');
INSERT INTO `college_people` VALUES ('1a81e3a438e04b0ab385bd83a2381c87', '陳采芹', '11', '蔡昀倢', '女', '2003/4/26', '華興國中/七年級', '0936-113-285', '02-2831-6447', '1', 'N');
INSERT INTO `college_people` VALUES ('1bc2f8fd4f3d4a11963c040b22d89068', '張治遠', '7', '徐東立', '男', '1996/12/2', '陽明大學/一年級', '0931-286-698', '02-2822-6776', '2', 'N');
INSERT INTO `college_people` VALUES ('1d1ed38770b54bbd9cefd37fdd7dcdd9', '張豊諺', '1', '傅儒淵', '男', '2002/9/5', '鳳林國中/七年級', '無', '03-8761830', '1', 'N');
INSERT INTO `college_people` VALUES ('1d7b08e2be9f4629a4257b923ed31287', '李嘉瑋', '9', '葉亭瑩', '男', '2001/8/21', '石牌國中/九年級', '0955-821-141', '02-2881-9922', '1', 'N');
INSERT INTO `college_people` VALUES ('1e2b9f6c0d2d48748d276d8159f27494', '陳亭伃', '10', '蔡幸怡', '女', '2002/6/28', '石牌國中/八年級', '0988-908-364', '02-2873-3089', '1', 'N');
INSERT INTO `college_people` VALUES ('207dacafed854b628715dc2a2fe1b783', '李翊瑄', '8', '林韋伶', '女', '1998/7/28', '薇閣高中/三年級', '0958-605-080', '02-2592-1510', '2', 'N');
INSERT INTO `college_people` VALUES ('222b1338ccca4050855bba0d07499f93', '陳聖文', '7', '徐東立', '男', '2004/1/2', '文化國小/六年級', '無', '02-2892-4113', '1', 'N');
INSERT INTO `college_people` VALUES ('24d62d28d6bd4b41bb716136271b7ae2', '李佳真', '6', '嵇鈺淳', '女', '2002/10/16', '衛理女中/七年級', '0989-864-615', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('26850980972d4c989a03aff4807b9bc3', '林政宏', '3', '郭力誠', '男', '2004/7/18', '成功國小/六年級', '0917-306-392', '02-8282-1592', '1', 'N');
INSERT INTO `college_people` VALUES ('27a7fb6af78d4a77a838b1197adece4c', '林盛傑', '1', '傅儒淵', '男', '2002/9/28', '鳳林國中/七年級', '0989-589-302', '03-8741306', '1', 'N');
INSERT INTO `college_people` VALUES ('2872359f0f794edea64b2a13b2003503', '陳彥儒', '3', '陳彥儒', '男', '86.8.26', '德明科大/一年級', '0909-632-980', '02-2835-6235', '1', 'Y');
INSERT INTO `college_people` VALUES ('28f10cc06e364134a732165aca03a506', '黃郁惠', '8', '張嘉文', '女', '2001/4/22', '正德國中/九年級', '0966-864-224', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('292612cc954f4caaa4bdd735656d7323', '彭柏韋', '5', '蔡加榮', '男', '2002/8/11', '明德國中/八年級', '0903-875-082', '02-2827-8222', '1', 'N');
INSERT INTO `college_people` VALUES ('2ab952ce49da4dba879f949babe1dc5a', '蔡妤韓', '8', '吳其芬', '女', '2001/6/15', '天母國中/九年級', '0903-156-015', '02-2831-7721', '1', 'N');
INSERT INTO `college_people` VALUES ('2bfaf0ccc6664a6fbeade7441b59e592', '黃莉庭', '11', '林思吟', '女', '1997/8/29', '宜蘭大學/一年級', '0939-261-223', '02-8988-1803', '2', 'N');
INSERT INTO `college_people` VALUES ('2c8c83372e43446392f70eb9a85ff7bc', '管宇翔', '7', '陳翰', '男', '2001/3/22', '', '0988-944-290', '02-2262-8079', '1', 'N');
INSERT INTO `college_people` VALUES ('2f6341d1ba6a4023938ddb0a2689aebb', '陳韋中', '北投', '嬥臻', '男', '2002/11/4', '北投國中/七年級', '0926-890-219', '02-2894-7752', '1', 'N');
INSERT INTO `college_people` VALUES ('304e6735b4b0483d971726de17437645', '李朋逸', '5', '聶家祺', '男', '2001/8/29', '福和國中/三年級', '0958-762-909', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('3059e576c93440549795d9a35fd63d31', '李靖涵', '6', '黃少筠', '女', '2000/9/9', '石牌國中/九年級', '0973-221-379', '02-2823-0329', '1', 'N');
INSERT INTO `college_people` VALUES ('3074f55cd9c947dfb00e56b550924d0a', '宋沐恩', '9', '李宗哲', '男', '2003/8/11', '中山國中/七年級', '0910-045-123', '02-2599-1452', '1', 'N');
INSERT INTO `college_people` VALUES ('30a13c2adbb143128e2bc474cefd351e', '潘奕辰', '1', '傅儒淵', '男', '2001/9/14', '蘭雅國中/八年級', '0988-316-535', '02-2720-6272', '1', 'N');
INSERT INTO `college_people` VALUES ('3133853c609c4e468454a04142eb945c', '蕭鈺騰', '7', '陳翰', '男', '2000/9/26', '成淵高中(國中部)/九年級', '0917-672-826', '02-2511-8345', '1', 'N');
INSERT INTO `college_people` VALUES ('33c3ef192dfb4eea806007da7e4e2405', '馬王子毅', '12', '何韋志', '男', '2004/5/10', '桃源學校/六年級', '無', '02-8250268', '1', 'N');
INSERT INTO `college_people` VALUES ('33f116441bdb49568eb61c199e0b8966', '文禹鈞', '6', '鄭如婷', '女', '1999/8/10', '泰北高中/二年級', '0925-511-963', '02-2812-6564', '1', 'N');
INSERT INTO `college_people` VALUES ('35aacfb3c9454a499cd119def4860676', '林政諺', '7', '陳翰', '男', '2001/6/12', '鷺江國中/九年級', '0912-821-592', '02-8282-1592', '1', 'N');
INSERT INTO `college_people` VALUES ('35baec64da714df0b2b2a154328366c3', '劉定洲', '7', '陳翰', '男', '1999/11/22', '開平餐飲/一年級', '0972-892-127', '02-2897-1476', '1', 'N');
INSERT INTO `college_people` VALUES ('371f9545b3654e29bfcf9e408c29f93d', '潘怡安', '10', '李星儀', '女', '2004/5/22', '石牌國中/七年級', '缺', '缺', '1', 'N');
INSERT INTO `college_people` VALUES ('378a429ace1148c3bf38e263cdf9fe05', '藍翊慈', '8', '吳其芬', '女', '2002/8/7', '中山國中/八年級', '0970-427-434', '02-2516-7730', '1', 'N');
INSERT INTO `college_people` VALUES ('38dcaa2d6d784020be259373e4d4be5e', '賴芝琳', '2', '王宣豫', '女', '2004/4/8', '文林國小/六年級', '0905-104-797', '02-2828-0631', '1', 'N');
INSERT INTO `college_people` VALUES ('3908a477cdf14d1f8eb5eed449579558', '莊敏箴', '8', '吳蘊庭', '女', '2001/7/3', '衛理女中/三年級', '0984-345-023', '02-2659-2208', '1', 'N');
INSERT INTO `college_people` VALUES ('398596409c93486fa74696a2f007b2a7', '俞瑨', '7', '伍皇誠', '女', '2003/7/11', '大南國中/七年級', '0911-450944', '03-3270882', '1', 'N');
INSERT INTO `college_people` VALUES ('3a4c68d8c65346c896dd24813fc578c6', '王琳貽', '8', '張嘉文', '女', '2001/7/28', '南門國中/九年級', '0922-451-209', '02-2371-7663', '1', 'N');
INSERT INTO `college_people` VALUES ('3c4af06a672149ab8f4c39976f75ddf3', '羅傑', '7', '伍皇誠', '男', '2001/1/6', '福和國中/三年級', '0928-791-031', '02-2945-1031', '1', 'N');
INSERT INTO `college_people` VALUES ('3f72a4d0dc7b4030b374aea07166c9f3', '李念蓁', '草屯', '皆儒', '女', '2001/4/11', '敏惠護校/一年級', '0923-353-665', '049-255-2389', '1', 'N');
INSERT INTO `college_people` VALUES ('406fa62963fc410fa167a84e0bf9548d', '陳茂穎', '12', '江翊銘', '男', '2002/11/7', '天母國中/七年級', '無', '02-2876-5383', '1', 'N');
INSERT INTO `college_people` VALUES ('427ecb95a19d4ab88a1a641488479eca', '陳佑瑞', '9', '馮安凱', '男', '1990/7/11', '社青', '0952-865-656', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('42a21c081f984a9892817a55427c4b46', '陸家萱', '7', '郭芝杏', '女', '2003/1/19', 'U.S.A/國一', '0934-311-047', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('4323757eac0e483c84b0afb8a659c55f', '許怡君', '8', '彭子欣', '女', '2001/5/30', '百齡國中/九年級', '0955-512-319', '02-2885-4512', '1', 'N');
INSERT INTO `college_people` VALUES ('44e903e89b8c4526be51bf95ee0a5801', '江宗育', '3', '汪榮章', '男', '2001/10/22', '石牌國中/九年級', '無', '02-2827-3261', '1', 'N');
INSERT INTO `college_people` VALUES ('45413080ef7742b5942f32fc98b69b7c', '陳螢', '2', '盧思妘', '女', '1993/10/16', '文化大學/四年級', '0987-656-820', '無', '1', 'Y');
INSERT INTO `college_people` VALUES ('456d07fa5706433d8d03e61ce79cc4b1', '林禎惠', '8', '彭子欣', '女', '2000/11/21', '百齡國中/九年級', '0936-138-360', '02-2810-0417', '1', 'N');
INSERT INTO `college_people` VALUES ('461c51e4dd34438ca945ddd2e1fa22f7', '伍皇誠', '7', '伍皇誠', '男', '1994/1/30', '台北海洋技術學院/四年級', '0930-875-758', '無', '1', 'Y');
INSERT INTO `college_people` VALUES ('46b361392ed8427ab2d6a7a386c1a375', '鄭明賢', '7', '陳齊偉', '男', '1994/4/24', '銘傳大學/四年級', '0958-808-792', '無', '1', 'Y');
INSERT INTO `college_people` VALUES ('47142390c156437a9c02173ea5940cab', '徐宇柔', '8', '吳蘊庭', '女', '1996/11/10', '台北教育大學/大一', '0935-679-892', '02-8626-0011', '2', 'N');
INSERT INTO `college_people` VALUES ('473176e3f0c3456a8cce4a01e4a117d4', '洪心擇', '9', '吳丞治', '男', '2003/2/21', '石牌國中/七年級', '無', '02-2891-8163', '1', 'N');
INSERT INTO `college_people` VALUES ('47d9a3f6404a40fc9491c1d66d2c7a78', '饒少騏', '7', '羅紹瑋', '男', '2004/1/4', '永和國中/七年級', '0956-351-359', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('486e709ae39b47aaae16f885b32d259f', '陳恩', '3', '汪榮章', '男', '2000/1/28', '私立大同高中/一年級', '0975-295-327', '02-2881-3121', '1', 'N');
INSERT INTO `college_people` VALUES ('4a32aba3c0674d82b9bc5c865b6775ba', '陳筠喬', '7', '葉俊毅', '女', '1996/9/26', '耕莘健康管理專科/五年級', '0975-706-691', '03-336-2529', '2', 'N');
INSERT INTO `college_people` VALUES ('4ae617ced4e5441391fc09d45169c23a', '馬林恩雋', '3', '郭力誠', '男', '2004/1/25', '桃園國小/六年級', '0939-678-419', '02-2894-3001', '1', 'N');
INSERT INTO `college_people` VALUES ('4bd1dde8fe9942028805f8e1c622a111', '陳泓昇', '5', '蔡加榮', '男', '2000/1/18', '開南商工/一年級', '0955-775-083', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('4c03aba7e5f640ec9b3d4b09e69db205', '劉芷婷', '11', '蔡昀倢', '女', '2003/3/19', '石牌國中/七年級', '無', '02-2827-8579', '1', 'N');
INSERT INTO `college_people` VALUES ('4d97fb640261455597ce8f58ca161872', '李心柔', '4', '呂欣虹', '女', '2000/7/18', '靜修女中/高一', '0932-618-911', '02-2764-1976', '1', 'N');
INSERT INTO `college_people` VALUES ('4f2e9663c8da4b789463ee9a109ecbd6', '顧成詣', '7', '伍皇誠', '男', '2001/6/25', '竹林國中/三年級', '0933-433-074', '02-2947-5715', '1', 'N');
INSERT INTO `college_people` VALUES ('4f8a7cf3045a48f788103106c54573da', '蔡栩懿', '7', '徐東立', '男', '2002/12/12', '大成國中/七年級', '0963-396-369', '03-647169', '1', 'N');
INSERT INTO `college_people` VALUES ('501c061d986f48619cc820348fac1038', '張恩慈', '1', '傅儒淵', '女', '2004/1/26', '鳳林國中/七年級', '0984-039-407', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('5147bca86385492ab8bcbd030f199c10', '吳丞治', '9', '李永恩', '男', '1995/1/1', '康寧大學/三年級', '0981-153-603', '02-2894-7588', '2', 'N');
INSERT INTO `college_people` VALUES ('519edc91c9e14832a4715adeb26c8ff1', '彭蒼翔', '12', '柏泰年', '男', '2000/5/5', '陽明高中/一年級', '0917-893-810', '02-2820-9234', '1', 'N');
INSERT INTO `college_people` VALUES ('523118ab0ddb46f5bffb2c773ce8db83', '林韋呈', '5', '蔡加榮', '男', '2003/6/30', '明志國中/七年級', '0978-250-181', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('527e8a6c9da84c93aded6a8479f3e730', '丁大能', '12', '江翊銘', '男', '2003/6/10', '天母國中/七年級', '0919-310-294', '02-2834-5134', '1', 'N');
INSERT INTO `college_people` VALUES ('5309b73cd02a498fa222c0cc6934f33f', '黃柏恩', '北投', '嬥臻', '男', '2004/1/14', '北投國小/六年級', '0936-227-326', '02-2898-8028', '1', 'N');
INSERT INTO `college_people` VALUES ('539edce297654d079b09e9923aaea1e0', '林采慧', '9', '劉定義', '女', '1998/3/16', '復興高中/二年級', '0975-938-086', '02-2885-7030', '2', 'N');
INSERT INTO `college_people` VALUES ('56a1c33aafd74894afe1c38aaaca0a76', '費聿祺', '8', '吳其芬', '女', '2001/9/25', '中山國中/八年級', '0930-343-925', '02-2716-2879', '1', 'N');
INSERT INTO `college_people` VALUES ('59dbdc9092e645f3ad8d5b6156d9a77f', '朱柏安', '7', '郭芝杏', '男', '2002/2/24', '石牌國中/八年級', '0970-068-073', '02-8809-5436', '1', 'N');
INSERT INTO `college_people` VALUES ('5a28a89b38b04bafa1b3fc966e847f9c', '簡得勝', '8', '彭子欣', '女', '1999/12/23', '稻江護家/高一', '0908-127-803', '02-2871-0501', '1', 'N');
INSERT INTO `college_people` VALUES ('5b4abfc18d2749f28ab588b1a3a5a768', '張道為', '7', '陳翰', '男', '2000/10/3', '薇閣國中/九年級', '0972-794-021', '02-2838-3620', '1', 'N');
INSERT INTO `college_people` VALUES ('5d112ab253d942a3a5ce356a48f572d4', '郭以謙', '12', '江翊銘', '男', '2003/2/28', '蘭雅國中/七年級', '0933-211-714', '02-2834-1452', '1', 'N');
INSERT INTO `college_people` VALUES ('5ece42ed79b844a5b910a12cce82a439', '譚可承', '3', '洪睿奕', '男', '2002/2/6', '恆毅國中/八年級', '0916-319-151', '02-2687-0071', '1', 'N');
INSERT INTO `college_people` VALUES ('60305b1bf16a4e8193a368593f07dffa', '許慕安', '1', '傅儒淵', '男', '2004/3/5', '鷺江國小/六年級', '0922-776-946', '02-2847-3471', '1', 'N');
INSERT INTO `college_people` VALUES ('631eff2454424a3ea1d76de07e33d748', '陶昱丞', '7', '伍皇誠', '男', '2001/1/1', '再興中學/九年級', '0910-432-100', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('6389f8cb58944365af6d972cdc0a5657', '曹舒雯', '6', '許茲庭', '女', '2004/4/19', '衛理女中/七年級', '0975-579-238', '02-2831-5110', '1', 'N');
INSERT INTO `college_people` VALUES ('63b8c7eaa1794de0ad7bb3ed877d7c85', '陳煜澄', '7', '伍皇誠', '男', '2003/10/5', '芝山國小/六年級', '無', '02-2838-0015', '1', 'N');
INSERT INTO `college_people` VALUES ('66011f07de994df7a0cf665169b10df5', '徐威凱', '5', '蔡加榮', '男', '2001/11/7', '陽明國中/二年級', '0939-001-665', '02-2880-3590', '1', 'N');
INSERT INTO `college_people` VALUES ('6664af8469e34ff6a72bc24e68cc3805', '李雅婷', '4', '李雅婷', '女', '1991/5/19', '北市大/碩二年級', '0925-7171-362', '02-8509-8966', '2', 'N');
INSERT INTO `college_people` VALUES ('6696d3698c2f401b90596daf1b66e6a6', '黃詩涵', '8', '楊曉菁', '女', '1994/3/3', '台北建教/四年級', '0975-420-679', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('66d8455d796b4004917e0c53375d56ab', '廖宜軒', '3', '洪睿奕', '男', '2000/5/10', '泰北高中/一年級', '0929-160-510', '02-2880-5537', '1', 'N');
INSERT INTO `college_people` VALUES ('67f9f4f2bd694824ad512eb849b167bf', '宋柏緯', '7', '徐東立', '男', '2000/3/6', '開南高工/ 一年級', '0926-306-040', '02-2643-0766', '1', 'N');
INSERT INTO `college_people` VALUES ('683a010da4814a6a93b5af4d4370b700', '高英凱', '12', '柏泰年', '男', '1998/6/24', '復興高中/二年級', '0920-873-393', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('698fedbe96f34c4ea3aa301bb9a972f2', '曾世順', '1', '傅儒淵', '男', '2002/3/1', '鳳林國中/二年級', '無', '03-3874-1119', '1', 'N');
INSERT INTO `college_people` VALUES ('6b8470df867648388067f147e00ce791', '洪書韋', '3', '汪榮章', '男', '2001/4/6', '百齡國中/九年級', '0958-187-066', '02-2883-8724', '1', 'N');
INSERT INTO `college_people` VALUES ('6bc2028c4a5c4c948ccb9c243ea58084', '林雨薇', '7', '葉俊毅', '女', '1997/3/27', '耕莘健康管理專科/四年級', '0965-482-570', '03-491-2612', '2', 'N');
INSERT INTO `college_people` VALUES ('6c1a7855801d4ccdae3892d85121fd9b', '畢學恩', '7', '伍皇誠', '男', '2003/6/21', '石牌國中/七年級', '0975-160-767', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('6cb2a94fa728403982ecc0cf3b69aec0', '蔡家明', '3', '洪睿奕', '男', '2000/12/25', '陽明國中/九年級', '0983-734-156', '02-2883-2934', '1', 'N');
INSERT INTO `college_people` VALUES ('6d25a894d2604d3488988f7265035c9f', '韓寬奕', '3', '張培濬', '男', '2002/2/14', '方濟中學/八年級', '0911-021-442', '02-2633-8765', '1', 'N');
INSERT INTO `college_people` VALUES ('6d3352fe959043b991a3e287ec7661c3', '葉聿軒', '7', '伍皇誠', '男', '2001/1/10', '成淵高中(國中部)/九年級', '0936-132-383', '02-2553-2997', '1', 'N');
INSERT INTO `college_people` VALUES ('6d99c709cf85427fa5fa78d7d1add4e8', '陳冠廷', '5', '蔡加榮', '男', '2002/8/10', '天母國中/八年級', '0926-910-810', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('7096631b4e814461a51cac8a6bc289f0', '林紫盈', '8', '楊曉菁', '女', '1995/8/26', '銘傳大學/三年級', '0905-474-470', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('70cf1a1b3f404efb84ba65dccd49ea75', '陳雨晞', '11', '蔡昀倢', '女', '2003/4/30', '林口國中/七年級', '0938-071-671', '02-2600-8060', '1', 'N');
INSERT INTO `college_people` VALUES ('714ce4c5b33647ab8f364dadce0a19ce', '張維森', '3', '張培濬', '男', '無', '士林國中/一年級', '無', '02-2835-3727', '1', 'N');
INSERT INTO `college_people` VALUES ('7184199f62254b5d8676e03647254c4a', '談敬雅', '6', '葉能', '女', '1997/6/11', '實踐大學/一年級', '0956-186-144', '07-582-8169', '2', 'N');
INSERT INTO `college_people` VALUES ('729902710c3c49be94ca8f0d4ed732c4', '蔡雅婷', '8', '楊曉菁', '女', '1995/9/30', '銘傳大學/二年級', '0978-553-800', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('730e9015bfb3434bb7c68a2ff83a3038', '劉巧涵', '11', '萬祈', '女', '2000/4/21', '麗山高中/一年級', '0936-244-895', '02-2791-2740', '1', 'N');
INSERT INTO `college_people` VALUES ('73551123366b496b8bec2db6568a7ea5', '郭力誠', '3', '汪榮章', '男', '1997/7/4', '文化大學/一年級', '0970-228-352', '07-5880408', '2', 'N');
INSERT INTO `college_people` VALUES ('73fca92c2ffb4ed6a172fff059be7f1b', '楊心謙', '5', '蔡加榮', '男', '2002/12/17', '天母國中/七年級', '0965-648-710', '02-22871967', '1', 'N');
INSERT INTO `college_people` VALUES ('7456f594359345f3b94ec46bc30d46a0', '楊潔安', '10', '江奕緯', '女', '1994/8/13', '台北市立大學/三年級', '0963-186-105', '02-2882-2855', '2', 'N');
INSERT INTO `college_people` VALUES ('74fddaeba72546c5ab51f28875b8dcd1', '連翊琳', '10', '黃郁婷', '女', '1997/11/7', '能仁家商/三年級', '0988-527-076', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('7537597d86a444e88bc8110505519da6', '邱兆偉', '7', '陳齊偉', '男', '1997/2/21', '台科大/一年級', '0937-431-470', '07-386-9353', '1', 'Y');
INSERT INTO `college_people` VALUES ('75ba367b11064db28b0bf42d4c726a84', '袁永愛', '4', '洪宇蕎', '女', '2003/9/23', '逸仙國小/六年級', '0931-845-991', '02-2898-1161', '1', 'N');
INSERT INTO `college_people` VALUES ('75e48395949c4b459a9e7a46bcb59870', '陳政浩', '1', '傅儒淵', '男', '2004/5/16', '大榮國小/六年級', '0911-273-702', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('772fb7f8ac9449d296aab0d978f3ffa0', '高芷婕', '8', '張嘉文', '女', '2001/4/25', '中和國中/九年級', '0988-883-751', '02-2941-8254', '1', 'N');
INSERT INTO `college_people` VALUES ('777ba550e4d64589b958d1397583129b', '李韶哲', '1', '傅儒淵', '男', '2003/3/20', '石牌國中/七年級', '0922-273-183', '02-2822-6630', '1', 'N');
INSERT INTO `college_people` VALUES ('77f5b1a492954906939bea5dbf890105', '李安妤', '8', '彭子欣', '女', '2000/12/10', '士林國中/九年級', '0985-728-680', '02-2812-6316', '1', 'N');
INSERT INTO `college_people` VALUES ('78e99ae9d0a5412cad9f07c1c29917ad', '沈揚哲', '7', '徐東立', '男', '1995/5/22', '實踐大學/三年級', '0929-475-678', '02-2892-2463', '2', 'N');
INSERT INTO `college_people` VALUES ('79175ef5feec44d08fb8bf5fb13a77c5', '陳旻翔', '3', '汪榮章', '男', '2002/7/24', '百齡國中/八年級', '0988-312-543', '02-2885-3429', '1', 'N');
INSERT INTO `college_people` VALUES ('798d77d5451a4f0dace6392ccaecdded', '蔡乃禾', '6', '許茲庭', '女', '2003/6/10', '基隆中正國中/七年級', '0984-315-455', '02-2465-8845', '1', 'N');
INSERT INTO `college_people` VALUES ('79f7ef17fdbf4b9ba1274af96ef1d80e', '李效燁', '北投', '嬥臻', '男', '2003/10/15', '北投國小/六年級', '0963-581-326', '02-2892-2655', '1', 'N');
INSERT INTO `college_people` VALUES ('7a117ebfeb1a4cd781ed8ed20a0c80b2', '陳冠志', '12', '陳傑恩', '男', '2002/7/9', '陽明高中(國中部)/八年級', '0975-200-753', '02-8811-2726', '1', 'N');
INSERT INTO `college_people` VALUES ('7bc038c6334c448584bff2b4f6b36ca5', '吳鈺渟', '8', '吳蘊庭', '女', '1994/5/2', '銘傳大學/四年級', '0988-613-245', '037-476-323', '2', 'N');
INSERT INTO `college_people` VALUES ('7e13c58f0c93472e8cdbcec5d4467785', '袁逸庭', '10', '蔡幸怡', '女', '2002/6/25', '薇閣國中/八年級', '0918-877-441', '02-2877-1919', '1', 'N');
INSERT INTO `college_people` VALUES ('7f26f0f785a74ef18ba5eff491f29e1a', '余汶柔', '4', '無', '女', '1989/7/25', '', '0989-915-117', '02-2811-0958', '1', 'N');
INSERT INTO `college_people` VALUES ('813ce27aa20d4a6c9d325234f2f7d966', '陳希', '9', '吳丞治', '男', '2003/12/15', '石牌國小/六年級', '0928-550-591', '02-2825-0607', '1', 'N');
INSERT INTO `college_people` VALUES ('81d45c7857ce4eeea416ea7a6adb552d', '盧沛璇', '10', '蔡幸怡', '女', '2001/11/21', '石牌國中/八年級', '0920-505-510', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('83bf6c2d98874d37b736228fe9b61ec0', '廖啟淮', '12', '柏泰年', '男', '1998/8/6', '基隆海事/三年級', '0905-168-957', '02-2633-1396', '2', 'N');
INSERT INTO `college_people` VALUES ('88b4280096cd4146a8cc32b53eddcf76', '林宸伃', '8', '張舒畬', '女', '2004/5/23', '八里國中/七年級', '0911-566-715', '02-2619-2430', '1', 'N');
INSERT INTO `college_people` VALUES ('895ac7c8aac54de496abf29769b6829e', '李彥儒', '3', '陳彥儒', '男', '2003/2/22', '石牌國中/七年級', '0909-632-980', '02-2835-6235', '1', 'N');
INSERT INTO `college_people` VALUES ('8cf58a61603948dbaa935ee255ec1873', '潘亞昇', '7', '徐東立', '男', '2001/4/4', '重慶國中/九年級 ', '0970-541-920', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('8f3b012725ca4d45adf6e5a9cdeccc66', '唐琦婷', '6', '葉能', '女', '1997/10/27', '(高雄)師大附中/三年級', '0911-160-119', '07-364-6709', '2', 'N');
INSERT INTO `college_people` VALUES ('904a192614e94d5ca04fdf4897bc935a', '陳孟謙', '9', '吳丞治', '男', '2001/9/14', '石牌國中/八年級', '0981-663-325', '08-958698', '1', 'N');
INSERT INTO `college_people` VALUES ('906737e8da8849b58af6e2fc2db0795f', '吳鴻凱', '5', '彭柏霖', '男', '1997/6/6', '黎明科技學院/專四', '0983-377-775', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('90742886e8b446ae952536d760983879', '徐彩泰', '5', '彭柏霖', '男', '1999/11/8', '淡水商工/二年級', '0905-070-958', '02-2821-6708', '2', 'N');
INSERT INTO `college_people` VALUES ('91f60fc5064a4c198cc766ab6cb751a2', '王凱宜', '8', '吳蘊庭', '女', '1993/12/19', '真理大學/大四', '0976-843-096', '02-8992-4220', '2', 'Y');
INSERT INTO `college_people` VALUES ('9299dcc670374498a0e3a1f61ab44a38', '吳艾臨', '6', '如婷', '女', '88.9.14', '景文高中/一年級', '0971-256-257', '02-8983-3772', '1', 'N');
INSERT INTO `college_people` VALUES ('92b8c1f9d91345b5bb59b3b8c0547be5', '陳懷恩', '1', '傅儒淵', '男', '2003/9/29', '大榮國小/六年級', '0955-762-774', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('935dfcb96ea24143b14ba5f19db77de3', '趙乙儒', '8', '張嘉文', '女', '2001/6/15', '中和國中/九年級', '0988-187-690', '02-2944-6398', '1', 'N');
INSERT INTO `college_people` VALUES ('951477f25f7d4ce0bfd6ee8fce2835d5', '黃煜翔', '7', '伍皇誠', '男', '2003/1/2', '江翠國中/七年級', '無', '02-8258-2832', '1', 'N');
INSERT INTO `college_people` VALUES ('96d8f6ec73fc4cab8f042bc790168554', '張榮恩', '3', '汪榮章', '男', '2002/4/1', '大安國中/八年級', '0982-242-750', '02-2245-2483', '1', 'N');
INSERT INTO `college_people` VALUES ('981b65a6840a4ec18c3cb88f665a5882', '紀潔', '7', '郭芝杏', '女', '2002/7/20', '北投國中/二年級', '0916-609-310', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('986c3c4d96174fa59287bd3d3a1ab5cd', '鍾函均', '6', '鄭如婷', '女', '2001/2/26', '秀峰高中(國中部)', '0956-505-756', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('9a333eb4960149fba9c743f45192697d', '余采珉', '3', '陳彥儒', '男', '1990/9/20', '', '0973-060-774', '02-2811-0958', '1', 'N');
INSERT INTO `college_people` VALUES ('9abb0d4c6ccd49f5b58c046fcde5e8dc', '王紹妤', '8', '張嘉文', '女', '2000/11/17', '百齡國中/九年級', '0938-719-179', '02-2882-5104', '1', 'N');
INSERT INTO `college_people` VALUES ('9ae8276a41494793943f4367462388f0', '曾成義', '3', '張培濬', '男', '2001/8/4', '碧華國中/三年級', '0983-727-620', '02-2857-1783', '1', 'N');
INSERT INTO `college_people` VALUES ('9cf34c99828346c4bf5281ce04c10da5', '呂裔祥', '12', '陳傑恩', '男', '1999/12/4', '百齡高中/一年級', '0920-773-958', '02-2832-9791', '2', 'N');
INSERT INTO `college_people` VALUES ('9d35e24ab051489e91c393eb991e0d24', '詹欣茹', '1', '傅儒淵', '女', '2004/4/30', '鳳林國中/七年級', '無', '03-8763400', '1', 'N');
INSERT INTO `college_people` VALUES ('9fda34c991094cb282572c74d2c1c245', '何利雪莉', '2', '盧思妘', '女', '1996/9/16', '實踐大學/一年級', '0988-285-202', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('a031a42894f9451f917333d41db556aa', '陳澤元', '3', '郭力誠', '男', '2004/4/30', '永安國小/六年級', '0970-777-905', '02-8502-9190', '1', 'N');
INSERT INTO `college_people` VALUES ('a208112004fc47ec8e5691e1e54ce5c3', '許涵喻', '8', '張嘉文', '女', '2000/10/19', '北安國中/九年級', '0989-111-255', '02-25919333', '1', 'N');
INSERT INTO `college_people` VALUES ('a38b2b4095ba4db89406e39ecb8c9297', '郭沛余', '7', '郭芝杏', '女', '2000/12/3', '台北歐洲學校/九年級', '0909-135-420', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('a5a28ceca6594fdc87d1d064f40674ac', '陳永安', '7', '伍皇誠', '男', '2003/4/2', '淡江國中/七年級', '無', '02-2823-1518', '1', 'N');
INSERT INTO `college_people` VALUES ('a5ee3d5b4c274eaeaa1b56d0251b9e70', '賴耶安', '6', '江詠忻', '女', '2000/10/26', '懷生國中/九年級', '0988-003-592', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('a62a8fed2797446cb193060a60b4b537', '李宛姍', '4', '鄭捷予', '女', '2000/8/24', '耕莘專校/一年級', '0905-669-833', '02-2812-4859', '1', 'N');
INSERT INTO `college_people` VALUES ('a6af8339c75241a9af7531422f3cfda7', '楊大利', '7', '徐東立', '男', '2003/7/14', '景文國中/八年級', '0938-758-997', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('a6d1a8196907436396c0b26c3dd6359d', '莊博勝', '7', '莊博勝', '男', '1987/3/22', '社青', '0926-302-107', '無', '1', 'Y');
INSERT INTO `college_people` VALUES ('a6ff825f7c3640d9a9524836ddc4e703', '張臣曜', '3', '陳彥儒', '男', '2002/6/4', '景文中學/八年級', '0963-820-470', '02-2732-4486', '1', 'N');
INSERT INTO `college_people` VALUES ('a80dfe09f7f24d9ebaa10e83efdf5f36', '高語箴', '3', '陳虹升', '女', '1997/8/27', '文化大學/一年級', '0916-257-053', '08-735-3996', '2', 'N');
INSERT INTO `college_people` VALUES ('a8c72fa316ad4a6bbadc83ba267ee196', '陳冠儒', '3', '陳彥儒', '男', '2001/12/15', '石牌國中/八年級', '0979-661-215', '02-2823-4847', '1', 'N');
INSERT INTO `college_people` VALUES ('a933435be1724d8290a8b8a56f62048d', '林恩緯', '12', '陳傑恩', '男', '2003/2/28', '瑠公國中/七年級', '0929-119-396', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('a9339eb9bf2748778c1f27fe3e06866a', '譚可忠', '3', '洪睿奕', '男', '2002/2/6', '恆毅國中/八年級', '0916-217-027', '02-2687-0071', '1', 'N');
INSERT INTO `college_people` VALUES ('a9d54b8f4e524308a6aed781bc248dcc', '吳其芬', '8', '吳其芬', '女', '83.7.20', '台師大/四年級', '0987-774-752', '05-788-1612', '1', 'Y');
INSERT INTO `college_people` VALUES ('aa2adfb030da42f9ad2fd5bdc3341ac8', '盧友晨', '7', '徐東立', '男', '2004/3/21', '三和國中/七年級', '0933-228815', '02-2974-3241', '1', 'N');
INSERT INTO `college_people` VALUES ('aa3b880220c04e869f15db5409e6a533', '黃友亮', '5', '彭柏霖', '男', '1993/2/2', '海洋大學/碩一', '0931-128-926', '02-2822-5513', '2', 'N');
INSERT INTO `college_people` VALUES ('ac6ed6cc374f4f46a5c98a71ef06554e', '林忻澤', '3', '陳彥儒', '男', '2002/1/5', '奎山國中/八年級', '0932-396-147', '02-2898-8525', '1', 'N');
INSERT INTO `college_people` VALUES ('ac91aa20749b4563baaae3c044b74d34', '沈文媛', '8', '吳蘊庭', '女', '1995/8/18', '高醫牙醫/三年級', '0988-265-896', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('acc0debdf2fe41d2b78b9c21b4095883', '王寶華', '3', '洪睿奕', '男', '2000/8/25', '師大附中(國中部)/一年級', '0982-935-023', '02-2932-6722', '1', 'N');
INSERT INTO `college_people` VALUES ('ad77a06f883a45f18a869e49fe527c25', '張揚', '7', '徐東立', '男', '88.5.25', '台北商業大學/二年級', '0960-220-556', '無', '1', 'Y');
INSERT INTO `college_people` VALUES ('ad8992bfd8d44b61bf7da698bad49c76', '王琳皓', '4', '林主恩', '女', '2002/12/9', '南門國中/七年級', '0922-126-496', '02-2371-7663', '1', 'N');
INSERT INTO `college_people` VALUES ('adde3849a403419d87b02a35e99504a5', '陳信恩', '10', '蔡幸怡', '女', '2002/2/1', '百齡國中/八年級', '0936-180-950', '02-2883-1731', '1', 'N');
INSERT INTO `college_people` VALUES ('aea007ac6b9741b3885b90339c9ecc62', '鄭渝錚', '8', '陳冠禎', '女', '1999/3/15', '莊敬高職/二年級', '0956-990-315', '02-8809-6281', '2', 'N');
INSERT INTO `college_people` VALUES ('aeb9944ee93e4de4a1429d2ab7409e66', '陳翔恩', '12', '陳傑恩', '男', '2001/12/9', '至善國中/八年級', '無', '02-2883-6257', '1', 'N');
INSERT INTO `college_people` VALUES ('af2a5e97c8fb4ac9a5ed10e89fb81075', '廖紹博', '3', '洪睿奕', '男', '1998/10/1', '台北海院/專一', '0930-287-101', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('af80d01488d6494bba0b1eda6fec913c', '徐鐽睿', '7', '徐東立', '男', '2003/7/1', '延平中學/七年級', '0983-058-555', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('afc16029852d4c24a19f07b39e2530ab', '藍約文', '4', '林主恩', '女', '2003/11/11', '台北美國學校/六年級', '0970-931-050', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('b059105ddc854a0db63ccfb4287e72c5', '劉紀漢', '12', '江翊銘', '男', '2001/1/30', '百齡國中/九年級', '0983-368-686', '02-2836-7698', '1', 'N');
INSERT INTO `college_people` VALUES ('b09c35ff17cd49cdafcaeef8bcce41b1', ' 丁昕', '8', '彭子欣', '女', '1999/10/2', '淡水商工/一年級', '0910-836-780', '02-2820-7020', '1', 'N');
INSERT INTO `college_people` VALUES ('b19809e679f4410d8ac8927dcc1e5f04', '沈常明', '草屯', '皆儒', '女', '2000/10/12', '旭光國中/三年級', '0984-264-434', '049-2336209', '1', 'N');
INSERT INTO `college_people` VALUES ('b2e6e8f8351a4c50b264cd932b834896', '陳原蜂', '3', '洪睿奕', '男', '2001/10/31', '蘆洲國中/八年級', '0916-954-175', '02-8286-2634', '1', 'N');
INSERT INTO `college_people` VALUES ('b3b5186765c54c8db2a4cc6416e8798d', '張詩婕', '4', '鄭婉儀', '女', '1992/3/24', '社青', '0927-894-788', '02-2314-8518', '2', 'N');
INSERT INTO `college_people` VALUES ('b51ac4a82cae4f15b56e70b66f4e4ac6', '曾宏杰', '1', '傅儒淵', '男', '2002/7/24', '鳳林國中/二年級', '無', '03-3874-1205', '1', 'N');
INSERT INTO `college_people` VALUES ('b526d5dbd8a54fc988d8cdd4fc682d1d', '洪奕涵', '11', '萬祈', '女', '2000/8/1', '新莊高中/二年級', '0938-752-820', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('b6aeb55588c141ea9798047ff7e47f1d', '張翟恩', '5', '聶家祺', '男', '2001/7/9', '福和國中/三年級', '0982-015-367', '0975-852-806', '1', 'N');
INSERT INTO `college_people` VALUES ('b77c3ab9ba904eaf8f3e7ce96f9f2ce9', '周以欣', '6', '黃少筠', '女', '2004/4/28', '桃源國小/六年級', '0937-517-765', '02-8809-5841', '1', 'N');
INSERT INTO `college_people` VALUES ('b7e424848cc84761974202218fc9ffaa', '邱軍瑋', '12', '柏泰年', '男', '1999/1/22', '大安高工/二年級', '0932-168-270', '02-2659-5782', '1', 'N');
INSERT INTO `college_people` VALUES ('b8adb98275e14eb6b4bd152eabcbaea3', '郝羿婷', '8', '張嘉文', '女', '2001/8/4', '仁愛國中/九年級', '0918-104-650', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('b8b56f47198b45cd81838817f9d2955f', '賴冠伶', '10', '江奕緯', '女', '1994/5/20', '華梵大學/三年級', '0971-239-112', '02-2620-3698', '2', 'N');
INSERT INTO `college_people` VALUES ('b99348d4f558417982d368dce778350e', '韓友真', '5', '蔡加榮', '男', '2000/5/23', '南港高中/一年級', '0911-205-325', '02-2633-8765', '1', 'N');
INSERT INTO `college_people` VALUES ('b99ad517f19d4baf87845d40b17bc7c8', '謝婷締', '草屯', '皆儒', '女', '2003/6/28', '中興國中/一年級', '0979-371-362', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('b9daeac80a9d45e9b9eee2133f8551f2', '許宇呈', '9', '李永恩', '男', '2001/10/17', '關渡國中/二年級', '0916-527-100', '02-2809-2636', '1', 'N');
INSERT INTO `college_people` VALUES ('b9f2c6bb10d4485792e339f6ac9e77a5', '徐筠棋', '6', '黃少筠', '女', '2000/10/21', '溪崑國中/九年級', '0976-555-531', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('bae369042d9d48adb1c0737f2a5573a3', '張博坤', '5', '蔡加榮', '男', '2003/1/26', '中正國中/一年級', '0916-642-277', '02-2274-0254', '1', 'N');
INSERT INTO `college_people` VALUES ('bb553949e819483493d147d8973a07e4', '陳謙妤', '8', '張嘉文', '女', '2001/2/22', '北安國中/九年級', '0922-273-722', '02-28411019', '1', 'N');
INSERT INTO `college_people` VALUES ('bbc1475a9fa14d65a5b4e48a0e4f8f4c', '黃沛璇', '8', '陳冠禎', '女', '1995/1/26', '文化大學/二年級', '0976-048-126', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('bbea6bf1418f4fb79e78d5fc5237c176', '梁宇柏', '7', '伍皇誠', '男', '2003/9/11', '福林國小/六年級', '0909-529-183', '02-2834-3316', '1', 'N');
INSERT INTO `college_people` VALUES ('bbf2993a9ed44e37bf7fb1403a8bde6d', '文禹婷', '6', '鄭如婷', '女', '2001/2/26', '士林國中/三年級', '0930-164-088', '02-2812-6564', '1', 'N');
INSERT INTO `college_people` VALUES ('bc9461cf350944f09d01d6212ad57c87', '吳家妮', '7', '葉俊毅', '女', '1997/6/21', '耕莘健康管理專科/五年級', '0939-130-621', '02-2671-3171', '2', 'N');
INSERT INTO `college_people` VALUES ('bd976107f444463d85f9e1dd7bf00e74', '林政崴', '5', '蔡加榮', '男', '2000/7/25', '開南商工/一年級', '0973-051-156', '02-2883-3111', '1', 'N');
INSERT INTO `college_people` VALUES ('bfcee17b70474bcd8214fac9459038ec', '陳柔安', '11', '蔡昀倢', '女', '2002/12/1', '大直國中/七年級', '0978-420-887', '02-8751-8511', '1', 'N');
INSERT INTO `college_people` VALUES ('c0ab2a25bdec42069a664cfc08985161', '王信翰', '5', '蔡加榮', '男', '1999/6/17', '泰北高中/二年級', '0917-748-252', '02-2595-0960', '1', 'N');
INSERT INTO `college_people` VALUES ('c1f5ce3abe604b1da8028ebacbbbcd35', '吳鋐岳', '7', '羅紹瑋', '男', '2003/5/7', '明德國中/七年級', '0973-628-537', '02-2892-6136', '1', 'N');
INSERT INTO `college_people` VALUES ('c40a8352527d4401a30f73d6f76cf17c', '洪語心', '8', '張嘉文', '女', '2001/1/19', '士林國中/九年級', '0930-698-575', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('c5c8933e454f4fbb934ad8f9c599dcae', '王萃宇', '7', '徐東立', '男', '2002/1/17', '石牌國中/三年級', '0978-222-753', '02-2898-3216', '1', 'N');
INSERT INTO `college_people` VALUES ('c6b05e7a229a4858b488aab820bd0798', '蔡明峰', '7', '徐東立', '男', '2001/3/8', '蘭雅國中/九年級', '0952-896-628', '02-2831-0905', '1', 'N');
INSERT INTO `college_people` VALUES ('c84a6bef06fd4d0ab8a4fc48e3a31149', '王信博', '12', '柏泰年', '男', '1998/2/23', '大安高工/三年級', '0989-437-707', '02-2820-0431', '2', 'N');
INSERT INTO `college_people` VALUES ('c97069a68e02418286386ee2e3583d9c', '鄭宇倢', '11', '林思吟', '女', '1996/10/15', '中原大學/一年級', '0921-150-117', '02-2822-5345', '2', 'N');
INSERT INTO `college_people` VALUES ('c9c39e3703ca4325a94d46c4ff459a67', '劉卓祺', '8', '吳其芬', '女', '2001/5/28', '奎山國中/九年級', '0961-518-526', '02-2823-0916', '1', 'N');
INSERT INTO `college_people` VALUES ('ca2ea165f5024e52a5d83a87c6563b7d', '江元廷', '12', '陳傑恩', '男', '2002/11/6', '大安國中/八年級', '0972-907-287', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('cc1f1ef751084726ab376f21c70ae07a', '粟柏霖', '9', '吳丞治', '男', '2003/2/6', '石牌國中/七年級', '0932-255-549', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('cd49453cdf974d4288bb2305cab72775', '成宇平', '1', '傅儒淵', '男', '2000/7/25', '基隆高中/一年級', '0970-927-568', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('cf6b09def97c483091f1e1a8a79ec92b', '王亭雅', '北投', '嬥臻', '女', '2003/12/30', '北投國小/六年級', '0921-812-139', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('d0bc9dda356d4667a3dff9cec16b6d29', '俞力恩', '7', '陳翰', '男', '2004/2/28', '蘭雅國小/六年級', '0988-913-436', '02-2838-2427', '1', 'N');
INSERT INTO `college_people` VALUES ('d0e62371631045acbee559d0549c7dc7', '周志翔', '12', '江翊銘', '男', '2001/7/15', '百齡國中/九年級', '0963-534-481', '02-2883-5127', '1', 'N');
INSERT INTO `college_people` VALUES ('d102ee072104413d924aa5353ebc2596', '孫緒儒', '4', '呂欣虹', '女', '2002/4/24', '東安國中/八年級', '0958-181-318', '0903-334-243', '1', 'N');
INSERT INTO `college_people` VALUES ('d1994b4453bf4820a5adddc35690ce6f', '吳祐丞', '1', '傅儒淵', '男', '2003/2/27', '鳳林國中/七年級', '0965-406-683', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('d2869b70e183422a83e540885110ac9e', '謝佑明', '7', '伍皇誠', '男', '2003/3/25', '士林國中/七年級', '無', '02-8811-3552', '1', 'N');
INSERT INTO `college_people` VALUES ('d4088ef4a53d44e9b38c1740bf164edd', '李翎瑄', '7', '郭芝杏', '女', '2002/11/19', '重慶國中/七年級', '0958-825-080', '02-2592-1510', '1', 'N');
INSERT INTO `college_people` VALUES ('d55f43a8ced3400f99eacd5ad91ab169', '楊舒涵', '6', '嵇鈺淳', '女', '2002/1/11', '士林國中/八年級', '0955-750-077', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('d56e2488234d4bc8b6ff44dc0a39355c', '黃宇祥', '3', '洪睿奕', '男', '2002/1/15', '國中/八年級', '0988-151-732', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('d59ba0ea08884e569f9e6e061474811f', '蔡幸怡', '10', '蔡幸怡', '女', '1994/10/26', '實踐/大三', '0975-928-600', '無', '1', 'Y');
INSERT INTO `college_people` VALUES ('d66b8907beb54b0db5960342cfe5149d', '蔡尚宏', '5', '蔡加榮', '男', '1999/12/30', '開南高中/一年級', '0932-196-890', '02-2883-2285', '1', 'N');
INSERT INTO `college_people` VALUES ('d704a176f0c64fb4b86200ebe97a0d99', '唐文', '6', '嵇鈺淳', '女', '2001/11/27', '北安國中/八年級', '0925-283-518', '02-2532-2532', '1', 'N');
INSERT INTO `college_people` VALUES ('d7ae4552d88441feab67c86685d411f4', '黃禾凱', '12', '江翊銘', '男', '1999/11/13', '百齡國中/九年級', '無', '02-28113628', '1', 'N');
INSERT INTO `college_people` VALUES ('d8c15159fce14d7da3c40a32f744c6d3', '陳雲茵', '10', '郭奕君', '女', '2003/8/30', '百齡國中/七年級', '0931-033-113', '02-2881-7393', '1', 'N');
INSERT INTO `college_people` VALUES ('d9431e93464041e9a3d022a36133b32c', '蔡明達', '3', '汪榮章', '男', '2000/6/28', '麗山高中/一年級', '0988-229-246', '02-28937818', '1', 'N');
INSERT INTO `college_people` VALUES ('da033f68471a426aac55db44f64de8df', '潘玟妮', '10', '蔡幸怡', '女', '2001/9/13', '石牌國中/八年級', '0978-979-390', '02-2891-2477', '1', 'N');
INSERT INTO `college_people` VALUES ('da8e576b65244772a868439f36211477', '王牧華', '5', '蔡加榮', '男', '2001/11/28', '淡江中學/八年級', '0931-250-860', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('daba64f1479d4a4b8b95c95f6949c48c', '李祺', '12', '江翊銘', '男', '2003/3/20', '明德國中/七年級', '0975-503-563', '02-2897-5547', '1', 'N');
INSERT INTO `college_people` VALUES ('db7652b8a9ab42c78160b1c330462611', '林銘杰', '3', '洪睿奕', '男', '2002/4/10', '國中/八年級', '0988-151-732', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('dbd81304ad3640a0a09b777debdad534', '郭明勳', '5', '彭柏霖', '男', '1996/12/31', '輔仁大學/一年級', '0938-380-215', '02-2822-1245', '2', 'N');
INSERT INTO `college_people` VALUES ('dcaf0b014e214045be3d5c95385564ab', '王湘婷', '10', '蔡幸怡', '女', '2001/10/23', '石牌國中/八年級', '0961-025-226', '02-2896-5977', '1', 'N');
INSERT INTO `college_people` VALUES ('defbe50e30f14756bd439c2149e2225f', '韓松庭', '3', '張培濬', '男', '2001/8/18', '新興國中/三年級', '0918-081-860', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('e13e5061e68c4cf8be530dd4b55c7c93', '楊心柔', '8', '彭子欣', '女', '2001/3/19', '南港國中/九年級', '0928-371-474', '02-2789-3627', '1', 'N');
INSERT INTO `college_people` VALUES ('e2b04547e47b45a8873857aa8148c853', '張琪旎', '10', '蔡幸怡', '女', '2002/7/12', '百齡國中/八年級', '0935-655-875', '02-2885-5350', '1', 'N');
INSERT INTO `college_people` VALUES ('e34859f16cee41a796ba5285b29743e1', '蕭以琳', '北投', '嬥臻', '女', '2003/1/26', '北投國小/六年級', '0958-788-866', '02-2897-9602', '1', 'N');
INSERT INTO `college_people` VALUES ('e35edbba761246a9b2346b4b3fd0bf54', '梁宇淵', '3', '洪睿奕', '男', '2000/9/30', '至善國中/三年級', '0970-083-971', '02-2834-3316', '1', 'N');
INSERT INTO `college_people` VALUES ('e3a7c22b799b4fe8810f6373fdbc3839', '張榮耀', '3', '汪榮章', '男', '2003/9/13', '大安國中/七年級', '0913-202-070', '02-2245-2483', '1', 'N');
INSERT INTO `college_people` VALUES ('e3c09131628343958f183694f9e2d5b5', '黃郁婷', '10', '黃郁婷', '女', '1990/12/25', '社青', '0912-759-095', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('e4ffadd130894894a3566cbe60050ca9', '傅澤凱', '1', '傅儒淵', '男', '2004/4/16', '積穗國小', '0920-066-986', '02-8227-5081', '1', 'N');
INSERT INTO `college_people` VALUES ('e5a77dc478f8486cb7e6bdb0a4ce07e0', '王柏諺', '3', '張培濬', '男', '2001/11/20', '淡水國中/八年級', '0981-173-126', '02-2812-3576', '1', 'N');
INSERT INTO `college_people` VALUES ('e65eaf99d0554478aefd32a73b605529', '杜岳臻', '3', '胡廣平', '男', '1999/11/23', '育達高職/高一', '0963-365-355', '02-88615009', '1', 'N');
INSERT INTO `college_people` VALUES ('e68d9079dbcb4b47bc621488c853e495', '戴中璽', '9', '黃俊峰', '男', '1998/4/26', '聖約翰科大/一年級', '0935-375-015', '02-2886-2305', '2', 'N');
INSERT INTO `college_people` VALUES ('e73f9d288618482c96926c41c0f7a4d5', '孫翊軒', '3', '洪睿奕', '男', '2001/9/21', '百齡國中/八年級', '0955-948-483', '02-2883-4393', '1', 'N');
INSERT INTO `college_people` VALUES ('e800a8b1287d4c0385d7553e7992d133', '藍芳怡', '7', '葉俊毅', '女', '1997/3/18', '耕莘健康管理專科/五年級', '0958-040-318', '02-2592-3991', '2', 'N');
INSERT INTO `college_people` VALUES ('eb50140933ce4efe96adbcd486f079cb', '紀德', '7', '郭芝杏', '女', '2004/1/9', '泉源國小/六年級', '無', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('ed4264a58d4549e5ac920bb07946ea05', '李世傑', '5', '彭柏霖', '男', '1996/7/13', '淡江大學/一年級', '0928-649-450', '02-2247-4771', '2', 'N');
INSERT INTO `college_people` VALUES ('eda34f5c44424cb0aeb2a02cb7bef85d', '劉仁怡', '10', '李星儀', '女', '2004/5/28', '長庚國小/六年級', '無', '03-3974618', '1', 'N');
INSERT INTO `college_people` VALUES ('edb9ecc947094e0ab8ad92ceec3b58b7', '江睿恩', '2', '王宣豫', '女', '2001/6/18', '北投國中/九年級', '0978-888-573', '02-2896-3699', '1', 'N');
INSERT INTO `college_people` VALUES ('ee226207c0a540749f11d88b307bb53b', '劉冠廷', '3', '洪睿奕', '男', '2001/12/31', '天母國中/八年級', '0936-321-905', '02-2857-7205', '1', 'N');
INSERT INTO `college_people` VALUES ('f00736bc7c59411f9ce1b76dc1cd1c15', '蔡敬', '3', '陳虹升', '男', '1997/3/23', '中原大學/一年級', '0935-532-271', '02-2619-4363', '2', 'N');
INSERT INTO `college_people` VALUES ('f10cba6b93a0407e81dbe8dc8b5b369a', '林禹柔', '6', '嵇鈺淳', '女', '2002/12/18', '士林國中/七年級', '0981-717-247', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('f12fbeba2a6941f2a515fb280662c2b8', '王緹雅', '8', '林韋伶', '女', '1997/5/13', 'UCI/大三', '0909-324-283', '02-2521-3836', '2', 'N');
INSERT INTO `college_people` VALUES ('f228c629a97049b49a69c0d86b2e38d7', '陳聖慧', '11', '林思吟', '女', '1996/3/17', '社青', '0917-716-083', '02-2436-2518', '2', 'N');
INSERT INTO `college_people` VALUES ('f2bdda4b9f1540f6aa1fb9e2cf4041c6', '李紹慈', '8', '張嘉文', '女', '2001/1/24', '大直國中/九年級', '0983-595-124', '02-2885-5506', '1', 'N');
INSERT INTO `college_people` VALUES ('f470009456714538a5470f0c96711f16', '傅筱晴', '8', '張嘉文', '女', '2000/10/25', '海山國中/九年級', '0981-693-005', '02-8227-5081', '1', 'N');
INSERT INTO `college_people` VALUES ('f482bb4ef2e14a62b1ab0e6da2171416', '葉嘉羽', '6', '黃少筠', '女', '2001/1/27', '石牌國中/九年級', '0930-543-546', '02-2808-0432', '1', 'N');
INSERT INTO `college_people` VALUES ('f6fa5e06ba0742fc9ac30e05affdf01e', '劉立約', '12', '何韋志', '男', '2004/8/4', '逸仙國小/六年級', '無', '02-2891-5517', '1', 'N');
INSERT INTO `college_people` VALUES ('f9fa97068a3240239f337f85245fdcf4', '林靖純', '10', '江奕緯', '女', '1998/1/25', '治平高中/三年級', '0987-910-125', '無', '2', 'N');
INSERT INTO `college_people` VALUES ('fa0f38c0120c467eb6cd6a2909b7a779', '阮沐恩', '9', '李宗哲', '女', '2002/8/7', '國外/十年級', '0984-099-993', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('fa79831f01c642d1956ccb92dc4ed7bf', '黃星儀', '11', '郭祈宣', '女', '2003/10/14', '青溪國小/六年期', '0912-518-778', '03-350-2103', '1', 'N');
INSERT INTO `college_people` VALUES ('fc461f8fd00842a3abc7c2a34eb9ee88', '劉強', '7', '郭芝杏', '男', '2002/9/4', '石牌國中/七年級', '0970-725-693', '02-2823-9442', '1', 'N');
INSERT INTO `college_people` VALUES ('fca2411a474f48b7abe38aa18e183817', '陳旻宜', '9', '葉亭瑩', '女', '2002/7/18', '長安國中/八年級', '0981-779-455', '無', '1', 'N');
INSERT INTO `college_people` VALUES ('fdc3c4e4f3824ea488b2821dd3f9333b', '鄭育彬', '8', '陳冠禎', '男', '1998/7/4', '中和高中/三年級', '0935-763-764', '02-3234-4406', '2', 'N');
INSERT INTO `college_people` VALUES ('fe2a4520a93e4fb8a636cb141e79a83b', '葉律岐', '12', '陳傑恩', '男', '2001/9/30', '萬芳中學/九年級', '0989-884-084', '02-2932-4715', '1', 'N');
INSERT INTO `college_people` VALUES ('fef67d0f225b41a4a4579d9f7772209c', '謝牧芸', '8', '張嘉文', '女', '2000/4/1', '南湖高中/一年級', '0976-000-236', '02-2662-8079', '1', 'N');

-- ----------------------------
-- Table structure for `comm`
-- ----------------------------
DROP TABLE IF EXISTS `comm`;
CREATE TABLE `comm` (
  `ID` char(32) NOT NULL,
  `NAME` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comm
-- ----------------------------
INSERT INTO `comm` VALUES ('WONMAIN0001', '成一牧區');
INSERT INTO `comm` VALUES ('WONMAIN0002', '成二牧區');
INSERT INTO `comm` VALUES ('WONMAIN0003', '成三牧區');

-- ----------------------------
-- Table structure for `contact`
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `ID` char(32) NOT NULL,
  `PID` char(32) NOT NULL,
  `NAME` varchar(32) NOT NULL,
  `TEL1` varchar(20) NOT NULL,
  `TEL2` varchar(20) NOT NULL,
  `ADDR` varchar(256) NOT NULL,
  `CREATE` datetime NOT NULL,
  `LAST_UPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `RELATION` varchar(64) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('contact_12345678', 'P_222222222', '陳爸', '982328533', '978899555', '台北市信義區地寶路120號', '2015-03-29 16:56:16', '2015-03-29 17:09:29', '');
INSERT INTO `contact` VALUES ('contact_12345679', 'P_222222222', '陳媽', '975577777', '982223333', '台北市中正區中正路12號', '2015-03-29 17:00:19', '2015-03-29 17:09:31', '');

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
-- Table structure for `main`
-- ----------------------------
DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `ID` char(32) NOT NULL,
  `NAME` text NOT NULL,
  `PIC` text NOT NULL,
  `TEL` varchar(12) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main
-- ----------------------------
INSERT INTO `main` VALUES ('CH201509061701', '士林', 'tet555', '555');

-- ----------------------------
-- Table structure for `people`
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `ID` char(32) NOT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `ROLE` tinyint(3) unsigned DEFAULT NULL,
  `STATUS` tinyint(3) unsigned DEFAULT NULL,
  `TEL1` varchar(20) DEFAULT NULL,
  `TEL2` varchar(20) DEFAULT NULL,
  `ADDR` varchar(256) DEFAULT NULL,
  `EMAIL` varchar(128) DEFAULT NULL,
  `COMM` varchar(255) DEFAULT NULL,
  `GROUP_ID` varchar(255) DEFAULT NULL,
  `EDU` tinyint(3) unsigned DEFAULT NULL,
  `SCHOOL` varchar(32) DEFAULT NULL,
  `GRADE` varchar(32) DEFAULT NULL,
  `WORSHIP` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `NOTE` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of people
-- ----------------------------
INSERT INTO `people` VALUES ('007d656adb224bcb800f5e3793626a03', '蔡希', '1', '2008-07-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0080243b51454440b5798e9464a53830', '汪盛安', '1', '2006-04-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('00ba375353034180865c9d2077e0aee9', '陳均綸', '1', '2004-07-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('00c2abbf8bb24aadbd174f79a3d904f6', '林亞帛', '1', '2006-11-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('01c53f866ade4793be43d3f94444ccf0', '郭天寶', '0', '2007-01-31 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('01d6c378a0ab4daaa85db9e248fd378b', '游婷安', '0', '2007-09-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('01ecdbcd8dbe4ebbac072d2375708f2b', '張錫安', '0', '2004-09-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('02386bab1fa8460a98c39f1ab7a763ea', '蔡睿宣', '1', '2004-06-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('02fe9bbc29544cfbb3c920673ab9aad6', '武瀚', '1', '2006-12-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('033018e741624d598e2056834ca02978', '吳沛融', '0', '2004-05-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('0342b56d7155474eb00a27471817ed08', '林彥薰', '1', '2006-10-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('04c6ed0481e64b0db0b3f52d93c5b6ab', '陳佳妤', '0', '2004-11-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('04cd2ed6038b4dc4bf495f06715d5e9c', '游德仁', '1', '2003-05-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('05034bff268d4db2a8092d6ed3b31fa8', '蔡依恩', '0', '2009-07-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('05428f62b01742be9928e4510f1812ec', '房奇臻', '0', '2008-10-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0603f07a33f346d89490ccfaad76d404', '李兆庭', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('061213b7ee6f40b29b500cbba5e720a3', '黃品叡', '1', '2009-01-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('06393d9dc6814c5381b20be1b3220ee9', '龔加榮', '1', '2008-12-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('06d5101d69f84ff6ba3be03c6e56730f', '徐丞毅', '1', '2007-09-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0761a09d00dd4f148ad745a85524d421', '張家綺', '0', '2008-06-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('07cf7f559aa6403e84fb9d0565844b61', '陳希', '1', '2003-12-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('0814890392ef45a2a3d41d8440bd9e5e', '黃凱民', '1', '2008-06-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('08adf4dabad3407caeda1f1697336280', '黃翊霖', '1', '2005-04-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('08bd99354b2447f7b60a8386dd9191db', '傅澤凱', '1', '2004-04-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('08c8055af77f45288e5988e6fb0ac280', '顏均睿', '1', '2007-12-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('09848d09769b4ba7a8e79fd12dfae2d7', '謝卉鎔', '0', '2007-12-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('09973555b9424275b1ace41c0a93c19d', '曹芊沛', '0', '2009-06-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('09d2868b25c94070b90d3bd269468930', '葉伯昕', '0', '2004-08-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('0a215473fb184f7ab76e58d9171cfd35', '陳君瑤', '0', '2007-04-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0a791b41464b4ee6bc069258be98588c', '曹芊沛', '0', '2009-06-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('0a9610748c4f44f6af22bc3f461b8c1c', '蔡依理', '1', '2009-07-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('0b459756257b4074b2046b4d4fd96b31', '柯詠潔', '0', '2008-07-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0c0d6971bea6426dbc2b0a4a867c7761', '卓越', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('0cb39a1ecd0843de8ca22d18c4e5072e', '王珮謙', '0', '2004-02-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0cecca1465c54f1895c93941e799ba8a', '謝羽泓', '1', '2006-12-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0d15b7e11b96495ca5505e8a49dd1709', '余泳澐', '0', '2004-02-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0d3d7eec7817432fb33ae3398caeea02', '劉上華', '1', '2007-08-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0d6ea02f6875498d82945ebb342cc519', '徐健又', '1', '2003-12-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0e01b890bf844318a0c0eb2844639091', '陳淵融', '1', '2004-11-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('0e6652dfcc3241bd9c50fe56f7852d0d', '汪盛安', '1', '2006-04-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0e7b564e4ddd4aefa1b2eb51694ec441', '洪亞倫', '1', '2008-11-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('0e84259b8f6142a3b9a7abbef73eb58c', '吳秉真', '1', '2007-09-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0e932702bd5c4d729f44e4b83bb6ef74', '劉仁怡', '0', '2004-05-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('0ede708ebc8b4252bbb0dfeb7556521d', '陳均維', '1', '2007-07-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('0f15580dafe742968eacd9895f7d0b14', '陳品恩', '0', '2009-01-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('0f5fd968ef854f58b5c4a31e0e8ab62d', '蔡語恩', '0', '2006-03-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('10023ec2ce504fb8b7d0124076b7cac4', '林嘉麗', '0', '2003-10-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('104a5790e1c841f086825359e7aec93f', '劉語安', '1', '2006-10-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('108996bcbf644de89464b89530b1a758', '杜亞倫', '1', '2008-10-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('108fc5202b8f471080c305327becaef6', '張家綺', '0', '2008-06-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1137c63aefab472f926d4a37cb257744', '侯沂芢', '0', '2009-05-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('1190521ca62c4841ba11ab20b8e4c8ed', '奚于婷', '0', '2006-04-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1193d170acea47bfba33ba47d66ab113', '林先敏', '0', '2007-12-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('119fff050ac14a23b9582293dc0739f2', '莊怡寧', '0', '2009-06-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('11f5623a984944079286e933c85ea6d2', '陳震鈞', '1', '2003-10-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('120c30c309394fb5a1da33d4624f6745', '王竑鈞', '1', '2006-10-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('125fa3a4cb954c75b90f1fddecaec649', '游雅筑', '0', '2009-03-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('126812c424d54d839d4edf222408691b', '莊詠涵', '0', '2008-03-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('12eea08c273d43358c84e91d76cde8f2', '陳彥宏', '1', '2008-11-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('133e870b7bcb4530a9d507a25697db85', '林政宏', '1', '2004-07-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1350e2a174bf4ba492bfcab0c8f00318', '曹舒瑋', '0', '2009-07-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('139b910371624588814f21d36fd06f9d', '呂宇泓', '1', '2009-08-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('13f7916f975d45dca22c8185d0b64c11', '黃薇如', '0', '2005-04-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('14c34c9bb3b04662a11d40cc920f051e', '戴文晟', '1', '2003-11-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('153d276589e146e5b0a144852063831a', '林子馨', '0', '2008-02-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('157025fe466745a098a535ae739f4b79', '陳煜澄', '1', '2003-10-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('15862c2df8db46519e43680cef2faca0', '謝安', '0', '2003-11-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1596cf0c1d864c1e9e4da77a3b31e501', '林以慈', '0', '2006-10-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('15d22b1b285045ac83a1b0c876be6722', '張芯瑜', '0', '2006-03-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('161426fb77144f22a9ca60ae95bcc66b', '李柏良', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('16353f4ff7bf4dc3b61925437f6d78fe', '陳得', '1', '2008-11-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('16616d94ced64ee8846ad30ac975d10e', '莊擎', '1', '2004-12-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('16f6996c83494e26bcf10dd6c5237410', '張詔暘', '1', '2006-04-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('16f74df77d0f48f5837da65bb07a355c', '楊博中', '1', '2006-08-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('175c0e2d4f9542b2811385b7a950abbd', '梁芊熙', '0', '2008-01-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('176da3d1facf43d4abf1dcd98f12155b', '林峻安', '1', '2004-09-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('17bf68085a334e03ae08ff21d5e84259', '鄭又寧', '0', '2008-03-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('17bf73b56d7d45d1bd99cc8ad0696fbe', '王孟文', '0', '2006-09-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1806a48146a244408303a78ed48de0b8', '邱云萱', '0', '2009-07-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('188aea6cb55b45d994ebb1c869d36fba', '楊恩恩', '0', '2005-08-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('18a30e216b05465da39591162415e065', '王致翔', '1', '2005-02-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('18b22e32245d44a7be9d2e549a883050', '鄭宇哲', '1', '2007-03-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('18b749aed9e746108ae67f3a9a984848', '林先敏', '0', '2007-12-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('18db67412dac458aa257389a2a32a369', '謝樂萱', '0', '2009-04-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('19547442bd6b467b800a714113dcdbc5', '林曦恩', '0', '2008-02-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('197f7f144e5b4fb485bb1f36f79d4c95', '蕭詩琪', '0', '2005-02-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1a3596162b9a4cb7bc87828eb21e9d28', '張羽承', '1', '2005-03-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1a3e3000878b41a8a05c083921fee482', '莊怡寧', '0', '2009-06-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('1b69f12e16954ecda2ccc0f9a7d63f0a', '簡心悅', '0', '2006-04-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('1bbc62c1e41343a4beee3e63079bb38f', '陳柏宏', '1', '2005-05-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('1c257992a769440c9c6fc4721415a925', '黃迦密', '1', '2008-01-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1c3c3727122440509a01d5aefdddc2aa', '張瑀妍', '0', '2006-02-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('1c71f68c990f47d0b555f31acd944993', '林珈儀', '0', '2004-12-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1cb23f3ead3945ca80ce93fdf6b25afc', '陽庭曦', '0', '2003-12-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1d5556d286d44f79ba29c1a60121d8c2', '侯冠伶', '0', '2004-05-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1daa67368aff4d208738b006c0d01ed9', '許育菘', '1', '2005-06-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1dd25f6f8d454bd897611cdf6b7315d5', '林亞潔', '0', '2004-12-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('1e2dc26ae2764aeca94f64faf706cf3b', '梁芊熙', '0', '2008-01-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('1eb04e99e4a94328b8d1272026d06804', '蔡軒安', '1', '2009-08-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('20192e4d0673430a9f8c3430cddeaed3', '李妍', '0', '2007-12-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('209599a7197343b494fb291d81ccbccf', '徐以善', '1', '2008-10-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('20a72de4e45f44fba4ddc71945f5da4d', '簡妤珊', '0', '2007-06-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('20ab0811cb89490b94a39b74de35deba', '王貞霓', '0', '2006-01-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('21734a0ccfa34c58830808a93dcb6abb', '傅澤凱', '1', '2004-04-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('21bd82c86d4a462db4552c27794b4779', '陳麗宇', '0', '2004-02-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('220e9d90ba8441ee961b5da6a903ecab', '余信恩', '1', '2008-12-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('221f83ded3584e01aaf4aa750546ffb7', '王琳涵', '0', '2007-01-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('22ab3db0b07c4c2f9843df7299426887', '李明樹', '1', '2004-02-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('22ca4eea51734beeb714c6b7a110c4da', '朱莉亞', '0', '2007-09-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('22dfda537d154d5e8269d530ebf4a258', '李天福', '1', '2004-08-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('23014b1ec9bf473581e9023d963d98e4', '鄭子恩', '1', '2004-09-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('230daabac13b486faa4ecd98a7a88c21', '王孟文', '0', '2006-09-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('233ce96492de4a0caadba1aae10ac81a', '江恩綺', '0', '2006-05-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('235e944314c9422881c9a661d78a4fab', '莊佳恩', '0', '2006-03-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('23d2ebe1f7b9411986757cea3503301a', '紀慶宥', '1', '2007-06-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('23ec05b5158e4f159b4181fb8d9e2ce3', '周以盼', '0', '2005-10-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2401aecb097a44b59f667223800357af', '許婷淇', '0', '2011-02-03 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2482d0a31d07422eb48b31cc218b95f2', '林曦恩', '0', '2008-02-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('251199558c694bb48e5d083d814a0543', '謝卉鎔', '0', '2007-12-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('25b02d2643704f6bb658b865cc466f14', '陳逸', '0', '2003-12-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('25d689f7d2c94203b23bee820f68d115', '范彩妮', '0', '2008-01-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('261eed63dc0f46e3bb730f442e66f2c6', '陳得', '1', '2008-11-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('262853a9816449bfa840c7d537228a99', '張僑之', '0', '2005-06-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('26649df126484ba2ad4fe3953f0cc8ca', '黃寶萱', '0', '2009-03-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('266594420cef46c6b9a45d2789b15a48', '范彩妮', '0', '2008-01-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('26750afc994b419bb626ba30726c02a5', '張柔千', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('267df88624d54d4cb92bed8b97a7ea3d', '趙駿杰', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2697f1ced6754285af83936e809da154', '翁靖雯', '0', '2007-01-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('26bdb512f5a543f5b1c8188b68a0f2cb', '黃文瀚', '1', '2007-03-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('26eea713cc974c4fb488e960bcb1d6cb', '李德頎', '1', '2006-12-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('274029cf31e747c6849cab4e9b679085', '廖婕涵', '0', '2004-04-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('27abea080557443a990e1edc5f5aab25', '李允箴', '0', '2004-12-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('27b0d7b208224ee7a421b7e5a7c45683', '戴睿', '1', '2005-04-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('27e931052be5449598206b011b48a472', '李恆馨', '0', '2009-06-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2804191ab59446d5bcda8e3d3ff30038', '葉育岑', '0', '2005-09-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('284ac0cf318f4073a55f93f65a93bff4', '張晨曦', '0', '2009-02-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('28f4a6e054f143b6b72ba0a8f613c21b', '陳芷芯', '0', '2008-10-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('291ac7ba0f16422595d2d710fa7ed9c7', '郭以誠', '1', '2005-02-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('29d9178a5213425ab1ba90593276a07c', '林士鈞', '1', '2009-04-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('29dec1404348443f80a8cd91897c9d16', '郭佳芯', '0', '2010-01-27 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '5', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('29ee9a562290434a9bf3d35c50947cf5', '謝妤葳', '0', '2005-04-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2a89ec8d103c41e6817e21fcffb388ce', '游德仁', '1', '2003-05-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2a8b5f70cd2e421d90529c59bfdcd812', '李振民', '1', '2007-03-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2ad0668b61f14b63aec4e697b8ca58b9', '李以和', '1', '2005-05-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2aeb08d309574871bbd947304663daf8', '韓靜恩', '0', '2006-03-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2af7399676714de5807923629a68dc7f', '翁靖雯', '0', '2007-01-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2b0d443699584699a70278172df23344', '喬家芸', '0', '2008-03-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2b0fa43ced2e4dcdb9f111a84c1aa236', '王翊妃', '0', '2006-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2b69898fbf7b4849a0557850eba40a65', '劉立約', '1', '2004-08-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2b91436bec30487fb808d76c71d03ef5', '盧睿謙', '1', '2008-08-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2c01550a2693403685fa6023f431a986', '吳宇澤', '1', '2007-12-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2c547024107f4e5b85c472d1c1e3c95e', '王沁安', '0', '2004-07-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2ca08a5cc49a485f983a9a4d9056efbd', '胡語芊', '0', '2007-08-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2cbaf9de1156489b9d048685f7f358f5', '黃承馨', '0', '2007-05-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2cd3f8a30904401e991d23605595a5bc', '麥紫穎', '0', '2008-06-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2cd59b3519f342cfaab58cce95c17084', '黃承馨', '0', '2007-05-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2cee3f3470e74026add0ab8b07b2d7f8', '翁韻雯', '0', '2008-07-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2d6ba4b4001e4ef48ebd87f52e36fc32', '許絜晽', '0', '2009-08-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2debc7b49425495fabd1cc50b3f847a4', '林亞潔', '0', '2004-12-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2dee7551b5234f3a8f7488fb3729d741', '鄧行恩', '1', '2004-08-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2e0c42221c034b349f7fd8502faccccd', '蔡希', '1', '2008-07-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('2fae1c1a91bb446eba194c8efac7c784', '陳震鈞', '1', '2003-10-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2fb8335a8b4e421cb023ea8955ca252c', '李鎮維', '1', '2008-05-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('2fc8d4ffe6ab46959324f5a4b01b3996', '林政宏', '1', '2004-07-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3071b0e7dc534bf6af2e85ae96dba81b', '陳惟熙', '1', '2007-01-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('30ace0574c7f45289da0f3fe09b8e611', '徐丞毅', '1', '2007-09-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('30c85c2f2e104992a8c4c08ea017f340', '林子傑', '1', '2004-12-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3148b19ab13f4345a2687c134d93d04b', '張芯瑜', '0', '2006-03-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3163a155ae3149a090fd0a95ab47ecc8', '彭子熒', '0', '2005-12-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('31a6918dcd50449390c6a23bcb4ed5ba', '余主行', '1', '2004-09-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('323aee2fed184ebbbf9e22d50ab08410', '陳囿佑', '0', '2003-09-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('323d297ee9794e54ab14cc9ca9477e26', '邱云萱', '0', '2009-07-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('325b62b3a10944cbab9dc97a3b862272', '簡心愛', '0', '2007-08-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3299f6ca39b04167980e44ff6bdeee10', '陳聖恩', '0', '2007-01-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('32f32c07b157459f8425a484cd785828', '蕭霈宣', '0', '2006-11-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('33233b981a1845c689c8513498e89c52', '林泓宇', '1', '2004-01-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('334d9c9050c541a287d0820ce988e224', '劉立約', '1', '2004-08-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('336c1953d3d44ff7bc8ce34ded064eba', '張柔千', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3380247ec8974fdeb85ed9e47b3300a5', '洪丞毅', '1', '2006-04-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('33d996fb303341b080da19d4cdba630c', '俞力恩', '1', '2004-02-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('33eb2c4d584d433b868463150cb293fe', '袁永愛', '0', '2003-09-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3441634640d6429c9fd705c5b583525b', '莊詠涵', '0', '2008-03-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('349f4749a73f4565bcbe70e1c6fddee2', '林子緹', '0', '2007-04-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('34a845f1709945cea3debbc6433431c4', '王承恩', '1', '2009-04-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('34e3405add9d4c11ac3f965f6ade2be4', '楊詮盛', '1', '2008-02-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('35502fdab2dc4d98ac26433dcc6c1594', '陳姿穎', '0', '2006-06-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('35db894aa0d4408f85d7e13edbd3510f', '蔡語諾', '1', '2008-08-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('35e06648a7954172b1c704bf82bdff5d', '莊咏璇', '0', '2009-06-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('35f8926f261d4eef854bff7573548b65', '章方婷', '0', '2008-10-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('366924863fac418182d95446b5b2ab35', '郭敬知', '1', '2006-08-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('36c782d0359b4050a08790c984f28eae', '黃為心', '0', '2008-06-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('36eb05a02a994da9a712f8cd8ef3226d', '陳希', '1', '2003-12-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('377465a2c75e4fc8bf2ef114250b48f8', '郭敬司', '1', '2003-11-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('37c7cc69bf7549cb965a10e71a7d82d2', '龔加榮', '1', '2008-12-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3803c805d05b413a9b8d9b07e89b420c', '林子馨', '0', '2008-02-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3858e57d06254c28bcc5dd242dbc1f59', '呂宇泓', '1', '2009-08-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('387e0234fc214ef1b316d5153c9a5544', '姜慕謙', '1', '2009-05-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('39409ee6c23f422fa67ab7048527003c', '洪亞倫', '1', '2008-11-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3951951349fb4cfa9df84acc9ed3e2ad', '陳思宇', '1', '2006-09-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('395209e299264b70a65deb7f5d7fc10c', '沈昕儀', '0', '2006-07-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3957c0d8a30940cbb57b9a04de52bac0', '黃翊霖', '1', '2005-04-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3960a2dfa4004a5abb48325abfcd3e5f', '鄧行恩', '1', '2004-08-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('39f00ca6df434c53b5e0bdef11b8bfe0', '黃章維', '1', '2006-09-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3a2d0f0820564ea3baeb99a43e0b49e6', '林秉新', '1', '2008-06-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3a8fd9bfd9d943548d9a8079e94f05da', '吳東翰', '1', '2005-01-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3b5b8d642bd641469c8d4a1f270501f9', '羅迦琦', '0', '2005-09-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3b81747cfa224fad89856c177d615c2e', '孫運琪', '0', '2007-05-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3bf512b65374486bab9aa8a0b517ed7c', '魏愛妮', '0', '2005-04-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3c34f7b9ee3244948ae9838cb09e201f', '張又瑄', '0', '2007-08-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3c67137052b1465f99cc3aceefcfacc0', '李允敬', '1', '2007-10-31 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3cbd4ae1030240438f6c9dafe7ffe785', '江恩綺', '0', '2006-05-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3cca972bc71642fba0bf59b87d01868d', '歐陽以謙', '1', '2008-07-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3cefc8bd3860415d8be2528d0b7e62b2', '張懷瑜', '1', '2007-06-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3d14bb2400614b4eba60807b04414c1b', '陳芷妍', '0', '2008-10-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3d478d2deb274244a7d7aa888d51b0e5', '馮育傑', '1', '2005-02-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3d7c5075a34e48a8aea8317ce4382d68', '邱彥均', '1', '2007-08-31 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3d8d3bc3c18c4604918bdebdf143550a', '王慶暐', '1', '2011-01-10 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '4', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3de7d2cbe52b443e83e91729a079c29d', '徐小柔', '0', '2009-03-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3e3c4d52594b4fe1bb8b55dabbc37032', '林子緹', '0', '2007-04-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3e9a247d33d84744a80f4353ca01acca', '黃承諭', '1', '2005-07-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3ea224c78e9a4ebbbaff0f2b81b8fe66', '楊上逸', '1', '2005-06-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3eca4072417b4d7dabac243613f059b2', '陳欣', '0', '2008-02-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3efa8a62226e41029fdce8bc8174bdae', '呂俞霈', '0', '2007-03-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('3f56066f92a54c3baf6bd68e0691a0d3', '劉宥賢', '1', '2007-11-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('3fb2750180194bcfb353e1f28f934eca', '林瑞萱', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('40218bb3229b47a886dae05b300e411f', '黃品源', '1', '2004-03-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('405f0e9957354fb0a9f191c8252f2421', '李子睿', '0', '2007-08-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('408737cc1e6d4067ac50490edecf65cc', '林毓宸', '1', '2008-02-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('415573bfe95440fea7d8b1dd75e7c06b', '楊詮盛', '1', '2008-02-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('418ba4896ea3452084e7902b25006b60', '卓倚恩', '1', '2007-09-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('41a3dba34d5b4772bb9e7d6d59e7a881', '吳庭恩', '1', '2009-03-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('41cbcca13fd7460582aefa96849e90c6', '黃郁馨', '0', '2006-05-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('41e638cdf3da480891a0a696f837cd43', '楊子涵', '0', '2003-09-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('420d7689ec6f48ca9535dc0bacbe1141', '陳亮蓁', '0', '2009-06-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('423f0c3ffa8d419c82277cf3893bf836', '李凱智', '1', '2004-01-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4245d5ac6db648b6a5d896527d74ec0b', '周以欣', '0', '2004-04-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('42b580b923ee41d2b83c994d872a3311', '麥沛涵', '0', '2010-09-20 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('42c779b99e5d4dffb82d964550db7dff', '楊子恩', '1', '2005-03-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('444d3f860cbc460b924ba48d1154464c', '蘇暄', '0', '2004-10-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('44828816f7a247f1a00401226c59a042', '柯詠潔', '0', '2008-07-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('44adafe8da9b4475840e72423d64a3fc', '鍾宸睿', '1', '2008-05-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('44ef27a820354d888cb4ee912876fedc', '陳均綸', '1', '2004-07-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('451f0eecf13349a4a89260adc72f5e33', '奚于婷', '0', '2006-04-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('456e47b06ded4353a60875ce2d267363', '廖雅微', '0', '2004-04-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('45d059b3a84845409563152053ffb2b4', '陳妤綺', '0', '2008-01-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4646d16c874d49bb96bba98882b5ab66', '李允箴', '0', '2004-12-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('46699e4755c84b5aa909a978dbdef49c', '彭蓉', '0', '2005-11-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('469fd32d0f884fabacfbf9384edc51fe', '薛家玟', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('46c482847739432998f9b87d48608b69', '簡子瑄', '0', '2004-09-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4726fe90cfb546f9b75f3e24d647b6b8', '虞奇曄', '1', '2007-02-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('48c71d0c87d340fa8c46339cad9c84dd', '梁子翊', '1', '2008-07-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('490854a55e6c42e7bf12353e9d99a60e', '許之頤', '0', '2009-06-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4925fc6b787f47bca3f591efd501675e', '林珈儀', '0', '2004-12-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('492748564d0b4ee38e26b1ae991fed17', '李以安', '1', '2003-11-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('493fd5bf0c564c7692d3001521b506b3', '周善牧', '1', '2006-12-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('49d93718babf46d8a3629f8874282d82', '胡語芊', '0', '2007-08-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4a370cf665aa4ebfaaca8bfca9e7721a', '林瑞萱', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4a52c701e8e647aaba3f04f56cfdb456', '楊恩恩', '0', '2005-08-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4a645fbf79284e93a257b9c3d9a13089', '陳盼臨', '1', '2008-08-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4a75e9b5d64e489ba6b62bbec9427cd8', '林永安', '0', '2008-12-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4a8413e492ea49119848ef3419832d0b', '謝羽泓', '1', '2006-12-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4aa553329cc64f68b3955935786f1997', '歐陽以謙', '1', '2008-07-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4ac4bd9a4c404b70a77b52c85fb64ecc', '魏恩惠', '0', '2009-08-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4acc67b1290546b089ca5411b499dda9', '楊以安', '0', '2006-03-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4ace46915bc94b30960f6e1cf65db256', '梁宇柏', '1', '2003-09-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4b17230665ae4763ac16e55aca5a3c10', '蔡頌恩', '1', '2005-10-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4b79536a419246f69558b7de2a6d8032', '蕭凱升', '1', '2004-01-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4ba597ef9c064095ad4c8445a1255911', '彭子熒', '0', '2005-12-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4bdd82491d4d4b1a9badff4f36c0f7a5', '蔡頌恩', '1', '2005-10-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4bfcf679d7dc48169f9505b5cb176998', '蔡曉樂', '0', '2008-11-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4c5757d7b4c94bdaa48e324abb7a33ce', '黃星儀', '0', '2003-10-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4c668e0c67554ed294fe4248067af5cd', '蔡峪霖', '1', '2008-09-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4c7d0ce8a4634888bcb25ffb991beda0', '陳彥達', '1', '2005-09-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4ccb53d9ca3a460cb4457cc30f4b00b3', '武瀚', '1', '2006-12-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4d921a68c6d1431fbe870dd9529757e9', '蔡依理', '1', '2009-07-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4dc48ee78cc9452885603296f3d28796', '王翔恩', '1', '2008-09-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4dc5c864838f408187fb99d74c4a5df8', '許詔崴', '1', '2004-02-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4e1258368e37478d8b6290e3fa530c4a', '陳彥妤', '0', '2007-03-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4e41496e02814a218b567b67803d0d7d', '許婷淇', '0', '2011-02-03 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '4', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4e43237815a44a38910dbd561cb0cf21', '劉仁凱', '1', '2007-01-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4e9472f6c3a640589f19e0afd9cd3c70', '黃羽涵', '0', '2009-07-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4ea60c88def04581aff66ecc2ad90dd3', '余承峯', '1', '2006-05-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4ebb653416084d16926edb03e8cad214', '陳逸', '0', '2003-12-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4f306b8989c141638f62ae3e79039430', '簡旭中', '1', '2007-03-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4f3cdcdbafa247c6b7deb138cba25721', '楊巽宇', '1', '2008-04-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4f51f8b18a854d0fa29ab07d836feed2', '蔡秉學', '1', '2008-01-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4fa29464d43546a081ecf7cf86c0a499', '張懷瑜', '1', '2007-06-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('4fb4a5b256b3473d83a661cbae2d5801', '高恩臨', '1', '2009-02-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('4fbef0918bb44e78a105a2c4b8a6f958', '戴文晟', '1', '2003-11-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('500a8f5327b1474e84a9f8db6dc9b97c', '蕭凱心', '0', '2007-06-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5078e718c33e4654ac74430c50d0f479', '王妍婷', '0', '2004-11-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('51880d5a77034ad8907d854b06e9d012', '林慈恩', '0', '2009-06-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('518ac0bd71364348be0001055a95073d', '林宸伃', '0', '2004-05-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('51af3f148eb24fb798100ead04c5ca5f', '賴佑恩', '1', '2008-08-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('521d599575e7427ebeb11abbc980b4c1', '陳以庭', '0', '2007-10-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('532917eeee32497eab85de0795bc31d9', '林晨曦', '0', '2008-09-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('533afb8c97fd48c399198f8a3c8ab142', '謝妘萱', '0', '2006-10-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('535636ed335847708e4a8a6d3f281811', '文忠澤', '1', '2007-11-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('53cf0d3aaebe4857b1baa65a0bd367d1', '唐頌恩', '0', '2005-05-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('53fceae1d8b24f4d9a5193d27a6cce90', '于逸菁', '0', '2003-11-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('541a65c58dc94843bbb34b44577b9edd', '林先牧', '1', '2005-06-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5462d44638c14369b987e33c69f7c845', '黃昱瑄', '0', '2008-01-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('54ca53f9814d4ad7b5f9fd7e91119d92', '周安安', '0', '2008-04-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('551d2b043fac4ebc8b345cf05589f0ff', '林宇祥', '1', '2007-10-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('55543af71bce4bb5ac4c4dc3839df2b3', '曾芯琳', '0', '2005-04-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('55608993941f4da788486a768647a468', '郭敬司', '1', '2003-11-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('560786579974464ba840c678d13bca37', '陳維雲', '0', '2006-08-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('56671df396314b4291e5db3057a009fb', '廖婕庭', '0', '2006-09-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('56f962cd070c4f76a22a168ee64a1dc9', '薛家莉', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('56fbc5aed01b403eb8bd8bfe1b6be542', '趙勻熙', '0', '2005-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('5760dbba4b38425fb3aef8c678fd4cef', '邱子恩', '1', '2009-04-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('576bca642fa74a74870f3ec77dee46c9', '周以欣', '0', '2004-04-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('57d6f2797aa94f408b1d913c3c7fa996', '楊皓崴', '1', '2005-04-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('57e5a0d853e94e75a63bdaf1cb6df0db', '張千恩', '0', '2010-10-10 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '5', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('5823c458c5c94f99a6f7664f090ecb88', '吳宥穎', '1', '2008-12-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('58267e0406064f4ebc94195f0173336a', '王宥恩', '1', '2008-05-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('588f5da634ee4dc28204742f66739a78', '李子頤', '0', '2005-03-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('58963e6586ad49d195bfbeefb2b69efc', '蕭霈宣', '0', '2006-11-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('58d83c385d0d49e0ab8005ae45b8d151', '劉語宸', '1', '2009-08-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('58f2ba7675b04d7f83f6312e81e99deb', '黃星儀', '0', '2003-10-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('59118b9ed08744aba249e2dd7ef84e06', '薛家安', '0', '2008-02-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('59793889594844dd9391848eb5ff680d', '藍悅心', '0', '2005-04-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('59ca0b723e0446fa82907cc0da974a10', '徐品徽', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('5a63539a3471417083272d6e95787dee', '曾韋寧', '0', '2009-03-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5b600444209b4d5bbf202b165261691f', '蔡宜杏', '0', '2007-04-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('5bc0538d83f44badb31b0af80e88b06e', '謝文彬', '1', '2004-04-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5c61891a9b7147ae81297399c725f434', '高恩臨', '1', '2009-02-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5c6f0f3607394e9bb962ec2d825cfb15', '楊宣恩', '1', '2005-11-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5c803eb99b60498dbc34b2e9ec404cb6', '許慕安', '1', '2004-03-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5cdfabe05a18430cb6063473cdd5027a', '許硯傑', '1', '2006-11-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5ce9b98253c6406aba7f4de7d5bbf93e', '郭沐恩', '1', '2005-10-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5d2ae1bbc6ae4e5fa3400c0acf4ab923', '林以慈', '0', '2006-10-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5ddf515045fa4ab9932a1622f4607cb3', '徐睿馡', '0', '2007-03-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5e867afdbcba49048ba33f2c35c5c667', '彭承筠', '0', '2006-11-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5eb8d736c1254f268524da71bcd6a080', '劉仁怡', '0', '2004-05-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('5ebb6cd1fc20439ca30f14c25ecfb896', '林毓宸', '1', '2008-02-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('5ed193e2dbe64f4ab9477da0fd2e2938', '陳囿佑', '0', '2003-09-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5ef79f927ade437bad7b3775b6f1e92c', '邱明楓', '1', '2008-04-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('5f164e623aeb44cd804ec3a8b1d371d5', '邵唯', '0', '2008-03-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('5f8a85c028f04e638481dc5551fc335f', '余承峯', '1', '2006-05-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('603d28d811eb43d6a16b1ccc2b083db0', '蕭汶芯', '0', '2004-02-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6088de786ef24843b986f93f5b61db5c', '林子詣', '1', '1999-04-16 00:00:00', '2', '0', '', '', '', '', '', '', '4', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('60f369064b124144b377d06364190d31', '蔡語諾', '1', '2008-08-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('61077bfffca643359887cacc825befe5', '莊久鋐', '1', '2005-08-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('610c466855d3404ebb135477b2b958e4', '蔡慧恩', '0', '2006-10-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6111487eb638497b90003085df4e9681', '林宇祥', '1', '2007-10-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6208dd5af1c84d9faabe48a91ab86664', '林以恩 ', '1', '2006-01-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('620c5cf1c29543258f4b046ba592311d', '林永安', '0', '2008-12-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('627bcb9458df4fc08efe73d94d1ea94c', '謝妘萱', '0', '2006-10-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('62bc034a015445fa96f084034ac6151a', '洪巧蓁', '0', '2008-12-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('62bf16ebd1c245fe9624181ad4f5e03e', '蕭詩琪', '0', '2005-02-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('64320b8aa1c5421e910fa7611cc8716a', '謝天恩', '1', '2005-04-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6450426f4f6f41b491dbded33ccdbb4e', '呂晨右', '1', '2005-02-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('646b18199ecd417fab8383b55ffbe11b', '黃浩哲', '1', '2006-05-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('648f68354042410eada41aa290230361', '廖嘉泰', '1', '2004-02-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('64c048a69fb74ac0a6a07f5833128295', '陳毅', '1', '2004-09-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('64d08845102249aaa2ae3ce384e5afa0', '鄭詠恩', '0', '2008-04-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('64dffb89fc59448e9c33984bf325ee2a', '周安安', '0', '2008-04-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('65194a3c27714b64800c63c5479e8c96', '薛家玟', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6543b43329f24404bea3c01f0ae6700a', '盧睿謙', '1', '2008-08-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('65629b79458b4e9b9da399d7d34c571e', '喬家芸', '0', '2008-03-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('65cf7e25c10d48a08708cb978832d226', '陳一鑫', '1', '2006-01-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('65f51437ed2d4e318f269ca41a7df992', '林佳萱', '0', '2008-04-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('65f7b25c90134b5680e4b2416ca73a14', '蔡曉樂', '0', '2008-11-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('66d776813304453b9cc62b0b227400be', '游道芝', '0', '2006-05-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('66d80a653f584577ad4ebe96795309af', '梁宇柏', '1', '2003-09-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('68089509af49487e8715f0e60093ed32', '郭冠廷', '1', '2007-08-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6868bbe18103415984efd49b83a26aeb', '羅迦琦', '0', '2005-09-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('686ada044200417cb095cf66a03144d3', '藍雋博', '1', '2009-04-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('688abce40b6a4fc48d3f69eebb8df7b1', '何安祈', '0', '2008-03-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('688f4ffb15b44b9c960d099f2733c26b', '李鎮維', '1', '2008-05-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('68d1cdc1a8cd4d42ab9e607e2d8cfec1', '林宏綸', '1', '2006-11-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6a8c1d3063ed4c7bbbfe2d2135fc2862', '李柔紜', '0', '2006-09-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6b3cddd5679a41ddb70dc6d542c7e033', '麥沛涵', '0', '2010-09-20 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '4', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6b56a526f9cb48bc8beb59e6bfd1148d', '洪巧蓁', '0', '2008-12-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6b63968d62424fb3a938d1aefe4aa4cb', '陳品佑', '1', '2007-10-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6b9c55e4d3ff43a1a2ce94c8ce78d7cb', '鄭詠恩', '0', '2008-04-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6bc55259313843a6826fb8ffe5febc1b', '袁永愛', '0', '2003-09-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6c04223092d44fa392e277e2ef835d72', '郭以誠', '1', '2005-02-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6c0ffa75b06a4a9aba0b2775495ed712', '許育菘', '1', '2005-06-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6c42987208db4afca0c9c924a3b7da85', '李柔紜', '0', '2006-09-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6c9ceb66db1b47ef8b8c95591caf93f1', '王韻涵', '0', '2009-07-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6cae26b2ad0540448e7c45852deb9c86', '李凱智', '1', '2004-01-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6d3a810895254b1d95a7c9f3e5a85f5d', '張又瑄', '0', '2007-08-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6d973cb6e7cc44b3b058fb50f0bc7e69', '李天福', '1', '2004-08-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6eab016e1cdc43ab825837d31ce45407', '蘇妍綾', '0', '2009-01-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6ebbb0f0ee42417c9ca1cfec7b922e7c', '陳馨悅', '0', '2009-05-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6ecc27c2b6de4a70983cc0d7f5e74abc', '曾譽', '1', '2008-10-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('6f0cd5eebf6e428a8e741137d7202d5b', '張博皓', '1', '2008-01-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('6fcdf8eb2b8b4debafe75c53dd78ebee', '陳忻恩', '0', '2007-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('709e0ad552f840c3b383cf729039713e', '田咏帟', '1', '2004-05-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('70eec3f4bca54a3ebf9a5d27331ed05a', '梅若屏', '0', '2003-09-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7113db2606fe4931aeaf6e68de44c982', '李允言', '1', '2006-05-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('715d068647d749dea6373af7d0baff7d', '許裴芯', '0', '2009-06-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('716e00c0b2844ef7a63f90a41f6abdf8', '胡景方', '0', '2003-09-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('716e68673424400eab391cdadbd14fd4', '林慈恩', '0', '2009-06-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('717e4495ce4e455892b938782d78db33', '王承恩', '1', '2009-04-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('71e27cb4a2a7455cba0ed895323d9fd0', '林欣恩', '0', '2007-07-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('72cfa0c551684842b15451107cf14320', '鍾甄筠', '0', '2005-12-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('730e6296f352409ca62ce8ae3d3c212c', '蕭汶芯', '0', '2004-02-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('73d8fb30f0e5473a8f17368eae3948bb', '藍悅心', '0', '2005-04-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('7454fc794a52441ca4cd50ff0b92c832', '楊傑崴', '1', '2009-01-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('74574617700646c5abd3f1289cb0fcd0', '梅奕青', '0', '2004-12-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('749fe58a8b024359b0a2ec68f09e09dc', '劉庭甄', '0', '2007-09-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('74bfb62e83894eae9485ddd759db6c06', '吳昌諭', '1', '2004-11-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('74f3e4618cf84c14a4ef2c1ae3d57c9a', '張巧暄', '0', '2007-10-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7550308d0c8a42be8aa8315aa49a38a9', '梅奕青', '0', '2004-12-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7586de2a03e54127b699e4feb828fd0f', '簡小喬', '0', '2008-05-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('75c8173c6cef418fab4752b066531ff5', '吳佳倫', '1', '2007-09-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('761e52d3ce2547e98a2d0487056de247', '陳均維', '1', '2007-07-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7646d80e557b4f7db37825825360feea', '胡筱彤', '0', '2004-08-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('76ae15402a0a45aca4fbf8a3df947801', '王慧恩', '0', '2008-05-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('76b72b1734754ca0b530d323c8c9f768', '胡定一', '1', '2007-05-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('76d67d3d12be4e728832843497181f6d', '戴睿', '1', '2005-04-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('76f54bb7eea14078b77f9bfd8814bba3', '楊宸忻', '0', '2007-07-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('770a8d1f47fa48d9ad91cbe434bce5b9', '唐頌恩', '0', '2005-05-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('7762e0eee7c1415f9633b3bcda0cf7f5', '黃佑霖', '1', '2006-05-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('77b396b263a84e3fa014dd7d00ccc79a', '劉佳欣', '0', '2004-12-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('77bf1800edbe416b9927e280879b5eac', '潘怡安', '0', '2004-05-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('788e4a5f45b14824a7fbc0578bddb68c', '楊健軍', '1', '2007-08-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('78be3dd7572441e682a0e9fa56c57b2b', '曾顗璇', '0', '2006-09-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('78d26dd6feff444bacb772259d461467', '王博禾', '1', '2009-05-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('78d45779ed784545858dd41e4bb411f9', '胡景方', '0', '2003-09-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('78fa0a67491846ca8fa8e8c9d24a0006', '蔡豐盛', '1', '2007-07-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('79b797d281c54dc3ab34dbfe7ee8e8c6', '林子茵', '0', '2004-04-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('7a60ffc18cb64fbd99e8e6380be7c788', '黃郁馨', '0', '2006-05-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7ab54c404ee74bddbe53ac13b31f74c2', '洪幼恩', '1', '2008-08-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7ac51d8908924ebea7714521a17cc124', '徐德睿', '1', '2004-05-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('7ad2554ca9af406eb336e7c252af7525', '劉仁凱', '1', '2007-01-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7b3ea0a396e34d8a91888cea7d8607da', '杜亞倫', '1', '2008-10-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7b649c66ee7f4338a7a93ef5b9e1664b', '彭漢升', '1', '2008-09-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('7b8d082604ec46b49aebbcd99d5edf06', '蕭敬蓉', '0', '2007-04-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7b9cf2992d78400880759d3be29d856e', '王慧恩', '0', '2008-05-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7bcc3ae998c046bb93f6cd4213a0a90a', '韓靜恩', '0', '2006-03-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('7c4331ed32714073a56be1c5951674fe', '李婷蓁', '0', '2008-04-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('7c8be0dfab5e4e2b9e11364156fb0143', '魏恩惠', '0', '2009-08-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('7cbd896ff63d48b3acdb14f42282f49b', '簡旭中', '1', '2007-03-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7d604b73ca5848aa8fe178e850912ff2', '陳迦勒', '1', '2006-10-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('7d73b0ddfe8c4b0ea59992cb8dc70582', '吳秉真', '1', '2007-09-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7ddc664b39fe4d1cbe40c975116c10f3', '黃凱民', '1', '2008-06-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7e048a4fa9fe4b53b9ee251db918afc6', '詹茹蘋', '0', '2004-05-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7e358374319248cebff320b56090c6b9', '華辰憲', '1', '2004-05-31 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7f049e463e2a4c23b078d057a0b84456', '李以恩', '0', '2004-07-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7f255ed99f3645249f905467e667e3be', '楊宣恩', '1', '2005-11-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('7f4be6baba77446d89c47387213804de', '萬法涵', '0', '2007-10-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7fcfb8c470b548a497f191dbcaf74ac8', '邱子庭', '0', '2008-01-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('7fd0dba78c614895b281df6f72fc5db2', '吳宥穎', '1', '2008-12-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('804391b9aa034a0793a0703991dd813c', '林亞帛', '1', '2006-11-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('804d8596f3e344c6ab533c01ea6e2079', '林子柔', '0', '2007-03-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('808f06dd545c4beb8ec138d3eff833c1', '徐大喆', '1', '2007-05-31 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('80baa528a5dd4e6fa0ddebf27f058927', '劉佳欣', '0', '2004-12-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('80fa6e8f48ef46af9d70c0db0f94e448', '謝秉佑', '1', '2008-11-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('810fdfb5439a42998d200c0353511109', '蔡宜杏', '0', '2007-04-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('811e5efc84d846b4b1f8d113fd880d68', '林子詣', '1', '1999-04-16 00:00:00', '2', '0', '', '', '', '', '', '', '4', '', '15', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('81d6738f8ff946298a435fe853760efc', '林彥薰', '1', '2006-10-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('82100d9de4c04d05beffd71552ed4382', '張博皓', '1', '2008-01-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8296f1fd8fad4a73bb5e561bc9df93d1', '余厚恩', '1', '2006-11-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('82b53e004a714203a19baea01e2ee249', '郭冠廷', '1', '2007-08-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('82d0608f5aba4eaebf3fc7893d4009d6', '蕭濬黎', '0', '2008-03-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8341b50534da4b03af34eab0ddf7a92d', '彭芸', '0', '2009-04-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('836ee18208f64441b998e4e81f387191', '鄭為云', '0', '2007-03-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('839faaed6321449ea9a5a0497c2dd543', '熊以約', '1', '2004-06-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('83af4e1d812446b4be8070d3d7d6387a', '劉榮祺', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('83d57c34edbf47928f0ff2eb13a7b8e7', '唐揚', '1', '2009-05-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('83dbb9d2c69f41ad8df64bdee81bb74d', '謝采伶', '0', '2005-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8457b90731814c98bfa7de272802ae37', '楊以樂', '0', '2009-07-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('84c5509c8c084525a95c4421c9e25bbb', '曾譽', '1', '2008-10-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('84d98565cb834d7880d222a905f85ea1', '蔡昕霖', '0', '2004-04-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('84f1fba31e3e4d72a1d947ebefa00d0b', '黃文瀚', '1', '2007-03-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8532ea22d12c42a88b1f68f87bd74b28', '林士鈞', '1', '2009-04-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('859d6013904f42f7bddf8a8022f51d13', '何奕寧', '0', '2006-05-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('85d24c92daad4c96b550e14bea28b29b', '曾芯琳', '0', '2005-04-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('85eb4ab402f8402d9eab489c38ef3937', '柯君翰', '1', '2006-03-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('86225b1dbde84cdeb734e1a6a1033c31', '王韻涵', '0', '2009-07-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('86234a02749340e08bdb1e563d9f2550', '黃章維', '1', '2006-09-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('864ad06ef28243cbbdccaf27217985f8', '徐采鍒', '0', '2007-01-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('865555622ce04b40a8bc0a47000fa31b', '廖婕庭', '0', '2006-09-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('865935ebd0e24d4aa55c967a9b6d8d08', '洪幼馨', '0', '2005-07-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('867d461b5b5a4992b3f710a2e7acbab6', '林廷叡', '1', '2005-08-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('86ab20ae2c8d4c06933e8480db702e30', '黃于倢', '0', '2006-11-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('86ce1e4247834abaada61fc692d169eb', '林亭妤', '0', '2009-01-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8730f163adf747d2b324727170870aaa', '楊以樂', '0', '2009-07-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('87857258b2204f3582b134127fbf7136', '余泳澐', '0', '2004-02-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('87a6e8c6772c4a68bd70911dc5c4316c', '蔡語恩', '0', '2006-03-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('880178fb443a45ccae35a90208cbdfc2', '胡定一', '1', '2007-05-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('88586b524f354f229c444ca6d6b1ce60', '袁永睿', '1', '2005-11-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('885cd076cab84928bcf880141eb9220f', '薛家莉', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('88af5131379849189db53b33442b02b9', '黃誥恩', '1', '2005-10-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8956bf4b9d7d4a70a6b8ac1786c43611', '楊子恩', '1', '2005-03-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8956c85859a74ebc9c1ba67932e12e40', '田家怡', '0', '2007-06-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('897e840bd6e94bc4bc156a2792b552d8', '李光恩', '1', '2010-08-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('898f03a2bb184294a21bb038b286ccc6', '周士雄', '1', '2008-07-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8a16f4fc46ed410ab65445a5ad963e2d', '蘇昱', '1', '2006-12-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8a9485a7610a4171aa08fed0a859bb47', '王博禾', '1', '2009-05-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8aad8b95952c41fcb365ec411d1b18c2', '陳維雲', '0', '2006-08-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8abee9bfaafc48c8b0a3208dc2016641', '張道潔', '0', '2005-01-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8ad4d2fbb0694fbe944f90178641273e', '李以恩', '0', '2004-07-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8ae38ea1bc084dbbbfc1f6d24b7ae5f1', '胡筱彤', '0', '2004-08-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8b389dd2504144d1a28783791cdb5ba5', '陳妤綺', '0', '2008-01-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8b3b3c84799f432a9a2e2351d3bc9ca9', '李妍', '0', '2007-12-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8b5f1af45cb9428f97698a18aad364ae', '林少湲', '0', '2005-01-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8b98da2037d9418f93083e06b3a994d2', '林先牧', '1', '2005-06-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8bc3b31cb3ff4797b3ddfa4d9bc0729a', '游道芝', '0', '2006-05-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8c89e7d7c665426ba9e1b5555fa8f414', '黃為心', '0', '2008-06-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8d5bc7599a2b4eafba1d33865e5dc761', '黃柏森', '1', '2005-07-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8d60124ce9484fe096fe69da35273ef2', '黃于倢', '0', '2006-11-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8db9ce7256ec4f7a83661c3f2b71fc6a', '文品宥', '0', '2006-02-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8e8738c8a4ea401491ec465aa1989d04', '皇甫宥心', '0', '2006-06-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8ecd01c13451434f94928ec545fa836b', '鍾以路', '0', '2006-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8efa96f3640e4c60b328edc12049ce4a', '邱子庭', '0', '2008-01-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8fa8b764ef7f4414a8d5d2d0d2fc1a72', '張家恩', '1', '2007-08-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('8fe7f6adcc474e61964cf98e4001aec1', '賴芝琳', '0', '2004-04-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('8ff3f3256b3a499297d2367901888d47', '許絜晽', '0', '2009-08-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9042ca3530294669b82fe2a02a7b8d58', '陳芷芯', '0', '2008-10-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9048d57bc0684c7c91214582ecedd2f3', '陳品恩', '0', '2009-01-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('907badef69244d9abd1c5b9f4b656ef3', '邱彥均', '1', '2007-08-31 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('90be04a3ed28487493582d5c5064ccd1', '周以樂', '1', '2004-07-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('90d41858fb814564a75ca5540112a880', '簡子瑄', '0', '2004-09-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('90da7f10d98e4cd5ae7997f4ac2b1454', '田咏帟', '1', '2004-05-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('91527cafa2714ad1864c71ec3884c9cf', '楊宸忻', '0', '2007-07-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('91bb1569a7c54f229cd0c3dfe96ef401', '洪丞毅', '1', '2006-04-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('925e8d1f29be40a291a14c1dbd3be0cd', '黃品源', '1', '2004-03-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('92a828c265f14e8bba3aff4e24c783ca', '邱偉竣', '1', '2005-08-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('92d5fad4563c44e4983a7f404036c596', '許家維', '1', '2007-04-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('930529127a6b4170959c51840e476151', '陳于', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('938db4db822149d6bce8ee0f09f45f3b', '王彩佳', '0', '2008-05-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('93af29522c1f4ac4a5dcc9916ba3612b', '蔡睿宣', '1', '2004-06-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('93bb44e4a74444dc811382e81a4b85ee', '林子傑', '1', '2004-12-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('93f86041a1a6453da4999567f154c84f', '林子柔', '0', '2007-03-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9428d90a716641e5bb866592f6743c45', '游凱涵', '0', '2009-08-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('942e114329724a6a9376fb7a2ccc831f', '陳彥宏', '1', '2008-11-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9462bf1a88b7491295e7c37d05e1c266', '蔡昕霖', '0', '2004-04-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('954560fc6cfc4e9b82cfdd5c6c6f62ee', '王竑鈞', '1', '2006-10-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9552b2ce3b8b44908d7f5f69752c5d7f', '郭加榮', '1', '2007-09-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9559afc131a64edcb431282d8b53ec12', '周善牧', '1', '2006-12-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('960ae30517f6450f81424056f2419da3', '卓倚恩', '1', '2007-09-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('966a85cbbeb24842b6fa332962648ebc', '許詔崴', '1', '2004-02-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('970786a4f42944549bb76009317c6c4a', '薛家安', '0', '2008-02-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('974a6d6d15a9468881f9ee8080b0bb2a', '莊咏璇', '0', '2009-06-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('97c224b012334a2f8a9dd15900a49f17', '蘇暄', '0', '2004-10-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('98016d84e2e74d6bae30010f1508276e', '鄭宇哲', '1', '2007-03-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('98891db69d324e53bc6e17cc9652c55d', '黃寶萱', '0', '2009-03-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('98c409cb82ac4524a72ec45bb324bef4', '蕭易倡', '1', '2001-05-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('991b1f01124b41fe95b0d2a52ef00d79', '吳宥柔', '0', '2007-09-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('992d750757bd496abb086ed60b51c4d7', '洪幼恩', '1', '2008-08-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('992e5cd931cc4d57bd0620099462e495', '徐以善', '1', '2008-10-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9946d4ee75354bf7a6d2f0936cc60fcb', '連憫', '1', '2008-10-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('996b40e3efb04b0eba5f3b5b769c59c4', '吳宇澤', '1', '2007-12-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('99dd8f591f3b42d1bbbd2e1f673cbb67', '陳柏翰Hank', '1', '2007-08-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('99dfc95bd480442f90c33fd9f3213400', '章方婷', '0', '2008-10-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('9a06f295850f4c2da6cf0cc97291a46e', '周昱岑', '0', '2005-05-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('9a2905cf477849bda1267eddc1f1ea53', '蕭凱升', '1', '2004-01-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('9b53bb84960343818ce6b124abbef05e', '李光恩', '1', '2010-08-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9b63aa5fc29c4a99ac62bbd0545f009d', '楊上逸', '1', '2005-06-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('9b6c6bfb94b24ead8f39c2f43b618bbf', '陶沛妤', '0', '2007-02-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9b8a4ebeabab46e5bf0d13f5de8f550a', '曹舒瑋', '0', '2009-07-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('9bb9b002cd3746c5a72d4d184a96dd26', '王琳涵', '0', '2007-01-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9bca427a7b4f4e1799ad28b54d0d8a89', '余厚恩', '1', '2006-11-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9bd7f086144b4256ae9f6e84927992e4', '王慶暐', '1', '2011-01-10 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9c97afcec2644b4783c18125b467420e', '蔡豐盛', '1', '2007-07-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('9cbcacde41b94d5fa0fd07e57967ce46', '魏愛妮', '0', '2005-04-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9d03377bdf524992aaa0024c38f1096d', '張錫安', '0', '2004-09-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9d1e8db55c8549a4987c66e58e902c69', '王澤瑞', '1', '2010-06-30 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '4', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('9d4cc74931a9400c9d0e3c0fa9e565e9', '武昱安', '1', '2005-07-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9dc5561545644626870373c78e6d238b', '蔡秉學', '1', '2008-01-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9e39ebcbf8a848e5bb6c1c8b8b880d09', '翁韻雯', '0', '2008-07-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('9e7f1f2fa71c407fb35b6e0c211ef114', '侯永齡', '0', '2007-07-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('9e9aef58f05a4ca98d9c4dee27016e9d', '侯冠伶', '0', '2004-05-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9eaf57bb7bb84917af3cc4fc016115b9', '郭加榮', '1', '2007-09-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('9eb2dcc0d5d845c5b23ac62d5e84ad42', '杜亞森', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9f3a746fdcbf48f4831660cec7034750', '曾瑀恩', '0', '2007-02-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('9f6d81528de84c2893c0f05e25eb270d', '顏均睿', '1', '2007-12-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a024ac990e434f15b14efb594405a243', '王仁牧', '1', '2004-05-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a029d607bc4d47d398816b66b4c0f0a9', '喬家慶', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a0ad3ab9913641b9afa5abd45e71ee57', '韓可芸', '0', '2005-05-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a0e8de2cca5540dba8210bce97e430a9', '張恩琳', '0', '2008-11-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a0f2b81bbfff4053a608f8487773a616', '徐健又', '1', '2003-12-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a10ef59def434883987b5dbf9e90b6bb', '謝采伶', '0', '2005-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a1365b524f23471995695a0af1e5da6a', '呂俞霈', '0', '2007-03-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a14706f603534cf291907b8c1c0fc44e', '虞奇曄', '1', '2007-02-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a1539cf0d24247ef95a142e9d78720b8', '廖雅微', '0', '2004-04-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a154877b894941e08df9802530d98ba7', '謝秉佑', '1', '2008-11-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a15e173413d142c19046a346dd5655ef', '張瑀珊', '0', '2006-02-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a22afbc4b648493c9c1ceaac4240da23', '吳沛融', '0', '2004-05-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a234ba6f263449b19c1e9a985fad09a5', '丁大恩', '0', '2004-12-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a2831701199347bbb1d01aab6a5a690d', '陳澤元', '1', '2004-04-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a2c8ea3dbd104318bca2e413777cfc3a', '王仁牧', '1', '2004-05-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a2ca9ac0e0644fcfa3d06ed0f8ff888d', '彭漢升', '1', '2008-09-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a32a700495d3483c878c0dbb3cbe4026', '葉怡忻', '0', '2007-01-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a32dd14065b343529184f83d6c3192e9', '王翔恩', '1', '2008-09-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a35e4fb4a3cd47b2b03619eed4ae1f12', '王澤瑞', '1', '2010-06-30 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a39ca1b54fed4c85b6abf68bd6883293', '彭承筠', '0', '2006-11-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a3a3451b24604c72ae98dacf2e746e12', '邱子恩', '1', '2009-04-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a3b2c042d5b549849b4d3e9a2fc63a62', '楊博中', '1', '2006-08-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a3c84e4c1cf04e9ebb26a715134999f2', '張僑之', '0', '2005-06-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a3f55d95cdb54b47a21b4c952a413933', '許裴芯', '0', '2009-06-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a4c424a99b8548bab8f812fb0cf5afbe', '田家怡', '0', '2007-06-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a4d902e907364e10af650cc6793aa4a5', '陳彥安', '1', '2008-11-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a4db9312abd549f390c9ef814a29bc9d', '邱偉竣', '1', '2005-08-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a5819bff1ee9426282e79dc0d77b89b8', '李子頤', '0', '2005-03-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a5a93784024e4fbb84294c7f63cad730', '李明樹', '1', '2004-02-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a5a93eaba01d49c7b284eeabc735a8eb', '李權峻', '1', '2004-11-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a5cbc8887229421d88340f4e680202dc', '陳淵融', '1', '2004-11-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a5fa2d7b69e7401086a14676b7866d5d', '許之頤', '0', '2009-06-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a5fca9981fc6444ea7c85767a9a295bb', '周昱岑', '0', '2005-05-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a624857eb38c4cc6823dc2ac58f4dbe0', '張恩霖', '1', '2005-03-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a62f18e239a242828321d744690bbcc7', '陳乃瑄', '0', '2006-07-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a6480a69471f4be79b0d8433e76c74bf', '黃昱瑄', '0', '2008-01-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a6781d12b80e42948dcebb1fbd43a0ed', '朱莉亞', '0', '2007-09-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a6d4fa1db1a54fd7a75d5ebac62f3ee5', '黃主恩', '1', '2005-05-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a7cae6e6b133473890775ec59459f43c', '鍾以路', '0', '2006-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a86baedaf0ad403da92c826d86680531', '李嘉德', '1', '2005-03-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('a87b42618f604714ab6021ef02aff767', '王亮之', '1', '2005-08-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a89da0531e384a0abdc4b257ea104d78', '莊栩鈜', '1', '2004-01-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a8b09cd18e3445b890ec4f0395f1ae62', '郭佳芯', '0', '2010-01-27 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a8e3bd8fd34e456f8e0c7ade62da01e2', '吳昌諭', '1', '2004-11-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('a915118a233a4bbc8a0366ab59c83ba7', '黃子璇', '0', '2006-09-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('aa65bdf0638a4701ae9870b000c0b99e', '李以安', '1', '2003-11-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ab233644cc3448ba88d493da053036d8', '范得容', '0', '2004-10-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('aba2510d356c479f8829b3ad6001eca4', '劉上華', '1', '2007-08-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ac2e525c544244eb94e10404de43528c', '周以樂', '1', '2004-07-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ac3fa4f931f94b6eb334b2fd562e25bb', '陳欣', '0', '2008-02-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ac8f7e299a5f4381b97e44636ccb04f4', '孫運琪', '0', '2007-05-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ad0628566e0b418581ea225da58fa807', '袁雋程', '1', '2009-02-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ad1cd18d98f54921a9df96d41a96fff2', '黃子璇', '0', '2006-09-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ad27adc0e7e245a2a2c7aa1ccecf2bc0', '張易煣', '0', '2008-04-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ae1e3367ff8e4c48be13e6db52eb8f2f', '賴正恩', '1', '2006-10-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ae3be5c3d2a24399a61eaaf0b816732a', '李柏良', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ae5d7e0fafe0426996136a2b9429e88d', '劉語安', '1', '2006-10-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('aea9203dbb89425d97435aff24a43a2c', '游婷安', '0', '2007-09-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('aee9f16caca84d24a084418096107a08', '游雅筑', '0', '2009-03-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('aeece3efe2f7486daf183f4b5a95f417', '陳亮蓁', '0', '2009-06-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('afbf302d2b024e5daf06d91a1800e80d', '王顥霖', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('affaa61385de4151adcc59049cd852c4', '蘇祥德', '1', '2004-10-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b012911ef93c46f5b8a8b22e7c8538d2', '王貞霓', '0', '2006-01-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b0664bc32a0d4ebe880d23927cff3492', '洪幼馨', '0', '2005-07-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b0b0c94d45324a49ba8875ad703571ba', '黃迦密', '1', '2008-01-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b0c39de22317407b86ae002b437cd669', '蕭易倡', '1', '2001-05-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b0d9f8ee214a4d2f814a07a38716300c', '陳壕德', '1', '2008-02-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b21f6007705e4194aa9ef977e95f8de3', '藤井尚', '1', '2008-01-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b26aa567bb32418981d3617e933ed7f8', '李婷蓁', '0', '2008-04-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b2a08b732cdc4194acc8413d327e5a43', '施翊瑄', '0', '2004-12-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b2b96254bebb464e96d46bf2bceb699d', '林廷叡', '1', '2005-08-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b2c7473b85e742398aade89124c73337', '蘇妍心', '0', '2006-12-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b2f01eab57b4434a8fbc9f6fb74f951d', '呂晨右', '1', '2005-02-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b301555772cc477f97046a17a3fbed85', '邱子瑞', '1', '2007-07-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b3e3f7fc36784ab7882244452a6cea94', '陳乃瑄', '0', '2006-07-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b473e035c450414c9ad4edf237ff2592', '曾瑀恩', '0', '2007-02-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b491c063a46247bca806c767135f3933', '姜慕謙', '1', '2009-05-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b4cc7ebed76b4b76aafaf29b1f55f3e8', '邵唯', '0', '2008-03-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b4d464dfdcb64917acdf53a08ca2755e', '葉育岑', '0', '2005-09-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b50e29d3a0774274905b07a99a86244a', '李至恩', '1', '2004-02-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b59f8453a0a241b4a8397f296e972c99', '彭燕航', '1', '2006-11-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b5c7963c7bad48c3b937acbf4541cb2d', '梁子翊', '1', '2008-07-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b5fe44d032e24e01b25be7fa2a6abec8', '徐睿馡', '0', '2007-03-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b60178704a624749b1bae0be2afb8c38', '蘇祥德', '1', '2004-10-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b60fe374e5e94d89a240cf9fab7474eb', '謝妤葳', '0', '2005-04-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b62e177b0f22498daa6ae75165c0ccc9', '余信恩', '1', '2008-12-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b6b279d745b74b499b70208cca6e435a', '張羽承', '1', '2005-03-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b6b4c213ffbd487faaea4ce4a93de87b', '范得容', '0', '2004-10-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b70d36cc6e674fa48fa457ddcf3ea153', '絲佳旋', '0', '2006-05-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b77041675b774fb791c439b57776eb31', '蔡峪霖', '1', '2008-09-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b7718483277740dfa0bddaa94bda8a17', '賴芝琳', '0', '2004-04-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b774a7345ede4a79a4ddeeb729baa3ce', '張恩琳', '0', '2008-11-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b7876acde9304159b979bd4025f885fc', '黃晨語', '1', '2005-05-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b7b4d9989a9449a680c5cf2aa6575b0c', '黃主恩', '1', '2005-05-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('b7b67d7778d742ceb75c135a50551c61', '呂淯暄', '0', '2004-12-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b7bb9f1d70d847c7af858c31f0c2b9df', '黃浩哲', '1', '2006-05-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b89fb03f34914c96b07063612a80f490', '賴正恩', '1', '2006-10-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b8e377b00e9e4b73b6addf5970b4ac8a', '葉伯恆', '1', '2005-12-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b9311bda2d8847729e69494c6e3c9188', '卓越', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b9d349991e5448369df7dee6508218de', '劉庭甄', '0', '2007-09-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('b9dfdeedfc1f478d9335548ca59f35c1', '陳忻恩', '0', '2007-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ba41044352764a35a252f195d1451733', '劉仁斌', '1', '2007-01-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ba56847f1cae4e7680aec6a64d872a4f', '黃品叡', '1', '2009-01-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ba94c8475e264b059b8ec3b0874a40c4', '馮育傑', '1', '2005-02-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ba963877be3b485a8d969df5dce7393e', '廖婕涵', '0', '2004-04-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('baed078237864180b004e4f02cf9e9a1', '柯君翰', '1', '2006-03-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('baf417920b1a40e7a619ebf12df0e40c', '王和雅', '0', '2008-05-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('bafbd68498a441908f22be7cc1b9d45a', '黃浩軒', '1', '2006-05-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('bb4975a70fd849dab54cbdc155756c96', '林恩雋', '1', '2004-01-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('bc475052fd344113aaa030642406acb4', '杜亞森', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('bc57910286014095996b3b42188515eb', '吳庭恩', '1', '2009-03-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('bd2fbf43521a49d9970296370b4c6fae', '蔡慧恩', '0', '2006-10-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('bd449c52454b4a3088adbd48ec9e013e', '韓可芸', '0', '2005-05-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('bd665057050246ed8c0ce9c77717bd8b', '許家維', '1', '2007-04-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('bd94184445f34f578eed1187f6c5566e', '葉伯昕', '0', '2004-08-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('bda21b03a95b4119aa5959a7754cd1e9', '劉瑩婕', '0', '2005-04-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('beb06017bfca4ed4acd5834860976719', '謝文彬', '1', '2004-04-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('bf42741cb01a448bbca9d8cb6fceabf8', '楊莉安', '0', '2005-02-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('bf9050ca57be417aa44336833f549102', '楊莉安', '0', '2005-02-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('bfa3415dbb714ff5bebb4a519f25e85c', '徐小柔', '0', '2009-03-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('bfd5115c83854a00a5924a2c01262344', '蕭凱心', '0', '2007-06-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('bfdc9da1973a4d418318a54e8a232f29', '徐品徽', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c0085ad3cc08450086c63c39d4039582', '吳星瑩', '0', '2006-02-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c0b8d4b200ae4f8f9fdcf365296a3671', '華辰憲', '1', '2004-05-31 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c0dbef26875841f4b09d1083d01cdf96', '楊傑崴', '1', '2009-01-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c263fc753287408a8fab5e70a5de3976', '唐揚', '1', '2009-05-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c284f245c4fb434db5cdbd3d1af05bf7', '陳迦勒', '1', '2006-10-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c28be47ab14544579b1eedccacb3c3e5', '梁家恩', '0', '2009-08-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c2ca220fde8b45e1afe91d519ac5f050', '鄭婷文', '0', '2006-12-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c2d892fe99774ecf8d018b68dc227f31', '林恩典', '1', '2008-09-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c358c0b0f02847e8aeddf0cf2a2297a3', '李德頎', '1', '2006-12-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c3e53ad3a22e4b38824b72f704b02ffa', '陳馨悅', '0', '2009-05-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c3eaef5f4eea42b4b338059133386788', '蘇妍心', '0', '2006-12-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c40e3850a89f4e0b9b2cbb15531b8566', '麥紫穎', '0', '2008-06-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c427b4e1cb444b5d990569a48e9592e2', '陳壕德', '1', '2008-02-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c4441b64afd24a05bc52ab099ef61eb1', '謝佳綾', '0', '2003-12-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c4966ed024864ad6aa2b70b250dd7747', '潘怡安', '0', '2004-05-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c4af3da155b5488395c64370e3bf8a3e', '李恆馨', '0', '2009-06-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c4fe3dfd61a3407694cb9faaa3c70203', '周昕霖', '0', '2008-01-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c50fc40844fb4f4d88f68eeb7a1646dd', '陳佳妤', '0', '2004-11-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c596d9d0466845afaf433aa405c9375a', '李至恩', '1', '2004-02-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c5eb9946cd4e49bda4eb5c8983312f8c', '陳君瑤', '0', '2007-04-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c5f10811c50b4a8bb2e3d15915aff67b', '鍾宸睿', '1', '2008-05-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c658f18999c74ab9bf7cfeb45a8d549c', '馬王子毅', '1', '2004-05-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c68f255d3aa948e691cf87829b5e0096', '鄭子恩', '1', '2004-09-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c6a052abe315473aa4a7f7772fb300ab', '邱明楓', '1', '2008-04-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c6cae39441db46f3b4e73f3f8dedbe96', '林泓宇', '1', '2004-01-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c6fe1b66553b436c8a267b8d3d3e3cea', '黃誥恩', '1', '2005-10-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c71e3e1b8b8a42cd90f3a5c661a9f6e7', '林佳萱', '0', '2008-04-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c7433976ba44441bb23567572d5cc490', '陶沛妤', '0', '2007-02-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c77fcdcaea784f0b93077ca235a98b2a', '徐采鍒', '0', '2007-01-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('c817575dfd1e4480a1e7952bf7f081b0', '賴佑恩', '1', '2008-08-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c86300f8ff7e4fe79c2ce864d1a1b188', '張晨曦', '0', '2009-02-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c8b7176711ce4f82a5db96fd799ddfa3', '吳佳芸', '0', '2007-09-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c8e8ffae95dc4986ae7fe62d5beae0b8', '文忠澤', '1', '2007-11-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c8ed5536b0ea487795640113e6305d72', '楊以安', '0', '2006-03-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c92c483ac7bd4c38be8ffce1a44cb077', '蕭敬蓉', '0', '2007-04-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c9b493c82d6d462ea81b95a7c783c42d', '許硯傑', '1', '2006-11-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('c9bca448c2c34a36b484a5b908387cd2', '黃羽涵', '0', '2009-07-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ca08e7aa4d9941f99ff4c2af3ba6dc51', '吳沛耘', '0', '2007-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ca649d86fd754eca93df9b088142d1e3', '林恩典', '1', '2008-09-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ca9d49616efc477ba6bc689a78c43a6e', '沈昕儀', '0', '2006-07-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('caf57167bbb9440ca976c085424681cd', '莊碩恩', '1', '2007-09-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('cafabd252c014aebbcd45e3c46210783', '陳語婕', '0', '2005-01-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('cb048dbb2bd14130996247fbc6f7ff59', '簡小喬', '0', '2008-05-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('cb773e818ef643cb8f4184f6b074ce8b', '王珮謙', '0', '2004-02-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('cb927eb559fe4d7a8f1fb2d89425a278', '吳佳芸', '0', '2007-09-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('cb93849832f84c17b6921c06bfd36560', '皇甫宥心', '0', '2006-06-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('cbbd2b6edf024896a8317ec00622ef88', '簡心愛', '0', '2007-08-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('cbd5a5afbaa547c69e70d07fb71fe37a', '俞力恩', '1', '2004-02-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('cbec5aaaf3234a49ade41be224c4fd60', '萬法涵', '0', '2007-10-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('cc76108da4cd402f8daf58f152adc097', '陳思宇', '1', '2006-09-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ccb14294ec2445a6809b481f319151ed', '李權峻', '1', '2004-11-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ccfc399156214affba6bdc68539f6110', '于逸菁', '0', '2003-11-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ccfd969bebc34b5ebea45ba893cadc53', '黃承諭', '1', '2005-07-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ce181cc148f547a5863e804bcf53a4e3', '陳以庭', '0', '2007-10-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ce2e59edaeba460cb43c7719095839dd', '張道潔', '0', '2005-01-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ce54837328494d0cbde5c072b019a387', '王翊妃', '0', '2006-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ce572778d76449df81c5b12c1fb34a65', '黃柏森', '1', '2005-07-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ce84b5d9356241eebac1c71fd61e5397', '黃薇如', '0', '2005-04-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('cec5cb53481b43858f081aabc1d914bc', '陳澤元', '1', '2004-04-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('cee2dd1fce91487a8c51f30b856d575c', '公貽萱', '0', '2004-11-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ceffddcc3ff848d1b4b174134652a460', '王沁安', '0', '2004-07-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('cf01b7f8c877462a8cf6a0dbc0e69420', '陳惟熙', '1', '2007-01-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('cfad24078c96421f8b0367652a42b5dc', '洪銘德', '1', '2004-03-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d077979a63644d13a8933d20cc890221', '林銤鑫', '0', '2007-07-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d0c261dc77094a28be8a2a90402c3e98', '李允言', '1', '2006-05-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d1fda1bb3c8a475a8e41166e8a1f3cb9', '林以恩 ', '1', '2006-01-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d239b2beaa9941209a2254a24f01deba', '邱旻謙', '1', '2005-10-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d23bbe7a3d474c2fa74e30f411fee6cc', '何少馳', '1', '2007-01-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d26111c0303e4962a8c70715f575c08e', '紀慶宥', '1', '2007-06-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d29591838121412f85075bd348b74263', '李維恩', '1', '2008-11-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d2cdb5e80b9c478a8da16644a4adf111', '吳佳倫', '1', '2007-09-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d33b5e38064f48068726e53b6988376a', '王致翔', '1', '2005-02-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d365991d8af54debbf4f59f4a636c664', '陳煜澄', '1', '2003-10-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d38b54f2098c475bb1e30229b4e5fcd1', '吳東翰', '1', '2005-01-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d430c42fda6942b28f82bae311b90c1d', '許慕安', '1', '2004-03-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d4f85eab863342259887f5e6d4d6d137', '劉允祺', '0', '2005-02-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d5347855ab354df2bd5aa2c1d4648a60', '郭佳恩', '0', '2003-10-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d6c7e0493479410eab852d84454ad5a3', '彭芸', '0', '2009-04-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d70cf8c8ebdf4d0ea229e03dcbe7d395', '陳加樂', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d75bd57da40b4d00ae477334628ecbb1', '李維恩', '1', '2008-11-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d783fc3b1bbe4370ae8d4b2573c503dc', '蘇妍綾', '0', '2009-01-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d8035b6977e3492c88f095f5038c2554', '侯永齡', '0', '2007-07-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d82e80e7ae2f49ed863b9047b5e19fba', '游凱涵', '0', '2009-08-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d85f18af549f4d7cac66d0aaaf4beea1', '黃佑霖', '1', '2006-05-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('d88e1de2d9a1411a9ef191c9bd1ea275', '文品宥', '0', '2006-02-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d8de606ae7a4493fa6974b6ad25080b7', '謝樂萱', '0', '2009-04-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d94c2498e15f491c96083e193b7d0fc0', '陳彥妤', '0', '2007-03-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d956a06be0d744c891cbd57c24b8ecc2', '王亮之', '1', '2005-08-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('d991a3c1fbf947378307039a990233e4', '廖嘉泰', '1', '2004-02-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('da203e7dc925458dbd2e2641b52bcee6', '林少湲', '0', '2005-01-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('da2be6ae0acb43bb8a506038a1b7204c', '趙駿杰', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('da2eb815cbdc4a0286a65a07d7296593', '曾顗璇', '0', '2006-09-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('da3d06df359144aab878fda8fec39c67', '邱子瑞', '1', '2007-07-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('da485e7e924042e3bfd2aa961b9a1fc9', '呂淯暄', '0', '2004-12-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('da66826152494887a80f118757f9a4e7', '李天淥', '1', '2006-03-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('da78953f167c4fc29f6d3d2c2da42ffa', '盧景筠', '0', '2008-07-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('daba21ef9f7443ffbe981b7b9285306b', '陳毅', '1', '2004-09-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('daf60e81f65c4b5e937894f202fca4ce', '劉語宸', '1', '2009-08-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('dafabb948f0b4429b68be5b4ea32ffc0', '陳彥達', '1', '2005-09-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('db128969728144a199b07d865803d79c', '彭燕航', '1', '2006-11-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('db4071c7093c4a1980b74d4eb86df542', '簡心悅', '0', '2006-04-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('db5812c14bc54b0ea596eda62ad8cafd', '林晨曦', '0', '2008-09-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('dba582702581425ebe21d256c1f995fb', '陳加樂', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('dbc87239f91d43f097c20eaf5478edf0', '林亭妤', '0', '2009-01-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('dc1af56183f54d938d6c6b5ddbe4fa0a', '陳聖恩', '0', '2007-01-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('dc76aec918314e3a9ce7083a6a55aa7d', '莊碩恩', '1', '2007-09-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('dcb6d805e596420ca195d95377a5744d', '武昱安', '1', '2005-07-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('dd3be690b17a4c46893070e0321facfa', '張可恩', '0', '2008-02-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('dd61c9c3806d480d934db1fbf5c75a1c', '詹茹蘋', '0', '2004-05-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('de4632cff558462ebf1677fb81ef90ab', '李以和', '1', '2005-05-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('df17a9ed97b943c8a6d3e20c03ab4aec', '王湘晴', '0', '2004-05-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('df28ddc9556c403cb2335ab47ec3a3c7', '劉允祺', '0', '2005-02-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('df42637c55234deea03352667f3f05ae', '劉仁斌', '1', '2007-01-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('df505624754a468580858c538b300737', '莊佳恩', '0', '2006-03-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('dfa24f112e33493896bea7508f7b2bc5', '陳麗宇', '0', '2004-02-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('dfb8742ae54248bba8cc853de91b3230', '梁家恩', '0', '2009-08-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('dfc65ad472114f71b2fd776d366aa8dc', '陳祺蓁', '0', '2005-08-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('dff6eb2673e5405290d5a43224b9d12a', '張瑀珊', '0', '2006-02-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e04a86b472674668b17fb14dba8d5b07', '楊巽宇', '1', '2008-04-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e0af17a54a94453aa3d1390a9ee1c477', '李嘉仁', '1', '2005-03-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e0e28b5b248a4f0b897bfbbabc97ac98', '莊擎', '1', '2004-12-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e174ad69474f480f9d0169da0551ef3e', '何安祈', '0', '2008-03-15 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e1bd09ce65d64a43ba06dd54053b6e78', '林宸伃', '0', '2004-05-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e1ce96df00604c32b76ff998f62e053e', '林秉新', '1', '2008-06-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e1ffa3d3a4004c9eb8e6d183bc3e23e8', '張芷齊', '0', '2007-12-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e293f7ffdfac4965add096c4d57354fb', '洪銘德', '1', '2004-03-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e346cadca02145ee910d097a1361a525', '徐德睿', '1', '2004-05-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e454ac90f4924cc1a2798021fd4f49cb', '劉宥賢', '1', '2007-11-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e45ddc9e39c94f63acc73ed630840e47', '吳星瑩', '0', '2006-02-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e4729e2317dc41628f8f031d7a4dacc4', '李振民', '1', '2007-03-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e4eb92fba3994e3eb604bfd95839cdc1', '張易煣', '0', '2008-04-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e536e91cd85348138bb536f869436a56', '盧景筠', '0', '2008-07-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e5976801e23443de83fccc3e1fc9df7c', '陳于', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e5bda15156ee410e9684d165f4e68385', '喬家慶', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e5cdf70ac3ec457dad7b914b834536ef', '徐大喆', '1', '2007-05-31 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e69c32df005a46b7b7d5d2b30989ddba', '周昕霖', '0', '2008-01-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e6d488e8999e4ca29a75ab91f430166e', '陳芷妍', '0', '2008-10-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e700699344ec4748856d4f8a61310f07', '劉瑩婕', '0', '2005-04-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e7d5ca3bebcb4fd69270367397eedb90', '劉榮祺', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e7f91aded27b47eb840d9db6c74b4124', '王湘晴', '0', '2004-05-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e81b39c56c084c0782ffea49ac65b0bb', '林嘉麗', '0', '2003-10-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e81ec506bc0f49828951ecf3b1f2fa54', '何少馳', '1', '2007-01-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e84342ada26441b8b8852761b7fa00ae', '林峻安', '1', '2004-09-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e85ed708c37245a392a456ca5f1e0a2c', '楊皓崴', '1', '2005-04-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e8d67137aca84ed5966f016903347d9b', '郭敬知', '1', '2006-08-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e8f119b5e6f64a71b32941c6c117424f', '鍾甄筠', '0', '2005-12-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e911ef4cd8fd48b9aede09d96129a280', '王博瑞', '1', '2003-12-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e969da99746a40df96f49bdfc8ee48c2', '袁永睿', '1', '2005-11-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e97260f2dd464614a0f064d9fcdfe5de', '張詔暘', '1', '2006-04-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e9b5d1732cf748a2adda2c76524d0004', '何奕寧', '0', '2006-05-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('e9cfcbbd7c094f3d8d0e7a577affac02', '簡妤珊', '0', '2007-06-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('e9dd457e3dbc45a68f617897d7f2853e', '曾韋寧', '0', '2009-03-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ea04616a751b472491fcf465be16bc8b', '郭天寶', '0', '2007-01-31 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ea1a57bc94b0450baabd54d7ca1223ce', '葉怡忻', '0', '2007-01-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ea535a7459594fbfb9c399352fcff52a', '林子茵', '0', '2004-04-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('eaebabc3f113425fb36235655105ef08', '李允敬', '1', '2007-10-31 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('eb38d57a4a5845f48e7d319fafba3008', '陳語婕', '0', '2005-01-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ebb1e6c506c34dbf8be8d0f30e3ca278', '彭蓉', '0', '2005-11-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ec112a3dd99a4a8e95cbf245012ac419', '郭沐恩', '1', '2005-10-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ec14c01aa3424ebe9e6c6781289f572d', '侯沂芢', '0', '2009-05-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ec6e5ff8270a4332a2d248e71c0ee2a0', '蕭濬黎', '0', '2008-03-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ec8aa24b510f466fb45fe68efcd3cb5c', '李嘉德', '1', '2005-03-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ecc0d8f6fa6341abab7537a877a27575', '張芷齊', '0', '2007-12-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ed5761fd7fc544eb96172e33ec1ed8ac', '鄭為云', '0', '2007-03-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('edb971609f9b4a919decc74f06c329ed', '蔡依恩', '0', '2009-07-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('edbace80bd5e49ad8d05f6bc4235f82b', '蔡軒安', '1', '2009-08-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('edf02d0accae474daaec2655a86acdc5', '陳柏宏', '1', '2005-05-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ee2efaa857c14daca6e43ef8ca18718f', '公貽萱', '0', '2004-11-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ee38a86fc6fb45e0b17527e043e2d15f', '楊健軍', '1', '2007-08-21 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ee5d524e17fc4b44a25a1680da5f6294', '謝佳綾', '0', '2003-12-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ee60df2959c8404d86fac0ac49bf2fd1', '謝安', '0', '2003-11-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('eeb00dec96d446889df89f21b49f3c3b', '王宥恩', '1', '2008-05-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ef04e15227a448e4a27f42ef2168746f', '邱旻謙', '1', '2005-10-16 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ef3992580fc04dea87d5c6c240ed7130', '余主行', '1', '2004-09-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('efd1b65d53764c45aa440dd2e06294bc', '張瑀妍', '0', '2006-02-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('efeed0eab8ed4b3e8d32c2595a521cfd', '蘇昱', '1', '2006-12-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f00f2c717ece443490f5e0b2fef19530', '李天淥', '1', '2006-03-11 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f026cd9a985b43d291789f78d02171b5', '莊栩鈜', '1', '2004-01-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f03a4d475a6d4b00806842a4ee25d939', '李兆庭', '1', null, '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f04f9409d5584f4fbc9dc6012368e0d2', '張千恩', '0', '2010-10-10 00:00:00', '2', '0', '', '', '', '', '', '', '1', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f07c8a8923c44d58a4ce893a93062e03', '郭佳恩', '0', '2003-10-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f0c5d7ae092649759900a583c7d3e561', '袁雋程', '1', '2009-02-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f0f777b87f5146b4a6a449aa21ee43c2', '張家恩', '1', '2007-08-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f14b6bcbb3db4713be860202b1029167', '房奇臻', '0', '2008-10-01 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f15fe1cb24894da4b9f51e0522b052d3', '王博瑞', '1', '2003-12-04 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f1d930fef1814da7af5c23aef883882c', '周以盼', '0', '2005-10-06 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f1e970fb76344d4fbc5f05c0024e7b3f', '鄭婷文', '0', '2006-12-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f22018a0f7cf498f91a5b1a651208b02', '余主宣', '1', '2009-02-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f23222ccc09a4951889abe05addc639e', '陳姿穎', '0', '2006-06-27 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f248b8c67acf464d870ccee90624e677', '藤井尚', '1', '2008-01-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f27750d7688a49f6876ba375ed9877a3', '陳盼臨', '1', '2008-08-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f2a681a92e144d86852a2ebf419c0834', '李先定', '1', '2004-01-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f2e42d41c8eb41b1823874c0af7fe243', '周士雄', '1', '2008-07-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f32e6a4d9b104625bf74a9a3b5d9bb30', '王彩佳', '0', '2008-05-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f341d5a7724f45e9b0c495211da2052c', '絲佳旋', '0', '2006-05-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f3457c2d554d43d69cac77f69a5ad7b9', '鄭又寧', '0', '2008-03-24 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f36a6b20bc044759844c097a53915bd3', '莊久鋐', '1', '2005-08-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f3cd68fe64834d52b2663c0aea539bd3', '王妍婷', '0', '2004-11-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f3d6e4de743a453fa092bb9003cbc389', '陳一鑫', '1', '2006-01-17 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '9', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f47bbb0b9fad44848d76d6d3a80906f3', '王顥霖', '0', null, '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f511f3ac16644b91bbffefdba5c2e317', '林銤鑫', '0', '2007-07-19 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f5cc0ab8688546abbd2a7cedb2945f05', '李嘉仁', '1', '2005-03-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f64ccdb2085b40d18dbeab0fb863d21d', '梅若屏', '0', '2003-09-28 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f69465f5ca7245bb97ecc5f3fd704eae', '陳柏翰Hank', '1', '2007-08-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f6af1f915f65495ebcd1bdb6e22aee52', '張恩霖', '1', '2005-03-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f72545592f5341b99cd2cae54e8fe419', '陽庭曦', '0', '2003-12-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f740c8a5da8e45ca9848a569b2f2808b', '吳沛耘', '0', '2007-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '8', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f74888d598b245079845eb8b2d554a80', '施翊瑄', '0', '2004-12-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f7a522ca826d410c9b707ce1852a4c37', '余主宣', '1', '2009-02-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f7c387bec6cb41ff881816a7741bb82f', '趙勻熙', '0', '2005-07-30 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f8616999014247d484434d2e4d77c1c7', '楊子涵', '0', '2003-09-14 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f8ec9b066bcc49e990a52d1131fd0f71', '李先定', '1', '2004-01-18 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f9197290282f4b309889a43727bb9fed', '藍雋博', '1', '2009-04-13 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f920bdfbe6064f33baf4b75e6d0092bd', '陳彥安', '1', '2008-11-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f923546143b343efb71cb38668e0ca79', '謝天恩', '1', '2005-04-22 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f94ef0bb86de423ba78f7ae9e8c0e744', '吳宥柔', '0', '2007-09-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('f99dbc1cbb1a4078803e47a21832d357', '林恩雋', '1', '2004-01-25 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '11', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('f9ec4ee63d97414689b4158ffe1b1960', '黃浩軒', '1', '2006-05-23 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('fb9092db474f4653bdf9a5bcca39439e', '李子睿', '0', '2007-08-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('fbb091f7c01a4992a444f72aac5fdf3d', '連憫', '1', '2008-10-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '6', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('fbba62e070124a829d732310eb613d1b', '黃晨語', '1', '2005-05-09 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('fc620335688a4defab723ff2305a46d8', '張巧暄', '0', '2007-10-26 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('fd07b794875c4bc381e43fa8abedf9bf', '丁大恩', '0', '2004-12-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('fe0215eb4e734281a4ee87e8a389daa0', '陳品佑', '1', '2007-10-20 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '7', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('fe8052679f1b4bb291d0e0cf6df94d84', '林欣恩', '0', '2007-07-07 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ff0ffd38c2694ac8b665c3f54e764b94', '林宏綸', '1', '2006-11-05 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ff11f1890be2435f8b9f3ba31d2a9777', '馬王子毅', '1', '2004-05-10 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ff305852e16244a7a69bc6b6c3b563db', '葉伯恆', '1', '2005-12-08 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ff6a50f936a84ad5b38c77a92888014e', '陳祺蓁', '0', '2005-08-02 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '10', '', '2015-10-25 19:14:10', '2015-10-25 19:14:10', '');
INSERT INTO `people` VALUES ('ff9380bffeff4a39910b62e27d89b4e1', '熊以約', '1', '2004-06-03 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ff969aaadb764dc5bd2d80a06c27fc20', '張可恩', '0', '2008-02-29 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('ffc2066cd81b4f2285f13728fd26aab6', '王和雅', '0', '2008-05-12 00:00:00', '2', '0', '', '', '', '', '', '', '2', '', '', '', '2015-10-25 19:02:40', '2015-10-25 19:02:40', '');
INSERT INTO `people` VALUES ('P_222222222', '東東', '0', '2015-03-22 15:55:16', '2', '0', '', '', '', '', 'P_22222222', 'group_000000000000', '0', '泰北高中', '幼兒', 'worship_123456789', '2015-03-22 16:03:32', '2015-10-18 17:06:54', 'TEST');

-- ----------------------------
-- Table structure for `people_group`
-- ----------------------------
DROP TABLE IF EXISTS `people_group`;
CREATE TABLE `people_group` (
  `ID` char(36) NOT NULL,
  `NAME` text NOT NULL,
  `LEADER` text NOT NULL,
  `STATUS` char(32) DEFAULT '',
  `GROUP_TABLE` varchar(64) DEFAULT '',
  `OWNER` char(32) DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of people_group
-- ----------------------------
INSERT INTO `people_group` VALUES ('00000000-0000-0000-0000-000000000000', '無小組', '無', '無', '無', '無');
INSERT INTO `people_group` VALUES ('group_000000000000', '幸福小組', '李西隆', 'CARE0001', 'CARE', 'GROUP0001');
INSERT INTO `people_group` VALUES ('group_17022617350640800', '2', '3', '4', '5', '6');

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
-- Table structure for `persistent_logins`
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------

-- ----------------------------
-- Table structure for `present_worship`
-- ----------------------------
DROP TABLE IF EXISTS `present_worship`;
CREATE TABLE `present_worship` (
  `ID` char(32) NOT NULL,
  `CID` char(32) NOT NULL,
  `PID` char(32) NOT NULL,
  `ACTIVITY_ID` char(32) NOT NULL,
  `CHKIN_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CHKOUT_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE` datetime DEFAULT NULL,
  `NOTE` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of present_worship
-- ----------------------------
INSERT INTO `present_worship` VALUES ('1', '1', 'P_222222222', 'worship_123456789', '2015-08-22 16:50:45', null, '2015-05-31 16:50:48', 'test');
INSERT INTO `present_worship` VALUES ('222', '1', 'P_222222222', 'worship_123456789', '2015-05-24 16:50:48', null, '2015-05-24 16:50:48', 'test');
INSERT INTO `present_worship` VALUES ('894ac933ac154491b5fb129d4681d8eb', '1', 'P_222222222', 'worship_1234567890', '2015-09-06 16:07:17', '2015-09-06 17:10:38', '2015-09-06 16:48:47', null);
INSERT INTO `present_worship` VALUES ('f987da555f77412bbccfb0d2c81c349c', '1', 'P_222222222', 'worship_1234567891', '2015-08-23 17:45:33', null, '2015-08-23 18:00:51', null);
INSERT INTO `present_worship` VALUES ('f987da555f77412bbccfb0d2c81c349D', '1', 'P_222222222', 'worship_1234567891', '2015-05-24 18:31:26', null, '2016-02-28 18:31:29', null);

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
  `CONTACT_PEOPLE` char(32) NOT NULL,
  `STATEMENT` text NOT NULL,
  `CREATE` datetime NOT NULL,
  `LAST_UPDATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `NOTE` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of statement
-- ----------------------------
INSERT INTO `statement` VALUES ('P_222222222', 'P_222222222', '要多為家庭禱告', '2015-08-16 15:53:18', '2015-08-16 15:53:21', '無');

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
  UNIQUE KEY `SYSTEM_ID_UNIQUE` (`SYSTEM_ID`,`SYSTEM_PARAMETER_ID`) USING BTREE
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
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `enabled` int(11) DEFAULT '1',
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1xd', '2017-02-16 17:08:38', '1', '84ec8d2a7320b636', 'admin', '系統管理員');
INSERT INTO `users` VALUES ('2', '2017-02-16 17:08:45', '1', '84ec8d2a7320b636', '1111', '神蹟系統頁面');
INSERT INTO `users` VALUES ('user_17021616562435000', '2017-02-16 16:56:33', '1', '49db3bc51f21f8c0', '2222', '大專系統頁面');

-- ----------------------------
-- Table structure for `users_role`
-- ----------------------------
DROP TABLE IF EXISTS `users_role`;
CREATE TABLE `users_role` (
  `id` varchar(50) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `rolename` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `userId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hf371ar4xxbkxph5eggr4rgby` (`userId`) USING BTREE,
  KEY `users_role_ibfk_2` (`username`) USING BTREE,
  CONSTRAINT `users_role_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  CONSTRAINT `users_role_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_role
-- ----------------------------
INSERT INTO `users_role` VALUES ('1ss', '0', 'ROLE_ADMIN', 'admin', '1xd');
INSERT INTO `users_role` VALUES ('2', '2', 'ROLE_MIRACLE', '1111', '2');
INSERT INTO `users_role` VALUES ('rold_17021616562435000', '1', 'ROLE_COLLEGE', '2222', 'user_17021616562435000');

-- ----------------------------
-- Table structure for `users_role_setting`
-- ----------------------------
DROP TABLE IF EXISTS `users_role_setting`;
CREATE TABLE `users_role_setting` (
  `ROLE_ID` varchar(45) NOT NULL,
  `ROLE_NAME` varchar(45) NOT NULL,
  `ROLE_DESC` varchar(45) NOT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_role_setting
-- ----------------------------
INSERT INTO `users_role_setting` VALUES ('0', 'ROLE_ADMIN', '系統管理員');
INSERT INTO `users_role_setting` VALUES ('1', 'ROLE_COLLEGE', '大專系統頁面');
INSERT INTO `users_role_setting` VALUES ('2', 'ROLE_MIRACLE', '神蹟系統頁面');

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
  `WEEKDAY` tinyint(4) unsigned NOT NULL,
  `START_CHECKIN` smallint(5) unsigned NOT NULL,
  `STOP_CHECKIN` smallint(5) unsigned NOT NULL,
  `EDU` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worship
-- ----------------------------
INSERT INTO `worship` VALUES ('062825b99ec84f378d5c4b6dcd847cba', '國小主二', 'Chang', '1', '1015', '1200', '1', '945', '1130', '2');
INSERT INTO `worship` VALUES ('0be4bd5abf1e45da95739a93946c801f', '幼兒主二', 'Chang', '1', '1015', '1200', '1', '945', '1130', '1');
INSERT INTO `worship` VALUES ('22e44dbf04d34cdeb85ad231616fecdb', '幼兒主三', 'Chang', '1', '1200', '1345', '1', '1130', '1315', '1');
INSERT INTO `worship` VALUES ('3322bf91c0484b6b8a7e5b0b17e6d22c', '幼兒主一', 'Chang', '1', '830', '1015', '1', '800', '945', '1');
INSERT INTO `worship` VALUES ('48414ba3a7134d79b6feca439730a666', '馬曹2', 'Chang', '1', '1400', '1600', '3', '1330', '1530', '1');
INSERT INTO `worship` VALUES ('4f21a30854894fa88e94635bd4262327', '馬曹4', 'Chang', '1', '1400', '1600', '5', '1330', '1530', '1');
INSERT INTO `worship` VALUES ('580ba1a7ab224711bb761ad482202891', '國小主三', 'Chang', '1', '1200', '1345', '1', '1130', '1315', '2');
INSERT INTO `worship` VALUES ('5a67b7a0a777459ba49fc3fa89ee1c6a', '異像', 'Chang', '1', '830', '1015', '7', '800', '945', '2');
INSERT INTO `worship` VALUES ('7abf152f4a2845d7a7689657c1846089', '國小六晚', 'Chang', '1', '1900', '2100', '7', '1830', '2030', '2');
INSERT INTO `worship` VALUES ('87414406f31540508b383f5b80e290a5', '馬曹1', 'Chang', '1', '1400', '1600', '2', '1330', '1530', '1');
INSERT INTO `worship` VALUES ('9341825ee2e4428babc0c9cec8b18516', '三晚', 'Chang', '1', '1900', '2100', '4', '1830', '2030', '2');
INSERT INTO `worship` VALUES ('ab0bcaff99864398ab6fcf1e8aee4207', '國小主一', 'Chang', '1', '830', '1015', '1', '800', '945', '2');
INSERT INTO `worship` VALUES ('b481c0eb42a645a6b6f162ef5f1218db', '幼兒六晚', 'Chang', '1', '1900', '2100', '7', '1830', '2030', '1');
INSERT INTO `worship` VALUES ('d4ecccef8e034348854d2589588e79cc', '馬曹5', 'Chang', '1', '1400', '1600', '6', '1330', '1530', '1');
INSERT INTO `worship` VALUES ('e314ca384e474376ac0f31308c9ddd8c', '小馬', 'Chang', '1', '1900', '2100', '3', '1830', '2030', '2');
