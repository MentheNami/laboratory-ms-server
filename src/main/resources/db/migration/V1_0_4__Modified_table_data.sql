ALTER TABLE `laboratory_schedule`
CHANGE COLUMN `explaintion` `instruction`  varchar(127) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '申请说明' AFTER `user_id`,
MODIFY COLUMN `check_user`  bigint(11) UNSIGNED NULL COMMENT '审核用户' AFTER `schedule_status`;

