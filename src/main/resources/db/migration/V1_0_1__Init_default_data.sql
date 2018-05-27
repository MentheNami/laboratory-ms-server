/*
Navicat MySQL Data Transfer

Source Server         : localhost-lqms
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : cqtguniversity_lqms

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-05-27 20:25:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attached_file
-- ----------------------------
DROP TABLE IF EXISTS `attached_file`;
CREATE TABLE `attached_file` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `file_no` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '文件编号',
  `uploaded_by` bigint(11) unsigned NOT NULL COMMENT '上传者',
  `file_type` bigint(11) unsigned NOT NULL COMMENT '文件类型',
  `file_name` varchar(127) COLLATE utf8_bin NOT NULL COMMENT '文件名称',
  `file_path` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '文件路径',
  `file_extension` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '文件格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件表';

-- ----------------------------
-- Records of attached_file
-- ----------------------------
INSERT INTO `attached_file` VALUES ('2', '2018-05-18 09:23:23', '2018-05-18 09:23:23', 'SXLQMS-WJ-2018-00002', '1', '5', '手绘风格工作总结汇报计划PPT', '2018\\4\\18\\261e6a91-8b98-4f26-ac58-fbc417df9eca.pptx', 'pptx');
INSERT INTO `attached_file` VALUES ('3', '2018-05-19 00:19:08', '2018-05-19 00:19:08', 'SXLQMS-WJ-2018-00003', '4', '5', '文件流程图', '2018\\4\\19\\14538990-48eb-4872-86db-07441c9d0e4c.vsdx', 'vsdx');
INSERT INTO `attached_file` VALUES ('4', '2018-05-19 00:21:33', '2018-05-19 00:21:33', 'SXLQMS-WJ-2018-00004', '4', '5', '编号规则E-R模型', '2018\\4\\19\\48383ba9-ac1d-40bd-8d66-19c6b70f90c2.vsd', 'vsd');

-- ----------------------------
-- Table structure for attached_group
-- ----------------------------
DROP TABLE IF EXISTS `attached_group`;
CREATE TABLE `attached_group` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增-序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `group_type` bigint(11) unsigned NOT NULL COMMENT '附件组类型',
  `group_name` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '附件组名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='附件组表';

-- ----------------------------
-- Records of attached_group
-- ----------------------------

-- ----------------------------
-- Table structure for code
-- ----------------------------
DROP TABLE IF EXISTS `code`;
CREATE TABLE `code` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `cell_phone` char(11) COLLATE utf8_bin NOT NULL COMMENT '手机',
  `code` char(6) COLLATE utf8_bin NOT NULL COMMENT '验证码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='验证码表';

-- ----------------------------
-- Records of code
-- ----------------------------
INSERT INTO `code` VALUES ('10', '2018-05-16 13:00:24', '2018-05-16 13:00:24', '13647696216', '461485');

-- ----------------------------
-- Table structure for common_content
-- ----------------------------
DROP TABLE IF EXISTS `common_content`;
CREATE TABLE `common_content` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增-序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `content` text COLLATE utf8_bin COMMENT '长文本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='长文本表';

-- ----------------------------
-- Records of common_content
-- ----------------------------
INSERT INTO `common_content` VALUES ('1', '2018-05-08 00:48:52', '2018-05-08 00:48:54', 0xE7B3BBE7BB9FE794A8E688B7);
INSERT INTO `common_content` VALUES ('2', '2018-05-08 00:49:10', '2018-05-08 00:49:13', 0xE59FBAE69CACE794A8E688B7);
INSERT INTO `common_content` VALUES ('3', '2018-05-12 13:47:35', '2018-05-12 13:47:35', 0xE5AE9EE9AA8CE5AEA4E4BABAE59198);
INSERT INTO `common_content` VALUES ('4', '2018-05-12 13:51:57', '2018-05-12 13:51:57', 0xE5B7B2E7BB8FE5908CE6848F);
INSERT INTO `common_content` VALUES ('5', '2018-05-15 11:21:11', '2018-05-15 11:21:11', 0x3432);
INSERT INTO `common_content` VALUES ('6', '2018-05-15 11:31:04', '2018-05-15 11:31:04', 0x3435);
INSERT INTO `common_content` VALUES ('7', '2018-05-15 11:32:15', '2018-05-15 11:32:15', 0x34353634);
INSERT INTO `common_content` VALUES ('8', '2018-05-16 17:04:54', '2018-05-16 17:04:54', 0xE5B081E58FB7E590A7);
INSERT INTO `common_content` VALUES ('9', '2018-05-16 17:04:58', '2018-05-16 17:04:58', 0xE5B081E58FB7E590A7);
INSERT INTO `common_content` VALUES ('10', '2018-05-16 17:05:09', '2018-05-16 17:05:09', 0xE5B081E58FB7E590A7);
INSERT INTO `common_content` VALUES ('11', '2018-05-16 17:09:55', '2018-05-16 17:09:55', 0xE5BBBAE8AEAEE5B081E58FB7);
INSERT INTO `common_content` VALUES ('12', '2018-05-16 17:33:52', '2018-05-16 17:33:52', 0xE8BEA3E9B8A1);
INSERT INTO `common_content` VALUES ('13', '2018-05-16 17:33:54', '2018-05-16 17:33:54', 0xE8BEA3E9B8A1);
INSERT INTO `common_content` VALUES ('14', '2018-05-17 11:14:19', '2018-05-17 11:14:19', 0x3435);
INSERT INTO `common_content` VALUES ('15', '2018-05-17 11:17:11', '2018-05-17 11:17:11', 0x3435);
INSERT INTO `common_content` VALUES ('16', '2018-05-17 11:18:27', '2018-05-17 11:18:27', 0x3536);
INSERT INTO `common_content` VALUES ('17', '2018-05-17 11:20:45', '2018-05-17 11:20:45', 0x3435);
INSERT INTO `common_content` VALUES ('18', '2018-05-17 11:25:26', '2018-05-17 11:25:26', 0x3435);
INSERT INTO `common_content` VALUES ('19', '2018-05-17 11:47:34', '2018-05-17 11:47:34', 0x3635333531);
INSERT INTO `common_content` VALUES ('20', '2018-05-18 19:05:05', '2018-05-18 19:05:05', 0x34353231333231);
INSERT INTO `common_content` VALUES ('21', '2018-05-18 19:08:00', '2018-05-18 19:08:00', 0x343132);
INSERT INTO `common_content` VALUES ('22', '2018-05-18 19:14:07', '2018-05-18 19:14:07', 0x34353432);
INSERT INTO `common_content` VALUES ('23', '2018-05-18 19:19:03', '2018-05-18 19:19:03', 0x3534333436);
INSERT INTO `common_content` VALUES ('24', '2018-05-18 23:55:19', '2018-05-18 23:55:19', 0xE5AE9EE9AA8CE5AEA4E9A284E5AE9AE6938DE4BD9CE4B88DE781B5E6B4BBEFBC8CE4B88DE4BEBFE4BA8EE794A8E688B7E4BDBFE794A8E38082);
INSERT INTO `common_content` VALUES ('25', '2018-05-18 23:59:06', '2018-05-18 23:59:06', 0xE79BAEE5898DE5BC80E58F91E591A8E69C9FE8BE83E79FADEFBC8CE5908EE69C9FE79D80E9878DE5AE8CE59684E8AFA5E58A9FE883BDE38082E8B0A2E8B0A2E682A8E79A84E58F8DE9A688E38082);
INSERT INTO `common_content` VALUES ('26', '2018-05-19 01:27:51', '2018-05-19 01:27:51', 0xE7A9BAE8B083E697A0E6B09FEFBC8CE99C80E8A681E6B7BBE58AA0E38082);
INSERT INTO `common_content` VALUES ('27', '2018-05-19 01:28:23', '2018-05-19 01:28:23', 0xE5908CE6848FE696B9E6A188);
INSERT INTO `common_content` VALUES ('28', '2018-05-19 01:38:57', '2018-05-19 01:38:57', 0xE8A1A8E99DA2E6B885E6B481);
INSERT INTO `common_content` VALUES ('29', '2018-05-19 01:39:23', '2018-05-19 01:39:23', 0xE5908CE6848F);

-- ----------------------------
-- Table structure for complaint
-- ----------------------------
DROP TABLE IF EXISTS `complaint`;
CREATE TABLE `complaint` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `complainant_name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '投诉方名称',
  `complaint_no` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '投诉编号',
  `user_id` bigint(11) unsigned NOT NULL COMMENT '用户信息id',
  `address` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '地址',
  `complaint_title` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '投诉标题',
  `complaint_detail` bigint(11) unsigned NOT NULL COMMENT '投诉详情',
  `complainant_status` tinyint(1) unsigned NOT NULL COMMENT '投诉状态',
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='投诉表';

-- ----------------------------
-- Records of complaint
-- ----------------------------
INSERT INTO `complaint` VALUES ('10', '2018-05-18 23:55:20', '2018-05-18 23:55:20', '重庆电信分公司', 'SXLQMS-TS-2018-00013', '2', '茶园新区科创中心', '实验室预定', '24', '1', '0');

-- ----------------------------
-- Table structure for complaint_accept
-- ----------------------------
DROP TABLE IF EXISTS `complaint_accept`;
CREATE TABLE `complaint_accept` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `complain_id` bigint(11) unsigned NOT NULL COMMENT '投诉id',
  `acceptor_by` bigint(11) unsigned NOT NULL COMMENT '受理者',
  `processing_advice` tinyint(1) unsigned NOT NULL COMMENT '投诉处理意见：同意/驳回',
  `processing_content` bigint(11) unsigned NOT NULL COMMENT '处理内容',
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='投诉受理表';

-- ----------------------------
-- Records of complaint_accept
-- ----------------------------
INSERT INTO `complaint_accept` VALUES ('2', '2018-05-18 23:59:06', '2018-05-18 23:59:06', '10', '4', '1', '25', '0');

-- ----------------------------
-- Table structure for config_option_detail
-- ----------------------------
DROP TABLE IF EXISTS `config_option_detail`;
CREATE TABLE `config_option_detail` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `system` tinyint(1) NOT NULL COMMENT '系统固有标识，若为真，则不能修改删除',
  `is_deleted` tinyint(1) NOT NULL COMMENT '逻辑删除',
  `group_id` bigint(11) unsigned NOT NULL COMMENT '分组id',
  `option_name` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '选项名称',
  `option_value` varchar(16) COLLATE utf8_bin NOT NULL COMMENT '选项值',
  `priority` int(5) NOT NULL COMMENT '优先级排序',
  `use_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '使用数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='配置选项详情';

-- ----------------------------
-- Records of config_option_detail
-- ----------------------------
INSERT INTO `config_option_detail` VALUES ('1', '2018-03-30 11:19:22', '2018-03-30 11:19:24', '1', '0', '1', '申请编号', 'applyNo', '1', '0');
INSERT INTO `config_option_detail` VALUES ('2', '2018-03-30 11:20:14', '2018-03-30 11:20:16', '1', '0', '1', '设备编号', 'deviceNo', '1', '0');
INSERT INTO `config_option_detail` VALUES ('3', '2018-03-30 11:20:45', '2018-03-30 11:20:47', '1', '0', '1', '投诉编号', 'complaintNo', '1', '0');
INSERT INTO `config_option_detail` VALUES ('4', '2018-03-30 11:21:14', '2018-03-30 11:21:16', '1', '0', '1', '文件编号', 'fileNo', '1', '0');
INSERT INTO `config_option_detail` VALUES ('5', '2018-03-30 11:22:16', '2018-03-30 11:22:19', '0', '0', '2', '法律法规', 'legislation', '1', '0');
INSERT INTO `config_option_detail` VALUES ('6', '2018-03-30 16:08:48', '2018-03-30 16:08:50', '0', '0', '2', '资质说明', 'qualification', '1', '0');
INSERT INTO `config_option_detail` VALUES ('7', '2018-03-30 16:09:37', '2018-05-14 21:09:56', '0', '0', '3', '空调', 'airConditioning', '1', '1');
INSERT INTO `config_option_detail` VALUES ('8', '2018-03-30 16:10:08', '2018-03-30 16:10:10', '0', '0', '3', '窗帘', 'curtain', '1', '0');
INSERT INTO `config_option_detail` VALUES ('9', '2018-03-30 17:11:10', '2018-05-19 01:11:22', '0', '0', '3', '空开', 'airSwitch', '1', '1');
INSERT INTO `config_option_detail` VALUES ('10', '2018-03-30 17:12:46', '2018-03-30 17:12:49', '0', '0', '3', '插座', 'socket', '1', '0');
INSERT INTO `config_option_detail` VALUES ('11', '2018-03-30 17:13:12', '2018-05-19 01:18:52', '0', '0', '3', '门锁', 'doorLock', '1', '0');
INSERT INTO `config_option_detail` VALUES ('12', '2018-03-30 17:13:42', '2018-05-19 01:20:57', '0', '0', '3', '电灯', 'electricLight', '1', '1');
INSERT INTO `config_option_detail` VALUES ('13', '2018-03-30 17:15:04', '2018-05-19 01:20:57', '0', '0', '4', '使用', 'using', '1', '3');
INSERT INTO `config_option_detail` VALUES ('14', '2018-03-30 17:15:52', '2018-03-30 17:15:54', '0', '0', '4', '维修', 'service', '1', '0');
INSERT INTO `config_option_detail` VALUES ('15', '2018-03-30 17:19:10', '2018-03-30 17:19:12', '0', '0', '4', '报废', 'scrapped', '1', '0');
INSERT INTO `config_option_detail` VALUES ('16', '2018-03-30 17:19:36', '2018-03-30 17:19:38', '0', '0', '4', '保养', 'maintain', '1', '0');
INSERT INTO `config_option_detail` VALUES ('17', '2018-05-01 12:37:47', '2018-05-01 12:37:49', '0', '0', '5', '一楼', 'firstFloor', '1', '2');
INSERT INTO `config_option_detail` VALUES ('18', '2018-05-01 12:38:18', '2018-05-19 01:07:42', '0', '0', '5', '二楼', 'secondFloor', '1', '0');
INSERT INTO `config_option_detail` VALUES ('19', '2018-05-01 12:39:03', '2018-05-19 01:07:42', '0', '0', '5', '三楼', 'thirdFloor', '1', '2');
INSERT INTO `config_option_detail` VALUES ('20', '2018-05-01 12:39:35', '2018-05-01 12:39:37', '0', '0', '5', '四楼', 'fourthFloor', '1', '0');
INSERT INTO `config_option_detail` VALUES ('21', '2018-05-01 12:40:13', '2018-05-01 12:40:15', '0', '0', '5', '五楼', 'fifthFloor', '1', '0');
INSERT INTO `config_option_detail` VALUES ('22', '2018-05-01 12:45:00', '2018-05-01 12:45:03', '1', '0', '6', '同意', 'agree', '1', '0');
INSERT INTO `config_option_detail` VALUES ('23', '2018-05-01 12:45:38', '2018-05-01 12:45:41', '1', '0', '6', '驳回', 'reject', '1', '0');
INSERT INTO `config_option_detail` VALUES ('24', '2018-05-01 12:46:53', '2018-05-01 12:46:55', '1', '0', '6', '过期', 'expired', '1', '0');
INSERT INTO `config_option_detail` VALUES ('25', '2018-05-01 14:05:22', '2018-05-01 14:05:24', '0', '0', '7', '小学班主任的名字？', 'schoolTeacher', '1', '0');
INSERT INTO `config_option_detail` VALUES ('26', '2018-05-01 14:09:10', '2018-05-01 14:09:12', '0', '0', '7', '爱人的生日？（如：19950420）', 'birthday', '1', '0');
INSERT INTO `config_option_detail` VALUES ('27', '2018-05-01 14:10:58', '2018-05-01 14:11:01', '0', '0', '7', '最喜欢的游戏名称？', 'game', '1', '0');
INSERT INTO `config_option_detail` VALUES ('32', '2018-05-01 18:45:33', '2018-05-01 18:45:35', '0', '0', '8', '本科', 'undergraduate', '1', '0');
INSERT INTO `config_option_detail` VALUES ('33', '2018-05-01 18:46:02', '2018-05-01 18:46:04', '0', '0', '8', '硕士', 'masterDegree', '1', '0');
INSERT INTO `config_option_detail` VALUES ('34', '2018-05-01 18:46:56', '2018-05-01 18:46:58', '0', '0', '8', '博士', 'doctor', '1', '0');
INSERT INTO `config_option_detail` VALUES ('35', '2018-05-01 18:47:21', '2018-05-01 18:47:23', '0', '0', '9', '学士学位', 'bachelorDegree', '1', '0');
INSERT INTO `config_option_detail` VALUES ('36', '2018-05-01 18:49:10', '2018-05-01 18:49:12', '0', '0', '9', '硕士学位', 'masterDegee', '1', '0');
INSERT INTO `config_option_detail` VALUES ('37', '2018-05-01 19:27:15', '2018-05-01 19:27:12', '0', '0', '9', '博士学位', 'doctorDegee', '1', '0');
INSERT INTO `config_option_detail` VALUES ('38', '2018-05-02 13:54:19', '2018-05-02 13:54:19', '0', '0', '10', '管理员', 'admin', '1', '0');
INSERT INTO `config_option_detail` VALUES ('39', '2018-05-07 14:54:28', '2018-05-07 14:54:29', '0', '0', '10', '实验室人员', 'laboratoryUser', '1', '0');
INSERT INTO `config_option_detail` VALUES ('40', '2018-05-07 14:55:06', '2018-05-07 14:55:07', '0', '0', '10', '基本用户', 'baseUser', '1', '0');
INSERT INTO `config_option_detail` VALUES ('41', '2018-05-15 18:30:25', '2018-05-15 18:30:25', '0', '0', '7', 'sdfd', 'dsfsdfsfsdfsdfs', '1', '0');

-- ----------------------------
-- Table structure for config_option_group
-- ----------------------------
DROP TABLE IF EXISTS `config_option_group`;
CREATE TABLE `config_option_group` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `group_key` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '配置组-键',
  `group_name` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '配置组-名字',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除：1（是）/0（否）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='配置选项组';

-- ----------------------------
-- Records of config_option_group
-- ----------------------------
INSERT INTO `config_option_group` VALUES ('1', '2018-03-30 11:17:11', '2018-03-30 11:17:14', 'numberType', '编号类型', '0');
INSERT INTO `config_option_group` VALUES ('2', '2018-03-30 16:08:16', '2018-03-30 16:08:19', 'fileType', '文件类型', '0');
INSERT INTO `config_option_group` VALUES ('3', '2018-03-30 17:10:39', '2018-03-30 17:10:42', 'deviceType', '设备类别', '0');
INSERT INTO `config_option_group` VALUES ('4', '2018-03-30 17:18:18', '2018-03-30 17:18:21', 'deviceStatus', '设备状态', '0');
INSERT INTO `config_option_group` VALUES ('5', '2018-05-01 12:37:02', '2018-05-01 12:37:05', 'floor', '楼层', '0');
INSERT INTO `config_option_group` VALUES ('6', '2018-05-01 12:40:41', '2018-05-01 12:40:43', 'approvalStatus', '审批状态', '0');
INSERT INTO `config_option_group` VALUES ('7', '2018-05-01 14:04:43', '2018-05-01 14:04:47', 'securityQuestion', '密保问题', '0');
INSERT INTO `config_option_group` VALUES ('8', '2018-05-01 18:39:54', '2018-05-01 18:39:58', 'education', '学历', '0');
INSERT INTO `config_option_group` VALUES ('9', '2018-05-01 18:40:30', '2018-05-01 18:40:33', 'educationalLevel', '学位', '0');
INSERT INTO `config_option_group` VALUES ('10', '2018-05-07 14:52:57', '2018-05-07 14:52:59', 'roleType', '用户角色', '0');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `department_name` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '部门名称',
  `principal` bigint(11) unsigned NOT NULL COMMENT '部门负责人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='部门信息';

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '2018-05-01 19:29:46', '2018-05-01 19:29:48', '研究开发部', '1');

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号自增',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `device_no` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '设备编号',
  `device_name` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '设备名称',
  `laboratory` bigint(11) unsigned NOT NULL COMMENT '所属会议室',
  `device_type` bigint(11) unsigned NOT NULL COMMENT '设备类型',
  `device_status` bigint(11) unsigned NOT NULL COMMENT '设备状态',
  `is_online` tinyint(1) unsigned NOT NULL COMMENT '是否在线',
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='设备表';

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES ('1', '2018-05-14 21:09:56', '2018-05-19 00:51:54', 'SXLQMS-SB-2018-00001', '智能空调', '2', '7', '13', '0', '0');
INSERT INTO `device` VALUES ('2', '2018-05-19 01:11:22', '2018-05-19 01:11:22', 'SXLQMS-SB-2018-00002', '测试', '4', '9', '13', '0', '0');
INSERT INTO `device` VALUES ('4', '2018-05-19 01:20:57', '2018-05-19 01:20:57', 'SXLQMS-SB-2018-00004', '智能电灯DD01', '1', '12', '16', '0', '0');

-- ----------------------------
-- Table structure for device_program
-- ----------------------------
DROP TABLE IF EXISTS `device_program`;
CREATE TABLE `device_program` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号自增',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `apply_user` bigint(11) unsigned NOT NULL COMMENT '计划申请人',
  `apply_no` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '申请编号',
  `device_id` bigint(11) unsigned NOT NULL COMMENT '设备id',
  `program_type` bigint(11) unsigned NOT NULL COMMENT '方案类型：维修，保养，核查',
  `description` bigint(11) unsigned NOT NULL COMMENT '方案描述',
  `execution_date` date NOT NULL COMMENT '执行日期',
  `approval_user` bigint(11) unsigned DEFAULT NULL COMMENT '批准人',
  `approval_opinion` tinyint(1) unsigned DEFAULT NULL COMMENT '意见：同意/不同意',
  `approval_description` bigint(11) unsigned DEFAULT NULL COMMENT '批准描述',
  `approval_time` datetime DEFAULT NULL COMMENT '批准时间',
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='设备方案申请';

-- ----------------------------
-- Records of device_program
-- ----------------------------
INSERT INTO `device_program` VALUES ('1', '2018-05-15 11:32:15', '2018-05-15 11:32:15', '1', 'SXLQMS-SQ-2018-00005', '1', '14', '7', '2018-05-21', '1', '0', '22', '2018-05-18 19:14:07', '0');
INSERT INTO `device_program` VALUES ('2', '2018-05-17 11:47:34', '2018-05-17 11:47:34', '1', 'SXLQMS-SQ-2018-00007', '1', '14', '19', '2018-05-16', '1', '1', '21', '2018-05-18 19:08:00', '0');
INSERT INTO `device_program` VALUES ('3', '2018-05-18 19:19:03', '2018-05-18 19:19:03', '1', 'SXLQMS-SQ-2018-00009', '1', '15', '23', '2018-05-14', null, null, null, null, '0');
INSERT INTO `device_program` VALUES ('4', '2018-05-19 01:27:51', '2018-05-19 01:27:51', '3', 'SXLQMS-SQ-2018-00011', '1', '14', '26', '2018-05-08', '1', '1', '27', '2018-05-19 01:28:23', '0');
INSERT INTO `device_program` VALUES ('5', '2018-05-19 01:38:57', '2018-05-19 01:38:57', '3', 'SXLQMS-SQ-2018-00013', '4', '16', '28', '2018-05-14', '1', '1', '29', '2018-05-19 01:39:24', '0');

-- ----------------------------
-- Table structure for education_record
-- ----------------------------
DROP TABLE IF EXISTS `education_record`;
CREATE TABLE `education_record` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `user_id` bigint(11) unsigned NOT NULL COMMENT '用户ID',
  `graduation_date` date NOT NULL COMMENT '毕业日期',
  `school` bigint(11) unsigned NOT NULL COMMENT '毕业院校',
  `academic_qualifications` bigint(11) unsigned NOT NULL COMMENT '学历',
  `academic_degree` bigint(11) unsigned NOT NULL COMMENT '学位',
  `graduation_certificate_no` varchar(18) COLLATE utf8_bin NOT NULL COMMENT '毕业证书编号',
  `academic_degree_certificate_no` varchar(18) COLLATE utf8_bin NOT NULL COMMENT '学位证书编号',
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='人员学历及学位记录';

-- ----------------------------
-- Records of education_record
-- ----------------------------
INSERT INTO `education_record` VALUES ('1', '2018-05-01 18:37:12', '2018-05-01 18:37:10', '1', '2018-07-01', '3443', '32', '35', 'TYFG5654698', 'TYFG5654698', '1');
INSERT INTO `education_record` VALUES ('2', '2018-05-18 12:11:55', '2018-05-18 12:11:55', '3', '2018-05-15', '3438', '34', '37', '32', '23', '0');
INSERT INTO `education_record` VALUES ('3', '2018-05-18 23:50:00', '2018-05-18 23:50:00', '4', '2018-06-22', '1369', '34', '37', 'QH56456', 'QH513331', '0');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `file_no` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '文件编号',
  `uploaded_by` bigint(11) unsigned NOT NULL COMMENT '上传者',
  `file_type` bigint(11) unsigned NOT NULL COMMENT '文件类型',
  `file_name` varchar(127) COLLATE utf8_bin NOT NULL COMMENT '文件名称',
  `file_path` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '文件路径',
  `file_extension` varchar(12) COLLATE utf8_bin NOT NULL COMMENT '文件格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件表';

-- ----------------------------
-- Records of file
-- ----------------------------

-- ----------------------------
-- Table structure for flyway_schema_history
-- ----------------------------
DROP TABLE IF EXISTS `flyway_schema_history`;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(200) COLLATE utf8_bin NOT NULL,
  `type` varchar(20) COLLATE utf8_bin NOT NULL,
  `script` varchar(1000) COLLATE utf8_bin NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) COLLATE utf8_bin NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of flyway_schema_history
-- ----------------------------
INSERT INTO `flyway_schema_history` VALUES ('1', '1.0.1', 'Init default data', 'SQL', 'V1_0_1__Init_default_data.sql', '316243898', 'root', '2018-05-08 09:51:53', '8081', '1');
INSERT INTO `flyway_schema_history` VALUES ('2', '1.0.2', 'Create table data', 'SQL', 'V1_0_2__Create_table_data.sql', '802313218', 'root', '2018-05-12 20:09:11', '663', '1');
INSERT INTO `flyway_schema_history` VALUES ('3', '1.0.3', 'Create table data', 'SQL', 'V1_0_3__Create_table_data.sql', '-1922132710', 'root', '2018-05-13 12:18:07', '1010', '1');
INSERT INTO `flyway_schema_history` VALUES ('4', '1.0.4', 'Modified table data', 'SQL', 'V1_0_4__Modified_table_data.sql', '-1878259276', 'root', '2018-05-13 15:45:08', '312', '1');
INSERT INTO `flyway_schema_history` VALUES ('5', '1.0.5', 'Modified table data', 'SQL', 'V1_0_5__Modified_table_data.sql', '288672085', 'root', '2018-05-14 19:32:08', '1220', '1');
INSERT INTO `flyway_schema_history` VALUES ('6', '1.0.6', 'Modified table data', 'SQL', 'V1_0_6__Modified_table_data.sql', '-581762943', 'root', '2018-05-15 11:30:31', '335', '1');

-- ----------------------------
-- Table structure for laboratory
-- ----------------------------
DROP TABLE IF EXISTS `laboratory`;
CREATE TABLE `laboratory` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号自增',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `floor` bigint(11) unsigned NOT NULL COMMENT '所属楼层',
  `laboratory_name` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '实验室名称',
  `capacity` tinyint(3) unsigned NOT NULL COMMENT '实验室容量',
  `is_autonomy` tinyint(1) unsigned NOT NULL COMMENT '是否自主预定',
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='实验室表';

-- ----------------------------
-- Records of laboratory
-- ----------------------------
INSERT INTO `laboratory` VALUES ('1', '2018-05-01 18:35:33', '2018-05-19 01:06:04', '17', '无线电测试实验室', '10', '1', '0');
INSERT INTO `laboratory` VALUES ('2', '2018-05-01 23:00:49', '2018-05-19 01:07:42', '19', '计算机测试实验室', '21', '0', '0');
INSERT INTO `laboratory` VALUES ('3', '2018-05-01 23:48:32', '2018-05-01 23:48:35', '17', '云计算实现实验室', '21', '0', '0');
INSERT INTO `laboratory` VALUES ('4', '2018-05-08 11:29:23', '2018-05-08 11:29:26', '19', '视频会议室', '10', '0', '0');
INSERT INTO `laboratory` VALUES ('5', '2018-05-08 11:32:46', '2018-05-18 23:05:28', '17', '测试添加实验室', '10', '1', '1');

-- ----------------------------
-- Table structure for laboratory_schedule
-- ----------------------------
DROP TABLE IF EXISTS `laboratory_schedule`;
CREATE TABLE `laboratory_schedule` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `laboratory_id` bigint(11) unsigned NOT NULL COMMENT '实验室id',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '申请人',
  `instruction` varchar(127) COLLATE utf8_bin NOT NULL COMMENT '申请说明',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `schedule_status` tinyint(1) unsigned NOT NULL COMMENT '预定状态',
  `check_user` bigint(11) unsigned DEFAULT NULL COMMENT '审核用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of laboratory_schedule
-- ----------------------------
INSERT INTO `laboratory_schedule` VALUES ('2', '2018-05-15 17:13:30', '2018-05-18 21:02:49', '2', '1', '45', '2018-05-15 10:59:30', '2018-05-15 13:59:30', '2', '1');
INSERT INTO `laboratory_schedule` VALUES ('3', '2018-05-15 18:24:24', '2018-05-19 09:57:03', '2', '1', '453543', '2018-05-18 12:59:24', '2018-05-18 14:59:24', '1', '1');
INSERT INTO `laboratory_schedule` VALUES ('4', '2018-05-15 18:54:33', '2018-05-19 09:57:01', '2', '1', '2456', '2018-05-15 08:59:33', '2018-05-15 10:59:33', '1', '1');
INSERT INTO `laboratory_schedule` VALUES ('5', '2018-05-15 18:56:41', '2018-05-15 18:56:41', '2', '1', '54645', '2018-05-16 09:59:41', '2018-05-16 11:59:41', '1', '0');
INSERT INTO `laboratory_schedule` VALUES ('6', '2018-05-16 17:01:49', '2018-05-16 17:01:49', '5', '2', '全部包了', '2018-05-16 08:59:49', '2018-05-16 16:59:49', '1', '0');
INSERT INTO `laboratory_schedule` VALUES ('7', '2018-05-18 17:48:36', '2018-05-18 17:48:36', '2', '2', '某某计算机待机时间测试，需使用实验室三个小时。', '2018-05-19 09:59:36', '2018-05-19 12:59:36', '1', '0');
INSERT INTO `laboratory_schedule` VALUES ('8', '2018-05-18 23:24:40', '2018-05-18 23:35:01', '2', '4', '测试预定', '2018-05-18 14:59:40', '2018-05-18 16:59:40', '2', '1');

-- ----------------------------
-- Table structure for module
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `module_name` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '模块名称',
  `component_name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '路由名称',
  `father_id` bigint(11) unsigned NOT NULL COMMENT '父模块ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='模块表';

-- ----------------------------
-- Records of module
-- ----------------------------
INSERT INTO `module` VALUES ('1', '2018-05-01 18:28:01', '2018-05-01 18:28:03', '实验室管理', '/laboratory', '0');
INSERT INTO `module` VALUES ('2', '2018-05-01 18:29:27', '2018-05-01 18:29:30', '设备管理', '/device', '0');
INSERT INTO `module` VALUES ('3', '2018-05-01 18:31:07', '2018-05-01 18:31:11', '文件管理', '/file', '0');
INSERT INTO `module` VALUES ('4', '2018-05-01 18:31:43', '2018-05-01 18:31:45', '用户管理', '/user', '0');
INSERT INTO `module` VALUES ('5', '2018-05-01 18:34:21', '2018-05-01 18:34:24', '客户管理', '/customer', '0');
INSERT INTO `module` VALUES ('6', '2018-05-01 18:34:50', '2018-05-01 18:34:52', '系统管理', '/system', '0');

-- ----------------------------
-- Table structure for number_rule
-- ----------------------------
DROP TABLE IF EXISTS `number_rule`;
CREATE TABLE `number_rule` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `rule_type` bigint(11) unsigned NOT NULL COMMENT '规则类型',
  `prefix_number` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '编号前缀',
  `next_number` bigint(11) unsigned NOT NULL DEFAULT '1' COMMENT '下一个编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='编号规则';

-- ----------------------------
-- Records of number_rule
-- ----------------------------
INSERT INTO `number_rule` VALUES ('1', '2018-04-01 11:14:54', '2018-05-01 11:15:08', '1', 'SXLQMS-SQ-{YEAR}-{NUM}', '14');
INSERT INTO `number_rule` VALUES ('2', '2018-05-01 11:15:14', '2018-05-01 11:15:18', '2', 'SXLQMS-SB-{YEAR}-{NUM}', '5');
INSERT INTO `number_rule` VALUES ('3', '2018-05-01 11:22:42', '2018-05-01 11:22:44', '3', 'SXLQMS-TS-{YEAR}-{NUM}', '14');
INSERT INTO `number_rule` VALUES ('4', '2018-05-01 12:21:34', '2018-05-01 12:21:36', '4', 'SXLQMS-WJ-{YEAR}-{NUM}', '5');

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `province_name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '省份名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('1', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '北京');
INSERT INTO `province` VALUES ('2', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '天津');
INSERT INTO `province` VALUES ('3', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '河北');
INSERT INTO `province` VALUES ('4', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '山西');
INSERT INTO `province` VALUES ('5', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '内蒙古');
INSERT INTO `province` VALUES ('6', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '辽宁');
INSERT INTO `province` VALUES ('7', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '吉林');
INSERT INTO `province` VALUES ('8', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '黑龙江');
INSERT INTO `province` VALUES ('9', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '上海');
INSERT INTO `province` VALUES ('10', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '江苏');
INSERT INTO `province` VALUES ('11', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '浙江');
INSERT INTO `province` VALUES ('12', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '安徽');
INSERT INTO `province` VALUES ('13', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '福建');
INSERT INTO `province` VALUES ('14', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '江西');
INSERT INTO `province` VALUES ('15', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '山东');
INSERT INTO `province` VALUES ('16', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '河南');
INSERT INTO `province` VALUES ('17', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '湖北');
INSERT INTO `province` VALUES ('18', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '湖南');
INSERT INTO `province` VALUES ('19', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '广东');
INSERT INTO `province` VALUES ('20', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '广西');
INSERT INTO `province` VALUES ('21', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '海南');
INSERT INTO `province` VALUES ('22', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '重庆');
INSERT INTO `province` VALUES ('23', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '四川');
INSERT INTO `province` VALUES ('24', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '贵州');
INSERT INTO `province` VALUES ('25', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '云南');
INSERT INTO `province` VALUES ('26', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '西藏');
INSERT INTO `province` VALUES ('27', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '陕西');
INSERT INTO `province` VALUES ('28', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '甘肃');
INSERT INTO `province` VALUES ('29', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '青海');
INSERT INTO `province` VALUES ('30', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '宁夏');
INSERT INTO `province` VALUES ('31', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '新疆');
INSERT INTO `province` VALUES ('32', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '香港');
INSERT INTO `province` VALUES ('33', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '澳门');
INSERT INTO `province` VALUES ('34', '2018-03-07 15:16:05', '2018-03-07 15:16:05', '台湾');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号自增',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `role_name` bigint(11) unsigned NOT NULL COMMENT '角色名',
  `description` bigint(11) unsigned NOT NULL COMMENT '描述id',
  `level` tinyint(2) unsigned NOT NULL COMMENT '角色级别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '2018-05-07 15:16:05', '2018-05-07 15:16:08', '38', '1', '10');
INSERT INTO `role` VALUES ('2', '2018-05-12 18:54:22', '2018-05-12 18:54:24', '40', '2', '1');
INSERT INTO `role` VALUES ('3', '2018-05-18 10:10:00', '2018-05-18 10:10:05', '39', '3', '2');

-- ----------------------------
-- Table structure for role_module
-- ----------------------------
DROP TABLE IF EXISTS `role_module`;
CREATE TABLE `role_module` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `role_id` bigint(11) unsigned NOT NULL COMMENT '角色ID',
  `module_id` bigint(11) unsigned NOT NULL COMMENT '功能ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色-模块对应表';

-- ----------------------------
-- Records of role_module
-- ----------------------------
INSERT INTO `role_module` VALUES ('1', '2018-05-01 18:27:07', '2018-05-01 18:27:10', '1', '1');

-- ----------------------------
-- Table structure for task_info
-- ----------------------------
DROP TABLE IF EXISTS `task_info`;
CREATE TABLE `task_info` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增-序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `process_id` bigint(11) unsigned NOT NULL COMMENT '所属流程',
  `task_name` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '任务名称',
  `assign_user_id` bigint(11) unsigned NOT NULL COMMENT '指派用户',
  `type_id` bigint(11) unsigned NOT NULL COMMENT '任务类型',
  `priority` tinyint(3) unsigned NOT NULL COMMENT '优先级',
  `consumed` decimal(4,2) unsigned NOT NULL COMMENT '完成进度',
  `desc_id` bigint(11) unsigned NOT NULL COMMENT '描述',
  `deadline` date NOT NULL COMMENT '截止日期',
  `created_by` bigint(11) unsigned NOT NULL COMMENT '创建者',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `end_by` bigint(11) unsigned DEFAULT NULL COMMENT '结束者',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `end_reason` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '结束原因',
  `status_id` bigint(11) unsigned NOT NULL COMMENT '任务状态',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='任务信息';

-- ----------------------------
-- Records of task_info
-- ----------------------------

-- ----------------------------
-- Table structure for university
-- ----------------------------
DROP TABLE IF EXISTS `university`;
CREATE TABLE `university` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号自增',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `university_name` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '大学名称',
  `province_id` bigint(11) unsigned NOT NULL COMMENT '身份Id',
  `level` bigint(11) unsigned NOT NULL COMMENT '级别',
  `website` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '网站',
  `city` varchar(15) COLLATE utf8_bin NOT NULL COMMENT '城市',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3962 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of university
-- ----------------------------
INSERT INTO `university` VALUES ('1367', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京大学', '1', '32', 'http://www.pku.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1368', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国人民大学', '1', '32', 'http://www.ruc.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1369', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '清华大学', '1', '32', 'http://www.tsinghua.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1370', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京交通大学', '1', '32', 'http://www.njtu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1371', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京工业大学', '1', '32', 'http://www.bjut.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1372', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京航空航天大学', '1', '32', 'http://www.buaa.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1373', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京理工大学', '1', '32', 'http://www.bit.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1374', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京科技大学', '1', '32', 'http://www.ustb.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1375', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北方工业大学', '1', '32', 'http://www.ncut.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1376', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京化工大学', '1', '32', 'http://www.buct.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1377', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京工商大学', '1', '32', 'http://www.btbu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1378', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京服装学院', '1', '32', 'http://www.bift.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1379', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京邮电大学', '1', '32', 'http://www.bupt.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1380', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京印刷学院', '1', '32', 'http://www.bigc.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1381', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京建筑大学', '1', '32', 'http://www.bucea.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1382', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京石油化工学院', '1', '32', 'http://www.bipt.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1383', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京电子科技学院', '1', '32', 'http://www.besti.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1384', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国农业大学', '1', '32', 'http://www.cau.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1385', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京农学院', '1', '32', 'http://www.bac.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1386', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京林业大学', '1', '32', 'http://www.bjfu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1387', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京协和医学院', '1', '32', 'http://www.cams.ac.cn/', '北京市');
INSERT INTO `university` VALUES ('1388', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '首都医科大学', '1', '32', 'http://www.ccmu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1389', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京中医药大学', '1', '32', 'http://www.bucm.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1390', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京师范大学', '1', '32', 'http://www.bnu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1391', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '首都师范大学', '1', '32', 'http://www.cnu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1392', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '首都体育学院', '1', '32', 'http://www.cupes.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1393', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京外国语大学', '1', '32', 'http://www.bfsu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1394', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京第二外国语学院', '1', '32', 'http://www.bisu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1395', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京语言大学', '1', '32', 'http://www.blcu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1396', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国传媒大学', '1', '32', 'http://www.cuc.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1397', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中央财经大学', '1', '32', 'http://www.cufe.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1398', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '对外经济贸易大学', '1', '32', 'http://www.uibe.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1399', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京物资学院', '1', '32', 'http://www.bwu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1400', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '首都经济贸易大学', '1', '32', 'http://www.cueb.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1401', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '外交学院', '1', '32', 'http://www.cfau.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1402', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国人民公安大学', '1', '32', 'http://www.cppsu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1403', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '国际关系学院', '1', '32', 'http://www.uir.cn/', '北京市');
INSERT INTO `university` VALUES ('1404', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京体育大学', '1', '32', 'http://www.bsu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1405', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中央音乐学院', '1', '32', 'http://www.ccom.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1406', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国音乐学院', '1', '32', 'http://www.ccmusic.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1407', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中央美术学院', '1', '32', 'http://www.cafa.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1408', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中央戏剧学院', '1', '32', 'http://www.chntheatre.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1409', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国戏曲学院', '1', '32', 'http://www.nacta.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1410', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京电影学院', '1', '32', 'http://www.bfa.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1411', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京舞蹈学院', '1', '32', 'http://www.bda.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1412', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中央民族大学', '1', '32', 'http://www.muc.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1413', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国政法大学', '1', '32', 'http://www.cupl.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1414', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华北电力大学', '1', '32', 'http://www.ncepu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1415', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中华女子学院', '1', '32', 'http://www.cwu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1416', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京信息科技大学', '1', '32', 'http://www.bistu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1417', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国矿业大学（北京）', '1', '32', 'http://www.cumtb.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1418', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国石油大学（北京）', '1', '32', 'http://www.cup.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1419', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国地质大学（北京）', '1', '32', 'http://www.cugb.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1420', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京联合大学', '1', '32', 'http://www.buu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1421', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京城市学院', '1', '32', 'http://www.bcu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1422', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国青年政治学院', '1', '32', 'http://www.cyu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1423', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '首钢工学院', '1', '32', 'http://www.sgit.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1424', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国劳动关系学院', '1', '32', 'http://www.ciir.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1425', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京吉利学院', '1', '32', 'http://www.bgu.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1426', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '首都师范大学科德学院', '1', '32', 'http://www.kdcnu.com/', '北京市');
INSERT INTO `university` VALUES ('1427', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京工商大学嘉华学院', '1', '32', 'http://www.canvard.com.cn/', '北京市');
INSERT INTO `university` VALUES ('1428', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京邮电大学世纪学院', '1', '32', 'http://www.ccbupt.cn/', '北京市');
INSERT INTO `university` VALUES ('1429', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京工业大学耿丹学院', '1', '32', 'http://www.gengdan.cn/', '北京市');
INSERT INTO `university` VALUES ('1430', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京警察学院', '1', '32', 'http://www.bjpc.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1431', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京第二外国语学院中瑞酒店管理学院', '1', '32', 'http://www.bhi.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1432', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国科学院大学', '1', '32', 'http://www.gucas.ac.cn/', '北京市');
INSERT INTO `university` VALUES ('1433', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国社会科学院大学', '1', '32', 'http://ucass.gscass.cn/', '北京市');
INSERT INTO `university` VALUES ('1434', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京工业职业技术学院', '1', '31', 'http://www.bgy.org.cn/', '北京市');
INSERT INTO `university` VALUES ('1435', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京信息职业技术学院', '1', '31', 'http://www.bitc.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1436', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京电子科技职业学院', '1', '31', 'http://www.dky.bjedu.cn/', '北京市');
INSERT INTO `university` VALUES ('1437', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京京北职业技术学院', '1', '31', 'http://www.jbzy.com.cn/', '北京市');
INSERT INTO `university` VALUES ('1438', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京交通职业技术学院', '1', '31', 'http://www.jtxy.com.cn/', '北京市');
INSERT INTO `university` VALUES ('1439', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京青年政治学院', '1', '31', 'http://www.bjypc.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1440', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京农业职业学院', '1', '31', 'http://www.bvca.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1441', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京政法职业学院', '1', '31', 'http://www.bcpl.cn/', '北京市');
INSERT INTO `university` VALUES ('1442', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京财贸职业学院', '1', '31', 'http://www.bjczy.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1443', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京北大方正软件职业技术学院', '1', '31', 'http://www.pfc.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1444', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京经贸职业学院', '1', '31', 'http://www.csuedu.com/', '北京市');
INSERT INTO `university` VALUES ('1445', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京经济技术职业学院', '1', '31', 'http://www.tangedu.cn/', '北京市');
INSERT INTO `university` VALUES ('1446', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京戏曲艺术职业学院', '1', '31', 'http://www.bjxx.com.cn/', '北京市');
INSERT INTO `university` VALUES ('1447', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京汇佳职业学院', '1', '31', 'http://www.hju.net.cn/', '北京市');
INSERT INTO `university` VALUES ('1448', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京科技经营管理学院', '1', '31', 'http://www.bjjsy1985.cn/', '北京市');
INSERT INTO `university` VALUES ('1449', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京科技职业学院', '1', '31', 'http://www.5aaa.com/', '北京市');
INSERT INTO `university` VALUES ('1450', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京培黎职业学院', '1', '31', 'http://www.bjpldx.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1451', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京经济管理职业学院', '1', '31', 'http://www.biem.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1452', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京劳动保障职业学院', '1', '31', 'http://www.bvclss.cn/', '北京市');
INSERT INTO `university` VALUES ('1453', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京社会管理职业学院', '1', '31', 'http://www.bcsa.edu.cn/', '北京市');
INSERT INTO `university` VALUES ('1454', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京艺术传媒职业学院', '1', '31', 'http://www.bjamu.cn/', '北京市');
INSERT INTO `university` VALUES ('1455', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京体育职业学院', '1', '31', 'http://www.bjtzhy.org/', '北京市');
INSERT INTO `university` VALUES ('1456', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京交通运输职业学院', '1', '31', 'http://www.bjjtxx.com/', '北京市');
INSERT INTO `university` VALUES ('1457', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京卫生职业学院', '1', '31', 'http://www.bjwsxx.com/', '北京市');
INSERT INTO `university` VALUES ('1458', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京网络职业学院', '1', '31', 'http://www.bjwlxy.org.cn/', '北京市');
INSERT INTO `university` VALUES ('1459', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南开大学', '2', '32', 'http://www.nankai.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1460', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津大学', '2', '32', 'http://www.tju.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1461', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津科技大学', '2', '32', 'http://www.tuli.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1462', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津工业大学', '2', '32', 'http://www.tjpu.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1463', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国民航大学', '2', '32', 'http://www.cauc.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1464', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津理工大学', '2', '32', 'http://www.tjut.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1465', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津农学院', '2', '32', 'http://www.tjac.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1466', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津医科大学', '2', '32', 'http://www.tijmu.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1467', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津中医药大学', '2', '32', 'http://www.tjutcm.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1468', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津师范大学', '2', '32', 'http://www.tjnu.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1469', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津职业技术师范大学', '2', '32', 'http://www.tute.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1470', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津外国语大学', '2', '32', 'http://www.tjfsu.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1471', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津商业大学', '2', '32', 'http://www.tjcu.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1472', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津财经大学', '2', '32', 'http://www.tjufe.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1473', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津体育学院', '2', '32', 'http://www.tjus.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1474', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津音乐学院', '2', '32', 'http://www.tjcm.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1475', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津美术学院', '2', '32', 'http://www.tjarts.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1476', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津城建大学', '2', '32', 'http://www.tjuci.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1477', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津天狮学院', '2', '32', 'http://www.tianshi.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1478', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津中德应用技术大学', '2', '32', 'http://www.zdtj.cn/', '天津市');
INSERT INTO `university` VALUES ('1479', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津外国语学院滨海外事学院', '2', '32', 'http://bhws.tjfsu.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1480', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津体育学院运动与文化艺术学院', '2', '32', 'http://www.tjtwy.cn/', '天津市');
INSERT INTO `university` VALUES ('1481', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津商业大学宝德学院', '2', '32', 'http://www.boustead.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1482', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津医科大学临床医学院', '2', '32', 'http://www.tijmu.edu.cn/lcyxy/', '天津市');
INSERT INTO `university` VALUES ('1483', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南开大学滨海学院', '2', '32', 'http://binhai.nankai.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1484', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津师范大学津沽学院', '2', '32', 'http://www.jinguxy.cn/', '天津市');
INSERT INTO `university` VALUES ('1485', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津理工大学中环信息学院', '2', '32', 'http://www.tjzhic.com/', '天津市');
INSERT INTO `university` VALUES ('1486', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京科技大学天津学院', '2', '32', 'http://tj.ustb.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1487', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津大学仁爱学院', '2', '32', 'http://www.tjrac.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1488', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津财经大学珠江学院', '2', '32', 'http://zhujiang.tjufe.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1489', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津职业大学', '2', '31', 'http://www.tjtc.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1490', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津滨海职业学院', '2', '31', 'http://www.tjbpi.com/', '天津市');
INSERT INTO `university` VALUES ('1491', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津工程职业技术学院', '2', '31', 'http://www.tjeti.com/', '天津市');
INSERT INTO `university` VALUES ('1492', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津青年职业学院', '2', '31', 'http://www.tjqnzyxy.cn/', '天津市');
INSERT INTO `university` VALUES ('1493', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津渤海职业技术学院', '2', '31', 'http://www.tjbhzy.com/', '天津市');
INSERT INTO `university` VALUES ('1494', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津电子信息职业技术学院', '2', '31', 'http://www.tjdz.net/', '天津市');
INSERT INTO `university` VALUES ('1495', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津机电职业技术学院', '2', '31', 'http://www.suoyuan.com.cn/', '天津市');
INSERT INTO `university` VALUES ('1496', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津现代职业技术学院', '2', '31', 'http://www.xdxy.com.cn/', '天津市');
INSERT INTO `university` VALUES ('1497', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津公安警官职业学院', '2', '31', 'http://www.tjjingyuan.cn/', '天津市');
INSERT INTO `university` VALUES ('1498', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津轻工职业技术学院', '2', '31', 'http://www.tjlivtc.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1499', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津商务职业学院', '2', '31', 'http://www.tifert.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1500', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津国土资源和房屋职业学院', '2', '31', 'http://www.tjgsxy.com.cn/', '天津市');
INSERT INTO `university` VALUES ('1501', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津医学高等31学校', '2', '31', 'http://www.tjyzh.cn/', '天津市');
INSERT INTO `university` VALUES ('1502', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津开发区职业技术学院', '2', '31', 'http://www.tedazj.com/', '天津市');
INSERT INTO `university` VALUES ('1503', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津艺术职业学院', '2', '31', 'http://www.tjysxy.com/', '天津市');
INSERT INTO `university` VALUES ('1504', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津交通职业学院', '2', '31', 'http://www.tjtvc.com/', '天津市');
INSERT INTO `university` VALUES ('1505', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津冶金职业技术学院', '2', '31', 'http://www.tjmvti.cn/', '天津市');
INSERT INTO `university` VALUES ('1506', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津石油职业技术学院', '2', '31', 'http://www.tjsyxy.com/', '天津市');
INSERT INTO `university` VALUES ('1507', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津城市职业学院', '2', '31', 'http://www.tjcsxy.cn/', '天津市');
INSERT INTO `university` VALUES ('1508', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津铁道职业技术学院', '2', '31', 'http://www.tjtdxy.cn/', '天津市');
INSERT INTO `university` VALUES ('1509', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津工艺美术职业学院', '2', '31', 'http://www.gmtj.com/', '天津市');
INSERT INTO `university` VALUES ('1510', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津城市建设管理职业技术学院', '2', '31', 'http://www.tjchengjian.com/', '天津市');
INSERT INTO `university` VALUES ('1511', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津生物工程职业技术学院', '2', '31', 'http://www.tjbio.cn/', '天津市');
INSERT INTO `university` VALUES ('1512', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津海运职业学院', '2', '31', 'http://www.tjmvi.cn/', '天津市');
INSERT INTO `university` VALUES ('1513', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津广播影视职业学院', '2', '31', 'http://www.tjgbys.com/', '天津市');
INSERT INTO `university` VALUES ('1514', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天津滨海汽车工程职业学院', '2', '31', 'http://www.tqzyxy.com/', '天津市');
INSERT INTO `university` VALUES ('1515', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北大学', '3', '32', 'http://www.hbu.edu.cn/', '保定市');
INSERT INTO `university` VALUES ('1516', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北工程大学', '3', '32', 'http://www.hebeu.edu.cn/', '邯郸市');
INSERT INTO `university` VALUES ('1517', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北地质大学', '3', '32', 'http://www.hgu.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1518', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北工业大学', '3', '32', 'http://www.hebut.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1519', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华北理工大学', '3', '32', 'http://www.ncst.edu.cn/', '唐山市');
INSERT INTO `university` VALUES ('1520', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北科技大学', '3', '32', 'http://www.hebust.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1521', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北建筑工程学院', '3', '32', 'http://www.hebiace.edu.cn/', '张家口');
INSERT INTO `university` VALUES ('1522', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北水利电力学院', '3', '32', 'http://www.hbgz.edu.cn/', '沧州市');
INSERT INTO `university` VALUES ('1523', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北农业大学', '3', '32', 'http://www.hebau.edu.cn/', '保定市');
INSERT INTO `university` VALUES ('1524', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北医科大学', '3', '32', 'http://www.hebmu.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1525', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北北方学院', '3', '32', 'http://www.hebeinu.edu.cn/', '张家口');
INSERT INTO `university` VALUES ('1526', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '承德医学院', '3', '32', 'http://www.cdmc.edu.cn/', '承德市');
INSERT INTO `university` VALUES ('1527', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北师范大学', '3', '32', 'http://www.hebtu.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1528', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '保定学院', '3', '32', 'http://www.bdu.edu.cn/', '保定市');
INSERT INTO `university` VALUES ('1529', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北民族师范学院', '3', '32', 'http://www.hbun.net/', '承德市');
INSERT INTO `university` VALUES ('1530', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '唐山师范学院', '3', '32', 'http://www.tstc.edu.cn/', '唐山市');
INSERT INTO `university` VALUES ('1531', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '廊坊师范学院', '3', '32', 'http://www.lfsfxy.edu.cn/', '廊坊市');
INSERT INTO `university` VALUES ('1532', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '衡水学院', '3', '32', 'http://www.hsnc.edu.cn/', '衡水市');
INSERT INTO `university` VALUES ('1533', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄学院', '3', '32', 'http://www.sjzc.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1534', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '邯郸学院', '3', '32', 'http://www.hdc.edu.cn/', '邯郸市');
INSERT INTO `university` VALUES ('1535', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '邢台学院', '3', '32', 'http://www.xttc.edu.cn/', '邢台市');
INSERT INTO `university` VALUES ('1536', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沧州师范学院', '3', '32', 'http://www.caztc.edu.cn/', '沧州市');
INSERT INTO `university` VALUES ('1537', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄铁道大学', '3', '32', 'http://www.stdu.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1538', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '燕山大学', '3', '32', 'http://www.ysu.edu.cn/', '秦皇岛');
INSERT INTO `university` VALUES ('1539', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北科技师范学院', '3', '32', 'http://www.hevttc.edu.cn/', '秦皇岛');
INSERT INTO `university` VALUES ('1540', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '唐山学院', '3', '32', 'http://www.tsc.edu.cn/', '唐山市');
INSERT INTO `university` VALUES ('1541', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华北科技学院', '3', '32', 'http://www.ncist.edu.cn/', '三河市');
INSERT INTO `university` VALUES ('1542', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国人民武装警察部队学院', '3', '32', 'http://www.wjxy.edu.cn/', '廊坊市');
INSERT INTO `university` VALUES ('1543', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北体育学院', '3', '32', 'http://www.hepec.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1544', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北金融学院', '3', '32', 'http://www.bdcf.net/', '保定市');
INSERT INTO `university` VALUES ('1545', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北华航天工业学院', '3', '32', 'http://www.nciae.edu.cn/', '廊坊市');
INSERT INTO `university` VALUES ('1546', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '防灾科技学院', '3', '32', 'http://www.fzxy.edu.cn/', '三河市');
INSERT INTO `university` VALUES ('1547', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北经贸大学', '3', '32', 'http://www.heuet.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1548', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中央司法警官学院', '3', '32', 'http://www.cicp.edu.cn/', '保定市');
INSERT INTO `university` VALUES ('1549', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北传媒学院', '3', '32', 'http://www.hebic.cn/', '石家庄');
INSERT INTO `university` VALUES ('1550', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北工程技术学院', '3', '32', 'http://www.hbfsh.com/', '石家庄');
INSERT INTO `university` VALUES ('1551', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北美术学院', '3', '32', 'http://www.hbafa.com/', '石家庄');
INSERT INTO `university` VALUES ('1552', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北科技学院', '3', '32', 'http://www.hbkjxy.cn/', '保定市');
INSERT INTO `university` VALUES ('1553', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北外国语学院', '3', '32', 'http://www.hbwy.com.cn/', '石家庄');
INSERT INTO `university` VALUES ('1554', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北大学工商学院', '3', '32', 'http://www.hicc.cn/', '保定市');
INSERT INTO `university` VALUES ('1555', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华北理工大学轻工学院', '3', '32', 'http://www.qgxy.cn/', '唐山市');
INSERT INTO `university` VALUES ('1556', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北科技大学理工学院', '3', '32', 'http://hbklg.hebust.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1557', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北师范大学汇华学院', '3', '32', 'http://huihua.hebtu.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1558', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北经贸大学经济管理学院', '3', '32', 'http://jgxy.heuet.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1559', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北医科大学临床学院', '3', '32', 'http://202.206.48.102/', '石家庄');
INSERT INTO `university` VALUES ('1560', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华北电力大学科技学院', '3', '32', 'http://www.hdky.edu.cn/', '保定市');
INSERT INTO `university` VALUES ('1561', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北工程大学科信学院', '3', '32', 'http://kexin.hebeu.edu.cn/', '邯郸市');
INSERT INTO `university` VALUES ('1562', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北工业大学城市学院', '3', '32', 'http://cc.hebut.edu.cn/', '天津市');
INSERT INTO `university` VALUES ('1563', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '燕山大学里仁学院', '3', '32', 'http://stc.ysu.edu.cn/', '秦皇岛');
INSERT INTO `university` VALUES ('1564', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄铁道大学四方学院', '3', '32', 'http://www.stdusfc.cn/', '石家庄');
INSERT INTO `university` VALUES ('1565', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北地质大学华信学院', '3', '32', 'http://www.sjzuehx.cn/', '石家庄');
INSERT INTO `university` VALUES ('1566', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北农业大学现代科技学院', '3', '32', 'http://xianke.hebau.edu.cn/', '保定市');
INSERT INTO `university` VALUES ('1567', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华北理工大学冀唐学院', '3', '32', 'http://jtxy.heuu.edu.cn/', '唐山市');
INSERT INTO `university` VALUES ('1568', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国地质大学长城学院', '3', '32', 'http://www.cuggw.com/', '保定市');
INSERT INTO `university` VALUES ('1569', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '燕京理工学院', '3', '32', 'http://www.ncbuct.com/', '京东燕郊');
INSERT INTO `university` VALUES ('1570', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京中医药大学东方学院', '3', '32', 'http://www.df-college.com/', '廊坊市');
INSERT INTO `university` VALUES ('1571', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京交通大学海滨学院', '3', '32', 'http://www.bjtuhbxy.cn/', '黄骅市');
INSERT INTO `university` VALUES ('1572', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北东方学院', '3', '32', 'http://www.dfzy.edu.cn/', '廊坊市');
INSERT INTO `university` VALUES ('1573', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北中医学院', '3', '32', 'http://www.hbcmc.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1574', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '张家口学院', '3', '32', 'http://www.zjku.edu.cn/', '张家口');
INSERT INTO `university` VALUES ('1575', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北环境工程学院', '3', '32', 'http://www.emcc.cn/', '秦皇岛市');
INSERT INTO `university` VALUES ('1576', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北工业职业技术学院', '3', '31', 'http://www.hbcit.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1577', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '邯郸职业技术学院', '3', '31', 'http://www.hd-u.com/', '邯郸市');
INSERT INTO `university` VALUES ('1578', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄职业技术学院', '3', '31', 'http://www.sjzpt.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1579', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '张家口职业技术学院', '3', '31', 'http://www.zhz.cn/', '张家口');
INSERT INTO `university` VALUES ('1580', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '承德石油高等31学校', '3', '31', 'http://www.cdpc.edu.cn/', '承德市');
INSERT INTO `university` VALUES ('1581', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '邢台职业技术学院', '3', '31', 'http://www.xpc.edu.cn/', '邢台市');
INSERT INTO `university` VALUES ('1582', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北软件职业技术学院', '3', '31', 'http://www.hbsi.edu.cn/', '保定市');
INSERT INTO `university` VALUES ('1583', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北石油职业技术学院', '3', '31', 'http://www.pvtc.edu.cn/', '廊坊市');
INSERT INTO `university` VALUES ('1584', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北建材职业技术学院', '3', '31', 'http://www.hbjcxy.com/', '秦皇岛');
INSERT INTO `university` VALUES ('1585', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北政法职业学院', '3', '31', 'http://www.helc.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1586', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沧州职业技术学院', '3', '31', 'http://www.czvtc.cn/', '沧州市');
INSERT INTO `university` VALUES ('1587', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北能源职业技术学院', '3', '31', 'http://www.hbnyxy.cn/', '唐山市');
INSERT INTO `university` VALUES ('1588', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄铁路职业技术学院', '3', '31', 'http://www.sirt.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1589', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '保定职业技术学院', '3', '31', 'http://www.bvtc.com.cn/', '保定市');
INSERT INTO `university` VALUES ('1590', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '秦皇岛职业技术学院', '3', '31', 'http://www.qhdvtc.com/', '秦皇岛');
INSERT INTO `university` VALUES ('1591', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄工程职业学院', '3', '31', 'http://www.sjzcvc.com/', '石家庄');
INSERT INTO `university` VALUES ('1592', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄城市经济职业学院', '3', '31', 'http://www.sjzcsjjxy.com/', '石家庄');
INSERT INTO `university` VALUES ('1593', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '唐山职业技术学院', '3', '31', 'http://www.tsvtc.com/', '唐山市');
INSERT INTO `university` VALUES ('1594', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '衡水职业技术学院', '3', '31', 'http://www.hsvtc.cn/', '衡水市');
INSERT INTO `university` VALUES ('1595', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '唐山工业职业技术学院', '3', '31', 'http://www.tsgzy.edu.cn/', '唐山市');
INSERT INTO `university` VALUES ('1596', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '邢台医学高等31学校', '3', '31', 'http://www.xtmc.net/', '邢台市');
INSERT INTO `university` VALUES ('1597', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北艺术职业学院', '3', '31', 'http://www.hebart.com/', '石家庄');
INSERT INTO `university` VALUES ('1598', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北旅游职业学院', '3', '31', 'http://www.cdtvc.com/', '承德市');
INSERT INTO `university` VALUES ('1599', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄财经职业学院', '3', '31', 'http://www.sjzcj.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1600', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北交通职业技术学院', '3', '31', 'http://www.hejtxy.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1601', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北化工医药职业技术学院', '3', '31', 'http://www.hebcpc.cn/', '石家庄');
INSERT INTO `university` VALUES ('1602', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄信息工程职业学院', '3', '31', 'http://www.sjziei.com/', '石家庄');
INSERT INTO `university` VALUES ('1603', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北对外经贸职业学院', '3', '31', 'http://www.hbvcfl.com.cn/', '秦皇岛');
INSERT INTO `university` VALUES ('1604', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '保定电力职业技术学院', '3', '31', 'http://www.bddy.cn/', '保定市');
INSERT INTO `university` VALUES ('1605', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北机电职业技术学院', '3', '31', 'http://www.hbjd.com.cn/', '邢台市');
INSERT INTO `university` VALUES ('1606', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '渤海石油职业学院', '3', '31', 'http://www.bhsyxy.com/', '河北省');
INSERT INTO `university` VALUES ('1607', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '廊坊职业技术学院', '3', '31', 'http://www.lfzhjxy.net/', '廊坊市');
INSERT INTO `university` VALUES ('1608', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '唐山科技职业技术学院', '3', '31', 'http://www.tskjzy.cn/', '唐山市');
INSERT INTO `university` VALUES ('1609', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄邮电职业技术学院', '3', '31', 'http://www.sjzpc.edu.cn/', '石家庄');
INSERT INTO `university` VALUES ('1610', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北公安警察职业学院', '3', '31', 'http://www.hebsjy.com/', '石家庄');
INSERT INTO `university` VALUES ('1611', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄工商职业学院', '3', '31', 'http://www.sjzgsxy.com/', '石家庄');
INSERT INTO `university` VALUES ('1612', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄理工职业学院', '3', '31', 'http://www.sjzlg.com/', '石家庄');
INSERT INTO `university` VALUES ('1613', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄科技信息职业学院', '3', '31', 'http://www.kjxinxiedu.com/', '石家庄');
INSERT INTO `university` VALUES ('1614', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北司法警官职业学院', '3', '31', 'http://www.jjgxy.com.cn/', '邯郸市');
INSERT INTO `university` VALUES ('1615', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沧州医学高等31学校', '3', '31', 'http://www.czmc.cn/', '沧州市');
INSERT INTO `university` VALUES ('1616', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北女子职业技术学院', '3', '31', 'http://www.hebnzxy.com/', '石家庄');
INSERT INTO `university` VALUES ('1617', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄医学高等31学校', '3', '31', 'http://www.sjzmc.cn/', '石家庄');
INSERT INTO `university` VALUES ('1618', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄经济职业学院', '3', '31', 'http://www.sjzjjxy.net/', '石家庄');
INSERT INTO `university` VALUES ('1619', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '冀中职业学院', '3', '31', 'http://www.jzhxy.com/', '定州市');
INSERT INTO `university` VALUES ('1620', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄人民医学高等31学校', '3', '31', 'http://www.sjzrmyz.com/', '石家庄');
INSERT INTO `university` VALUES ('1621', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄科技工程职业学院', '3', '31', 'http://www.zdsf.net/', '石家庄');
INSERT INTO `university` VALUES ('1622', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北劳动关系职业学院', '3', '31', 'http://www.hbgy.edu.cn/', '邯郸市');
INSERT INTO `university` VALUES ('1623', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄科技职业学院', '3', '31', 'http://www.sjzkjxy.net/', '石家庄');
INSERT INTO `university` VALUES ('1624', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泊头职业学院', '3', '31', 'http://www.btzyxy.com.cn/', '泊头市');
INSERT INTO `university` VALUES ('1625', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宣化科技职业学院', '3', '31', 'http://www.xhkjzyxy.com/', '张家口');
INSERT INTO `university` VALUES ('1626', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '廊坊燕京职业技术学院', '3', '31', 'http://www.lfyjzjxy.com/', '廊坊市');
INSERT INTO `university` VALUES ('1627', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '承德护理职业学院', '3', '31', 'http://www.cdwx.cn/', '承德市');
INSERT INTO `university` VALUES ('1628', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石家庄幼儿师范高等31学校', '3', '31', 'http://www.hbyesf.com/', '石家庄');
INSERT INTO `university` VALUES ('1629', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '廊坊卫生职业学院', '3', '31', 'http://www.lfwx.net/', '廊坊市');
INSERT INTO `university` VALUES ('1630', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北轨道运输职业技术学院', '3', '31', 'http://www.hbgdys.cn/', '石家庄');
INSERT INTO `university` VALUES ('1631', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '保定幼儿师范高等31学校', '3', '31', 'http://www.hezs.cn/', '涿州市');
INSERT INTO `university` VALUES ('1632', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河北工艺美术职业学院', '3', '31', 'http://www.1964.cn/', '保定市');
INSERT INTO `university` VALUES ('1633', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '渤海理工职业学院', '3', '31', 'http://www.bhlgxy.com/', '黄骅市');
INSERT INTO `university` VALUES ('1634', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '唐山幼儿师范高等31学校', '3', '31', 'http://www.tsyzh.com/', '唐山市');
INSERT INTO `university` VALUES ('1635', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '曹妃甸职业技术学院', '3', '31', 'http://www.cct.edu.cn/', '唐山市');
INSERT INTO `university` VALUES ('1636', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西大学', '4', '32', 'http://www.sxu.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1637', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '太原科技大学', '4', '32', 'http://www.tyust.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1638', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中北大学', '4', '32', 'http://www.nuc.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1639', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '太原理工大学', '4', '32', 'http://www.tyut.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1640', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西农业大学', '4', '32', 'http://www.sxau.edu.cn/', '太谷县');
INSERT INTO `university` VALUES ('1641', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西医科大学', '4', '32', 'http://www.sxmu.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1642', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长治医学院', '4', '32', 'http://www.czmc.com/', '长治市');
INSERT INTO `university` VALUES ('1643', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西师范大学', '4', '32', 'http://www.sxnu.edu.cn/', '临汾市');
INSERT INTO `university` VALUES ('1644', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '太原师范学院', '4', '32', 'http://www.tynu.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1645', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西大同大学', '4', '32', 'http://www.sxdtdx.edu.cn/', '大同市');
INSERT INTO `university` VALUES ('1646', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '晋中学院', '4', '32', 'http://www.sxjztc.edu.cn/', '榆次市');
INSERT INTO `university` VALUES ('1647', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长治学院', '4', '32', 'http://www.czc.edu.cn/', '长治市');
INSERT INTO `university` VALUES ('1648', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '运城学院', '4', '32', 'http://www.ycu.edu.cn/', '运城市');
INSERT INTO `university` VALUES ('1649', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '忻州师范学院', '4', '32', 'http://www.xztc.edu.cn/', '忻州市');
INSERT INTO `university` VALUES ('1650', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西财经大学', '4', '32', 'http://www.sxufe.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1651', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西中医药大学', '4', '32', 'http://www.sxtcm.com/', '太原市');
INSERT INTO `university` VALUES ('1652', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吕梁学院', '4', '32', 'http://www.llhc.edu.cn/', '吕梁市');
INSERT INTO `university` VALUES ('1653', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '太原学院', '4', '32', 'http://www.sxtyu.com/', '太原市');
INSERT INTO `university` VALUES ('1654', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西警察学院', '4', '32', 'http://www.sxpc.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1655', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西应用科技学院', '4', '32', 'http://www.sxxh.org/', '太原市');
INSERT INTO `university` VALUES ('1656', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西大学商务学院', '4', '32', 'http://www.sdsy.sxu.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1657', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '太原理工大学现代科技学院', '4', '32', 'http://www.xdkj.tyut.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1658', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西农业大学信息学院', '4', '32', 'http://www.cisau.com.cn/', '太谷县');
INSERT INTO `university` VALUES ('1659', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西师范大学现代文理学院', '4', '32', 'http://www.xdwl-sxnu.cn/', '临汾市');
INSERT INTO `university` VALUES ('1660', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中北大学信息商务学院', '4', '32', 'http://xxsw.nuc.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1661', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '太原科技大学华科学院', '4', '32', 'http://www.kdhk.cn/', '太原市');
INSERT INTO `university` VALUES ('1662', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西医科大学晋祠学院', '4', '32', 'http://www.sxmu-jcc.com/', '太原市');
INSERT INTO `university` VALUES ('1663', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西财经大学华商学院', '4', '32', 'http://www.schsxy.com/', '太原市');
INSERT INTO `university` VALUES ('1664', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西工商学院', '4', '32', 'http://www.sxtbu.net/', '太原市');
INSERT INTO `university` VALUES ('1665', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '太原工业学院', '4', '32', 'http://www.tit.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1666', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西传媒学院', '4', '32', 'http://www.arft.net/', '太原市');
INSERT INTO `university` VALUES ('1667', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西工程技术学院', '4', '32', 'http://www.sxit.edu.cn/', '阳泉市');
INSERT INTO `university` VALUES ('1668', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西能源学院', '4', '32', 'http://www.sxeu.cn/', '晋中市');
INSERT INTO `university` VALUES ('1669', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西省财政税务31学校', '4', '31', 'http://www.sxftc.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1670', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长治职业技术学院', '4', '31', 'http://www.czzy.cn/', '长治市');
INSERT INTO `university` VALUES ('1671', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西艺术职业学院', '4', '31', 'http://www.sxyz.com/', '太原市');
INSERT INTO `university` VALUES ('1672', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '晋城职业技术学院', '4', '31', 'http://www.sxjczy.cn/', '晋城市');
INSERT INTO `university` VALUES ('1673', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西建筑职业技术学院', '4', '31', 'http://www.sxatc.com/', '太原市');
INSERT INTO `university` VALUES ('1674', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西药科职业学院', '4', '31', 'http://www.sxbac.net.cn/', '太原市');
INSERT INTO `university` VALUES ('1675', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西工程职业技术学院', '4', '31', 'http://www.sxgy.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1676', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西交通职业技术学院', '4', '31', 'http://www.sxjt.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1677', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大同煤炭职业技术学院', '4', '31', 'http://www.dtmtxy.cn/', '大同市');
INSERT INTO `university` VALUES ('1678', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西机电职业技术学院', '4', '31', 'http://www.sxjdxy.org/', '长治市');
INSERT INTO `university` VALUES ('1679', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西戏剧职业学院', '4', '31', 'http://www.shanxixjxy.com/', '太原市');
INSERT INTO `university` VALUES ('1680', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西财贸职业技术学院', '4', '31', 'http://www.sxcmvc.com/', '太原市');
INSERT INTO `university` VALUES ('1681', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西林业职业技术学院', '4', '31', 'http://www.sxly.com.cn/', '太原市');
INSERT INTO `university` VALUES ('1682', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西水利职业技术学院', '4', '31', 'http://www.sxsy.com.cn/', '太原市');
INSERT INTO `university` VALUES ('1683', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阳泉职业技术学院', '4', '31', 'http://www.tyutyqc.edu.cn/', '阳泉市');
INSERT INTO `university` VALUES ('1684', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '临汾职业技术学院', '4', '31', 'http://www.lfvtc.cn/', '临汾市');
INSERT INTO `university` VALUES ('1685', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西职业技术学院', '4', '31', 'http://www.sxzzy.cn/', '太原市');
INSERT INTO `university` VALUES ('1686', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西煤炭职业技术学院', '4', '31', 'http://www.sxmtxy.com.cn/', '太原市');
INSERT INTO `university` VALUES ('1687', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西金融职业学院', '4', '31', 'http://www.sxjrzyxy.com/', '太原市');
INSERT INTO `university` VALUES ('1688', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '太原城市职业技术学院', '4', '31', 'http://www.cntcvc.com/', '太原市');
INSERT INTO `university` VALUES ('1689', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西信息职业技术学院', '4', '31', 'http://www.vcit.cn/', '临汾市');
INSERT INTO `university` VALUES ('1690', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西体育职业学院', '4', '31', 'http://www.sxptc.com/', '太原市');
INSERT INTO `university` VALUES ('1691', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西警官职业学院', '4', '31', 'http://www.sxpolice.cn/', '太原市');
INSERT INTO `university` VALUES ('1692', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西国际商务职业学院', '4', '31', 'http://www.sxibs.com/', '太原市');
INSERT INTO `university` VALUES ('1693', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '潞安职业技术学院', '4', '31', 'http://sxlazy.cen114.com/', '长治市');
INSERT INTO `university` VALUES ('1694', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '太原旅游职业学院', '4', '31', 'http://www.tylyzyxy.com/', '太原市');
INSERT INTO `university` VALUES ('1695', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西旅游职业学院', '4', '31', 'http://www.sxtvi.com.cn/', '太原市');
INSERT INTO `university` VALUES ('1696', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西管理职业学院', '4', '31', 'http://www.sxglzyxy.com.cn/', '临汾市');
INSERT INTO `university` VALUES ('1697', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西电力职业技术学院', '4', '31', 'http://www.vtep.edu.cn/', '太原市');
INSERT INTO `university` VALUES ('1698', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '忻州职业技术学院', '4', '31', 'http://www.xzvtc.com/', '忻州市');
INSERT INTO `university` VALUES ('1699', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西同文职业技术学院', '4', '31', 'http://www.sxtwedu.com/', '介休市');
INSERT INTO `university` VALUES ('1700', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '晋中职业技术学院', '4', '31', 'http://www.jzzy.sx.cn/', '晋中市');
INSERT INTO `university` VALUES ('1701', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西华澳商贸职业学院', '4', '31', 'http://www.huaao.sx.cn/', '太原市');
INSERT INTO `university` VALUES ('1702', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西运城农业职业技术学院', '4', '31', 'http://www.sycnxy.com/', '运城市');
INSERT INTO `university` VALUES ('1703', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '运城幼儿师范高等31学校', '4', '31', 'http://www.sxycys.com/', '运城市');
INSERT INTO `university` VALUES ('1704', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西老区职业技术学院', '4', '31', 'http://www.sxlqzy.cn/', '太原市');
INSERT INTO `university` VALUES ('1705', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西经贸职业学院', '4', '31', 'http://www.sxemc.com/', '太原市');
INSERT INTO `university` VALUES ('1706', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '朔州职业技术学院', '4', '31', 'http://www.szvtc.sx.cn/', '朔州市');
INSERT INTO `university` VALUES ('1707', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '运城职业技术学院', '4', '31', 'http://www.ycptu.com/', '运城市');
INSERT INTO `university` VALUES ('1708', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西轻工职业技术学院', '4', '31', 'http://www.sxqgzy.cn/', '太原市');
INSERT INTO `university` VALUES ('1709', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '晋中师范高等31学校', '4', '31', 'http://www.sxjzsf.cn/', '晋中市');
INSERT INTO `university` VALUES ('1710', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阳泉师范高等31学校', '4', '31', 'http://www.sxyqsz.cn/', '阳泉市');
INSERT INTO `university` VALUES ('1711', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山西青年职业学院', '4', '31', 'http://www.sxqzy.cn/', '太原市');
INSERT INTO `university` VALUES ('1712', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '运城护理职业学院', '4', '31', 'http://www.ychlxy.com/', '运城市');
INSERT INTO `university` VALUES ('1713', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '运城师范高等31学校', '4', '31', 'http://www.sxycsf.com/', '运城市');
INSERT INTO `university` VALUES ('1714', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '朔州师范高等31学校', '4', '31', 'http://www.szsfdx.com/', '朔州市');
INSERT INTO `university` VALUES ('1715', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古大学', '5', '32', 'http://www.imu.edu.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1716', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古科技大学', '5', '32', 'http://www.imust.cn/', '包头市');
INSERT INTO `university` VALUES ('1717', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古工业大学', '5', '32', 'http://www.imut.edu.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1718', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古农业大学', '5', '32', 'http://www.imau.edu.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1719', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古医科大学', '5', '32', 'http://www.immc.edu.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1720', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古师范大学', '5', '32', 'http://www.imnu.edu.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1721', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古民族大学', '5', '32', 'http://www.imun.edu.cn/', '通辽市');
INSERT INTO `university` VALUES ('1722', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '赤峰学院', '5', '32', 'http://www.cfxy.cn/', '赤峰市');
INSERT INTO `university` VALUES ('1723', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古财经大学', '5', '32', 'http://www.imufe.edu.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1724', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '呼伦贝尔学院', '5', '32', 'http://www.hlbrc.cn/', '呼伦贝尔');
INSERT INTO `university` VALUES ('1725', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '集宁师范学院', '5', '32', 'http://www.jntc.nm.cn/', '乌兰察布');
INSERT INTO `university` VALUES ('1726', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河套学院', '5', '32', 'http://www.hetaodaxue.com/', '巴彦淖尔');
INSERT INTO `university` VALUES ('1727', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '呼和浩特民族学院', '5', '32', 'http://www.imnc.edu.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1728', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古大学创业学院', '5', '32', 'http://www.imuchuangye.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1729', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古师范大学鸿德学院', '5', '32', 'http://www.honder.com/', '呼和浩特');
INSERT INTO `university` VALUES ('1730', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古艺术学院', '5', '32', 'http://www.imac.edu.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1731', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鄂尔多斯应用技术学院', '5', '32', 'http://www.oit.edu.cn/', '鄂尔多斯');
INSERT INTO `university` VALUES ('1732', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古建筑职业技术学院', '5', '31', 'http://www.imaa.edu.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1733', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古丰州职业学院', '5', '31', 'http://www.qcdx.net/', '呼和浩特');
INSERT INTO `university` VALUES ('1734', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '包头职业技术学院', '5', '31', 'http://www.btzyjsxy.cn/', '包头市');
INSERT INTO `university` VALUES ('1735', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兴安职业技术学院', '5', '31', 'http://www.nmxzy.cn/', '乌兰浩特');
INSERT INTO `university` VALUES ('1736', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '呼和浩特职业学院', '5', '31', 'http://www.hhvc.net.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1737', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '包头轻工职业技术学院', '5', '31', 'http://www.btqy.com.cn/', '包头市');
INSERT INTO `university` VALUES ('1738', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古电子信息职业技术学院', '5', '31', 'http://www.imeic.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1739', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古机电职业技术学院', '5', '31', 'http://www.nmgjdxy.com/', '呼和浩特');
INSERT INTO `university` VALUES ('1740', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古化工职业学院', '5', '31', 'http://www.hgzyxy.com.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1741', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古商贸职业学院', '5', '31', 'http://www.imvcc.com/', '呼和浩特');
INSERT INTO `university` VALUES ('1742', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '锡林郭勒职业学院', '5', '31', 'http://www.xlglvc.cn/', '锡林浩特');
INSERT INTO `university` VALUES ('1743', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古警察职业学院', '5', '31', 'http://www.imppc.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1744', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古体育职业学院', '5', '31', 'http://www.nmtyxy.com/', '呼和浩特');
INSERT INTO `university` VALUES ('1745', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '乌兰察布职业学院', '5', '31', 'http://www.wlcbzyxy.com.cn/', '乌兰察布');
INSERT INTO `university` VALUES ('1746', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '通辽职业学院', '5', '31', 'http://www.tlzyxy.com/', '通辽市');
INSERT INTO `university` VALUES ('1747', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '科尔沁艺术职业学院', '5', '31', 'http://www.keqysxy.com.cn/', '通辽市');
INSERT INTO `university` VALUES ('1748', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古交通职业技术学院', '5', '31', 'http://www.nmjtzy.com/', '赤峰市');
INSERT INTO `university` VALUES ('1749', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '包头钢铁职业技术学院', '5', '31', 'http://www.btsvc.edu.cn/', '包头市');
INSERT INTO `university` VALUES ('1750', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '乌海职业技术学院', '5', '31', 'http://www.whvtc.net/', '乌海市');
INSERT INTO `university` VALUES ('1751', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古科技职业学院', '5', '31', 'http://www.imstu.org.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1752', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古北方职业技术学院', '5', '31', 'http://www.nmbfxy.com/', '呼和浩特');
INSERT INTO `university` VALUES ('1753', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '赤峰职业技术学院', '5', '31', 'http://www.cfzyjsxy.com/', '赤峰市');
INSERT INTO `university` VALUES ('1754', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古经贸外语职业学院', '5', '31', 'http://www.nmgjwy.com/', '包头市');
INSERT INTO `university` VALUES ('1755', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '包头铁道职业技术学院', '5', '31', 'http://www.btgx.com/', '包头市');
INSERT INTO `university` VALUES ('1756', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '乌兰察布医学高等31学校', '5', '31', 'http://www.wlcbswx.com/', '乌兰察布');
INSERT INTO `university` VALUES ('1757', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鄂尔多斯职业学院', '5', '31', 'http://www.ordosvc.cn/', '鄂尔多斯');
INSERT INTO `university` VALUES ('1758', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古工业职业学院', '5', '31', 'http://www.nmxuanyuan.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1759', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '呼伦贝尔职业技术学院', '5', '31', 'http://www.hlbrzy.com/', '呼伦贝尔');
INSERT INTO `university` VALUES ('1760', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '满洲里俄语职业学院', '5', '31', 'http://ey.mzlxy.cn/', '满洲里');
INSERT INTO `university` VALUES ('1761', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古能源职业学院', '5', '31', 'http://www.nmpower.cn/', '呼和浩特');
INSERT INTO `university` VALUES ('1762', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '赤峰工业职业技术学院', '5', '31', 'http://222.74.246.51/', '赤峰市');
INSERT INTO `university` VALUES ('1763', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阿拉善职业技术学院', '5', '31', 'http://www.alszyxy.cn/', '阿拉善');
INSERT INTO `university` VALUES ('1764', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古美术职业学院', '5', '31', 'http://www.nmgmsxy.net/', '巴彦淖尔');
INSERT INTO `university` VALUES ('1765', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内蒙古民族幼儿师范高等31学校', '5', '31', 'http://www.nmmysz.com/', '鄂尔多斯');
INSERT INTO `university` VALUES ('1766', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鄂尔多斯生态环境职业学院', '5', '31', 'http://www.ordosnmxx.com/', '鄂尔多斯市');
INSERT INTO `university` VALUES ('1767', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '扎兰屯职业学院', '5', '31', 'http://www.zltzyxy.com/', '呼伦贝尔市');
INSERT INTO `university` VALUES ('1768', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁大学', '6', '32', 'http://www.lnu.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1769', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连理工大学', '6', '32', 'http://www.dlut.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1770', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳工业大学', '6', '32', 'http://www.sut.edu.cn', '沈阳市');
INSERT INTO `university` VALUES ('1771', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳航空航天大学', '6', '32', 'http://www.sau.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1772', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳理工大学', '6', '32', 'http://www.syit.edu.cn', '沈阳市');
INSERT INTO `university` VALUES ('1773', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东北大学', '6', '32', 'http://www.neu.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1774', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁科技大学', '6', '32', 'http://www.ustl.edu.cn/', '鞍山市');
INSERT INTO `university` VALUES ('1775', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁工程技术大学', '6', '32', 'http://www.lntu.edu.cn/', '阜新市');
INSERT INTO `university` VALUES ('1776', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁石油化工大学', '6', '32', 'http://www.lnpu.edu.cn/', '抚顺市');
INSERT INTO `university` VALUES ('1777', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳化工大学', '6', '32', 'http://www.syuct.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1778', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连交通大学', '6', '32', 'http://www.djtu.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1779', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连海事大学', '6', '32', 'http://www.dlmu.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1780', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连工业大学', '6', '32', 'http://www.dlpu.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1781', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳建筑大学', '6', '32', 'http://www.sjzu.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1782', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁工业大学', '6', '32', 'http://www.lnit.edu.cn/', '锦州市');
INSERT INTO `university` VALUES ('1783', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳农业大学', '6', '32', 'http://www.syau.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1784', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连海洋大学', '6', '32', 'http://www.dlou.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1785', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国医科大学', '6', '32', 'http://www.cmu.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1786', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '锦州医科大学', '6', '32', 'http://www.lnmu.edu.cn/', '锦州市');
INSERT INTO `university` VALUES ('1787', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连医科大学', '6', '32', 'http://www.dlmedu.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1788', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁中医药大学', '6', '32', 'http://www.lnutcm.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1789', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳药科大学', '6', '32', 'http://www.syphu.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1790', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳医学院', '6', '32', 'http://www.symc.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1791', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁师范大学', '6', '32', 'http://www.lnnu.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1792', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳师范大学', '6', '32', 'http://www.synu.edu.cn', '沈阳市');
INSERT INTO `university` VALUES ('1793', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '渤海大学', '6', '32', 'http://www.bhu.edu.cn/', '锦州市');
INSERT INTO `university` VALUES ('1794', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鞍山师范学院', '6', '32', 'http://www.asnc.edu.cn/', '鞍山市');
INSERT INTO `university` VALUES ('1795', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连外国语大学', '6', '32', 'http://www.dlufl.edu.cn', '大连市');
INSERT INTO `university` VALUES ('1796', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东北财经大学', '6', '32', 'http://www.dufe.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1797', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国刑事警察学院', '6', '32', 'http://www.npuc.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1798', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳体育学院', '6', '32', 'http://www.syty.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1799', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳音乐学院', '6', '32', 'http://www.sycm.com.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1800', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鲁迅美术学院', '6', '32', 'http://www.lumei.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1801', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁对外经贸学院', '6', '32', 'http://www.luibe.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1802', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳大学', '6', '32', 'http://www.syu.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1803', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连大学', '6', '32', 'http://www.dlu.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1804', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁科技学院', '6', '32', 'http://www.lnist.edu.cn/', '本溪市');
INSERT INTO `university` VALUES ('1805', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁警察学院', '6', '32', 'http://www.lnpc.cn/', '大连市');
INSERT INTO `university` VALUES ('1806', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳工程学院', '6', '32', 'http://www.sie.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1807', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽东学院', '6', '32', 'http://www.ldxy.cn/', '丹东市');
INSERT INTO `university` VALUES ('1808', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连民族大学', '6', '32', 'http://www.dlnu.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1809', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连理工大学城市学院', '6', '32', 'http://city.dlut.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1810', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳工业大学工程学院', '6', '32', 'http://gcxy.sut.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1811', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳航空航天大学北方科技学院', '6', '32', 'http://nstc.sau.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1812', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳工学院', '6', '32', 'http://www.syyyy.com.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1813', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连工业大学艺术与信息工程学院', '6', '32', 'http://www.caie.org/', '大连市');
INSERT INTO `university` VALUES ('1814', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连科技学院', '6', '32', 'http://www.dist.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1815', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳城市建设学院', '6', '32', 'http://www.sjcy.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1816', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国医科大学临床医药学院', '6', '32', 'http://www.cmu.edu.cn/cmc/', '沈阳市');
INSERT INTO `university` VALUES ('1817', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连医科大学中山学院', '6', '32', 'http://www.dmuzs.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1818', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '锦州医科大学医疗学院', '6', '32', 'http://ylxy.lnmu.edu.cn/', '锦州市');
INSERT INTO `university` VALUES ('1819', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁师范大学海华学院', '6', '32', 'http://haihua.lnnu.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1820', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁理工学院', '6', '32', 'http://www.lise.edu.cn/', '锦州市');
INSERT INTO `university` VALUES ('1821', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连财经学院', '6', '32', 'http://www.kingbridge.net/', '大连市');
INSERT INTO `university` VALUES ('1822', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳城市学院', '6', '32', 'http://www.sdkj-syu.net/', '沈阳市');
INSERT INTO `university` VALUES ('1823', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁石油化工大学顺华能源学院', '6', '32', 'http://www.lnshny.com/', '抚顺市');
INSERT INTO `university` VALUES ('1824', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连艺术学院', '6', '32', 'http://www.dac.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1825', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁中医药大学杏林学院', '6', '32', 'http://www.lncmxl.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1826', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁何氏医学院', '6', '32', 'http://www.he-edu.com/', '沈阳市');
INSERT INTO `university` VALUES ('1827', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳科技学院', '6', '32', 'http://www.syuctky.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1828', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连东软信息学院', '6', '32', 'http://www.neusoft.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1829', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁财贸学院', '6', '32', 'http://www.lncmxy.com/', '兴城市');
INSERT INTO `university` VALUES ('1830', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁传媒学院', '6', '32', 'http://www.lncu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1831', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '营口理工学院', '6', '32', 'http://www.yku.edu.cn/', '营口市');
INSERT INTO `university` VALUES ('1832', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '朝阳师范高等31学校', '6', '31', 'http://www.cysz.com.cn/', '朝阳市');
INSERT INTO `university` VALUES ('1833', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '抚顺师范高等31学校', '6', '31', 'http://www.fstc.cn/', '抚顺市');
INSERT INTO `university` VALUES ('1834', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '锦州师范高等31学校', '6', '31', 'http://www.jzsz.com.cn/', '锦州市');
INSERT INTO `university` VALUES ('1835', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '营口职业技术学院', '6', '31', 'http://www.ykdx.net/', '营口市');
INSERT INTO `university` VALUES ('1836', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '铁岭师范高等31学校', '6', '31', 'http://www.tlsz.com.cn/', '铁岭市');
INSERT INTO `university` VALUES ('1837', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连职业技术学院', '6', '31', 'http://www.dlvtc.edu.cn/', '大连市');
INSERT INTO `university` VALUES ('1838', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁农业职业技术学院', '6', '31', 'http://www.lnnzy.ln.cn/', '营口市');
INSERT INTO `university` VALUES ('1839', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '抚顺职业技术学院', '6', '31', 'http://www.fvti.com/', '抚顺市');
INSERT INTO `university` VALUES ('1840', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽阳职业技术学院', '6', '31', 'http://www.419.com.cn/', '辽阳市');
INSERT INTO `university` VALUES ('1841', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阜新高等31学校', '6', '31', 'http://www.fxgz.com.cn/', '阜新市');
INSERT INTO `university` VALUES ('1842', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁交通高等31学校', '6', '31', 'http://www.lncc.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1843', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁税务高等31学校', '6', '31', 'http://www.dltaxedu.com/', '大连市');
INSERT INTO `university` VALUES ('1844', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '盘锦职业技术学院', '6', '31', 'http://www.pjzy.net.cn/', '盘锦市');
INSERT INTO `university` VALUES ('1845', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳航空职业技术学院', '6', '31', 'http://www.syhzy.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1846', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁职业学院', '6', '31', 'http://www.lnvc.cn/', '铁岭市');
INSERT INTO `university` VALUES ('1847', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁林业职业技术学院', '6', '31', 'http://www.lnlzy.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1848', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳职业技术学院', '6', '31', 'http://www.vtcsy.com/', '沈阳市');
INSERT INTO `university` VALUES ('1849', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁理工职业学院', '6', '31', 'http://www.lndhdx.com/', '锦州市');
INSERT INTO `university` VALUES ('1850', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连商务职业学院', '6', '31', 'http://www.dlswedu.com/', '大连市');
INSERT INTO `university` VALUES ('1851', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁金融职业学院', '6', '31', 'http://www.lnfvc.cn', '沈阳市');
INSERT INTO `university` VALUES ('1852', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁轨道交通职业学院', '6', '31', 'http://www.stjx.com.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1853', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁广告职业学院', '6', '31', 'http://www.ggxy.com/', '沈阳市');
INSERT INTO `university` VALUES ('1854', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁机电职业技术学院', '6', '31', 'http://www.lnmec.net.cn/', '丹东市');
INSERT INTO `university` VALUES ('1855', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁经济职业技术学院', '6', '31', 'http://www.lnemci.com/', '沈阳市');
INSERT INTO `university` VALUES ('1856', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁石化职业技术学院', '6', '31', 'http://www.lnpc.edu.cn/', '锦州市');
INSERT INTO `university` VALUES ('1857', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '渤海船舶职业学院', '6', '31', 'http://www.bhcy.cn/', '葫芦岛');
INSERT INTO `university` VALUES ('1858', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连软件职业学院', '6', '31', 'http://www.rjedu.com/', '大连市');
INSERT INTO `university` VALUES ('1859', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连翻译职业学院', '6', '31', 'http://www.dltcedu.org/', '大连市');
INSERT INTO `university` VALUES ('1860', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁商贸职业学院', '6', '31', 'http://www.lnsmzy.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1861', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连枫叶职业技术学院', '6', '31', 'http://www.dmlit.cn/', '大连市');
INSERT INTO `university` VALUES ('1862', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁装备制造职业技术学院', '6', '31', 'http://www.ltcem.com/', '沈阳市');
INSERT INTO `university` VALUES ('1863', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽河石油职业技术学院', '6', '31', 'http://www.lhptc.com/', '盘锦市');
INSERT INTO `university` VALUES ('1864', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁地质工程职业学院', '6', '31', 'http://www.lndzxy.com/', '丹东市');
INSERT INTO `university` VALUES ('1865', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁铁道职业技术学院', '6', '31', 'http://www.jztlyx.com/', '锦州市');
INSERT INTO `university` VALUES ('1866', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁建筑职业学院', '6', '31', 'http://www.lnjzxy.com/', '辽阳市');
INSERT INTO `university` VALUES ('1867', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连航运职业技术学院', '6', '31', 'http://www.dlsc.net.cn/', '大连市');
INSERT INTO `university` VALUES ('1868', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连装备制造职业技术学院', '6', '31', 'http://www.dlzbzzedu.com/', '大连市');
INSERT INTO `university` VALUES ('1869', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大连汽车职业技术学院', '6', '31', 'http://www.dlqcxy.com/', '大连市');
INSERT INTO `university` VALUES ('1870', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁现代服务职业技术学院', '6', '31', 'http://www.lnxdfwxy.com/', '沈阳市');
INSERT INTO `university` VALUES ('1871', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁冶金职业技术学院', '6', '31', 'http://www.lnyj.net/', '本溪市');
INSERT INTO `university` VALUES ('1872', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁工程职业学院', '6', '31', 'http://www.lngczyxy.com/', '铁岭市');
INSERT INTO `university` VALUES ('1873', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁城市建设职业技术学院', '6', '31', 'http://www.lncjxy.com/', '沈阳市');
INSERT INTO `university` VALUES ('1874', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁医药职业学院', '6', '31', 'http://www.lnwsxy-edu.com/', '沈阳市');
INSERT INTO `university` VALUES ('1875', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '铁岭卫生职业学院', '6', '31', 'http://www.lntlhc.com/', '铁岭市');
INSERT INTO `university` VALUES ('1876', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沈阳北软信息职业技术学院', '6', '31', 'http://www.nsi-soft.com/', '沈阳市');
INSERT INTO `university` VALUES ('1877', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁政法职业学院', '6', '31', 'http://www.lacpj.com/', '沈阳市');
INSERT INTO `university` VALUES ('1878', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁民族师范高等31学校', '6', '31', 'http://www.lnkn.edu.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1879', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁轻工职业学院', '6', '31', 'http://www.lnqg.com.cn/', '大连市');
INSERT INTO `university` VALUES ('1880', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁水利职业学院', '6', '31', 'http://www.sngzy.cn/', '沈阳市');
INSERT INTO `university` VALUES ('1881', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽宁特殊教育师范高等31学校', '6', '31', 'http://www.lntjw.com/', '沈阳市');
INSERT INTO `university` VALUES ('1882', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林大学', '7', '32', 'http://www.jlu.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1883', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '延边大学', '7', '32', 'http://www.ybu.edu.cn/', '延吉市');
INSERT INTO `university` VALUES ('1884', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春理工大学', '7', '32', 'http://www.cust.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1885', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东北电力大学', '7', '32', 'http://www.nedu.edu.cn/', '吉林市');
INSERT INTO `university` VALUES ('1886', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春工业大学', '7', '32', 'http://www.ccut.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1887', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林建筑大学', '7', '32', 'http://www.jliae.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1888', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林化工学院', '7', '32', 'http://www.jlict.edu.cn/', '吉林市');
INSERT INTO `university` VALUES ('1889', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林农业大学', '7', '32', 'http://www.jlau.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1890', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春中医药大学', '7', '32', 'http://www.ccucm.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1891', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东北师范大学', '7', '32', 'http://www.nenu.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1892', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北华大学', '7', '32', 'http://www.beihua.edu.cn/', '吉林市');
INSERT INTO `university` VALUES ('1893', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '通化师范学院', '7', '32', 'http://www.thnu.edu.cn/', '通化市');
INSERT INTO `university` VALUES ('1894', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林师范大学', '7', '32', 'http://www.jlnu.edu.cn/', '四平市');
INSERT INTO `university` VALUES ('1895', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林工程技术师范学院', '7', '32', 'http://www.jltiet.net/', '长春市');
INSERT INTO `university` VALUES ('1896', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春师范大学', '7', '32', 'http://www.cncnc.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1897', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '白城师范学院', '7', '32', 'http://www.bcsfxy.com/', '白城市');
INSERT INTO `university` VALUES ('1898', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林财经大学', '7', '32', 'http://www.ctu.cc.jl.cn/', '长春市');
INSERT INTO `university` VALUES ('1899', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林体育学院', '7', '32', 'http://www.jlsu.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1900', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林艺术学院', '7', '32', 'http://www.jlart.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1901', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林华桥外国语学院', '7', '32', 'http://www.hqwy.com/', '长春市');
INSERT INTO `university` VALUES ('1902', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林工商学院', '7', '32', 'http://www.jlbtc.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1903', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春工程学院', '7', '32', 'http://www.ccit.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1904', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林农业科技学院', '7', '32', 'http://www.jlnku.com/', '吉林市');
INSERT INTO `university` VALUES ('1905', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林警察学院', '7', '32', 'http://www.jljcxy.com/', '长春市');
INSERT INTO `university` VALUES ('1906', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春大学', '7', '32', 'http://www.ccu.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1907', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春光华学院', '7', '32', 'http://www.ccughc.net/', '长春市');
INSERT INTO `university` VALUES ('1908', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春工业大学人文信息学院', '7', '32', 'http://www.ccutchi.com/', '长春市');
INSERT INTO `university` VALUES ('1909', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春理工大学光电信息学院', '7', '32', 'http://www.csoei.com/', '长春市');
INSERT INTO `university` VALUES ('1910', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春财经学院', '7', '32', 'http://www.ccufe.com/', '长春市');
INSERT INTO `university` VALUES ('1911', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林建筑大学城建学院', '7', '32', 'http://www.jlucc.net/', '长春市');
INSERT INTO `university` VALUES ('1912', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春建筑学院', '7', '32', 'http://www.jladi.com/', '长春市');
INSERT INTO `university` VALUES ('1913', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春科技学院', '7', '32', 'http://www.jlaudev.com.cn/', '长春市');
INSERT INTO `university` VALUES ('1914', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林动画学院', '7', '32', 'http://www.jldh.com.cn/', '长春市');
INSERT INTO `university` VALUES ('1915', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林师范大学博达学院', '7', '32', 'http://www.bdxy.com.cn/', '四平市');
INSERT INTO `university` VALUES ('1916', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春大学旅游学院', '7', '32', 'http://www.cctourcollege.com/', '长春市');
INSERT INTO `university` VALUES ('1917', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东北师范大学人文学院', '7', '32', 'http://www.chsnenu.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1918', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林医药学院', '7', '32', 'http://www.jlmu.cn/', '吉林市');
INSERT INTO `university` VALUES ('1919', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春师范高等31学校', '7', '31', 'http://ccsfgz.com/', '长春市');
INSERT INTO `university` VALUES ('1920', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '辽源职业技术学院', '7', '31', 'http://www.lyvtc.cn/', '辽源市');
INSERT INTO `university` VALUES ('1921', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四平职业大学', '7', '31', 'http://www.jlsppc.cn/', '四平市');
INSERT INTO `university` VALUES ('1922', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春汽车工业高等31学校', '7', '31', 'http://www.caii.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1923', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春金融高等31学校', '7', '31', 'http://www.cjgz.edu.cn/', '长春市');
INSERT INTO `university` VALUES ('1924', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春医学高等31学校', '7', '31', 'http://www.cmcedu.com/', '长春市');
INSERT INTO `university` VALUES ('1925', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林交通职业技术学院', '7', '31', 'http://www.jjtc.com.cn/', '长春市');
INSERT INTO `university` VALUES ('1926', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春东方职业学院', '7', '31', 'http://www.dfzyxy.net/', '长春市');
INSERT INTO `university` VALUES ('1927', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林司法警官职业学院', '7', '31', 'http://www.jlsfjy.cn/', '长春市');
INSERT INTO `university` VALUES ('1928', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林电子信息职业技术学院', '7', '31', 'http://www.jltc.edu.cn/', '吉林市');
INSERT INTO `university` VALUES ('1929', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林工业职业技术学院', '7', '31', 'http://www.jvcit.edu.cn/', '吉林市');
INSERT INTO `university` VALUES ('1930', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林工程职业学院', '7', '31', 'http://www.jlevc.cn/', '四平市');
INSERT INTO `university` VALUES ('1931', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春职业技术学院', '7', '31', 'http://www.cvit.com.cn/', '长春市');
INSERT INTO `university` VALUES ('1932', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '白城医学高等31学校', '7', '31', 'http://www.bcyz.cn/', '白城市');
INSERT INTO `university` VALUES ('1933', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长春信息技术职业学院', '7', '31', 'http://www.citpc.net/', '长春市');
INSERT INTO `university` VALUES ('1934', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '松原职业技术学院', '7', '31', 'http://www.sypt.cn/', '松原市');
INSERT INTO `university` VALUES ('1935', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林铁道职业技术学院', '7', '31', 'http://www.jtpt.cn/', '吉林市');
INSERT INTO `university` VALUES ('1936', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '白城职业技术学院', '7', '31', 'http://www.bcvit.cn/', '白城市');
INSERT INTO `university` VALUES ('1937', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长白山职业技术学院', '7', '31', 'http://www.cbsvtc.com.cn/', '白山市');
INSERT INTO `university` VALUES ('1938', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林科技职业技术学院', '7', '31', 'http://www.jilinkj.com/', '长春市');
INSERT INTO `university` VALUES ('1939', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '延边职业技术学院', '7', '31', 'http://www.ybvtc.com/', '延边市');
INSERT INTO `university` VALUES ('1940', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林城市职业技术学院', '7', '31', 'http://www.jlcsxy.com/', '长春市');
INSERT INTO `university` VALUES ('1941', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林职业技术学院', '7', '31', 'http://www.jlhtedu.com/', '龙井市');
INSERT INTO `university` VALUES ('1942', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林水利电力职业学院', '7', '31', 'http://www.jlsdzy.cn/', '长春市');
INSERT INTO `university` VALUES ('1943', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林对外经贸职业学院', '7', '31', 'http://www.jvcfte.com.cn/', '长春市');
INSERT INTO `university` VALUES ('1944', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江大学', '8', '32', 'http://www.hlju.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1945', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨工业大学', '8', '32', 'http://www.hit.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1946', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨理工大学', '8', '32', 'http://www.hrbust.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1947', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨工程大学', '8', '32', 'http://www.hrbeu.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1948', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江科技大学', '8', '32', 'http://www.usth.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1949', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东北石油大学', '8', '32', 'http://www.nepu.edu.cn/', '大庆市');
INSERT INTO `university` VALUES ('1950', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '佳木斯大学', '8', '32', 'http://www.jmsu.org/', '佳木斯');
INSERT INTO `university` VALUES ('1951', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江八一农垦大学', '8', '32', 'http://www.hlau.cn/', '大庆市');
INSERT INTO `university` VALUES ('1952', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东北农业大学', '8', '32', 'http://www.neau.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1953', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东北林业大学', '8', '32', 'http://www.nefu.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1954', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨医科大学', '8', '32', 'http://www.hrbmu.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1955', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江中医药大学', '8', '32', 'http://www.hljucm.net/', '哈尔滨市');
INSERT INTO `university` VALUES ('1956', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '牡丹江医学院', '8', '32', 'http://www.mdjmu.cn/', '牡丹江市');
INSERT INTO `university` VALUES ('1957', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨师范大学', '8', '32', 'http://www.hrbnu.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1958', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '齐齐哈尔大学', '8', '32', 'http://www.qqhru.edu.cn/', '齐齐哈尔');
INSERT INTO `university` VALUES ('1959', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '牡丹江师范学院', '8', '32', 'http://www.mdjnu.cn/', '牡丹江市');
INSERT INTO `university` VALUES ('1960', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨学院', '8', '32', 'http://www.hrbu.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1961', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大庆师范学院', '8', '32', 'http://www.dqsy.net/', '大庆市');
INSERT INTO `university` VALUES ('1962', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '绥化学院', '8', '32', 'http://www.shxy.net/', '绥化市');
INSERT INTO `university` VALUES ('1963', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨商业大学', '8', '32', 'http://www.hrbcu.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1964', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨体育学院', '8', '32', 'http://www.hrbipe.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1965', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨金融学院', '8', '32', 'http://www.hrbfu.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1966', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '齐齐哈尔医学院', '8', '32', 'http://www.qqhrmu.cn/', '齐齐哈尔');
INSERT INTO `university` VALUES ('1967', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江工业学院', '8', '32', 'http://www.hljgyxy.net/', '鸡西市');
INSERT INTO `university` VALUES ('1968', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江东方学院', '8', '32', 'http://www.dfxy.net/', '鸡西市');
INSERT INTO `university` VALUES ('1969', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨信息工程学院', '8', '32', 'http://www.hxci.com.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1970', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江工程学院', '8', '32', 'http://www.hljit.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1971', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '齐齐哈尔工程学院', '8', '32', 'http://www.qqhrit.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('1972', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江外国语学院', '8', '32', 'http://www.hiu.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1973', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江财经学院', '8', '32', 'http://www.hfu.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1974', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨石油学院', '8', '32', 'http://www.hr-edu.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('1975', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江工商学院', '8', '32', 'http://www.hgs-edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1976', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨远东理工学院', '8', '32', 'http://www.fe-edu.com.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1977', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨剑桥学院', '8', '32', 'http://www.jqu.net.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1978', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江工程学院昆仑旅游学院', '8', '32', 'http://www.kllyxy.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('1979', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨广厦学院', '8', '32', 'http://www.gsxy.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1980', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨华德学院', '8', '32', 'http://www.hithd.net/', '哈尔滨市');
INSERT INTO `university` VALUES ('1981', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑河学院', '8', '32', 'http://www.hhxyzsb.com/', '黑河市');
INSERT INTO `university` VALUES ('1982', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨音乐学院', '8', '32', 'http://www.hrbcm.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1983', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '齐齐哈尔高等师范31学校', '8', '31', 'http://www.qqhrtc.com/', '齐齐哈尔');
INSERT INTO `university` VALUES ('1984', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '伊春职业学院', '8', '31', 'http://www.ycvc.com.cn/', '伊春市');
INSERT INTO `university` VALUES ('1985', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '牡丹江大学', '8', '31', 'http://www.mdjdx.cn/', '牡丹江市');
INSERT INTO `university` VALUES ('1986', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江职业学院', '8', '31', 'http://www.hljp.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1987', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江建筑职业技术学院', '8', '31', 'http://www.hcc.net.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1988', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江艺术职业学院', '8', '31', 'http://www.hljyzy.org.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('1989', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大庆职业学院', '8', '31', 'http://www.dqzyxy.net/', '大庆市');
INSERT INTO `university` VALUES ('1990', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江林业职业技术学院', '8', '31', 'http://www.hljlzy.com/', '牡丹江市');
INSERT INTO `university` VALUES ('1991', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江农业职业技术学院', '8', '31', 'http://www.hljnzy.net/', '佳木斯市');
INSERT INTO `university` VALUES ('1992', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江农业工程职业学院', '8', '31', 'http://www.hngzy.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('1993', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江农垦职业学院', '8', '31', 'http://www.nkzy.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('1994', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江司法警官职业学院', '8', '31', 'http://www.hlsfjx.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('1995', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鹤岗师范高等31学校', '8', '31', 'http://www.hgtc.org.cn/', '鹤岗市');
INSERT INTO `university` VALUES ('1996', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨电力职业技术学院', '8', '31', 'http://www.hl.sgcc.com.cn/hdy/', '哈尔滨市');
INSERT INTO `university` VALUES ('1997', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨铁道职业技术学院', '8', '31', 'http://www.htxy.net/', '哈尔滨市');
INSERT INTO `university` VALUES ('1998', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大兴安岭职业学院', '8', '31', 'http://www.dxalu.com/', '大兴安岭');
INSERT INTO `university` VALUES ('1999', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江农业经济职业学院', '8', '31', 'http://www.nyjj.net.cn/', '牡丹江市');
INSERT INTO `university` VALUES ('2000', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨职业技术学院', '8', '31', 'http://www.hzjxy.net/', '哈尔滨市');
INSERT INTO `university` VALUES ('2001', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨传媒职业学院', '8', '31', 'http://www.hrbmcc.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('2002', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江生物科技职业学院', '8', '31', 'http://www.swkj.net/', '哈尔滨市');
INSERT INTO `university` VALUES ('2003', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江商业职业学院', '8', '31', 'http://www.hljszy.net/', '牡丹江市');
INSERT INTO `university` VALUES ('2004', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江公安警官职业学院', '8', '31', 'http://www.hlpolice.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('2005', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江信息技术职业学院', '8', '31', 'http://www.hljitpc.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('2006', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨城市职业学院', '8', '31', 'http://www.13451.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('2007', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江农垦科技职业学院', '8', '31', 'http://www.nkkjxy.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('2008', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江旅游职业技术学院', '8', '31', 'http://www.ljly.net/', '哈尔滨市');
INSERT INTO `university` VALUES ('2009', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江三江美术职业学院', '8', '31', 'http://www.sjmsxy.net.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('2010', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江生态工程职业学院', '8', '31', 'http://www.hfmc.net/', '哈尔滨市');
INSERT INTO `university` VALUES ('2011', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江能源职业学院', '8', '31', 'http://www.hmzy.cn/', '双鸭山市');
INSERT INTO `university` VALUES ('2012', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '七台河职业学院', '8', '31', 'http://www.qthzyxy.com/', '七台河市');
INSERT INTO `university` VALUES ('2013', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江民族职业学院', '8', '31', 'http://www.mvcollege.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('2014', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大庆医学高等31学校', '8', '31', 'http://dqyz.petrodaqing.com/', '大庆市');
INSERT INTO `university` VALUES ('2015', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江交通职业技术学院', '8', '31', 'http://www.hlcp.com.cn/', '齐齐哈尔');
INSERT INTO `university` VALUES ('2016', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨应用职业技术学院', '8', '31', 'http://www.hyyzy.com/', '齐齐哈尔');
INSERT INTO `university` VALUES ('2017', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江幼儿师范高等31学校', '8', '31', 'http://www.hljys.cn/', '牡丹江市');
INSERT INTO `university` VALUES ('2018', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨科学技术职业学院', '8', '31', 'http://www.hrbkjzy.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('2019', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江粮食职业学院', '8', '31', 'http://www.hljgvc.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('2020', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '佳木斯职业学院', '8', '31', 'http://www.jmszy.org.cn/', '佳木斯市');
INSERT INTO `university` VALUES ('2021', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江护理高等31学校', '8', '31', 'http://www.hljhlgz.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('2022', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '齐齐哈尔理工职业学院', '8', '31', 'http://www.qlgxy.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('2023', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈尔滨幼儿师范高等31学校', '8', '31', 'http://www.hayouzhuan.com/', '哈尔滨市');
INSERT INTO `university` VALUES ('2024', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黑龙江冰雪体育职业学院', '8', '31', 'http://www.vcws.edu.cn/', '哈尔滨市');
INSERT INTO `university` VALUES ('2025', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '复旦大学', '9', '32', 'http://www.fudan.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2026', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '同济大学', '9', '32', 'http://www.tongji.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2027', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海交通大学', '9', '32', 'http://www.sjtu.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2028', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华东理工大学', '9', '32', 'http://www.ecust.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2029', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海理工大学', '9', '32', 'http://www.usst.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2030', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海海事大学', '9', '32', 'http://www.shmtu.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2031', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东华大学', '9', '32', 'http://www.dhu.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2032', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海电力学院', '9', '32', 'http://www.shiep.edu.cn', '上海市');
INSERT INTO `university` VALUES ('2033', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海应用技术大学', '9', '32', 'http://www.sit.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2034', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海健康医学院', '9', '32', 'http://www.sumhs.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2035', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海海洋大学', '9', '32', 'http://www.shou.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2036', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海中医药大学', '9', '32', 'http://www.shutcm.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2037', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华东师范大学', '9', '32', 'http://www.ecnu.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2038', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海师范大学', '9', '32', 'http://www.shnu.edu.cn', '上海市');
INSERT INTO `university` VALUES ('2039', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海外国语大学', '9', '32', 'http://www.shisu.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2040', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海财经大学', '9', '32', 'http://www.shufe.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2041', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海对外经贸大学', '9', '32', 'http://www.suibe.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2042', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海海关学院', '9', '32', 'http://shanghai_edu.customs.go', '上海市');
INSERT INTO `university` VALUES ('2043', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华东政法大学', '9', '32', 'http://www.ecupl.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2044', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海体育学院', '9', '32', 'http://www.sus.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2045', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海音乐学院', '9', '32', 'http://www.shcmusic.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2046', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海戏剧学院', '9', '32', 'http://www.sta.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2047', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海大学', '9', '32', 'http://www.shu.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2048', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海公安学院', '9', '32', 'http://www.shpc.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2049', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海工程技术大学', '9', '32', 'http://www.sues.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2050', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海立信会计金融学院', '9', '32', 'http://www.lixin.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2051', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海电机学院', '9', '32', 'http://www.sdju.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2052', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海杉达学院', '9', '32', 'http://www.sandau.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2053', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海政法学院', '9', '32', 'http://www.shupl.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2054', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海第二工业大学', '9', '32', 'http://www.sspu.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2055', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海商学院', '9', '32', 'http://www.sbs.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2056', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海建桥学院', '9', '32', 'http://www.gench.com.cn/', '上海市');
INSERT INTO `university` VALUES ('2057', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海兴伟学院', '9', '32', 'http://www.xingwei.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2058', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海视觉艺术学院', '9', '32', 'http://www.siva.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2059', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海外国语大学贤达经济人文学院', '9', '32', 'http://www.xdsisu.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2060', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海师范大学天华学院', '9', '32', 'http://www.sthu.cn/', '上海市');
INSERT INTO `university` VALUES ('2061', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海纽约大学', '9', '32', 'http://shanghai.nyu.edu/cn', '上海市');
INSERT INTO `university` VALUES ('2062', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海科技大学', '9', '32', 'http://www.shanghaitech.edu.cn', '上海市');
INSERT INTO `university` VALUES ('2063', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海旅游高等31学校', '9', '31', 'http://sit.shnu.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2064', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海东海职业技术学院', '9', '31', 'http://www.esu.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2065', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海工商职业技术学院', '9', '31', 'http://www.sicp.sh.cn/', '上海市');
INSERT INTO `university` VALUES ('2066', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海出版印刷高等31学校', '9', '31', 'http://www.sppc.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2067', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海行健职业学院', '9', '31', 'http://www.shxj.cn/', '上海市');
INSERT INTO `university` VALUES ('2068', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海城建职业学院', '9', '31', 'http://www.succ.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2069', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海交通职业技术学院', '9', '31', 'http://www.scp.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2070', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海海事职业技术学院', '9', '31', 'http://www.sma.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2071', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海电子信息职业技术学院', '9', '31', 'http://www.stiei.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2072', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海震旦职业学院', '9', '31', 'http://www.aurora-college.cn/', '上海市');
INSERT INTO `university` VALUES ('2073', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海民远职业技术学院', '9', '31', 'http://www.min-yuan.com/', '上海市');
INSERT INTO `university` VALUES ('2074', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海欧华职业技术学院', '9', '31', 'http://www.shouhua.net.cn/', '上海市');
INSERT INTO `university` VALUES ('2075', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海思博职业技术学院', '9', '31', 'http://www.shsipo.com/', '上海市');
INSERT INTO `university` VALUES ('2076', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海立达职业技术学院', '9', '31', 'http://www.lidapoly.com/', '上海市');
INSERT INTO `university` VALUES ('2077', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海工艺美术职业学院', '9', '31', 'http://www.shgymy.com/', '上海市');
INSERT INTO `university` VALUES ('2078', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海济光职业技术学院', '9', '31', 'http://www.shjgxy.net/', '上海市');
INSERT INTO `university` VALUES ('2079', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海工商外国语职业学院', '9', '31', 'http://www.sicfl.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2080', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海科学技术职业学院', '9', '31', 'http://www.scst.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2081', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海农林职业技术学院', '9', '31', 'http://www.shafc.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2082', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海邦德职业技术学院', '9', '31', 'http://www.shbangde.com/', '上海市');
INSERT INTO `university` VALUES ('2083', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海中侨职业技术学院', '9', '31', 'http://www.shzq.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2084', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海电影艺术职业学院', '9', '31', 'http://www.sfaa.com.cn/', '上海市');
INSERT INTO `university` VALUES ('2085', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海中华职业技术学院', '9', '31', 'http://www.zhonghuacollege.com', '上海市');
INSERT INTO `university` VALUES ('2086', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海工会管理职业学院', '9', '31', 'http://www.shghxyedu.net/', '上海市');
INSERT INTO `university` VALUES ('2087', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海体育职业学院', '9', '31', 'http://www.ssi.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2088', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海民航职业技术学院', '9', '31', 'http://www.shcac.edu.cn/', '上海市');
INSERT INTO `university` VALUES ('2089', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京大学', '10', '32', 'http://www.nju.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2090', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州大学', '10', '32', 'http://www.suda.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2091', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东南大学', '10', '32', 'http://www.seu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2092', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京航空航天大学', '10', '32', 'http://www.nuaa.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2093', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京理工大学', '10', '32', 'http://www.njust.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2094', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏科技大学', '10', '32', 'http://www.just.edu.cn/', '镇江市');
INSERT INTO `university` VALUES ('2095', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国矿业大学', '10', '32', 'http://www.cumt.edu.cn/', '徐州市');
INSERT INTO `university` VALUES ('2096', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京工业大学', '10', '32', 'http://www.njtech.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2097', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '常州大学', '10', '32', 'http://www.cczu.edu.cn/', '常州市');
INSERT INTO `university` VALUES ('2098', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京邮电大学', '10', '32', 'http://www.njupt.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2099', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河海大学', '10', '32', 'http://www.hhu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2100', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江南大学', '10', '32', 'http://www.jiangnan.edu.cn/', '无锡市');
INSERT INTO `university` VALUES ('2101', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京林业大学', '10', '32', 'http://www.njfu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2102', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏大学', '10', '32', 'http://www.ujs.edu.cn/', '镇江市');
INSERT INTO `university` VALUES ('2103', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京信息工程大学', '10', '32', 'http://www.nuist.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2104', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南通大学', '10', '32', 'http://www.ntu.edu.cn/', '南通市');
INSERT INTO `university` VALUES ('2105', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '盐城工学院', '10', '32', 'http://www.ycit.cn/', '盐城市');
INSERT INTO `university` VALUES ('2106', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京农业大学', '10', '32', 'http://www.njau.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2107', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京医科大学', '10', '32', 'http://www.njmu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2108', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '徐州医科大学', '10', '32', 'http://www.xzmc.edu.cn/', '徐州市');
INSERT INTO `university` VALUES ('2109', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京中医药大学', '10', '32', 'http://www.njutcm.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2110', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国药科大学', '10', '32', 'http://www.cpu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2111', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京师范大学', '10', '32', 'http://www.njnu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2112', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏师范大学', '10', '32', 'http://www.jsnu.edu.cn/', '徐州市');
INSERT INTO `university` VALUES ('2113', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淮阴师范学院', '10', '32', 'http://www.hytc.edu.cn/', '淮阴市');
INSERT INTO `university` VALUES ('2114', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '盐城师范学院', '10', '32', 'http://www.yctc.edu.cn/', '盐城市');
INSERT INTO `university` VALUES ('2115', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京财经大学', '10', '32', 'http://www.njue.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2116', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏警官学院', '10', '32', 'http://www.jspi.cn/', '南京市');
INSERT INTO `university` VALUES ('2117', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京体育学院', '10', '32', 'http://www.nipes.cn/', '南京市');
INSERT INTO `university` VALUES ('2118', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京艺术学院', '10', '32', 'http://www.nua.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2119', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州科技大学', '10', '32', 'http://www.usts.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2120', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '常熟理工学院', '10', '32', 'http://www.cslg.cn/', '苏州市');
INSERT INTO `university` VALUES ('2121', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淮阴工学院', '10', '32', 'http://www.hyit.edu.cn/', '淮阴市');
INSERT INTO `university` VALUES ('2122', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '常州工学院', '10', '32', 'http://www.czu.cn/', '常州市');
INSERT INTO `university` VALUES ('2123', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '扬州大学', '10', '32', 'http://www.yzu.edu.cn/', '扬州市');
INSERT INTO `university` VALUES ('2124', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三江学院', '10', '32', 'http://www.sju.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2125', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京工程学院', '10', '32', 'http://www.njit.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2126', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京审计大学', '10', '32', 'http://www.nau.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2127', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京晓庄学院', '10', '32', 'http://www.njxzc.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2128', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏理工学院', '10', '32', 'http://www.jstu.edu.cn/', '常州市');
INSERT INTO `university` VALUES ('2129', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淮海工学院', '10', '32', 'http://www.hhit.edu.cn/', '连云港');
INSERT INTO `university` VALUES ('2130', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '徐州工程学院', '10', '32', 'http://www.xzit.edu.cn/', '徐州市');
INSERT INTO `university` VALUES ('2131', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京特殊教育师范学院', '10', '32', 'http://www.njts.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2132', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南通理工学院', '10', '32', 'http://www.zlvc.edu.cn/', '南通市');
INSERT INTO `university` VALUES ('2133', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京森林警察学院', '10', '32', 'http://www.forestpolice.net/', '南京市');
INSERT INTO `university` VALUES ('2134', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东南大学成贤学院', '10', '32', 'http://cxxy.seu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2135', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泰州学院', '10', '32', 'http://www.tzu-edu.cn/', '泰州市');
INSERT INTO `university` VALUES ('2136', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '无锡太湖学院', '10', '32', 'http://www.thxy.org/', '无锡市');
INSERT INTO `university` VALUES ('2137', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '金陵科技学院', '10', '32', 'http://www.jit.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2138', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国矿业大学徐海学院', '10', '32', 'http://xhxy.cumt.edu.cn/', '徐州市');
INSERT INTO `university` VALUES ('2139', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京大学金陵学院', '10', '32', 'http://www.jlxy.nju.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2140', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京理工大学紫金学院', '10', '32', 'http://zj.njust.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2141', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京航空航天大学金城学院', '10', '32', 'http://jc.nuaa.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2142', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国传媒大学南广学院', '10', '32', 'http://www.cucn.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2143', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京理工大学泰州科技学院', '10', '32', 'http://www.nustti.edu.cn/', '泰州市');
INSERT INTO `university` VALUES ('2144', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京师范大学泰州学院', '10', '32', 'http://www.njnutz.com/', '泰州市');
INSERT INTO `university` VALUES ('2145', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京工业大学浦江学院', '10', '32', 'http://www.njpji.cn/', '南京市');
INSERT INTO `university` VALUES ('2146', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京师范大学中北学院', '10', '32', 'http://zbzs.njnu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2147', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京医科大学康达学院', '10', '32', 'http://kdc.njmu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2148', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京中医药大学翰林学院', '10', '32', 'http://www.hlxy.edu.cn/', '泰州市');
INSERT INTO `university` VALUES ('2149', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京信息工程大学滨江学院', '10', '32', 'http://www.bjxy.cn/', '南京市');
INSERT INTO `university` VALUES ('2150', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州大学文正学院', '10', '32', 'http://www.sdwz.cn/', '南京市');
INSERT INTO `university` VALUES ('2151', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州大学应用技术学院', '10', '32', 'http://tec.suda.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2152', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州科技大学天平学院', '10', '32', 'http://tpxy.usts.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2153', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏大学京江学院', '10', '32', 'http://jjxy.ujs.edu.cn/', '镇江市');
INSERT INTO `university` VALUES ('2154', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '扬州大学广陵学院', '10', '32', 'http://glxy.yzu.edu.cn/', '扬州市');
INSERT INTO `university` VALUES ('2155', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏师范大学科文学院', '10', '32', 'http://kwxy.xznu.edu.cn/', '徐州市');
INSERT INTO `university` VALUES ('2156', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京邮电大学通达学院', '10', '32', 'http://www.tdxy.com.cn/', '南京市');
INSERT INTO `university` VALUES ('2157', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京财经大学红山学院', '10', '32', 'http://hs.njue.edu.cn/', '镇江市');
INSERT INTO `university` VALUES ('2158', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏科技大学苏州理工学院', '10', '32', 'http://szlg.just.edu.cn/', '张家港市');
INSERT INTO `university` VALUES ('2159', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '常州大学怀德学院', '10', '32', 'http://hdc.cczu.edu.cn/', '靖江市');
INSERT INTO `university` VALUES ('2160', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南通大学杏林学院', '10', '32', 'http://xlxy.ntu.edu.cn/', '南通市');
INSERT INTO `university` VALUES ('2161', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京审计学院金审学院', '10', '32', 'http://jsxy.nau.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2162', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宿迁学院', '10', '32', 'http://www.sqc.edu.cn/', '宿迁市');
INSERT INTO `university` VALUES ('2163', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏第二师范学院', '10', '32', 'http://www.jssnu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2164', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西交利物浦大学', '10', '32', 'http://www.xjtlu.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2165', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆山杜克大学', '10', '32', 'http://dku.edu.cn/', '昆山市');
INSERT INTO `university` VALUES ('2166', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '盐城幼儿师范高等31学校', '10', '31', 'http://www.yfysz.com/', '盐城市');
INSERT INTO `university` VALUES ('2167', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州幼儿师范高等31学校', '10', '31', 'http://www.szys.net/', '苏州市');
INSERT INTO `university` VALUES ('2168', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '民办明达职业技术学院', '10', '31', 'http://www.mdut.cn/', '盐城市');
INSERT INTO `university` VALUES ('2169', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '无锡职业技术学院', '10', '31', 'http://www.wxit.edu.cn/', '无锡市');
INSERT INTO `university` VALUES ('2170', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏建筑职业技术学院', '10', '31', 'http://www.xzcat.edu.cn/', '徐州市');
INSERT INTO `university` VALUES ('2171', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京工业职业技术学院', '10', '31', 'http://www.niit.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2172', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏工程职业技术学院', '10', '31', 'http://www.nttec.edu.cn/', '南通市');
INSERT INTO `university` VALUES ('2173', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州工艺美术职业技术学院', '10', '31', 'http://www.sgmart.com/', '苏州市');
INSERT INTO `university` VALUES ('2174', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '连云港职业技术学院', '10', '31', 'http://www.lygtc.net.cn/', '连云港');
INSERT INTO `university` VALUES ('2175', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '镇江市高等31学校', '10', '31', 'http://www.zjc.edu.cn/', '镇江市');
INSERT INTO `university` VALUES ('2176', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南通职业大学', '10', '31', 'http://www.ntvc.edu.cn/', '南通市');
INSERT INTO `university` VALUES ('2177', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州职业大学', '10', '31', 'http://www.jssvc.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2178', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '沙洲职业工学院', '10', '31', 'http://www.szit.edu.cn/', '张家港');
INSERT INTO `university` VALUES ('2179', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '扬州市职业大学', '10', '31', 'http://www.yzpc.edu.cn/', '扬州市');
INSERT INTO `university` VALUES ('2180', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '连云港师范高等31学校', '10', '31', 'http://www.lygsf.cn/', '连云港');
INSERT INTO `university` VALUES ('2181', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏经贸职业技术学院', '10', '31', 'http://www.jseti.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2182', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '九州职业技术学院', '10', '31', 'http://www.jznu.com.cn/', '徐州市');
INSERT INTO `university` VALUES ('2183', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '硅湖职业技术学院', '10', '31', 'http://www.usl.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2184', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泰州职业技术学院', '10', '31', 'http://www.tzpc.edu.cn/', '泰州市');
INSERT INTO `university` VALUES ('2185', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '常州信息职业技术学院', '10', '31', 'http://www.ccit.js.cn/', '常州市');
INSERT INTO `university` VALUES ('2186', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏联合职业技术学院', '10', '31', 'http://www.juti.cn/', '南京市');
INSERT INTO `university` VALUES ('2187', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏海事职业技术学院', '10', '31', 'http://www.jmi.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2188', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '应天职业技术学院', '10', '31', 'http://www.ytc.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2189', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '无锡科技职业学院', '10', '31', 'http://www.wxstc.cn/', '无锡市');
INSERT INTO `university` VALUES ('2190', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏医药职业学院', '10', '31', 'http://www.jsycmc.com/', '盐城市');
INSERT INTO `university` VALUES ('2191', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '扬州环境资源职业技术学院', '10', '31', 'http://www.yzerc.org/', '扬州市');
INSERT INTO `university` VALUES ('2192', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南通科技职业学院', '10', '31', 'http://www.ntac.edu.cn/', '南通市');
INSERT INTO `university` VALUES ('2193', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州经贸职业技术学院', '10', '31', 'http://www.szjm.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2194', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州工业职业技术学院', '10', '31', 'http://www.siit.cn/', '苏州市');
INSERT INTO `university` VALUES ('2195', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州托普信息职业技术学院', '10', '31', 'http://www.szetop.com/', '苏州市');
INSERT INTO `university` VALUES ('2196', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州卫生职业技术学院', '10', '31', 'http://www.szmtc.com/', '苏州市');
INSERT INTO `university` VALUES ('2197', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '无锡商业职业技术学院', '10', '31', 'http://www.jscpu.com/', '无锡市');
INSERT INTO `university` VALUES ('2198', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南通航运职业技术学院', '10', '31', 'http://www.ntsc.edu.cn/', '南通市');
INSERT INTO `university` VALUES ('2199', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京交通职业技术学院', '10', '31', 'http://www.njci.cn/', '南京市');
INSERT INTO `university` VALUES ('2200', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淮安信息职业技术学院', '10', '31', 'http://www.hcit.edu.cn/', '淮安市');
INSERT INTO `university` VALUES ('2201', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏农牧科技职业学院', '10', '31', 'http://www.jsahvc.edu.cn/', '泰州市');
INSERT INTO `university` VALUES ('2202', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '常州纺织服装职业技术学院', '10', '31', 'http://www.cztgi.edu.cn/', '常州市');
INSERT INTO `university` VALUES ('2203', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州农业职业技术学院', '10', '31', 'http://www.szai.com/', '苏州市');
INSERT INTO `university` VALUES ('2204', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州工业园区职业技术学院', '10', '31', 'http://www.sipivt.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2205', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '太湖创意职业技术学院', '10', '31', 'http://www.thcyzy.org/', '无锡市');
INSERT INTO `university` VALUES ('2206', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '炎黄职业技术学院', '10', '31', 'http://www.yhust.edu.cn/', '淮安市');
INSERT INTO `university` VALUES ('2207', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京科技职业学院', '10', '31', 'http://www.njcc.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2208', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '正德职业技术学院', '10', '31', 'http://www.zdxy.cn/', '南京市');
INSERT INTO `university` VALUES ('2209', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '钟山职业技术学院', '10', '31', 'http://www.zscollege.com/', '南京市');
INSERT INTO `university` VALUES ('2210', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '无锡南洋职业技术学院', '10', '31', 'http://www.wsoc.edu.cn/', '无锡市');
INSERT INTO `university` VALUES ('2211', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江南影视艺术职业学院', '10', '31', 'http://www.jnys.cn/', '无锡市');
INSERT INTO `university` VALUES ('2212', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '金肯职业技术学院', '10', '31', 'http://www.jku.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2213', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '常州轻工职业技术学院', '10', '31', 'http://www.czili.edu.cn/', '常州市');
INSERT INTO `university` VALUES ('2214', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '常州工程职业技术学院', '10', '31', 'http://www.czie.net/', '常州市');
INSERT INTO `university` VALUES ('2215', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏农林职业技术学院', '10', '31', 'http://www.jsafc.net/', '句容市');
INSERT INTO `university` VALUES ('2216', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏食品药品职业技术学院', '10', '31', 'http://www.jsfsc.edu.cn/', '淮安市');
INSERT INTO `university` VALUES ('2217', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '建东职业技术学院', '10', '31', 'http://www.czjdu.com/', '常州市');
INSERT INTO `university` VALUES ('2218', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京铁道职业技术学院', '10', '31', 'http://www.njrts.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2219', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '徐州工业职业技术学院', '10', '31', 'http://www.xzcit.cn/', '徐州市');
INSERT INTO `university` VALUES ('2220', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏信息职业技术学院', '10', '31', 'http://www.jsit.edu.cn/', '无锡市');
INSERT INTO `university` VALUES ('2221', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宿迁职业技术学院', '10', '31', 'http://www.sqzyxy.com/', '宿迁市');
INSERT INTO `university` VALUES ('2222', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京信息职业技术学院', '10', '31', 'http://www.njcit.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2223', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江海职业技术学院', '10', '31', 'http://www.jhu.cn/', '扬州市');
INSERT INTO `university` VALUES ('2224', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '常州机电职业技术学院', '10', '31', 'http://www.czmec.cn/', '常州市');
INSERT INTO `university` VALUES ('2225', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江阴职业技术学院', '10', '31', 'http://www.jypc.org/', '江阴市');
INSERT INTO `university` VALUES ('2226', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '无锡城市职业技术学院', '10', '31', 'http://www.wxcsxy.com/', '无锡市');
INSERT INTO `university` VALUES ('2227', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '无锡工艺职业技术学院', '10', '31', 'http://www.wxgyxy.cn/', '无锡市');
INSERT INTO `university` VALUES ('2228', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '金山职业技术学院', '10', '31', 'http://www.jinshan-cn.com/', '镇江市');
INSERT INTO `university` VALUES ('2229', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州健雄职业技术学院', '10', '31', 'http://www.wjxvtc.cn/', '苏州市');
INSERT INTO `university` VALUES ('2230', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '盐城工业职业技术学院', '10', '31', 'http://www.yctei.cn/', '盐城市');
INSERT INTO `university` VALUES ('2231', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏财经职业技术学院', '10', '31', 'http://www.jscjxy.cn/', '淮安市');
INSERT INTO `university` VALUES ('2232', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '扬州工业职业技术学院', '10', '31', 'http://www.ypi.edu.cn/', '扬州市');
INSERT INTO `university` VALUES ('2233', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州百年职业学院', '10', '31', 'http://www.scc.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2234', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆山登云科技职业学院', '10', '31', 'http://www.dyc.edu.cn/', '昆山市');
INSERT INTO `university` VALUES ('2235', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京视觉艺术职业学院', '10', '31', 'http://www.niva.cn/', '南京市');
INSERT INTO `university` VALUES ('2236', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏城市职业学院', '10', '31', 'http://www.jscvc.cn/', '南京市');
INSERT INTO `university` VALUES ('2237', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京城市职业学院', '10', '31', 'http://www.ncc.com.cn/', '南京市');
INSERT INTO `university` VALUES ('2238', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京机电职业技术学院', '10', '31', 'http://www.njcmee.net/', '南京市');
INSERT INTO `university` VALUES ('2239', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州高博软件技术职业学院', '10', '31', 'http://www.gist.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2240', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京旅游职业学院', '10', '31', 'http://www.jltu.net/', '南京市');
INSERT INTO `university` VALUES ('2241', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏卫生健康职业学院', '10', '31', 'http://www.jssmu.edu.cn/', '南京市');
INSERT INTO `university` VALUES ('2242', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州信息职业技术学院', '10', '31', 'http://www.szitu.cn/', '吴江市');
INSERT INTO `university` VALUES ('2243', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宿迁泽达职业技术学院', '10', '31', 'http://www.zdct.cn/', '宿迁市');
INSERT INTO `university` VALUES ('2244', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '苏州工业园区服务外包职业学院', '10', '31', 'http://www.siso.edu.cn/', '苏州市');
INSERT INTO `university` VALUES ('2245', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '徐州幼儿师范高等31学校', '10', '31', 'http://www.xzys.xze.cn/', '徐州市');
INSERT INTO `university` VALUES ('2246', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '徐州生物工程职业技术学院', '10', '31', 'http://www.xzsw.net/', '徐州市');
INSERT INTO `university` VALUES ('2247', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏商贸职业学院', '10', '31', 'http://www.ntgx.edu.cn/', '南通市');
INSERT INTO `university` VALUES ('2248', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南通师范高等31学校', '10', '31', 'http://www.ntgs.com.cn/', '南通市');
INSERT INTO `university` VALUES ('2249', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '扬州中瑞酒店职业学院', '10', '31', 'http://www.yhiedu.com/', '扬州市');
INSERT INTO `university` VALUES ('2250', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏护理职业学院', '10', '31', 'http://www.jshywx.com/', '南通市');
INSERT INTO `university` VALUES ('2251', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏财会职业学院', '10', '31', 'http://www.lygcx.net/', '南通市');
INSERT INTO `university` VALUES ('2252', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏城乡建设职业学院', '10', '31', 'http://www.js-cj.com/', '常州市');
INSERT INTO `university` VALUES ('2253', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏航空职业技术学院', '10', '31', 'http://www.jatc.edu.cn/', '镇江市');
INSERT INTO `university` VALUES ('2254', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏安全技术职业学院', '10', '31', 'http://www.xzjdgz.com/', '徐州市');
INSERT INTO `university` VALUES ('2255', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江苏旅游职业学院', '10', '31', 'http://www.jsyzsx.com/', '扬州市');
INSERT INTO `university` VALUES ('2256', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆山登云科技职业学院', '10', '31', 'http://www.dyc.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2257', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南京视觉艺术职业学院', '10', '31', 'http://www.niva.cn/', '杭州市');
INSERT INTO `university` VALUES ('2258', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江大学', '11', '32', 'http://www.zju.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2259', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '杭州电子科技大学', '11', '32', 'http://www.hdu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2260', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江工业大学', '11', '32', 'http://www.zjut.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2261', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江理工大学', '11', '32', 'http://www.zstu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2262', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江海洋大学', '11', '32', 'http://www.zjou.net.cn/', '舟山市');
INSERT INTO `university` VALUES ('2263', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江农林大学', '11', '32', 'http://www.zafu.edu.cn/', '临安市');
INSERT INTO `university` VALUES ('2264', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '温州医科大学', '11', '32', 'http://www.wzmc.net/', '温州市');
INSERT INTO `university` VALUES ('2265', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江中医药大学', '11', '32', 'http://www.zjtcm.net/', '杭州市');
INSERT INTO `university` VALUES ('2266', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江师范大学', '11', '32', 'http://www.zjnu.edu.cn/', '金华市');
INSERT INTO `university` VALUES ('2267', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '杭州师范大学', '11', '32', 'http://www.hznu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2268', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖州师范学院', '11', '32', 'http://www.hutc.zj.cn/', '湖州市');
INSERT INTO `university` VALUES ('2269', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '绍兴文理学院', '11', '32', 'http://www.usx.edu.cn/', '绍兴市');
INSERT INTO `university` VALUES ('2270', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '台州学院', '11', '32', 'http://www.tzc.edu.cn/', '临海市');
INSERT INTO `university` VALUES ('2271', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '温州大学', '11', '32', 'http://www.wzu.edu.cn/', '温州市');
INSERT INTO `university` VALUES ('2272', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '丽水学院', '11', '32', 'http://www.lsu.edu.cn/', '丽水市');
INSERT INTO `university` VALUES ('2273', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江工商大学', '11', '32', 'http://www.hzic.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2274', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '嘉兴学院', '11', '32', 'http://www.zjxu.edu.cn/', '嘉兴市');
INSERT INTO `university` VALUES ('2275', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国美术学院', '11', '32', 'http://www.caa.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2276', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国计量大学', '11', '32', 'http://www.cjlu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2277', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '公安海警学院', '11', '32', 'http://www.hjgz.net/', '宁波市');
INSERT INTO `university` VALUES ('2278', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江万里学院', '11', '32', 'http://www.zjwu.net/', '宁波市');
INSERT INTO `university` VALUES ('2279', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江科技学院', '11', '32', 'http://www.zust.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2280', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁波工程学院', '11', '32', 'http://www.nbut.cn/', '宁波市');
INSERT INTO `university` VALUES ('2281', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江水利水电学院', '11', '32', 'http://www.zjweu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2282', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江财经大学', '11', '32', 'http://www.zufe.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2283', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江警察学院', '11', '32', 'http://www.zjjcxy.cn/', '杭州市');
INSERT INTO `university` VALUES ('2284', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '衢州学院', '11', '32', 'http://www.qzu.zj.cn/', '衢州市');
INSERT INTO `university` VALUES ('2285', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁波大学', '11', '32', 'http://www.nbu.edu.cn/', '宁波市');
INSERT INTO `university` VALUES ('2286', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江传媒学院', '11', '32', 'http://www.zjicm.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2287', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江树人学院', '11', '32', 'http://www.zjsru.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2288', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江越秀外国语学院', '11', '32', 'http://www.zyufl.edu.cn/', '绍兴市');
INSERT INTO `university` VALUES ('2289', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁波大红鹰学院', '11', '32', 'http://www.dhyedu.com/', '宁波市');
INSERT INTO `university` VALUES ('2290', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江大学城市学院', '11', '32', 'http://www.zucc.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2291', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江大学宁波理工学院', '11', '32', 'http://www.nit.net.cn/', '宁波市');
INSERT INTO `university` VALUES ('2292', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '杭州医学院', '11', '32', 'http://www.hmc.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2293', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江工业大学之江学院', '11', '32', 'http://www.zjc.zjut.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2294', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江师范大学行知学院', '11', '32', 'http://xz.zjnu.net.cn/', '金华市');
INSERT INTO `university` VALUES ('2295', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁波大学科学技术学院', '11', '32', 'http://www.ndkjxy.net.cn/', '宁波市');
INSERT INTO `university` VALUES ('2296', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '杭州电子科技大学信息工程学院', '11', '32', 'http://infoedu.hdu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2297', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江理工大学科技与艺术学院', '11', '32', 'http://www.ky.zstu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2298', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江海洋大学东海科学技术学院', '11', '32', 'http://dk.zjou.edu.cn/', '舟山市');
INSERT INTO `university` VALUES ('2299', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江农林大学暨阳学院', '11', '32', 'http://www.zjyc.edu.cn/', '诸暨市');
INSERT INTO `university` VALUES ('2300', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '温州医科大学仁济学院', '11', '32', 'http://rjxy.wzmc.edu.cn/', '温州市');
INSERT INTO `university` VALUES ('2301', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江中医药大学滨江学院', '11', '32', 'http://bjxy.zjtcm.net/', '杭州市');
INSERT INTO `university` VALUES ('2302', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '杭州师范大学钱江学院', '11', '32', 'http://qjxy.hznu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2303', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖州师范学院求真学院', '11', '32', 'http://qzxy.hutc.zj.cn/', '湖州市');
INSERT INTO `university` VALUES ('2304', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '绍兴文理学院元培学院', '11', '32', 'http://www.ypcol.com/', '绍兴市');
INSERT INTO `university` VALUES ('2305', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '温州大学瓯江学院', '11', '32', 'http://www.ojc.zj.cn/', '温州市');
INSERT INTO `university` VALUES ('2306', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江工商大学杭州商学院', '11', '32', 'http://hsy.zjgsu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2307', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '嘉兴学院南湖学院', '11', '32', 'http://nhxy.zjxu.edu.cn/', '嘉兴市');
INSERT INTO `university` VALUES ('2308', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国计量大学现代科技学院', '11', '32', 'http://xdkj.cjlu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2309', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江财经大学东方学院', '11', '32', 'http://www.zufedfc.edu.cn/', '海宁市');
INSERT INTO `university` VALUES ('2310', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '温州商学院', '11', '32', 'http://www.wzbc.edu.cn/', '温州市');
INSERT INTO `university` VALUES ('2311', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '同济大学浙江学院', '11', '32', 'http://www.tjzj.edu.cn/', '嘉兴市');
INSERT INTO `university` VALUES ('2312', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上海财经大学浙江学院', '11', '32', 'http://www.shufe-zj.edu.cn/', '金华市');
INSERT INTO `university` VALUES ('2313', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江外国语学院', '11', '32', 'http://www.zisu.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2314', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江音乐学院', '11', '32', 'http://www.zjcm.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2315', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁波诺丁汉大学', '11', '32', 'http://www.nottingham.edu.cn/', '宁波市');
INSERT INTO `university` VALUES ('2316', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '温州肯恩大学', '11', '32', 'http://www.wku.edu.cn/', '温州市');
INSERT INTO `university` VALUES ('2317', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁波职业技术学院', '11', '31', 'http://www.nbptweb.net/', '宁波市');
INSERT INTO `university` VALUES ('2318', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '温州职业技术学院', '11', '31', 'http://www.wzvtc.cn/', '温州市');
INSERT INTO `university` VALUES ('2319', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江交通职业技术学院', '11', '31', 'http://www.zjvtit.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2320', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '金华职业技术学院', '11', '31', 'http://www.jhc.cn/', '金华市');
INSERT INTO `university` VALUES ('2321', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁波城市职业技术学院', '11', '31', 'http://www.nbcc.cn/', '宁波市');
INSERT INTO `university` VALUES ('2322', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江同济科技职业学院', '11', '31', 'http://www.zjtongji.edu.cn/', '台州市');
INSERT INTO `university` VALUES ('2323', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江工商职业技术学院', '11', '31', 'http://www.zjbti.net.cn/', '宁波市');
INSERT INTO `university` VALUES ('2324', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '台州职业技术学院', '11', '31', 'http://www.tzvtc.com/', '台州市');
INSERT INTO `university` VALUES ('2325', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江工贸职业技术学院', '11', '31', 'http://www.zjitc.net/', '温州市');
INSERT INTO `university` VALUES ('2326', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江医药高等31学校', '11', '31', 'http://www.zjpc.net.cn/', '宁波市');
INSERT INTO `university` VALUES ('2327', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江机电职业技术学院', '11', '31', 'http://www.zime.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2328', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江建设职业技术学院', '11', '31', 'http://www.zjjy.net/', '杭州市');
INSERT INTO `university` VALUES ('2329', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江艺术职业学院', '11', '31', 'http://www.zj-art.com/', '杭州市');
INSERT INTO `university` VALUES ('2330', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江经贸职业技术学院', '11', '31', 'http://www.zjiet.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2331', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江商业职业技术学院', '11', '31', 'http://www.zjvcc.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2332', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江经济职业技术学院', '11', '31', 'http://www.zjtie.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2333', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江旅游职业学院', '11', '31', 'http://www.tczj.net/', '杭州市');
INSERT INTO `university` VALUES ('2334', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江育英职业技术学院', '11', '31', 'http://www.zjyyc.com/', '杭州市');
INSERT INTO `university` VALUES ('2335', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江警官职业学院', '11', '31', 'http://www.zjjy.com.cn/', '杭州市');
INSERT INTO `university` VALUES ('2336', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江金融职业学院', '11', '31', 'http://www.zfc.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2337', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江工业职业技术学院', '11', '31', 'http://www.zjipc.com/', '绍兴市');
INSERT INTO `university` VALUES ('2338', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '杭州职业技术学院', '11', '31', 'http://www.hzvtc.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2339', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '嘉兴职业技术学院', '11', '31', 'http://www.jxvtc.net/', '嘉兴市');
INSERT INTO `university` VALUES ('2340', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖州职业技术学院', '11', '31', 'http://www.hzvtc.net/', '湖州市');
INSERT INTO `university` VALUES ('2341', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '绍兴职业技术学院', '11', '31', 'http://www.sxvtc.com/', '绍兴市');
INSERT INTO `university` VALUES ('2342', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '衢州职业技术学院', '11', '31', 'http://www.qzct.net/', '衢州市');
INSERT INTO `university` VALUES ('2343', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '丽水职业技术学院', '11', '31', 'http://www.lszjy.com/', '丽水市');
INSERT INTO `university` VALUES ('2344', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江东方职业技术学院', '11', '31', 'http://www.zjdfc.com/', '温州市');
INSERT INTO `university` VALUES ('2345', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '义乌工商职业技术学院', '11', '31', 'http://www.ywu.cn/', '义乌市');
INSERT INTO `university` VALUES ('2346', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江纺织服装职业技术学院', '11', '31', 'http://www.zjff.net/', '宁波市');
INSERT INTO `university` VALUES ('2347', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '杭州科技职业技术学院', '11', '31', 'http://www.hzaspt.edu.cn/', '杭州市');
INSERT INTO `university` VALUES ('2348', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江长征职业技术学院', '11', '31', 'http://www.zjczxy.cn/', '杭州市');
INSERT INTO `university` VALUES ('2349', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '嘉兴南洋职业技术学院', '11', '31', 'http://www.jxnyc.net/', '嘉兴市');
INSERT INTO `university` VALUES ('2350', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江广厦建设职业技术学院', '11', '31', 'http://www.guangshaxy.com/', '东阳市');
INSERT INTO `university` VALUES ('2351', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '杭州万向职业技术学院', '11', '31', 'http://www.wxpoly.cn/', '杭州市');
INSERT INTO `university` VALUES ('2352', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江邮电职业技术学院', '11', '31', 'http://www.zptc.cn/', '绍兴市');
INSERT INTO `university` VALUES ('2353', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁波卫生职业技术学院', '11', '31', 'http://www.nchs.net.cn/', '宁波市');
INSERT INTO `university` VALUES ('2354', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '台州科技职业学院', '11', '31', 'http://www.tzvcst.net/', '台州市');
INSERT INTO `university` VALUES ('2355', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江国际海运职业技术学院', '11', '31', 'http://www.zimc.cn/', '舟山市');
INSERT INTO `university` VALUES ('2356', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江体育职业技术学院', '11', '31', 'http://www.zjcs.net.cn/', '杭州市');
INSERT INTO `university` VALUES ('2357', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '温州科技职业学院', '11', '31', 'http://www.wzvcst.cn/', '温州市');
INSERT INTO `university` VALUES ('2358', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江汽车职业技术学院', '11', '31', 'http://www.geelyedu.com/', '临海市');
INSERT INTO `university` VALUES ('2359', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江横店影视职业学院', '11', '31', 'http://www.zjhyxy.net/', '东阳市');
INSERT INTO `university` VALUES ('2360', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江农业商贸职业学院', '11', '31', 'http://www.znszy.com/', '绍兴市');
INSERT INTO `university` VALUES ('2361', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江特殊教育职业学院', '11', '31', 'http://www.zjtjxy.net/', '杭州市');
INSERT INTO `university` VALUES ('2362', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江安防职业技术学院', '11', '31', 'http://www.zjist.cn/', '温州市');
INSERT INTO `university` VALUES ('2363', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '浙江舟山群岛新区旅游与健康职业学院', '11', '31', 'http://www.zsthc.com/', '舟山市');
INSERT INTO `university` VALUES ('2364', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽大学', '12', '32', 'http://www.ahu.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2365', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国科学技术大学', '12', '32', 'http://www.ustc.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2366', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '合肥工业大学', '12', '32', 'http://www.hfut.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2367', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽工业大学', '12', '32', 'http://www.ahut.edu.cn/', '马鞍山');
INSERT INTO `university` VALUES ('2368', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽理工大学', '12', '32', 'http://www.aust.edu.cn/', '淮南市');
INSERT INTO `university` VALUES ('2369', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽工程大学', '12', '32', 'http://www.ahpu.edu.cn/', '芜湖市');
INSERT INTO `university` VALUES ('2370', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽农业大学', '12', '32', 'http://www.ahau.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2371', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽医科大学', '12', '32', 'http://www.ahmu.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2372', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '蚌埠医学院', '12', '32', 'http://www.bbmc.edu.cn/', '蚌埠市');
INSERT INTO `university` VALUES ('2373', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '皖南医学院', '12', '32', 'http://www.wnmc.edu.cn/', '芜湖市');
INSERT INTO `university` VALUES ('2374', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽中医药大学', '12', '32', 'http://www.ahtcm.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2375', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽师范大学', '12', '32', 'http://www.ahnu.edu.cn/', '芜湖市');
INSERT INTO `university` VALUES ('2376', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阜阳师范学院', '12', '32', 'http://www.fync.edu.cn/', '阜阳市');
INSERT INTO `university` VALUES ('2377', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安庆师范大学', '12', '32', 'http://www.aqnu.edu.cn/', '安庆市');
INSERT INTO `university` VALUES ('2378', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淮北师范大学', '12', '32', 'http://www.hbcnc.edu.cn/', '淮北市');
INSERT INTO `university` VALUES ('2379', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黄山学院', '12', '32', 'http://www.hsu.edu.cn/', '屯溪市');
INSERT INTO `university` VALUES ('2380', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '皖西学院', '12', '32', 'http://www.wxc.edu.cn/', '六安市');
INSERT INTO `university` VALUES ('2381', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '滁州学院', '12', '32', 'http://www.chzu.edu.cn/', '滁州市');
INSERT INTO `university` VALUES ('2382', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽财经大学', '12', '32', 'http://www.aufe.edu.cn/', '蚌埠市');
INSERT INTO `university` VALUES ('2383', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宿州学院', '12', '32', 'http://www.ahsztc.edu.cn/', '宿州市');
INSERT INTO `university` VALUES ('2384', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '巢湖学院', '12', '32', 'http://www.chtc.edu.cn/', '巢湖市');
INSERT INTO `university` VALUES ('2385', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淮南师范学院', '12', '32', 'http://www.hnnu.edu.cn/', '淮南市');
INSERT INTO `university` VALUES ('2386', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '铜陵学院', '12', '32', 'http://www.tlc.edu.cn/', '铜陵市');
INSERT INTO `university` VALUES ('2387', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽建筑大学', '12', '32', 'http://www.ahjzu.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2388', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽科技学院', '12', '32', 'http://www.ahstu.edu.cn/', '滁州市');
INSERT INTO `university` VALUES ('2389', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽三联学院', '12', '32', 'http://www.sanlian.net.cn/', '合肥市');
INSERT INTO `university` VALUES ('2390', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '合肥学院', '12', '32', 'http://www.hfuu.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2391', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '蚌埠学院', '12', '32', 'http://www.bbc.edu.cn/', '蚌埠市');
INSERT INTO `university` VALUES ('2392', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '池州学院', '12', '32', 'http://www.czu.edu.cn/', '贵池市');
INSERT INTO `university` VALUES ('2393', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽新华学院', '12', '32', 'http://www.axhu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2394', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽文达信息工程学院', '12', '32', 'http://www.wendaedu.com.cn/', '合肥市');
INSERT INTO `university` VALUES ('2395', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '亳州学院', '12', '32', 'http://www.bzuu.edu.cn/', '亳州市');
INSERT INTO `university` VALUES ('2396', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽外国语学院', '12', '32', 'http://www.aflc.com.cn/', '合肥市');
INSERT INTO `university` VALUES ('2397', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽财经大学商学院', '12', '32', 'http://acsxy.aufe.edu.cn/', '蚌埠市');
INSERT INTO `university` VALUES ('2398', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽大学江淮学院', '12', '32', 'http://www.ahujhc.cn/', '合肥市');
INSERT INTO `university` VALUES ('2399', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽信息工程学院', '12', '32', 'http://www.ahpumec.edu.cn', '芜湖市');
INSERT INTO `university` VALUES ('2400', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽工业大学工商学院', '12', '32', 'http://icc.ahut.edu.cn/', '马鞍山市');
INSERT INTO `university` VALUES ('2401', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽建筑大学城市建设学院', '12', '32', 'http://www.aiai.edu.cn/cjxy/', '合肥市');
INSERT INTO `university` VALUES ('2402', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽农业大学经济技术学院', '12', '32', 'http://jjjs.ahau.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2403', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽师范大学皖江学院', '12', '32', 'http://wjxy.ahnu.edu.cn/', '芜湖市');
INSERT INTO `university` VALUES ('2404', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽医科大学临床医学院', '12', '32', 'http://cc.ahmu.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2405', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阜阳师范学院信息工程学院', '12', '32', 'http://www.fync.edu.cn/cie/', '阜阳市');
INSERT INTO `university` VALUES ('2406', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淮北师范大学信息学院', '12', '32', 'http://www.hbcnc.edu.cn/Site/x', '淮北市');
INSERT INTO `university` VALUES ('2407', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '合肥师范学院', '12', '32', 'http://www.hfnu.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2408', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河海大学文天学院', '12', '32', 'http://wtian.hhu.edu.cn/', '马鞍山市');
INSERT INTO `university` VALUES ('2409', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽职业技术学院', '12', '31', 'http://www.ahzybys.com/', '合肥市');
INSERT INTO `university` VALUES ('2410', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淮北职业技术学院', '12', '31', 'http://www.hbvtc.net/', '淮北市');
INSERT INTO `university` VALUES ('2411', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '芜湖职业技术学院', '12', '31', 'http://www.whptu.ah.cn/', '芜湖市');
INSERT INTO `university` VALUES ('2412', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淮南联合大学', '12', '31', 'http://www.hnuu.edu.cn/', '淮南市');
INSERT INTO `university` VALUES ('2413', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽商贸职业技术学院', '12', '31', 'http://www.abc.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2414', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽水利水电职业技术学院', '12', '31', 'http://www.ahsdxy.ah.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2415', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阜阳职业技术学院', '12', '31', 'http://www.fyvtc.edu.cn/', '阜阳市');
INSERT INTO `university` VALUES ('2416', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '铜陵职业技术学院', '12', '31', 'http://www.tlpt.net.cn/', '铜陵市');
INSERT INTO `university` VALUES ('2417', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '民办万博科技职业学院', '12', '31', 'http://www.wbc.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2418', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽警官职业学院', '12', '31', 'http://www.ahjgxy.com/', '合肥市');
INSERT INTO `university` VALUES ('2419', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淮南职业技术学院', '12', '31', 'http://www.hnvtc.ah.edu.cn/', '淮南市');
INSERT INTO `university` VALUES ('2420', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽工业经济职业技术学院', '12', '31', 'http://www.ahiec.net/', '合肥市');
INSERT INTO `university` VALUES ('2421', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '合肥通用职业技术学院', '12', '31', 'http://www.hftyxy.com/', '合肥市');
INSERT INTO `university` VALUES ('2422', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽工贸职业技术学院', '12', '31', 'http://www.ahgmedu.cn/', '淮南市');
INSERT INTO `university` VALUES ('2423', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宿州职业技术学院', '12', '31', 'http://www.szzy.ah.cn/', '宿州市');
INSERT INTO `university` VALUES ('2424', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '六安职业技术学院', '12', '31', 'http://www.lvtc.edu.cn/', '六安市');
INSERT INTO `university` VALUES ('2425', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽电子信息职业技术学院', '12', '31', 'http://www.avceit.cn/', '蚌埠市');
INSERT INTO `university` VALUES ('2426', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '民办合肥经济技术职业学院', '12', '31', 'http://www.hfet.com/', '合肥市');
INSERT INTO `university` VALUES ('2427', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽交通职业技术学院', '12', '31', 'http://www.ahctc.com/', '合肥市');
INSERT INTO `university` VALUES ('2428', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽体育运动职业技术学院', '12', '31', 'http://www.ahty.net/', '合肥市');
INSERT INTO `university` VALUES ('2429', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽中医药高等31学校', '12', '31', 'http://www.ahzyygz.com/', '芜湖市');
INSERT INTO `university` VALUES ('2430', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽医学高等31学校', '12', '31', 'http://www.ahyz.cn/', '合肥市');
INSERT INTO `university` VALUES ('2431', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '合肥职业技术学院', '12', '31', 'http://www.chzy.org/', '巢湖市');
INSERT INTO `university` VALUES ('2432', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '滁州职业技术学院', '12', '31', 'http://www.czc.net.cn/', '滁州市');
INSERT INTO `university` VALUES ('2433', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '池州职业技术学院', '12', '31', 'http://www.czgz.cn/', '池州市');
INSERT INTO `university` VALUES ('2434', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宣城职业技术学院', '12', '31', 'http://www.xczy.net.cn/', '宣城市');
INSERT INTO `university` VALUES ('2435', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽广播影视职业技术学院', '12', '31', 'http://www.amtc.cn/', '合肥市');
INSERT INTO `university` VALUES ('2436', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '民办合肥滨湖职业技术学院', '12', '31', 'http://www.hfbhxy.com/', '合肥市');
INSERT INTO `university` VALUES ('2437', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽电气工程职业技术学院', '12', '31', 'http://www.aepu.com.cn/', '合肥市');
INSERT INTO `university` VALUES ('2438', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽冶金科技职业学院', '12', '31', 'http://www.ahyky.com/', '马鞍山');
INSERT INTO `university` VALUES ('2439', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽城市管理职业学院', '12', '31', 'http://www.cmoc.cn/', '合肥市');
INSERT INTO `university` VALUES ('2440', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽机电职业技术学院', '12', '31', 'http://www.ahcme.cn/', '芜湖市');
INSERT INTO `university` VALUES ('2441', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽工商职业学院', '12', '31', 'http://www.ahbvc.cn/', '合肥市');
INSERT INTO `university` VALUES ('2442', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽中澳科技职业学院', '12', '31', 'http://www.acac.cn/', '合肥市');
INSERT INTO `university` VALUES ('2443', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阜阳科技职业学院', '12', '31', 'http://www.fky.net.cn/', '阜阳市');
INSERT INTO `university` VALUES ('2444', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '亳州职业技术学院', '12', '31', 'http://www.bzvtc.com/', '亳州市');
INSERT INTO `university` VALUES ('2445', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽国防科技职业学院', '12', '31', 'http://www.ahgf.com.cn/', '六安市');
INSERT INTO `university` VALUES ('2446', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安庆职业技术学院', '12', '31', 'http://www.aqvtc.cn/', '安庆市');
INSERT INTO `university` VALUES ('2447', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽艺术职业学院', '12', '31', 'http://www.artah.cn/', '合肥市');
INSERT INTO `university` VALUES ('2448', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '马鞍山师范高等31学校', '12', '31', 'http://www.massz.cn/', '马鞍山');
INSERT INTO `university` VALUES ('2449', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽财贸职业学院', '12', '31', 'http://www.aftvc.com/', '合肥市');
INSERT INTO `university` VALUES ('2450', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽国际商务职业学院', '12', '31', 'http://www.ahiib.com/', '合肥市');
INSERT INTO `university` VALUES ('2451', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽公安职业学院', '12', '31', 'http://www.ahgaxy.com.cn/', '合肥市');
INSERT INTO `university` VALUES ('2452', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽林业职业技术学院', '12', '31', 'http://www.ahlyxy.cn/', '合肥市');
INSERT INTO `university` VALUES ('2453', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽审计职业学院', '12', '31', 'http://www.ahsjxy.cn/', '合肥市');
INSERT INTO `university` VALUES ('2454', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽新闻出版职业技术学院', '12', '31', 'http://www.ahcbxy.cn/', '合肥市');
INSERT INTO `university` VALUES ('2455', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽邮电职业技术学院', '12', '31', 'http://www.ahptc.cn/', '合肥市');
INSERT INTO `university` VALUES ('2456', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽工业职业技术学院', '12', '31', 'http://www.ahip.cn/', '铜陵市');
INSERT INTO `university` VALUES ('2457', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '民办合肥财经职业学院', '12', '31', 'http://www.hffe.cn/', '合肥市');
INSERT INTO `university` VALUES ('2458', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安庆医药高等31学校', '12', '31', 'http://www.aqyyz.cn/', '芜湖市');
INSERT INTO `university` VALUES ('2459', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽涉外经济职业学院', '12', '31', 'http://www.ahaec-edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2460', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽绿海商务职业学院', '12', '31', 'http://www.lhub.cn/', '合肥市');
INSERT INTO `university` VALUES ('2461', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '合肥共达职业技术学院', '12', '31', 'http://gdxy.hfut.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2462', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '蚌埠经济技术职业学院', '12', '31', 'http://www.bjy.ah.cn/', '蚌埠市');
INSERT INTO `university` VALUES ('2463', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '民办安徽旅游职业学院', '12', '31', 'http://www.ahlyedu.cn/', '颍上县');
INSERT INTO `university` VALUES ('2464', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '徽商职业学院', '12', '31', 'http://www.huishangedu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2465', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '马鞍山职业技术学院', '12', '31', 'http://www.mastc.edu.cn/', '马鞍山');
INSERT INTO `university` VALUES ('2466', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽现代信息工程职业学院', '12', '31', 'http://www.ahmodern.cn/', '寿县');
INSERT INTO `university` VALUES ('2467', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽矿业职业技术学院', '12', '31', 'http://www.anhky.com/', '淮北市');
INSERT INTO `university` VALUES ('2468', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '合肥信息技术职业学院', '12', '31', 'http://www.hfitu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2469', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '桐城师范高等31学校', '12', '31', 'http://www.tcsfgz.com/', '安庆市');
INSERT INTO `university` VALUES ('2470', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黄山职业技术学院', '12', '31', 'http://www.hszyxy.com/', '黄山市');
INSERT INTO `university` VALUES ('2471', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '滁州城市职业学院', '12', '31', 'http://www.czcvc.net/', '凤阳县');
INSERT INTO `university` VALUES ('2472', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽汽车职业技术学院', '12', '31', 'http://www.jacedu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2473', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '皖西卫生职业学院', '12', '31', 'http://www.wxwsxy.cn/', '六安市');
INSERT INTO `university` VALUES ('2474', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '合肥幼儿师范高等31学校', '12', '31', 'http://www.hfpec.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2475', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽长江职业学院', '12', '31', 'http://www.ahcjxy.com/', '合肥市');
INSERT INTO `university` VALUES ('2476', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽扬子职业技术学院', '12', '31', 'http://www.yangzixueyuan.com/', '芜湖市');
INSERT INTO `university` VALUES ('2477', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽黄梅戏艺术职业学院', '12', '31', 'http://www.ahmxx.cn/', '安庆市');
INSERT INTO `university` VALUES ('2478', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽粮食工程职业学院', '12', '31', 'http://www.ahlsxy.cn/', '合肥市');
INSERT INTO `university` VALUES ('2479', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安徽卫生健康职业学院', '12', '31', 'http://www.ahrkxy.com/', '池州市');
INSERT INTO `university` VALUES ('2480', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '合肥科技职业学院', '12', '31', 'http://www.hstu.edu.cn/', '合肥市');
INSERT INTO `university` VALUES ('2481', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '皖北卫生职业学院', '12', '31', 'http://www.wbwsxy.com/', '宿州市');
INSERT INTO `university` VALUES ('2482', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阜阳幼儿师范高等31学校', '12', '31', 'http://www.fysf.net/', '阜阳市');
INSERT INTO `university` VALUES ('2483', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门大学', '13', '32', 'http://www.xmu.edu.cn/', '厦门市');
INSERT INTO `university` VALUES ('2484', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华侨大学', '13', '32', 'http://www.hqu.edu.cn/', '泉州市');
INSERT INTO `university` VALUES ('2485', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福州大学', '13', '32', 'http://www.fzu.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2486', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建工程学院', '13', '32', 'http://www.fjut.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2487', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建农林大学', '13', '32', 'http://www.fafu.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2488', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '集美大学', '13', '32', 'http://www.jmu.edu.cn/', '厦门市');
INSERT INTO `university` VALUES ('2489', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建医科大学', '13', '32', 'http://www.fjmu.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2490', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建中医药大学', '13', '32', 'http://www.fjtcm.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2491', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建师范大学', '13', '32', 'http://www.fjnu.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2492', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '闽江学院', '13', '32', 'http://www.mju.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2493', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武夷学院', '13', '32', 'http://www.nptc.edu.cn/', '南平市');
INSERT INTO `university` VALUES ('2494', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁德师范学院', '13', '31', 'http://www.ndsz.net/', '宁德市');
INSERT INTO `university` VALUES ('2495', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州师范学院', '13', '32', 'http://www.qztc.edu.cn/', '泉州市');
INSERT INTO `university` VALUES ('2496', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '闽南师范大学', '13', '32', 'http://www.fjzs.edu.cn/', '漳州市');
INSERT INTO `university` VALUES ('2497', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门理工学院', '13', '32', 'http://www.xmut.edu.cn/', '厦门市');
INSERT INTO `university` VALUES ('2498', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三明学院', '13', '32', 'http://www.fjsmu.cn/', '三明市');
INSERT INTO `university` VALUES ('2499', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '龙岩学院', '13', '32', 'http://www.lyun.edu.cn/', '龙岩市');
INSERT INTO `university` VALUES ('2500', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建商学院', '13', '32', 'http://www.fjcc.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2501', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建警察学院', '13', '32', 'http://www.fjpsc.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2502', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '莆田学院', '13', '32', 'http://202.101.111.193/', '莆田市');
INSERT INTO `university` VALUES ('2503', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '仰恩大学', '13', '32', 'http://www.yeu.edu.cn/', '泉州市');
INSERT INTO `university` VALUES ('2504', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门医学院', '13', '32', 'http://www.xmmc.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2505', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门华厦学院', '13', '32', 'http://www.hxxy.edu.cn/', '厦门市');
INSERT INTO `university` VALUES ('2506', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '闽南理工学院', '13', '32', 'http://www.mnust.cn/', '泉州市');
INSERT INTO `university` VALUES ('2507', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建师范大学闽南科技学院', '13', '32', 'http://www.mnkjxy.com/', '泉州市');
INSERT INTO `university` VALUES ('2508', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建农林大学东方学院', '13', '32', 'http://www.fafuoc.com/', '福州市');
INSERT INTO `university` VALUES ('2509', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门工学院', '13', '32', 'http://www.xit.edu.cn/', '厦门市');
INSERT INTO `university` VALUES ('2510', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阳光学院', '13', '32', 'http://ygxy.fzu.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2511', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门大学嘉庚学院', '13', '32', 'http://jgxy.xmu.edu.cn/', '厦门市');
INSERT INTO `university` VALUES ('2512', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福州大学至诚学院', '13', '32', 'http://www.fdzcxy.com/', '福州市');
INSERT INTO `university` VALUES ('2513', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '集美大学诚毅学院', '13', '32', 'http://chengyi.jmu.edu.cn/', '厦门市');
INSERT INTO `university` VALUES ('2514', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建师范大学协和学院', '13', '32', 'http://cuc.fjnu.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2515', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福州外语外贸学院', '13', '32', 'http://www.fzfu.com/', '福州市');
INSERT INTO `university` VALUES ('2516', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建江夏学院', '13', '32', 'http://www.jxxyc.cn/', '福州市');
INSERT INTO `university` VALUES ('2517', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州信息工程学院', '13', '32', 'http://www.qziedu.cn/', '福州市');
INSERT INTO `university` VALUES ('2518', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福州理工学院', '13', '32', 'http://www.hxcollege.com/', '福州市');
INSERT INTO `university` VALUES ('2519', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建农林大学金山学院', '13', '32', 'http://www2.fjau.edu.cn/jsxy/', '福州市');
INSERT INTO `university` VALUES ('2520', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建船政交通职业学院', '13', '31', 'http://www.fjcpc.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2521', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '漳州职业技术学院', '13', '31', 'http://www.fjzzit.cn/', '漳州市');
INSERT INTO `university` VALUES ('2522', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '闽西职业技术学院', '13', '31', 'http://www.mxdx.net/', '龙岩市');
INSERT INTO `university` VALUES ('2523', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黎明职业大学', '13', '31', 'http://www.lmu.cn/', '泉州市');
INSERT INTO `university` VALUES ('2524', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建华南女子职业学院', '13', '31', 'http://www.hnwomen.com.cn/', '福州市');
INSERT INTO `university` VALUES ('2525', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福州职业技术学院', '13', '31', 'http://www.fvti.cn/', '福州市');
INSERT INTO `university` VALUES ('2526', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建林业职业技术学院', '13', '31', 'http://www.fjlzy.com/', '南平市');
INSERT INTO `university` VALUES ('2527', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建信息职业技术学院', '13', '31', 'http://www.mitu.cn/', '福州市');
INSERT INTO `university` VALUES ('2528', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建水利电力职业技术学院', '13', '31', 'http://www.fjsdxy.com/', '永安市');
INSERT INTO `university` VALUES ('2529', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建电力职业技术学院', '13', '31', 'http://www.fjdy.net/', '泉州市');
INSERT INTO `university` VALUES ('2530', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门海洋职业技术学院', '13', '31', 'http://www.xmoc.cn/', '厦门市');
INSERT INTO `university` VALUES ('2531', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建农业职业技术学院', '13', '31', 'http://www.fjny.com/', '福州市');
INSERT INTO `university` VALUES ('2532', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建卫生职业技术学院', '13', '31', 'http://www.fjwx.com.cn/', '福州市');
INSERT INTO `university` VALUES ('2533', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州医学高等31学校', '13', '31', 'http://www.qzygz.com/', '泉州市');
INSERT INTO `university` VALUES ('2534', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福州英华职业学院', '13', '31', 'http://www.fzacc.com/', '福州市');
INSERT INTO `university` VALUES ('2535', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州纺织服装职业学院', '13', '31', 'http://www.qzfzfz.com/', '泉州市');
INSERT INTO `university` VALUES ('2536', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州华光职业学院', '13', '31', 'http://www.hgu.cn/', '泉州市');
INSERT INTO `university` VALUES ('2537', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州理工职业学院', '13', '31', 'http://www.qzit.edu.cn/', '泉州市');
INSERT INTO `university` VALUES ('2538', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '闽北职业技术学院', '13', '31', 'http://www.mbu.cn/', '南平市');
INSERT INTO `university` VALUES ('2539', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福州黎明职业技术学院', '13', '31', 'http://www.fzlmxy.cn/', '福州市');
INSERT INTO `university` VALUES ('2540', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门演艺职业学院', '13', '31', 'http://www.xmyanyi.com/', '厦门市');
INSERT INTO `university` VALUES ('2541', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门华天涉外职业技术学院', '13', '31', 'http://www.xmht.com/', '厦门市');
INSERT INTO `university` VALUES ('2542', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福州科技职业技术学院', '13', '31', 'http://www.fzstc.com/', '福州市');
INSERT INTO `university` VALUES ('2543', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州经贸职业技术学院', '13', '31', 'http://www.qzjmc.cn/', '泉州市');
INSERT INTO `university` VALUES ('2544', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建对外经济贸易职业技术学院', '13', '31', 'http://www.fibec.cn/', '福州市');
INSERT INTO `university` VALUES ('2545', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湄洲湾职业技术学院', '13', '31', 'http://www.fjmzw.com/', '湄洲');
INSERT INTO `university` VALUES ('2546', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建生物工程职业技术学院', '13', '31', 'http://www.fjvcb.cn/', '福州市');
INSERT INTO `university` VALUES ('2547', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建艺术职业学院', '13', '31', 'http://www.fjyszyxy.com/', '福州市');
INSERT INTO `university` VALUES ('2548', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建幼儿师范高等31学校', '13', '31', 'http://www.fj61.net/', '福州市');
INSERT INTO `university` VALUES ('2549', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门城市职业学院', '13', '31', 'http://www.xmcu.cn/', '厦门市');
INSERT INTO `university` VALUES ('2550', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州工艺美术职业学院', '13', '31', 'http://www.dhcc.cc/', '泉州市');
INSERT INTO `university` VALUES ('2551', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三明医学科技职业学院', '13', '31', 'http://www.smvtc.com/', '三明市');
INSERT INTO `university` VALUES ('2552', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁德职业技术学院', '13', '31', 'http://www.ndgzy.com/', '宁德市');
INSERT INTO `university` VALUES ('2553', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福州软件职业技术学院', '13', '31', 'http://www.fzrjxy.com/', '福州市');
INSERT INTO `university` VALUES ('2554', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门兴才职业技术学院', '13', '31', 'http://www.xmxc.com/', '厦门市');
INSERT INTO `university` VALUES ('2555', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门软件职业技术学院', '13', '31', 'http://www.xmstc.cn/', '厦门市');
INSERT INTO `university` VALUES ('2556', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福建体育职业技术学院', '13', '31', 'http://www.fjipe.cn/', '福州市');
INSERT INTO `university` VALUES ('2557', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '漳州城市职业学院', '13', '31', 'http://www.zcvc.cn/', '漳州市');
INSERT INTO `university` VALUES ('2558', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门南洋职业学院', '13', '31', 'http://www.ny2000.com/', '厦门市');
INSERT INTO `university` VALUES ('2559', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门东海职业技术学院', '13', '31', 'http://www.xmdh.com/', '厦门市');
INSERT INTO `university` VALUES ('2560', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '漳州科技职业学院', '13', '31', 'http://www.tftc.edu.cn/', '漳州市');
INSERT INTO `university` VALUES ('2561', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '漳州理工职业学院', '13', '31', 'http://www.zzlg.org/', '漳州市');
INSERT INTO `university` VALUES ('2562', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武夷山职业学院', '13', '31', 'http://www.wyszyxy.com/', '武夷山市');
INSERT INTO `university` VALUES ('2563', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '漳州卫生职业学院', '13', '31', 'http://www.zzyhxy.com/', '漳州市');
INSERT INTO `university` VALUES ('2564', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州海洋职业学院', '13', '31', 'http://www.qzoiedu.com/', '泉州市');
INSERT INTO `university` VALUES ('2565', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州轻工职业学院', '13', '31', 'http://www.qzqgxy.com/', '泉州市');
INSERT INTO `university` VALUES ('2566', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '厦门安防科技职业学院', '13', '31', 'http://www.xmafkj.com/', '厦门市');
INSERT INTO `university` VALUES ('2567', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州幼儿师范高等31学校', '13', '31', 'http://www.qzygz.net/', '泉州市');
INSERT INTO `university` VALUES ('2568', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '闽江师范高等31学校', '13', '31', 'http://www.fzjyxy.com/', '福州市');
INSERT INTO `university` VALUES ('2569', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泉州工程职业技术学院', '13', '31', 'http://www.qzgcxy.com/', '泉州市');
INSERT INTO `university` VALUES ('2570', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '福州墨尔本理工职业学院', '13', '31', 'http://www.fmp.edu.cn/', '福州市');
INSERT INTO `university` VALUES ('2571', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌大学', '14', '32', 'http://www.ncu.edu.cn/', '南昌市');
INSERT INTO `university` VALUES ('2572', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华东交通大学', '14', '32', 'http://www.ecjtu.jx.cn/', '南昌市');
INSERT INTO `university` VALUES ('2573', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东华理工大学', '14', '32', 'http://www.ecit.edu.cn/', '抚州市');
INSERT INTO `university` VALUES ('2574', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌航空大学', '14', '32', 'http://www.nchu.edu.cn/', '南昌市');
INSERT INTO `university` VALUES ('2575', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西理工大学', '14', '32', 'http://www.jxust.cn/', '赣州市');
INSERT INTO `university` VALUES ('2576', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '景德镇陶瓷大学', '14', '32', 'http://www.jci.edu.cn/', '景德镇');
INSERT INTO `university` VALUES ('2577', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西农业大学', '14', '32', 'http://www.jxau.edu.cn/', '南昌市');
INSERT INTO `university` VALUES ('2578', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西中医药大学', '14', '32', 'http://www.jxtcmi.com/', '南昌市');
INSERT INTO `university` VALUES ('2579', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '赣南医学院', '14', '32', 'http://www.gmu.cn/', '赣州市');
INSERT INTO `university` VALUES ('2580', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西师范大学', '14', '32', 'http://www.jxnu.edu.cn/', '南昌市');
INSERT INTO `university` VALUES ('2581', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上饶师范学院', '14', '32', 'http://www.sru.jx.cn/', '上饶市');
INSERT INTO `university` VALUES ('2582', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宜春学院', '14', '32', 'http://www.ycu.jx.cn/', '宜春市');
INSERT INTO `university` VALUES ('2583', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '赣南师范大学', '14', '32', 'http://www.gnnu.cn/', '赣州市');
INSERT INTO `university` VALUES ('2584', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '井冈山大学', '14', '32', 'http://www.jgsu.edu.cn/', '吉安市');
INSERT INTO `university` VALUES ('2585', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西财经大学', '14', '32', 'http://www.jxufe.edu.cn/', '南昌市');
INSERT INTO `university` VALUES ('2586', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西科技学院', '14', '32', 'http://www.jxut.edu.cn/', '南昌市');
INSERT INTO `university` VALUES ('2587', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '景德镇学院', '14', '32', 'http://www.jdzu.jx.cn/', '景德镇');
INSERT INTO `university` VALUES ('2588', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '萍乡学院', '14', '32', 'http://www.pxc.jx.cn/', '萍乡市');
INSERT INTO `university` VALUES ('2589', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西科技师范大学', '14', '32', 'http://www.jxstnu.cn/', '南昌市');
INSERT INTO `university` VALUES ('2590', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌工程学院', '14', '32', 'http://www.nit.edu.cn/', '南昌市');
INSERT INTO `university` VALUES ('2591', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西警察学院', '14', '32', 'http://www.jxga.com/', '南昌市');
INSERT INTO `university` VALUES ('2592', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新余学院', '14', '32', 'http://www.xyc.edu.cn/', '新余市');
INSERT INTO `university` VALUES ('2593', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '九江学院', '14', '32', 'http://www.jju.edu.cn/', '九江市');
INSERT INTO `university` VALUES ('2594', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西工程学院', '14', '32', 'http://www.ygxy.com/', '新余市');
INSERT INTO `university` VALUES ('2595', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌理工学院', '14', '32', 'http://www.nclg.com.cn/', '南昌市');
INSERT INTO `university` VALUES ('2596', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西应用科技学院', '14', '32', 'http://www.jxcsedu.com/', '南昌市');
INSERT INTO `university` VALUES ('2597', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西服装学院', '14', '32', 'http://www.fuzhuang.com.cn/', '南昌市');
INSERT INTO `university` VALUES ('2598', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌工学院', '14', '32', 'http://www.ncgxy.com/', '南昌市');
INSERT INTO `university` VALUES ('2599', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌大学科学技术学院', '14', '32', 'http://www.ndkj.com.cn/', '南昌市');
INSERT INTO `university` VALUES ('2600', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌大学共青学院', '14', '32', 'http://www.ndgy.net/', '共青城');
INSERT INTO `university` VALUES ('2601', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华东交通大学理工学院', '14', '32', 'http://www.ecjtuit.com.cn/', '南昌市');
INSERT INTO `university` VALUES ('2602', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东华理工大学长江学院', '14', '32', 'http://ytc.ecit.edu.cn/', '抚州市');
INSERT INTO `university` VALUES ('2603', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌航空大学科技学院', '14', '32', 'http://www.nckjxy.cn/', '南昌市');
INSERT INTO `university` VALUES ('2604', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西理工大学应用科学学院', '14', '32', 'http://www.asc.jx.cn/', '赣州市');
INSERT INTO `university` VALUES ('2605', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '景德镇陶瓷大学科技艺术学院', '14', '32', 'http://www.jci-ky.cn/', '景德镇市');
INSERT INTO `university` VALUES ('2606', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西农业大学南昌商学院', '14', '32', 'http://www.ncsxy.com/', '南昌市');
INSERT INTO `university` VALUES ('2607', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西中医药大学科技学院', '14', '32', 'http://www.jxtcmstc.com/', '南昌市');
INSERT INTO `university` VALUES ('2608', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西师范大学科学技术学院', '14', '32', 'http://kjxy.jxnu.edu.cn/', '南昌市');
INSERT INTO `university` VALUES ('2609', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '赣南师范大学科技学院', '14', '32', 'http://www.gnsyky.cn/', '赣州市');
INSERT INTO `university` VALUES ('2610', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西科技师范大学理工学院', '14', '32', 'http://www.jxstnupi.cn/', '南昌市');
INSERT INTO `university` VALUES ('2611', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西财经大学现代经济管理学院', '14', '32', 'http://xjg.jxufe.cn/', '南昌市');
INSERT INTO `university` VALUES ('2612', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '豫章师范学院', '14', '32', 'http://www.nctc.com.cn/', '南昌市');
INSERT INTO `university` VALUES ('2613', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌师范学院', '14', '32', 'http:/www.jxie.edu.cn/', '南昌市');
INSERT INTO `university` VALUES ('2614', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上饶幼儿师范高等31学校', '14', '31', 'http://www.srsf.cn/', '上饶市');
INSERT INTO `university` VALUES ('2615', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '抚州幼儿师范高等31学校', '14', '31', 'http://www.fzpec.cn/', '抚州市');
INSERT INTO `university` VALUES ('2616', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西工业职业技术学院', '14', '31', 'http://www.jxgzy.cn/', '南昌市');
INSERT INTO `university` VALUES ('2617', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西医学高等31学校', '14', '31', 'http://www.sryx.cn/', '上饶市');
INSERT INTO `university` VALUES ('2618', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '九江职业大学', '14', '31', 'http://www.jjvu.jx.cn/', '九江市');
INSERT INTO `university` VALUES ('2619', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '九江职业技术学院', '14', '31', 'http://www.jvtc.jx.cn/', '九江市');
INSERT INTO `university` VALUES ('2620', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西司法警官职业学院', '14', '31', 'http://218.65.115.100/', '南昌市');
INSERT INTO `university` VALUES ('2621', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西陶瓷工艺美术职业技术学院', '14', '31', 'http://www.jxgymy.com/', '景德镇市');
INSERT INTO `university` VALUES ('2622', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西旅游商贸职业学院', '14', '31', 'http://www.jxlsxy.com/', '南昌市');
INSERT INTO `university` VALUES ('2623', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西电力职业技术学院', '14', '31', 'http://www.dlzy.jx.sgcc.com.cn', '南昌市');
INSERT INTO `university` VALUES ('2624', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西环境工程职业学院', '14', '31', 'http://www.jxhjxy.com/', '赣州市');
INSERT INTO `university` VALUES ('2625', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西艺术职业学院', '14', '31', 'http://www.jxysedu.com/', '南昌市');
INSERT INTO `university` VALUES ('2626', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鹰潭职业技术学院', '14', '31', 'http://www.jxytxy.com.cn/', '鹰潭市');
INSERT INTO `university` VALUES ('2627', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西信息应用职业技术学院', '14', '31', 'http://www.jxcia.com/', '南昌市');
INSERT INTO `university` VALUES ('2628', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西交通职业技术学院', '14', '31', 'http://www.jxjtxy.com/', '南昌市');
INSERT INTO `university` VALUES ('2629', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西财经职业学院', '14', '31', 'http://www.jxvc.jx.cn/', '九江市');
INSERT INTO `university` VALUES ('2630', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西应用工程职业学院', '14', '31', 'http://www.jxatei.net/', '萍乡市');
INSERT INTO `university` VALUES ('2631', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西现代职业技术学院', '14', '31', 'http://www.jxxdxy.com/', '南昌市');
INSERT INTO `university` VALUES ('2632', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西工业工程职业技术学院', '14', '31', 'http://www.jxgcxy.net/', '萍乡市');
INSERT INTO `university` VALUES ('2633', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西机电职业技术学院', '14', '31', 'http://www.jxjdxy.com/', '南昌市');
INSERT INTO `university` VALUES ('2634', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西科技职业学院', '14', '31', 'http://www.jxkeda.com/', '南昌市');
INSERT INTO `university` VALUES ('2635', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌职业学院', '14', '31', 'http://www.nczyxy.com/', '南昌市');
INSERT INTO `university` VALUES ('2636', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西外语外贸职业学院', '14', '31', 'http://www.jxcfs.com/', '南昌市');
INSERT INTO `university` VALUES ('2637', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西工业贸易职业技术学院', '14', '31', 'http://www.jxgmxy.com/', '南昌市');
INSERT INTO `university` VALUES ('2638', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宜春职业技术学院', '14', '31', 'http://www.ycvc.jx.cn/', '宜春市');
INSERT INTO `university` VALUES ('2639', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西应用技术职业学院', '14', '31', 'http://www.jxyyxy.com/', '赣州市');
INSERT INTO `university` VALUES ('2640', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西生物科技职业学院', '14', '31', 'http://www.jxswkj.com/', '南昌市');
INSERT INTO `university` VALUES ('2641', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西建设职业技术学院', '14', '31', 'http://www.jxjsxy.com/', '南昌市');
INSERT INTO `university` VALUES ('2642', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '抚州职业技术学院', '14', '31', 'http://www.fzjsxy.com/', '抚州市');
INSERT INTO `university` VALUES ('2643', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西中医药高等31学校', '14', '31', 'http://www.jxtcms.net/', '抚州市');
INSERT INTO `university` VALUES ('2644', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西先锋软件职业技术学院', '14', '31', 'http://www.aheadedu.com/', '南昌市');
INSERT INTO `university` VALUES ('2645', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西经济管理职业学院', '14', '31', 'http://www.jiea.cn/', '南昌市');
INSERT INTO `university` VALUES ('2646', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西制造职业技术学院', '14', '31', 'http://www.jxmtc.com/', '南昌市');
INSERT INTO `university` VALUES ('2647', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西工程职业学院', '14', '31', 'http://www.jxgcxy.com/', '南昌市');
INSERT INTO `university` VALUES ('2648', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西青年职业学院', '14', '31', 'http://www.jxqy.com.cn/', '南昌市');
INSERT INTO `university` VALUES ('2649', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '上饶职业技术学院', '14', '31', 'http://www.srzy.cn/', '上饶市');
INSERT INTO `university` VALUES ('2650', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西航空职业技术学院', '14', '31', 'http://www.jhxy.com.cn/', '南昌市');
INSERT INTO `university` VALUES ('2651', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西农业工程职业学院', '14', '31', 'http://www.jxaevc.gov.cn/', '樟树市');
INSERT INTO `university` VALUES ('2652', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '赣西科技职业学院', '14', '31', 'http://www.ganxidx.com/', '新余市');
INSERT INTO `university` VALUES ('2653', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西卫生职业学院', '14', '31', 'http://www.jxhlxy.com.cn/', '南昌市');
INSERT INTO `university` VALUES ('2654', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西新能源科技职业学院', '14', '31', 'http://www.tynxy.com/', '新余市');
INSERT INTO `university` VALUES ('2655', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西枫林涉外经贸职业学院', '14', '31', 'http://www.fenglin.org/', '九江市');
INSERT INTO `university` VALUES ('2656', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西泰豪动漫职业学院', '14', '31', 'http://www.tellhowedu.com/', '南昌市');
INSERT INTO `university` VALUES ('2657', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西冶金职业技术学院', '14', '31', 'http://www.jxyjxy.com/', '新余市');
INSERT INTO `university` VALUES ('2658', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西传媒职业学院', '14', '31', 'http://www.jxcb.com/', '南昌市');
INSERT INTO `university` VALUES ('2659', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西工商职业技术学院', '14', '31', 'http://www.jxgsxy.cn/', '南昌市');
INSERT INTO `university` VALUES ('2660', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '景德镇陶瓷职业技术学院', '14', '31', 'http://www.jcivt.com/', '景德镇市');
INSERT INTO `university` VALUES ('2661', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '共青科技职业学院', '14', '31', 'http://www.gqkj.com.cn/', '共青城');
INSERT INTO `university` VALUES ('2662', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '赣州师范高等31学校', '14', '31', 'http://www.gnjyxy.com/', '赣州市');
INSERT INTO `university` VALUES ('2663', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西水利职业学院', '14', '31', 'http://www.jxslsd.com/', '南昌市');
INSERT INTO `university` VALUES ('2664', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宜春幼儿师范高等31学校', '14', '31', 'http://www.gacycu.cn/', '宜春市');
INSERT INTO `university` VALUES ('2665', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉安职业技术学院', '14', '31', 'http://www.japt.com.cn/', '吉安市');
INSERT INTO `university` VALUES ('2666', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西洪州职业学院', '14', '31', 'http://www.jxhzzyxy.com/', '宜春市');
INSERT INTO `university` VALUES ('2667', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江西师范高等31学校', '14', '31', 'http://www.jxsfgz.com/', '鹰潭市');
INSERT INTO `university` VALUES ('2668', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南昌影视传播职业学院', '14', '31', 'http://www.ncyscb.com/', '南昌市');
INSERT INTO `university` VALUES ('2669', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东大学', '15', '32', 'http://www.sdu.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2670', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国海洋大学', '15', '32', 'http://www.ouc.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2671', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东科技大学', '15', '32', 'http://www.sdust.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2672', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国石油大学（华东）', '15', '32', 'http://www.upc.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2673', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛科技大学', '15', '32', 'http://www.qust.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2674', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '济南大学', '15', '32', 'http://www.ujn.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2675', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛理工大学', '15', '32', 'http://www.qtech.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2676', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东建筑大学', '15', '32', 'http://www.sdjzu.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2677', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '齐鲁工业大学', '15', '32', 'http://www.sdili.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2678', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东理工大学', '15', '32', 'http://www.sdut.edu.cn/', '淄博市');
INSERT INTO `university` VALUES ('2679', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东农业大学', '15', '32', 'http://www.sdau.edu.cn/', '泰安市');
INSERT INTO `university` VALUES ('2680', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛农业大学', '15', '32', 'http://www.qau.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2681', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '潍坊医学院', '15', '32', 'http://www.wfmc.edu.cn/', '潍坊市');
INSERT INTO `university` VALUES ('2682', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泰山医学院', '15', '32', 'http://www.tsmc.edu.cn/', '泰安市');
INSERT INTO `university` VALUES ('2683', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '滨州医学院', '15', '32', 'http://www.bzmc.edu.cn/', '滨州市');
INSERT INTO `university` VALUES ('2684', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东中医药大学', '15', '32', 'http://www.sdutcm.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2685', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '济宁医学院', '15', '32', 'http://www.jnmc.edu.cn/', '济宁市');
INSERT INTO `university` VALUES ('2686', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东师范大学', '15', '32', 'http://www.sdnu.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2687', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '曲阜师范大学', '15', '32', 'http://www.qfnu.edu.cn/', '曲阜市');
INSERT INTO `university` VALUES ('2688', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '聊城大学', '15', '32', 'http://www.lcu.edu.cn/', '聊城市');
INSERT INTO `university` VALUES ('2689', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '德州学院', '15', '32', 'http://www.dzu.edu.cn/', '德州市');
INSERT INTO `university` VALUES ('2690', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '滨州学院', '15', '32', 'http://www.bzu.edu.cn/', '滨州市');
INSERT INTO `university` VALUES ('2691', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鲁东大学', '15', '32', 'http://www.ldu.edu.cn/', '烟台市');
INSERT INTO `university` VALUES ('2692', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '临沂大学', '15', '32', 'http://www.lyu.edu.cn/', '临沂市');
INSERT INTO `university` VALUES ('2693', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泰山学院', '15', '32', 'http://www.tsu.edu.cn/', '泰安市');
INSERT INTO `university` VALUES ('2694', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '济宁学院', '15', '32', 'http://www.jnxy.edu.cn/', '济宁市');
INSERT INTO `university` VALUES ('2695', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '菏泽学院', '15', '32', 'http://www.hezeu.edu.cn/', '菏泽市');
INSERT INTO `university` VALUES ('2696', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东财经大学', '15', '32', 'http://www.sdufe.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2697', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东体育学院', '15', '32', 'http://www.sdpei.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2698', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东艺术学院', '15', '32', 'http://www.sdca.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2699', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '齐鲁医药学院', '15', '32', 'http://www.wjmu.net/', '淄博市');
INSERT INTO `university` VALUES ('2700', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛滨海学院', '15', '32', 'http://www.binhaicollege.com/', '青岛市');
INSERT INTO `university` VALUES ('2701', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '枣庄学院', '15', '32', 'http://www.uzz.edu.cn/', '枣庄市');
INSERT INTO `university` VALUES ('2702', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东工艺美术学院', '15', '32', 'http://www.sdada.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2703', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛大学', '15', '32', 'http://www.qdu.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2704', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '烟台大学', '15', '32', 'http://www.ytu.edu.cn/', '烟台市');
INSERT INTO `university` VALUES ('2705', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '潍坊学院', '15', '32', 'http://www.wfu.edu.cn/', '潍坊市');
INSERT INTO `university` VALUES ('2706', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东警察学院', '15', '32', 'http://www.sdpc.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2707', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东交通学院', '15', '32', 'http://www.sdjtu.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2708', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东工商学院', '15', '32', 'http://www.sdibt.edu.cn/', '烟台市');
INSERT INTO `university` VALUES ('2709', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东女子学院', '15', '32', 'http://www.sdwu.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2710', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '烟台南山学院', '15', '32', 'http://www.nanshan.edu.cn/', '烟台市');
INSERT INTO `university` VALUES ('2711', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '潍坊科技学院', '15', '32', 'http://www.wfkjxy.com.cn/', '潍坊市');
INSERT INTO `university` VALUES ('2712', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东英才学院', '15', '32', 'http://www.ycxy.com/', '济南市');
INSERT INTO `university` VALUES ('2713', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛恒星科技学院', '15', '32', 'http://www.hx.cn/', '青岛市');
INSERT INTO `university` VALUES ('2714', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛黄海学院', '15', '32', 'http://www.huanghaicollege.com', '青岛市');
INSERT INTO `university` VALUES ('2715', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东现代学院', '15', '32', 'http://www.uxd.com.cn/', '济南市');
INSERT INTO `university` VALUES ('2716', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东协和学院', '15', '32', 'http://www.sdxiehe.com/', '济南市');
INSERT INTO `university` VALUES ('2717', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '烟台大学文经学院', '15', '32', 'http://wenjing.ytu.edu.cn/', '烟台市');
INSERT INTO `university` VALUES ('2718', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '聊城大学东昌学院', '15', '32', 'http://www.lcudc.cn/', '聊城市');
INSERT INTO `university` VALUES ('2719', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛理工大学琴岛学院', '15', '32', 'http://www.qdc.cn/', '青岛市');
INSERT INTO `university` VALUES ('2720', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东师范大学历山学院', '15', '32', 'http://www.lsxy.sdnu.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2721', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东经济学院燕山学院', '15', '32', 'http://www.yanshanxueyuan.com/', '济南市');
INSERT INTO `university` VALUES ('2722', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国石油大学胜利学院', '15', '32', 'http://www.slcupc.edu.cn/', '东营市');
INSERT INTO `university` VALUES ('2723', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东科技大学泰山科技学院', '15', '32', 'http://tskjxy.sdust.edu.cn/', '泰安市');
INSERT INTO `university` VALUES ('2724', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东华宇工学院', '15', '32', 'http://www.sdhyxy.com/', '德州市');
INSERT INTO `university` VALUES ('2725', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛工学院', '15', '32', 'http://www.oucqdc.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2726', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛农业大学海都学院', '15', '32', 'http://www.hdxy.org/', '莱阳市');
INSERT INTO `university` VALUES ('2727', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '齐鲁理工学院', '15', '32', 'http://www.qlit.edu.cn/', '曲阜市');
INSERT INTO `university` VALUES ('2728', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东财经大学东方学院', '15', '32', 'http://www.sdor.cn/', '泰安市');
INSERT INTO `university` VALUES ('2729', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '济南大学泉城学院', '15', '32', 'http://jdqy.ujn.edu.cn/', '蓬莱市');
INSERT INTO `university` VALUES ('2730', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东政法学院', '15', '32', 'http://www.sdupsl.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2731', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '齐鲁师范学院', '15', '32', 'http://www.qlnu.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2732', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东青年政治学院', '15', '32', 'http://www.sdyu.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2733', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京电影学院现代创意媒体学院', '15', '32', 'http://www.bfamcmc.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2734', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东管理学院', '15', '32', 'http://www.sdmu.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2735', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东农业工程学院', '15', '32', 'http://www.sdngy.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2736', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东医学高等31学校', '15', '31', 'http://www.sdmc.net.cn/', '临沂市');
INSERT INTO `university` VALUES ('2737', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '菏泽医学31学校', '15', '31', 'http://www.hzmc.edu.cn/', '菏泽市');
INSERT INTO `university` VALUES ('2738', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东商业职业技术学院', '15', '31', 'http://www.sict.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2739', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东电力高等31学校', '15', '31', 'http://www.sepc.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2740', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '日照职业技术学院', '15', '31', 'http://www.rzpt.cn/', '日照市');
INSERT INTO `university` VALUES ('2741', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '曲阜远东职业技术学院', '15', '31', 'http://www.fareast-edu.net/', '曲阜市');
INSERT INTO `university` VALUES ('2742', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛职业技术学院', '15', '31', 'http://www.qtc.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2743', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '威海职业学院', '15', '31', 'http://www.weihaicollege.com/', '威海市');
INSERT INTO `university` VALUES ('2744', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东职业学院', '15', '31', 'http://www.sdp.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2745', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东劳动职业技术学院', '15', '31', 'http://www.sdlvtc.cn/', '济南市');
INSERT INTO `university` VALUES ('2746', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '莱芜职业技术学院', '15', '31', 'http://www.lwvc.net/', '莱芜市');
INSERT INTO `university` VALUES ('2747', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '济宁职业技术学院', '15', '31', 'http://www.jnzjxy.com.cn/', '济宁市');
INSERT INTO `university` VALUES ('2748', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '潍坊职业学院', '15', '31', 'http://www.sdwfvc.com/', '潍坊市');
INSERT INTO `university` VALUES ('2749', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '烟台职业学院', '15', '31', 'http://www.ytvc.com.cn/', '烟台市');
INSERT INTO `university` VALUES ('2750', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东营职业学院', '15', '31', 'http://www.dyxy.net/', '东营市');
INSERT INTO `university` VALUES ('2751', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '聊城职业技术学院', '15', '31', 'http://www.lctvu.sd.cn/', '聊城市');
INSERT INTO `university` VALUES ('2752', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '滨州职业学院', '15', '31', 'http://www.edubzvc.com.cn/', '滨州市');
INSERT INTO `university` VALUES ('2753', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东科技职业学院', '15', '31', 'http://www.sdzy.com.cn/', '潍坊市');
INSERT INTO `university` VALUES ('2754', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东服装职业学院', '15', '31', 'http://www.svict.com/', '泰安市');
INSERT INTO `university` VALUES ('2755', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '德州科技职业学院', '15', '31', 'http://www.sddzkj.com/', '德州市');
INSERT INTO `university` VALUES ('2756', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东力明科技职业学院', '15', '31', 'http://www.6789.com.cn', '济南市');
INSERT INTO `university` VALUES ('2757', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东圣翰财贸职业学院', '15', '31', 'http://www.suu.com.cn/', '济南市');
INSERT INTO `university` VALUES ('2758', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东水利职业学院', '15', '31', 'http://www.sdwrp.com/', '日照市');
INSERT INTO `university` VALUES ('2759', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东畜牧兽医职业学院', '15', '31', 'http://www.sdmyxy.cn/', '潍坊市');
INSERT INTO `university` VALUES ('2760', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛飞洋职业技术学院', '15', '31', 'http://www.feiyangcollege.com/', '青岛市');
INSERT INTO `university` VALUES ('2761', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东营科技职业学院', '15', '31', 'http://www.dycollege.net/', '东营市');
INSERT INTO `university` VALUES ('2762', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东交通职业学院', '15', '31', 'http://www.sdjtzyxy.com/', '潍坊市');
INSERT INTO `university` VALUES ('2763', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淄博职业学院', '15', '31', 'http://www.zbvc.cn/', '淄博市');
INSERT INTO `university` VALUES ('2764', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东外贸职业学院', '15', '31', 'http://www.sdftcollege.com.cn/', '青岛市');
INSERT INTO `university` VALUES ('2765', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛酒店管理职业技术学院', '15', '31', 'http://www.qchm.edu.cn/', '青岛市');
INSERT INTO `university` VALUES ('2766', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东信息职业技术学院', '15', '31', 'http://www.sdcit.cn/', '潍坊市');
INSERT INTO `university` VALUES ('2767', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛港湾职业技术学院', '15', '31', 'http://www.qdgw.com/', '青岛市');
INSERT INTO `university` VALUES ('2768', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东胜利职业学院', '15', '31', 'http://www.sdslvc.com/', '东营市');
INSERT INTO `university` VALUES ('2769', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东经贸职业学院', '15', '31', 'http://www.sdecu.com/', '潍坊市');
INSERT INTO `university` VALUES ('2770', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东工业职业学院', '15', '31', 'http://www.sdivc.net.cn/', '淄博市');
INSERT INTO `university` VALUES ('2771', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东化工职业学院', '15', '31', 'http://www.qledu.net/', '淄博市');
INSERT INTO `university` VALUES ('2772', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛求实职业技术学院', '15', '31', 'http://www.qdqs.com/', '青岛市');
INSERT INTO `university` VALUES ('2773', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '济南职业学院', '15', '31', 'http://www.jnvc.edu.cn/', '济南市');
INSERT INTO `university` VALUES ('2774', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '烟台工程职业技术学院', '15', '31', 'http://www.ytetc.edu.cn/', '烟台市');
INSERT INTO `university` VALUES ('2775', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东凯文科技职业学院', '15', '31', 'http://www.sdkevin.cn/', '济南市');
INSERT INTO `university` VALUES ('2776', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东外国语职业学院', '15', '31', 'http://www.sdflc.com/', '日照市');
INSERT INTO `university` VALUES ('2777', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '潍坊工商职业学院', '15', '31', 'http://www.wfgsxy.com/', '潍坊市');
INSERT INTO `university` VALUES ('2778', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '德州职业技术学院', '15', '31', 'http://www.dzvtc.cn/', '德州市');
INSERT INTO `university` VALUES ('2779', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '枣庄科技职业学院', '15', '31', 'http://www.zzkjxy.com/', '枣庄市');
INSERT INTO `university` VALUES ('2780', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '淄博师范高等31学校', '15', '31', 'http://www.zbnc.edu.cn/', '淄博市');
INSERT INTO `university` VALUES ('2781', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东中医药高等31学校', '15', '31', 'http://www.stcmchina.com/', '烟台市');
INSERT INTO `university` VALUES ('2782', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '济南工程职业技术学院', '15', '31', 'http://www.jngcxy.com/', '济南市');
INSERT INTO `university` VALUES ('2783', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东电子职业技术学院', '15', '31', 'http://www.sdcet.cn/', '济南市');
INSERT INTO `university` VALUES ('2784', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东旅游职业学院', '15', '31', 'http://www.sdts.net.cn/', '济南市');
INSERT INTO `university` VALUES ('2785', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东铝业职业学院', '15', '31', 'http://www.shlzhj.net/', '淄博市');
INSERT INTO `university` VALUES ('2786', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东杏林科技职业学院', '15', '31', 'http://www.sdxlxy.com/', '济南市');
INSERT INTO `university` VALUES ('2787', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泰山职业技术学院', '15', '31', 'http://www.mtotc.com.cn/', '泰安市');
INSERT INTO `university` VALUES ('2788', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东外事翻译职业学院', '15', '31', 'http://www.wsfy.cn/', '威海市');
INSERT INTO `university` VALUES ('2789', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东药品食品职业学院', '15', '31', 'http://www.sddfvc.cn/', '威海市');
INSERT INTO `university` VALUES ('2790', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东商务职业学院', '15', '31', 'http://www.sdbi.com.cn/', '烟台市');
INSERT INTO `university` VALUES ('2791', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东轻工职业学院', '15', '31', 'http://www.silkedu.com/', '淄博市');
INSERT INTO `university` VALUES ('2792', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东城市建设职业学院', '15', '31', 'http://www.sdcjxy.com/', '济南市');
INSERT INTO `university` VALUES ('2793', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '烟台汽车工程职业学院', '15', '31', 'http://www.ytqcvc.cn/', '烟台市');
INSERT INTO `university` VALUES ('2794', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东司法警官职业学院', '15', '31', 'http://www.sdsfjy.com/', '济南市');
INSERT INTO `university` VALUES ('2795', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '菏泽家政职业学院', '15', '31', 'http://www.hzjzxy.com/', '单县');
INSERT INTO `university` VALUES ('2796', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东传媒职业学院', '15', '31', 'http://www.sdcmc.net/', '济南市');
INSERT INTO `university` VALUES ('2797', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '临沂职业学院', '15', '31', 'http://www.lyzyxy.com/', '临沂市');
INSERT INTO `university` VALUES ('2798', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '枣庄职业学院', '15', '31', 'http://www.sdzzvc.cn/', '枣庄市');
INSERT INTO `university` VALUES ('2799', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东理工职业学院', '15', '31', 'http://www.sdlgzy.com/', '济宁市');
INSERT INTO `university` VALUES ('2800', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东文化产业职业学院', '15', '31', 'http://www.sdcivc.com/', '烟台市');
INSERT INTO `university` VALUES ('2801', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青岛远洋船员职业学院', '15', '31', 'http://www.coscoqmc.com.cn/', '青岛市');
INSERT INTO `university` VALUES ('2802', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '济南幼儿师范高等31学校', '15', '31', 'http://www.jnygz.com/', '济南市');
INSERT INTO `university` VALUES ('2803', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '济南护理职业学院', '15', '31', 'http://www.sdjnwx.com/', '济南市');
INSERT INTO `university` VALUES ('2804', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泰山护理职业学院', '15', '31', 'http://www.tawx.com.cn/', '泰安市');
INSERT INTO `university` VALUES ('2805', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东海事职业学院', '15', '31', 'http://www.sdm.net.cn/', '潍坊市');
INSERT INTO `university` VALUES ('2806', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '潍坊护理职业学院', '15', '31', 'http://www.wfhlxy.com/', '潍坊市');
INSERT INTO `university` VALUES ('2807', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '潍坊工程职业学院', '15', '31', 'http://www.wfec.cn/', '潍坊市');
INSERT INTO `university` VALUES ('2808', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '菏泽职业学院', '15', '31', 'http://www.hzzyxy.com/', '菏泽市');
INSERT INTO `university` VALUES ('2809', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东艺术设计职业学院', '15', '31', 'http://www.sysy.com.cn/', '济南市');
INSERT INTO `university` VALUES ('2810', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '威海海洋职业学院', '15', '31', 'http://www.whovc.cn/', '威海市');
INSERT INTO `university` VALUES ('2811', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '山东特殊教育职业学院', '15', '31', 'http://www.sdse.cn/', '济南市');
INSERT INTO `university` VALUES ('2812', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '烟台黄金职业学院', '15', '31', 'http://www.ytgoldcollege.com/', '烟台市');
INSERT INTO `university` VALUES ('2813', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '日照航海工程职业学院', '15', '31', 'http://www.rzmevc.com/', '日照市');
INSERT INTO `university` VALUES ('2814', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华北水利水电大学', '16', '32', 'http://www.ncwu.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2815', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州大学', '16', '32', 'http://www.zzu.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2816', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南理工大学', '16', '32', 'http://www.hpu.edu.cn/', '焦作市');
INSERT INTO `university` VALUES ('2817', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州轻工业学院', '16', '32', 'http://www.zzili.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2818', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南工业大学', '16', '32', 'http://www.haut.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2819', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南科技大学', '16', '32', 'http://www.haust.edu.cn/', '洛阳市');
INSERT INTO `university` VALUES ('2820', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中原工学院', '16', '32', 'http://www.zzti.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2821', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南农业大学', '16', '32', 'http://www.henau.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2822', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南科技学院', '16', '32', 'http://www.hist.edu.cn/', '新乡市');
INSERT INTO `university` VALUES ('2823', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南牧业经济学院', '16', '32', 'http://www.habc.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2824', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南中医药大学', '16', '32', 'http://www.hactcm.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2825', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新乡医学院', '16', '32', 'http://www.xxmu.edu.cn/', '新乡市');
INSERT INTO `university` VALUES ('2826', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南大学', '16', '32', 'http://www.henu.edu.cn/', '开封市');
INSERT INTO `university` VALUES ('2827', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南师范大学', '16', '32', 'http://www.henannu.edu.cn/', '新乡市');
INSERT INTO `university` VALUES ('2828', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '信阳师范学院', '16', '32', 'http://www.xytc.edu.cn/', '信阳市');
INSERT INTO `university` VALUES ('2829', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '周口师范学院', '16', '32', 'http://www.zknu.edu.cn/', '周口市');
INSERT INTO `university` VALUES ('2830', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安阳师范学院', '16', '32', 'http://www.aynu.edu.cn/', '安阳市');
INSERT INTO `university` VALUES ('2831', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '许昌学院', '16', '32', 'http://www.xcu.edu.cn/', '许昌市');
INSERT INTO `university` VALUES ('2832', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南阳师范学院', '16', '32', 'http://www.nynu.edu.cn/', '南阳市');
INSERT INTO `university` VALUES ('2833', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '洛阳师范学院', '16', '32', 'http://www.lynu.cn/', '洛阳市');
INSERT INTO `university` VALUES ('2834', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '商丘师范学院', '16', '32', 'http://www.sqnc.edu.cn/', '商丘市');
INSERT INTO `university` VALUES ('2835', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南财经政法大学', '16', '32', 'http://www.huel.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2836', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州航空工业管理学院', '16', '32', 'http://www.zzia.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2837', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黄淮学院', '16', '32', 'http://www.huanghuai.edu.cn/', '驻马店');
INSERT INTO `university` VALUES ('2838', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '平顶山学院', '16', '32', 'http://www.pdsu.edu.cn/', '平顶山');
INSERT INTO `university` VALUES ('2839', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州工程技术学院', '16', '32', 'http://www.zhzhu.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2840', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '洛阳理工学院', '16', '32', 'http://www.lit.edu.cn/', '洛阳市');
INSERT INTO `university` VALUES ('2841', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新乡学院', '16', '32', 'http://www.xxu.edu.cn/', '新乡市');
INSERT INTO `university` VALUES ('2842', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '信阳农林学院', '16', '32', 'http://www.xyac.edu.cn/', '信阳市');
INSERT INTO `university` VALUES ('2843', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南工学院', '16', '32', 'http://www.hneeu.edu.cn/', '新乡市');
INSERT INTO `university` VALUES ('2844', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安阳工学院', '16', '32', 'http://www.ayit.edu.cn/', '安阳市');
INSERT INTO `university` VALUES ('2845', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南工程学院', '16', '32', 'http://www.haue.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2846', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南财政金融学院', '16', '32', 'http://www.hacz.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2847', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南阳理工学院', '16', '32', 'http://www.nyist.net/', '南阳市');
INSERT INTO `university` VALUES ('2848', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南城建学院', '16', '32', 'http://www.hncj.edu.cn/', '平顶山');
INSERT INTO `university` VALUES ('2849', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南警察学院', '16', '32', 'http://www.hngazk.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2850', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黄河科技学院', '16', '32', 'http://www.hhstu.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2851', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '铁道警察学院', '16', '32', 'http://www.rpc.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2852', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州科技学院', '16', '32', 'http://www.zzist.net/', '郑州市');
INSERT INTO `university` VALUES ('2853', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州工业应用技术学院', '16', '32', 'http://www.zzhxxy.com/', '郑州市');
INSERT INTO `university` VALUES ('2854', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州师范学院', '16', '32', 'http://www.zztc.com.cn/', '郑州市');
INSERT INTO `university` VALUES ('2855', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州财经学院', '16', '32', 'http://www.zzjm.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2856', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黄河交通学院', '16', '32', 'http://www.zjtu.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2857', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '商丘工学院', '16', '32', 'http://www.sstvc.com/', '商丘市');
INSERT INTO `university` VALUES ('2858', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南大学民生学院', '16', '32', 'http://minsheng.henu.edu.cn/', '开封市');
INSERT INTO `university` VALUES ('2859', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南师范大学新联学院', '16', '32', 'http://www.xlxy.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2860', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '信阳学院', '16', '32', 'http://www.hrxy.edu.cn/', '信阳市');
INSERT INTO `university` VALUES ('2861', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安阳学院', '16', '32', 'http://www.ayrwedu.cn/', '安阳市');
INSERT INTO `university` VALUES ('2862', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新乡医学院三全学院', '16', '32', 'http://www.sqmc.edu.cn/', '新乡市');
INSERT INTO `university` VALUES ('2863', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南科技学院新科学院', '16', '32', 'http://xkxy.hist.edu.cn/', '新乡市');
INSERT INTO `university` VALUES ('2864', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州工商学院', '16', '32', 'http://www.wanfang.edu.cn/', '焦作市');
INSERT INTO `university` VALUES ('2865', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中原工学院信息商务学院', '16', '32', 'http://www.zcib.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2866', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '商丘学院', '16', '32', 'http://www.hnhyedu.net/', '商丘市');
INSERT INTO `university` VALUES ('2867', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州成功财经学院', '16', '32', 'http://www.chenggong.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2868', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州升达经贸管理学院', '16', '32', 'http://www.shengda.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2869', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南职业技术学院', '16', '31', 'http://www.hnzj.ha.cn/', '郑州市');
INSERT INTO `university` VALUES ('2870', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '漯河职业技术学院', '16', '31', 'http://www.lhvtc.edu.cn/', '漯河市');
INSERT INTO `university` VALUES ('2871', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三门峡职业技术学院', '16', '31', 'http://www.smxpt.cn/', '三门峡');
INSERT INTO `university` VALUES ('2872', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州铁路职业技术学院', '16', '31', 'http://www.zzrvtc.com/', '郑州市');
INSERT INTO `university` VALUES ('2873', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '开封大学', '16', '31', 'http://www.kfu.cn/', '开封市');
INSERT INTO `university` VALUES ('2874', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '焦作大学', '16', '31', 'http://www.jzu.edu.cn/', '焦作市');
INSERT INTO `university` VALUES ('2875', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '濮阳职业技术学院', '16', '31', 'http://www.pyvtc.cn/', '濮阳市');
INSERT INTO `university` VALUES ('2876', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州电力高等31学校', '16', '31', 'http://www.zepc.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2877', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黄河水利职业技术学院', '16', '31', 'http://www.yrcti.edu.cn/', '开封市');
INSERT INTO `university` VALUES ('2878', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '许昌职业技术学院', '16', '31', 'http://www.xcitc.edu.cn/', '许昌市');
INSERT INTO `university` VALUES ('2879', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南工业和信息化职业学院', '16', '31', 'http://www.hnets.edu.cn/', '焦作市');
INSERT INTO `university` VALUES ('2880', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南水利与环境职业学院', '16', '31', 'http://www.zzslxx.com/', '郑州市');
INSERT INTO `university` VALUES ('2881', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '商丘职业技术学院', '16', '31', 'http://www.sqzy.com.cn/', '商丘市');
INSERT INTO `university` VALUES ('2882', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '平顶山工业职业技术学院', '16', '31', 'http://www.pzxy.edu.cn/', '平顶山');
INSERT INTO `university` VALUES ('2883', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '周口职业技术学院', '16', '31', 'http://www.zkvtc.edu.cn/', '周口市');
INSERT INTO `university` VALUES ('2884', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '济源职业技术学院', '16', '31', 'http://www.jyvtc.com/', '济源市');
INSERT INTO `university` VALUES ('2885', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南司法警官职业学院', '16', '31', 'http://www.hnsfjg.com/', '郑州市');
INSERT INTO `university` VALUES ('2886', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鹤壁职业技术学院', '16', '31', 'http://www.hbzy.edu.cn/', '鹤壁市');
INSERT INTO `university` VALUES ('2887', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南工业职业技术学院', '16', '31', 'http://www.hnpi.cn/', '南阳市');
INSERT INTO `university` VALUES ('2888', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州澍青医学高等31学校', '16', '31', 'http://www.shuqing.org/', '郑州市');
INSERT INTO `university` VALUES ('2889', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '焦作师范高等31学校', '16', '31', 'http://www.jzsz.cn/', '焦作市');
INSERT INTO `university` VALUES ('2890', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南检察职业学院', '16', '31', 'http://www.hnjc.org/', '郑州市');
INSERT INTO `university` VALUES ('2891', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南质量工程职业学院', '16', '31', 'http://www.zlxy.cn/', '平顶山');
INSERT INTO `university` VALUES ('2892', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州信息科技职业学院', '16', '31', 'http://www.techcollege.cn/', '郑州市');
INSERT INTO `university` VALUES ('2893', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '漯河医学高等31学校', '16', '31', 'http://www.lhmc.edu.cn/', '漯河市');
INSERT INTO `university` VALUES ('2894', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南阳医学高等31学校', '16', '31', 'http://www.nymc.cn/', '南阳市');
INSERT INTO `university` VALUES ('2895', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '商丘医学高等31学校', '16', '31', 'http://www.sqyx.edu.cn/', '商丘市');
INSERT INTO `university` VALUES ('2896', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州电子信息职业技术学院', '16', '31', 'http://www.zyfb.com/', '郑州市');
INSERT INTO `university` VALUES ('2897', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '信阳职业技术学院', '16', '31', 'http://www.xyvtc.edu.cn/', '信阳市');
INSERT INTO `university` VALUES ('2898', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '嵩山少林武术职业学院', '16', '31', 'http://www.shaolinkungfu.edu.c', '登封市');
INSERT INTO `university` VALUES ('2899', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州工业安全职业学院', '16', '31', 'http://www.zazy.cn/', '郑州市');
INSERT INTO `university` VALUES ('2900', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '永城职业学院', '16', '31', 'http://www.yczyxy.com/', '永城市');
INSERT INTO `university` VALUES ('2901', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南经贸职业学院', '16', '31', 'http://www.hnjmxy.cn/', '郑州市');
INSERT INTO `university` VALUES ('2902', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南交通职业技术学院', '16', '31', 'http://www.hncc.net/', '郑州市');
INSERT INTO `university` VALUES ('2903', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南农业职业学院', '16', '31', 'http://www.hnac.com.cn/', '郑州市');
INSERT INTO `university` VALUES ('2904', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州旅游职业学院', '16', '31', 'http://www.zztrc.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2905', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州职业技术学院', '16', '31', 'http://www.zzyedu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2906', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南信息统计职业学院', '16', '31', 'http://www.hnisvc.com/', '郑州市');
INSERT INTO `university` VALUES ('2907', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南林业职业学院', '16', '31', 'http://www.hnfjc.cn/', '洛阳市');
INSERT INTO `university` VALUES ('2908', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南工业贸易职业学院', '16', '31', 'http://www.hngm.cn/', '郑州市');
INSERT INTO `university` VALUES ('2909', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州电力职业技术学院', '16', '31', 'http://www.zzdl.com/', '郑州市');
INSERT INTO `university` VALUES ('2910', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '周口科技职业学院', '16', '31', 'http://www.zkkjxy.net/', '周口市');
INSERT INTO `university` VALUES ('2911', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南建筑职业技术学院', '16', '31', 'http://www.hnjs.com.cn/', '郑州市');
INSERT INTO `university` VALUES ('2912', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '漯河食品职业学院', '16', '31', 'http://www.lsgx.com.cn/', '漯河市');
INSERT INTO `university` VALUES ('2913', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州城市职业学院', '16', '31', 'http://www.brenda.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2914', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安阳职业技术学院', '16', '31', 'http://jsxy.anyangedu.com/', '安阳市');
INSERT INTO `university` VALUES ('2915', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新乡职业技术学院', '16', '31', 'http://www.xxvtc.com/', '新乡市');
INSERT INTO `university` VALUES ('2916', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '驻马店职业技术学院', '16', '31', 'http://www.zmdvtc.cn/', '驻马店市');
INSERT INTO `university` VALUES ('2917', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '焦作工贸职业学院', '16', '31', 'http://www.jzgmxy.com/', '焦作市');
INSERT INTO `university` VALUES ('2918', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '许昌陶瓷职业学院', '16', '31', 'http://www.xccvc.com/', '许昌市');
INSERT INTO `university` VALUES ('2919', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州理工职业学院', '16', '31', 'http://www.zzlgxy.net/', '郑州市');
INSERT INTO `university` VALUES ('2920', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州信息工程职业学院', '16', '31', 'http://www.zxxyedu.com/', '郑州市');
INSERT INTO `university` VALUES ('2921', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长垣烹饪职业技术学院', '16', '31', 'http://www.cyprxy.com/', '长垣市');
INSERT INTO `university` VALUES ('2922', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '开封文化艺术职业学院', '16', '31', 'http://www.kfvcca.com/', '开封市');
INSERT INTO `university` VALUES ('2923', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南应用技术职业学院', '16', '31', 'http://www.haict.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2924', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南艺术职业学院', '16', '31', 'http://www.hnyszyxy.net/', '郑州市');
INSERT INTO `university` VALUES ('2925', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南机电职业学院', '16', '31', 'http://www.hnjd.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2926', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南护理职业学院', '16', '31', 'http://www.hncedu.cn/', '安阳市');
INSERT INTO `university` VALUES ('2927', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '许昌电气职业学院', '16', '31', 'http://www.xcevc.cn/', '许昌市');
INSERT INTO `university` VALUES ('2928', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '信阳涉外职业技术学院', '16', '31', 'http://www.xyswxy.com/', '信阳市');
INSERT INTO `university` VALUES ('2929', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鹤壁汽车工程职业学院', '16', '31', 'http://www.hbqcxy.com/', '鹤壁市');
INSERT INTO `university` VALUES ('2930', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南阳职业学院', '16', '31', 'http://www.nyzyxy.com/', '南阳市');
INSERT INTO `university` VALUES ('2931', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州商贸旅游职业学院', '16', '31', 'http://www.zzvcct.com/', '郑州市');
INSERT INTO `university` VALUES ('2932', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南推拿职业学院', '16', '31', 'http://www.hnzjschool.com/', '洛阳市');
INSERT INTO `university` VALUES ('2933', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '洛阳职业技术学院', '16', '31', 'http://www.lyvtc.net/', '洛阳市');
INSERT INTO `university` VALUES ('2934', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州幼儿师范高等31学校', '16', '31', 'http://www.zyedu.org/', '郑州市');
INSERT INTO `university` VALUES ('2935', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安阳幼儿师范高等31学校', '16', '31', 'http://www.ayys.net.cn/', '郑州市');
INSERT INTO `university` VALUES ('2936', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州黄河护理职业学院', '16', '31', 'http://www.zyrnvc.com/', '郑州市');
INSERT INTO `university` VALUES ('2937', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南医学高等31学校', '16', '31', 'http://www.hamc.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2938', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郑州财税金融职业学院', '16', '31', 'http://www.zzcsjr.edu.cn/', '郑州市');
INSERT INTO `university` VALUES ('2939', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南阳农业职业学院', '16', '31', 'http://www.nyac.cn/nzy/', '南阳市');
INSERT INTO `university` VALUES ('2940', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '洛阳科技职业学院', '16', '31', 'http://www.lykjxy.cn/', '洛阳市');
INSERT INTO `university` VALUES ('2941', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '濮阳医学高等31学校', '16', '31', 'http://www.pyyzh.cn/', '濮阳市');
INSERT INTO `university` VALUES ('2942', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三门峡社会管理职业学院', '16', '31', 'http://www.smxcsa.com/', '三门峡市');
INSERT INTO `university` VALUES ('2943', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南轻工职业学院', '16', '31', 'http://www.pili-zz.net/', '郑州市');
INSERT INTO `university` VALUES ('2944', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河南测绘职业学院', '16', '31', 'http://www.zzcx.net/', '郑州市');
INSERT INTO `university` VALUES ('2945', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉大学', '17', '32', 'http://www.whu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2946', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华中科技大学', '17', '32', 'http://www.hust.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2947', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉科技大学', '17', '32', 'http://www.wust.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2948', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长江大学', '17', '32', 'http://www.yangtzeu.edu.cn/', '荆州市');
INSERT INTO `university` VALUES ('2949', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉工程大学', '17', '32', 'http://www.wit.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2950', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国地质大学（武汉）', '17', '32', 'http://www.cug.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2951', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉纺织大学', '17', '32', 'http://www.wtu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2952', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉轻工大学', '17', '32', 'http://www.whpu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2953', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉理工大学', '17', '32', 'http://www.whut.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2954', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北工业大学', '17', '32', 'http://www.hbut.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2955', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华中农业大学', '17', '32', 'http://www.hzau.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2956', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北中医药大学', '17', '32', 'http://www.hbtcm.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2957', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华中师范大学', '17', '32', 'http://www.ccnu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2958', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北大学', '17', '32', 'http://www.hubu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2959', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北师范大学', '17', '32', 'http://www.hbnu.edu.cn/', '黄石市');
INSERT INTO `university` VALUES ('2960', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黄冈师范学院', '17', '32', 'http://www.hgnu.cn/', '黄冈市');
INSERT INTO `university` VALUES ('2961', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北民族学院', '17', '32', 'http://www.hbmy.edu.cn/', '恩施市');
INSERT INTO `university` VALUES ('2962', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '汉江师范学院', '17', '32', 'http://www.hjnu.edu.cn/', '十堰市');
INSERT INTO `university` VALUES ('2963', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北文理学院', '17', '32', 'http://www.hbuas.edu.cn/', '襄樊市');
INSERT INTO `university` VALUES ('2964', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中南财经政法大学', '17', '32', 'http://www.zuel.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2965', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉体育学院', '17', '32', 'http://www.whsu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2966', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北美术学院', '17', '32', 'http://www.hifa.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2967', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中南民族大学', '17', '32', 'http://www.scuec.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2968', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北汽车工业学院', '17', '32', 'http://www.huat.edu.cn/', '十堰市');
INSERT INTO `university` VALUES ('2969', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北工程学院', '17', '32', 'http://www.hbeu.cn/', '孝感市');
INSERT INTO `university` VALUES ('2970', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北理工学院', '17', '32', 'http://www.hbpu.edu.cn/', '黄石市');
INSERT INTO `university` VALUES ('2971', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北科技学院', '17', '32', 'http://www.hbust.com.cn/', '咸宁市');
INSERT INTO `university` VALUES ('2972', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北医药学院', '17', '32', 'http://www.hbmu.edu.cn/', '十堰市');
INSERT INTO `university` VALUES ('2973', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江汉大学', '17', '32', 'http://www.jhun.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2974', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三峡大学', '17', '32', 'http://www.ctgu.edu.cn/', '宜昌市');
INSERT INTO `university` VALUES ('2975', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北警官学院', '17', '32', 'http://www.hbpa.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2976', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '荆楚理工学院', '17', '32', 'http://www.jcut.edu.cn/', '荆门市');
INSERT INTO `university` VALUES ('2977', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉音乐学院', '17', '32', 'http://www.whcm.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2978', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北经济学院', '17', '32', 'http://www.hbue.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2979', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉商学院', '17', '32', 'http://www.wbu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2980', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉东湖学院', '17', '32', 'http://www.wdu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2981', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '汉口学院', '17', '32', 'http://www.hkxy.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2982', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武昌首义学院', '17', '32', 'http://www.wsyu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2983', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武昌理工学院', '17', '32', 'http://www.wut.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2984', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉生物工程学院', '17', '32', 'http://www.whsw.cn/', '武汉市');
INSERT INTO `university` VALUES ('2985', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉晴川学院', '17', '32', 'http://luojia-whu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2986', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北大学知行学院', '17', '32', 'http://www.hudazx.cn/', '武汉市');
INSERT INTO `university` VALUES ('2987', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉科技大学城市学院', '17', '32', 'http://www.city.wust.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2988', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三峡大学科技学院', '17', '32', 'http://210.42.35.198/', '宜昌市');
INSERT INTO `university` VALUES ('2989', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江汉大学文理学院', '17', '32', 'http://www.jdwlxy.cn/', '武汉市');
INSERT INTO `university` VALUES ('2990', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北工业大学工程技术学院', '17', '32', 'http://gcxy.hbut.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2991', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉工程大学邮电与信息工程学院', '17', '32', 'http://www.witpt.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2992', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉纺织大学外经贸学院', '17', '32', 'http://cibe.wtu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2993', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武昌工学院', '17', '32', 'http://www.wuit.cn/', '武汉市');
INSERT INTO `university` VALUES ('2994', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉工商学院', '17', '32', 'http://www.wtbu.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('2995', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长江大学工程技术学院', '17', '32', 'http://gcxy.yangtzeu.edu.cn/', '荆州市');
INSERT INTO `university` VALUES ('2996', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长江大学文理学院', '17', '32', 'http://wlxy.yangtzeu.edu.cn/', '荆州市');
INSERT INTO `university` VALUES ('2997', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北商贸学院', '17', '32', 'http://www.hugsmxy.com/', '武汉市');
INSERT INTO `university` VALUES ('2998', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北汽车工业学院科技学院', '17', '32', 'http://kjxy.huat.edu.cn/', '十堰市');
INSERT INTO `university` VALUES ('2999', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北医药学院药护学院', '17', '32', 'http://yhgj.hbmu.edu.cn/struct', '十堰市');
INSERT INTO `university` VALUES ('3000', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北民族学院科技学院', '17', '32', 'http://www.hbmykjxy.cn/', '恩施市');
INSERT INTO `university` VALUES ('3001', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北经济学院法商学院', '17', '32', 'http://fsxy.hbue.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('3002', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉体育学院体育科技学院', '17', '32', 'http://www.kjxy.wipe.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('3003', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北师范大学文理学院', '17', '32', 'http://www.wlxy.hbnu.edu.cn/', '黄石市');
INSERT INTO `university` VALUES ('3004', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北文理学院理工学院', '17', '32', 'http://www.xfu.edu.cn/zsweb/lg', '襄阳市');
INSERT INTO `university` VALUES ('3005', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北工程学院新技术学院', '17', '32', 'http://www.hbeutc.cn/', '孝感市');
INSERT INTO `university` VALUES ('3006', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '文华学院', '17', '32', 'http://www.hustwenhua.net/', '武汉市');
INSERT INTO `university` VALUES ('3007', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉学院', '17', '32', 'http://www.whxy.net/', '武汉市');
INSERT INTO `university` VALUES ('3008', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉工程科技学院', '17', '32', 'http://www.wuhues.com/', '武汉市');
INSERT INTO `university` VALUES ('3009', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉华夏理工学院', '17', '32', 'http://www.1957.cn/', '武汉市');
INSERT INTO `university` VALUES ('3010', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉传媒学院', '17', '32', 'http://www.whmc.edu.cn/', '湖北省');
INSERT INTO `university` VALUES ('3011', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉设计工程学院', '17', '32', 'http://www.hnctxy.com/', '武汉市');
INSERT INTO `university` VALUES ('3012', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北第二师范学院', '17', '32', 'http://www.hue.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('3013', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉职业技术学院', '17', '31', 'http://www.wtc.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('3014', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黄冈职业技术学院', '17', '31', 'http://www.hbhgzy.com.cn/', '黄冈市');
INSERT INTO `university` VALUES ('3015', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长江职业学院', '17', '31', 'http://www.cjxy.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('3016', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '荆州理工职业学院', '17', '31', 'http://www.ssdx.net/', '沙市市');
INSERT INTO `university` VALUES ('3017', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北工业职业技术学院', '17', '31', 'http://www.syzy.com.cn/', '十堰市');
INSERT INTO `university` VALUES ('3018', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鄂州职业大学', '17', '31', 'http://www.ezu.net.cn/', '鄂州市');
INSERT INTO `university` VALUES ('3019', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉城市职业学院', '17', '31', 'http://www.whcvc.cn/', '武汉市');
INSERT INTO `university` VALUES ('3020', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北职业技术学院', '17', '31', 'http://www.hbvtc.edu.cn/', '孝感市');
INSERT INTO `university` VALUES ('3021', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉船舶职业技术学院', '17', '31', 'http://www.wspc.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('3022', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '恩施职业技术学院', '17', '31', 'http://www.eszy.edu.cn/', '恩施市');
INSERT INTO `university` VALUES ('3023', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '襄阳职业技术学院', '17', '31', 'http://www.hbxftc.com/', '襄阳市');
INSERT INTO `university` VALUES ('3024', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉工贸职业学院', '17', '31', 'http://www.whgmxy.com/', '武汉市');
INSERT INTO `university` VALUES ('3025', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '荆州职业技术学院', '17', '31', 'http://www.jzit.net.cn/', '荆州市');
INSERT INTO `university` VALUES ('3026', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉工程职业技术学院', '17', '31', 'http://www.wgxy.net/', '武汉市');
INSERT INTO `university` VALUES ('3027', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '仙桃职业学院', '17', '31', 'http://www.hbxtzy.com/', '仙桃市');
INSERT INTO `university` VALUES ('3028', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北轻工职业技术学院', '17', '31', 'http://www.hbliti.com/', '武汉市');
INSERT INTO `university` VALUES ('3029', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北交通职业技术学院', '17', '31', 'http://www.hbctc.edu.cn/', '武汉市');
INSERT INTO `university` VALUES ('3030', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北中医药高等31学校', '17', '31', 'http://www.hbzyy.org/', '荆州市');
INSERT INTO `university` VALUES ('3031', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉航海职业技术学院', '17', '31', 'http://www.whhhxy.com/', '武汉市');
INSERT INTO `university` VALUES ('3032', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉铁路职业技术学院', '17', '31', 'http://www.wru.com.cn/', '武汉市');
INSERT INTO `university` VALUES ('3033', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉软件工程职业学院', '17', '31', 'http://www.whvcse.com/', '武汉市');
INSERT INTO `university` VALUES ('3034', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北三峡职业技术学院', '17', '31', 'http://www.tgc.edu.cn/', '宜昌市');
INSERT INTO `university` VALUES ('3035', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '随州职业技术学院', '17', '31', 'http://www.szvtc.cn/', '随州市');
INSERT INTO `university` VALUES ('3036', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉电力职业技术学院', '17', '31', 'http://www.whetc.com/', '武汉市');
INSERT INTO `university` VALUES ('3037', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北水利水电职业技术学院', '17', '31', 'http://www.hbsy.cn/', '武汉市');
INSERT INTO `university` VALUES ('3038', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北城市建设职业技术学院', '17', '31', 'http://www.ucvc.net/', '武汉市');
INSERT INTO `university` VALUES ('3039', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉警官职业学院', '17', '31', 'http://www.whpa.cn/', '武汉市');
INSERT INTO `university` VALUES ('3040', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北生物科技职业学院', '17', '31', 'http://www.hbswkj.com/', '武汉市');
INSERT INTO `university` VALUES ('3041', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北开放职业学院', '17', '31', 'http://www.hbou.cn/', '武汉市');
INSERT INTO `university` VALUES ('3042', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉科技职业学院', '17', '31', 'http://www.whkjzy.cn/', '武汉市');
INSERT INTO `university` VALUES ('3043', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉外语外事职业学院', '17', '31', 'http://www.whflfa.com/', '武汉市');
INSERT INTO `university` VALUES ('3044', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉信息传播职业技术学院', '17', '31', 'http://www.whinfo.cn/', '武汉市');
INSERT INTO `university` VALUES ('3045', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武昌职业学院', '17', '31', 'http://www.wlci.com.cn/', '武汉市');
INSERT INTO `university` VALUES ('3046', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉商贸职业学院', '17', '31', 'http://www.whicu.com/', '武汉市');
INSERT INTO `university` VALUES ('3047', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北艺术职业学院', '17', '31', 'http://www.artschool.com.cn/', '武汉市');
INSERT INTO `university` VALUES ('3048', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉交通职业学院', '17', '31', 'http://www.whjzy.net/', '武汉市');
INSERT INTO `university` VALUES ('3049', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '咸宁职业技术学院', '17', '31', 'http://www.xnec.cn/', '咸宁市');
INSERT INTO `university` VALUES ('3050', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长江工程职业技术学院', '17', '31', 'http://www.cj-edu.com.cn/', '武汉市');
INSERT INTO `university` VALUES ('3051', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江汉艺术职业学院', '17', '31', 'http://www.hbjhart.com/', '潜江市');
INSERT INTO `university` VALUES ('3052', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉工业职业技术学院', '17', '31', 'http://www.wgy.cn/', '武汉市');
INSERT INTO `university` VALUES ('3053', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉民政职业学院', '17', '31', 'http://www.whmzxy.cn/', '武汉市');
INSERT INTO `university` VALUES ('3054', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '鄂东职业技术学院', '17', '31', 'http://www.edzy.cn/', '黄冈市');
INSERT INTO `university` VALUES ('3055', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北财税职业学院', '17', '31', 'http://www.hbftc.org.cn/', '武汉市');
INSERT INTO `university` VALUES ('3056', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黄冈科技职业学院', '17', '31', 'http://www.hbhgkj.com/', '黄冈市');
INSERT INTO `university` VALUES ('3057', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北国土资源职业学院', '17', '31', 'http://www.hbgt.com.cn/', '武汉市');
INSERT INTO `university` VALUES ('3058', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北生态工程职业技术学院', '17', '31', 'http://www.hb-green.com/', '武汉市');
INSERT INTO `university` VALUES ('3059', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三峡电力职业学院', '17', '31', 'http://www.tgcep.cn/', '宜昌市');
INSERT INTO `university` VALUES ('3060', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北科技职业学院', '17', '31', 'http://www.hubstc.com.cn/', '武汉市');
INSERT INTO `university` VALUES ('3061', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北青年职业学院', '17', '31', 'http://www.hbqnxy.com/', '武汉市');
INSERT INTO `university` VALUES ('3062', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北工程职业学院', '17', '31', 'http://www.hspt.net.cn/', '黄石市');
INSERT INTO `university` VALUES ('3063', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三峡旅游职业技术学院', '17', '31', 'http://www.sxlyzy.edu.cn/', '宜昌市');
INSERT INTO `university` VALUES ('3064', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天门职业学院', '17', '31', 'http://www.tmzyxy.cn/', '天门市');
INSERT INTO `university` VALUES ('3065', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北体育职业学院', '17', '31', 'http://www.hbtyzy.com/', '武汉市');
INSERT INTO `university` VALUES ('3066', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '襄阳汽车职业技术学院', '17', '31', 'http://www.xyqczy.com/', '襄阳市');
INSERT INTO `university` VALUES ('3067', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北幼儿师范高等31学校', '17', '31', 'http://www.hbssyys.cn/', '武汉市');
INSERT INTO `university` VALUES ('3068', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北铁道运输职业学院', '17', '31', 'http://www.wtsx.com.cn/', '武汉市');
INSERT INTO `university` VALUES ('3069', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉海事职业学院', '17', '31', 'http://www.whmvc.net/', '武汉市');
INSERT INTO `university` VALUES ('3070', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长江艺术工程职业学院', '17', '31', 'http://www.cj-cx.com/', '十堰市');
INSERT INTO `university` VALUES ('3071', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '荆门职业学院', '17', '31', 'http://www.jmzyxy.net.cn/', '荆门市');
INSERT INTO `university` VALUES ('3072', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉铁路桥梁职业学院', '17', '31', 'http://www.wrbss.net/', '武汉市');
INSERT INTO `university` VALUES ('3073', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武汉光谷职业学院', '17', '31', 'http://www.whggvc.net/', '武汉市');
INSERT INTO `university` VALUES ('3074', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖北师范学院文理学院', '17', '32', 'http://www.wlxy.hbnu.edu.cn/', '黄石市');
INSERT INTO `university` VALUES ('3075', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湘潭大学', '18', '32', 'http://www.xtu.edu.cn/', '湘潭市');
INSERT INTO `university` VALUES ('3076', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉首大学', '18', '32', 'http://www.jsu.edu.cn', '吉首市');
INSERT INTO `university` VALUES ('3077', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南大学', '18', '32', 'http://www.hnu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3078', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中南大学', '18', '32', 'http://www.csu.edu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3079', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南科技大学', '18', '32', 'http://www.hnust.edu.cn/', '湘潭市');
INSERT INTO `university` VALUES ('3080', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙理工大学', '18', '32', 'http://www.csust.edu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3081', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南农业大学', '18', '32', 'http://www.hunau.edu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3082', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中南林业科技大学', '18', '32', 'http://www.csuft.com/', '长沙市');
INSERT INTO `university` VALUES ('3083', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南中医药大学', '18', '32', 'http://www.hnctcm.edu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3084', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南师范大学', '18', '32', 'http://www.hunnu.edu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3085', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南理工学院', '18', '32', 'http://www.hnist.cn/', '岳阳市');
INSERT INTO `university` VALUES ('3086', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湘南学院', '18', '32', 'http://www.xnu.edu.cn/', '郴州市');
INSERT INTO `university` VALUES ('3087', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '衡阳师范学院', '18', '32', 'http://www.hynu.edu.cn/', '衡阳市');
INSERT INTO `university` VALUES ('3088', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '邵阳学院', '18', '32', 'http://www.hnsyu.net/', '邵阳市');
INSERT INTO `university` VALUES ('3089', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '怀化学院', '18', '32', 'http://www.hhtc.edu.cn/', '怀化市');
INSERT INTO `university` VALUES ('3090', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南文理学院', '18', '32', 'http://www.huas.cn/', '常德市');
INSERT INTO `university` VALUES ('3091', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南科技学院', '18', '32', 'http://www.huse.cn/', '永州市');
INSERT INTO `university` VALUES ('3092', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南人文科技学院', '18', '32', 'http://www.hnrku.net.cn/', '娄底市');
INSERT INTO `university` VALUES ('3093', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南商学院', '18', '32', 'http://www.hnuc.edu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3094', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南华大学', '18', '32', 'http://www.usc.edu.cn/', '衡阳市');
INSERT INTO `university` VALUES ('3095', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙医学院', '18', '32', 'http://www.csmu.edu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3096', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙学院', '18', '32', 'http://www.ccsu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3097', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南工程学院', '18', '32', 'http://www.hnie.edu.cn/', '湘潭市');
INSERT INTO `university` VALUES ('3098', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南城市学院', '18', '32', 'http://www.hncu.net/', '益阳市');
INSERT INTO `university` VALUES ('3099', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南工学院', '18', '32', 'http://www.hnpu.edu.cn/', '衡阳市');
INSERT INTO `university` VALUES ('3100', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南财政经济学院', '18', '32', 'http://www.hufe.edu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3101', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南警察学院', '18', '32', 'http://www.hnpolice.com/', '长沙市');
INSERT INTO `university` VALUES ('3102', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南工业大学', '18', '32', 'http://www.hut.edu.cn/', '株洲市');
INSERT INTO `university` VALUES ('3103', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南女子学院', '18', '32', 'http://www.hnnd.com.cn/', '长沙市');
INSERT INTO `university` VALUES ('3104', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南第一师范学院', '18', '32', 'http://www.hnfnu.edu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3105', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南医药学院', '18', '32', 'http://www.hnmu.com.cn/', '怀化市');
INSERT INTO `university` VALUES ('3106', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南涉外经济学院', '18', '32', 'http://www.hunaneu.com/', '长沙市');
INSERT INTO `university` VALUES ('3107', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湘潭大学兴湘学院', '18', '32', 'http://xxxy.xtu.edu.cn/', '湘潭市');
INSERT INTO `university` VALUES ('3108', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南工业大学科技学院', '18', '32', 'http://www.hnut-d.com/', '株洲市');
INSERT INTO `university` VALUES ('3109', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南科技大学潇湘学院', '18', '32', 'http://dep.hnust.edu.cn/xxxy/', '湘潭市');
INSERT INTO `university` VALUES ('3110', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南华大学船山学院', '18', '32', 'http://usc.edu.cn/csxy/', '衡阳市');
INSERT INTO `university` VALUES ('3111', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南商学院北津学院', '18', '32', 'http://www.bjxy.net.cn/', '长沙市');
INSERT INTO `university` VALUES ('3112', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南师范大学树达学院', '18', '32', 'http://sdw.hunnu.edu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3113', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南农业大学东方科技学院', '18', '32', 'http://www.hnaues.com/', '长沙市');
INSERT INTO `university` VALUES ('3114', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中南林业科技大学涉外学院', '18', '32', 'http://new.zswxy.cn/', '长沙市');
INSERT INTO `university` VALUES ('3115', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南文理学院芙蓉学院', '18', '32', 'http://fur.huas.cn/', '常德市');
INSERT INTO `university` VALUES ('3116', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南理工学院南湖学院', '18', '32', 'http://nh.80city.cn/', '岳阳市');
INSERT INTO `university` VALUES ('3117', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '衡阳师范学院南岳学院', '18', '32', 'http://nyxy.hynu.cn/', '衡阳市');
INSERT INTO `university` VALUES ('3118', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南工程学院应用技术学院', '18', '32', 'http://www.hnieyy.cn/', '湘潭市');
INSERT INTO `university` VALUES ('3119', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南中医药大学湘杏学院', '18', '32', 'http://www.hnzyxx.com/', '长沙市');
INSERT INTO `university` VALUES ('3120', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉首大学张家界学院', '18', '32', 'http://zjj.jsu.edu.cn/', '张家界市');
INSERT INTO `university` VALUES ('3121', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙理工大学城南学院', '18', '32', 'http://www.csust.edu.cn/pub/cn', '长沙市');
INSERT INTO `university` VALUES ('3122', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙师范学院', '18', '32', 'http://www.cssf.cn/', '长沙市');
INSERT INTO `university` VALUES ('3123', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南应用技术学院', '18', '32', 'http://www.hnyyjsxy.com/', '常德市');
INSERT INTO `university` VALUES ('3124', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南信息学院', '18', '32', 'http://www.hnisc.com/', '长沙市');
INSERT INTO `university` VALUES ('3125', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南交通工程学院', '18', '32', 'http://www.hnkjjm.com/', '衡阳市');
INSERT INTO `university` VALUES ('3126', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湘中幼儿师范高等31学校', '18', '31', 'http://www.hnsysf.com/', '邵阳市');
INSERT INTO `university` VALUES ('3127', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙民政职业技术学院', '18', '31', 'http://www.csmzxy.com/', '长沙市');
INSERT INTO `university` VALUES ('3128', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南工业职业技术学院', '18', '31', 'http://www.hunangy.com/', '长沙市');
INSERT INTO `university` VALUES ('3129', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南信息职业技术学院', '18', '31', 'http://www.hniu.com/', '长沙市');
INSERT INTO `university` VALUES ('3130', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南税务高等31学校', '18', '31', 'http://www.csttc.cn/', '长沙市');
INSERT INTO `university` VALUES ('3131', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙航空职业技术学院', '18', '31', 'http://www.cavtc.cn/', '长沙市');
INSERT INTO `university` VALUES ('3132', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南大众传媒职业技术学院', '18', '31', 'http://www.hnmmc.cn/', '长沙市');
INSERT INTO `university` VALUES ('3133', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '永州职业技术学院', '18', '31', 'http://www.hnyzzy.com/', '永州市');
INSERT INTO `university` VALUES ('3134', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南铁道职业技术学院', '18', '31', 'http://www.hnrpc.com/', '株洲市');
INSERT INTO `university` VALUES ('3135', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南科技职业学院', '18', '31', 'http://www.hnkjxy.net.cn/', '长沙市');
INSERT INTO `university` VALUES ('3136', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南生物机电职业技术学院', '18', '31', 'http://www.hnbemc.com/', '长沙市');
INSERT INTO `university` VALUES ('3137', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南交通职业技术学院', '18', '31', 'http://www.hnjtzy.com.cn/', '长沙市');
INSERT INTO `university` VALUES ('3138', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南商务职业技术学院', '18', '31', 'http://www.hnswxy.com/', '长沙市');
INSERT INTO `university` VALUES ('3139', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南体育职业学院', '18', '31', 'http://tyzy.hnedu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3140', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南工程职业技术学院', '18', '31', 'http://www.hngcjx.com.cn/', '长沙市');
INSERT INTO `university` VALUES ('3141', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '保险职业学院', '18', '31', 'http://www.bxxy.com/', '长沙市');
INSERT INTO `university` VALUES ('3142', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南外贸职业学院', '18', '31', 'http://www.hnwmxy.com/', '长沙市');
INSERT INTO `university` VALUES ('3143', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南网络工程职业学院', '18', '31', 'http://www.hnevc.com/', '长沙市');
INSERT INTO `university` VALUES ('3144', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '邵阳职业技术学院', '18', '31', 'http://www.syzyedu.com/', '邵阳市');
INSERT INTO `university` VALUES ('3145', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南司法警官职业学院', '18', '31', 'http://www.jgzy.com/', '长沙市');
INSERT INTO `university` VALUES ('3146', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙商贸旅游职业技术学院', '18', '31', 'http://www.hncpu.com/', '长沙市');
INSERT INTO `university` VALUES ('3147', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南环境生物职业技术学院', '18', '31', 'http://www.hnebp.edu.cn/', '衡阳市');
INSERT INTO `university` VALUES ('3148', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南邮电职业技术学院', '18', '31', 'http://www.hnydxy.com/', '长沙市');
INSERT INTO `university` VALUES ('3149', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湘潭医卫职业技术学院', '18', '31', 'http://www.xtzy.com/', '湘潭市');
INSERT INTO `university` VALUES ('3150', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '郴州职业技术学院', '18', '31', 'http://www.czzy-edu.com/', '郴州市');
INSERT INTO `university` VALUES ('3151', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '娄底职业技术学院', '18', '31', 'http://www.ldzy.com/', '娄底市');
INSERT INTO `university` VALUES ('3152', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '张家界航空工业职业技术学院', '18', '31', 'http://www.zjjhy.net/', '张家界市');
INSERT INTO `university` VALUES ('3153', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙环境保护职业技术学院', '18', '31', 'http://www.hbcollege.com.cn/', '长沙市');
INSERT INTO `university` VALUES ('3154', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南艺术职业学院', '18', '31', 'http://www.arthn.com/', '长沙市');
INSERT INTO `university` VALUES ('3155', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南机电职业技术学院', '18', '31', 'http://www.hnjdzy.net/', '长沙市');
INSERT INTO `university` VALUES ('3156', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙职业技术学院', '18', '31', 'http://www.cszyedu.cn/', '长沙市');
INSERT INTO `university` VALUES ('3157', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '怀化职业技术学院', '18', '31', 'http://www.hhvtc.com.cn/', '怀化市');
INSERT INTO `university` VALUES ('3158', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '岳阳职业技术学院', '18', '31', 'http://www.yvtc.edu.cn/', '岳阳市');
INSERT INTO `university` VALUES ('3159', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '常德职业技术学院', '18', '31', 'http://www.cdzy.cn/', '常德市');
INSERT INTO `university` VALUES ('3160', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙南方职业学院', '18', '31', 'http://www.nfdx.net/', '长沙市');
INSERT INTO `university` VALUES ('3161', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '潇湘职业学院', '18', '31', 'http://www.hnxxc.com/', '娄底市');
INSERT INTO `university` VALUES ('3162', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南化工职业技术学院', '18', '31', 'http://www.hnhgzy.com/', '株洲市');
INSERT INTO `university` VALUES ('3163', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南城建职业技术学院', '18', '31', 'http://www.hnucc.com/', '湘潭市');
INSERT INTO `university` VALUES ('3164', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南石油化工职业技术学院', '18', '31', 'http://www.hnshzy.cn/', '岳阳市');
INSERT INTO `university` VALUES ('3165', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南中医药高等31学校', '18', '31', 'http://www.hntcmc.net/', '湖南省');
INSERT INTO `university` VALUES ('3166', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南民族职业学院', '18', '31', 'http://www.hnvc.net.cn/', '岳阳市');
INSERT INTO `university` VALUES ('3167', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湘西民族职业技术学院', '18', '31', 'http://www.xxmzy.com/', '吉首市');
INSERT INTO `university` VALUES ('3168', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南财经工业职业技术学院', '18', '31', 'http://www.hycgy.com/', '衡阳市');
INSERT INTO `university` VALUES ('3169', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '益阳职业技术学院', '18', '31', 'http://www.yyvtc.cn/', '益阳市');
INSERT INTO `university` VALUES ('3170', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南工艺美术职业学院', '18', '31', 'http://www.hnmeida.com.cn/', '益阳市');
INSERT INTO `university` VALUES ('3171', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南九嶷职业技术学院', '18', '31', 'http://www.4744edu.com/', '永州市');
INSERT INTO `university` VALUES ('3172', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南理工职业技术学院', '18', '31', 'http://www.xlgy.com/', '湘潭市');
INSERT INTO `university` VALUES ('3173', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南软件职业学院', '18', '31', 'http://www.hnsoftedu.com/', '湘潭市');
INSERT INTO `university` VALUES ('3174', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南汽车工程职业学院', '18', '31', 'http://www.zzptc.com/', '株洲市');
INSERT INTO `university` VALUES ('3175', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙电力职业技术学院', '18', '31', 'http://www.cseptc.net/', '长沙市');
INSERT INTO `university` VALUES ('3176', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南水利水电职业技术学院', '18', '31', 'http://www.hnslsdxy.com/', '长沙市');
INSERT INTO `university` VALUES ('3177', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南现代物流职业技术学院', '18', '31', 'http://www.56edu.com/', '长沙市');
INSERT INTO `university` VALUES ('3178', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南高速铁路职业技术学院', '18', '31', 'http://www.htcrh.com/', '衡阳市');
INSERT INTO `university` VALUES ('3179', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南铁路科技职业技术学院', '18', '31', 'http://www.hntky.com/', '株洲市');
INSERT INTO `university` VALUES ('3180', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南安全技术职业学院', '18', '31', 'http://www.cssttc.gov.cn/', '长沙市');
INSERT INTO `university` VALUES ('3181', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南电气职业技术学院', '18', '31', 'http://www.hnjd.net.cn/', '湘潭市');
INSERT INTO `university` VALUES ('3182', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南外国语职业学院', '18', '31', 'http://www.hnflc.cn/', '长沙市');
INSERT INTO `university` VALUES ('3183', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '益阳医学高等31学校', '18', '31', 'http://www.hnyyyz.com/', '益阳市');
INSERT INTO `university` VALUES ('3184', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南都市职业学院', '18', '31', 'http://www.hnupc.net/', '长沙市');
INSERT INTO `university` VALUES ('3185', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南电子科技职业学院', '18', '31', 'http://www.8379888.com/', '长沙市');
INSERT INTO `university` VALUES ('3186', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南国防工业职业技术学院', '18', '31', 'http://www.hnkgzy.com/', '湘潭市');
INSERT INTO `university` VALUES ('3187', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南高尔夫旅游职业学院', '18', '31', 'http://www.2823333.com/', '常德市');
INSERT INTO `university` VALUES ('3188', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南工商职业学院', '18', '31', 'http://www.hngsxy.com/', '衡阳市');
INSERT INTO `university` VALUES ('3189', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南三一工业职业技术学院', '18', '31', 'http://www.sanyedu.com/', '长沙市');
INSERT INTO `university` VALUES ('3190', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长沙卫生职业学院', '18', '31', 'http://www.cswszy.com/', '长沙市');
INSERT INTO `university` VALUES ('3191', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南食品药品职业学院', '18', '31', 'http://www.hnyyxx.net/', '长沙市');
INSERT INTO `university` VALUES ('3192', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南有色金属职业技术学院', '18', '31', 'http://www.hnyszy.com.cn/', '株洲市');
INSERT INTO `university` VALUES ('3193', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南吉利汽车职业技术学院', '18', '31', 'http://www.hngeelyedu.cn/', '湘潭市');
INSERT INTO `university` VALUES ('3194', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南幼儿师范高等31学校', '18', '31', 'http://www.cdgdsf.com/', '常德市');
INSERT INTO `university` VALUES ('3195', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湘南幼儿师范高等31学校', '18', '31', 'http://www.hnczsf.com/', '郴州市');
INSERT INTO `university` VALUES ('3196', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湖南劳动人事职业学院', '18', '31', 'http://www.hnlrx.net/', '长沙市');
INSERT INTO `university` VALUES ('3197', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中山大学', '19', '32', 'http://www.sysu.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3198', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '暨南大学', '19', '32', 'http://www.jnu.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3199', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '汕头大学', '19', '32', 'http://www.stu.edu.cn/', '汕头市');
INSERT INTO `university` VALUES ('3200', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华南理工大学', '19', '32', 'http://www.scut.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3201', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华南农业大学', '19', '32', 'http://www.scau.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3202', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东海洋大学', '19', '32', 'http://www.gdou.edu.cn/', '湛江市');
INSERT INTO `university` VALUES ('3203', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州医科大学', '19', '32', 'http://www.gzhmu.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3204', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东医科大学', '19', '32', 'http://www.gdmu.edu.cn/', '湛江市');
INSERT INTO `university` VALUES ('3205', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州中医药大学', '19', '32', 'http://www.gzhtcm.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3206', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东药科大学', '19', '32', 'http://www.gdpu.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3207', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华南师范大学', '19', '32', 'http://www.scnu.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3208', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '韶关学院', '19', '32', 'http://www.sgu.edu.cn/', '韶关市');
INSERT INTO `university` VALUES ('3209', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '惠州学院', '19', '32', 'http://www.hzu.edu.cn/', '惠州市');
INSERT INTO `university` VALUES ('3210', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '韩山师范学院', '19', '32', 'http://www.hstc.edu.cn/', '潮州市');
INSERT INTO `university` VALUES ('3211', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '岭南师范学院', '19', '32', 'http://www.lingnan.edu.cn/', '湛江市');
INSERT INTO `university` VALUES ('3212', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '肇庆学院', '19', '32', 'http://www.zqu.edu.cn/', '肇庆市');
INSERT INTO `university` VALUES ('3213', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '嘉应学院', '19', '32', 'http://www.jyu.edu.cn/', '梅州市');
INSERT INTO `university` VALUES ('3214', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州体育学院', '19', '32', 'http://www.gipe.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3215', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州美术学院', '19', '32', 'http://www.gzarts.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3216', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '星海音乐学院', '19', '32', 'http://www.xhcom.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3217', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东技术师范学院', '19', '32', 'http://www.gdin.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3218', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '深圳大学', '19', '32', 'http://www.szu.edu.cn/', '深圳市');
INSERT INTO `university` VALUES ('3219', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东财经大学', '19', '32', 'http://www.gdufe.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3220', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东白云学院', '19', '32', 'http://www.bvtc.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3221', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州大学', '19', '32', 'http://www.gzhu.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3222', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州航海学院', '19', '32', 'http://www.gzhmt.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3223', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东警官学院', '19', '32', 'http://www.gdppla.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3224', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '仲恺农业工程学院', '19', '32', 'http://www.zhku.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3225', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '五邑大学', '19', '32', 'http://www.wyu.edu.cn/', '江门市');
INSERT INTO `university` VALUES ('3226', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东金融学院', '19', '32', 'http://www.gduf.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3227', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '电子科技大学中山学院', '19', '32', 'http://www.zsc.edu.cn/', '中山市');
INSERT INTO `university` VALUES ('3228', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东石油化工学院', '19', '32', 'http://www.gdpa.edu.cn/', '茂名市');
INSERT INTO `university` VALUES ('3229', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东莞理工学院', '19', '32', 'http://www.dgut.edu.cn/', '东莞市');
INSERT INTO `university` VALUES ('3230', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东工业大学', '19', '32', 'http://www.gdut.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3231', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东外语外贸大学', '19', '32', 'http://www.gdufs.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3232', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '佛山科学技术学院', '19', '32', 'http://www.fosu.edu.cn/', '佛山市');
INSERT INTO `university` VALUES ('3233', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东培正学院', '19', '32', 'http://www.peizheng.net.cn/', '广州市');
INSERT INTO `university` VALUES ('3234', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南方医科大学', '19', '32', 'http://www.fimmu.com/', '广州市');
INSERT INTO `university` VALUES ('3235', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东东软学院', '19', '32', 'http://www.neusoft.gd.cn/', '佛山市');
INSERT INTO `university` VALUES ('3236', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华南理工大学广州学院', '19', '32', 'http://www.gcu.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3237', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州大学华软软件学院', '19', '32', 'http://www.sise.com.cn/', '广州市');
INSERT INTO `university` VALUES ('3238', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中山大学南方学院', '19', '32', 'http://www.nfsysu.cn/', '广州市');
INSERT INTO `university` VALUES ('3239', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东外语外贸大学南国商学院', '19', '32', 'http://www.gwng.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3240', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东财经大学华商学院', '19', '32', 'http://www.gdhsc.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3241', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东海洋大学寸金学院', '19', '32', 'http://www.gdcjxy.com/', '湛江市');
INSERT INTO `university` VALUES ('3242', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '华南农业大学珠江学院', '19', '32', 'http://www.scauzhujiang.cn/', '广州市');
INSERT INTO `university` VALUES ('3243', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东技术师范学院天河学院', '19', '32', 'http://www.thxy.cn/', '广州市');
INSERT INTO `university` VALUES ('3244', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京师范大学珠海分校', '19', '32', 'http://www.bnuep.com/', '珠海市');
INSERT INTO `university` VALUES ('3245', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东工业大学华立学院', '19', '32', 'http://www.hualixy.com/', '广州市');
INSERT INTO `university` VALUES ('3246', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州大学松田学院', '19', '32', 'http://www.sontan.net/', '广州市');
INSERT INTO `university` VALUES ('3247', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州商学院', '19', '32', 'http://www.gzcc.cn/', '广州市');
INSERT INTO `university` VALUES ('3248', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京理工大学珠海学院', '19', '32', 'http://www.zhbit.com/', '珠海市');
INSERT INTO `university` VALUES ('3249', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '吉林大学珠海学院', '19', '32', 'http://www.jluzh.com/', '珠海市');
INSERT INTO `university` VALUES ('3250', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州工商学院', '19', '32', 'http://www.gzgs.org.cn/', '广州市');
INSERT INTO `university` VALUES ('3251', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东科技学院', '19', '32', 'http://www.gdst.cc/', '东莞市');
INSERT INTO `university` VALUES ('3252', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东理工学院', '19', '32', 'http://www.gdlgxy.com/', '肇庆市');
INSERT INTO `university` VALUES ('3253', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东莞理工学院城市学院', '19', '32', 'http://csxy.dgut.edu.cn/', '东莞市');
INSERT INTO `university` VALUES ('3254', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中山大学新华学院', '19', '32', 'http://xh.sysu.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3255', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东第二师范学院', '19', '32', 'http://www.gdei.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3256', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南方科技大学', '19', '32', 'http://www.sustc.edu.cn/', '深圳市');
INSERT INTO `university` VALUES ('3257', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京师范大学－香港浸会大学联合国际学院', '19', '32', 'http://uic.edu.hk/cn', '珠海市');
INSERT INTO `university` VALUES ('3258', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '香港中文大学（深圳）', '19', '32', 'http://www.cuhk.edu.cn/', '深圳市');
INSERT INTO `university` VALUES ('3259', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '深圳北理莫斯科大学', '19', '32', 'http://www.szmsubit.edu.cn/', '深圳市');
INSERT INTO `university` VALUES ('3260', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东以色列理工学院', '19', '32', 'http://www.gtiit.edu.cn/', '汕头市');
INSERT INTO `university` VALUES ('3261', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '顺德职业技术学院', '19', '31', 'http://www.sdpt.com.cn/', '佛山市');
INSERT INTO `university` VALUES ('3262', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东轻工职业技术学院', '19', '31', 'http://www.gdqy.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3263', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东交通职业技术学院', '19', '31', 'http://www.gdcp.cn/', '广州市');
INSERT INTO `university` VALUES ('3264', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东水利电力职业技术学院', '19', '31', 'http://www.gdsdxy.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3265', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '潮汕职业技术学院', '19', '31', 'http://www.chaoshan.cn/', '揭阳市');
INSERT INTO `university` VALUES ('3266', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '深圳职业技术学院', '19', '31', 'http://www.szpt.edu.cn/', '深圳市');
INSERT INTO `university` VALUES ('3267', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东南华工商职业学院', '19', '31', 'http://www.nhic.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3268', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '私立华联学院', '19', '31', 'http://www.hlu.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3269', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州民航职业技术学院', '19', '31', 'http://www.caac.net/', '广州市');
INSERT INTO `university` VALUES ('3270', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州番禺职业技术学院', '19', '31', 'http://www.gzpyp.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3271', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东松山职业技术学院', '19', '31', 'http://www.gdsspt.net/', '韶关市');
INSERT INTO `university` VALUES ('3272', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东农工商职业技术学院', '19', '31', 'http://www.gdaib.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3273', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东新安职业技术学院', '19', '31', 'http://www.gdxa.cn/', '深圳市');
INSERT INTO `university` VALUES ('3274', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '佛山职业技术学院', '19', '31', 'http://www.fspt.net/', '佛山市');
INSERT INTO `university` VALUES ('3275', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东科学技术职业学院', '19', '31', 'http://www.gdit.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3276', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东食品药品职业学院', '19', '31', 'http://www.gdyzy.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3277', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州康大职业技术学院', '19', '31', 'http://www.kdvtc-edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3278', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '珠海艺术职业学院', '19', '31', 'http://www.zhac.net/', '珠海市');
INSERT INTO `university` VALUES ('3279', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东行政职业学院', '19', '31', 'http://www.gdxzzy.cn/', '广州市');
INSERT INTO `university` VALUES ('3280', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东体育职业技术学院', '19', '31', 'http://www.gdvcp.net/', '广州市');
INSERT INTO `university` VALUES ('3281', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东职业技术学院', '19', '31', 'http://www.gdptc.cn/', '佛山市');
INSERT INTO `university` VALUES ('3282', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东建设职业技术学院', '19', '31', 'http://www.gdcvi.net/', '广州市');
INSERT INTO `university` VALUES ('3283', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东女子职业技术学院', '19', '31', 'http://www.gdfs.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3284', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东机电职业技术学院', '19', '31', 'http://www.gdmec.com/', '广州市');
INSERT INTO `university` VALUES ('3285', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东岭南职业技术学院', '19', '31', 'http://www.lingnancollege.com.', '广州市');
INSERT INTO `university` VALUES ('3286', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '汕尾职业技术学院', '19', '31', 'http://www.swvtc.cn/', '汕尾市');
INSERT INTO `university` VALUES ('3287', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '罗定职业技术学院', '19', '31', 'http://www.ldpoly.com/', '罗定市');
INSERT INTO `university` VALUES ('3288', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阳江职业技术学院', '19', '31', 'http://www.yjcollege.net/', '阳江市');
INSERT INTO `university` VALUES ('3289', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河源职业技术学院', '19', '31', 'http://www.hycollege.net/', '河源市');
INSERT INTO `university` VALUES ('3290', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东邮电职业技术学院', '19', '31', 'http://www.gupt.net/', '广州市');
INSERT INTO `university` VALUES ('3291', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '汕头职业技术学院', '19', '31', 'http://www.gdwlxy.cn/', '汕头市');
INSERT INTO `university` VALUES ('3292', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '揭阳职业技术学院', '19', '31', 'http://www.jyc.edu.cn/', '揭阳市');
INSERT INTO `university` VALUES ('3293', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '深圳信息职业技术学院', '19', '31', 'http://www.sziit.com.cn/', '深圳市');
INSERT INTO `university` VALUES ('3294', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '清远职业技术学院', '19', '31', 'http://www.qypt.com.cn/', '清远市');
INSERT INTO `university` VALUES ('3295', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东工贸职业技术学院', '19', '31', 'http://www.gdgm.cn/', '广州市');
INSERT INTO `university` VALUES ('3296', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东司法警官职业学院', '19', '31', 'http://www.gdsfjy.cn/', '广州市');
INSERT INTO `university` VALUES ('3297', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东亚视演艺职业学院', '19', '31', 'http://www.atvcn.com/', '东莞市');
INSERT INTO `university` VALUES ('3298', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东省外语艺术职业学院', '19', '31', 'http://www.gtcfla.net/', '广州市');
INSERT INTO `university` VALUES ('3299', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东文艺职业学院', '19', '31', 'http://www.gdla.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3300', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州体育职业技术学院', '19', '31', 'http://www.gztzy.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3301', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州工程技术职业学院', '19', '31', 'http://www.gzvtc.cn/', '广州市');
INSERT INTO `university` VALUES ('3302', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中山火炬职业技术学院', '19', '31', 'http://www.zstp.cn/', '中山市');
INSERT INTO `university` VALUES ('3303', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '江门职业技术学院', '19', '31', 'http://www.jmpt.cn/', '江门市');
INSERT INTO `university` VALUES ('3304', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '茂名职业技术学院', '19', '31', 'http://www.mmvtc.cn/', '茂名市');
INSERT INTO `university` VALUES ('3305', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '珠海城市职业技术学院', '19', '31', 'http://www.zhcpt.edu.cn/', '珠海市');
INSERT INTO `university` VALUES ('3306', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州涉外经济职业技术学院', '19', '31', 'http://www.gziec.net/', '广州市');
INSERT INTO `university` VALUES ('3307', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州南洋理工职业学院', '19', '31', 'http://www.nyjy.cn/', '广州市');
INSERT INTO `university` VALUES ('3308', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州科技职业技术学院', '19', '31', 'http://www.gzkjxy.net/', '广州市');
INSERT INTO `university` VALUES ('3309', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '惠州经济职业技术学院', '19', '31', 'http://www.hzcollege.com/', '惠州市');
INSERT INTO `university` VALUES ('3310', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东工商职业学院', '19', '31', 'http://www.zqtbu.com/', '肇庆市');
INSERT INTO `university` VALUES ('3311', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '肇庆医学高等31学校', '19', '31', 'http://www.zqmc.net/', '肇庆市');
INSERT INTO `university` VALUES ('3312', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州现代信息工程职业技术学院', '19', '31', 'http://www.gzmodern.cn/', '广州市');
INSERT INTO `university` VALUES ('3313', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东理工职业学院', '19', '31', 'http://www.gdpi.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3314', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州华南商贸职业学院', '19', '31', 'http://www.hnsmxy.cn/', '广州市');
INSERT INTO `university` VALUES ('3315', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州华立科技职业学院', '19', '31', 'http://www.hlxy.net/', '广州市');
INSERT INTO `university` VALUES ('3316', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州城市职业学院', '19', '31', 'http://www.gcp.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3317', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东工程职业技术学院', '19', '31', 'http://www.gpc.net.cn/', '广州市');
INSERT INTO `university` VALUES ('3318', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州铁路职业技术学院', '19', '31', 'http://www.gtxy.cn/', '广州市');
INSERT INTO `university` VALUES ('3319', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东科贸职业学院', '19', '31', 'http://www.gdkm.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3320', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州科技贸易职业学院', '19', '31', 'http://www.gzkmu.com/', '广州市');
INSERT INTO `university` VALUES ('3321', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中山职业技术学院', '19', '31', 'http://www.zspt.cn/', '中山市');
INSERT INTO `university` VALUES ('3322', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州珠江职业技术学院', '19', '31', 'http://www.gzzjedu.cn/', '广州市');
INSERT INTO `university` VALUES ('3323', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州松田职业学院', '19', '31', 'http://www.sontanedu.cn/', '广州市');
INSERT INTO `university` VALUES ('3324', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东文理职业学院', '19', '31', 'http://www.gdwlxy.cn/', '湛江市');
INSERT INTO `university` VALUES ('3325', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州城建职业学院', '19', '31', 'http://www.gzccc.edu.cn/', '广州市');
INSERT INTO `university` VALUES ('3326', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '东莞职业技术学院', '19', '31', 'http://www.dgpt.edu.cn/', '东莞市');
INSERT INTO `university` VALUES ('3327', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东南方职业学院', '19', '31', 'http://www.gdnfu.com/', '江门市');
INSERT INTO `university` VALUES ('3328', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州华商职业学院', '19', '31', 'http://www.gzhsvc.com/', '广州市');
INSERT INTO `university` VALUES ('3329', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州华夏职业学院', '19', '31', 'http://www.gzhxtc.cn/', '广州市');
INSERT INTO `university` VALUES ('3330', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东环境保护工程职业学院', '19', '31', 'http://www.gdepc.cn/', '佛山市');
INSERT INTO `university` VALUES ('3331', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东青年职业学院', '19', '31', 'http://www.gdylc.cn/', '广州市');
INSERT INTO `university` VALUES ('3332', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州东华职业学院', '19', '31', 'http://www.gzdhxy.com/', '广州市');
INSERT INTO `university` VALUES ('3333', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东创新科技职业学院', '19', '31', 'http://www.gdcxxy.net/', '东莞市');
INSERT INTO `university` VALUES ('3334', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东舞蹈戏剧职业学院', '19', '31', 'http://www.gdddc.cn/', '佛山市');
INSERT INTO `university` VALUES ('3335', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '惠州卫生职业技术学院', '19', '31', 'http://www.hzwx.cn/', '惠州市');
INSERT INTO `university` VALUES ('3336', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东信息工程职业学院', '19', '31', 'http://121.10.238.88/', '肇庆市');
INSERT INTO `university` VALUES ('3337', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东生态工程职业学院', '19', '31', 'http://www.gdsty.cn/', '广州市');
INSERT INTO `university` VALUES ('3338', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '惠州城市职业学院', '19', '31', 'http://www.hzc.edu.cn/', '惠州市');
INSERT INTO `university` VALUES ('3339', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东碧桂园职业学院', '19', '31', 'http://www.bgypt.com/', '清远市');
INSERT INTO `university` VALUES ('3340', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东酒店管理职业技术学院', '19', '31', 'http://www.gdjdxy.com/', '东莞市');
INSERT INTO `university` VALUES ('3341', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东茂名幼儿师范31学校', '19', '31', 'http://www.gdgzsf.cn/', '茂名市');
INSERT INTO `university` VALUES ('3342', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广州卫生职业技术学院', '19', '31', 'http://www.gzws.net/', '广州市');
INSERT INTO `university` VALUES ('3343', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广东江门中医药职业学院', '19', '31', 'http://www.gdjmcmc.com/', '江门市');
INSERT INTO `university` VALUES ('3344', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '湛江市幼儿师范学校', '19', '31', 'http://www.zjys.net/', '湛江市');
INSERT INTO `university` VALUES ('3345', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西大学', '20', '32', 'http://www.gxu.edu.cn/', '南宁市');
INSERT INTO `university` VALUES ('3346', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西科技大学', '20', '32', 'http://www.gxut.edu.cn/', '柳州市');
INSERT INTO `university` VALUES ('3347', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '桂林电子科技大学', '20', '32', 'http://www.gliet.edu.cn/', '桂林市');
INSERT INTO `university` VALUES ('3348', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '桂林理工大学', '20', '32', 'http://www.glite.edu.cn/', '桂林市');
INSERT INTO `university` VALUES ('3349', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西医科大学', '20', '32', 'http://www.gxmu.edu.cn/', '南宁市');
INSERT INTO `university` VALUES ('3350', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '右江民族医学院', '20', '32', 'http://www.ymcn.gx.cn/', '百色市');
INSERT INTO `university` VALUES ('3351', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西中医药大学', '20', '32', 'http://www.gxtcmu.edu.cn/', '南宁市');
INSERT INTO `university` VALUES ('3352', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '桂林医学院', '20', '32', 'http://www.glmc.edu.cn/', '桂林市');
INSERT INTO `university` VALUES ('3353', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西师范大学', '20', '32', 'http://www.gxnu.edu.cn/', '桂林市');
INSERT INTO `university` VALUES ('3354', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西师范学院', '20', '32', 'http://www.gxtc.edu.cn/', '南宁市');
INSERT INTO `university` VALUES ('3355', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西民族师范学院', '20', '32', 'http://www.gxnun.net/', '崇左市');
INSERT INTO `university` VALUES ('3356', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河池学院', '20', '32', 'http://www.hcnu.edu.cn/', '宜州市');
INSERT INTO `university` VALUES ('3357', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '玉林师范学院', '20', '32', 'http://www.ylu.edu.cn/', '玉林市');
INSERT INTO `university` VALUES ('3358', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西艺术学院', '20', '32', 'http://www.gxau.edu.cn/', '南宁市');
INSERT INTO `university` VALUES ('3359', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西民族大学', '20', '32', 'http://www.gxun.edu.cn/', '南宁市');
INSERT INTO `university` VALUES ('3360', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '百色学院', '20', '32', 'http://www.bsuc.cn/', '百色市');
INSERT INTO `university` VALUES ('3361', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '梧州学院', '20', '32', 'http://www.gxuwz.edu.cn/', '梧州市');
INSERT INTO `university` VALUES ('3362', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西科技师范学院', '20', '32', 'http://www.gxlztc.net/', '来宾市');
INSERT INTO `university` VALUES ('3363', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西财经学院', '20', '32', 'http://www.gxufe.cn/', '南宁市');
INSERT INTO `university` VALUES ('3364', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南宁学院', '20', '32', 'http://www.nnxy.cn/', '南宁市');
INSERT INTO `university` VALUES ('3365', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '钦州学院', '20', '32', 'http://www.qzu.net.cn/', '钦州市');
INSERT INTO `university` VALUES ('3366', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '桂林航天工业学院', '20', '32', 'http://www.guat.edu.cn/', '桂林市');
INSERT INTO `university` VALUES ('3367', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '桂林旅游学院', '20', '32', 'http://www.glit.cn/', '桂林市');
INSERT INTO `university` VALUES ('3368', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贺州学院', '20', '32', 'http://www.hzu.gx.cn/', '贺州市');
INSERT INTO `university` VALUES ('3369', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西警察学院', '20', '32', 'http://www.gagx.com.cn/', '南宁市');
INSERT INTO `university` VALUES ('3370', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北海艺术设计学院', '20', '32', 'http://www.sszss.com/', '北海市');
INSERT INTO `university` VALUES ('3371', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西大学行健文理学院', '20', '32', 'http://xingjian.gxu.edu.cn/', '南宁市');
INSERT INTO `university` VALUES ('3372', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西科技大学鹿山学院', '20', '32', 'http://www.lzls.gxut.edu.cn/', '柳州市');
INSERT INTO `university` VALUES ('3373', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西民族大学相思湖学院', '20', '32', 'http://xshxy.gxun.edu.cn/', '南宁市');
INSERT INTO `university` VALUES ('3374', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西师范大学漓江学院', '20', '32', 'http://www.gxljcollege.cn/', '桂林市');
INSERT INTO `university` VALUES ('3375', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西师范学院师园学院', '20', '32', 'http://www.gxsyu.com/', '南宁市');
INSERT INTO `university` VALUES ('3376', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西中医学院赛恩斯新医药学院', '20', '32', 'http://www.gxzyxysy.com/', '南宁市');
INSERT INTO `university` VALUES ('3377', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '桂林电子科技大学信息科技学院', '20', '32', 'http://iit.guet.edu.cn/', '桂林市');
INSERT INTO `university` VALUES ('3378', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '桂林理工大学博文管理学院', '20', '32', 'http://bwgl.glite.edu.cn/', '桂林市');
INSERT INTO `university` VALUES ('3379', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西外国语学院', '20', '32', 'http://www.gxufl.com/', '南宁市');
INSERT INTO `university` VALUES ('3380', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北京航空航天大学北海学院', '20', '32', 'http://www.bhbhxy.com/', '北海市');
INSERT INTO `university` VALUES ('3381', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西机电职业技术学院', '20', '31', 'http://www.gxcme.edu.cn/', '南宁市');
INSERT INTO `university` VALUES ('3382', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西体育高等31学校', '20', '31', 'http://www.gxtznn.com/', '南宁市');
INSERT INTO `university` VALUES ('3383', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南宁职业技术学院', '20', '31', 'http://www.ncvt.net', '南宁市');
INSERT INTO `university` VALUES ('3384', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西水利电力职业技术学院', '20', '31', 'http://www.gxsdxy.cn/', '南宁市');
INSERT INTO `university` VALUES ('3385', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '桂林师范高等31学校', '20', '31', 'http://www.glnc.edu.cn/', '桂林市');
INSERT INTO `university` VALUES ('3386', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西职业技术学院', '20', '31', 'http://www.gxzjy.com/', '南宁市');
INSERT INTO `university` VALUES ('3387', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '柳州职业技术学院', '20', '31', 'http://www.lzzy.net/', '柳州市');
INSERT INTO `university` VALUES ('3388', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西生态工程职业技术学院', '20', '31', 'http://www.gxstzy.cn/', '柳州市');
INSERT INTO `university` VALUES ('3389', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西交通职业技术学院', '20', '31', 'http://www.gxjzy.com/', '南宁市');
INSERT INTO `university` VALUES ('3390', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西工业职业技术学院', '20', '31', 'http://www.gxic.net/', '南宁市');
INSERT INTO `university` VALUES ('3391', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西国际商务职业技术学院', '20', '31', 'http://www.gxibvc.net/', '南宁市');
INSERT INTO `university` VALUES ('3392', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西农业职业技术学院', '20', '31', 'http://www.gxnyxy.com.cn/', '南宁市');
INSERT INTO `university` VALUES ('3393', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '柳州铁道职业技术学院', '20', '31', 'http://www.lztdzy.com/', '柳州市');
INSERT INTO `university` VALUES ('3394', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西建设职业技术学院', '20', '31', 'http://www.gxjsxy.cn/', '南宁市');
INSERT INTO `university` VALUES ('3395', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西现代职业技术学院', '20', '31', 'http://www.gxxd.net.cn/', '河池市');
INSERT INTO `university` VALUES ('3396', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北海职业学院', '20', '31', 'http://www.bhzyxy.net/', '北海市');
INSERT INTO `university` VALUES ('3397', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '桂林山水职业学院', '20', '31', 'http://www.guolianweb.com/', '桂林市');
INSERT INTO `university` VALUES ('3398', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西经贸职业技术学院', '20', '31', 'http://www.gxjmzy.com/', '南宁市');
INSERT INTO `university` VALUES ('3399', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西工商职业技术学院', '20', '31', 'http://www.gxgsxy.com/', '南宁市');
INSERT INTO `university` VALUES ('3400', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西演艺职业学院', '20', '31', 'http://www.gxart.cn/', '南宁市');
INSERT INTO `university` VALUES ('3401', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西电力职业技术学院', '20', '31', 'http://www.gxdlxy.com/', '南宁市');
INSERT INTO `university` VALUES ('3402', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西城市职业学院', '20', '31', 'http://www.gxccedu.com/', '扶绥县');
INSERT INTO `university` VALUES ('3403', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西英华国际职业学院', '20', '31', 'http://www.tic-gx.com/', '钦州市');
INSERT INTO `university` VALUES ('3404', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '柳州城市职业学院', '20', '31', 'http://www.lcvc.cn/', '柳州市');
INSERT INTO `university` VALUES ('3405', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '百色职业学院', '20', '31', 'http://www.bszyxy.com/', '百色市');
INSERT INTO `university` VALUES ('3406', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西工程职业学院', '20', '31', 'http://www.gxgcedu.com/', '百色市');
INSERT INTO `university` VALUES ('3407', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西理工职业技术学院', '20', '31', 'http://www.gxlgxy.com/', '崇左市');
INSERT INTO `university` VALUES ('3408', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '梧州职业学院', '20', '31', 'http://www.wzzyedu.com/', '梧州市');
INSERT INTO `university` VALUES ('3409', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西经济职业学院', '20', '31', 'http://www.gxevc.com/', '南宁市');
INSERT INTO `university` VALUES ('3410', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西幼儿师范高等31学校', '20', '31', 'http://www.gxyesf.com/', '南宁市');
INSERT INTO `university` VALUES ('3411', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西科技职业学院', '20', '31', 'http://www.gxkjzy.com/', '南宁市');
INSERT INTO `university` VALUES ('3412', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西卫生职业技术学院', '20', '31', 'http://www.gxwzy.com.cn/', '南宁市');
INSERT INTO `university` VALUES ('3413', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西培贤国际职业学院', '20', '31', 'http://xxsjxkj.ha185.cn/', '百色市');
INSERT INTO `university` VALUES ('3414', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西金融职业技术学院', '20', '31', 'http://www.gxjrxy.com/', '南宁市');
INSERT INTO `university` VALUES ('3415', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西蓝天航空职业学院', '20', '31', 'http://www.gxltu.com/', '来宾市');
INSERT INTO `university` VALUES ('3416', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广西安全工程职业技术学院', '20', '31', 'http://www.gxazy.com/', '南宁市');
INSERT INTO `university` VALUES ('3417', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南大学', '21', '32', 'http://www.hainu.edu.cn/', '海口市');
INSERT INTO `university` VALUES ('3418', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南热带海洋学院', '21', '32', 'http://www.qzu.edu.cn/', '三亚市');
INSERT INTO `university` VALUES ('3419', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南师范大学', '21', '32', 'http://www.hainnu.edu.cn/', '海口市');
INSERT INTO `university` VALUES ('3420', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南医学院', '21', '32', 'http://www.hainmc.edu.cn/', '海口市');
INSERT INTO `university` VALUES ('3421', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海口经济学院', '21', '32', 'http://www.hkc.edu.cn/', '海口市');
INSERT INTO `university` VALUES ('3422', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '琼台师范学院', '21', '32', 'http://www.qttc.edu.cn/', '海口市');
INSERT INTO `university` VALUES ('3423', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三亚学院', '21', '32', 'http://www.sanyau.edu.cn/', '三亚市');
INSERT INTO `university` VALUES ('3424', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南职业技术学院', '21', '31', 'http://www.hcvt.cn/', '海口市');
INSERT INTO `university` VALUES ('3425', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三亚城市职业学院', '21', '31', 'http://www.sycsxy.cn/', '三亚市');
INSERT INTO `university` VALUES ('3426', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南软件职业技术学院', '21', '31', 'http://www.hnspi.edu.cn/', '琼海市');
INSERT INTO `university` VALUES ('3427', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南政法职业学院', '21', '31', 'http://www.hnplc.com/', '海口市');
INSERT INTO `university` VALUES ('3428', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南外国语职业学院', '21', '31', 'http://www.hnflvc.com/', '文昌市');
INSERT INTO `university` VALUES ('3429', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南经贸职业技术学院', '21', '31', 'http://www.hnjmc.com/', '海口市');
INSERT INTO `university` VALUES ('3430', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南工商职业学院', '21', '31', 'http://www.hntbc.edu.cn/', '海口市');
INSERT INTO `university` VALUES ('3431', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三亚航空旅游职业学院', '21', '31', 'http://www.hnasatc.com/', '三亚市');
INSERT INTO `university` VALUES ('3432', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南科技职业学院', '21', '31', 'http://www.hnkjedu.cn/', '海口市');
INSERT INTO `university` VALUES ('3433', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三亚理工职业学院', '21', '31', 'http://www.ucsanya.com/', '三亚市');
INSERT INTO `university` VALUES ('3434', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '海南体育职业技术学院', '21', '31', 'http://www.hnstx.com/', '海口市');
INSERT INTO `university` VALUES ('3435', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '三亚中瑞酒店管理职业学院', '21', '31', 'http://www.his-edu.cn/', '三亚市');
INSERT INTO `university` VALUES ('3436', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆大学', '22', '32', 'http://www.cqu.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3437', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆邮电大学', '22', '32', 'http://www.cqupt.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3438', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆交通大学', '22', '32', 'http://www.cqjtu.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3439', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆医科大学', '22', '32', 'http://www.cqmu.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3440', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南大学', '22', '32', 'http://www.swu.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3441', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆师范大学', '22', '32', 'http://www.cqnu.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3442', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆文理学院', '22', '32', 'http://www.cqwu.net/', '重庆市');
INSERT INTO `university` VALUES ('3443', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆三峡学院', '22', '32', 'http://www.sanxiau.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3444', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长江师范学院', '22', '32', 'http://www.yznu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3445', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川外国语大学', '22', '32', 'http://www.sisu.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3446', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南政法大学', '22', '32', 'http://www.swupl.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3447', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川美术学院', '22', '32', 'http://www.scfai.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3448', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆科技学院', '22', '32', 'http://www.cqust.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3449', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆理工大学', '22', '32', 'http://www.cqut.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3450', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆工商大学', '22', '32', 'http://www.ctbu.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3451', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆工程学院', '22', '32', 'http://www.cqgcxy.com/', '重庆市');
INSERT INTO `university` VALUES ('3452', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆大学城市科技学院', '22', '32', 'http://www.cqucc.com.cn/', '重庆市');
INSERT INTO `university` VALUES ('3453', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆警察学院', '22', '32', 'http://www.cqjy.com.cn/', '重庆市');
INSERT INTO `university` VALUES ('3454', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆人文科技学院', '22', '32', 'http://www.swuyc.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3455', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川外语学院重庆南方翻译学院', '22', '32', 'http://www.tcsisu.com/', '重庆市');
INSERT INTO `university` VALUES ('3456', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆师范大学涉外商贸学院', '22', '32', 'http://www.swsm.cn/', '重庆市');
INSERT INTO `university` VALUES ('3457', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆工商大学融智学院', '22', '32', 'http://www.cqrzedu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3458', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆工商大学派斯学院', '22', '32', 'http://paisi.ctbu.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3459', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆邮电大学移通学院', '22', '32', 'http://www.cqyti.com/', '重庆市');
INSERT INTO `university` VALUES ('3460', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆第二师范学院', '22', '32', 'http://www.cque.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3461', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆航天职业技术学院', '22', '31', 'http://www.cqepc.cn/', '重庆市');
INSERT INTO `university` VALUES ('3462', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆电力高等31学校', '22', '31', 'http://www.cqepc.com.cn/', '重庆市');
INSERT INTO `university` VALUES ('3463', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆工业职业技术学院', '22', '31', 'http://www.cqipc.net/', '重庆市');
INSERT INTO `university` VALUES ('3464', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆三峡职业学院', '22', '31', 'http://www.cqsxedu.com/', '重庆市');
INSERT INTO `university` VALUES ('3465', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆工贸职业技术学院', '22', '31', 'http://www.cqgmy.cn/', '重庆市');
INSERT INTO `university` VALUES ('3466', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆机电职业技术学院', '22', '31', 'http://www.cqevi.net.cn/', '重庆市');
INSERT INTO `university` VALUES ('3467', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆电子工程职业学院', '22', '31', 'http://www.cqcet.com/', '重庆市');
INSERT INTO `university` VALUES ('3468', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆海联职业技术学院', '22', '31', 'http://www.cqhl.net.cn/', '重庆市');
INSERT INTO `university` VALUES ('3469', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆信息技术职业学院', '22', '31', 'http://www.cqeec.com/', '重庆市');
INSERT INTO `university` VALUES ('3470', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆传媒职业学院', '22', '31', 'http://www.cqcmxy.com/', '重庆市');
INSERT INTO `university` VALUES ('3471', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆城市管理职业学院', '22', '31', 'http://www.cswu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3472', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆工程职业技术学院', '22', '31', 'http://www.cqvie.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3473', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆房地产职业学院', '22', '31', 'http://www.cqbyxy.com/', '重庆市');
INSERT INTO `university` VALUES ('3474', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆城市职业学院', '22', '31', 'http://www.cqcvc.com.cn/', '重庆市');
INSERT INTO `university` VALUES ('3475', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆水利电力职业技术学院', '22', '31', 'http://www.cqsdzy.com/', '重庆市');
INSERT INTO `university` VALUES ('3476', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆工商职业学院', '22', '31', 'http://www.cqtbi.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3477', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆应用技术职业学院', '22', '31', 'http://www.cqms.edu.cn/', '重庆市');
INSERT INTO `university` VALUES ('3478', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆三峡医药高等31学校', '22', '31', 'http://www.sxyyc.net/', '重庆市');
INSERT INTO `university` VALUES ('3479', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆医药高等31学校', '22', '31', 'http://www.cqyygz.com/', '重庆市');
INSERT INTO `university` VALUES ('3480', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆青年职业技术学院', '22', '31', 'http://www.cqqzy.cn/', '重庆市');
INSERT INTO `university` VALUES ('3481', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆财经职业学院', '22', '31', 'http://www.cqcfe.com/', '重庆市');
INSERT INTO `university` VALUES ('3482', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆科创职业学院', '22', '31', 'http://www.cqie.cn/', '重庆市');
INSERT INTO `university` VALUES ('3483', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆建筑工程职业学院', '22', '31', 'http://www.cctc.cq.cn/', '重庆市');
INSERT INTO `university` VALUES ('3484', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆电讯职业学院', '22', '31', 'http://www.cqdxxy.com.cn/', '重庆市');
INSERT INTO `university` VALUES ('3485', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆能源职业学院', '22', '31', 'http://www.cqny.net/', '重庆市');
INSERT INTO `university` VALUES ('3486', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆商务职业学院', '22', '31', 'http://www.cqswxy.cn/', '重庆市');
INSERT INTO `university` VALUES ('3487', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆交通职业学院', '22', '31', 'http://www.cqjky.com/', '重庆市');
INSERT INTO `university` VALUES ('3488', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆化工职业学院', '22', '31', 'http://www.cqhgzy.com/', '重庆市');
INSERT INTO `university` VALUES ('3489', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆旅游职业学院', '22', '31', 'http://www.cqvit.com/', '重庆市');
INSERT INTO `university` VALUES ('3490', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆安全技术职业学院', '22', '31', 'http://www.cqvist.net/', '重庆市');
INSERT INTO `university` VALUES ('3491', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆公共运输职业学院', '22', '31', 'http://www.cqgyzy.com/', '重庆市');
INSERT INTO `university` VALUES ('3492', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆艺术工程职业学院', '22', '31', 'http://www.cqysxy.com/', '重庆市');
INSERT INTO `university` VALUES ('3493', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆轻工职业学院', '22', '31', 'http://www.cqivc.com/', '重庆市');
INSERT INTO `university` VALUES ('3494', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆电信职业学院', '22', '31', 'http://www.cqtcedu.com/', '重庆市');
INSERT INTO `university` VALUES ('3495', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆经贸职业学院', '22', '31', 'http://www.cqvcet.com/', '重庆市');
INSERT INTO `university` VALUES ('3496', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆幼儿师范高等31学校', '22', '31', 'http://www.cqsxsf.com/', '重庆市');
INSERT INTO `university` VALUES ('3497', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆文化艺术职业学院', '22', '31', 'http://www.cqyixiao.com/', '重庆市');
INSERT INTO `university` VALUES ('3498', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆科技职业学院', '22', '31', 'http://www.cqfzgc.com/', '重庆市');
INSERT INTO `university` VALUES ('3499', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '重庆资源与环境保护职业学院', '22', '31', 'http://www.cqcjxy.com/', '重庆市');
INSERT INTO `university` VALUES ('3500', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川大学', '23', '32', 'http://www.scu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3501', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南交通大学', '23', '32', 'http://www.swjtu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3502', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '电子科技大学', '23', '32', 'http://www.uestc.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3503', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南石油大学', '23', '32', 'http://www.swpu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3504', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都理工大学', '23', '32', 'http://www.cdut.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3505', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南科技大学', '23', '32', 'http://www.swust.edu.cn/', '绵阳市');
INSERT INTO `university` VALUES ('3506', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都信息工程大学', '23', '32', 'http://www.cuit.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3507', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川理工学院', '23', '32', 'http://www.suse.edu.cn/', '自贡市');
INSERT INTO `university` VALUES ('3508', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西华大学', '23', '32', 'http://www.xhu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3509', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国民用航空飞行学院', '23', '32', 'http://www.cafuc.edu.cn/', '广汉市');
INSERT INTO `university` VALUES ('3510', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川农业大学', '23', '32', 'http://www.sicau.edu.cn/', '雅安市');
INSERT INTO `university` VALUES ('3511', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西昌学院', '23', '32', 'http://www.xcc.sc.cn/', '西昌市');
INSERT INTO `university` VALUES ('3512', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南医科大学', '23', '32', 'http://www.scmu.edu.cn/', '泸州市');
INSERT INTO `university` VALUES ('3513', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都中医药大学', '23', '32', 'http://www.cdutcm.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3514', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '川北医学院', '23', '32', 'http://www.nsmc.edu.cn/', '南充市');
INSERT INTO `university` VALUES ('3515', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川师范大学', '23', '32', 'http://www.sicnu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3516', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西华师范大学', '23', '32', 'http://www.cwnu.edu.cn/', '南充市');
INSERT INTO `university` VALUES ('3517', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '绵阳师范学院', '23', '32', 'http://www.mytc.edu.cn/', '绵阳市');
INSERT INTO `university` VALUES ('3518', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内江师范学院', '23', '32', 'http://www.njtc.edu.cn/', '内江市');
INSERT INTO `university` VALUES ('3519', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宜宾学院', '23', '32', 'http://www.yibinu.cn/', '宜宾市');
INSERT INTO `university` VALUES ('3520', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川文理学院', '23', '32', 'http://www.sasu.edu.cn/', '达州市');
INSERT INTO `university` VALUES ('3521', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阿坝师范学院', '23', '32', 'http://www.abtc.edu.cn/', '汶川县');
INSERT INTO `university` VALUES ('3522', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '乐山师范学院', '23', '32', 'http://www.lstc.edu.cn/', '乐山市');
INSERT INTO `university` VALUES ('3523', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南财经大学', '23', '32', 'http://www.swufe.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3524', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都体育学院', '23', '32', 'http://www.cdsu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3525', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川音乐学院', '23', '32', 'http://www.sccm.cn/', '成都市');
INSERT INTO `university` VALUES ('3526', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南民族大学', '23', '32', 'http://www.swun.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3527', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都学院', '23', '32', 'http://www.cdu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3528', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都工业学院', '23', '32', 'http://www.cdtu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3529', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '攀枝花学院', '23', '32', 'http://www.pzhu.edu.cn/', '攀枝花');
INSERT INTO `university` VALUES ('3530', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川旅游学院', '23', '32', 'http://www.sctu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3531', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川民族学院', '23', '32', 'http://www.scun.edu.cn/', '康定市');
INSERT INTO `university` VALUES ('3532', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川警察学院', '23', '32', 'http://www.scpolicec.com/', '泸州市');
INSERT INTO `university` VALUES ('3533', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都东软学院', '23', '32', 'http://www.nsu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3534', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '电子科技大学成都学院', '23', '32', 'http://www.gtsoft.com.cn/', '成都市');
INSERT INTO `university` VALUES ('3535', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都理工大学工程技术学院', '23', '32', 'http://www.cdutetc.cn/', '乐山市');
INSERT INTO `university` VALUES ('3536', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川传媒学院', '23', '32', 'http://www.scmc.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3537', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都信息工程大学银杏酒店管理学院', '23', '32', 'http://www.yihms.com/', '成都市');
INSERT INTO `university` VALUES ('3538', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都文理学院', '23', '32', 'http://www.cdcas.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3539', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川工商学院', '23', '32', 'http://www.stbu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3540', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川外国语大学成都学院', '23', '32', 'http://www.cisisu.edu.cn/', '都江堰');
INSERT INTO `university` VALUES ('3541', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都医学院', '23', '32', 'http://www.cmc.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3542', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川工业科技学院', '23', '32', 'http://www.scit.cn/', '德阳市');
INSERT INTO `university` VALUES ('3543', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川大学锦城学院', '23', '32', 'http://www.scujcc.com.cn/', '成都市');
INSERT INTO `university` VALUES ('3544', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南财经大学天府学院', '23', '32', 'http://www.tf-swufe.net/', '绵阳市');
INSERT INTO `university` VALUES ('3545', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川大学锦江学院', '23', '32', 'http://www.scujj.com/', '成都市');
INSERT INTO `university` VALUES ('3546', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川文化艺术学院', '23', '32', 'http://www.cymy.edu.cn/', '绵阳市');
INSERT INTO `university` VALUES ('3547', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南科技大学城市学院', '23', '32', 'http://www.ccswust.com.cn/', '绵阳市');
INSERT INTO `university` VALUES ('3548', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南交通大学希望学院', '23', '32', 'http://www.swjtuhc.cn/', '南充市');
INSERT INTO `university` VALUES ('3549', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都师范学院', '23', '32', 'http://www.cdnu.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3550', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川电影电视学院', '23', '32', 'http://www.scftvc.com/', '成都市');
INSERT INTO `university` VALUES ('3551', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都纺织高等31学校', '23', '31', 'http://www.cdtc.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3552', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '民办四川天一学院', '23', '31', 'http://www.tianyi.org/', '成都市');
INSERT INTO `university` VALUES ('3553', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都航空职业技术学院', '23', '31', 'http://www.cdavtc.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3554', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川电力职业技术学院', '23', '31', 'http://www.scdy.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3555', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都职业技术学院', '23', '31', 'http://www.cdvtc.com/', '成都市');
INSERT INTO `university` VALUES ('3556', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川化工职业技术学院', '23', '31', 'http://www.sccvtc.cn/', '泸州市');
INSERT INTO `university` VALUES ('3557', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川水利职业技术学院', '23', '31', 'http://www.swcvc.net.cn/', '成都市');
INSERT INTO `university` VALUES ('3558', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '南充职业技术学院', '23', '31', 'http://www.nczy.com/', '南充市');
INSERT INTO `university` VALUES ('3559', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '内江职业技术学院', '23', '31', 'http://www.njvtc.cn/', '内江市');
INSERT INTO `university` VALUES ('3560', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川航天职业技术学院', '23', '31', 'http://www.sacvt.com/', '成都市');
INSERT INTO `university` VALUES ('3561', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川邮电职业技术学院', '23', '31', 'http://www.sptpc.com/', '成都市');
INSERT INTO `university` VALUES ('3562', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川机电职业技术学院', '23', '31', 'http://www.scemi.com/', '攀枝花市');
INSERT INTO `university` VALUES ('3563', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '绵阳职业技术学院', '23', '31', 'http://www.myvtc.edu.cn/', '绵阳市');
INSERT INTO `university` VALUES ('3564', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川交通职业技术学院', '23', '31', 'http://www.svtcc.net/', '成都市');
INSERT INTO `university` VALUES ('3565', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川工商职业技术学院', '23', '31', 'http://www.sctbc.net/', '都江堰');
INSERT INTO `university` VALUES ('3566', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川工程职业技术学院', '23', '31', 'http://www.scetc.net/', '德阳市');
INSERT INTO `university` VALUES ('3567', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川建筑职业技术学院', '23', '31', 'http://www.scatc.net/', '德阳市');
INSERT INTO `university` VALUES ('3568', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '达州职业技术学院', '23', '31', 'http://www.dzzjy.com/', '达州市');
INSERT INTO `university` VALUES ('3569', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川托普信息技术职业学院', '23', '31', 'http://www.scetop.com/', '成都市');
INSERT INTO `university` VALUES ('3570', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川国际标榜职业学院', '23', '31', 'http://www.polus.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3571', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都农业科技职业学院', '23', '31', 'http://www.cdnkxy.com/', '成都市');
INSERT INTO `university` VALUES ('3572', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宜宾职业技术学院', '23', '31', 'http://www.ybzy.cn/', '宜宾市');
INSERT INTO `university` VALUES ('3573', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '泸州职业技术学院', '23', '31', 'http://www.lzy.edu.cn/', '泸州市');
INSERT INTO `university` VALUES ('3574', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '眉山职业技术学院', '23', '31', 'http://www.msvtc.net/', '眉山市');
INSERT INTO `university` VALUES ('3575', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都艺术职业学院', '23', '31', 'http://www.cdartpro.cn/', '成都市');
INSERT INTO `university` VALUES ('3576', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川职业技术学院', '23', '31', 'http://www.scvtc.com/', '遂宁市');
INSERT INTO `university` VALUES ('3577', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '乐山职业技术学院', '23', '31', 'http://www.lszyxy.com/', '乐山市');
INSERT INTO `university` VALUES ('3578', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '雅安职业技术学院', '23', '31', 'http://www.yazjy.com/', '雅安市');
INSERT INTO `university` VALUES ('3579', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川商务职业学院', '23', '31', 'http://www.scsw.net.cn/', '成都市');
INSERT INTO `university` VALUES ('3580', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川司法警官职业学院', '23', '31', 'http://www.sjpopc.net/', '德阳市');
INSERT INTO `university` VALUES ('3581', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '广安职业技术学院', '23', '31', 'http://www.gavtc.cn/', '广安市');
INSERT INTO `university` VALUES ('3582', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川信息职业技术学院', '23', '31', 'http://www.scitc.com.cn/', '广元市');
INSERT INTO `university` VALUES ('3583', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川文化传媒职业学院', '23', '31', 'http://www.svccc.net/', '成都市');
INSERT INTO `university` VALUES ('3584', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川华新现代职业学院', '23', '31', 'http://www.schxmvc.com.cn/', '成都市');
INSERT INTO `university` VALUES ('3585', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川管理职业学院', '23', '31', 'http://www.scmpi.cn/', '成都市');
INSERT INTO `university` VALUES ('3586', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川艺术职业学院', '23', '31', 'http://www.scapi.cn/', '成都市');
INSERT INTO `university` VALUES ('3587', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川中医药高等31学校', '23', '31', 'http://www.scctcm.cn/', '绵阳市');
INSERT INTO `university` VALUES ('3588', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川科技职业学院', '23', '31', 'http://www.scstc.cn/', '成都市');
INSERT INTO `university` VALUES ('3589', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川文化产业职业学院', '23', '31', 'http://www.scvcci.cn/', '成都市');
INSERT INTO `university` VALUES ('3590', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川财经职业学院', '23', '31', 'http://www.scpcfe.cn/', '成都市');
INSERT INTO `university` VALUES ('3591', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川城市职业学院', '23', '31', 'http://www.scuvc.com/', '成都市');
INSERT INTO `university` VALUES ('3592', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川现代职业学院', '23', '31', 'http://www.scmvc.cn/', '成都市');
INSERT INTO `university` VALUES ('3593', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川幼儿师范高等31学校', '23', '31', 'http://www.scyesz.edu.cn/', '绵阳市');
INSERT INTO `university` VALUES ('3594', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川长江职业学院', '23', '31', 'http://www.sccvc.com/', '成都市');
INSERT INTO `university` VALUES ('3595', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川三河职业学院', '23', '31', 'http://www.scshpc.com/', '泸州市');
INSERT INTO `university` VALUES ('3596', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '川北幼儿师范高等31学校', '23', '31', 'http://www.gysfxx.com.cn/', '广元市');
INSERT INTO `university` VALUES ('3597', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川卫生康复职业学院', '23', '31', 'http://www.sczghs.com/', '自贡市');
INSERT INTO `university` VALUES ('3598', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川汽车职业技术学院', '23', '31', 'http://www.scavtc.com/', '绵阳市');
INSERT INTO `university` VALUES ('3599', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '巴中职业技术学院', '23', '31', 'http://www.bzzyjsxy.cn/', '巴中市');
INSERT INTO `university` VALUES ('3600', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川希望汽车职业学院', '23', '31', 'http://www.qicheedu.com/', '资阳市');
INSERT INTO `university` VALUES ('3601', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川电子机械职业技术学院', '23', '31', 'http://www.scemvtc.com/', '绵阳市');
INSERT INTO `university` VALUES ('3602', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川文轩职业学院', '23', '31', 'http://www.scztjy.cn/', '成都市');
INSERT INTO `university` VALUES ('3603', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '川南幼儿师范31学校', '23', '31', 'http://www.sclcys.com/', '隆昌县');
INSERT INTO `university` VALUES ('3604', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川护理职业学院', '23', '31', 'http://www.scswx.com/', '成都市');
INSERT INTO `university` VALUES ('3605', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都工业职业技术学院', '23', '31', 'http://www.cdivtc.com.cn/', '成都市');
INSERT INTO `university` VALUES ('3606', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川西南航空职业学院', '23', '31', 'http://www.xnhkxy.edu.cn/', '成都市');
INSERT INTO `university` VALUES ('3607', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '成都工贸职业技术学院', '23', '31', 'http://www.cdgmxy.com/', '成都市');
INSERT INTO `university` VALUES ('3608', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '四川应用技术职业学院', '23', '31', 'http://www.sccas.net/', '西昌市');
INSERT INTO `university` VALUES ('3609', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州大学', '24', '32', 'http://www.gzu.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3610', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州医科大学', '24', '32', 'http://www.gmc.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3611', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '遵义医学院', '24', '32', 'http://www.zmc.edu.cn/', '遵义市');
INSERT INTO `university` VALUES ('3612', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵阳中医学院', '24', '32', 'http://www.gyctcm.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3613', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州师范大学', '24', '32', 'http://www.gznu.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3614', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '遵义师范学院', '24', '32', 'http://www.zync.edu.cn/', '遵义市');
INSERT INTO `university` VALUES ('3615', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '铜仁学院', '24', '32', 'http://www.gztrc.edu.cn/', '铜仁市');
INSERT INTO `university` VALUES ('3616', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兴义民族师范学院', '24', '32', 'http://www.qxntc.edu.cn/', '兴义市');
INSERT INTO `university` VALUES ('3617', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安顺学院', '24', '32', 'http://www.asu.edu.cn/', '安顺市');
INSERT INTO `university` VALUES ('3618', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州工程应用技术学院', '24', '32', 'http://www.gues.edu.cn/', '毕节市');
INSERT INTO `university` VALUES ('3619', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '凯里学院', '24', '32', 'http://www.kluniv.cn/', '凯里市');
INSERT INTO `university` VALUES ('3620', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黔南民族师范学院', '24', '32', 'http://www.sgmtu.edu.cn/', '都匀市');
INSERT INTO `university` VALUES ('3621', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州财经大学', '24', '32', 'http://www.gzife.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3622', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州民族大学', '24', '32', 'http://www.gzmu.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3623', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵阳学院', '24', '32', 'http://www.gyu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3624', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '六盘水师范学院', '24', '32', 'http://www.lpssy.edu.cn/', '六盘水市');
INSERT INTO `university` VALUES ('3625', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州商学院', '24', '32', 'http://www.gzcc.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3626', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州警察学院', '24', '32', 'http://www.gzjgxy.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3627', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州财经学院商务学院', '24', '32', 'http://portal.gzife.edu.cn/com', '贵阳市');
INSERT INTO `university` VALUES ('3628', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州大学科技学院', '24', '32', 'http://cst.gzu.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3629', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州大学明德学院', '24', '32', 'http://mdc.gzu.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3630', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州民族学院人文科技学院', '24', '32', 'http://www.gzmyrw.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3631', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州师范大学求是学院', '24', '32', 'http://qsxy.gznu.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3632', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '遵义医学院医学与科技学院', '24', '32', 'http://kj.zmc.edu.cn/', '遵义市');
INSERT INTO `university` VALUES ('3633', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵阳医学院神奇民族医药学院', '24', '32', 'http://sqxy.gmc.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3634', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州师范学院', '24', '32', 'http://www.gznc.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3635', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州理工学院', '24', '32', 'http://www.git.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3636', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '茅台学院', '24', '32', 'http://www.mtxy.cn/', '遵义市');
INSERT INTO `university` VALUES ('3637', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黔南民族医学高等31学校', '24', '31', 'http://www.qnmc.cn/', '都匀市');
INSERT INTO `university` VALUES ('3638', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州交通职业技术学院', '24', '31', 'http://www.gzjtzy.net/', '贵阳市');
INSERT INTO `university` VALUES ('3639', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州航天职业技术学院', '24', '31', 'http://www.gzhtzy.com/', '遵义市');
INSERT INTO `university` VALUES ('3640', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州电子信息职业技术学院', '24', '31', 'http://www.gzeic.com/', '凯里市');
INSERT INTO `university` VALUES ('3641', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安顺职业技术学院', '24', '31', 'http://www.asotc.cn/', '安顺市');
INSERT INTO `university` VALUES ('3642', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黔东南民族职业技术学院', '24', '31', 'http://www.qdnpt.com/', '凯里市');
INSERT INTO `university` VALUES ('3643', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黔南民族职业技术学院', '24', '31', 'http://www.qnzy.net/', '都匀市');
INSERT INTO `university` VALUES ('3644', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '遵义职业技术学院', '24', '31', 'http://www.zyzy.gov.cn/', '遵义市');
INSERT INTO `university` VALUES ('3645', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州城市职业学院', '24', '31', 'http://www.cityp.net/', '贵阳市');
INSERT INTO `university` VALUES ('3646', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州工业职业技术学院', '24', '31', 'http://www.gzky.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3647', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州电力职业技术学院', '24', '31', 'http://www.csgedu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3648', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '六盘水职业技术学院', '24', '31', 'http://www.lpszy.cn/', '六盘水市');
INSERT INTO `university` VALUES ('3649', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '铜仁职业技术学院', '24', '31', 'http://www.trzy.cn/', '铜仁市');
INSERT INTO `university` VALUES ('3650', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黔西南民族职业技术学院', '24', '31', 'http://www.qxnzy.net/', '兴义市');
INSERT INTO `university` VALUES ('3651', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州轻工职业技术学院', '24', '31', 'http://www.gzqy.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3652', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '遵义医药高等31学校', '24', '31', 'http://www.zunyiyizhuan.com/', '遵义市');
INSERT INTO `university` VALUES ('3653', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵阳护理职业学院', '24', '31', 'http://www.gynvc.edu.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3654', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵阳职业技术学院', '24', '31', 'http://www.gyvtc.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3655', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '毕节职业技术学院', '24', '31', 'http://www.gzbjzy.edu.cn/', '毕节市');
INSERT INTO `university` VALUES ('3656', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州职业技术学院', '24', '31', 'http://www.gzvti.com/', '贵阳市');
INSERT INTO `university` VALUES ('3657', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州盛华职业学院', '24', '31', 'http://www.forerunnercollege.c', '惠水县');
INSERT INTO `university` VALUES ('3658', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州工商职业学院', '24', '31', 'http://www.gzgszy.com/', '贵阳市');
INSERT INTO `university` VALUES ('3659', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵阳幼儿师范高等31学校', '24', '31', 'http://www.gyys.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3660', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '铜仁幼儿师范高等31学校', '24', '31', 'http://www.gzsnsf.cn/', '思南县');
INSERT INTO `university` VALUES ('3661', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '黔南民族幼儿师范高等31学校', '24', '31', 'http://www.gdsf.com.cn/', '贵定县');
INSERT INTO `university` VALUES ('3662', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '毕节医学高等31学校', '24', '31', 'http://www.qxnzy.net/', '毕节市');
INSERT INTO `university` VALUES ('3663', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州建设职业技术学院', '24', '31', 'http://www.gzsjsxx.cn/', '贵阳市');
INSERT INTO `university` VALUES ('3664', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '毕节幼儿师范高等31学校', '24', '31', 'http://www.gzbjyz.com/', '毕节市');
INSERT INTO `university` VALUES ('3665', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州农业职业学院', '24', '31', 'http://www.gznzy.net/', '贵阳市');
INSERT INTO `university` VALUES ('3666', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州工程职业学院', '24', '31', 'http://www.gzieu.com/', '铜仁市');
INSERT INTO `university` VALUES ('3667', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州工贸职业学院', '24', '31', 'http://www.gzgmzyxy.com/', '毕节市');
INSERT INTO `university` VALUES ('3668', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州应用技术职业学院', '24', '31', 'http://www.gzyyxy.com/', '福泉市');
INSERT INTO `university` VALUES ('3669', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州电子科技职业学院', '24', '31', 'http://www.gzkzy.top/', '贵阳市');
INSERT INTO `university` VALUES ('3670', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '贵州健康职业学院', '24', '31', 'http://www.gzjkzy.com/', '铜仁市');
INSERT INTO `university` VALUES ('3671', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南大学', '25', '32', 'http://www.ynu.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3672', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆明理工大学', '25', '32', 'http://www.kmust.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3673', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南农业大学', '25', '32', 'http://www.ynau.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3674', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西南林业大学', '25', '32', 'http://www.swfc.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3675', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆明医科大学', '25', '32', 'http://www.kmmc.cn/', '昆明市');
INSERT INTO `university` VALUES ('3676', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大理大学', '25', '32', 'http://www.dali.edu.cn/', '大理市');
INSERT INTO `university` VALUES ('3677', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南中医学院', '25', '32', 'http://www.ynutcm.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3678', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南师范大学', '25', '32', 'http://www.ynnu.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3679', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昭通学院', '25', '32', 'http://www.zttc.edu.cn/', '昭通市');
INSERT INTO `university` VALUES ('3680', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '曲靖师范学院', '25', '32', 'http://www.qjnu.edu.cn/', '曲靖市');
INSERT INTO `university` VALUES ('3681', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '普洱学院', '25', '32', 'http://www.peuni.cn/', '普洱市');
INSERT INTO `university` VALUES ('3682', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '保山学院', '25', '32', 'http://www.bsnc.cn/', '保山市');
INSERT INTO `university` VALUES ('3683', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '红河学院', '25', '32', 'http://www.uoh.edu.cn/', '蒙自市');
INSERT INTO `university` VALUES ('3684', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南财经大学', '25', '32', 'http://www.ynufe.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3685', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南艺术学院', '25', '32', 'http://www.ynart.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3686', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南民族大学', '25', '32', 'http://www.ynni.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3687', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '玉溪师范学院', '25', '32', 'http://www.yxnu.net/', '玉溪市');
INSERT INTO `university` VALUES ('3688', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '楚雄师范学院', '25', '32', 'http://www.cxtc.net.cn/', '楚雄市');
INSERT INTO `university` VALUES ('3689', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南警官学院', '25', '32', 'http://www.yn-psnc.com/', '昆明市');
INSERT INTO `university` VALUES ('3690', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆明学院', '25', '32', 'http://www.kmu.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3691', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '文山学院', '25', '32', 'http://www.wstc.net/', '文山市');
INSERT INTO `university` VALUES ('3692', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南经济管理学院', '25', '32', 'http://www.ynjgx.com/', '昆明市');
INSERT INTO `university` VALUES ('3693', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南大学滇池学院', '25', '32', 'http://dcxy.ynu.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3694', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南大学旅游文化学院', '25', '32', 'http://www.lywhxy.com/', '丽江市');
INSERT INTO `university` VALUES ('3695', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆明理工大学津桥学院', '25', '32', 'http://www.oxbridge.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3696', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南师范大学商学院', '25', '32', 'http://www.ynnubs.com/', '昆明市');
INSERT INTO `university` VALUES ('3697', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南师范大学文理学院', '25', '32', 'http://www.ysdwl.cn/', '昆明市');
INSERT INTO `university` VALUES ('3698', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆明医学院海源学院', '25', '32', 'http://www.kyhyxy.com/', '昆明市');
INSERT INTO `university` VALUES ('3699', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南艺术学院文华学院', '25', '32', 'http://whxy.ynart.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3700', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南工商学院', '25', '32', 'http://www.yngsxy.net/', '昆明市');
INSERT INTO `university` VALUES ('3701', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '滇西科技师范学院', '25', '32', 'http://www.dxstnu.edu.cn/', '临沧市');
INSERT INTO `university` VALUES ('3702', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆明冶金高等31学校', '25', '31', 'http://www.kmyz.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3703', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南国土资源职业学院', '25', '31', 'http://www.yngtxy.net/', '昆明市');
INSERT INTO `university` VALUES ('3704', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南交通职业技术学院', '25', '31', 'http://www.yncs.edu.cn/', '昆明市');
INSERT INTO `university` VALUES ('3705', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆明工业职业技术学院', '25', '31', 'http://www.kmvtc.net/', '昆明市');
INSERT INTO `university` VALUES ('3706', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南农业职业技术学院', '25', '31', 'http://www.ynavc.com/', '昆明市');
INSERT INTO `university` VALUES ('3707', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南司法警官职业学院', '25', '31', 'http://www.yncpu.net/', '昆明市');
INSERT INTO `university` VALUES ('3708', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南文化艺术职业学院', '25', '31', 'http://www.ynarts.cn/', '昆明市');
INSERT INTO `university` VALUES ('3709', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南体育运动职业技术学院', '25', '31', 'http://www.ynasc.com/', '昆明市');
INSERT INTO `university` VALUES ('3710', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南科技信息职业学院', '25', '31', 'http://www.ynkexin.cn/', '昆明市');
INSERT INTO `university` VALUES ('3711', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西双版纳职业技术学院', '25', '31', 'http://www.xsbnzy.com/', '景洪市');
INSERT INTO `university` VALUES ('3712', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆明艺术职业学院', '25', '31', 'http://www.kmac.org.cn/', '昆明市');
INSERT INTO `university` VALUES ('3713', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '玉溪农业职业技术学院', '25', '31', 'http://www.yxnzy.net/', '玉溪市');
INSERT INTO `university` VALUES ('3714', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南能源职业技术学院', '25', '31', 'http://www.ynny.cn/', '曲靖市');
INSERT INTO `university` VALUES ('3715', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南国防工业职业技术学院', '25', '31', 'http://www.ynvtc.cn/', '昆明市');
INSERT INTO `university` VALUES ('3716', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南机电职业技术学院', '25', '31', 'http://www.ynmec.com/', '昆明市');
INSERT INTO `university` VALUES ('3717', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南林业职业技术学院', '25', '31', 'http://www.ynftc.cn/', '昆明市');
INSERT INTO `university` VALUES ('3718', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南城市建设职业学院', '25', '31', 'http://www.yncjxy.com/', '昆明市');
INSERT INTO `university` VALUES ('3719', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南工程职业学院', '25', '31', 'http://www.sailingedu.com/', '昆明市');
INSERT INTO `university` VALUES ('3720', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '曲靖医学高等31学校', '25', '31', 'http://www.qjyz.org/', '曲靖市');
INSERT INTO `university` VALUES ('3721', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '楚雄医药高等31学校', '25', '31', 'http://www.cxmtc.net/', '楚雄市');
INSERT INTO `university` VALUES ('3722', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '保山中医药高等31学校', '25', '31', 'http://www.bszyz.cn/', '保山市');
INSERT INTO `university` VALUES ('3723', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '丽江师范高等31学校', '25', '31', 'http://www.lj-edu.cn/', '丽江市');
INSERT INTO `university` VALUES ('3724', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '德宏师范高等31学校', '25', '31', 'http://www.yndhec.net/', '芒市');
INSERT INTO `university` VALUES ('3725', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南新兴职业学院', '25', '31', 'http://www.ynxzy.com/', '昆明市');
INSERT INTO `university` VALUES ('3726', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南锡业职业技术学院', '25', '31', 'http://www.ytvtc.com/', '个旧市');
INSERT INTO `university` VALUES ('3727', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南经贸外事职业学院', '25', '31', 'http://www.ynjw.net/', '昆明市');
INSERT INTO `university` VALUES ('3728', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南三鑫职业技术学院', '25', '31', 'http://www.ynsxzy.com/', '文山市');
INSERT INTO `university` VALUES ('3729', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '德宏职业学院', '25', '31', 'http://www.yndhvc.com/', '芒市');
INSERT INTO `university` VALUES ('3730', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南商务职业学院', '25', '31', 'http://www.ynswzyxy.com/', '昆明市');
INSERT INTO `university` VALUES ('3731', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昆明卫生职业学院', '25', '31', 'http://www.kmhpc.net/', '昆明市');
INSERT INTO `university` VALUES ('3732', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南现代职业技术学院', '25', '31', 'http://www.ynxd.net.cn/', '楚雄州');
INSERT INTO `university` VALUES ('3733', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南旅游职业学院', '25', '31', 'http://www.ynctv.com/', '昆明市');
INSERT INTO `university` VALUES ('3734', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '红河卫生职业学院', '25', '31', 'http://www.hhwx.org.cn/', '蒙自市');
INSERT INTO `university` VALUES ('3735', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南外事外语职业学院', '25', '31', 'http://www.fafl.cn/', '昆明市');
INSERT INTO `university` VALUES ('3736', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '大理农林职业技术学院', '25', '31', 'http://www.dlcaf.com/', '大理市');
INSERT INTO `university` VALUES ('3737', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南财经职业学院', '25', '31', 'http://www.ynczy.cn/', '昆明市');
INSERT INTO `university` VALUES ('3738', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南轻纺职业学院', '25', '31', 'http://www.ynqgx.cn/', '昆明市');
INSERT INTO `university` VALUES ('3739', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '云南交通运输职业学院', '25', '31', 'http://www.ynvct.com/', '昆明市');
INSERT INTO `university` VALUES ('3740', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西藏大学', '26', '32', 'http://www.utibet.edu.cn/', '拉萨市');
INSERT INTO `university` VALUES ('3741', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西藏民族大学', '26', '32', 'http://www.xzmy.edu.cn/', '咸阳市');
INSERT INTO `university` VALUES ('3742', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西藏藏医学院', '26', '32', 'http://www.ttmc.edu.cn/', '拉萨市');
INSERT INTO `university` VALUES ('3743', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西藏农牧学院', '26', '32', 'http://www.xza.cn/', '林芝市');
INSERT INTO `university` VALUES ('3744', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西藏警官高等31学校', '26', '31', 'http://www.tpa.net.cn/', '拉萨市');
INSERT INTO `university` VALUES ('3745', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '拉萨师范高等31学校', '26', '31', 'http://www.xzlssf.org/', '拉萨市');
INSERT INTO `university` VALUES ('3746', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西藏职业技术学院', '26', '31', 'http://www.xzgzy.cn/', '拉萨市');
INSERT INTO `university` VALUES ('3747', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西北大学', '27', '32', 'http://www.nwu.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3748', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安交通大学', '27', '32', 'http://www.xjtu.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3749', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西北工业大学', '27', '32', 'http://www.nwpu.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3750', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安理工大学', '27', '32', 'http://www.xaut.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3751', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安电子科技大学', '27', '32', 'http://www.xidian.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3752', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安工业大学', '27', '32', 'http://www.xatu.cn/', '西安市');
INSERT INTO `university` VALUES ('3753', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安建筑科技大学', '27', '32', 'http://www.xauat.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3754', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安科技大学', '27', '32', 'http://www.xust.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3755', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安石油大学', '27', '32', 'http://www.xapi.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3756', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西科技大学', '27', '32', 'http://www.sust.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3757', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安工程大学', '27', '32', 'http://www.xpu.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3758', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长安大学', '27', '32', 'http://www.chd.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3759', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西北农林科技大学', '27', '32', 'http://www.nwsuaf.edu.cn/', '杨凌');
INSERT INTO `university` VALUES ('3760', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西中医药大学', '27', '32', 'http://www.sntcm.edu.cn/', '咸阳市');
INSERT INTO `university` VALUES ('3761', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西师范大学', '27', '32', 'http://www.snnu.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3762', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '延安大学', '27', '32', 'http://www.yau.edu.cn/', '延安市');
INSERT INTO `university` VALUES ('3763', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西理工大学', '27', '32', 'http://www.snut.edu.cn/', '汉中市');
INSERT INTO `university` VALUES ('3764', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宝鸡文理学院', '27', '32', 'http://www.bjwlxy.edu.cn/', '宝鸡市');
INSERT INTO `university` VALUES ('3765', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '咸阳师范学院', '27', '32', 'http://www.xysfxy.cn/', '咸阳市');
INSERT INTO `university` VALUES ('3766', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '渭南师范学院', '27', '32', 'http://www.wntc.edu.cn/', '渭南市');
INSERT INTO `university` VALUES ('3767', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安外国语大学', '27', '32', 'http://www.xisu.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3768', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西北政法大学', '27', '32', 'http://www.nwupl.cn/', '西安市');
INSERT INTO `university` VALUES ('3769', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安体育学院', '27', '32', 'http://www.xaipe.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3770', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安音乐学院', '27', '32', 'http://www.xacom.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3771', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安美术学院', '27', '32', 'http://www.xafa.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3772', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安文理学院', '27', '32', 'http://www.xawl.org/', '西安市');
INSERT INTO `university` VALUES ('3773', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '榆林学院', '27', '32', 'http://www.yulinu.edu.cn/', '榆林市');
INSERT INTO `university` VALUES ('3774', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '商洛学院', '27', '32', 'http://www.slxy.cn/', '商洛市');
INSERT INTO `university` VALUES ('3775', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安康学院', '27', '32', 'http://www.aku.edu.cn/', '安康市');
INSERT INTO `university` VALUES ('3776', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安培华学院', '27', '32', 'http://www.peihua.cn/', '西安市');
INSERT INTO `university` VALUES ('3777', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安财经学院', '27', '32', 'http://www.xaufe.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3778', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安邮电大学', '27', '32', 'http://www.xiyou.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3779', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安航空学院', '27', '31', 'http://www.xaau.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3780', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安医学院', '27', '32', 'http://www.xiyi.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3781', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安欧亚学院', '27', '32', 'http://www.eurasia.edu/', '西安市');
INSERT INTO `university` VALUES ('3782', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安外事学院', '27', '32', 'http://www.xaiu.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3783', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安翻译学院', '27', '32', 'http://www.xafy.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3784', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西京学院', '27', '32', 'http://www.xijing.com.cn/', '西安市');
INSERT INTO `university` VALUES ('3785', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安思源学院', '27', '32', 'http://www.xasyu.cn/', '西安市');
INSERT INTO `university` VALUES ('3786', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西国际商贸学院', '27', '32', 'http://www.csiic.com/', '西安市');
INSERT INTO `university` VALUES ('3787', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西服装工程学院', '27', '32', 'http://www.sxfu.org/', '西安市');
INSERT INTO `university` VALUES ('3788', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安交通工程学院', '27', '32', 'http://www.xjgyedu.cn/', '西安市');
INSERT INTO `university` VALUES ('3789', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安交通大学城市学院', '27', '32', 'http://www.xjtucc.cn/', '西安市');
INSERT INTO `university` VALUES ('3790', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西北大学现代学院', '27', '32', 'http://www.xdxd.cn/', '西安市');
INSERT INTO `university` VALUES ('3791', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安建筑科技大学华清学院', '27', '32', 'http://www.xauat-hqc.com/', '西安市');
INSERT INTO `university` VALUES ('3792', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安财经学院行知学院', '27', '32', 'http://www.xcxz.com.cn/', '西安市');
INSERT INTO `university` VALUES ('3793', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西科技大学镐京学院', '27', '32', 'http://www.kdhj-edu.net/', '西安市');
INSERT INTO `university` VALUES ('3794', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安工业大学北方信息工程学院', '27', '32', 'http://www.bxait.cn/', '西安市');
INSERT INTO `university` VALUES ('3795', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '延安大学西安创新学院', '27', '32', 'http://www.xacxxy.com/', '西安市');
INSERT INTO `university` VALUES ('3796', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安电子科技大学长安学院', '27', '32', 'http://www.xdca.com.cn/', '西安市');
INSERT INTO `university` VALUES ('3797', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西北工业大学明德学院', '27', '32', 'http://www.npumd.cn/', '西安市');
INSERT INTO `university` VALUES ('3798', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '长安大学兴华学院', '27', '32', 'http://www.chdxhxy.com/', '西安市');
INSERT INTO `university` VALUES ('3799', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安理工大学高科学院', '27', '32', 'http://www.xthtc.com/', '西安市');
INSERT INTO `university` VALUES ('3800', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安科技大学高新学院', '27', '32', 'http://www.gaoxinedu.com/', '西安市');
INSERT INTO `university` VALUES ('3801', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西学前师范学院', '27', '32', 'http://www.snie.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3802', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西工业职业技术学院', '27', '31', 'http://www.sxpi.com.cn/', '咸阳市');
INSERT INTO `university` VALUES ('3803', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '杨凌职业技术学院', '27', '31', 'http://www.ylvtc.cn/', '杨凌市');
INSERT INTO `university` VALUES ('3804', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安电力高等31学校', '27', '31', 'http://www.xaepi.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3805', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西能源职业技术学院', '27', '31', 'http://www.sxny.cn/', '咸阳市');
INSERT INTO `university` VALUES ('3806', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西国防工业职业技术学院', '27', '31', 'http://www.gfxy.com/', '西安市');
INSERT INTO `university` VALUES ('3807', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安航空职业技术学院', '27', '31', 'http://www.xihang.com.cn/', '西安市');
INSERT INTO `university` VALUES ('3808', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西财经职业技术学院', '27', '31', 'http://www.sxptife.net/', '咸阳市');
INSERT INTO `university` VALUES ('3809', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西交通职业技术学院', '27', '31', 'http://www.scct.cn/', '西安市');
INSERT INTO `university` VALUES ('3810', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西职业技术学院', '27', '31', 'http://www.spvec.com.cn/', '西安市');
INSERT INTO `university` VALUES ('3811', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安高新科技职业学院', '27', '31', 'http://www.xhtu.com.cn/', '西安市');
INSERT INTO `university` VALUES ('3812', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安城市建设职业学院', '27', '31', 'http://www.xacsjsedu.com/', '西安市');
INSERT INTO `university` VALUES ('3813', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西铁路工程职业技术学院', '27', '31', 'http://www.sxri.net/', '渭南市');
INSERT INTO `university` VALUES ('3814', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宝鸡职业技术学院', '27', '31', 'http://www.bjvtc.com/', '宝鸡市');
INSERT INTO `university` VALUES ('3815', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西航空职业技术学院', '27', '31', 'http://www.sxhkxy.com/', '汉中市');
INSERT INTO `university` VALUES ('3816', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西电子信息职业技术学院', '27', '31', 'http://www.sxitu.com/', '西安市');
INSERT INTO `university` VALUES ('3817', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西邮电职业技术学院', '27', '31', 'http://www.sptc.sn.cn/', '西安市');
INSERT INTO `university` VALUES ('3818', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安海棠职业学院', '27', '31', 'http://www.xahtxy.cn/', '西安市');
INSERT INTO `university` VALUES ('3819', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安汽车科技职业学院', '27', '31', 'http://www.atc168.com/', '西安市');
INSERT INTO `university` VALUES ('3820', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安东方亚太职业技术学院', '27', '31', 'http://www.yt-edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3821', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西警官职业学院', '27', '31', 'http://www.sxjgxy.edu.cn/', '西安市');
INSERT INTO `university` VALUES ('3822', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西经济管理职业技术学院', '27', '31', 'http://www.sxjgy.com/', '西安市');
INSERT INTO `university` VALUES ('3823', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安铁路职业技术学院', '27', '31', 'http://www.xatzy.cn/', '西安市');
INSERT INTO `university` VALUES ('3824', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '咸阳职业技术学院', '27', '31', 'http://www.xianyangzhiyuan.cn/', '咸阳市');
INSERT INTO `university` VALUES ('3825', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安职业技术学院', '27', '31', 'http://www.xzyedu.com.cn/', '西安市');
INSERT INTO `university` VALUES ('3826', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '商洛职业技术学院', '27', '31', 'http://www.slzyjsxy.com/', '商洛市');
INSERT INTO `university` VALUES ('3827', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '汉中职业技术学院', '27', '31', 'http://www.hzvtc.cn/', '汉中市');
INSERT INTO `university` VALUES ('3828', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '延安职业技术学院', '27', '31', 'http://www.yapt.cn/', '延安市');
INSERT INTO `university` VALUES ('3829', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '渭南职业技术学院', '27', '31', 'http://www.wnzy.net/', '渭南市');
INSERT INTO `university` VALUES ('3830', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '安康职业技术学院', '27', '31', 'http://www.ak321.com/', '安康市');
INSERT INTO `university` VALUES ('3831', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '铜川职业技术学院', '27', '31', 'http://www.tczyxy.net/', '铜川市');
INSERT INTO `university` VALUES ('3832', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西青年职业学院', '27', '31', 'http://www.sxqzy.com/', '西安市');
INSERT INTO `university` VALUES ('3833', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西工商职业学院', '27', '31', 'http://www.snbcedu.cn/', '西安市');
INSERT INTO `university` VALUES ('3834', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西电子科技职业学院', '27', '31', 'http://www.sxetcedu.com/', '西安市');
INSERT INTO `university` VALUES ('3835', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西旅游烹饪职业学院', '27', '31', 'http://www.sntcc.cn/', '西安市');
INSERT INTO `university` VALUES ('3836', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西安医学高等31学校', '27', '31', 'http://www.xagdyz.com/', '西安市');
INSERT INTO `university` VALUES ('3837', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '榆林职业技术学院', '27', '31', 'http://www.yulinvtc.com.cn/', '榆林市');
INSERT INTO `university` VALUES ('3838', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西艺术职业学院', '27', '31', 'http://www.sxavc.com/', '西安市');
INSERT INTO `university` VALUES ('3839', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陕西机电职业技术学院', '27', '31', 'http://www.sxjdzy.cn/', '西安市');
INSERT INTO `university` VALUES ('3840', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州大学', '28', '32', 'http://www.lzu.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3841', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州理工大学', '28', '32', 'http://www.lut.cn/', '兰州市');
INSERT INTO `university` VALUES ('3842', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州交通大学', '28', '32', 'http://www.lzjtu.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3843', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃农业大学', '28', '32', 'http://www.gsau.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3844', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃中医药大学', '28', '32', 'http://www.gszy.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3845', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西北师范大学', '28', '32', 'http://www.nwnu.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3846', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州城市学院', '28', '32', 'http://www.lztc.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3847', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陇东学院', '28', '32', 'http://www.ldxy.edu.cn/', '庆阳市');
INSERT INTO `university` VALUES ('3848', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '天水师范学院', '28', '32', 'http://www.tsnc.edu.cn/', '天水市');
INSERT INTO `university` VALUES ('3849', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '河西学院', '28', '32', 'http://www.hxu.edu.cn/', '张掖市');
INSERT INTO `university` VALUES ('3850', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州财经大学', '28', '32', 'http://www.lzcc.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3851', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西北民族大学', '28', '32', 'http://www.xbmu.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3852', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃政法学院', '28', '32', 'http://www.gsli.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3853', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃民族师范学院', '28', '32', 'http://www.gnun.edu.cn/', '合作市');
INSERT INTO `university` VALUES ('3854', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州文理学院', '28', '32', 'http://www.luas.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3855', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃医学院', '28', '32', 'http://www.plmc.edu.cn/', '平凉市');
INSERT INTO `university` VALUES ('3856', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州工业学院', '28', '32', 'http://www.lzptc.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3857', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西北师范大学知行学院', '28', '32', 'http://zxxy.nwnu.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3858', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州商学院陇桥学院', '28', '32', 'http://www.lzlqc.com/', '兰州市');
INSERT INTO `university` VALUES ('3859', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州财经大学长青学院', '28', '32', 'http://changqing.lzcc.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3860', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州交通大学博文学院', '28', '32', 'http://www.bowenedu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3861', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州理工大学技术工程学院', '28', '32', 'http://www.lutcte.cn/', '兰州市');
INSERT INTO `university` VALUES ('3862', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州石化职业技术学院', '28', '31', 'http://www.lzpcc.com.cn/', '兰州市');
INSERT INTO `university` VALUES ('3863', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '陇南师范高等31学校', '28', '31', 'http://www.lntc.edu.cn/', '成县');
INSERT INTO `university` VALUES ('3864', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '定西师范高等31学校', '28', '31', 'http://www.dxatc.cn/', '定西市');
INSERT INTO `university` VALUES ('3865', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃建筑职业技术学院', '28', '31', 'http://www.gcvtc.gsedu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3866', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '酒泉职业技术学院', '28', '31', 'http://www.jqzy.com/', '酒泉市');
INSERT INTO `university` VALUES ('3867', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州外语职业学院', '28', '31', 'http://www.lzwyedu.com/', '兰州市');
INSERT INTO `university` VALUES ('3868', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州职业技术学院', '28', '31', 'http://www.lvu.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3869', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃警察职业学院', '28', '31', 'http://www.gs-police.com/', '兰州市');
INSERT INTO `university` VALUES ('3870', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃林业职业技术学院', '28', '31', 'http://www.gsfc.edu.cn/', '天水市');
INSERT INTO `university` VALUES ('3871', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃工业职业技术学院', '28', '31', 'http://www.gipc.edu.cn/', '天水市');
INSERT INTO `university` VALUES ('3872', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '武威职业学院', '28', '31', 'http://www.wwoc.cn/', '武威市');
INSERT INTO `university` VALUES ('3873', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃交通职业技术学院', '28', '31', 'http://www.gsjtxy.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3874', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州资源环境职业技术学院', '28', '31', 'http://www.lzre.edu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3875', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃农业职业技术学院', '28', '31', 'http://www.gscat.cn/', '兰州市');
INSERT INTO `university` VALUES ('3876', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃畜牧工程职业技术学院', '28', '31', 'http://www.xmgcxy.gsedu.cn/', '武威市');
INSERT INTO `university` VALUES ('3877', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃钢铁职业技术学院', '28', '31', 'http://www.ggzy.edu.cn/', '嘉峪关');
INSERT INTO `university` VALUES ('3878', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃机电职业技术学院', '28', '31', 'http://www.gsjdxy.com/', '天水市');
INSERT INTO `university` VALUES ('3879', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃有色冶金职业技术学院', '28', '31', 'http://www.gsysyj.edu.cn/', '金昌市');
INSERT INTO `university` VALUES ('3880', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '白银矿冶职业技术学院', '28', '31', 'http://www.bymu.cn/', '白银市');
INSERT INTO `university` VALUES ('3881', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃卫生职业学院', '28', '31', 'http://www.gswx.com.cn/', '兰州市');
INSERT INTO `university` VALUES ('3882', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '兰州科技职业学院', '28', '31', 'http://www.lzust.com/', '兰州市');
INSERT INTO `university` VALUES ('3883', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '庆阳职业技术学院', '28', '31', 'http://qyvtc.autocat.cn/', '庆阳市');
INSERT INTO `university` VALUES ('3884', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '平凉职业技术学院', '28', '31', 'http://www.plvtc.cn/', '临夏州');
INSERT INTO `university` VALUES ('3885', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '甘肃能源化工职业学院', '28', '31', 'http://www.gsnyedu.cn/', '兰州市');
INSERT INTO `university` VALUES ('3886', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海大学', '29', '32', 'http://www.qhu.edu.cn/', '西宁市');
INSERT INTO `university` VALUES ('3887', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海师范大学', '29', '32', 'http://www.qhnu.edu.cn/', '西宁市');
INSERT INTO `university` VALUES ('3888', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海民族大学', '29', '32', 'http://www.qhmu.edu.cn/', '西宁市');
INSERT INTO `university` VALUES ('3889', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海大学昆仑学院', '29', '31', 'http://klc.qhu.edu.cn/', '西宁市');
INSERT INTO `university` VALUES ('3890', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海卫生职业技术学院', '29', '31', 'http://www.qhwszy.edu.cn/', '西宁市');
INSERT INTO `university` VALUES ('3891', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海警官职业学院', '29', '31', 'http://www.qhjyedu.com/', '西宁市');
INSERT INTO `university` VALUES ('3892', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海畜牧兽医职业技术学院', '29', '31', 'http://www.qhxmzy.com.cn/', '西宁市');
INSERT INTO `university` VALUES ('3893', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海交通职业技术学院', '29', '31', 'http://www.qhctc.edu.cn/', '西宁市');
INSERT INTO `university` VALUES ('3894', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海建筑职业技术学院', '29', '31', 'http://www.qhavtc.com/', '西宁市');
INSERT INTO `university` VALUES ('3895', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '西宁城市职业技术学院', '29', '31', 'http://www.xncszy.com/', '西宁市');
INSERT INTO `university` VALUES ('3896', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海高等职业技术学院', '29', '31', 'http://www.qhgdzyjsxy.com/', '海东市');
INSERT INTO `university` VALUES ('3897', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '青海柴达木职业技术学院', '29', '31', 'http://61.133.238.121/', '海西州');
INSERT INTO `university` VALUES ('3898', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏大学', '30', '32', 'http://www.nxu.edu.cn/', '银川市');
INSERT INTO `university` VALUES ('3899', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏医科大学', '30', '32', 'http://www.nxmu.edu.cn/', '银川市');
INSERT INTO `university` VALUES ('3900', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏师范学院', '30', '32', 'http://www.nxtu.cn/', '固原市');
INSERT INTO `university` VALUES ('3901', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '北方民族大学', '30', '32', 'http://www.nwsni.edu.cn/', '银川市');
INSERT INTO `university` VALUES ('3902', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏理工学院', '30', '32', 'http://www.nxist.com/', '石嘴山');
INSERT INTO `university` VALUES ('3903', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏大学新华学院', '30', '32', 'http://xinhua.nxu.edu.cn/', '银川市');
INSERT INTO `university` VALUES ('3904', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '银川能源学院', '30', '32', 'http://www.ycu.com.cn/', '银川市');
INSERT INTO `university` VALUES ('3905', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '中国矿业大学银川学院', '30', '32', 'http://www.cumtyc.com.cn/', '银川市');
INSERT INTO `university` VALUES ('3906', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏民族职业技术学院', '30', '31', 'http://www.nxmzy.com.cn/', '吴忠市');
INSERT INTO `university` VALUES ('3907', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏工业职业学院', '30', '31', 'http://www.ngzy.nx.edu.cn/', '石嘴山市');
INSERT INTO `university` VALUES ('3908', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏职业技术学院', '30', '31', 'http://www.nxtc.edu.cn/', '银川市');
INSERT INTO `university` VALUES ('3909', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏工商职业技术学院', '30', '31', 'http://www.nxgs.edu.cn/', '银川市');
INSERT INTO `university` VALUES ('3910', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏财经职业技术学院', '30', '31', 'http://www.nxcy.edu.cn/', ' ');
INSERT INTO `university` VALUES ('3911', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏司法警官职业学院', '30', '31', 'http://www.nsjy.com.cn/', '银川市');
INSERT INTO `university` VALUES ('3912', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏建设职业技术学院', '30', '31', 'http://www.nxjy.edu.cn/', '银川市');
INSERT INTO `university` VALUES ('3913', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏葡萄酒与防沙治沙职业技术学院', '30', '31', 'http://www.nxfszs.com/', '银川市');
INSERT INTO `university` VALUES ('3914', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏幼儿师范高等31学校', '30', '31', 'http://www.nxysedu.com/', '银川市');
INSERT INTO `university` VALUES ('3915', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '宁夏艺术职业学院', '30', '31', 'http://www.nxyx.cn/', '银川市');
INSERT INTO `university` VALUES ('3916', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆大学', '31', '32', 'http://www.xju.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3917', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '塔里木大学', '31', '32', 'http://www.taru.edu.cn/', '阿拉尔市');
INSERT INTO `university` VALUES ('3918', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆农业大学', '31', '32', 'http://www.xjau.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3919', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石河子大学', '31', '32', 'http://www.shzu.edu.cn/', '石河子');
INSERT INTO `university` VALUES ('3920', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆医科大学', '31', '32', 'http://www.xjmu.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3921', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆师范大学', '31', '32', 'http://www.xjnu.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3922', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '喀什大学', '31', '32', 'http://www.ksu.edu.cn/', '喀什市');
INSERT INTO `university` VALUES ('3923', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '伊犁师范学院', '31', '32', 'http://www.ylsy.edu.cn/', '伊宁市');
INSERT INTO `university` VALUES ('3924', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆财经大学', '31', '32', 'http://www.xjufe.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3925', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆艺术学院', '31', '32', 'http://www.xjart.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3926', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆工程学院', '31', '32', 'http://www.xjie.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3927', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昌吉学院', '31', '32', 'http://www.cjc.edu.cn/', '昌吉市');
INSERT INTO `university` VALUES ('3928', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆警察学院', '31', '32', 'http://www.xjjz.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3929', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆大学科学技术学院', '31', '32', 'http://www.kj.xju.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3930', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆农业大学科学技术学院', '31', '32', 'http://www.xjstc.net/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3931', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆医科大学厚博学院', '31', '32', 'http://www1.xjmu.edu.cn/hbxy/i', '乌鲁木齐');
INSERT INTO `university` VALUES ('3932', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆财经大学商务学院', '31', '32', 'http://www.swxyzsw.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3933', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '石河子大学科技学院', '31', '32', 'http://kjxy.shzu.edu.cn/struct', '石河子市');
INSERT INTO `university` VALUES ('3934', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '和田师范31学校', '31', '31', 'http://www.htszedu.cn/', '和田市');
INSERT INTO `university` VALUES ('3935', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆农业职业技术学院', '31', '31', 'http://www.xjnzy.edu.cn/', '昌吉市');
INSERT INTO `university` VALUES ('3936', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '乌鲁木齐职业大学', '31', '31', 'http://www.uvu.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3937', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆维吾尔医学31学校', '31', '31', 'http://www.xjumc.com/', '和田市');
INSERT INTO `university` VALUES ('3938', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '克拉玛依职业技术学院', '31', '31', 'http://www.kzjsxy.net/', '克拉玛依');
INSERT INTO `university` VALUES ('3939', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆轻工职业技术学院', '31', '31', 'http://www.xjqg.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3940', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆能源职业技术学院', '31', '31', 'http://www.xjnyedu.com/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3941', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '昌吉职业技术学院', '31', '31', 'http://www.cjpt.cn/', '昌吉市');
INSERT INTO `university` VALUES ('3942', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '伊犁职业技术学院', '31', '31', 'http://www.ylzyjs.cn/', '伊宁市');
INSERT INTO `university` VALUES ('3943', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '阿克苏职业技术学院', '31', '31', 'http://www.akszy.com/', '阿克苏');
INSERT INTO `university` VALUES ('3944', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '巴音郭楞职业技术学院', '31', '31', 'http://www.xjbyxy.cn/', '库尔勒');
INSERT INTO `university` VALUES ('3945', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆建设职业技术学院', '31', '31', 'http://www.xjjszy.net/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3946', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆兵团警官高等31学校', '31', '31', 'http://www.xjbtjx.com/', '五家渠市');
INSERT INTO `university` VALUES ('3947', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆现代职业技术学院', '31', '31', 'http://www.xjxiandai.net/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3948', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆天山职业技术学院', '31', '31', 'http://www.xjtsxy.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3949', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆交通职业技术学院', '31', '31', 'http://www.xjjtedu.com/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3950', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆石河子职业技术学院', '31', '31', 'http://www.xjshzzy.com/', '石河子');
INSERT INTO `university` VALUES ('3951', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆职业大学', '31', '31', 'http://www.xjvu.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3952', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆体育职业技术学院', '31', '31', 'http://www.xjsvtc.com/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3953', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆应用职业技术学院', '31', '31', 'http://www.xjyy.edu.cn/', '奎屯市');
INSERT INTO `university` VALUES ('3954', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆师范高等31学校', '31', '31', 'http://www.xjei.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3955', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆铁道职业技术学院', '31', '31', 'http://www.xjtzy.net/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3956', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆生产建设兵团兴新职业技术学院', '31', '31', 'http://www.btc.edu.cn/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3957', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '哈密职业技术学院', '31', '31', 'http://www.hmzyjsxx.cn/', '哈密市');
INSERT INTO `university` VALUES ('3958', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '新疆科技职业技术学院', '31', '31', 'http://www.xjkjzyjsxy.com/', '乌鲁木齐');
INSERT INTO `university` VALUES ('3959', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '香港中文大学', '32', '32', 'http://www.cuhk.edu.hk/', '香港');
INSERT INTO `university` VALUES ('3960', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '澳门大学', '33', '32', 'http://www.umac.mo/', '澳门');
INSERT INTO `university` VALUES ('3961', '2018-03-12 13:47:35', '2018-03-12 13:47:35', '台湾中央大学', '34', '32', 'http://www.ncu.edu.tw/', '台湾');

-- ----------------------------
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `user_name` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `user_password` char(32) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `question` varchar(63) COLLATE utf8_bin DEFAULT NULL COMMENT '密保问题',
  `answer` char(32) COLLATE utf8_bin DEFAULT NULL COMMENT '密保答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户账户表';

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('1', '2018-05-01 18:25:12', '2018-05-01 18:25:14', 'Monicase', 'E10ADC3949BA59ABBE56E057F20F883E', '测试问题', '607BC3260580B9E865BF0B6D783C5A06');
INSERT INTO `user_account` VALUES ('2', '2018-05-16 16:58:10', '2018-05-16 16:58:10', 'mengmeng', 'E10ADC3949BA59ABBE56E057F20F883E', null, null);
INSERT INTO `user_account` VALUES ('3', '2018-05-16 17:29:16', '2018-05-18 10:08:55', '王铖权', 'E10ADC3949BA59ABBE56E057F20F883E', null, null);
INSERT INTO `user_account` VALUES ('4', '2018-05-18 23:23:24', '2018-05-19 01:23:19', 'tk520zhuzhu', 'E10ADC3949BA59ABBE56E057F20F883E', null, null);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号-自增',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `real_name` varchar(31) COLLATE utf8_bin DEFAULT NULL COMMENT '真实姓名',
  `cell_phone` char(11) COLLATE utf8_bin NOT NULL COMMENT '手机',
  `email` varchar(63) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1 表示是，0 表示否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '2018-05-01 18:24:00', '2018-05-01 18:24:03', '唐胜雨', '13647696666', '3035934631@qq.com', '0');
INSERT INTO `user_info` VALUES ('2', '2018-05-16 16:58:10', '2018-05-16 16:58:10', 'mengmeng', '18983547071', '3035934631@qq.com', '0');
INSERT INTO `user_info` VALUES ('3', '2018-05-16 17:29:16', '2018-05-16 17:29:16', '王铖权', '15730656348', '3035934631@qq.com', '0');
INSERT INTO `user_info` VALUES ('4', '2018-05-18 23:23:24', '2018-05-18 23:23:24', '涂奎', '18883186300', '3035934631@qq.com', '0');

-- ----------------------------
-- Table structure for user_node
-- ----------------------------
DROP TABLE IF EXISTS `user_node`;
CREATE TABLE `user_node` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `user_id` bigint(11) unsigned NOT NULL COMMENT '用户ID',
  `info_id` bigint(11) unsigned NOT NULL COMMENT '信息ID',
  `role_id` bigint(11) unsigned NOT NULL COMMENT '角色ID',
  `department_id` bigint(11) unsigned NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户节点表';

-- ----------------------------
-- Records of user_node
-- ----------------------------
INSERT INTO `user_node` VALUES ('1', '2018-05-01 18:13:16', '2018-05-01 18:13:18', '1', '1', '1', '1');
INSERT INTO `user_node` VALUES ('2', '2018-05-16 16:58:10', '2018-05-16 16:58:10', '2', '2', '2', '0');
INSERT INTO `user_node` VALUES ('3', '2018-05-16 17:29:16', '2018-05-16 17:29:16', '3', '3', '3', '0');
INSERT INTO `user_node` VALUES ('4', '2018-05-18 23:23:24', '2018-05-18 23:23:24', '4', '4', '3', '0');

-- ----------------------------
-- Table structure for work_record
-- ----------------------------
DROP TABLE IF EXISTS `work_record`;
CREATE TABLE `work_record` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `user_id` bigint(11) unsigned NOT NULL COMMENT '用户ID',
  `begin_date` date NOT NULL COMMENT '开始日期',
  `end_date` date NOT NULL COMMENT '结束日期',
  `company_name` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '工作单位',
  `work_position` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '职务',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='工作记录';

-- ----------------------------
-- Records of work_record
-- ----------------------------
INSERT INTO `work_record` VALUES ('1', '2018-05-01 18:13:37', '2018-05-01 18:13:40', '1', '2018-05-01', '2018-05-01', '重庆信息通信研究院', '实习生');
