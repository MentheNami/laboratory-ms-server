ALTER TABLE `role`
MODIFY COLUMN `role_name`  bigint(11) UNSIGNED NOT NULL COMMENT '角色名' AFTER `gmt_modified`,
MODIFY COLUMN `description`  bigint(11) UNSIGNED NOT NULL COMMENT '描述id' AFTER `role_name`;

