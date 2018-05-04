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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件表';