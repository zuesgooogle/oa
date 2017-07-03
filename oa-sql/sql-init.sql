
-- ----------------------------
-- Table structure for oa_area
-- ----------------------------
DROP TABLE IF EXISTS `oa_area`;
CREATE TABLE `oa_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_area
-- ----------------------------
INSERT INTO `oa_area` VALUES ('1', '1片区', '2017-07-01 19:22:31', '2017-07-01 19:22:31');
INSERT INTO `oa_area` VALUES ('2', '2片区', '2017-07-01 19:22:34', '2017-07-01 19:22:34');
INSERT INTO `oa_area` VALUES ('3', 'C', '2017-07-01 19:22:38', '2017-07-01 19:22:37');

-- ----------------------------
-- Table structure for oa_bank
-- ----------------------------
DROP TABLE IF EXISTS `oa_bank`;
CREATE TABLE `oa_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_bank
-- ----------------------------
INSERT INTO `oa_bank` VALUES ('1', 'A', '2017-07-01 19:22:31', '2017-07-01 19:22:31');
INSERT INTO `oa_bank` VALUES ('2', 'B', '2017-07-01 19:22:34', '2017-07-01 19:22:34');
INSERT INTO `oa_bank` VALUES ('3', 'C', '2017-07-01 19:22:38', '2017-07-01 19:22:37');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='部门信息表';

-- ----------------------------
-- Records of oa_department
-- ----------------------------
INSERT INTO `oa_department` VALUES ('1', '111111', '1', '2017-07-02 10:31:38', '2017-07-02 10:31:37');
INSERT INTO `oa_department` VALUES ('2', '22222', '2', '2017-07-02 10:31:43', '2017-07-02 10:31:42');

-- ----------------------------
-- Table structure for oa_develop_progress_land
-- ----------------------------
DROP TABLE IF EXISTS `oa_develop_progress_land`;
CREATE TABLE `oa_develop_progress_land` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL COMMENT '片区',
  `task_type_id` int(11) NOT NULL COMMENT '任务分类',
  `task_name_id` int(11) NOT NULL,
  `plan_start_time` datetime DEFAULT NULL,
  `plan_end_time` datetime DEFAULT NULL,
  `actual_start_time` datetime DEFAULT NULL,
  `actual_end_time` datetime DEFAULT NULL,
  `organizer` varchar(128) NOT NULL COMMENT '责任单位',
  `department_id` int(11) NOT NULL COMMENT '责任部门',
  `user_id` bigint(20) NOT NULL COMMENT '责任人',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_develop_progress_land
-- ----------------------------
INSERT INTO `oa_develop_progress_land` VALUES ('1', '1', '2', '2', '2017-07-03 00:00:00', '2017-07-04 00:00:00', '2017-07-05 00:00:00', '2017-07-28 00:00:00', '1', '1', '1', '2017-07-03 11:56:23', '2017-07-03 11:56:22');

-- ----------------------------
-- Table structure for oa_develop_progress_second
-- ----------------------------
DROP TABLE IF EXISTS `oa_develop_progress_second`;
CREATE TABLE `oa_develop_progress_second` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `land_id` int(11) NOT NULL COMMENT '地块',
  `task_type_id` int(11) NOT NULL COMMENT '任务分类',
  `task_name_id` int(11) NOT NULL,
  `plan_start_time` datetime DEFAULT NULL,
  `plan_end_time` datetime DEFAULT NULL,
  `actual_start_time` datetime DEFAULT NULL,
  `actual_end_time` datetime DEFAULT NULL,
  `organizer` varchar(128) NOT NULL COMMENT '责任单位',
  `department_id` int(11) NOT NULL COMMENT '责任部门',
  `user_id` bigint(20) NOT NULL COMMENT '责任人',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_develop_progress_second
