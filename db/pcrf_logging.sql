/*
 Navicat MySQL Data Transfer

 Source Server         : 10.50.13.116
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : 10.50.13.116:3306
 Source Schema         : pcrf_logging

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 27/03/2018 16:22:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for login_session
-- ----------------------------
DROP TABLE IF EXISTS `login_session`;
CREATE TABLE `login_session`  (
  `login_id` bigint(50) NOT NULL AUTO_INCREMENT,
  `location_prop` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `login_datetime` datetime(0) NULL DEFAULT NULL,
  `resultCode` int(5) NULL DEFAULT NULL,
  PRIMARY KEY (`login_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75346 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pcrf_downstream_logs
-- ----------------------------
DROP TABLE IF EXISTS `pcrf_downstream_logs`;
CREATE TABLE `pcrf_downstream_logs`  (
  `correlation_id` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `interface_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `result_code` int(10) NULL DEFAULT NULL,
  `result_code_des` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logging_timestamp` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0)
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pcrf_req_res_logs
-- ----------------------------
DROP TABLE IF EXISTS `pcrf_req_res_logs`;
CREATE TABLE `pcrf_req_res_logs`  (
  `correlation_id` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `request` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `response` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `request_datetime` datetime(0) NULL DEFAULT NULL,
  `response_datetime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
