
-- ----------------------------
--  Table structure for `oa_cost_subject`
-- ----------------------------
DROP TABLE IF EXISTS `oa_cost_subject`;
CREATE TABLE `oa_cost_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '上级科目',
  `name` varchar(64) NOT NULL,
  `company` int(4) NOT NULL COMMENT '所属公司',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='成本科目表';

-- ----------------------------
--  Records of `oa_cost_subject`
-- ----------------------------
BEGIN;
INSERT INTO `oa_cost_subject` VALUES ('1', null, 'Root', '0', '2017-06-28 21:13:00', '2017-06-28 21:13:04'), ('2', '1', '置地公司', '1', '2017-06-28 21:13:18', '2017-06-28 21:13:22'), ('3', '1', '置业公司', '2', '2017-06-28 21:13:35', '2017-06-28 21:13:38'), ('4', '2', '11111', '1', '2017-06-28 22:33:51', '2017-06-28 22:33:51');
COMMIT;

-- ----------------------------
--  Table structure for `oa_department`
-- ----------------------------
DROP TABLE IF EXISTS `oa_department`;
CREATE TABLE `oa_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '上级部门',
  `name` varchar(64) NOT NULL,
  `company` int(4) NOT NULL COMMENT '所属公司',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='部门信息表';

-- ----------------------------
--  Records of `oa_department`
-- ----------------------------
BEGIN;
INSERT INTO `oa_department` VALUES ('1', null, 'Root', '0', '2017-06-06 17:08:05', '2017-06-28 21:00:24'), ('2', '1', '置地公司', '1', '2017-06-08 18:23:25', '2017-06-28 20:51:57'), ('3', '1', '置业公司', '2', '2017-06-21 17:24:35', '2017-06-28 20:52:07');
COMMIT;

-- ----------------------------
--  Table structure for `oa_position`
-- ----------------------------
DROP TABLE IF EXISTS `oa_position`;
CREATE TABLE `oa_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '上级职位',
  `name` varchar(64) NOT NULL,
  `alias` varchar(64) NOT NULL COMMENT '职位别名（流程中使用）',
  `company` int(4) NOT NULL COMMENT '所属公司',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='职位信息表';

-- ----------------------------
--  Records of `oa_position`
-- ----------------------------
BEGIN;
INSERT INTO `oa_position` VALUES ('1', null, 'Root', '', '0', '2017-06-28 21:13:00', '2017-06-28 21:13:04'), ('2', '1', '置地公司', '', '1', '2017-06-28 21:13:18', '2017-06-28 21:13:22'), ('3', '1', '置业公司', '', '2', '2017-06-28 21:13:35', '2017-06-28 21:13:38');
COMMIT;

-- ----------------------------
--  Table structure for `oa_resource`
-- ----------------------------
DROP TABLE IF EXISTS `oa_resource`;
CREATE TABLE `oa_resource` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资源菜单表';

-- ----------------------------
--  Table structure for `oa_role`
-- ----------------------------
DROP TABLE IF EXISTS `oa_role`;
CREATE TABLE `oa_role` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
--  Table structure for `oa_user`
-- ----------------------------
DROP TABLE IF EXISTS `oa_user`;
CREATE TABLE `oa_user` (
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
--  Records of `oa_user`
-- ----------------------------
BEGIN;
INSERT INTO `oa_user` VALUES ('1', '18810863658', '$2a$10$fnxrymljcZQgRpMxaNZZ8.Xjgro9jSm7tFhC5IyG7a.5/IPMLqM.G', '1', '0', '2017-06-22 17:25:04', '2017-06-22 17:25:06');
COMMIT;

-- ----------------------------
--  Table structure for `oa_user_department`
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_department`;
CREATE TABLE `oa_user_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `oa_user_position`
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_position`;
CREATE TABLE `oa_user_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `oa_zhidi_ledger_cost`
-- ----------------------------
DROP TABLE IF EXISTS `oa_zhidi_ledger_cost`;
CREATE TABLE `oa_zhidi_ledger_cost` (
  `id` bigint(20) NOT NULL,
  `serial_number` varchar(20) NOT NULL COMMENT '序号',
  `area` int(11) NOT NULL COMMENT '片区',
  `subject_id` int(11) NOT NULL COMMENT '成本科目ID',
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
--  Records of `oa_zhidi_ledger_cost`
-- ----------------------------
BEGIN;
INSERT INTO `oa_zhidi_ledger_cost` VALUES ('1', '1', '1', '1', '11', '11.00', '11.00', '11.00', '11.00', '11.00', '11.00', '11.00', null, '2017-06-29 22:58:31', '2017-06-29 22:58:34');
COMMIT;

-- ----------------------------
--  Table structure for `oa_zhiye_ledger_cost`
-- ----------------------------
DROP TABLE IF EXISTS `oa_zhiye_ledger_cost`;
CREATE TABLE `oa_zhiye_ledger_cost` (
  `id` bigint(20) NOT NULL,
  `serial_number` varchar(20) NOT NULL COMMENT '序号',
  `area` int(11) NOT NULL COMMENT '片区',
  `subject_id` int(11) NOT NULL COMMENT '成本科目ID',
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

SET FOREIGN_KEY_CHECKS = 1;
