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

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='部门信息表';

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
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `department_id` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';
