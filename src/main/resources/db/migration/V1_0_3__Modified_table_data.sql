ALTER TABLE `complaint`
MODIFY COLUMN `complainant_status`  tinyint(1) UNSIGNED NOT NULL COMMENT '投诉状态' AFTER `complaint_detail`;
