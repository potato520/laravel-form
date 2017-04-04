/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-04-04 23:33:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `articles`
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2017_04_04_035020_create_students_table', '2');
INSERT INTO `migrations` VALUES ('2017_04_04_035254_create_articles_table', '2');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `age` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '年龄',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '性别',
  `created_at` varchar(30) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `updated_at` varchar(30) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', 'cat1', '31', '10', '1491152102', '1491219023');
INSERT INTO `student` VALUES ('3', 'imooc', '19', '10', '1491152102', '0');
INSERT INTO `student` VALUES ('8', 'name4', '24', '10', '1491152102', '0');
INSERT INTO `student` VALUES ('10', 'name2', '22', '10', '1491152102', '0');
INSERT INTO `student` VALUES ('11', 'name3', '23', '10', '1491152102', '0');
INSERT INTO `student` VALUES ('12', 'name4', '24', '10', '1491152102', '0');
INSERT INTO `student` VALUES ('14', 'sb', '18', '10', '1491152102', '0');
INSERT INTO `student` VALUES ('15', 'sb', '18', '10', '1491152102', '1491152102');
INSERT INTO `student` VALUES ('16', 'sb2', '18', '10', '1491152102', '1491152102');
INSERT INTO `student` VALUES ('24', '王大发', '32', '10', '1491152102', '1491152102');
INSERT INTO `student` VALUES ('25', '山炮', '19', '10', '1491152850', '1491152850');
INSERT INTO `student` VALUES ('26', '', '0', '10', '1491152916', '1491152916');
INSERT INTO `student` VALUES ('27', '', '0', '10', '1491153046', '1491153046');
INSERT INTO `student` VALUES ('28', '1', '2', '10', '1491153059', '1491153059');
INSERT INTO `student` VALUES ('29', '2', '3', '10', '1491153137', '1491153137');
INSERT INTO `student` VALUES ('30', '新的山炮', '28', '20', '1491153320', '1491153320');
INSERT INTO `student` VALUES ('31', '山炮2号', '18', '10', '1491209114', '1491209114');
INSERT INTO `student` VALUES ('32', 'sean007', '11', '10', '1491209521', '1491209521');
INSERT INTO `student` VALUES ('33', '小芳', '28', '20', '1491212542', '1491212542');
INSERT INTO `student` VALUES ('34', 'hello ', '28', '10', '1491214134', '1491214134');
INSERT INTO `student` VALUES ('35', 'aa', '1', '10', '1491214162', '1491214162');
INSERT INTO `student` VALUES ('36', 'aw', '1', '30', '1491214175', '1491214175');
INSERT INTO `student` VALUES ('37', '王阿敏', '56', '20', '1491217123', '1491217123');
INSERT INTO `student` VALUES ('38', '宝宝别哭', '255', '20', '1491217984', '1491218084');

-- ----------------------------
-- Table structure for `students`
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` int(10) unsigned NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'sean', '18', '10', '0', '0');
INSERT INTO `students` VALUES ('2', 'huahua', '28', '10', '0', '0');
INSERT INTO `students` VALUES ('3', 'sean', '18', '10', '0', '0');
INSERT INTO `students` VALUES ('4', 'huahua', '28', '10', '0', '0');
INSERT INTO `students` VALUES ('5', 'sean', '18', '10', '0', '0');
INSERT INTO `students` VALUES ('6', 'huahua', '28', '10', '0', '0');
INSERT INTO `students` VALUES ('7', 'sean', '18', '10', '0', '0');
INSERT INTO `students` VALUES ('8', 'huahua', '28', '10', '0', '0');
INSERT INTO `students` VALUES ('9', 'sean', '18', '10', '0', '0');
INSERT INTO `students` VALUES ('10', 'huahua', '28', '10', '0', '0');
INSERT INTO `students` VALUES ('11', 'sean', '18', '10', '0', '0');
INSERT INTO `students` VALUES ('12', 'huahua', '28', '10', '0', '0');
INSERT INTO `students` VALUES ('13', 'sean', '18', '10', '0', '0');
INSERT INTO `students` VALUES ('14', 'huahua', '28', '10', '0', '0');
INSERT INTO `students` VALUES ('15', 'sean', '18', '10', '0', '0');
INSERT INTO `students` VALUES ('16', 'huahua', '28', '10', '0', '0');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '李四', 'alexa456@163.com', '$2y$10$F1LgiUNdLe2f2UETFmspnuUiJZtW.rfHlxeZRD3BnZtXnNvQZ3ad.', 'ZUbFkN9PSNOpu95Z1uNxDT9rd7isy2rPglWx71OuKrFwvDRmR4udliYb62Si', '2017-04-04 03:46:16', '2017-04-04 03:47:22');
