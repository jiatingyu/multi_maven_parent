/*
Navicat MySQL Data Transfer

Source Server         : 192.168.0.10
Source Server Version : 50717
Source Host           : 192.168.0.10:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-12 18:14:31
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '无');
INSERT INTO `role` VALUES ('2', '管理员', '无');
INSERT INTO `role` VALUES ('3', '会员', '无');

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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES ('2', '菜单设置', '0', null, '0', '无', null, null, '无', '1', '1', '顶级菜单', '2017-10-12 12:27:18', '2017-10-12 12:27:18');
INSERT INTO `tb_menu` VALUES ('3', '菜单管理', '2', null, '1', 'www.baidu.com', null, null, '无', '1', '1', '顶级菜单的子菜单', '2017-10-12 12:29:23', '2017-10-12 12:29:23');
INSERT INTO `tb_menu` VALUES ('4', '权限管理', '0', null, '0', '', null, null, '0', '1', '1', '顶级菜单', '2017-10-12 12:30:06', '2017-10-12 12:30:06');
INSERT INTO `tb_menu` VALUES ('5', '用户管理', '4', null, '1', 'www.xinlang.com', null, null, '0', '1', '1', '顶级菜单的子级', '2017-10-12 12:31:01', '2017-10-12 12:31:01');
INSERT INTO `tb_menu` VALUES ('6', '角色管理', '4', null, '1', 'www.jiaose.com', null, null, '无', '1', '1', '子级菜单（角色管理）', '2017-10-12 12:32:26', '2017-10-12 12:32:26');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'jack', 'jack');
INSERT INTO `user` VALUES ('2', 'andy', 'andy');
INSERT INTO `user` VALUES ('6', 'admin', 'admin');

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
