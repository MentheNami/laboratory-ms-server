ALTER TABLE `user_account`
MODIFY COLUMN `user_password`  char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '密码' AFTER `user_name`,
MODIFY COLUMN `question`  varchar(63) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '密保问题' AFTER `user_password`,
MODIFY COLUMN `answer`  char(32) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '密保答案' AFTER `question`;

ALTER TABLE `user_info`
MODIFY COLUMN `real_name`  varchar(31) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '真实姓名' AFTER `gmt_modified`,
MODIFY COLUMN `email`  varchar(63) CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '邮箱' AFTER `cell_phone`;

