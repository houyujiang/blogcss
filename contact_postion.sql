/*
 Navicat Premium Data Transfer

 Source Server         : SmartServerMysql-test
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : 118.190.38.19:3306
 Source Schema         : zrzytest

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 09/12/2020 17:35:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contact_postion
-- ----------------------------
DROP TABLE IF EXISTS `contact_postion`;
CREATE TABLE `contact_postion`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `position_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门名称',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact_postion
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
