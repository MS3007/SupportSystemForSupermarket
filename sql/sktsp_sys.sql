/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : localhost:3306
 Source Schema         : sktsp_sys

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 14/06/2024 10:36:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `date` datetime NULL DEFAULT NULL COMMENT '申请日期',
  `shop_id` bigint NOT NULL COMMENT '商店id',
  `good_id` int NOT NULL COMMENT '商品id',
  `count` int NULL DEFAULT NULL COMMENT '数量',
  `is_processed` int NULL DEFAULT 0 COMMENT '是否已兑现',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_al_gid`(`good_id` ASC) USING BTREE,
  INDEX `fk_al_sid`(`shop_id` ASC) USING BTREE,
  CONSTRAINT `fk_al_sid` FOREIGN KEY (`shop_id`) REFERENCES `sys_dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '*申请表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of application
-- ----------------------------
INSERT INTO `application` VALUES (1, '2024-06-06 16:08:06', 103, 1, 50, 0);
INSERT INTO `application` VALUES (2, '2024-06-06 16:08:06', 103, 5, 20, 0);
INSERT INTO `application` VALUES (3, '2024-06-06 16:08:06', 103, 6, 5, 0);
INSERT INTO `application` VALUES (4, '2024-06-06 16:08:06', 103, 8, 5, 0);
INSERT INTO `application` VALUES (5, '2024-06-06 16:08:06', 103, 9, 5, 0);
INSERT INTO `application` VALUES (6, '2024-06-06 16:08:06', 103, 14, 12, 0);
INSERT INTO `application` VALUES (7, '2024-06-06 16:08:06', 103, 15, 10, 0);
INSERT INTO `application` VALUES (8, '2024-06-06 16:08:06', 103, 16, 15, 0);
INSERT INTO `application` VALUES (9, '2024-06-06 16:08:06', 103, 17, 15, 0);
INSERT INTO `application` VALUES (10, '2024-06-06 16:08:06', 103, 18, 20, 0);
INSERT INTO `application` VALUES (11, '2024-06-06 16:08:06', 103, 19, 15, 0);
INSERT INTO `application` VALUES (12, '2024-06-06 16:08:06', 104, 1, 50, 0);
INSERT INTO `application` VALUES (13, '2024-06-06 16:08:06', 104, 6, 5, 0);
INSERT INTO `application` VALUES (14, '2024-06-06 16:08:06', 104, 8, 5, 0);
INSERT INTO `application` VALUES (15, '2024-06-06 16:08:06', 104, 14, 12, 0);
INSERT INTO `application` VALUES (16, '2024-06-06 16:08:06', 104, 15, 12, 0);
INSERT INTO `application` VALUES (17, '2024-06-06 16:08:06', 104, 16, 95, 0);
INSERT INTO `application` VALUES (18, '2024-06-06 16:08:06', 104, 18, 15, 0);
INSERT INTO `application` VALUES (19, '2024-06-06 16:08:06', 104, 19, 10, 0);
INSERT INTO `application` VALUES (20, '2024-06-06 16:08:06', 105, 1, 50, 0);
INSERT INTO `application` VALUES (21, '2024-06-06 16:08:06', 105, 8, 5, 0);
INSERT INTO `application` VALUES (22, '2024-06-06 16:08:06', 105, 14, 8, 0);
INSERT INTO `application` VALUES (23, '2024-06-06 16:08:06', 105, 15, 15, 0);
INSERT INTO `application` VALUES (24, '2024-06-06 16:08:06', 105, 16, 80, 0);
INSERT INTO `application` VALUES (25, '2024-06-06 16:08:06', 105, 17, 20, 0);
INSERT INTO `application` VALUES (26, '2024-06-06 16:08:06', 105, 18, 20, 0);
INSERT INTO `application` VALUES (27, '2024-06-06 16:08:06', 106, 1, 30, 0);
INSERT INTO `application` VALUES (28, '2024-06-06 16:08:06', 106, 5, 40, 0);
INSERT INTO `application` VALUES (29, '2024-06-06 16:08:06', 106, 6, 5, 0);
INSERT INTO `application` VALUES (30, '2024-06-06 16:08:06', 106, 8, 5, 0);
INSERT INTO `application` VALUES (31, '2024-06-06 16:08:06', 106, 9, 8, 0);
INSERT INTO `application` VALUES (32, '2024-06-06 16:08:06', 106, 15, 8, 0);
INSERT INTO `application` VALUES (33, '2024-06-06 16:08:06', 106, 16, 80, 0);
INSERT INTO `application` VALUES (34, '2024-06-06 16:08:06', 106, 17, 10, 0);
INSERT INTO `application` VALUES (35, '2024-06-06 16:08:06', 106, 18, 30, 0);
INSERT INTO `application` VALUES (36, '2024-06-06 16:08:06', 107, 1, 80, 0);
INSERT INTO `application` VALUES (37, '2024-06-06 16:08:06', 107, 5, 35, 0);
INSERT INTO `application` VALUES (38, '2024-06-06 16:08:06', 107, 8, 5, 0);
INSERT INTO `application` VALUES (39, '2024-06-06 16:08:06', 107, 9, 6, 0);
INSERT INTO `application` VALUES (40, '2024-06-06 16:08:06', 107, 16, 25, 0);
INSERT INTO `application` VALUES (41, '2024-06-06 16:08:06', 107, 18, 20, 0);
INSERT INTO `application` VALUES (42, '2024-06-06 16:08:06', 201, 6, 5, 0);
INSERT INTO `application` VALUES (43, '2024-06-06 16:08:06', 201, 8, 5, 0);
INSERT INTO `application` VALUES (44, '2024-06-06 16:08:06', 201, 16, 10, 0);
INSERT INTO `application` VALUES (45, '2024-06-06 16:08:06', 201, 18, 30, 0);

