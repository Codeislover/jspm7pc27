/*
 Navicat MySQL Data Transfer

 Source Server         : xing
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : jspm7pc27

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 08/05/2023 22:00:53
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chengjixinxi
-- ----------------------------
DROP TABLE IF EXISTS `chengjixinxi`;
CREATE TABLE `chengjixinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nianfen` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '年份',
  `xueqi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学期',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `yuanxi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '院系',
  `nianji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `sixiangdaode` int(0) NOT NULL COMMENT '思想道德',
  `tuozhansuzhi` int(0) NOT NULL COMMENT '拓展素质',
  `pingshichengji` int(0) NOT NULL COMMENT '平时成绩',
  `zongfenshu` float NOT NULL COMMENT '总分数',
  `chengji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '成绩',
  `fabushijian` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649607799576 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '成绩信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chengjixinxi
-- ----------------------------
INSERT INTO `chengjixinxi` VALUES (91, '2022-04-10 22:42:41', '年份1', '学期1', '学号1', '学生姓名1', '院系1', '年级1', '班级1', 1, 1, 1, 1, '优秀', '2022-04-10 22:42:41', '教师姓名1', '工号1');
INSERT INTO `chengjixinxi` VALUES (92, '2022-04-10 22:42:41', '年份2', '学期2', '学号2', '学生姓名2', '院系2', '年级2', '班级2', 2, 2, 2, 2, '优秀', '2022-04-10 22:42:41', '教师姓名2', '工号2');
INSERT INTO `chengjixinxi` VALUES (93, '2022-04-10 22:42:41', '年份3', '学期3', '学号3', '学生姓名3', '院系3', '年级3', '班级3', 3, 3, 3, 3, '良好', '2022-04-10 22:42:41', '教师姓名3', '工号3');
INSERT INTO `chengjixinxi` VALUES (94, '2022-04-10 22:42:41', '年份4', '学期4', '学号4', '学生姓名4', '院系4', '年级4', '班级4', 4, 4, 4, 4, '优秀', '2022-04-10 22:42:41', '教师姓名4', '工号4');
INSERT INTO `chengjixinxi` VALUES (95, '2022-04-10 22:42:41', '年份5', '学期5', '学号5', '学生姓名5', '院系5', '年级5', '班级5', 5, 5, 5, 5, '优秀', '2022-04-10 22:42:41', '教师姓名5', '工号5');
INSERT INTO `chengjixinxi` VALUES (96, '2022-04-10 22:42:41', '年份6', '学期6', '学号6', '学生姓名6', '院系6', '年级6', '班级6', 6, 6, 6, 6, '不及格', '2022-04-10 22:42:41', '教师姓名6', '工号6');
INSERT INTO `chengjixinxi` VALUES (1649607799575, '2022-04-11 00:23:19', '2022', '上学期', '1', '学生姓名1', '院系1', '年级1', '班级1', 24, 30, 38, 92, '优秀', '2022-04-11 00:23:02', '王老师', '1');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for jiaoshi
-- ----------------------------
DROP TABLE IF EXISTS `jiaoshi`;
CREATE TABLE `jiaoshi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '工号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `yuanxi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '院系',
  `zhicheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `dianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `gonghao`(`gonghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jiaoshi
-- ----------------------------
INSERT INTO `jiaoshi` VALUES (21, '2022-04-10 22:42:41', '1', '1', '王老师', '女', 'upload/jiaoshi_touxiang1.jpg', '上海大学', '班主任', '13823888881');
INSERT INTO `jiaoshi` VALUES (22, '2022-04-10 22:42:41', '工号2', '123456', '教师姓名2', '男', 'upload/jiaoshi_touxiang2.jpg', '院系2', '职称2', '13823888882');
INSERT INTO `jiaoshi` VALUES (23, '2022-04-10 22:42:41', '工号3', '123456', '教师姓名3', '男', 'upload/jiaoshi_touxiang3.jpg', '院系3', '职称3', '13823888883');
INSERT INTO `jiaoshi` VALUES (24, '2022-04-10 22:42:41', '工号4', '123456', '教师姓名4', '男', 'upload/jiaoshi_touxiang4.jpg', '院系4', '职称4', '13823888884');
INSERT INTO `jiaoshi` VALUES (25, '2022-04-10 22:42:41', '工号5', '123456', '教师姓名5', '男', 'upload/jiaoshi_touxiang5.jpg', '院系5', '职称5', '13823888885');
INSERT INTO `jiaoshi` VALUES (26, '2022-04-10 22:42:41', '工号6', '123456', '教师姓名6', '男', 'upload/jiaoshi_touxiang6.jpg', '院系6', '职称6', '13823888886');

-- ----------------------------
-- Table structure for kaoqinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kaoqinxinxi`;
CREATE TABLE `kaoqinxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `kaoqinriqi` date NOT NULL COMMENT '考勤日期',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `kaoqinzhuangkuang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考勤状况',
  `kaoqinshuoming` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '考勤说明',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649607830896 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '考勤信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kaoqinxinxi
-- ----------------------------
INSERT INTO `kaoqinxinxi` VALUES (101, '2022-04-10 22:42:41', '名称1', '2022-04-10', '学号1', '学生姓名1', '迟到', '考勤说明1', '工号1', '教师姓名1');
INSERT INTO `kaoqinxinxi` VALUES (102, '2022-04-10 22:42:41', '名称2', '2022-04-10', '学号2', '学生姓名2', '迟到', '考勤说明2', '工号2', '教师姓名2');
INSERT INTO `kaoqinxinxi` VALUES (103, '2022-04-10 22:42:41', '名称3', '2022-04-10', '学号3', '学生姓名3', '迟到', '考勤说明3', '工号3', '教师姓名3');
INSERT INTO `kaoqinxinxi` VALUES (104, '2022-04-10 22:42:41', '名称4', '2022-04-10', '学号4', '学生姓名4', '迟到', '考勤说明4', '工号4', '教师姓名4');
INSERT INTO `kaoqinxinxi` VALUES (105, '2022-04-10 22:42:41', '名称5', '2022-04-10', '学号5', '学生姓名5', '迟到', '考勤说明5', '工号5', '教师姓名5');
INSERT INTO `kaoqinxinxi` VALUES (106, '2022-04-10 22:42:41', '名称6', '2022-04-10', '学号6', '学生姓名6', '迟到', '考勤说明6', '工号6', '教师姓名6');
INSERT INTO `kaoqinxinxi` VALUES (1649607830895, '2022-04-11 00:23:50', '1号考勤', '2022-04-01', '1', '学生姓名1', '迟到', '早退', '1', '王老师');

-- ----------------------------
-- Table structure for kechengleixing
-- ----------------------------
DROP TABLE IF EXISTS `kechengleixing`;
CREATE TABLE `kechengleixing`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程类型' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kechengleixing
-- ----------------------------
INSERT INTO `kechengleixing` VALUES (31, '2022-04-10 22:42:41', '英语');
INSERT INTO `kechengleixing` VALUES (32, '2022-04-10 22:42:41', '课程类型2');
INSERT INTO `kechengleixing` VALUES (33, '2022-04-10 22:42:41', '课程类型3');
INSERT INTO `kechengleixing` VALUES (34, '2022-04-10 22:42:41', '课程类型4');
INSERT INTO `kechengleixing` VALUES (35, '2022-04-10 22:42:41', '课程类型5');
INSERT INTO `kechengleixing` VALUES (36, '2022-04-10 22:42:41', '课程类型6');

-- ----------------------------
-- Table structure for kechengxinxi
-- ----------------------------
DROP TABLE IF EXISTS `kechengxinxi`;
CREATE TABLE `kechengxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '课程类型',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `kechengwenjian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程文件',
  `kechengxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '课程详情',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649607731354 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '课程信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kechengxinxi
-- ----------------------------
INSERT INTO `kechengxinxi` VALUES (41, '2022-04-10 22:42:41', '课程名称1', '英语', '班级1', 'upload/kechengxinxi_tupian1.jpg', 'file/download?fileName=1683553483497.jpg', '课程详情1', '工号1', '教师姓名1');
INSERT INTO `kechengxinxi` VALUES (42, '2022-04-10 22:42:41', '课程名称2', '课程类型2', '班级2', 'upload/kechengxinxi_tupian2.jpg', '', '课程详情2', '工号2', '教师姓名2');
INSERT INTO `kechengxinxi` VALUES (43, '2022-04-10 22:42:41', '课程名称3', '课程类型3', '班级3', 'upload/kechengxinxi_tupian3.jpg', '', '课程详情3', '工号3', '教师姓名3');
INSERT INTO `kechengxinxi` VALUES (44, '2022-04-10 22:42:41', '课程名称4', '课程类型4', '班级4', 'upload/kechengxinxi_tupian4.jpg', '', '课程详情4', '工号4', '教师姓名4');
INSERT INTO `kechengxinxi` VALUES (45, '2022-04-10 22:42:41', '课程名称5', '课程类型5', '班级5', 'upload/kechengxinxi_tupian5.jpg', '', '课程详情5', '工号5', '教师姓名5');
INSERT INTO `kechengxinxi` VALUES (46, '2022-04-10 22:42:41', '课程名称6', '课程类型6', '班级6', 'upload/kechengxinxi_tupian6.jpg', '', '课程详情6', '工号6', '教师姓名6');
INSERT INTO `kechengxinxi` VALUES (1649607731353, '2022-04-11 00:22:10', '语法基础', '英语', '205', 'upload/1649607723708.jpg', 'file/download?fileName=1649607729519.doc', '测试', '1', '王老师');

-- ----------------------------
-- Table structure for pingshichengji
-- ----------------------------
DROP TABLE IF EXISTS `pingshichengji`;
CREATE TABLE `pingshichengji`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `nianji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `xiangmumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目名称',
  `zhanbi` float NULL DEFAULT NULL COMMENT '占比',
  `fenshu` int(0) NOT NULL COMMENT '分数',
  `zongfenshu` float NULL DEFAULT NULL COMMENT '总分数',
  `fabushijian` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649607777198 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '平时成绩' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingshichengji
-- ----------------------------
INSERT INTO `pingshichengji` VALUES (81, '2022-04-10 22:42:41', '学号1', '学生姓名1', '年级1', '班级1', '项目名称1', 1, 1, 1, '2022-04-10 22:42:41', '工号1', '教师姓名1');
INSERT INTO `pingshichengji` VALUES (82, '2022-04-10 22:42:41', '学号2', '学生姓名2', '年级2', '班级2', '项目名称2', 2, 2, 2, '2022-04-10 22:42:41', '工号2', '教师姓名2');
INSERT INTO `pingshichengji` VALUES (83, '2022-04-10 22:42:41', '学号3', '学生姓名3', '年级3', '班级3', '项目名称3', 3, 3, 3, '2022-04-10 22:42:41', '工号3', '教师姓名3');
INSERT INTO `pingshichengji` VALUES (84, '2022-04-10 22:42:41', '学号4', '学生姓名4', '年级4', '班级4', '项目名称4', 4, 4, 4, '2022-04-10 22:42:41', '工号4', '教师姓名4');
INSERT INTO `pingshichengji` VALUES (85, '2022-04-10 22:42:41', '学号5', '学生姓名5', '年级5', '班级5', '项目名称5', 5, 5, 5, '2022-04-10 22:42:41', '工号5', '教师姓名5');
INSERT INTO `pingshichengji` VALUES (86, '2022-04-10 22:42:41', '学号6', '学生姓名6', '年级6', '班级6', '项目名称6', 6, 6, 6, '2022-04-10 22:42:41', '工号6', '教师姓名6');
INSERT INTO `pingshichengji` VALUES (1649607777197, '2022-04-11 00:22:56', '1', '学生姓名1', '年级1', '班级1', '拓展素质', 0.3, 100, 30, '2022-04-11 00:22:46', '1', '王老师');

-- ----------------------------
-- Table structure for quanzhongshezhi
-- ----------------------------
DROP TABLE IF EXISTS `quanzhongshezhi`;
CREATE TABLE `quanzhongshezhi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xiangmumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目名称',
  `zhanbi` float NOT NULL COMMENT '占比',
  `shuoming` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权重设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quanzhongshezhi
-- ----------------------------
INSERT INTO `quanzhongshezhi` VALUES (51, '2022-04-10 22:42:41', '思想品德', 0.3, '占30');
INSERT INTO `quanzhongshezhi` VALUES (52, '2022-04-10 22:42:41', '平时成绩', 0.4, '说明2测试');
INSERT INTO `quanzhongshezhi` VALUES (53, '2022-04-10 22:42:41', '拓展素质', 0.3, '说明3');
INSERT INTO `quanzhongshezhi` VALUES (54, '2022-04-10 22:42:41', '项目名称4', 4, '说明4');

-- ----------------------------
-- Table structure for sixiangdaode
-- ----------------------------
DROP TABLE IF EXISTS `sixiangdaode`;
CREATE TABLE `sixiangdaode`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `nianji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `xiangmumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目名称',
  `zhanbi` float NULL DEFAULT NULL COMMENT '占比',
  `fenshu` int(0) NOT NULL COMMENT '分数',
  `zongfenshu` float NULL DEFAULT NULL COMMENT '总分数',
  `fabushijian` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649607749948 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '思想道德' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sixiangdaode
-- ----------------------------
INSERT INTO `sixiangdaode` VALUES (61, '2022-04-10 22:42:41', '学号1', '学生姓名1', '年级1', '班级1', '项目名称1', 1, 1, 1, '2022-04-10 22:42:41', '工号1', '教师姓名1');
INSERT INTO `sixiangdaode` VALUES (62, '2022-04-10 22:42:41', '学号2', '学生姓名2', '年级2', '班级2', '项目名称2', 2, 2, 2, '2022-04-10 22:42:41', '工号2', '教师姓名2');
INSERT INTO `sixiangdaode` VALUES (63, '2022-04-10 22:42:41', '学号3', '学生姓名3', '年级3', '班级3', '项目名称3', 3, 3, 3, '2022-04-10 22:42:41', '工号3', '教师姓名3');
INSERT INTO `sixiangdaode` VALUES (64, '2022-04-10 22:42:41', '学号4', '学生姓名4', '年级4', '班级4', '项目名称4', 4, 4, 4, '2022-04-10 22:42:41', '工号4', '教师姓名4');
INSERT INTO `sixiangdaode` VALUES (65, '2022-04-10 22:42:41', '学号5', '学生姓名5', '年级5', '班级5', '项目名称5', 5, 5, 5, '2022-04-10 22:42:41', '工号5', '教师姓名5');
INSERT INTO `sixiangdaode` VALUES (66, '2022-04-10 22:42:41', '学号6', '学生姓名6', '年级6', '班级6', '项目名称6', 6, 6, 6, '2022-04-10 22:42:41', '工号6', '教师姓名6');
INSERT INTO `sixiangdaode` VALUES (1649607749947, '2022-04-11 00:22:29', '1', '学生姓名1', '年级1', '班级1', '思想品德', 0.3, 80, 24, '2022-04-11 00:22:15', '1', '王老师');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL  COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 1, 'abo', 'users', '管理员', 'taudx5jz30xl9wodz2qym3o0b5m864i4', '2022-04-10 23:29:16', '2023-05-08 22:47:59');
INSERT INTO `token` VALUES (2, 21, '1', 'jiaoshi', '教师', 'vis7yoj3luba759xdeevd3t9vqv5qnb6', '2022-04-11 00:21:28', '2023-05-08 22:52:54');
INSERT INTO `token` VALUES (3, 11, '1', 'xuesheng', '学生', 'wnokuc79wn5gdm9vonfog6og08h9az5m', '2022-04-11 00:23:55', '2023-05-08 22:56:45');

-- ----------------------------
-- Table structure for tuozhansuzhi
-- ----------------------------
DROP TABLE IF EXISTS `tuozhansuzhi`;
CREATE TABLE `tuozhansuzhi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `nianji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `xiangmumingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目名称',
  `zhanbi` float NULL DEFAULT NULL COMMENT '占比',
  `fenshu` int(0) NOT NULL COMMENT '分数',
  `zongfenshu` float NULL DEFAULT NULL COMMENT '总分数',
  `fabushijian` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `gonghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1649607764908 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '拓展素质' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tuozhansuzhi
-- ----------------------------
INSERT INTO `tuozhansuzhi` VALUES (71, '2022-04-10 22:42:41', '学号1', '学生姓名1', '年级1', '班级1', '项目名称1', 1, 1, 1, '2022-04-10 22:42:41', '工号1', '教师姓名1');
INSERT INTO `tuozhansuzhi` VALUES (72, '2022-04-10 22:42:41', '学号2', '学生姓名2', '年级2', '班级2', '项目名称2', 2, 2, 2, '2022-04-10 22:42:41', '工号2', '教师姓名2');
INSERT INTO `tuozhansuzhi` VALUES (73, '2022-04-10 22:42:41', '学号3', '学生姓名3', '年级3', '班级3', '项目名称3', 3, 3, 3, '2022-04-10 22:42:41', '工号3', '教师姓名3');
INSERT INTO `tuozhansuzhi` VALUES (74, '2022-04-10 22:42:41', '学号4', '学生姓名4', '年级4', '班级4', '项目名称4', 4, 4, 4, '2022-04-10 22:42:41', '工号4', '教师姓名4');
INSERT INTO `tuozhansuzhi` VALUES (75, '2022-04-10 22:42:41', '学号5', '学生姓名5', '年级5', '班级5', '项目名称5', 5, 5, 5, '2022-04-10 22:42:41', '工号5', '教师姓名5');
INSERT INTO `tuozhansuzhi` VALUES (76, '2022-04-10 22:42:41', '学号6', '学生姓名6', '年级6', '班级6', '项目名称6', 6, 6, 6, '2022-04-10 22:42:41', '工号6', '教师姓名6');
INSERT INTO `tuozhansuzhi` VALUES (1649607764907, '2022-04-11 00:22:44', '1', '学生姓名1', '年级1', '班级1', '平时成绩', 0.4, 95, 38, '2022-04-11 00:22:32', '1', '王老师');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'admin', '管理员', '2022-04-10 22:42:41');

-- ----------------------------
-- Table structure for xuesheng
-- ----------------------------
DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE `xuesheng`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `yuanxi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '院系',
  `nianji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `xuehao`(`xuehao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuesheng
-- ----------------------------
INSERT INTO `xuesheng` VALUES (11, '2022-04-10 22:42:41', '1', '1', '学生姓名1', '女', 'upload/xuesheng_touxiang1.jpg', '院系1', '年级1', '班级1', '13823888881');
INSERT INTO `xuesheng` VALUES (12, '2022-04-10 22:42:41', '学号2', '123456', '学生姓名2', '男', 'upload/xuesheng_touxiang2.jpg', '院系2', '年级2', '班级2', '13823888882');
INSERT INTO `xuesheng` VALUES (13, '2022-04-10 22:42:41', '学号3', '123456', '学生姓名3', '男', 'upload/xuesheng_touxiang3.jpg', '院系3', '年级3', '班级3', '13823888883');
INSERT INTO `xuesheng` VALUES (14, '2022-04-10 22:42:41', '学号4', '123456', '学生姓名4', '男', 'upload/xuesheng_touxiang4.jpg', '院系4', '年级4', '班级4', '13823888884');
INSERT INTO `xuesheng` VALUES (15, '2022-04-10 22:42:41', '学号5', '123456', '学生姓名5', '男', 'upload/xuesheng_touxiang5.jpg', '院系5', '年级5', '班级5', '13823888885');
INSERT INTO `xuesheng` VALUES (16, '2022-04-10 22:42:41', '学号6', '123456', '学生姓名6', '男', 'upload/xuesheng_touxiang6.jpg', '院系6', '年级6', '班级6', '13823888886');

SET FOREIGN_KEY_CHECKS = 1;
