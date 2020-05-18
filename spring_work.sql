/*
 Navicat Premium Data Transfer

 Source Server         : MySqlConn
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : spring_work

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 18/05/2020 12:51:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '人事部', '#301');
INSERT INTO `department` VALUES (2, '技术部', '#401');
INSERT INTO `department` VALUES (3, '管理部', '#601');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `opr_time` datetime(0) NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operator` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `moudle` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `operation` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `result` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('2020-05-18 12:15:59', 'login', 'life', 'SelfController', 'login', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:16:03', 'operation', 'life', 'LogController', 'loginLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:16:22', 'operation', 'life', 'LogController', 'operationLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:16:24', 'operation', 'life', 'LogController', 'systemLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:16:25', 'operation', 'life', 'LogController', 'loginLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:16:26', 'operation', 'life', 'LogController', 'operationLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:16:28', 'operation', 'life', 'StaffController', 'list', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:16:31', 'operation', 'life', 'LogController', 'operationLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:16:46', 'operation', 'life', 'LogController', 'systemLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:16:48', 'operation', 'life', 'LogController', 'systemLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:17:22', 'operation', 'life', 'LogController', 'loginLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:17:23', 'operation', 'life', 'LogController', 'systemLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:17:27', 'operation', 'life', 'LogController', 'loginLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:17:27', 'operation', 'life', 'LogController', 'systemLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:17:28', 'operation', 'life', 'LogController', 'loginLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:17:30', 'operation', 'life', 'LogController', 'operationLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:18:38', 'operation', 'life', 'LogController', 'loginLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:18:39', 'operation', 'life', 'LogController', 'systemLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:19:16', 'operation', 'life', 'LogController', 'operationLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:19:20', 'login', 'life', 'SelfController', 'logout', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:19:23', 'login', 'life', 'SelfController', 'login', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:19:26', 'operation', 'life', 'LogController', 'loginLog', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:20:10', 'operation', 'life', 'DepartmentController', 'list', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:20:11', 'operation', 'life', 'DepartmentController', 'list', '成功');
INSERT INTO `log` VALUES ('2020-05-18 12:20:11', 'operation', 'life', 'DepartmentController', 'list', '成功');

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `did` int(11) NULL DEFAULT NULL,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_number` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `work_time` datetime(0) NULL DEFAULT NULL,
  `leave_time` datetime(0) NULL DEFAULT NULL,
  `born_date` date NULL DEFAULT NULL,
  `info` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (1, 'life', '123456', '正常', 1, '王哥', '男', '1099906', '2020-05-17 10:45:29', '2020-05-17 10:45:33', '1993-05-05', '无');

SET FOREIGN_KEY_CHECKS = 1;
