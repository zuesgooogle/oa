
-- ----------------------------
-- Table structure for oa_cost_subject
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
-- Records of oa_cost_subject
-- ----------------------------
INSERT INTO `oa_cost_subject` VALUES ('1', null, 'Root', '0', '2017-06-28 21:13:00', '2017-06-28 21:13:04');
INSERT INTO `oa_cost_subject` VALUES ('2', '1', '置地公司', '1', '2017-06-28 21:13:18', '2017-06-28 21:13:22');
INSERT INTO `oa_cost_subject` VALUES ('3', '1', '置业公司', '2', '2017-06-28 21:13:35', '2017-06-28 21:13:38');
INSERT INTO `oa_cost_subject` VALUES ('4', '2', '11111', '1', '2017-06-28 22:33:51', '2017-06-28 22:33:51');

-- ----------------------------
-- Table structure for oa_department
-- ----------------------------
DROP TABLE IF EXISTS `oa_department`;
CREATE TABLE `oa_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `company` int(4) NOT NULL COMMENT '所属公司',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门信息表';

-- ----------------------------
-- Records of oa_department
-- ----------------------------

-- ----------------------------
-- Table structure for oa_plan_money_in_month
-- ----------------------------
DROP TABLE IF EXISTS `oa_plan_money_in_month`;
CREATE TABLE `oa_plan_money_in_month` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` int(11) NOT NULL,
  `department_id` int(11) NOT NULL COMMENT '部门',
  `project_id` int(11) NOT NULL COMMENT '项目',
  `subject_id` int(11) NOT NULL COMMENT '成本科目',
  `organizer` varchar(128) NOT NULL COMMENT '单位名称',
  `contract_name` varchar(128) NOT NULL COMMENT '合同名称',
  `total` decimal(20,2) NOT NULL,
  `plan_amount` decimal(20,2) NOT NULL COMMENT '本月计划金额',
  `actual_amount` decimal(20,2) NOT NULL COMMENT '实际收入',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_plan_money_in_month
-- ----------------------------

-- ----------------------------
-- Table structure for oa_plan_money_in_year
-- ----------------------------
DROP TABLE IF EXISTS `oa_plan_money_in_year`;
CREATE TABLE `oa_plan_money_in_year` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` int(11) NOT NULL COMMENT '单位',
  `department_id` int(11) NOT NULL COMMENT '部门',
  `project_id` int(11) NOT NULL COMMENT '项目',
  `subject_id` int(11) NOT NULL COMMENT '成本科目',
  `organizer` varchar(128) NOT NULL COMMENT '单位名称',
  `contract_name` varchar(128) NOT NULL COMMENT '合同名称',
  `contract_amount` decimal(20,2) NOT NULL COMMENT '合同金额',
  `year` int(11) NOT NULL,
  `month_1` decimal(20,2) DEFAULT NULL,
  `month_2` decimal(20,2) DEFAULT NULL,
  `month_3` decimal(20,2) DEFAULT NULL,
  `month_4` decimal(20,2) DEFAULT NULL,
  `month_5` decimal(20,2) DEFAULT NULL,
  `month_6` decimal(20,2) DEFAULT NULL,
  `month_7` decimal(20,2) DEFAULT NULL,
  `month_8` decimal(20,2) DEFAULT NULL,
  `month_9` decimal(20,2) DEFAULT NULL,
  `month_10` decimal(20,2) DEFAULT NULL,
  `month_11` decimal(20,2) DEFAULT NULL,
  `month_12` decimal(20,2) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_plan_money_in_year
-- ----------------------------

-- ----------------------------
-- Table structure for oa_plan_money_out_month
-- ----------------------------
DROP TABLE IF EXISTS `oa_plan_money_out_month`;
CREATE TABLE `oa_plan_money_out_month` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` int(11) NOT NULL,
  `department_id` int(11) NOT NULL COMMENT '部门',
  `project_id` int(11) NOT NULL COMMENT '项目',
  `subject_id` int(11) NOT NULL COMMENT '成本科目',
  `receiver` varchar(128) NOT NULL COMMENT '收款单位名称',
  `contract_name` varchar(128) NOT NULL COMMENT '合同名称',
  `contract_amount` decimal(20,2) NOT NULL COMMENT '合同金额',
  `paid_amount` decimal(20,2) NOT NULL COMMENT '已支付',
  `plan_amount` decimal(20,2) NOT NULL COMMENT '本月计划金额',
  `actual_amount` decimal(20,2) NOT NULL COMMENT '本月实际支付',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_plan_money_out_month
