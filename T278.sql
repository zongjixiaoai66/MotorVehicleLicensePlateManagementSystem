/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t278`;
CREATE DATABASE IF NOT EXISTS `t278` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t278`;

DROP TABLE IF EXISTS `cheliang`;
CREATE TABLE IF NOT EXISTS `cheliang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称 Search111',
  `cheliang_types` int DEFAULT NULL COMMENT '车辆类型 Search111',
  `cheliang_paizhao` varchar(200) DEFAULT NULL COMMENT '车辆牌照',
  `paizhao_types` int DEFAULT NULL COMMENT '牌照类型 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='车辆信息';

DELETE FROM `cheliang`;
INSERT INTO `cheliang` (`id`, `cheliang_name`, `cheliang_types`, `cheliang_paizhao`, `paizhao_types`, `yonghu_id`, `create_time`) VALUES
	(1, '车辆名称1', 2, '牌照112233', 1, 1, '2022-03-31 07:15:02'),
	(3, '车辆名称3', 1, '无牌照', 1, 2, '2022-03-31 07:15:02'),
	(4, '车辆名称4', 3, '刚刚申请的正式牌照4', 2, 2, '2022-03-31 07:15:02'),
	(5, '车辆名称5', 2, '车辆牌照5', 1, 3, '2022-03-31 07:15:02');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'cheliang_types', '车辆类型', 1, '车辆类型1', NULL, NULL, '2022-03-31 07:14:57'),
	(2, 'cheliang_types', '车辆类型', 2, '车辆类型2', NULL, NULL, '2022-03-31 07:14:57'),
	(3, 'cheliang_types', '车辆类型', 3, '车辆类型3', NULL, NULL, '2022-03-31 07:14:57'),
	(4, 'paizhao_types', '牌照类型', 1, '无牌照', NULL, NULL, '2022-03-31 07:14:57'),
	(5, 'paizhao_types', '牌照类型', 2, '临时牌照', NULL, NULL, '2022-03-31 07:14:57'),
	(6, 'paizhao_types', '牌照类型', 3, '正式牌照', NULL, NULL, '2022-03-31 07:14:57'),
	(7, 'paizhaoshenqing_yesno_types', '申请状态', 1, '处理中', NULL, NULL, '2022-03-31 07:14:57'),
	(8, 'paizhaoshenqing_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2022-03-31 07:14:57'),
	(9, 'paizhaoshenqing_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2022-03-31 07:14:57'),
	(10, 'paizhaoshenqing_types', '申请牌照类型', 2, '临时牌照', NULL, NULL, '2022-03-31 07:14:57'),
	(11, 'paizhaoshenqing_types', '申请牌照类型', 3, '正式牌照', NULL, NULL, '2022-03-31 07:14:57'),
	(12, 'paizhaohuanbu_yesno_types', '申请状态', 1, '处理中', NULL, NULL, '2022-03-31 07:14:57'),
	(13, 'paizhaohuanbu_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2022-03-31 07:14:57'),
	(14, 'paizhaohuanbu_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2022-03-31 07:14:57'),
	(15, 'paizhaohuanbu_types', '申请类型', 1, '换', NULL, NULL, '2022-03-31 07:14:57'),
	(16, 'paizhaohuanbu_types', '申请类型', 2, '补', NULL, NULL, '2022-03-31 07:14:57'),
	(17, 'paizhaozuanyi_yesno_types', '申请状态', 1, '处理中', NULL, NULL, '2022-03-31 07:14:57'),
	(18, 'paizhaozuanyi_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2022-03-31 07:14:58'),
	(19, 'paizhaozuanyi_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2022-03-31 07:14:58'),
	(20, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-31 07:14:58'),
	(21, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-31 07:14:58'),
	(22, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-31 07:14:58'),
	(23, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-31 07:14:58'),
	(24, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-31 07:14:58');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 3, 'http://localhost:8080/jidongchepaihao/upload/news1.jpg', '2022-03-31 07:15:02', '公告详情1', '2022-03-31 07:15:02'),
	(2, '公告标题2', 1, 'http://localhost:8080/jidongchepaihao/upload/news2.jpg', '2022-03-31 07:15:02', '公告详情2', '2022-03-31 07:15:02'),
	(3, '公告标题3', 2, 'http://localhost:8080/jidongchepaihao/upload/news3.jpg', '2022-03-31 07:15:02', '公告详情3', '2022-03-31 07:15:02'),
	(4, '公告标题4', 3, 'http://localhost:8080/jidongchepaihao/upload/news4.jpg', '2022-03-31 07:15:02', '公告详情4', '2022-03-31 07:15:02'),
	(5, '公告标题5', 3, 'http://localhost:8080/jidongchepaihao/upload/news5.jpg', '2022-03-31 07:15:02', '公告详情5', '2022-03-31 07:15:02');

DROP TABLE IF EXISTS `paizhaohuanbu`;
CREATE TABLE IF NOT EXISTS `paizhaohuanbu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_id` int DEFAULT NULL COMMENT '车辆',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `paizhaohuanbu_types` int DEFAULT NULL COMMENT '申请类型',
  `paizhaohuanbu_paizhao` varchar(200) DEFAULT NULL COMMENT '牌照',
  `paizhaohuanbu_yesno_types` int DEFAULT NULL COMMENT '申请状态',
  `paizhaohuanbu_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='牌照换补申请';

