/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.10
Source Server Version : 50717
Source Host           : 192.168.0.10:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-16 18:12:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `privilege`
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `privilege_id` int(11) NOT NULL AUTO_INCREMENT,
  `privilegename` varchar(255) DEFAULT NULL,
  `privilegeurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`privilege_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES ('16', '查看所有权限资源', 'com.jty.controller.manage.PermissionController:findAllPrivilege');
INSERT INTO `privilege` VALUES ('17', '删除用户', 'com.jty.controller.manage.PermissionController:deleteUser');
INSERT INTO `privilege` VALUES ('18', '查询用户', 'com.jty.controller.manage.PermissionController:findAllUser');
INSERT INTO `privilege` VALUES ('19', '查看角色', 'com.jty.controller.manage.PermissionController:findAllRole');
INSERT INTO `privilege` VALUES ('20', '权限url生成', 'com.jty.controller.manage.PermissionController:generatePrivilege');
INSERT INTO `privilege` VALUES ('21', '增加角色', 'com.jty.controller.manage.PermissionController:addRole');
INSERT INTO `privilege` VALUES ('22', '增加用户', 'com.jty.controller.manage.PermissionController:addUser');

-- ----------------------------
-- Table structure for `privilegeurlmapping`
-- ----------------------------
DROP TABLE IF EXISTS `privilegeurlmapping`;
CREATE TABLE `privilegeurlmapping` (
  `code` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of privilegeurlmapping
-- ----------------------------
INSERT INTO `privilegeurlmapping` VALUES ('1', '/privilegeTest.jsp');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '无');
INSERT INTO `role` VALUES ('2', '管理员', '无');
INSERT INTO `role` VALUES ('3', '会员', '无');
INSERT INTO `role` VALUES ('4', 'we', 'we');
INSERT INTO `role` VALUES ('5', 'we', 'ww');
INSERT INTO `role` VALUES ('6', 'ww', 'ww');

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `role_id` varchar(255) DEFAULT NULL,
  `menu_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '2');
INSERT INTO `role_menu` VALUES ('1', '3');
INSERT INTO `role_menu` VALUES ('1', '4');
INSERT INTO `role_menu` VALUES ('1', '5');
INSERT INTO `role_menu` VALUES ('1', '6');

-- ----------------------------
-- Table structure for `role_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `role_privilege`;
CREATE TABLE `role_privilege` (
  `roleid` int(11) NOT NULL DEFAULT '0',
  `privilegeid` int(11) DEFAULT '0',
  `privilegeName` varchar(255) DEFAULT NULL,
  `privilegeResource` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_privilege
-- ----------------------------
INSERT INTO `role_privilege` VALUES ('1', '18', null, null);
INSERT INTO `role_privilege` VALUES ('1', '18', null, null);
INSERT INTO `role_privilege` VALUES ('1', '18', null, null);
INSERT INTO `role_privilege` VALUES ('2', '19', null, null);
INSERT INTO `role_privilege` VALUES ('3', '22', null, null);

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `function` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=821 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', '贾廷玉', '2017-09-29 16:22:40', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('2', '贾廷玉', '2017-09-29 16:22:42', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('3', 'admin', '2017-09-29 17:28:44', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('4', 'admin', '2017-09-29 17:28:44', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('5', 'admin', '2017-09-29 17:28:52', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('6', 'admin', '2017-09-29 17:28:52', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('7', 'admin', '2017-09-29 17:28:52', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('8', 'admin', '2017-09-29 17:28:52', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('9', 'admin123', '2017-09-30 10:04:48', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('10', 'admin123', '2017-09-30 10:04:48', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('11', 'admin', '2017-09-30 10:12:59', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('12', 'admin', '2017-09-30 10:12:59', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('13', '123', '2017-09-30 10:58:07', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('14', '123', '2017-09-30 11:01:12', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('15', '123', '2017-09-30 11:01:12', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('16', 'admin', '2017-10-09 10:47:10', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('17', 'admin', '2017-10-09 10:55:54', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('18', 'admin', '2017-10-09 11:25:14', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('19', 'admin', '2017-10-09 11:25:17', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('20', 'admin', '2017-10-09 11:25:32', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('21', 'admin', '2017-10-09 11:27:05', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('22', 'admin', '2017-10-09 11:27:50', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('23', 'admin', '2017-10-09 11:28:10', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('24', 'admin', '2017-10-09 11:28:10', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('25', 'admin', '2017-10-09 11:28:43', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('26', 'admin', '2017-10-09 11:28:43', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('27', 'admin', '2017-10-09 11:29:15', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('28', 'admin', '2017-10-09 11:29:15', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('29', 'admin', '2017-10-09 16:04:16', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('30', 'admin', '2017-10-09 16:04:16', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('31', 'admin', '2017-10-09 16:10:19', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('32', 'admin', '2017-10-09 16:10:19', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('33', 'admin', '2017-10-09 16:10:38', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('34', 'admin', '2017-10-09 16:10:38', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('35', 'admin', '2017-10-09 16:10:52', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('36', 'admin', '2017-10-09 16:10:52', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('37', 'admin', '2017-10-09 17:07:15', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('38', 'admin', '2017-10-09 17:07:15', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('39', 'admin', '2017-10-09 17:07:15', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('40', 'admin', '2017-10-09 17:07:24', 'com.jty.service.manage.PermissionServiceImpl:generatePrivilege');
INSERT INTO `sys_log` VALUES ('41', 'admin', '2017-10-09 17:09:07', 'com.jty.service.manage.PermissionServiceImpl:generatePrivilege');
INSERT INTO `sys_log` VALUES ('42', 'admin', '2017-10-09 17:10:27', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('43', 'admin', '2017-10-09 17:10:27', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('44', 'admin', '2017-10-09 17:10:31', 'com.jty.service.manage.PermissionServiceImpl:generatePrivilege');
INSERT INTO `sys_log` VALUES ('45', 'admin', '2017-10-09 17:12:09', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('46', 'admin', '2017-10-09 17:12:09', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('47', 'admin', '2017-10-09 17:12:14', 'com.jty.service.manage.PermissionServiceImpl:generatePrivilege');
INSERT INTO `sys_log` VALUES ('48', 'admin', '2017-10-09 17:15:31', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('49', 'admin', '2017-10-09 17:15:31', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('50', 'admin', '2017-10-09 17:15:40', 'com.jty.service.manage.PermissionServiceImpl:generatePrivilege');
INSERT INTO `sys_log` VALUES ('51', 'admin123', '2017-10-09 17:18:13', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('52', 'admin123', '2017-10-09 17:18:13', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('53', 'admin123', '2017-10-09 17:18:22', 'com.jty.service.manage.PermissionServiceImpl:generatePrivilege');
INSERT INTO `sys_log` VALUES ('54', 'admin123', '2017-10-09 17:27:52', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('55', 'admin123', '2017-10-09 17:27:53', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('56', 'admin', '2017-10-10 16:47:20', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('57', 'admin', '2017-10-10 16:47:21', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('58', 'admin', '2017-10-10 16:47:21', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('59', 'admin', '2017-10-10 16:47:22', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('60', 'admin', '2017-10-10 16:54:54', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('61', 'admin', '2017-10-10 16:56:06', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('62', 'admin', '2017-10-10 16:56:06', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('63', 'admin', '2017-10-10 16:56:56', 'com.jty.service.manage.PermissionServiceImpl:deleteUser');
INSERT INTO `sys_log` VALUES ('64', 'admin', '2017-10-10 16:56:56', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('65', 'admin', '2017-10-10 16:56:58', 'com.jty.service.manage.PermissionServiceImpl:deleteUser');
INSERT INTO `sys_log` VALUES ('66', 'admin', '2017-10-10 16:56:58', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('67', 'admin', '2017-10-10 16:57:00', 'com.jty.service.manage.PermissionServiceImpl:deleteUser');
INSERT INTO `sys_log` VALUES ('68', 'admin', '2017-10-10 16:57:00', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('69', 'admin', '2017-10-10 16:57:53', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('70', 'admin', '2017-10-10 16:57:53', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('71', 'admin', '2017-10-10 16:57:59', 'com.jty.service.manage.PermissionServiceImpl:generatePrivilege');
INSERT INTO `sys_log` VALUES ('72', 'admin', '2017-10-10 17:11:49', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('73', 'admin', '2017-10-11 10:39:31', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('74', 'admin', '2017-10-11 10:39:33', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('75', 'admin', '2017-10-11 10:41:04', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('76', 'admin', '2017-10-11 10:41:06', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('77', 'admin', '2017-10-11 10:41:09', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('78', 'admin', '2017-10-11 10:41:12', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('79', 'admin', '2017-10-11 10:41:12', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('80', 'admin', '2017-10-11 10:42:07', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('81', 'admin', '2017-10-11 10:42:07', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('82', 'admin', '2017-10-11 10:42:15', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('83', 'admin', '2017-10-11 10:42:45', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('84', 'admin', '2017-10-11 11:25:11', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('85', 'admin', '2017-10-11 11:27:16', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('86', 'admin', '2017-10-11 11:27:16', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('87', 'admin', '2017-10-11 11:29:06', 'com.jty.service.manage.PermissionServiceImpl:generatePrivilege');
INSERT INTO `sys_log` VALUES ('88', 'admin', '2017-10-11 11:29:06', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('89', 'admin', '2017-10-11 11:30:33', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('90', 'admin', '2017-10-11 11:30:33', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('91', 'jack', '2017-10-11 14:53:21', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('92', 'jack', '2017-10-11 14:53:44', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('93', 'jack', '2017-10-11 14:56:45', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('94', 'jack', '2017-10-11 14:56:45', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('95', 'jack', '2017-10-11 14:56:46', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('96', 'jack', '2017-10-11 14:57:23', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('97', 'jack', '2017-10-11 14:57:28', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('98', 'jack', '2017-10-11 14:58:28', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('99', 'jack', '2017-10-11 15:00:40', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('100', 'jack', '2017-10-11 15:01:22', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('101', 'jack', '2017-10-11 15:01:22', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('102', 'jack', '2017-10-11 15:16:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('103', 'jack', '2017-10-11 15:18:03', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('104', 'jack', '2017-10-11 15:26:37', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('105', 'jack', '2017-10-11 15:26:39', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('106', 'jack', '2017-10-11 15:26:39', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('107', 'jack', '2017-10-11 15:26:41', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('108', 'jack', '2017-10-11 15:26:42', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('109', 'jack', '2017-10-11 15:29:43', 'com.jty.service.manage.PermissionServiceImpl:findUserAllRole');
INSERT INTO `sys_log` VALUES ('110', 'jack', '2017-10-11 15:29:43', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('111', 'jack', '2017-10-11 15:34:31', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('112', 'jack', '2017-10-11 15:34:39', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('113', 'jack', '2017-10-11 15:34:39', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('114', 'jack', '2017-10-11 15:35:19', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('115', 'jack', '2017-10-11 15:35:20', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('116', 'jack', '2017-10-11 15:35:20', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('117', 'jack', '2017-10-11 15:36:19', 'com.jty.service.manage.PermissionServiceImpl:findUserByUsernameAndPwd');
INSERT INTO `sys_log` VALUES ('118', 'admin', '2017-10-11 15:36:19', 'com.jty.service.manage.PermissionServiceImpl:findUserAllRole');
INSERT INTO `sys_log` VALUES ('119', 'admin', '2017-10-11 15:36:19', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('120', 'admin', '2017-10-11 15:36:40', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('121', 'admin', '2017-10-11 15:38:11', 'com.jty.service.manage.PermissionServiceImpl:findUserByUsernameAndPwd');
INSERT INTO `sys_log` VALUES ('122', 'admin', '2017-10-11 15:38:11', 'com.jty.service.manage.PermissionServiceImpl:findUserAllRole');
INSERT INTO `sys_log` VALUES ('123', 'admin', '2017-10-11 15:38:11', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('124', 'jack', '2017-10-11 15:47:08', 'com.jty.service.manage.PermissionServiceImpl:findUserAllRole');
INSERT INTO `sys_log` VALUES ('125', 'jack', '2017-10-11 15:47:08', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('126', 'jack', '2017-10-11 15:50:56', 'com.jty.service.manage.PermissionServiceImpl:findUserAllRole');
INSERT INTO `sys_log` VALUES ('127', 'jack', '2017-10-11 15:50:56', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('128', 'jack', '2017-10-11 15:55:20', 'com.jty.service.manage.PermissionServiceImpl:findUserAllRole');
INSERT INTO `sys_log` VALUES ('129', 'jack', '2017-10-11 15:55:20', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('130', 'jack', '2017-10-11 15:59:50', 'com.jty.service.manage.PermissionServiceImpl:findUserAllRole');
INSERT INTO `sys_log` VALUES ('131', 'jack', '2017-10-11 15:59:50', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('132', 'jack', '2017-10-11 16:01:09', 'com.jty.service.manage.PermissionServiceImpl:findUserAllRole');
INSERT INTO `sys_log` VALUES ('133', 'jack', '2017-10-11 16:01:09', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('134', 'jack', '2017-10-11 16:02:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllRole');
INSERT INTO `sys_log` VALUES ('135', 'jack', '2017-10-11 16:02:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllPrivilege');
INSERT INTO `sys_log` VALUES ('136', 'jack', '2017-10-11 17:02:32', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('137', 'jack', '2017-10-11 17:29:41', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('138', 'jack', '2017-10-11 17:47:52', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('139', 'da', '2017-10-11 17:51:28', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('140', '..', '2017-10-11 17:53:26', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('141', '..', '2017-10-11 17:53:41', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('142', '.', '2017-10-11 17:55:03', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('143', '.', '2017-10-11 17:55:30', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('144', '.', '2017-10-11 17:55:56', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('145', '.', '2017-10-11 17:55:56', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('146', 'xxx', '2017-10-12 09:51:17', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('147', 'xxx', '2017-10-12 09:52:25', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('148', 'xxx', '2017-10-12 09:55:27', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('149', 'xxx', '2017-10-12 09:56:52', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('150', 'xxx', '2017-10-12 09:58:25', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('151', 'xxx', '2017-10-12 10:02:06', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('152', 'xxx', '2017-10-12 10:05:37', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('153', 'xxx', '2017-10-12 10:07:54', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('154', 'xxx', '2017-10-12 10:08:24', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('155', 'xxx', '2017-10-12 10:08:44', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('156', 'xxx', '2017-10-12 10:08:54', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('157', 'xxx', '2017-10-12 10:10:30', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('158', 'xxx', '2017-10-12 10:11:07', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('159', 'xxx', '2017-10-12 10:11:15', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('160', 'xxx', '2017-10-12 10:12:03', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('161', 'xxx', '2017-10-12 10:12:32', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('162', '0.', '2017-10-12 10:58:41', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('163', '0.', '2017-10-12 11:01:17', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('164', '0.', '2017-10-12 11:01:54', 'com.jty.service.manage.PermissionServiceImpl:deleteMenu');
INSERT INTO `sys_log` VALUES ('165', '0.', '2017-10-12 11:01:54', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('166', '0.', '2017-10-12 11:02:25', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('167', '0.', '2017-10-12 11:03:40', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('168', '0.', '2017-10-12 11:03:42', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('169', '0.', '2017-10-12 11:29:13', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('170', '0.', '2017-10-12 11:29:44', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('171', '0.', '2017-10-12 11:30:05', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('172', '0.', '2017-10-12 11:31:32', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('173', '0.', '2017-10-12 11:32:40', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('174', '0.', '2017-10-12 11:32:58', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('175', '0.', '2017-10-12 11:33:09', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('176', '0.', '2017-10-12 11:33:35', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('177', '0.', '2017-10-12 11:33:35', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('178', '0.', '2017-10-12 11:34:14', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('179', '0.', '2017-10-12 11:35:40', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('180', '0.', '2017-10-12 11:35:40', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('181', '0.', '2017-10-12 11:36:23', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('182', '0.', '2017-10-12 11:36:23', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('183', '0.', '2017-10-12 11:37:18', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('184', '0.', '2017-10-12 11:37:18', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('185', '0.', '2017-10-12 11:38:44', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('186', '0.', '2017-10-12 11:38:44', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('187', 'ccc', '2017-10-12 15:59:25', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('188', 'ccc', '2017-10-12 16:02:51', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('189', 'xz', '2017-10-12 17:21:38', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('190', 'cxz', '2017-10-12 17:22:42', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('191', 'cxz', '2017-10-12 17:23:01', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('192', 'cxz', '2017-10-12 17:24:49', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('193', 'cxz', '2017-10-12 17:26:32', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('194', 'cxz', '2017-10-12 17:27:33', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('195', 'xz', '2017-10-12 17:28:30', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('196', 'xz', '2017-10-12 17:32:01', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('197', '12', '2017-10-12 17:34:26', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('198', '12', '2017-10-12 17:38:38', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('199', '12', '2017-10-12 17:39:03', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('200', '12', '2017-10-12 17:39:46', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('201', '12', '2017-10-12 17:43:37', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('202', '12', '2017-10-12 17:44:17', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('203', '12', '2017-10-12 17:44:35', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('204', '12', '2017-10-12 17:53:23', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('205', '12', '2017-10-12 17:57:48', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('206', '12', '2017-10-12 17:58:13', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('207', '12', '2017-10-12 18:04:18', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('208', '12', '2017-10-12 18:09:27', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('209', '12', '2017-10-12 18:09:58', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('210', '12', '2017-10-12 18:10:16', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('211', '12', '2017-10-12 18:10:58', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('212', '12', '2017-10-12 18:11:16', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('213', '1121', '2017-10-13 09:23:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('214', '1121', '2017-10-13 09:24:03', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('215', '1121', '2017-10-13 09:27:02', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('216', '1121', '2017-10-13 09:27:11', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('217', '1121', '2017-10-13 09:27:29', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('218', '1121', '2017-10-13 09:28:02', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('219', '1121', '2017-10-13 09:28:46', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('220', '1121', '2017-10-13 09:29:22', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('221', '1121', '2017-10-13 09:30:10', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('222', '1121', '2017-10-13 09:30:18', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('223', '1121', '2017-10-13 09:31:16', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('224', '1121', '2017-10-13 09:31:30', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('225', '1121', '2017-10-13 09:32:01', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('226', '1121', '2017-10-13 09:33:50', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('227', '1121', '2017-10-13 09:34:20', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('228', '1121', '2017-10-13 09:37:03', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('229', '1121', '2017-10-13 09:37:52', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('230', '1121', '2017-10-13 09:39:16', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('231', '1121', '2017-10-13 09:39:35', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('232', '1121', '2017-10-13 09:40:22', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('233', '1121', '2017-10-13 09:41:07', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('234', '1121', '2017-10-13 09:44:19', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('235', '1121', '2017-10-13 09:44:48', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('236', '1121', '2017-10-13 09:45:03', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('237', '1121', '2017-10-13 09:45:48', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('238', '1121', '2017-10-13 09:47:57', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('239', '1121', '2017-10-13 09:48:49', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('240', '1121', '2017-10-13 09:51:48', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('241', '1121', '2017-10-13 09:51:51', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('242', '1121', '2017-10-13 09:51:57', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('243', '1121', '2017-10-13 09:52:03', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('244', '1121', '2017-10-13 09:52:58', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('245', '1121', '2017-10-13 09:53:04', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('246', '1121', '2017-10-13 09:53:42', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('247', '1121', '2017-10-13 09:54:37', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('248', '1121', '2017-10-13 09:55:23', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('249', '1121', '2017-10-13 09:55:41', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('250', '1121', '2017-10-13 09:55:41', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('251', '1121', '2017-10-13 09:55:42', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('252', '1121', '2017-10-13 10:00:35', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('253', '1121', '2017-10-13 10:00:46', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('254', '1121', '2017-10-13 10:00:46', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('255', '1121', '2017-10-13 10:05:37', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('256', '1121', '2017-10-13 10:07:00', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('257', '1121', '2017-10-13 10:10:18', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('258', '1121', '2017-10-13 10:11:28', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('259', '1121', '2017-10-13 10:11:46', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('260', '1121', '2017-10-13 10:11:48', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('261', '1121', '2017-10-13 10:12:37', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('262', '1121', '2017-10-13 10:13:29', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('263', '1121', '2017-10-13 10:17:05', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('264', '1121', '2017-10-13 10:19:38', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('265', '1121', '2017-10-13 10:22:41', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('266', '1121', '2017-10-13 10:23:12', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('267', '1121', '2017-10-13 10:25:55', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('268', '1121', '2017-10-13 10:27:00', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('269', '1121', '2017-10-13 10:27:14', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('270', '1121', '2017-10-13 10:27:41', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('271', '1121', '2017-10-13 10:28:13', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('272', '1121', '2017-10-13 10:28:25', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('273', '1121', '2017-10-13 10:41:33', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('274', '1121', '2017-10-13 10:42:02', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('275', '1121', '2017-10-13 10:42:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('276', '1121', '2017-10-13 10:44:13', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('277', '1121', '2017-10-13 10:44:42', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('278', '1121', '2017-10-13 10:45:10', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('279', '1121', '2017-10-13 10:52:14', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('280', '1121', '2017-10-13 10:53:10', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('281', '1121', '2017-10-13 10:53:35', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('282', '1121', '2017-10-13 10:53:37', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('283', '1121', '2017-10-13 10:53:37', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('284', '1121', '2017-10-13 10:53:39', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('285', '1121', '2017-10-13 11:04:12', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('286', '1121', '2017-10-13 11:04:53', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('287', '1121', '2017-10-13 11:06:01', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('288', '1121', '2017-10-13 11:07:01', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('289', '1121', '2017-10-13 11:08:11', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('290', '1121', '2017-10-13 11:08:14', 'com.jty.service.manage.PermissionServiceImpl:deleteUser');
INSERT INTO `sys_log` VALUES ('291', '1121', '2017-10-13 11:08:14', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('292', '1121', '2017-10-13 11:08:48', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('293', '1121', '2017-10-13 11:09:30', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('294', '1121', '2017-10-13 11:13:17', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('295', '1121', '2017-10-13 11:15:20', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('296', '1121', '2017-10-13 11:16:03', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('297', '1121', '2017-10-13 11:16:14', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('298', '1121', '2017-10-13 11:18:07', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('299', '1121', '2017-10-13 11:18:27', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('300', '1121', '2017-10-13 11:18:29', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('301', '1121', '2017-10-13 11:18:31', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('302', '1121', '2017-10-13 11:18:40', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('303', '1121', '2017-10-13 11:20:11', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('304', '1121', '2017-10-13 11:20:11', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('305', '1121', '2017-10-13 11:21:49', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('306', '1121', '2017-10-13 11:24:19', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('307', '1121', '2017-10-13 11:24:27', 'com.jty.service.manage.PermissionServiceImpl:deleteUser');
INSERT INTO `sys_log` VALUES ('308', '1121', '2017-10-13 11:24:27', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('309', '1121', '2017-10-13 11:25:12', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('310', '1121', '2017-10-13 11:25:13', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('311', '1121', '2017-10-13 11:25:32', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('312', '1121', '2017-10-13 11:25:36', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('313', '1121', '2017-10-13 11:25:40', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('314', '1121', '2017-10-13 11:27:32', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('315', '1121', '2017-10-13 11:28:32', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('316', '1121', '2017-10-13 11:30:55', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('317', '1121', '2017-10-13 11:35:34', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('318', '1121', '2017-10-13 11:35:43', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('319', '1121', '2017-10-13 11:35:45', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('320', '1121', '2017-10-13 11:36:37', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('321', '1121', '2017-10-13 11:36:39', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('322', '1121', '2017-10-13 11:38:35', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('323', '1121', '2017-10-13 11:38:36', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('324', '1121', '2017-10-13 11:38:51', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('325', '1121', '2017-10-13 11:38:52', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('326', '1121', '2017-10-13 11:46:25', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('327', '1121', '2017-10-13 11:46:42', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('328', '1121', '2017-10-13 11:46:48', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('329', '1121', '2017-10-13 11:46:51', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('330', '1121', '2017-10-13 11:46:54', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('331', '1121', '2017-10-13 11:47:02', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('332', '1121', '2017-10-13 11:48:12', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('333', '1121', '2017-10-13 11:49:02', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('334', '1121', '2017-10-13 11:49:06', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('335', '1121', '2017-10-13 11:51:52', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('336', '1121', '2017-10-13 11:54:06', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('337', '1121', '2017-10-13 11:54:07', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('338', '1121', '2017-10-13 11:55:14', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('339', '1121', '2017-10-13 11:55:18', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('340', '1121', '2017-10-13 11:56:54', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('341', '1121', '2017-10-13 11:56:55', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('342', '1121', '2017-10-13 11:57:02', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('343', '1121', '2017-10-13 11:57:57', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('344', '1121', '2017-10-13 11:57:58', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('345', '1121', '2017-10-13 11:58:11', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('346', '1121', '2017-10-13 12:00:45', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('347', '1121', '2017-10-13 12:03:19', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('348', '1121', '2017-10-13 12:04:15', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('349', '1121', '2017-10-13 12:04:53', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('350', '1121', '2017-10-13 12:04:54', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('351', '1121', '2017-10-13 12:06:03', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('352', 'cxz', '2017-10-13 13:10:59', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('353', 'cxz', '2017-10-13 13:11:02', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('354', 'cxz', '2017-10-13 13:11:03', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('355', 'cxz', '2017-10-13 13:11:23', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('356', 'czx', '2017-10-13 13:14:23', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('357', 'czx', '2017-10-13 13:14:25', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('358', 'czx', '2017-10-13 13:14:28', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('359', 'czx', '2017-10-13 13:14:42', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('360', 'czx', '2017-10-13 13:15:23', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('361', 'cxz', '2017-10-13 13:17:22', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('362', 'cxz', '2017-10-13 13:17:24', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('363', 'cxz', '2017-10-13 13:17:26', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('364', 'cxz', '2017-10-13 13:17:41', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('365', 'mn', '2017-10-13 13:26:21', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('366', 'mn', '2017-10-13 13:26:25', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('367', 'mn', '2017-10-13 13:26:27', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('368', 'mn', '2017-10-13 13:26:44', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('369', 'bv', '2017-10-13 13:28:22', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('370', 'bv', '2017-10-13 13:28:24', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('371', 'bv', '2017-10-13 13:28:27', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('372', 'bv', '2017-10-13 13:28:49', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('373', 'jk', '2017-10-13 13:31:22', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('374', 'jk', '2017-10-13 13:31:24', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('375', 'jk', '2017-10-13 13:31:25', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('376', 'jh', '2017-10-13 13:32:51', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('377', 'jh', '2017-10-13 13:32:53', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('378', 'jh', '2017-10-13 13:32:54', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('379', 'jh', '2017-10-13 13:33:16', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('380', 'jh', '2017-10-13 13:33:16', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('381', 'jk', '2017-10-13 13:33:48', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('382', 'jk', '2017-10-13 13:33:50', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('383', 'jk', '2017-10-13 13:33:51', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('384', 'jk', '2017-10-13 13:34:03', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('385', 'jj', '2017-10-13 13:35:22', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('386', 'jj', '2017-10-13 13:35:24', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('387', 'jj', '2017-10-13 13:35:25', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('388', 'uu', '2017-10-13 13:36:14', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('389', 'uu', '2017-10-13 13:36:17', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('390', 'uu', '2017-10-13 13:36:18', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('391', 'uu', '2017-10-13 13:36:37', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('392', 'uu', '2017-10-13 13:36:38', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('393', 'uu', '2017-10-13 13:36:41', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('394', 'uu', '2017-10-13 13:36:56', 'com.jty.service.manage.PermissionServiceImpl:insertUser');
INSERT INTO `sys_log` VALUES ('395', 'uu', '2017-10-13 13:36:56', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('396', 'uu', '2017-10-13 13:37:18', 'com.jty.service.manage.PermissionServiceImpl:deleteUser');
INSERT INTO `sys_log` VALUES ('397', 'uu', '2017-10-13 13:37:18', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('398', 'uu', '2017-10-13 13:37:22', 'com.jty.service.manage.PermissionServiceImpl:deleteUser');
INSERT INTO `sys_log` VALUES ('399', 'uu', '2017-10-13 13:37:22', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('400', 'uu', '2017-10-13 13:37:29', 'com.jty.service.manage.PermissionServiceImpl:deleteUser');
INSERT INTO `sys_log` VALUES ('401', 'uu', '2017-10-13 13:37:29', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('402', 'uu', '2017-10-13 13:37:34', 'com.jty.service.manage.PermissionServiceImpl:deleteUser');
INSERT INTO `sys_log` VALUES ('403', 'uu', '2017-10-13 13:37:34', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('404', 'uu', '2017-10-13 13:37:39', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('405', 'uu', '2017-10-13 13:37:50', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('406', 'uu', '2017-10-13 13:37:50', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('407', 'cx', '2017-10-13 14:43:10', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('408', 'cx', '2017-10-13 14:43:48', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('409', 'cx', '2017-10-13 14:45:06', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('410', 'cx', '2017-10-13 14:45:37', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('411', '1', '2017-10-13 14:45:53', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('412', '1', '2017-10-13 14:46:06', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('413', '1', '2017-10-13 14:49:34', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('414', 'cx', '2017-10-13 14:53:25', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('415', 'cx', '2017-10-13 14:53:38', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('416', 'xx', '2017-10-13 14:55:26', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('417', 'xx', '2017-10-13 15:01:27', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('418', 'xx', '2017-10-13 15:02:33', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('419', 'xx', '2017-10-13 15:02:43', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('420', 'xx', '2017-10-13 15:03:09', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('421', 'xx', '2017-10-13 15:05:27', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('422', 'xx', '2017-10-13 15:06:00', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('423', 'xx', '2017-10-13 15:06:20', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('424', 'xx', '2017-10-13 15:06:52', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('425', 'cx', '2017-10-13 15:09:25', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('426', 'cx', '2017-10-13 15:10:00', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('427', 'cx', '2017-10-13 15:10:10', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('428', 'cx', '2017-10-13 15:10:12', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('429', 'cx', '2017-10-13 15:10:12', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('430', 'cx', '2017-10-13 15:10:48', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('431', 'cx', '2017-10-13 15:14:04', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('432', 'cx', '2017-10-13 15:14:51', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('433', 'cx', '2017-10-13 15:15:09', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('434', 'cx', '2017-10-13 15:15:52', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('435', 'cx', '2017-10-13 15:23:05', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('436', 'cx', '2017-10-13 15:23:53', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('437', 'cx', '2017-10-13 15:24:02', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('438', 'cx', '2017-10-13 15:24:28', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('439', 'cx', '2017-10-13 15:24:56', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('440', 'cx', '2017-10-13 15:26:53', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('441', 'cx', '2017-10-13 15:28:29', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('442', 'cx', '2017-10-13 15:31:00', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('443', 'cx', '2017-10-13 15:31:35', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('444', 'cx', '2017-10-13 15:32:20', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('445', 'cx', '2017-10-13 15:32:42', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('446', 'cx', '2017-10-13 15:32:43', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('447', 'cx', '2017-10-13 15:32:45', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('448', 'cx', '2017-10-13 15:35:36', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('449', 'cx', '2017-10-13 15:36:22', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('450', 'cx', '2017-10-13 15:36:39', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('451', 'cx', '2017-10-13 15:36:53', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('452', 'cx', '2017-10-13 15:37:24', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('453', 'cx', '2017-10-13 15:38:01', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('454', 'cx', '2017-10-13 15:38:01', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('455', 'cx', '2017-10-13 15:39:23', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('456', 'cx', '2017-10-13 15:39:43', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('457', 'cx', '2017-10-13 15:40:10', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('458', 'cx', '2017-10-13 15:40:52', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('459', 'cx', '2017-10-13 15:41:05', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('460', 'cx', '2017-10-13 15:41:06', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('461', 'cx', '2017-10-13 15:41:09', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('462', 'cx', '2017-10-13 15:41:22', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('463', 'cx', '2017-10-13 15:41:52', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('464', 'cx', '2017-10-13 15:42:06', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('465', 'cx', '2017-10-13 15:42:08', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('466', 'cx', '2017-10-13 15:46:44', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('467', 'cx', '2017-10-13 15:46:44', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('468', 'cx', '2017-10-13 15:47:31', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('469', 'cx', '2017-10-13 15:48:13', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('470', 'cx', '2017-10-13 15:48:47', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('471', 'cx', '2017-10-13 15:49:10', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('472', 'cx', '2017-10-13 15:49:21', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('473', 'cx', '2017-10-13 15:49:42', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('474', 'cx', '2017-10-13 15:50:18', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('475', 'cx', '2017-10-13 15:50:19', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('476', 'cx', '2017-10-13 15:50:19', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('477', 'cx', '2017-10-13 15:54:06', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('478', 'cx', '2017-10-13 15:54:07', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('479', 'cx', '2017-10-13 15:54:07', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('480', 'cx', '2017-10-13 15:56:36', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('481', 'cx', '2017-10-13 15:56:37', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('482', 'cx', '2017-10-13 15:56:45', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('483', 'cx', '2017-10-13 16:01:20', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('484', 'cx', '2017-10-13 16:01:33', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('485', 'cx', '2017-10-13 16:01:34', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('486', 'cx', '2017-10-13 16:01:54', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('487', 'cx', '2017-10-13 16:06:53', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('488', 'cx', '2017-10-13 16:15:02', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('489', 'cx', '2017-10-13 16:17:37', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('490', 'cx', '2017-10-13 16:18:07', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('491', 'cx', '2017-10-13 16:18:35', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('492', 'cx', '2017-10-13 16:18:36', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('493', 'cx', '2017-10-13 16:18:43', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('494', 'cx', '2017-10-13 16:18:45', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('495', 'cx', '2017-10-13 16:18:54', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('496', 'cx', '2017-10-13 16:21:40', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('497', 'cx', '2017-10-13 16:21:41', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('498', 'cx', '2017-10-13 16:23:00', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('499', 'cx', '2017-10-13 16:23:01', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('500', 'cx', '2017-10-13 16:23:29', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('501', 'cx', '2017-10-13 16:23:30', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('502', 'cx', '2017-10-13 16:26:48', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('503', 'cx', '2017-10-13 16:26:49', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('504', 'cx', '2017-10-13 16:27:19', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('505', 'cx', '2017-10-13 16:27:21', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('506', 'cx', '2017-10-13 16:34:57', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('507', 'cx', '2017-10-13 16:34:58', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('508', 'cx', '2017-10-13 16:36:58', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('509', 'cx', '2017-10-13 16:37:00', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('510', 'cx', '2017-10-13 16:37:01', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('511', 'cx', '2017-10-13 16:40:44', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('512', 'cx', '2017-10-13 16:40:45', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('513', 'cx', '2017-10-13 16:42:43', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('514', 'cx', '2017-10-13 16:42:45', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('515', 'cx', '2017-10-13 16:44:32', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('516', 'cx', '2017-10-13 16:44:33', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('517', 'cx', '2017-10-13 16:45:43', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('518', 'cx', '2017-10-13 16:45:44', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('519', 'cx', '2017-10-13 16:47:58', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('520', 'cx', '2017-10-13 16:47:59', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('521', 'cx', '2017-10-13 16:49:11', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('522', 'cx', '2017-10-13 16:49:12', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('523', 'cx', '2017-10-13 16:52:20', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('524', 'cx', '2017-10-13 16:52:22', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('525', 'cx', '2017-10-13 16:52:54', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('526', 'cx', '2017-10-13 16:52:55', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('527', 'cx', '2017-10-13 16:54:45', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('528', 'cx', '2017-10-13 16:54:46', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('529', 'cx', '2017-10-13 16:55:56', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('530', 'cx', '2017-10-13 16:55:57', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('531', 'xcx', '2017-10-13 16:57:48', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('532', 'xcx', '2017-10-13 16:57:51', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('533', 'xcx', '2017-10-13 16:57:52', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('534', 'xcx', '2017-10-13 17:00:42', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('535', 'xcx', '2017-10-13 17:00:43', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('536', 'xcx', '2017-10-13 17:01:39', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('537', 'xcx', '2017-10-13 17:01:48', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('538', 'xcx', '2017-10-13 17:01:49', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('539', 'xcx', '2017-10-13 17:02:19', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('540', 'ds', '2017-10-13 17:13:50', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('541', 'ds', '2017-10-13 17:13:52', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('542', 'ds', '2017-10-13 17:13:54', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('543', 'ds', '2017-10-13 17:14:27', 'com.jty.service.manage.PermissionServiceImpl:addRole');
INSERT INTO `sys_log` VALUES ('544', 'ghx', '2017-10-13 17:15:48', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('545', 'ghx', '2017-10-13 17:15:49', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('546', 'ghx', '2017-10-13 17:15:50', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('547', 'ghx', '2017-10-13 17:15:52', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('548', 'ghx', '2017-10-13 17:16:40', 'com.jty.service.manage.PermissionServiceImpl:addRole');
INSERT INTO `sys_log` VALUES ('549', 'h', '2017-10-13 17:18:43', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('550', 'h', '2017-10-13 17:18:48', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('551', 'h', '2017-10-13 17:18:49', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('552', 'h', '2017-10-13 17:19:08', 'com.jty.service.manage.PermissionServiceImpl:addRole');
INSERT INTO `sys_log` VALUES ('553', 'xz', '2017-10-13 17:20:20', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('554', 'xz', '2017-10-13 17:20:22', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('555', 'xz', '2017-10-13 17:20:23', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('556', 'xz', '2017-10-13 17:20:41', 'com.jty.service.manage.PermissionServiceImpl:addRole');
INSERT INTO `sys_log` VALUES ('557', '.', '2017-10-13 17:23:49', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('558', '.', '2017-10-13 17:23:52', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('559', '.', '2017-10-13 17:23:53', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('560', '.', '2017-10-13 17:24:43', 'com.jty.service.manage.PermissionServiceImpl:addRole');
INSERT INTO `sys_log` VALUES ('561', '.', '2017-10-13 17:24:43', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('562', '.', '2017-10-13 17:25:38', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('563', '.', '2017-10-13 17:31:24', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('564', '.', '2017-10-13 17:31:24', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('565', '.', '2017-10-13 17:32:10', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('566', '.', '2017-10-13 17:32:28', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('567', '.', '2017-10-13 17:44:56', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('568', '.', '2017-10-13 17:45:36', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('569', 'xx', '2017-10-16 09:47:15', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('570', 'xx', '2017-10-16 09:47:37', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('571', 'xx', '2017-10-16 09:49:17', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('572', 'xx', '2017-10-16 09:49:51', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('573', 'xx', '2017-10-16 09:52:01', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('574', 'xx', '2017-10-16 09:52:34', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('575', 'xx', '2017-10-16 09:52:42', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('576', 'xx', '2017-10-16 09:53:23', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('577', 'xx', '2017-10-16 09:53:23', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('578', 'xx', '2017-10-16 09:54:19', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('579', 'jack', '2017-10-16 09:58:07', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('580', 'jack', '2017-10-16 09:58:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('581', 'jack', '2017-10-16 09:58:53', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('582', 'jack', '2017-10-16 10:38:05', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('583', 'jack', '2017-10-16 10:48:44', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('584', 'jack', '2017-10-16 10:48:46', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('585', 'java', '2017-10-16 11:07:29', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('586', 'jack', '2017-10-16 11:07:56', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('587', 'jack', '2017-10-16 11:07:58', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('588', 'jack', '2017-10-16 11:08:02', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('589', 'jack', '2017-10-16 11:08:02', 'com.jty.service.manage.PermissionServiceImpl:findAllPrivilege');
INSERT INTO `sys_log` VALUES ('590', 'jack', '2017-10-16 11:08:04', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('591', 'jack', '2017-10-16 11:13:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('592', 'jack', '2017-10-16 11:15:26', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('593', 'jack', '2017-10-16 11:15:30', 'com.jty.service.manage.PermissionServiceImpl:getAllUser');
INSERT INTO `sys_log` VALUES ('594', 'jack', '2017-10-16 11:15:32', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('595', 'jack', '2017-10-16 11:32:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('596', 'jack', '2017-10-16 11:32:33', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('597', 'jack', '2017-10-16 11:32:43', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('598', 'jack', '2017-10-16 11:33:11', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('599', 'jack', '2017-10-16 11:33:14', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('600', 'jack', '2017-10-16 11:35:09', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('601', 'jack', '2017-10-16 11:35:34', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('602', 'jack', '2017-10-16 11:35:44', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('603', 'jack', '2017-10-16 11:36:46', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('604', 'jack', '2017-10-16 11:36:50', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('605', 'jack', '2017-10-16 11:37:03', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('606', 'jack', '2017-10-16 11:42:27', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('607', 'jack', '2017-10-16 11:42:30', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('608', 'jack', '2017-10-16 11:42:41', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('609', 'jack', '2017-10-16 11:43:02', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('610', 'jack', '2017-10-16 11:43:02', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('611', 'jack', '2017-10-16 11:43:13', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('612', 'jack', '2017-10-16 11:43:24', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('613', 'jack', '2017-10-16 11:43:54', 'com.jty.service.manage.PermissionServiceImpl:addMenu');
INSERT INTO `sys_log` VALUES ('614', 'jack', '2017-10-16 11:44:08', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('615', 'jack', '2017-10-16 11:44:17', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('616', 'jack', '2017-10-16 11:44:19', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('617', 'jack', '2017-10-16 11:44:28', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('618', 'jack', '2017-10-16 11:44:38', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('619', 'jack', '2017-10-16 11:44:44', 'com.jty.service.manage.PermissionServiceImpl:deleteMenu');
INSERT INTO `sys_log` VALUES ('620', 'jack', '2017-10-16 11:44:44', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('621', 'jack', '2017-10-16 11:44:48', 'com.jty.service.manage.PermissionServiceImpl:deleteMenu');
INSERT INTO `sys_log` VALUES ('622', 'jack', '2017-10-16 11:44:48', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('623', 'jack', '2017-10-16 11:44:51', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('624', 'jack', '2017-10-16 11:45:04', 'com.jty.service.manage.PermissionServiceImpl:updateMenu');
INSERT INTO `sys_log` VALUES ('625', 'xx', '2017-10-16 11:45:39', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('626', 'xx', '2017-10-16 11:45:40', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('627', 'xx', '2017-10-16 11:45:43', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('628', 'xx', '2017-10-16 11:45:53', 'com.jty.service.manage.PermissionServiceImpl:updateMenu');
INSERT INTO `sys_log` VALUES ('629', 'xx', '2017-10-16 11:45:55', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('630', 'xx', '2017-10-16 11:46:00', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('631', 'xx', '2017-10-16 11:46:02', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('632', 'xx', '2017-10-16 11:47:03', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('633', 'xx', '2017-10-16 11:48:53', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('634', 'xx', '2017-10-16 11:48:59', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('635', 'xx', '2017-10-16 11:49:41', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('636', 'xx', '2017-10-16 11:50:05', 'com.jty.service.manage.PermissionServiceImpl:updateMenu');
INSERT INTO `sys_log` VALUES ('637', 'xx', '2017-10-16 11:50:05', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('638', 'xx', '2017-10-16 11:50:15', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('639', 'xx', '2017-10-16 11:50:25', 'com.jty.service.manage.PermissionServiceImpl:updateMenu');
INSERT INTO `sys_log` VALUES ('640', 'xx', '2017-10-16 11:50:25', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('641', 'xx', '2017-10-16 11:50:28', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('642', 'xx', '2017-10-16 11:50:41', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('643', 'xx', '2017-10-16 11:50:48', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('644', 'xx', '2017-10-16 11:50:52', 'com.jty.service.manage.PermissionServiceImpl:updateMenu');
INSERT INTO `sys_log` VALUES ('645', 'xx', '2017-10-16 11:50:52', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('646', 'xx', '2017-10-16 11:50:54', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('647', 'xx', '2017-10-16 11:51:19', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('648', 'xx', '2017-10-16 11:51:21', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('649', 'xx', '2017-10-16 11:51:27', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('650', 'xx', '2017-10-16 11:51:29', 'com.jty.service.manage.PermissionServiceImpl:updateMenu');
INSERT INTO `sys_log` VALUES ('651', 'xx', '2017-10-16 11:51:30', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('652', 'xx', '2017-10-16 11:51:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('653', 'xx', '2017-10-16 11:51:41', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('654', 'xx', '2017-10-16 11:51:44', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('655', 'xx', '2017-10-16 11:51:48', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('656', 'xx', '2017-10-16 11:51:51', 'com.jty.service.manage.PermissionServiceImpl:updateMenu');
INSERT INTO `sys_log` VALUES ('657', 'xx', '2017-10-16 11:51:51', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('658', 'xx', '2017-10-16 11:51:54', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('659', 'xx', '2017-10-16 11:52:22', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('660', 'xx', '2017-10-16 11:52:26', 'com.jty.service.manage.PermissionServiceImpl:editMenu');
INSERT INTO `sys_log` VALUES ('661', 'xx', '2017-10-16 11:52:32', 'com.jty.service.manage.PermissionServiceImpl:updateMenu');
INSERT INTO `sys_log` VALUES ('662', 'xx', '2017-10-16 11:52:32', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('663', 'xx', '2017-10-16 11:52:35', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('664', 'xxx', '2017-10-16 11:53:27', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('665', 'xxx', '2017-10-16 11:55:50', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('666', 'jack', '2017-10-16 12:00:03', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('667', 'jack', '2017-10-16 12:00:11', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('668', 'jack', '2017-10-16 12:00:49', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('669', 'jack', '2017-10-16 12:01:11', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('670', 'jack', '2017-10-16 12:02:43', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('671', 'jack', '2017-10-16 12:02:52', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('672', 'jack', '2017-10-16 12:02:55', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('673', 'jack', '2017-10-16 13:09:29', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('674', 'jack', '2017-10-16 13:09:33', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('675', 'jack', '2017-10-16 13:09:34', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('676', 'jack', '2017-10-16 13:09:38', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('677', 'jack', '2017-10-16 13:09:42', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('678', 'jack', '2017-10-16 13:10:09', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('679', 'jack', '2017-10-16 13:10:16', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('680', 'jack', '2017-10-16 13:10:19', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('681', 'jack', '2017-10-16 13:10:48', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('682', 'jack', '2017-10-16 13:10:50', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('683', 'jack', '2017-10-16 13:10:55', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('684', 'jack', '2017-10-16 13:11:20', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('685', 'jack', '2017-10-16 13:11:22', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('686', 'jack', '2017-10-16 13:11:24', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('687', 'jack', '2017-10-16 13:11:28', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('688', 'jack', '2017-10-16 13:12:01', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('689', 'jack', '2017-10-16 13:12:15', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('690', 'jack', '2017-10-16 13:12:17', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('691', 'jack', '2017-10-16 13:12:58', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('692', 'jack', '2017-10-16 13:12:59', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('693', 'jack', '2017-10-16 13:13:10', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('694', 'jack', '2017-10-16 13:13:12', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('695', 'jack', '2017-10-16 13:13:13', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('696', 'jack', '2017-10-16 13:13:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('697', 'jack', '2017-10-16 13:13:33', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('698', 'jack', '2017-10-16 13:13:34', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('699', 'jack', '2017-10-16 13:13:46', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('700', 'jack', '2017-10-16 13:14:01', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('701', 'jack', '2017-10-16 13:14:03', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('702', 'jack', '2017-10-16 13:14:27', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('703', 'jack', '2017-10-16 13:14:33', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('704', 'jack', '2017-10-16 13:17:00', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('705', 'jack', '2017-10-16 13:17:03', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('706', 'jack', '2017-10-16 13:17:06', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('707', 'jack', '2017-10-16 13:17:16', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('708', 'jack', '2017-10-16 13:17:20', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('709', 'jack', '2017-10-16 13:18:34', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('710', 'jack', '2017-10-16 13:18:37', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('711', 'jack', '2017-10-16 13:18:38', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('712', 'jack', '2017-10-16 13:18:53', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('713', 'jack', '2017-10-16 13:18:56', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('714', 'jack', '2017-10-16 13:19:03', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('715', 'jack', '2017-10-16 13:19:09', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('716', 'jack', '2017-10-16 13:19:29', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('717', 'jack', '2017-10-16 13:19:32', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('718', 'jack', '2017-10-16 13:19:34', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('719', 'jack', '2017-10-16 13:20:32', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('720', 'jack', '2017-10-16 13:20:37', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('721', 'jack', '2017-10-16 13:20:38', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('722', 'jack', '2017-10-16 13:20:59', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('723', 'jack', '2017-10-16 13:21:01', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('724', 'jack', '2017-10-16 13:21:02', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('725', 'jack', '2017-10-16 13:21:08', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('726', 'jack', '2017-10-16 13:22:06', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('727', 'jack', '2017-10-16 13:22:08', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('728', 'jack', '2017-10-16 13:22:10', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('729', 'jack', '2017-10-16 13:23:04', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('730', 'jack', '2017-10-16 13:23:05', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('731', 'jack', '2017-10-16 13:23:12', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('732', 'jack', '2017-10-16 13:24:09', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('733', 'jack', '2017-10-16 13:24:10', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('734', 'jack', '2017-10-16 13:24:19', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('735', 'jack', '2017-10-16 13:25:13', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('736', 'jack', '2017-10-16 13:25:16', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('737', 'jack', '2017-10-16 13:25:17', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('738', 'jack', '2017-10-16 13:25:24', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('739', 'jack', '2017-10-16 13:25:27', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('740', 'jack', '2017-10-16 15:39:37', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('741', 'jack', '2017-10-16 15:39:41', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('742', 'jack', '2017-10-16 15:39:43', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('743', 'jack', '2017-10-16 15:40:42', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('744', 'jack', '2017-10-16 15:40:48', 'com.jty.service.manage.PermissionServiceImpl:deleteRole');
INSERT INTO `sys_log` VALUES ('745', 'jack', '2017-10-16 15:40:48', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('746', 'jack', '2017-10-16 15:40:55', 'com.jty.service.manage.PermissionServiceImpl:deleteRole');
INSERT INTO `sys_log` VALUES ('747', 'jack', '2017-10-16 15:40:55', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('748', 'jack', '2017-10-16 15:40:59', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('749', 'jack', '2017-10-16 15:43:45', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('750', 'jack', '2017-10-16 15:44:16', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('751', 'jack', '2017-10-16 15:44:27', 'com.jty.service.manage.PermissionServiceImpl:deleteRole');
INSERT INTO `sys_log` VALUES ('752', 'jack', '2017-10-16 15:44:27', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('753', 'jack', '2017-10-16 15:45:02', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('754', 'jack', '2017-10-16 15:45:16', 'com.jty.service.manage.PermissionServiceImpl:deleteRole');
INSERT INTO `sys_log` VALUES ('755', 'jack', '2017-10-16 15:45:16', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('756', 'jack', '2017-10-16 15:52:44', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('757', 'jack', '2017-10-16 15:52:48', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('758', 'jack', '2017-10-16 15:53:06', 'com.jty.service.manage.PermissionServiceImpl:deleteRole');
INSERT INTO `sys_log` VALUES ('759', 'jack', '2017-10-16 15:53:06', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('760', 'jack', '2017-10-16 16:14:43', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('761', 'jack', '2017-10-16 16:15:47', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('762', 'jack', '2017-10-16 16:15:49', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('763', 'jack', '2017-10-16 16:15:53', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('764', 'jack', '2017-10-16 16:15:56', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('765', 'jack', '2017-10-16 16:16:46', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('766', 'jack', '2017-10-16 16:17:14', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('767', 'jack', '2017-10-16 16:17:39', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('768', 'jack', '2017-10-16 16:18:00', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('769', 'jack', '2017-10-16 16:18:04', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('770', 'jack', '2017-10-16 16:18:07', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('771', 'jack', '2017-10-16 16:18:12', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('772', 'jack', '2017-10-16 16:18:47', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('773', 'jack', '2017-10-16 16:22:36', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('774', 'jack', '2017-10-16 16:22:45', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('775', 'jack', '2017-10-16 16:30:40', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('776', 'jack', '2017-10-16 16:30:44', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('777', 'jack', '2017-10-16 16:30:44', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('778', 'jack', '2017-10-16 16:35:23', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('779', 'jack', '2017-10-16 16:35:23', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('780', 'jack', '2017-10-16 16:57:11', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('781', 'jack', '2017-10-16 16:57:11', 'com.jty.service.manage.PermissionServiceImpl:findAllMenu');
INSERT INTO `sys_log` VALUES ('782', 'jack', '2017-10-16 17:08:15', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('783', 'jack', '2017-10-16 17:08:22', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('784', 'jack', '2017-10-16 17:09:32', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('785', 'jack', '2017-10-16 17:09:38', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('786', 'jack', '2017-10-16 17:10:53', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('787', 'jack', '2017-10-16 17:10:57', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('788', 'jack', '2017-10-16 17:11:11', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('789', 'jack', '2017-10-16 17:12:21', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('790', 'xx', '2017-10-16 17:13:11', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('791', 'xx', '2017-10-16 17:13:15', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('792', 'xx', '2017-10-16 17:13:46', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('793', 'xx', '2017-10-16 17:27:20', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('794', 'xx', '2017-10-16 17:27:24', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('795', 'xx', '2017-10-16 17:28:06', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('796', 'xx', '2017-10-16 17:28:08', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('797', 'xx', '2017-10-16 17:28:30', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('798', 'xx', '2017-10-16 17:29:25', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('799', 'xx', '2017-10-16 17:29:33', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('800', 'xx', '2017-10-16 17:31:06', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('801', 'xx', '2017-10-16 17:31:29', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('802', 'xx', '2017-10-16 17:59:52', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('803', 'xx', '2017-10-16 18:01:19', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('804', 'xx', '2017-10-16 18:01:53', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('805', 'xx', '2017-10-16 18:01:55', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('806', 'jack', '2017-10-16 18:03:04', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('807', 'jack', '2017-10-16 18:03:07', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('808', 'jack', '2017-10-16 18:03:07', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('809', 'jack', '2017-10-16 18:03:09', 'com.jty.service.manage.PermissionServiceImpl:editRole');
INSERT INTO `sys_log` VALUES ('810', 'jack', '2017-10-16 18:03:19', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('811', 'jack', '2017-10-16 18:03:21', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('812', 'jack', '2017-10-16 18:03:21', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('813', 'jack', '2017-10-16 18:04:01', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('814', 'jack', '2017-10-16 18:04:02', 'com.jty.service.manage.PermissionServiceImpl:findAllRole');
INSERT INTO `sys_log` VALUES ('815', 'jack', '2017-10-16 18:04:48', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('816', 'xx', '2017-10-16 18:06:31', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('817', 'xx', '2017-10-16 18:06:34', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('818', 'xx', '2017-10-16 18:06:34', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('819', 'xx', '2017-10-16 18:07:10', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');
INSERT INTO `sys_log` VALUES ('820', 'xx', '2017-10-16 18:07:18', 'com.jty.service.manage.PermissionServiceImpl:findUserAllMenu');

-- ----------------------------
-- Table structure for `tb_menu`
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu` (
  `menu_id` int(32) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '菜单名字',
  `parentId` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '0' COMMENT '父Id',
  `layer` int(11) DEFAULT NULL,
  `type` int(4) NOT NULL DEFAULT '1' COMMENT '资源类型(1:为菜单，2:功能，3:按钮)',
  `resUrl` varchar(512) CHARACTER SET utf8 DEFAULT NULL COMMENT '菜单链接',
  `btnId` varchar(32) DEFAULT NULL,
  `btnFun` varchar(64) DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '菜单Icon',
  `sort` int(10) DEFAULT NULL COMMENT '菜单顺序(由小到大排列)',
  `isValid` int(2) DEFAULT NULL COMMENT '是否有效(1:有效,0:无效)',
  `description` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '描述',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('2', '菜单设置', '0', null, '0', '无', null, null, '无', '1', '1', '顶级菜单', '2017-10-12 12:27:18', '2017-10-12 12:27:18');
INSERT INTO `tb_menu` VALUES ('3', '菜单管理', '2', null, '1', 'menuManage.html', null, null, '无', '1', '1', '顶级菜单的子菜单', '2017-10-12 12:29:23', '2017-10-16 12:39:29');
INSERT INTO `tb_menu` VALUES ('4', '权限管理', '0', null, '0', '', null, null, '0', '1', '1', '顶级菜单', '2017-10-12 12:30:06', '2017-10-12 12:30:06');
INSERT INTO `tb_menu` VALUES ('5', '用户管理', '4', null, '1', '../userManage', null, null, '0', '1', '1', '顶级菜单的子级', '2017-10-12 12:31:01', '2017-10-16 12:45:27');
INSERT INTO `tb_menu` VALUES ('6', '角色管理', '4', null, '1', '../roleManage', null, null, '无', '1', '1', '子级菜单（角色管理）', '2017-10-12 12:32:26', '2017-10-16 12:46:08');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'jack', 'jack');
INSERT INTO `user` VALUES ('2', 'andy', 'andy');
INSERT INTO `user` VALUES ('8', 'java', 'java');
INSERT INTO `user` VALUES ('9', 'jaa', 'jaa');
INSERT INTO `user` VALUES ('10', 'jbb', 'jbb');
INSERT INTO `user` VALUES ('11', 'jcc', 'jcc');
INSERT INTO `user` VALUES ('13', 'kk', 'kk');
INSERT INTO `user` VALUES ('15', 'mm', 'mm');
INSERT INTO `user` VALUES ('17', 'uu', 'uu');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `roleid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('1', '2');
INSERT INTO `user_role` VALUES ('1', '3');
INSERT INTO `user_role` VALUES ('2', '1');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('6', '3');
INSERT INTO `user_role` VALUES ('18', '2');
