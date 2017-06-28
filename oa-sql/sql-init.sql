/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : jinbao_second

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-06-06 19:13:31
*/

SET FOREIGN_KEY_CHECKS=0;
/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : jinbao-second

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-06-28 22:04:03
*/

-- ----------------------------
-- Table structure for cost_subject
-- ----------------------------
DROP TABLE IF EXISTS `cost_subject`;
CREATE TABLE `cost_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '上级科目',
  `name` varchar(64) NOT NULL,
  `company` int(4) NOT NULL COMMENT '所属公司',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='成本科目表';

-- ----------------------------
-- Records of cost_subject
-- ----------------------------
INSERT INTO `cost_subject` VALUES ('1', null, 'Root', '0', '2017-06-28 21:13:00', '2017-06-28 21:13:04');
INSERT INTO `cost_subject` VALUES ('2', '1', '置地公司', '1', '2017-06-28 21:13:18', '2017-06-28 21:13:22');
INSERT INTO `cost_subject` VALUES ('3', '1', '置业公司', '2', '2017-06-28 21:13:35', '2017-06-28 21:13:38');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '上级部门',
  `name` varchar(64) NOT NULL,
  `company` int(4) NOT NULL COMMENT '所属公司',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='部门信息表';

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', null, 'Root', '0', '2017-06-06 17:08:05', '2017-06-28 21:00:24');
INSERT INTO `department` VALUES ('2', '1', '置地公司', '1', '2017-06-08 18:23:25', '2017-06-28 20:51:57');
INSERT INTO `department` VALUES ('3', '1', '置业公司', '2', '2017-06-21 17:24:35', '2017-06-28 20:52:07');

-- ----------------------------
-- Table structure for ledger_zhidi
-- ----------------------------
DROP TABLE IF EXISTS `ledger_zhidi`;
CREATE TABLE `ledger_zhidi` (
  `id` bigint(20) NOT NULL,
  `serial_number` varchar(20) NOT NULL COMMENT '序号',
  `area` varchar(32) NOT NULL COMMENT '片区',
  `project_name` varchar(64) NOT NULL COMMENT '成本项目名称',
  `calculate_invest` decimal(10,2) NOT NULL COMMENT '可研测算金额',
  `expect_invest` decimal(10,2) NOT NULL COMMENT '预计投入金额',
  `total_invest` decimal(10,2) NOT NULL COMMENT '累计投入',
  `audit_statistics` decimal(10,2) NOT NULL COMMENT '审计资料统计金额',
  `gov_confirm` decimal(10,2) NOT NULL COMMENT '政府确认金额',
  `gov_check` decimal(10,2) NOT NULL COMMENT '政府程序金额',
  `uncheck` decimal(10,2) NOT NULL COMMENT '未核对金额',
  `remark` varchar(128) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ledger_zhidi
-- ----------------------------

-- ----------------------------
-- Table structure for ledger_zhiye
-- ----------------------------
DROP TABLE IF EXISTS `ledger_zhiye`;
CREATE TABLE `ledger_zhiye` (
  `id` bigint(20) NOT NULL,
  `serial_number` varchar(20) NOT NULL COMMENT '序号',
  `area` varchar(32) NOT NULL COMMENT '片区',
  `project_name` varchar(64) NOT NULL,
  `expect_invest` decimal(10,2) NOT NULL COMMENT '预计投入金额',
  `contract_amount` decimal(10,2) NOT NULL COMMENT '已签合同金额',
  `performance_amount` decimal(10,2) NOT NULL COMMENT '已履约金额',
  `paid_amount` decimal(10,2) NOT NULL COMMENT '已付金额',
  `settled_account` decimal(10,2) NOT NULL COMMENT '已结束金额',
  `remark` varchar(64) DEFAULT NULL COMMENT '说明',
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ledger_zhiye
-- ----------------------------

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `department_id` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职位信息表';

-- ----------------------------
-- Records of position
-- ----------------------------

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源菜单表';

-- ----------------------------
-- Records of resource
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `department_id` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '18810863658', '$2a$10$fnxrymljcZQgRpMxaNZZ8.Xjgro9jSm7tFhC5IyG7a.5/IPMLqM.G', '1', '0', '2017-06-22 17:25:04', '2017-06-22 17:25:06');