DELETE FROM `paizhaohuanbu`;
INSERT INTO `paizhaohuanbu` (`id`, `cheliang_id`, `yonghu_id`, `paizhaohuanbu_types`, `paizhaohuanbu_paizhao`, `paizhaohuanbu_yesno_types`, `paizhaohuanbu_yesno_text`, `create_time`) VALUES
	(7, 3, 2, 1, '333333拍照', 2, '333333', '2022-03-31 07:24:27');

DROP TABLE IF EXISTS `paizhaoshenqing`;
CREATE TABLE IF NOT EXISTS `paizhaoshenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_id` int DEFAULT NULL COMMENT '车辆',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `paizhaoshenqing_types` int DEFAULT NULL COMMENT '申请牌照类型',
  `paizhaoshenqing_paizhao` varchar(200) DEFAULT NULL COMMENT '申请牌照',
  `paizhaoshenqing_yesno_types` int DEFAULT NULL COMMENT '申请状态',
  `paizhaoshenqing_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='牌照申请';

DELETE FROM `paizhaoshenqing`;
INSERT INTO `paizhaoshenqing` (`id`, `cheliang_id`, `yonghu_id`, `paizhaoshenqing_types`, `paizhaoshenqing_paizhao`, `paizhaoshenqing_yesno_types`, `paizhaoshenqing_yesno_text`, `create_time`) VALUES
	(6, 2, 1, 2, '123', 2, '123', '2022-03-31 07:22:19'),
	(7, 4, 2, 2, '刚刚申请的正式牌照4', 2, '13331', '2022-03-31 07:24:51');

DROP TABLE IF EXISTS `paizhaozuanyi`;
CREATE TABLE IF NOT EXISTS `paizhaozuanyi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_id` int DEFAULT NULL COMMENT '车辆',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `paizhaozuanyi_name` varchar(200) DEFAULT NULL COMMENT '转移用户名称',
  `paizhaozuanyi_paizhao` varchar(200) DEFAULT NULL COMMENT '牌照',
  `paizhaozuanyi_yesno_types` int DEFAULT NULL COMMENT '申请状态',
  `paizhaozuanyi_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='牌照转移申请';

DELETE FROM `paizhaozuanyi`;
INSERT INTO `paizhaozuanyi` (`id`, `cheliang_id`, `yonghu_id`, `paizhaozuanyi_name`, `paizhaozuanyi_paizhao`, `paizhaozuanyi_yesno_types`, `paizhaozuanyi_yesno_text`, `create_time`) VALUES
	(7, 3, 2, '张三', '转移走的拍照号', 2, '拒绝啥也不会发生 用户需要再次申请', '2022-03-31 07:25:13');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'pz1vvzs4lmw7fuict9qi152wbcd9umu2', '2022-03-31 06:37:15', '2024-07-18 09:12:50'),
	(2, 1, 'a1', 'yonghu', '用户', '575f740g5q48bl46oeq1egh4epxt1hk1', '2022-03-31 07:09:54', '2024-07-18 09:13:49'),
	(3, 2, 'a2', 'yonghu', '用户', 'by1r9sih8qq9zhgr5qvmk9t8tsw9m3lf', '2022-03-31 07:24:03', '2022-03-31 08:24:04');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/jidongchepaihao/upload/yonghu1.jpg', 1, '17703786901', '410224199610232001', '1@qq.com', 1, '2022-03-31 07:15:02'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/jidongchepaihao/upload/yonghu2.jpg', 1, '17703786902', '410224199610232002', '2@qq.com', 1, '2022-03-31 07:15:02'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/jidongchepaihao/upload/yonghu3.jpg', 2, '17703786903', '410224199610232003', '3@qq.com', 1, '2022-03-31 07:15:02');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