-- ----------------------------
-- Table structure for distributeresult
-- ----------------------------
DROP TABLE IF EXISTS `distributeresult`;
CREATE TABLE `distributeresult`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` bigint NOT NULL COMMENT '超市id',
  `warehouse_id` bigint NOT NULL COMMENT '仓库id',
  `good_id` int NOT NULL COMMENT '商品id',
  `count` int NULL DEFAULT NULL COMMENT '数量',
  `time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '调拨日期',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_res_gid`(`good_id` ASC) USING BTREE,
  INDEX `fk_res_mid`(`shop_id` ASC) USING BTREE,
  INDEX `fk_res_wid`(`warehouse_id` ASC) USING BTREE,
  CONSTRAINT `fk_res_gid` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_res_mid` FOREIGN KEY (`shop_id`) REFERENCES `sys_dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_res_wid` FOREIGN KEY (`warehouse_id`) REFERENCES `sys_dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '*调拨结果表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of distributeresult
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (4, 'shop_stock', '*超市库存表', NULL, NULL, 'ShopStock', 'crud', 'element-ui', 'com.ruoyi.stock', 'stock', 'shop_stock', '超市库存管理', 'ruoyi', '0', '/', '{}', 'admin', '2024-04-26 11:13:14', '', '2024-04-26 18:22:23', NULL);
INSERT INTO `gen_table` VALUES (6, 'warehouse_inventory', '*仓库库存表', NULL, NULL, 'WarehouseInventory', 'crud', 'element-ui', 'com.ruoyi.stock', 'stock', 'warehouse_inventory', '仓库库存管理', 'ruoyi', '0', '/', '{}', 'admin', '2024-04-26 11:13:14', '', '2024-04-26 18:22:36', NULL);
INSERT INTO `gen_table` VALUES (7, 'sys_dept', '*部门表', NULL, NULL, 'SysDept', 'crud', '', 'com.ruoyi.system', 'system', 'dept', '*部门', 'ruoyi', '0', '/', NULL, 'admin', '2024-04-26 14:41:26', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (10, 'goods', '*商品表', NULL, NULL, 'Goods', 'crud', 'element-ui', 'com.ruoyi.center', 'center', 'goods', '商品管理', 'ruoyi', '0', '/', '{}', 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:38:46', NULL);
INSERT INTO `gen_table` VALUES (11, 'shop_warehouse_distance', '*超市仓库距离表', NULL, NULL, 'ShopWarehouseDistance', 'crud', 'element-ui', 'com.ruoyi.center', 'center', 'distance', '销储距离管理', 'ruoyi', '0', '/', '{}', 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:32:45', NULL);
INSERT INTO `gen_table` VALUES (12, 'application', '*申请表', NULL, NULL, 'Application', 'crud', 'element-ui', 'com.ruoyi.distribute', 'distribute', 'application', '物资申请', 'ruoyi', '0', '/', '{}', 'admin', '2024-04-26 17:44:50', '', '2024-04-26 17:46:26', NULL);
INSERT INTO `gen_table` VALUES (14, 'distributeresult', '*调拨结果表', NULL, NULL, 'Distributeresult', 'crud', 'element-ui', 'com.ruoyi.distribute', 'distribute', 'distributeresult', '分配调拨', 'ruoyi', '0', '/', '{}', 'admin', '2024-04-26 18:13:59', '', '2024-04-26 18:14:38', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 79 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (16, 4, 'id', 'ID', 'int', 'Long', 'id', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-26 11:13:14', '', '2024-04-26 18:22:23');
INSERT INTO `gen_table_column` VALUES (17, 4, 'shop_id', '超市ID', 'bigint', 'Long', 'shopId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-04-26 11:13:14', '', '2024-04-26 18:22:23');
INSERT INTO `gen_table_column` VALUES (18, 4, 'goods_id', '商品ID', 'int', 'Long', 'goodsId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-26 11:13:14', '', '2024-04-26 18:22:23');
INSERT INTO `gen_table_column` VALUES (19, 4, 'sum', '数量', 'int', 'Long', 'sum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-26 11:13:14', '', '2024-04-26 18:22:23');
INSERT INTO `gen_table_column` VALUES (24, 6, 'id', '主键', 'int', 'Long', 'id', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-26 11:13:14', '', '2024-04-26 18:22:36');
INSERT INTO `gen_table_column` VALUES (25, 6, 'warehouse_id', '仓库id', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-04-26 11:13:14', '', '2024-04-26 18:22:36');
INSERT INTO `gen_table_column` VALUES (26, 6, 'goods_id', '商品id', 'int', 'Long', 'goodsId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-26 11:13:14', '', '2024-04-26 18:22:36');
INSERT INTO `gen_table_column` VALUES (27, 6, 'sum', '数量', 'int', 'Long', 'sum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-26 11:13:14', '', '2024-04-26 18:22:36');
INSERT INTO `gen_table_column` VALUES (28, 7, 'dept_id', '部门id', 'bigint', 'Long', 'deptId', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, 7, 'parent_id', '父部门id', 'bigint', 'Long', 'parentId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (30, 7, 'ancestors', '祖级列表', 'varchar(50)', 'String', 'ancestors', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (31, 7, 'dept_name', '部门名称', 'varchar(30)', 'String', 'deptName', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (32, 7, 'order_num', '显示顺序', 'int', 'Long', 'orderNum', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, 7, 'leader', '负责人', 'varchar(20)', 'String', 'leader', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (34, 7, 'phone', '联系电话', 'varchar(11)', 'String', 'phone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (35, 7, 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (36, 7, 'status', '部门状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (37, 7, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (38, 7, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (39, 7, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (40, 7, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (41, 7, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (42, 7, 'location', '地址', 'varchar(255)', 'String', 'location', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2024-04-26 14:41:26', '', NULL);
INSERT INTO `gen_table_column` VALUES (53, 10, 'id', 'id', 'int', 'Long', 'id', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:38:46');
INSERT INTO `gen_table_column` VALUES (54, 10, 'code', '条码', 'varchar(255)', 'String', 'code', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:38:46');
INSERT INTO `gen_table_column` VALUES (55, 10, 'unit', '单位', 'varchar(255)', 'String', 'unit', '0', '0', '0', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:38:46');
INSERT INTO `gen_table_column` VALUES (56, 10, 'name', '名字', 'varchar(255)', 'String', 'name', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:38:46');
INSERT INTO `gen_table_column` VALUES (57, 10, 'price', '价格', 'double', 'Double', 'price', '0', '0', '0', '1', '1', '1', '1', 'BETWEEN', 'input', '', 5, 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:38:46');
INSERT INTO `gen_table_column` VALUES (58, 10, 'type', '分类', 'varchar(255)', 'String', 'type', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:38:46');
INSERT INTO `gen_table_column` VALUES (59, 11, 'id', '主键', 'int', 'Long', 'id', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:32:45');
INSERT INTO `gen_table_column` VALUES (60, 11, 'shop_id', '商店id', 'bigint', 'Long', 'shopId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:32:46');
INSERT INTO `gen_table_column` VALUES (61, 11, 'warehouse_id', '仓库id', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:32:46');
INSERT INTO `gen_table_column` VALUES (62, 11, 'distance', '距离', 'double', 'Double', 'distance', '0', '0', '0', '1', '1', '1', '1', 'BETWEEN', 'input', '', 4, 'admin', '2024-04-26 17:27:45', '', '2024-04-26 17:32:46');
INSERT INTO `gen_table_column` VALUES (63, 12, 'id', '主键', 'int', 'Long', 'id', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-26 17:44:50', '', '2024-04-26 17:46:26');
INSERT INTO `gen_table_column` VALUES (64, 12, 'date', '申请日期', 'datetime', 'Date', 'date', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 2, 'admin', '2024-04-26 17:44:50', '', '2024-04-26 17:46:26');
INSERT INTO `gen_table_column` VALUES (65, 12, 'shop_id', '商店id', 'int', 'Long', 'shopId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-26 17:44:50', '', '2024-04-26 17:46:26');
INSERT INTO `gen_table_column` VALUES (66, 12, 'good_id', '商品id', 'int', 'Long', 'goodId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-26 17:44:50', '', '2024-04-26 17:46:26');
INSERT INTO `gen_table_column` VALUES (67, 12, 'count', '数量', 'int', 'Long', 'count', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-04-26 17:44:50', '', '2024-04-26 17:46:26');
INSERT INTO `gen_table_column` VALUES (68, 12, 'is_processed', '是否已兑现', 'int', 'Long', 'isProcessed', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-04-26 17:44:50', '', '2024-04-26 17:46:26');
INSERT INTO `gen_table_column` VALUES (74, 14, 'id', '主键', 'int', 'Long', 'id', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-04-26 18:13:59', '', '2024-04-26 18:14:38');
INSERT INTO `gen_table_column` VALUES (75, 14, 'shop_id', '超市id', 'bigint', 'Long', 'shopId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-04-26 18:13:59', '', '2024-04-26 18:14:38');
INSERT INTO `gen_table_column` VALUES (76, 14, 'warehouse_id', '仓库id', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-04-26 18:13:59', '', '2024-04-26 18:14:38');
INSERT INTO `gen_table_column` VALUES (77, 14, 'good_id', '商品id', 'int', 'Long', 'goodId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-04-26 18:13:59', '', '2024-04-26 18:14:38');
INSERT INTO `gen_table_column` VALUES (78, 14, 'count', '数量', 'int', 'Long', 'count', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-04-26 18:13:59', '', '2024-04-26 18:14:38');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '条码',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名字',
  `price` double NULL DEFAULT NULL COMMENT '价格',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `code`(`code` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '*商品表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '6901826888138', '节', '南孚电池5号', 5, '办公用品');
INSERT INTO `goods` VALUES (2, '6911266881088', '盒', '三木8108订书机', 10, '办公用品');
INSERT INTO `goods` VALUES (3, '6920583832048', '本', '远生40页资料册', 10, '办公用品');
INSERT INTO `goods` VALUES (4, '6920583834974', '个', '2006资料架', 30, '办公用品');
INSERT INTO `goods` VALUES (5, '6920930350560', '支', '爱好AH-505圆珠笔', 1, '办公用品');
INSERT INTO `goods` VALUES (6, '6921734962409', '个', '40CM直尺', 3.5, '办公用品');
INSERT INTO `goods` VALUES (7, '6921913320112', '支', '502胶', 1.5, '办公用品');
INSERT INTO `goods` VALUES (8, '6922646101733', '个', '公牛插座N-608（6M）', 45, '办公用品');
INSERT INTO `goods` VALUES (9, '6924035801491', '个', '伊达时计算器', 40, '办公用品');
INSERT INTO `goods` VALUES (10, '6927647800555', '把', '上海好运伞', 18, '日用品');
INSERT INTO `goods` VALUES (11, '6928424205679', '盒', '欧标牌回形针', 1.2, '办公用品');
INSERT INTO `goods` VALUES (12, '6928424205693', '盒', '欧标牌大头针', 1.7, '办公用品');
INSERT INTO `goods` VALUES (13, '6928424205709', '盒', '欧标牌图钉', 1.8, '办公用品');
INSERT INTO `goods` VALUES (14, '6941117900507', '盒', '欧标牌订书钉', 1.2, '办公用品');
INSERT INTO `goods` VALUES (15, '6941117900569', '个', '欧标牌订书机', 3.5, '办公用品');
INSERT INTO `goods` VALUES (16, '6938973660683', '条', '毛巾', 7, '日用品');
INSERT INTO `goods` VALUES (17, '6901294171282', '块', '香皂', 3, '日用品');
INSERT INTO `goods` VALUES (18, '6942619000054', '扎', '纸杯', 4.5, '日用品');
INSERT INTO `goods` VALUES (19, '6928651720693', '提', '唯思抽纸', 4.8, '日用品');
INSERT INTO `goods` VALUES (20, '6902538003499', '瓶', '矿泉水', 1, '饮料');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for shop_stock
-- ----------------------------
DROP TABLE IF EXISTS `shop_stock`;
CREATE TABLE `shop_stock`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `shop_id` bigint NOT NULL COMMENT '超市ID',
  `goods_id` int NOT NULL COMMENT '商品ID',
  `sum` int NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_ss_mid`(`shop_id` ASC) USING BTREE,
  INDEX `fk_ss_gid`(`goods_id` ASC) USING BTREE,
  CONSTRAINT `fk_ss_gid` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_ss_mid` FOREIGN KEY (`shop_id`) REFERENCES `sys_dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '*超市库存表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shop_stock
-- ----------------------------