-- ----------------------------
INSERT INTO `oa_plan_money_out_month` VALUES ('2', '1', '1', '1', '1', '1', '1', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-01 18:17:29', '2017-07-01 18:17:28');

-- ----------------------------
-- Table structure for oa_plan_money_out_year
-- ----------------------------
DROP TABLE IF EXISTS `oa_plan_money_out_year`;
CREATE TABLE `oa_plan_money_out_year` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` int(11) NOT NULL COMMENT '单位',
  `department_id` int(11) NOT NULL COMMENT '部门',
  `project_id` int(11) DEFAULT NULL COMMENT '项目',
  `subject_id` int(11) DEFAULT NULL COMMENT '成本科目',
  `receiver` varchar(128) DEFAULT NULL COMMENT '收款单位名称',
  `contract_name` varchar(128) NOT NULL COMMENT '合同名称',
  `contract_amount` decimal(20,2) NOT NULL COMMENT '合同金额',
  `paid_amount` decimal(20,2) DEFAULT NULL COMMENT '已支付金额',
  `year` int(11) NOT NULL COMMENT '年份',
  `month_1` decimal(20,2) DEFAULT NULL,
  `month_2` decimal(20,2) DEFAULT NULL,
  `month_3` decimal(20,2) DEFAULT NULL,
  `month_4` decimal(20,2) DEFAULT NULL,
  `month_5` decimal(20,2) DEFAULT NULL,
  `month_6` decimal(20,2) DEFAULT NULL,
  `month_7` decimal(20,2) DEFAULT NULL,
  `month_8` decimal(20,2) DEFAULT NULL,
  `month_9` decimal(20,2) DEFAULT NULL,
  `month_10` decimal(20,2) DEFAULT NULL,
  `month_11` decimal(20,2) DEFAULT NULL,
  `month_12` decimal(20,2) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_plan_money_out_year
-- ----------------------------
INSERT INTO `oa_plan_money_out_year` VALUES ('1', '1', '1', null, null, null, '1', '1.00', '12.00', '2017', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2017-07-01 18:44:32', '2017-07-01 18:45:51');
INSERT INTO `oa_plan_money_out_year` VALUES ('2', '1', '1', null, null, null, '1', '1.00', '1.00', '2018', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2017-07-01 19:03:15', '2017-07-01 19:03:14');
INSERT INTO `oa_plan_money_out_year` VALUES ('3', '1', '1', null, null, null, '1', '1.00', '1.00', '2020', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2017-07-01 19:14:06', '2017-07-01 19:14:06');

-- ----------------------------
-- Table structure for oa_position
-- ----------------------------
DROP TABLE IF EXISTS `oa_position`;
CREATE TABLE `oa_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `alias` varchar(64) NOT NULL COMMENT '职位别名（流程中使用）',
  `company` int(4) NOT NULL COMMENT '所属公司',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='职位信息表';

-- ----------------------------
-- Records of oa_position
-- ----------------------------

-- ----------------------------
-- Table structure for oa_project
-- ----------------------------
DROP TABLE IF EXISTS `oa_project`;
CREATE TABLE `oa_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `company` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_project
-- ----------------------------

-- ----------------------------
-- Table structure for oa_resource
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
-- Records of oa_resource
-- ----------------------------

-- ----------------------------
-- Table structure for oa_role
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
-- Records of oa_role
-- ----------------------------

-- ----------------------------
-- Table structure for oa_section
-- ----------------------------
DROP TABLE IF EXISTS `oa_section`;
CREATE TABLE `oa_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_section
-- ----------------------------
INSERT INTO `oa_section` VALUES ('1', 'A', '2017-07-01 19:22:31', '2017-07-01 19:22:31');
INSERT INTO `oa_section` VALUES ('2', 'B', '2017-07-01 19:22:34', '2017-07-01 19:22:34');
INSERT INTO `oa_section` VALUES ('3', 'C', '2017-07-01 19:22:38', '2017-07-01 19:22:37');

-- ----------------------------
-- Table structure for oa_user
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
-- Records of oa_user
-- ----------------------------
INSERT INTO `oa_user` VALUES ('1', '123456', '$2a$10$fnxrymljcZQgRpMxaNZZ8.Xjgro9jSm7tFhC5IyG7a.5/IPMLqM.G', '1', '0', '2017-06-22 17:25:04', '2017-07-01 19:46:39');

-- ----------------------------
-- Table structure for oa_user_department
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_department`;
CREATE TABLE `oa_user_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_department
-- ----------------------------

-- ----------------------------
-- Table structure for oa_user_position
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_position`;
CREATE TABLE `oa_user_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_position
-- ----------------------------

-- ----------------------------
-- Table structure for oa_zhidi_ledger_cost
-- ----------------------------
DROP TABLE IF EXISTS `oa_zhidi_ledger_cost`;
CREATE TABLE `oa_zhidi_ledger_cost` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(20) DEFAULT NULL COMMENT '序号',
  `area` int(11) NOT NULL COMMENT '片区',
  `subject_id` int(11) NOT NULL COMMENT '成本科目ID',
  `project_name` varchar(64) DEFAULT NULL COMMENT '成本项目名称',
  `calculate_invest` decimal(10,2) NOT NULL COMMENT '可研测算金额',
  `expect_invest` decimal(10,2) NOT NULL COMMENT '预计投入金额',
  `total_invest` decimal(10,2) NOT NULL COMMENT '累计投入',
  `audit_statistics` decimal(10,2) NOT NULL COMMENT '审计资料统计金额',
  `gov_confirm` decimal(10,2) NOT NULL COMMENT '政府确认金额',
  `gov_check` decimal(10,2) NOT NULL COMMENT '政府程序金额',
  `uncheck` decimal(10,2) NOT NULL COMMENT '未核对金额',
  `remark` varchar(128) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of oa_zhidi_ledger_cost
-- ----------------------------

-- ----------------------------
-- Table structure for oa_zhiye_ledger_cost
-- ----------------------------
DROP TABLE IF EXISTS `oa_zhiye_ledger_cost`;
CREATE TABLE `oa_zhiye_ledger_cost` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(20) DEFAULT NULL COMMENT '序号',
  `area` int(11) NOT NULL COMMENT '片区',
  `subject_id` int(11) NOT NULL COMMENT '成本科目ID',
  `project_name` varchar(64) DEFAULT NULL,
  `expect_invest` decimal(10,2) NOT NULL COMMENT '预计投入金额',
  `contract_amount` decimal(10,2) NOT NULL COMMENT '已签合同金额',
  `performance_amount` decimal(10,2) NOT NULL COMMENT '已履约金额',
  `paid_amount` decimal(10,2) NOT NULL COMMENT '已付金额',
  `settled_account` decimal(10,2) NOT NULL COMMENT '已结束金额',
  `remark` varchar(64) DEFAULT NULL COMMENT '说明',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of oa_zhiye_ledger_cost
-- ----------------------------
