/*
 Navicat MySQL Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : njdatabase

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 05/01/2020 09:55:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', 'tuShOfiBrA8+br7ENrMS8A==');
INSERT INTO `admins` VALUES (2, 'admin1', 'TVz1jLz4jYRGqQdhozyJTg==');
INSERT INTO `admins` VALUES (3, '阿康666', 'TVz1jLz4jYRGqQdhozyJTg==');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `price` int(11) NULL DEFAULT NULL COMMENT '价格',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `type_id` int(11) NULL DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (29, '食品1', '../upload/3.jpg', 12, '超级好吃', 1);
INSERT INTO `goods` VALUES (30, '食品2', '../upload/4.jpg', 15, '超级好吃', 1);
INSERT INTO `goods` VALUES (31, '食品3', '../upload/5.jpg', 5, '超级好吃', 1);
INSERT INTO `goods` VALUES (32, '食品4', '../upload/6.jpg', 11, '超级好吃', 1);
INSERT INTO `goods` VALUES (33, '食品5', '../upload/7.jpg', 7, '超级好吃', 1);
INSERT INTO `goods` VALUES (34, '食品1', '../upload/8.jpg', 12, '超级好吃', 1);
INSERT INTO `goods` VALUES (35, '食品7', '../upload/9.jpg', 60, '超级好吃', 1);
INSERT INTO `goods` VALUES (36, '食品8', '../upload/10.jpg', 3, '超级好吃', 1);
INSERT INTO `goods` VALUES (37, '食品9', '../upload/11.jpg', 34, '超级好吃', 1);
INSERT INTO `goods` VALUES (38, '食品10', '../upload/17.jpg', 45, '超级好吃', 1);
INSERT INTO `goods` VALUES (39, '文玩1', '../upload/13.jpg', 50, '历史悠久，文化深厚', 2);
INSERT INTO `goods` VALUES (40, '文玩2', '../upload/21.jpg', 125, '历史悠久，文化深厚', 2);
INSERT INTO `goods` VALUES (41, '文玩3', '../upload/22.jpg', 30, '历史悠久，文化深厚', 2);
INSERT INTO `goods` VALUES (42, '文玩4', '../upload/24.jpg', 100, '历史悠久，文化深厚', 2);
INSERT INTO `goods` VALUES (43, '文物5', '../upload/25.jpg', 80, '历史悠久，文化深厚', 2);
INSERT INTO `goods` VALUES (44, '文玩6', '../upload/26.jpg', 30, '历史悠久，文化深厚', 2);
INSERT INTO `goods` VALUES (45, '门票', '../upload/28.jpg', 300, '十分精彩', 3);
INSERT INTO `goods` VALUES (46, '门票2', '../upload/29.jpg', 1000, '十分精彩', 3);
INSERT INTO `goods` VALUES (47, '门票3', '../upload/30.jpg', 430, '十分精彩', 3);
INSERT INTO `goods` VALUES (48, '门票4', '../upload/31.jpg', 37, '十分精彩', 3);
INSERT INTO `goods` VALUES (49, '门票5', '../upload/32.jpg', 530, '十分精彩', 3);
INSERT INTO `goods` VALUES (50, '门票6', '../upload/33.jpeg', 200, '十分精彩', 3);
INSERT INTO `goods` VALUES (51, '门票7', '../upload/34.jpg', 150, '十分精彩', 3);
INSERT INTO `goods` VALUES (52, '门票8', '../upload/35.jpg', 35, '十分精彩', 3);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) NULL DEFAULT NULL COMMENT '购买时价格',
  `amount` int(11) NULL DEFAULT NULL COMMENT '购买数量',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '订单id',
  `good_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `color_id` int(11) NULL DEFAULT NULL COMMENT '颜色id',
  `size_id` int(11) NULL DEFAULT NULL COMMENT '尺寸id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (4, 45, 1, 4, 38, 1, 1);
INSERT INTO `items` VALUES (5, 100, 3, 5, 42, 4, 2);
INSERT INTO `items` VALUES (6, 35, 1, 6, 52, 6, 3);
INSERT INTO `items` VALUES (7, 125, 1, 7, 40, 4, 2);
INSERT INTO `items` VALUES (8, 1000, 5, 8, 46, 6, 3);
INSERT INTO `items` VALUES (9, 34, 1, 9, 37, 2, 1);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total` int(11) NULL DEFAULT NULL COMMENT '订单金额',
  `amount` int(11) NULL DEFAULT NULL COMMENT '商品总数',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '订单状态(1未付款/2已付款/3已发货/4已完成)',
  `paytype` tinyint(4) NULL DEFAULT 0 COMMENT '支付方式 (1微信/2支付宝)',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `systime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '下单时间',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '下单用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (4, 45, 1, 4, 1, 'user1', '66666666', '胡图图小学', '2020-01-04 10:27:50', 3);
INSERT INTO `orders` VALUES (5, 300, 1, 2, 2, 'user1', '66666666', '胡图图小学', '2020-01-04 10:30:46', 3);
INSERT INTO `orders` VALUES (6, 35, 1, 2, 2, 'user1', '66666666', '胡图图小学', '2020-01-04 10:31:13', 3);
INSERT INTO `orders` VALUES (9, 34, 1, 2, 1, 'user1', '66666666', '胡图图小学', '2020-01-04 11:30:06', 4);

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NULL DEFAULT NULL COMMENT '数量',
  `good_id` int(11) NULL DEFAULT NULL,
  `color_id` int(11) NULL DEFAULT NULL,
  `size_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sku_color
-- ----------------------------
DROP TABLE IF EXISTS `sku_color`;
CREATE TABLE `sku_color`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku_color
-- ----------------------------
INSERT INTO `sku_color` VALUES (1, '甜点');
INSERT INTO `sku_color` VALUES (2, '生鲜');
INSERT INTO `sku_color` VALUES (3, '零食');
INSERT INTO `sku_color` VALUES (4, '文玩');
INSERT INTO `sku_color` VALUES (5, '日用品');
INSERT INTO `sku_color` VALUES (6, '门票');

-- ----------------------------
-- Table structure for sku_good
-- ----------------------------
DROP TABLE IF EXISTS `sku_good`;
CREATE TABLE `sku_good`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock` int(11) NULL DEFAULT 0 COMMENT '库存',
  `color_id` int(11) NULL DEFAULT NULL,
  `size_id` int(11) NULL DEFAULT NULL,
  `good_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku_good
-- ----------------------------
INSERT INTO `sku_good` VALUES (47, 10, 3, 1, 29);
INSERT INTO `sku_good` VALUES (48, 10, 3, 1, 30);
INSERT INTO `sku_good` VALUES (49, 10, 1, 1, 31);
INSERT INTO `sku_good` VALUES (50, 10, 3, 1, 32);
INSERT INTO `sku_good` VALUES (51, 10, 3, 1, 33);
INSERT INTO `sku_good` VALUES (52, 10, 2, 1, 34);
INSERT INTO `sku_good` VALUES (53, 10, 2, 1, 35);
INSERT INTO `sku_good` VALUES (54, 10, 2, 1, 36);
INSERT INTO `sku_good` VALUES (55, 9, 2, 1, 37);
INSERT INTO `sku_good` VALUES (56, 9, 1, 1, 38);
INSERT INTO `sku_good` VALUES (57, 10, 4, 2, 39);
INSERT INTO `sku_good` VALUES (58, 9, 4, 2, 40);
INSERT INTO `sku_good` VALUES (59, 10, 4, 2, 41);
INSERT INTO `sku_good` VALUES (60, 7, 4, 2, 42);
INSERT INTO `sku_good` VALUES (61, 10, 5, 2, 43);
INSERT INTO `sku_good` VALUES (62, 10, 5, 2, 44);
INSERT INTO `sku_good` VALUES (63, 10, 6, 3, 45);
INSERT INTO `sku_good` VALUES (64, 5, 6, 3, 46);
INSERT INTO `sku_good` VALUES (65, 10, 6, 3, 47);
INSERT INTO `sku_good` VALUES (66, 10, 6, 3, 48);
INSERT INTO `sku_good` VALUES (67, 10, 6, 3, 49);
INSERT INTO `sku_good` VALUES (68, 10, 6, 3, 50);
INSERT INTO `sku_good` VALUES (69, 10, 6, 3, 51);
INSERT INTO `sku_good` VALUES (70, 9, 6, 3, 52);

-- ----------------------------
-- Table structure for sku_size
-- ----------------------------
DROP TABLE IF EXISTS `sku_size`;
CREATE TABLE `sku_size`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sku_size
-- ----------------------------
INSERT INTO `sku_size` VALUES (1, '1盒');
INSERT INTO `sku_size` VALUES (2, '1个');
INSERT INTO `sku_size` VALUES (3, '1张');

-- ----------------------------
-- Table structure for tops
-- ----------------------------
DROP TABLE IF EXISTS `tops`;
CREATE TABLE `tops`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '推荐类型(1爆款)',
  `good_id` int(11) NULL DEFAULT NULL COMMENT '蛋糕id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '首页推荐商品' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tops
-- ----------------------------
INSERT INTO `tops` VALUES (5, 1, 42);
INSERT INTO `tops` VALUES (6, 1, 52);
INSERT INTO `tops` VALUES (7, 1, 51);
INSERT INTO `tops` VALUES (8, 1, 43);
INSERT INTO `tops` VALUES (9, 1, 36);
INSERT INTO `tops` VALUES (10, 1, 35);

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `num` int(11) NULL DEFAULT 0 COMMENT '排序号 (从小到大)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (1, '食品', '../upload/floor1.jpg', 1);
INSERT INTO `types` VALUES (2, '文玩', '../upload/floor2.jpg', 2);
INSERT INTO `types` VALUES (3, '门票', '../upload/floor3.jpg', 3);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (3, 'user1', 'TVz1jLz4jYRGqQdhozyJTg==', 'user1', '66666666', '胡图图小学');
INSERT INTO `users` VALUES (4, '丁群', 'HAMVRZRssPCADKqGjGWJtQ==', 'user1', '66666666', '胡图图小学');

SET FOREIGN_KEY_CHECKS = 1;