-- ----------------------------
INSERT INTO `oa_develop_progress_second` VALUES ('1', '1', '1', '1', '2017-07-02 00:00:00', '2017-07-20 00:00:00', '2017-07-12 00:00:00', '2017-07-21 00:00:00', '1', '1', '1', '2017-07-03 12:01:23', '2017-07-03 12:01:23');

-- ----------------------------
-- Table structure for oa_financing_progress
-- ----------------------------
DROP TABLE IF EXISTS `oa_financing_progress`;
CREATE TABLE `oa_financing_progress` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) NOT NULL COMMENT '银行',
  `task_type_id` int(11) NOT NULL COMMENT '任务分类',
  `task_name_id` int(11) NOT NULL,
  `plan_start_time` datetime DEFAULT NULL,
  `plan_end_time` datetime DEFAULT NULL,
  `actual_start_time` datetime DEFAULT NULL,
  `actual_end_time` datetime DEFAULT NULL,
  `organizer` varchar(128) NOT NULL COMMENT '责任单位',
  `department_id` int(11) NOT NULL COMMENT '责任部门',
  `user_id` bigint(20) NOT NULL COMMENT '责任人',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_financing_progress
-- ----------------------------
INSERT INTO `oa_financing_progress` VALUES ('1', '2', '2', '2', '2017-07-03 00:00:00', '2017-07-04 00:00:00', '2017-07-05 00:00:00', '2017-07-28 00:00:00', '1', '1', '1', '2017-07-03 11:56:23', '2017-07-03 11:56:22');

-- ----------------------------
-- Table structure for oa_land
-- ----------------------------
DROP TABLE IF EXISTS `oa_land`;
CREATE TABLE `oa_land` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_land
-- ----------------------------
INSERT INTO `oa_land` VALUES ('1', '1-f', '2017-07-01 19:22:31', '2017-07-01 19:22:31');
INSERT INTO `oa_land` VALUES ('2', '2-a', '2017-07-01 19:22:34', '2017-07-01 19:22:34');
INSERT INTO `oa_land` VALUES ('3', 'C', '2017-07-01 19:22:38', '2017-07-01 19:22:37');

-- ----------------------------
-- Table structure for oa_plan_assert_month
-- ----------------------------
DROP TABLE IF EXISTS `oa_plan_assert_month`;
CREATE TABLE `oa_plan_assert_month` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assert_id` int(11) NOT NULL,
  `assert_name` varchar(64) NOT NULL,
  `year_total_num` int(11) NOT NULL COMMENT '年度计划购置数量',
  `bought_num` int(11) NOT NULL COMMENT '已购买数量',
  `plan_num` int(11) NOT NULL COMMENT '本月计划数量',
  `unit_price` decimal(20,2) NOT NULL COMMENT '单价',
  `remark` varchar(64) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_plan_assert_month
-- ----------------------------
INSERT INTO `oa_plan_assert_month` VALUES ('2', '1', '1', '1', '1', '1', '1.00', '1', '2017-07-02 12:46:08', '2017-07-02 12:46:07');

-- ----------------------------
-- Table structure for oa_plan_assert_year
-- ----------------------------
DROP TABLE IF EXISTS `oa_plan_assert_year`;
CREATE TABLE `oa_plan_assert_year` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `assert_id` int(11) NOT NULL,
  `assert_name` varchar(64) NOT NULL,
  `year_total_num` int(11) NOT NULL COMMENT '年度计划购置数量',
  `unit_price` decimal(20,2) NOT NULL COMMENT '单价',
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
  `remark` varchar(64) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_plan_assert_year
-- ----------------------------
INSERT INTO `oa_plan_assert_year` VALUES ('1', '1', '11111', '1', '1.00', '2017', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', null, '2017-07-01 18:44:32', '2017-07-01 18:45:51');
INSERT INTO `oa_plan_assert_year` VALUES ('2', '1', '1111', '1', '1.00', '2018', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', null, '2017-07-01 19:03:15', '2017-07-01 19:03:14');
INSERT INTO `oa_plan_assert_year` VALUES ('3', '0', '', '1', '1.00', '2020', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', null, '2017-07-01 19:14:06', '2017-07-01 19:14:06');

-- ----------------------------
-- Table structure for oa_plan_charge_month
-- ----------------------------
DROP TABLE IF EXISTS `oa_plan_charge_month`;
CREATE TABLE `oa_plan_charge_month` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` int(11) NOT NULL COMMENT '单位/公司',
  `department_id` int(11) NOT NULL COMMENT '部门',
  `project_id` int(11) NOT NULL COMMENT '项目',
  `subject_id` int(11) NOT NULL COMMENT '成本科目',
  `charge_name` varchar(128) NOT NULL COMMENT '费用名称',
  `year_amount` decimal(20,2) NOT NULL COMMENT '年度计划金额',
  `paied_amount` decimal(20,2) NOT NULL COMMENT '已支付金额',
  `plan_amount` decimal(20,2) NOT NULL COMMENT '本月计划金额',
  `actual_amount` decimal(20,2) NOT NULL COMMENT '本月实际支付',
  `remark` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_plan_charge_month
