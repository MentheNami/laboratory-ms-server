CREATE TABLE `code` (
`id`  bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增序号' ,
`gmt_create`  datetime NOT NULL COMMENT '创建时间' ,
`gmt_modified`  datetime NOT NULL COMMENT '修改时间' ,
`cell_phone`  char(11) NOT NULL COMMENT '手机' ,
`code`  char(6) NOT NULL COMMENT '验证码' ,
PRIMARY KEY (`id`)
)
COMMENT='验证码表'
;
