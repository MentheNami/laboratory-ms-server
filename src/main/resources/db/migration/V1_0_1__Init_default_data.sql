/*
Navicat MySQL Data Transfer

Source Server         : localhost-lqms
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : cqtguniversity_lqms

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2018-05-01 19:34:17
*/

SET FOREIGN_KEY_CHECKS=0;

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
-- Table structure for common_content
-- ----------------------------
DROP TABLE IF EXISTS `common_content`;
CREATE TABLE `common_content` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增-序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `content` text COLLATE utf8_bin COMMENT '长文本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='长文本表';

-- ----------------------------
-- Records of common_content
-- ----------------------------

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
  `contact_name` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '联系人',
  `contact_phone` int(11) unsigned NOT NULL COMMENT '联系电话',
  `contact_email` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '联系邮箱',
  `address` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '地址',
  `complaint_title` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '投诉标题',
  `complaint_detail` bigint(11) unsigned NOT NULL COMMENT '投诉详情',
  `complainant_status` bigint(11) unsigned NOT NULL COMMENT '投诉状态',
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='投诉表';

-- ----------------------------
-- Records of complaint
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='投诉受理表';

-- ----------------------------
-- Records of complaint_accept
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='配置选项详情';

-- ----------------------------
-- Records of config_option_detail
-- ----------------------------
INSERT INTO `config_option_detail` VALUES ('1', '2018-03-30 11:19:22', '2018-03-30 11:19:24', '1', '0', '1', '申请编号', 'applyNo', '1', '0');
INSERT INTO `config_option_detail` VALUES ('2', '2018-03-30 11:20:14', '2018-03-30 11:20:16', '1', '0', '1', '设备编号', 'deviceNo', '1', '0');
INSERT INTO `config_option_detail` VALUES ('3', '2018-03-30 11:20:45', '2018-03-30 11:20:47', '1', '0', '1', '投诉编号', 'complaintNo', '1', '0');
INSERT INTO `config_option_detail` VALUES ('4', '2018-03-30 11:21:14', '2018-03-30 11:21:16', '1', '0', '1', '文件编号', 'fileNo', '1', '0');
INSERT INTO `config_option_detail` VALUES ('5', '2018-03-30 11:22:16', '2018-03-30 11:22:19', '0', '0', '2', '法律法规', 'legislation', '1', '0');
INSERT INTO `config_option_detail` VALUES ('6', '2018-03-30 16:08:48', '2018-03-30 16:08:50', '0', '0', '2', '资质说明', 'qualification', '1', '0');
INSERT INTO `config_option_detail` VALUES ('7', '2018-03-30 16:09:37', '2018-03-30 16:09:39', '0', '0', '3', '空调', 'airConditioning', '1', '0');
INSERT INTO `config_option_detail` VALUES ('8', '2018-03-30 16:10:08', '2018-03-30 16:10:10', '0', '0', '3', '窗帘', 'curtain', '1', '0');
INSERT INTO `config_option_detail` VALUES ('9', '2018-03-30 17:11:10', '2018-03-30 17:11:13', '0', '0', '3', '空开', 'airSwitch', '1', '0');
INSERT INTO `config_option_detail` VALUES ('10', '2018-03-30 17:12:46', '2018-03-30 17:12:49', '0', '0', '3', '插座', 'socket', '1', '0');
INSERT INTO `config_option_detail` VALUES ('11', '2018-03-30 17:13:12', '2018-03-30 17:13:15', '0', '0', '3', '门锁', 'doorLock', '1', '0');
INSERT INTO `config_option_detail` VALUES ('12', '2018-03-30 17:13:42', '2018-03-30 17:13:45', '0', '0', '3', '电灯', 'electricLight', '1', '0');
INSERT INTO `config_option_detail` VALUES ('13', '2018-03-30 17:15:04', '2018-03-30 17:15:08', '0', '0', '4', '使用', 'using', '1', '0');
INSERT INTO `config_option_detail` VALUES ('14', '2018-03-30 17:15:52', '2018-03-30 17:15:54', '0', '0', '4', '维修', 'service', '1', '0');
INSERT INTO `config_option_detail` VALUES ('15', '2018-03-30 17:19:10', '2018-03-30 17:19:12', '0', '0', '4', '报废', 'scrapped', '1', '0');
INSERT INTO `config_option_detail` VALUES ('16', '2018-03-30 17:19:36', '2018-03-30 17:19:38', '0', '0', '4', '保养', 'maintain', '1', '0');
INSERT INTO `config_option_detail` VALUES ('17', '2018-05-01 12:37:47', '2018-05-01 12:37:49', '0', '0', '5', '一楼', 'firstFloor', '1', '0');
INSERT INTO `config_option_detail` VALUES ('18', '2018-05-01 12:38:18', '2018-05-01 12:38:20', '0', '0', '5', '二楼', 'secondFloor', '1', '0');
INSERT INTO `config_option_detail` VALUES ('19', '2018-05-01 12:39:03', '2018-05-01 12:39:05', '0', '0', '5', '三楼', 'thirdFloor', '1', '0');
INSERT INTO `config_option_detail` VALUES ('20', '2018-05-01 12:39:35', '2018-05-01 12:39:37', '0', '0', '5', '四楼', 'fourthFloor', '1', '0');
INSERT INTO `config_option_detail` VALUES ('21', '2018-05-01 12:40:13', '2018-05-01 12:40:15', '0', '0', '5', '五楼', 'fifthFloor', '1', '0');
INSERT INTO `config_option_detail` VALUES ('22', '2018-05-01 12:45:00', '2018-05-01 12:45:03', '1', '0', '6', '同意', 'agree', '1', '0');
INSERT INTO `config_option_detail` VALUES ('23', '2018-05-01 12:45:38', '2018-05-01 12:45:41', '1', '0', '6', '驳回', 'reject', '1', '0');
INSERT INTO `config_option_detail` VALUES ('24', '2018-05-01 12:46:53', '2018-05-01 12:46:55', '1', '0', '6', '过期', 'expired', '1', '0');
INSERT INTO `config_option_detail` VALUES ('25', '2018-05-01 14:05:22', '2018-05-01 14:05:24', '0', '0', '7', '小学班主任的名字？', 'schoolTeacher', '1', '0');
INSERT INTO `config_option_detail` VALUES ('26', '2018-05-01 14:09:10', '2018-05-01 14:09:12', '0', '0', '7', '爱人的生日？（如：19950420）', 'birthday', '1', '0');
INSERT INTO `config_option_detail` VALUES ('27', '2018-05-01 14:10:58', '2018-05-01 14:11:01', '0', '0', '7', '最喜欢的游戏名称？', 'game', '1', '0');
INSERT INTO `config_option_detail` VALUES ('28', '2018-05-01 18:42:41', '2018-05-01 18:42:44', '0', '0', '8', '小学', 'primarySchool', '1', '0');
INSERT INTO `config_option_detail` VALUES ('29', '2018-05-01 18:43:12', '2018-05-01 18:43:15', '0', '0', '8', '中学', 'secondarySchool', '1', '0');
INSERT INTO `config_option_detail` VALUES ('30', '2018-05-01 18:43:41', '2018-05-01 18:43:43', '0', '0', '8', '高中', 'highSchool', '1', '0');
INSERT INTO `config_option_detail` VALUES ('31', '2018-05-01 18:44:14', '2018-05-01 18:44:17', '0', '0', '8', '专科', 'specialist', '1', '0');
INSERT INTO `config_option_detail` VALUES ('32', '2018-05-01 18:45:33', '2018-05-01 18:45:35', '0', '0', '8', '本科', 'undergraduate', '1', '0');
INSERT INTO `config_option_detail` VALUES ('33', '2018-05-01 18:46:02', '2018-05-01 18:46:04', '0', '0', '8', '硕士', 'masterDegree', '1', '0');
INSERT INTO `config_option_detail` VALUES ('34', '2018-05-01 18:46:56', '2018-05-01 18:46:58', '0', '0', '8', '博士', 'doctor', '1', '0');
INSERT INTO `config_option_detail` VALUES ('35', '2018-05-01 18:47:21', '2018-05-01 18:47:23', '0', '0', '9', '学士学位', 'bachelorDegree', '1', '0');
INSERT INTO `config_option_detail` VALUES ('36', '2018-05-01 18:49:10', '2018-05-01 18:49:12', '0', '0', '9', '硕士学位', 'masterDegee', '1', '0');
INSERT INTO `config_option_detail` VALUES ('37', '2018-05-01 19:27:15', '2018-05-01 19:27:12', '0', '0', '9', '博士学位', 'doctorDegee', '1', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='配置选项组';

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
INSERT INTO `config_option_group` VALUES ('9', '2018-05-01 18:40:30', '2018-05-01 18:40:33', 'educationalLevel\r\n', '学位', '0');

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
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='部门信息';

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '2018-05-01 19:29:46', '2018-05-01 19:29:48', '研究开发部', '1', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='设备表';

-- ----------------------------
-- Records of device
-- ----------------------------

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
  `approval_user` bigint(11) unsigned NOT NULL COMMENT '批准人',
  `approval_opinion` tinyint(1) unsigned NOT NULL COMMENT '意见：同意/不同意',
  `approval_description` bigint(11) unsigned NOT NULL COMMENT '批准描述',
  `approval_time` datetime NOT NULL COMMENT '批准时间',
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='设备方案申请';

-- ----------------------------
-- Records of device_program
-- ----------------------------

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
  `major` bigint(11) unsigned NOT NULL COMMENT '专业',
  `academic_qualifications` bigint(11) unsigned NOT NULL COMMENT '学历',
  `academic_degree` bigint(11) unsigned NOT NULL COMMENT '学位',
  `graduation_certificate_no` varchar(18) COLLATE utf8_bin NOT NULL COMMENT '毕业证书编号',
  `academic_degree_certificate_no` varchar(18) COLLATE utf8_bin NOT NULL COMMENT '学位证书编号',
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='人员学历及学位记录';

-- ----------------------------
-- Records of education_record
-- ----------------------------
INSERT INTO `education_record` VALUES ('1', '2018-05-01 18:37:12', '2018-05-01 18:37:10', '1', '2018-07-01', '1', '1', '32', '35', 'TYFG5654698', 'TYFG5654698', '1');

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
-- Table structure for laboratory
-- ----------------------------
DROP TABLE IF EXISTS `laboratory`;
CREATE TABLE `laboratory` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号自增',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `floor` tinyint(2) unsigned NOT NULL COMMENT '所属楼层',
  `laboratory_name` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '实验室名称',
  `capacity` tinyint(3) unsigned NOT NULL COMMENT '实验室容量',
  `is_autonomy` tinyint(1) unsigned NOT NULL COMMENT '是否自主预定',
  `is_deleted` tinyint(1) unsigned NOT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='实验室表';

-- ----------------------------
-- Records of laboratory
-- ----------------------------
INSERT INTO `laboratory` VALUES ('1', '2018-05-01 18:35:33', '2018-05-01 18:35:36', '17', '无线电测试实验室', '10', '0', '0');

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
INSERT INTO `number_rule` VALUES ('1', '2018-04-01 11:14:54', '2018-05-01 11:15:08', '1', 'SXLQMS-SQ-{YEAR}-{NUM}', '1');
INSERT INTO `number_rule` VALUES ('2', '2018-05-01 11:15:14', '2018-05-01 11:15:18', '2', 'SXLQMS-SB-{YEAR}-{NUM}', '1');
INSERT INTO `number_rule` VALUES ('3', '2018-05-01 11:22:42', '2018-05-01 11:22:44', '3', 'SXLQMS-TS-{YEAR}-{NUM}', '1');
INSERT INTO `number_rule` VALUES ('4', '2018-05-01 12:21:34', '2018-05-01 12:21:36', '4', 'SXLQMS-{TYPE}WJ-{YEAR}-{NUM}', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号自增',
  `gmt_created` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `role_name` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '角色名',
  `description` varchar(127) COLLATE utf8_bin NOT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户角色表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '2018-05-01 18:27:22', '2018-05-01 18:27:24', '超级管理员', '开放所有功能，巴拉巴拉巴拉');

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
  `gmt_created` datetime NOT NULL COMMENT '创建时间',
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
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增序号',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `user_name` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `user_password` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '密码',
  `question` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '密保问题',
  `answer` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '密保答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户账户表';

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('1', '2018-05-01 18:25:12', '2018-05-01 18:25:14', 'Monicase', 'E10ADC3949BA59ABBE56E057F20F883E', '测试问题', '607BC3260580B9E865BF0B6D783C5A06');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号-自增',
  `gmt_created` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `real_name` varchar(31) COLLATE utf8_bin NOT NULL COMMENT '真实姓名',
  `cell_phone` char(11) COLLATE utf8_bin NOT NULL COMMENT '手机',
  `email` varchar(63) COLLATE utf8_bin NOT NULL COMMENT '邮箱',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '逻辑删除 1 表示是，0 表示否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '2018-05-01 18:24:00', '2018-05-01 18:24:03', '唐胜雨', '13647696666', 'ysfm.k@outlook.com', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户节点表';

-- ----------------------------
-- Records of user_node
-- ----------------------------
INSERT INTO `user_node` VALUES ('1', '2018-05-01 18:13:16', '2018-05-01 18:13:18', '1', '1', '1', '1');

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
