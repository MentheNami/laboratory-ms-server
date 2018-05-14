-- 2018-05-12
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
`id`  bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增序号' ,
`gmt_create`  datetime NOT NULL COMMENT '创建时间' ,
`gmt_modified`  datetime NOT NULL COMMENT '修改时间' ,
`province_name`  varchar(255) NOT NULL COMMENT '省份名称' ,
PRIMARY KEY (`id`)
)
;

DROP TABLE IF EXISTS `university`;
CREATE TABLE `university` (
`id`  bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '序号自增' ,
`gmt_create`  datetime NOT NULL COMMENT '创建时间' ,
`gmt_modified`  datetime NOT NULL COMMENT '修改时间' ,
`university_name`  varchar(31) NOT NULL COMMENT '大学名称' ,
`province_id`  bigint(11) UNSIGNED NOT NULL COMMENT '身份Id' ,
`level`  bigint(11) UNSIGNED NOT NULL COMMENT '级别' ,
`website`  varchar(63) NOT NULL COMMENT '网站' ,
`city`  varchar(15) NOT NULL COMMENT '城市' ,
PRIMARY KEY (`id`)
)
;