-- ----------------------------
-- Table structure for shop_warehouse_distance
-- ----------------------------
DROP TABLE IF EXISTS `shop_warehouse_distance`;
CREATE TABLE `shop_warehouse_distance`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` bigint NOT NULL COMMENT '商店id',
  `warehouse_id` bigint NOT NULL COMMENT '仓库id',
  `distance` double NULL DEFAULT NULL COMMENT '距离',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_dis_mid`(`shop_id` ASC) USING BTREE,
  INDEX `fk_dis_wid`(`warehouse_id` ASC) USING BTREE,
  CONSTRAINT `fk_dis_mid` FOREIGN KEY (`shop_id`) REFERENCES `sys_dept` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_dis_wid` FOREIGN KEY (`warehouse_id`) REFERENCES `sys_dept` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '*超市仓库距离表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shop_warehouse_distance
-- ----------------------------
INSERT INTO `shop_warehouse_distance` VALUES (1, 103, 108, 3.2);
INSERT INTO `shop_warehouse_distance` VALUES (2, 103, 109, 8.5);
INSERT INTO `shop_warehouse_distance` VALUES (3, 103, 200, 12);
INSERT INTO `shop_warehouse_distance` VALUES (4, 103, 202, 1.1);
INSERT INTO `shop_warehouse_distance` VALUES (5, 104, 108, 6.3);
INSERT INTO `shop_warehouse_distance` VALUES (6, 104, 109, 9);
INSERT INTO `shop_warehouse_distance` VALUES (7, 104, 200, 8.8);
INSERT INTO `shop_warehouse_distance` VALUES (8, 104, 202, 1.1);
INSERT INTO `shop_warehouse_distance` VALUES (9, 105, 108, 10.6);
INSERT INTO `shop_warehouse_distance` VALUES (10, 105, 109, 3.5);
INSERT INTO `shop_warehouse_distance` VALUES (11, 105, 200, 4);
INSERT INTO `shop_warehouse_distance` VALUES (12, 105, 202, 1.1);
INSERT INTO `shop_warehouse_distance` VALUES (13, 106, 108, 12);
INSERT INTO `shop_warehouse_distance` VALUES (14, 106, 109, 4);
INSERT INTO `shop_warehouse_distance` VALUES (15, 106, 200, 4.5);
INSERT INTO `shop_warehouse_distance` VALUES (16, 106, 202, 1.1);
INSERT INTO `shop_warehouse_distance` VALUES (17, 107, 108, 12.6);
INSERT INTO `shop_warehouse_distance` VALUES (18, 107, 109, 9);
INSERT INTO `shop_warehouse_distance` VALUES (19, 107, 200, 8.8);
INSERT INTO `shop_warehouse_distance` VALUES (20, 107, 202, 1.1);
INSERT INTO `shop_warehouse_distance` VALUES (21, 201, 108, 1.1);
INSERT INTO `shop_warehouse_distance` VALUES (22, 201, 109, 1.1);
INSERT INTO `shop_warehouse_distance` VALUES (23, 201, 200, 1.1);
INSERT INTO `shop_warehouse_distance` VALUES (24, 201, 202, 1.1);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-04-12 10:55:12', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-04-12 10:55:12', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-04-12 10:55:12', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-04-12 10:55:12', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-04-12 10:55:12', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-04-12 10:55:12', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '代号',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '*部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', NULL, '超级百货公司', 0, 'RMS', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-04-12 17:16:28', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', NULL, '销售部', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-04-12 17:24:59', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', NULL, '仓储部', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-04-12 17:25:06', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', 'M1', '呼和浩特北京华联金太店', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-04-12 17:25:20', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', 'M2', '呼和浩特北京华联金兴店', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-04-12 17:25:32', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', 'M3', '呼和浩特北京华联金宇店', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-04-12 17:25:41', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', 'M4', '呼和浩特北京华联金宇食品店', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-04-12 17:25:49', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', 'M5', '呼和浩特北京华联如意店', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-04-12 17:25:58', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', 'S1', '什拉门更西货场仓库', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-04-12 17:26:12', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', 'S2', '美通物流中心仓库', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-04-12 17:26:21', NULL);
INSERT INTO `sys_dept` VALUES (200, 102, '0,100,102', 'S3', '保全庄物资仓库', 3, NULL, NULL, NULL, '0', '0', 'admin', '2024-04-12 17:26:40', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (201, 101, '0,100,101', 'M6', '（测试用超市）', 6, NULL, NULL, NULL, '0', '0', 'admin', '2024-05-25 10:29:02', '', NULL, NULL);
INSERT INTO `sys_dept` VALUES (202, 102, '0,100,102', 'S4', '（测试用仓库）', 4, NULL, NULL, NULL, '0', '0', 'admin', '2024-05-25 10:29:17', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-04-12 10:55:12', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 162 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 11:02:36');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-04-12 17:05:36');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 17:05:40');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 17:10:53');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 17:12:19');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 17:28:42');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-04-12 17:33:03');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-04-12 17:33:04');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-04-12 17:33:06');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-12 17:33:08');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-19 11:50:31');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-04-25 17:16:19');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-25 17:16:24');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-04-26 11:04:21');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-26 11:04:24');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-04-26 14:37:48');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-26 14:37:51');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-26 15:48:41');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-04-26 16:28:06');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-04-26 16:28:10');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-09 16:47:13');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-13 10:23:35');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-13 10:23:39');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-13 11:11:47');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-05-15 13:15:03');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-15 13:15:07');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-16 22:51:52');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-21 12:27:41');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-22 09:43:00');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-22 14:45:34');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-24 10:05:52');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-24 11:08:01');
INSERT INTO `sys_logininfor` VALUES (132, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-05-24 11:08:10');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-24 11:08:24');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-24 11:08:39');
INSERT INTO `sys_logininfor` VALUES (135, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-24 11:08:46');
INSERT INTO `sys_logininfor` VALUES (136, 'ry', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-05-24 11:09:21');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-24 11:10:50');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-24 11:24:09');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-24 11:29:31');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-24 17:55:09');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-24 18:07:05');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-25 09:12:42');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-25 15:21:41');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-25 17:36:29');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-25 18:44:19');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-25 21:23:34');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-26 14:13:35');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-05-26 23:48:27');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-01 09:57:13');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-01 13:49:25');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-03 18:49:00');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 13:21:56');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 18:15:46');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-06 18:30:34');
INSERT INTO `sys_logininfor` VALUES (155, 'testware', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-06-06 18:30:43');
INSERT INTO `sys_logininfor` VALUES (156, 'testware', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 18:30:46');
INSERT INTO `sys_logininfor` VALUES (157, 'testware', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-06 18:31:06');
INSERT INTO `sys_logininfor` VALUES (158, 'testcenter', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '用户不存在/密码错误', '2024-06-06 18:31:15');
INSERT INTO `sys_logininfor` VALUES (159, 'testcenter', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 18:31:42');
INSERT INTO `sys_logininfor` VALUES (160, 'testcenter', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-06-06 18:32:12');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-06-06 18:32:15');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2073 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-04-12 10:55:12', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-04-12 10:55:12', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-04-12 10:55:12', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-04-12 10:55:12', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-04-12 10:55:12', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-04-12 10:55:12', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-04-12 10:55:12', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-04-12 10:55:12', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-04-12 10:55:12', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-04-12 10:55:12', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-04-12 10:55:12', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-04-12 10:55:12', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-04-12 10:55:12', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-04-12 10:55:12', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-04-12 10:55:12', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-04-12 10:55:12', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-04-12 10:55:12', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-04-12 10:55:12', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-04-12 10:55:12', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-04-12 10:55:12', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-04-12 10:55:12', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-04-12 10:55:12', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-04-12 10:55:12', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-04-12 10:55:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '商品管理', 0, 1, 'goods', 'center/goods/index', NULL, 1, 0, 'C', '0', '0', 'center:goods:list', 'form', 'admin', '2024-04-26 17:20:25', 'admin', '2024-04-26 17:21:00', '商品管理菜单');
INSERT INTO `sys_menu` VALUES (2014, '商品管理查询', 2013, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'center:goods:query', '#', 'admin', '2024-04-26 17:20:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '商品管理新增', 2013, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'center:goods:add', '#', 'admin', '2024-04-26 17:20:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '商品管理修改', 2013, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'center:goods:edit', '#', 'admin', '2024-04-26 17:20:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '商品管理删除', 2013, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'center:goods:remove', '#', 'admin', '2024-04-26 17:20:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '商品管理导出', 2013, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'center:goods:export', '#', 'admin', '2024-04-26 17:20:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '销储距离管理', 0, 1, 'distance', 'center/distance/index', NULL, 1, 0, 'C', '0', '0', 'center:distance:list', 'tree', 'admin', '2024-04-26 17:34:22', 'admin', '2024-04-26 17:37:56', '销储距离管理菜单');
INSERT INTO `sys_menu` VALUES (2020, '销储距离管理查询', 2019, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'center:distance:query', '#', 'admin', '2024-04-26 17:34:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '销储距离管理新增', 2019, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'center:distance:add', '#', 'admin', '2024-04-26 17:34:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '销储距离管理修改', 2019, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'center:distance:edit', '#', 'admin', '2024-04-26 17:34:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '销储距离管理删除', 2019, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'center:distance:remove', '#', 'admin', '2024-04-26 17:34:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '销储距离管理导出', 2019, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'center:distance:export', '#', 'admin', '2024-04-26 17:34:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '物资申请', 0, 1, 'application', 'distribute/application/index', NULL, 1, 0, 'C', '0', '0', 'distribute:application:list', 'shopping', 'admin', '2024-04-26 17:47:21', 'admin', '2024-04-26 18:12:02', '物资申请菜单');
INSERT INTO `sys_menu` VALUES (2026, '物资申请查询', 2025, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'distribute:application:query', '#', 'admin', '2024-04-26 17:47:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '物资申请新增', 2025, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'distribute:application:add', '#', 'admin', '2024-04-26 17:47:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '物资申请修改', 2025, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'distribute:application:edit', '#', 'admin', '2024-04-26 17:47:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '物资申请删除', 2025, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'distribute:application:remove', '#', 'admin', '2024-04-26 17:47:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '物资申请导出', 2025, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'distribute:application:export', '#', 'admin', '2024-04-26 17:47:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '分配调拨', 0, 1, 'distributeresult', 'distribute/distributeresult/index', NULL, 1, 0, 'C', '0', '0', 'distribute:distributeresult:list', 'druid', 'admin', '2024-04-26 18:14:56', 'admin', '2024-04-26 18:17:28', '分配调拨菜单');
INSERT INTO `sys_menu` VALUES (2032, '分配调拨查询', 2031, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:query', '#', 'admin', '2024-04-26 18:14:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '分配调拨新增', 2031, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:add', '#', 'admin', '2024-04-26 18:14:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '分配调拨修改', 2031, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:edit', '#', 'admin', '2024-04-26 18:14:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '分配调拨删除', 2031, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:remove', '#', 'admin', '2024-04-26 18:14:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '分配调拨导出', 2031, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:export', '#', 'admin', '2024-04-26 18:14:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '仓库库存管理', 0, 1, 'warehouse_inventory', 'stock/warehouse_inventory/index', NULL, 1, 0, 'C', '0', '0', 'stock:warehouse_inventory:list', 'nested', 'admin', '2024-04-26 18:26:33', 'admin', '2024-04-26 18:28:41', '仓库库存管理菜单');
INSERT INTO `sys_menu` VALUES (2050, '仓库库存管理查询', 2049, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'stock:warehouse_inventory:query', '#', 'admin', '2024-04-26 18:26:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '仓库库存管理新增', 2049, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'stock:warehouse_inventory:add', '#', 'admin', '2024-04-26 18:26:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '仓库库存管理修改', 2049, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'stock:warehouse_inventory:edit', '#', 'admin', '2024-04-26 18:26:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '仓库库存管理删除', 2049, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'stock:warehouse_inventory:remove', '#', 'admin', '2024-04-26 18:26:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '仓库库存管理导出', 2049, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'stock:warehouse_inventory:export', '#', 'admin', '2024-04-26 18:26:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '超市库存管理', 0, 1, 'shop_stock', 'stock/shop_stock/index', NULL, 1, 0, 'C', '0', '0', 'stock:shop_stock:list', 'nested', 'admin', '2024-04-26 18:26:41', 'admin', '2024-04-26 18:28:50', '超市库存管理菜单');
INSERT INTO `sys_menu` VALUES (2056, '超市库存管理查询', 2055, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'stock:shop_stock:query', '#', 'admin', '2024-04-26 18:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '超市库存管理新增', 2055, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'stock:shop_stock:add', '#', 'admin', '2024-04-26 18:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '超市库存管理修改', 2055, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'stock:shop_stock:edit', '#', 'admin', '2024-04-26 18:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '超市库存管理删除', 2055, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'stock:shop_stock:remove', '#', 'admin', '2024-04-26 18:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '超市库存管理导出', 2055, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'stock:shop_stock:export', '#', 'admin', '2024-04-26 18:26:41', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2061, '调拨结果（超市）', 0, 1, 'shopdistributeresult', 'distribute/shopresult/shop_index', NULL, 1, 0, 'C', '0', '0', 'distribute:distributeresult:list', 'druid', 'admin', '2024-06-06 18:17:32', 'admin', '2024-06-06 18:33:05', '');
INSERT INTO `sys_menu` VALUES (2062, '查询', 2061, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:query', '#', 'admin', '2024-06-06 18:19:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2063, '新增', 2061, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:add', '#', 'admin', '2024-06-06 18:19:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '修改', 2061, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:edit', '#', 'admin', '2024-06-06 18:19:34', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '删除', 2061, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:remove', '#', 'admin', '2024-06-06 18:19:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2066, '导出', 2061, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:export', '#', 'admin', '2024-06-06 18:20:02', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2067, '调拨结果（仓库）', 0, 1, 'wareresult', 'distribute/warehouseresult/warehouse_index', NULL, 1, 0, 'C', '0', '0', 'distribute:distributeresult:list', 'druid', 'admin', '2024-06-06 18:20:56', 'admin', '2024-06-06 18:32:46', '');
INSERT INTO `sys_menu` VALUES (2068, '查询', 2067, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:query', '#', 'admin', '2024-06-06 18:21:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2069, '新增', 2067, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:add', '#', 'admin', '2024-06-06 18:22:11', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '修改', 2067, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:edit', '#', 'admin', '2024-06-06 18:22:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2071, '删除', 2067, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:remove', '#', 'admin', '2024-06-06 18:22:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2072, '导出', 2067, 1, '', NULL, NULL, 1, 0, 'F', '0', '0', 'distribute:distributeresult:export', '#', 'admin', '2024-06-06 18:22:58', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-04-12 10:55:12', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-04-12 10:55:12', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 275 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"超级百货公司\",\"email\":\"ry@qq.com\",\"leader\":\"RMS\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:16:28', 28);
INSERT INTO `sys_oper_log` VALUES (101, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"销售部\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"超级百货公司\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:24:59', 77);
INSERT INTO `sys_oper_log` VALUES (102, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":102,\"deptName\":\"仓储部\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"parentName\":\"超级百货公司\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:25:06', 13);
INSERT INTO `sys_oper_log` VALUES (103, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"呼和浩特北京华联金太店\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"parentName\":\"销售部\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:25:20', 13);
INSERT INTO `sys_oper_log` VALUES (104, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":104,\"deptName\":\"呼和浩特北京华联金兴店\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":101,\"parentName\":\"销售部\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:25:32', 24);
INSERT INTO `sys_oper_log` VALUES (105, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"呼和浩特北京华联金宇店\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"parentName\":\"销售部\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:25:41', 11);
INSERT INTO `sys_oper_log` VALUES (106, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":106,\"deptName\":\"呼和浩特北京华联金宇食品店\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":4,\"params\":{},\"parentId\":101,\"parentName\":\"销售部\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:25:49', 13);
INSERT INTO `sys_oper_log` VALUES (107, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":107,\"deptName\":\"呼和浩特北京华联如意店\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":5,\"params\":{},\"parentId\":101,\"parentName\":\"销售部\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:25:58', 15);
INSERT INTO `sys_oper_log` VALUES (108, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":108,\"deptName\":\"什拉门更西货场仓库\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":102,\"parentName\":\"仓储部\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:26:12', 12);
INSERT INTO `sys_oper_log` VALUES (109, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"deptId\":109,\"deptName\":\"美通物流中心仓库\",\"email\":\"ry@qq.com\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":102,\"parentName\":\"仓储部\",\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:26:21', 13);
INSERT INTO `sys_oper_log` VALUES (110, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', '研发部门', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"保全庄物资仓库\",\"orderNum\":3,\"params\":{},\"parentId\":102,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:26:40', 13);
INSERT INTO `sys_oper_log` VALUES (111, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-12 10:55:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4],\"params\":{},\"remark\":\"超市负责人\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"超市负责人\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:29:23', 34);
INSERT INTO `sys_oper_log` VALUES (112, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4],\"params\":{},\"remark\":\"仓库负责人\",\"roleKey\":\"common\",\"roleName\":\"仓库负责人\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"新增角色\'仓库负责人\'失败，角色权限已存在\",\"code\":500}', 0, NULL, '2024-04-12 17:29:40', 6);
INSERT INTO `sys_oper_log` VALUES (113, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,4],\"params\":{},\"remark\":\"仓库负责人\",\"roleId\":100,\"roleKey\":\"common1\",\"roleName\":\"仓库负责人\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:29:59', 18);
INSERT INTO `sys_oper_log` VALUES (114, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-12 17:29:59\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"仓库负责人\",\"roleId\":100,\"roleKey\":\"common1\",\"roleName\":\"仓库负责人\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:30:04', 18);
INSERT INTO `sys_oper_log` VALUES (115, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-12 10:55:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"超市负责人\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"超市负责人\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:30:07', 15);
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-12 17:30:15', 7);
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"shop_stock,shop_warehouse_distance,warehouse_inventory,distributeresult,application,goods\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 11:13:14', 273);
INSERT INTO `sys_oper_log` VALUES (118, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"goods\"}', NULL, 0, NULL, '2024-04-26 11:13:33', 149);
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/goods/index\",\"createBy\":\"admin\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"物资申请\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"goods\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 11:18:25', 22);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"sys_dept\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 14:41:26', 179);
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:29:21', 40);
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2024-04-26 16:29:25', 4);
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2002', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:29:29', 30);
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2003', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:29:32', 10);
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2004', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:29:34', 22);
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2005', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:29:36', 20);
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2006', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:29:38', 10);
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:29:40', 21);
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/synchDb/goods', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:30:04', 45);
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/synchDb/goods', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:31:04', 40);
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/synchDb/goods', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:31:38', 33);
INSERT INTO `sys_oper_log` VALUES (132, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/synchDb/goods', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:31:52', 36);
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:32:04', 18);
INSERT INTO `sys_oper_log` VALUES (134, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"goods\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:32:08', 36);
INSERT INTO `sys_oper_log` VALUES (135, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":43,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"条码\",\"columnId\":44,\"columnName\":\"code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"商品名称\",\"columnId\":45,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"价格\",\"columnId\":46,\"columnName\":\"price\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"price\",\"javaType\":\"Long\",\"list\":true,\"para', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:32:41', 40);
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":43,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:32:41\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"条码\",\"columnId\":44,\"columnName\":\"code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:32:41\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"商品名称\",\"columnId\":45,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:32:41\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"价格\",\"columnId\":46,\"columnName\":\"price\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:41:46', 52);
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":43,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:41:46\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"条码\",\"columnId\":44,\"columnName\":\"code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:41:46\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"商品名称\",\"columnId\":45,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:41:46\",\"usableColumn\":false},{\"capJavaField\":\"Price\",\"columnComment\":\"价格\",\"columnId\":46,\"columnName\":\"price\",\"columnType\":\"float\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:42:44', 20);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"goods\"}', NULL, 0, NULL, '2024-04-26 16:42:51', 225);
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/goods/index\",\"createTime\":\"2024-04-26 16:44:24\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2007,\"menuName\":\"商品管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"goods\",\"perms\":\"goods:goods:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:45:25', 28);
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/synchDb/goods', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:52:04', 182);
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":43,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:52:04\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"条码\",\"columnId\":44,\"columnName\":\"code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:52:04\",\"usableColumn\":false},{\"capJavaField\":\"Unit\",\"columnComment\":\"单位\",\"columnId\":47,\"columnName\":\"unit\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2024-04-26 16:52:04\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"unit\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名字\",\"columnId\":45,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequ', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 16:52:15', 45);
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"goods\"}', NULL, 0, NULL, '2024-04-26 16:52:20', 171);
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"distance\",\"className\":\"ShopWarehouseDistance\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":20,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"商店id\",\"columnId\":21,\"columnName\":\"shop_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"WarehouseId\",\"columnComment\":\"仓库id\",\"columnId\":22,\"columnName\":\"warehouse_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"warehouseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Distance\",\"columnComment\":\"距离\",\"columnId\":23,\"columnName\":\"distance\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"dis', NULL, 1, '树编码字段不能为空', '2024-04-26 17:13:04', 16);
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"distance\",\"className\":\"ShopWarehouseDistance\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":20,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"商店id\",\"columnId\":21,\"columnName\":\"shop_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"WarehouseId\",\"columnComment\":\"仓库id\",\"columnId\":22,\"columnName\":\"warehouse_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"warehouseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Distance\",\"columnComment\":\"距离\",\"columnId\":23,\"columnName\":\"distance\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"dis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:13:12', 61);
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":43,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:52:15\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"条码\",\"columnId\":44,\"columnName\":\"code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:52:15\",\"usableColumn\":false},{\"capJavaField\":\"Unit\",\"columnComment\":\"单位\",\"columnId\":47,\"columnName\":\"unit\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2024-04-26 16:52:04\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"unit\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 16:52:15\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名字\",\"columnId\":45,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 16:32:08\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:18:30', 37);
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"goods\"}', NULL, 0, NULL, '2024-04-26 17:18:34', 148);
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2008', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:20:01', 12);
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2009', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:20:03', 9);
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2010', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:20:05', 18);
INSERT INTO `sys_oper_log` VALUES (150, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2011', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:20:06', 18);
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2012', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:20:09', 9);
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2007', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:20:11', 9);
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"center/goods/index\",\"createTime\":\"2024-04-26 17:20:25\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"商品管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"goods\",\"perms\":\"center:goods:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:21:00', 18);
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"distance\",\"className\":\"ShopWarehouseDistance\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":20,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 17:13:12\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"商店id\",\"columnId\":21,\"columnName\":\"shop_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 17:13:12\",\"usableColumn\":false},{\"capJavaField\":\"WarehouseId\",\"columnComment\":\"仓库id\",\"columnId\":22,\"columnName\":\"warehouse_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"warehouseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 17:13:12\",\"usableColumn\":false},{\"capJavaField\":\"Distance\",\"columnComment\":\"距离\",\"columnId\":23,\"columnName\":\"distance\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:23:28', 46);
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/synchDb/shop_warehouse_distance', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:24:11', 82);
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:24:18', 21);
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"shop_warehouse_distance\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:24:22', 49);
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/8', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:26:35', 16);
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/9', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:26:40', 18);
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"shop_warehouse_distance,goods\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:27:45', 45);
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"条码\",\"columnId\":54,\"columnName\":\"code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Unit\",\"columnComment\":\"单位\",\"columnId\":55,\"columnName\":\"unit\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"unit\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名字\",\"columnId\":56,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:30:29', 29);
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"goods\"}', NULL, 0, NULL, '2024-04-26 17:30:34', 140);
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"distance\",\"className\":\"ShopWarehouseDistance\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":59,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"商店id\",\"columnId\":60,\"columnName\":\"shop_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"WarehouseId\",\"columnComment\":\"仓库id\",\"columnId\":61,\"columnName\":\"warehouse_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"warehouseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Distance\",\"columnComment\":\"距离\",\"columnId\":62,\"columnName\":\"distance\",\"columnType\":\"double\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"di', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:32:35', 25);
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"distance\",\"className\":\"ShopWarehouseDistance\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":59,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 17:32:35\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"商店id\",\"columnId\":60,\"columnName\":\"shop_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 17:32:35\",\"usableColumn\":false},{\"capJavaField\":\"WarehouseId\",\"columnComment\":\"仓库id\",\"columnId\":61,\"columnName\":\"warehouse_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"warehouseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 17:32:35\",\"usableColumn\":false},{\"capJavaField\":\"Distance\",\"columnComment\":\"距离\",\"columnId\":62,\"columnName\":\"distance\",\"columnType\":\"double\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:32:46', 14);
INSERT INTO `sys_oper_log` VALUES (165, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"shop_warehouse_distance\"}', NULL, 0, NULL, '2024-04-26 17:32:48', 30);
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"center/distance/index\",\"createTime\":\"2024-04-26 17:34:22\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"销储距离管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"distance\",\"perms\":\"center:distance:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:37:33', 33);
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"center/distance/index\",\"createTime\":\"2024-04-26 17:34:22\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"销储距离管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"distance\",\"perms\":\"center:distance:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:37:56', 18);
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":53,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 17:30:29\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"条码\",\"columnId\":54,\"columnName\":\"code\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 17:30:29\",\"usableColumn\":false},{\"capJavaField\":\"Unit\",\"columnComment\":\"单位\",\"columnId\":55,\"columnName\":\"unit\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"unit\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 17:30:29\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名字\",\"columnId\":56,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:27:45\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:38:46', 51);
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"goods\"}', NULL, 0, NULL, '2024-04-26 17:38:50', 130);
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:44:44', 21);
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"application\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:44:50', 43);
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"application\",\"className\":\"Application\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":63,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:44:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Date\",\"columnComment\":\"申请日期\",\"columnId\":64,\"columnName\":\"date\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:44:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"date\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"商店id\",\"columnId\":65,\"columnName\":\"shop_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:44:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GoodId\",\"columnComment\":\"商品id\",\"columnId\":66,\"columnName\":\"good_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 17:44:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodId\",\"javaType\":\"Long\",\"list\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:46:27', 17);
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"application\"}', NULL, 0, NULL, '2024-04-26 17:46:29', 34);
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 17:50:03', 20);
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"distribute/application/index\",\"createTime\":\"2024-04-26 17:47:21\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2025,\"menuName\":\"物资申请\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"application\",\"perms\":\"distribute:application:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:12:02', 24);
INSERT INTO `sys_oper_log` VALUES (176, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"distributeresult\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:12:23', 68);
INSERT INTO `sys_oper_log` VALUES (177, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/13', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:13:53', 17);
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"distributeresult\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:13:59', 31);
INSERT INTO `sys_oper_log` VALUES (179, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"distributeresult\",\"className\":\"Distributeresult\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":74,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 18:13:59\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"超市id\",\"columnId\":75,\"columnName\":\"shop_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 18:13:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"WarehouseId\",\"columnComment\":\"仓库id\",\"columnId\":76,\"columnName\":\"warehouse_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 18:13:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"warehouseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GoodId\",\"columnComment\":\"商品id\",\"columnId\":77,\"columnName\":\"good_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 18:13:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goo', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:14:29', 44);
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"distributeresult\",\"className\":\"Distributeresult\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":74,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 18:13:59\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:14:29\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"超市id\",\"columnId\":75,\"columnName\":\"shop_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 18:13:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:14:29\",\"usableColumn\":false},{\"capJavaField\":\"WarehouseId\",\"columnComment\":\"仓库id\",\"columnId\":76,\"columnName\":\"warehouse_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 18:13:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"warehouseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:14:29\",\"usableColumn\":false},{\"capJavaField\":\"GoodId\",\"columnComment\":\"商品id\",\"columnId\":77,\"columnName\":\"good_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 18:13:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:14:38', 17);
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"distributeresult\"}', NULL, 0, NULL, '2024-04-26 18:14:40', 156);
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"distribute/distributeresult/index\",\"createTime\":\"2024-04-26 18:14:56\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2031,\"menuName\":\"分配调拨\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"distributeresult\",\"perms\":\"distribute:distributeresult:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:17:08', 20);
INSERT INTO `sys_oper_log` VALUES (183, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"distribute/distributeresult/index\",\"createTime\":\"2024-04-26 18:14:56\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2031,\"menuName\":\"分配调拨\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"distributeresult\",\"perms\":\"distribute:distributeresult:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:17:28', 6);
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"stock\",\"className\":\"ShopStock\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":16,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"超市ID\",\"columnId\":17,\"columnName\":\"shop_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GoodsId\",\"columnComment\":\"商品ID\",\"columnId\":18,\"columnName\":\"goods_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Sum\",\"columnComment\":\"数量\",\"columnId\":19,\"columnName\":\"sum\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sum\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:18:34', 62);
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"stock\",\"className\":\"ShopStock\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":16,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:18:34\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"超市ID\",\"columnId\":17,\"columnName\":\"shop_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:18:34\",\"usableColumn\":false},{\"capJavaField\":\"GoodsId\",\"columnComment\":\"商品ID\",\"columnId\":18,\"columnName\":\"goods_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:18:34\",\"usableColumn\":false},{\"capJavaField\":\"Sum\",\"columnComment\":\"数量\",\"columnId\":19,\"columnName\":\"sum\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:18:39', 27);
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"shop_stock\"}', NULL, 0, NULL, '2024-04-26 18:18:41', 63);
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"inventory\",\"className\":\"WarehouseInventory\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"WarehouseId\",\"columnComment\":\"仓库id\",\"columnId\":25,\"columnName\":\"warehouse_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"warehouseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GoodsId\",\"columnComment\":\"商品id\",\"columnId\":26,\"columnName\":\"goods_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Sum\",\"columnComment\":\"数量\",\"columnId\":27,\"columnName\":\"sum\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"sum\",\"javaType\":\"Lon', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:21:21', 13);
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"warehouse_inventory\"}', NULL, 0, NULL, '2024-04-26 18:21:26', 26);
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"shop_stock\",\"className\":\"ShopStock\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":16,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:18:39\",\"usableColumn\":false},{\"capJavaField\":\"ShopId\",\"columnComment\":\"超市ID\",\"columnId\":17,\"columnName\":\"shop_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"shopId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:18:39\",\"usableColumn\":false},{\"capJavaField\":\"GoodsId\",\"columnComment\":\"商品ID\",\"columnId\":18,\"columnName\":\"goods_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:18:39\",\"usableColumn\":false},{\"capJavaField\":\"Sum\",\"columnComment\":\"数量\",\"columnId\":19,\"columnName\":\"sum\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isLis', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:22:23', 23);
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"warehouse_inventory\",\"className\":\"WarehouseInventory\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":24,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:21:21\",\"usableColumn\":false},{\"capJavaField\":\"WarehouseId\",\"columnComment\":\"仓库id\",\"columnId\":25,\"columnName\":\"warehouse_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"warehouseId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:21:21\",\"usableColumn\":false},{\"capJavaField\":\"GoodsId\",\"columnComment\":\"商品id\",\"columnId\":26,\"columnName\":\"goods_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"updateTime\":\"2024-04-26 18:21:21\",\"usableColumn\":false},{\"capJavaField\":\"Sum\",\"columnComment\":\"数量\",\"columnId\":27,\"columnName\":\"sum\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-04-26 11:13:14\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isInc', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:22:36', 22);
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"shop_stock\"}', NULL, 0, NULL, '2024-04-26 18:22:38', 24);
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"warehouse_inventory\"}', NULL, 0, NULL, '2024-04-26 18:22:40', 26);
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2038', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:25:55', 28);
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2039', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:25:58', 21);
INSERT INTO `sys_oper_log` VALUES (195, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2040', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:26:01', 9);
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2041', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:26:04', 19);
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2042', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:26:06', 9);
INSERT INTO `sys_oper_log` VALUES (198, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2037', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:26:09', 10);
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2044', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:26:12', 27);
INSERT INTO `sys_oper_log` VALUES (200, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2046', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:26:15', 9);
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2047', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:26:17', 10);
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2045', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:26:20', 13);
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2048', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:26:22', 9);
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu/2043', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:26:24', 9);
INSERT INTO `sys_oper_log` VALUES (205, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"stock/warehouse_inventory/index\",\"createTime\":\"2024-04-26 18:26:33\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"仓库库存管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"warehouse_inventory\",\"perms\":\"stock:warehouse_inventory:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:28:06', 26);
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"stock/warehouse_inventory/index\",\"createTime\":\"2024-04-26 18:26:33\",\"icon\":\"nested\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"仓库库存管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"warehouse_inventory\",\"perms\":\"stock:warehouse_inventory:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:28:41', 9);
INSERT INTO `sys_oper_log` VALUES (207, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"stock/shop_stock/index\",\"createTime\":\"2024-04-26 18:26:41\",\"icon\":\"nested\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2055,\"menuName\":\"超市库存管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"shop_stock\",\"perms\":\"stock:shop_stock:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-04-26 18:28:50', 18);
INSERT INTO `sys_oper_log` VALUES (208, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '呼和浩特北京华联金太店', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"shop_stock\"}', NULL, 0, NULL, '2024-05-09 16:47:28', 174);
INSERT INTO `sys_oper_log` VALUES (209, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":10,\"date\":\"2024-05-22\",\"goodId\":5,\"params\":{},\"shopId\":103}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\ApplicationMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.ApplicationMapper.insertApplication-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into application          ( date,             shop_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-05-22 15:43:09', 48);
INSERT INTO `sys_oper_log` VALUES (210, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":10,\"date\":\"2024-05-22\",\"goodId\":5,\"params\":{},\"shopId\":103}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\ApplicationMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.ApplicationMapper.insertApplication-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into application          ( date,             shop_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-05-22 15:43:17', 1);
INSERT INTO `sys_oper_log` VALUES (211, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":10,\"date\":\"2024-05-22\",\"goodId\":5,\"params\":{},\"shopId\":103}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\ApplicationMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.ApplicationMapper.insertApplication-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into application          ( date,             shop_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-05-22 15:43:25', 3);
INSERT INTO `sys_oper_log` VALUES (212, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":10,\"date\":\"2024-05-22\",\"goodId\":5,\"params\":{},\"shopId\":103}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\ApplicationMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.ApplicationMapper.insertApplication-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into application          ( date,             shop_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-05-22 15:43:52', 2);
INSERT INTO `sys_oper_log` VALUES (213, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":10,\"date\":\"2024-05-22\",\"goodId\":5,\"params\":{},\"shopId\":103}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE)\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\ApplicationMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.ApplicationMapper.insertApplication-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into application          ( date,             shop_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE)\n; Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE)', '2024-05-22 15:44:42', 6);
INSERT INTO `sys_oper_log` VALUES (214, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":12,\"date\":\"2024-05-22\",\"goodId\":2,\"params\":{},\"shopId\":103}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE)\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\ApplicationMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.ApplicationMapper.insertApplication-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into application          ( date,             shop_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE)\n; Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE)', '2024-05-22 15:46:53', 15);
INSERT INTO `sys_oper_log` VALUES (215, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":12,\"date\":\"2024-05-22\",\"goodId\":2,\"params\":{},\"shopId\":103}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE)\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\ApplicationMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.ApplicationMapper.insertApplication-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into application          ( date,             shop_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE)\n; Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`sktsp_sys`.`application`, CONSTRAINT `fk_al_mid` FOREIGN KEY (`shop_id`) REFERENCES `goods` (`id`) ON UPDATE CASCADE)', '2024-05-22 15:47:10', 3);
INSERT INTO `sys_oper_log` VALUES (216, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":12,\"date\":\"2024-05-22\",\"goodId\":2,\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-22 15:50:42', 9);
INSERT INTO `sys_oper_log` VALUES (217, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":96,\"date\":\"2024-05-22\",\"goodId\":3,\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-22 16:25:09', 103);
INSERT INTO `sys_oper_log` VALUES (218, '物资申请', 2, 'com.ruoyi.distribute.controller.ApplicationController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":12,\"date\":\"2024-05-22\",\"goodId\":3,\"id\":4,\"isProcessed\":0,\"name\":\"三木8108订书机\",\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-22 16:28:53', 73);
INSERT INTO `sys_oper_log` VALUES (219, '物资申请', 2, 'com.ruoyi.distribute.controller.ApplicationController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":12,\"date\":\"2024-05-22\",\"goodId\":6,\"id\":4,\"isProcessed\":0,\"name\":\"远生40页资料册\",\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-22 16:28:57', 17);
INSERT INTO `sys_oper_log` VALUES (220, '物资申请', 5, 'com.ruoyi.distribute.controller.ApplicationController.export()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"shopId\":\"103\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-05-22 16:36:00', 839);
INSERT INTO `sys_oper_log` VALUES (221, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":12,\"date\":\"2024-05-22\",\"goodId\":18,\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-22 16:42:32', 7);
INSERT INTO `sys_oper_log` VALUES (222, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":15,\"date\":\"2024-05-22\",\"goodId\":15,\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-22 16:44:27', 7);
INSERT INTO `sys_oper_log` VALUES (223, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":15,\"goodId\":9,\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-22 16:45:34', 16);
INSERT INTO `sys_oper_log` VALUES (224, '物资申请', 2, 'com.ruoyi.distribute.controller.ApplicationController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":15,\"date\":\"2024-05-22 16:51:27\",\"goodId\":9,\"id\":8,\"isProcessed\":0,\"name\":\"伊达时计算器\",\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-22 16:51:27', 12);
INSERT INTO `sys_oper_log` VALUES (225, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":50,\"date\":\"2024-05-24 10:06:03\",\"goodId\":17,\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-24 10:06:09', 25);
INSERT INTO `sys_oper_log` VALUES (226, '分配调拨', 1, 'com.ruoyi.distribute.controller.DistributeresultController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/distributeresult', '127.0.0.1', '内网IP', '{\"count\":20,\"goodId\":8,\"params\":{},\"shopId\":103,\"warehouseId\":108}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\DistributeresultMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.DistributeresultMapper.insertDistributeresult-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into distributeresult          ( shop_id,             warehouse_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-05-24 10:29:55', 159);
INSERT INTO `sys_oper_log` VALUES (227, '分配调拨', 1, 'com.ruoyi.distribute.controller.DistributeresultController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/distributeresult', '127.0.0.1', '内网IP', '{\"count\":20,\"goodId\":8,\"params\":{},\"shopId\":103,\"warehouseId\":108}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\DistributeresultMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.DistributeresultMapper.insertDistributeresult-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into distributeresult          ( shop_id,             warehouse_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-05-24 10:31:18', 19);
INSERT INTO `sys_oper_log` VALUES (228, '分配调拨', 1, 'com.ruoyi.distribute.controller.DistributeresultController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/distributeresult', '127.0.0.1', '内网IP', '{\"count\":20,\"goodId\":8,\"params\":{},\"shopId\":103,\"warehouseId\":108}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\DistributeresultMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.DistributeresultMapper.insertDistributeresult-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into distributeresult          ( shop_id,             warehouse_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-05-24 10:31:22', 4);
INSERT INTO `sys_oper_log` VALUES (229, '分配调拨', 1, 'com.ruoyi.distribute.controller.DistributeresultController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/distributeresult', '127.0.0.1', '内网IP', '{\"count\":20,\"goodId\":8,\"params\":{},\"shopId\":103,\"warehouseId\":108}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-distribute\\target\\classes\\mapper\\distribute\\DistributeresultMapper.xml]\r\n### The error may involve com.ruoyi.distribute.mapper.DistributeresultMapper.insertDistributeresult-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into distributeresult          ( shop_id,             warehouse_id,             good_id,             count )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-05-24 10:31:39', 4);
INSERT INTO `sys_oper_log` VALUES (230, '分配调拨', 1, 'com.ruoyi.distribute.controller.DistributeresultController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/distributeresult', '127.0.0.1', '内网IP', '{\"count\":20,\"goodId\":8,\"params\":{},\"shopId\":103,\"warehouseId\":108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-24 10:32:15', 21);
INSERT INTO `sys_oper_log` VALUES (231, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":50,\"date\":\"2024-05-24 10:42:01\",\"goodId\":4,\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-24 10:42:38', 15);
INSERT INTO `sys_oper_log` VALUES (232, '物资申请', 2, 'com.ruoyi.distribute.controller.ApplicationController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":50,\"date\":\"2024-05-24 10:48:43\",\"goodId\":1,\"id\":4,\"isProcessed\":0,\"name\":\"40CM直尺\",\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-24 10:48:51', 20);
INSERT INTO `sys_oper_log` VALUES (233, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-12 10:55:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2025,2026,2027,2028,2029,2030,2055,2056,2057,2058,2059,2060],\"params\":{},\"remark\":\"超市负责人\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"超市负责人\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-24 11:07:49', 65);
INSERT INTO `sys_oper_log` VALUES (234, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-24 11:08:36', 169);
INSERT INTO `sys_oper_log` VALUES (235, '分配调拨', 1, 'com.ruoyi.distribute.controller.DistributeresultController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/distributeresult', '127.0.0.1', '内网IP', '{\"count\":22,\"goodId\":8,\"params\":{},\"shopId\":103,\"warehouseId\":108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-24 18:14:26', 18);
INSERT INTO `sys_oper_log` VALUES (236, '分配调拨', 1, 'com.ruoyi.distribute.controller.DistributeresultController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/distributeresult', '127.0.0.1', '内网IP', '{\"count\":12,\"goodId\":8,\"params\":{},\"shopId\":103,\"warehouseId\":108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-24 18:14:37', 6);
INSERT INTO `sys_oper_log` VALUES (237, '物资申请', 1, 'com.ruoyi.distribute.controller.ApplicationController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/application', '127.0.0.1', '内网IP', '{\"count\":20,\"date\":\"2024-05-24 18:15:21\",\"goodId\":15,\"params\":{},\"shopId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-24 18:15:26', 9);
INSERT INTO `sys_oper_log` VALUES (238, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,101\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"(测试用超市）\",\"orderNum\":6,\"params\":{},\"parentId\":101,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 10:29:02', 22);
INSERT INTO `sys_oper_log` VALUES (239, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"（测试用仓库）\",\"orderNum\":4,\"params\":{},\"parentId\":102,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-05-25 10:29:17', 16);
INSERT INTO `sys_oper_log` VALUES (240, '销储距离管理', 1, 'com.ruoyi.center.controller.ShopWarehouseDistanceController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/center/distance', '127.0.0.1', '内网IP', '{\"distance\":\"2.2\",\"params\":{},\"shopId\":201,\"warehouseId\":202}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\java_files\\SupportSystemForSupermarket\\sktsp-center\\target\\classes\\mapper\\center\\ShopWarehouseDistanceMapper.xml]\r\n### The error may involve com.ruoyi.center.mapper.ShopWarehouseDistanceMapper.insertShopWarehouseDistance-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into shop_warehouse_distance          ( shop_id,             warehouse_id,             distance )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-06-03 18:49:35', 97);
INSERT INTO `sys_oper_log` VALUES (241, '分配调拨', 5, 'com.ruoyi.distribute.controller.DistributeresultController.export()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/distribute/distributeresult/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-06-06 15:31:49', 744);
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"超市调拨结果查看\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"shopdistributeresult\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:17:32', 24);
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"distribute\\\\shopresult\\\\shop_index\",\"createTime\":\"2024-06-06 18:17:32\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2061,\"menuName\":\"超市调拨结果查看\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"shopdistributeresult\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:18:28', 11);
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"distribute\\\\shopresult\\\\shop_index\",\"createTime\":\"2024-06-06 18:17:32\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2061,\"menuName\":\"超市调拨结果查看\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"shopdistributeresult\",\"perms\":\"distribute:distributeresult:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:18:37', 9);
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2061,\"perms\":\"distribute:distributeresult:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:19:01', 9);
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2061,\"perms\":\"distribute:distributeresult:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:19:23', 12);
INSERT INTO `sys_oper_log` VALUES (247, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2061,\"perms\":\"distribute:distributeresult:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:19:34', 19);
INSERT INTO `sys_oper_log` VALUES (248, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2061,\"perms\":\"distribute:distributeresult:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:19:50', 9);
INSERT INTO `sys_oper_log` VALUES (249, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"导出\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2061,\"perms\":\"distribute:distributeresult:export\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:20:02', 21);
INSERT INTO `sys_oper_log` VALUES (250, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"仓库分配调拨\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"distribute\\\\warehouseresult\\\\warehouse_index\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:20:56', 9);
INSERT INTO `sys_oper_log` VALUES (251, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2024-06-06 18:20:56\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2067,\"menuName\":\"仓库分配调拨\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"distribute\\\\warehouseresult\\\\warehouse_index\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:21:06', 18);
INSERT INTO `sys_oper_log` VALUES (252, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"distribute\\\\warehouseresult\\\\warehouse_index\",\"createTime\":\"2024-06-06 18:20:56\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2067,\"menuName\":\"仓库分配调拨\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"wareresult\",\"perms\":\"distribute:distributeresult:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:21:28', 19);
INSERT INTO `sys_oper_log` VALUES (253, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2067,\"perms\":\"distribute:distributeresult:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:21:59', 8);
INSERT INTO `sys_oper_log` VALUES (254, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2067,\"perms\":\"distribute:distributeresult:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:22:11', 18);
INSERT INTO `sys_oper_log` VALUES (255, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"修改\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2067,\"perms\":\"distribute:distributeresult:edit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:22:22', 7);
INSERT INTO `sys_oper_log` VALUES (256, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"删除\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2067,\"perms\":\"distribute:distributeresult:remove\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:22:45', 7);
INSERT INTO `sys_oper_log` VALUES (257, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"导出\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2067,\"perms\":\"distribute:distributeresult:export\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:22:58', 8);
INSERT INTO `sys_oper_log` VALUES (258, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"distribute/shopresult/shop_index\",\"createTime\":\"2024-06-06 18:17:32\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2061,\"menuName\":\"超市调拨结果查看\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"shopdistributeresult\",\"perms\":\"distribute:distributeresult:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:24:13', 7);
INSERT INTO `sys_oper_log` VALUES (259, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"distribute/warehouseresult/warehouse_index\",\"createTime\":\"2024-06-06 18:20:56\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2067,\"menuName\":\"仓库分配调拨\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"wareresult\",\"perms\":\"distribute:distributeresult:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:24:21', 18);
INSERT INTO `sys_oper_log` VALUES (260, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-12 17:29:59\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2013,2014,2018,2049,2050,2051,2052,2053,2054,2067,2068,2069,2070,2071,2072],\"params\":{},\"remark\":\"仓库负责人\",\"roleId\":100,\"roleKey\":\"common1\",\"roleName\":\"仓库负责人\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:25:00', 31);
INSERT INTO `sys_oper_log` VALUES (261, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-12 17:29:59\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2013,2014,2018,2049,2050,2051,2052,2053,2054,2067,2068,2069,2070,2071,2072],\"params\":{},\"remark\":\"仓库负责人\",\"roleId\":100,\"roleKey\":\"common1\",\"roleName\":\"仓库负责人\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:25:18', 27);
INSERT INTO `sys_oper_log` VALUES (262, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2024-04-12 10:55:12\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2013,2014,2018,2025,2026,2027,2028,2029,2030,2055,2056,2057,2058,2059,2060,2061,2062,2063,2064,2065,2066],\"params\":{},\"remark\":\"超市负责人\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"超市负责人\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:25:39', 17);
INSERT INTO `sys_oper_log` VALUES (263, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,2013,2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2031,2032,2033,2034,2035,2036],\"params\":{},\"roleId\":101,\"roleKey\":\"center\",\"roleName\":\"中心负责人\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:26:32', 16);
INSERT INTO `sys_oper_log` VALUES (264, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-04-12 10:55:12\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"呼和浩特北京华联金宇店\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":201,\"email\":\"\",\"loginDate\":\"2024-05-24 11:08:47\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"超市负责人\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:26:50', 15);
INSERT INTO `sys_oper_log` VALUES (265, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":202,\"nickName\":\"测试用仓库\",\"params\":{},\"postIds\":[4],\"roleIds\":[100],\"status\":\"0\",\"userId\":100,\"userName\":\"testware\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:27:15', 87);
INSERT INTO `sys_oper_log` VALUES (266, '岗位管理', 3, 'com.ruoyi.web.controller.system.SysPostController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/post/2', '127.0.0.1', '内网IP', '{}', NULL, 1, '项目经理已分配,不能删除', '2024-06-06 18:27:24', 5);
INSERT INTO `sys_oper_log` VALUES (267, '岗位管理', 3, 'com.ruoyi.web.controller.system.SysPostController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/post/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:27:26', 9);
INSERT INTO `sys_oper_log` VALUES (268, '岗位管理', 3, 'com.ruoyi.web.controller.system.SysPostController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/post/1', '127.0.0.1', '内网IP', '{}', NULL, 1, '董事长已分配,不能删除', '2024-06-06 18:27:29', 2);
INSERT INTO `sys_oper_log` VALUES (269, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2024-04-12 10:55:12\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":201,\"deptName\":\"（测试用超市）\",\"orderNum\":6,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":201,\"email\":\"\",\"loginDate\":\"2024-05-24 11:08:47\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[4],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"超市负责人\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:27:41', 23);
INSERT INTO `sys_oper_log` VALUES (270, '岗位管理', 3, 'com.ruoyi.web.controller.system.SysPostController.remove()', 'DELETE', 1, 'admin', '呼和浩特北京华联金太店', '/system/post/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:27:46', 18);
INSERT INTO `sys_oper_log` VALUES (271, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/post', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2024-04-12 10:55:12\",\"flag\":false,\"params\":{},\"postCode\":\"ceo\",\"postId\":1,\"postName\":\"管理员\",\"postSort\":1,\"remark\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:27:53', 23);
INSERT INTO `sys_oper_log` VALUES (272, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', '呼和浩特北京华联金太店', '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"测试用中心\",\"params\":{},\"postIds\":[4],\"roleIds\":[101],\"status\":\"0\",\"userId\":101,\"userName\":\"testcenter\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:28:19', 80);
INSERT INTO `sys_oper_log` VALUES (273, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"distribute/warehouseresult/warehouse_index\",\"createTime\":\"2024-06-06 18:20:56\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2067,\"menuName\":\"调拨结果（仓库）\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"wareresult\",\"perms\":\"distribute:distributeresult:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:32:46', 8);
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '呼和浩特北京华联金太店', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"distribute/shopresult/shop_index\",\"createTime\":\"2024-06-06 18:17:32\",\"icon\":\"druid\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2061,\"menuName\":\"调拨结果（超市）\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"shopdistributeresult\",\"perms\":\"distribute:distributeresult:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-06-06 18:33:05', 16);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '管理员', 1, '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-06-06 18:27:53', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-04-12 10:55:12', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-04-12 10:55:12', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '超市负责人', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-04-12 10:55:12', 'admin', '2024-06-06 18:25:39', '超市负责人');
INSERT INTO `sys_role` VALUES (100, '仓库负责人', 'common1', 3, '1', 1, 1, '0', '0', 'admin', '2024-04-12 17:29:59', 'admin', '2024-06-06 18:25:18', '仓库负责人');
INSERT INTO `sys_role` VALUES (101, '中心负责人', 'center', 0, '1', 1, 1, '0', '0', 'admin', '2024-06-06 18:26:32', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2013);
INSERT INTO `sys_role_menu` VALUES (2, 2014);
INSERT INTO `sys_role_menu` VALUES (2, 2018);
INSERT INTO `sys_role_menu` VALUES (2, 2025);
INSERT INTO `sys_role_menu` VALUES (2, 2026);
INSERT INTO `sys_role_menu` VALUES (2, 2027);
INSERT INTO `sys_role_menu` VALUES (2, 2028);
INSERT INTO `sys_role_menu` VALUES (2, 2029);
INSERT INTO `sys_role_menu` VALUES (2, 2030);
INSERT INTO `sys_role_menu` VALUES (2, 2055);
INSERT INTO `sys_role_menu` VALUES (2, 2056);
INSERT INTO `sys_role_menu` VALUES (2, 2057);
INSERT INTO `sys_role_menu` VALUES (2, 2058);
INSERT INTO `sys_role_menu` VALUES (2, 2059);
INSERT INTO `sys_role_menu` VALUES (2, 2060);
INSERT INTO `sys_role_menu` VALUES (2, 2061);
INSERT INTO `sys_role_menu` VALUES (2, 2062);
INSERT INTO `sys_role_menu` VALUES (2, 2063);
INSERT INTO `sys_role_menu` VALUES (2, 2064);
INSERT INTO `sys_role_menu` VALUES (2, 2065);
INSERT INTO `sys_role_menu` VALUES (2, 2066);
INSERT INTO `sys_role_menu` VALUES (100, 2013);
INSERT INTO `sys_role_menu` VALUES (100, 2014);
INSERT INTO `sys_role_menu` VALUES (100, 2018);
INSERT INTO `sys_role_menu` VALUES (100, 2049);
INSERT INTO `sys_role_menu` VALUES (100, 2050);
INSERT INTO `sys_role_menu` VALUES (100, 2051);
INSERT INTO `sys_role_menu` VALUES (100, 2052);
INSERT INTO `sys_role_menu` VALUES (100, 2053);
INSERT INTO `sys_role_menu` VALUES (100, 2054);
INSERT INTO `sys_role_menu` VALUES (100, 2067);
INSERT INTO `sys_role_menu` VALUES (100, 2068);
INSERT INTO `sys_role_menu` VALUES (100, 2069);
INSERT INTO `sys_role_menu` VALUES (100, 2070);
INSERT INTO `sys_role_menu` VALUES (100, 2071);
INSERT INTO `sys_role_menu` VALUES (100, 2072);
INSERT INTO `sys_role_menu` VALUES (101, 1);
INSERT INTO `sys_role_menu` VALUES (101, 100);
INSERT INTO `sys_role_menu` VALUES (101, 101);
INSERT INTO `sys_role_menu` VALUES (101, 103);
INSERT INTO `sys_role_menu` VALUES (101, 104);
INSERT INTO `sys_role_menu` VALUES (101, 1000);
INSERT INTO `sys_role_menu` VALUES (101, 1001);
INSERT INTO `sys_role_menu` VALUES (101, 1002);
INSERT INTO `sys_role_menu` VALUES (101, 1003);
INSERT INTO `sys_role_menu` VALUES (101, 1004);
INSERT INTO `sys_role_menu` VALUES (101, 1005);
INSERT INTO `sys_role_menu` VALUES (101, 1006);
INSERT INTO `sys_role_menu` VALUES (101, 1007);
INSERT INTO `sys_role_menu` VALUES (101, 1008);
INSERT INTO `sys_role_menu` VALUES (101, 1009);
INSERT INTO `sys_role_menu` VALUES (101, 1010);
INSERT INTO `sys_role_menu` VALUES (101, 1011);
INSERT INTO `sys_role_menu` VALUES (101, 1016);
INSERT INTO `sys_role_menu` VALUES (101, 1017);
INSERT INTO `sys_role_menu` VALUES (101, 1018);
INSERT INTO `sys_role_menu` VALUES (101, 1019);
INSERT INTO `sys_role_menu` VALUES (101, 1020);
INSERT INTO `sys_role_menu` VALUES (101, 1021);
INSERT INTO `sys_role_menu` VALUES (101, 1022);
INSERT INTO `sys_role_menu` VALUES (101, 1023);
INSERT INTO `sys_role_menu` VALUES (101, 1024);
INSERT INTO `sys_role_menu` VALUES (101, 2013);
INSERT INTO `sys_role_menu` VALUES (101, 2014);
INSERT INTO `sys_role_menu` VALUES (101, 2015);
INSERT INTO `sys_role_menu` VALUES (101, 2016);
INSERT INTO `sys_role_menu` VALUES (101, 2017);
INSERT INTO `sys_role_menu` VALUES (101, 2018);
INSERT INTO `sys_role_menu` VALUES (101, 2019);
INSERT INTO `sys_role_menu` VALUES (101, 2020);
INSERT INTO `sys_role_menu` VALUES (101, 2021);
INSERT INTO `sys_role_menu` VALUES (101, 2022);
INSERT INTO `sys_role_menu` VALUES (101, 2023);
INSERT INTO `sys_role_menu` VALUES (101, 2024);
INSERT INTO `sys_role_menu` VALUES (101, 2031);
INSERT INTO `sys_role_menu` VALUES (101, 2032);
INSERT INTO `sys_role_menu` VALUES (101, 2033);
INSERT INTO `sys_role_menu` VALUES (101, 2034);
INSERT INTO `sys_role_menu` VALUES (101, 2035);
INSERT INTO `sys_role_menu` VALUES (101, 2036);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '*用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '超级管理员', '00', '', '', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-06-06 18:32:16', 'admin', '2024-04-12 10:55:12', '', '2024-06-06 18:32:15', '管理员');
INSERT INTO `sys_user` VALUES (2, 201, 'testshop', '测试用用超市', '00', '', '', '1', '', '$2a$10$gzp/u3ivX8IH71RuhFStK.WdfjQjcMyug3FS9Vtx/08bSlYDBxh7e', '0', '0', '127.0.0.1', '2024-05-24 11:08:47', 'admin', '2024-04-12 10:55:12', 'admin', '2024-06-06 18:27:41', '测试员');
INSERT INTO `sys_user` VALUES (100, 202, 'testware', '测试用仓库', '00', '', '', '0', '', '$2a$10$aoSS7digftS7SeA3mmFEOOwU6O7Y8g2DWNXmcUEvEeQc45r5SRcZ2', '0', '0', '127.0.0.1', '2024-06-06 18:30:47', 'admin', '2024-06-06 18:27:15', '', '2024-06-06 18:30:46', NULL);
INSERT INTO `sys_user` VALUES (101, 100, 'testcenter', '测试用中心', '00', '', '', '0', '', '$2a$10$G0MA/b3Xb9bnwnNN5f8DZuVJbh3QzsyQCzCJg8lqe1xArwjTRYqEy', '0', '0', '127.0.0.1', '2024-06-06 18:31:42', 'admin', '2024-06-06 18:28:19', '', '2024-06-06 18:31:41', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 4);
INSERT INTO `sys_user_post` VALUES (100, 4);
INSERT INTO `sys_user_post` VALUES (101, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (101, 101);

-- ----------------------------
-- Table structure for warehouse_inventory
-- ----------------------------
DROP TABLE IF EXISTS `warehouse_inventory`;
CREATE TABLE `warehouse_inventory`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `warehouse_id` bigint NOT NULL COMMENT '仓库id',
  `goods_id` int NOT NULL COMMENT '商品id',
  `sum` int NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_wi_gid`(`goods_id` ASC) USING BTREE,
  INDEX `fk_wi_wid`(`warehouse_id` ASC) USING BTREE,
  CONSTRAINT `fk_wi_wid` FOREIGN KEY (`warehouse_id`) REFERENCES `sys_dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '*仓库库存表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of warehouse_inventory
-- ----------------------------
INSERT INTO `warehouse_inventory` VALUES (1, 108, 1, 100);
INSERT INTO `warehouse_inventory` VALUES (2, 108, 2, 50);
INSERT INTO `warehouse_inventory` VALUES (3, 108, 3, 200);
INSERT INTO `warehouse_inventory` VALUES (4, 108, 5, 200);
INSERT INTO `warehouse_inventory` VALUES (5, 108, 6, 20);
INSERT INTO `warehouse_inventory` VALUES (6, 108, 7, 50);
INSERT INTO `warehouse_inventory` VALUES (7, 108, 8, 15);
INSERT INTO `warehouse_inventory` VALUES (8, 108, 9, 20);
INSERT INTO `warehouse_inventory` VALUES (9, 108, 11, 50);
INSERT INTO `warehouse_inventory` VALUES (10, 108, 13, 30);
INSERT INTO `warehouse_inventory` VALUES (11, 108, 14, 40);
INSERT INTO `warehouse_inventory` VALUES (12, 108, 15, 15);
INSERT INTO `warehouse_inventory` VALUES (13, 108, 16, 100);
INSERT INTO `warehouse_inventory` VALUES (14, 108, 19, 50);
INSERT INTO `warehouse_inventory` VALUES (15, 108, 20, 150);
INSERT INTO `warehouse_inventory` VALUES (16, 109, 1, 80);
INSERT INTO `warehouse_inventory` VALUES (17, 109, 2, 50);
INSERT INTO `warehouse_inventory` VALUES (18, 109, 4, 30);
INSERT INTO `warehouse_inventory` VALUES (19, 109, 5, 100);
INSERT INTO `warehouse_inventory` VALUES (20, 109, 7, 40);
INSERT INTO `warehouse_inventory` VALUES (21, 109, 10, 20);
INSERT INTO `warehouse_inventory` VALUES (22, 109, 12, 50);
INSERT INTO `warehouse_inventory` VALUES (23, 109, 14, 15);
INSERT INTO `warehouse_inventory` VALUES (24, 109, 16, 60);
INSERT INTO `warehouse_inventory` VALUES (25, 109, 17, 50);
INSERT INTO `warehouse_inventory` VALUES (26, 109, 18, 12);
INSERT INTO `warehouse_inventory` VALUES (27, 109, 19, 50);
INSERT INTO `warehouse_inventory` VALUES (28, 109, 20, 100);
INSERT INTO `warehouse_inventory` VALUES (29, 200, 3, 50);
INSERT INTO `warehouse_inventory` VALUES (30, 200, 4, 15);
INSERT INTO `warehouse_inventory` VALUES (31, 200, 6, 30);
INSERT INTO `warehouse_inventory` VALUES (32, 200, 7, 50);
INSERT INTO `warehouse_inventory` VALUES (33, 200, 10, 30);
INSERT INTO `warehouse_inventory` VALUES (34, 200, 11, 60);
INSERT INTO `warehouse_inventory` VALUES (35, 200, 12, 70);
INSERT INTO `warehouse_inventory` VALUES (36, 200, 13, 35);
INSERT INTO `warehouse_inventory` VALUES (37, 200, 15, 30);
INSERT INTO `warehouse_inventory` VALUES (38, 200, 17, 70);
INSERT INTO `warehouse_inventory` VALUES (39, 200, 18, 28);
INSERT INTO `warehouse_inventory` VALUES (40, 202, 1, 50);
INSERT INTO `warehouse_inventory` VALUES (41, 202, 2, 50);
INSERT INTO `warehouse_inventory` VALUES (42, 202, 4, 20);
INSERT INTO `warehouse_inventory` VALUES (43, 202, 5, 100);
INSERT INTO `warehouse_inventory` VALUES (44, 202, 7, 30);
INSERT INTO `warehouse_inventory` VALUES (45, 202, 8, 30);
INSERT INTO `warehouse_inventory` VALUES (46, 202, 9, 15);
INSERT INTO `warehouse_inventory` VALUES (47, 202, 10, 50);
INSERT INTO `warehouse_inventory` VALUES (48, 202, 11, 60);
INSERT INTO `warehouse_inventory` VALUES (49, 202, 12, 60);
INSERT INTO `warehouse_inventory` VALUES (50, 202, 13, 60);
INSERT INTO `warehouse_inventory` VALUES (51, 202, 14, 50);
INSERT INTO `warehouse_inventory` VALUES (52, 202, 15, 20);
INSERT INTO `warehouse_inventory` VALUES (53, 202, 17, 60);
INSERT INTO `warehouse_inventory` VALUES (54, 202, 18, 30);
INSERT INTO `warehouse_inventory` VALUES (55, 202, 19, 60);
INSERT INTO `warehouse_inventory` VALUES (56, 202, 20, 100);

SET FOREIGN_KEY_CHECKS = 1;
