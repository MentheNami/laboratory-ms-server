-- 2018-05-13 12:15:58

CREATE TABLE `laboratory_schedule` (
`id`  bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增序号' ,
`gmt_create`  datetime NOT NULL COMMENT '创建时间' ,
`gmt_modified`  datetime NOT NULL COMMENT '修改时间' ,
`laboratory_id`  bigint(11) UNSIGNED NOT NULL COMMENT '实验室id' ,
`user_id`  bigint UNSIGNED NOT NULL COMMENT '申请人' ,
`explaintion`  varchar(127) NOT NULL COMMENT '申请说明' ,
`start_time`  datetime NOT NULL COMMENT '开始时间' ,
`end_time`  datetime NOT NULL COMMENT '结束时间' ,
`schedule_status`  tinyint(1) UNSIGNED NOT NULL COMMENT '预定状态' ,
`check_user`  bigint(11) UNSIGNED NOT NULL COMMENT '审核用户' ,
PRIMARY KEY (`id`)
)
;

ALTER TABLE `department`
DROP COLUMN `is_deleted`;

ALTER TABLE `education_record`
DROP COLUMN `major`;



