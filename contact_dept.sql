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

 Date: 09/12/2020 17:35:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contact_dept
-- ----------------------------
DROP TABLE IF EXISTS `contact_dept`;
CREATE TABLE `contact_dept`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门code',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_ci NOT NULL COMMENT '部门名称',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部门简介',
  `create_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `flag` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标志位',
  `pid` int NULL DEFAULT NULL COMMENT '父级部门',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '1:一级部门；2：二级部门；3.三级部门',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact_dept
-- ----------------------------
INSERT INTO `contact_dept` VALUES (1, '123', '人力部', '人力管理', '2020-12-09 09:17:23', '2020-12-09 09:17:23', '1', 1, '1', '无');
INSERT INTO `contact_dept` VALUES (2, '123', '资源厅', '资源管理', '2020-12-09 09:16:37', '2020-12-09 09:16:37', '1', NULL, NULL, NULL);
INSERT INTO `contact_dept` VALUES (3, '123', '建设厅', '建设管理', '2020-12-09 09:16:44', '2020-12-09 09:16:44', '1', NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
