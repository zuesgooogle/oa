
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_area
-- ----------------------------
INSERT INTO `oa_area` VALUES ('1', '一片区', '2017-07-01 21:05:09', '2017-07-01 21:05:08');
INSERT INTO `oa_area` VALUES ('2', '四片区', '2017-07-02 06:49:04', '2017-07-02 06:49:04');
INSERT INTO `oa_area` VALUES ('3', '十片区', '2017-07-02 06:49:13', '2017-07-02 06:49:13');
INSERT INTO `oa_area` VALUES ('4', '十一片区', '2017-07-02 06:49:25', '2017-07-02 06:49:24');
INSERT INTO `oa_area` VALUES ('5', '十三片区', '2017-07-02 06:49:33', '2017-07-02 06:49:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_bank
-- ----------------------------
INSERT INTO `oa_bank` VALUES ('1', '中国农业发展银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('2', '中国工商银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('3', '中国农业银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('4', '中国银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('5', '中国建设银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('6', '交通银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('7', '中国光大银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('8', '华夏银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('9', '招商银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('10', '广发银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('11', '渤海银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_bank` VALUES ('12', '北京银行', '2017-07-02 06:50:02', '2017-07-02 06:50:01');

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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='成本科目表';

-- ----------------------------
-- Records of oa_cost_subject
-- ----------------------------
INSERT INTO `oa_cost_subject` VALUES ('1', null, 'Root', '0', '2017-06-28 21:13:00', '2017-06-28 21:13:04');
INSERT INTO `oa_cost_subject` VALUES ('2', '1', '置地公司', '1', '2017-06-28 21:13:18', '2017-06-28 21:13:22');
INSERT INTO `oa_cost_subject` VALUES ('3', '1', '置业公司', '2', '2017-06-28 21:13:35', '2017-06-28 21:13:38');
INSERT INTO `oa_cost_subject` VALUES ('4', '2', '1 综合开发直接成本', '1', '2017-06-28 22:33:51', '2017-06-28 22:33:51');
INSERT INTO `oa_cost_subject` VALUES ('5', '2', '2 财务费用', '1', '2017-07-02 06:00:52', '2017-07-02 06:00:52');
INSERT INTO `oa_cost_subject` VALUES ('6', '2', '3 企业管理费', '1', '2017-07-02 06:01:06', '2017-07-02 06:01:05');
INSERT INTO `oa_cost_subject` VALUES ('7', '2', '4 企业利润', '1', '2017-07-02 06:01:21', '2017-07-02 06:01:20');
INSERT INTO `oa_cost_subject` VALUES ('8', '4', '1.1 土地整治费用', '1', '2017-07-02 06:02:36', '2017-07-02 06:02:36');
INSERT INTO `oa_cost_subject` VALUES ('9', '4', '1.2 拆迁安置补偿费', '1', '2017-07-02 06:02:49', '2017-07-02 06:02:49');
INSERT INTO `oa_cost_subject` VALUES ('10', '4', '1.3 保险保障费', '1', '2017-07-02 06:02:58', '2017-07-02 06:02:58');
INSERT INTO `oa_cost_subject` VALUES ('11', '4', '1.4 还迁安置房开发建设成本', '1', '2017-07-02 06:03:11', '2017-07-02 06:03:10');
INSERT INTO `oa_cost_subject` VALUES ('12', '4', '1.5 其他费用', '1', '2017-07-02 06:03:26', '2017-07-02 06:03:25');
INSERT INTO `oa_cost_subject` VALUES ('13', '5', '2.1 融资成本', '1', '2017-07-02 06:04:06', '2017-07-02 06:04:06');
INSERT INTO `oa_cost_subject` VALUES ('14', '5', '2.2 咨询服务费', '1', '2017-07-02 06:04:14', '2017-07-02 06:04:14');
INSERT INTO `oa_cost_subject` VALUES ('15', '6', '3.1 人工成本', '1', '2017-07-02 06:04:53', '2017-07-02 06:04:53');
INSERT INTO `oa_cost_subject` VALUES ('16', '6', '3.2 员工福利', '1', '2017-07-02 06:05:06', '2017-07-02 06:05:06');
INSERT INTO `oa_cost_subject` VALUES ('17', '6', '3.3 车辆费用', '1', '2017-07-02 06:05:19', '2017-07-02 06:05:18');
INSERT INTO `oa_cost_subject` VALUES ('18', '6', '3.4 办公费用', '1', '2017-07-02 06:05:32', '2017-07-02 06:05:31');
INSERT INTO `oa_cost_subject` VALUES ('19', '6', '3.5 固定资产', '1', '2017-07-02 06:05:44', '2017-07-02 06:05:44');
INSERT INTO `oa_cost_subject` VALUES ('20', '6', '3.6 劳保费用', '1', '2017-07-02 06:05:55', '2017-07-02 06:05:55');
INSERT INTO `oa_cost_subject` VALUES ('21', '6', '3.7 差旅费', '1', '2017-07-02 06:06:07', '2017-07-02 06:06:06');
INSERT INTO `oa_cost_subject` VALUES ('22', '6', '3.8 物业管理', '1', '2017-07-02 06:06:15', '2017-07-02 06:06:14');
INSERT INTO `oa_cost_subject` VALUES ('23', '6', '3.9 食堂费用', '1', '2017-07-02 06:06:22', '2017-07-02 06:06:22');
INSERT INTO `oa_cost_subject` VALUES ('24', '6', '3.10 业务招待费', '1', '2017-07-02 06:06:31', '2017-07-02 06:06:30');
INSERT INTO `oa_cost_subject` VALUES ('25', '6', '3.11 税费', '1', '2017-07-02 06:06:44', '2017-07-02 06:06:43');
INSERT INTO `oa_cost_subject` VALUES ('26', '25', '3.11.1 增值税', '1', '2017-07-02 06:07:22', '2017-07-02 06:07:22');
INSERT INTO `oa_cost_subject` VALUES ('28', '25', '3.11.2 城建税、教育费附加、地方教育附加、防洪工程维护费', '1', '2017-07-02 06:08:07', '2017-07-02 06:08:06');
INSERT INTO `oa_cost_subject` VALUES ('29', '25', '3.11.3 企业所得税', '1', '2017-07-02 06:08:16', '2017-07-02 06:08:15');
INSERT INTO `oa_cost_subject` VALUES ('30', '25', '3.11.4 土地使用税', '1', '2017-07-02 06:08:23', '2017-07-02 06:08:23');
INSERT INTO `oa_cost_subject` VALUES ('31', '25', '3.11.5 房产税', '1', '2017-07-02 06:08:33', '2017-07-02 06:08:32');
INSERT INTO `oa_cost_subject` VALUES ('32', '25', '3.11.6 印花税', '1', '2017-07-02 06:08:45', '2017-07-02 06:08:45');
INSERT INTO `oa_cost_subject` VALUES ('33', '12', '1.5.1 咨询费', '1', '2017-07-02 06:11:04', '2017-07-02 06:11:04');
INSERT INTO `oa_cost_subject` VALUES ('34', '12', '1.5.2 代被置换人缴纳费用', '1', '2017-07-02 06:11:18', '2017-07-02 06:11:17');
INSERT INTO `oa_cost_subject` VALUES ('35', '12', '1.5.3 开发期税费', '1', '2017-07-02 06:11:27', '2017-07-02 06:11:27');
INSERT INTO `oa_cost_subject` VALUES ('36', '12', '1.5.4 其他费用', '1', '2017-07-02 06:11:34', '2017-07-02 06:11:34');
INSERT INTO `oa_cost_subject` VALUES ('37', '34', '1.5.2.1 公共维修基金', '1', '2017-07-02 06:11:50', '2017-07-02 06:11:49');
INSERT INTO `oa_cost_subject` VALUES ('38', '34', '1.5.2.2 契税（代缴）', '1', '2017-07-02 06:11:55', '2017-07-02 06:11:55');
INSERT INTO `oa_cost_subject` VALUES ('39', '35', '1.5.3.1 增值税', '1', '2017-07-02 06:14:56', '2017-07-02 06:14:55');
INSERT INTO `oa_cost_subject` VALUES ('40', '35', '1.5.3.2 城建税、教育费附加、地方教育附加、防洪工程维护费', '1', '2017-07-02 06:15:02', '2017-07-02 06:15:01');
INSERT INTO `oa_cost_subject` VALUES ('41', '35', '1.5.3.3 印花税', '1', '2017-07-02 06:15:11', '2017-07-02 06:15:11');
INSERT INTO `oa_cost_subject` VALUES ('42', '11', '1.4.1 土地出让费用', '1', '2017-07-02 06:17:45', '2017-07-02 06:17:45');
INSERT INTO `oa_cost_subject` VALUES ('43', '11', '1.4.2 前期费用', '1', '2017-07-02 06:18:01', '2017-07-02 06:18:01');
INSERT INTO `oa_cost_subject` VALUES ('44', '11', '1.4.3 建设费用', '1', '2017-07-02 06:18:16', '2017-07-02 06:18:15');
INSERT INTO `oa_cost_subject` VALUES ('45', '11', '1.4.4 行政收费类', '1', '2017-07-02 06:18:27', '2017-07-02 06:18:26');
INSERT INTO `oa_cost_subject` VALUES ('46', '11', '1.4.5 咨询服务费用', '1', '2017-07-02 06:18:43', '2017-07-02 06:18:43');
INSERT INTO `oa_cost_subject` VALUES ('47', '11', '1.4.6 财务费用', '1', '2017-07-02 06:18:56', '2017-07-02 06:18:56');
INSERT INTO `oa_cost_subject` VALUES ('48', '11', '1.4.7 税费', '1', '2017-07-02 06:19:07', '2017-07-02 06:19:07');
INSERT INTO `oa_cost_subject` VALUES ('49', '11', '1.4.8 企业管理费', '1', '2017-07-02 06:19:16', '2017-07-02 06:19:16');
INSERT INTO `oa_cost_subject` VALUES ('50', '48', '1.4.7.1 增值税', '1', '2017-07-02 06:19:45', '2017-07-02 06:19:44');
INSERT INTO `oa_cost_subject` VALUES ('51', '48', '1.4.7.2 城建税、教育费附加、地方教育附加、防洪工程维护费', '1', '2017-07-02 06:20:08', '2017-07-02 06:20:08');
INSERT INTO `oa_cost_subject` VALUES ('52', '48', '1.4.7.3 企业所得税', '1', '2017-07-02 06:20:25', '2017-07-02 06:20:25');
INSERT INTO `oa_cost_subject` VALUES ('53', '48', '1.4.7.4 土地使用税', '1', '2017-07-02 06:20:36', '2017-07-02 06:20:36');
INSERT INTO `oa_cost_subject` VALUES ('54', '48', '1.4.7.5 土地增值税', '1', '2017-07-02 06:20:56', '2017-07-02 06:20:55');
INSERT INTO `oa_cost_subject` VALUES ('55', '48', '1.4.7.6 印花税', '1', '2017-07-02 06:21:05', '2017-07-02 06:21:05');
INSERT INTO `oa_cost_subject` VALUES ('56', '48', '1.4.7.7 契税（土地）', '1', '2017-07-02 06:21:14', '2017-07-02 06:21:13');
INSERT INTO `oa_cost_subject` VALUES ('57', '10', '1.3.1 居民养老保险', '1', '2017-07-02 06:24:42', '2017-07-02 06:24:41');
INSERT INTO `oa_cost_subject` VALUES ('58', '10', '1.3.2 一次性补偿', '1', '2017-07-02 06:24:49', '2017-07-02 06:24:49');
INSERT INTO `oa_cost_subject` VALUES ('59', '9', '1.2.1 房屋置换协议', '1', '2017-07-02 06:25:22', '2017-07-02 06:25:21');
INSERT INTO `oa_cost_subject` VALUES ('60', '9', '1.2.2 两基金', '1', '2017-07-02 06:25:31', '2017-07-02 06:25:30');
INSERT INTO `oa_cost_subject` VALUES ('61', '9', '1.2.3 拆迁补助', '1', '2017-07-02 06:25:40', '2017-07-02 06:25:40');
INSERT INTO `oa_cost_subject` VALUES ('62', '59', '1.2.1.1 被置换人应收款', '1', '2017-07-02 06:26:09', '2017-07-02 06:26:08');
INSERT INTO `oa_cost_subject` VALUES ('63', '60', '1.2.2.1 物业基金', '1', '2017-07-02 06:26:37', '2017-07-02 06:26:37');
INSERT INTO `oa_cost_subject` VALUES ('64', '60', '1.2.2.2 取暖基金', '1', '2017-07-02 06:26:48', '2017-07-02 06:26:48');
INSERT INTO `oa_cost_subject` VALUES ('65', '61', '1.2.3.1 临时安置补助费', '1', '2017-07-02 06:27:14', '2017-07-02 06:27:13');
INSERT INTO `oa_cost_subject` VALUES ('66', '61', '1.2.3.2 搬家补助费', '1', '2017-07-02 06:27:23', '2017-07-02 06:27:23');
INSERT INTO `oa_cost_subject` VALUES ('67', '61', '1.2.3.3 提前搬迁奖励', '1', '2017-07-02 06:27:32', '2017-07-02 06:27:32');
INSERT INTO `oa_cost_subject` VALUES ('68', '8', '1.1.1 征地补偿费用', '1', '2017-07-02 06:35:09', '2017-07-02 06:35:09');
INSERT INTO `oa_cost_subject` VALUES ('69', '8', '1.1.2 地上物拆除拆迁补偿费', '1', '2017-07-02 06:35:25', '2017-07-02 06:35:24');
INSERT INTO `oa_cost_subject` VALUES ('70', '8', '1.1.3 场地整理费用', '1', '2017-07-02 06:35:37', '2017-07-02 06:35:36');
INSERT INTO `oa_cost_subject` VALUES ('71', '8', '1.1.4 市政基础设施建设费', '1', '2017-07-02 06:35:47', '2017-07-02 06:35:46');
INSERT INTO `oa_cost_subject` VALUES ('72', '8', '1.1.5 公共配套设施建设费', '1', '2017-07-02 06:35:52', '2017-07-02 06:35:52');
INSERT INTO `oa_cost_subject` VALUES ('73', '68', '1.1.1.1 土地整治前期费用', '1', '2017-07-02 06:36:12', '2017-07-02 06:36:11');
INSERT INTO `oa_cost_subject` VALUES ('74', '68', '1.1.1.2 土地征地费', '1', '2017-07-02 06:36:21', '2017-07-02 06:36:21');
INSERT INTO `oa_cost_subject` VALUES ('75', '68', '1.1.1.3 国有土地收购补偿费', '1', '2017-07-02 06:36:30', '2017-07-02 06:36:30');
INSERT INTO `oa_cost_subject` VALUES ('76', '68', '1.1.1.4 集体土地征收补偿安置费用', '1', '2017-07-02 06:36:37', '2017-07-02 06:36:36');
INSERT INTO `oa_cost_subject` VALUES ('77', '69', '1.1.2.1 地上物拆除补偿费', '1', '2017-07-02 06:36:58', '2017-07-02 06:36:57');
INSERT INTO `oa_cost_subject` VALUES ('78', '69', '1.1.2.2 拆迁管理及服务费', '1', '2017-07-02 06:37:05', '2017-07-02 06:37:05');
INSERT INTO `oa_cost_subject` VALUES ('79', '69', '1.1.2.3 评估费', '1', '2017-07-02 06:37:14', '2017-07-02 06:37:13');
INSERT INTO `oa_cost_subject` VALUES ('80', '70', '1.1.3.1 拆除费', '1', '2017-07-02 06:37:31', '2017-07-02 06:37:31');
INSERT INTO `oa_cost_subject` VALUES ('81', '70', '1.1.3.2 渣土清运费', '1', '2017-07-02 06:37:40', '2017-07-02 06:37:39');
INSERT INTO `oa_cost_subject` VALUES ('82', '70', '1.1.3.3 场地管理费', '1', '2017-07-02 06:37:46', '2017-07-02 06:37:45');
INSERT INTO `oa_cost_subject` VALUES ('83', '3', '1 还迁安置房开发建设成本', '2', '2017-07-02 06:38:43', '2017-07-02 06:38:43');
INSERT INTO `oa_cost_subject` VALUES ('84', '83', '1.1 土地出让金', '2', '2017-07-02 06:39:27', '2017-07-02 06:39:26');
INSERT INTO `oa_cost_subject` VALUES ('85', '83', '1.2 前期费用', '2', '2017-07-02 06:39:38', '2017-07-02 06:39:37');
INSERT INTO `oa_cost_subject` VALUES ('86', '83', '1.3 建设费用', '2', '2017-07-02 06:39:50', '2017-07-02 06:39:50');
INSERT INTO `oa_cost_subject` VALUES ('87', '83', '1.4 行政收费类', '2', '2017-07-02 06:40:04', '2017-07-02 06:40:03');
INSERT INTO `oa_cost_subject` VALUES ('88', '83', '1.5 咨询服务费用', '2', '2017-07-02 06:40:16', '2017-07-02 06:40:16');
INSERT INTO `oa_cost_subject` VALUES ('89', '83', '1.6 财务费用', '2', '2017-07-02 06:40:31', '2017-07-02 06:40:30');
INSERT INTO `oa_cost_subject` VALUES ('90', '83', '1.7 税费', '2', '2017-07-02 06:40:36', '2017-07-02 06:40:36');
INSERT INTO `oa_cost_subject` VALUES ('91', '83', '1.8 企业管理费', '2', '2017-07-02 06:40:51', '2017-07-02 06:40:50');
INSERT INTO `oa_cost_subject` VALUES ('92', '91', '1.8.1 人工成本', '2', '2017-07-02 06:41:12', '2017-07-02 06:41:12');
INSERT INTO `oa_cost_subject` VALUES ('93', '91', '1.8.2 员工福利', '2', '2017-07-02 06:41:25', '2017-07-02 06:41:24');
INSERT INTO `oa_cost_subject` VALUES ('94', '91', '1.8.3 车辆费用', '2', '2017-07-02 06:41:35', '2017-07-02 06:41:34');
INSERT INTO `oa_cost_subject` VALUES ('95', '91', '1.8.4 办公费用', '2', '2017-07-02 06:41:45', '2017-07-02 06:41:45');
INSERT INTO `oa_cost_subject` VALUES ('96', '91', '1.8.5 固定资产', '2', '2017-07-02 06:41:55', '2017-07-02 06:41:54');
INSERT INTO `oa_cost_subject` VALUES ('97', '91', '1.8.6 劳保费用', '2', '2017-07-02 06:42:06', '2017-07-02 06:42:05');
INSERT INTO `oa_cost_subject` VALUES ('98', '91', '1.8.7 差旅费', '2', '2017-07-02 06:42:15', '2017-07-02 06:42:15');
INSERT INTO `oa_cost_subject` VALUES ('99', '91', '1.8.8 物业管理', '2', '2017-07-02 06:42:27', '2017-07-02 06:42:27');
INSERT INTO `oa_cost_subject` VALUES ('100', '91', '1.8.9 食堂费用', '2', '2017-07-02 06:42:41', '2017-07-02 06:42:41');
INSERT INTO `oa_cost_subject` VALUES ('101', '91', '1.8.10 业务招待费', '2', '2017-07-02 06:42:44', '2017-07-02 06:42:43');
INSERT INTO `oa_cost_subject` VALUES ('102', '90', '1.7.1 增值税', '2', '2017-07-02 06:43:02', '2017-07-02 06:43:02');
INSERT INTO `oa_cost_subject` VALUES ('103', '90', '1.7.2 城建税、教育费附加、地方教育附加、防洪工程维护费', '2', '2017-07-02 06:43:16', '2017-07-02 06:43:15');
INSERT INTO `oa_cost_subject` VALUES ('104', '90', '1.7.3 企业所得税', '2', '2017-07-02 06:43:24', '2017-07-02 06:43:23');
INSERT INTO `oa_cost_subject` VALUES ('105', '90', '1.7.4 土地使用税', '2', '2017-07-02 06:43:37', '2017-07-02 06:43:36');
INSERT INTO `oa_cost_subject` VALUES ('106', '90', '1.7.5 土地增值税', '2', '2017-07-02 06:43:46', '2017-07-02 06:43:45');
INSERT INTO `oa_cost_subject` VALUES ('107', '90', '1.7.6 印花税', '2', '2017-07-02 06:43:57', '2017-07-02 06:43:56');
INSERT INTO `oa_cost_subject` VALUES ('108', '90', '1.7.7 契税（土地）', '2', '2017-07-02 06:43:59', '2017-07-02 06:43:58');
INSERT INTO `oa_cost_subject` VALUES ('109', '87', '1.4.1 交易手续费', '2', '2017-07-02 06:44:26', '2017-07-02 06:44:26');
INSERT INTO `oa_cost_subject` VALUES ('110', '87', '1.4.2 配套建设费', '2', '2017-07-02 06:44:37', '2017-07-02 06:44:37');
INSERT INTO `oa_cost_subject` VALUES ('111', '87', '1.4.3 水、电、热等能源缴费', '2', '2017-07-02 06:44:49', '2017-07-02 06:44:48');
INSERT INTO `oa_cost_subject` VALUES ('112', '87', '1.4.4 基金类', '2', '2017-07-02 06:44:51', '2017-07-02 06:44:51');
INSERT INTO `oa_cost_subject` VALUES ('113', '86', '1.3.1 工程监理费用', '2', '2017-07-02 06:45:11', '2017-07-02 06:45:11');
INSERT INTO `oa_cost_subject` VALUES ('114', '86', '1.3.2 建安工程费', '2', '2017-07-02 06:45:23', '2017-07-02 06:45:23');
INSERT INTO `oa_cost_subject` VALUES ('115', '86', '1.3.3 园林绿化费用', '2', '2017-07-02 06:45:32', '2017-07-02 06:45:32');
INSERT INTO `oa_cost_subject` VALUES ('116', '86', '1.3.4 红线内小市政费用', '2', '2017-07-02 06:45:42', '2017-07-02 06:45:41');
INSERT INTO `oa_cost_subject` VALUES ('117', '86', '1.3.5 检验检测费用', '2', '2017-07-02 06:45:53', '2017-07-02 06:45:53');
INSERT INTO `oa_cost_subject` VALUES ('118', '86', '1.3.6 其他工程费用', '2', '2017-07-02 06:45:59', '2017-07-02 06:45:59');
INSERT INTO `oa_cost_subject` VALUES ('119', '114', '1.3.2.1 A区', '2', '2017-07-02 06:46:28', '2017-07-02 06:46:28');
INSERT INTO `oa_cost_subject` VALUES ('120', '114', '1.3.2.2 B区', '2', '2017-07-02 06:46:35', '2017-07-02 06:46:34');
INSERT INTO `oa_cost_subject` VALUES ('121', '114', '1.3.2.3 C区', '2', '2017-07-02 06:46:38', '2017-07-02 06:46:37');
INSERT INTO `oa_cost_subject` VALUES ('122', '85', '1.2.1 勘察费用', '2', '2017-07-02 06:46:59', '2017-07-02 06:46:59');
INSERT INTO `oa_cost_subject` VALUES ('123', '85', '1.2.2 设计费用', '2', '2017-07-02 06:47:08', '2017-07-02 06:47:07');
INSERT INTO `oa_cost_subject` VALUES ('124', '85', '1.2.3 三通一平及临时围挡费', '2', '2017-07-02 06:47:17', '2017-07-02 06:47:17');
INSERT INTO `oa_cost_subject` VALUES ('125', '85', '1.2.4 项目测绘费', '2', '2017-07-02 06:47:25', '2017-07-02 06:47:25');
INSERT INTO `oa_cost_subject` VALUES ('126', '85', '1.2.5 评估、分析费用', '2', '2017-07-02 06:47:37', '2017-07-02 06:47:37');
INSERT INTO `oa_cost_subject` VALUES ('127', '85', '1.2.6 其他前期费用', '2', '2017-07-02 06:47:39', '2017-07-02 06:47:39');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='部门信息表';

-- ----------------------------
-- Records of oa_department
-- ----------------------------
INSERT INTO `oa_department` VALUES ('1', '领导班子', '1', '2017-07-02 06:53:46', '2017-07-02 06:53:45');
INSERT INTO `oa_department` VALUES ('2', '经营管理团队', '1', '2017-07-02 06:54:07', '2017-07-02 06:54:06');
INSERT INTO `oa_department` VALUES ('3', '建设管理团队', '1', '2017-07-02 06:54:21', '2017-07-02 06:54:20');
INSERT INTO `oa_department` VALUES ('4', '前期开发团队', '1', '2017-07-02 06:54:41', '2017-07-02 06:54:40');
INSERT INTO `oa_department` VALUES ('5', '综合管理团队', '1', '2017-07-02 06:54:49', '2017-07-02 06:54:49');
INSERT INTO `oa_department` VALUES ('6', '财务管理团队', '1', '2017-07-02 06:55:13', '2017-07-02 06:55:13');
INSERT INTO `oa_department` VALUES ('7', '领导班子', '2', '2017-07-02 06:55:55', '2017-07-02 06:55:54');
INSERT INTO `oa_department` VALUES ('8', '经营管理部', '2', '2017-07-02 06:56:05', '2017-07-02 06:56:04');
INSERT INTO `oa_department` VALUES ('9', '建设管理部', '2', '2017-07-02 06:56:17', '2017-07-02 06:56:17');
INSERT INTO `oa_department` VALUES ('10', '前期开发部', '2', '2017-07-02 06:56:30', '2017-07-02 06:56:29');
INSERT INTO `oa_department` VALUES ('11', '综合管理部', '2', '2017-07-02 06:56:39', '2017-07-02 06:56:38');
INSERT INTO `oa_department` VALUES ('12', '财务管理部', '2', '2017-07-02 06:56:48', '2017-07-02 06:56:47');

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
INSERT INTO `oa_develop_progress_land` VALUES ('1', '1', '2', '2', '2017-07-20 00:00:00', '2017-07-20 00:00:00', '2017-07-28 00:00:00', '2017-07-25 00:00:00', '1', '1', '1', '2017-07-03 11:56:23', '2017-07-03 11:56:22');

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
-- Table structure for oa_financing_ledger
-- ----------------------------
DROP TABLE IF EXISTS `oa_financing_ledger`;
CREATE TABLE `oa_financing_ledger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL COMMENT '年份',
  `month` int(11) NOT NULL COMMENT '月份',
  `type` int(11) NOT NULL COMMENT '类别',
  `bank_id` int(11) NOT NULL COMMENT '银行名称',
  `project_name` varchar(64) NOT NULL COMMENT '项目',
  `amount` decimal(10,2) NOT NULL COMMENT '额度',
  `financing_amount` decimal(10,2) NOT NULL COMMENT '计划融资金额',
  `total_lending` decimal(10,2) DEFAULT NULL COMMENT '累计已放贷款',
  `total_replay_loan` decimal(10,2) DEFAULT NULL COMMENT '累计已还贷款',
  `remain_loan` decimal(10,2) DEFAULT NULL COMMENT '贷款余额',
  `deadline` varchar(16) NOT NULL COMMENT '期限',
  `rate` varchar(16) NOT NULL COMMENT '利率',
  `guaranty` varchar(128) DEFAULT NULL COMMENT '担保方式',
  `key_node` varchar(64) DEFAULT NULL COMMENT '关键节点',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of oa_financing_ledger
-- ----------------------------
INSERT INTO `oa_financing_ledger` VALUES ('1', '2016', '12', '1', '5', '1', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '1', '1', '1', '2017-07-04 15:40:03', '2017-07-04 15:40:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_land
-- ----------------------------
INSERT INTO `oa_land` VALUES ('1', '1-3状元城', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_land` VALUES ('2', '2-5蝶恋新园', '2017-07-02 06:50:29', '2017-07-02 06:50:29');
INSERT INTO `oa_land` VALUES ('3', '2-6蝶恋兴园', '2017-07-02 06:50:41', '2017-07-02 06:50:40');
INSERT INTO `oa_land` VALUES ('4', '2-7蝶恋旺园', '2017-07-02 06:50:53', '2017-07-02 06:50:53');
INSERT INTO `oa_land` VALUES ('5', '4-1福心家园', '2017-07-02 06:51:06', '2017-07-02 06:51:06');
INSERT INTO `oa_land` VALUES ('6', '7-3金玉三园', '2017-07-02 06:51:17', '2017-07-02 06:51:16');
INSERT INTO `oa_land` VALUES ('7', '7-4金玉四园', '2017-07-02 06:51:26', '2017-07-02 06:51:25');
INSERT INTO `oa_land` VALUES ('8', '7-5金玉五园', '2017-07-02 06:51:33', '2017-07-02 06:51:33');

-- ----------------------------
-- Table structure for oa_ledger_administrative
-- ----------------------------
DROP TABLE IF EXISTS `oa_ledger_administrative`;
CREATE TABLE `oa_ledger_administrative` (
  `id` bigint(20) NOT NULL,
  `company` int(11) NOT NULL COMMENT '公司',
  `subject_id` int(11) NOT NULL COMMENT '成本科目',
  `name` varchar(128) NOT NULL COMMENT '名称',
  `content` varchar(128) DEFAULT NULL COMMENT '内容',
  `payable_amount` decimal(20,2) NOT NULL COMMENT '应支付金额',
  `pay_condition` varchar(255) DEFAULT NULL COMMENT '付款条件',
  `signatory` varchar(128) NOT NULL COMMENT '签约方',
  `sign_time` datetime NOT NULL COMMENT '合同签订时间',
  `linkman` varchar(64) NOT NULL COMMENT '联系人',
  `phone` varchar(16) NOT NULL COMMENT '联系人电话',
  `pay_total` decimal(20,2) DEFAULT NULL COMMENT '累计付款金额',
  `department_id` int(11) NOT NULL COMMENT '发起部门',
  `user_id` bigint(20) NOT NULL COMMENT '发起人',
  `file_box_id` varchar(64) NOT NULL COMMENT '档案合编号',
  `file_id` varchar(64) NOT NULL COMMENT '档案编号',
  `remark` varchar(64) DEFAULT NULL COMMENT '其他',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_ledger_administrative
-- ----------------------------

-- ----------------------------
-- Table structure for oa_ledger_zhidi_cost
-- ----------------------------
DROP TABLE IF EXISTS `oa_ledger_zhidi_cost`;
CREATE TABLE `oa_ledger_zhidi_cost` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` smallint(6) NOT NULL COMMENT '年',
  `month` smallint(6) NOT NULL COMMENT '月',
  `area_id` int(11) NOT NULL COMMENT '片区',
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of oa_ledger_zhidi_cost
-- ----------------------------
INSERT INTO `oa_ledger_zhidi_cost` VALUES ('1', '2016', '1', '1', '1', null, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-05 17:50:00', '2017-07-05 17:50:00');
INSERT INTO `oa_ledger_zhidi_cost` VALUES ('2', '2017', '1', '1', '1', null, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '', '2017-07-06 10:30:12', '2017-07-06 10:30:12');
INSERT INTO `oa_ledger_zhidi_cost` VALUES ('3', '2017', '2', '2', '1', null, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-06 10:30:22', '2017-07-06 10:30:21');

-- ----------------------------
-- Table structure for oa_ledger_zhiye_cost
-- ----------------------------
DROP TABLE IF EXISTS `oa_ledger_zhiye_cost`;
CREATE TABLE `oa_ledger_zhiye_cost` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` smallint(6) NOT NULL COMMENT '年',
  `month` smallint(6) NOT NULL COMMENT '月',
  `land_id` int(11) NOT NULL COMMENT '地块',
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
-- Records of oa_ledger_zhiye_cost
-- ----------------------------
INSERT INTO `oa_ledger_zhiye_cost` VALUES ('1', '2017', '2', '2', '1', null, '1.00', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-05 17:50:39', '2017-07-05 17:50:38');

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
INSERT INTO `oa_plan_money_out_year` VALUES ('1', '1', '1', null, null, null, '1', '1.00', '12.00', '2022', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2017-07-01 18:44:32', '2017-07-01 18:45:51');
INSERT INTO `oa_plan_money_out_year` VALUES ('2', '1', '1', null, null, null, '1', '1.00', '1.00', '2017', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2017-07-01 19:03:15', '2017-07-01 19:03:14');
INSERT INTO `oa_plan_money_out_year` VALUES ('3', '1', '1', null, null, null, '1', '1.00', '1.00', '2016', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '2017-07-01 19:14:06', '2017-07-01 19:14:06');

-- ----------------------------
-- Table structure for oa_plan_repay
-- ----------------------------
DROP TABLE IF EXISTS `oa_plan_repay`;
CREATE TABLE `oa_plan_repay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `year` smallint(6) NOT NULL COMMENT '年',
  `month` smallint(6) NOT NULL COMMENT '月',
  `bank_id` int(11) NOT NULL COMMENT '单位/公司',
  `project_name` varchar(64) NOT NULL COMMENT '项目',
  `total_loan_amount` decimal(20,2) NOT NULL COMMENT '累计已放款金额',
  `plan_amount` decimal(20,2) NOT NULL COMMENT '本月计划还款金额',
  `plan_remain_loan_amount` decimal(20,2) NOT NULL COMMENT '计划还款贷款余额',
  `actual_amount` decimal(20,2) NOT NULL COMMENT '实际本月还款金额',
  `actual_remain_loan_amount` decimal(20,2) NOT NULL COMMENT '实际还款贷款余额',
  `remark` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_plan_repay
-- ----------------------------
INSERT INTO `oa_plan_repay` VALUES ('3', '2016', '2', '1', '1', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-06 17:20:37', '2017-07-06 17:20:37');
INSERT INTO `oa_plan_repay` VALUES ('4', '2017', '2', '2', '1', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-06 17:22:21', '2017-07-06 17:22:21');

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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='职位信息表';

-- ----------------------------
-- Records of oa_position
-- ----------------------------
INSERT INTO `oa_position` VALUES ('1', '党委书记兼董事长', '党委书记兼董事长', '1', '1', '2017-07-02 06:59:53', '2017-07-02 06:59:52');
INSERT INTO `oa_position` VALUES ('2', '总经理兼党委副书记', '总经理兼党委副书记', '1', '1', '2017-07-02 07:00:24', '2017-07-02 07:00:23');
INSERT INTO `oa_position` VALUES ('3', '党委副书记', '党委副书记', '1', '1', '2017-07-02 07:00:51', '2017-07-02 07:00:50');
INSERT INTO `oa_position` VALUES ('4', '副总经理', '副总经理', '1', '1', '2017-07-02 07:01:09', '2017-07-02 07:01:08');
INSERT INTO `oa_position` VALUES ('5', '总会计师', '总会计师', '1', '1', '2017-07-02 07:01:25', '2017-07-02 07:01:24');
INSERT INTO `oa_position` VALUES ('6', '副总会计师', '副总会计师', '1', '1', '2017-07-02 07:01:45', '2017-07-02 07:01:44');
INSERT INTO `oa_position` VALUES ('7', '工会主席兼副总经理', '工会主席兼副总经理', '1', '1', '2017-07-02 07:02:20', '2017-07-02 07:02:19');
INSERT INTO `oa_position` VALUES ('8', '副总经理', '副总经理', '1', '1', '2017-07-02 07:02:35', '2017-07-02 07:02:35');
INSERT INTO `oa_position` VALUES ('9', '总经理助理', '总经理助理', '1', '1', '2017-07-02 07:02:49', '2017-07-02 07:02:48');
INSERT INTO `oa_position` VALUES ('13', '部门经理', '部门经理', '1', '2', '2017-07-02 07:04:09', '2017-07-02 07:04:09');
INSERT INTO `oa_position` VALUES ('14', '部门副经理', '部门副经理', '1', '2', '2017-07-02 07:04:22', '2017-07-02 07:04:21');
INSERT INTO `oa_position` VALUES ('15', '拆迁', '拆迁', '1', '3', '2017-07-02 07:05:21', '2017-07-02 07:05:21');
INSERT INTO `oa_position` VALUES ('16', '合同预算', '合同预算', '1', '3', '2017-07-02 07:05:39', '2017-07-02 07:05:39');
INSERT INTO `oa_position` VALUES ('17', '招标采购', '招标采购', '1', '3', '2017-07-02 07:05:52', '2017-07-02 07:05:52');
INSERT INTO `oa_position` VALUES ('18', '置地合同管理', '置地合同管理', '1', '3', '2017-07-02 07:06:10', '2017-07-02 07:06:10');
INSERT INTO `oa_position` VALUES ('19', '企划策划', '企划策划', '1', '3', '2017-07-02 07:06:24', '2017-07-02 07:06:24');
INSERT INTO `oa_position` VALUES ('20', '技术质量', '技术质量', '1', '3', '2017-07-02 07:06:47', '2017-07-02 07:06:47');
INSERT INTO `oa_position` VALUES ('21', '工程管理', '工程管理', '1', '3', '2017-07-02 07:07:13', '2017-07-02 07:07:12');
INSERT INTO `oa_position` VALUES ('22', '前期手续', '前期手续', '1', '3', '2017-07-02 07:07:33', '2017-07-02 07:07:33');
INSERT INTO `oa_position` VALUES ('23', '规划设计', '规划设计', '1', '3', '2017-07-02 07:07:42', '2017-07-02 07:07:42');
INSERT INTO `oa_position` VALUES ('24', '党委办公室', '党务经理', '1', '3', '2017-07-02 07:08:34', '2017-07-02 07:08:33');
INSERT INTO `oa_position` VALUES ('25', '人力资源副经理', '人力资源副经理', '1', '2', '2017-07-02 07:08:55', '2017-07-02 07:08:54');
INSERT INTO `oa_position` VALUES ('26', '行政保卫', '行政保卫', '1', '3', '2017-07-02 07:09:09', '2017-07-02 07:09:09');
INSERT INTO `oa_position` VALUES ('27', '经理办公室', '经理办公室经理', '1', '3', '2017-07-02 07:09:39', '2017-07-02 07:09:38');
INSERT INTO `oa_position` VALUES ('28', '法律事务', '法务', '1', '3', '2017-07-02 07:10:12', '2017-07-02 07:10:12');
INSERT INTO `oa_position` VALUES ('29', '行政', '行政', '1', '3', '2017-07-02 07:11:20', '2017-07-02 07:11:19');
INSERT INTO `oa_position` VALUES ('30', '财务管理', '财务管理', '1', '3', '2017-07-02 07:11:34', '2017-07-02 07:11:33');
INSERT INTO `oa_position` VALUES ('31', '金融融资', '金融融资', '1', '3', '2017-07-02 07:11:44', '2017-07-02 07:11:44');
INSERT INTO `oa_position` VALUES ('32', '合同归档', '合同归档', '1', '3', '2017-07-02 07:11:58', '2017-07-02 07:11:57');
INSERT INTO `oa_position` VALUES ('33', '执行董事', '执行董事', '2', '1', '2017-07-02 07:12:38', '2017-07-02 07:12:37');
INSERT INTO `oa_position` VALUES ('34', '副总经理', '副总经理', '2', '1', '2017-07-02 07:12:49', '2017-07-02 07:12:48');
INSERT INTO `oa_position` VALUES ('35', '总经理', '总经理', '2', '1', '2017-07-02 07:12:59', '2017-07-02 07:12:59');
INSERT INTO `oa_position` VALUES ('36', '置业合同管理', '置业合同管理', '2', '3', '2017-07-02 07:13:22', '2017-07-02 07:13:21');
INSERT INTO `oa_position` VALUES ('37', '招标采购', '招标采购', '2', '3', '2017-07-02 07:13:34', '2017-07-02 07:13:33');
INSERT INTO `oa_position` VALUES ('38', '合同预算', '合同预算', '2', '3', '2017-07-02 07:13:45', '2017-07-02 07:13:45');
INSERT INTO `oa_position` VALUES ('39', '企划策划', '企划策划', '2', '3', '2017-07-02 07:13:55', '2017-07-02 07:13:54');
INSERT INTO `oa_position` VALUES ('40', '技术质量', '技术质量', '2', '3', '2017-07-02 07:14:06', '2017-07-02 07:14:06');
INSERT INTO `oa_position` VALUES ('41', '工程管理', '工程管理', '2', '3', '2017-07-02 07:14:20', '2017-07-02 07:14:19');
INSERT INTO `oa_position` VALUES ('42', '前期手续', '前期手续', '2', '3', '2017-07-02 07:14:41', '2017-07-02 07:14:40');
INSERT INTO `oa_position` VALUES ('43', '规划设计', '规划设计', '2', '3', '2017-07-02 07:14:48', '2017-07-02 07:14:48');
INSERT INTO `oa_position` VALUES ('44', '法律事务', '法务', '2', '3', '2017-07-02 07:15:00', '2017-07-02 07:15:00');
INSERT INTO `oa_position` VALUES ('45', '行政保卫', '行政保卫', '2', '3', '2017-07-02 07:15:15', '2017-07-02 07:15:15');
INSERT INTO `oa_position` VALUES ('46', '合同归档', '合同归档', '2', '3', '2017-07-02 07:15:26', '2017-07-02 07:15:25');
INSERT INTO `oa_position` VALUES ('47', '财务管理', '财务管理', '2', '3', '2017-07-02 07:15:37', '2017-07-02 07:15:37');
INSERT INTO `oa_position` VALUES ('48', '金融融资', '金融融资', '2', '3', '2017-07-02 07:15:45', '2017-07-02 07:15:45');
INSERT INTO `oa_position` VALUES ('49', '岗位经理', '岗位经理', '2', '3', '2017-07-02 07:16:14', '2017-07-02 07:16:14');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_project
-- ----------------------------
INSERT INTO `oa_project` VALUES ('1', '一片区', '1', '2017-07-01 21:05:09', '2017-07-01 21:05:08');
INSERT INTO `oa_project` VALUES ('2', '四片区', '1', '2017-07-02 06:49:04', '2017-07-02 06:49:04');
INSERT INTO `oa_project` VALUES ('3', '十片区', '1', '2017-07-02 06:49:13', '2017-07-02 06:49:13');
INSERT INTO `oa_project` VALUES ('4', '十一片区', '1', '2017-07-02 06:49:25', '2017-07-02 06:49:24');
INSERT INTO `oa_project` VALUES ('5', '十三片区', '1', '2017-07-02 06:49:33', '2017-07-02 06:49:32');
INSERT INTO `oa_project` VALUES ('6', '1-3状元城', '2', '2017-07-02 06:50:02', '2017-07-02 06:50:01');
INSERT INTO `oa_project` VALUES ('7', '2-5蝶恋新园', '2', '2017-07-02 06:50:29', '2017-07-02 06:50:29');
INSERT INTO `oa_project` VALUES ('8', '2-6蝶恋兴园', '2', '2017-07-02 06:50:41', '2017-07-02 06:50:40');
INSERT INTO `oa_project` VALUES ('9', '2-7蝶恋旺园', '2', '2017-07-02 06:50:53', '2017-07-02 06:50:53');
INSERT INTO `oa_project` VALUES ('10', '4-1福心家园', '2', '2017-07-02 06:51:06', '2017-07-02 06:51:06');
INSERT INTO `oa_project` VALUES ('11', '7-3金玉三园', '2', '2017-07-02 06:51:17', '2017-07-02 06:51:16');
INSERT INTO `oa_project` VALUES ('12', '7-4金玉四园', '2', '2017-07-02 06:51:26', '2017-07-02 06:51:25');
INSERT INTO `oa_project` VALUES ('13', '7-5金玉五园', '2', '2017-07-02 06:51:33', '2017-07-02 06:51:33');

-- ----------------------------
-- Table structure for oa_provider_directory
-- ----------------------------
DROP TABLE IF EXISTS `oa_provider_directory`;
CREATE TABLE `oa_provider_directory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '供方名称',
  `type` tinyint(4) NOT NULL COMMENT '供应品类',
  `content` varchar(128) DEFAULT NULL COMMENT '内容',
  `linkman` varchar(32) NOT NULL COMMENT '联系人',
  `phone` varchar(11) NOT NULL COMMENT '联系电话',
  `address` varchar(128) NOT NULL COMMENT '地址',
  `postcode` varchar(16) NOT NULL COMMENT '邮编',
  `assess_table` varchar(128) DEFAULT NULL COMMENT '考核评审表',
  `ability_table` varchar(128) DEFAULT NULL COMMENT '能力评审表',
  `provide_table` varchar(128) DEFAULT NULL COMMENT '供方评价表',
  `remark` varchar(64) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_provider_directory
-- ----------------------------
INSERT INTO `oa_provider_directory` VALUES ('2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2017-07-04 17:14:09', '2017-07-04 17:14:09');
INSERT INTO `oa_provider_directory` VALUES ('3', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2017-07-04 17:14:23', '2017-07-04 17:14:22');

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
INSERT INTO `oa_section` VALUES ('1', 'A区', '2017-07-01 19:22:31', '2017-07-01 19:22:31');
INSERT INTO `oa_section` VALUES ('2', 'B区', '2017-07-01 19:22:34', '2017-07-01 19:22:34');
INSERT INTO `oa_section` VALUES ('3', 'C区', '2017-07-01 19:22:38', '2017-07-01 19:22:37');

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
INSERT INTO `oa_user` VALUES ('1', '123456', '123456', '1,2', '3,4,5,6', '1', '1', '1', '', null, '2017-06-22 17:25:04', '2017-07-04 20:51:02');
INSERT INTO `oa_user` VALUES ('3', '222', '123456', '1,2', '1', '2', '2', '2', '', null, '2017-07-02 11:22:02', '2017-07-04 20:51:05');

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