-- ----------------------------
INSERT INTO `oa_plan_charge_month` VALUES ('2', '1', '1', '1', '1', '1', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-02 14:07:24', '2017-07-02 14:07:24');

-- ----------------------------
-- Table structure for oa_plan_charge_year
-- ----------------------------
DROP TABLE IF EXISTS `oa_plan_charge_year`;
CREATE TABLE `oa_plan_charge_year` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` int(11) NOT NULL COMMENT '单位',
  `department_id` int(11) DEFAULT NULL COMMENT '部门',
  `project_id` int(11) DEFAULT NULL COMMENT '项目',
  `subject_id` int(11) DEFAULT NULL COMMENT '成本科目',
  `charge_name` varchar(64) NOT NULL COMMENT '费用名称',
  `year_amount` decimal(20,2) NOT NULL COMMENT '年度计划金额',
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
-- Records of oa_plan_charge_year
-- ----------------------------
INSERT INTO `oa_plan_charge_year` VALUES ('1', '1', '1', null, null, '1', '1.00', '2017', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2017-07-01 18:44:32', '2017-07-01 18:45:51');
INSERT INTO `oa_plan_charge_year` VALUES ('2', '1', '1', null, null, '1', '1.00', '2018', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2017-07-01 19:03:15', '2017-07-01 19:03:14');
INSERT INTO `oa_plan_charge_year` VALUES ('3', '1', '1', null, null, '1', '1.00', '2020', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2017-07-01 19:14:06', '2017-07-01 19:14:06');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_plan_money_in_month
-- ----------------------------
INSERT INTO `oa_plan_money_in_month` VALUES ('1', '1', '1', '1', '1', '1', '2', '1.00', '1.00', '1.00', '2017-07-02 14:31:09', '2017-07-02 14:31:08');
INSERT INTO `oa_plan_money_in_month` VALUES ('2', '1', '2', '1', '1', '1', '11', '1.00', '1.00', '1.00', '2017-07-02 14:48:26', '2017-07-02 14:48:26');

-- ----------------------------
-- Table structure for oa_plan_money_in_year
-- ----------------------------
DROP TABLE IF EXISTS `oa_plan_money_in_year`;
CREATE TABLE `oa_plan_money_in_year` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` int(11) NOT NULL COMMENT '单位',
  `department_id` int(11) DEFAULT NULL COMMENT '部门',
  `project_id` int(11) DEFAULT NULL COMMENT '项目',
  `subject_id` int(11) DEFAULT NULL COMMENT '成本科目',
  `organizer` varchar(128) DEFAULT NULL COMMENT '单位名称',
  `contract_name` varchar(128) DEFAULT NULL COMMENT '合同名称',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_plan_money_in_year
-- ----------------------------
INSERT INTO `oa_plan_money_in_year` VALUES ('1', '1', '1', null, null, null, '2', '1.00', '2017', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2017-07-02 14:36:45', '2017-07-02 14:36:45');

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
  `level` int(4) NOT NULL COMMENT '职位等级',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='职位信息表';

-- ----------------------------
-- Records of oa_position
-- ----------------------------
INSERT INTO `oa_position` VALUES ('1', '1', '1', '1', '0', '2017-07-02 11:06:57', '2017-07-02 11:06:57');
INSERT INTO `oa_position` VALUES ('2', '2', '2', '2', '0', '2017-07-02 11:07:01', '2017-07-02 11:07:01');
INSERT INTO `oa_position` VALUES ('3', '董事长', 'chairman', '1', '1', '2017-07-02 17:30:07', '2017-07-02 17:30:06');
INSERT INTO `oa_position` VALUES ('4', '总经理', 'leaderManager', '1', '1', '2017-07-02 17:30:37', '2017-07-02 17:30:37');
INSERT INTO `oa_position` VALUES ('5', '部门经理', 'deptManager', '1', '2', '2017-07-02 17:30:51', '2017-07-02 17:30:50');
INSERT INTO `oa_position` VALUES ('6', '人力资源经理', 'hrManager', '1', '2', '2017-07-02 17:37:23', '2017-07-02 17:37:22');

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
-- Table structure for oa_task_classifi
-- ----------------------------
DROP TABLE IF EXISTS `oa_task_classifi`;
CREATE TABLE `oa_task_classifi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '父级节点ID',
  `name` varchar(128) NOT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_task_classifi
-- ----------------------------
INSERT INTO `oa_task_classifi` VALUES ('1', null, '1111', '2017-07-03 19:41:55', '2017-07-03 19:41:54');
INSERT INTO `oa_task_classifi` VALUES ('2', null, '22222', '2017-07-03 19:42:04', '2017-07-03 19:42:03');
INSERT INTO `oa_task_classifi` VALUES ('3', '1', '3333', '2017-07-03 19:42:08', '2017-07-03 19:42:07');

-- ----------------------------
-- Table structure for oa_user
-- ----------------------------
DROP TABLE IF EXISTS `oa_user`;
CREATE TABLE `oa_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `departmentIds` varchar(64) NOT NULL,
  `positionIds` varchar(64) NOT NULL,
  `beijing_mobile` varchar(32) DEFAULT NULL,
  `tianjing_mobile` varchar(32) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL COMMENT '房间号',
  `remark` varchar(128) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of oa_user
-- ----------------------------
INSERT INTO `oa_user` VALUES ('1', '123456', '$2a$10$R0UiRRDFLgoaLlgMe9t4cerdg3olVdU7l1.XKyhD2Si.Z1aaHgu/6', '1,2', '3,4,5,6', '1', '1', '1', '', null, '2017-06-22 17:25:04', '2017-07-02 20:50:31');
INSERT INTO `oa_user` VALUES ('3', '222', '$2a$10$UrR6.gEqiUIzSf5hGNA00OI3IHPyV.U5BME5nBpXP9GDxBgt7iZae', '1,2', '1', '2', '2', '2', '', null, '2017-07-02 11:22:02', '2017-07-02 11:22:01');

-- ----------------------------
-- Table structure for oa_user_department
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_department`;
CREATE TABLE `oa_user_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_department
-- ----------------------------
INSERT INTO `oa_user_department` VALUES ('1', '4', '1');
INSERT INTO `oa_user_department` VALUES ('2', '4', '2');
INSERT INTO `oa_user_department` VALUES ('3', '5', '1');
INSERT INTO `oa_user_department` VALUES ('4', '5', '2');
INSERT INTO `oa_user_department` VALUES ('5', '6', '1');
INSERT INTO `oa_user_department` VALUES ('6', '6', '2');
INSERT INTO `oa_user_department` VALUES ('7', '7', '1');
INSERT INTO `oa_user_department` VALUES ('8', '7', '2');
INSERT INTO `oa_user_department` VALUES ('17', '1', '1');
INSERT INTO `oa_user_department` VALUES ('18', '1', '2');

-- ----------------------------
-- Table structure for oa_user_position
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_position`;
CREATE TABLE `oa_user_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_position
-- ----------------------------
INSERT INTO `oa_user_position` VALUES ('1', '4', '1');
INSERT INTO `oa_user_position` VALUES ('2', '5', '1');
INSERT INTO `oa_user_position` VALUES ('3', '6', '1');
INSERT INTO `oa_user_position` VALUES ('4', '7', '1');
INSERT INTO `oa_user_position` VALUES ('9', '1', '3');
INSERT INTO `oa_user_position` VALUES ('10', '1', '4');
INSERT INTO `oa_user_position` VALUES ('11', '1', '5');
INSERT INTO `oa_user_position` VALUES ('12', '1', '6');

-- ----------------------------
-- Table structure for oa_user_process
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_process`;
CREATE TABLE `oa_user_process` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `task_id` varchar(64) NOT NULL COMMENT 'Activiti 任务ID',
  `user_id` bigint(20) NOT NULL COMMENT '任务执行人ID',
  `form_data_id` int(11) NOT NULL COMMENT '表单数据ID',
  `state` tinyint(4) NOT NULL COMMENT '0，在办，1已办',
  `create_id` bigint(20) NOT NULL COMMENT '创建者',
  `input_date` varchar(20) DEFAULT NULL COMMENT '制表时间',
  `remark` varchar(2000) DEFAULT NULL COMMENT '备注',
  `form_key` varchar(40) DEFAULT NULL COMMENT '表单显示名称',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '删除标识，1表示已删除，0表示未删除',
  `begin_time` datetime DEFAULT NULL COMMENT '开始时间',
  `expire_time` datetime DEFAULT NULL COMMENT '超时时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间，自动填充，程序不需要处理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1115 DEFAULT CHARSET=utf8 COMMENT='用户任务';

-- ----------------------------
-- Records of oa_user_process
-- ----------------------------
INSERT INTO `oa_user_process` VALUES ('1110', '47507', '1', '1', '1', '1', null, null, 'deptManager', null, '2017-07-02 21:40:53', null, '2017-07-02 21:40:53', '2017-07-02 21:40:54');
INSERT INTO `oa_user_process` VALUES ('1111', '47515', '1', '1', '1', '1', null, null, 'deptManager', null, '2017-07-02 21:54:08', null, '2017-07-02 21:54:08', '2017-07-02 21:54:08');
INSERT INTO `oa_user_process` VALUES ('1112', '47523', '1', '1', '1', '1', null, null, 'deptManager', null, '2017-07-02 21:54:33', null, '2017-07-02 21:54:33', '2017-07-02 21:54:33');
INSERT INTO `oa_user_process` VALUES ('1113', '47531', '1', '1', '1', '1', null, null, 'deptManager', null, '2017-07-02 21:55:33', null, '2017-07-02 21:55:33', '2017-07-02 21:55:32');
INSERT INTO `oa_user_process` VALUES ('1114', '47539', '1', '1', '1', '1', null, null, 'deptManager', null, '2017-07-02 21:57:23', null, '2017-07-02 21:57:23', '2017-07-02 21:57:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of oa_zhidi_ledger_cost
-- ----------------------------
INSERT INTO `oa_zhidi_ledger_cost` VALUES ('1', null, '1', '1', null, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-03 19:51:28', '2017-07-03 19:51:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of oa_zhiye_ledger_cost
-- ----------------------------
INSERT INTO `oa_zhiye_ledger_cost` VALUES ('1', null, '1', '1', null, '1.00', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-03 19:53:18', '2017-07-03 19:53:18');