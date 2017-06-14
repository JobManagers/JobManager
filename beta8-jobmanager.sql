/*
Navicat MySQL Data Transfer

Source Server         : mldn
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : jobmanager

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-06-14 09:23:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `actid` varchar(50) NOT NULL,
  `title` varchar(200) default NULL,
  `rid` varchar(50) default NULL,
  PRIMARY KEY  (`actid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES ('emp:add', '员工添加', 'emp');
INSERT INTO `action` VALUES ('emp:delete', '员工删除', 'emp');
INSERT INTO `action` VALUES ('emp:edit', '员工编辑', 'emp');
INSERT INTO `action` VALUES ('emp:list', '员工列表', 'emp');
INSERT INTO `action` VALUES ('shift_plan_manager:add', '排班方案添加', 'shift_plan_manager');
INSERT INTO `action` VALUES ('shift_plan_manager:delete', '排班方案删除', 'shift_plan_manager');
INSERT INTO `action` VALUES ('shift_plan_manager:edit', '排班方案编辑', 'shift_plan_manager');
INSERT INTO `action` VALUES ('shift_plan_manager:list', '排班方案列表', 'shift_plan_manager');
INSERT INTO `action` VALUES ('shift_table_manager:add', '排班表添加', 'shift_table_manager');
INSERT INTO `action` VALUES ('shift_table_manager:delete', '排班表删除', 'shift_table_manager');
INSERT INTO `action` VALUES ('shift_table_manager:edit', '排班表编辑', 'shift_table_manager');
INSERT INTO `action` VALUES ('shift_table_manager:list', '排班表添加', 'shift_table_manager');
INSERT INTO `action` VALUES ('team:add', '小组添加', 'team');
INSERT INTO `action` VALUES ('team:delete', '小组删除', 'team');
INSERT INTO `action` VALUES ('team:edit', '小组编辑', 'team');
INSERT INTO `action` VALUES ('team:list', '小组列表', 'team');

-- ----------------------------
-- Table structure for employee_info
-- ----------------------------
DROP TABLE IF EXISTS `employee_info`;
CREATE TABLE `employee_info` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '主键',
  `name` varchar(20) NOT NULL default '' COMMENT '员工姓名',
  `avatar` varchar(20) default '' COMMENT '员工头像',
  `sex` tinyint(1) default NULL COMMENT '性别,1:男,0女',
  `phone` varchar(20) default '' COMMENT '联系电话',
  `id_card` varchar(20) default '' COMMENT '身份证编号',
  `birthday` date default NULL COMMENT '生日',
  `hire_date` date default NULL COMMENT '入职日期',
  `dimission_date` date default NULL COMMENT '离职日期',
  `education_degree` varchar(10) default '' COMMENT '文化程度',
  `create_id` bigint(32) default NULL COMMENT '创建人',
  `last_update_user_id` varchar(32) default '' COMMENT '最后修改人',
  `create_time` timestamp NULL default NULL COMMENT '创建时间',
  `update_time` timestamp NULL default NULL COMMENT '修改时间',
  `team_id` bigint(20) NOT NULL default '0' COMMENT '所属小组id',
  `last_update_no` int(11) default '0' COMMENT '最后修改次数',
  `state` tinyint(1) default '1' COMMENT '员工状态(1正常,2离职,-1删除)',
  `email` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工表';

-- ----------------------------
-- Records of employee_info
-- ----------------------------
INSERT INTO `employee_info` VALUES ('1', '侯博文', '', '1', '110', '001', '1994-01-01', '2017-01-01', null, '小学一年级', null, '', null, null, '0', '0', '1', '110@qq.com');
INSERT INTO `employee_info` VALUES ('2', '杨乃华', '', '1', '120', '002', '1993-01-01', '2017-01-01', null, '小学二年级', null, '', null, null, '0', '0', '1', '120@qq.com');
INSERT INTO `employee_info` VALUES ('3', '武春阳', '', '1', '130', '003', '1992-01-01', '2017-01-01', null, '小学三年级', null, '', null, null, '0', '0', '1', '130@qq.com');
INSERT INTO `employee_info` VALUES ('4', '伊双双', '', '1', '140', '004', '1991-01-01', '2017-01-01', null, '小学四年级', null, '', null, null, '0', '0', '1', '140@qq.com');
INSERT INTO `employee_info` VALUES ('5', '王振济', '', '1', '150', '005', '1990-01-01', '2017-01-01', null, '小学五年级', null, '', null, null, '0', '0', '1', '160@qq.com');
INSERT INTO `employee_info` VALUES ('6', '路人1', '', '0', '160', '006', '2000-01-01', '2017-01-01', null, '幼儿园', null, '', null, null, '0', '0', '1', '170@qq.com');
INSERT INTO `employee_info` VALUES ('7', '路人2', '', '0', '170', '007', '2000-10-01', '2017-01-01', null, '幼儿园', null, '', null, null, '0', '0', '1', '180@qq.com');
INSERT INTO `employee_info` VALUES ('8', '路人3', '', '0', '180', '008', '2000-01-01', '2017-01-01', null, '幼儿园', null, '', null, null, '0', '0', '1', '190@qq.com');
INSERT INTO `employee_info` VALUES ('9', '路人4', '', '0', '190', '009', '2000-01-01', '2017-01-01', null, '幼儿园', null, '', null, null, '0', '0', '1', '200@qq.com');
INSERT INTO `employee_info` VALUES ('10', '路人5', '', '0', '200', '010', '2000-01-01', '2017-01-01', null, '幼儿园', null, '', null, null, '0', '0', '1', '210@qq.com');
INSERT INTO `employee_info` VALUES ('11', '路人6', '', '0', '300', '011', '2000-01-01', '2017-01-01', null, '幼儿园', null, '', null, null, '0', '0', '1', '220@qq.com');
INSERT INTO `employee_info` VALUES ('12', '路人7', '', '0', '400', '012', '2000-01-01', '2017-01-01', null, '幼儿园', null, '', null, null, '0', '0', '1', '230@qq.com');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `mid` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` bigint(20) NOT NULL,
  `locked` tinyint(1) NOT NULL,
  PRIMARY KEY  (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('admin', '123', '12', '1');
INSERT INTO `member` VALUES ('superadmin', '123', '13', '1');
INSERT INTO `member` VALUES ('user1', '123', '1', '1');
INSERT INTO `member` VALUES ('user10', '123', '10', '1');
INSERT INTO `member` VALUES ('user11', '123', '11', '1');
INSERT INTO `member` VALUES ('user2', '123', '2', '1');
INSERT INTO `member` VALUES ('user3', '123', '3', '1');
INSERT INTO `member` VALUES ('user4', '123', '4', '1');
INSERT INTO `member` VALUES ('user5', '123', '5', '1');
INSERT INTO `member` VALUES ('user6', '123', '6', '1');
INSERT INTO `member` VALUES ('user7', '123', '7', '1');
INSERT INTO `member` VALUES ('user8', '123', '8', '1');
INSERT INTO `member` VALUES ('user9', '123', '9', '1');

-- ----------------------------
-- Table structure for member_role
-- ----------------------------
DROP TABLE IF EXISTS `member_role`;
CREATE TABLE `member_role` (
  `mid` varchar(50) NOT NULL,
  `rid` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member_role
-- ----------------------------
INSERT INTO `member_role` VALUES ('admin', 'shift_table_manager');
INSERT INTO `member_role` VALUES ('admin', 'shift_plan_manager');
INSERT INTO `member_role` VALUES ('superadmin', 'emp');
INSERT INTO `member_role` VALUES ('superadmin', 'team');
INSERT INTO `member_role` VALUES ('superadmin', 'shift_table_manager');
INSERT INTO `member_role` VALUES ('superadmin', 'shift_plan_manager');
INSERT INTO `member_role` VALUES ('user1', 'shift_table_manager');
INSERT INTO `member_role` VALUES ('user2', 'shift_table_manager');
INSERT INTO `member_role` VALUES ('user3', 'shift_table_manager');
INSERT INTO `member_role` VALUES ('user', null);
INSERT INTO `member_role` VALUES ('user5', 'shift_table_manager');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` varchar(50) NOT NULL,
  `title` varchar(50) default NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('emp', '员工管理');
INSERT INTO `role` VALUES ('shift_plan_manager', '排班方案管理');
INSERT INTO `role` VALUES ('shift_table_manager', '排班表管理');
INSERT INTO `role` VALUES ('team', '小组管理');

-- ----------------------------
-- Table structure for shift_plan_base
-- ----------------------------
DROP TABLE IF EXISTS `shift_plan_base`;
CREATE TABLE `shift_plan_base` (
  `shift_plan_base_id` bigint(20) NOT NULL auto_increment COMMENT '主键',
  `plan_name` varchar(32) NOT NULL COMMENT '方案名称',
  `plan_description` varchar(160) default NULL COMMENT '描述',
  `create_id` bigint(20) NOT NULL COMMENT '创建人ID/评论人ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_update_user_id` bigint(20) NOT NULL COMMENT '最后一次修改人ID',
  `update_time` datetime default NULL COMMENT '修改时间',
  `last_update_no` int(11) NOT NULL default '0' COMMENT '最后一次修改次数',
  `server_station_code` varchar(32) NOT NULL default '' COMMENT '服务站编码',
  `biz_zhy_code` varchar(20) default NULL COMMENT '企业编码',
  `state` tinyint(4) NOT NULL default '1' COMMENT '状态,1:有效，-1:删除',
  PRIMARY KEY  (`shift_plan_base_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排班方案基本表';

-- ----------------------------
-- Records of shift_plan_base
-- ----------------------------

-- ----------------------------
-- Table structure for shift_plan_detail
-- ----------------------------
DROP TABLE IF EXISTS `shift_plan_detail`;
CREATE TABLE `shift_plan_detail` (
  `shift_plan_detail_id` bigint(20) NOT NULL auto_increment COMMENT '主键',
  `shift_plan_base_id` bigint(20) NOT NULL COMMENT '方案基本表主键',
  `detail_name` varchar(16) NOT NULL COMMENT '班次名称',
  `start_time` varchar(8) default NULL COMMENT '开始时间',
  `end_time` varchar(8) default NULL COMMENT '结束时间',
  `days` int(11) NOT NULL COMMENT '连续天数',
  `exc_order` int(11) NOT NULL COMMENT '执行顺序',
  PRIMARY KEY  (`shift_plan_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排班方案详细表';

-- ----------------------------
-- Records of shift_plan_detail
-- ----------------------------

-- ----------------------------
-- Table structure for shift_table_base
-- ----------------------------
DROP TABLE IF EXISTS `shift_table_base`;
CREATE TABLE `shift_table_base` (
  `shift_table_base_id` bigint(20) NOT NULL auto_increment COMMENT '主键',
  `table_name` varchar(32) NOT NULL COMMENT '排班表名称',
  `shift_plan_base_id` bigint(20) NOT NULL COMMENT '排班方案主键',
  `start_date` datetime NOT NULL COMMENT '开始日期',
  `end_date` datetime NOT NULL COMMENT '结束日期',
  `create_id` bigint(20) NOT NULL COMMENT '创建人ID/评论人ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_update_user_id` bigint(20) default NULL COMMENT '最后一次修改人ID',
  `update_time` datetime default NULL COMMENT '修改时间',
  `last_update_no` int(11) NOT NULL default '0' COMMENT '最后一次修改次数',
  `server_station_code` varchar(32) NOT NULL default '' COMMENT '服务站编码',
  `biz_zhy_code` varchar(20) default NULL COMMENT '企业编码',
  `shift_type` tinyint(4) NOT NULL COMMENT '排班类型：1组员排班，2小组排班',
  `state` tinyint(4) NOT NULL default '1' COMMENT '状态,1:有效，-1:删除',
  PRIMARY KEY  (`shift_table_base_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排班表主表';

-- ----------------------------
-- Records of shift_table_base
-- ----------------------------

-- ----------------------------
-- Table structure for shift_table_detail
-- ----------------------------
DROP TABLE IF EXISTS `shift_table_detail`;
CREATE TABLE `shift_table_detail` (
  `shift_table_detail_id` bigint(20) NOT NULL auto_increment COMMENT '主键',
  `shift_table_base_id` bigint(20) NOT NULL COMMENT '排班表主表 主键',
  `employee_id` bigint(20) default NULL COMMENT '组员ID',
  `employee_name` varchar(20) default NULL COMMENT '组员姓名',
  `team_id` bigint(20) default NULL COMMENT '小组ID',
  `team_name` varchar(32) default NULL COMMENT '组名',
  `shift_data` varchar(1024) NOT NULL COMMENT '某个人或组的JSON数据：{"shiftData":[{"day":1,"shiftName":"中"},{"day":2,"shiftName":"中"},...]}',
  `duty_days` int(11) NOT NULL COMMENT '当班天数',
  `shift_order` int(11) NOT NULL COMMENT '用于排序',
  PRIMARY KEY  (`shift_table_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='排班表子表';

-- ----------------------------
-- Records of shift_table_detail
-- ----------------------------

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '主键',
  `name` varchar(20) NOT NULL COMMENT '组名',
  `leader_id` bigint(20) NOT NULL COMMENT '组长,员工ID',
  `create_id` bigint(32) default NULL COMMENT '创建人',
  `last_update_user_id` varchar(32) default '' COMMENT '最后修改人',
  `create_time` timestamp NULL default NULL COMMENT '创建时间',
  `update_time` timestamp NULL default NULL COMMENT '修改时间',
  `team_id` bigint(20) NOT NULL default '0' COMMENT '所属小组id',
  `last_update_no` int(11) default '0' COMMENT '最后修改次数',
  `state` tinyint(1) default '1' COMMENT '员工状态(1正常,-1删除)',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='小组表';

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1', '开发1组', '1', null, '', null, null, '1', '0', '1');
INSERT INTO `team` VALUES ('2', '开发2组', '2', null, '', null, null, '2', '0', '1');
INSERT INTO `team` VALUES ('3', '开发3组', '3', null, '', null, null, '3', '0', '1');
INSERT INTO `team` VALUES ('4', '开发4组', '4', null, '', null, null, '4', '0', '1');
INSERT INTO `team` VALUES ('5', '开发4组', '1', null, '', null, null, '1', '0', '1');
INSERT INTO `team` VALUES ('6', '开发1组', '1', null, '', null, null, '1', '0', '1');
INSERT INTO `team` VALUES ('7', '开发1组', '2', null, '', null, null, '2', '0', '1');
INSERT INTO `team` VALUES ('8', '开发2组', '2', null, '', null, null, '2', '0', '1');
INSERT INTO `team` VALUES ('9', '开发2组', '3', null, '', null, null, '3', '0', '1');
INSERT INTO `team` VALUES ('10', '开发3组', '3', null, '', null, null, '3', '0', '1');
INSERT INTO `team` VALUES ('11', '开发4组', '4', null, '', null, null, '4', '0', '1');
INSERT INTO `team` VALUES ('12', '开发4组', '4', null, '', null, null, '4', '0', '1');
