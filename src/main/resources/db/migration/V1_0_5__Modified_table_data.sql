ALTER TABLE `complaint`
DROP COLUMN `contact_name`,
DROP COLUMN `contact_phone`,
DROP COLUMN `contact_email`,
ADD COLUMN `user_id`  bigint(11) UNSIGNED NOT NULL COMMENT '用户信息id' AFTER `complaint_no`;
