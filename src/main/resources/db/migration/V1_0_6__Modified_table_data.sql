ALTER TABLE `device_program`
MODIFY COLUMN `approval_user`  bigint(11) UNSIGNED NULL COMMENT '批准人' AFTER `execution_date`,
MODIFY COLUMN `approval_opinion`  tinyint(1) UNSIGNED NULL COMMENT '意见：同意/不同意' AFTER `approval_user`,
MODIFY COLUMN `approval_description`  bigint(11) UNSIGNED NULL COMMENT '批准描述' AFTER `approval_opinion`,
MODIFY COLUMN `approval_time`  datetime NULL COMMENT '批准时间' AFTER `approval_description`;
