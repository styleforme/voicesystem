/*
 Navicat Premium Data Transfer

 Source Server         : my
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : suc_chat_web

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 04/01/2022 20:14:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for huiyi
-- ----------------------------
DROP TABLE IF EXISTS `huiyi`;
CREATE TABLE `huiyi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `canhui` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '参会人员',
  `create_time` datetime(6) DEFAULT NULL,
  `create_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人ID',
  `end_time` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '结束时间',
  `huiyi_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '会议名称',
  `start_time` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '开始时间',
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of huiyi
-- ----------------------------
BEGIN;
INSERT INTO `huiyi` VALUES (9, '555', '2022-01-04 14:34:47.728006', '1', '2022-01-04T06:34:44.000Z', '会议', '2022-01-04T06:34:42.000Z', '2022-01-04 14:34:47.728034');
COMMIT;

-- ----------------------------
-- Table structure for user_friends
-- ----------------------------
DROP TABLE IF EXISTS `user_friends`;
CREATE TABLE `user_friends` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `belong` int(10) DEFAULT NULL COMMENT '1.申请人 2.被申请人',
  `create_time` datetime(6) DEFAULT NULL,
  `note_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '好友备注',
  `partner_id` int(20) DEFAULT NULL COMMENT '好友Id',
  `type` int(10) DEFAULT NULL COMMENT '1.待同意 2.已同意',
  `update_time` datetime(6) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL COMMENT '用户Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_friends
-- ----------------------------
BEGIN;
INSERT INTO `user_friends` VALUES (1, 1, '2021-12-27 21:52:33.786499', '123', 1, 2, '2021-12-27 21:52:33.786541', 2);
INSERT INTO `user_friends` VALUES (2, 2, '2021-12-27 21:52:33.789578', '111', 2, 2, '2021-12-27 21:52:33.789609', 1);
INSERT INTO `user_friends` VALUES (3, 1, '2021-12-27 21:57:07.856867', '222', 3, 2, '2021-12-27 21:57:07.856897', 1);
INSERT INTO `user_friends` VALUES (4, 2, '2021-12-27 21:57:07.861119', '123', 1, 2, '2021-12-27 21:57:07.861152', 3);
INSERT INTO `user_friends` VALUES (5, 1, '2021-12-28 19:55:25.707520', '222', 3, 2, '2021-12-28 19:55:25.707601', 2);
INSERT INTO `user_friends` VALUES (6, 2, '2021-12-28 19:55:25.721443', '111', 2, 2, '2021-12-28 19:55:25.721465', 3);
INSERT INTO `user_friends` VALUES (7, 1, '2022-01-04 14:01:01.752880', '123', 1, 2, '2022-01-04 14:01:01.752902', 5);
INSERT INTO `user_friends` VALUES (8, 2, '2022-01-04 14:01:01.754246', '444', 5, 2, '2022-01-04 14:01:01.754264', 1);
INSERT INTO `user_friends` VALUES (9, 1, '2022-01-04 14:32:06.057968', '123', 1, 2, '2022-01-04 14:32:06.058056', 6);
INSERT INTO `user_friends` VALUES (10, 2, '2022-01-04 14:32:06.061738', '555', 6, 2, '2022-01-04 14:32:06.061759', 1);
INSERT INTO `user_friends` VALUES (11, 1, '2022-01-04 18:11:45.405219', '123', 1, 2, '2022-01-04 18:11:45.405247', 7);
INSERT INTO `user_friends` VALUES (12, 2, '2022-01-04 18:11:45.406524', '111', 7, 2, '2022-01-04 18:11:45.406552', 1);
INSERT INTO `user_friends` VALUES (13, 1, '2022-01-04 18:52:43.107643', '111', 7, 2, '2022-01-04 18:52:43.107800', 3);
INSERT INTO `user_friends` VALUES (14, 2, '2022-01-04 18:52:43.111754', '222', 3, 2, '2022-01-04 18:52:43.111773', 7);
INSERT INTO `user_friends` VALUES (15, 1, '2022-01-04 19:47:19.743881', '123', 1, 2, '2022-01-04 19:47:19.743915', 8);
INSERT INTO `user_friends` VALUES (16, 2, '2022-01-04 19:47:19.746582', '666', 8, 2, '2022-01-04 19:47:19.746622', 1);
COMMIT;

-- ----------------------------
-- Table structure for user_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar_url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '头像',
  `create_time` datetime(6) DEFAULT NULL,
  `group_name` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '群聊名称',
  `group_users` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '群聊用户name（按顿号、隔开）',
  `group_users_ids` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '群聊用户Ids（按逗号,隔开）',
  `update_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_groups
-- ----------------------------
BEGIN;
INSERT INTO `user_groups` VALUES (1, NULL, '2021-12-27 21:57:31.577645', '123创建的群聊', '', ',2,3,1,', '2021-12-27 21:57:31.577693');
INSERT INTO `user_groups` VALUES (2, NULL, '2022-01-04 18:53:21.678877', '222创建的群聊', '', ',1,7,3,', '2022-01-04 18:53:21.678928');
INSERT INTO `user_groups` VALUES (3, NULL, '2022-01-04 19:00:48.407550', '123创建的群聊', '', ',7,1,', '2022-01-04 19:00:48.407623');
COMMIT;

-- ----------------------------
-- Table structure for user_message
-- ----------------------------
DROP TABLE IF EXISTS `user_message`;
CREATE TABLE `user_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bind_target` int(20) DEFAULT NULL COMMENT '聊天对象（用户或者群聊ID）',
  `create_time` datetime(6) DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片消息url',
  `message` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '消息',
  `message_type` int(4) DEFAULT NULL COMMENT '消息类型 1.点对点  2.群发',
  `update_time` datetime(6) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL COMMENT '（用户或者群聊ID）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_message
-- ----------------------------
BEGIN;
INSERT INTO `user_message` VALUES (1, 1, '2021-12-27 21:52:56.753881', NULL, '123', 1, '2021-12-27 21:52:56.753922', 2);
INSERT INTO `user_message` VALUES (2, 2, '2021-12-27 21:53:12.023329', NULL, '123', 1, '2021-12-27 21:53:12.023359', 1);
INSERT INTO `user_message` VALUES (3, 1, '2021-12-27 21:57:36.313942', NULL, '111', 2, '2021-12-27 21:57:36.313961', 1);
INSERT INTO `user_message` VALUES (4, 2, '2021-12-29 22:45:06.636169', NULL, 'hello', 1, '2021-12-29 22:45:06.636264', 1);
INSERT INTO `user_message` VALUES (5, 1, '2021-12-29 22:45:30.860470', NULL, 'nihao', 1, '2021-12-29 22:45:30.860541', 2);
INSERT INTO `user_message` VALUES (6, 2, '2021-12-29 22:45:37.810385', NULL, '12312312312312312', 1, '2021-12-29 22:45:37.810492', 1);
INSERT INTO `user_message` VALUES (7, 2, '2022-01-03 21:06:42.463947', NULL, '123', 1, '2022-01-03 21:06:42.464020', 1);
INSERT INTO `user_message` VALUES (8, 2, '2022-01-03 21:06:44.116360', NULL, '123', 1, '2022-01-03 21:06:44.116419', 1);
INSERT INTO `user_message` VALUES (9, 2, '2022-01-03 21:06:45.534822', NULL, '123', 1, '2022-01-03 21:06:45.534855', 1);
INSERT INTO `user_message` VALUES (10, 2, '2022-01-03 21:06:54.418185', NULL, '1111', 1, '2022-01-03 21:06:54.418212', 1);
INSERT INTO `user_message` VALUES (11, 5, '2022-01-04 14:01:38.293291', NULL, 'hello', 1, '2022-01-04 14:01:38.293320', 1);
INSERT INTO `user_message` VALUES (12, 1, '2022-01-04 14:01:50.050092', NULL, '222', 1, '2022-01-04 14:01:50.050120', 5);
INSERT INTO `user_message` VALUES (13, 6, '2022-01-04 14:32:22.636778', NULL, 'hello', 1, '2022-01-04 14:32:22.636821', 1);
INSERT INTO `user_message` VALUES (14, 1, '2022-01-04 14:32:27.863245', NULL, '123', 1, '2022-01-04 14:32:27.863282', 6);
INSERT INTO `user_message` VALUES (15, 1, '2022-01-04 14:33:56.688180', NULL, 'hghgg', 1, '2022-01-04 14:33:56.688208', 6);
INSERT INTO `user_message` VALUES (16, 6, '2022-01-04 14:34:02.990080', NULL, 'asdasdasdas', 1, '2022-01-04 14:34:02.990126', 1);
INSERT INTO `user_message` VALUES (17, 5, '2022-01-04 16:39:05.859796', NULL, '222', 1, '2022-01-04 16:39:05.860036', 1);
INSERT INTO `user_message` VALUES (18, 1, '2022-01-04 17:13:12.565109', NULL, '1', 1, '2022-01-04 17:13:12.565219', 5);
INSERT INTO `user_message` VALUES (19, 5, '2022-01-04 17:13:16.935912', NULL, '2', 1, '2022-01-04 17:13:16.935946', 1);
INSERT INTO `user_message` VALUES (20, 1, '2022-01-04 17:14:31.319361', NULL, '2', 1, '2022-01-04 17:14:31.319407', 5);
INSERT INTO `user_message` VALUES (21, 5, '2022-01-04 17:16:15.784869', NULL, '1', 1, '2022-01-04 17:16:15.784910', 1);
INSERT INTO `user_message` VALUES (22, 1, '2022-01-04 18:11:55.711849', NULL, '1', 1, '2022-01-04 18:11:55.711904', 7);
INSERT INTO `user_message` VALUES (23, 1, '2022-01-04 18:12:18.924483', NULL, '2', 1, '2022-01-04 18:12:18.924504', 7);
INSERT INTO `user_message` VALUES (24, 1, '2022-01-04 18:15:24.795299', NULL, '1', 1, '2022-01-04 18:15:24.795374', 7);
INSERT INTO `user_message` VALUES (25, 7, '2022-01-04 18:16:10.050087', NULL, '1', 1, '2022-01-04 18:16:10.050142', 1);
INSERT INTO `user_message` VALUES (26, 1, '2022-01-04 18:16:18.635107', NULL, '2', 1, '2022-01-04 18:16:18.635140', 7);
INSERT INTO `user_message` VALUES (27, 7, '2022-01-04 18:16:21.072716', NULL, '3', 1, '2022-01-04 18:16:21.072772', 1);
INSERT INTO `user_message` VALUES (28, 7, '2022-01-04 18:45:48.105375', NULL, '1', 1, '2022-01-04 18:45:48.105433', 1);
INSERT INTO `user_message` VALUES (29, 1, '2022-01-04 18:46:47.656304', NULL, '2', 1, '2022-01-04 18:46:47.656379', 7);
INSERT INTO `user_message` VALUES (30, 2, '2022-01-04 18:53:27.276311', NULL, '2', 2, '2022-01-04 18:53:27.276349', 3);
INSERT INTO `user_message` VALUES (31, 2, '2022-01-04 18:53:33.965735', NULL, '1', 2, '2022-01-04 18:53:33.965764', 7);
INSERT INTO `user_message` VALUES (32, 2, '2022-01-04 18:53:41.078786', NULL, '123', 2, '2022-01-04 18:53:41.078812', 1);
INSERT INTO `user_message` VALUES (33, 2, '2022-01-04 18:56:00.629541', NULL, '1', 2, '2022-01-04 18:56:00.629579', 7);
INSERT INTO `user_message` VALUES (34, 2, '2022-01-04 18:56:05.330477', NULL, '2', 2, '2022-01-04 18:56:05.330522', 3);
INSERT INTO `user_message` VALUES (35, 2, '2022-01-04 18:56:10.211045', NULL, '3', 2, '2022-01-04 18:56:10.211071', 1);
INSERT INTO `user_message` VALUES (36, 2, '2022-01-04 18:57:15.208602', NULL, '1', 2, '2022-01-04 18:57:15.208633', 1);
INSERT INTO `user_message` VALUES (37, 3, '2022-01-04 19:01:00.227163', NULL, '1', 2, '2022-01-04 19:01:00.227215', 1);
INSERT INTO `user_message` VALUES (38, 3, '2022-01-04 19:08:28.563330', NULL, '2', 2, '2022-01-04 19:08:28.563350', 7);
INSERT INTO `user_message` VALUES (39, 3, '2022-01-04 19:09:19.204110', NULL, '1', 2, '2022-01-04 19:09:19.204137', 7);
INSERT INTO `user_message` VALUES (40, 3, '2022-01-04 19:43:09.939935', NULL, '1111', 2, '2022-01-04 19:43:09.939982', 1);
INSERT INTO `user_message` VALUES (41, 3, '2022-01-04 19:44:21.840997', NULL, '1', 2, '2022-01-04 19:44:21.841025', 7);
INSERT INTO `user_message` VALUES (42, 3, '2022-01-04 19:44:37.537434', NULL, '2121', 2, '2022-01-04 19:44:37.537447', 7);
INSERT INTO `user_message` VALUES (43, 1, '2022-01-04 19:47:36.354719', NULL, 'hell', 1, '2022-01-04 19:47:36.354801', 8);
INSERT INTO `user_message` VALUES (44, 8, '2022-01-04 19:47:46.929897', NULL, '1', 1, '2022-01-04 19:47:46.929918', 1);
INSERT INTO `user_message` VALUES (45, 1, '2022-01-04 19:47:58.582807', NULL, '111', 1, '2022-01-04 19:47:58.582830', 8);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar_url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '头像地址',
  `create_time` datetime(6) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮件',
  `family_address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '家庭住址',
  `location_address` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '现居地址',
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `u_sex` int(4) DEFAULT NULL COMMENT '性别',
  `update_time` datetime(6) DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, NULL, '2021-12-27 21:51:11.101688', NULL, NULL, NULL, '123', '202cb962ac59075b964b07152d234b70', NULL, '2021-12-27 21:51:11.101762', '123');
INSERT INTO `users` VALUES (3, NULL, '2021-12-27 21:56:50.390262', NULL, NULL, NULL, '222', 'bcbe3365e6ac95ea2c0343a2395834dd', NULL, '2021-12-27 21:56:50.390410', '222');
INSERT INTO `users` VALUES (4, NULL, '2022-01-03 21:37:50.534266', NULL, NULL, NULL, 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, '2022-01-03 21:37:50.534309', 'admin');
INSERT INTO `users` VALUES (5, NULL, '2022-01-04 14:00:32.861502', NULL, NULL, NULL, '444', '550a141f12de6341fba65b0ad0433500', NULL, '2022-01-04 14:00:32.861579', '444');
INSERT INTO `users` VALUES (7, NULL, '2022-01-04 18:11:34.337280', NULL, NULL, NULL, '111', '698d51a19d8a121ce581499d7b701668', NULL, '2022-01-04 18:11:34.337502', '111');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
