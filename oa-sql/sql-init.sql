
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
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` int(11) NOT NULL COMMENT '公司',
  `area_land_id` int(11) NOT NULL COMMENT '片区/地块名称',
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_ledger_administrative
-- ----------------------------
INSERT INTO `oa_ledger_administrative` VALUES ('1', '1', '1', '1', '1', '1', '1.00', '11', '1', '2017-07-08 00:00:00', '1', '1', '1.00', '1', '1', '1', '1', '1', '2017-07-08 10:42:47', '2017-07-08 10:42:46');

-- ----------------------------
-- Table structure for oa_ledger_contract
-- ----------------------------
DROP TABLE IF EXISTS `oa_ledger_contract`;
CREATE TABLE `oa_ledger_contract` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contract_file` varchar(128) NOT NULL COMMENT '合同文件上传',
  `contract_state` smallint(6) NOT NULL COMMENT '合同状态',
  `company` smallint(6) NOT NULL COMMENT '公司；置地/置业',
  `area_land_id` int(11) NOT NULL COMMENT '片区/地块ID',
  `income_type` smallint(6) NOT NULL COMMENT '1：收入，2：支出',
  `develop_type` smallint(6) NOT NULL COMMENT '1： 开发类，2：非开发类',
  `subject_id` int(11) NOT NULL COMMENT '成本科目',
  `contract_name` varchar(64) NOT NULL COMMENT '合同名称',
  `contract_serial` varchar(64) NOT NULL COMMENT '合同编号',
  `contract_content` varchar(128) DEFAULT NULL COMMENT '合同内容',
  `contract_amount` decimal(20,2) NOT NULL COMMENT '合同金额',
  `contract_amount_state` varchar(32) DEFAULT NULL COMMENT '合同金额状态',
  `contract_pay_condition` varchar(64) DEFAULT NULL COMMENT '合同付款条件',
  `signatory` varchar(64) DEFAULT NULL COMMENT '合同签约方',
  `sign_time` datetime NOT NULL COMMENT '合同签订时间',
  `timelimit` varchar(64) NOT NULL COMMENT '合同工期',
  `linkman` varchar(32) NOT NULL COMMENT '联系人',
  `phone` varchar(16) NOT NULL COMMENT '联系人电话',
  `bid_type` smallint(6) NOT NULL COMMENT '招标类型',
  `relate_approve_file` varchar(128) DEFAULT NULL COMMENT '相关审批',
  `solution_file` varchar(128) DEFAULT NULL COMMENT '方案',
  `budget_approve_file` varchar(128) DEFAULT NULL COMMENT '预收审批',
  `record` varchar(64) DEFAULT NULL COMMENT '档案',
  `relate_department` varchar(64) DEFAULT NULL COMMENT '相关部门',
  `finance_register` varchar(64) DEFAULT NULL COMMENT '财务登记',
  `operate_register` varchar(255) DEFAULT NULL COMMENT '经营存档',
  `performance_amount` decimal(20,2) DEFAULT NULL COMMENT '履约金额',
  `settle_amount` decimal(20,2) DEFAULT NULL COMMENT '结算总金额',
  `premium_amount` decimal(20,2) DEFAULT NULL COMMENT '保修金总金额',
  `performance_evaluate` varchar(16) DEFAULT NULL COMMENT '履约评价得分',
  `paid_amount` decimal(20,2) DEFAULT NULL COMMENT '累计付款金额',
  `paid_percent` varchar(16) DEFAULT NULL COMMENT '付款比例',
  `department_id` bigint(20) NOT NULL COMMENT '发起部门',
  `user_id` bigint(20) NOT NULL COMMENT '发起人',
  `file_box_id` varchar(64) NOT NULL COMMENT '档案合编号',
  `file_id` varchar(64) NOT NULL COMMENT '档案编号',
  `remark` varchar(64) DEFAULT NULL COMMENT '其他',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_ledger_contract
