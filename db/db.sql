/*MySQL创建数据库
*Target Server Type&Version    : MYSQL
*/
DROP DATABASE IF EXISTS `spring.web`;
CREATE DATABASE `spring.web`  CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci ;
USE `spring.web`;

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL COMMENT '分类Id',
  `title` varchar(40) NOT NULL COMMENT '标题',
  `content` blob NOT NULL COMMENT '内容',
  `description` varchar(500) NOT NULL COMMENT '文章简介  用于列表显示',
  `statue` int(11) NOT NULL DEFAULT '0' COMMENT '状态 0：正常  1：不可用',
  `author` varchar(15) DEFAULT 'Coriger' COMMENT '作者',
  `createTime` datetime NOT NULL COMMENT '发表时间',
  `showCount` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  PRIMARY KEY (`id`),
  KEY `fk_article_category1_idx` (`categoryId`),
  CONSTRAINT `fk_article_category1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

/*Data for the table `article` */

/*Table structure for table `article_image` */

DROP TABLE IF EXISTS `article_image`;

CREATE TABLE `article_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageUrl` varchar(100) NOT NULL COMMENT '图片地址',
  `articleId` int(11) NOT NULL COMMENT '文章Id',
  PRIMARY KEY (`id`,`articleId`),
  KEY `fk_article_image_article_idx` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章图  主要用于列表浏览';

/*Data for the table `article_image` */

/*Table structure for table `article_tag` */

DROP TABLE IF EXISTS `article_tag`;

CREATE TABLE `article_tag` (
  `articleId` int(11) NOT NULL COMMENT '文章Id',
  `tagId` int(11) NOT NULL COMMENT '标签Id',
  PRIMARY KEY (`articleId`,`tagId`),
  KEY `fk_article_has_tag_tag1_idx` (`tagId`),
  KEY `fk_article_has_tag_article1_idx` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章标签中间表';

/*Data for the table `article_tag` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(20) NOT NULL COMMENT '分类名称  唯一',
  `iconClass` varchar(45) NOT NULL COMMENT '图标样式',
  `aliasName` varchar(20) NOT NULL COMMENT '别名  唯一  比如新闻 就用News 代替  栏目Id不显示在url中',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序 （0-10）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `aliasName_UNIQUE` (`aliasName`),
  UNIQUE KEY `categoryName_UNIQUE` (`categoryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='分类表  只支持一级分类  如果需要分多个层次 用标签来协助实现';

/*Data for the table `category` */

/*Table structure for table `friend` */

DROP TABLE IF EXISTS `friend`;

CREATE TABLE `friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteName` varchar(15) NOT NULL COMMENT '站点名',
  `siteUrl` varchar(45) NOT NULL COMMENT '站点地址',
  `siteDesc` varchar(45) NOT NULL COMMENT '站点描述  简单备注下 ',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='合作伙伴';

/*Data for the table `friend` */

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) NOT NULL COMMENT '用户名',
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `manager` */

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagName` varchar(25) NOT NULL COMMENT '标签名称  唯一',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagName_UNIQUE` (`tagName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签表';

/*Data for the table `tag` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
