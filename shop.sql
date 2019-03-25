/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50710
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50710
 File Encoding         : 65001

 Date: 25/03/2019 17:02:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MetaTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ParentID` int(11) NULL DEFAULT NULL,
  `DisplayOrder` int(11) NULL DEFAULT NULL,
  `SeoTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MetaKeywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MetaDescriptions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` bit(1) NULL DEFAULT NULL,
  `ShowOnHome` bit(1) NULL DEFAULT NULL,
  `Icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_AT` datetime(0) NULL DEFAULT NULL,
  `CREATED_USER` int(11) NULL DEFAULT NULL,
  `UPDATED_AT` datetime(0) NULL DEFAULT NULL,
  `UPDATED_USER` int(11) NULL DEFAULT NULL,
  `DELETED_AT` datetime(0) NULL DEFAULT NULL,
  `DELETED_USER` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OrderID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Quantity` int(11) NULL DEFAULT NULL,
  `Price` int(11) NULL DEFAULT NULL,
  `CREATED_AT` datetime(0) NULL DEFAULT NULL,
  `CREATED_USER` int(11) NULL DEFAULT NULL,
  `UPDATED_AT` datetime(0) NULL DEFAULT NULL,
  `UPDATED_USER` int(11) NULL DEFAULT NULL,
  `DELETED_AT` datetime(0) NULL DEFAULT NULL,
  `DELETED_USER` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ShipName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ShipMobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ShipAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ShipEmail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ShipContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Status` bit(1) NULL DEFAULT NULL,
  ` DELETED_USER` int(11) NULL DEFAULT NULL,
  `CREATED_AT` datetime(0) NULL DEFAULT NULL,
  `CREATED_USER` int(11) NULL DEFAULT NULL,
  `UPDATED_AT` datetime(0) NULL DEFAULT NULL,
  `UPDATED_USER` int(11) NULL DEFAULT NULL,
  `DELETED_AT` datetime(0) NULL DEFAULT NULL,
  `DELETED_USER` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sales` int(11) NULL DEFAULT NULL,
  `stock` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `statusColor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createDate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Marble Cake', 'Cakes', 'https://xuongkhungdep.com/upload/sanpham/thumbs/289-may-lam-khung-bam-goc-dai-loan-1.jpg', 1647, 1, 'ON HOLD', 'primary', 'Wedding cake with flowers Macarons and blueberries', '2019-02-25 08:46:42');
INSERT INTO `product` VALUES (2, 'Fat Rascal', 'Cupcakes', 'https://xuongkhungdep.com/upload/sanpham/thumbs/289-may-lam-khung-bam-goc-dai-loan-1.jpg', 1345, 112, 'PROCESSED', 'secondary', 'Cheesecake with chocolate cookies and Cream biscuits', '2019-02-25 08:49:30');
INSERT INTO `product` VALUES (3, 'Chocolate Cake', 'Desserts', 'https://xuongkhungdep.com/upload/sanpham/thumbs/289-may-lam-khung-bam-goc-dai-loan-1.jpg', 1345, 112, 'PROCESSED', 'secondary', 'Wedding cake decorated with donuts and wild berries', '2019-02-25 08:49:30');
INSERT INTO `product` VALUES (4, 'Financier', 'Cupcakes', 'https://xuongkhungdep.com/upload/sanpham/thumbs/289-may-lam-khung-bam-goc-dai-loan-1.jpg', 1345, 112, 'ON HOLD', 'primary', 'White chocolate strawberry yogurt cake decorated with fresh fruits and chocolate', '2019-02-25 08:49:30');
INSERT INTO `product` VALUES (5, 'Genoise', 'Cupcakes', 'https://xuongkhungdep.com/upload/sanpham/thumbs/289-may-lam-khung-bam-goc-dai-loan-1.jpg', 1345, 112, 'PROCESSED', 'secondary', 'Christmas fruit cake, pudding on top', '2019-02-25 08:49:30');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FIRST_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LAST_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BIRTHDAY` datetime(0) NULL DEFAULT NULL,
  `SEX` bit(1) NULL DEFAULT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TEL` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EMAIL` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ADDRESS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATED_AT` datetime(0) NULL DEFAULT NULL,
  `CREATED_USER` int(11) NULL DEFAULT NULL,
  `UPDATED_AT` datetime(0) NULL DEFAULT NULL,
  `UPDATED_USER` int(11) NULL DEFAULT NULL,
  `DELETED_AT` datetime(0) NULL DEFAULT NULL,
  `DELETED_USER` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