-- ----------------------------
INSERT INTO `oa_ledger_contract` VALUES ('1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1.00', '1', '1', '1', '2017-07-18 00:00:00', '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1.00', '1.00', '1.00', '1', '1.00', '1', '3', '1', '1', '1', '1', '2017-07-08 14:28:32', '2017-07-08 14:28:32');

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
INSERT INTO `oa_ledger_zhidi_cost` VALUES ('2', '2017', '1', '3', '1', null, '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '1.00', '', '2017-07-06 10:30:12', '2017-07-06 10:30:12');
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
-- Table structure for oa_news
-- ----------------------------
DROP TABLE IF EXISTS `oa_news`;
CREATE TABLE `oa_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `create_id` int(11) NOT NULL COMMENT '创建者',
  `title` varchar(150) DEFAULT NULL COMMENT '新闻标题',
  `sumary` varchar(500) DEFAULT NULL COMMENT '摘要',
  `content` text COMMENT '新闻正文',
  `main_img_url` varchar(100) DEFAULT NULL COMMENT '新闻图片',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标识，1表示已删除，0表示未删除',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间，自动填充，程序不需要处理',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='公司新闻';

-- ----------------------------
-- Records of oa_news
-- ----------------------------
INSERT INTO `oa_news` VALUES ('1', '1', '我的测试权限32323', '', '<p>基本都有要</p><p>大概需要</p><p>大概需要地一股股上大要不是你彩虹城</p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/08306380-149c-498e-ae8a-ee400077c8b6.jpg', '1', '2016-11-01 11:03:53', '2016-11-01 15:43:30');
INSERT INTO `oa_news` VALUES ('2', '1', '人在互联网中的行为：社交，衣食住行', '一.什么是数据？我们将它分为线上与线下两类来具体分析下：线上，互联网数据互联网信息：网页。', '<p>一.&nbsp;什么是数据？</p><p>我们将它分为线上与线下两类来具体分析下：</p><ul><li></li><li></li><li>线上，互联网数据互联网信息：网页。电子商务。 人在互联网中的行为：社交，衣食住行，健康。物联网。</li><li></li><li></li><li>线下，现实社会数据信息：线下每天依然在产生大量的信息。线下商业。实物：包括机器，桌子椅子等。人：线下的社交，衣食住行，健康医疗。 生物数据：(除人外的活体生物，宠物等)</li><li></li><li></li></ul><p>哪些数据最重要？</p><p>互联网时代把线上数据发挥到了极致，直接推动了BAT三大巨头的诞生，同时也把马云、马化腾、李彦宏带到了首富的位置。</p><ul><li></li><li></li><li>百度：搜索（信息，连接人与信息，重金O2O，强行连接人与服务，现在搞AI）</li><li></li><li></li><li>阿里巴巴：电子商务(商业)</li><li></li><li></li><li>腾讯：社交(人)</li><li></li><li></li></ul><h2>二. 哪些公司是大数据公司?</h2><p>这个问题不好答，换个方向就好答了：哪些公司有大数据人才？连大数据的人都没有，别自称大数据公司了，好吗？</p><h3>1. 互联网巨头</h3><p>互联网巨头的起家背靠着电商、社交、信息、游戏和金融等互联网时代的巨大概念。</p><p>腾讯的数据主要来源于QQ、微信和腾讯游戏。拥有的用户关系数据，社交数据因为私密无法公开使用。利用数据改进产品，数据驱动广告、电商、资讯、社交等一系列腾讯产品的改进。腾讯的未来在于微信，微信现在已经不再把精力放在IM通讯上了，而是连接一切。未来微信很有可能会成为整个互联网的基础服务最大的入口。那时候的微信也就掌握了电商、社交、信息、游戏和金融的一切。</p><p>阿里巴巴的淘宝，天猫，阿里巴巴，支付宝。商品交易，支付数据是商业的基础设施。支付宝的交易数据使得阿里长期在互金领域占据霸主地位。电商超越零售不是现在，就是不久的将来。所以阿里目前拥有的网商数据，也就等于掌握了中国部分的商业占比。</p><p>百度的百度搜索。百度对于信息的利用来源于用户与商家的需求，用户侧服务互联网网民的搜索需求，商家侧匹配广告主与网民的广告业务。另外，百度还重金押宝AI，AI若能成功将革新社会的基础服务，比如无人驾驶。所以个人觉得百度仍然有机会回到第一的王座。</p><p>凭借着互联网时代庞大的数据体量与高质量的数据，可以说，BAT拥有着当今最优秀的数据人才。</p><h3>2. 行业巨头</h3><p>行业巨头个人分为两类：</p><ul><li></li><li></li><li>第一类是IT巨头，例如华为，小米，新美大，浪潮，中兴，曙光等公司。他们凭借着在IT领域建立了技术壁垒或者服务能力，成为了各自领域的佼佼者。</li><li></li><li></li><li>第二类是传统行业巨头，包含各行各业，金融，零售，能源，机械，酒等垂直领域。比如你听说过茅台酒公司的大数据平台吗？</li><li></li><li></li></ul><p>由于上述行业巨头的垂直领域数据的垄断性地位与数据体量的变大，希冀能依靠数据产生价值 。凭借着两点，行业巨头也拥有着很多高质量的数据人才。</p><p>但数据不是他们的第一驱动力。他们有更重要的主营业务。</p><h3>3. 新时期的大数据公司</h3><p>新时期大数据公司个人分为基础服务平台、商业数据分析两大类。</p><p>基础服务平台提供了数据平台基础服务，比如大数据存储平台，计算平台，BI平台，数据交易平台。</p><p>商业数据分析型大数据公司提供了复杂的端到端数据服务，包括数据采集、清洗、分析，帮助没有数据分析与整合能力的企业理解数据，认识数据，并让自身数据发挥效用。</p><p>接下来,我们重点讨论的是如何看待这些新时期的大数据公司。</p><h2>三. 为什么突然冒出那么多新时期的大数据公司？</h2><p>对数据的需求自古有之。乔家大院里面，东家乔致庸看账本可不就是数据应用吗？</p><p>那为什么在之前少有专业的大数据公司，在最近几年才爆发起来？2012或者2013年被称之为大数据元年。</p><p>新时期的大数据公司大幅增加源自于有两类数据需求的集中爆发：</p><h3>1. 线下的数据机会</h3><p>在看到巨头们由于占据了互联网端的数据后，很多人发现了线下的数据机会。梦想着成为巨头的他们，踏上了继续强力推进线下数据线上化的道路。</p><h3>2. 企业对于数据化决策的需求</h3><p>抽象来看，企业的发展过程很大程度上经历了纸质化1.0时代，信息化2.0时代，数据化3.0时代。当快糙猛的高速发展期过去，企业的发展同样需要数据驱动，数据决策。但是，很多企业信息化过程都经历了阵痛难产，现在等待它们的是数据时代的到来。对于他们来说，数据人才缺口是最大的问题，于是他们需要借助外力。在信息化时代，这叫找外包。不好意思，数据时代，一样需要外包。（什么？原来我们这些data scientist在做外包？）</p><p>于是，一大波大数据公司出现了。</p><h2>四. 大数据公司的估值并不高，都比不上O2O？</h2><p>在消费完大数据的概念后，其实现在媒体跟投资圈更多的在消费AI了。做系统的开始说自己做大数据，做数据的开始说自己在干AI。</p><p>估值除了看公司收入，利润，用户，概念，还有就是VC的人傻钱多了。</p><p>之前爱分析有一篇文章，大致列举了中国未上市大数据公司50强，没有一家估值超过10亿美金，一家独角兽企业都没有。那是什么原因导致的低估值?</p><h3>1. 线下数据线上化，硬骨头太难啃</h3><p>线下的数据还有哪些没有被线上化的？</p><p>人的线下社交，线下交易，实体零售，线下营销，线下课堂教学等一系列线下场景。可以说，线下是社会的组成，特别是很多场景严重依赖线下，比如学习，服务化消费。因此线下数据的收集同样很有利。</p><p>举一个小例子，线下课堂教学中，如果能实时获取每一个同学对于知识接受度，掌握每一个人的学习，可以有效的帮助每一位同学更好的学习，从而避免误入歧途。</p><p>但线下数据收集难度太大，成本高，技术仍不完善，所以从数据收集一开始就遇到了困难，我总结为硬骨头。</p><p>另外一个是数据孤岛效应严重，实质上数据如果无法达到大、全、价值，很难产生协同效应。</p><p>但未来肯定有办法。通过AI的发展，通过音视频的捕捉，线下数据线上化只是时间问题。</p><h3>2. 大数据公司业务难以规模化</h3><p>在一系列TO B的大数据公司中，商业的数据分析属于外包型数据分析业务，外包的一个重要特点是堆人头，很难产生规模化经济效益，赚取超额利润。</p><p>并且，很多大数据公司急躁且跟风，数据外包本质上是外包团队的困境，为什么很多公司现在选择自建技术团队，因为外包是不会为企业的长期发展而考虑，这是经济学或者社会学领域研究的问题。很多时候大数据公司接了单，却没有能服务好，根本不能为企业带来实际的效益，最终企业反而劳心劳力无所得。</p><p>其次，中小企业引入大数据分析数据是可以帮助决策，提升企业经营效率的。但是企业自身进行大数据投入的意愿是多少？意愿 = 收益 – 成本。如果收益无法cover成本，很多企业是没有动力做这件事情的。其实这也就是很多中小企业的困境。</p><p>当然，data to people是历史潮流，未来一定有越来越多的数据服务公司出现，也有越来越多企业需要数据服务。</p><h3>3. 数据隐私</h3><p>数据有其独特性，尤其是隐私，企业对于数据的思考尤为谨慎。</p><p>互联网爬虫与反爬技术的兴起，也是源于数据隐私，电商，旅游等网站都在防止竞争对手爬取自身的数据下足了苦工。互联网发展至今，特别是数据资产这一定义深入人心，大家对数据更为谨慎，也就导致了数据共享困难。</p><p>这也是我觉得纯粹靠整合某一垂直领域，利用数据来达到垄断某一领域的困境。</p><h3>4. 数据技术平台</h3><p>这一类公司其实已经有独角兽的端倪了，包含大数据基础平台以及数据云平台等。包括Hadoop领域的三架马车，都已经进入了十亿美金的独角兽阶段。</p><p>以上，是我觉得大数据公司由于数据采集，数据隐私，数据孤岛所导致的一系列难以做大做强的难题。</p><p>下一次我们来分析下那大数据企业50强，技术人到底去哪些公司才不被坑！</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/a301b258-7c13-4885-9f8c-0b1614aa90d9.jpg', '1', '2016-11-01 11:04:56', '2016-11-18 15:39:57');
INSERT INTO `oa_news` VALUES ('3', '1', 'iOS-VRView 探索', '今天回家了，但总想写点什么度过一下闲暇的时光。', '<p>今天回家了，但总想写点什么度过一下闲暇的时光。前晚看了苹果发布会，觉得没什么稀奇，幸运的是，在Facebook上看到直播一个小型开发会议（Swift Meetup），谈论的是Google VR-SDK 的开发。</p><h1>大东对 iOS-VR 的看法</h1><p>水果目前并没有开发支持VR的框架，而且像今年<a href=\"https://www.oculus.com/\" target=\"_blank\">Oculus</a>只支持三星产品，意味着它们开发的平台iOS不能用呀。这不是很尴尬吗。</p><blockquote>Oculus powers the Samsung Gear VR, the most widely distributed VR headset in the world. Supported by Samsung’s global distribution and marketing efforts, Gear VR is compatible with the tens of millions of Samsung GALAXY flagship smartphones, including S7, S7 edge, S6, S6 edge, S6 edge +, and Note 5.</blockquote><p>水果的开发者文档里面也没有一个框架是直接用来做VR的，只能通过Core-Motion来达到那种效果。但是自己开发又有点麻烦，可敬的Google开发团队给iOS带来Google-VRSDK，省去了很多麻烦。</p><p>或许水果会趁人意料地发布一款吊炸的VR设备让你恨不得割肾也想买，或许只是开发一个框架来支持VR眼镜。虽然我觉得两者都会有????，让我们拭目以待。</p><h1>Google VRView</h1><p>所谓的Google VRView指的是能够看全视角的影片或相片，实现相对比较简单。目前国内外也有很多类似的应用支持这个功能。</p><blockquote>VR view allows you to embed 360 degree VR media into websites on desktop and mobile, and native apps on Android and iOS. This technology is designed to enable developers of traditional apps to enhance the apps with immersive content. For example, VR view makes it easy for a travel app to provide viewers with an underwater scuba diving tour as they plan a vacation or for a home builder to take prospective buyers on a virtual walkthrough before the home is built.</blockquote><pre>pod&nbsp;\'GVRSDK\'&nbsp;//要用到cocoapods&nbsp;讲一个笑话：我是iOS开发者，我不知道cocoapods是什么.......</pre><p>最好的学习方式还是看<a href=\"https://developers.google.com/vr/ios/reference/\" target=\"_blank\">官方文档</a>。</p><p>看文档发现，Google VRView 的包含几种类型：GVRCardboardView，GVRWidgetView（其中包含了两个子类GVRPanoramaView，GVRVideoView）</p><blockquote>GVRCardboardView&nbsp;&nbsp;Defines a view responsible for rendering graphics in VR modeGVRWidgetView &nbsp;&nbsp;Defines a base class for all widget views, that encapsulates common functionalityGVRPanoramaView&nbsp;&nbsp; &nbsp;Defines a view that can load and display 360-degree panoramic photosGGVRVideoView &nbsp;&nbsp;Defines a player view that renders a 360 video using OpenGL</blockquote><p>GVRCardboardView 是用来开发某些自定义3D场景的，用到OpenGL，比较复杂，当然，SceneKit就可以结合它来进行开发的。本次介绍的是GVRPanoramaView和GVRVideoView，先探索它们的使用。</p><p>要实现一个全景照片的View，可以直接使用GVRPanoramaView 类。</p><blockquote>先看看继承关系：GVRPanoramaView Inherits(继承) GVRWidgetView Inherits(继承) UIView</blockquote><p>step1：直接在storyboard拖拽一个UIView并连接到Controller中</p><p><img src=\"http://cc.cocimg.com/api/uploads/20161101/1477965029424622.png\" alt=\"2751003-65554e23c12a7445.png\"></p><pre>@IBOutlet&nbsp;weak&nbsp;var&nbsp;panoView:&nbsp;GVRPanoramaView!\npanoView.enableFullscreenButton&nbsp;=&nbsp;truepanoView.enableCardboardButton&nbsp;=&nbsp;truepanoView.enableTouchTracking&nbsp;=&nbsp;truepanoView.load(UIImage(named:&nbsp;\"你的全景照片\"),&nbsp;of:&nbsp;.stereoOverUnder)</pre><table><thead><tr><th>Property</th><th>介绍</th></tr></thead><tbody><tr><td><gvrwidgetviewdelegate>delegate</gvrwidgetviewdelegate></td><td>The delegate that is called when the widget view is loaded.</td></tr><tr><td>enableFullscreenButton</td><td>是否添加fullScreen 的按钮</td></tr><tr><td>enableCardboardButton</td><td>是否添加 cardboard 的按钮</td></tr><tr><td>enableTouchTracking</td><td>是否可以手势拖动图片</td></tr></tbody></table><p><img src=\"http://cc.cocimg.com/api/uploads/20161101/1477965052750113.png\" alt=\"2751003-ebf536633ff3b973.png\"></p><p>就是图片下方一栏的自定义功能</p><p>看文档的时候发现还有一个 displayMode</p><blockquote>displayMode: &nbsp;Controls the current GVRWidgetDisplayMode of the widget view.Changing the value of this property is similar to pressing one of the fullscreen, cardboard or back UI buttons.</blockquote><p>这个功能告诉你可以自定义按键实现一个全屏幕或者VR屏幕的转换。这也让自己能够自定义界面布局。非常棒</p><p>接下来谈谈Delegate</p><pre>panoView.delegate&nbsp;=&nbsp;self</pre><pre>extension&nbsp;VRViewController:&nbsp;GVRWidgetViewDelegate&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;func&nbsp;widgetViewDidTap(widgetView:&nbsp;GVRWidgetView!)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//Called&nbsp;when&nbsp;the&nbsp;user&nbsp;taps&nbsp;the&nbsp;widget&nbsp;view.\n&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;func&nbsp;widgetView(widgetView:&nbsp;GVRWidgetView!,&nbsp;didLoadContent&nbsp;content:&nbsp;AnyObject!)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//Called&nbsp;when&nbsp;the&nbsp;widget&nbsp;view\'s&nbsp;display&nbsp;mode&nbsp;changes.\n&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;func&nbsp;widgetView(widgetView:&nbsp;GVRWidgetView!,&nbsp;didChangeDisplayMode&nbsp;displayMode:&nbsp;GVRWidgetDisplayMode)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//Called&nbsp;when&nbsp;the&nbsp;content&nbsp;is&nbsp;successfully&nbsp;loaded.&nbsp;\n&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;&nbsp;&nbsp;func&nbsp;widgetView(widgetView:&nbsp;GVRWidgetView!,&nbsp;didFailToLoadContent&nbsp;content:&nbsp;AnyObject!,&nbsp;withErrorMessage&nbsp;errorMessage:&nbsp;String!)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//Called&nbsp;when&nbsp;there&nbsp;is&nbsp;an&nbsp;error&nbsp;loading&nbsp;content&nbsp;in&nbsp;the&nbsp;widget&nbsp;view.\n&nbsp;&nbsp;&nbsp;&nbsp;}\n}</pre><p>假设我们希望在全景照片下通过点击屏幕然后切换下一个照片，这里就可以通过调用widgetViewDidTap的方法来实现</p><pre>func&nbsp;widgetViewDidTap(widgetView:&nbsp;GVRWidgetView!)&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//或许你可以放在一个数组里面，进行循环切换\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;panoView?.load(UIImage(named:&nbsp;\"另一张照片\"),&nbsp;of:&nbsp;GVRPanoramaImageType.mono)\n&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p>这里，GVRPanoramaImageType是要看你的图片格式，如果你的图片是一张相片形式的，就是mono，有的照片是同一张照片上下叠加形式的就是stereoOverUnder.</p><p><img src=\"http://cc.cocimg.com/api/uploads/20161101/1477965100279973.png\" alt=\"2751003-ecf72fb796c09c77.png\"></p><p>前面提到</p>&nbsp;<code>GVRWidgetDisplayMode</code><p>它含一下几种类型</p><br><table><thead><tr><th>Type</th><th>介绍</th></tr></thead><tbody><tr><td>.embedded</td><td>就像上面示例图一样呈现在你自定义View中</td></tr><tr><td>.fullscreen</td><td>全屏幕形式展示</td></tr><tr><td>.fullscreenVR</td><td>有两个显示屏幕形式</td></tr></tbody></table><p>假设一种情景是你在自己的自定义View中不想在点击照片后切换图片，这时候就可以用GVRWidgetDisplayMode来判断.</p><p>当然还有展示全景形式的Video，这个跟全景照片类似，就不展示了。</p><p>强烈推荐Ray的一篇文章<a href=\"https://www.raywenderlich.com/136692/introduction-google-cardboard-ios\" target=\"_blank\">Introduction to Google Cardboard for iOS</a>，里面对图片和影片都有完整的介绍。也可以<a href=\"https://koenig-media.raywenderlich.com/uploads/2016/08/Vacation_360_final.zip\" target=\"_blank\">下载</a>它们的Demo来试一试。</p><br><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/790c4e6d-3f5d-4353-8c5b-5c586d46648e.jpg', '1', '2016-11-01 11:44:39', '2016-11-18 15:39:55');
INSERT INTO `oa_news` VALUES ('4', '1', '大数据，大数据公司，低估值333', '一.什么是数据？我们将它分为线上与线下两类来具体分析下：线上，互联网数据互联网信息：网页。电子商务。人在互联网中的行为：社交，衣食住行，健康。物联网。线下，现实社会数据信息：线下每天依然在产生大量的信', '<p>一.&nbsp;什么是数据？</p><p>我们将它分为线上与线下两类来具体分析下：</p><ul><li></li><li></li><li>线上，互联网数据互联网信息：网页。电子商务。 人在互联网中的行为：社交，衣食住行，健康。物联网。</li><li></li><li></li><li>线下，现实社会数据信息：线下每天依然在产生大量的信息。线下商业。实物：包括机器，桌子椅子等。人：线下的社交，衣食住行，健康医疗。 生物数据：(除人外的活体生物，宠物等)</li><li>dasd</li><li></li></ul><p>哪些数据最重要？</p><p>互联网时代把线上数据发挥到了极致，直接推动了BAT三大巨头的诞生，同时也把马云、马化腾、李彦宏带到了首富的位置。</p><ul><li></li><li></li><li>百度：搜索（信息，连接人与信息，重金O2O，强行连接人与服务，现在搞AI）</li><li></li><li></li><li>阿里巴巴：电子商务(商业)</li><li></li><li></li><li>腾讯：社交(人)</li><li></li><li></li></ul><h2>二. 哪些公司是大数据公司?</h2><p>这个问题不好答，换个方向就好答了：哪些公司有大数据人才？连大数据的人都没有，别自称大数据公司了，好吗？</p><h3>1. 互联网巨头</h3><p>互联网巨头的起家背靠着电商、社交、信息、游戏和金融等互联网时代的巨大概念。</p><p>腾讯的数据主要来源于QQ、微信和腾讯游戏。拥有的用户关系数据，社交数据因为私密无法公开使用。利用数据改进产品，数据驱动广告、电商、资讯、社交等一系列腾讯产品的改进。腾讯的未来在于微信，微信现在已经不再把精力放在IM通讯上了，而是连接一切。未来微信很有可能会成为整个互联网的基础服务最大的入口。那时候的微信也就掌握了电商、社交、信息、游戏和金融的一切。</p><p>阿里巴巴的淘宝，天猫，阿里巴巴，支付宝。商品交易，支付数据是商业的基础设施。支付宝的交易数据使得阿里长期在互金领域占据霸主地位。电商超越零售不是现在，就是不久的将来。所以阿里目前拥有的网商数据，也就等于掌握了中国部分的商业占比。</p><p>百度的百度搜索。百度对于信息的利用来源于用户与商家的需求，用户侧服务互联网网民的搜索需求，商家侧匹配广告主与网民的广告业务。另外，百度还重金押宝AI，AI若能成功将革新社会的基础服务，比如无人驾驶。所以个人觉得百度仍然有机会回到第一的王座。</p><p>凭借着互联网时代庞大的数据体量与高质量的数据，可以说，BAT拥有着当今最优秀的数据人才。</p><h3>2. 行业巨头</h3><p>行业巨头个人分为两类：</p><ul><li></li><li></li><li>第一类是IT巨头，例如华为，小米，新美大，浪潮，中兴，曙光等公司。他们凭借着在IT领域建立了技术壁垒或者服务能力，成为了各自领域的佼佼者。</li><li></li><li></li><li>第二类是传统行业巨头，包含各行各业，金融，零售，能源，机械，酒等垂直领域。比如你听说过茅台酒公司的大数据平台吗？</li><li></li><li></li></ul><p>由于上述行业巨头的垂直领域数据的垄断性地位与数据体量的变大，希冀能依靠数据产生价值 。凭借着两点，行业巨头也拥有着很多高质量的数据人才。</p><p>但数据不是他们的第一驱动力。他们有更重要的主营业务。</p><h3>3. 新时期的大数据公司</h3><p>新时期大数据公司个人分为基础服务平台、商业数据分析两大类。</p><p>基础服务平台提供了数据平台基础服务，比如大数据存储平台，计算平台，BI平台，数据交易平台。</p><p>商业数据分析型大数据公司提供了复杂的端到端数据服务，包括数据采集、清洗、分析，帮助没有数据分析与整合能力的企业理解数据，认识数据，并让自身数据发挥效用。</p><p>接下来,我们重点讨论的是如何看待这些新时期的大数据公司。</p><h2>三. 为什么突然冒出那么多新时期的大数据公司？</h2><p>对数据的需求自古有之。乔家大院里面，东家乔致庸看账本可不就是数据应用吗？</p><p>那为什么在之前少有专业的大数据公司，在最近几年才爆发起来？2012或者2013年被称之为大数据元年。</p><p>新时期的大数据公司大幅增加源自于有两类数据需求的集中爆发：</p><h3>1. 线下的数据机会</h3><p>在看到巨头们由于占据了互联网端的数据后，很多人发现了线下的数据机会。梦想着成为巨头的他们，踏上了继续强力推进线下数据线上化的道路。</p><h3>2. 企业对于数据化决策的需求</h3><p>抽象来看，企业的发展过程很大程度上经历了纸质化1.0时代，信息化2.0时代，数据化3.0时代。当快糙猛的高速发展期过去，企业的发展同样需要数据驱动，数据决策。但是，很多企业信息化过程都经历了阵痛难产，现在等待它们的是数据时代的到来。对于他们来说，数据人才缺口是最大的问题，于是他们需要借助外力。在信息化时代，这叫找外包。不好意思，数据时代，一样需要外包。（什么？原来我们这些data scientist在做外包？）</p><p>于是，一大波大数据公司出现了。</p><h2>四. 大数据公司的估值并不高，都比不上O2O？</h2><p>在消费完大数据的概念后，其实现在媒体跟投资圈更多的在消费AI了。做系统的开始说自己做大数据，做数据的开始说自己在干AI。</p><p>估值除了看公司收入，利润，用户，概念，还有就是VC的人傻钱多了。</p><p>之前爱分析有一篇文章，大致列举了中国未上市大数据公司50强，没有一家估值超过10亿美金，一家独角兽企业都没有。那是什么原因导致的低估值?</p><h3>1. 线下数据线上化，硬骨头太难啃</h3><p>线下的数据还有哪些没有被线上化的？</p><p>人的线下社交，线下交易，实体零售，线下营销，线下课堂教学等一系列线下场景。可以说，线下是社会的组成，特别是很多场景严重依赖线下，比如学习，服务化消费。因此线下数据的收集同样很有利。</p><p>举一个小例子，线下课堂教学中，如果能实时获取每一个同学对于知识接受度，掌握每一个人的学习，可以有效的帮助每一位同学更好的学习，从而避免误入歧途。</p><p>但线下数据收集难度太大，成本高，技术仍不完善，所以从数据收集一开始就遇到了困难，我总结为硬骨头。</p><p>另外一个是数据孤岛效应严重，实质上数据如果无法达到大、全、价值，很难产生协同效应。</p><p>但未来肯定有办法。通过AI的发展，通过音视频的捕捉，线下数据线上化只是时间问题。</p><h3>2. 大数据公司业务难以规模化</h3><p>在一系列TO B的大数据公司中，商业的数据分析属于外包型数据分析业务，外包的一个重要特点是堆人头，很难产生规模化经济效益，赚取超额利润。</p><p>并且，很多大数据公司急躁且跟风，数据外包本质上是外包团队的困境，为什么很多公司现在选择自建技术团队，因为外包是不会为企业的长期发展而考虑，这是经济学或者社会学领域研究的问题。很多时候大数据公司接了单，却没有能服务好，根本不能为企业带来实际的效益，最终企业反而劳心劳力无所得。</p><p>其次，中小企业引入大数据分析数据是可以帮助决策，提升企业经营效率的。但是企业自身进行大数据投入的意愿是多少？意愿 = 收益 – 成本。如果收益无法cover成本，很多企业是没有动力做这件事情的。其实这也就是很多中小企业的困境。</p><p>当然，data to people是历史潮流，未来一定有越来越多的数据服务公司出现，也有越来越多企业需要数据服务。</p><h3>3. 数据隐私</h3><p>数据有其独特性，尤其是隐私，企业对于数据的思考尤为谨慎。</p><p>互联网爬虫与反爬技术的兴起，也是源于数据隐私，电商，旅游等网站都在防止竞争对手爬取自身的数据下足了苦工。互联网发展至今，特别是数据资产这一定义深入人心，大家对数据更为谨慎，也就导致了数据共享困难。</p><p>这也是我觉得纯粹靠整合某一垂直领域，利用数据来达到垄断某一领域的困境。</p><h3>4. 数据技术平台</h3><p>这一类公司其实已经有独角兽的端倪了，包含大数据基础平台以及数据云平台等。包括Hadoop领域的三架马车，都已经进入了十亿美金的独角兽阶段。</p><p>以上，是我觉得大数据公司由于数据采集，数据隐私，数据孤岛所导致的一系列难以做大做强的难题。</p><p>下一次我们来分析下那大数据企业50强，技术人到底去哪些公司才不被坑！</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/71e0de57-c7a5-4e36-8525-8aaf7312c927.jpeg', '1', '2016-11-01 15:19:53', '2016-11-18 15:39:53');
INSERT INTO `oa_news` VALUES ('5', '1', 'dsf', '', '<p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/8381fc9f-fd4e-4836-8747-436f867a422c.jpeg', '1', '2016-11-01 16:57:39', '2016-11-01 17:06:04');
INSERT INTO `oa_news` VALUES ('6', '1', '1dsffs', '', 'sdfdfds', '', '1', '2016-11-01 17:04:04', '2016-11-01 17:05:57');
INSERT INTO `oa_news` VALUES ('7', '1', '1ddd', '', 'sdfdsf', '', '1', '2016-11-01 17:05:13', '2016-11-01 17:06:00');
INSERT INTO `oa_news` VALUES ('8', '1', '百度副总裁李明远辞职 因涉私下巨额经济往来', '今日有百度内部信传出，百度副总裁李明远引咎辞职，因其与被收购公司有私下巨额经济往来。对此，百度公关部称此事是李明远个人原因的公司内部通报，公关部不予回应。百度今年4月13日的架构调整中将搜索业务群组（', '<p>今日有百度内部信传出，百度副总裁李明远引咎辞职，因其与被收购公司有私下巨额经济往来。对此，百度公关部称此事是李明远个人原因的公司内部通报，公关部不予回应。百度今年4月13日的架构调整中将搜索业务群组（SSG）、移动服务事业群组（MSG）组建为新的百度搜索公司，任命公司高级副总裁向海龙为百度搜索公司总裁，MSG总经理李明11111远123132123123113213213213213132向1111111海龙汇报。121321231231231231321</p><p><img src=\"http://cms-bucket.nosdn.127.net/6c14d69fdf4e40ebab03c9fff3953c9520161104203601.jpeg?imageView&thumbnail=550x0\" alt=\"http://cms-bucket.nosdn.127.net/6c14d69fdf4e40ebab03c9fff3953c9520161104203601.jpeg?imageView&amp;thumbnail=550x0\"></p><p>2004年9月，编导专业出身的李明远以实习生身份加入百度，成为贴吧首任产品经理。2007年成为百度电子商务事业部的总经理。三年后他出走UC担任产品副总裁，重新捡起了自己的老本行社区管理，负责UC浏览器内的SNS社区“UC天堂”。2011年底李明远重新回到百度，在移动云事业部实现了快速三级跳，三个月就从高级总监晋升到总经理，2013年7月，29岁的李明远成为了BAT最年轻的副总裁。</p><p><a target=\"_blank\" href=\"http://static.cnbetacdn.com/article/2016/1104/da414da63066fde.jpg\"><img src=\"http://static.cnbetacdn.com/thumb/article/2016/1104/da414da63066fde.jpg_600x600.jpg\"></a></p><p>[广告]活动入口:</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/aa8eac98-c5d1-4e6c-9434-9cddee2b63be.jpg', '1', '2016-11-04 19:40:19', '2016-11-18 15:39:52');
INSERT INTO `oa_news` VALUES ('9', '3', '民用', '民用爆炸物品行业发展规划（2016-2020年）“十三五”时期，面对国际国内经济发展复杂形势，民用爆炸物品行业（以下简称民爆行业）需要抓住机遇、迎接挑战、锐意进取，通过深化结构调整、转变发展方式、推进', '<p>&nbsp;</p><p>民用爆炸物品行业发展规划</p><p>（2016-2020年）</p><p>&nbsp;</p><p>“十三五”时期，面对国际国内经济发展复杂形势，民用爆炸物品行业（以下简称民爆行业）需要抓住机遇、迎接挑战、锐意进取，通过深化结构调整、转变发展方式、推进产业升级，实现行业的安全、健康、协调、可持续发展。依据《中华人民共和国国民经济和社会发展第十三个五年规划纲要》和《中国制造2025》战略部署，制定本规划。</p><h1>一、回顾与总结</h1><p>“十二五”期间，民爆行业积极应对国内外经济形势变化，全面完成各项工作任务，产品产业结构持续优化，安全、科技和信息化发展水平明显提升，改革取得新成效，行业自身发展和保障国民经济建设需求创历史最好水平。</p><h2>（一）取得的主要成绩</h2><p>1．经济发展质量稳步提升。2011至2015年生产总值、利润总额五年累计分别完成1595.2亿元、252.4亿元，与上一个五年相比分别增长53.3%、83.2%；工业炸药五年累计产销量分别为2037.4万吨、2065.4万吨，与上一个五年比分别增长38.7%、38.5%，其中，2013年工业炸药产销量分别为437万吨、439万吨，达到历史最高点，有力保障了国民经济建设需求；工业雷管产量连年下降，工业雷管和工业炸药消耗比由2010年的674发/吨下降到2015年的335发/吨，作业效率显著提高。进出口总额由2010年的3.41亿美元增长到2015年的4.97亿美元，年均增长8%。</p><p>2．产品结构持续优化。现场混装炸药在工业炸药中占比由2010年的14.82%增加到2015年的22.45%，胶状乳化炸药由2010年的48.27%增加到2015年的59.91%；袋装包装炸药在工业炸药中占比由2010年的11.41%增加到2015年的17.65%。导爆管雷管在工业雷管中占比由2010年的32.3%增加到2015年的54.15%，工业电雷管占比由2010年的65.82%下降到2015年的43.58%。</p><p>3．安全生产水平不断提高。建立健全国家、省、市、县四级管理机构，落实属地监管责任，形成了较为完善的安全监管体系；推进安全生产标准化建设，规范安全生产行为，提升了安全生产管理水平；推动技术改造，以连续化自动化生产工艺取代间断式生产工艺，累计完成394条生产线的升级改造，提高了生产线本质安全水平。与上一个五年相比，民爆行业发生安全生产事故由21起大幅下降到7起，死亡人数由71人减少至64人，重大及以上安全生产事故起数持平，较大及一般安全生产事故起数大幅减少。</p><p>4．科技创新能力显著增强。完成“乳化炸药组分与安全性研究”等一批基础科研工作，为民爆技术创新奠定了理论基础；研制成功新型高威力水胶炸药、新型数码电子雷管、环保型起爆药、超深穿透聚能射孔弹等一批新产品，有效满足了市场需求；研制应用乳化炸药静态乳化器、静态敏化器、雷管自动卡口机等一批本质安全性高的民爆专用生产设备，夯实了安全生产基础；推广应用工业炸药制药、装药、包装装箱工序和工业雷管起爆药的连续化、自动化生产方式，90%的包装炸药生产线实现了自动联控，65%的雷管装填生产线实现了人机隔离，有力提升了生产工艺水平。</p><p>5．信息化智能化建设初见成效。建设完成“民爆行业生产经营动态监控信息系统平台”，为形成较为完善的国家、省、市、县行业信息化管理体系打下了基础；生产企业均建立厂内总监控室和各生产线监控室，将危险岗位视频监控信息接入全国网络平台，接受监管部门远程监查；部分企业建立统一的内部信息化管理系统，实现了生产经营远程管理。民爆行业智能制造工作初见成效，《民爆行业安全生产少（无）人化专项工程实施方案》颁布实施，三个研究项目列入工信部智能制造专项计划；56家企业引进172台智能包装机器人应用于炸药包装人员相对密集的工艺环节；部分起爆具生产线采用自动加料、混合、注药等自动化生产方式。</p><p>6．标准体系建设与质量管理工作日益完善。建立完善了覆盖设计建设、安全生产、产品质量、工艺操作、设备管理、现场管理、安全评价等各个环节的民爆行业标准体系，现有标准总量228项,包括国家标准95项、行业标准133项，其中，2011至2015年制修订、颁布国家标准15项、行业标准32项。在质量管理方面，形成了定期抽检机制，优化监测手段和标准，对提升民爆物品质量水平发挥了重要作用。</p><p>7．重组整合、一体化服务发展不断深入。按照政府引导、企业自愿的原则，不断推进企业重组整合、投资并购海外企业，民爆行业产业集中度稳中有升。排名前15家生产企业生产总值在全行业占比由2010年的35.45%提高到2015年的50.72%。推进民爆行业生产、销售、爆破作业一体化服务发展，部分生产、销售企业积极开展并扩大爆破服务业务，民爆行业正在由单纯提供产品向提供一体化服务转变，生产、销售企业爆破服务收入规模由2010年的不足20亿元增加到2015年的77.1亿元，爆破服务成为新的经济增长点。</p><p>8．行政审批制度改革稳步推进。出台了《民用爆炸物品进出口管理办法》，将拥有民爆物品进出口资质的企业由2011年33家扩大到全部生产、销售企业，有助于积极开拓国际市场；将民爆安全生产许可下放至省级民爆行业主管部门，相应修订了《民用爆炸物品安全管理条例》、《民用爆炸物品安全生产许可实施办法》等法规，简化了行政许可程序，为企业提供更加便捷的服务；放开了民爆物品价格，结束了国家管制民爆物品价格的历史，调动了民爆企业参与市场竞争的积极性。</p><p>&nbsp;</p><h2>（二）存在的主要问题</h2><p>我国民爆行业发展在取得显著成绩的同时，也面临不少困难和问题。一是结构调整还不到位，产品结构不尽合理，现场混装生产方式和一体化服务发展缓慢，按照用户需求提供有效供给能力不足，产业集中度还有较大提升空间；二是科研投入不足，人才队伍缺乏，基础科研薄弱，科技创新能力有待进一步提升，信息化、智能制造还处于起步阶段；三是部分地区安全生产形势依然严峻，部分企业安全管理到点、到岗、到人的“最后一公里”尚不通畅，安全生产事故仍偶有发生；四是民爆行业产能存在区域性、结构性过剩，工业雷管产能利用率较低，工业炸药产能利用率也不到70%；上述问题的存在，对民爆行业实现安全发展、可持续发展，形成了阻碍。</p><h1>二、面临的形势</h1><p>未来五年，为适应经济发展新常态、改革发展新变化、安全发展新要求、科技创新新机遇，民爆行业必须审时度势，放眼全局，既要抓住发展新机遇，更要迎接新挑战。</p><h2>（一）宏观经济调整影响深远</h2><p>民爆物品主要应用于煤炭、金属、非金属矿产资源开采和基础设施建设。一方面，未来五年国家在铁路公路、港口机场、水利水电、新型城镇化建设等基础建设方面持续投入，将拉动对民爆物品的国内市场需求；我国倡导开展“一带一路”建设，加大海外工程投资力度，有助于民爆企业拓展国际市场。另一方面，全球经济仍处于深度调整期，经济增长乏力，需求不足。在全球经济一体化大背景下，我国经济发展进入新常态，经济增速明显放缓。煤炭、钢铁、水泥等下游行业的下行压力传导到民爆行业，对民爆物品市场需求产生较大影响，与2013年峰值相比，2015年工业炸药产量减少70万吨，下降16%，工业雷管产量减少5.4亿发，下降29.9%。预计“十三五”期间，工业炸药市场需求将呈波动缓降趋势，工业雷管市场需求受爆破作业方式改变的影响将进一步下降。同时，市场需求的下降将进一步凸显产能过剩矛盾，可能导致市场竞争加剧，企业利润下滑，科研投入和安全投入保障压力加大。</p><h2>（二）价格放开和销售渠道变化带来新挑战</h2><p>民爆物品价格放开，将促进价格随行就市新机制的形成，可以推动市场竞争，打破地区垄断，但也可能导致恶性竞争，出现低价倾销等问题，个别企业已出现应收账款居高不下，这必将影响到企业的安全投入和正常经营；同时，民爆物品长距离运输情况大幅增加，对社会公共安全带来隐患。另一方面，生产企业直销现象快速增长引起销售渠道变化，打破了原有的民爆物品销售体系，新的体系尚在探索和建立中，对民爆销售企业带来了挑战。企业需要主动适应环境变化，转变发展方式，提高经营管理水平，走创新驱动与提质增效之路。</p><h2>（三）安全生产主体责任进一步加强</h2><p>《国民经济和社会发展第十三个五年规划纲要》提出“牢固树立安全发展观念，坚持人民利益至上”，把安全发展提高到前所未有的高度;新修订的《安全生产法》在强化生产经营单位主体责任、增强政府监管力度、明确法律责任方面进一步做了补充和完善，民爆行业必须严格遵守；在当前经济形势下，一些民爆企业出现安全投入不足，安全生产管理放松，安全培训不到位等现象，甚至发生违规生产、违法生产等行为，更加迫切地要求进一步加强企业安全生产主体责任，夯实安全生产基层基础，提升行业整体安全水平。</p><h2>（四）供给侧结构性改革和智能制造加速产业升级</h2><p>《国民经济和社会发展第十三个五年规划纲要》提出“以供给侧结构性改革为主线，扩大有效供给，满足有效需求”。经济发展方式的转变将对民爆产品品种、质量和服务提出更高需求，社会对民爆行业安全生产、提升效率提出更新要求，民爆行业需要提高技术创新能力,转变生产方式和管理方式，化解过剩产能，加强有效供给。《中国制造2025》提出“以加快新一代信息技术与制造业深度融合为主线，以推进智能制造为主攻方向，强化工业基础能力”，民爆行业要抓住智能制造带来的新机遇，用现代信息技术提升民爆行业管理水平，用智能制造新技术提升生产线本质安全水平，最大限度减少民爆物品生产、销售过程中的安全隐患，促进民爆行业产业升级，引领全行业向高端化方向发展。</p><h1>三、指导思想、基本原则与发展目标</h1><h2>（一）指导思想</h2><p>认真贯彻党的十八大和十八届三中、四中、五中全会精神，遵循创新、协调、绿色、开放、共享发展理念，牢固树立安全发展观念，以市场需求为导向推动行业供给侧结构性改革，以安全生产为基础维护行业发展，以科技创新为引领推动民爆行业产业升级，以结构调整为主线优化产品产业结构，以深化改革为重点增强行业发展动力，以“一带一路”建设为机遇扩大国际合作与交流，实现行业安全、健康、协调、可持续发展，更好地为经济社会发展服务。</p><h2>（二）基本原则</h2><p>突出安全发展。贯彻“安全第一、预防为主、综合治理”的方针，建立管理全方位、监管全过程的安全生产综合治理体系，提高生产线本质安全水平，构建安全生产长效机制。</p><p>坚持科技引领。建立开放合作的科技创新体系，加快基础科研和关键共性技术研发，加快新产品、新装备的开发，推进智能制造和信息化建设，提高清洁生产技术水平，推动行业科技进步，提高国际竞争力。</p><p>坚持结构调整。优化产品结构，发展安全、高效产品；优化产能布局，形成合理分布；优化产业体系，推进现场混装生产方式和一体化服务；提高产业集中度，培育龙头骨干企业。</p><p>坚持优化供给。落实供给侧结构性改革，提升行业服务能力和服务水平，提高产品质量稳定性、可靠性和实用性，降低用户及社会的总成本。</p><p>坚持深化改革。加强依法行政，深化行政审批制度改革，加强行业上下游之间的政策协调，强化事中事后监管，突出企业的市场主体地位，维护市场有序竞争，营造良好的市场环境。</p><h2>（三）发展目标</h2><p>科技创新能力进一步增强。基础科研和关键共性技术研究取得突破，科技成果转化和实用技术推广应用有较大进步，工艺装备技术水平和清洁生产技术水平有较大改进。龙头、骨干企业专业技术人员比重达到25%，研发投入占企业总收入比重突破3%。</p><p>产品结构进一步优化。现场混装炸药占工业炸药比重突破30%；进一步推广导爆管雷管应用，使其占工业雷管比重超过70%；高强度型塑料导爆管产品占比超过50%；安全环保型震源药柱产品占比超过50%。</p><p>产业集中度进一步提高。培育3至5家具有一定行业带动力与国际竞争力的民爆行业龙头企业，扶持8至10家科技引领作用突出、一体化服务能力强的优势骨干企业。排名前15家生产企业生产总值在全行业占比突破60%。</p><p>安全生产管理水平进一步提升。杜绝发生特别重大安全生产事故，力争实现重大安全生产事故零发生，安全生产事故死亡人数较“十二五”下降30%以上。</p><p>智能制造和生产线本质安全水平迈上新台阶。到2020年，工业炸药危险等级为1.1级的工房现场操作人员原则上实现6人（含）以下，工业炸药制品危险等级为1.1级的工房现场操作人员全部实现9人（含）以下。</p><p>表1&nbsp;&nbsp; “十三五”时期民爆行业发展主要目标</p><table>\n <tbody><tr>\n  <td>\n  <p><b>指标<o:p></o:p></b></p>\n  </td>\n  <td>\n  <p><b>2015</b><b>年<o:p></o:p></b></p>\n  </td>\n  <td>\n  <p><b>2020</b><b>年<o:p></o:p></b></p>\n  </td>\n  <td>\n  <p><b>属性<o:p></o:p></b></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>龙头骨干企业专业技术人员比重（%）<o:p></o:p></p>\n  </td>\n  <td>\n  <p>16.1<o:p></o:p></p>\n  </td>\n  <td>\n  <p>25<o:p></o:p></p>\n  </td>\n  <td>\n  <p>预期性<o:p></o:p></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>龙头骨干企业研发投入占企业总收入比重（%）<o:p></o:p></p>\n  </td>\n  <td>\n  <p>-<o:p></o:p></p>\n  </td>\n  <td>\n  <p>&gt;3<o:p></o:p></p>\n  </td>\n  <td>\n  <p>预期性<o:p></o:p></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>现场混装炸药占工业炸药比重（%）<o:p></o:p></p>\n  </td>\n  <td>\n  <p>22.5<o:p></o:p></p>\n  </td>\n  <td>\n  <p>&gt;30<o:p></o:p></p>\n  </td>\n  <td>\n  <p>预期性<o:p></o:p></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>导爆管雷管占工业雷管比重（%）<o:p></o:p></p>\n  </td>\n  <td>\n  <p>54.1<o:p></o:p></p>\n  </td>\n  <td>\n  <p>&gt;70<o:p></o:p></p>\n  </td>\n  <td>\n  <p>预期性<o:p></o:p></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>高强度型塑料导爆管<o:p></o:p></p>\n  </td>\n  <td>\n  <p>-<o:p></o:p></p>\n  </td>\n  <td>\n  <p>&gt;50<o:p></o:p></p>\n  </td>\n  <td>\n  <p>预期性<o:p></o:p></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>安全环保型震源药柱<o:p></o:p></p>\n  </td>\n  <td>\n  <p>-<o:p></o:p></p>\n  </td>\n  <td>\n  <p>&gt;50<o:p></o:p></p>\n  </td>\n  <td>\n  <p>预期性<o:p></o:p></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>前15家企业占行业生产总值比重（%）<o:p></o:p></p>\n  </td>\n  <td>\n  <p>50.7<o:p></o:p></p>\n  </td>\n  <td>\n  <p>&gt;60<o:p></o:p></p>\n  </td>\n  <td>\n  <p>预期性<o:p></o:p></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>特别重大安全生产事故<o:p></o:p></p>\n  </td>\n  <td>\n  <p>-<o:p></o:p></p>\n  </td>\n  <td>\n  <p>“十三五”时期零发生<o:p></o:p></p>\n  </td>\n  <td>\n  <p>预期性<o:p></o:p></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>安全生产事故死亡人数<o:p></o:p></p>\n  </td>\n  <td>\n  <p>-<o:p></o:p></p>\n  </td>\n  <td>\n  <p>较“十二五”下降30%以上<o:p></o:p></p>\n  </td>\n  <td>\n  <p>预期性<o:p></o:p></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>工业炸药危险等级为1.1级的工房现场操作人员<o:p></o:p></p>\n  </td>\n  <td>\n  <p>-<o:p></o:p></p>\n  </td>\n  <td>\n  <p>6人（含）以下<o:p></o:p></p>\n  </td>\n  <td>\n  <p>约束性<o:p></o:p></p>\n  </td>\n </tr>\n <tr>\n  <td>\n  <p>工业炸药制品危险等级为1.1级的工房现场操作人员<o:p></o:p></p>\n  </td>\n  <td>\n  <p>-<o:p></o:p></p>\n  </td>\n  <td>\n  <p>9人（含）以下<o:p></o:p></p>\n  </td>\n  <td>\n  <p>约束性<o:p></o:p></p>\n  </td>\n </tr>\n</tbody></table><h1>四、主要任务</h1><h2>（一）推动行业科技进步</h2><p>1．建立开放合作的科技创新体系。加强以企业为主体、专业科研机构为主导、产学研用紧密结合的创新体系建设。鼓励军民科技融合发展，促进民爆行业的军民技术双向转化，支持军工和民品企事业单位的技术合作。建立并完善行业关键、共性技术研发平台，努力创建国家级民爆装备技术创新服务平台(中心)。建立健全科技创新机制，加强知识产权保护力度，加快新技术、新成果在民爆行业内的推广应用。</p><p>2.推动产品科技创新。研发推广安全环保、性能优良的工业炸药及其制品，开展乳化炸药系列配方及稳定性研究，研发依据爆破现场作业参数实时调整配方的现场混装炸药产品，研发用于消除应力、提高金属结构件强度等方面的爆炸加工用新型炸药;研发推广高精度、高可靠性的工业雷管；推广高强度型塑料导爆管，研发柔性、防滑、高强度导爆索；研发用于新型应急救援、防灾减灾等方面的民用爆炸物品。</p><p>3．开展基础科研和工艺技术研究。加强新工艺、新技术、新材料、新设备的研发，开展安全机理、检验检测标准等基础科研工作。研发工业机器人和智能成套设备在生产线上的应用技术，研发工业雷管全线人机隔离的连续化、自动化生产工艺，研发震源药柱、中继起爆具等小品种连续化、自动化生产工艺。提高生产线自动化控制和设备设施集成联动水平，增强相关工艺环节安全性、可靠性和匹配性。</p><p>4．提高清洁生产技术水平。鼓励企业开展低能耗、低排放新工艺、新设备的研究与应用，加快环保型震源药柱及起爆具生产技术的研发应用，推动硝酸铵水溶液及配套水、油相技术的应用，开展少铅无铅延期体制造技术、环保型高性能起爆药制造技术、无铅污染测试标准的研究与应用。</p><p>专栏1&nbsp;&nbsp; 实施行业科技水平提升专项行动</p><table>\n <thead>\n  <tr>\n   <td>\n   <p><b>类别</b><b><o:p></o:p></b></p>\n   </td>\n   \n   <td>\n   <p><b>细分</b><b><o:p></o:p></b></p>\n   </td>\n   \n   <td>\n   <p><b>重点任务</b><b> <o:p></o:p></b></p>\n   </td>\n   \n  </tr>\n </thead>\n <tbody><tr>\n  <td colspan=\"3\">\n  <p>研究制定指导民爆行业技术进步的政策，对民爆行业产品及工艺技术发展方向提出要求，实现行业技术水平大幅提升。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  <td rowspan=\"3\">\n  <p>产品<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>工业炸药<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>安全环保型系列工业炸药研发；<o:p></o:p></p>\n  <p>乳化炸药系列配方、稳定性研究；<o:p></o:p></p>\n  <p>依据爆破现场作业参数实时调整配方的现场混装炸药产品研发；<o:p></o:p></p>\n  <p>用于消除应力、提高金属结构件强度等方面的爆炸加工用新型炸药；<o:p></o:p></p>\n  <p>井下现场混装技术研发。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  \n  <td>\n  <p>炸药制品<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>安全环保型震源药柱产品研发；<o:p></o:p></p>\n  <p>安全环保型起爆具系列产品研发；<o:p></o:p></p>\n  <p>安全高效型石油射孔器材产品研发。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  \n  <td>\n  <p>工业雷管及起爆系统<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>高精度、高可靠性工业雷管研发；<o:p></o:p></p>\n  <p>环保型、高性能药剂生产技术研发；<o:p></o:p></p>\n  <p>柔性、防滑、高强度导爆索研发。<o:p></o:p></p>\n  \n  <p><o:p>&nbsp;</o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  <td rowspan=\"4\">\n  <p>基础科研和工艺技术<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>基础科研<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>加强新工艺、新技术、新材料、新设备的研发，开展安全机理、检验检测标准等基础科研工作。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  \n  <td>\n  <p>工业炸药<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>工业机器人和智能成套设备在生产线上的应用技术研发；生产线在线检测技术研发。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  \n  <td>\n  <p>工业雷管及起爆系统<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>药剂制造、基础雷管装配人机隔离自动化生产工艺研发。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  \n  <td>\n  <p>小品种<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>连续化、自动化生产工艺研发；<o:p></o:p></p>\n  <p>产品工程应用技术研发。<o:p></o:p></p>\n  </td>\n  \n </tr>\n</tbody></table><h2>（二）加快产品产业结构调整</h2><p>1．优化产品结构。重点发展以现场混装炸药、导爆管雷管等为代表的安全、高效产品品种，促进可靠性高、安全性好、节能环保新产品的研发和应用。工业炸药由以包装型为主向散装型和现场混装炸药方向发展，加快高精度、高可靠性、高强度导爆管雷管以及数码电子雷管发展，工业导爆索向系列化、多功能方向发展。</p><p>2．优化产能布局。贯彻落实京津冀协同发展、长江经济带发展等国家战略要求，\n统筹考虑经济发展形势和区域实际，综合运用市场机制和法治手段，严格执行安全、质量、技术、环保等法律法规和标准规范，积极推动化解过剩产能；严控生产许可能力总量,严控新增民爆物品生产许可证，构建产能动态调控机制，提高产能布局合理性，有效降低民爆产品运输距离，形成供需匹配、分布合理的产业发展格局。</p><p>3. 优化产业体系。推动民爆生产、爆破服务与矿产资源开采、基础设施建设等有机衔接，推进生产、销售、爆破作业一体化服务，鼓励民爆企业延伸产业链，完善一体化运行机制，提升一体化运作水平。引导民爆销售企业充分利用良好的仓储、运输、配送能力，积极与上下游企业整合，提高服务能力，开创新的服务模式。</p><p>4．提高产业集中度。按照企业自愿、政府引导、市场化运作的原则，鼓励龙头、骨干企业开展兼并重组，引导停产半停产、连年亏损、资不抵债等生存状态恶化的企业参与整合或退出市场，推进规模化发展。发挥重组企业协同效应，在统一标准、综合管理、技术创新、规模生产、集中采购与销售等方面资源优势互补，形成一批具有国际竞争力的企业集团，提升民爆行业的国际竞争力。</p><h2>（三）推动智能制造和信息化建设</h2><p>1．推进行业智能制造。实施信息化、智能化技术改造，推进流程再造。实施典型产品智能化生产线示范工程，建设工业炸药、工业雷管智能化生产示范线，工业炸药制药、装药等危险岗位实现少（无）人操作，工业雷管装配等主要危险岗位实现人机隔离操作，研究开发火工药剂、震源药柱、石油射孔器材等危险作业工序人机隔离装备。加快机器人及智能成套装备在民爆行业的推广应用，开展民爆安全生产少（无）人化专项工程相关工作，继续减少危险作业场所人员，提高生产线本质安全水平。</p><p>2．加强企业信息化建设。努力提升安全管理信息化水平，开展对重大危险源和关键危险工序违规违章行为的自动识别、提示和自动报警技术研究，推动企业建立生产、销售全过程信息化安全管控体系。加强企业信息化的系统集成、创新应用和与外部信息的衔接，推动企业内部信息系统之间、与下游行业信息系统之间的信息共享，提升企业信息化集成应用水平。</p><h2>（四）提升行业安全管理水平</h2><p>1．建立企业安全生产管理长效机制。加强安全生产基层基础管理，落实安全生产责任制，加强对危险作业现场一线人员的安全培训；持续开展安全生产标准化达标活动，严格执行安全管理制度和操作规程，规范安全生产行为；强化源头治理，定期开展安全隐患自查和整改；保障安全生产投入，做好新建、改建、扩建工程项目安全设施的“三同时”工作。加强销售流通环节安全管理，严防民爆物品非法流入社会。</p><p>2．完善安全监管长效工作机制。运用信息技术，创新安全监督、检查模式，落实监管责任，改进安全监管手段。加强安全隐患排查治理，持续开展“打非治违”，严厉打击“四超”行为，增强严格执法力度。强化教育培训，提升基层民爆安全监管人员专业技能和素养，提升监管队伍能力。</p><p>3．促进企业安全文化建设。倡导“以人为本、安全发展”的文化理念，增强员工安全意识，特别是管理人员和一线员工的安全意识，将安全文化建设落到实处，使安全文化内化于心、外化于行。鼓励企业主动上报安全隐患问题，交流安全隐患处置经验。鼓励企业申请全国安全文化示范企业，发挥示范企业的引导作用，带动行业安全生产管理水平的提升。</p><p>专栏2&nbsp;&nbsp; 实施行业安全水平提升专项行动</p><table>\n <thead>\n  <tr>\n   <td>\n   <p><b>类别</b><b><o:p></o:p></b></p>\n   </td>\n   \n   <td>\n   <p><b>细分</b><b><o:p></o:p></b></p>\n   </td>\n   \n   <td>\n   <p><b>重点任务</b><b><o:p></o:p></b></p>\n   </td>\n   \n  </tr>\n </thead>\n <tbody><tr>\n  <td colspan=\"3\">\n  <p>建立企业安全生产管理长效机制，加强安全生产监管，倡导企业安全文化，减少危险岗位在线操作人员，以智能制造和信息化建设为手段提高生产线本质安全水平，实现行业整体安全水平大幅提高。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  <td rowspan=\"3\">\n  <p>提高生产线本质安全水平<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>智能制造<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>推进机器人及智能成套装备在民爆行业的推广应用，开展民爆安全生产少（无）人化专项工程等相关工作。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  \n  <td>\n  <p>企业信息化建设<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>开展对重大危险源和关键危险工序违规违章行为的自动识别、提示和自动报警技术研究，建立生产、销售全过程安全管控体系。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  \n  <td>\n  <p>压点减员<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>引导企业压缩危险作业场点；提高安全标准，工业炸药1.1级危险工房现场操作人员实现6人（含）以下，工业炸药制品1.1级危险工房现场操作人员全部实现9人（含）以下。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  <td rowspan=\"2\">\n  <p>加强安全管理<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>企业安全生产管理长效机制<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>研究制定民爆行业建立企业安全生产管理长效机制的政策，加强安全生产基层基础管理，落实企业安全生产主体责任。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  \n  <td>\n  <p>安全监管长效工作机制<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>改进安全监管手段，增强严格执法力度，提升监管队伍能力。完善覆盖行业主管部门、企业的综合管理服务平台。<o:p></o:p></p>\n  </td>\n  \n </tr>\n</tbody></table><h2>（五）提高行业有效供给能力</h2><p>1．提升行业服务能力。确立以用户为中心的产品理念和服务意识，推进民爆行业由单纯提供产品向按照市场需求调整品种、规格和服务方式转变，主动对接下游行业，根据不同的使用环境、不同的爆破方式提供不同的民爆产品，为用户提供最优选择。</p><p>2．提高产品质量水平。加强生产过程中原材料、工艺参数的在线检测和质量控制，健全质量管理体系，完善质量检测指标及标准，提高产品技术指标的精确性和可靠性，加快产品质量标准与国际先进标准的接轨。积极提高工业雷管质量，使雷管延期精度和可靠性达到国际先进水平。开展企业品牌培育工作，塑造优质品牌形象，增强产品竞争力。</p><p>专栏3&nbsp;&nbsp; 实施产品质量水平提升专项行动</p><table>\n <thead>\n  <tr>\n   <td>\n   <p><b>类别</b><b><o:p></o:p></b></p>\n   </td>\n   \n   <td>\n   <p><b>重点任务</b><b><o:p></o:p></b></p>\n   </td>\n   \n  </tr>\n </thead>\n <tbody><tr>\n  <td colspan=\"2\">\n  <p>提升产品检测方法及标准，提高产品关键指标，加强对民爆产品质量抽检等监管，评选优质产品，实现行业产品质量水平提升。<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  <td>\n  <p>工业炸药<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>提高产品在保质期内的稳定性<o:p></o:p></p>\n  </td>\n  \n </tr>\n <tr>\n  <td>\n  <p>工业雷管<o:p></o:p></p>\n  </td>\n  \n  <td>\n  <p>提高产品可靠性，降低机械感度，提高工业雷管起爆可靠性及延期精度。<o:p></o:p></p>\n  </td>\n  \n </tr>\n</tbody></table><h2>（六）推进改革和市场有序竞争</h2><p>1．深化行政审批制度改革。贯彻落实国务院已决定清理规范的中介服务事项，优化行政许可流程,改革生产许可年检制度，提高行政许可工作效率。优化政务服务，逐步推进行政许可事项实行网上申报、办理，进一步提高行政效能。</p><p>2．规范市场有序竞争。把市场在资源配置中的决定性作用与更好发挥政府作用有机结合，强化事中事后监管，通过加强对企业安全投入的监管防止低价倾销等恶性竞争行为，维护市场秩序，打破市场分割，消除地区性行业壁垒，在确保安全稳定的前提下，建立公平竞争、统一开放的民爆物品市场体系。</p><h2>（七）扩大国际交流与合作</h2><p>1．实施走出去战略。鼓励企业抓住“一带一路”发展机遇，发挥比较优势，寻找生存发展空间，推进国际化经营。以需求为牵引，扩大先进生产技术、设备及高端产品的出口规模，拓展国际市场。鼓励企业到国外投资，建设民爆物品生产线，开展爆破作业一体化服务。</p><p>2．引进先进技术和管理经验。遵循引进、消化、提高的路径，加强与国际先进企业的合资合作和技术交流，加大引进国外先进技术成果和高端设备设施力度。注重引进先进的管理经验和经营理念，提高企业生产管理和产品质量水平。</p><h2>（八）加强人才队伍建设</h2><p>1．加大人才资源开发力度。完善产学研用相结合的多维度人才培养体系，提高人力资源保障能力。培养管理人才，造就具备宏观思维和创新精神的高素质管理人才队伍；培养专业技术人才，加强青年科技骨干培育，打造民爆行业科技领军团队；培养技能人才，打造行业发展急需的信息化、智能制造和爆破服务等方面的技能人才，提高民爆行业“蓝领”技能水平。</p><p>2．营造人才发展环境。鼓励企业制定人才培养计划和引进人才，支持企业采取股权、期权、技术入股、专利奖励等多种形式的激励措施，创造适合人才引进和成长的良好环境。</p><h1>五、保障措施</h1><h2>（一）加强法规规章建设与政策引导</h2><p>研究《民用爆炸物品安全管理条例》在实施中的体制机制问题，适时启动修订程序。修订《民用爆炸物品生产许可实施办法》，严格依法行政。强化政策引导在安全管理、产品质量、技术进步和化解过剩产能等方面对企业的激励和约束作用。研究支持研发先进产品和企业推进一体化服务、向高端化发展的激励政策。</p><h2>（二）加快标准化工作</h2><p>进一步完善优化行业标准体系，加快民爆行业标准研究，根据行业发展要求做好相应标准的制修订工作，强化标准在产品结构调整、技术水平提升、安全管理和生产经营中的作用。开展与发达国家民爆标准的对标分析，研究和探讨采标的实施途径和方式，提高我国民爆行业标准化水平。</p><h2>（三）推进诚信体系建设</h2><p>强化顶层设计，鼓励和调动各方力量，建设民爆行业诚信体系。加强诚信信息与相关诚信体系的对接，研究诚信信息公示常态化机制，建立企业、中介机构等相关单位的违法违规不良记录和黑名单制度，落实守信激励和失信惩戒措施，提高违法违规失信成本，防止低价倾销等恶性竞争，营造遵纪守法、规范经营、诚实守信的氛围。</p><h2>（四）加大财政金融支持</h2><p>争取中国制造2025专项等国家财政对民爆行业在技术改造、安全技术研发与产业化、安全装备研究等方面的资金支持。鼓励企业借助主板、中小板、创业板、新三板多层次资本市场拓宽融资渠道。</p><h2>（五）发挥中介组织服务功能</h2><p>发挥行业协会、科研设计、安全评价、检测检验等中介组织在联系政府、服务企业、促进行业自律等方面的桥梁和纽带作用。加强民爆行业经济运行分析，开展安全风险防控和经营风险防范等方面研究，引导企业有效规避风险，促进企业健康发展。</p><h2>（六）健全规划实施机制</h2><p></p><p>指导各地行业主管部门结合本地区发展实际，做好地方规划与本规划的衔接，并针对本地区行业实际，确定主要目标、重点任务，保障措施，共同推动规划落实。建立监测评估机制，开展规划动态监测和评估工作。</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/67db9179-d445-453a-bfa1-c2dc56035c2b.jpg', '1', '2016-11-12 10:46:22', '2016-11-18 15:39:49');
INSERT INTO `oa_news` VALUES ('10', '1', '习近平参加北京市区人大代表换届选举投票', '11月15日，中共中央总书记、国家主席、中央军委主席习近平在北京市西城区中南海选区怀仁堂投票站参加区人大代表选举投票。新华社记者兰红光摄　　习近平在参加北京市区人大代表换届选举投票时强调　　保障人民选', '<p>11月15日，中共中央总书记、国家主席、中央军委主席习近平在北京市西城区中南海选区怀仁堂投票站参加区人大代表选举投票。 新华社记者兰红光 摄</p><p>　　习近平在参加北京市区人大代表换届选举投票时强调</p><p>　　保障人民选举权和被选举权</p><p>　　确保选举工作风清气正</p><p>　　李克强张德江俞正声刘云山王岐山张高丽江泽民胡锦涛在各自选区参加投票或委托他人投票</p><p>　　新华社北京11月15日电 11月15日是北京市区、乡镇两级人大代表换届选举投票日。中共中央总书记、国家主席、中央军委主席习近平在西城区中南海选区怀仁堂投票站参加区人大代表的选举投票时强调，这次县乡两级人大换届选举是全国人民政治生活中的一件大事。选举工作要坚持党的领导、坚持发扬民主、严格依法办事，保障人民选举权和被选举权。要加强对选举工作的监督，对违规违纪违法问题“零容忍”，确保选举工作风清气正。</p><p>　　怀仁堂投票站里，五星红旗鲜艳夺目，镶嵌着国徽的红色票箱端放正中，现场气氛庄重而喜庆。本选区1200多名选民来到这里参加投票。</p><p>　　上午10时许，习近平来到怀仁堂投票站，同投票站的工作人员亲切握手，仔细听取有关选举事项的说明。习近平拿出选民证交给工作人员核验，并领取了一张选票。在写票处认真填写选票后，习近平走到票箱前郑重投下自己的一票。</p><p>　　中共中央政治局常委、国务院总理李克强在西城区文津街选区紫光阁投票站投了票。</p><p>　　中共中央政治局常委、全国人大常委会委员长张德江在西城区中南海选区人民大会堂投票站投了票。</p><p>　　中共中央政治局常委、全国政协主席俞正声在西城区金融街二选区全国政协机关投票站投了票。</p><p>　　中共中央政治局常委、中央书记处书记刘云山在西城区中南海选区怀仁堂投票站投了票。</p><p>　　中共中央政治局常委、中央纪委书记王岐山在西城区大觉选区中央纪委机关投票站投了票。</p><p>　　中共中央政治局常委、国务院副总理张高丽在西城区文津街选区紫光阁投票站投了票。</p><p>　　江泽民、胡锦涛分别委托工作人员在西城区中南海选区怀仁堂投票站投了票。</p><p>　　中共中央、全国人大常委会、国务院、最高人民法院、最高人民检察院、全国政协、中央军委有关领导同志和从领导职务上退下来的同志，在各自选区投票或委托他人投票。</p><p>　　15日当天，北京市共设立投票站12270个，约900万选民参加投票，通过差额选举，将产生新一届区人大代表4373人、乡镇人大代表9946人</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/4e9cb89b-4f8b-447b-9d17-bb6e889390de.jpg', '1', '2016-11-15 21:00:26', '2016-11-18 15:39:47');
INSERT INTO `oa_news` VALUES ('11', '1', '新政落地，滴滴出海谋生可解燃眉之急吗？', '随着网约车管理办法的落地，特别是京沪两地的对驾驶员户籍、车辆牌照、车辆排量与轴距等制定的诸多较为严苛的限制性条款，让一度风光的滴滴出行陷入到空前的危机之中，虽然接下来有可能继续灰色运营，但总归需要找到', '<p>随着网约车管理办法的落地，特别是京沪两地的对驾驶员户籍、车辆牌照、车辆排量与轴距等制定的诸多较为严苛的限制性条款，让一度风光的滴滴出行陷入到空前的危机之中，虽然接下来有可能继续灰色运营，但总归需要找到更好的安全的发展空间，海外市场成为了重要方向。</p><p>这些年来，中国的互联网行业茁壮成长，但几乎全都是窝里横，走出国门变成全球性应用的极少，随着移动互联网时代的到来与中国经济的全球化步伐，互联网公司走向世界的大门已经逐步打开，滴滴有可能成为受益者。</p><p>在2015年，滴滴就战略投资美国打车应用Lyft公司一亿美元，以加强两大平台的业务协同。当时，滴滴创始人兼CEO程维就表示，滴滴将和Lyft与其他全球伙伴一起，持续立足本土，连通彼此的金融，技术和市场资源以达到一个共同目标：建设一个高效而可持续的全球出行生态圈联盟。</p><p>不过，2015年8月1日，滴滴出行宣布与Uber全球达成战略协议，滴滴出行将收购优步中国的品牌、业务、数据等全部资产在中国大陆运营。这也意味着，曾经信誓旦旦要打开中国市场的Uber以体面的方式退出了中国市场，滴滴成为了真正的霸主。</p><p>不过，虽然Uber成为了滴滴的股东，可两家公司在全球市场的争夺可能才刚刚开始。在WSJDLive 2016全球科技大会上，柳青说：“我们希望全球化，我们渴望成为一家跨国公司。”放眼海外，美国、欧洲基本是Uber占优，存在变数的是印度和东南亚地区。滴滴已经成立了国际拓展团队，而东南亚正是滴滴的下一个重点市场。狭路相逢勇者胜，两家的东南亚市场争夺将由此拉大大幕。</p><p>对于滴滴来说，国内的市场饱和，并面临严格的监管，产业链的拓展空间虽然很大，但进展却不会很快，未来用户发展增量注定在海外，走出去是必然的选择。</p><p>根据易观咨询的报告，在中国的专车市场，滴滴快的占据了超过82%的市场份额。同时，滴滴服务了130余万出租车司机，占据了出租车召车领域99%的市场份额。如今，滴滴也从提供单纯的出租车叫车服务，演变成为拥有包括出租车、专车、顺风车、代驾、巴士等在内的一站式移动出行平台，也是全球范围唯一一家拥有整套出行产品的互联网企业。</p><p>但是，在全球市场上，滴滴的对手也十分强大，Uber拥有更为成熟的国际运营经验和管理团队，作为美国公司也更容易得到很多国家的认可，中国的互联网企业走出去受到文化、体制与本地化各方面的困扰，滴滴全球化的道路注定不会风平浪静。</p><p>滴滴出行走向海外市场，比较百度的搜索、腾讯的社交游戏和阿里巴巴的电商还是拥有一定的先天优势，出行市场以技术驱动，人文、语言及文化的差异影响较小，不管在什么样的国家，打车叫车的流程都相差不大，人们的出行要求也类似，只要得到开放的市场环境，将平台两端的用户连接在一起，剩下的就是不同平台之间的烧钱游戏。滴滴历经多次大规模的融资，资金储备与Uber相比并不吃亏，在特定的市场绝对有战而胜之的可能。</p><p>出行往往并非是独立的需求，人们只是为了完成某个任务而产生了打车的需求，随着中国人海外旅行的大幅度增加，拥有语言优势、支付便利和使用习惯的滴滴也很有可能随之出海，就如同当年的可口可乐随着美国大兵的足迹传遍全世界一样。从这个角度看，滴滴出行的海外业务拓展首先应该与国内的在线旅游平台联合，作为旅游产品的功能性构建走出去，然后再寻求更多的本地化机会。</p><p>此外，资本注入和兼并重组也是必然的选择。借助中国国内市场的大数据积累和运营经验的总结，能力和资本将成为滴滴下一步国际运营的重要资源。从实际操作看，滴滴投资了东南亚最大的打车应用Grabtaxi，已经开始共享自身大数据算法上的积累以及多元化业务的运营经验，选择将海外运营的首要目标锁定东南亚华人市场。</p><p>我们还是认为，国际化确实可以帮助滴滴出行拓展市场，获得更好的更广阔的空间，可中国本土市场依然最为重要。远水不解近渴，如何在国际化的同时更好的坚守中国市场并且找到更好的盈利模式与打造更宽松的商业生存环境是重中之重，否则就可能是舍本逐末</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/6b02e2cc-5efe-42ba-8fe2-6c7584fb5143.jpg', '1', '2016-11-15 21:09:38', '2016-11-15 21:10:22');
INSERT INTO `oa_news` VALUES ('12', '1', '新政落地，滴滴出海谋生可解燃眉之急吗？', '随着网约车管理办法的落地，特别是京沪两地的对驾驶员户籍、车辆牌照、车辆排量与轴距等制定的诸多较为严苛的限制性条款，让一度风光的滴滴出行陷入到空前的危机之中，虽然接下来有可能继续灰色运营，但总归需要找到', '<p>随着网约车管理办法的落地，特别是京沪两地的对驾驶员户籍、车辆牌照、车辆排量与轴距等制定的诸多较为严苛的限制性条款，让一度风光的滴滴出行陷入到空前的危机之中，虽然接下来有可能继续灰色运营，但总归需要找到更好的安全的发展空间，海外市场成为了重要方向。</p><p>这些年来，中国的互联网行业茁壮成长，但几乎全都是窝里横，走出国门变成全球性应用的极少，随着移动互联网时代的到来与中国经济的全球化步伐，互联网公司走向世界的大门已经逐步打开，滴滴有可能成为受益者。</p><p>在2015年，滴滴就战略投资美国打车应用Lyft公司一亿美元，以加强两大平台的业务协同。当时，滴滴创始人兼CEO程维就表示，滴滴将和Lyft与其他全球伙伴一起，持续立足本土，连通彼此的金融，技术和市场资源以达到一个共同目标：建设一个高效而可持续的全球出行生态圈联盟。</p><p>不过，2015年8月1日，滴滴出行宣布与Uber全球达成战略协议，滴滴出行将收购优步中国的品牌、业务、数据等全部资产在中国大陆运营。这也意味着，曾经信誓旦旦要打开中国市场的Uber以体面的方式退出了中国市场，滴滴成为了真正的霸主。</p><p>不过，虽然Uber成为了滴滴的股东，可两家公司在全球市场的争夺可能才刚刚开始。在WSJDLive 2016全球科技大会上，柳青说：“我们希望全球化，我们渴望成为一家跨国公司。”放眼海外，美国、欧洲基本是Uber占优，存在变数的是印度和东南亚地区。滴滴已经成立了国际拓展团队，而东南亚正是滴滴的下一个重点市场。狭路相逢勇者胜，两家的东南亚市场争夺将由此拉大大幕。</p><p>对于滴滴来说，国内的市场饱和，并面临严格的监管，产业链的拓展空间虽然很大，但进展却不会很快，未来用户发展增量注定在海外，走出去是必然的选择。</p><p>根据易观咨询的报告，在中国的专车市场，滴滴快的占据了超过82%的市场份额。同时，滴滴服务了130余万出租车司机，占据了出租车召车领域99%的市场份额。如今，滴滴也从提供单纯的出租车叫车服务，演变成为拥有包括出租车、专车、顺风车、代驾、巴士等在内的一站式移动出行平台，也是全球范围唯一一家拥有整套出行产品的互联网企业。</p><p>但是，在全球市场上，滴滴的对手也十分强大，Uber拥有更为成熟的国际运营经验和管理团队，作为美国公司也更容易得到很多国家的认可，中国的互联网企业走出去受到文化、体制与本地化各方面的困扰，滴滴全球化的道路注定不会风平浪静。</p><p>滴滴出行走向海外市场，比较百度的搜索、腾讯的社交游戏和阿里巴巴的电商还是拥有一定的先天优势，出行市场以技术驱动，人文、语言及文化的差异影响较小，不管在什么样的国家，打车叫车的流程都相差不大，人们的出行要求也类似，只要得到开放的市场环境，将平台两端的用户连接在一起，剩下的就是不同平台之间的烧钱游戏。滴滴历经多次大规模的融资，资金储备与Uber相比并不吃亏，在特定的市场绝对有战而胜之的可能。</p><p>出行往往并非是独立的需求，人们只是为了完成某个任务而产生了打车的需求，随着中国人海外旅行的大幅度增加，拥有语言优势、支付便利和使用习惯的滴滴也很有可能随之出海，就如同当年的可口可乐随着美国大兵的足迹传遍全世界一样。从这个角度看，滴滴出行的海外业务拓展首先应该与国内的在线旅游平台联合，作为旅游产品的功能性构建走出去，然后再寻求更多的本地化机会。</p><p>此外，资本注入和兼并重组也是必然的选择。借助中国国内市场的大数据积累和运营经验的总结，能力和资本将成为滴滴下一步国际运营的重要资源。从实际操作看，滴滴投资了东南亚最大的打车应用Grabtaxi，已经开始共享自身大数据算法上的积累以及多元化业务的运营经验，选择将海外运营的首要目标锁定东南亚华人市场。</p><p>我们还是认为，国际化确实可以帮助滴滴出行拓展市场，获得更好的更广阔的空间，可中国本土市场依然最为重要。远水不解近渴，如何在国际化的同时更好的坚守中国市场并且找到更好的盈利模式与打造更宽松的商业生存环境是重中之重，否则就可能是舍本逐末</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/3f33db0e-18ef-45cd-a0ad-00a47f874bd4.jpg', '1', '2016-11-15 21:10:43', '2016-11-15 21:10:55');
INSERT INTO `oa_news` VALUES ('13', '1', '视频行业：生之困境中的异军突起——保利威视访谈', '我们总是高估新技术的短期价值而低估它的长期价值。然而，有些重大的事情确实发生了，我们已跨过临界点。——by凯文.凯利(KK)生之困境有一个行业，有着冰火两重天的境遇，热闹非凡的同时却举步维艰。这个行业', '<p>我们总是高估新技术的短期价值而低估它的长期价值。然而，有些重大的事情确实发生了，我们已跨过临界点。——by 凯文.凯利(KK)</p><p>生之困境</p><p>有一个行业，有着冰火两重天的境遇，热闹非凡的同时却举步维艰。</p><p>这个行业就是视频直播行业。这个行业已成汪洋红海，竞争惨烈。即使情况较好的大平台也面临着主播成本过高、流量带宽成本过高、内容监管困难、平台运维困难、政策监管趋严难题……以往在其背后闷声赚钱的设备供应商和CDN供应商等也都遭遇了疯狂的压价，整个产业看似热闹非凡，实则不知明日几何。近期艾瑞发布的报告中指出，由于版权、自制内容成本不断攀升等原因，作为主要营收来源的广告贴片带来的收入不足以支撑视频产业链的盈利，导致大多数视频网站仍旧处于亏损局面。</p><p>视频直播盈利之路，蜀道之难。</p><p><img src=\"http://a.hiphotos.baidu.com/news/w%3D638/sign=7d540c1540540923aa69607daa59d1dc/6609c93d70cf3bc76fd83fdad800baa1cd112a28.jpg\"></p><p>异军突起</p><p>有一家长期专注互联网视频领域的技术研发和运营公司，叫做保利威视。这家公司神奇的地方在于，从创建的半年之后就开始盈利了。短短三年，已成功搭建集云点播、云直播于一体的云视频服务平台……宛若亚马逊湍急的互联网竞争河流下，他们是怎么样生长出了自己的生存技能?</p><p>保利威视通过B端客户覆盖了2亿多终端用户。主要有三类典型用户类型。第一类，传统教育机构.以线下为主，像新东方、全通等教育机构，以及北京大学、北京师范大学等院校，线上教学时大量使用保利威视的技术。第二类，纯线上教育机构，这类企业领头羊像邢帅教育;第三类，一些知名企业。比如西门子、平安银行、顺丰、链家等，链家用保利威视技术实现视频看房;西门子则是有关于家电使用方法。通过视频直观的方式告诉用户如何处理，节省企业客户的成本。</p><p>董事长兼创始人谢晓昉认为传统视频公司之所以不盈利，问题在于这些平台所播放的大量的个人视频缺乏价值和营养。企业级的视频是企业精心制作的，希望去得到保护去交易的视频。所以它本身携带了巨大的价值。在价值传递过程中，保利威视为它提供体验好的视频服务。保利威视业务的增长还来自于一个重要的方向——海外。香港、欧洲这些传统发达地区或国家，传统教育非常发达，但在互联网应用技术上是比较薄弱的，正好需要保利威视的技术去帮助他们实现在线化。</p><p>世上有两种技术：期待中的和意想不到的。而保利威视，做的就是一般人并不了解的，期待中的视频解构分析。</p><p>安全隐患</p><p>移动互联网的发展使得移动学习成为一个非常主流的方式。但现在移动视频盗版属于非常严重的重灾区，大家实现快速上线的同时往往忽略了安全性。比较而言，PC端相对严密一点，但移动端极大的漏洞给了盗版者以机会。</p><p>保利威视在运营了大概半年左右，做过一次客户分析，注意到80%的客户是教育机构。根由就是当时保利威视推出了视频播放功能的关键帧错序加密技术，也就是现在的playSafe的版权保护体系，非常多的教育机构是冲着这个技术来的。目前这个技术已经从1.0版本发展到了VRM5.0版本，不仅是能做到文件级的加密，还能做到碎片化、动态加密。谢晓昉个人的从业经验也是助力加分项，对于高并发或视频流畅大平台，具有非常丰富的经验。</p><p>谢晓昉透露，不管高校还是教育机构，只要是对自己的知识产权看重，就会倾向性的选择他们。这个自信来自于保利威视经常和其他品牌的安全性进行PK，同样的课件放在网上，如果能把视频盗版下来就算成功，但竞争对手基本都失败了。</p><p>这里需要单独介绍一下保利威视在移动视频版权保护有独到的技术：当SDK运行在iOS或Android手机内存当中，解密、加密完全是在内存里进行。在任何文件系统以及没有加密协议当中传输时，不会把明文数据暴露在文件系统和非加密通信网络协议当中。保利威视研究过，中国Top20网校和视频App，或多或少都存在大大小小的问题，在安全角度看来都是非常容易被盗版的。但经过保利威视处理之后，就不再会出现被盗版的情况发生。</p><p>还有，直播是生产课件非常重要的方式。直播完成之后课程就那么扔掉了，对资源是一种浪费。现在直播平台借助保利威视的录播系统、加密系统，直播完的课程马上转入到录播系统，这是非常非常多的直播系统做不到的。</p><p>虚拟现实</p><p>Facebook 创始人扎克伯格认为，媒体的重心从文字开始，逐渐过渡到图片，然后进阶到影视，最终拓展到虚拟现实。每前进一步，内容的维度就更加丰富。</p><p>如今火遍天的VR技术，被保利威视主要应用于两个教学领域：</p><p>厨师培训。可以让学员感觉到第一视角是它的大师傅怎么样布局配料、炒菜时的感觉是什么，让学员对高手的感受有具体的了解。</p><p>医学手术培训。这是医疗手术培训的痛点，手术室是相对比较狭小或要求没有人打扰的环境，不可能找个人去看怎么样做手术。主刀医生戴着全景摄像头设备，让远程学员体验到当时的场面，而且不会干扰手术的进行。</p><p>传统的视频，即使高清1080P的视频，视频传输量相对VR来说小很多，基本是1/4。医疗场景是个刚性需求，而医学要求非常清晰的高精度画面。VR数据流量大、造成的码率过大是现在遇到的一个问题。在私有网这个问题并不明显，但在公有网如何快速实现高清、远程、身临其境的VR医疗教学现在还是一个巨大的技术挑战。</p><p>谢晓昉认为保利威视的技术其实是连接器，用来连接内容制造者以及VR播放者的解决方案。内容制造者生产各种各样的视频，企业、教育机构;保利威视让设备厂家以及内容生产商通过他们的云视频实现在线VR视频播放，相当于是个VR视频在线播放连接器。</p><p>&nbsp;拆解视频</p><p>一般来说，所谓智能首先在识别，识别各种各样的信号。最初级的识别是语音识别，更难的是图像识别，最难的是视频识别。</p><p>众所周知，视频数据是用非结构化的，我们可以理解为视频是“一坨存在”。那你可能要问，视频是一个完整结构，为什么在保利威视眼里，视频数据是可以被分解的?</p><p>谢晓昉表示分拆的核心就在于音频识别引擎。文字化之后可以被检索，且能和视频内容进行关联。识别率第一依赖算法，第二依赖于训练库的大小。机器学习，某一个领域文件越多，识别的机会越多，识别率越高。保利威视有2700万个视频，分布在不同的教育类别里，比如建筑师培训，医学考证培训，公务员培训…这些知识库的积累量很多，通过他们的算法可以让视频播放之后，进行音频识别。第二，训练。识别完之后不是单纯形成内容，而是内容和时间戳是关联起来，这样可以让机构快速定位知识点，把这些知识点通过数据方式进行结构分类、多维度分类。</p><p>还有声纹识别，和语音识别在一起。比如在特朗普的音频里，知道他的语音识别特征，会在几十万或上百万视频里找到那个人的声音。相当于在深度学习和人工智能领域，视频数据结构化以后，进行大数据挖掘。还不是很明白?想象当你想找一个人，通过摄像头的截取图像就能识别人脸。原理就是把人脸数据变成可以被快速被检索出来字符型数据。而声纹从根本意义上和人脸识别原理是一样的，只是处理的是音频数据。目前，保利威视和中大的博士团队进行的合作中，从音频识别，到图像识别，再到视频识别，还有VCR光学识别，都已经有比较大的进步，声纹识别已经比较成熟。</p><p>深挖数据</p><p>保利威视现在有细分的归类数据库：一是行为数据，二是视频内容数据(结构化数据)。</p><p>行为数据，保利威视作为基础视频的云服务提供商，会向B端用户输出播放器，B端用户播放视频会产生很多操作，比如手机的停留、暂停、拖拽、反复观看，这些都是行为数据，每一条都会记录到后台非关系型数据库里。每天有超过1亿数据存在我们后台。这些数据能对学员的行为进行分析，如果视频某一段学生不停观看视频，说明这个视频要么太难懂要么老师没有讲清楚。还有课件视频的完成率，比如一个10分钟的视频有80%的人看完了80%的内容，或者一个视频80%的人看完了50%的内容，那么很明显，这个视频的质量是有差异的。通过这些数据的对比，能够分析出课件的质量、知识点的难度，以及其他教学指标。</p><p>由于云识别而产生大量结构化的视频内容的数据。虽然这些资源资产属于用户，但依旧可以使得保利威视能够帮助用户，在这么大的库里让他们识别数据更精确。</p><p>任何的人工智能都是通过大量的基础数据来进行算法或程序的深度学习之后，才能产生所谓的智能。算法永远只是一方面，数据才是最重要的。</p><p>很多行业、很多产品，当他们刚刚问世的时候，都是非常幼稚、非常简陋的。但是技术就是在我们不以为然当中以一种指数级的速度在往前发展。一旦技术让我们刮目相看，让人们觉得已经很成熟甚至近乎完美的时候，不仅仅表示现有的产品成熟，而且表明它正在以更高的速度往前发展。它真的会带来我们今天还不能清晰想象的一种文明的巨变。</p><p>技术随时会突破，但资源的积累在短时间内无法形成的，这正是保利威视的优势。</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/618bc8f9-a367-40de-972c-e31b4ca05815.jpg', '1', '2016-11-15 21:12:00', '2016-11-18 15:39:45');
INSERT INTO `oa_news` VALUES ('14', '1', '高端手机又陷乱战，华为Mate9 不如小米MIX 让人失望', '11月14日，华为在上海召开了年度新品发布会，这次发布会上，华为CEO余承东在现场发布了全球首款支持谷歌Daydream系统的Mate9系列手机，同时也正式推出了华为VR眼镜。此次发布的华为Mate9', '<p>11月14日，华为在上海召开了年度新品发布会，这次发布会上，华为CEO余承东在现场发布了全球首款支持谷歌Daydream系统的Mate 9系列手机，同时也正式推出了华为VR眼镜。</p><p>此次发布的华为Mate 9系列包括Mate 9、Mate 9 Pro和保时捷版Mate 9三款手机产品。</p><p>均搭载了基于安卓7.0系统深度定制的EMUI5.0系统，这一系统将全面支持谷歌DayDream平台。这也是自10月谷歌在开发者大会上发布了搭载自家DayDream平台的Pixell手机之后，全球第一款支持DayDream平台的手机。</p><p>高端手机市场怪圈难破</p><p>首先我们来看看华为Mate 9的外观，其外形与过去见到的谍照变化不是很大，正面采用了超窄边框和虚拟键设计，并且或许是由于具备虹膜识别的缘故，在前面板上方增加了一枚镜头。</p><p>至于手机的背面，该机则搭载了双摄像头，左右分别为LED闪光灯和激光对焦模块，而在两枚镜头中央则标注了“LEICA”字样。</p><p>华为Mate 9还在摄像头下方设计有圆形的指纹识别传感器，该机同样配备的是27mm焦距的SUMMARITH镜头，镜头光圈增至F2.0。</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/967fa3d1-8423-42b8-8084-efb33058c0a2.jpg', '1', '2016-11-15 21:15:03', '2016-11-18 14:36:17');
INSERT INTO `oa_news` VALUES ('15', '1', '13亿人找不出11个踢足球，5个打篮球的，姚明一语说出了真相', '在刚结束的比赛中，国足两中门框，最终0-0战平了卡塔尔，早在里皮上任之时，国足和球迷都对里皮抱有非常大的希望，希望里皮能够率领中国男足进军12强，但梦想照进现实，国足的情况并不能迅速改变，这需要长时间', '<p>在刚结束的比赛中，国足两中门框，最终0-0战平了卡塔尔，早在里皮上任之时，国足和球迷都对里皮抱有非常大的希望，希望里皮能够率领中国男足进军12强，但梦想照进现实，国足的情况并不能迅速改变，这需要长时间的积累。</p><p><img src=\"http://p3.pstatp.com/large/111100071aac019c95ea\" alt=\"13亿人找不出11个踢足球，5个打篮球的，姚明一语说出了真相\"></p><p>国足也在这场比赛结束后刷新了本队世预赛球荒记录，比6年前延长了1小时，国足出现渺茫，网友对此也表示担心：“为什么13亿人找不出11个踢足球的，5个打篮球的？”姚明在之前接受美国记者的采访，谈到中国体育机制的问题时，姚明也曾说出了自己的见解。</p><p><img src=\"http://p1.pstatp.com/large/111100071a169c78386a\" alt=\"13亿人找不出11个踢足球，5个打篮球的，姚明一语说出了真相\"></p><p>在中国体育界，姚明是数一数二的人物，也是中国男篮历史上头号球星，接受过美国文化和中国文化的姚明对中国体育的发展还是具有发言权的。作为NBA历史上第一位外籍球员，姚明在美国打NBA时，遇到过如日中天的奥尼尔，也打爆过爆炸力极强的魔兽，姚明的努力也受到了众多球星的尊重，和中国不同的是，美国篮球这么强大的同时竟然也只能排在体育类第三位，而在中国，篮球和足球却受到很多球迷的喜爱。</p><p>里约奥运会上中国男篮一场未赢，再到现在国足0-0战平卡塔尔，又不得不让外界谈起体制培养的问题，姚明也认为，目前中国的体育系统落后美国几十年，因为美国把体育已经当成了教育，比如在中学和高中时，美国都有属于学生的联赛，他们进行对抗和较量，彼此提高自己，但是在中国，这些都刚刚开始，现在这个阶段也是在探索的阶段，中国体育和教育就是分开的，因为体制内的体育和教育仍然分割不兼容的，就像两条腿一直往外支着，一直合不拢，这个过程非常艰难，而且还会持续很久，但是中国体育已经取得很大进步了。</p><p><img src=\"http://p9.pstatp.com/large/11120006150661e0e8a1\" alt=\"13亿人找不出11个踢足球，5个打篮球的，姚明一语说出了真相\">中国在选取足球运动员和篮球运动员时，很多考察员都会很看重身高，认为只要身高足够就可以拥有足够的竞争力，但是他们却忽略了运动员的身体和天赋，如今，CBA能不能“管办分离”还存在问题，姚明也确实想为中国足球贡献一份力量。足协在里皮上任之时也作出了改变，把权力都交给里皮，足协也在尝试着进步。<img src=\"http://p9.pstatp.com/large/119700007c28b3293fe8\" alt=\"13亿人找不出11个踢足球，5个打篮球的，姚明一语说出了真相\">面对中国庞大的人口数量，姚明也表示：“中国14亿人口，却找不到11个踢足球和5个打篮球的，关键在于体制无人可以选择，注册的篮球运动员和足球运动员优秀的运动员还真的不多，天赋达到顶峰的更是难找。”姚明的谈话确实说到了关键点，中国体育面临的坎坷道路也才刚刚开始，但也是中国体育进步的开始。</p><p>本文为头条号作者原创。未经授权，不得转载。</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/f3765087-1278-47cd-b359-eca37a85537b.jpg', '1', '2016-11-16 11:10:50', '2016-11-18 14:36:14');
INSERT INTO `oa_news` VALUES ('16', '1', '2016中国民营企业500强发布会在北京召开', '亿欧8月25日消息：今天上午，2016中国民营企业500强发布会在北京召开。榜单显示，华为控股有限公司以营收总额3590.09亿排名第一，苏宁控股、山东魏桥集团分别以3502.88亿、3332.38亿', '<p>亿欧8月25日消息：今天上午，2016中国民营企业500强发布会在北京召开。榜单显示，华为控股有限公司以营收总额3590.09亿排名第一，苏宁控股、山东魏桥集团分别以3502.88亿、3332.38亿分列二三位。联想、正威国际、大连万达、中国华信、恒力集团、江苏沙钢、万科，分列四至十位。</p><p>此外，全国工商联经济部部长谭林发布了《2016中国民营企业500强发布报告》。报告显示，2015年，民营企业500强入围门槛达101.75亿元，比上年的95.09亿元净增6.66亿元。2015年，民营企业500强资产总额为173004.87亿元，户均346.01亿元，增幅达25.16%。</p><p>从行业角度看，民营企业500强前10大行业，呈现出由传统产业向新兴产业调整的趋势，其中，零售业入围的企业数量同比出现了减少。下面，亿欧将500强中19家零售业企业整理如下：</p><p>苏宁控股集团 （第2名）</p><p>苏宁创立于1990年，员工18万人，在中国和日本拥有两家上市公司，下设苏宁云商，苏宁置业，苏宁金控，苏宁文创，苏宁体育和苏宁投资六大产业集团，形成商业、地产、金融、文创、体育、投资六大产业协同发展的格局。</p><p>其中，苏宁云商面对互联网、物联网、大数据时代，坚持零售本质，持续推进O2O变革，全品类经营，全渠道运营，全球化拓展等，目前，苏宁连锁网络覆盖海内外600多个城市，拥有近1600家门店，其中，线上平台苏宁易购处于中国B2C市场前三。</p><p>京东集团&nbsp;（第11名）</p><p>京东于2004年正式涉足电商领域，2014年5月，京东集团在美国纳斯达克证券交易所正式挂牌上市；是中国第一个成功赴美上市的大型综合型电商平台；2015年7月，京东入选纳斯达克100指数和纳斯达克100平均加权指数。截至目前，京东集团拥有近11万名正式员工，业务涉及电商、金融和技术三大领域。</p><p>目前，京东商城、京东到家、跨境电商、京东金融、京东技术是京东集团的五大部分。</p><p>三胞集团有限公司&nbsp;（第19名）</p><p>三胞集团有限公司，是一家以信息化为特征、以现代服务业为基础的大型民营企业集团，以大数据为核心，构建“金融、健康、消费”三大产业，形成“金、木、水、火、土”五大行业协同发展的产业生态圈，努力成为有中国特色、可持续发展的世界级企业组织。</p><p>集团现拥有宏图高科、南京新百、万威国际、金鹏源康、富通电科等多家上市公司，以及宏图三胞、乐语通讯、宏图地产、广州金鹏、中国新闻周刊、麦考林、拉手网、商圈网、英国House&nbsp;of&nbsp;Fraser、美国Brookstone、以色列Natali等国内外重点企业，下属独资及控股企业超过100家，全球员工总数超过9万人，其中海外员工3万人。</p><p>新疆广汇实业投资（集团）有限责任公司&nbsp;（第20名）</p><p>新疆广汇实业投资（集团）有限责任公司创建于1989年，经过27年发展，形成了“能源开发、汽车服务、房产置业”三大产业。2015年，集团完成经营收入1053亿元，实现净利润34亿元，是西北地区唯一一家总资产、经营收入均突破千亿大关的民营企业，员工总数超过8万名。</p><p>在全面布局三大产业的同时，广汇集团还打造广汇男篮、广汇雪莲堂美术馆两大知名品牌。广汇男篮1999年成立，2002年进入中国男子篮球职业联赛（CBA）。</p><p>物美控股集团有限公司&nbsp;（第121名）</p><p>物美自1994年12月在北京率先创办综合超市以来，已经拥有大卖场、生活超市、便利商店、百货店、家居商场等各种业态。物美在中国建立了服务城乡居民的连锁零售网络，物美店铺覆盖京津冀、江浙沪、陕甘宁、以及粤、鲁、闽、鄂、云、贵、川、渝等地，年销售额超过400亿元，年纳税额超18亿元，位列中国连锁百强前茅。此外在2014年，物美收购控股了英资在华企业中国百安居。</p><p>步步高集团（第138名）</p><p>1995年3月，步步高集团由王填创立于湖南湘潭，目前有商业、置业、金融三大版块，涉及零售业、电子商务、商业地产、互联网金融、大型物流等多业态的大型商业集团。</p><p>线下业务主要集中于湖南、江西、广西、四川、重庆、云南、贵州等西南区域，20年来，公司逐步发展成为拥有超市、家电、百货、购物中心、便利店、物流、电子商务、服装、餐饮等多业态的大型商业集团，拥有门店452家；线上业务已经在全国乃至全球铺开。</p><p>弘阳集团有限公司（第140名）</p><p>弘阳集团1996年创立于江苏南京，前身为香港红太阳集团，现已形成以商业运营、地产开发、物业服务三大产业协同发展，具有投融资能力的综合性国际企业集团。目前，弘扬产业有以下6大板块：城市综合体（弘阳广场）、地产项目、家居建材、物流运输、星级酒店和物业服务。</p><p>北京运通国融投资有限公司（第206名）</p><p>运通集团创立于20世纪80年代，成立于黑龙江哈尔滨市，20余年来运通致力于汽车行业的发展，已从最初的一家维修工厂发展到现今拥有几十家专业4S店的集团公司，成为中国最有影响力的汽车服务企业之一。&nbsp;</p><p>今后集团化、跨地域经营、品牌化管理是运通集团的发展模式；多品牌集团化的经营模式，降低了企业经营风险；从高端产品到中级产品，合理的产品布局为运通赢得更大的市场份额。在立足于汽车服务行业的同时，运通集团的业务正朝着多元化方向发展，范围已拓展到了房地产等投资领域，并凭借着良好的业绩，为建立新的品牌4S店提供雄厚的资金支持和充足的土地资源，让我们能够实现短期内完成规划申请和建设工作。</p><p>唯品会（中国）有限公司（第213名）</p><p>唯品会成立于2008年08月，总部设在广州，是一家专门做特卖的网站。主营业务为互联网在线销售品牌折扣商品，销售产品涵盖中高端服装、鞋子、箱包、家居用品、化妆品、奢侈品等。2012年3月23日，公司在美国纽交所上市，是华南首家在美国纽交所上市的电子商务企业。</p><p>唯品会的商业模式是“名牌折扣+限时抢购+正品保险”的创新商业模式，每天早上10点准时上12-18个新品牌，超低折扣，限时抢购。</p><p>江苏文峰集团有限公司（第221名）</p><p>江苏文峰集团是以商贸业、酒店业为发展主体的综合型企业集团，集团旗下拥有五星级的南通有斐大酒店、四星级的南通大饭店和文峰饭店，三星级标准的上海家宜宾馆以及多家商务连锁酒店。集团控股的连锁商业企业—文峰大世界连锁发展股份有限公司，拥有多种形态的连锁企业800多家。2011年6月“文峰股份”在上证所成功上市，成为市值百亿的上市公司。</p><p>上海均瑶（集团）有限公司&nbsp;（第251名）</p><p>均瑶集团是以实业投资为主的现代服务业企业，创始于1991年7&nbsp;月。现以航空运输、商业零售和金融服务为三大主营业务，涉及教育服务、信息科技、投资等领域，现有员工一万多人。&nbsp;商业零售板块中的核心企业大东方是江苏省百货零售的龙头企业，也是无锡市首家上市的商贸流通企业集团。均瑶如意文化是国内顶级的品牌特许经营商，是北京2008年奥运会特许经营商和零售商，中国2010年上海世博会首批高级赞助商，现与上海迪士尼等开展合作。</p><p>万马联合控股集团有限公司（第258名）</p><p>万马联合控股集团有限公司是中国民营企业集团，业务覆盖电气电缆、医疗器械制造、通信电子、房 地产开发、新能源、有色金属贸易等多个领域。面对新的市场竞争格局，万马联合控股集团将秉承“正人、正事、正品”的企业文化，坚持“素质决定实力”的理念，大力 推进技术创新、资本运营、国际化拓展等战略，全面推动万马集团向现代化、国际化企业进一步转型，全力打造“创新型企业”、“实力型企业”，实现“百年万马”的目标。</p><p>金花投资控股集团有限公司（第269名）</p><p>金花投资集团成立于1991年，现已发展成为涉足投资、制药、商贸、高科技、电子商务、酒店及高尔夫、教育等领域与产业，拥有两家上市公司，员工两万名，总资产近400亿元人民币的大型企业集团。</p><p>山东远通汽车贸易集团有限公司（第305名）</p><p>远通集团成立于1976年，现有资产50亿元，员工7000人，目前，在山东及周边地区建有19个汽车经营园区，20多家汽车零部件代理中心库，经营36个个汽车品牌、72个配件品牌、100多个汽车用品品牌，建有100家县域营销网点，形成独具特色的市县乡村四级营销服务网络体系，总营销服务面积达200多万平方米。</p><p>润东汽车集团有限公司（第329名）</p><p>润东汽车是一家专注在豪华高端汽车品牌为主导的综合服务商。成立于1998年，于2001年9月在江苏徐州开设首家汽车经销店后经过快速发展已成为总部位于华东地区规模最大的豪华/超豪华汽车经销商之一。集团旗下网络店面数量截止到2015年底共计70家，主要服务于江苏、山东、上海、浙江等以华东区域为主的沿海富庶地区城市消费者。于2014年8月12日在香港联交所主板成功上市。</p><p>浙江东杭控股集团有限公司&nbsp;（第407名）</p><p>浙江东杭控股集团有限公司是胡宝泉驾驭的、全自然人出资的集团型民营企业。集团现有业务涵盖钢材贸易、工业制造和铁矿资源开采、房产经营等三大朝阳产业链。集团下设11家子公司，净资产4.5亿元,总资产10亿多元，母公司注册资金为1亿元。</p><p>江苏华地国际控股集团有限公司&nbsp;（第446名）</p><p>江苏华地国际控股集团有限公司是一家以长江三角洲地区为战略重心，专注于零售连锁领域的投资和管理的大型企业集团，并于2010年在香港主板成功上市。</p><p>经过数十年的发展，华地国际已发展成为泛长江三角洲同时经营百货店及超市业务的领先双模式零售连锁店经营商，形成“八佰伴”、“华地百货”、“大统华”三大核心品牌，网点布局跨江苏、安徽两省南京、无锡、镇江、马鞍山等近十个城市。截至2014年底，华地国际拥有近50家大型连锁门店，经营面积120万余平方米。</p><p>欧龙汽车贸易集团有限公司&nbsp;（第457名）</p><p>欧龙汽车集团成立于1995年2&nbsp;月，由林建忠投资设立的全国无区域综合性汽车集团公司。业务范围涵盖机动车驾驶学校、新车销售、汽车维修、配件销售、二手车业务、汽车俱乐部、汽车衍生服务及机动车检测等完整汽车产业链的专业化汽车及汽车服务企业。</p><p>经过21年经营，欧龙集团现有奔驰、捷豹、路虎、克莱斯勒、道奇、JEEP、广汽菲克、一汽-大众、福特、雪佛兰、东风标致、东风雪铁龙等15个知名汽车品牌30余家品牌经营店，1家机动车检测服务中心及1家汽车驾培学校，产品覆盖面广，能够满足不同客户群体的需求，为浙南地区经营规模最大的汽车经销商集团之一。</p><p>成都红旗连锁股份有限公司&nbsp;（第500名）</p><p>红旗连锁创建于2000年6月22日。2010年6月9日，整体变更为成都红旗连锁股份有限公司。公司已发展成为中国西部地区最具规模的以连锁经营、物流配送、电子商务为一体的商业连锁企业，是中国A股市场首家便利连锁超市上市企业。</p><p>目前在四川省内已开设2400余家连锁超市，就业员工17000人，2015年上缴税收和社保超4亿元；拥有四座物流配送中心。</p><p>本文作者郭之富，亿欧专栏作者；微信：guo_05（添加时请注明“姓名-公司-职务”方便备注）；转载请注明作者姓名和“来源：亿欧”；文章内容系作者个人观点，不代表亿欧对观点赞同或支持</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/c1f0d0d5-19cd-40e1-ac0f-6f95feae7544.jpg', '1', '2016-11-18 15:41:36', '2017-02-23 20:50:51');
INSERT INTO `oa_news` VALUES ('17', '1', '富士康小米们的印囧之路', '随着中国大陆人工、材料成本的快速攀升，以及相关政策的倾斜，中国制造已经开始了大举外迁的规划，企业主们一面缓慢地改良生产线体，实施机器换人，一面又挖空心思地寻找更廉价的劳动力。事实上，制造业在20年前从', '<p>随着中国大陆人工、材料成本的快速攀升，以及相关政策的倾斜，中国制造已经开始了大举外迁的规划，企业主们一面缓慢地改良生产线体，实施机器换人，一面又挖空心思地寻找更廉价的劳动力。事实上，制造业在20年前从欧洲大批量来到中国，也是基于相似的背景。现如今，欧洲同样的轮回来到中国，正可谓，饱暖思淫欲：沿海城市已充分地富裕起来，使得摆脱制造业的冲动强烈而干脆。越来越多的中国人认为，制造业应该是贫穷落后国家该做的，只有穷苦人家的小孩才会坐到流水线上，终日做着单调、枯燥的工作，我们在拥有了小幅的财产之后，应该做些更体面的工作，比如创业孵化、成功导师，哪怕做一个快递小哥、外卖专员也好，而这些因素拼凑到一起，最终形成了“制造业大批人员流失，生产元素越来越贵，却无人潜心打磨品质”的尴尬局面。</p><p>中国制造要外迁，首选是印度，最重要的原因莫过于其丰富的人力资源，这里不仅有取之不尽、用之不竭的人头，而且价格非常低廉，同时，考虑到印度的消费潜力，越来越多的制造企业、手机品牌都开始在这里建制工厂，小米踏上印度之旅许久，红米Note3现已成为印度最受欢迎的手机之一；华为也开始筹划在印度生产和销售，至于说富士康要在印度建造12座工厂的事儿，早已是尽人皆知，更何况，他们最大的客户苹果CEO库克对印度也产生了浓厚的兴趣，但制造业元素众多，牵扯到的又何止人力，它更关乎制度、文化和人性。</p><p>印度市场，金矿还是烂泥潭？</p><p>毫无疑问，从人力资源和消费潜力来看，印度国土就是一座巨大的金矿，他们过剩的东西，无处安置的人，恰恰是中国制造企业最缺少的生产元素，但干过制造业的人都清楚，制造从来不是生产元素的机械拼凑，尤其是人的管理难度非常大，而当你想要把人变成工具的时候，难度又至少增加20倍，这就意味着富士康们想要利用印度的人力资源，首先要对他们进行天翻地覆的改造。</p><p>谈到人员改造，我们不得不无奈地发现，世界上没有哪一个国家的人，能如中国人般勤劳，好像机器一样永不停歇，印度人更是不具竞争力，事实上，他们正是以懒惰和脏闻名，还记得那个著名的笑话吗:英国人在机场安检时，被查出7个内裤，他隐晦地回答，Monday,Tuesday,Wednesday…意思是需要一天换一条；而印度人则被搜查出12内裤，正当安检人员佩服印度人爱干净的习惯时，他们却说January,February,March…可见印度人的生活习惯还有待改善，一些去过印度的人，都能切身地感受到这个民族缓慢的生活节奏，那些路边的饭馆、商店等等，很少能在9点前开门，也很少能坚持到9点以后，每次吃饭都免不了等待很长时间，于是，大家非常容易就学会了“饭前发呆”。</p><p>显然，印度人的生活工作习惯与中国制造的需求不太相符，地球人都听说过，东南沿海制造企业疯狂工作的故事，企业雇主在夜里12点接到订单之后，可以立即叫醒正在熟睡的工人，准备物料、调试设备，开工，到第二天早上9点，客户就可以拿上产品去巴萨罗纳参加全球移动大会…</p><p>笔者认为，在整个印度历史上都不会出现类似的传说，事实上，他们也不推崇这样的传说，小米、富士康、华为们要想在印度复制中国的辉煌，难度实在太大，谨记不要搞大跃进，把先进的设备、车间都建立起来，他们更应该从低端制造、低端产品开始，比如在印度制造中的流程设计，一定要多依靠人工来完成，这样就省去了设备的投资，纵然是人力的效率不高，也可以同他们低廉的工资相匹配；在第一阶段的低端制造业中，企业要注重对印度本土员工进行”洗心革面”式的教育，用现代的管理制度以及金钱的刺激，让印度员工一改往日的懒散习惯，甚至改变当地社区的风气，但这实在是个长期的、潜移默化的过程，一项漫长而艰巨的任务，大概也只有富士康、华为这种巨无霸企业能承受之。</p><p>正如一位制造主管所言，在印度建设工厂，找政府批一块地，盖一个车间比较容易，把设备搬过去也不难，最大的难点在于把中国的员工以及中国人对工作的热忱，对钱的虔诚也一并搬过去，而这或许也是支撑中国制造的真正脊梁。</p><p>洗心革面，制造业如何改造印度？</p><p>现在，中国制造去印度，正处于一种比较尴尬的境地，去印度，是看中了那里的廉价劳动力，但看上去，最难搞定的也是人工，如前文所述，这是一个需要长期耕耘、潜移默化的过程。</p><p>事实上，印囧只是中国制造、中国品牌出海的一个缩影，只是“人在囧途”的系列之一，但总得来说，印度是一个值得探索的市场，这里拥有12亿人口，按照他们的生殖频率，未来很可能会超越中国，有人的地方就要有消费，但凡能在这里推广一种产品，都将得到巨大而丰厚的回报。相关数据显示，2015年印度移动手机出货量为2.75亿部，占全球市场的14%，也是全球第二大移动手机市场，但我们必须要注意到智能手机出货量仅有8100万部，占比不到30%，也就是说，他们70%的用户都还认为诺基亚是世界上最优秀的手机，这个事实对于小米、华为们来说，实在是个太美妙的事儿了</p><p>其实，做生意、做产品有两种境界，一个是自己提出的需求，比如日常生活用品、食物、矿泉水等等，属于比较低端的生意，做起生意来竞争非常激烈；另一种则是商人帮消费者开发出新的需求，而后再把自己的产品卖出去，比如乔布斯开发出了移动互联网，帮助消费者开发出了“移动上网”的需求，于是iPhone智能手机大卖特卖。现在，印度的情况恰如90年代的中国，制造业、手机品牌要想在印度得到长足的发展，不得不经历这样一个“开发需求“的过程。如今，我们看印度，城市面貌差，街道脏乱差，工人素质差，但这一切都是源于缺乏”物质的刺激”，试想一下，当先进的中国制造业入驻之后，势必会为当地社区带来改变，印度人可以看到巍峨的车间，整洁的街道、规范的工作秩序，以及异乡人严谨而勤奋的生活态度，更重要的是，他们也会看到这种运作模式所带来的好处，比如更高的薪水，更舒适的生活，更美妙的团队感觉，这些奢靡的灯红酒绿，不是好词，但对于需要激发工作愿望的国家来说，实在是太有用了。具体到智能手机等电子产品，显然，印度人还没有开发出”移动上网”的习惯，他们只有2%的人知道iPhone优质到爆表的滑动触感，以及揣着一个最新款的iPhone是多么地爽，所以，印度市场的发展只是再等待一个巨大的引擎，一旦这个欲望被开发出来，他们的潜力将无可限量。</p><p>印度的街道凌乱，他们的火车比中国春运挤500倍以上，牛粪也到处都是，笔者认为，印度人之所以能忍受这种贫穷和落后，除了天生懒惰之外，更重要的原因则是，他们没有见过更好的生活。希望中国制造、中国品牌能本着一种”改造印度”的心态去做生意，等到他们的欲望被彻底释放出来，卖上2亿部手机，只是顺便的事儿</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/dc7303ae-49aa-4128-a81f-80a1ddd6e122.jpg', '1', '2016-11-18 15:43:16', '2017-02-23 20:50:53');
INSERT INTO `oa_news` VALUES ('18', '1', '贝贝网创始人张良伦： 市场环境差，反而能诞生好公司', '2014年4月，贝贝网创立，专做母婴特卖。上线不到1年，由“风投女王”今日资本徐新领头，新天域、IDG、高榕资本等明星VC跟投的资本方阵向这个电商团队投下了1亿美元的资金。徐新解释投资理由时说，“在他', '<p>2014年4月，贝贝网创立，专做母婴特卖。上线不到1年，由“风投女王”今日资本徐新领头，新天域、IDG、高榕资本等明星VC跟投的资本方阵向这个电商团队投下了1亿美元的资金。徐新解释投资理由时说，“在他身上，仿佛看到了刘强东的影子。”</p><p>　　徐新口中的他，就是贝贝网创始人张良伦，1986年出生，今年刚满30周岁。昨天，坐在钱江晚报记者面前，张良伦敞开心扉，畅谈了这两年多来的创业感受。</p><p>　　越是较差的市场环境</p><p>　　越是可能诞生出色的公司</p><p>　　资本寒冬在我看来是去年下半年才真正开始的，因为在2015年1月份我们还有一次融资，当时的资本市场还是很热的。</p><p>　　坦诚地说，连我自己都认为那是一个天价，但当时的市场环境就是这样。</p><p>　　今年我们也做了一轮融资，相比一年前，无论是创业者还是投资人都变得更加理性。不再是一味的打价格战、一味的烧钱，恨不得拿一个亿烧出一个亿的交易额，那已经有点脱离商业的本质和企业运营的本质了。</p><p>　　很多变化消费者是感受得到的，比如打车补贴少了，外卖开始收5元配送费了。这在我看来是好的，因为这些变化更接近商业的本质和企业运营的本质。</p><p>　　这一年，让我们的团队变得更聪明了。知道去追求利润，并且当我们去追求赚钱的时候，发现是能赚到钱的。贝贝的净利润一直保持着很好的正向增长，我们可以说自己是一家赚钱的企业，但在去年的环境之下我们很难想象自己会去追求盈利这件事，因为所有人都不考虑，所有人都在追求规模效益。</p><p>　　所以这一年，我还是感触蛮深的。越是相对较差的市场环境，越是可能诞生更加出色的公司。</p><p>　　资本市场寒冬</p><p>　　为何还能融到资金</p><p>　　我们是老股东开完董事会以后直接给的资金。其实我们目前的资金流是不错的，因为去年我们就已经意识到融资环境的变化，做了资金储备。但股东给嘛，我们就要了。</p><p>　　创业者应该思考在假定最糟糕的环境，或者没有资金进入的情况下，如何让公司持续地正常运营。以贝贝目前的规模，如果账上没有5亿~10亿元资金，我心里是不踏实的。所以在资金不足的情况下，你要及早进行企业战略的调整，去适应环境。</p><p>　　拿贝贝来说，我们已经是一家相对安全的企业，因为我们已经是赚钱的企业，对资本的选择余地很大。越是这样资本越喜欢你。</p><p>　　我们的不安全感</p><p>　　来自那些创新者</p><p>　　电商行业的从业者都是很有危机感的，因为不断会有让你大跌眼镜的新模式出现，我们的不安全感来自那些创新者。贝贝跟近两年发展起来的<a href=\"http://product.it.sohu.com/list/subcate_685_1.html\" target=\"_blank\">其他</a>电商有一个很大的不同，我们是从国内市场开始做的，而别人大多数是从跨境开始做的。我们认为奶粉、尿不湿（的跨境消费）很难有长期发展，所以我们一开始就忍住了，去做相对冷门的童装童鞋这类“非标品”，因为它的“护城河”特别高，有利润空间，而且很难打价格战。</p><p>　　有两个数字在贝贝网的运营中很有意义：我们有70%用户来自APP，70%的商品是“非标”的童装童鞋类商品。而以往的母婴电商平台往往主打奶粉和尿不湿这些通用的“标准化“商品，一来这些商品采购简单，二来需求量巨大。但同时也意味着竞争激烈、利润微薄。童装童鞋则不同，即使是最有名的巴拉巴拉，在市场上占据的份额也很小很小，市面上大多数品牌还是消费者没听说过的，非标准化的商品就给平台上的商家留足了利润空间。同时“80后”这一代人使用<a href=\"http://product.it.sohu.com/list/subcate_57_1.html\" target=\"_blank\">手机</a>的时间已经超过用电脑的时间，所以以APP为主打平台占据移动互联网也让贝贝网站在了风口之上。</p><p>　　迄今为止，我觉得我们最艰难的决策就是去做供应链。因为贝贝的管理层绝大多数都是阿里系出来的，我们更擅长做平台，但对供应链是不懂的。你让我去管采购、管仓储、管配送，真的很辛苦。但又不能不做，因为如果不做，消费者不可能信赖我们。</p><p>　　其实这两年我们做的很多事情都是在解决消费者信赖的问题。我们把产品的供应链梳理到源头，避免中间过多环节，降低成本的同时确保品质。做到现在，我总算感觉比较踏实了。</p><p>　　专注与多元化</p><p>　　没有绝对的对与错</p><p>　　我们当初之所以做母婴，就是因为在做米折网的时候发现母婴品类增长得非常快，是基于数据去发现机会的。所以对创业者来说，只要大方向没有问题，细节是可以不断尝试、调整的。</p><p>　　从我自己的经验来说，创业过程中要注意两个“坑”：一个是打一枪换一个地方，社交火做社交，金融火做金融，这样的创业者是很难成功的，他太容易随大流，没有独立的洞察力和判断力；另一个是过度执着。我觉得创业者最重要的是要有迭代的能力，要有持续的商业迭代。但也要注意，在发现新的增长点进行商业迭代的时候不能跨度过大，一旦跨度过大，你就没有沉淀了。</p><p>　　当你选择的行业不足以支撑你更大的商业目标的时候，要不要变？专注与多元化都是有一个度的，没有绝对的对与错，但创业者经常会在这两者之间迷失。</p><p>　　【创客名片】</p><p>　　张良伦，贝贝网创始人兼CEO，2014年4月创办贝贝网，是目前中国最大的专业母婴APP。先后获得IDG、高榕、今日资本、新天域等上亿美元的风险投资。今年6月再次获得由新天域、北极光、高榕、今日资本等投资的1亿美元D轮融资。</p><p>　　贝贝网上线2年便拥有超过5000多万用户。其创始团队阿里出身，公司高管大多来自阿里巴巴、京东、宝洁、唯品会等知名企业。</p><p>　　【创客看WIC】</p><p>　　第一届互联网大会召开的时候，贝贝网才刚刚成立半年，正试图从母婴行业入手，找到移动电商新的增长点。</p><p>　　第二届互联网大会的时候，贝贝网的用户已经突破千万，合作品牌超5000个，月销售额达2亿元以上，其中无线端占比更是超过了70%。他们总算是找到了一条自己的发展路径。</p><p>　　现在，第三届互联网大会召开在即，张良伦很遗憾错过了今年的报名时间，没能去乌镇见见同行，听听来自世界各地的创业者们的经验分享。</p><p>　　“明年我得去现场。”他说，这回一定得把这件事写在他的日历上。</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/c424e115-855c-4fe1-8ad2-2f1e70159627.jpg', '1', '2016-11-18 15:44:18', '2017-02-23 20:50:49');
INSERT INTO `oa_news` VALUES ('19', '1', '透视前三季度经济增长的积极因素：新动能从何而来', '“这是3D打印而成的中国象棋，通过我们的云制造平台，可以让客户的设计和创作不只停留在三维数据世界里，而是能够在现实中快速还原。”在日前由工信部主办的2016年“创客中国”创新创业大赛决赛上，南京一千零', '<p>“这是3D打印而成的中国象棋，通过我们的云制造平台，可以让客户的设计和创作不只停留在三维数据世界里，而是能够在现实中快速还原。”在日前由工信部主办的2016年“创客中国”创新创业大赛决赛上，南京一千零一号自动化科技有限公司董事长李获鼎告诉记者，他们针对不同需求提供个性化解决方案，让制造变得更简单，“按照当前增速，预计明年公司年收入可达5000万至1亿元”。<br></p><p>“创客平台聚集了很多创新元素，创新对中小企业的转型升级具有很大的推动作用。”工信部信息中心主任孙蔚敏说，未来将通过激励创新、人才培养等多方面支持中小企业创新发展，打造“双创”生态链。</p><p></p><p>实际上，“创客中国”不仅是当前“大众创业、万众创新”的一个缩影，也是我国经济新动能不断孕育成长的一个真实写照。</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/2dfdb79c-cfad-49f5-9cbc-f47e8d73893e.jpg', '1', '2016-11-21 10:01:02', '2017-02-23 20:50:47');
INSERT INTO `oa_news` VALUES ('20', '3', '微软经典 PC 游戏《纸牌》终于登陆 iOS/Android', '微软今天发布了全新iOS游戏：MicrosoftSolitaireCollection（微软纸牌游戏合集），也就是PC平台上的经典游戏《纸牌》。相信大部分使用过微软Windows的用户，都玩过系统预装', '<p>微软今天发布了全新 iOS 游戏：Microsoft Solitaire Collection（微软纸牌游戏合集），也就是 PC 平台上的经典游戏《纸牌》。相信大部分使用过微软 Windows 的用户，都玩过系统预装的纸牌游戏。今天，iOS 版纸牌终于发布了！iOS 版纸牌游戏包含5个免费的游戏：《纸牌》（Klondike）、《空当接龙》（FreeCell）、《蜘蛛纸牌》（Spider）、《TriPeaks》和《Pyramid》。</p><p><a target=\"_blank\" href=\"http://static.cnbetacdn.com/article/2016/1124/77adf4c0f0ce0c8.jpg\"><img src=\"http://static.cnbetacdn.com/thumb/article/2016/1124/77adf4c0f0ce0c8.jpg_600x600.jpg\"></a></p><p>微软纸牌游戏包含每日挑战，可以让玩家获得徽章和成就。同时还集成了 Xbox Live，可以进行游戏进度同步。<a href=\"https://itunes.apple.com/cn/app/microsoft-solitaire-collection/id1103438575\" target=\"_blank\"></a></p><p><a href=\"https://itunes.apple.com/cn/app/microsoft-solitaire-collection/id1103438575\" target=\"_blank\"></a><a href=\"http://static.cnbetacdn.com/article/2016/1124/ece12efb2a65b50.jpg\" target=\"_blank\"><img src=\"http://static.cnbetacdn.com/thumb/article/2016/1124/ece12efb2a65b50.jpg_600x600.jpg\" alt=\"http://static.cnbetacdn.com/article/2016/1124/ece12efb2a65b50.jpg\"></a></p><p><a href=\"https://itunes.apple.com/cn/app/microsoft-solitaire-collection/id1103438575\" target=\"_blank\">点击这里</a>免费下载iOS版微软纸牌游戏。</p><p>Android用户请<a href=\"https://play.google.com/store/apps/details?id=com.microsoft.microsoftsolitairecollection&hl=en\" target=\"_blank\">点击这里</a>。</p><p>访问:</p><p><br></p>', 'http://shencai-img.oss-cn-shanghai.aliyuncs.com/8604234d-dbd0-4fb6-a5fe-45eee227bdb8.jpg', '1', '2016-11-24 14:56:06', '2016-12-13 09:59:37');
INSERT INTO `oa_news` VALUES ('21', '104', '京宝公司党委进行廉政集体谈话', '为落实全面从严治党要求，深入推进党风廉政建设，不断增强企业领导人员的廉洁自律意识，筑牢思想根基，挺纪在前。11月29日，京宝公司党委组织公司班子成员进行廉政集体谈话。会上发放了《关于新形势下党内政治生', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为落实全面从严治党要求，深入推进党风廉政建设，不断增强企业领导人员的廉洁自律意识，筑牢思想根基，挺纪在前。11月29日，京宝公司党委组织公司班子成员进行廉政集体谈话。</p><p><img style=\"max-width: 100%;\" alt=\"QQ图片20161214201819\" src=\"http://file.bucczhjb.com/da3079f2-9d2c-4433-ad86-0997122b0b19.png\"></p><p>&nbsp;&nbsp;&nbsp; &nbsp; 会上发放了《关于新形势下党内政治生活的若干准则》和《中国共产党党内监督条例》学习资料并听取了各系统领导落实“一岗双责”工作情况。\n</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 党委书记、董事长王欣强调，一要进一步提升对党风廉政建设工作的认识，身子下沉，靠前指挥，认真落实“两个责任”，强化党风廉政建设，做到“党委不松手，班子成员不撒手，纪委敢出手”。要落实好“三会一课”、民主生活会等党内政治生活，经常红红脸出出汗，营造实事求是，风清气正的良好政治生态。二要切实落实好 “一岗双责”工作要求，种好“政治责任田”，做到守土有责、守土负责，守土尽责。要结合分管业务，关口前移，严格执行廉洁自律的各项规定。三要强化队伍建设和作风建设，充分发挥基层党组织的战斗堡垒作用和党员的先锋模范作用。班子成员要以《准则》和《条例》规范廉洁从业行为，当好廉洁从政的表率，严格遵守党的政治纪律和规矩，作风建设永远在路上。\n</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 报道/摄影/制作：刘金翠          审核：张少丽</p><p><br></p>', 'http://file.bucczhjb.com/090214f7-e331-4741-9cc3-9fb13ab921c6.png', '1', '2016-12-14 20:14:44', '2017-02-23 20:50:54');
INSERT INTO `oa_news` VALUES ('22', '106', '智慧管控 精益管理 ——京宝公司召开智慧管理平台座谈会', '为测试并完善“智慧京宝管理平台”的功能设计，实现智慧管控、精益管理的预期效果，12月15日，京宝公司邀请集团总经理助理鲍克、总经理助理崔学乔、施工管理部部长宋涛、研究发展部部长周春节、信息中心主任许海', '<p>&nbsp;&nbsp;&nbsp;<font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为测试并完善“智慧京宝管理平台”的功能设计，实现智慧管控、精益管理的预期效果，12月15日，京宝公司邀请集团总经理助理鲍克、总经理助理崔学乔、施工管理部部长宋涛、研究发展部部长周春节、信息中心主任许海涛，以及京城公司、绿都公司、津辰公司、住总置地公司、京宁公司及监理单位的相关领导参加了智慧京宝管理平台首次测试及座谈交流会。\n</font></p><p><img style=\"max-width: 100%;\" alt=\"开会\" src=\"http://file.bucczhjb.com/3f6f019e-c4d5-4b73-aba1-6a7619a93ec9.jpg\"></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 座谈会上，京宝公司党委书记、董事长王欣从智慧党建、总裁驾驶舱、智慧办公平台三部分对智慧管理平台的“投资、建设、运营、服务”智能管控及可视化展示等情况进行了详细介绍。</font><font size=\"5\">参会人员对智慧京宝管理平台的搭建给予肯定，认为京宝公司在短时间内以最经济的投入完成平台搭建，并具备了智慧管控、精益管理的基本功能。同时从投资决策信息的时效性、工程质量的管控要点、政府资源对接等方面进行了交流和探讨。\n</font></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 集团施工管理部部长宋涛表示，智慧京宝管理平台充分结合了京宝模式的业务特点进行了量身打造，在搭建平台的同时，进一步固化了专业化、规范化的业务管理流程，有效防范企业风险并提升了办公效率。建议在工程质量安全智能管控环节，要进一步研究，把握甲方管控要点，通过发挥京宝安全质量督查队的管理特色，形成及时呈现风险隐患、监督跟踪整改事项、整改到位结果反馈并可追溯的闭环管理模式。\n</font></p><p><font size=\"5\">集团总经理助理崔学乔指出，总裁驾驶舱通过简洁直观的动态显示，已初步展示出决策和管控的核心要点，通过智慧协同让决策简单、信息真实、逻辑可靠。建议据此深化并充实，真正做到实时反映现场进度、计划执行、投资控制、经营管理的管理绩效，同时建议依据区域投资建设运营服务商的发展定位，在近期重点充实投资和建设管控模块搭建的同时，兼顾好运营和服务模块的智慧管理，为链接专业协同数据应用软件做好研发，确保管理平台与未来需求形成无缝对接。\n</font></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 集团总经理助理鲍克认为智慧管理平台体现出了对决策管控信息展示的“快、全、准”，真正为京宝公司“十三五”作为区域投资建设运营服务商的定位发展提供了抓手，实现了对施工现场安全质量的直观快速呈现、标准的一级开发业务流程的在线整合，形成了京宝特色。建议在后期应用研发时集兼顾开放性与安全性，满足与相关软件的顺畅对接，构建协同发展的商业生态模式，为集团的智慧发展做出有益探索。\n</font></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最后，京宝公司党委书记、董事长王欣对各位领导来参加首次平台测试及座谈交流会表示感谢，京宝公司将借此座谈会借智参会领导的建议和意见，进一步开拓思路，智慧优化。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/9c8cca7b-1d3d-4809-bf38-74758ce17642.jpg', '0', '2017-02-23 20:56:34', '2017-02-23 20:56:34');
INSERT INTO `oa_news` VALUES ('23', '106', '的风格都是宝贝', '风格的然后他', '<p>风格的然后他<br></p>', 'http://file.bucczhjb.com/a6a85ed9-3c7b-4228-a719-4a977ed3ff59.jpg', '1', '2017-02-23 20:59:37', '2017-02-23 20:59:45');
INSERT INTO `oa_news` VALUES ('24', '106', '匠心专注、精益建设，住总匠魂铸就宝坻精度——京宝公司召开2017年还迁房建设启动会', '新春的味道还未散去，宝坻还迁房建设已开始预热。2月9日，京宝公司召开2017年还迁房建设启动会，集团公司副总会计师、集团人力资源中心主任肖冬梅受邀参加，京宝公司党委书记、董事长王欣、总经理曹蓉，参建项', '<p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 新春的味道还未散去，宝坻还迁房建设已开始预热。2月9日，京宝公司召开2017年还迁房建设启动会，集团公司副总会计师、集团人力资源中心主任肖冬梅受邀参加，京宝公司党委书记、董事长王欣、总经理曹蓉，参建项目项目经理、项目书记、生产经理，质量安全督察队成员，监理单位负责人及相关人员参加。</font><font size=\"5\"><br></font></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会上，京宝公司对2017年还迁建设任务进行了动员部署，明确了福心家园、状元城、蝶恋、金玉共计8个还迁房项目施工进度控制节点及创优目标，并对质量安全目标的保证措施进行了介绍，对项目安全文明奖励基金池管理办法及质量安全督察队相关工作制度进行了交流、宣贯。同时，还为与会人员展示了智慧京宝管理驾驶舱的在线即时监控内容和预期管理效果。2017年京宝公司将以智慧管理平台为载体，以党风廉政意见箱进工地为抓手，推动廉政建设与生产经营同安排、同部署、同检查、同考核，做到监督全覆盖，确保130万平米还迁房建设稳步推进，精益建设，让宝坻区政府放心，让老百姓满意。\n</font></p><p><img style=\"max-width: 100%;\" alt=\"肖总11\" src=\"http://file.bucczhjb.com/ebabb3da-c61b-4458-bf49-1de034f8981d.jpg\"></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 集团公司副总会计师、人力资源中心主任肖冬梅，对京宝公司变“冬闲”为“冬忙”，早计划，早安排，早筹备，早启动的各项工作给予充分肯定。同时提出：一要严把资源供应关口，确保施工现场资源保障供应。对返场人员及时进行安全教育，确保安全教育全部覆盖，严格按照合格供方名录，慎选，优选，精选施工队伍，参与住总集团铁军会战；二要发挥优势，延伸管理。按照“五位一体”的管理目标，密切合作，把宝坻区的还迁工程建设好，展现住总品牌，深耕区域市场；三要坚持智能管理，精益建设。以“京宝智慧管理平台”为抓手，充分利用实名信息系统，做到精细化管理，通过数据对比分析及时统筹资源配置，提高管理效力；四要严格成本管控，按照政府审定标准实现降本增效；五是组织好劳动竞赛，营造良好的赶超氛围，确保质量、安全、工期、功能、成本五统一，实现提质增效；六是将党风廉政建设延伸至班组，以成立外施队临时支部、签订廉政承诺书等形式，让廉政建设深入人心。\n</font></p><p><img style=\"max-width: 100%;\" alt=\"王总11\" src=\"http://file.bucczhjb.com/2b767d6f-2f2d-4411-b58d-069532af2009.jpg\"></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 京宝公司党委书记、董事长王欣，结合工程实际情况，对建设过程中的措施办法提出相关要求：一是热情服务，严格执纪。在施工现场没有甲方和乙方，是平等的建设方和承建方，京宝公司要做好服务，搭建平台，发挥各自优势，精益建设，共同树好住总品牌；二是发挥总包负责制作用。深入推进项目建设地块轮值主席制，发挥集团一体化优势，严格控制质量、工期和使用功能，勇争宝坻区还迁房建设的标杆；三是令行禁止，步调一致。要保证信息及时对称，资源共享；四是以管理创新保证优质工程。推行安全质量基金池的激励机制，实现住总“九零”目标。五是充分发挥党建和工会的促进作用，凝心聚力。组织开展区域联谊活动，丰富业余文化生活，营造“六有”氛围，形成生动活泼的政治局面，激发项目管理活力；六是明规矩、守底线、知敬畏。要切实发挥党风廉政意见箱的监督和警醒作用，营造风清气正的良好氛围。\n</font></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 动员会号召，2016年的成绩已归零，2017年我们要不忘初心，继续前行。项目参建各方要深入领会、贯彻落实住总集团提出的“九五九”经营理念，即“九大”关系、五大格局、“九零“目标，在宝坻区政府的悉心指导下，以政治意识、大局意识、核心意识、看齐意识提升责任担当、主动作为的工作能力，匠心专注，精益建设，撸起袖子加油干，共同做好130万平方米的还迁房建设大会战，一域争光，全局添彩，打响住总品牌，创建宝坻精度。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/cb1eb9f0-0d77-44eb-8943-b1579efc94ea.jpg', '0', '2017-02-24 11:36:39', '2017-02-24 11:36:39');
INSERT INTO `oa_news` VALUES ('25', '106', '京宝公司工会第一届会员大会胜利召开', '2月15日上午，京宝公司召开工会第一次会员大会，集团公司工会主席姜华应邀参加，公司41名工会会员参加了会议，公司副总经理、工会负责人李杨主持会议。大会在庄严的国歌声中拉开了序幕。会议采用无记名投票选举', '<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font size=\"5\">&nbsp;2月15日上午，京宝公司召开工会第一次会员大会，集团公司工会主席姜华应邀参加，公司41名工会会员参加了会议，公司副总经理、工会负责人李杨主持会议。</font><font size=\"5\">\n</font></p><p><img style=\"max-width: 100%;\" alt=\"828A9370\" src=\"http://file.bucczhjb.com/63f036ab-89cf-4a3b-a08c-f23ce8e2d18d.JPG\"></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 大会在庄严的国歌声中拉开了序幕。\n</font></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会议采用无记名投票选举的方式，选举产生了公司第一届工会委员会委员、经费审查委员会委员、女工委员会委员。并召开了第一届工会委员会第一次全体会议，选举产生了公司工会第一届委员会主席和两委主任。\n</font></p><p><font size=\"5\">李杨同志作为公司新当选的工会主席，代表工会委员进行了表态发言，感谢领导和同事的信任和支持，公司工会将在公司党委的领导下，围绕中心工作，更好的服务职工，维护职工权利，为职工排忧解难。\n</font></p><p><img style=\"max-width: 100%;\" alt=\"王总 (1)\" src=\"http://file.bucczhjb.com/4fb0c055-9fe5-453c-8d39-17b6de52f872.jpg\"></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 公司党委书记、董事长王欣代表公司党委对新当选同志表示祝贺，并提出三点要求，一要以集团大党建主题实践活动为载体，以“九大关系”为纲，围绕公司“强根固魂、智能服务、匠心专注、创新共享”的工作思路，以“精益建设、智能管理、持续发展”三大重点工作为切入点，创新方式，搭建平台，凝聚全体职工的智慧和力量，构建“五大格局”，实现“九零目标”；二要把职工的利益实现好、维护好、发展好落到实处。切实保障职工通过职代会形式参与公司民主管理、民主监督；三要做好职工知心人、贴心人。结合外埠工作实际，以管理沙龙、读书分享等活动为载体，提升员工素质，建立员工活动室，激发员工参与业余活动的积极性。创新思路，建立“宝坻之家”，组织开展区域联谊活动，丰富业余文化生活，营造“六有”氛围，形成生动活泼的政治局面，激发项目管理活力。同时他特别强调，我们视今天为落后，2016年业绩已归零，不能躺在成绩的工作薄里，要振奋精神，以归零的心态，满怀信心，上下同欲，朝着更高的目标迈进。\n</font></p><p><img style=\"max-width: 100%;\" alt=\"王总 (2)\" src=\"http://file.bucczhjb.com/4517f5c6-2e5c-46ef-a848-50604658e729.jpg\"></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 集团工会主席姜华对公司工会第一届会员大会的顺利召开及新当选的同志表示祝贺。她表示：工会工作和管理工作就像人的手心和手背，工会是手心，有温暖、有关怀、有凝聚；管理工作是手背，有程序、有规矩、有模式，工会就是把职工的心凝聚到企业管理的手背上，企业这只手才会充满力量。同时她对工会工作提出三个希望：一是要保持政治性。要跟党走，在党委的领导下，保持更高的站位；二是要保持先进性。要解放思想，改革创新，锐意进取，弘扬先进的文化和理念，充分融合各方资源，保持整体的先进性；三是要保持群众性。群众利益高于一切，要把职工凝聚在企业周围。\n</font></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 同时她肯定了公司的发展定位，并提出三点建议，一要有职工情怀，让职工有更多获得感，共享企业发展成果；二要有企业情怀，履行国企责任，服务政府，圆百姓安居梦；三要有民族情怀，跟上时代步伐，抢抓发展机遇，立足企业投资建设运营服务商的发展定位，把握政治经济大势，在京津冀协同发展中，大展宏图，实现公司持续发展，助力集团转型升级。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/377d18e9-f3e3-4dcd-a999-fb4d11f2a4bb.JPG', '0', '2017-02-24 13:07:31', '2017-02-24 13:07:31');
INSERT INTO `oa_news` VALUES ('26', '106', '京宝公司召开2016年度领导班子民主生活会', '根据集团党委的部署和要求，2月16日，京宝公司召开2016年度领导班子民主生活会，公司党委书记、董事长王欣主持会议。集团公司财务总监张恒跃到会指导，公司领导班子成员参加。公司党委高度重视此次民主生活会', '<p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 根据集团党委的部署和要求，2月16日，京宝公司召开2016年度领导班子民主生活会，公司党委书记、董事长王欣主持会议。集团公司财务总监张恒跃到会指导，公司领导班子成员参加。</font><font size=\"5\">\n</font></p><p><img style=\"max-width: 100%;\" alt=\"民主生活会\" src=\"http://file.bucczhjb.com/6066e0ed-4b36-45c4-8ed0-966cc280bf22.jpg\"></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 公司党委高度重视此次民主生活会。会前，制定了民主生活会实施方案并召开专题会议，集中学习了《县以上党和国家机关党员领导干部民主生活会若干规定》，王欣与领导班子之间、领导班子成员之间，领导班子与分管部门员工之间进行谈心谈话、充分沟通思想，并通过向全体员工发放征求意见表等多种形式广泛征求意见建议，最终形成了公司领导班子对照检查材料及个人对照检查材料。\n</font></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会上，首先通报了2015年民主生活会整改措施落实情况和本次民主生活会征求意见情况。王欣代表领导班子从存在的主要问题和表现，产生问题的原因分析，今后的努力方向和改进措施三个方面进行对照检查。随后，王欣和班子成员先后做了对照检查，其他成员逐一提出批评意见和建议。大家坚持原则、坦诚相待、直面问题，收到了相互教育、相互警醒和共同提高、共同进步的效果。\n</font></p><p><font size=\"5\">王欣在总结讲话时表示，要认真对待批评与自我批评，结合问题制定可行的整改措施，真反思，真整改。要通过民主生活会及日常的监督，使批评与自我批评成为常态，不断自我净化、自我完善、自我革新、自我提高，不断增强“四个意识”的思想自觉和行动自觉，做到忠诚、干净、担当；要深刻学习领悟十八届六中全会和全国国有企业党的建设工作会议精神，知行合一，提升领导力，扛起责任。2017年，在集团党委的带领下，团结一心，奋发有为，以“九大关系”为纲，围绕公司 “强根固魂、智能服务、匠心专注、创新共享”的工作思路，全力抓好“精益建设、智能管理、持续发展”三大重点工作，构建京宝“五大格局”，实现“九零目标”。\n</font></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 集团财务总监张恒跃对京宝公司民主生活会会前的准备工作和开展情况表示肯定。同时对下一步工作提出三点建议：一是要通过此次民主生活会，进一步强化领导班子合力。要通过民主生活会的形式，多沟通，多提醒，相互补台，主动担当，无缝衔接；二是在查找问题的基础上，关键做好落实整改。对于查找分析出的问题，不可放松，要结合实际制定切实可行的整改措施，责任到人，不走过场，形成常态机制；三是要廉洁从业，把纪律和规矩挺在前面。强化廉政教育，落实“一岗双责”，营造风清气正的环境和氛围，实现党风廉政建设与企业经营发展“两不误、两促进”。四是要凝集合力，弥补短板。要深入学习贯彻落实国有企业党的建设工作会精神，始终坚持发展这一要务，围绕中心，统一思想，理清思路，促进公司各项工作全面提升，再有新作为，实现新突破，助力集团转型升级。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/d34c91b5-7006-49b0-833e-ca47629af5ba.jpg', '0', '2017-02-24 13:11:12', '2017-02-24 13:11:12');
INSERT INTO `oa_news` VALUES ('27', '106', '精益建设  提升品质  打造有竞争力的住总品牌', '为强化质量保证体系，夯实基础管理，落实“全过程、全方位、全覆盖”的质量管理要求。2月17日集团总工程师杨健康带队到京宝公司召开集团技术质量保证体系建设调研会，集团副总工程师米舰、技术质量部全体骨干人员', '<p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为强化质量保证体系，夯实基础管理，落实 “全过程、全方位、全覆盖”的质量管理要求。2月17日集团总工程师杨健康带队到京宝公司召开集团技术质量保证体系建设调研会，集团副总工程师米舰、技术质量部全体骨干人员，京宝公司领导班子成员，各参建单位总工、项目经理和主任工程师及相关人员参加。</font><font size=\"5\">\n</font></p><p><img style=\"max-width: 100%;\" alt=\"合影2\" src=\"http://file.bucczhjb.com/67e5887f-6d98-4a48-a468-06f38430d4b5.jpg\"></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会前，一行人首先来到在施的福心家园工程，查看了项目复工、技术质量等情况。</font><font size=\"5\">随后在京宝公司会议室召开了调研会，会上，京宝公司党委书记、董事长王欣首先介绍了公司负责的地块划分及任务分配情况、各标段负责人情况、公司智慧管理平台和总裁驾驶舱以及质量安全基金池等工程建设的保障措施。各参建单位总工程师汇报本单位公司和项目两级技术质量体系建设情况。集团公司技术质量部门对在施工程的技术质量给予了指导并提出建设性的意见和建议。\n</font></p><p><img style=\"max-width: 100%;\" alt=\"米总\" src=\"http://file.bucczhjb.com/5c3cd128-357b-4ca5-887a-f52f07cb9325.jpg\"></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 集团公司副总工程师米舰指出，京宝公司要按照“合理、严谨、有活力、多数人能接受”的原则做好质量安全奖罚机制，完善巡视检查制度，将关注点落在工程实体上，多关注现场的安全质量。各参建单位要高度重视质量安全工作，将问题及时整改落实，切实提高质量安全意识。</font><font size=\"5\">\n</font></p><p><img style=\"max-width: 100%;\" alt=\"杨健康\" src=\"http://file.bucczhjb.com/c37d2334-d3c8-44c8-a52e-bf3feb4d6606.jpg\"></p><p><font size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 集团总工程师杨健康，京宝公司前期努力工作取得的高效进展及过程中的创新做法和设想进行了肯定。同时提出四点工作要求，一是精益建设，要以提升品质为目标。在让政府放心，百姓满意上下真功夫；二是精益建设，健全质量体系是关键。按照集团质量管理若干规定配齐技术人员，明确职责。三是精益建设，八项制度是基础。要聚焦实测实量，落实管理层与劳务层合署办公管理；四是精益建设，创新管理是保障。各单位要强化协调沟通，统筹创优目标，统一标准。要强化创新意识，在防止质量通病上下功夫，确保质量安全，争创优质工程，树住总品牌。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/cc322884-709a-4639-ba09-250dac1f1a75.jpg', '0', '2017-02-24 13:14:23', '2017-02-24 13:14:23');
INSERT INTO `oa_news` VALUES ('28', '182', '以球会友 同场竞技——住总集团驻宝坻参建单位台球联谊赛', '为丰富北京住总集团驻宝坻参建单位所有员工的业余生活，搭建沟通交流的平台，展现住总人奋发进取、团结协作的精神风貌，3月1日下午，京宝公司工会组织开展了“以球会友、同场竞技”为主题的台球友谊赛。京宝公司、', '<p><font size=\"5\">&nbsp;&nbsp;&nbsp;<font face=\"微软雅黑\">&nbsp;&nbsp;&nbsp; 为丰富北京住总集团驻宝坻参建单位所有员工的业余生活，搭建沟通交流的平台，展现住总人奋发进取、团结协作的精神风貌， 3月1日下午，京宝公司工会组织开展了“以球会友、同场竞技”为主题的台球友谊赛。京宝公司、各施工单位、北宇物业共计15支队伍参加了比赛，每支队伍选派5名参赛选手，比赛由各项目部书记担任记分人员。\n</font></font><span lang=\"EN-US\" style=\'font-family: \"Calibri\",\"sans-serif\"; font-size: 14pt; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \"Times New Roman\"; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;\'><br></span></p><p align=\"center\" style=\"text-align: center;\"><img style=\"width: 568.33px; height: 470.07px; max-width: 100%;\" alt=\"\" src=\"http://file.bucczhjb.com/ef1bc0d6-4637-4d66-8fbd-9623c0cc741b.png\"></p><p><font face=\"微软雅黑\" size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;小组赛采用抽签分组，赛制采用小局3局2胜，大局5局3胜制。小组赛经过两轮的激烈比拼，8强队伍进入下一轮更加激烈的比拼。对抗的两支队伍之间的比分经常焦灼于1:1、2:2、3:3……的状态，队员们凝神聚力，瞄准、击球，无论高杆、缩杆，走位都甚是刁钻。\n</font><span lang=\"EN-US\" style=\'font-family: \"Calibri\",\"sans-serif\"; font-size: 14pt; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: 宋体; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \"Times New Roman\"; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;\'><br></span></p><p align=\"center\" style=\"text-align: center;\"><img style=\"width: 581.66px; height: 398px; max-width: 100%;\" alt=\"\" src=\"http://file.bucczhjb.com/45ed4b84-9a3a-41f4-9b18-8ec85d17cca5.png\"></p><p><font face=\"微软雅黑\" size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最终经过4个小时激烈的比拼，住二福心家园项目部、住一福心家园项目部、住四蝶恋新园项目部和京宝公司进入四强，团体冠军由住二公司福心家园项目部夺得。在历时近4小时的比赛中，所有选手都展现了台球运动的绅士风范，帅气的球姿，专注的表情，恰好的力道，精确的走位，严密的防守，既是比拼，也是交流的良机。\n</font></p><p><font face=\"微软雅黑\" size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过这次台球友谊赛，真正实现了以球会友，搭建起了住总集团在宝坻各公司、项目的沟通互动的平台，促进了台球爱好者们的切磋交流，丰富了大家的业余生活，加强了京宝公司的纽带作用和凝聚能力。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/b00ec123-d9eb-44b4-8dc7-168fafea5c49.png', '1', '2017-04-12 19:01:35', '2017-04-12 19:24:32');
INSERT INTO `oa_news` VALUES ('29', '182', '万紫千红一朝春，浅妆淡抹学施粉——京宝公司举办女工职业妆培训', '3月8日下午，为庆祝“三八”国际妇女节，提高女职工化妆技能，更好展现女职工的良好形象，京宝公司工会聘请专业化妆技师为京宝公司、北宇物业、参建项目部的女职工们进行了生动的职业妆化妆技能培训。培训课上，老', '<p><font face=\"微软雅黑\" size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3月8日下午，为庆祝“三八”国际妇女节，提高女职工化妆技能，更好展现女职工的良好形象，京宝公司工会聘请专业化妆技师为京宝公司、北宇物业、参建项目部的女职工们进行了生动的职业妆化妆技能培训。</font><font face=\"微软雅黑\" size=\"5\"><br></font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"width: 444.67px; height: 289.99px; max-width: 100%;\" alt=\"\" src=\"http://file.bucczhjb.com/7be7a190-675d-45ff-8af0-6681b8f6c749.png\"></p><p><font face=\"微软雅黑\" size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 培训课上，老师先从“三庭五眼”解读脸部五官位置和比例；并就如何通过化妆调整五官的位置、比例、结构，以达到修饰脸部的作用进行答疑；并讲解了色彩的分类、上妆的步骤、卸妆的流程，什么样的肤色适合哪种颜色的底妆、脸型的不完美要如何修饰等内容。为了让女同胞们能更好的掌握化妆技巧，老师特别邀请了几位同事进行实战指导，在每一个化妆步骤中又讲解了基础的护肤知识及化妆时的注意事项，经过老师的细心妆饰，“模特儿”变得神采奕奕，清新明丽，更加凸显出职场的气质和感觉。</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"width: 451px; height: 298.33px; max-width: 100%;\" alt=\"\" src=\"http://file.bucczhjb.com/646c6d39-9d3e-4751-a5bf-d46d52b3bbec.png\"></p><p align=\"center\" style=\"text-align: center;\"><img style=\"width: 446.32px; height: 307px; max-width: 100%;\" alt=\"\" src=\"http://file.bucczhjb.com/3ccb8b5d-34db-4554-8d70-2c4cb176e601.png\"></p><p><font face=\"微软雅黑\" size=\"5\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过此次化妆技能培训，促进了公司女员工对职业妆知识以及职业形象的自我学习和自我认知，增强了自信心，提高了审美鉴赏能力。</font></p><p><br></p>', 'http://file.bucczhjb.com/a7c6b7fa-16c2-4120-8511-fb3904ed6834.png', '1', '2017-04-12 19:17:18', '2017-04-12 19:24:28');
INSERT INTO `oa_news` VALUES ('30', '119', '集团派出监事会第一办事处到京宝公司进行2016年度监督检查', '2月23日，集团派出监事会第一办事处主席朱建华、副主席杨海坤、专职监事尹洪春、王晨到京宝公司进行监督检查。公司领导班子成员、职工监事及相关人员参加会议。公司党委书记、董事长王欣从公司2016年经营目标', '<p>&nbsp; &nbsp; &nbsp; &nbsp;2月23日，集团派出监事会第一办事处主席朱建华、副主席杨海坤、专职监事尹洪春、王晨到京宝公司进行监督检查。公司领导班子成员、职工监事及相关人员参加会议。</p><p>&nbsp; &nbsp; &nbsp; &nbsp;公司党委书记、董事长王欣从公司2016年经营目标完成情况、2017年工作计划，法人治理结构、领导班子建设、党建工作、智能管理及上一年度问题整改等方面内容进行了汇报。</p><p>&nbsp; &nbsp; &nbsp; &nbsp;派出监事会领导与领导班子成员进行了履职谈话，并按照监督检查清单，对公司相关内业资料进行了检查,尹洪春通报了公司内业检查情况，公司内业资料齐全、管理清晰、制度健全，责任明确。</p><p>&nbsp; &nbsp; &nbsp; &nbsp;集团派出监事会第一办事处副主席杨海坤对京宝公司领导班子的执行力、担当力和凝聚力以及公司的还迁房建设、智能管理等方面给予了充分肯定。并要求要精益建设，强化风险管控，依法依规，切实做好130万平米还迁房建设任务，建设精品工程，树住总品牌。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;集团派出监事会第一办事处主席朱建华对京宝公司2016年工作中取得的成绩表示肯定，他指出，2016年京宝公司管理有力、上下同心，目标清晰，落实到位，跨越性的完成了各项经营指标，实现了同区域130万平米还迁房建设，创造了宝坻速度和力度。党建工作、智慧管理平台为公司发展提供了有力保障。同时对京宝公司2017年工作提出要求，要继续坚定不移的贯彻好集团的发展战略，要在“投资、建设、运营、服务”发展定位上下功夫；进一步深化战略自信，深化政企合作，发挥资源优势，实现跨越发展；要精益建设，深耕宝坻，引入首都资源，拉动集团全产业链发展。</p><p>&nbsp; &nbsp; &nbsp; 公司党委书记、董事长王欣代表公司领导班子表示，要按照集团监事会领导提出的意见和建议，在今后的工作中加以改进和完善，提高风险意识。2016年成绩已归零，2017年是充满挑战的一年，要以上率下，同频共振，严格落实精益建设年各项要求，深入学习领会“九大关系”，构建“五大格局”，实现“九零目标”，推动公司科学稳健发展，助力集团转型升级。<img src=\"http://file.bucczhjb.com/ea0620ab-97d2-4cbe-862e-b520f974a0e9.png\" alt=\"图片1\" style=\"max-width: 100%;\"><img src=\"http://file.bucczhjb.com/dd85a8dc-c560-4da6-b47e-ffcaefecefa2.jpg\" alt=\"2222\" style=\"max-width: 100%;\"><img src=\"http://file.bucczhjb.com/806e2aaa-1e27-40dc-8444-65feec153fc1.jpg\" alt=\"3333\" style=\"max-width: 100%;\"></p><p><br></p>', 'http://file.bucczhjb.com/bd150508-9b73-40dd-9d41-f80ec4ffaa48.png', '0', '2017-05-09 19:40:11', '2017-05-09 19:42:48');
INSERT INTO `oa_news` VALUES ('31', '119', '京宝公司组织对130万平米还迁房项目进行突击检查', '3月4日，京宝公司党委书记、董事长王欣带队，对同时启动的130万平米还迁房建设进行突击检查。由京宝公司副总经理谭文立及相关负责人员、督察队、项目主要管理人员组成的检查小组，在不打招呼、不发通知的情况下', '<p>&nbsp; &nbsp; &nbsp; &nbsp;3月4日，京宝公司党委书记、董事长王欣带队，对同时启动的130万平米还迁房建设进行突击检查。由京宝公司副总经理谭文立及相关负责人员、督察队、项目主要管理人员组成的检查小组，在不打招呼、不发通知的情况下直奔施工现场及项目部进行监督检查。<img src=\"http://file.bucczhjb.com/a4aed5b7-4fb0-4f21-83a5-6197097e497e.jpg\" alt=\"22222\" style=\"max-width: 100%;\" class=\"\"></p><p>&nbsp; &nbsp; &nbsp; &nbsp;一行人首先对16个项目部的工程质量把控、生产安全措施、现场文明施工、项目部管理人员在岗情况进行了检查。在检查过程中，项目现场管理人员全部到位，质量管控、安全防护等措施到位，对发现的问题责令进行限时整改。<img src=\"http://file.bucczhjb.com/e28a496b-3d4a-47c3-931b-64d31e4671d3.jpg\" alt=\"333333333\" style=\"max-width: 100%;\"></p><p>&nbsp; &nbsp; &nbsp; &nbsp;在检查过程中，王欣强调，各总包单位要提高责任意识，强化7*24小时领导带班制度，施工现场及操作面必须有管理人员旁站，有监理人员监督，全面落实施工过程的全面管控，做到过程监管无空白；要加强双休日、节假日期间施工现场的管理能力，切实落实“安全零事故、质量零缺陷”的管理要求；要落实八项制度，要特别重视实测实量、样板先行，要设立公关小组，研究工法，彻底解决质量通病，实现“一不沈，三不裂，五不漏”，不断提高工程项目安全质量管理水平；要高标准精益建设，打好住总团体赛，平稳完成130万平米还迁房建设，让政府放心，百姓满意，创精品工程，树住总品牌。 &nbsp; &nbsp; &nbsp;</p><p><br></p><p><br></p>', 'http://file.bucczhjb.com/4601c678-b3da-491f-93d4-8fa0c61a48be.jpg', '0', '2017-05-09 20:49:33', '2017-05-09 20:49:33');
INSERT INTO `oa_news` VALUES ('32', '119', '万紫千红一朝春，浅妆淡抹学施粉  ——京宝公司举办女工职业妆培训', '万紫千红一朝春，浅妆淡抹学施粉——京宝公司举办女工职业妆培训3月8日下午，为庆祝“三八”国际妇女节，提高女职工化妆技能，更好展现女职工的良好形象，京宝公司工会聘请专业化妆技师为京宝公司、北宇物业、参建', '<p>万紫千红一朝春，浅妆淡抹学施粉</p><p>——京宝公司举办女工职业妆培训</p><p>&nbsp; &nbsp; &nbsp; &nbsp;3月8日下午，为庆祝“三八”国际妇女节，提高女职工化妆技能，更好展现女职工的良好形象，京宝公司工会聘请专业化妆技师为京宝公司、北宇物业、参建项目部的女职工们进行了生动的职业妆化妆技能培训。</p><p><img src=\"http://file.bucczhjb.com/4c3de3bf-9b89-4a54-8ba9-dd3be97bcf02.png\" alt=\"1\" style=\"line-height: 1; max-width: 100%;\"><br></p><p>&nbsp; &nbsp; &nbsp; &nbsp;培训课上，老师先从“三庭五眼”解读脸部五官位置和比例；并就如何通过化妆调整五官的位置、比例、结构，以达到修饰脸部的作用进行答疑；并讲解了色彩的分类、上妆的步骤、卸妆的流程，什么样的肤色适合哪种颜色的底妆、脸型的不完美要如何修饰等内容。为了让女同胞们能更好的掌握化妆技巧，老师特别邀请了几位同事进行实战指导，在每一个化妆步骤中又讲解了基础的护肤知识及化妆时的注意事项，经过老师的细心妆饰，“模特儿”变得神采奕奕，清新明丽，更加凸显出职场的气质和感觉。<img src=\"http://file.bucczhjb.com/15ab688e-d0a9-4e09-af7a-bebdaa35591c.jpg\" alt=\"3\" style=\"line-height: 1; max-width: 100%;\"><img src=\"http://file.bucczhjb.com/b0c5ddf2-8489-4d94-a2ed-98576c5d6e4c.jpg\" alt=\"11\" style=\"line-height: 1; max-width: 100%;\"></p><p><v:shape id=\"图片_x0020_12\" o:spid=\"_x0000_i1027\" type=\"#_x0000_t75\" style=\"width:329.4pt;height:219.6pt;visibility:visible;mso-wrap-style:square\">\n <v:imagedata src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.jpg\" o:title=\"828A0082\">\n<img src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image004.jpg\">&nbsp; &nbsp; &nbsp;&nbsp;通过此次化妆技能培训，促进了公司女员工对职业妆知识以及职业形象的自我学习和自我认知，增强了自信心，提高了审美鉴赏能力。</v:imagedata></v:shape></p><p><br></p>', 'http://file.bucczhjb.com/0de8c866-9d01-47db-aa1e-d57ae82194ee.jpg', '0', '2017-05-09 23:03:10', '2017-05-09 23:04:03');
INSERT INTO `oa_news` VALUES ('33', '119', '以球会友 同场竞技  ——住总集团驻宝坻参建单位台球联谊赛', '以球会友同场竞技——住总集团驻宝坻参建单位台球联谊赛为丰富北京住总集团驻宝坻参建单位所有员工的业余生活，搭建沟通交流的平台，展现住总人奋发进取、团结协作的精神风貌，3月1日下午，京宝公司工会组织开展了', '<p>以球会友 同场竞技</p><p>——住总集团驻宝坻参建单位台球联谊赛</p><p>&nbsp; &nbsp; &nbsp; &nbsp;为丰富北京住总集团驻宝坻参建单位所有员工的业余生活，搭建沟通交流的平台，展现住总人奋发进取、团结协作的精神风貌， 3月1日下午，京宝公司工会组织开展了“以球会友、同场竞技”为主题的台球友谊赛。京宝公司、各施工单位、北宇物业共计15支队伍参加了比赛，每支队伍选派5名参赛选手，比赛由各项目部书记担任记分人员。<img src=\"http://file.bucczhjb.com/08396a11-de6f-4fab-98a1-46a05e37262e.jpg\" alt=\"2\" style=\"line-height: 1; max-width: 100%;\"></p><p><v:shapetype id=\"_x0000_t75\" coordsize=\"21600,21600\" o:spt=\"75\" o:preferrelative=\"t\" path=\"m@4@5l@4@11@9@11@9@5xe\" filled=\"f\" stroked=\"f\"><v:shape id=\"_x0000_i1025\" type=\"#_x0000_t75\" style=\"width:307.2pt;\n height:310.2pt\"><v:imagedata src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.jpg\" o:title=\"QQ图片20170310103150\">&nbsp; &nbsp; &nbsp;&nbsp;<img src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image002.jpg\">小组赛采用抽签分组，赛制采用小局3局2胜，大局5局3胜制。小组赛经过两轮的激烈比拼，8强队伍进入下一轮更加激烈的比拼。对抗的两支队伍之间的比分经常焦灼于1:1、2:2、3:3……的状态，队员们凝神聚力，瞄准、击球，无论高杆、缩杆，走位都甚是刁钻。</v:imagedata></v:shape></v:shapetype><img src=\"http://file.bucczhjb.com/76f446b5-14d0-4f2e-99e4-15c5fbbf87aa.jpg\" alt=\"4\" style=\"line-height: 1; max-width: 100%;\"></p><p><v:shape id=\"_x0000_i1026\" type=\"#_x0000_t75\" style=\"width:385.8pt;height:235.2pt\">\n <v:imagedata src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.jpg\" o:title=\"828A9886\">\n<img src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image004.jpg\">&nbsp; &nbsp; &nbsp;最终经过4个小时激烈的比拼，住二福心家园项目部、住一福心家园项目部、住四蝶恋新园项目部和京宝公司进入四强，团体冠军由住二公司福心家园项目部夺得。在历时近4小时的比赛中，所有选手都展现了台球运动的绅士风范，帅气的球姿，专注的表情，恰好的力道，精确的走位，严密的防守，既是比拼，也是交流的良机。</v:imagedata></v:shape></p><p>通过这次台球友谊赛，真正实现了以球会友，搭建起了住总集团在宝坻各公司、项目的沟通互动的平台，促进了台球爱好者们的切磋交流，丰富了大家的业余生活，加强了京宝公司的纽带作用和凝聚能力。</p><p>&nbsp;</p><p><br></p><p><br></p>', 'http://file.bucczhjb.com/5e198c25-4c64-4643-8399-713302bd301a.jpg', '0', '2017-05-09 23:17:19', '2017-05-09 23:17:19');
INSERT INTO `oa_news` VALUES ('34', '119', '乐游植物园，田间品草莓  ——京宝公司工会组织三八节活动', '乐游植物园，田间品草莓——京宝公司工会组织三八节活动为使全体女性员工过一个和谐温馨、轻松快乐的三八妇女节，京宝公司工会特别组织了“乐游植物园，田间品草莓”活动，获得女员工的积极响应和参与。考虑到公司外', '<p style=\"text-align: center;\">乐游植物园，田间品草莓</p><p style=\"text-align: center; \">——京宝公司工会组织三八节活动</p><p>&nbsp; &nbsp; &nbsp; &nbsp;为使全体女性员工过一个和谐温馨、轻松快乐的三八妇女节，京宝公司工会特别组织了“乐游植物园，田间品草莓”活动，获得女员工的积极响应和参与。考虑到公司外埠的特殊性，京宝公司工会特意将三八节的观光活动安排在了周五。</p><p>&nbsp; &nbsp; &nbsp; &nbsp;3月10日下午，在公司工会的组织下，十余位女员工齐聚宝坻云杉镇，观光热带植物园，品尝应季新鲜草莓。</p><p>植物园里青草葱翠、百花争艳，女员工们也经过了精心装扮，与面前的景色互相映衬，十分抢眼。大家漫步植物园，参观了各种各样的南方植物，小桥流水、室内花园……感受春天的气息，尽情放松身心，于集体活动中感受温暖，于大自然中的怀抱中怡情养性，大家不断拿出相机尽情拍照，留下倩影和美丽的风景。<img src=\"http://file.bucczhjb.com/eaad4074-0ed8-44ff-983b-91a0dd7da8a3.jpg\" alt=\"111\" style=\"line-height: 1; max-width: 100%;\"></p><p><v:shapetype id=\"_x0000_t75\" coordsize=\"21600,21600\" o:spt=\"75\" o:preferrelative=\"t\" path=\"m@4@5l@4@11@9@11@9@5xe\" filled=\"f\" stroked=\"f\"><v:shape id=\"_x0000_i1025\" type=\"#_x0000_t75\" style=\"width:283.2pt;\n height:283.2pt\"><v:imagedata src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.jpg\" o:title=\"IMG_1236\">&nbsp; &nbsp; &nbsp; &nbsp;<img src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image002.jpg\">观光植物园过后，虽然消耗了体力，但是大家的热情却丝毫未减。穿过走廊来到草莓种植园，当下正值草莓成熟的季节，诱人的草莓深深吸引着每一个人，大家三五结伴的品尝过后，对草莓香甜的味道也是赞不绝口。</v:imagedata></v:shape></v:shapetype><img src=\"http://file.bucczhjb.com/cf3947c5-1a49-4b0e-960e-95b5a31542dd.jpg\" alt=\"222\" style=\"line-height: 1; max-width: 100%;\"></p><p><v:shape id=\"_x0000_i1026\" type=\"#_x0000_t75\" style=\"width:283.2pt;height:283.2pt\"><v:imagedata src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.jpg\" o:title=\"IMG_1235\">&nbsp; &nbsp; &nbsp;&nbsp;<img src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image004.jpg\">京宝公司对于女员工的权益和福利一向非常重视，此次妇女节系列活动的组织开展，不仅为大家繁忙的日常工作增添了一份别样的乐趣，也是公司和谐企业文化的充分体现。</v:imagedata></v:shape></p><p>&nbsp;</p><p><o:smarttagtype></o:smarttagtype></p><p>&nbsp;</p><p><br></p>', 'http://file.bucczhjb.com/ce899c28-919c-4ea7-ad1d-1325957d1a03.jpg', '0', '2017-05-09 23:21:08', '2017-05-09 23:21:08');
INSERT INTO `oa_news` VALUES ('35', '119', '京宝公司召开  党员大会选举出席集团党代会党员代表', '京宝公司召开党员大会选举出席集团党代会党员代表根据北京市国资委相关文件要求和住总集团党委的统一部署，京宝公司党委于3月15日召开全体党员大会，选举产生了京宝公司出席集团党代会的党员代表。大会由公司党委', '<p style=\"text-align: center; \">京宝公司召开</p><p style=\"text-align: center; \">党员大会选举出席集团党代会党员代表</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 根据北京市国资委相关文件要求和住总集团党委的统一部署，京宝公司党委于3月15日召开全体党员大会，选举产生了京宝公司出席集团党代会的党员代表。大会由公司党委副书记、纪委书记张少丽主持，公司全体党员参加。</p><p><img src=\"http://file.bucczhjb.com/3f2838f3-1834-4a79-b93e-a415bd13eca5.jpg\" alt=\"1123\" style=\"line-height: 1; max-width: 100%;\"></p><p><v:shape id=\"图片_x0020_8\" o:spid=\"_x0000_i1025\" type=\"#_x0000_t75\" style=\"width:415.2pt;height:276.6pt;\n visibility:visible;mso-wrap-style:square\">\n <v:imagedata src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image004.jpg\" o:title=\"828A0379\">\n<img src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image005.jpg\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;会议在庄严的国歌声中拉开帷幕，会上讨论通过了《选举办法》、出席集团党代会的3名候选人名单。</v:imagedata></v:shape></p><p style=\"text-align: center; \"><img src=\"http://file.bucczhjb.com/6ef01d9a-342a-4743-adcc-a30f649d460b.png\" alt=\"2\" style=\"line-height: 1; max-width: 100%;\" class=\"\"></p><p>&nbsp; &nbsp; &nbsp; &nbsp;全体正式党员经过无记名投票，差额选举产生了2名党员代表，按姓氏笔画依次为王欣、曹蓉。</p><p><br></p><p>\n\n\n\n</p><p>&nbsp;</p><p><br></p>', 'http://file.bucczhjb.com/b75d08ad-13dd-46d5-b9ba-e6df299b90c2.jpg', '0', '2017-05-09 23:30:02', '2017-05-09 23:30:02');
INSERT INTO `oa_news` VALUES ('36', '119', '京宝公司召开  2016年度领导班子及成员述职述廉民主测评会', '京宝公司召开2016年度领导班子及成员述职述廉民主测评会按照集团公司党委关于年度述职述廉综合测评工作的统一部署，3月15日，京宝公司召开2016年度领导班子及成员述职述廉民主测评会，集团组织部张俊华参', '<p style=\"text-align: center;\">京宝公司召开</p><p style=\"text-align: center;\">2016年度领导班子及成员述职述廉民主测评会</p><p>&nbsp; &nbsp; &nbsp; 按照集团公司党委关于年度述职述廉综合测评工作的统一部署，3月15日，京宝公司召开2016年度领导班子及成员述职述廉民主测评会，集团组织部张俊华参加。公司党委书记、董事长王欣主持会议。<img src=\"http://file.bucczhjb.com/f60e1752-64b8-4c47-8a50-bf411af6ed8e.jpg\" alt=\"2222\" style=\"line-height: 1; max-width: 100%;\"></p><p><v:shapetype id=\"_x0000_t75\" coordsize=\"21600,21600\" o:spt=\"75\" o:preferrelative=\"t\" path=\"m@4@5l@4@11@9@11@9@5xe\" filled=\"f\" stroked=\"f\"><v:shape id=\"图片_x0020_8\" o:spid=\"_x0000_i1025\" type=\"#_x0000_t75\" style=\"width:415.2pt;height:276.6pt;visibility:visible;mso-wrap-style:square\"><v:imagedata src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.jpg\" o:title=\"828A0379\">&nbsp; &nbsp; &nbsp; 京宝公司领导班子及成员2016年度述职述廉报告已提前发到OA办公平台，供参评人员提前审阅。会上参加测评人员对公司班子及成员述职述廉、落实党风廉政建设责任制等情况进行了认真测评。</v:imagedata></v:shape></v:shapetype></p><p></p><p>&nbsp;</p><p><br></p>', 'http://file.bucczhjb.com/6e2c7e15-0774-4151-9288-b2d382a074f1.jpg', '0', '2017-05-09 23:33:51', '2017-05-09 23:33:51');
INSERT INTO `oa_news` VALUES ('37', '119', '北京住总成功入围宝坻特色小镇与美丽乡村工程建设', '北京住总成功入围宝坻特色小镇与美丽乡村工程建设3月17日上午，宝坻区召开建设特色小镇见面会，会上公布了宝坻区6个特色小镇拟对接合作的企业名单和5个美丽乡村拟参与工程建设的企业名单。北京住总双线中标，与', '<p style=\"text-align: center;\">北京住总成功入围</p><p style=\"text-align: center;\">宝坻特色小镇与美丽乡村工程建设</p><p>&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 3月17日上午，宝坻区召开建设特色小镇见面会，会上公布了宝坻区6个特色小镇拟对接合作的企业名单和5个美丽乡村拟参与工程建设的企业名单。北京住总双线中标，与碧桂园、万科等六家企业入围特色小镇合作，与天津住宅集团、中建八局等5家企业入围美丽乡村工程建设。<img src=\"http://file.bucczhjb.com/03dd2ab7-55ec-474c-a1f8-a1c9bf538a80.JPG\" alt=\"828A0428\" style=\"line-height: 1; max-width: 100%;\"><img src=\"http://file.bucczhjb.com/97488154-2af6-448c-8253-1fd4bbd4fe42.JPG\" alt=\"828A0428\" style=\"line-height: 1; max-width: 100%;\"><img src=\"http://file.bucczhjb.com/ac41d949-27fa-4757-a0af-862733533ff8.jpg\" alt=\"222222222222\" style=\"line-height: 1; max-width: 100%;\"></p><p>&nbsp; &nbsp; &nbsp; &nbsp; 见面会后，在京宝公司会议室，公司党委书记、董事长王欣与宝坻区林亭口镇、大钟镇、八门城镇及宝坻旅游局负责人进行对接，针对特色小镇建设的规划方案进行了深入的沟通交流。<img src=\"http://file.bucczhjb.com/c1581b59-32d9-413b-9507-8569587dd199.jpg\" alt=\"4444444444\" style=\"line-height: 1; max-width: 100%;\"></p><p></p><p>&nbsp;</p><p><br></p>', 'http://file.bucczhjb.com/08e07721-e2d8-45c4-81f3-880225aa0da7.jpg', '0', '2017-05-09 23:41:16', '2017-05-09 23:41:16');
INSERT INTO `oa_news` VALUES ('38', '119', '京宝公司召开2017年党风廉政建设  暨“大监督”格局推进工作会', '京宝公司召开2017年党风廉政建设暨“大监督”格局推进工作会为落实集团公司党风廉政建设大会精神和“大监督”格局的工作部署，3月23日，京宝公司召开2017年党风廉政建设暨“大监督”格局推进工作会，公司', '<p style=\"text-align: center;\">京宝公司召开2017年党风廉政建设</p><p style=\"text-align: center; \">暨“大监督”格局推进工作会</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;为落实集团公司党风廉政建设大会精神和“大监督”格局的工作部署，3月23日，京宝公司召开2017年党风廉政建设暨“大监督”格局推进工作会，公司领导班子及全体员工参加了会议。集团公司财务总监张恒跃、监事会第一办事处专职监事尹洪春出席会议。会议由公司总会计师杨镝主持。<img src=\"http://file.bucczhjb.com/fc4ce41d-0ff2-4fdd-b4a6-87d2a32f0066.jpg\" alt=\"会场\" style=\"line-height: 1; max-width: 100%;\"></p><p>&nbsp; &nbsp; &nbsp; &nbsp; 公司总会计师杨镝首先传达了十八届中央纪委七次全会、十一届市纪委六次全会、市国资委、集团公司党风廉政建设会议暨“大监督”格局推进会精神。</p><p>&nbsp; &nbsp; &nbsp; &nbsp;公司党委副书记、总经理曹蓉作了题为《树立四个意识&nbsp; 强化责任担当&nbsp; 构建监督格局&nbsp; 护航企业发展》工作报告，全面总结了2016年党风廉政建设工作，对2017年党风廉政建设重点任务进行了部署。 &nbsp;&nbsp;<img src=\"http://file.bucczhjb.com/5a4624aa-9edd-491d-a939-7621a31b2ab7.jpg\" alt=\"签订责任书\" style=\"line-height: 1; max-width: 100%;\"><img src=\"http://file.bucczhjb.com/e19df209-37fb-4d4f-9b4a-e43d5d740a52.jpg\" alt=\"办法聘书\" style=\"line-height: 1; max-width: 100%;\">&nbsp;&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp;公司党委书记、董事长王欣与班子成员代表签订了《天津京宝置地有限公司2017年党风廉政建设责任书》。并为新聘任的2017年党风廉政监督员颁发了聘书。<img src=\"http://file.bucczhjb.com/be8e3fc5-415f-4e8a-854e-4ac671c1967f.jpg\" alt=\"ww\" style=\"line-height: 1; max-width: 100%;\"></p><p>​ &nbsp; &nbsp; &nbsp; 公司党委书记、董事长王欣提出三点意见：一是把握形势，坚定政治站位。深入学习领会中央、市、国资委、集团公司党风廉政建设会议精神，入心入脑,融会贯通，继续在常和长、严和实、深和细上下功夫。二是严明纪律规矩，落实两个责任。对照《关于新形势下党内政治生活的若干准则》和《中国共产党党内监督条例》，真正把自己摆进去，充分发挥智慧党建管理驾驶舱的作用，积极构建“大监督”格局，实现“横向到边，纵向到底”。三是强化制度执行，标本兼治，确保依法合规。严格按照内控制度流程规范管理，不能用信任代替监督，必须养成用制度管人管事的习惯、重规矩，讲程序，确保各项生产经营活动依法合规。<img src=\"http://file.bucczhjb.com/604216a2-af62-42f5-9a0c-bb4dbea3e3db.JPG\" alt=\"横越总\" style=\"line-height: 1; max-width: 100%;\"></p><p>&nbsp; &nbsp; &nbsp; 集团公司财务总监张恒跃对公司党风廉政建设工作提出三点要求：一是落实中央精神，全面推进从严治党。要认真学习十八届六中全会精神和全国国有企业党的建设工作会精神，力求领会精神实质，学深悟透，理论联系实际，将中央精神落实到实际工作中，全面推进从严治党，坚持党对国有企业的领导不动摇，发挥企业党组织的领导核心&nbsp; 和政治核心作用；坚持服务生产经营不偏离，以企业改革发展成果检验党组织的工作和战斗力；坚持党组织对国有企业选人用人的领导和把关作用不能变；坚持建强国有企业基层党组织不放松。二是落实各方责任，让“四种形态”成为常态。要压实“两个责任”和“一岗双责”，严格落实党风廉政建设及执纪要求，加强日常管理和监督，让多提醒、多沟通成为京宝公司的常态。三是落实集团要求，抓好全年工作。落实集团2017年工作会和“五大格局”推进会精神，统一思想，凝心聚力，精益建设，将党建工作切实融入生产经营，起到引领作用，讲好住总故事，补齐人才短板，破解企业成长过程中的普遍困扰，即人才、信息的管理黑洞，确保公司发展稳中提质，进中增效，持续发展。</p><p><br></p>', 'http://file.bucczhjb.com/4498039f-f0c6-4c0e-9e50-22de4a57563e.jpg', '0', '2017-05-09 23:53:11', '2017-05-09 23:53:11');
INSERT INTO `oa_news` VALUES ('39', '119', '京宝公司召开团总支班子成员竞选动员暨青年突击队授旗大会', '京宝公司召开团总支班子成员竞选动员暨青年突击队授旗大会为更好的发挥青年人生力军作用，3月23日，京宝公司召开团总支班子成员竞选动员暨青年突击队授旗大会，全体员工参加，公司党委副书记、纪委书记张少丽主持', '<p style=\"text-align: center;\">京宝公司召开团总支班子成员竞选动员</p><p style=\"text-align: center;\">暨青年突击队授旗大会</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 为更好的发挥青年人生力军作用，3月23日，京宝公司召开团总支班子成员竞选动员暨青年突击队授旗大会，全体员工参加，公司党委副书记、纪委书记张少丽主持会议。<img src=\"http://file.bucczhjb.com/16d09896-b9ad-45e2-a634-75dc07021579.JPG\" alt=\"828A0490\" style=\"line-height: 1; max-width: 100%;\"></p><p>&nbsp; &nbsp; &nbsp; &nbsp; 会上党委副书记、总经理曹蓉首先宣读了《公司团总支班子成员岗位竞选方案》，并要求青年人积极参与，发挥青年人的激情与活力，与公司同成长、共发展。</p><p style=\"text-align: center; \"><img src=\"http://file.bucczhjb.com/bce1a99f-a690-4a45-8497-13bbde0816e5.png\" alt=\"QQ截图20170510000323\" style=\"line-height: 1; max-width: 100%;\" class=\"\"></p><p style=\"text-align: center; \"><img src=\"http://file.bucczhjb.com/f273d65c-d445-4af1-ae2c-192193b48b86.png\" alt=\"QQ截图20170510000433\" style=\"line-height: 1; max-width: 100%;\" class=\"\"></p><p>&nbsp; &nbsp; &nbsp; &nbsp; 结合公司年度重点工作，聚焦精益建设，发挥青春力量，公司精益建设建造突击队、精益建设智能突击队、精益建设保障突击队、精益建设拓展突击队四支突击队正式成立。公司领导班子为突击队进行授旗。</p><p>突击队队长代表樊永军、蔡立君进行了表态发言。</p><p style=\"text-align: center; \"><img src=\"http://file.bucczhjb.com/02b76a9a-d0cc-4859-9811-61a6714a02c7.png\" alt=\"QQ截图20170324094757\" style=\"line-height: 1; max-width: 100%;\" class=\"\"></p><p>&nbsp; &nbsp; &nbsp; “没有什么可以阻挡，你对自由的向往……”公司党委书记、董事长王欣用一首《蓝莲花》为大家加油鼓劲。同时他对青年人提出三点要求：一是积极参与，发挥团青生力军作用。青年人的工作由青年人作主，在团组织建设中要积极参与，行使民主权利，增强荣誉感和责任感。二是找准定位，为企业发展贡献力量。青年人要在快速航行的京宝大船上，及时找准定位，主动作为，勇于担当，跟上公司发展，与京宝同成长。三是补足短板，凝聚团队发展合力。突击队要制定攻坚目标，细化节点任务，突击队成员都要快速补齐短板，增强团队整体合力，围绕“精益建设年”主题，以公司“精益建设、智能管理、持续发展”重点工作为抓手，以突击队为历炼成长平台，把“实”与“快”的工作作风落到实处，助力构建“五大格局”，努力实现“九零目标”，促进公司持续发展。</p><p><br></p><p><br></p>', 'http://file.bucczhjb.com/89f799e4-4aee-4060-a2e0-c3d2ee6c094f.JPG', '0', '2017-05-10 00:06:54', '2017-05-10 00:06:54');
INSERT INTO `oa_news` VALUES ('40', '119', '增强法治意识  提升法律风险防范能力  ——京宝公司举办“七五”普法专题讲座', '增强法治意识提升法律风险防范能力——京宝公司举办“七五”普法专题讲座为贯彻集团和公司的“七五”普法工作部署和要求，增强员工的法律意识，提升公司的法律风险防范能力，3月31日，京宝公司举办“七五”普法专', '<p style=\"text-align: center;\">增强法治意识&nbsp;\n提升法律风险防范能力</p><p style=\"text-align: center;\">——京宝公司举办“七五”普法专题讲座</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 为贯彻集团和公司的“七五”普法工作部署和要求，增强员工的法律意识，提升公司的法律风险防范能力，3月31日，京宝公司举办“七五”普法专题讲座，特邀宝坻区政协常委、区政府法律顾问刘少伯律师以合同法理论与实务为主题进行专题讲座。公司相关领导班子成员、全体员工参加了讲座。</p><p style=\"text-align: center; \"><img src=\"http://file.bucczhjb.com/ca885e4a-0d97-4593-ae14-313bb2fc7b10.jpg\" alt=\"1\" style=\"line-height: 1; max-width: 100%;\"></p><p><v:shapetype id=\"_x0000_t75\" coordsize=\"21600,21600\" o:spt=\"75\" o:preferrelative=\"t\" path=\"m@4@5l@4@11@9@11@9@5xe\" filled=\"f\" stroked=\"f\">\n \n \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n  \n \n \n \n<v:shape id=\"图片_x0020_10\" o:spid=\"_x0000_i1026\" type=\"#_x0000_t75\" style=\"width:305.4pt;height:202.8pt;visibility:visible;mso-wrap-style:square\">\n <v:imagedata src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.jpg\" o:title=\"828A0700_副本\">\n<img src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image002.jpg\">&nbsp; &nbsp; &nbsp; &nbsp;讲座过程中，刘律师结合自己多年法律工作经验，分别从合同概念、合同主体、合同标的、权利义务、合同履行及违约责任等六个方面，为大家详细讲解有关法学知识，梳理常见法律风险点，剖析常见问题相关案例，提出相应风险防范措施。深奥晦涩的法学知识经过刘律师的演绎，生动形象，浅显易懂；繁琐杂乱的法律案例经过刘律师的剖析，条清缕析，贴切详实。</v:imagedata></v:shape></v:shapetype></p><p style=\"text-align: center; \"><img src=\"http://file.bucczhjb.com/1ab4e00f-2d8a-482c-a7cb-9e470065c3fa.jpg\" alt=\"2\" style=\"line-height: 1; max-width: 100%;\"></p><p><v:shape id=\"_x0000_i1025\" type=\"#_x0000_t75\" style=\"width:357pt;height:283.8pt\">\n <v:imagedata src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image003.jpg\" o:title=\"828A0712_副本\">\n<img src=\"file:///C:\\Users\\赵星齐\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image004.jpg\">&nbsp; &nbsp; &nbsp;&nbsp;互动环节，部分同事向刘律师咨询了印章使用、罚息等问题。大家普遍表示，此次讲座收获颇多，提高了认识，开阔了视野，对合同法有了更加深入的理解，这次培训对自己在以后工作中识别、把控和防范法律风险有很大帮助。</v:imagedata></v:shape></p><p><br></p>', 'http://file.bucczhjb.com/49da95f4-3400-413f-a287-0b57a7b07c07.jpg', '0', '2017-05-10 00:12:02', '2017-05-10 00:12:02');
INSERT INTO `oa_news` VALUES ('41', '119', '爱心接力 温暖传递 ——京宝公司爱心义卖活动圆满完成', '爱心接力温暖传递——京宝公司爱心义卖活动圆满完成为响应集团公司“缓解集团特困职工子女就学的经济压力，建立长期帮扶机制，打造广大干部职工爱心捐助平台”的通知精神，5月3日，京宝公司工会在公司办公区后侧平', '<h2 style=\"text-align: center; \"><p style=\"text-align: center;\">爱心接力 温暖传递</p><p style=\"text-align: center;\">——京宝公司爱心义卖活动圆满完成</p><p style=\"text-align: left;\"><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; &nbsp;为响应集团公司“缓解集团特困职工子女就学的经济压力，建立长期帮扶机制，打造广大干部职工爱心捐助平台”的通知精神，5月3日，京宝公司工会在公司办公区后侧平房区举行了第二届爱心义卖活动。</span></p><img src=\"http://file.bucczhjb.com/0c8fbe2b-babc-4f4d-ac57-19cb868929ac.png\" alt=\"图片1\" style=\"max-width:100%;\"><p style=\"text-align: left; \"><img src=\"file:///C:\\Users\\lenovo\\AppData\\Local\\Temp\\ksohtml\\wpsF7DA.tmp.jpg\">&nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size: 14px;\">此次义卖活动经过一个月的精心准备，共筹集义卖品近百件，包括制作精巧的手工艺品、实用的生活用品、精美的饰品等，公司员工都积极参与，热心竞拍，踊跃购买，欣喜成交，特别是女员工对小巧又精致的饰品及家居用品爱不释手，义卖第一单成交为经营管理部刘雪佳的夏凉系列凉席一套，参与义卖的大多数员工都满载而归。</span></p><p style=\"text-align: left;\">在京宝公司全体职工的支持下此次义卖活动圆满成功，在活动中，职工既能以优惠的价格买到自己喜欢的物品，又能奉献爱心，将爱心暖流传递于你我之间。</p><p style=\"text-align: left;\">爱心义卖活动结束后，京宝公司组织全体员工观看电影《湄公河行动》，感受爱国主义教育。</p><p style=\"text-align: left; \"><br></p></h2><p><br></p>', 'http://file.bucczhjb.com/a37e015f-8a90-4922-8b8b-28f5f06d63c3.png', '0', '2017-05-10 11:07:49', '2017-05-10 11:07:49');
INSERT INTO `oa_news` VALUES ('42', '119', '弘扬五四精神，凝聚青春力量 ——京宝公司“五四”主题团日活动', '弘扬五四精神，凝聚青春力量——京宝公司“五四”主题团日活动5月4日，青年人的专属节日，京宝公司团总支开展“精益建设上水平实干青年砥砺行”——“五四”主题团日活动。公司党委副书记张少丽、总会计师杨镝、工', '<h2><p style=\"text-align: center;\">弘扬五四精神，凝聚青春力量</p><p style=\"text-align: center; \">——京宝公司“五四”主题团日活动</p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5月4日，青年人的专属节日，京宝公司团总支开展“精益建设上水平 实干青年砥砺行”—— “五四”主题团日活动。公司党委副书记张少丽、总会计师杨镝、工会主席李杨出席，全体团员青年参加。</span><br></p><div style=\"text-align: center;\"><img src=\"http://file.bucczhjb.com/b2d31dcc-b7ce-43ba-b421-3b4a3664cd36.png\" alt=\"图片2\" class=\"\" style=\"font-size: 14px; max-width: 100%;\"></div><p><img src=\"file:///C:\\Users\\lenovo\\AppData\\Local\\Temp\\ksohtml\\wpsFBEA.tmp.png\">&nbsp; &nbsp; &nbsp;<span style=\"font-size: 14px;\">“我们是五月的花海，用青春拥抱时代；我们是初升的太阳，用生命点燃未来……”主题团日在团歌声中拉开序幕。随后，全体团员青年面对团旗举起右手，在团总支副书记杨光带领下重温入团誓词，传承“五四”薪火，坚定理想信念，不忘初心跟党走。</span></p><div style=\"text-align: center;\"><img src=\"http://file.bucczhjb.com/63404c1a-ee50-40f3-9ed5-9aed2c94fd1a.png\" alt=\"图片3\" class=\"\" style=\"font-size: 14px; max-width: 100%;\"></div><p><img src=\"file:///C:\\Users\\lenovo\\AppData\\Local\\Temp\\ksohtml\\wpsFC58.tmp.png\">&nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-size: 14px;\">公司团总支向全体青年发起“点燃青春，奉献才智，与京宝共奋进”的倡议，倡议团员青年心系企业，胸怀理想，始终昂扬向上，发挥青年人的工作热情和潜能，以公司“精益建设、智能管理、持续发展”三大重点工作为目标，比学赶帮超，助力构建“五大格局”，努力实现“九零目标”，展现住总京宝青年人的智慧和风采。</span></p><div style=\"text-align: center;\"><img src=\"http://file.bucczhjb.com/42ec14e1-9ad7-4375-9af5-82096fc8ed6f.png\" alt=\"图片5\" style=\"font-size: 14px; max-width: 100%;\"></div><p><img src=\"file:///C:\\Users\\lenovo\\AppData\\Local\\Temp\\ksohtml\\wpsFCD6.tmp.png\">&nbsp; &nbsp; &nbsp;<span style=\"font-size: 14px;\">公司党委全力支持团总支带领团员青年开展丰富多彩、有声有色的活动，将党建带团建落到实处，公司党委书记、董事长王欣、总经理曹蓉共同用“牢记历史勇担当，立岗建功砥砺行”寄语全体青年，青年是公司的未来，是公司的活力，希望全体青年传承优秀文化，在公司发展中彰显青春力量，敢为人先。在公司搭建的“精益建设”四支突击队实践历练的平台上，积极进取，永续学习，收获自己在职业发展中的硕果，与企业共发展。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; &nbsp;最后，全体团员青年观看了爱国主义影片《我的1919》，回顾了一个不同寻常的1919年。团员青年们表示将更加严格要求自己，励志勤学，责任担当，充分发挥青春智慧，展现青春风采，为公司发展做出更大贡献。</span><br></p><p>&nbsp;</p></h2><p><br></p>', 'http://file.bucczhjb.com/69f9e654-d435-4d48-b1fb-e46205462415.png', '0', '2017-05-10 11:13:13', '2017-05-10 11:13:13');
INSERT INTO `oa_news` VALUES ('43', '119', '高效服务暖人心 真诚感谢送锦旗', '高效服务暖人心真诚感谢送锦旗5月4日，京宝公司党委书记、董事长王欣一行专程来到国网天津电力公司宝坻分公司，将一面写有“精心组织保百姓安居；服务周到展电力风采”的锦旗赠送给宝坻供电公司，对供电公司给予的', '<h2 style=\"text-align: center; \">高效服务暖人心 真诚感谢送锦旗</h2><p style=\"text-align: center; \">&nbsp; &nbsp; &nbsp; &nbsp; 5月4日，京宝公司党委书记、董事长王欣一行专程来到国网天津电力公司宝坻分公司，将一面写有“精心组织 保百姓安居；服务周到 展电力风采”的锦旗赠送给宝坻供电公司，对供电公司给予的高效、便捷、优质服务表示衷心感谢。<img src=\"http://file.bucczhjb.com/19100ded-5563-4976-94b0-4b46cbdf7467.png\" alt=\"图片4\" style=\"max-width: 100%;\"></p><p><img src=\"file:///C:\\Users\\lenovo\\AppData\\Local\\Temp\\ksohtml\\wps1713.tmp.png\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;为加快宝坻区还迁项目建设，确保老百姓尽快住进新房，满足公司现有四个地块的供电需要，经过京宝公司领导与供电公司充分沟通，供电公司本着特事特办的原则，积极协助解决困难和问题，开辟绿色通道，优化业扩报装流程，最大限度保障了福心家园、状元城、蝶恋园和金玉园四个还迁地块的施工用电，保证了工程进度。</p><p>&nbsp;</p><p><br></p>', 'http://file.bucczhjb.com/1d46531f-9720-4364-b25f-495f257714c0.png', '0', '2017-05-10 11:14:33', '2017-05-10 11:14:33');
INSERT INTO `oa_news` VALUES ('44', '119', '“5.1”期间宝坻区领导视察还迁房建设', '“5.1”期间宝坻区领导视察还迁房建设4月30日，“5.1”假期的第二天，宝坻区新任区长毛劲松带队，区委、区政府办、建委、环保局、房建办等相关领导来到京宝公司在建的福心家园工程进行视察，京宝公司党委书', '<h2><p style=\"text-align: center; \">“5.1”期间宝坻区领导视察还迁房建设</p><p>&nbsp; &nbsp; &nbsp;<span style=\"font-size: 14px;\">4月30日，“5.1”假期的第二天，宝坻区新任区长毛劲松带队，区委、区政府办、建委、环保局、房建办等相关领导来到京宝公司在建的福心家园工程进行视察，京宝公司党委书记、董事长王欣及相关负责人陪同。</span></p><div style=\"text-align: center;\"><img src=\"http://file.bucczhjb.com/29d2db96-e0a0-4035-8080-6473cce44b98.png\" alt=\"图片1\" style=\"font-size: 14px; max-width: 100%;\"></div><div style=\"text-align: center;\"><img src=\"http://file.bucczhjb.com/2c03ab80-6588-411a-98e6-8f3cfbd61bef.png\" alt=\"图片2\" style=\"font-size: 14px; max-width: 100%;\"></div><p><img src=\"file:///C:\\Users\\lenovo\\AppData\\Local\\Temp\\ksohtml\\wps79E5.tmp.jpg\">&nbsp; &nbsp; &nbsp;<span style=\"font-size: 14px;\">在施工现场，毛劲松等一行人仔细听取了福心家园的整体规划、施工进度、质量安全措施及大气污染防治措施等情况的介绍，并对现场的规范化、标准化管理表示充分肯定，同时要求，要高标准，做好宝坻区棚改项目的标杆，保质保量完成还迁房建设。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; &nbsp;京宝公司表示，一定用心用力完成百万平方米还迁房任务，高标准，精益建设，严把各道关口，加强现场大气污染的防护措施，确保工程的质量安全，争取让百姓提前住进“放心、舒心、安心”的新家。</span></p><p><br></p></h2><p><br></p>', 'http://file.bucczhjb.com/f5d0d4a9-1148-444f-afc9-4dd76d80c900.png', '0', '2017-05-10 11:18:49', '2017-05-10 11:18:49');
INSERT INTO `oa_news` VALUES ('45', '104', '测试数据', '柘城票', '<p>柘城票</p>', 'http://file.bucczhjb.com/a0389b2b-47a0-4f92-a5e1-13616881f700.jpg', '1', '2017-05-25 22:55:31', '2017-05-25 22:55:50');
INSERT INTO `oa_news` VALUES ('46', '182', '筑梦砥砺行，青春勇担当 ——京宝公司“青春五月”系列活动', '筑梦砥砺行，青春勇担当——京宝公司“青春五月”系列活动5月19日，京宝公司团总支组织青年员工开展“筑梦砥砺行，青春勇担当”的主题实践活动，实地调研了宝坻区八门城欢喜庄村、林亭口镇小靳庄村以及大钟庄镇牛', '<h2 align=\"center\">筑梦砥砺行，青春勇担当 ——京宝公司“青春五月”系列活动</h2><p align=\"left\"><br></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5月19日，京宝公司团总支组织青年员工开展“筑梦砥砺行，青春勇担当 ”的主题实践活动，实地调研了宝坻区八门城欢喜庄村、林亭口镇小靳庄村以及大钟庄镇牛庄子村，推动青年践行“身在兵位，胸为企业谋”的意识，增强行动自觉，更加紧密的融入公司下一步的规划发展中。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 早晨8：30，沿着潮白河左堤一路向前，伴着清澈的河水和满眼的绿色，我们首先来到了欢喜庄村，这里是潮白河、箭杆河、蓟运河三河环抱，水稻成片，渔业发达，景色优美。</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"用\" src=\"http://file.bucczhjb.com/26faef28-c427-4d65-8ca4-450be1940e4d.jpg\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 大钟镇牛庄子村，这里以葫芦著称，青年员工一起参观了坐落在这里的中国葫芦博物馆，烙画、押花、雕刻、挤扣、彩绘每种精致的工艺都是工匠的精雕细作，大家也瞬间被这里各式各样的葫芦所吸引。</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"828A1936\" src=\"http://file.bucczhjb.com/92a49a2e-9a66-4c08-81fc-49fabd13ce37.JPG\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 还未进村就已感受到小靳庄村深厚的历史底蕴，留有历史痕迹的老房子依然整齐的排列着，赛诗会、样板戏一幅幅历史的画面绘制在沿街两侧的墙壁上。</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"828A2026\" src=\"http://file.bucczhjb.com/5645859f-d678-4de5-92e5-786ad1fc1b4e.JPG\"></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font face=\"微软雅黑\" size=\"3\">通过此次调研活动，大家对未来作为公司持续发展平台的“一河、三镇”所蕴含的人文、旅游、产业等地域和资源优势有了实质感受，纷纷表示，党有号召，团有行动，京宝青年将不断增强责任担当意识，立足岗位，做精益建设实干青年，敢为人先，做精益增值先锋青年，在公司为青年人搭建的广阔发展平台上，挥洒青春，收获梦想。</font></p><p><font face=\"微软雅黑\" size=\"3\"><br></font></p><p align=\"left\" style=\"text-align: center;\"><br></p><p><br></p>', 'http://file.bucczhjb.com/da50b3d4-6ba7-4a99-bda9-8786af5477e4.jpg', '0', '2017-06-30 13:34:49', '2017-06-30 13:34:49');
INSERT INTO `oa_news` VALUES ('47', '182', '宝坻区与京宝公司召开特色小镇座谈会', '宝坻区与京宝公司召开特色小镇座谈会5月20日下午，宝坻区区委副书记王宝雨主持，副区长王辉、建委主任芮淑霞（兼区人居办主任）、规划局局长郑向宏、八门城镇书记于学生等人，与住总设计院董事长李群、京宝公司董', '<h2 align=\"center\">宝坻区与京宝公司召开特色小镇座谈会</h2><p align=\"left\"><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5月20日下午，宝坻区区委副书记王宝雨主持，副区长王辉、建委主任芮淑霞（兼区人居办主任）、规划局局长郑向宏、八门城镇书记于学生等人，与住总设计院董事长李群、京宝公司董事长王欣、总经理曹蓉等人座谈，各方就宝坻区美丽乡村示范村欢喜庄的规划设计、农村集体建设用地指标的利用与流转、特色小镇的发展方向进行了研讨。</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 宝坻区率先启动的欢喜庄人居环境改善暨特色小镇建设项目，是宝坻区深入贯彻中央1号文件，探索发展新理念，充分挖掘其被誉为北国江南的自然生态禀赋，依托稻田蟹、蟹田稻的立体养殖产业，在兼顾市场、需求和资源环境约束的基础上，提高农产品品质、效益，坚持产出高效、产品安全、资源节约、环境友好的农业现代化发展道路，推进农业供给侧结构性改革的有益尝试。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 宝坻区希望住总集团积极参与宝坻区的人居环境暨特色小镇项目投资建设，先期以欢喜庄项目为样板，在以统筹联建房的模式与镇政府合作、进行农村人居环境改善的同时，共同探讨、研究，充分发挥政企合作优势，对腾退出的农村土地指标进行集约利用，以培育壮大农村新产业新业态作为农民收入持续较快增长的手段，利用良好的生态资源、丰富的民俗文化，打造特色小镇的农业观光、体验及旅游接待功能，在促使农业产业向纵深融合、破解新常态下的三农问题的同时，获得企业良好回报。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/d9b4ee10-570f-44bb-a960-83edafd0231a.jpg', '0', '2017-06-30 13:39:12', '2017-06-30 13:39:12');
INSERT INTO `oa_news` VALUES ('48', '182', '粽叶飘香迎端午', '粽叶飘香迎端午又是一年端午节，为弘扬传统文化，丰富员工文化生活，京宝公司工会组织员工开展“包粽子迎佳节传习俗”活动。5月24日下午，公司员工餐厅弥漫着粽叶的清香，食堂师傅帮忙做好前期准备工作，有经验的', '<h2 align=\"center\">粽叶飘香迎端午</h2><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;又是一年端午节，为弘扬传统文化，丰富员工文化生活，京宝公司工会组织员工开展“包粽子 迎佳节 传习俗”活动。\n</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"111\" src=\"http://file.bucczhjb.com/a11f88d4-a4b2-43b6-a44f-9aa520afbf6e.jpg\"></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"444\" src=\"http://file.bucczhjb.com/0c365eb1-61de-4242-8371-c4208d85aa6a.jpg\"></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"222\" src=\"http://file.bucczhjb.com/da5e458a-fe51-4202-95d4-fff6a4e33613.jpg\"></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"333\" src=\"http://file.bucczhjb.com/48562b6f-ddcb-4219-a8e2-8295920c9756.jpg\"></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp; 5月24日下午，公司员工餐厅弥漫着粽叶的清香，食堂师傅帮忙做好前期准备工作，有经验的师傅指导大家包粽子的技巧，卷粽叶，加糯米、加蜜枣、加豆沙、加花生等等配料，充实压紧，再用绳一绕、一捆，一张张绿色的粽叶在他们手里变成了一个个饱满的粽子。有的年轻人是第一次包粽子，包出来的米粽形状怪异，引得笑声一片，大家拿着自己的“首秀粽”，非常得意，或炫耀，或拍照留念……忙得不亦乐乎，在欢声笑语中体验了包粽子的乐趣，增进了彼此的交流，感受浓浓的端午氛围，更体会着京宝大家庭的温馨。</font></p><p><br></p><p><br></p>', 'http://file.bucczhjb.com/a2ead025-c3b5-41c6-825d-f13b55acadcc.jpg', '0', '2017-06-30 13:49:10', '2017-06-30 13:49:10');
INSERT INTO `oa_news` VALUES ('49', '182', '京宝公司举行升旗仪式暨爱国主义教育活动', '京宝公司举行升旗仪式暨爱国主义教育活动阳光明媚，惠风和畅，5月26日上午，京宝公司举行升旗仪式暨爱国主义教育活动，公司全体员工参加，党委书记、董事长王欣主持升旗仪式。9点整，旗手们迈着整齐有力的步伐入', '<h2 align=\"center\">京宝公司举行升旗仪式暨爱国主义教育活动</h2><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;阳光明媚，惠风和畅，5月26日上午，京宝公司举行升旗仪式暨爱国主义教育活动，公司全体员工参加，党委书记、董事长王欣主持升旗仪式。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9点整，旗手们迈着整齐有力的步伐入场，升旗仪式开始，《国歌》、《住总之歌》分别奏响，在高昂的旋律中，国旗、司旗先后升起，迎风飘扬，全体员工精神饱满、凝神注目，场面庄严肃穆。\n</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"111\" src=\"http://file.bucczhjb.com/347c4f4c-4620-4f84-8cc5-0434d7104865.jpg\"></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"222\" src=\"http://file.bucczhjb.com/92986976-364d-4b5e-9e67-bc61be2edb3b.jpg\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “我们的目标：成为知名的投资建设运营服务商……”，“我们的己任：身在兵位，胸为帅谋”，在王欣的带领下，全体员工在国旗和司旗下，庄严的诵读《北京住总宣言》，重温住总发展的始末和强劲动力，铿锵洪亮的声音宣告着新时代住总人在转型投资建设运营服务商的道路上真干、实干，砥砺前行的干劲和勇往直前、自强不息的精神。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过此次升旗仪式，传承爱国主义精神，弘扬企业文化，不忘初心，时刻谨记住总宣言的深刻内涵，内化于心，外化于形，将爱国、爱企转化为工作实践的内生动力，以更加饱满的热情投入到工作中，立足本职，扎实工作，努力践行“身在兵位，胸为帅谋”的己任，不断创造新的业绩，为公司的持续发展，为住总做强做优做大贡献力量。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/38ffea05-4c0b-4ced-b96f-4514a08b2df5.jpg', '0', '2017-06-30 13:55:29', '2017-06-30 13:55:29');
INSERT INTO `oa_news` VALUES ('50', '182', '宝坻区与京宝公司召开特色小镇暨欢喜庄安居项目户型方案设计交流座谈会', '宝坻区与京宝公司召开特色小镇暨欢喜庄安居项目户型方案设计交流座谈会6月1日下午，宝坻区与京宝公司召开特色小镇暨欢喜庄安居项目户型方案设计交流座谈会。宝坻区区委副书记王宝雨主持，建委主任芮淑霞（兼区人居', '<h2 align=\"center\">宝坻区与京宝公司召开特色小镇暨欢喜庄安居项目户型方案设计交流座谈会</h2><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6月1日下午，宝坻区与京宝公司召开特色小镇暨欢喜庄安居项目户型方案设计交流座谈会。宝坻区区委副书记王宝雨主持，建委主任芮淑霞（兼区人居办主任）出席，区委研究室、区人居办、八门城镇及欢喜庄村相关领导，住总设计院总经理钱嘉宏，京宝公司党委书记、董事长王欣、总经理曹蓉等人参加了座谈，听取了设计团队的方案汇报。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会上，各方就宝坻区美丽乡村示范村欢喜庄的村民安置户型设计及村民的安置意愿做了深入交流，坚持将百姓利益放在首位，以人为本，在规划设计中采用亲水、亲田的设计理念，突出北国水乡特色，塑造并体现津派徽系的设计亮点，让空间布局错落有致、曲径通幽，让基础设施与配套服务完善齐全、便民利民，保证百姓能尽快搬进环境更优美，出行更便捷，生活更舒适的新家，让田园牧歌与现代文明在人文宝地上奏出和谐乐章。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 宝坻区希望住总集团发挥专业优势，通过住总集团与镇村政府的政企合作模式，充分利用良好的生态资源、丰富的民俗文化，建成让百姓满意，让政府放心的优质示范工程。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/e6c7b8d7-efee-4528-a8f8-26417d0c3aac.jpg', '0', '2017-06-30 13:58:02', '2017-06-30 13:58:02');
INSERT INTO `oa_news` VALUES ('51', '182', '远离压力，提高效率——京宝公司团总支开展青年读书会活动', '远离压力，提高效率——京宝公司团总支开展青年读书会活动“时间管理的本质，是管理我们的心智和行动”这是公司党委书记、董事长王欣为青年员工推荐的新书《搞定无压工作的艺术》中的一句话。“青春五月”主题活动精', '<h2 align=\"center\">远离压力，提高效率\n</h2><h2 align=\"center\">——京宝公司团总支开展青年读书会活动\n</h2><p align=\"left\"><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “时间管理的本质，是管理我们的心智和行动”这是公司党委书记、董事长王欣为青年员工推荐的新书《搞定无压工作的艺术》中的一句话。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “青春五月”主题活动精彩继续，6月2日，为建设学习型团组织，不断挖掘青年人的智慧与激情，京宝公司团总支以“远离压力，提高效率”为主题开展“青年读书会活动”，公司党委副书记、总经理曹蓉，党委副书记、纪委书记张少丽及公司全体青年员工参加。</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 大家围绕《搞定无压工作的艺术》一书中提到的时间管理与GTD（Getting Things Done）工作法以及如何减少负面情绪、如何养成收集的习惯、如何提前确定下一步行动、如何学会关注结果等内容进行了学习与研讨，并结合自己的工作实例进行了分享与交流。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在交流过程中，针对问题和困惑，公司领导一一解答，并激励青年员工要能吃苦、敢担当、勇奉献。同时要求青年员工以读书会为平台，对学习内容及新知识有所思、有所悟、有改进、有提升，不断增强自身的硬件能力，掌握好时间管理的本质，提前思考、提前策划，做到事事有策划，项项有方案，处处有亮点，在工作中展示青年人的自信与风采，践行“身在兵位，胸为帅谋”的己任，提交过硬的工作成果，为公司发展贡献青春力量。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 京宝公司团总支一直以青年读书会为载体，培养青年多读书、读好书、善读书的良好习惯，营造浓厚的学习氛围。团总支还将延伸组织专题研读、好书推荐、美文鉴赏和拓展交流等丰富多样的活动，教育和引导青年以书为师，以书为友，共同建设“书香京宝”。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/5c65ba7f-31c0-47a2-86ff-7167dfbb6d37.jpg', '0', '2017-06-30 14:02:14', '2017-06-30 14:02:14');
INSERT INTO `oa_news` VALUES ('52', '182', '集团派出监事会一办到京宝公司反馈2016年度监督检查情况', '集团派出监事会一办到京宝公司反馈2016年度监督检查情况6月6日，集团公司派出监事会第一办事处主席朱建华、副主席杨海坤、专职监事尹洪春、王晨到京宝公司反馈2016年度监督检查情况。公司班子成员及相关人', '<h2 align=\"center\">集团派出监事会一办到京宝公司反馈2016年度监督检查情况</h2><p align=\"left\"><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6月6日，集团公司派出监事会第一办事处主席朱建华、副主席杨海坤、专职监事尹洪春、王晨到京宝公司反馈2016年度监督检查情况。公司班子成员及相关人员参加了会议。会议由派出监事会一办副主席杨海坤主持。\n</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"合影\" src=\"http://file.bucczhjb.com/cd1327e7-8ed4-4fbf-b036-09769c3b5ddf.jpg\"></p><p align=\"left\"><font face=\"微软雅黑\" size=\"3\">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会上，朱建华主席就集团开发板块总体概况、绩效特色及存在主要问题进行了沟通交流。\n</font></p><p align=\"left\"><font face=\"微软雅黑\" size=\"3\">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 专职监事尹洪春宣读了《集团派出监事会一办2016年度对京宝公司监督检查情况反馈报告》，从主要经营指标完成情况、经营班子履职情况、主要经营工作完成情况、存在的主要问题、建议及关注事项等方面进行了反馈。\n</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"王总1\" src=\"http://file.bucczhjb.com/1cc6cab2-f21d-4330-ac5c-ded216792070.jpg\"></p><p align=\"left\"><font face=\"微软雅黑\" size=\"3\">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 京宝公司党委书记、董事长王欣对监事会一办长期以来的支持和帮助表示感谢。同时他表示，监督反馈报告站位高、语言精练、剖析精确，问题精准。针对反馈提出的相关问题及关注事项，京宝公司将专题研究，认真分析梳理，制定具体整改措施，责任到人，落实到位，同时进一步强化合规意识，持续优化完善经营管理体系，使公司健康、合规运行。在人才储备和使用上，京宝公司将结合企业发展实际需求，超前谋划，引进、储备、培养专业人才，为公司可持续发展奠定人力资源支撑。\n</font></p><p align=\"left\"><font face=\"微软雅黑\" size=\"3\">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 朱建华主席对京宝公司各方面工作给予了充分肯定，同时围绕“牢记住总宣言，传承住总文化”与班子成员进行了交流，并给予了相应建议，要坚定文化自信，将住总文化根植于全体员工的心中，内化于心，外化于行，落实到各项管理中，立足岗位，践行“身在兵位，胸为帅谋”，落实到具体行动中，使文化引领成为推动企业发展的文化引擎，凝心聚力，抢抓机遇，深耕区域市场，为集团转型升级和“1216”的住总梦贡献力量。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/47639ac4-96cc-4e02-b621-69a7327f683b.jpg', '0', '2017-06-30 14:16:25', '2017-06-30 14:16:25');
INSERT INTO `oa_news` VALUES ('53', '182', '笃学实做，创新“两学一做”长效机制， 服务中心，持续发挥堡垒作用强动力 ——京宝公司开展支部共建活动', '笃学实做，创新“两学一做”长效机制，服务中心，持续发挥堡垒作用强动力——京宝公司开展支部共建活动6月8日，京宝公司置地党支部与国开行北京分行规划发展处党支部开展共建活动，进一步拓展“政企银”支部共建活', '<h2 align=\"center\">笃学实做，创新“两学一做”长效机制， 服务中心，持续发挥堡垒作用强动力</h2><h2 align=\"center\">&nbsp;——京宝公司开展支部共建活动</h2><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6月8日，京宝公司置地党支部与国开行北京分行规划发展处党支部开展共建活动，进一步拓展“政企银”支部共建活动经验成果，持续推进“两学一做”学习教育，充分发挥支部堡垒作用向基层延伸，笃学实做。\n</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"1111\" src=\"http://file.bucczhjb.com/e7ae4c6b-60cd-491a-95c3-ec2a84a24582.jpg\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 共建活动以“笃学实做，创新‘两学一做’长效机制，服务中心，持续发挥堡垒作用强动力”为主题，进行了交流研讨，互相介绍了新的做法及设想，共享支部经验，深入探讨特色小镇及美丽乡村建设的有关政策、融资模式创新及后期运营等问题。之后，两个支部实地调研了公司入围的宝坻区特色小镇及美丽乡村“一河三镇”的建设即：宝坻区八门城欢喜庄村、大钟庄镇牛庄子村和林亭口镇小靳庄村。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年，两个支部将充分发挥支部共建活动的平台作用，不断实践丰富创新成果，以“抓党建促发展”为核心，以“强支部添动力”为着力点，不断增强支部战斗力和党员的凝聚力，借力“资源共享桥”，以党建交流的新成效促进业务合作新发展。</font>\n</p><p><br></p>', 'http://file.bucczhjb.com/691c55f0-d21e-4738-bf79-f7aa55feaef1.jpg', '0', '2017-06-30 14:50:36', '2017-06-30 14:50:36');
INSERT INTO `oa_news` VALUES ('54', '182', '集团公司财务总监张恒跃到京宝公司调研“大提效”工作', '集团公司财务总监张恒跃到京宝公司调研“大提效”工作6月9日下午，集团公司财务总监张恒跃带队，集团公司副总会计师肖冬梅、财务部部长李静源、资金管理中心主任霍宝忠、财务部副部长赵荷花、财务部吕玲一行六人，', '<h2 align=\"center\">集团公司财务总监张恒跃到京宝公司调研“大提效”工作</h2><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6月9日下午， 集团公司财务总监张恒跃带队，集团公司副总会计师肖冬梅、财务部部长李静源、资金管理中心主任霍宝忠、财务部副部长赵荷花、财务部吕玲一行六人，来到京宝公司对2017 年“大提效”工作进展情况进行调研。京宝公司党委书记、董事长王欣，总经理曹蓉、领导班子成员及相关人员参加。\n</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"QQ图片20170630145608\" src=\"http://file.bucczhjb.com/a971fb23-d125-4b77-97a3-5df1a1c9bcde.png\"></p><p><font face=\"微软雅黑\" size=\"3\">   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会上，京宝公司总经理曹蓉从年初既定的提效目标，即降低融资成本、加强资金集中管理、提高增值税专票取得率三个方面进行了“大提效”工作进展情况汇报。 \n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;集团财务总监张恒跃对京宝公司通过使用基准利率项目贷款替换利率上浮贷款周转贷款的工作给予了充分肯定，针对一级土地开发企业普遍存在的资金回流及资产负债等问题，结合京宝公司具体情况和当前融资环境的变化，提出了工作要求：一是统筹投资回收与利润分配，积极争取政府方支持；二是密切关注下半年及明年的资金状况，提前做好融资预案，保证经营资金的充足；三是灵活应对融资规模、资产负债率和资金集中管理；四是运用纳税新政，争取有利执行。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 会上，张恒跃还就特色小镇融资模式、ppp项目运作、宝坻项目税收落地与公司领导班子进行了交流。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/2c44c3e3-60b5-46e1-ab98-4c079b6af050.png', '0', '2017-06-30 15:03:56', '2017-06-30 15:03:56');
INSERT INTO `oa_news` VALUES ('55', '182', '全面落实企业安全生产主体责任——安全生产月宣传活动在行动', '全面落实企业安全生产主体责任——安全生产月宣传活动在行动6月16日，以“全面落实企业安全生产主体责任”为主题的安全生产月宣传活动，在京宝公司负责开发建设的福心家园工程项目现场开展，此次活动由宝坻区建设', '<h2 align=\"center\">全面落实企业安全生产主体责任</h2><h2 align=\"center\">——安全生产月宣传活动在行动</h2><p align=\"left\"><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6月16日，以“全面落实企业安全生产主体责任”为主题的安全生产月宣传活动，在京宝公司负责开发建设的福心家园工程项目现场开展，此次活动由宝坻区建设管理委员会主办，住总集团承办。宝坻区副区长王辉、区建委主任芮淑霞、区建委党委书记董德仲、区安监局、区消防支队、街道等相关领导；集团公司安全总监严玉材，京宝公司党委书记、董事长王欣、总经理曹蓉及相关领导；所有宝坻还迁房建设的参建单位、监理单位相关人员，共计400余人参加了此次活动。\n</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"123\" src=\"http://file.bucczhjb.com/eea7a5c1-6657-4962-8692-b4395a10103c.jpg\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上午8:30活动正式开始，住总集团安全总监严玉材代表住总集团宝坻参建单位做了发言，他提出，通过安全文化宣传教育活动进一步普及安全知识，弘扬安全文化，营造安全氛围，全面落实企业安全生产主体责任，住总集团将不断创新安全生产宣传教育的方式方法，积极推进“大宣讲”和“分类宣传”向深度发展，集中开展贴近一线职工和社会公众的安全生产宣教活动，不断提高全员的安全意识。同时号召：所有参与宝坻建设的兄弟企业，行动起来，进一步提高企业安全生产核心能力，推动企业安全发展。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 宝坻区副区长王辉做了讲话，他要求：要牢固树立“隐患就是事故”的理念，坚持“铁面、铁规、铁腕、铁心”，建立严密严厉严格的责任体系，打造安全生产示范城市。安全生产是工程建设永恒的主题，任务艰巨，责任重大，意义深远，各参建单位要全面落实主体责任，狠抓安全隐患排查整改，把安全生产摆在突出位置，群策群力，常抓不懈，推动区建筑工程安全生产工作再上新台阶，为宝坻区加快建设成为京津冀现代化中等城市做出更大贡献。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 为保证此次活动有效开展，京宝公司协同宝坻区建委安监支队，制定详细方案，精细策划，精心组织。宣传活动包括实战消防模拟演练、安全知识讲座、安全文化宣传演出。消防演练由住总集团参建单位和消防支队协同演习，现场展示了人员疏散、人员施救、自我扑救、报警与协同作战等环节；安全知识讲座特邀请了倪树华主讲；安全文化宣传演出丰富多彩，形式多样。\n</font></p><p><img style=\"max-width: 100%;\" alt=\"2222 - 副本\" src=\"http://file.bucczhjb.com/d6c149ac-b1d3-4c33-a065-f2265f1c8703.jpg\"></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"3333\" src=\"http://file.bucczhjb.com/5d3ac36e-34f7-4fd1-bb31-bb2802a405b3.jpg\"></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"4444\" src=\"http://file.bucczhjb.com/ea73f16a-62cf-4d62-9f4f-9975e515509e.jpg\"></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"555 - 副本\" src=\"http://file.bucczhjb.com/d2702d57-249c-4de8-aee1-f5bbca7523eb.jpg\"></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"77777\" src=\"http://file.bucczhjb.com/7d243b8d-0a0c-4ef9-a6b5-d64dc4703604.jpg\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全面落实安全生产主体责任，政企联动，职能联动，形成合力，牢固树立起安全生产无小事，安全生产人人有责的意识，将主体责任落实到位，安全责任意识强化到位，真正把“安全第一、预防为主、综合治理”的安全方针贯彻落到实处，共同推动还迁房建设安全、平稳、顺利进行，共同促进宝坻区建设的安全维稳，共同为保障党的“十九大”顺利召开创造良好的安全生产环境。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/8d521d21-0442-49c1-9847-bc86e22dbe9b.jpg', '0', '2017-06-30 15:21:49', '2017-06-30 15:21:49');
INSERT INTO `oa_news` VALUES ('56', '182', '住总的还迁房比我家的商品房质量还棒', '住总的还迁房比我家的商品房质量还棒6月29日，宝坻区政协主席李维怀、副区长王辉、区政协委员、建委、房建办及街道相关领导一行人，到京宝公司蝶恋项目和福心家园项目现场进行视察，京宝公司党委书记、董事长王欣', '<h2 align=\"center\">住总的还迁房比我家的商品房质量还棒</h2><p align=\"left\"><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6月29日，宝坻区政协主席李维怀、副区长王辉、区政协委员、建委、房建办及街道相关领导一行人，到京宝公司蝶恋项目和福心家园项目现场进行视察，京宝公司党委书记、董事长王欣及相关人员陪同。\n</font></p><p><img style=\"max-width: 100%;\" alt=\"111\" src=\"http://file.bucczhjb.com/b99b962d-e04b-439c-bf4b-02ee0fc222fe.jpg\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在蝶恋项目现场，李维怀仔细听取了工程规划、施工进度、文明施工与环境保护以及还迁村庄、还迁户数等情况的介绍。当听到住总要保质保量让百姓提前入住时，他连连点头。在福心家园项目现场，李维怀等人重点查看了样板间，对每道工序的规范化、标准化管理表示充分肯定，走出样板间，他称赞道：“住总的还迁房比我家的商品房质量还棒，住总的高标准管理，非常值得学习，希望百姓能够提前住上住总建的放心房”。 \n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 京宝公司党委书记、董事长王欣表示，坚持弘扬工匠精神，弘扬“建房人永远想着住房人的”的住总文化，在还迁房建设中精益管理，精益建设，严格坚持样板先行，将每一道工序标准以微视频形式延伸至班组，严把质量关，争取提前让百姓搬进放心、舒适的“新家”。\n</font></p><p><br></p>', 'http://file.bucczhjb.com/5b61d17a-de5a-4826-9574-a458eb0a9c0f.jpg', '0', '2017-06-30 15:31:23', '2017-06-30 15:31:23');
INSERT INTO `oa_news` VALUES ('57', '182', '京宝公司多种形式纪念建党96周年——支部共建活动持续深化', '京宝公司多种形式纪念建党96周年——支部共建活动持续深化京宝公司“先锋七月”主题月系列活动继续，支部共建活动持续深化。7月4日，京宝公司置业党支部与区建委质安支队党支部共同来到宝坻区尔王庄镇冯家庄红色', '<h2 align=\"center\">京宝公司多种形式纪念建党96周年</h2><h2 align=\"center\">&nbsp;——支部共建活动持续深化</h2><p align=\"left\"><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 京宝公司“先锋七月”主题月系列活动继续，支部共建活动持续深化。7月4日，京宝公司置业党支部与区建委质安支队党支部共同来到宝坻区尔王庄镇冯家庄红色教育基地，以“坚定信念 传承红色基因  践行承诺 做‘四个合格’党员”为主题开展支部共建活动。</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"QQ图片20170704201617\" src=\"http://file.bucczhjb.com/437d7247-9d58-4318-a8ff-936334a77878.png\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在教育基地的党旗雕塑前，质安支队支部书记、支队长薄丽江带领两个支部全体党员重温入党誓词，“我志愿加入中国共产党，拥护党的纲领，遵守党的章程，履行党员义务……”，入党誓词的每个字，如铿锵的鼓点，激荡在每一名党员的心头，牢记党员的第一身份，坚定理想信念，不忘入党初心。</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"QQ图片20170704201722\" src=\"http://file.bucczhjb.com/65fd8e7b-35e1-4a37-97d9-307530a3fc5d.png\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 两个党支部带领全体党员亮出共同承诺，做合格党员，做战斗堡垒型支部。每一名党员都认真签下自己的名字，敢担当、敢负责、敢作为，做到“平常时候看得出来、关键时刻站得出来、危急关头豁得出来”，充分发挥党员的模范带头作用，凝聚力量，攻坚克难，充分发挥支部的战斗堡垒作用，共促发展。</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"QQ图片20170704201841\" src=\"http://file.bucczhjb.com/67cb9584-b06b-4e32-96b6-383d4c4d72c9.png\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 随后，两个支部党员在讲解员的引导下参观了党史馆，通过观看大量文献资料、历史图片，追寻红色记忆，领略中国共产党奋斗、建设的华彩篇章，回顾抗战时期，特别是冯家庄村党员群众积极投身革命、英勇奋战的光辉历程。大家深深地被中国共产党不平凡的发展史所震撼，更为无数革命先驱抛头颅洒热血的革命品质和先进人物崇高精神所感染。</font></p><p align=\"center\" style=\"text-align: center;\"><img style=\"max-width: 100%;\" alt=\"QQ图片20170704201945\" src=\"http://file.bucczhjb.com/fd0f2a27-9c42-4597-9995-5aac09705e31.png\"></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 最后，两个党支部围绕主题，就推进“两学一做”学习教育常态化制度化、创新支部共建活动增添新动力以及还迁房建设中的实际问题进行了交流座谈。</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 此次活动是对两个支部党员一次深刻的党性教育。党员一致表示，要把此次参观活动与“两学一做”学习教育紧密结合起来，不忘初心，重拾信心，传承红色基因，时刻以共产党员标准严格要求自己，坚定理想信念、牢记职责使命，奉献担当作为，以更加饱满的精神状态投入到岗位工作中。\n</font></p><p><font face=\"微软雅黑\" size=\"3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 质安支队党支部全体党员、京宝公司全体党员及积极分子以及参建项目部项目经理、项目书记，共计40余人参加本次活动，通过支部共建活动搭建互学互促、互督互促的交流平台，共同携手推动还迁房建设，建百姓放心房，助力宝坻新城快速发展。</font></p><p><br></p>', 'http://file.bucczhjb.com/10f7b8c7-54c5-43d6-be93-ef7a510d954d.png', '0', '2017-07-04 20:20:56', '2017-07-04 20:20:56');

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
  `contract_name` varchar(64) NOT NULL COMMENT '合同名称',
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
INSERT INTO `oa_plan_repay` VALUES ('3', '2016', '2', '1', '1', '123', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-06 17:20:37', '2017-07-06 17:20:37');
INSERT INTO `oa_plan_repay` VALUES ('4', '2017', '2', '2', '1', '456', '1.00', '1.00', '1.00', '1.00', '1.00', '1', '2017-07-06 17:22:21', '2017-07-06 17:22:21');

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
  `mobile` varchar(16) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL,
  `departmentIds` varchar(64) NOT NULL,
  `positionIds` varchar(64) NOT NULL,
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
INSERT INTO `oa_user` VALUES ('1', '123456', '123456', '123456', '1,2', '3,4,5,6', '1', '', null, '2017-06-22 17:25:04', '2017-07-04 20:51:02');
INSERT INTO `oa_user` VALUES ('3', '2', '222', '123456', '1,2', '1', '2', '', null, '2017-07-02 11:22:02', '2017-07-04 20:51:05');

-- ----------------------------
-- Table structure for oa_user_department
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_department`;
CREATE TABLE `oa_user_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

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
INSERT INTO `oa_user_department` VALUES ('19', '1', '1');
INSERT INTO `oa_user_department` VALUES ('20', '1', '2');

-- ----------------------------
-- Table structure for oa_user_position
-- ----------------------------
DROP TABLE IF EXISTS `oa_user_position`;
CREATE TABLE `oa_user_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oa_user_position
-- ----------------------------
INSERT INTO `oa_user_position` VALUES ('1', '4', '1');
INSERT INTO `oa_user_position` VALUES ('2', '5', '1');
INSERT INTO `oa_user_position` VALUES ('3', '6', '1');
INSERT INTO `oa_user_position` VALUES ('4', '7', '1');
INSERT INTO `oa_user_position` VALUES ('13', '1', '3');
INSERT INTO `oa_user_position` VALUES ('14', '1', '4');
INSERT INTO `oa_user_position` VALUES ('15', '1', '5');
INSERT INTO `oa_user_position` VALUES ('16', '1', '6');

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