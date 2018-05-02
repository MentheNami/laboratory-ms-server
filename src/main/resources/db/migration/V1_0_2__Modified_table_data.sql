ALTER TABLE `laboratory`
MODIFY COLUMN `floor`  bigint(11) UNSIGNED NOT NULL COMMENT '所属楼层' AFTER `gmt_modified`;