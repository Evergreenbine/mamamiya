/*
Navicat MySQL Data Transfer

Source Server         : mamamiya
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : mamamiya

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-03-06 19:04:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(200) DEFAULT NULL,
  `tag` int(2) NOT NULL DEFAULT 1,
  `img` varchar(200) DEFAULT NULL,
  `gcid` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '爱他美', '1', 'http://localhost:8003/static/mamamiya202103052334351756.jpg', '1');
INSERT INTO `brand` VALUES ('2', '飞鹤', '1', 'http://localhost:8003/static/mamamiya202103052341228922.jpg', '1');
INSERT INTO `brand` VALUES ('3', '美赞臣', '1', 'http://localhost:8003/static/mamamiya20210305233805224.jpg', '1');
INSERT INTO `brand` VALUES ('4', '佳贝艾特', '1', 'http://localhost:8003/static/mamamiya202103052348399580.gif', '1');
INSERT INTO `brand` VALUES ('5', '诺优能', '1', 'http://localhost:8003/static/mamamiya202102242212486623.jpg', '1');
INSERT INTO `brand` VALUES ('6', '伊利', '1', null, '1');
INSERT INTO `brand` VALUES ('7', '雀巢', '1', 'http://localhost:8003/static/mamamiya202103052338587539.gif', '1');
INSERT INTO `brand` VALUES ('8', '合生元', '1', null, '1');
INSERT INTO `brand` VALUES ('9', '雅培', '1', null, '1');
INSERT INTO `brand` VALUES ('10', '完达山', '1', null, '1');
INSERT INTO `brand` VALUES ('11', '贝因美', '1', null, '1');
INSERT INTO `brand` VALUES ('12', '蒙牛', '1', null, '1');
INSERT INTO `brand` VALUES ('15', '君乐宝', '1', null, '1');
INSERT INTO `brand` VALUES ('16', '安佳', '1', null, '1');
INSERT INTO `brand` VALUES ('17', '帮宝适', '1', 'http://localhost:8003/static/mamamiya202103052358112455.png', '2');
INSERT INTO `brand` VALUES ('18', '好奇', '1', 'http://localhost:8003/static/mamamiya20210306000234566.png', '2');
INSERT INTO `brand` VALUES ('19', '花王', '1', null, '2');
INSERT INTO `brand` VALUES ('20', '大王', '1', null, '2');
INSERT INTO `brand` VALUES ('21', 'coon', '1', 'http://localhost:8003/static/mamamiya202103052359383688.png', '2');
INSERT INTO `brand` VALUES ('22', 'moony', '1', null, '2');
INSERT INTO `brand` VALUES ('23', '安儿乐', '1', null, '2');
INSERT INTO `brand` VALUES ('24', '舒比奇', '1', null, '2');
INSERT INTO `brand` VALUES ('25', '迪士尼', '1', null, '3');
INSERT INTO `brand` VALUES ('26', 'babycare', '1', 'http://localhost:8003/static/mamamiya202103060001341081.jpg', '3');
INSERT INTO `brand` VALUES ('27', 'munchkin', '1', null, '3');
INSERT INTO `brand` VALUES ('28', '玉米', '1', null, '3');
INSERT INTO `brand` VALUES ('29', 'aag', '1', null, '3');
INSERT INTO `brand` VALUES ('33', '亨氏', '1', 'http://localhost:8003/static/mamamiya202102231748489092.jpg', '4');
INSERT INTO `brand` VALUES ('34', '英氏', '1', 'http://localhost:8003/static/mamamiya202102232023223531.png', '4');
INSERT INTO `brand` VALUES ('35', 'Rivsea', '1', 'http://localhost:8003/static/mamamiya202102232023501817.jpg', '4');
INSERT INTO `brand` VALUES ('36', '小鹿蓝蓝', '1', 'http://localhost:8003/static/mamamiya202102232024069024.png', '4');
INSERT INTO `brand` VALUES ('37', 'BEAKID', '1', 'http://localhost:8003/static/mamamiya202102232024343825.jpg', '4');
INSERT INTO `brand` VALUES ('38', '嘉宝', '1', 'http://localhost:8003/static/mamamiya20210223202448762.jpg', '4');
INSERT INTO `brand` VALUES ('39', '宝力臣', '1', 'http://localhost:8003/static/mamamiya202102232024596439.jpg', '4');
INSERT INTO `brand` VALUES ('40', '果乐士', '1', 'http://localhost:8003/static/mamamiya202102232025098338.jpg', '4');
INSERT INTO `brand` VALUES ('41', '哆猫猫', '1', 'http://localhost:8003/static/mamamiya20210223202522369.png', '4');
INSERT INTO `brand` VALUES ('42', '贝比玛玛', '1', 'http://localhost:8003/static/mamamiya202102232025385177.jpg', '4');

-- ----------------------------
-- Table structure for circle
-- ----------------------------
DROP TABLE IF EXISTS `circle`;
CREATE TABLE `circle` (
  `cid` int(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) DEFAULT NULL,
  `introduce` varchar(20) DEFAULT NULL,
  `follownums` int(20) DEFAULT 0,
  `postnums` int(20) DEFAULT 0,
  `tag` int(2) NOT NULL DEFAULT 1,
  `avator` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of circle
-- ----------------------------
INSERT INTO `circle` VALUES ('1', '同龄圈', '宝宝年龄相近，我们一起交流', '0', '0', '1', null);
INSERT INTO `circle` VALUES ('2', '宝宝用品圈', '一起来种草呀', '0', '0', '1', null);
INSERT INTO `circle` VALUES ('3', '育儿你造吗圈', '你不知道的育儿小事', '0', '0', '1', null);
INSERT INTO `circle` VALUES ('4', '流行时尚圈', '宝宝和妈妈的好物', '0', '0', '1', null);
INSERT INTO `circle` VALUES ('5', '孕期说一说圈', '怎么说', '0', '0', '0', null);
INSERT INTO `circle` VALUES ('6', '育儿护理圈', '宝宝护理，你应该知道更多', '0', '0', '1', null);
INSERT INTO `circle` VALUES ('7', '老公老公圈', '来一起秀恩爱吧', '0', '0', '1', null);
INSERT INTO `circle` VALUES ('8', '家庭吐槽圈', '作为妈妈，你感觉如何？', '0', '0', '1', null);
INSERT INTO `circle` VALUES ('14', '宝宝用品', '一起来种草呀', '0', '0', '1', 'http://localhost:8003/static/mamamiya202102162128278716.jpg');
INSERT INTO `circle` VALUES ('15', '育儿你造吗', '你不知道的育儿小事', '0', '0', '1', 'http://localhost:8003/static/mamamiya202102162202124945.jpg');
INSERT INTO `circle` VALUES ('17', '同龄圈', '宝宝年龄相近，我们一起交流', '0', '0', '0', 'http://localhost:8003/static/mamamiya202102181824566319.jpg');
INSERT INTO `circle` VALUES ('18', '孕期说一说圈', '怎么说', '0', '0', '1', 'http://localhost:8003/static/mamamiya20210218182518476.jpg');

-- ----------------------------
-- Table structure for commentgood
-- ----------------------------
DROP TABLE IF EXISTS `commentgood`;
CREATE TABLE `commentgood` (
  `cgid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(100) DEFAULT NULL,
  `useraccount` int(100) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `rate` int(11) DEFAULT 0,
  PRIMARY KEY (`cgid`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of commentgood
-- ----------------------------
INSERT INTO `commentgood` VALUES ('14', '42', '1234567890', '很不错的', '2021/02/22', '5');
INSERT INTO `commentgood` VALUES ('15', '43', '1234567890', '这个还行', '2021/02/22', '1');
INSERT INTO `commentgood` VALUES ('16', '44', '1234567890', '非常好', '2021/02/22', '3');
INSERT INTO `commentgood` VALUES ('17', '45', '1234567890', '一般般', '2021/02/22', '2');
INSERT INTO `commentgood` VALUES ('18', '42', '12345', '最爱了', '2021/02/22', '5');
INSERT INTO `commentgood` VALUES ('19', '43', '12345', '哈哈哈', '2021/02/22', '4');
INSERT INTO `commentgood` VALUES ('20', '44', '12345', '哈哈哈', '2021/02/22', '4');
INSERT INTO `commentgood` VALUES ('21', '45', '12345', '哈哈哈', '2021/02/22', '4');
INSERT INTO `commentgood` VALUES ('22', '43', '1170559835', 'good good study,day day up', '2021/02/22', '5');
INSERT INTO `commentgood` VALUES ('23', '42', '12306', '这奶粉真不错', '2021/02/22', '5');
INSERT INTO `commentgood` VALUES ('24', '43', '1170559835', '非常好喝', '2021/02/22', '5');
INSERT INTO `commentgood` VALUES ('25', '42', '12306', '挺好的', '2021/02/22', '3');
INSERT INTO `commentgood` VALUES ('26', '48', '12306', '很不错的纸尿布', '2021/02/22', '5');
INSERT INTO `commentgood` VALUES ('27', '46', '12306', '还是挺不错的，诺优能', '2021/02/22', '3');
INSERT INTO `commentgood` VALUES ('28', '48', '12306', '不错的', '2021/02/22', '5');
INSERT INTO `commentgood` VALUES ('29', '49', '12306', '哈哈超级舒服的', '2021/02/22', '4');
INSERT INTO `commentgood` VALUES ('30', '49', '12306', '太棒了', '2021/02/22', '5');
INSERT INTO `commentgood` VALUES ('31', '49', '12306', '太棒了', '2021/02/22', '5');
INSERT INTO `commentgood` VALUES ('32', '45', '12345', '飞鹤最牛不用说', '2021/02/23', '5');
INSERT INTO `commentgood` VALUES ('33', '45', '12345', 'good到爆炸', '2021/02/24', '5');
INSERT INTO `commentgood` VALUES ('35', '45', '12345', 'good到爆炸2', '2021/02/25', '5');
INSERT INTO `commentgood` VALUES ('36', '51', '12345', '这个小夫我最爱了', '2021/02/22', '5');
INSERT INTO `commentgood` VALUES ('37', '50', '12345', '好奇好奇巨好奇', '2021/02/23', '5');
INSERT INTO `commentgood` VALUES ('38', '52', '12345', '这咬咬乐很不错', '2021/02/23', '5');
INSERT INTO `commentgood` VALUES ('39', '56', '12306', '这个还可以的', '2021/02/23', '4');
INSERT INTO `commentgood` VALUES ('40', '58', '12306', '非常棒啊', '2021/02/23', '5');
INSERT INTO `commentgood` VALUES ('41', '58', '12306', '超级好吃的奶酪', '2021/02/23', '5');
INSERT INTO `commentgood` VALUES ('42', '57', '12306', '不得了的好吃', '2021/02/23', '5');
INSERT INTO `commentgood` VALUES ('43', '58', '12306', '不得了的好吃', '2021/02/23', '5');
INSERT INTO `commentgood` VALUES ('44', '45', '12345', '我小夫觉得不错', '2021/02/28', '5');
INSERT INTO `commentgood` VALUES ('45', '45', '12345', '很棒', '2021/02/28', '5');
INSERT INTO `commentgood` VALUES ('46', '60', '1234567890', '静香最爱这个', '2021/03/05', '5');

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
  `cid` int(50) NOT NULL,
  `useraccount` int(50) NOT NULL,
  PRIMARY KEY (`cid`,`useraccount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES ('1', '12306');
INSERT INTO `follow` VALUES ('1', '1170559835');
INSERT INTO `follow` VALUES ('1', '1234567890');
INSERT INTO `follow` VALUES ('2', '12306');
INSERT INTO `follow` VALUES ('2', '1170559835');
INSERT INTO `follow` VALUES ('2', '1234567890');
INSERT INTO `follow` VALUES ('3', '1170559835');
INSERT INTO `follow` VALUES ('4', '12345');
INSERT INTO `follow` VALUES ('4', '1170559835');
INSERT INTO `follow` VALUES ('4', '1234567890');
INSERT INTO `follow` VALUES ('5', '12345');
INSERT INTO `follow` VALUES ('5', '1170559835');
INSERT INTO `follow` VALUES ('5', '1234567890');
INSERT INTO `follow` VALUES ('6', '1170559835');
INSERT INTO `follow` VALUES ('6', '1234567890');
INSERT INTO `follow` VALUES ('7', '12306');
INSERT INTO `follow` VALUES ('7', '1170559835');
INSERT INTO `follow` VALUES ('7', '1234567890');
INSERT INTO `follow` VALUES ('14', '1170559835');

-- ----------------------------
-- Table structure for gcata
-- ----------------------------
DROP TABLE IF EXISTS `gcata`;
CREATE TABLE `gcata` (
  `gcid` int(5) NOT NULL AUTO_INCREMENT,
  `gname` varchar(30) DEFAULT NULL,
  `parrentid` int(11) DEFAULT NULL,
  `isparrent` int(2) DEFAULT 0,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`gcid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of gcata
-- ----------------------------
INSERT INTO `gcata` VALUES ('1', '奶粉', '0', '1', '1');
INSERT INTO `gcata` VALUES ('2', '纸尿布', '0', '1', '1');
INSERT INTO `gcata` VALUES ('3', '婴儿用品', '0', '1', '1');
INSERT INTO `gcata` VALUES ('4', '婴儿食品', '0', '1', '1');

-- ----------------------------
-- Table structure for goodcata
-- ----------------------------
DROP TABLE IF EXISTS `goodcata`;
CREATE TABLE `goodcata` (
  `gcid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) DEFAULT NULL,
  `parrentid` int(11) DEFAULT 0,
  `isparrent` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`gcid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goodcata
-- ----------------------------
INSERT INTO `goodcata` VALUES ('1', '奶粉', '0', '1', '1');
INSERT INTO `goodcata` VALUES ('2', '婴幼儿奶粉', '1', '1', '2');
INSERT INTO `goodcata` VALUES ('3', '防腹泻奶粉', '1', '1', '2');
INSERT INTO `goodcata` VALUES ('6', '纸尿布', '0', '1', '1');
INSERT INTO `goodcata` VALUES ('7', '婴幼儿奶粉', '1', '1', '2');

-- ----------------------------
-- Table structure for goodorder
-- ----------------------------
DROP TABLE IF EXISTS `goodorder`;
CREATE TABLE `goodorder` (
  `orderid` varchar(100) NOT NULL,
  `address` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `totalmount` double DEFAULT NULL,
  `totalnums` int(11) DEFAULT NULL,
  `useraccount` varchar(10) NOT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `updatetime` varchar(100) DEFAULT NULL,
  `paymoney` double DEFAULT 0,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goodorder
-- ----------------------------
INSERT INTO `goodorder` VALUES ('20210301231012651', null, '6', '200', '0', '12345', '2021/03/01/23/10/12', '2021/03/01/23/23/28', '200');
INSERT INTO `goodorder` VALUES ('202103012324094825', null, '6', '100', '0', '12345', '2021/03/01/23/24/09', '2021/03/01/23/24/48', '100');
INSERT INTO `goodorder` VALUES ('202103012326104559', null, '6', '188', '0', '12345', '2021/03/01/23/26/10', '2021/03/01/23/27/36', '188');
INSERT INTO `goodorder` VALUES ('202103012330368460', null, '6', '200', '0', '12345', '2021/03/01/23/30/36', '2021/03/01/23/32/20', '200');
INSERT INTO `goodorder` VALUES ('20210301233336111', null, '6', '188', '0', '12345', '2021/03/01/23/33/36', '2021/03/01/23/34/33', '188');
INSERT INTO `goodorder` VALUES ('202103012337124000', null, '6', '376', '0', '12345', '2021/03/01/23/37/12', '2021/03/01/23/37/17', '376');
INSERT INTO `goodorder` VALUES ('202103012337475448', null, '6', '246', '0', '12345', '2021/03/01/23/37/47', '2021/03/01/23/37/54', '246');
INSERT INTO `goodorder` VALUES ('202103012340447797', null, '6', '488', '0', '12345', '2021/03/01/23/40/44', '2021/03/01/23/42/17', '488');
INSERT INTO `goodorder` VALUES ('202103020030359535', null, '6', '200', '0', '12345', '2021/03/02/00/30/35', '2021/03/02/00/30/41', '200');
INSERT INTO `goodorder` VALUES ('202103020037307503', null, '6', '246', '0', '12345', '2021/03/02/00/37/30', '2021/03/02/00/47/02', '246');
INSERT INTO `goodorder` VALUES ('202103021215149402', null, '6', '246', '0', '12345', '2021/03/02/12/15/14', '2021/03/02/12/15/19', '246');
INSERT INTO `goodorder` VALUES ('202103021215454908', null, '6', '246', '0', '12345', '2021/03/02/12/15/45', '2021/03/02/12/16/00', '246');
INSERT INTO `goodorder` VALUES ('202103021300553090', null, '6', '246', '0', '1170559835', '2021/03/02/13/00/55', '2021/03/02/13/01/08', null);
INSERT INTO `goodorder` VALUES ('202103021428214487', null, '6', '246', '0', '1170559835', '2021/03/02/14/28/21', '2021/03/02/15/08/22', null);
INSERT INTO `goodorder` VALUES ('202103021429093175', null, '6', '188', '0', '1170559835', '2021/03/02/14/29/09', '2021/03/02/14/31/20', null);
INSERT INTO `goodorder` VALUES ('202103021508063828', null, '6', '534', '0', '1170559835', '2021/03/02/15/08/06', '2021/03/02/15/08/12', '534');
INSERT INTO `goodorder` VALUES ('20210302183324849', null, '6', '200', '0', '1170559835', '2021/03/02/18/33/23', '2021/03/02/18/34/01', '200');
INSERT INTO `goodorder` VALUES ('202103022223064502', null, '6', '246', '0', '1170559835', '2021/03/02/22/23/06', '2021/03/02/22/55/28', '246');
INSERT INTO `goodorder` VALUES ('202103022254517890', null, '6', '246', '0', '1170559835', '2021/03/02/22/54/51', '2021/03/02/22/55/23', '246');
INSERT INTO `goodorder` VALUES ('202103022350407187', null, '6', '246', '0', '1170559835', '2021/03/02/23/50/40', '2021/03/02/23/50/48', '246');
INSERT INTO `goodorder` VALUES ('202103030803068671', null, '5', '246', '0', '1170559835', '2021/03/03/08/03/06', '2021/03/03/08/03/11', '246');
INSERT INTO `goodorder` VALUES ('202103031916567286', null, '6', '246', '0', '1170559835', '2021/03/03/19/16/55', '2021/03/03/23/07/45', '246');
INSERT INTO `goodorder` VALUES ('202103032111151570', null, '6', '246', '0', '1170559835', '2021/03/03/21/11/15', '2021/03/04/09/46/27', '246');
INSERT INTO `goodorder` VALUES ('202103041435263613', null, '6', '246', '0', '1170559835', '2021/03/04/14/35/26', '2021/03/04/22/22/29', '246');
INSERT INTO `goodorder` VALUES ('20210304143600659', null, '6', '246', '0', '1170559835', '2021/03/04/14/36/00', '2021/03/04/14/36/11', '246');
INSERT INTO `goodorder` VALUES ('202103041706492244', null, '6', '188', '0', '1170559835', '2021/03/04/17/06/49', '2021/03/04/17/10/33', '188');
INSERT INTO `goodorder` VALUES ('202103041710542201', null, '4', '188', '0', '1170559835', '2021/03/04/17/10/54', '2021/03/04/22/22/15', '188');
INSERT INTO `goodorder` VALUES ('202103042226592283', null, '6', '246', '0', '1170559835', '2021/03/04/22/26/59', '2021/03/04/22/29/54', '246');
INSERT INTO `goodorder` VALUES ('202103052045185774', null, '6', '246', '0', '1234567890', '2021/03/05/20/45/18', '2021/03/05/21/09/07', '246');
INSERT INTO `goodorder` VALUES ('202103052129026092', null, '6', '246', '0', '1234567890', '2021/03/05/21/29/02', '2021/03/05/22/04/35', '246');
INSERT INTO `goodorder` VALUES ('202103052152582184', null, '6', '884', '0', '1234567890', '2021/03/05/21/52/58', '2021/03/05/22/04/31', '884');
INSERT INTO `goodorder` VALUES ('202103052155456409', null, '6', '884', '0', '1234567890', '2021/03/05/21/55/45', '2021/03/05/22/04/18', '884');
INSERT INTO `goodorder` VALUES ('20210305220458874', null, '3', '492', '2', '1234567890', '2021/03/05/22/04/58', '2021/03/05/22/05/33', '492');
INSERT INTO `goodorder` VALUES ('202103052217308048', null, '3', '738', '3', '1234567890', '2021/03/05/22/17/30', '2021/03/05/22/22/16', '738');
INSERT INTO `goodorder` VALUES ('202103052256177382', null, '5', '492', '2', '1234567890', '2021/03/05/22/56/17', '2021/03/05/22/58/06', '492');
INSERT INTO `goodorder` VALUES ('202103060043595286', null, '3', '767', '4', '12306', '2021/03/06/00/43/59', '2021/03/06/00/44/06', '767');
INSERT INTO `goodorder` VALUES ('202103060122157696', null, '3', '246', '1', '12306', '2021/03/06/01/22/15', '2021/03/06/01/22/17', '246');
INSERT INTO `goodorder` VALUES ('202103060141322303', null, '6', '684', '3', '12345', '2021/03/06/01/41/32', '2021/03/06/01/42/14', '684');
INSERT INTO `goodorder` VALUES ('202103060416452755', null, '4', '559', '3', '12345', '2021/03/06/04/16/45', '2021/03/06/13/56/07', '559');
INSERT INTO `goodorder` VALUES ('202103060459015623', null, '1', '388', '0', '12345', '2021/03/06/04/59/01', null, null);
INSERT INTO `goodorder` VALUES ('202103060501393331', null, '4', '638', '4', '12345', '2021/03/06/05/01/39', '2021/03/06/13/56/12', '638');
INSERT INTO `goodorder` VALUES ('20210306092007504', null, '4', '246', '1', '12345', '2021/03/06/09/20/07', '2021/03/06/13/55/56', '246');
INSERT INTO `goodorder` VALUES ('202103061355374418', null, '3', '188', '1', '12345', '2021/03/06/13/55/37', '2021/03/06/13/55/40', '188');
INSERT INTO `goodorder` VALUES ('202103061402211959', null, '3', '246', '1', '12345', '2021/03/06/14/02/21', '2021/03/06/14/02/24', '246');
INSERT INTO `goodorder` VALUES ('202103061528318928', null, '3', '246', '1', '12345', '2021/03/06/15/28/31', '2021/03/06/15/28/37', '246');
INSERT INTO `goodorder` VALUES ('202103061614167693', null, '5', '246', '1', '12345', '2021/03/06/16/14/16', '2021/03/06/16/14/43', '246');

-- ----------------------------
-- Table structure for goodspu
-- ----------------------------
DROP TABLE IF EXISTS `goodspu`;
CREATE TABLE `goodspu` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gcid` int(11) DEFAULT NULL,
  `gname` varchar(100) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `sku` int(11) DEFAULT NULL,
  `recommend` int(11) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goodspu
-- ----------------------------

-- ----------------------------
-- Table structure for goodsrate
-- ----------------------------
DROP TABLE IF EXISTS `goodsrate`;
CREATE TABLE `goodsrate` (
  `grid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(50) DEFAULT NULL,
  `rate` int(5) DEFAULT 0,
  PRIMARY KEY (`grid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goodsrate
-- ----------------------------
INSERT INTO `goodsrate` VALUES ('28', '42', '5');
INSERT INTO `goodsrate` VALUES ('29', '43', '1');
INSERT INTO `goodsrate` VALUES ('30', '44', '3');
INSERT INTO `goodsrate` VALUES ('31', '45', '2');
INSERT INTO `goodsrate` VALUES ('32', '42', '5');
INSERT INTO `goodsrate` VALUES ('33', '43', '4');
INSERT INTO `goodsrate` VALUES ('34', '44', '4');
INSERT INTO `goodsrate` VALUES ('35', '45', '4');
INSERT INTO `goodsrate` VALUES ('36', '43', '5');
INSERT INTO `goodsrate` VALUES ('37', '42', '5');
INSERT INTO `goodsrate` VALUES ('38', '43', '5');
INSERT INTO `goodsrate` VALUES ('39', '42', '3');
INSERT INTO `goodsrate` VALUES ('40', '48', '5');
INSERT INTO `goodsrate` VALUES ('41', '46', '3');
INSERT INTO `goodsrate` VALUES ('42', '48', '5');
INSERT INTO `goodsrate` VALUES ('43', '49', '4');
INSERT INTO `goodsrate` VALUES ('44', '49', '5');
INSERT INTO `goodsrate` VALUES ('45', '49', '5');
INSERT INTO `goodsrate` VALUES ('46', '45', '5');
INSERT INTO `goodsrate` VALUES ('47', '45', '5');
INSERT INTO `goodsrate` VALUES ('48', '45', '5');
INSERT INTO `goodsrate` VALUES ('49', '45', '5');
INSERT INTO `goodsrate` VALUES ('50', '51', '5');
INSERT INTO `goodsrate` VALUES ('51', '50', '5');
INSERT INTO `goodsrate` VALUES ('52', '52', '5');
INSERT INTO `goodsrate` VALUES ('53', '56', '4');
INSERT INTO `goodsrate` VALUES ('54', '58', '5');
INSERT INTO `goodsrate` VALUES ('55', '58', '5');
INSERT INTO `goodsrate` VALUES ('56', '57', '5');
INSERT INTO `goodsrate` VALUES ('57', '58', '5');
INSERT INTO `goodsrate` VALUES ('58', '45', '5');
INSERT INTO `goodsrate` VALUES ('59', '45', '5');
INSERT INTO `goodsrate` VALUES ('60', '60', '5');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `infoid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `icid` int(11) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `tag` int(2) DEFAULT 1,
  PRIMARY KEY (`infoid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('1', '远离“红脸蛋”，小孩子的脸你得这么护理~', '<div class=\"entry group\">\r\n							<p>天气寒冷，空气干燥，不少宝宝的皮肤变得十分粗糙，甚至干燥脱皮。那么，应该怎样护理宝宝的皮肤呢？下面给大家分享一些关于宝宝皮肤护理的小妙招！</p>\r\n<p><img class=\"size-full wp-image-161538 aligncenter cc_cursor\" title=\"2\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-18-09364979-e1613612229656.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><span style=\"color: #993300;\"><strong>宝宝皮肤为什么会变得干燥？</strong></span></p>\r\n<p>天气寒冷干燥，空气湿度低，肌肤急需水分，而宝宝宝宝皮肤厚度和油脂分泌都少于成人，肌肤调节能力、抵抗能力都很差，所以容易变得粗糙且干燥。</p>\r\n<p><span style=\"color: #993300;\"><strong>如何护理宝宝干燥皴裂的皮肤?</strong></span></p>\r\n<p><strong>1.涂抹护肤霜</strong></p>\r\n<p>护肤霜能够在宝宝的皮肤表面形成一层保护屏障，缓解天气带来的干燥。所以，父母在给宝宝洗过脸或手之后，要给他涂上婴幼儿专用护肤霜。婴幼儿专用的护肤霜天然温和，不会刺激宝宝皮肤。此外，宝宝口水较多，嘴巴周围的皮肤会变得红红的。此时需要帮他把口水擦干净，并涂上护肤霜。</p>\r\n<p><strong>2.洗澡频率不可过高</strong></p>\r\n<p>给宝宝洗澡的次数不要过频。水温保持在正常温度即可，不可过烫。宝宝洗完澡之后，要及时用浴巾擦干宝宝身上的水分，接着涂抹身体乳，滋润肌肤。</p>\r\n<p><strong>3.及时涂抹护手霜</strong></p>\r\n<p>宝宝的小手如果已经发生了皴裂，建议每天将宝宝的小手泡在温水中几分钟软化患处，随后再给他涂上护手霜。</p>\r\n<p><strong>4.补充维生素A</strong></p>\r\n<p>宝宝皮肤干燥的原因之一可能是缺乏维生素A。所以要让他多吃禽蛋、猪肝、鱼肝油、黄豆、花生等富含维生素A的食物。</p>\r\n<p>父母只要用心帮宝宝护理皮肤到位，宝宝就可以远离干燥皮肤哦！</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '3', '2021/02/18', '1');
INSERT INTO `info` VALUES ('2', '小宝睡觉狂摇头，是生病了吗？', '<div class=\"entry group\">\r\n							<p>很多妈妈都发现，宝宝在睡觉的时候不停摇头，担心孩子是不是生病了。下面给大家介绍宝宝睡觉摇头的原因，赶紧来了解一下吧~</p>\r\n<p><img class=\"aligncenter size-full wp-image-161357\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-06-13154097.jpeg\" alt=\"\" width=\"350\" height=\"246\"></p>\r\n<p><span style=\"color: #993300;\"><strong>正常现象</strong></span></p>\r\n<p>宝宝睡觉时候摇头，有可能是浅睡眠引起的，这是正常现象，大家不必过于担忧，当宝宝进入深睡眠之后就会停止摇头。</p>\r\n<p><span style=\"color: #993300;\"><strong>孩子太热</strong></span></p>\r\n<p>很多妈妈总担心宝宝穿不暖，不管白天还是晚上都把宝宝穿得严严实实，生怕他受凉生病。宝宝年纪小不会说话，只能通过肢体语言表达自己的想法。宝宝摇头就可能是觉得热，想要脱衣服掀被子，表达抗议。这种时候妈妈可以通过摸宝宝颈背的温度判断宝宝是否热、是否出汗，适当给宝宝减被或者减少衣物。</p>\r\n<p><span style=\"color: #993300;\"><strong>宝宝湿疹</strong></span></p>\r\n<p>患有湿疹的宝宝会觉得身上很痒。晚上睡觉时体温升高，他会感到更加瘙痒全身不舒服，就会摇头向妈妈求助。此时，妈妈可以给宝宝涂抹药膏缓解瘙痒，并且适当减少衣被。</p>\r\n<p><span style=\"color: #993300;\"><strong>考虑中耳炎</strong></span></p>\r\n<p>宝宝患中耳炎的，大多是呼吸道感染或者经常呛奶导致的。所以，宝宝有以上这些症状，并且晚上睡觉摇头，妈妈要警惕起来，宝宝有可能患上了中耳炎。宝宝得了中耳炎一定要及时就医，以免延误病情。</p>\r\n<p><span style=\"color: #993300;\"><strong>内耳前庭没有得到充分刺激</strong></span></p>\r\n<p>宝宝摇头有可能是为了刺激内耳前庭，这是宝宝在成长发育阶段的正常现象。家长可以通过浴巾荡秋千帮助宝宝刺激内耳前庭。</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('3', '孩子好动，是身体的问题还是……', '<p>有的孩子特别好动，根本坐不住，无论到哪，都有满满的精力，到处释放。孩子好动，究竟是身体问题还是其他问题呢？今天我们就来谈谈这个问题：</p>\r\n<p><img class=\"aligncenter size-full wp-image-161012 cc_cursor\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-28-00315484.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><span style=\"color: #993300;\"><strong>宝宝好动的原因</strong></span></p>\r\n<p><strong>1.宝宝感到不舒服</strong></p>\r\n<p>宝宝好动有可能是因为感觉到不舒服，比如肠胃不适。这时候父母应注意腹部保暖。另外，神经系统发育不完善也会导致宝宝动个不停，此时父母要及时将他抱起来哄一哄，这样可以让宝宝感觉到温暖。随着宝宝慢慢长大，这种情况也会明显好转。</p>\r\n<p><strong>2.自身生长情况</strong></p>\r\n<p>由于身体内的各个器官都在生长，所以宝宝才会出现好动的情况，这也是正常的，父母无需过于担心。</p>\r\n<p><strong>3.身体过热</strong></p>\r\n<p>盖被过厚或者穿的衣服过多，会让宝宝身体过热，导致他踢被子或者动个不停。大家要及时帮他调整衣被厚度。</p>\r\n<p><strong>4.生活环境不佳</strong></p>\r\n<p>处在有噪音的环境中，或是屋子里面有蚊虫叮咬，都会影响宝宝休息，导致他动来动去。</p>\r\n<p><strong><span style=\"color: #993300;\">宝宝好动怎么解决？</span></strong></p>\r\n<p><strong>1.做好榜样</strong></p>\r\n<p>父母在宝宝面前要做好榜样，以身作则，让宝宝养成良好的生活习惯，做任何事情都有条不紊。父母可以跟宝宝一起制作休息表，并严格执行。</p>\r\n<p><strong>2.培养专注习惯</strong></p>\r\n<p>宝宝好动，父母可以让他每天坚持做一件事情，比如手工活，这能培养宝宝的专注力，让他能够坐得住。</p>\r\n<p><strong>3.及时就诊</strong></p>\r\n<p>如果是生病导致孩子好动，应该及时带孩子就医配合治疗。</p>\r\n<p>孩子好动不一定就是多动症，他们只是对周围的一切都充满好奇，想要探索，但如果怀疑是疾病因素导致，一定要尽早就医。</p>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('4', '孩子更容易有“节后综合症”！如何收心', '<div class=\"post\" id=\"post\">\r\n							<h1 class=\"postTitle\">孩子更容易有“节后综合症”！如何收心</h1>\r\n							<div class=\"postInfo\">\r\n								<span>发布于<a href=\"http://news.ci123.com/article/161525.html\">2021-02-18 12:00:46</a></span>\r\n								<span>标签：<a href=\"http://news.ci123.com/article/tag/3-6%e5%b2%81\" rel=\"tag nofollow\">3-6岁</a>, <a href=\"http://news.ci123.com/article/tag/%e5%84%bf%e7%ab%a5%e5%81%a5%e5%ba%b7\" rel=\"tag nofollow\">儿童健康</a>, <a href=\"http://news.ci123.com/article/tag/%e7%94%9f%e6%b4%bb%e4%b9%a0%e6%83%af\" rel=\"tag nofollow\">生活习惯</a>, <a href=\"http://news.ci123.com/article/tag/%e8%82%b2%e5%84%bf%e7%9f%a5%e8%af%86\" rel=\"tag nofollow\">育儿知识</a></span>\r\n								<span>作者：刘瑞祥</span>\r\n							</div>\r\n							<div class=\"entry group\">\r\n							<p>开工了！又困又累不想上班，你是不是怀疑自己患上了“节后综合症”？</p>\r\n<p><img class=\"size-full wp-image-161542 aligncenter\" title=\"951\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-18-11561178-e1613620679148.jpeg\" alt=\"\" width=\"350\" height=\"345\"></p>\r\n<p>讲真，大人对于“节后综合症”，往往能很快适应并且“痊愈”，但对于孩子们来说，可就难了！要知道，春节期间孩子跟着父母回家团圆、串亲戚拜年，作息和饮食规律被打破，再加上过年时父母多少会对孩子放任一些，这就很容易会让孩子患上“节后综合征”。</p>\r\n<p>春节假期虽然已经结束，但孩子的寒假还在继续，父母可要趁早帮助孩子调整生活作息，摆脱“节后综合征”！那么，该如何收心呢？我们接着往下看：</p>\r\n<p><img class=\"aligncenter size-full wp-image-161526\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-09-14124196.jpeg\" alt=\"\" width=\"350\" height=\"233\"></p>\r\n<p><strong><span style=\"color: #ff6600;\">1.分离焦虑</span></strong></p>\r\n<p>平时爸爸妈妈每天外出上班，孩子跟着老人在一起也相安无事。但到了过年期间，爸爸妈妈放假在家，孩子时刻都能看到爸爸妈妈，对父母的依赖感也变得更强，非常喜欢这样的生活状态。但春节假期结束后，爸爸妈妈回去上班，孩子短时间内就会难以适应这样的变化，很容易产生分离焦虑，自然也就会又哭又闹。</p>\r\n<p><strong>正确做法：</strong></p>\r\n<p>在上班前几天，大家就要提前跟孩子打好招呼，告诉他爸爸妈妈就要上班了，让孩子做好心理准备。</p>\r\n<p>父母也可以就跟平常周末一样，带他去游乐场玩一玩，或者去公园散散心。这样一来，孩子就会觉得，这就是平常周末的节奏。</p>\r\n<p><img class=\"size-full wp-image-161539 aligncenter\" title=\"01107\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-18-11465995.jpeg\" alt=\"\" width=\"350\" height=\"233\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>2.作息时间不规律</strong></span></p>\r\n<p>过年时家里十分热闹，孩子们聚在一起看电视、玩游戏，每天玩得超high。爸爸妈妈忙着接待客人，对孩子的管理往往会松懈一些，孩子也就会玩乐过度，打乱了原本的生活规律。最终，孩子会早上起不来，晚上不肯睡。</p>\r\n<p><strong>正确做法：</strong></p>\r\n<p>父母和孩子都要收收心，把作息时间调整过来。此外，爸爸妈妈当好榜样，这样孩子才能回归正常的作息规律。</p>\r\n<p>具体方法为：</p>\r\n<p>让孩子少玩手机少看电视；</p>\r\n<p>给孩子早点洗澡，尽早上床休息；</p>\r\n<p>临睡前不要让孩子玩得太嗨，可以给他讲讲故事或者播放舒缓的音乐，让其尽快睡着；</p>\r\n<p>坚持让孩子午睡，但不要让他睡很长时间。</p>\r\n<p><img class=\"size-full wp-image-161540 aligncenter\" title=\"01223\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-18-11465937.jpeg\" alt=\"\" width=\"350\" height=\"232\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>3.厌食或消化不良</strong></span></p>\r\n<p>过年期间饮食丰富，孩子每天都面对大鱼大肉，水果和蔬菜吃得少了。孩子摄入大量高热高脂食物，会加重肠胃道的消化负担。很容易发生消化不良，出现厌食症状。另外，作息时间不不规律也会对消化系统造成不良影响，导致孩子吃饭没胃口。</p>\r\n<p><strong>正确做法：</strong></p>\r\n<p>大家在改变孩子作息时间时，也要调整他的饮食。建议这几天的饮食以清淡为主，吃蔬菜为宜。最好吃些容易消化的食物，并且多喝水，促进肠胃道的新陈代谢。</p>\r\n<p>孩子食欲不佳，大家可以给他煮清淡的汤健脾消食，比如白萝卜排骨汤、南瓜小米粥等。如果孩子积食，可以试试益生菌，因为益生菌具有修复肠道粘膜、调理肠道、保持肠道菌群平衡的作用。</p>\r\n<p><img class=\"size-full wp-image-161541 aligncenter\" title=\"1157\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-18-11465933.jpeg\" alt=\"\" width=\"350\" height=\"233\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>Tips：节后食谱推荐</strong></span></p>\r\n<p>节后宝宝容易出现积食或是食欲不振的状况，因此调整饮食很有必要。下面给大家推荐几道适合节后吃的食谱，赶紧给宝宝做起来哦：</p>\r\n<p><strong>1.山楂陈皮白菜豆腐汤</strong></p>\r\n<p><strong>食材：</strong>陈皮1/4个，谷芽和麦芽各24g，山楂15g，白菜250g，北菇30g，韭白9g，豆腐2块，生姜4片。</p>\r\n<p><strong>做法：</strong></p>\r\n<p>（1）将食材分别清洗干净，</p>\r\n<p>（2）在锅内倒入2000ml清水和陈皮、谷芽、麦芽、山楂这几种药材，用大火煮开;</p>\r\n<p>（3）改小火煮一个小时，倒入剩下的食材，一起煮20分钟，加入适量盐即可食用。</p>\r\n<p><strong>作用：</strong>有健脾益气的功效，能缓解宝宝积食，减轻消化不良所引起的不适。</p>\r\n<p><strong>2.粉葛饭豆煲鱼</strong></p>\r\n<p><strong>食材：</strong>粉葛500g，饭豆100g，赤小豆50g，蜜枣3个，陈皮1/4个，鱼1条，猪瘦肉150g，生姜3片。</p>\r\n<p><strong>做法：</strong></p>\r\n<p>（1）饭豆、赤小豆和陈皮需要用水浸泡，其他食材分别处理干净。</p>\r\n<p>（2）生鱼放入锅中煎到泛黄，和其他食材一起倒入锅中，加入3000ml水，大火煮沸，之后小火煮2.5小时，加入盐即可。</p>\r\n<p><strong>功效：</strong>具有清热去燥、下火的作用，可以全家一起饮用。</p>\r\n<p><strong>3.谷芽麦芽牛肚汤</strong></p>\r\n<p><strong>食材：</strong>牛肚1个，谷芽和麦芽各15g，去核的红枣6个，淮山30g，陈皮1/4个，生姜3片。</p>\r\n<p><strong>做法：</strong></p>\r\n<p>（1）将药材洗干净后，放入水中浸泡一会儿；牛肚洗净后煮5分钟，之后刮去黑衣，并洗干净切片；</p>\r\n<p>（2）将所有食材都放入锅中，加入2500ml清水，用大火煮开；</p>\r\n<p>（3）改用小火煮3个小时，加入适量盐和生油调味即可。</p>\r\n<p><strong>功效：</strong>可以健脾益胃、消食导滞，适合消化不良或食欲不振的宝宝饮用。</p>\r\n<p>和大人一样，孩子放完长假也会有“节后综合征”，但只要积极调整，耐心引导，孩子很快就会摆脱节后综合征，恢复正常的生活状态~</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>\r\n						</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('5', '小家伙眼屎多，未必是上火，揭秘真相', '<div class=\"entry group\">\r\n							<p>不少父母认为，宝宝眼屎多就是上火了。其实这是不科学的，宝宝眼屎多不一定是上火惹的祸，还有其他方面的原因哦。下面给大家科普一下宝宝眼屎多的原因和护理常识，赶紧来了解一下！</p>\r\n<p><img class=\"aligncenter size-full wp-image-161396\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-08-01154221.jpeg\" alt=\"\" width=\"350\" height=\"290\"></p>\r\n<p><span style=\"color: #993300;\"><strong>宝宝眼屎多的常见原因</strong></span></p>\r\n<p>宝宝眼屎多，不一定是上火引起的。人体在进入睡眠状态后，眼睛会产生一些分泌物，这些分泌物也就是俗称的“眼屎”。基本上每个人都会有眼屎，只是多少的问题。</p>\r\n<p>宝宝有眼屎是正常现象，父母不用过度担心。如果宝宝的眼屎比平常多，有可能就是身体在发出“求救”信号:</p>\r\n<p><strong>1.体质原因</strong></p>\r\n<p>中医认为，宝宝眼屎多有可能是“燥热型”体质造成的。如果宝宝是这种体质，日常生活中要注意饮食调理，多喝水，不要吃过于温补的食物。</p>\r\n<p><strong>2.“倒长”睫毛</strong></p>\r\n<p>宝宝处于正在长睫毛的阶段，难免会出现眼睑内翻、眼睫毛向内的情况。发现宝宝眼屎多，父母可以检查一下他的睫毛有没有倒长。宝宝睫毛倒长，会刺激眼睛导致眼屎增多。这是正常现象，通常会在宝宝1岁之后改善，不用专门进行矫正。</p>\r\n<p><strong>3.细菌感染</strong></p>\r\n<p>宝宝眼屎呈黄色，眼睛周围充血，并伴有发红症状，有可能是发生了细菌感染。泪囊被细菌感染后，发脓的物质就会分泌成为“眼屎”。出现这种情况，不要盲目给宝宝随意用药，应及时到他医院就诊。</p>\r\n<p><span style=\"color: #993300;\"><strong>宝宝眼屎多该如何解决</strong></span></p>\r\n<p><strong>1.保持清洁</strong></p>\r\n<p>发现宝宝眼屎增多，大家帮他清洁眼部时一定要先洗手，以免发生细菌感染。如果宝宝有爱揉眼睛的坏习惯，要及时帮他纠正。</p>\r\n<p><strong>2.日常护理</strong></p>\r\n<p>宝宝眼屎多要多休息，少看看电视和手机。除此之外，给宝宝补充维C也可以缓解眼屎增多的症状。</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '3', '2021/02/18', '1');
INSERT INTO `info` VALUES ('6', '吃这些能促进宝宝萌牙？当心反而害了娃！', '<div class=\"entry group\">\r\n							<p>不少妈妈在社区留言：宝宝到现在还没有长牙，要不要给他吃钙片或者带他去看医生？甚至有妈妈提出给宝宝吃一些磨牙食物，帮助牙齿萌出。那么这些方法有用吗？一起来看看吧。</p>\r\n<p><img class=\"aligncenter size-full wp-image-161394 cc_cursor\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-08-00424762.jpeg\" alt=\"\" width=\"350\" height=\"262\"></p>\r\n<p><span style=\"color: #993300;\"><strong>宝宝长牙一定要吃钙片吗?</strong></span></p>\r\n<p>不少父母看到宝宝长牙比较晚，就想给他吃钙片补钙，实际上这种做法并不完全正确，因为只有缺钙的宝宝才需要补钙。而出牙慢并不代表宝宝缺钙。一般来说，只要饮食合理，营养均衡到位，宝宝一般不会缺钙。</p>\r\n<p>而如果父母在宝宝不缺钙的情况下，盲目给他补钙，可能会引发便秘、肾结石、食欲不振等症状，造成生长发育障碍，不利于宝宝身体成长。那么什么时候需要补钙呢？一般当宝宝牙齿容易出现裂痕或者容易碎时，就要给他额外补些钙了。</p>\r\n<p><span style=\"color: #993300;\"><strong>牙齿可以用磨牙棒磨出来吗?</strong></span></p>\r\n<p>有的父母认为，宝宝出牙晚是吃的食物过于精细导致的，于是就给宝宝准备一些较硬的食物，比如磨牙棒、磨牙饼干等等，希望牙齿可以快快长出来。</p>\r\n<p>其实使用磨牙棒并不能促进牙齿的成长，过早给宝宝吃质地较硬的是食物，反而不利于宝宝正常的生长发育，这是因为宝宝的咀嚼能力较差，肠胃发育不成熟，吃较硬的食物容易诱发消化不良，影响营养的正常吸收。</p>\r\n<p><span style=\"color: #993300;\"><strong>何时可以给宝宝吃磨牙棒呢?</strong></span></p>\r\n<p>宝宝长牙之后，大家可以慢慢给他添加块状的食物。宝宝没有长牙之前，不要给他吃质地硬的食物，千万不要因为想让宝宝快点出牙，就做出影响他正常健康成长的事情来。</p>\r\n<p>宝宝长牙的时间早晚多与父母的遗传有关，如果父母们小的时候长牙较晚，那么宝宝出牙的时间也可能较晚。每个宝宝出牙的时间都有所不同，只要宝宝健健康康地快乐成长，长牙晚也不是什么坏事哦！</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '3', '2021/02/18', '1');
INSERT INTO `info` VALUES ('7', '怎样制定孩子寒假安排表？看完这篇就懂了', '<div class=\"entry group\">\r\n							<p>寒假到了，父母想要孩子自觉学习，就要给他提前制定一份时间安排表，赶紧来了解相关姿势。</p>\r\n<p><img class=\"aligncenter size-full wp-image-161373\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-06-17075619.jpeg\" alt=\"\" width=\"350\" height=\"262\"></p>\r\n<p><span style=\"color: #993300;\"><strong>为何要让孩子制定时间安排表</strong></span></p>\r\n<p>寒假期间，父母与孩子之间的矛盾根源大多在于孩子的学习。孩子心智不成熟、自控能力较差，看电视不学习、玩耍拖延写作业的事情常有发生，父母看到后就唠叨不停，导致矛盾爆发。</p>\r\n<p>但是如果有正确适当的时间安排表，让孩子劳逸结合，不仅可以让他在假期里养成良好的学习习惯，还有助于自律能力的培养，对他今后的学习工作都会有很大的帮助。</p>\r\n<p><span style=\"color: #993300;\"><strong>寒假学习计划该如何制定</strong></span></p>\r\n<p><strong>1.制定计划表，平衡学习和玩耍，劳逸结合</strong></p>\r\n<p>计划表将寒假时间分为两个阶段：半放松阶段和收心阶段</p>\r\n<p><strong>（1）半放松阶段</strong></p>\r\n<p><strong></strong>以学习为主，玩耍为辅。每天学习大概2-3小时。具体的学习内容可以根据孩子的寒假作业进行具体的安排，比如：每天上午背诵可以是古诗也可以是单词，完成3-5页暑假作业，下午若有兴趣班可以不安排学习任务，若没有，同样安排2-3小时的学习时间。总的来说学习任务并不是很重。其他时间包括晚上孩子可以自由安排。</p>\r\n<p><strong>（2）收心阶段</strong></p>\r\n<p>为了保证孩子在开学之前适应上学模式，应提前将孩子的作息调整为上学模式。</p>\r\n<p>虽然是在假期，孩子除了学习还要有休息时间。周末可以让孩子休息两天放松一下身心，以免对学习产生抗拒和厌恶心理。另外，周末时可以与孩子一起总结这一周的表现，完善假期学习计划表。</p>\r\n<p><strong>2.制定完善的奖惩机制</strong></p>\r\n<p>当孩子按时、认真完成学习任务的时，父母要适当给他奖励。至于奖励什么，不妨听听孩子的想法。如果孩子要求正当合理，大家都可以满足他。</p>\r\n<p>孩子没有按时完成学习任务或者不认真完成作业的时，要让他用自由时间补上，并且适当缩短玩耍时间以示惩戒。表现良好时，再恢复正常的学习计划表。这些奖惩制度一定要经过孩子同意，这样不仅可以提高孩子的自律能力，还能让他养成信守承诺的良好品质。</p>\r\n<p><strong>3.说话方式要耐心且温柔</strong></p>\r\n<p>不要经常问孩子“今天的学习任务完成了吗”，“作业拿来，我检查下”。家长与孩子之间是平等的主体，不要以盛气凌人的态度干预孩子完成学习任务。</p>\r\n<p>通过这样的完善的学习计划和奖惩方式使得孩子不仅劳逸结合，还能超额完成学习任务，培养自立的能力，一举多得！</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('8', '孩子一放假就放飞自我，聪明的父母都这么做', '<div class=\"entry group\">\r\n							<p>家长们发现，一到寒假，孩子的性情就会发生变化，总是喜欢无理取闹，彻底放飞自我，这是怎么一回事？</p>\r\n<p><img class=\"size-full wp-image-161041 aligncenter cc_cursor\" title=\"6\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-27-10245377-e1611817902440.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><span style=\"color: #993300;\"><strong>孩子放假后为何会“放飞自我”？</strong></span></p>\r\n<p>其实，这种情况不能完全怪孩子，孩子每天上幼儿园，从早到晚在固定的时间做固定的事情。放假后在家中生活，日常作息和环境的不同让他们感到不适应。这种不适应会直接影响孩子情绪，小孩子又无法很好地处理和表达情绪，所以往往采取哭闹的方式来释放。</p>\r\n<p><span style=\"color: #993300;\"><strong>如何应对孩子闹情绪？</strong></span></p>\r\n<p><span style=\"color: #000000;\"><strong>1.情绪发泄出来比忍着强</strong></span></p>\r\n<p>孩子哭完以后，情绪得到宣泄，心情会逐步得到平复，所以让他发泄吧~</p>\r\n<p><span style=\"color: #000000;\"><strong>2.帮助孩子学会控制情绪</strong></span></p>\r\n<p>家长不要把孩子的事情当作小事。在孩子小小的世界里，都是很重要的事，很多时候孩子需要父母耐心的倾听，当内心的想法和感受被大人所听见和理解时，他们才会在大人的帮助下控制情绪，不会随便发脾气。</p>\r\n<p><span style=\"color: #000000;\"><strong>3.增加信任感</strong></span></p>\r\n<p>孩子生气时候，大家要询问他生气的原因，帮助其排解情绪，找出问题的所在。在帮助孩子排解情绪的过程中，可以增进父母与孩子之间的信任感，以后孩子碰到困难时就会主动和父母商量，从而增加亲子之间感情。</p>\r\n<p>在这个过程中，也能让孩子拥有安全感，不会随便发脾气和生气了。</p>\r\n<p>人有七情六欲 ，哭闹生气乃是正常的，更何况是孩子。父母要多多陪伴孩子，了解孩子的内心所思所想，只有这样，才能够及时的发现问题，解决问题，同时又让孩子学会控制情绪。此外，父母在生活中也要做好榜样，不能因为一点小事就随便发脾气，以免孩子有样学样。总而言之，父母需要及时耐心和孩子沟通，了解孩子内心的真实想法，帮助孩子缓解不当的情绪。</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('9', '5种方法让你的孩子更受欢迎', '<div class=\"entry group\">\r\n							<p>想要让孩子受别人欢迎，父母在平时要注意培养他的社交能力。这5个社交技能一定要教会孩子，赶紧来看：</p>\r\n<p><img class=\"aligncenter size-full wp-image-161014\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-28-00404021.jpeg\" alt=\"\" width=\"350\" height=\"194\"></p>\r\n<p><span style=\"color: #993300;\"><strong>1.让孩子学会尊重他人</strong></span></p>\r\n<p>家长要让孩子了解一个道理：只有先尊重对方，对方才能尊重你。孩子懂礼貌，更容易得到别人的喜欢。在跟别人相处时，一定要尊重对方。</p>\r\n<p><strong><span style=\"color: #993300;\">2.让孩子学会赞美别人</span></strong></p>\r\n<p>没有人不喜欢别人赞美自己吧？孩子更是如此。因此家长在平时要学会赞美自己的孩子，教孩子用积极的态度去对待周围的人或是事，这样他也能获得积极的回应。</p>\r\n<p><span style=\"color: #993300;\"><strong>3.让孩子学会合作</strong></span></p>\r\n<p>家长可以多创造机会，鼓励自家孩子跟别的小朋友去玩耍，学会跟小朋友交流互动。</p>\r\n<p><span style=\"color: #993300;\"><strong>4.让孩子学习语言社交能力</strong></span></p>\r\n<p>言语沟通是社交的第一步，因此，家长在平时要有意识地对孩子进行锻炼。比如家里来客人时，可以鼓励孩子去端茶倒水，向长辈问好。</p>\r\n<p><span style=\"color: #993300;\"><strong>5.让孩子学会分享</strong></span></p>\r\n<p>家长应教会孩子学会分享，明白只有这样才能得到别人的认可欢迎。让孩子学会向需要帮助的伸出双手，学会乐于助人，分享的同时朋友也会变得多。</p>\r\n<p><span style=\"color: #993300;\"><strong>TIPS：创造更多锻炼社交能力机会</strong></span></p>\r\n<p>家长平时要经常带孩子去公共场所吃饭或是玩耍，这样可以让孩子接触到不同身份不同职业的人群。大家在跟别人交流互动时，要给孩子做好示范，让孩子了解怎么跟不同的社会人员互动，多给孩子创造锻炼机会。孩子好奇心重，在看到家长的做法后他们也会参与到其中，这就就能很好地提高社交能力了。</p>\r\n<p>另外，家长要给孩子创造一个和谐的家庭氛围，教会孩子基本的社交技能。这过程中不要过于着急，每个孩子都有自己的成长发育期，多鼓励孩子，多给孩子些赞许，有利于提高他的社交能力。</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('10', '训练宝贝的感统能力，玩一玩这些游戏就可以！', '<div class=\"entry group\">\r\n							<p>随着早教机构的宣传，人们越来越注重对孩子的早教问题，其中感统游戏一词进入人们的视野当中。也许你是第一次听说这个词语，但是许多人对这类游戏本身并不陌生，甚至是许多人从小就开始玩的游戏，比如丢沙包，跳皮筋等等，这些其实就是感统游戏，下面就给大家科普一下如何培养孩子的感统能力，赶紧来看看吧。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160309\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-06-22223956.jpeg\" alt=\"\" width=\"350\" height=\"262\"></p>\r\n<p><span style=\"color: #993300;\"><strong>1.丢沙包</strong></span></p>\r\n<p>需要几个小伙伴一起互动，并且是高度集中沙包，有助于孩子注意力的集中和加强孩子的前庭平衡感、动作控制和手脚平衡等能力。</p>\r\n<p><span style=\"color: #993300;\"><strong>2.瞎子摸人</strong></span></p>\r\n<p>孩子被蒙住眼睛充当盲人时，通过其他的听觉知觉触觉等弥补视觉，开始抓人游戏。在这过程中，可以锻炼孩子的听觉统合能力、感知空间感及身体协调能力。</p>\r\n<p><span style=\"color: #993300;\"><strong>3.弹玻璃珠</strong></span></p>\r\n<p>虽然玩这个游戏都是趴在土地上，身体脏兮兮，但是可以培养孩子的视觉能力以及手部控制力。</p>\r\n<p><strong style=\"color: #993300;\">4.触觉游戏</strong></p>\r\n<p>婴儿期的触感游戏很简单，让孩子感受不同质感的水果，锻炼辨别物体的能力。但是小孩子喜欢抓东西进入嘴里，因此家长在培养孩子抓水果的游戏的过程中需要格外小心，小心孩子抓入食物进入嘴中。</p>\r\n<p>学龄前孩子可以通过触摸不同的物品，让孩子通过质感和各种形状猜出物品的名字，训练孩子的触觉能力。</p>\r\n<p><span style=\"color: #993300;\"><strong>5.前庭平衡觉游戏</strong></span></p>\r\n<p><strong>跳一跳：</strong>在地上可以画各种圈圈或者跳跃类的游戏，让孩子经常跳一跳，但是需要根据孩子的实际情况来制定跳一跳的距离，不能距离太远让孩子跳不到圈子里或者完不成游戏，这样会挫败孩子的积极性。跳一跳可以增加孩子的身体素质和前庭平衡能力</p>\r\n<p><strong>倒着走：</strong>在安全的路上就可以让孩子倒着走，同时还能在路上设置一些可以克服的障碍物，通过这些手段让孩子的前庭平衡能力增加。</p>\r\n<p>在日常的训练过程中，父母可以记录每一次孩子完成的数据，一方面可以为下一次调整计划做准备，另一方便也是留下了美好的回忆。</p>\r\n<p>我们小时候，大多数都是这些游戏陪伴了童年，许多能力无意中得到了培养，但是现在的孩子往往有电子产品的陪伴，喜欢在网上玩各种游戏，没有一点实体的活动游戏。因此大家有必要给孩子开展针对性的感统游戏训练，尤其是触觉、前庭平衡觉这两方面锻炼。</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('11', '让娃坚持学画画，会带来哪些变化？看完你就知道了', '<div class=\"entry group\">\r\n							<p>画画对于孩子的成长之路却有着很多好处和帮助，所以如果你的孩子对画画感兴趣，请一定要支持他~下面将为大家一一说明，赶紧来了解。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160316\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-06-23054121.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><span style=\"color: #993300;\"><strong>1.提高孩子想象力</strong></span></p>\r\n<p>如果孩子的绘画迎合了大人的欣赏，孩子们的作品就失去了“想象”。比如，模仿并不意味着孩子的作品是随意的，不能以成人角度看待孩子的作品。孩子绘画作品的每一线条都是孩子们的“无意识记忆”，就像古代人使用的甲骨文。</p>\r\n<p>孩子们以自己的理解画出万物。有心理学家认为，孩子在5岁时的创造和想象力相当于绘画大师，只是与大人的表达方式不同而已。</p>\r\n<p><span style=\"color: #993300;\"><strong>2.突破新的观察力</strong></span></p>\r\n<p>孩子的观察力细致入微，不同于大人注意的细节，不要忽视孩子内心世界的敏感和细腻.</p>\r\n<p><span style=\"color: #993300;\"><strong>3.宣泄情绪</strong></span></p>\r\n<p>着名教育家迪斯特·韦赫曾说：“画1小时画获得的东西，比看9小时获得的东西还多。”这指出了许多病人在进行心理治疗时被要求画幅画的原因，即绘画可以体现出孩子的情绪和心理疾病的原因。绘画将体现孩子的内心真实世界。孩子的绘画风格暗淡，说明他可能存在不良情绪。反之，孩子绘画风格丰富，颜色鲜艳，说明孩子心理健康。</p>\r\n<p><span style=\"color: #993300;\"><strong>4.绘画能让孩子更聪明</strong></span></p>\r\n<p>对于绘画的思考，能够促进左脑的开发。画画时，会不知不觉锻炼孩子对颜色、形状、空间位置的判断认知能力，这些对右脑智力的开发很有益处。且绘画能够激发孩子对于颜色、空间位置、图形的敏感能力，有利于右脑智力的开发。</p>\r\n<p>所以，绘画中接受的新鲜事物，可以促进孩子左右大脑的同时协作。</p>\r\n<p><span style=\"color: #993300;\"><strong>5.绘画有有助孩子各种能力的发展</strong></span></p>\r\n<p>涂鸦培养了孩子的对于颜色、内容的创造力，大量儿童绘画作品表明，孩子绘画能够锻炼其观察力、思维能力、记忆力、协调力、表达力。</p>\r\n<p><span style=\"color: #993300;\"><strong>6.绘画让孩子善于表达</strong></span></p>\r\n<p>绘画，同音乐、舞蹈一样，都具有表情达意的作用。绘画作品可以体现孩子的情绪和生命力。</p>\r\n<p>绘画不只是一门艺术才能，对于孩子想象力、精神思维、情绪思维的发展具有重大作用~</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('12', '有趣的手工，折一只愤怒的小鸟！', '<div class=\"entry group\">\r\n							<p>《愤怒的小鸟》大家都玩过吧~今天给大家带来的就是这只小鸟的折纸教程，赶紧带着孩子一起玩吧~</p>\r\n<p><img class=\"aligncenter size-full wp-image-160517 cc_cursor\" title=\"001\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-13-15542430.jpeg\" alt=\"\" width=\"350\" height=\"347\"></p>\r\n<p><img class=\"aligncenter size-full wp-image-160518\" title=\"002\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-13-15542481.jpeg\" alt=\"\" width=\"350\" height=\"466\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>准备材料：</strong></span></p>\r\n<p>黑色卡纸，蓝色彩纸，黄色彩纸，A4纸，剪刀，黑色彩笔，双面胶。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160519\" title=\"003\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-13-15542454.jpeg\" alt=\"\" width=\"350\" height=\"379\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>制作步骤：</strong></span></p>\r\n<p>1.取蓝色彩纸一张，对折两次后打开，沿着折痕将两个底角往上折，折出一个菱形。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160520\" title=\"004\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-13-15542439.jpeg\" alt=\"\" width=\"350\" height=\"381\"></p>\r\n<p>2.将折好的菱形的开口的一边的两个角往上折，再往下折，折到中间的位置。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160521\" title=\"005\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-13-155424301.jpeg\" alt=\"\" width=\"350\" height=\"505\"></p>\r\n<p>3.将折好的菱形的另一边的上半部分上下折叠成扇子形，宽度自己调节，将剩下的一边往后折。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160522\" title=\"006\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-13-15542499.jpeg\" alt=\"\" width=\"350\" height=\"412\"></p>\r\n<p>4.将折好的小鸟翻转过来，再把最下面的两个角往里折，愤怒的小鸟的轮廓就折好了。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160523\" title=\"007\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-13-15542464.jpeg\" alt=\"\" width=\"350\" height=\"374\"></p>\r\n<p>5.分别用黑色的卡纸剪出小鸟的头冠，翅膀，用黄色的彩纸剪出鼻子，用A4纸剪出下巴和眼睛，把这些依次粘贴在小鸟的各个部位，用黑色彩笔点上眼睛，愤怒的小鸟就折好了～</p>\r\n<p><img class=\"aligncenter size-full wp-image-160524\" title=\"008\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-13-15542467.jpeg\" alt=\"\" width=\"350\" height=\"392\"></p>\r\n<p>我家两个娃都觉得这个愤怒的小鸟好好玩，而宝爸把他当书签用还不错～</p>\r\n<p><img class=\"aligncenter size-full wp-image-160525\" title=\"009\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-13-15542479.jpeg\" alt=\"\" width=\"350\" height=\"466\"></p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('13', '宝贝聪不聪明，看手就清楚了', '<div class=\"entry group\">\r\n							<p>小婴儿的智力水平发展速度惊人，可以说会超乎你的想象。宝宝虽然只有几个月大，但可以通过一些行为表现来判断他们聪不聪明。怎么判断呢？看手就可以：</p>\r\n<p><img class=\"aligncenter size-full wp-image-160356\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-08-13542932.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong><img class=\"alignnone size-full wp-image-160362\" title=\"3 (2)\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-08-14551219.gif\" alt=\"\" width=\"22\" height=\"20\"> 喜欢用手抓</strong></span></p>\r\n<p>宝宝的手很灵活，而且对世界充满好奇，他们非常喜欢用手触摸和感觉，想把身边的东西都抓在手中。大家可以将一些小玩具放在宝宝身边，让他们试着摸一摸。这样除了可以让宝宝手部协调能力得到锻炼，还能提高宝宝的智力水平。</p>\r\n<p><span style=\"color: #ff6600;\"><strong><img title=\"3 (2)\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-08-14551219.gif\" alt=\"\" width=\"22\" height=\"20\"> 抓住东西不肯撒手</strong></span></p>\r\n<p>有的宝宝很喜欢某样玩具，把它紧紧抓在手上。但如果父母想要将这件玩具拿走，宝宝会马上放手；或者父母稍微使点劲，就可以拿走宝宝手上的物体。这种情况表明宝宝手部力量较差，也表明他的反应力不强。</p>\r\n<p>反之，如果宝宝可以紧紧把玩具攥在手上不放，说明他反应力更出色，聪明伶俐。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160355\" title=\"2\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-08-13542988.jpeg\" alt=\"\" width=\"350\" height=\"262\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong><img title=\"3 (2)\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-08-14551219.gif\" alt=\"\" width=\"22\" height=\"20\"> 宝宝手部条件反射较快</strong></span></p>\r\n<p>宝宝反应能力快，在很大程度上可以说明他很聪明，特别是宝宝手部反应。如果宝宝看到或触碰到什么东西，可以准确把它抓在手里，说明他的条件反射非常迅速，很聪明</p>\r\n<p>其实，宝宝的手部反应能力可以通过后天训练来提升。大家如果发现宝宝反应能力较差，日常生活中要加强这方面训练，并经常摸摸宝宝的手。长此以往，宝宝的双手会越来越灵活，智商也会越来越高。</p>\r\n<p><img class=\"size-full wp-image-160381 aligncenter\" title=\"37491\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-08-145512100.jpeg\" alt=\"\" width=\"350\" height=\"262\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong></strong><strong><img title=\"3 (2)\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-08-14551219.gif\" alt=\"\" width=\"22\" height=\"20\"> 影响孩子智力的主要因素</strong></span></p>\r\n<p>下面，我们再来看看影响孩子智力的主要因素：</p>\r\n<p><strong>1.遗传</strong></p>\r\n<p>研究发现，父母的智商高，他们的子女智商也高。遗传因素对孩子的智商的影响约占50-60%。</p>\r\n<p><strong>2.营养</strong></p>\r\n<p>想让孩子更聪明，妈妈要从孕期就补充各种有助于胎儿大脑发育的营养。</p>\r\n<p>孩子三岁前是大脑发育高峰期，也是孩子一生智力发展的黄金期，大脑发育基本上在2岁前完成，特别是在1-2岁间。在此阶段，孩子大脑发育不断完善，只要营养跟得上，孩子的智力发育就会更出色。</p>\r\n<p>建议孩子出生后就坚持母乳喂养，因为母乳中含有一种“脑黄金”的物质，可以有效提高孩子思维能力和记忆能力，让孩子更聪明。通常而言，宝宝6个月时就可以吃辅食了，大家要让他摄入充足的能量、蛋白质和其他营养元素，从而促进宝宝大脑的正常发育，避免宝宝智力发展受到限制。</p>\r\n<p><strong>3.学习</strong></p>\r\n<p>想要孩子更聪慧，一定不能忽略后天的学习。孩子大脑越用就越灵光，坚持学习可以有效提高智力。</p>\r\n<p><strong>4.教养</strong></p>\r\n<p>父母的教育方式对孩子智力影响甚大。父母的教养、家庭文化、教育程度会影响孩子的行为习惯、性格等。父母恩爱幸福、家庭氛围良好，有助于孩子智商和情商的提高。</p>\r\n<p>孩子的心理和情绪，受原生家庭的影响。如果孩子长期处于紧张、恐惧、压抑、焦虑等情绪下，会导致神经调节障碍，进而影响孩子的智力发展，让孩子对环境的适应能力差，反应能力降低。</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('14', '手工黏土“月亮上的小熊”，陪娃一起做好梦', '<div class=\"entry group\">\r\n							<p>最近闲来没事，和孩子一起用黏土做了一个“月亮上的小熊”，步骤简单，成品超好看，你也来试试吧~</p>\r\n<p><img class=\"aligncenter size-full wp-image-160052\" title=\"1\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570354.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>材料准备：</strong></span></p>\r\n<p>一些粘土、一把剪刀、一把锥子（没有也可以不用、我是家里有正好用了）、一块亚克力板（家里没有的可以用一些平的物品来代替）、一些常用的粘土工具（平时买粘土里面带的三件套就可以）。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160056\" title=\"5\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570365.jpeg\" alt=\"\" width=\"350\" height=\"352\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>具体步骤：</strong></span></p>\r\n<p><strong>首先开始做小熊</strong></p>\r\n<p>1.先拿一块粘土搓成一个椭圆、再用工具稍微压扁一点、然后用手整理一下、小熊的头就完成了。</p>\r\n<p>2.再拿一块粘土搓成一个小椭圆、压扁贴到小熊的头上做鼻子底下的层次。</p>\r\n<p>3.用黑色粘土弄两个小球做眼睛。</p>\r\n<p>4.再用黑色粘土把鼻子跟嘴巴装饰一下。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160057\" title=\"6\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570397.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p>5.用红色粘土搓成细条、用剪刀剪6块、来做小熊的腮红。</p>\r\n<p>6.拿粘土搓两个小圆球、用工具在中间按压一下、直接粘到小熊的头上、来做小熊的两只耳朵。</p>\r\n<p>7.拿一块粘土搓一个一头胖、一头瘦的圆块状、用手整理一下来做小熊翘翘的屁股。</p>\r\n<p>8.用粘土分成3份分别捏它的尾巴、一头胖一头瘦的胳膊跟腿。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160058\" title=\"7\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570312.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><strong>再来开始组装小熊</strong></p>\r\n<p>1.把小熊的脑袋跟身体像这样的按在一起。</p>\r\n<p>2.把胳膊、腿、还有尾巴都放在合适的位置上。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160059\" title=\"8\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570341.jpeg\" alt=\"\" width=\"350\" height=\"136\"></p>\r\n<p><strong>下面开始做装饰品</strong></p>\r\n<p>1.用一块粘土先搓一个两头尖圆形长条、然后用手整理一下、给它弯成月亮形状。</p>\r\n<p>2.白色粘土搓成椭圆形、压扁一点、用工具随意剪几个口子、用手整理一下、云彩就做好了。</p>\r\n<p>3.星星就比较简单了、这里我正好有模具、我就用模具了。</p>\r\n<p>4.拿一块粘土弄一个圆、压扁（底座要厚一些）用工具弄成你喜欢的样子就可以。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160060\" title=\"9\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-1057039.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><strong>现在开始把它们组装在一起吧</strong></p>\r\n<p>1.把小熊找个合适位置趴在月亮上。</p>\r\n<p>2.把月亮放在底座上（不着急的话可以等干了再组装、要不然月亮这边重一些、会把底座一边压扁）。</p>\r\n<p>3.把云彩按照你的喜好放好。</p>\r\n<p>4.星星也是、随意点比较好。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160061\" title=\"10\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570343.jpeg\" alt=\"\" width=\"350\" height=\"465\"></p>\r\n<p><strong>最后是可爱的小帽子</strong></p>\r\n<p><img class=\"aligncenter size-full wp-image-160062\" title=\"11\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570331.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p>我后来觉得比较空，所以又做了一个云彩放在了前面。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160063\" title=\"12\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570337.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><img class=\"aligncenter size-full wp-image-160053\" title=\"2\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570339.jpeg\" alt=\"\" width=\"350\" height=\"272\"></p>\r\n<p><img class=\"aligncenter size-full wp-image-160054\" title=\"3\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570348.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><img class=\"aligncenter size-full wp-image-160055\" title=\"4\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570318.jpeg\" alt=\"\" width=\"350\" height=\"238\"></p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('15', '手工黏土“月亮上的小熊”，陪娃一起做好梦', '<div class=\"entry group\">\r\n							<p>最近闲来没事，和孩子一起用黏土做了一个“月亮上的小熊”，步骤简单，成品超好看，你也来试试吧~</p>\r\n<p><img class=\"aligncenter size-full wp-image-160052 cc_cursor\" title=\"1\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570354.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>材料准备：</strong></span></p>\r\n<p>一些粘土、一把剪刀、一把锥子（没有也可以不用、我是家里有正好用了）、一块亚克力板（家里没有的可以用一些平的物品来代替）、一些常用的粘土工具（平时买粘土里面带的三件套就可以）。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160056 cc_cursor\" title=\"5\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570365.jpeg\" alt=\"\" width=\"350\" height=\"352\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>具体步骤：</strong></span></p>\r\n<p><strong>首先开始做小熊</strong></p>\r\n<p>1.先拿一块粘土搓成一个椭圆、再用工具稍微压扁一点、然后用手整理一下、小熊的头就完成了。</p>\r\n<p>2.再拿一块粘土搓成一个小椭圆、压扁贴到小熊的头上做鼻子底下的层次。</p>\r\n<p>3.用黑色粘土弄两个小球做眼睛。</p>\r\n<p>4.再用黑色粘土把鼻子跟嘴巴装饰一下。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160057\" title=\"6\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570397.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p>5.用红色粘土搓成细条、用剪刀剪6块、来做小熊的腮红。</p>\r\n<p>6.拿粘土搓两个小圆球、用工具在中间按压一下、直接粘到小熊的头上、来做小熊的两只耳朵。</p>\r\n<p>7.拿一块粘土搓一个一头胖、一头瘦的圆块状、用手整理一下来做小熊翘翘的屁股。</p>\r\n<p>8.用粘土分成3份分别捏它的尾巴、一头胖一头瘦的胳膊跟腿。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160058 cc_cursor\" title=\"7\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570312.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><strong>再来开始组装小熊</strong></p>\r\n<p>1.把小熊的脑袋跟身体像这样的按在一起。</p>\r\n<p>2.把胳膊、腿、还有尾巴都放在合适的位置上。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160059\" title=\"8\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570341.jpeg\" alt=\"\" width=\"350\" height=\"136\"></p>\r\n<p><strong>下面开始做装饰品</strong></p>\r\n<p>1.用一块粘土先搓一个两头尖圆形长条、然后用手整理一下、给它弯成月亮形状。</p>\r\n<p>2.白色粘土搓成椭圆形、压扁一点、用工具随意剪几个口子、用手整理一下、云彩就做好了。</p>\r\n<p>3.星星就比较简单了、这里我正好有模具、我就用模具了。</p>\r\n<p>4.拿一块粘土弄一个圆、压扁（底座要厚一些）用工具弄成你喜欢的样子就可以。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160060 cc_cursor\" title=\"9\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-1057039.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><strong>现在开始把它们组装在一起吧</strong></p>\r\n<p>1.把小熊找个合适位置趴在月亮上。</p>\r\n<p>2.把月亮放在底座上（不着急的话可以等干了再组装、要不然月亮这边重一些、会把底座一边压扁）。</p>\r\n<p>3.把云彩按照你的喜好放好。</p>\r\n<p>4.星星也是、随意点比较好。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160061\" title=\"10\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570343.jpeg\" alt=\"\" width=\"350\" height=\"465\"></p>\r\n<p><strong>最后是可爱的小帽子</strong></p>\r\n<p><img class=\"aligncenter size-full wp-image-160062\" title=\"11\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570331.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p>我后来觉得比较空，所以又做了一个云彩放在了前面。</p>\r\n<p><img class=\"aligncenter size-full wp-image-160063\" title=\"12\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570337.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><img class=\"aligncenter size-full wp-image-160053\" title=\"2\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570339.jpeg\" alt=\"\" width=\"350\" height=\"272\"></p>\r\n<p><img class=\"aligncenter size-full wp-image-160054\" title=\"3\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570348.jpeg\" alt=\"\" width=\"350\" height=\"350\"></p>\r\n<p><img class=\"aligncenter size-full wp-image-160055\" title=\"4\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-29-10570318.jpeg\" alt=\"\" width=\"350\" height=\"238\"></p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('16', '纸巾变手指玩偶，孩子玩了就停不下来！', '<div class=\"entry group\">\r\n							<p>爱手工的我发现，只要利用好了，任何物件都可以变废为宝，拥有独特的利用价值，所以今天我就用纸巾来做一款可爱手指玩偶小白兔，还可以插在笔上，做笔的装饰～大家赶紧做起来给孩子玩玩吧~</p>\r\n<p><img class=\"aligncenter size-full wp-image-159836\" title=\"1\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-16432877.jpeg\" alt=\"\" width=\"350\" height=\"247\"></p>\r\n<p><img class=\"aligncenter\" title=\"2\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-16432835.jpeg\" alt=\"\" width=\"350\" height=\"222\"></p>\r\n<p><img class=\"aligncenter size-full wp-image-159834\" title=\"3\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-16432862.jpeg\" alt=\"\" width=\"350\" height=\"215\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>材料:</strong></span></p>\r\n<p>长方形纸巾、胶带、中性笔～</p>\r\n<p>注:小胶带更好～</p>\r\n<p><img class=\"aligncenter size-full wp-image-159833\" title=\"4\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-16432827.jpeg\" alt=\"\" width=\"350\" height=\"251\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>具体步骤：</strong></span></p>\r\n<p>1:先拿出长方形纸巾，先把下面对中折一下，再把上面对中折过来。</p>\r\n<p><img class=\"aligncenter size-full wp-image-159832\" title=\"5\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-16432838.jpeg\" alt=\"\" width=\"350\" height=\"461\"></p>\r\n<p>2:接着把两头往对准中间折下来，如下图：</p>\r\n<p><img class=\"aligncenter size-full wp-image-159831\" title=\"6\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-16432841.jpeg\" alt=\"\" width=\"350\" height=\"461\"></p>\r\n<p>3:把折下来的部分，折上来，成三角状，左边也同样折法～</p>\r\n<p><img class=\"aligncenter size-full wp-image-159830\" title=\"7\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-16432845.jpeg\" alt=\"\" width=\"350\" height=\"461\"></p>\r\n<p>4:接着把刚折好的三角位置，再对角，对中间线折上来，左边也同样折法～</p>\r\n<p><img class=\"aligncenter size-full wp-image-159829\" title=\"8\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-16432883.jpeg\" alt=\"\" width=\"350\" height=\"461\"></p>\r\n<p>5:接上面，继续把上面的角，对折，折到后面，剪一小段胶带，把上面宽面，反过来，对一起，粘在一起，图三就是粘合好后的模样～</p>\r\n<p><img class=\"aligncenter size-full wp-image-159828\" title=\"9\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-16432887.jpeg\" alt=\"\" width=\"350\" height=\"461\"></p>\r\n<p>6:粘合好后面，接着正过来，把脸部和耳朵整理整理，如下图：</p>\r\n<p><img class=\"aligncenter size-full wp-image-159827\" title=\"10\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-1643285.jpeg\" alt=\"\" width=\"350\" height=\"461\"></p>\r\n<p>7:最后拿出中性笔，给小白兔在脸部适当为位置，画上眼睛嘴巴，我们的纸巾手指玩偶，小白兔就做好了，喜欢的亲，可以带幼儿园宝宝一起做起来呦～</p>\r\n<p><img class=\"aligncenter size-full wp-image-159826\" title=\"11\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-21-16432844.jpeg\" alt=\"\" width=\"350\" height=\"247\"></p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('17', '孩子的消费观，得在买买买中建立！', '<div class=\"entry group\">\r\n							<p>每到周末，很多父母都会带着孩子外出购物玩耍，享受美好的亲子时光。有的父母在购物时只注意自己买买买，而忽略了孩子，要知道，此时正是帮助孩子树立正确消费观的最佳时机。大家赶紧来了解一下吧。</p>\r\n<p><img class=\"aligncenter size-full wp-image-159550\" title=\"1\" src=\"http://news.ci123.com/uploads/2020/12/2020-12-13-19292097.jpeg\" alt=\"\" width=\"350\" height=\"261\"></p>\r\n<p><span style=\"color: #993300;\"><strong>1.父母需以身作则</strong></span></p>\r\n<p>父母是孩子的第一任老师。因此，大家在购物时要以身作则，引导孩子了解“金钱来之不易”的观念，不要让他养成大手大脚习惯。让孩子了解生活简朴，不过度奢华是中华美德，从小就让其养成合理消费、理性消费的观念。</p>\r\n<p><span style=\"color: #993300;\"><strong>2.建立自己的账本，合理规划零用钱</strong></span></p>\r\n<p>过年时的压岁钱或平时的零用钱，可以让孩子自己保存。给孩子准备一个笔记本，记录每笔钱的开支，让孩子从小养成记账的习惯，合理规划零用钱的使用。</p>\r\n<p><span style=\"color: #993300;\"><strong>3.计划用钱，理性消费</strong></span></p>\r\n<p>购物前，大家可以先跟孩子商量好，问问孩子需要买什么，不能超过一定金额，这样可以帮助孩子养成有计划用钱的好习惯。等到孩子长到一定岁数，有自己的零花钱后，大家可以在购物前问孩子想买什么，有没有超过自己的承受能力，引导孩子理性消费，让他将零花省下来，珍惜来之不易的零花钱。</p>\r\n<p><span style=\"color: #993300;\"><strong>4.按需购买，适度消费</strong></span></p>\r\n<p>从孩子三岁开始，大家带他去超市购买东西前，可以先跟孩子一起列出一张清单，到超市后，每买一样东西就划掉一样，若有多余的钱可以买其他东西，但如果没有多余的钱就要立即带他离开。这能让孩子明白“需要“和“想要”的区别，了解什么是必需品什么是非必需品。</p>\r\n<p><span style=\"color: #993300;\"><strong>5.货比三家，精确消费</strong></span></p>\r\n<p>在买东西时，家长可以多转几家店铺，比完价格后，再比比质量，然后从中选择最好的一家。这可以帮助孩子养成货比三家，精确消费的观念。等到孩子大一点时，家长还要引导孩子选择合适的购买时机，比如在超市或商场打折时可以选择囤些不易过期的生活必需品。</p>\r\n<p>建立良好的消费观，不仅能帮助孩子赢在财富的起跑线上，同时还能锻炼孩子的思维逻辑。平时，家长也可以给孩子一个“赚钱”的机会，利用劳动获得自己想要的东西。</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('18', '少看屏幕多运动，孩子心理更健康，尤其是女孩子~', '<div class=\"entry group\">\r\n							<p>来自UBC研究人员的一项新研究发现，青少年，尤其是女孩，在参加体育和艺术等课外活动的时间越多，在屏幕前的时间越少，他们的心理健康状况就越好。</p>\r\n<p><img class=\"aligncenter size-full wp-image-159113\" title=\"1\" src=\"http://news.ci123.com/uploads/2020/11/2020-11-30-17283934.jpeg\" alt=\"\" width=\"350\" height=\"233\"></p>\r\n<p>这项发表在《预防医学》杂志上的研究发现，每天花在娱乐屏幕上的时间少于2小时（如浏览互联网、玩电子游戏和使用社交媒体）与生活满意度和乐观程度较高、焦虑和抑郁症状较低有关，尤其是女孩。同样，参加课外活动也会带来更好的心理健康结果。</p>\r\n<p><span style=\"color: #993300;\">&nbsp;<strong>课外活动是青少年心理健康的一项资产</strong></span></p>\r\n<p>研究的主要作者Eva Oberle表示：“尽管我们在新冠疫情流行之前进行了这项研究，但现在，如果由于新冠疫情限制青少年参加课外活动，比如体育和艺术项目，青少年可能会在空闲时间花更多的时间在屏幕前。我们的研究结果强调课外活动是青少年心理健康的一项资产。找到安全的方法让儿童和青少年在当前时间继续参与这些活动，可能是减少屏幕时间和促进心理健康和福祉的一种方法。”<em></em></p>\r\n<p><span style=\"color: #993300;\"><strong>屏幕时间更少，孩子心理越健康</strong></span><strong></strong></p>\r\n<p>这项研究的数据来自一项人口水平的调查，涉及不列颠哥伦比亚省27个学区的365所学校的28712名7年级学生。研究人员调查了娱乐屏幕时间，如玩电子游戏、看电视、浏览互联网，以及参加课外活动，如体育和艺术项目放学后。然后他们将其与积极和消极的心理健康指标进行了比较。</p>\r\n<p>研究结果的亮点包括：</p>\r\n<p>1.参加课外活动的青少年在课后两小时或更长时间内从事娱乐性屏幕活动的可能性显著降低。</p>\r\n<p>2.参加课外活动与较高的生活满意度和乐观度有关，而焦虑和抑郁症状的水平较低。</p>\r\n<p>3.较长的屏幕时间（每天超过两小时）与生活满意度和乐观程度较低，焦虑和抑郁症状更高。</p>\r\n<p>4.男生和女生之间的差异，屏幕时间越长对女生心理健康的负面影响越显著。</p>\r\n<p>5.然而，在男孩和女孩中，当青少年都参加课外活动并且在荧屏上的时间少于两个小时时，他们的心理健康最强。</p>\r\n<p><span style=\"color: #993300;\"><strong>不同类型的屏幕时间对孩子的负面影响</strong></span><strong></strong></p>\r\n<p>Oberle说，还需要进一步的研究来研究为什么屏幕时间的负面影响对女孩比男孩更有害。她还希望未来的研究重点放在不同类型的屏幕时间的影响上。</p>\r\n<p>她说：“我们确实知道，某些形式的屏幕时间是有益的，例如，如果大家在异地，就可以在网上与朋友和家人保持联系，但还有其他类型的屏幕时间可能是非常有害的。有许多细微差别尚未得到充分理解，值得探索。”</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('19', '科学避孕方式大盘点，安全不伤身！', '<div class=\"entry group\">\r\n							<p>如果你们还想过二人世界，还没准备好宝宝的到来，又或者你们刚刚迎来了宝宝，暂时不想要二胎。那么，避孕这门功课就要好好做一下了。</p>\r\n<p>今天，我们就来盘点下几种科学避孕的方式，大家赶紧来学习学习：</p>\r\n<p><img class=\"size-full wp-image-161344 aligncenter cc_cursor\" title=\"5\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-05-15132210.jpeg\" alt=\"\" width=\"350\" height=\"314\"></p>\r\n<p><span style=\"color: #993300;\"><strong>1.预测排卵期</strong></span></p>\r\n<p>大家可以通过观察子宫颈粘液，检测体温变化等方式来预测排卵期。如果想要避孕，大家在排卵期就不要同房了。请注意，这种观察也可能会有偏差，导致排卵期计算错误。</p>\r\n<p><span style=\"color: #993300;\"><strong>2.使用避孕套</strong></span></p>\r\n<p><strong></strong>避孕套可以阻断阴道和阴茎接触，避免受孕。另外，避孕套还可以预防艾滋病和性病。但如果放置不当，容易发生滑落，影响避孕效果。</p>\r\n<p><span style=\"color: #993300;\"><strong>3.阴道杀精剂</strong></span></p>\r\n<p><strong></strong>这种杀精剂可以有助阴道干燥的女性增加阴道润滑性，增加性生活的快感，同时起到杀精避孕的作用。但有的妈妈可能会对杀精剂过敏，因此单独使用杀精剂效果可能不太理想。</p>\r\n<p><span style=\"color: #993300;\"><strong>4.避孕隔膜</strong></span></p>\r\n<p><strong></strong>避孕隔膜可以阻止精子进入宫颈，即使精子进入了子宫颈，也会被避孕隔膜底部涂抹的杀精剂杀死。在使用避孕隔膜前，大家需要到医院去定制适合自己子宫直径的隔膜。注意，这个避孕隔膜如果使用不当，避孕失败的可能性也会比较高。</p>\r\n<p><span style=\"color: #993300;\"><strong>5.避孕药</strong></span></p>\r\n<p><strong></strong>在西方国家，女性避孕喜欢用避孕药。因为这种避孕方法不但简单便捷，效果稳定，还可以快速帮助新妈妈恢复生育能力。但如果新妈妈有心脏病高血压或者有吸烟史，最好不要用避孕药避孕。服用避孕药可能导致血液凝固，带来心脏问题。如果新妈妈们处于哺乳期，也不适合用避孕药避孕。</p>\r\n<p>建议大家根据自己的身体情况，选择合适的方式进行避孕。</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '2', null, '1');
INSERT INTO `info` VALUES ('20', '不懂就问•现在离婚更难了吗？', '<div class=\"entry group\">\r\n							<p>今年开始实施的《民法典》对公民的婚姻关系有了新的规定，有人说现在离婚难了！本期的《不懂就问》中，大成律所合伙人冯薇雅律师针对该问题，进行了详细解读。</p>\r\n<p><img class=\"aligncenter size-full wp-image-161433 cc_cursor\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-08-14410226.jpeg\" alt=\"\" width=\"350\" height=\"200\"></p>\r\n<p>冯薇雅律师指出，《民法典》实施后，离婚难不难，主要看选择什么方式离婚。离婚的方式有两种，一种是协议离婚，一种是起诉离婚，这两种离婚流程是不同的，至于难不难还得看具体的流程。</p>\r\n<p>想了解具体内容吗？赶紧打开视频来了解一下吧~</p>\r\n<p style=\"text-align: center;\"><iframe src=\"https://v.qq.com/txp/iframe/player.html?vid=m32165pdoav\" frameborder=\"0\" width=\"500\" height=\"375\"></iframe></p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '4', '2021/02/18', '1');
INSERT INTO `info` VALUES ('21', '来一碗青花椒海鲜荞麦拌面，营养又开胃！', '<div class=\"entry group\">\r\n							<p>特别喜欢青花椒的味道，特殊的香气仿佛可以唤醒味蕾，专治没胃口～用青花椒卤了北极虾和八抓鱼，Q弹的口感带着丝丝凉爽，拌上健康的荞麦面太好吃了，惹味的青花椒让人瞬间食指大动，自己就吃掉了一大盘，哈哈哈，反正海鲜脂肪低，也不担心长胖啦～</p>\r\n<p><img class=\"aligncenter size-full wp-image-161335 cc_cursor\" title=\"001\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-05-14102885.jpeg\" alt=\"\" width=\"350\" height=\"232\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>材料：</strong></span></p>\r\n<p><strong>主料：</strong>荞麦挂面150g，北极虾20只，八爪鱼200g。</p>\r\n<p><strong>配料：</strong>酸甜海藻50g。</p>\r\n<p><strong>调料：</strong>青花椒卤水500g，芝麻油2大勺，醋2小勺，生抽1大勺。</p>\r\n<p><img class=\"aligncenter size-full wp-image-161338\" title=\"004\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-05-14102850.jpeg\" alt=\"\" width=\"350\" height=\"232\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>做法：</strong></span></p>\r\n<p>1.北极虾去壳去头；</p>\r\n<p>2.八爪鱼用沸水焯烫后洗去浮沫；</p>\r\n<p>3.将八爪鱼放入青花椒卤水；</p>\r\n<p>4.再放入北极虾，浸泡3小时；</p>\r\n<p><img class=\"aligncenter size-full wp-image-161339\" title=\"005\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-05-14102880.jpeg\" alt=\"\" width=\"350\" height=\"262\"></p>\r\n<p>5.锅中加水煮开，放入荞麦挂面煮熟，捞出面条过凉；</p>\r\n<p>6.降温后的面条放入盆中，倒入芝麻油，充分拌匀；</p>\r\n<p>7.加入少许醋和生抽拌匀；</p>\r\n<p>8.面条放入盘中，码上卤好的海鲜和海藻。</p>\r\n<p><img class=\"aligncenter size-full wp-image-161340\" title=\"006\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-05-14102897.jpeg\" alt=\"\" width=\"350\" height=\"262\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>心得分享：</strong></span></p>\r\n<p>1.海鲜可以提前浸泡，浸泡越久越入味；</p>\r\n<p>2.面条捞出及时过凉，以免粘连。</p>\r\n<p><img class=\"aligncenter size-full wp-image-161336\" title=\"002\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-05-14102815.jpeg\" alt=\"\" width=\"350\" height=\"232\"></p>\r\n<p><img class=\"aligncenter size-full wp-image-161337\" title=\"003\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-05-14102811.jpeg\" alt=\"\" width=\"350\" height=\"232\"></p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '2', '2021/02/18', '1');
INSERT INTO `info` VALUES ('22', '疫情当下，年货中的冷冻食品，还能放心吃吗？', '<div class=\"entry group\">\r\n							<p>临近过年，屡屡传出冷冻食品新冠病毒检测阳性的消息，这让很多家长都很担心，置办年货时，难免要买些冷冻食品，那么这些冷冻食品还能放心吃吗？</p>\r\n<p><img class=\"aligncenter size-full wp-image-161221\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-02-14150589.jpeg\" alt=\"\" width=\"350\" height=\"262\"></p>\r\n<p><span style=\"color: #ff6600;\"><strong>√ 保持警惕，密切留意疫情发展</strong></span></p>\r\n<p>新冠病毒非常“狡猾”，在人体内会潜伏3天、7天、14天，甚至更长时间。对于普通民众而言，最有效的预防方法就是把基本的安全防疫工作做好，做到位，并密切留意居住地的疫情变化情况。</p>\r\n<p>如果居住地有被新冠病毒污染的冷冻食品出现，大家就要警惕起来，购买冷冻食品和生鲜食材，不要用手直接触摸，如果摸了要及时对手部进行消毒。</p>\r\n<p><span style=\"color: #ff6600;\"><strong>√ 冷冻食品可以吃，无需太紧张</strong></span></p>\r\n<p>冷冻食品被检出新冠病毒阳性，是不是就意味着吃了就会被传染？非也。</p>\r\n<p>到目前为止，还没有明确的证据表明新冠病毒会“食物传人”。新冠病毒只会感染活体生物，不会在已经死亡的食材内进行病毒复制。</p>\r\n<p>核酸检测阳性，只是说明冷冻食品上有新冠病毒，至于病毒是不是活的、病毒有多少、能不能引发感染还无法验出，需要用其他手段进行检验。再说，相关部门为了保证人民群众的健康和安全，都会及时封存并销毁这些被污染的冷冻食品，同时会对外通报。</p>\r\n<p>因此，对广大民众而言，拥有正确的防疫意识十分重要，但也不必杜绝所有的冷冻食品。</p>\r\n<p><img class=\"aligncenter size-full wp-image-161222\" title=\"2\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-02-1415054.jpeg\" alt=\"\" width=\"350\" height=\"262\"></p>\r\n<p><strong><span style=\"color: #ff6600;\">√ 消灭病毒的最佳方法：高温和勤洗手</span></strong></p>\r\n<p>不仅仅是新冠病毒外，世界上许多病毒都是怕热不怕冷的，所以高温加热是非常有效的消毒手段。大家如果担心买到有可能被病毒污染的冷冻食品，只需在烹饪时把肉烧熟烧透，就能最大程度地避免病毒感染。</p>\r\n<p>另外提醒大家，在处理生食和冷冻食品时最好采用以下方法进行处理：</p>\r\n<p>1.把食材带回家后，应先用医用酒精对它的外包装表面进行消毒。</p>\r\n<p>2.食材必须经过高温煮熟，以免寄生虫和细菌侵袭人体。</p>\r\n<p>3.烹饪时要把生熟食物分开存放，防止发生交叉感染。</p>\r\n<p>4.食材处理完毕后，要认真洗手。</p>\r\n<p><img class=\"size-full wp-image-161288 aligncenter\" title=\"421145358\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-04-11063832-e1612408220873.jpeg\" alt=\"\" width=\"350\" height=\"291\"></p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '2', null, '1');
INSERT INTO `info` VALUES ('23', '不懂就问•2021年，新规向钱袋子“动手”了', '<div class=\"entry group\">\r\n							<p>2021年1月1日，《中华人民共和国民法典》正式开始实施啦！关于公民的财产，《民法典》有了很多新规定，很多人对此并不了解。别捉急，快来听听大成律所合伙人冯薇雅律师的专业解答。</p>\r\n<p><img class=\"aligncenter size-full wp-image-161263 cc_cursor\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-03-13490361.jpeg\" alt=\"\" width=\"350\" height=\"200\"></p>\r\n<p>在本期《不懂就问》节目中，冯薇雅律师就“法律是否保护虚拟财产”、“孩子给游戏或直播乱充值怎么办”、“房子70年产权到期怎么办”等三个问题，给大家做了详细解答，赶紧打开视频了解一下吧。</p>\r\n<p style=\"text-align: center;\"><iframe src=\"https://v.qq.com/txp/iframe/player.html?vid=c3215icev7y\" frameborder=\"0\" width=\"500\" height=\"375\"></iframe></p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '2', null, '1');
INSERT INTO `info` VALUES ('24', '不懂就问•2021年，新规向钱袋子“动手”了', '<div class=\"entry group\">\r\n							<p>2021年1月1日，《中华人民共和国民法典》正式开始实施啦！关于公民的财产，《民法典》有了很多新规定，很多人对此并不了解。别捉急，快来听听大成律所合伙人冯薇雅律师的专业解答。</p>\r\n<p><img class=\"aligncenter size-full wp-image-161263 cc_cursor\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/02/2021-02-03-13490361.jpeg\" alt=\"\" width=\"350\" height=\"200\"></p>\r\n<p>在本期《不懂就问》节目中，冯薇雅律师就“法律是否保护虚拟财产”、“孩子给游戏或直播乱充值怎么办”、“房子70年产权到期怎么办”等三个问题，给大家做了详细解答，赶紧打开视频了解一下吧。</p>\r\n<p style=\"text-align: center;\"><iframe src=\"https://v.qq.com/txp/iframe/player.html?vid=c3215icev7y\" frameborder=\"0\" width=\"500\" height=\"375\"></iframe></p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '1', null, '1');
INSERT INTO `info` VALUES ('25', '揭开产后瘦身真相！科普+误区', '<div class=\"entry group\">\r\n							<p>生完宝宝后，很多妈妈都想快速瘦身，回归原本的身材，但很多妈妈都会因此进入误区，这些误区不仅不利于身材恢复还会影响妈妈身体健康，今天就带大家科普一下~</p>\r\n<p><img class=\"aligncenter size-full wp-image-161125 cc_cursor\" title=\"1\" src=\"http://news.ci123.com/uploads/2021/01/2021-01-31-21144191.jpeg\" alt=\"\" width=\"350\" height=\"262\"></p>\r\n<p><span style=\"color: #993300;\"><strong>产后瘦身的四个误区</strong></span></p>\r\n<p><strong>1.不吃肥肉</strong></p>\r\n<p>肥肉脂肪含量高，妈妈担心吃多了会胖。所以就不愿意吃肉类食物。在人体催化作用下，蛋氨基酸分解成的半胱氨酸也是动脉硬化重要因素之一。而瘦肉的中蛋氨基酸含量较高。因此妈妈在产后恢复期间应注意营养均衡，荤素搭配，决不能杜绝肉类。</p>\r\n<p><strong>2.出汗越多瘦身越快</strong></p>\r\n<p>很多妈妈认为出汗越多瘦身也就越快。这是错误的。研究显示，妈妈在运动时流出的汗只是水、矿物质和盐分，并不是脂肪。运动时出汗的多少与消耗脂肪没有多大关系。所以妈妈每次运动时首先消耗的是体内葡萄糖，然后才是脂肪。</p>\r\n<p><strong>3.不吃饭饿肚子</strong></p>\r\n<p>不少妈妈认为饿肚子可以减肥，其实这个观点是错误的。节食两周，体重可能会迅速下降，但人体调节系统会对节食所导致能量短缺做出反应，通过降低细胞代谢率减少能量的消耗。妈妈吃的少，身体会做出相应调节以保证能量供给，因此千万不要通过饿肚子来瘦身。</p>\r\n<p><strong>4.吃减肥药</strong></p>\r\n<p>吃减肥药瘦身也是不可取的。长时间服用减肥药不仅会对脾胃造成损伤，同时还会造成身体机能紊乱，影响身心健康，此外也会影响到奶水，直接影响到宝宝的健康。</p>\r\n<p><span style=\"color: #993300;\"><strong>妈妈怎么正确瘦身</strong></span></p>\r\n<p><strong>1.适当进行瘦身运动</strong></p>\r\n<p>运动能很好的帮助妈妈瘦身。在决定运动前，妈妈应先咨询医生意见。中等强度的运动不会影响妈妈正常的哺乳，同时还能保持瘦身效果。</p>\r\n<p><strong>2.合理调整饮食</strong></p>\r\n<p>妈妈想要尽快瘦身，应保持合理调整饮食，荤素搭配，多吃新鲜蔬果。</p>\r\n<p><strong>3.把握好瘦身进度</strong></p>\r\n<p>妈妈需要给娃哺乳，每周减两斤是相对安全的，也不会对宝宝成长造成负面影响。如果是奶粉喂养，每周减去2-4斤比较合适。</p>\r\n<p>此外，妈妈想要瘦身，最好是选择在宝宝出生2-3个月的时候，以免对哺乳造成不良影响。</p>\r\n\r\n							<p>\r\n														</p>\r\n\r\n							<p class=\"tips mgt10\">(原创作品，版权所有。未经授权，不得转载！)</p>							</div>', '5', null, '1');

-- ----------------------------
-- Table structure for infocata
-- ----------------------------
DROP TABLE IF EXISTS `infocata`;
CREATE TABLE `infocata` (
  `icid` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` varchar(30) DEFAULT NULL,
  `avator` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`icid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of infocata
-- ----------------------------
INSERT INTO `infocata` VALUES ('1', '报告解读', null);
INSERT INTO `infocata` VALUES ('2', '业界快讯', null);
INSERT INTO `infocata` VALUES ('3', '儿童健康', null);
INSERT INTO `infocata` VALUES ('4', '早期教育', null);
INSERT INTO `infocata` VALUES ('5', '育儿知识', null);

-- ----------------------------
-- Table structure for kcata
-- ----------------------------
DROP TABLE IF EXISTS `kcata`;
CREATE TABLE `kcata` (
  `kcid` int(11) NOT NULL AUTO_INCREMENT,
  `kname` varchar(50) NOT NULL,
  PRIMARY KEY (`kcid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of kcata
-- ----------------------------
INSERT INTO `kcata` VALUES ('0', '准备怀孕');
INSERT INTO `kcata` VALUES ('1', '怀孕期');
INSERT INTO `kcata` VALUES ('2', '分娩必读');
INSERT INTO `kcata` VALUES ('3', '婴幼儿期');
INSERT INTO `kcata` VALUES ('4', '幼儿期');

-- ----------------------------
-- Table structure for konwledge
-- ----------------------------
DROP TABLE IF EXISTS `konwledge`;
CREATE TABLE `konwledge` (
  `kid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `createtime` varchar(20) DEFAULT NULL,
  `price` double DEFAULT 0,
  `isfree` int(2) DEFAULT 1,
  `cata` int(10) DEFAULT NULL,
  `useraccount` int(11) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`kid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of konwledge
-- ----------------------------
INSERT INTO `konwledge` VALUES ('1', '人工智能系统可以帮助更好地选择胚胎进行植入', '<p>对于怀孕困难的人来说，体外受精（IVF）可以提供一个改变生活的解决方案。但是试管受精的平均成功率只有30%左右。布里格姆妇女医院和马萨诸塞州总医院的研究人员正在开发一种人工智能系统，目的是帮助胚胎学家客观地选择最有可能导致健康出生的胚胎，从而提高试管受精成功率。该团队利用数千个胚胎图像样本和深度学习人工智能（AI）开发了一个系统，能够区分和识别出具有最高成功潜力的胚胎，明显优于来自美国五个不同生育中心的15名经验丰富的胚胎学家。他们的研究结果发表在eLife上。</p><p><strong>人工智能系统将有利于临床胚胎学家和患者</strong></p><p>通讯作者哈迪·沙菲（Hadi Shafiee）博士是布里格姆医学工程部的博士，他说：“我们相信这些系统将有利于临床胚胎学家和患者。该领域的一个主要挑战是决定体外受精过程中需要移植的胚胎。我们的系统在改善临床决策和获得护理方面具有巨大潜力。”</p><p>目前，胚胎学家可以使用的工具是有限的和昂贵的，大多数胚胎学家必须依靠他们的观察技能和专业知识。沙菲和他的同事正在开发一种辅助工具，可以评估传统上在生育中心使用的显微镜拍摄的图像。</p><p>“每一个体外受精周期对我们的病人来说都有太多的危险。胚胎学家会做出许多关键的决定，这些决定会影响患者周期的成功。在我们的人工智能系统的帮助下，胚胎学家将能够比以往任何时候都能更好地选择出能够成功怀孕的胚胎，”MGH体外受精实验室主任、博士、联合首席作者查尔斯·鲍曼（Charles Bormann）说。</p><p><strong>人工智能系统在选择最优质胚胎方面的准确率为90%</strong></p><p>研究小组利用人工授精后113小时捕获的胚胎图像训练人工智能系统。在742个胚胎中，人工智能系统在选择最优质胚胎方面的准确率为90%。研究人员进一步评估了人工智能系统区分人类染色体数量正常的高质量胚胎的能力，并将该系统的性能与训练有素的胚胎学家进行了比较。该系统的准确率约为75%，而胚胎学家的平均准确率为67%。</p><p>作者注意到，在目前阶段，这个系统只打算作为胚胎学家在胚胎选择过程中作出判断的辅助工具。</p><p>“我们的方法显示了人工智能系统的潜力，可以用来帮助胚胎学家选择具有最高植入潜力的胚胎，特别是在高质量的胚胎中，”联合首席作者之一Manoj Kumar Kanakasabathy说。</p>', '2021/2/14', '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('2', '高龄怀孕你要注意这些问题！', '  <p>&emsp;&emsp;随着生活和工作压力的增大，很多夫妻在婚后并没有着急要宝宝，而是一切以工作为中心。众所周知，女性最佳怀孕年龄是在24-30岁，如果超过了这个阶段，就属于高龄女性，不容易怀孕。那么，高龄女性如何快速怀孕？怀孕后应该注意哪些问题？下面我们共同了解一下相关知识。</p>\r\n<p>&emsp;<strong>&emsp;一、高龄女性快速怀孕的小秘诀</strong></p>\r\n<p>&emsp;&emsp;1.养成并保持良好的习惯。高龄女性想要快速怀孕，要养成并保持良好的生活习惯。高龄女性身体素质本身就处于劣势，如果在生活中还有吸烟、喝酒、熬夜等坏习惯，势必对成功受孕产生不利影响。此外，如果高龄孕妇生活习惯不好，也会导致胎儿智力发育畸形。</p>\r\n<p>&emsp;&emsp;2.备孕前做好体检。不论处在什么年龄，都要注重孕前检查，高龄女性也是如此。备孕前做好体检，能够极有效的降低宝宝先天性缺陷发生的几率。</p>\r\n<p>&emsp;&emsp;3.调整饮食结构。高龄女性想要快速怀孕，要及时调整饮食结构。不仅在日常生活中要远离寒性食物与含盐类较高的食物，而且要补充足够的叶酸。因为叶酸能够避免孕期贫血症的发生，促进胎儿更好的发育，常见的含叶酸较多的食物有鸡蛋、木瓜、蔬菜等。除此之外，高龄女性还可以多吃一些富含蛋白质较多的食物，也是有利于怀孕的。</p>\r\n<p>&emsp;&emsp;4.保养好身体。很多女性有月经不调的问题，它对成功受孕有极大影响。如果高龄女性有此情况，要调理好身体，解决这一问题后再受孕。</p>\r\n<p>&emsp;<strong>&emsp;二、高龄孕妇应该注意的问题</strong></p>\r\n<p>&emsp;&emsp;1.作息时间要规律。高龄孕妇要保证自己具有充足的睡眠时间，一般来说，晚上休息时间要八到九个小时，中午也可以适当的休息一会。这样才能提高高龄孕妇的免疫力，促进胎儿正常发育。</p>\r\n<p>&emsp;&emsp;2.注重孕检。孕检对高龄孕妇极为重要，不能忽视了这一环节。在怀孕16-20周内，高龄孕妇要做唐氏筛查；在怀孕20周以后，高龄孕妇要做羊水穿刺检查。此外，高龄孕妇可以将每次的检查结果绘制成表格，以此观察胎儿的发育情况。</p>\r\n<p>&emsp;&emsp;3.注重日常饮食。高龄孕妇要结合自己的身体状况，注重日常饮食。例如，如果年龄较大，不能吃猕猴桃和高糖高脂食品；孕前要补充足够的叶酸，如果孕前没有这样做，那么在怀孕后要继续补充。</p>\r\n<p>&emsp;&emsp;总之，高龄女性不容易怀孕，怀孕后要注意的事情更多,准妈妈们一定要多加留意。</p>', '2021/2/14', '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('4', '警惕！高龄女性“造人”需注意以下方面', ' <p>&emsp;&emsp;怀孕生子，适龄孕妈尚且辛苦，更不要说高龄女性了。她们不仅要忍受孕期的辛苦，还要担心宝宝是否健康。如果女性超过35岁生育，下面这些知识你必须要知道。</p>\r\n<p>&emsp;&emsp;<strong>一、高龄女性生育所面临的四个风险</strong></p>\r\n<p>&emsp;&emsp;1.胎儿畸形</p>\r\n<p>&emsp;&emsp;女性朋友年龄大，身体各项机能正在逐步下降中，卵子质量也随之降低，如果疾病侵袭，卵子质量就会大打折扣，就算与精子相结合着床，也会增加胎儿畸形几率，生下智力低下的孩子。</p>\r\n<p>&emsp;&emsp;2.容易流产</p>\r\n<p>&emsp;&emsp;高龄女性在怀孕后，子宫状况可能满足不了胎儿发育需求。相比适龄女性而言，高龄女性更容易发生流产。</p>\r\n<p>&emsp;&emsp;3.产后难以恢复</p>\r\n<p>&emsp;&emsp;高龄产妇大多会选择剖腹产，但伤口恢复过程比较长，如果出现感染情况，那只会拖延恢复时间，而且年龄越大，恢复速度也会越慢。</p>\r\n<p>&emsp;&emsp;4.容易难产</p>\r\n<p>&emsp;&emsp;由于年龄大，孕妈盆骨已经基本定型，关节也很僵硬，不容易扩张，阴道收缩也不是很灵活，这就容易造成难产的情况。</p>\r\n<p>&emsp;&emsp;<strong>二、高龄女性怎么科学备孕呢</strong></p>\r\n<p>&emsp;&emsp;1.改变不良的生活习惯</p>\r\n<p>&emsp;&emsp;备孕前，改变不良的生活习惯，戒烟酒，不熬夜。烟酒会造成胎儿畸形，影响女性受孕。</p>\r\n<p>&emsp;&emsp;2.保持心情愉快</p>\r\n<p>&emsp;&emsp;备孕期间女性会给自己很大压力，这样反而更不利于受孕。女性朋友备孕期间，要保持心情愉快，睡眠充足，给自己创造好的环境，这样更容易提高受孕几率。</p>\r\n<p>&emsp;&emsp;3.备孕前做检查</p>\r\n<p>&emsp;&emsp;备孕前最好先去医院做个详细检查，看看身体情况是否有异常，如果有最好先治疗，等到治愈后将身体调整到最佳状态，这样更容易受孕。丈夫也要一起检查哦。</p>\r\n<p>&emsp;&emsp;4.及时补充叶酸</p>\r\n<p>&emsp;&emsp;想要备孕成功，女性朋友需要及时补充叶酸，这能避免孕妈在孕期出现贫血情况。在日常生活中，孕妈也可以多吃绿色蔬菜，或者在医生指导下服用叶酸片。</p>\r\n<p>&emsp;&emsp;高龄女性想要孕期分娩更加顺利，则必须做好前期检查准备工作，杜绝不良的生活习惯，将身体调整到最佳状态，多运动。这不仅能增加受孕几率，同时也能减少生产风险。如果女性朋友条件允许，最好还是在适龄期怀孕。</p>', '2021/2/14', '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('5', '造人早知道 孕期检查都问啥？', ' <p align=\"center\"><img border=\"0\" hspace=\"0\" alt=\"\" align=\"baseline\" src=\"http://www.ci123.com/upload/images/00ee812a8a2512a6f009ffead02d48ff.jpg\"></p>\r\n<p>&emsp;&emsp;你和另一半是否正在考虑创造一个新生命，以丰富人生，完善家庭的组成呢？研究表明，怀孕之前进行身体检查可以增加受孕成功的几率。那么在进行产前检查时，医生会问哪些问题呢？本文将就此作具体介绍。</p>\r\n<p>&emsp;&emsp;如果你正在计划完善一个家庭，一般会建议夫妻两个人去做一个产前检查。在进行产前检查期间，医生可能会向你们了解生活习惯、生活方式、健康状况以及某些可能会影响受孕几率以及怀孕的潜在危险因素。</p>\r\n<p>&emsp;&emsp;<strong>考虑的因素</strong></p>\r\n<p>&emsp;&emsp;在进行产前健康检查时，医生可能会对以下方面进行咨询：</p>\r\n<p>&emsp;&emsp;避孕，如果目前你正在服用激素类的避孕药，医生可能会给你提供如何转换至非激素影响的状态的相关信息，直到身体的自然例假恢复正常。</p>\r\n<p>&emsp;&emsp;吸烟，吸烟会严重影响到受孕以及怀孕，同时吸烟还会增加早产儿以及低体重儿的出生几率，因此，在决定怀孕之前夫妻两个人一定要戒烟，医生可能还会提供一些戒烟的建议和技巧。</p>\r\n<p>&emsp;&emsp;体重，如果你或是另一半的体重过轻或是过重，那么受孕成功的几率会受到严重的影响，而且宝宝出生时出现复杂的症状的几率也会增加。医生一般会建议怀孕之前最好保持体重正常，合理饮食。</p>\r\n<p>&emsp;&emsp;饮食，饮食对健康受孕的影响是非常大的，医生可能会建议你吃某些食物和补充剂以保证胎儿的健康发育。</p>\r\n<p>&emsp;&emsp;运动，运动是健康生活的一部分，然而过量运动可能会降低受孕率，中等强度的运动可以在最大程度上激发身体的体能。</p>\r\n<p>&emsp;&emsp;酒精，怀孕之前应该尽量减少酒精的摄入，酒精会降低受孕率以及导致胎儿畸形等。</p>\r\n<p>&emsp;&emsp;药物，夫妻俩需要把目前正在服用的药物告诉医生，不管是处方还是非处方药，以确定所服用药物对受孕是否有影响。</p>\r\n<p>&emsp;&emsp;疫苗，医生需要确定最近需要接种疫苗的时间，因为很多种疫苗在怀孕期间是不能注射的。</p>\r\n<p>&emsp;&emsp;家族病史，在进行检查时，医生还会询问你们的家族病史包括是否有基因遗传病以及其他的可能会影响健康受孕的因素。</p>\r\n<p>&emsp;&emsp;<strong>产前检查增加受孕成功几率</strong></p>\r\n<p>&emsp;&emsp;研究表明，进行产前检查可以增加健康受孕的几率。因为一些可能会影响到怀孕的问题已经被提上日程，针对相应的问题，夫妻会做出相应的改变，这就使得夫妻可以在最佳的状态怀孕，开始新的生活。</p>', '2021/2/14', '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('6', '孕前检查为什么要查病毒四项', '<p>&emsp;&emsp;一般孕妇在怀孕后都会做这个检查。虽然孕妇感染大多无典型症状，但胎儿感染后常可发生严重后遗症口孕前进行这几种病原体的检查，确认自己的免疫状态。</p>\r\n<p>&emsp;&emsp;TORCH一词是美国学者Nahrnias等于1971年将数种孕妇患病后将引起子宫内胚胎（胎儿）感染引发流产、甚至造成先天缺陷或发育异常的病原体英文名词的第一个字母组合而成。它包括弓形虫(Toxoplasma，TOX)、风疹病毒(Rubellavirus，RV)、巨细胞病毒(Cytomegatovirus，CMV)、单纯疱疹病毒(Herpessimplexvirus，HSV)、O指(Other)其他。Nahmisa在向美国儿科学会提出研究申请时，首先就是采用了这组病原体的首字母缩略词。日本学者片山诚将这四种病原体英文名称的组合，戏称为火炬(TORCH)。实际上英文TORCH一词就是火炬之意，意为它将照亮围生医学的光辉前程。</p>\r\n<p>&emsp;&emsp;TORCH这一组实验对孕妇怀孕前后和产前情况，对胎儿的健康以及其他疾病的诊断具有重要价值。</p>\r\n<p>&emsp;&emsp;目前，医院诊断“TORCH感染的方法主要有下列3种：</p>\r\n<p>&emsp;&emsp;(1)病原体的培养分离：该方法准确性最高，但由于操作复杂、费时较长，现在很少在临床诊断中应用。</p>\r\n<p>&emsp;&emsp;(2)聚合酶链反应(PCR)法：该方法灵敏度高、快速，可赢接检测病原体，但对实验室和试剂的要求比较离，否则易出现假阳性结果。日前政府有关部门正在制定有关PCR实验室和试剂的标准，不久的将来，有条件的医院将会逐步开展PCR的检测。</p>\r\n<p>&emsp;&emsp;(3)酶联免疫法测定血清中抗体：这是目前各医院最为普遍开展的检测“TORCH”感染的方法，其主要测定“TORCH”病原体的特异性抗体，如IgG(IgGAb)和IgM。一般说来，如果IgM阳性，表示孕妇近期可能有“TORCH\\\\\\\"感染（或称原发性感染），有引起胎儿畸形的可能；如果IgG(IgGAb)阳性，往往表示过去有过“TORCH”感染，对胎儿的影响不大口在我国育龄妇女中，大约有90%左右的人群风疹和巨细胞病毒IgG为阳性。</p>\r\n<p>&emsp;&emsp;当然，这是一般的自我判断，最后的结论最好由医生根据临床的表现和实验室的检查结果进行综合分析判断。必要时，如有条件可取胎儿的脐血测定“TORCH”IgM抗体，以确定母亲是否已将病原体传染给胎儿。</p>\r\n<p>&emsp;&emsp;TORCH的结果如何具体分析呢?</p>\r\n<p>&emsp;&emsp;机体具备一定的免疫力，当机体遭受病原体感染时，体内会产生相应的抗体(免疫球蛋白等)来抵抗病原体，以保护机钵功能的正常运转。一般规律是先产生IgM抗体，然后产生IgG(IgGAb)抗体。IgM抗体滴度在达到高峰后很快开始逐渐下降至较低水平，下降后一般不易检出，而IgG(IgGAb)抗体达到高峰后则基本稳定在一个较高的滴度且持续较长时间。</p>\r\n<p>&emsp;&emsp;检查出特异性IgM抗体说明患者近期感染，潜伏的病毒被激活产生复发感染时亦可检出I酬抗体。查出IgG(IgGAb)抗体说明曾经感染过，而且有一定的免疫水平。当患者发生继发感染时，IgM和I西都能较快地上升到较高滴度，其中IgG(IgGAb)上升极其显著（一般可上升4倍以上的水平）o因此，临床上若测出高滴度的fgG(1gGAb)，则意味着再次感染。</p>\r\n<p>&emsp;&emsp;IgA/I(+)、IgG(+)：说明早期感染过体内有抗体；近期复发感染或体内潜伏的病毒被激活，危险性高，应同时采取其他检测方法进一步确诊，若近期感染指标仍旧为阳性或胎儿情况不佳，应终止妊娠。</p>\r\n<p>&emsp;&emsp;Iglbl(+)、IgG（-）：说明是急性期初次感染，危险性极高，临床上少见。处理方法与上相同。</p>\r\n<p>&emsp;&emsp;IgM（-）、IgG(+)；早期感染过，体内有抗体，有一定免疫，在近期感染的危险性低，无须进一步处理。</p>\r\n<p>&emsp;&emsp;IgM（-）、IgG（-）：无感染史，体内无抗体，无免疫力。视为易感人群危险性无，应严格监控，有条件应进行人工免疫。</p>\r\n<p>&emsp;&emsp;在急性弓形虫的免疫学诊断中，特异性IgM抗体的检测是一种重要手段。IgM抗体出现较早（病期7～8天），很快上升到一定的滴度，然后迅速下降到较低的水平，在体内一般可维持数周至数月时间，偶尔也有1年以上的。临床上如果发现高滴度的IgM抗体（阳性）多提示有近期感染，而慢性弓形虫感染则以检测IgG抗体为主。感染弓形虫后，首先出现的是IgM抗体，然后出现IgG(IgGAb)抗体，IgG(IgGAb)抗体常于感染后2～5个月逐渐达到高峰，以后渐渐下降，但可维持较长时间，在此期间若再次感染，IgG(IgGAb)将迅速升高到4倍以上的较高水平。IgG(IgGAb)抗体阳性，则说明曾经感染过弓形虫，且有一定免疫力。若检测出极高滴度的IgG(IgGAb)抗体，则不排除有近期感染的可能。</p>\r\n<p>&emsp;&emsp;据最新统计结果，弓形虫在孕妇中孕妇IgG(IgGAb)阳性率80%以上，急性感染（IgM指标）的阳性率为6.6%～30%，正常人群在0.3%～20%之间。所以，即使检测出IgG(IgGAb)阳性，也不需要过度担心。</p>\r\n<p>&emsp;&emsp;另外可以采用螺旋霉素预防治疗，螺旋霉素是可以预防弓形虫的。磺胺嘧啶和乙胺嘧啶也是治疗弓形虫病的特效药物，但乙胺嘧啶不宜用于3个月内早期孕妇。不过如果孕期感染，若胎儿情况不佳或孕妇治疗后急性感染阳性指标(IgM)未转阴，必须终止妊娠。</p>', '2021/2/14', '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('7', '从避孕到怀孕 不可一蹴而就', ' <p>&emsp;&emsp;避孕对很多人来说都不陌生。从某种程度上来说，避孕是一种负责任的行为。避孕的方式有很多，但是各有利弊，而且避孕的有效期也是不同的，当夫妻两个人准备怀孕时，从避孕到怀孕，需要了解哪些呢？</p>\r\n<p>&emsp;&emsp;一旦你的另一半决定尝试生育，扔掉所有的东西然后开始全力以赴的去为宝宝的到来做准备似乎是很有诱惑力的，然而根据目前你们所采取的避孕方式，有时在开始尝试怀孕之前，耐心的等待也很有必要。</p>\r\n<p>&emsp;&emsp;<strong>安全期法</strong></p>\r\n<p>&emsp;&emsp;如果以前你一直是通过生理周期法来避孕，那么现在你只需要将时间反过来，集中在排卵期。你可能已经完全的调节好生理周期，因此确定排卵期也是轻而易举的事。</p>\r\n<p>&emsp;&emsp;<strong>避孕套</strong></p>\r\n<p>&emsp;&emsp;由于避孕套对受精没有直接性的影响，它仅是简单的阻止精子的侵入，因此，如果你们正在打算怀孕，只要停止使用就好了。这对于其他屏障性的避孕方法比如隔膜、子宫帽同样适用。</p>\r\n<p>&emsp;&emsp;<strong>联合用药</strong></p>\r\n<p>&emsp;&emsp;由于联合性用药是通过改变身体内受孕激素的水平起到阻止排卵从而避孕的作用，身体一般需要几个月的时间才能恢复到正常的生理周期。因此如果你正在尝试怀孕，一般建议在药物的有效作用期过后再使用其他非侵入形式的避孕方式，直到你的生理周期恢复正常。尽管在药效期过了以后就直接开始怀孕，但在几个月之后再尝试怀孕有助于身体重新合成激素，开始新的生理周期，而且这样也会使受孕成功率提高。</p>\r\n<p>&emsp;<strong>&emsp;微片</strong></p>\r\n<p>&emsp;&emsp;微片里面仅含有一种合成的孕酮，而不含雌激素，因此在生理周期中间停止服用这种药，然后直接开始受孕是可以接受的。但是，一般建议在恢复到正常的生理周期后再怀孕，这可以使受孕成功几率提升。</p>\r\n<p>&emsp;&emsp;<strong>安宫黄体酮片</strong></p>\r\n<p>&emsp;&emsp;安宫黄体酮的有效时间可以长达12周，在此之后，身体大概需要3到6个月的时间才能重新恢复到平衡，受孕水平才能恢复到正常，而对于有些女性来说，时间可能会更长。因此，一般建议采用其他避孕的方式。</p>\r\n<p>&emsp;&emsp;不管你采用了哪种避孕方式，或是已经开始准备怀孕了，最好先去咨询健康专家，并进行适当的检查，这可以确定你的身体现在是否以最佳的状态备孕。</p>', '2021/2/14', '0', '0', '0', null, null);
INSERT INTO `konwledge` VALUES ('8', '普通B超与彩超有何不同', '<p>　　现在的超声检查除了普通的二维B超与彩超还有三维甚至是四维的彩超，价值一个比一个贵，孕妇到底应该怎样选择呢？</p>\r\n<p>　　普通的B超也就是人们所说的“黑白”超声，医学上称其为二维超声，图像显示的是脏器或结构的二维切面图像，只有医学专业人士才能对其进行观察、诊断。人们所说的彩超，医学上称为彩色多普勒超声，它的图像不仅能显示脏器或结构的切面图像，而且能运用多普勒的原理观察血管血流的情况，例如观察脐带是否绕着胎儿的颈部等。三维或四维超声医学上称为实时三维超声，它包括了二维超声及彩色多普勒超声的功能，而且能对一些脏器或结构通过超声仪器进行图像重建，形成立体的三维图像。一般来说，彩色多普勒超声仪器的分辨率高于普通的“黑白”二维超声仪器。</p>\r\n<p>　　专家建议，一般无高危等因素或其他合并症的孕妇妊娠期做彩色多普勒超声或三维超声，最好选择在孕18~24周，因为这次检查最为重要，若经济能力许可，选择分辨率高的超声仪器检查，对胎儿生长发育的观察效果当然更有帮助。即便如此，三维或四维的超声检查与其他检查一样并非万能，不能代替其他的产前检查方法。</p>', '2021/2/14', '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('9', '孕前检查到底检查些什么', ' <p>&emsp;&emsp;做孕前检查，是为了平安度孕，预约平安保险的孕期生活。下面内容有助于孕前检查项目。</p>\r\n<p>&emsp;&emsp;孕前问诊项目</p>\r\n<p>&emsp;&emsp;(1)年龄、职业、孕次、产次；</p>\r\n<p>&emsp;&emsp;(2)月经情况、末次月经日期；</p>\r\n<p>&emsp;&emsp;(3)结婚日期、配偶的健康情况、是否为近亲结婚；</p>\r\n<p>&emsp;&emsp;(4)双方直系亲属中有无患遗传病、高血压或糖尿病的患者；</p>\r\n<p>&emsp;&emsp;(5)是否生过畸胎；</p>\r\n<p>&emsp;&emsp;(6)有没有过药物过敏史；</p>\r\n<p>&emsp;&emsp;(7)有没有难产史或流产史；</p>\r\n<p>&emsp;&emsp;(8)本次妊娠的经过、有没有妊娠反应及反应程度；</p>\r\n<p>&emsp;&emsp;(9)是否患过病毒性流感或出过风疹，曾经服用了什么药物；</p>\r\n<p>&emsp;&emsp;(10)是否接触过有毒有害气体；</p>\r\n<p>&emsp;&emsp;(11)有没有阴道出血、头昏、心悸、下肢水肿等情况；</p>\r\n<p>&emsp;&emsp;(12)是否曾经患过传染病、心脏病、高血压、肝肾病等。</p>\r\n<p>&emsp;&emsp;对于医生询问的任何情况，孕妈妈都应当一一如实、详细回答。因为医生会根据这些情况对胎儿及母体在妊娠期的健康做出必要的卫生指导。</p>\r\n<p>&emsp;&emsp;必查项目</p>\r\n<p>&emsp;&emsp;这里对常用的检查项目概略介绍：</p>\r\n<p>&emsp;&emsp;妊娠尿检适宜在停经20～30天后，一般当时可拿结果。妊娠尿样呈阳性，依此确定妊娠。</p>\r\n<p>&emsp;&emsp;围产保健检查随时了解孕妈妈的健康状况和胎儿的生长发育状况。</p>\r\n<p>&emsp;&emsp;检查内容包括量体重、测血压、量宫高、测腹围、听胎心。</p>\r\n<p>&emsp;&emsp;天性愚型（唐氏综合征）筛查唐氏综合征产前筛查是用一种经济简便、对胎儿无损伤性的检测方法。</p>\r\n<p>&emsp;&emsp;超声波检查筛查胎儿、胎数、胎位、胎盘及脐带，羊水的异常，观察胎儿的胎动情况。检查时间：18～24周时做第一次，妊娠8个月和临产前各进行一次，有彩色超声波和黑白色超声波之别。通过它可以看到胎儿的躯体、胎心跳动，胎盘等。</p>\r\n<p>&emsp;&emsp;妈咪小助手</p>\r\n<p>&emsp;&emsp;第一次产前检查，应当在确认自己已经怀孕的时候进行。医生一般建议在孕期第12周时到医院报到，建立保健卡。因为通常怀孕的前3个月是比较危险的时期，过了这段时期以后，孕妈妈的情况就会相对稳定，可以开始按医生指导和要求做有规律的检查。</p>\r\n              ', '2021/2/14', '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('10', '生娃前的检查 请一定对号入座', '<p align=\"center\"><img border=\"0\" hspace=\"0\" alt=\"\" align=\"baseline\" src=\"http://www.ci123.com/upload/images/b31ec052a1fd30c0154fc9c5b891843a.jpg\"></p>\r\n<p>&emsp;&emsp;很多夫妻都相信自己很健康，也就不把孕前检查当一回事，有些是为了应付去检查一下，有些则是根本就不参加，却不知道正是自己的这种不在乎的态度往往导致了日后的痛苦结局。而这给家庭和孩子都带来了很严重的伤害，后悔都来不及。</p>\r\n<p>&emsp;&emsp;<strong>1.白领一族亚健康状态</strong></p>\r\n<p>&emsp;&emsp;对于生活在较高级别的白领一族来说，他们的工作节奏明显要比普通人快，他们所承受的工作压力也就大了很多，他们通常都因为工作的原因而缺乏运动，他们可能常年处在亚健康状态之下。正是因为如此，白领一族在结婚之后的备孕期内除了改善自己的生活习惯和亚健康的身体之外，还必须要就自己长时间坐着而可能导致的妇科炎症或是子宫问题而进行的相关检查，稍不小心就可能给美好孕期带来伤害。</p>\r\n<p>&emsp;&emsp;<strong>2.杨贵型女性孕检重点</strong></p>\r\n<p>&emsp;&emsp;在唐代人们的审美观点是以胖为美，而人们忽略了一点，过多的脂肪堆积会导致身体健康状态下降，可能当时的医学领域也没有发现这一现象，人们就疯狂地追求“肥美人”。现代科学就提醒准备怀孕的女性们，体重过重不止是不利于健康怀孕，还会导致怀孕期内疾病发生的风险率大增，日后生产的风险率也会跟着大增。所以，在怀孕之前偏胖的女性一定要进行孕前检查，排除妊娠高血脂等疾病的发生机率。</p>\r\n<p>&emsp;&emsp;<strong>3.有家族遗传史的女性</strong></p>\r\n<p>&emsp;&emsp;有家族遗传史的女性在怀孕之前一定要做孕前检查，因为这可能效地避免恶性循环的发生。有些女性虽然自己很健康，但是家族中有过相关的遗传疾病，也就不排他隐性遗传的可能性，幸运在自己身上，不幸却有可能发生在自己的孩子身上。因此，为了孩子的健康，一定要进行怀孕之前的优生优育检查。</p>\r\n<p>&emsp;&emsp;<strong>4.针对月经不调的女性</strong></p>\r\n<p>&emsp;&emsp;月经不调是因多种原因所引起的，有些甚至会因此而出现不孕不育，或是怀孕之后的流产。因此，有月经不调的女性在进行孕前检查时，一定要跟医生实话实话，并且进行卵巢功能性检查、染色体、垂体等系列的检查，排除相关的有可能导致胎儿发育异常的可能性问题。很多女性对自己月经不调根本就不在意，直到好孕气迟迟不来才意识到问题的严重性。月经不调需要及早重视并进行调整，不然好“孕”气会越走越远。</p>', '2021/2/14', '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('11', '四类女性怀孕前，请先做个检查', '生孩子是一件艰巨又伟大的事情。妈妈的身体健康直接关系着宝宝是否健康，所以在备孕期间一定要仔细做好孕前体检，确保身体没有问题，这不仅是对自己的负责，更是对宝宝的负责。\r\n\r\n  有很多女性在备孕时不注重孕前体检，总觉得自己身体没问题，根本不把体检当回事。其实我们的身体很有可能存在某些健康隐患，但我们平常感觉不出来，如果不进行体检就怀孕，很有可能你的这些隐患将来就会成为宝宝的大患，所以孕前体检一定要做，而且要仔细认真地做。\r\n\r\n  专家建议每个女性都应该做孕前体检，其中以下四类女性要更加注意：\r\n\r\n  1.月经不调的女性\r\n\r\n  月经不调相信是很多女性都经历过的，导致月经不调的原因有很多，比如生活压力大、情绪波动大、内分泌失调等等，有些因素甚至会导致不孕不育或者流产。所以月经不调的女性一定要做好孕前体检，必要时还要做卵巢功能性检查、染色体检查等，排除一切可能影响到胎儿的问题，确保不会影响到胎儿的发育。如果发现自己月经不调，一定要尽早治疗，不能等到要怀孕了才开始紧张。\r\n\r\n  2.身材偏胖型女性\r\n\r\n  当今社会女性的话题很多，但永远离不开一个，那就是“减肥”。减肥不仅仅是为了身材苗条，也是为了健康。肥胖所带来的危害相信很多人都知道，同样，肥胖不但会影响怀孕，还会大大增加怀孕期间患病的风险，分娩时发生危险的概率也大大增加。为了安全考虑，体形偏胖的女性在准备怀孕前要去医院做孕前体检，排查妊娠高血脂等疾病。\r\n\r\n  3.亚健康状态女性\r\n\r\n  现在工作压力大，生活节奏变快，很多白领很多时候缺的不是金钱，而是时间。她们通常忙于工作，疏于对自己身体健康的打理，而且长时间久坐在办公室，长期缺乏运动，很容易导致妇科炎症或者其他子宫问题。白领一族通常都处于亚健康状态，她们的身体多多少少会有一些问题，在怀孕前做好体检能够帮助筛查健康问题，给健康的宝宝多一层保障。\r\n\r\n  4.有家族遗传史的\r\n\r\n  有家族遗传史的女性在备孕前一定要进行体检，千万不能大意，不要以为自己没患病就能松口气了，有些疾病即使自己不患病，也不能表示孩子也一定不患病。', '2021/2/14', '10', '0', '0', null, null);
INSERT INTO `konwledge` VALUES ('12', '孕酮对孩子日后成长发育的影响', '每一次怀孕都要靠孕酮。孕酮是促成极小胚胎与子宫壁结合过程中的一个最重要条件。孕酮帮助胚胎卵形成胎盘，它将为胎儿提供9个月的营养。自然孕酮，即内源性孕酮（生成于你自己的身体），产生于卵子萌出的卵巢——黄体。大约在怀孕第4周以后，卵巢和黄体的分泌功能开始被胎盘取代，以便保证妊娠正常进行。逐渐地，胎儿的胎盘产生出足量的孕酮，接替卵巢保证妊娠对孕酮的需要。理论上，妊娠到了第8周，胎盘产生的孕酮量已经使作为分泌激素的器官卵巢的作用显得不那么重要了。\r\n\r\n　　历史上，医生给孕妇服外源性孕酮（来源我们体外的孕酮），其原因有两个：\r\n\r\n　　(1)避免“早孕流产”；\r\n\r\n　　(2)维持种植捐献卵子的正常生长环境，这是近些年才普遍实行的情况。服孕酮避免流产已经是过时的做法了。可是医生习惯了给接受卵子种植的孕妇在其妊娠前8周到前16周期间服用孕酮，以“帮助怀孕成功”。接受卵子的孕妇在妊娠早期要完全依靠外源性孕酮以保证胎儿正常的生存环境，因为这类孕妇的卵巢没有黄体可分泌这种激素。（是卵子捐献人——不是卵子接受人——排卵并产生黄体。）\r\n\r\n　　卵子接受人使用外源性孕酮的好处是显而易见的，因为这种妊娠用孕酮的目的是使怀孕成功。但是这种妊娠需要用多少孕酮最合适——能用多长时间？医生对第二个问题的回答可谓仁者见仁，智者见智。一些医生开具的孕酮用药为10周，另一些为12周，还有一些为16周。\r\n\r\n　　12周的孕酮治疗比较合理（与16周相比）。到那时胎盘已经发挥作用了。服用8周的孕酮就可以停药。孕酮（作为治疗药物）在第8周之后就没有什么作用了。艾伦·基拉姆医生根据正常妊娠生理激素变化规律表达了他的看法，他认为一般怀孕8周以后，黄体不再分泌胚胎赖以生存的大多数激素了。\r\n\r\n　　“第8周以后，如果你把卵巢切除，胎儿照样生长。”基拉姆说，“我认为12周后再给孕酮是没必要的。”按照基拉姆的观点，妊娠早期是需要孕酮的，但在妊娠后期，你将分泌出足够的孕酮，如这时还服用孕酮那就肯定超量了。\r\n\r\n　　然而，许多医生，为了保险起见，会建议卵子接受人服用12~16周的孕酮。他们的理由也是可以理解的：高技术培育的婴儿来之不易（造价还很高），所以医生会想尽一切办法保证这类妊娠的成功。\r\n\r\n　　问题是，我们要考虑药物对胎儿的副作用，所以我们不禁要问，这种做法真的保险吗？这个问题之所以当作一个非常重要的问题提出来，是因为每年我们都有成千上万的妊娠妇女——那些有排卵功能障碍的妇女，那些怕流产的妇女，还有那些通过高技术手段才怀上孕的妇女——在服用这种外源性孕酮。\r\n\r\n　　因为绝大多数的孕酮的成分符合“自然形态”，所以许多医生认为这类激素药物是安全的。马克·苏尔医生就在他的哥伦比亚大学校医院使用孕酮，他认为孕酮的副作用很少：“你在她们怀孕的前12周到14周期间给她们补充她们孕酮的不足。你的身体产生那么多的孕酮，它可以使你给的激素失去效力。我们使用是微小的阴道胶栓，几乎没有什么副作用。孕酮可以直接进入盆腔血管：能被直接吸收。”医学遗传和儿科教授，母亲风险项目负责人吉迪翁·科伦也认为孕酮是安全的，因为20年来他还没遇到过孕酮导致儿童不正常发育的情况。\r\n\r\n　　但同时也有人不同意这种观点。有些生物学家和毒理学家专门研究孕酮对“生长的组织”——胎儿——的影响。安德森癌症研究所医务部研究型科学家、实验妇科一内分泌科主任洛弗尔·琼斯医生对子宫内胎儿在外源性孕酮作用下的安全性充满了担心。中期，琼斯从小鼠胎儿对小剂量药物作用的反应的实验研究中发现，孕鼠服用孕酮可引起婴鼠生殖系统异常。因此，琼斯认为，在给怀孕妇女服用孕酮之前应该对此课题做进一步的研究。\r\n\r\n　　问题又一次回到了孕酮给人带来的是好处还是危险上来了。药物给卵子接受人带来的好处显而易见，没有孕酮就没有孩子。但是使用孕酮对其他情况——黄体功能减退和早期流产——是否也有积极的作用？对这个问题的分歧是很大的。\r\n\r\n　　虽然有确凿的证据说明孕酮对受捐卵子妊娠有养育作用，但孕酮对黄体功能减退及早期流产是否也有治疗作用目前还不清楚。因此，使用孕酮治疗这两种病情的效果仍存在争议。\r\n\r\n　　20世纪70年代进行的一项前瞻性双盲随机试验（最可靠的临床实验方法）显示，孕酮不能防止流产，这是艾伦·基拉姆的结论。在20世纪60年代，人们普遍认为孕酮有预防流产的作用。研究结果大有可为——直到实验允许使用安慰剂。当安慰剂用来进行随机双盲实验研究时，却显示孕酮并无此功效。到了20世纪70年代，孕酮治疗流产已被禁用。\r\n\r\n　　根据默里·恩金医生和他的合著人出版的《妊娠和分娩护理指南》（第二版）的观点，几项对早期妊娠使用孕酮的随机研究表明，找不到能够说明孕酮可以减少有阴道出血或习惯性流产情况妇女出现流产、死胎、新生儿死亡等危险性的任何证据。然而，这些研究还没能做到可以排除两个作用之中一个的程度（增加或减少流产）。\r\n\r\n　　一些医生还相信孕酮能够预防流产，所以继续给孕妇开这种药物。对于如何治疗黄体功能减退，基拉姆说：“医学界的观点是各不相同的。”50%的产科医生甚至不承认有黄体功能减退的存在，他们认为，即使这种情况存在，也不过是一种被夸大其词说法罢了。\r\n\r\n　　其他医生不同意这种观点。他们认为，流产的大多数病例说明这是自然淘汰有基因缺陷胎儿的方式，所以不应该用孕酮来阻止它。35岁以上妇女的高流产率的都是由于卵子或受精卵先天基因缺陷造成的——这些病状是孕酮疗法解决不了的。\r\n\r\n　　艾伦·基拉姆认为孕酮偶尔可能有安慰剂的作用。安慰剂起作用的标志就是病人服了药后感到病情“好转”（在本实验中就是保持怀孕），其实她服的那种药和实际能治她的病的药并无关系。安慰剂（一种“糖丸”，没有真正的药物成分）能够改善病情，一方面是因为病人对医生充满信心，另一方面是因为病人有在做医疗的心理暗示。基拉姆医生推断，孕酮预防流产的疗效可能是通过减少紧张程度和增强孕妇信心来达到的。\r\n\r\n　　具有讽刺意味的是，一些怀孕药物会引起黄体功能减退（表现为孕酮水平降低），结果胚胎在子宫里难以种植，从而减少怀孕的机会。“使用体外受精(IVF)药物会发生黄体功能减退病症。”马克·苏尔医生说。他阐释了接受不孕治疗妇女所面临的尴尬处境：治疗不孕的药物使你排卵，但排出的卵子发育不良，不能自动产生孕酮，所以你需要药物帮你补充孕酮。这样一来，为了“治疗”由怀孕药物引起怀孕病状，医生就可能给你开孕酮。科学的争论——会对胎儿造成长期的威胁吗？\r\n\r\n　　我们所得到的好处值得我们冒可能长期存在的风险吗？\r\n\r\n　　目前使用的孕酮药物种类及其药量对于孕妇来说是安全的。他们认为所给的孕酮就是要帮助胎儿得到所需的“自然激素量”，这是孕妇妊娠期间都有的，符合正常情况下孕妇所应达到的生理激素水平的量。\r\n\r\n　　胎儿在出生前所给的孕酮是自然的，却也是外源性的。这会不会引起长期不利的副作用现在无法知晓，因为在孕妇身上做临床药物实验是不道德的。不过，许多医生认为孕酮引起长期副作用不太可能，因为这种药物已经用了几代人，他们还没有发现任何问题。\r\n\r\n　　但从另一个角度讲，撰写本书时所采访的许多发展生物学专家及肿瘤研究人员说，我们目前对这种药物的研究还不够广泛深入，所以我们无法知晓这种药物对生长着的胎儿是否没有危害。这些科学家拿动物实验的研究成果做例子。他们说，自然形态的孕酮在妊娠期间以外源性方式给与怀孕的动物可引起异常；就因为这种激素药物是“天然的”，所以认定它是无害的——这种说法有带商榷。\r\n\r\n　　洛弗尔，琼斯医生认为，孕酮对成人无大碍并不能说明它对脆弱的、生长着的胎儿就是安全的。我们谈论对人无副作用的药物或化合物，但我们必须时刻记住胎儿不是个子小的成人。那些成人服起来安全的药物胎儿接触了就未必也安全。琼斯希望孕妇自己了解这些情况，自己学会理智选择孕期药物。\r\n\r\n　　我们所了解的东西应该让我们更加小心谨慎。动物试验的数据告诉我们，如果你怀孕了，使用对下一代有可能产生有害的影响。这种危险是隐性的。当然这种观点不是结论性的，但这种可能是有的。这是你的选择，它应该是一种清醒的选择。\r\n\r\n　　像霍华德·博恩医生、洛弗尔·琼斯医生和理查德·哈杰克医生这样的研究人员就特别担心胎儿在妊娠前6~9周期间——妊娠的头3个月——接触治疗用的孕酮。科学家们的担心基于动物实验得出的结果，因为到目前还没有拿人来做试验的先例，主要考虑到孕酮随胎儿的影响。然而，接触这种药物的雌性幼鼠——在生长阶段相当于人类6~9个月的胎儿——出生后生殖器官发育不正常。根据哈杰克医生的研究，动物最典型的异常表现有阴道黏膜角化，子宫内膜异位到阴道（这种异常情况也发生在服用了己烯雌酚的妇女生下的女儿身上）o一些研究者担心那些接触过孕酮的胎儿也可能有生殖管道的异常，虽然这些异常在她们成人之前不容易观察得到。\r\n\r\n　　可是许多医生并没有这些担忧，因为他们从未见到曾经用过孕酮的妇女生下的孩子在其青春期或成年期出现生殖器官不正常的病例。还有些医生把这个问题当成解决不了的问题。默里·恩金医生和他著作的合作者在其《妊娠和分娩护理指南》（第三版）中指出，因为这类实验迄今为止没有在人类身上进行过，所以孕酮（孕酮）对婴儿到底是不是安全的还无法知道。虽然对使用过孕酮妇女的随访研究大都是不受控制的而且它们均以轶事形式为主，但研究中提出的一些建议还是值得注意的：受孕酮影响过的胎儿增加心脏、神经、神经轴管患病的概率，还会有其他组织发育不良等病症，还有女胎生殖器男性化以及女孩是个“假小子”等情况。而其他研究没有显示这些不良影响，所以得出孕酮的安全性就像孕酮被认定的好处一样是一个开放性的话题。', '2021/2/14', '20', '0', '0', null, null);
INSERT INTO `konwledge` VALUES ('13', '朴美—孕期营养科学摄取方法论', '<p>　　众所周知，孕期营养对于孕妇而言是十分重要的。孕期营养的摄入不仅仅是为了保证胎儿的健康，更重要的是保证母体在孕期的营养均衡。在生命早期1000天中，分为孕早期、孕中期、孕晚期和乳母期。在这四个阶段中，孩子会不断汲取母体体内的养分，所以，如果这时孕妇不加以注意，那么极易导致自身营养失衡，并造成免疫力低下等问题。</p>\r\n<p>　　根据科学研究，孕妇在各个阶段对营养素的需求量也有所不同。如孕早期，孕妇对叶酸、维生素D、锌这些微量元素有大量的需求，对于维生素A的需求就相对较低；但到了孕中期，孕妇对于维生素B6的需求较高的同时，对维生素A、维生素D和锌需求量也大幅上升。</p>\r\n<p align=\"center\"><img border=\"0\" hspace=\"0\" alt=\"\" align=\"baseline\" src=\"http://www.ci123.com/upload/images/497ab4af10f52d3283d81e632ff23dd5.jpg\"></p>\r\n<p>　　综上所述，孕期的营养摄取需要分段进行。</p>\r\n<p>　　由于所需营养成分过多，食补见效的速度较慢，并且身体所能从中获得的营养是有限的，这时大众就会选择一些孕期的维生素保健品配合食补。但是，现在市面上大多数的保健品都是同样的营养配比一补到底的形式，无法真正的帮助孕妇得到需要的元素。华润紫竹药业就这一问题，经过研究推出了朴美牌多种维生素多种矿物质片，这款保健品针对孕妇的孕早期、孕中期、孕晚期和乳母期四阶段，对微量元素的不同需求，推出了分阶段补充的理念，保证孕妇的营养得到最好的摄取。</p>\r\n<p>　　那么，日常生活中哪些食物能够补充孕妇所需的微量元素呢？</p>\r\n<p>　　维生素A：胡萝卜、菠菜、鱼肝油、青椒、牛奶</p>\r\n<p>　　维生素B1：牛奶、猪肉、牛肉、花生、芹菜、燕麦</p>\r\n<p>　　维生素B6：花生、肌肉、蛋黄、鱼肉、燕麦、马铃薯</p>\r\n<p>　　叶酸：菠菜、香蕉、草莓、小白菜、胡萝卜、有才、花椰菜（又称花菜）</p>\r\n<p>　　维生素C：猕猴桃、番茄、樱桃、柚子、草莓、青椒</p>\r\n<p>　　维生素D：鱼肝油、瘦肉、坚果、海鱼、牛奶、胡萝卜、牛肝</p>\r\n<p>　　钙：骨头、虾皮、牛奶、豆腐、芹菜、大豆、黑木耳</p>\r\n<p>　　铁：菠菜、猪肝、海带、黑木耳、红枣</p>\r\n<p>　　锌：牡蛎、花生、瘦肉、核桃、白菜、苹果、虾皮</p>\r\n<p>　　在孕期，妈妈们相比其他注意事项，更应注意饮食习惯的调整，这样才能为孩子提供营养，让宝宝健健康康的出生。</p>', '2021/2/14', '6', '0', '0', null, null);
INSERT INTO `konwledge` VALUES ('14', '四大经典胎教法 孕妈值得拥有', '<p>&emsp;&emsp;准妈咪一直在不遗余力寻找好的胎教方法，到底有哪些胎教方法能给腹中的宝宝带来帮助呢？除了要有科学有依据外，也要简单易操作才是准妈咪们最喜欢的胎教方法，那些有难度的胎教方法只适合专业人士，下面小编就将收集整理好的几种经典的胎教方法奉献给大家！</p>\r\n<p>&emsp;&emsp;<strong>1.用音乐进行胎教</strong></p>\r\n<p>&emsp;&emsp;愉快的音乐能给胎儿和妈咪带来好的心情，有助于宝宝的生长发育。所以怀孕早期就可以进行音乐胎教，选择舒缓好听的钢琴曲或是专门为宝宝录制的胎教曲，在寂静的黄昏，妈妈和宝宝一起静静地听音乐，感受来自大自然的声音，这是一种多么美妙的感觉，在胎教的同时有助于亲子沟通。宝宝听到自己喜欢的曲子都会表现得很安静，很享受，重复几次后，宝宝能很好地配合妈咪，彼此之间达到默契的程度。</p>\r\n<p>&emsp;&emsp;<strong>2.用抚摸进行胎教</strong></p>\r\n<p>&emsp;&emsp;用手指温柔地抚摸高高凸起的腹部，从一边到另一边，子宫内的宝宝很享受这样子的感觉。通过抚摸能让宝宝感受到来自妈咪的安全感，他们在子宫内会更愉快，更有幸福感，有助于宝宝的生长发育。尤其是在宝宝因受到外界环境而表现出不安或是乱踢的情况下，妈咪及时的抚摸能令他很快安静下来，然后甜甜地入睡。经常抚摸宝宝还有助于宝宝的触觉发育，让他们对外界有所感触。</p>\r\n<p>&emsp;&emsp;<strong>3.用语言进行胎教</strong></p>\r\n<p>&emsp;&emsp;从最初的呢喃私语，到后面的讲故事，用语言对腹中的宝宝进行胎教是一种非常有效可行的胎教方法。比如轻轻地跟宝宝说：“宝宝！我们一起去公园玩！公园里有小花，小草，还有很多小朋友，有些在放风筝，有些在玩秋千等等。”把你所看到的说给宝宝听，让也跟着你的感受去感受到外界的美妙环境。给腹中的宝宝讲故事，许多准妈咪都这么做过，形成习惯后，到了讲故事的时间如果妈咪不讲的话，宝宝就开始在肚子里抗议，有趣极了。</p>\r\n<p>&emsp;&emsp;<strong>4.用艺术进行胎教</strong></p>\r\n<p>&emsp;&emsp;人类天生就有美感，而美感来自于哪儿呢？来自于大脑的脑细胞。有些事情有时说不出所以然来，就像艺术胎教吧！对着美丽的婴儿图片多了，生下来的孩子更漂亮，对着好看的图画看多了，生出来的孩子好像更有美术细胞，这些很神奇，却又不知道怎么解释。所以在进行胎教的时候，不妨也试试艺术胎教吧！去风景优美的地方散散步，看看美丽的鲜美，常常看看可爱的婴儿照片，练习一下书法和绘画，给腹中宝宝一个优雅的环境，培养一个艺术型宝宝。</p>', '2021/2/14', '5', '0', '0', null, null);
INSERT INTO `konwledge` VALUES ('15', '胎教做对了，宝宝更聪明', '<div class=\"info\">\r\n                    <p>  为了让宝宝出生后聪明伶俐，有些爸爸妈妈在孩子还是个胎儿的时候就开始对其进行早教，这就是我们常说的胎教。胎教在当下是非常流行的，很多的爸爸妈妈都尝试这种方法，但是并不是所有的家庭都是成功的。于是那些失败的爸爸妈妈就开始说，“胎教一点用都没有”，其实，胎教还是有用的，只是有时候没有用对方法，当然就无法达到预期的效果。</p>\r\n<p>  在进行胎教之前，爸爸妈妈首先要知道何时才能对胎儿进行早教。专家指出，胎教一般是在16周的时候可以进行。因为胎儿在16周的时候开始产生了触觉以及味觉，然后随着时间的推移，依次的产生了听觉、大脑开始思考的能力。所以爸爸妈妈要知道，胎教最好在16周的时候开始进行，如果过早的对胎儿进行胎教，其实是没有什么作用的。</p>\r\n<p>  其次，到底该采取哪样的胎教方式才会充分的发挥孩子的潜力呢？爸爸妈妈不妨试一下以下这些方法。</p>\r\n<p>  <strong>一、孕妈妈保持平静、稳定的情绪</strong></p>\r\n<p>  孕妈妈在孕期的时候要保持稳定的情绪，这样的方法对胎儿智力的发育是非常好的。不对很多孕妈妈在孕期的时候，脾气会变得有些焦躁，所以一直保持一个稳定的情绪还是比较困难的。孕妈妈可以尝试转移自己的注意力，做一些自己喜欢做的事情，学会控制好自己的情绪。</p>\r\n<p>  准爸爸要做的是，要体谅孕妈妈的不易，不要跟孕妈妈争吵，要体贴妻子。</p>\r\n<p>  <strong>二、放一些音乐</strong></p>\r\n<p>  研究显示，胎儿在3个月的时候就已经开始形成了听力，然后随着月龄的增长，其听力发展越来越成熟，一般到6个月的时候，听力已经基本成熟了。所以爸爸妈妈们可以在这期间内，进行音乐胎教，刺激孩子的智力发育。</p>\r\n<p>  在这期间，孕妈妈可以听一些轻松、舒缓的音乐，不仅可以放松自己的心情，而且对孩子的发育也是非常好的，可谓是一举两得。</p>\r\n<p>  <strong>三、跟胎儿进行谈话</strong></p>\r\n<p>  孕妈妈不要觉得胎儿是听不到自己说什么的，其实孩子是能感觉到外界的刺激。所以孕妈妈不妨多跟孩子进行互动交流，这样也可以拉近母子之间的关系哦！</p>\r\n<p>  因此，爸爸妈妈们只要充分的利用好胎教，让孩子变得聪明也不是特别难的事情哦~</p>\r\n<p>&nbsp;</p>\r\n                </div>', '2021/2/14', '5', '0', '0', null, null);
INSERT INTO `konwledge` VALUES ('16', '莫恐慌！准妈这么做B超很安全', ' <p align=\"center\"><img border=\"0\" hspace=\"0\" alt=\"\" align=\"baseline\" src=\"http://www.ci123.com/upload/images/0acb6e1b153633ae27a3435b94375e1b.jpg\"></p>\r\n<p>&emsp;&emsp;有按时进行产检的孕妇一般都是做过B超检查这一项，但是，有些孕妇担心做B超检查会对胎儿带来一定的危害性，影响胎儿的发育正常和生命健康。那么，B超到底对胎儿有危害吗？孕妇做B超的时候又该注意哪些事项呢？</p>\r\n<p>&emsp;&emsp;B超检查是通过声波来探测到子宫内的胎儿发育情况，可以让孕妇了解到胎儿是否健康，发育是否正常。但B超属于超声检查，有些孕妇担心这一检查项目会对胎儿健康构成影响，因此经常拒绝进行B超检查，从而影响了产检结果的准确性。</p>\r\n<p>&emsp;&emsp;<strong>一、B超对胎儿有危害吗？</strong></p>\r\n<p>&emsp;&emsp;怀孕期间一般需要进行三次B超检查，分别为孕18-30周、孕28-30周、孕37-40周。第一次B超是用于检查了解单胎或是多胎等情况，第二次B超是用于排畸检查，第三次B超是用于临产前的评估。正常情况下，B超对胎儿没有影响。但是，若B超检查进行过早，或者是检查维持时间过长，那么就可能会对胎儿造成一定的伤害，可能会影响到胎儿的大脑正常发育，因此，进行B超检查一定要在医生的指导安排下进行，不要自己随意做B超检查。</p>\r\n<p>&emsp;&emsp;<strong>二、孕妇做B超注意事项</strong></p>\r\n<p>&emsp;&emsp;<strong>1.不随便做B超</strong></p>\r\n<p>&emsp;&emsp;现在很多孕妇为了及早了解胎儿的性别，或者是突然感觉身体有所不适，就要求医生帮自己做B超检查。其实这种做法不可取，私下做B超检查对母婴有一定的伤害性。</p>\r\n<p>&emsp;&emsp;<strong>2.做B超时间不宜太长</strong></p>\r\n<p>&emsp;&emsp;孕妇做B超检查时要注意时间，一般不宜超过20分钟，特别是在孕妇生病发烧的情况下，B超的检查时间就应该更快更短，否则会影响母婴健康。</p>\r\n<p>&emsp;&emsp;<strong>3.B超操作必须正规</strong></p>\r\n<p>&emsp;&emsp;孕妇做B超检查要注意操作是否正规，扫描的探头是不可以长时间停留在同一个位置。</p>\r\n<p>&emsp;&emsp;<strong>4.B超检查前要做了解</strong></p>\r\n<p>&emsp;&emsp;孕妇做B超检查之前要做相关了解，包括是否需要憋尿等注意事项，以免在医院耽误检查时间和增加检查次数，从而对胎儿造成影响。</p>\r\n<p>&emsp;&emsp;<strong>5.不吃胀气食物</strong></p>\r\n<p>&emsp;&emsp;孕妇做B超检查之前不可以吃胀气食物，否则可能会阻碍了超声波的穿透，造成检查到的脏器显像不清楚。</p>\r\n<p>&emsp;&emsp;<strong>6.放松心情</strong></p>\r\n<p>&emsp;&emsp;准妈做检查之前应放松心情，不要过于紧张，要配合医生的检查工作，以免影响了检查结果。</p>\r\n<p>&emsp;&emsp;为了自身以及胎宝宝的健康着想，以上事项各位准妈妈一定要牢记心中。</p>', '2021/2/15', '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('17', '孕吐激烈说明宝宝聪明？没这回事！', ' <p>&emsp;&emsp;怀孕当然是幸福又兴奋，但是准妈妈也要忍受各种孕期不适。其中最让一些准妈妈倍受折磨的就是孕吐。一些孕吐激烈的准妈妈一天饭都吃不了几口，甚至看到食物就想吐。一些老人看到这种现象反而开心：“这说明娃儿聪明啊！忍忍就过去了！”什么？孕吐激烈说明宝宝聪明？别逗我了！</p>\r\n<p>&emsp;&emsp;<strong>孕吐和宝宝的智商无关</strong></p>\r\n<p>&emsp;&emsp;孕吐的激烈程度是受准孕激素影响，没有任何科学上的证据可以证明孕吐越厉害宝宝就越聪明。</p>\r\n<p>&emsp;&emsp;而在孕早期，准妈妈可以均衡摄入营养，宝宝的发育情况会相对良好。当然，这其中也包括宝宝的大脑发育。不过这并不是决定性因素，宝宝的智力发展主要取决于遗传和后天培养。</p>\r\n<p>&emsp;&emsp;<strong>孕吐<strong>严重</strong>的危害</strong></p>\r\n<p>&emsp;&emsp;孕吐严重的准妈妈吃什么吐什么，甚至闻到一些食物的气味，都会引起剧烈的孕吐。几乎每天都表现的没有胃口，食不下咽，严重情况下，甚至会导致厌食，使得准妈妈的身心健康受到不小的影响。</p>\r\n<p>&emsp;&emsp;准妈妈食欲不好，营养摄入不足，胎儿的营养跟不上，包括大脑在内的各个器官发育都会受到影响。而且孕吐过于严重，还会让准妈妈水电解质平衡失调，肝功能受累，甚至引起脱水、酮中毒，如果没有及时诊治将威胁胎儿的生命安全。</p>\r\n<p>&emsp;&emsp;此外，如果准妈妈孕吐特别厉害应该及时就医，有可能是因为妊娠异常，比如怀上葡萄胎。</p>\r\n<p>&emsp;&emsp;<strong>孕吐<strong>严重</strong>怎样缓解？</strong></p>\r\n<p>&emsp;&emsp;1.放松心情多休息</p>\r\n<p>&emsp;&emsp;身体不适，心情也会受到影响。但是如果准妈妈能够调整好心情，每天都心情开朗，减少自己的顾虑，可以一定程度上缓解孕吐。</p>\r\n<p>&emsp;&emsp;除此之外，准妈妈每天还要保证充足的睡眠时间。但千万不要长时间躺在床上，而应经常出去散散步，来促进准妈妈的新陈代谢，提升食欲。</p>\r\n<p>&emsp;&emsp;2.科学饮食</p>\r\n<p>&emsp;&emsp;孕吐严重就不要吃重口味浓食物啦~建议多吃清淡食物，有利于缓解孕吐。当孕吐不那么剧烈时，可以多吃一些营养丰富的食物来增加能量。</p>\r\n<p>&emsp;&emsp;3.躲开难闻的气味</p>\r\n<p>&emsp;&emsp;对于孕吐严重的准妈妈来说，一些味道，比如油烟味、肉味等都可能会让她们的胃里翻江倒海。最好的方法就是尽量躲避这些气味，如果准爸爸喜欢吃这些食物，可能要忌口一段时间了哦~</p>', '2021/2/16', '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('18', '孕期提问：你会这样摸胎BB吗？', '<p>&emsp;&emsp;妈妈有时候看到自己的肚子时，是不是特别的欣慰与喜欢，经常会忍不住抚摸肚子，就像在抚摸孩子一样。但是妈妈知不知道，抚摸孩子也是有很多不同的技巧的吗？下面就跟随小编我来看看吧！</p>\r\n<p>&emsp;&emsp;<strong>1.怀孕三个月左右</strong></p>\r\n<p>&emsp;&emsp;在怀孕三个月左右的时候，肚子中的宝宝就已经有能感受外界的知觉了。所以这个时候宝宝能感觉到爸爸妈妈对他的触摸，你会神奇的发现，慢慢地宝宝会在里面做一些胎动来回应你的问候。</p>\r\n<p>&emsp;&emsp;最简单的动作就是，妈妈把手轻轻地在肚子上来回抚摸，这时候肚子中的宝宝是能感受到的。这种来回抚摸法的主要做法：在妈妈的腹部在一个完全放松或者松弛的状态下，用手轻轻地在肚子上由上而下，从左边往右边来回地抚摸肚子。</p>\r\n<p>&emsp;&emsp;在抚摸肚子的时候，妈妈可以加入自己对宝宝的感情，就像亲手在抚摸宝宝本身一样。这个时候即使隔着一层肚皮，宝宝也能反应到了！</p>\r\n<p>&emsp;&emsp;但是妈妈需要注意的是，每次抚摸的时间不要超过五分钟哦！其次也可以让准爸爸哦把耳朵贴在准妈妈肚子上听声音，宝宝对准爸爸的行为做出回应哦。</p>\r\n<p>&emsp;&emsp;<strong>2.怀孕四个月左右</strong></p>\r\n<p>&emsp;&emsp;在怀孕四个月左右的时候，宝宝对外界的刺激反应越来越剧烈。这个时候妈妈可以不局限于来回抚摸肚子，还可以进行温柔的触压拍打行为，方法如下。</p>\r\n<p>&emsp;&emsp;让妈妈小心地平躺在一个舒适安全的地方，例如沙发、床.......然后让妈妈放松，彻底将腹部完全松弛下来。这个时候妈妈就可以先给腹部做来回抚摸，然后再手指轻柔地按在肚子上，抬起。</p>\r\n<p>&emsp;&emsp;也可以轻轻地做一些拍打地动作，但是一定要注意动作一定要轻柔！其次也要根据宝宝的反应来决定做不做动作，如果宝宝在你的肚子中强烈地蹬腿，或者挣扎就说明他很讨厌这个做法。</p>\r\n<p>&emsp;&emsp;同样的这个动作也有一个时间限制，最多不要超过十分钟。据科学显示，孩子一般在动作发出后5分钟就会有反应，到时妈妈再根据宝宝的反应做决定吧。</p>\r\n<p>&emsp;&emsp;<strong>3.怀孕后期</strong></p>\r\n<p>&emsp;&emsp;由于到了怀孕后期经常摸肚子，就会造成强烈的宫缩，像一些胎动频繁或者有前置胎盘现象的妈妈，就不要经常进行这项动作了，不然严重地会直接引起早产哦。</p>\r\n<p>&emsp;&emsp;怀孕是一件很幸福的事，妈妈们赶紧根据自身的情况来抚摸宝宝，和他进行交流吧。</p>', '2021/2/17', '0', '1', '1', null, null);
INSERT INTO `konwledge` VALUES ('19', '想要怀孕，试试这些招数', ' <p>&emsp;&emsp;很多备孕女性都希望自己能赶快怀上宝宝，但往往事与愿违。她们为了怀孕尝试了各种方法，但效果都不是很理想。其实，有时候提高怀孕几率的方法也是非常简单的，我们一起看看吧！</p>\r\n<p>&emsp;&emsp;<strong>1.备孕前的检查</strong></p>\r\n<p>&emsp;&emsp;很多女性在备孕前都会去医院进行检查，在发现自己有妇科炎症后，会先治疗然后再备孕。其实根本没有必要的，备孕期间有妇科炎症是很正常的，女性朋友没有必要刻意去避孕。</p>\r\n<p>&emsp;&emsp;<strong>2.去医院检查精子质量</strong></p>\r\n<p>&emsp;&emsp;在备孕前带老公去医院检查他的精子质量。在检查之后不要认为万事大吉，老公平常的运动与饮食还是要注意的。多吃富含维生素E的食物，平时多运动，备孕期间别吸烟喝酒，这样精子才会处在有活力的状态下。</p>\r\n<p>&emsp;&emsp;<strong>3.弄清自己的生理周期</strong></p>\r\n<p>&emsp;&emsp;有些女性生理周期都处在不稳定的状态下，所以比较着急，以为自己有什么问题。其实只要自身体温没有升高，那么排卵就不会出现问题的，最好不要随便测激素。</p>\r\n<p>&emsp;&emsp;<strong>4.弄清自己的强阳周期</strong></p>\r\n<p>&emsp;&emsp;不光女性朋友需要了解自己的生理周期，男性朋友也需要了解自己的强阳周期，强阳周期不一样，所以精子质量也会有很大差别。所以建议夫妻在性爱时，最好在丈夫强阳时进行。</p>\r\n<p>&emsp;&emsp;<strong>5.平常多泡泡脚</strong></p>\r\n<p>&emsp;&emsp;有时候多泡脚也能增加受孕机率，如果你的经期一直都比较长，那么建议你试试用艾草或是生姜泡泡脚。注意泡脚时间也要因人而异才行，毕竟每个人的体质不同，承受泡脚时间也大不相同。</p>\r\n<p>&emsp;&emsp;<strong>7.保持放松状态</strong></p>\r\n<p>&emsp;&emsp;很多女性备孕期间会给自己太大的压力，这样是不行的，压力太大反而不容易受孕。备孕期间，女性要保持心情放松；享受生活、放松心情，这样反而更容易受孕。</p>\r\n<p>&emsp;&emsp;每对夫妻都希望自己能早日怀孕，这种心情可以理解，但不能给自己太大的压力。所以备孕夫妻一定要保持心情放松，多锻炼，多吃些含有营养价值的食物，健康快乐的生活才更容易受孕。</p>', '2021/2/18', '0', '1', '1', null, null);
INSERT INTO `konwledge` VALUES ('20', '打造宝宝健康睡眠，这几个误区要避开', '<p>&emsp;&emsp;孕妈们到了孕后期肚子会越来越大，做什么事都不方便了，觉也睡不好了，都希望早点卸货就轻松了。其实你们的想法太简单了，真正的磨难是从宝宝出生后才开始的。就单单是“宝宝睡眠”这一件事，就够宝妈们要好好学习的了。</p>\r\n<p>&emsp;&emsp;对于宝宝的睡眠，新手妈妈们常会有这些误解，快来看看你中招了没？</p>\r\n<p>&emsp;&emsp;<strong>1、宝宝累了就睡了</strong></p>\r\n<p>&emsp;&emsp;宝妈们都会认为宝宝累了自然就会睡觉了，其实宝宝如果特别累的时候是很难入睡的，这就是我们说的“闹觉”。这时是很难哄睡的，虽然闹到最后还是睡着了甚至是哭着睡着的，其实这样的入睡方式是不好的。所以宝妈们平时要注意多观察，一旦发现宝宝有这些情况的时候就说明宝宝已经困了：打打哈欠、揉眼睛、眼睛没神了、挠耳朵、注意力不太集中了，这时宝妈就要立刻及时哄宝宝睡觉了。</p>\r\n<p>&emsp;&emsp;<strong>2、白天不允许睡觉</strong></p>\r\n<p>&emsp;&emsp;很多宝妈都认为给宝宝白天少睡点，到了晚上宝宝就睡的香了。其实这个想法是不对的，白天的睡眠是能帮助宝宝的晚上的睡眠的，白天该睡觉的时候你不让宝宝睡觉，让他玩的很累。那么到了晚上宝宝睡觉的时候容易会睡不踏实的，会做梦易惊醒。白天宝宝不睡觉是不行的，但是不能睡多了，如果睡多了确实会影响到宝宝晚上的睡眠的。</p>\r\n<p>&emsp;&emsp;<strong>3、哭着入睡&nbsp;</strong></p>\r\n<p>&emsp;&emsp;有的宝妈认为宝宝哭累了就会睡的，这种想法是不对的。宝宝小表达能力有限，他哭肯定是有原因的，这个时候宝妈们就要了解宝宝为什么哭。是不是饿了、还是衣服穿的不舒服、被子是不是厚了宝宝热了、是不是渴了、还是有哪里不舒服了，知道为什么哭了才好哄宝宝睡觉。</p>\r\n<p>&emsp;&emsp;<strong>4、大了就能好好睡觉 </strong></p>\r\n<p>&emsp;&emsp;宝宝长大了懂事了，睡的肯定比小宝宝好。但是好的睡眠质量对宝宝的整个生长发育过程是很重要的，所以宝妈要从小就要帮宝宝建立一个好的睡眠习惯，这样才有利于宝宝的身体健康。一个良好的睡眠习惯，可以让宝宝们睡得更好更有质量。</p>\r\n<p>&emsp;&emsp;<strong>5、睡觉不能有动静</strong></p>\r\n<p>&emsp;&emsp;有的有宝宝的家庭，宝宝睡觉的时候就要关掉电视，大人说话走路都要小心，不要发出声响，怕惊醒宝宝。因为只要有一点点小的声音，宝宝都会手脚张开好像要抱一样，感觉是受到了惊吓一样。这时宝妈们不要紧张，这种反应是正常的生理性反应，这时宝妈只需要轻轻的拍拍宝宝，给他一种安全感就可以了。等宝宝大点这个现像就会慢慢消失的。所以我们不主张小宝宝的睡觉环境太安静了，等他习惯安静环境的时候只要有一点声音他就会觉得害怕会受到惊吓的。</p>', null, '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('21', '这几个月子风俗，产妈绝对不能轻信', ' <p>&emsp;&emsp;生完孩子后都会坐月子，为的就是让身体尽快恢复。如果月子没有做好，身体就会有各种后遗症，对健康造成不小的影响。但是月子期间，有些风俗让产妈崩溃，赶紧看看你遇到几个。</p>\r\n<p>&emsp;&emsp;<strong>1.月子期间要减少活动</strong></p>\r\n<p>&emsp;&emsp;传统说法是，生完孩子后，产妈身体比较虚弱，应该多卧床休息，这样身体才会尽快恢复。老人会禁止让产妈下床，减少下床活动次数。事实却是，在身体允许情况下，适当下床运动不仅能促进肠胃蠕动、防止便秘还能促进恶露排出、加快身体恢复。</p>\r\n<p>&emsp;&emsp;生完孩子后，产妈要适当的下床走动。穿上长衣长裤，以免受寒，鞋子最好选择柔软防滑的，孕妈走起路来也会更加舒服。</p>\r\n<p>&emsp;<strong>&emsp;2.月子期间不能刷牙</strong></p>\r\n<p>&emsp;&emsp;孕期，孕妈体内的钙物质流失过多，在分娩后，产妈就会出现牙齿疼痛或是松动的情况，为此，部分产妈选择不刷牙。但是，产妈每天摄入的食物残渣会留在牙齿缝隙当中，如果不刷牙会导致其他牙齿疾病出现，比如牙周炎。因此，为了牙齿健康，产妈还是每天早晚刷牙的好，牙刷牙膏可以选择产妇专用的，用温水漱口即可。</p>\r\n<p>&emsp;&emsp;<strong>3.月子期间不可以洗头洗澡</strong></p>\r\n<p>&emsp;&emsp;生完孩子后身体虚弱，这时候洗头洗澡很容易感染风寒，因此，不建议产妈洗头洗澡。其实，这种说法并不科学。生完孩子后，产妈身体留有大量汗液，加之恶露排出，如果长时间不洗头洗澡，身体很容易滋生细菌，影响正常的身体恢复。</p>\r\n<p>&emsp;&emsp;<strong>4.月子期间要大补</strong></p>\r\n<p>&emsp;&emsp;生孩子是消耗体力的一件事儿，生完孩子后身体也比较虚弱，此时需要补充大量营养。但，产妈身体还没有完全恢复，如果这时候大补只会造成产妈消化不良或是便秘的情况，不利于身体恢复。因此，产后产妈需要合理饮食，均衡营养。哺乳的妈妈最好穿上棉质的哺乳内衣，这能避免乳房下垂，同时也不会刺激到产妈敏感的皮肤。</p>\r\n<p>&emsp;&emsp;坐月子是为了让产妈身体尽快恢复，但是上面这几个月子习俗对产妈的身体可是没有一点好处，因此，对于坐月子的某些习俗，产妈要学会说不。同时，产妈要学会合理饮食，适当运动，这对产后身体恢复是非常有好处的。</p>', null, '0', '1', '0', null, null);
INSERT INTO `konwledge` VALUES ('22', '胎儿异常 逃不过这些测试', '       <p align=\"center\"><img style=\"width: 429px; height: 276px;\" border=\"0\" hspace=\"0\" alt=\"\" align=\"baseline\" src=\"http://www.ci123.com/upload/images/a46feb50501589ec7653a0ce84766c67.jpg\" width=\"487\" height=\"290\" title=\"\">&emsp;&emsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;怀孕是一件很奇妙的事，妈妈们将要孕育一个新生命。但是我们对怀孕有太多的未知，不知道宝宝是否会因为妈妈某方面的原因而影响生长，宝宝各方面是否发育正常？本文将为您介绍关于怀孕期间胎儿异常测试的知识，希望对孕妈妈们有帮助。</p>\r\n<p>&emsp;&emsp;<strong>筛查测试</strong></p>\r\n<p>&emsp;&emsp;在怀孕初期，医生可能会建议你做由于染色体异常导致的唐氏综合征以及由于大脑或是脊髓异常导致的脊柱裂的筛选测试。其中包括各种不同的测试如血液测试、特殊的超声扫描或是两者的组合。测试结果会告诉孕妈妈们怀畸形胎儿的可能性有多高。如果孕妈妈的测试结果显示怀畸形胎儿的风险很高，那么需要进一步做一些诊断性测试来判断胎儿是否会受到影响。如果测试结果显示怀畸形胎儿的概率很小，那么就不需要再继续做其他的测试，但这也不能完全保证胎儿的正常。诊断测试只能预测宝宝畸形的概率。</p>\r\n<p>&emsp;&emsp;<strong>血液测试</strong></p>\r\n<p>&emsp;&emsp;孕妇血清甲胎蛋白（AFP）的测试：这项测试可以检测宝宝是否具有无脑畸形、头盖骨缺损以及脊柱开裂等问题，这项测试需要验血，理想情况下，是在怀孕第16周左右进行。如果你不确定具体的怀孕时间，最好进行预产期扫描来确定测试的日期。</p>\r\n<p>&emsp;&emsp;孕妇血清筛选测试：在怀孕14到21周左右可以进行血液检测来检测宝宝是否患有唐氏综合征。这项检测可以在测试AFP的血液样品上进行，因此一般在第16周进行。宝宝患唐氏综合征的概率是根据孕女性的年龄、AFP的水平和血液中其他成分来判断的。</p>\r\n<p>&emsp;&emsp;<strong>超声筛选</strong></p>\r\n<p>&emsp;&emsp;颈部半透明带扫描即NT是一种特殊的超声扫描，在第11到13周进行。测试会记录宝宝颈后部体液的量，计算机再根据宝宝的大小、年龄以及NT扫描结果来判断宝宝患唐氏综合征的风险。</p>\r\n<p>&emsp;&emsp;<strong>结果</strong></p>\r\n<p>&emsp;&emsp;测试完后，医生会告诉你什么时候可以出结果。如果宝宝检测很正常，医生可能还会建议你进行更进一步的测试比如高分辨超声扫描、慢性绒毛取样（一般在第11到第14周进行）或者羊膜穿刺术（在第16周开始进行）。根据宝宝异常的风险高低，并不是每个人都需要做这些测试。你可能更倾向于让宝宝自然生长。</p>\r\n<p>&emsp;&emsp;关于测试结果，如果各位准妈妈有任何问题，都可以当即咨询医生。</p>', null, '7', '0', '1', null, null);
INSERT INTO `konwledge` VALUES ('23', '胎儿异常 逃不过这些测试', ' <p align=\"center\"><img style=\"width: 429px; height: 276px;\" border=\"0\" hspace=\"0\" alt=\"\" align=\"baseline\" src=\"http://www.ci123.com/upload/images/a46feb50501589ec7653a0ce84766c67.jpg\" width=\"487\" height=\"290\" title=\"\">&emsp;&emsp;</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;怀孕是一件很奇妙的事，妈妈们将要孕育一个新生命。但是我们对怀孕有太多的未知，不知道宝宝是否会因为妈妈某方面的原因而影响生长，宝宝各方面是否发育正常？本文将为您介绍关于怀孕期间胎儿异常测试的知识，希望对孕妈妈们有帮助。</p>\r\n<p>&emsp;&emsp;<strong>筛查测试</strong></p>\r\n<p>&emsp;&emsp;在怀孕初期，医生可能会建议你做由于染色体异常导致的唐氏综合征以及由于大脑或是脊髓异常导致的脊柱裂的筛选测试。其中包括各种不同的测试如血液测试、特殊的超声扫描或是两者的组合。测试结果会告诉孕妈妈们怀畸形胎儿的可能性有多高。如果孕妈妈的测试结果显示怀畸形胎儿的风险很高，那么需要进一步做一些诊断性测试来判断胎儿是否会受到影响。如果测试结果显示怀畸形胎儿的概率很小，那么就不需要再继续做其他的测试，但这也不能完全保证胎儿的正常。诊断测试只能预测宝宝畸形的概率。</p>\r\n<p>&emsp;&emsp;<strong>血液测试</strong></p>\r\n<p>&emsp;&emsp;孕妇血清甲胎蛋白（AFP）的测试：这项测试可以检测宝宝是否具有无脑畸形、头盖骨缺损以及脊柱开裂等问题，这项测试需要验血，理想情况下，是在怀孕第16周左右进行。如果你不确定具体的怀孕时间，最好进行预产期扫描来确定测试的日期。</p>\r\n<p>&emsp;&emsp;孕妇血清筛选测试：在怀孕14到21周左右可以进行血液检测来检测宝宝是否患有唐氏综合征。这项检测可以在测试AFP的血液样品上进行，因此一般在第16周进行。宝宝患唐氏综合征的概率是根据孕女性的年龄、AFP的水平和血液中其他成分来判断的。</p>\r\n<p>&emsp;&emsp;<strong>超声筛选</strong></p>\r\n<p>&emsp;&emsp;颈部半透明带扫描即NT是一种特殊的超声扫描，在第11到13周进行。测试会记录宝宝颈后部体液的量，计算机再根据宝宝的大小、年龄以及NT扫描结果来判断宝宝患唐氏综合征的风险。</p>\r\n<p>&emsp;&emsp;<strong>结果</strong></p>\r\n<p>&emsp;&emsp;测试完后，医生会告诉你什么时候可以出结果。如果宝宝检测很正常，医生可能还会建议你进行更进一步的测试比如高分辨超声扫描、慢性绒毛取样（一般在第11到第14周进行）或者羊膜穿刺术（在第16周开始进行）。根据宝宝异常的风险高低，并不是每个人都需要做这些测试。你可能更倾向于让宝宝自然生长。</p>\r\n<p>&emsp;&emsp;关于测试结果，如果各位准妈妈有任何问题，都可以当即咨询医生。</p>', null, '0', '1', '2', null, null);
INSERT INTO `konwledge` VALUES ('27', '哈挺ok的', '<p>yepyep</p>', '', '100', '0', '1', null, 'http://localhost:8003/static/mamamiya202102251317441278.jpg');
INSERT INTO `konwledge` VALUES ('28', '视力“危机”来袭！如何才能让宝宝的世界更“睛”彩？', '<p class=\"ql-align-center\">近视低龄化加剧，“小眼镜”层出不穷，牵动着每位家长的心。不管是看书看屏幕，还是看物看风景，孩子每天都会用眼，这就需要家长帮助孩子抓住6岁之前的视力发育关键期，学会正确用眼和科学护眼。<img src=\"http://www.ci123.com/upload/images/90e6748638f7780d0478e24c75ba76ac.png\"></p><p><strong>1岁以内：感知变化，鼓励探索</strong></p><p>宝宝从眼神追逐物品到主动伸手触碰，再到通过眼睛指挥手去感知探索。随着眼球运动、视觉发育、手眼身体协调能力增强，宝宝开始爬行和站立，自主抓取和抛掷物品。</p><p><strong>【家长怎么做？】</strong></p><p>室内灯光不易过于明亮，更要避免阳光或灯光直射宝宝眼睛，不建议在固定位置悬挂儿童玩具，避免宝宝总盯着一个位置视物。可用多种颜色、材质的卡片或玩具与宝宝互动玩耍，帮助宝宝用手去感受不同物品的形状质地，并要保证足够的爬行和探索时间，不鼓励过早行走。</p><p><strong>1岁以上：持续发育，加强预防</strong></p><p>伴随手眼协调与深度视觉持续发育，2岁前不建议宝宝接触任何电子屏幕，2岁后也要严格控制屏幕使用时间，一天不超过1小时，并且注意每看20分钟的电视要休息20分钟，多进行户外活动，养成良好的用眼习惯，定期带孩子进行系统的眼科检查，排除弱视、斜视等情况。</p><p><strong>【家长怎么做？】</strong></p><p>家长要以身作则，拒绝做“屏幕奴”，多与宝宝玩拼图、积木等游戏；给孩子充足的户外运动时间，多做骑车、球类等运动，同时鼓励宝宝自己穿衣服、玩橡皮泥、剪剪贴贴等，以锻炼手眼及整体协调能力。</p><p><strong>　N种危险信号需警惕，2种营养素不能忘</strong></p><p>相关数据统计，约有10%的学龄前儿童存在视力问题。但是，小朋友往往表达不清，家长也意识不到，容易忽视。出现以下情况，可能提示宝宝视力发育存在问题，要及时就医检查：</p><p>①经常揉眼、挤眼睛，歪头或眯着一只眼看东西；</p><p>②一眼注视，另一眼内斜或外斜；</p><p>③玩球或骑自行车时，眼-手-身体不协调；</p><p>④看电视或看书离得越来越近；</p><p>⑤不喜欢涂色或拼图游戏，抗拒做精细化事情。</p><p>除了平日的悉心观察，注意用眼卫生，保证良好“养眼”环境外，更要注意护眼营养的补充，尤其是对视力发育至关重要的营养素--维生素AD。</p><p>泪腺管上皮细胞的完整性依赖于维生素A，维生素A充足，泪液分泌量才正常，，眼球才可以保持湿润，并减少视疲劳。同时，维生素A还可维持泪膜结构的完整，维持正常屈光度，预防近视发生。此外，维生素A还参与视网膜感光物质“视紫红质”的合成，保证正常的夜视功能，并维持结膜、角膜上皮细胞的完整性，降低眼部感染机率。</p><p>维生素D能够有效促进钙吸收，而钙能增加眼部肌肉调节能力，避免眼球过度紧张疲劳，降低近视风险。</p><p>维生素AD是婴幼儿时期极易缺乏的营养素，我国儿童群体缺乏率均在50%左右。因此，家长要重视维生素AD的有效补充，从宝宝出生开始就要每日补充1粒维生素AD滴剂（伊可新），至少补充到3岁，最好在视力发展关键期和敏感期持续补充，可以延续至青春期，不仅能预防近视，还能提升机体抵抗力、促进身高增长、智力发育以及预防缺铁性贫血！</p>', '', '19', '0', '4', null, '');
INSERT INTO `konwledge` VALUES ('29', '视力“危机”来袭！如何才能让宝宝的世界更“睛”彩？', '<p class=\"ql-align-center\">自从二胎政策开放之后，越来越多家庭迈入了二胎行列。如何一碗水端平，对每一位二胎妈妈都是考验。最近，网上有则新闻引起了热议：一位宝妈在诞下二胎后，发现自己的大女儿走路总是跌倒，后来到医院检查，发现孩子的视力仅为0.15！<img src=\"http://www.ci123.com/upload/images/d2b65c97bce06ae683ac28dca8eb007f.png\"></p><p>更奇怪的事情发生了，医生进一步检查后发现，孩子眼睛的状况一切正常。这是怎么回事呢？原来，自从家里添了二胎后，大女儿便觉得自己受冷落，于是出现了“癔症性眼盲”。</p><p>医生解释，癔症性眼盲是一种主观视觉障碍，常与精神、心理损伤或疾病有关。简单点说就是视力出现问题与器官没有关系，而是心理原因导致。</p><p>英国儿童行为心理学家的研究显示：即便1岁孩子，也会对家里出现的其他孩子产生敌意。他们通常会通过伤害自己、胡搅蛮缠等方法，试图引起父母更多的注意。</p><p>上面这种“癔症性眼盲”虽然是虚惊一场，但宝宝的视力问题依然需要妈妈关注和重视。因为宝宝并不是一出生就具备和成人一样的视力，而是需要一个逐步发育健全的过程，0-3岁是孩子视力发育最快速的阶段，一直到8岁左右才能接近成人水平。</p><p>因此，在0-3岁这一关键时期，妈妈一方面要让宝宝养成良好的用眼习惯，另一方面也要及时补充有助于视力发育的关键营养素，每日给孩子补充伊可新更是必不可少。因为伊可新里面含有的维生素A不仅参与视网膜中重要的感光物质“视紫红质”的合成，维持正常的暗视觉功能，还能维护结膜、角膜等部位上皮细胞的完整性，提高眼睛的抗感染能力，维生素A还能维持正常的泪液分泌功能，缓解视疲劳，对预防近视、夜盲症、干眼症等有重要作用。</p><p>医学研究发现，泪膜与屈光不正关系密切，而泪膜的形成与维生素A密切相关，如果宝宝维生素A摄入不足，泪腺管上皮细胞会发生改变导致泪液分泌减少、泪膜形成受阻，眼睛会因缺乏泪液润滑而发干甚至导致屈光不正。</p><p class=\"ql-align-center\">此外，维生素D可以促进钙吸收，间接也能增强眼肌的收缩功能。每日给宝宝补充一粒伊可新维生素AD滴剂，不仅能促进宝宝视力发育，维护视力健康，还能提升宝宝抵抗力、促进骨骼发育、智力发育以及预防缺铁性贫血，是宝宝成长过程中不可缺少的育儿助手！</p>', '', '19', '0', '3', null, '');
INSERT INTO `konwledge` VALUES ('30', '2岁就能预测未来身高？快来给孩子自查一下吧！', '', '', null, null, '4', null, 'http://localhost:8003/static/mamamiya202103060207067090.png');

-- ----------------------------
-- Table structure for konwuser
-- ----------------------------
DROP TABLE IF EXISTS `konwuser`;
CREATE TABLE `konwuser` (
  `kid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `buytime` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`kid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of konwuser
-- ----------------------------
INSERT INTO `konwuser` VALUES ('7', '12306', '2021/03/06');
INSERT INTO `konwuser` VALUES ('7', '12345', '2021/02/25');
INSERT INTO `konwuser` VALUES ('7', '1170559835', '2021/03/03');
INSERT INTO `konwuser` VALUES ('11', '12345', '2021/02/25');
INSERT INTO `konwuser` VALUES ('12', '12306', '2021/03/06');
INSERT INTO `konwuser` VALUES ('12', '12345', '2021/02/25');
INSERT INTO `konwuser` VALUES ('12', '1170559835', '2021/02/25');
INSERT INTO `konwuser` VALUES ('13', '12345', '2021/02/25');
INSERT INTO `konwuser` VALUES ('15', '12345', '2021/02/25');
INSERT INTO `konwuser` VALUES ('15', '1170559835', '2021/02/25');
INSERT INTO `konwuser` VALUES ('22', '12345', '2021/02/25');
INSERT INTO `konwuser` VALUES ('22', '1170559835', '2021/02/26');
INSERT INTO `konwuser` VALUES ('27', '12345', '2021/03/01');

-- ----------------------------
-- Table structure for konwvideo
-- ----------------------------
DROP TABLE IF EXISTS `konwvideo`;
CREATE TABLE `konwvideo` (
  `kvid` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `kcid` int(11) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`kvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of konwvideo
-- ----------------------------

-- ----------------------------
-- Table structure for kuse
-- ----------------------------
DROP TABLE IF EXISTS `kuse`;
CREATE TABLE `kuse` (
  `kid` int(11) NOT NULL,
  `useraccount` int(11) NOT NULL,
  `ktime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kid`,`useraccount`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of kuse
-- ----------------------------
INSERT INTO `kuse` VALUES ('1', '12306', '2021/03/04');
INSERT INTO `kuse` VALUES ('1', '12345', '2021/03/04');
INSERT INTO `kuse` VALUES ('2', '12306', '2021/03/04');
INSERT INTO `kuse` VALUES ('2', '12345', '2021/03/04');
INSERT INTO `kuse` VALUES ('2', '1170559835', '2021/03/04');
INSERT INTO `kuse` VALUES ('5', '12345', '2021/03/04');
INSERT INTO `kuse` VALUES ('5', '1170559835', '2021/03/04');
INSERT INTO `kuse` VALUES ('6', '12345', '2021/03/04');
INSERT INTO `kuse` VALUES ('7', '12306', '2021/03/06');
INSERT INTO `kuse` VALUES ('7', '12345', '2021/03/04');
INSERT INTO `kuse` VALUES ('8', '12345', '2021/03/04');
INSERT INTO `kuse` VALUES ('8', '1170559835', '2021/03/04');
INSERT INTO `kuse` VALUES ('10', '1170559835', '2021/03/04');
INSERT INTO `kuse` VALUES ('12', '12306', '2021/03/06');
INSERT INTO `kuse` VALUES ('15', '1170559835', '2021/03/04');
INSERT INTO `kuse` VALUES ('18', '1170559835', '2021/03/04');
INSERT INTO `kuse` VALUES ('19', '1170559835', '2021/03/04');
INSERT INTO `kuse` VALUES ('20', '12345', '2021/03/04');
INSERT INTO `kuse` VALUES ('20', '1170559835', '2021/03/04');
INSERT INTO `kuse` VALUES ('21', '12345', '2021/03/04');
INSERT INTO `kuse` VALUES ('22', '12345', '2021/03/04');
INSERT INTO `kuse` VALUES ('22', '1170559835', '2021/03/04');
INSERT INTO `kuse` VALUES ('27', '12345', '2021/03/04');

-- ----------------------------
-- Table structure for lookup
-- ----------------------------
DROP TABLE IF EXISTS `lookup`;
CREATE TABLE `lookup` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `kid` int(11) DEFAULT NULL,
  `looktime` varchar(100) DEFAULT date_format(curdate(),'%y/%m/%d'),
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lookup
-- ----------------------------
INSERT INTO `lookup` VALUES ('93', '7', '2021/02/23');
INSERT INTO `lookup` VALUES ('94', '7', '2021/02/24');
INSERT INTO `lookup` VALUES ('95', '2', '2021/02/23');
INSERT INTO `lookup` VALUES ('96', '2', '2021/02/25');
INSERT INTO `lookup` VALUES ('97', '15', '2021/02/25');
INSERT INTO `lookup` VALUES ('98', '12', '2021/02/25');
INSERT INTO `lookup` VALUES ('99', '7', '2021/02/25');
INSERT INTO `lookup` VALUES ('100', '11', '2021/02/25');
INSERT INTO `lookup` VALUES ('101', '5', '2021/02/26');
INSERT INTO `lookup` VALUES ('102', '6', '2021/02/26');
INSERT INTO `lookup` VALUES ('103', '6', '2021/02/26');
INSERT INTO `lookup` VALUES ('104', '6', '2021/02/26');
INSERT INTO `lookup` VALUES ('105', '6', '2021/02/26');
INSERT INTO `lookup` VALUES ('106', '6', '2021/02/26');
INSERT INTO `lookup` VALUES ('107', '6', '2021/02/26');
INSERT INTO `lookup` VALUES ('108', '6', '2021/02/26');
INSERT INTO `lookup` VALUES ('109', '22', '2021/02/26');
INSERT INTO `lookup` VALUES ('110', '22', '2021/02/26');
INSERT INTO `lookup` VALUES ('111', '22', '2021/02/26');
INSERT INTO `lookup` VALUES ('112', '22', '2021/02/26');
INSERT INTO `lookup` VALUES ('113', '22', '2021/02/26');
INSERT INTO `lookup` VALUES ('114', '22', '2021/02/26');
INSERT INTO `lookup` VALUES ('115', '22', '2021/02/26');
INSERT INTO `lookup` VALUES ('116', '22', '2021/02/26');
INSERT INTO `lookup` VALUES ('117', '22', '2021/02/26');
INSERT INTO `lookup` VALUES ('118', '22', '2021/02/26');
INSERT INTO `lookup` VALUES ('119', '18', '2021/02/26');
INSERT INTO `lookup` VALUES ('120', '18', '2021/02/26');
INSERT INTO `lookup` VALUES ('121', '12', '2021/02/27');
INSERT INTO `lookup` VALUES ('122', '7', '2021/02/27');
INSERT INTO `lookup` VALUES ('123', '22', '2021/02/27');
INSERT INTO `lookup` VALUES ('124', '13', '2021/02/27');
INSERT INTO `lookup` VALUES ('125', '15', '2021/02/27');
INSERT INTO `lookup` VALUES ('126', '12', '2021/02/27');
INSERT INTO `lookup` VALUES ('127', '7', '2021/02/27');
INSERT INTO `lookup` VALUES ('128', '2', '2021/02/27');
INSERT INTO `lookup` VALUES ('129', '15', '2021/02/27');
INSERT INTO `lookup` VALUES ('130', '1', '2021/02/28');
INSERT INTO `lookup` VALUES ('131', '1', '2021/02/28');
INSERT INTO `lookup` VALUES ('132', '1', '2021/02/28');
INSERT INTO `lookup` VALUES ('133', '1', '2021/02/28');
INSERT INTO `lookup` VALUES ('134', '7', '2021/02/28');
INSERT INTO `lookup` VALUES ('135', '1', '2021/02/28');
INSERT INTO `lookup` VALUES ('136', '1', '2021/02/28');
INSERT INTO `lookup` VALUES ('137', '1', '2021/02/28');
INSERT INTO `lookup` VALUES ('138', '2', '2021/02/28');
INSERT INTO `lookup` VALUES ('139', '2', '2021/02/28');
INSERT INTO `lookup` VALUES ('140', '8', '2021/03/01');
INSERT INTO `lookup` VALUES ('141', '1', '2021/03/01');
INSERT INTO `lookup` VALUES ('142', '7', '2021/03/01');
INSERT INTO `lookup` VALUES ('143', '27', '2021/03/01');
INSERT INTO `lookup` VALUES ('144', '27', '2021/03/02');
INSERT INTO `lookup` VALUES ('145', '27', '2021/03/02');
INSERT INTO `lookup` VALUES ('146', '12', '2021/03/02');
INSERT INTO `lookup` VALUES ('147', '12', '2021/03/02');
INSERT INTO `lookup` VALUES ('148', '23', '2021/03/02');
INSERT INTO `lookup` VALUES ('149', '20', '2021/03/02');
INSERT INTO `lookup` VALUES ('150', '1', '2021/03/02');
INSERT INTO `lookup` VALUES ('151', '12', '2021/03/02');
INSERT INTO `lookup` VALUES ('152', '4', '2021/03/02');
INSERT INTO `lookup` VALUES ('153', '12', '2021/03/03');
INSERT INTO `lookup` VALUES ('154', '15', '2021/03/03');
INSERT INTO `lookup` VALUES ('155', '2', '2021/03/03');
INSERT INTO `lookup` VALUES ('156', '15', '2021/03/03');
INSERT INTO `lookup` VALUES ('157', '15', '2021/03/03');
INSERT INTO `lookup` VALUES ('158', '4', '2021/03/03');
INSERT INTO `lookup` VALUES ('159', '15', '2021/03/03');
INSERT INTO `lookup` VALUES ('160', '22', '2021/03/03');
INSERT INTO `lookup` VALUES ('161', '1', '2021/03/03');
INSERT INTO `lookup` VALUES ('162', '2', '2021/03/03');
INSERT INTO `lookup` VALUES ('163', '7', '2021/03/03');
INSERT INTO `lookup` VALUES ('164', '5', '2021/03/03');
INSERT INTO `lookup` VALUES ('165', '7', '2021/03/03');
INSERT INTO `lookup` VALUES ('166', '7', '2021/03/03');
INSERT INTO `lookup` VALUES ('167', '12', '2021/03/03');
INSERT INTO `lookup` VALUES ('168', '22', '2021/03/03');
INSERT INTO `lookup` VALUES ('169', '5', '2021/03/03');
INSERT INTO `lookup` VALUES ('170', '5', '2021/03/03');
INSERT INTO `lookup` VALUES ('171', '4', '2021/03/03');
INSERT INTO `lookup` VALUES ('172', '10', '2021/03/04');
INSERT INTO `lookup` VALUES ('173', '12', '2021/03/04');
INSERT INTO `lookup` VALUES ('174', '5', '2021/03/04');
INSERT INTO `lookup` VALUES ('175', '5', '2021/03/04');
INSERT INTO `lookup` VALUES ('176', '5', '2021/03/04');
INSERT INTO `lookup` VALUES ('177', '8', '2021/03/04');
INSERT INTO `lookup` VALUES ('178', '8', '2021/03/04');
INSERT INTO `lookup` VALUES ('179', '5', '2021/03/04');
INSERT INTO `lookup` VALUES ('180', '20', '2021/03/04');
INSERT INTO `lookup` VALUES ('181', '20', '2021/03/04');
INSERT INTO `lookup` VALUES ('182', '20', '2021/03/04');
INSERT INTO `lookup` VALUES ('183', '19', '2021/03/04');
INSERT INTO `lookup` VALUES ('184', '19', '2021/03/04');
INSERT INTO `lookup` VALUES ('185', '19', '2021/03/04');
INSERT INTO `lookup` VALUES ('186', '19', '2021/03/04');
INSERT INTO `lookup` VALUES ('187', '19', '2021/03/04');
INSERT INTO `lookup` VALUES ('188', '2', '2021/03/04');
INSERT INTO `lookup` VALUES ('189', '5', '2021/03/04');
INSERT INTO `lookup` VALUES ('190', '18', '2021/03/04');
INSERT INTO `lookup` VALUES ('191', '10', '2021/03/04');
INSERT INTO `lookup` VALUES ('192', '10', '2021/03/04');
INSERT INTO `lookup` VALUES ('193', '7', '2021/03/05');
INSERT INTO `lookup` VALUES ('194', '7', '2021/03/05');
INSERT INTO `lookup` VALUES ('195', '1', '2021/03/05');
INSERT INTO `lookup` VALUES ('196', '1', '2021/03/05');
INSERT INTO `lookup` VALUES ('197', '2', '2021/03/05');
INSERT INTO `lookup` VALUES ('198', '1', '2021/03/05');
INSERT INTO `lookup` VALUES ('199', '1', '2021/03/05');
INSERT INTO `lookup` VALUES ('200', '2', '2021/03/05');
INSERT INTO `lookup` VALUES ('201', '7', '2021/03/06');
INSERT INTO `lookup` VALUES ('202', '7', '2021/03/06');
INSERT INTO `lookup` VALUES ('203', '7', '2021/03/06');
INSERT INTO `lookup` VALUES ('204', '12', '2021/03/06');
INSERT INTO `lookup` VALUES ('205', '12', '2021/03/06');
INSERT INTO `lookup` VALUES ('206', '23', '2021/03/06');
INSERT INTO `lookup` VALUES ('207', '1', '2021/03/06');
INSERT INTO `lookup` VALUES ('208', '8', '2021/03/06');
INSERT INTO `lookup` VALUES ('209', '1', '2021/03/06');
INSERT INTO `lookup` VALUES ('210', '1', '2021/03/06');
INSERT INTO `lookup` VALUES ('211', '6', '2021/03/06');
INSERT INTO `lookup` VALUES ('212', '4', '2021/03/06');
INSERT INTO `lookup` VALUES ('213', '10', '2021/03/06');
INSERT INTO `lookup` VALUES ('214', '4', '2021/03/06');
INSERT INTO `lookup` VALUES ('215', '8', '2021/03/06');
INSERT INTO `lookup` VALUES ('216', '4', '2021/03/06');
INSERT INTO `lookup` VALUES ('217', '4', '2021/03/06');
INSERT INTO `lookup` VALUES ('218', '8', '2021/03/06');
INSERT INTO `lookup` VALUES ('219', '4', '2021/03/06');
INSERT INTO `lookup` VALUES ('220', '1', '2021/03/06');
INSERT INTO `lookup` VALUES ('221', '10', '2021/03/06');
INSERT INTO `lookup` VALUES ('222', '23', '2021/03/06');
INSERT INTO `lookup` VALUES ('223', '1', '2021/03/06');
INSERT INTO `lookup` VALUES ('224', '4', '2021/03/06');
INSERT INTO `lookup` VALUES ('225', '4', '2021/03/06');
INSERT INTO `lookup` VALUES ('226', '8', '2021/03/06');
INSERT INTO `lookup` VALUES ('227', '7', '2021/03/06');
INSERT INTO `lookup` VALUES ('228', '1', '2021/03/06');
INSERT INTO `lookup` VALUES ('229', '6', '2021/03/06');
INSERT INTO `lookup` VALUES ('230', '1', '2021/03/06');
INSERT INTO `lookup` VALUES ('231', '2', '2021/03/06');
INSERT INTO `lookup` VALUES ('232', '4', '2021/03/06');
INSERT INTO `lookup` VALUES ('233', '6', '2021/03/06');
INSERT INTO `lookup` VALUES ('234', '20', '2021/03/06');
INSERT INTO `lookup` VALUES ('235', '7', '2021/03/06');
INSERT INTO `lookup` VALUES ('236', '11', '2021/03/06');
INSERT INTO `lookup` VALUES ('237', '22', '2021/03/06');
INSERT INTO `lookup` VALUES ('238', '5', '2021/03/06');
INSERT INTO `lookup` VALUES ('239', '2', '2021/03/06');

-- ----------------------------
-- Table structure for lookupnews
-- ----------------------------
DROP TABLE IF EXISTS `lookupnews`;
CREATE TABLE `lookupnews` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `useraccount` int(11) NOT NULL,
  `infoid` int(11) NOT NULL,
  `time` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=396 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lookupnews
-- ----------------------------
INSERT INTO `lookupnews` VALUES ('103', '12345', '24', '2021/02/27/21/31/01');
INSERT INTO `lookupnews` VALUES ('104', '12345', '24', '2021/02/27/21/31/15');
INSERT INTO `lookupnews` VALUES ('105', '12345', '24', '2021/02/27/21/31/17');
INSERT INTO `lookupnews` VALUES ('106', '12345', '24', '2021/02/27/21/31/18');
INSERT INTO `lookupnews` VALUES ('107', '12345', '24', '2021/02/27/21/34/37');
INSERT INTO `lookupnews` VALUES ('108', '12345', '24', '2021/02/27/21/35/22');
INSERT INTO `lookupnews` VALUES ('109', '12345', '24', '2021/02/27/21/36/17');
INSERT INTO `lookupnews` VALUES ('110', '12345', '24', '2021/02/27/21/36/54');
INSERT INTO `lookupnews` VALUES ('111', '12345', '24', '2021/02/27/21/36/58');
INSERT INTO `lookupnews` VALUES ('112', '12345', '24', '2021/02/27/21/37/34');
INSERT INTO `lookupnews` VALUES ('113', '12345', '24', '2021/02/27/21/38/01');
INSERT INTO `lookupnews` VALUES ('114', '12345', '24', '2021/02/27/21/38/25');
INSERT INTO `lookupnews` VALUES ('115', '12345', '24', '2021/02/27/21/39/25');
INSERT INTO `lookupnews` VALUES ('116', '12345', '24', '2021/02/27/21/39/42');
INSERT INTO `lookupnews` VALUES ('117', '12345', '24', '2021/02/27/21/39/56');
INSERT INTO `lookupnews` VALUES ('118', '12345', '24', '2021/02/27/21/40/35');
INSERT INTO `lookupnews` VALUES ('119', '12345', '24', '2021/02/27/21/40/54');
INSERT INTO `lookupnews` VALUES ('120', '12345', '24', '2021/02/27/21/42/15');
INSERT INTO `lookupnews` VALUES ('121', '12345', '24', '2021/02/27/21/43/36');
INSERT INTO `lookupnews` VALUES ('122', '12345', '19', '2021/02/27/21/43/52');
INSERT INTO `lookupnews` VALUES ('123', '12345', '19', '2021/02/27/21/44/42');
INSERT INTO `lookupnews` VALUES ('124', '12345', '19', '2021/02/27/21/45/18');
INSERT INTO `lookupnews` VALUES ('125', '1170559835', '24', '2021/02/27/21/47/29');
INSERT INTO `lookupnews` VALUES ('126', '1170559835', '24', '2021/02/27/21/47/49');
INSERT INTO `lookupnews` VALUES ('127', '1170559835', '24', '2021/02/27/21/48/02');
INSERT INTO `lookupnews` VALUES ('128', '1170559835', '19', '2021/02/27/21/50/53');
INSERT INTO `lookupnews` VALUES ('129', '1170559835', '19', '2021/02/27/21/54/34');
INSERT INTO `lookupnews` VALUES ('130', '1170559835', '24', '2021/02/27/22/01/01');
INSERT INTO `lookupnews` VALUES ('131', '1170559835', '24', '2021/02/27/22/10/15');
INSERT INTO `lookupnews` VALUES ('132', '1170559835', '19', '2021/02/27/22/19/59');
INSERT INTO `lookupnews` VALUES ('133', '1170559835', '24', '2021/02/27/22/20/05');
INSERT INTO `lookupnews` VALUES ('134', '1170559835', '24', '2021/02/27/22/23/20');
INSERT INTO `lookupnews` VALUES ('135', '1170559835', '24', '2021/02/27/22/49/43');
INSERT INTO `lookupnews` VALUES ('136', '1170559835', '24', '2021/02/27/22/51/02');
INSERT INTO `lookupnews` VALUES ('137', '1170559835', '24', '2021/02/27/22/51/28');
INSERT INTO `lookupnews` VALUES ('138', '1170559835', '24', '2021/02/27/22/52/33');
INSERT INTO `lookupnews` VALUES ('139', '1170559835', '19', '2021/02/27/22/53/02');
INSERT INTO `lookupnews` VALUES ('140', '1170559835', '24', '2021/02/27/22/53/06');
INSERT INTO `lookupnews` VALUES ('141', '1170559835', '24', '2021/02/27/22/53/15');
INSERT INTO `lookupnews` VALUES ('142', '1170559835', '24', '2021/02/27/22/53/53');
INSERT INTO `lookupnews` VALUES ('143', '1170559835', '24', '2021/02/27/22/54/12');
INSERT INTO `lookupnews` VALUES ('144', '1170559835', '24', '2021/02/27/22/54/15');
INSERT INTO `lookupnews` VALUES ('145', '1170559835', '24', '2021/02/27/22/57/27');
INSERT INTO `lookupnews` VALUES ('146', '1170559835', '24', '2021/02/27/23/12/49');
INSERT INTO `lookupnews` VALUES ('147', '1170559835', '24', '2021/02/27/23/13/04');
INSERT INTO `lookupnews` VALUES ('148', '1170559835', '24', '2021/02/27/23/16/21');
INSERT INTO `lookupnews` VALUES ('149', '1170559835', '24', '2021/02/27/23/21/14');
INSERT INTO `lookupnews` VALUES ('150', '1170559835', '24', '2021/02/27/23/21/59');
INSERT INTO `lookupnews` VALUES ('151', '1170559835', '24', '2021/02/27/23/22/55');
INSERT INTO `lookupnews` VALUES ('152', '1170559835', '24', '2021/02/27/23/28/57');
INSERT INTO `lookupnews` VALUES ('153', '1170559835', '24', '2021/02/27/23/29/25');
INSERT INTO `lookupnews` VALUES ('154', '1170559835', '24', '2021/02/27/23/30/33');
INSERT INTO `lookupnews` VALUES ('155', '1170559835', '24', '2021/02/27/23/30/45');
INSERT INTO `lookupnews` VALUES ('156', '1170559835', '2', '2021/02/27/23/38/10');
INSERT INTO `lookupnews` VALUES ('157', '1170559835', '24', '2021/02/27/23/38/28');
INSERT INTO `lookupnews` VALUES ('158', '1170559835', '25', '2021/02/27/23/40/53');
INSERT INTO `lookupnews` VALUES ('159', '1170559835', '19', '2021/02/27/23/45/12');
INSERT INTO `lookupnews` VALUES ('160', '1170559835', '24', '2021/02/27/23/48/41');
INSERT INTO `lookupnews` VALUES ('161', '1170559835', '24', '2021/02/27/23/50/05');
INSERT INTO `lookupnews` VALUES ('162', '1170559835', '24', '2021/02/27/23/50/14');
INSERT INTO `lookupnews` VALUES ('163', '12345', '24', '2021/02/27/23/50/29');
INSERT INTO `lookupnews` VALUES ('164', '12345', '24', '2021/02/27/23/50/37');
INSERT INTO `lookupnews` VALUES ('165', '12345', '24', '2021/02/27/23/51/28');
INSERT INTO `lookupnews` VALUES ('166', '12345', '24', '2021/02/27/23/52/49');
INSERT INTO `lookupnews` VALUES ('167', '12345', '24', '2021/02/27/23/52/58');
INSERT INTO `lookupnews` VALUES ('168', '12345', '24', '2021/02/27/23/53/04');
INSERT INTO `lookupnews` VALUES ('169', '12345', '24', '2021/02/27/23/53/51');
INSERT INTO `lookupnews` VALUES ('170', '12345', '24', '2021/02/27/23/54/06');
INSERT INTO `lookupnews` VALUES ('171', '1170559835', '24', '2021/02/27/23/54/27');
INSERT INTO `lookupnews` VALUES ('172', '1170559835', '24', '2021/02/27/23/54/40');
INSERT INTO `lookupnews` VALUES ('173', '1170559835', '24', '2021/02/27/23/55/01');
INSERT INTO `lookupnews` VALUES ('174', '12345', '24', '2021/02/28/00/02/45');
INSERT INTO `lookupnews` VALUES ('175', '12345', '24', '2021/02/28/00/02/55');
INSERT INTO `lookupnews` VALUES ('176', '12345', '24', '2021/02/28/00/07/08');
INSERT INTO `lookupnews` VALUES ('177', '12345', '24', '2021/02/28/00/09/23');
INSERT INTO `lookupnews` VALUES ('178', '12345', '24', '2021/02/28/00/15/21');
INSERT INTO `lookupnews` VALUES ('179', '12345', '19', '2021/02/28/00/19/24');
INSERT INTO `lookupnews` VALUES ('180', '12345', '24', '2021/02/28/00/22/19');
INSERT INTO `lookupnews` VALUES ('181', '12345', '24', '2021/02/28/00/27/39');
INSERT INTO `lookupnews` VALUES ('182', '12345', '24', '2021/02/28/00/41/03');
INSERT INTO `lookupnews` VALUES ('183', '12345', '1', '2021/02/28/00/47/30');
INSERT INTO `lookupnews` VALUES ('184', '12345', '24', '2021/02/28/00/47/35');
INSERT INTO `lookupnews` VALUES ('185', '12345', '24', '2021/02/28/09/11/42');
INSERT INTO `lookupnews` VALUES ('186', '12345', '23', '2021/02/28/09/12/41');
INSERT INTO `lookupnews` VALUES ('187', '12345', '24', '2021/02/28/09/13/29');
INSERT INTO `lookupnews` VALUES ('188', '12345', '24', '2021/02/28/09/13/37');
INSERT INTO `lookupnews` VALUES ('189', '12345', '24', '2021/02/28/09/14/24');
INSERT INTO `lookupnews` VALUES ('190', '12345', '24', '2021/02/28/09/15/56');
INSERT INTO `lookupnews` VALUES ('191', '12345', '24', '2021/02/28/09/17/22');
INSERT INTO `lookupnews` VALUES ('192', '1170559835', '24', '2021/02/28/09/18/05');
INSERT INTO `lookupnews` VALUES ('193', '12306', '24', '2021/02/28/09/18/37');
INSERT INTO `lookupnews` VALUES ('194', '12306', '24', '2021/02/28/09/18/49');
INSERT INTO `lookupnews` VALUES ('195', '12306', '24', '2021/02/28/09/22/37');
INSERT INTO `lookupnews` VALUES ('196', '12306', '24', '2021/02/28/09/23/36');
INSERT INTO `lookupnews` VALUES ('197', '12306', '24', '2021/02/28/09/25/38');
INSERT INTO `lookupnews` VALUES ('198', '12306', '19', '2021/02/28/09/27/18');
INSERT INTO `lookupnews` VALUES ('199', '12306', '24', '2021/02/28/09/27/25');
INSERT INTO `lookupnews` VALUES ('200', '12306', '19', '2021/02/28/10/12/00');
INSERT INTO `lookupnews` VALUES ('201', '12306', '24', '2021/02/28/10/12/04');
INSERT INTO `lookupnews` VALUES ('202', '12306', '24', '2021/02/28/10/25/25');
INSERT INTO `lookupnews` VALUES ('203', '12306', '24', '2021/02/28/15/53/21');
INSERT INTO `lookupnews` VALUES ('204', '12306', '24', '2021/02/28/15/55/29');
INSERT INTO `lookupnews` VALUES ('205', '12306', '5', '2021/02/28/15/57/31');
INSERT INTO `lookupnews` VALUES ('206', '1170559835', '2', '2021/02/28/16/15/47');
INSERT INTO `lookupnews` VALUES ('207', '12345', '21', '2021/02/28/16/19/15');
INSERT INTO `lookupnews` VALUES ('208', '12345', '21', '2021/02/28/16/19/27');
INSERT INTO `lookupnews` VALUES ('209', '12345', '24', '2021/02/28/16/19/46');
INSERT INTO `lookupnews` VALUES ('210', '12345', '24', '2021/02/28/16/21/26');
INSERT INTO `lookupnews` VALUES ('211', '12345', '22', '2021/02/28/16/21/30');
INSERT INTO `lookupnews` VALUES ('212', '12345', '22', '2021/02/28/16/21/38');
INSERT INTO `lookupnews` VALUES ('213', '12345', '24', '2021/02/28/18/31/05');
INSERT INTO `lookupnews` VALUES ('214', '12345', '19', '2021/02/28/18/31/12');
INSERT INTO `lookupnews` VALUES ('215', '12345', '21', '2021/02/28/18/31/18');
INSERT INTO `lookupnews` VALUES ('216', '12345', '24', '2021/02/28/18/31/24');
INSERT INTO `lookupnews` VALUES ('217', '12345', '19', '2021/02/28/18/31/27');
INSERT INTO `lookupnews` VALUES ('218', '12345', '24', '2021/02/28/18/31/33');
INSERT INTO `lookupnews` VALUES ('219', '12345', '24', '2021/02/28/18/35/04');
INSERT INTO `lookupnews` VALUES ('220', '12345', '24', '2021/02/28/20/02/36');
INSERT INTO `lookupnews` VALUES ('221', '12345', '19', '2021/02/28/20/02/49');
INSERT INTO `lookupnews` VALUES ('222', '12345', '21', '2021/02/28/20/02/53');
INSERT INTO `lookupnews` VALUES ('223', '12345', '24', '2021/02/28/20/32/14');
INSERT INTO `lookupnews` VALUES ('224', '12345', '24', '2021/02/28/20/33/09');
INSERT INTO `lookupnews` VALUES ('225', '12345', '24', '2021/02/28/20/33/30');
INSERT INTO `lookupnews` VALUES ('226', '12345', '24', '2021/02/28/20/33/49');
INSERT INTO `lookupnews` VALUES ('227', '12345', '24', '2021/03/01/15/21/42');
INSERT INTO `lookupnews` VALUES ('228', '12345', '24', '2021/03/01/16/51/21');
INSERT INTO `lookupnews` VALUES ('229', '12345', '19', '2021/03/01/21/13/54');
INSERT INTO `lookupnews` VALUES ('230', '12345', '24', '2021/03/01/22/28/46');
INSERT INTO `lookupnews` VALUES ('231', '12345', '19', '2021/03/02/00/31/10');
INSERT INTO `lookupnews` VALUES ('232', '12345', '19', '2021/03/02/00/31/19');
INSERT INTO `lookupnews` VALUES ('233', '12345', '19', '2021/03/02/00/36/04');
INSERT INTO `lookupnews` VALUES ('234', '12345', '19', '2021/03/02/00/38/14');
INSERT INTO `lookupnews` VALUES ('235', '12345', '24', '2021/03/02/12/14/01');
INSERT INTO `lookupnews` VALUES ('236', '12345', '19', '2021/03/02/12/14/31');
INSERT INTO `lookupnews` VALUES ('237', '12345', '19', '2021/03/02/12/18/34');
INSERT INTO `lookupnews` VALUES ('238', '12345', '19', '2021/03/02/12/40/24');
INSERT INTO `lookupnews` VALUES ('239', '12345', '24', '2021/03/02/12/40/36');
INSERT INTO `lookupnews` VALUES ('240', '12345', '22', '2021/03/02/12/54/49');
INSERT INTO `lookupnews` VALUES ('241', '1170559835', '21', '2021/03/02/12/55/11');
INSERT INTO `lookupnews` VALUES ('242', '1170559835', '21', '2021/03/02/12/55/27');
INSERT INTO `lookupnews` VALUES ('243', '1170559835', '24', '2021/03/02/12/55/43');
INSERT INTO `lookupnews` VALUES ('244', '1170559835', '24', '2021/03/02/12/58/42');
INSERT INTO `lookupnews` VALUES ('245', '1170559835', '24', '2021/03/02/12/58/48');
INSERT INTO `lookupnews` VALUES ('246', '1170559835', '24', '2021/03/02/12/59/22');
INSERT INTO `lookupnews` VALUES ('247', '1170559835', '19', '2021/03/02/13/02/07');
INSERT INTO `lookupnews` VALUES ('248', '1170559835', '19', '2021/03/02/13/02/17');
INSERT INTO `lookupnews` VALUES ('249', '1170559835', '19', '2021/03/02/13/02/50');
INSERT INTO `lookupnews` VALUES ('250', '1170559835', '24', '2021/03/02/13/12/11');
INSERT INTO `lookupnews` VALUES ('251', '1170559835', '24', '2021/03/02/13/15/29');
INSERT INTO `lookupnews` VALUES ('252', '1170559835', '24', '2021/03/02/13/15/42');
INSERT INTO `lookupnews` VALUES ('253', '1170559835', '24', '2021/03/02/13/16/42');
INSERT INTO `lookupnews` VALUES ('254', '1170559835', '24', '2021/03/02/13/17/52');
INSERT INTO `lookupnews` VALUES ('255', '1170559835', '24', '2021/03/02/13/17/59');
INSERT INTO `lookupnews` VALUES ('256', '12345', '24', '2021/03/02/13/18/13');
INSERT INTO `lookupnews` VALUES ('257', '12345', '24', '2021/03/02/13/18/26');
INSERT INTO `lookupnews` VALUES ('258', '1170559835', '24', '2021/03/02/13/19/01');
INSERT INTO `lookupnews` VALUES ('259', '1170559835', '24', '2021/03/02/13/19/10');
INSERT INTO `lookupnews` VALUES ('260', '1170559835', '24', '2021/03/02/14/00/07');
INSERT INTO `lookupnews` VALUES ('261', '1170559835', '24', '2021/03/02/15/07/06');
INSERT INTO `lookupnews` VALUES ('262', '1170559835', '19', '2021/03/02/15/07/21');
INSERT INTO `lookupnews` VALUES ('263', '1170559835', '19', '2021/03/02/15/23/32');
INSERT INTO `lookupnews` VALUES ('264', '1170559835', '19', '2021/03/02/15/24/55');
INSERT INTO `lookupnews` VALUES ('265', '1170559835', '19', '2021/03/02/15/58/59');
INSERT INTO `lookupnews` VALUES ('266', '1170559835', '24', '2021/03/02/19/33/12');
INSERT INTO `lookupnews` VALUES ('267', '1170559835', '24', '2021/03/02/19/51/47');
INSERT INTO `lookupnews` VALUES ('268', '1170559835', '24', '2021/03/02/21/38/32');
INSERT INTO `lookupnews` VALUES ('269', '1170559835', '24', '2021/03/02/22/47/21');
INSERT INTO `lookupnews` VALUES ('270', '1170559835', '21', '2021/03/02/22/52/12');
INSERT INTO `lookupnews` VALUES ('271', '1170559835', '22', '2021/03/02/22/52/20');
INSERT INTO `lookupnews` VALUES ('272', '1170559835', '16', '2021/03/02/22/52/48');
INSERT INTO `lookupnews` VALUES ('273', '1170559835', '2', '2021/03/02/22/53/13');
INSERT INTO `lookupnews` VALUES ('274', '1170559835', '17', '2021/03/02/22/53/29');
INSERT INTO `lookupnews` VALUES ('275', '1170559835', '24', '2021/03/02/22/54/21');
INSERT INTO `lookupnews` VALUES ('276', '1170559835', '16', '2021/03/02/22/55/40');
INSERT INTO `lookupnews` VALUES ('277', '1170559835', '19', '2021/03/02/22/55/57');
INSERT INTO `lookupnews` VALUES ('278', '1170559835', '24', '2021/03/02/22/56/03');
INSERT INTO `lookupnews` VALUES ('279', '1170559835', '24', '2021/03/02/22/56/14');
INSERT INTO `lookupnews` VALUES ('280', '1170559835', '19', '2021/03/02/22/56/24');
INSERT INTO `lookupnews` VALUES ('281', '1170559835', '19', '2021/03/02/22/56/36');
INSERT INTO `lookupnews` VALUES ('282', '1170559835', '19', '2021/03/02/22/56/38');
INSERT INTO `lookupnews` VALUES ('283', '1170559835', '19', '2021/03/02/22/56/40');
INSERT INTO `lookupnews` VALUES ('284', '1170559835', '19', '2021/03/02/22/56/42');
INSERT INTO `lookupnews` VALUES ('285', '1170559835', '2', '2021/03/02/22/56/51');
INSERT INTO `lookupnews` VALUES ('286', '1170559835', '4', '2021/03/02/22/56/54');
INSERT INTO `lookupnews` VALUES ('287', '1170559835', '7', '2021/03/02/22/56/57');
INSERT INTO `lookupnews` VALUES ('288', '1170559835', '7', '2021/03/02/22/57/00');
INSERT INTO `lookupnews` VALUES ('289', '1170559835', '21', '2021/03/02/23/11/10');
INSERT INTO `lookupnews` VALUES ('290', '1170559835', '16', '2021/03/02/23/11/36');
INSERT INTO `lookupnews` VALUES ('291', '1170559835', '17', '2021/03/02/23/21/39');
INSERT INTO `lookupnews` VALUES ('292', '1170559835', '5', '2021/03/02/23/51/16');
INSERT INTO `lookupnews` VALUES ('293', '1170559835', '24', '2021/03/02/23/51/51');
INSERT INTO `lookupnews` VALUES ('294', '1170559835', '24', '2021/03/02/23/52/02');
INSERT INTO `lookupnews` VALUES ('295', '1170559835', '19', '2021/03/02/23/52/06');
INSERT INTO `lookupnews` VALUES ('296', '1170559835', '21', '2021/03/02/23/52/51');
INSERT INTO `lookupnews` VALUES ('297', '1170559835', '17', '2021/03/03/05/27/19');
INSERT INTO `lookupnews` VALUES ('298', '1170559835', '24', '2021/03/03/05/27/37');
INSERT INTO `lookupnews` VALUES ('299', '1170559835', '23', '2021/03/03/05/28/07');
INSERT INTO `lookupnews` VALUES ('300', '1170559835', '24', '2021/03/03/05/31/41');
INSERT INTO `lookupnews` VALUES ('301', '1170559835', '24', '2021/03/03/05/48/39');
INSERT INTO `lookupnews` VALUES ('302', '1170559835', '19', '2021/03/03/07/59/21');
INSERT INTO `lookupnews` VALUES ('303', '1170559835', '25', '2021/03/03/12/05/32');
INSERT INTO `lookupnews` VALUES ('304', '1170559835', '16', '2021/03/03/12/05/49');
INSERT INTO `lookupnews` VALUES ('305', '1170559835', '21', '2021/03/03/17/38/02');
INSERT INTO `lookupnews` VALUES ('306', '1170559835', '19', '2021/03/03/17/38/14');
INSERT INTO `lookupnews` VALUES ('307', '1170559835', '24', '2021/03/03/17/59/01');
INSERT INTO `lookupnews` VALUES ('308', '1170559835', '5', '2021/03/03/18/00/18');
INSERT INTO `lookupnews` VALUES ('309', '1170559835', '21', '2021/03/03/18/01/25');
INSERT INTO `lookupnews` VALUES ('310', '1170559835', '23', '2021/03/03/18/01/36');
INSERT INTO `lookupnews` VALUES ('311', '1170559835', '19', '2021/03/03/18/02/36');
INSERT INTO `lookupnews` VALUES ('312', '1170559835', '24', '2021/03/03/18/34/19');
INSERT INTO `lookupnews` VALUES ('313', '1170559835', '19', '2021/03/03/19/15/03');
INSERT INTO `lookupnews` VALUES ('314', '1170559835', '24', '2021/03/03/20/00/44');
INSERT INTO `lookupnews` VALUES ('315', '1170559835', '21', '2021/03/03/20/09/38');
INSERT INTO `lookupnews` VALUES ('316', '1170559835', '2', '2021/03/03/20/13/05');
INSERT INTO `lookupnews` VALUES ('317', '1170559835', '24', '2021/03/03/20/18/32');
INSERT INTO `lookupnews` VALUES ('318', '1170559835', '24', '2021/03/03/20/18/55');
INSERT INTO `lookupnews` VALUES ('319', '1170559835', '19', '2021/03/03/20/19/44');
INSERT INTO `lookupnews` VALUES ('320', '1170559835', '25', '2021/03/03/20/33/33');
INSERT INTO `lookupnews` VALUES ('321', '1170559835', '24', '2021/03/03/20/49/26');
INSERT INTO `lookupnews` VALUES ('322', '1170559835', '24', '2021/03/03/21/16/43');
INSERT INTO `lookupnews` VALUES ('323', '1170559835', '24', '2021/03/03/21/29/39');
INSERT INTO `lookupnews` VALUES ('324', '1170559835', '25', '2021/03/03/23/07/12');
INSERT INTO `lookupnews` VALUES ('325', '1170559835', '21', '2021/03/03/23/23/21');
INSERT INTO `lookupnews` VALUES ('326', '1170559835', '23', '2021/03/03/23/46/04');
INSERT INTO `lookupnews` VALUES ('327', '1170559835', '5', '2021/03/03/23/50/36');
INSERT INTO `lookupnews` VALUES ('328', '1170559835', '24', '2021/03/03/23/54/59');
INSERT INTO `lookupnews` VALUES ('329', '1170559835', '24', '2021/03/04/00/48/08');
INSERT INTO `lookupnews` VALUES ('330', '1170559835', '24', '2021/03/04/00/48/12');
INSERT INTO `lookupnews` VALUES ('331', '1170559835', '4', '2021/03/04/13/32/06');
INSERT INTO `lookupnews` VALUES ('332', '1170559835', '7', '2021/03/04/13/45/54');
INSERT INTO `lookupnews` VALUES ('333', '1170559835', '24', '2021/03/04/13/49/59');
INSERT INTO `lookupnews` VALUES ('334', '1170559835', '19', '2021/03/04/14/38/25');
INSERT INTO `lookupnews` VALUES ('335', '1170559835', '21', '2021/03/04/19/39/51');
INSERT INTO `lookupnews` VALUES ('336', '1170559835', '21', '2021/03/04/19/41/56');
INSERT INTO `lookupnews` VALUES ('337', '12306', '25', '2021/03/05/02/05/58');
INSERT INTO `lookupnews` VALUES ('338', '12306', '25', '2021/03/05/02/06/12');
INSERT INTO `lookupnews` VALUES ('339', '12345', '24', '2021/03/05/02/06/30');
INSERT INTO `lookupnews` VALUES ('340', '12345', '19', '2021/03/05/02/06/36');
INSERT INTO `lookupnews` VALUES ('341', '12345', '21', '2021/03/05/02/06/39');
INSERT INTO `lookupnews` VALUES ('342', '12345', '22', '2021/03/05/02/06/43');
INSERT INTO `lookupnews` VALUES ('343', '12345', '23', '2021/03/05/02/06/47');
INSERT INTO `lookupnews` VALUES ('344', '12345', '24', '2021/03/05/02/06/52');
INSERT INTO `lookupnews` VALUES ('345', '12345', '21', '2021/03/05/02/06/58');
INSERT INTO `lookupnews` VALUES ('346', '12306', '19', '2021/03/05/02/07/14');
INSERT INTO `lookupnews` VALUES ('347', '12306', '19', '2021/03/05/02/07/22');
INSERT INTO `lookupnews` VALUES ('348', '12306', '19', '2021/03/05/02/07/26');
INSERT INTO `lookupnews` VALUES ('349', '12345', '19', '2021/03/05/02/07/41');
INSERT INTO `lookupnews` VALUES ('350', '12345', '19', '2021/03/05/02/08/00');
INSERT INTO `lookupnews` VALUES ('351', '12306', '19', '2021/03/05/02/08/20');
INSERT INTO `lookupnews` VALUES ('352', '12306', '19', '2021/03/05/02/08/29');
INSERT INTO `lookupnews` VALUES ('353', '1234567890', '19', '2021/03/05/02/09/09');
INSERT INTO `lookupnews` VALUES ('354', '1234567890', '19', '2021/03/05/02/09/28');
INSERT INTO `lookupnews` VALUES ('355', '1234567890', '19', '2021/03/05/02/09/54');
INSERT INTO `lookupnews` VALUES ('356', '1234567890', '19', '2021/03/05/02/10/10');
INSERT INTO `lookupnews` VALUES ('357', '1234567890', '19', '2021/03/05/02/10/42');
INSERT INTO `lookupnews` VALUES ('358', '1234567890', '19', '2021/03/05/02/15/04');
INSERT INTO `lookupnews` VALUES ('359', '1234567890', '19', '2021/03/05/02/27/47');
INSERT INTO `lookupnews` VALUES ('360', '1234567890', '3', '2021/03/05/03/17/29');
INSERT INTO `lookupnews` VALUES ('361', '1234567890', '19', '2021/03/05/13/02/03');
INSERT INTO `lookupnews` VALUES ('362', '1234567890', '24', '2021/03/05/13/36/37');
INSERT INTO `lookupnews` VALUES ('363', '1234567890', '24', '2021/03/05/16/18/47');
INSERT INTO `lookupnews` VALUES ('364', '1234567890', '24', '2021/03/05/17/27/02');
INSERT INTO `lookupnews` VALUES ('365', '1234567890', '17', '2021/03/05/19/57/36');
INSERT INTO `lookupnews` VALUES ('366', '1234567890', '24', '2021/03/05/20/49/53');
INSERT INTO `lookupnews` VALUES ('367', '1234567890', '24', '2021/03/05/20/50/12');
INSERT INTO `lookupnews` VALUES ('368', '1234567890', '24', '2021/03/05/21/03/50');
INSERT INTO `lookupnews` VALUES ('369', '1234567890', '22', '2021/03/05/22/59/23');
INSERT INTO `lookupnews` VALUES ('370', '1234567890', '17', '2021/03/06/00/05/35');
INSERT INTO `lookupnews` VALUES ('371', '12306', '7', '2021/03/06/00/11/00');
INSERT INTO `lookupnews` VALUES ('372', '12306', '24', '2021/03/06/00/19/53');
INSERT INTO `lookupnews` VALUES ('373', '12306', '1', '2021/03/06/01/31/27');
INSERT INTO `lookupnews` VALUES ('374', '12345', '24', '2021/03/06/02/08/08');
INSERT INTO `lookupnews` VALUES ('375', '12345', '19', '2021/03/06/02/08/29');
INSERT INTO `lookupnews` VALUES ('376', '12345', '25', '2021/03/06/02/08/55');
INSERT INTO `lookupnews` VALUES ('377', '12345', '25', '2021/03/06/02/09/01');
INSERT INTO `lookupnews` VALUES ('378', '12345', '25', '2021/03/06/02/09/14');
INSERT INTO `lookupnews` VALUES ('379', '12345', '24', '2021/03/06/02/14/18');
INSERT INTO `lookupnews` VALUES ('380', '12345', '24', '2021/03/06/02/14/22');
INSERT INTO `lookupnews` VALUES ('381', '12345', '24', '2021/03/06/02/14/43');
INSERT INTO `lookupnews` VALUES ('382', '12345', '4', '2021/03/06/02/16/05');
INSERT INTO `lookupnews` VALUES ('383', '12345', '21', '2021/03/06/02/58/11');
INSERT INTO `lookupnews` VALUES ('384', '12345', '21', '2021/03/06/02/58/19');
INSERT INTO `lookupnews` VALUES ('385', '12345', '21', '2021/03/06/02/58/48');
INSERT INTO `lookupnews` VALUES ('386', '12345', '5', '2021/03/06/02/58/57');
INSERT INTO `lookupnews` VALUES ('387', '12345', '24', '2021/03/06/03/57/04');
INSERT INTO `lookupnews` VALUES ('388', '12345', '4', '2021/03/06/03/59/24');
INSERT INTO `lookupnews` VALUES ('389', '12345', '19', '2021/03/06/04/33/58');
INSERT INTO `lookupnews` VALUES ('390', '12345', '7', '2021/03/06/04/35/21');
INSERT INTO `lookupnews` VALUES ('391', '12345', '22', '2021/03/06/05/34/52');
INSERT INTO `lookupnews` VALUES ('392', '12345', '24', '2021/03/06/05/35/06');
INSERT INTO `lookupnews` VALUES ('393', '12345', '19', '2021/03/06/09/22/21');
INSERT INTO `lookupnews` VALUES ('394', '12345', '24', '2021/03/06/15/04/44');
INSERT INTO `lookupnews` VALUES ('395', '12345', '24', '2021/03/06/16/14/50');

-- ----------------------------
-- Table structure for lookuppost
-- ----------------------------
DROP TABLE IF EXISTS `lookuppost`;
CREATE TABLE `lookuppost` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `looktime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of lookuppost
-- ----------------------------
INSERT INTO `lookuppost` VALUES ('3', '32', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('4', '33', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('5', '34', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('6', '29', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('7', '29', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('8', '31', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('9', '32', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('10', '31', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('11', '32', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('12', '32', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('13', '32', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('14', '32', '2021/03/04');
INSERT INTO `lookuppost` VALUES ('15', '32', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('16', '32', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('17', '32', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('18', '32', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('19', '9', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('20', '10', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('21', '10', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('22', '10', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('23', '10', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('24', '10', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('25', '10', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('26', '10', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('27', '10', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('28', '10', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('29', '22', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('30', '22', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('31', '22', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('32', '21', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('33', '22', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('34', '32', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('35', '33', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('36', '22', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('37', '39', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('38', '22', '2021/03/05');
INSERT INTO `lookuppost` VALUES ('39', '33', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('40', '39', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('41', '40', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('42', '22', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('43', '41', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('44', '22', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('45', '39', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('46', '32', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('47', '42', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('48', '42', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('49', '22', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('50', '22', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('51', '39', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('52', '33', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('53', '22', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('54', '22', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('55', '39', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('56', '40', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('57', '21', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('58', '22', '2021/03/06');
INSERT INTO `lookuppost` VALUES ('59', '40', '2021/03/06');

-- ----------------------------
-- Table structure for milk
-- ----------------------------
DROP TABLE IF EXISTS `milk`;
CREATE TABLE `milk` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `store` int(11) NOT NULL DEFAULT 0,
  `createtime` varchar(30) DEFAULT NULL,
  `recommend` varchar(200) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `cata` int(30) DEFAULT NULL,
  `stage` int(10) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `bid` int(11) NOT NULL,
  `img` varchar(200) NOT NULL,
  `tag` int(2) NOT NULL DEFAULT 1,
  `gcid` int(10) DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `milk_brand_bid_fk` (`bid`),
  CONSTRAINT `milk_brand_bid_fk` FOREIGN KEY (`bid`) REFERENCES `brand` (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of milk
-- ----------------------------
INSERT INTO `milk` VALUES ('42', '爱他美蓝胖子奶粉', '246', '88', '2021/02/20', '爱他美奶粉值得你信赖', '5', '1', '4', '1', '1', 'http://localhost:8003/static/mamamiya202103052116297679.jpg', '1', '1');
INSERT INTO `milk` VALUES ('43', '淳芮幼儿配方奶粉', '188', '95', '2021/02/18', '你值得信赖的飞鹤好奶粉', '5', '0', '0', '3', '2', 'http://localhost:8003/static/mamamiya202103052113255571.jpg', '1', '1');
INSERT INTO `milk` VALUES ('44', '美赞臣蓝臻奶粉', '250', '86', '2021/02/19', '选奶粉就选美赞臣', '3', '1', '0', '0', '3', 'http://localhost:8003/static/mamamiya202103052115381520.jpg', '1', '1');
INSERT INTO `milk` VALUES ('45', '伊利金领冠奶粉', '200', '98', '2021/02/20', '金领冠好奶粉', '5', '1', '1', '1', '2', 'http://localhost:8003/static/mamamiya202103052117303323.jpg', '1', '1');
INSERT INTO `milk` VALUES ('46', '诺优能', '246', '100', '2021/02/22', '飞鹤好奶粉', '3', '1', '1', '1', '5', 'http://localhost:8003/static/mamamiya202102221457156152.jpg', '1', '1');
INSERT INTO `milk` VALUES ('48', '好奇纸尿布', '300', '100', '2021/02/22', '很棒的', '5', '2', '0', '3', '21', 'http://localhost:8003/static/mamamiya202102221952101796.jpg', '1', '2');
INSERT INTO `milk` VALUES ('49', '帮宝适', '150', '98', '2021/02/22', '这纸尿布很好', '5', '0', '4', '3', '17', 'http://localhost:8003/static/mamamiya202102222143245418.jpg', '1', '2');
INSERT INTO `milk` VALUES ('50', '伊利', '246', '100', '2021/02/22', '这奶粉真不错', '0', '2', '1', '2', '18', 'http://localhost:8003/static/mamamiya202102222144174497.jpg', '1', '2');
INSERT INTO `milk` VALUES ('51', '超薄云柔', '100', '99', '2021/02/22', '这奶粉真不错', '5', '0', '3', '2', '17', 'http://localhost:8003/static/mamamiya20210222214931662.jpg', '1', '2');
INSERT INTO `milk` VALUES ('52', '迪士尼咬咬乐', '100', '100', '2021/02/22', '这咬咬乐真的好用啊', '5', '0', '1', '3', '26', 'http://localhost:8003/static/mamamiya202102222351466700.jpg', '1', '3');
INSERT INTO `milk` VALUES ('56', '玉米咬咬乐', '100', '100', '2021/02/23', '这咬咬乐真good', '4', '3', '2', '3', '28', 'http://localhost:8003/static/mamamiya202102231127285942.jpg', '1', '3');
INSERT INTO `milk` VALUES ('57', '好吃的不得了', '100', '100', '2021/02/23', '这饼干不错', '0', '0', '0', '4', '40', 'http://localhost:8003/static/mamamiya202102232109483435.jpg', '1', '4');
INSERT INTO `milk` VALUES ('58', '小小奶酪', '125', '96', '2021/02/23', '谁动了我的奶酪', '5', '2', '0', '4', '37', 'http://localhost:8003/static/mamamiya202102232115595382.jpg', '1', '4');
INSERT INTO `milk` VALUES ('59', 'rivsea大米', '246', '100', '2021/02/24', '好的', '0', '1', '1', '4', '35', 'http://localhost:8003/static/mamamiya202102241348375420.jpg', '1', '4');
INSERT INTO `milk` VALUES ('60', '伊利', '246', '97', '2021/03/03', '蓝胖子我最爱喝了', '5', '1', '1', '1', '7', 'http://localhost:8003/static/mamamiya202103031359137877.jpg', '1', '1');
INSERT INTO `milk` VALUES ('61', '好好好', '123', '100', '2021/03/03', '啦啦啦拉里', '0', '1', '1', '3', '27', 'http://localhost:8003/static/mamamiya202103031359487039.jpg', '1', '3');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `orid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `nums` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `orderid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orid`),
  KEY `orderdetail_goodorder_orderid_fk` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('127', '45', '1', '200', '20210301231012651');
INSERT INTO `orderdetail` VALUES ('128', '52', '1', '100', '202103012324094825');
INSERT INTO `orderdetail` VALUES ('129', '43', '1', '188', '202103012326104559');
INSERT INTO `orderdetail` VALUES ('130', '45', '1', '200', '202103012330368460');
INSERT INTO `orderdetail` VALUES ('131', '43', '1', '188', '20210301233336111');
INSERT INTO `orderdetail` VALUES ('132', '43', '2', '188', '202103012337124000');
INSERT INTO `orderdetail` VALUES ('133', '42', '1', '246', '202103012337475448');
INSERT INTO `orderdetail` VALUES ('134', '48', '1', '300', '202103012340447797');
INSERT INTO `orderdetail` VALUES ('135', '43', '1', '188', '202103012340447797');
INSERT INTO `orderdetail` VALUES ('136', '45', '1', '200', '202103020030359535');
INSERT INTO `orderdetail` VALUES ('137', '42', '1', '246', '202103020037307503');
INSERT INTO `orderdetail` VALUES ('138', '42', '1', '246', '202103021215149402');
INSERT INTO `orderdetail` VALUES ('139', '46', '1', '246', '202103021215454908');
INSERT INTO `orderdetail` VALUES ('140', '42', '1', '246', '202103021300553090');
INSERT INTO `orderdetail` VALUES ('141', '42', '1', '246', '202103021428214487');
INSERT INTO `orderdetail` VALUES ('142', '43', '1', '188', '202103021429093175');
INSERT INTO `orderdetail` VALUES ('143', '42', '1', '246', '202103021508063828');
INSERT INTO `orderdetail` VALUES ('144', '43', '1', '188', '202103021508063828');
INSERT INTO `orderdetail` VALUES ('145', '52', '1', '100', '202103021508063828');
INSERT INTO `orderdetail` VALUES ('146', '45', '1', '200', '20210302183324849');
INSERT INTO `orderdetail` VALUES ('147', '42', '1', '246', '202103022223064502');
INSERT INTO `orderdetail` VALUES ('148', '46', '1', '246', '202103022254517890');
INSERT INTO `orderdetail` VALUES ('149', '42', '1', '246', '202103022350407187');
INSERT INTO `orderdetail` VALUES ('150', '42', '1', '246', '202103030803068671');
INSERT INTO `orderdetail` VALUES ('151', '42', '1', '246', '202103031916567286');
INSERT INTO `orderdetail` VALUES ('152', '42', '1', '246', '202103032111151570');
INSERT INTO `orderdetail` VALUES ('153', '42', '1', '246', '202103041435263613');
INSERT INTO `orderdetail` VALUES ('154', '42', '1', '246', '20210304143600659');
INSERT INTO `orderdetail` VALUES ('155', '43', '1', '188', '202103041706492244');
INSERT INTO `orderdetail` VALUES ('156', '43', '1', '188', '202103041710542201');
INSERT INTO `orderdetail` VALUES ('157', '42', '1', '246', '202103042226592283');
INSERT INTO `orderdetail` VALUES ('158', '60', '1', '246', '202103052045185774');
INSERT INTO `orderdetail` VALUES ('159', '42', '1', '246', '202103052129026092');
INSERT INTO `orderdetail` VALUES ('160', '45', '1', '200', '202103052152582184');
INSERT INTO `orderdetail` VALUES ('161', '42', '1', '246', '202103052152582184');
INSERT INTO `orderdetail` VALUES ('162', '43', '1', '188', '202103052152582184');
INSERT INTO `orderdetail` VALUES ('163', '44', '1', '250', '202103052152582184');
INSERT INTO `orderdetail` VALUES ('164', '45', '1', '200', '202103052155456409');
INSERT INTO `orderdetail` VALUES ('165', '44', '1', '250', '202103052155456409');
INSERT INTO `orderdetail` VALUES ('166', '42', '1', '246', '202103052155456409');
INSERT INTO `orderdetail` VALUES ('167', '43', '1', '188', '202103052155456409');
INSERT INTO `orderdetail` VALUES ('168', '42', '2', '246', '20210305220458874');
INSERT INTO `orderdetail` VALUES ('169', '42', '3', '246', '202103052217308048');
INSERT INTO `orderdetail` VALUES ('170', '60', '2', '246', '202103052256177382');
INSERT INTO `orderdetail` VALUES ('171', '42', '2', '246', '202103060043595286');
INSERT INTO `orderdetail` VALUES ('172', '49', '1', '150', '202103060043595286');
INSERT INTO `orderdetail` VALUES ('173', '58', '1', '125', '202103060043595286');
INSERT INTO `orderdetail` VALUES ('174', '42', '1', '246', '202103060122157696');
INSERT INTO `orderdetail` VALUES ('175', '42', '1', '246', '202103060141322303');
INSERT INTO `orderdetail` VALUES ('176', '43', '1', '188', '202103060141322303');
INSERT INTO `orderdetail` VALUES ('177', '44', '1', '250', '202103060141322303');
INSERT INTO `orderdetail` VALUES ('178', '43', '1', '188', '202103060416452755');
INSERT INTO `orderdetail` VALUES ('179', '58', '1', '125', '202103060416452755');
INSERT INTO `orderdetail` VALUES ('180', '60', '1', '246', '202103060416452755');
INSERT INTO `orderdetail` VALUES ('181', '43', '1', '188', '202103060459015623');
INSERT INTO `orderdetail` VALUES ('182', '45', '1', '200', '202103060459015623');
INSERT INTO `orderdetail` VALUES ('183', '49', '1', '150', '202103060501393331');
INSERT INTO `orderdetail` VALUES ('184', '51', '1', '100', '202103060501393331');
INSERT INTO `orderdetail` VALUES ('185', '43', '1', '188', '202103060501393331');
INSERT INTO `orderdetail` VALUES ('186', '45', '1', '200', '202103060501393331');
INSERT INTO `orderdetail` VALUES ('187', '42', '1', '246', '20210306092007504');
INSERT INTO `orderdetail` VALUES ('188', '43', '1', '188', '202103061355374418');
INSERT INTO `orderdetail` VALUES ('189', '42', '1', '246', '202103061402211959');
INSERT INTO `orderdetail` VALUES ('190', '42', '1', '246', '202103061528318928');
INSERT INTO `orderdetail` VALUES ('191', '42', '1', '246', '202103061614167693');

-- ----------------------------
-- Table structure for orderstate
-- ----------------------------
DROP TABLE IF EXISTS `orderstate`;
CREATE TABLE `orderstate` (
  `orid` int(11) NOT NULL AUTO_INCREMENT,
  `orname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`orid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of orderstate
-- ----------------------------
INSERT INTO `orderstate` VALUES ('1', '未支付');
INSERT INTO `orderstate` VALUES ('2', '已支付');
INSERT INTO `orderstate` VALUES ('3', '待发货');
INSERT INTO `orderstate` VALUES ('4', '已发货');
INSERT INTO `orderstate` VALUES ('5', '交易完成');
INSERT INTO `orderstate` VALUES ('6', '已关闭');
INSERT INTO `orderstate` VALUES ('8', '退货中');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `pid` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `useraccount` varchar(20) DEFAULT NULL,
  `cid` int(20) DEFAULT NULL,
  `tag` int(2) NOT NULL DEFAULT 1,
  `pass` int(2) DEFAULT 0,
  PRIMARY KEY (`pid`),
  KEY `pcid` (`cid`),
  CONSTRAINT `pcid` FOREIGN KEY (`cid`) REFERENCES `circle` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('9', '备孕前该做什么呢？', '静香', '<p>很多备孕女性都希望自己能赶快怀上宝宝，但往往事与愿违。她们为了怀孕尝试了各种方法，但效果都不是很理想。其实，有时候提高怀孕几率的方法也是非常简单的，我们一起看看吧！</p><p><strong>1.备孕前的检查</strong></p><p>很多女性在备孕前都会去医院进行检查，在发现自己有妇科炎症后，会先治疗然后再备孕。其实根本没有必要的，备孕期间有妇科炎症是很正常的，女性朋友没有必要刻意去避孕。</p><p><strong>2.去医院检查精子质量</strong></p><p>在备孕前带老公去医院检查他的精子质量。在检查之后不要认为万事大吉，老公平常的运动与饮食还是要注意的。多吃富含维生素E的食物，平时多运动，备孕期间别吸烟喝酒，这样精子才会处在有活力的状态下。</p><p><strong>3.弄清自己的生理周期</strong></p><p>有些女性生理周期都处在不稳定的状态下，所以比较着急，以为自己有什么问题。其实只要自身体温没有升高，那么排卵就不会出现问题的，最好不要随便测激素。</p><p><strong>4.弄清自己的强阳周期</strong></p><p>不光女性朋友需要了解自己的生理周期，男性朋友也需要了解自己的强阳周期，强阳周期不一样，所以精子质量也会有很大差别。所以建议夫妻在性爱时，最好在丈夫强阳时进行。</p><p><strong>5.平常多泡泡脚</strong></p><p>有时候多泡脚也能增加受孕机率，如果你的经期一直都比较长，那么建议你试试用艾草或是生姜泡泡脚。注意泡脚时间也要因人而异才行，毕竟每个人的体质不同，承受泡脚时间也大不相同。</p><p><strong>7.保持放松状态</strong></p><p>很多女性备孕期间会给自己太大的压力，这样是不行的，压力太大反而不容易受孕。备孕期间，女性要保持心情放松；享受生活、放松心情，这样反而更容易受孕。</p><p>每对夫妻都希望自己能早日怀孕，这种心情可以理解，但不能给自己太大的压力。所以备孕夫妻一定要保持心情放松，多锻炼，多吃些含有营养价值的食物，健康快乐的生活才更容易受孕</p>', '20210208191718', '1234567890', '4', '1', '1');
INSERT INTO `post` VALUES ('10', '好啦好啦', '静香', '<p>很多备孕女性都希望自己能赶快怀上宝宝，但往往事与愿违。她们为了怀孕尝试了各种方法，但效果都不是很理想。其实，有时候提高怀孕几率的方法也是非常简单的，我们一起看看吧！</p><p><strong>1.备孕前的检查</strong></p><p>很多女性在备孕前都会去医院进行检查，在发现自己有妇科炎症后，会先治疗然后再备孕。其实根本没有必要的，备孕期间有妇科炎症是很正常的，女性朋友没有必要刻意去避孕。</p><p><strong>2.去医院检查精子质量</strong></p><p>在备孕前带老公去医院检查他的精子质量。在检查之后不要认为万事大吉，老公平常的运动与饮食还是要注意的。多吃富含维生素E的食物，平时多运动，备孕期间别吸烟喝酒，这样精子才会处在有活力的状态下。</p><p><strong>3.弄清自己的生理周期</strong></p><p>有些女性生理周期都处在不稳定的状态下，所以比较着急，以为自己有什么问题。其实只要自身体温没有升高，那么排卵就不会出现问题的，最好不要随便测激素。</p><p><strong>4.弄清自己的强阳周期</strong></p><p>不光女性朋友需要了解自己的生理周期，男性朋友也需要了解自己的强阳周期，强阳周期不一样，所以精子质量也会有很大差别。所以建议夫妻在性爱时，最好在丈夫强阳时进行。</p><p><strong>5.平常多泡泡脚</strong></p><p>有时候多泡脚也能增加受孕机率，如果你的经期一直都比较长，那么建议你试试用艾草或是生姜泡泡脚。注意泡脚时间也要因人而异才行，毕竟每个人的体质不同，承受泡脚时间也大不相同。</p><p><strong>7.保持放松状态</strong></p><p>很多女性备孕期间会给自己太大的压力，这样是不行的，压力太大反而不容易受孕。备孕期间，女性要保持心情放松；享受生活、放松心情，这样反而更容易受孕。</p><p>每对夫妻都希望自己能早日怀孕，这种心情可以理解，但不能给自己太大的压力。所以备孕夫妻一定要保持心情放松，多锻炼，多吃些含有营养价值的食物，健康快乐的生活才更容易受孕</p>', '20210208191734', '1234567890', '2', '1', '0');
INSERT INTO `post` VALUES ('11', '你好，我是福大大', '静香', '<p>很多备孕女性都希望自己能赶快怀上宝宝，但往往事与愿违。她们为了怀孕尝试了各种方法，但效果都不是很理想。其实，有时候提高怀孕几率的方法也是非常简单的，我们一起看看吧！</p><p><strong>1.备孕前的检查</strong></p><p>很多女性在备孕前都会去医院进行检查，在发现自己有妇科炎症后，会先治疗然后再备孕。其实根本没有必要的，备孕期间有妇科炎症是很正常的，女性朋友没有必要刻意去避孕。</p><p><strong>2.去医院检查精子质量</strong></p><p>在备孕前带老公去医院检查他的精子质量。在检查之后不要认为万事大吉，老公平常的运动与饮食还是要注意的。多吃富含维生素E的食物，平时多运动，备孕期间别吸烟喝酒，这样精子才会处在有活力的状态下。</p><p><strong>3.弄清自己的生理周期</strong></p><p>有些女性生理周期都处在不稳定的状态下，所以比较着急，以为自己有什么问题。其实只要自身体温没有升高，那么排卵就不会出现问题的，最好不要随便测激素。</p><p><strong>4.弄清自己的强阳周期</strong></p><p>不光女性朋友需要了解自己的生理周期，男性朋友也需要了解自己的强阳周期，强阳周期不一样，所以精子质量也会有很大差别。所以建议夫妻在性爱时，最好在丈夫强阳时进行。</p><p><strong>5.平常多泡泡脚</strong></p><p>有时候多泡脚也能增加受孕机率，如果你的经期一直都比较长，那么建议你试试用艾草或是生姜泡泡脚。注意泡脚时间也要因人而异才行，毕竟每个人的体质不同，承受泡脚时间也大不相同。</p><p><strong>7.保持放松状态</strong></p><p>很多女性备孕期间会给自己太大的压力，这样是不行的，压力太大反而不容易受孕。备孕期间，女性要保持心情放松；享受生活、放松心情，这样反而更容易受孕。</p><p>每对夫妻都希望自己能早日怀孕，这种心情可以理解，但不能给自己太大的压力。所以备孕夫妻一定要保持心情放松，多锻炼，多吃些含有营养价值的食物，健康快乐的生活才更容易受孕</p>', '20210208192419', '1234567890', '5', '1', '1');
INSERT INTO `post` VALUES ('12', '我真的醉了', '静香', '<p>很多备孕女性都希望自己能赶快怀上宝宝，但往往事与愿违。她们为了怀孕尝试了各种方法，但效果都不是很理想。其实，有时候提高怀孕几率的方法也是非常简单的，我们一起看看吧！</p><p><strong>1.备孕前的检查</strong></p><p>很多女性在备孕前都会去医院进行检查，在发现自己有妇科炎症后，会先治疗然后再备孕。其实根本没有必要的，备孕期间有妇科炎症是很正常的，女性朋友没有必要刻意去避孕。</p><p><strong>2.去医院检查精子质量</strong></p><p>在备孕前带老公去医院检查他的精子质量。在检查之后不要认为万事大吉，老公平常的运动与饮食还是要注意的。多吃富含维生素E的食物，平时多运动，备孕期间别吸烟喝酒，这样精子才会处在有活力的状态下。</p><p><strong>3.弄清自己的生理周期</strong></p><p>有些女性生理周期都处在不稳定的状态下，所以比较着急，以为自己有什么问题。其实只要自身体温没有升高，那么排卵就不会出现问题的，最好不要随便测激素。</p><p><strong>4.弄清自己的强阳周期</strong></p><p>不光女性朋友需要了解自己的生理周期，男性朋友也需要了解自己的强阳周期，强阳周期不一样，所以精子质量也会有很大差别。所以建议夫妻在性爱时，最好在丈夫强阳时进行。</p><p><strong>5.平常多泡泡脚</strong></p><p>有时候多泡脚也能增加受孕机率，如果你的经期一直都比较长，那么建议你试试用艾草或是生姜泡泡脚。注意泡脚时间也要因人而异才行，毕竟每个人的体质不同，承受泡脚时间也大不相同。</p><p><strong>7.保持放松状态</strong></p><p>很多女性备孕期间会给自己太大的压力，这样是不行的，压力太大反而不容易受孕。备孕期间，女性要保持心情放松；享受生活、放松心情，这样反而更容易受孕。</p><p>每对夫妻都希望自己能早日怀孕，这种心情可以理解，但不能给自己太大的压力。所以备孕夫妻一定要保持心情放松，多锻炼，多吃些含有营养价值的食物，健康快乐的生活才更容易受孕</p>', '20210208194637', '1234567890', '3', '1', '1');
INSERT INTO `post` VALUES ('13', '打造宝宝健康睡眠，这几个误区要避开', '静香', '<p>孕妈们到了孕后期肚子会越来越大，做什么事都不方便了，觉也睡不好了，都希望早点卸货就轻松了。其实你们的想法太简单了，真正的磨难是从宝宝出生后才开始的。就单单是“宝宝睡眠”这一件事，就够宝妈们要好好学习的了。</p><p>对于宝宝的睡眠，新手妈妈们常会有这些误解，快来看看你中招了没？</p><p><strong>1、宝宝累了就睡了</strong></p><p>宝妈们都会认为宝宝累了自然就会睡觉了，其实宝宝如果特别累的时候是很难入睡的，这就是我们说的“闹觉”。这时是很难哄睡的，虽然闹到最后还是睡着了甚至是哭着睡着的，其实这样的入睡方式是不好的。所以宝妈们平时要注意多观察，一旦发现宝宝有这些情况的时候就说明宝宝已经困了：打打哈欠、揉眼睛、眼睛没神了、挠耳朵、注意力不太集中了，这时宝妈就要立刻及时哄宝宝睡觉了。</p><p><strong>2、白天不允许睡觉</strong></p><p>很多宝妈都认为给宝宝白天少睡点，到了晚上宝宝就睡的香了。其实这个想法是不对的，白天的睡眠是能帮助宝宝的晚上的睡眠的，白天该睡觉的时候你不让宝宝睡觉，让他玩的很累。那么到了晚上宝宝睡觉的时候容易会睡不踏实的，会做梦易惊醒。白天宝宝不睡觉是不行的，但是不能睡多了，如果睡多了确实会影响到宝宝晚上的睡眠的。</p><p><strong>3、哭着入睡&nbsp;</strong></p><p>有的宝妈认为宝宝哭累了就会睡的，这种想法是不对的。宝宝小表达能力有限，他哭肯定是有原因的，这个时候宝妈们就要了解宝宝为什么哭。是不是饿了、还是衣服穿的不舒服、被子是不是厚了宝宝热了、是不是渴了、还是有哪里不舒服了，知道为什么哭了才好哄宝宝睡觉。</p><p><strong>4、大了就能好好睡觉</strong></p><p>宝宝长大了懂事了，睡的肯定比小宝宝好。但是好的睡眠质量对宝宝的整个生长发育过程是很重要的，所以宝妈要从小就要帮宝宝建立一个好的睡眠习惯，这样才有利于宝宝的身体健康。一个良好的睡眠习惯，可以让宝宝们睡得更好更有质量。</p><p><br></p>', '20210209203726', '1234567890', '3', '1', '1');
INSERT INTO `post` VALUES ('21', '受孕那些事你知道多少？', '源静香', '<p>对于怀孕困难的人来说，体外受精（IVF）可以提供一个改变生活的解决方案。但是试管受精的平均成功率只有30%左右。布里格姆妇女医院和马萨诸塞州总医院的研究人员正在开发一种人工智能系统，目的是帮助胚胎学家客观地选择最有可能导致健康出生的胚胎，从而提高试管受精成功率。该团队利用数千个胚胎图像样本和深度学习人工智能（AI）开发了一个系统，能够区分和识别出具有最高成功潜力的胚胎，明显优于来自美国五个不同生育中心的15名经验丰富的胚胎学家。他们的研究结果发表在eLife上。</p><p><strong>人工智能系统将有利于临床胚胎学家和患者</strong></p><p>通讯作者哈迪·沙菲（Hadi Shafiee）博士是布里格姆医学工程部的博士，他说：“我们相信这些系统将有利于临床胚胎学家和患者。该领域的一个主要挑战是决定体外受精过程中需要移植的胚胎。我们的系统在改善临床决策和获得护理方面具有巨大潜力。”</p><p>目前，胚胎学家可以使用的工具是有限的和昂贵的，大多数胚胎学家必须依靠他们的观察技能和专业知识。沙菲和他的同事正在开发一种辅助工具，可以评估传统上在生育中心使用的显微镜拍摄的图像。</p><p>“每一个体外受精周期对我们的病人来说都有太多的危险。胚胎学家会做出许多关键的决定，这些决定会影响患者周期的成功。在我们的人工智能系统的帮助下，胚胎学家将能够比以往任何时候都能更好地选择出能够成功怀孕的胚胎，”MGH体外受精实验室主任、博士、联合首席作者查尔斯·鲍曼（Charles Bormann）说。</p><p><strong>人工智能系统在选择最优质胚胎方面的准确率为90%</strong></p><p>研究小组利用人工授精后113小时捕获的胚胎图像训练人工智能系统。在742个胚胎中，人工智能系统在选择最优质胚胎方面的准确率为90%。研究人员进一步评估了人工智能系统区分人类染色体数量正常的高质量胚胎的能力，并将该系统的性能与训练有素的胚胎学家进行了比较。该系统的准确率约为75%，而胚胎学家的平均准确率为67%。</p><p>作者注意到，在目前阶段，这个系统只打算作为胚胎学家在胚胎选择过程中作出判断的辅助工具。</p><p>“我们的方法显示了人工智能系统的潜力，可以用来帮助胚胎学家选择具有最高植入潜力的胚胎，特别是在高质量的胚胎中，”联合首席作者之一Manoj Kumar Kanakasabathy说。</p>', '2021/00/17', '1234567890', '2', '1', '1');
INSERT INTO `post` VALUES ('22', '受孕那些事，你知道多少？', '源静香', '<p>对于怀孕困难的人来说，体外受精（IVF）可以提供一个改变生活的解决方案。但是试管受精的平均成功率只有30%左右。布里格姆妇女医院和马萨诸塞州总医院的研究人员正在开发一种人工智能系统，目的是帮助胚胎学家客观地选择最有可能导致健康出生的胚胎，从而提高试管受精成功率。该团队利用数千个胚胎图像样本和深度学习人工智能（AI）开发了一个系统，能够区分和识别出具有最高成功潜力的胚胎，明显优于来自美国五个不同生育中心的15名经验丰富的胚胎学家。他们的研究结果发表在eLife上。</p><p><strong>人工智能系统将有利于临床胚胎学家和患者</strong></p><p>通讯作者哈迪·沙菲（Hadi Shafiee）博士是布里格姆医学工程部的博士，他说：“我们相信这些系统将有利于临床胚胎学家和患者。该领域的一个主要挑战是决定体外受精过程中需要移植的胚胎。我们的系统在改善临床决策和获得护理方面具有巨大潜力。”</p><p>目前，胚胎学家可以使用的工具是有限的和昂贵的，大多数胚胎学家必须依靠他们的观察技能和专业知识。沙菲和他的同事正在开发一种辅助工具，可以评估传统上在生育中心使用的显微镜拍摄的图像。</p><p>“每一个体外受精周期对我们的病人来说都有太多的危险。胚胎学家会做出许多关键的决定，这些决定会影响患者周期的成功。在我们的人工智能系统的帮助下，胚胎学家将能够比以往任何时候都能更好地选择出能够成功怀孕的胚胎，”MGH体外受精实验室主任、博士、联合首席作者查尔斯·鲍曼（Charles Bormann）说。</p><p><strong>人工智能系统在选择最优质胚胎方面的准确率为90%</strong></p><p>研究小组利用人工授精后113小时捕获的胚胎图像训练人工智能系统。在742个胚胎中，人工智能系统在选择最优质胚胎方面的准确率为90%。研究人员进一步评估了人工智能系统区分人类染色体数量正常的高质量胚胎的能力，并将该系统的性能与训练有素的胚胎学家进行了比较。该系统的准确率约为75%，而胚胎学家的平均准确率为67%。</p><p>作者注意到，在目前阶段，这个系统只打算作为胚胎学家在胚胎选择过程中作出判断的辅助工具。</p><p>“我们的方法显示了人工智能系统的潜力，可以用来帮助胚胎学家选择具有最高植入潜力的胚胎，特别是在高质量的胚胎中，”联合首席作者之一Manoj Kumar Kanakasabathy说。</p>', '2021/00/17', '1234567890', '1', '1', '1');
INSERT INTO `post` VALUES ('23', '嗯嗯', '源静香', '<p>对于怀孕困难的人来说，体外受精（IVF）可以提供一个改变生活的解决方案。但是试管受精的平均成功率只有30%左右。布里格姆妇女医院和马萨诸塞州总医院的研究人员正在开发一种人工智能系统，目的是帮助胚胎学家客观地选择最有可能导致健康出生的胚胎，从而提高试管受精成功率。该团队利用数千个胚胎图像样本和深度学习人工智能（AI）开发了一个系统，能够区分和识别出具有最高成功潜力的胚胎，明显优于来自美国五个不同生育中心的15名经验丰富的胚胎学家。他们的研究结果发表在eLife上。</p><p><strong>人工智能系统将有利于临床胚胎学家和患者</strong></p><p>通讯作者哈迪·沙菲（Hadi Shafiee）博士是布里格姆医学工程部的博士，他说：“我们相信这些系统将有利于临床胚胎学家和患者。该领域的一个主要挑战是决定体外受精过程中需要移植的胚胎。我们的系统在改善临床决策和获得护理方面具有巨大潜力。”</p><p>目前，胚胎学家可以使用的工具是有限的和昂贵的，大多数胚胎学家必须依靠他们的观察技能和专业知识。沙菲和他的同事正在开发一种辅助工具，可以评估传统上在生育中心使用的显微镜拍摄的图像。</p><p>“每一个体外受精周期对我们的病人来说都有太多的危险。胚胎学家会做出许多关键的决定，这些决定会影响患者周期的成功。在我们的人工智能系统的帮助下，胚胎学家将能够比以往任何时候都能更好地选择出能够成功怀孕的胚胎，”MGH体外受精实验室主任、博士、联合首席作者查尔斯·鲍曼（Charles Bormann）说。</p><p><strong>人工智能系统在选择最优质胚胎方面的准确率为90%</strong></p><p>研究小组利用人工授精后113小时捕获的胚胎图像训练人工智能系统。在742个胚胎中，人工智能系统在选择最优质胚胎方面的准确率为90%。研究人员进一步评估了人工智能系统区分人类染色体数量正常的高质量胚胎的能力，并将该系统的性能与训练有素的胚胎学家进行了比较。该系统的准确率约为75%，而胚胎学家的平均准确率为67%。</p><p>作者注意到，在目前阶段，这个系统只打算作为胚胎学家在胚胎选择过程中作出判断的辅助工具。</p><p>“我们的方法显示了人工智能系统的潜力，可以用来帮助胚胎学家选择具有最高植入潜力的胚胎，特别是在高质量的胚胎中，”联合首席作者之一Manoj Kumar Kanakasabathy说。</p>', '2021/00/17', '1234567890', '2', '1', '0');
INSERT INTO `post` VALUES ('26', '你好', '骨川小夫', '<p>水电费水电费水电费收到发送的发收到</p>', '2021/28/18', '12345', '3', '1', '0');
INSERT INTO `post` VALUES ('27', '备孕开始就要补锌', '源静香', '<p><span style=\"color: rgb(34, 34, 34);\">在孕前淮备怀孕的时候就应该补锌，因为锌，是人体必不可少的微量元素。因此，开始淮备怀孕的时候淮就应该补锌。想更加安全的补锌，可以选择蓝臻妈妈奶粉，摄入量相对可控，还可以补充叶酸、胆碱等哦。这款奶粉有高含量的乳铁蛋白，十分接近母乳。</span></p>', '2021/29/19', '1234567890', '4', '1', '0');
INSERT INTO `post` VALUES ('28', '大家都给宝宝补充什么营养品啦', '源静香', '<p>&lt;div class=\"post_content\"&gt;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div id=\"text_1_0\"&gt;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&gt;</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我一直觉得宝宝那么小，只要母乳或者奶粉够量应该就不会缺各种营养了，可是体检后医生说宝宝缺这个缺那个，让补充ad或者其他的，然后我就特别关注这一块，每次看到宝妈说，给宝宝补充这个那个，我都会留意，然后再去了解下，不过到目前我没有给宝宝吃很多营养品，补过dha，然后就是钙锌这些基本都是必须品，后来看到一款奶粉，dha的含量挺高的，就把dha给宝宝停了，这款奶粉就是美赞臣铂睿，dha含量高，只要宝宝奶量够，平时注意各种蔬菜水果吃着，应该不会缺啥了吧！不过宝宝毕竟长的快，身体缺一点也挺正常的[微笑]&lt;img src=\"http://act.ci123.com/uploads/535/1/20190509/1557413492326.jpg\" max-width=\"610\"&gt;&lt;img src=\"http://act.ci123.com/uploads/535/1/20190509/1557413492392.jpg\" max-width=\"610\"&gt;&nbsp;&nbsp;</p>', '2021/30/19', '1234567890', '4', '1', '0');
INSERT INTO `post` VALUES ('29', '你觉得多啦a梦可爱吗？', '多啦a梦鸭', '<p>多啦a梦真的好可爱啊</p><p><img src=\"http://localhost:8003/static/mamamiya202102191340215858.jpeg\" title=\"\" style=\"\" width=\"218\"></p><p><br></p>', '2021/41/19', '1170559835', '15', '1', '0');
INSERT INTO `post` VALUES ('30', 'h哈哈哈', '野比大雄', '<p>Uuuuu</p>', '2021/54/21', '12306', '2', '1', '0');
INSERT INTO `post` VALUES ('31', '你会穿搭吗？', '骨川小夫', '<p>我爱啦啦啦啦啦啦啦啦绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿</p>', '2021/46/21', '12345', '4', '1', '0');
INSERT INTO `post` VALUES ('32', '祝我快乐', '野比大雄', '<p>我爱啦啦啦啦啦啦啦啦绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿绿</p>', '2021/45/22', '12306', '1', '1', '1');
INSERT INTO `post` VALUES ('33', '今天天气很不错', '野比大雄', '<p>今天天气真的不错</p>', '2021/53/22', '12306', '1', '1', '1');
INSERT INTO `post` VALUES ('34', '什么宝宝用品好用呢？', '骨川小夫', '<p>静香你在干嘛呢</p>', '2021/06/27', '12345', '2', '1', '0');
INSERT INTO `post` VALUES ('35', '推荐一款我小夫最爱的奶粉', '骨川小夫', '<p>很不错的奶粉</p><p><img src=\"http://localhost:8003/static/mamamiya202102281622216540.jpg\" title=\"\" style=\"\" width=\"253\"></p>', '2021/22/28', '12345', '2', '1', '0');
INSERT INTO `post` VALUES ('36', '啦啦啦啦', '多啦a梦鸭', '<p>真的是醉了</p>', '2021/52/02', '1170559835', '2', '1', '0');
INSERT INTO `post` VALUES ('37', '太可怕了', '多啦a梦鸭', '<p>对于怀孕困难的人来说，体外受精（IVF）可以提供一个改变生活的解决方案。但是试管受精的平均成功率只有30%左右。布里格姆妇女医院和马萨诸塞州总医院的研究人员正在开发一种人工智能系统，目的是帮助胚胎学家客观地选择最有可能导致健康出生的胚胎，从而提高试管受精成功率。该团队利用数千个胚胎图像样本和深度学习人工智能（AI）开发了一个系统，能够区分和识别出具有最高成功潜力的胚胎，明显优于来自美国五个不同生育中心的15名经验丰富的胚胎学家。他们的研究结果发表在eLife上。</p><p><strong>人工智能系统将有利于临床胚胎学家和患者</strong></p><p>通讯作者哈迪·沙菲（Hadi Shafiee）博士是布里格姆医学工程部的博士，他说：“我们相信这些系统将有利于临床胚胎学家和患者。该领域的一个主要挑战是决定体外受精过程中需要移植的胚胎。我们的系统在改善临床决策和获得护理方面具有巨大潜力。”</p><p>目前，胚胎学家可以使用的工具是有限的和昂贵的，大多数胚胎学家必须依靠他们的观察技能和专业知识。沙菲和他的同事正在开发一种辅助工具，可以评估传统上在生育中心使用的显微镜拍摄的图像。</p><p>“每一个体外受精周期对我们的病人来说都有太多的危险。胚胎学家会做出许多关键的决定，这些决定会影响患者周期的成功。在我们的人工智能系统的帮助下，胚胎学家将能够比以往任何时候都能更好地选择出能够成功怀孕的胚胎，”MGH体外受精实验室主任、博士、联合首席作者查尔斯·鲍曼（Charles Bormann）说。</p><p><strong>人工智能系统在选择最优质胚胎方面的准确率为90%</strong></p><p>研究小组利用人工授精后113小时捕获的胚胎图像训练人工智能系统。在742个胚胎中，人工智能系统在选择最优质胚胎方面的准确率为90%。研究人员进一步评估了人工智能系统区分人类染色体数量正常的高质量胚胎的能力，并将该系统的性能与训练有素的胚胎学家进行了比较。该系统的准确率约为75%，而胚胎学家的平均准确率为67%。</p><p>作者注意到，在目前阶段，这个系统只打算作为胚胎学家在胚胎选择过程中作出判断的辅助工具。</p><p>“我们的方法显示了人工智能系统的潜力，可以用来帮助胚胎学家选择具有最高植入潜力的胚胎，特别是在高质量的胚胎中，”联合首席作者之一Manoj Kumar Kanakasabathy说。</p>', '2021/35/03', '1170559835', '2', '1', '0');
INSERT INTO `post` VALUES ('38', '今天元宵，你在做什么呢？', '源静香', '<p>大家的宝宝们平常喝什么奶粉呢？</p><p>我们家宝宝喝这个</p><p><img src=\"http://localhost:8003/static/mamamiya202103052121269198.jpg\"></p>', '2021/21/05', '1234567890', null, '1', '0');
INSERT INTO `post` VALUES ('39', '今天元宵，你在做什么呢？', '源静香', '<p>大家的宝宝们平常喝什么奶粉呢？</p><p>我们家宝宝喝这个</p><p><img src=\"http://localhost:8003/static/mamamiya202103052121269198.jpg\" title=\"\" style=\"cursor: nesw-resize;\" width=\"216\"></p>', '2021/21/05', '1234567890', '1', '1', '1');
INSERT INTO `post` VALUES ('40', '今天元宵节你好啊', '野比大雄', '<p><img src=\"http://localhost:8003/static/mamamiya202103060119159586.jpg\" style=\"\" width=\"530\"></p><p>你好</p><p><br></p>', '2021/03/06', '12306', '1', '1', '1');
INSERT INTO `post` VALUES ('41', '你好啊', '野比大雄', '<p><img src=\"http://localhost:8003/static/mamamiya202103060119159586.jpg\" style=\"\" width=\"530\"></p><p>你好</p><p><br></p>', '2021/03/06', '12306', '1', '1', '1');
INSERT INTO `post` VALUES ('42', '今晚是个不眠夜？', '骨川小夫', '<p>真的是很想睡觉啊</p><p><img src=\"http://localhost:8003/static/mamamiya202103060505199065.png\" title=\"\" style=\"outline: red dashed 1px;\"></p>', '2021/03/06', '12345', '8', '1', '1');
INSERT INTO `post` VALUES ('43', '你好', '骨川小夫', '<p>你好<img src=\"http://localhost:8003/static/mamamiya202103061611541220.png\"></p>', '2021/03/06', '12345', '1', '1', '0');

-- ----------------------------
-- Table structure for qcata
-- ----------------------------
DROP TABLE IF EXISTS `qcata`;
CREATE TABLE `qcata` (
  `qcid` int(11) NOT NULL AUTO_INCREMENT,
  `qname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`qcid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of qcata
-- ----------------------------
INSERT INTO `qcata` VALUES ('1', '婴幼儿营养');
INSERT INTO `qcata` VALUES ('3', '婴幼儿保健');
INSERT INTO `qcata` VALUES ('4', '孕期保健');
INSERT INTO `qcata` VALUES ('5', '婴幼儿心理');
INSERT INTO `qcata` VALUES ('6', '婴幼儿常见病');
INSERT INTO `qcata` VALUES ('7', '幼儿园');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `useraccount` int(100) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(150) DEFAULT NULL,
  `qcid` int(11) NOT NULL,
  `createtime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '1170559835', '请问各位宝妈？', '你家宝宝都吃的什么牌子的鱼肝油，我家吃的伊可新的aD,你们都吃了几盒了，每天都吃吗？还是隔几天一喂', '0', null);
INSERT INTO `question` VALUES ('2', '1170559835', '请问下宝妈', '什么牌子的奶粉比较好？', '3', null);
INSERT INTO `question` VALUES ('3', '1170559835', '你好', '这是第二个问题', '5', null);
INSERT INTO `question` VALUES ('4', '1170559835', '交换余生是我非我', '你还好吗', '4', '2021/48/15');
INSERT INTO `question` VALUES ('5', '1170559835', '你好，李欢迎', '你好李焕英', '3', '2021/59/15');
INSERT INTO `question` VALUES ('6', '1170559835', '你好，李欢迎', '你好李焕英', '3', '2021/00/15');
INSERT INTO `question` VALUES ('7', '1234567890', '婴幼儿奶粉选啥牌子好啊？', '宝妈妈们用啥牌子的奶粉亚', '1', '2021/01/15');
INSERT INTO `question` VALUES ('8', '1234567890', '婴幼儿奶粉选啥牌子好啊？', '宝妈妈们用啥牌子的奶粉亚', '1', '2021/01/15');
INSERT INTO `question` VALUES ('9', '1234567890', '婴幼儿奶粉选啥牌子好啊？', '宝妈妈们用啥牌子的奶粉亚', '4', '2021/01/15');
INSERT INTO `question` VALUES ('10', '1234567890', '哈哈哈哈哈哈哈笑死我了', '怎么说呀', '1', '2021/57/16');
INSERT INTO `question` VALUES ('11', '1170559835', '你还好吗？', '我桥', '1', '2021/58/16');
INSERT INTO `question` VALUES ('12', '12345', '小朋友有没有坏心思？', '小朋友会有什么坏心思呢？', '5', '2021/52/16');
INSERT INTO `question` VALUES ('13', '12345', '哈哈哈哈', '咿呀咿呀哟', '7', '2021/13/16');
INSERT INTO `question` VALUES ('14', '1234567890', '唐彪是个傻逼吗？', '我觉得唐彪真的是个傻逼', '6', '2021/20/17');
INSERT INTO `question` VALUES ('15', '12345', '什么牌子的奶粉比较好呢？', '什么牌子的奶粉比较好呢？', '1', '2021/03/06');

-- ----------------------------
-- Table structure for recordgood
-- ----------------------------
DROP TABLE IF EXISTS `recordgood`;
CREATE TABLE `recordgood` (
  `reid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL,
  `useraccount` int(100) DEFAULT NULL,
  `orderid` varchar(200) DEFAULT NULL,
  `buytime` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`reid`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of recordgood
-- ----------------------------
INSERT INTO `recordgood` VALUES ('208', '42', '1234567890', '202102220231142520', '2021/02/22');
INSERT INTO `recordgood` VALUES ('209', '42', '1234567890', '202102220231142520', '2021/02/22');
INSERT INTO `recordgood` VALUES ('210', '42', '1234567890', '202102220231142520', '2021/02/22');
INSERT INTO `recordgood` VALUES ('211', '42', '1234567890', '202102220231142520', '2021/02/22');
INSERT INTO `recordgood` VALUES ('212', '42', '1234567890', '202102220231142520', '2021/02/22');
INSERT INTO `recordgood` VALUES ('213', '43', '1234567890', '202102220231142520', '2021/02/22');
INSERT INTO `recordgood` VALUES ('214', '44', '1234567890', '202102220231142520', '2021/02/22');
INSERT INTO `recordgood` VALUES ('215', '45', '1234567890', '202102220231142520', '2021/02/22');
INSERT INTO `recordgood` VALUES ('216', '43', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('217', '43', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('218', '43', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('219', '43', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('220', '43', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('221', '43', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('222', '43', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('223', '43', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('224', '43', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('225', '43', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('226', '44', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('227', '44', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('228', '45', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('229', '45', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('230', '42', '12345', '202102220241075790', '2021/02/22');
INSERT INTO `recordgood` VALUES ('231', '43', '1170559835', '202102221055144821', '2021/02/22');
INSERT INTO `recordgood` VALUES ('232', '42', '12306', '202102221451231713', '2021/02/22');
INSERT INTO `recordgood` VALUES ('233', '44', '12306', '202102221451231713', '2021/02/22');
INSERT INTO `recordgood` VALUES ('234', '42', '12306', '202102221729466426', '2021/02/22');
INSERT INTO `recordgood` VALUES ('235', '42', '12306', '202102221729466426', '2021/02/22');
INSERT INTO `recordgood` VALUES ('236', '48', '12306', '202102222000462600', '2021/02/22');
INSERT INTO `recordgood` VALUES ('237', '47', '12306', '202102222000462600', '2021/02/22');
INSERT INTO `recordgood` VALUES ('238', '48', '12306', '202102222024169942', '2021/02/22');
INSERT INTO `recordgood` VALUES ('239', '45', '12306', '202102222050332639', '2021/02/22');
INSERT INTO `recordgood` VALUES ('240', '48', '12306', '202102222050332639', '2021/02/22');
INSERT INTO `recordgood` VALUES ('241', '43', '12306', '202102222050332639', '2021/02/22');
INSERT INTO `recordgood` VALUES ('242', '44', '12306', '202102222050332639', '2021/02/22');
INSERT INTO `recordgood` VALUES ('243', '46', '12306', '202102222111213665', '2021/02/22');
INSERT INTO `recordgood` VALUES ('244', '48', '12306', '202102222138396453', '2021/02/22');
INSERT INTO `recordgood` VALUES ('245', '48', '12306', '202102222138396453', '2021/02/22');
INSERT INTO `recordgood` VALUES ('246', '48', '12306', '202102222144599410', '2021/02/22');
INSERT INTO `recordgood` VALUES ('247', '48', '12306', '202102222144599410', '2021/02/22');
INSERT INTO `recordgood` VALUES ('248', '49', '12306', '202102222144599410', '2021/02/22');
INSERT INTO `recordgood` VALUES ('249', '49', '12306', '202102222144599410', '2021/02/22');
INSERT INTO `recordgood` VALUES ('250', '49', '12306', '202102222144599410', '2021/02/22');
INSERT INTO `recordgood` VALUES ('251', '48', '12306', '202102222145041468', '2021/02/22');
INSERT INTO `recordgood` VALUES ('252', '48', '12306', '202102222145041468', '2021/02/22');
INSERT INTO `recordgood` VALUES ('253', '49', '12306', '202102222145041468', '2021/02/22');
INSERT INTO `recordgood` VALUES ('254', '49', '12306', '202102222145041468', '2021/02/22');
INSERT INTO `recordgood` VALUES ('255', '49', '12306', '202102222145041468', '2021/02/22');
INSERT INTO `recordgood` VALUES ('256', '50', '12306', '202102222145041468', '2021/02/22');
INSERT INTO `recordgood` VALUES ('257', '50', '12306', '202102222145041468', '2021/02/22');
INSERT INTO `recordgood` VALUES ('258', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('259', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('260', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('261', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('262', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('263', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('264', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('265', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('266', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('267', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('268', '49', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('269', '48', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('270', '48', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('271', '50', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('272', '50', '12306', '202102222145346249', '2021/02/22');
INSERT INTO `recordgood` VALUES ('273', '51', '12345', '202102222229154434', '2021/02/22');
INSERT INTO `recordgood` VALUES ('274', '51', '12345', '202102222229154434', '2021/02/22');
INSERT INTO `recordgood` VALUES ('275', '50', '12345', '20210222224020722', '2021/02/22');
INSERT INTO `recordgood` VALUES ('276', '52', '12345', '2021022310582817', '2021/02/23');
INSERT INTO `recordgood` VALUES ('277', '52', '12345', '2021022310582817', '2021/02/23');
INSERT INTO `recordgood` VALUES ('278', '52', '12345', '2021022310582817', '2021/02/23');
INSERT INTO `recordgood` VALUES ('279', '52', '12345', '2021022310582817', '2021/02/23');
INSERT INTO `recordgood` VALUES ('280', '52', '12345', '2021022310582817', '2021/02/23');
INSERT INTO `recordgood` VALUES ('281', '52', '12345', '2021022310582817', '2021/02/23');
INSERT INTO `recordgood` VALUES ('282', '56', '12306', '202102231131404299', '2021/02/23');
INSERT INTO `recordgood` VALUES ('283', '56', '12306', '202102231131404299', '2021/02/23');
INSERT INTO `recordgood` VALUES ('284', '58', '12306', '202102232122506574', '2021/02/23');
INSERT INTO `recordgood` VALUES ('285', '58', '12306', '202102232122506574', '2021/02/23');
INSERT INTO `recordgood` VALUES ('286', '58', '12306', '202102232122506574', '2021/02/23');
INSERT INTO `recordgood` VALUES ('287', '57', '12306', '2021022322493717', '2021/02/23');
INSERT INTO `recordgood` VALUES ('288', '57', '12306', '2021022322493717', '2021/02/23');
INSERT INTO `recordgood` VALUES ('289', '58', '12306', '2021022322493717', '2021/02/23');
INSERT INTO `recordgood` VALUES ('290', '45', '12345', '202102281616366447', '2021/02/28');
INSERT INTO `recordgood` VALUES ('291', '43', '12345', '202102281616366447', '2021/02/28');
INSERT INTO `recordgood` VALUES ('292', '42', '12345', '202102281616366447', '2021/02/28');
INSERT INTO `recordgood` VALUES ('293', '42', '12345', '20210228195614515', '2021/02/28');
INSERT INTO `recordgood` VALUES ('388', '42', '1170559835', '202103030803068671', '2021/03/03');
INSERT INTO `recordgood` VALUES ('394', '43', '1170559835', '202103041710542201', '2021/03/04');
INSERT INTO `recordgood` VALUES ('406', '42', '1234567890', '20210305220458874', '2021/03/05');
INSERT INTO `recordgood` VALUES ('407', '42', '1234567890', '20210305220458874', '2021/03/05');
INSERT INTO `recordgood` VALUES ('408', '42', '1234567890', '202103052217308048', '2021/03/05');
INSERT INTO `recordgood` VALUES ('409', '42', '1234567890', '202103052217308048', '2021/03/05');
INSERT INTO `recordgood` VALUES ('410', '42', '1234567890', '202103052217308048', '2021/03/05');
INSERT INTO `recordgood` VALUES ('411', '60', '1234567890', '202103052256177382', '2021/03/05');
INSERT INTO `recordgood` VALUES ('412', '60', '1234567890', '202103052256177382', '2021/03/05');
INSERT INTO `recordgood` VALUES ('413', '42', '12306', '202103060043595286', '2021/03/06');
INSERT INTO `recordgood` VALUES ('414', '42', '12306', '202103060043595286', '2021/03/06');
INSERT INTO `recordgood` VALUES ('415', '49', '12306', '202103060043595286', '2021/03/06');
INSERT INTO `recordgood` VALUES ('416', '58', '12306', '202103060043595286', '2021/03/06');
INSERT INTO `recordgood` VALUES ('417', '42', '12306', '202103060122157696', '2021/03/06');
INSERT INTO `recordgood` VALUES ('421', '43', '12345', '202103060416452755', '2021/03/06');
INSERT INTO `recordgood` VALUES ('422', '58', '12345', '202103060416452755', '2021/03/06');
INSERT INTO `recordgood` VALUES ('423', '60', '12345', '202103060416452755', '2021/03/06');
INSERT INTO `recordgood` VALUES ('424', '49', '12345', '202103060501393331', '2021/03/06');
INSERT INTO `recordgood` VALUES ('425', '51', '12345', '202103060501393331', '2021/03/06');
INSERT INTO `recordgood` VALUES ('426', '43', '12345', '202103060501393331', '2021/03/06');
INSERT INTO `recordgood` VALUES ('427', '45', '12345', '202103060501393331', '2021/03/06');
INSERT INTO `recordgood` VALUES ('428', '42', '12345', '20210306092007504', '2021/03/06');
INSERT INTO `recordgood` VALUES ('429', '43', '12345', '202103061355374418', '2021/03/06');
INSERT INTO `recordgood` VALUES ('430', '42', '12345', '202103061402211959', '2021/03/06');
INSERT INTO `recordgood` VALUES ('431', '42', '12345', '202103061528318928', '2021/03/06');
INSERT INTO `recordgood` VALUES ('432', '42', '12345', '202103061614167693', '2021/03/06');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `ruid` int(100) DEFAULT NULL,
  `useraccount` int(100) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `qid` int(100) DEFAULT NULL,
  `createtime` varchar(30) DEFAULT NULL,
  `tag` int(2) NOT NULL DEFAULT 1,
  `use` int(11) DEFAULT 0,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '1234567890', '1170559835', '不知道哦', '7', '2021/02/15', '1', '1');
INSERT INTO `reply` VALUES ('2', '1234567890', '1170559835', '你好李焕英', '7', '2021/02/14', '1', '1');
INSERT INTO `reply` VALUES ('3', '1234567890', '1170559835', '你好静香', '7', '2021/02/16', '1', '1');
INSERT INTO `reply` VALUES ('16', '1234567890', '12345', '胖虎不要呀', '8', '2021/02/16', '1', '1');
INSERT INTO `reply` VALUES ('17', '1234567890', '12345', '我不喜欢黎啊', '8', '2021/02/16', '1', '0');
INSERT INTO `reply` VALUES ('18', '1234567890', '1234567890', '你在说嘛呢', '8', '2021/02/16', '1', '0');
INSERT INTO `reply` VALUES ('19', '1170559835', '12345', '我好你个头呀好', '11', '2021/02/16', '1', '1');
INSERT INTO `reply` VALUES ('20', '1234567890', '12345', '怎么说咧', '7', '2021/02/16', '1', '0');
INSERT INTO `reply` VALUES ('21', '12345', '12345', '李云龙是个人才啊', '13', '2021/02/17', '1', '1');
INSERT INTO `reply` VALUES ('22', '1234567890', '1234567890', '他本来就是个傻逼', '14', '2021/02/17', '1', '0');
INSERT INTO `reply` VALUES ('23', '1234567890', '1170559835', '咿呀咿呀哟', '8', '2021/02/19', '1', '0');
INSERT INTO `reply` VALUES ('24', '1234567890', '1170559835', '哈哈哈', '10', '2021/02/19', '1', '1');
INSERT INTO `reply` VALUES ('25', '1234567890', '12306', '什么怎么说呢', '10', '2021/02/20', '1', '0');
INSERT INTO `reply` VALUES ('26', '1234567890', '12306', '哈哈哈哈很好', '8', '2021/02/22', '1', '0');
INSERT INTO `reply` VALUES ('27', '1170559835', '1170559835', 'dfsdf sd ', '4', '2021/03/02', '1', '0');
INSERT INTO `reply` VALUES ('28', '1234567890', '1170559835', '好的', '7', '2021/03/04', '1', '0');
INSERT INTO `reply` VALUES ('29', '1234567890', '12306', '很棒', '7', '2021/03/06', '1', '0');
INSERT INTO `reply` VALUES ('30', '12345', '12306', '不太清楚辣', '15', '2021/03/06', '1', '1');

-- ----------------------------
-- Table structure for replyinfo
-- ----------------------------
DROP TABLE IF EXISTS `replyinfo`;
CREATE TABLE `replyinfo` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `ruid` int(11) DEFAULT NULL,
  `useraccount` int(11) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `infoid` int(11) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `rcontent` varchar(100) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `rname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of replyinfo
-- ----------------------------
INSERT INTO `replyinfo` VALUES ('37', null, '1170559835', '乌拉拉', '24', '2021/03/02', '', null, '');
INSERT INTO `replyinfo` VALUES ('38', '1170559835', '12345', '乌拉拉嘿', '24', '2021/03/02', '乌拉拉', '1', '');
INSERT INTO `replyinfo` VALUES ('39', '12345', '1170559835', '嗯嗯嗯', '24', '2021/03/02', '乌拉拉嘿', '1', '');
INSERT INTO `replyinfo` VALUES ('40', null, '12306', '听好的', '25', '2021/03/05', '', null, '');
INSERT INTO `replyinfo` VALUES ('41', null, '12306', '好的', '19', '2021/03/05', '', null, '');
INSERT INTO `replyinfo` VALUES ('42', '12306', '12345', '大雄，胖虎在到处找你', '19', '2021/03/05', '好的', '1', '');
INSERT INTO `replyinfo` VALUES ('43', null, '12306', '啊啊啊啊', '19', '2021/03/05', '', null, '');
INSERT INTO `replyinfo` VALUES ('44', '12306', '1234567890', '我不会让胖虎伤害 你的', '19', '2021/03/05', '啊啊啊啊', '2', '');
INSERT INTO `replyinfo` VALUES ('45', '12345', '1234567890', '是吗', '19', '2021/03/05', '大雄，胖虎在到处找你', '2', '');
INSERT INTO `replyinfo` VALUES ('46', '1170559835', '1234567890', '好的', '24', '2021/03/05', '乌拉拉', '1', '');

-- ----------------------------
-- Table structure for replypost
-- ----------------------------
DROP TABLE IF EXISTS `replypost`;
CREATE TABLE `replypost` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `ruid` int(11) DEFAULT NULL,
  `useraccount` int(30) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `pid` int(30) DEFAULT NULL,
  `createtime` varchar(100) DEFAULT NULL,
  `tag` int(2) DEFAULT 1,
  `rcontent` varchar(100) DEFAULT '' COMMENT '这是被回复层主的说话内容',
  `floor` int(11) DEFAULT NULL,
  `rname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of replypost
-- ----------------------------
INSERT INTO `replypost` VALUES ('20', '1234567890', '1170559835', '<p>你好啊</p>', '10', '2021/02/19', '1', '', null, '');
INSERT INTO `replypost` VALUES ('21', '1170559835', '1234567890', '<p>你好啊</p>', '10', '2021/02/19', '1', '<p>你好啊</p>', '1', '多啦a梦鸭');
INSERT INTO `replypost` VALUES ('22', '1170559835', '1234567890', '<p>你好多啦a梦</p>', '10', '2021/02/19', '1', '<p>你好啊</p>', '1', '多啦a梦鸭');
INSERT INTO `replypost` VALUES ('23', '1234567890', '1234567890', '<p>i love you</p>', '10', '2021/02/19', '1', '<p>你好啊</p>', '2', '源静香');
INSERT INTO `replypost` VALUES ('24', '1170559835', '1234567890', '<p>啦啦啦啦，我是卖报的小画家</p>', '10', '2021/02/19', '1', '<p>你好啊</p>', '1', '多啦a梦鸭');
INSERT INTO `replypost` VALUES ('25', '1234567890', '12345', '<p>啦啦啦啦啦我是卖报的小画家</p>', '10', '2021/02/19', '1', '', null, '');
INSERT INTO `replypost` VALUES ('26', '12345', '1170559835', '<p>你就是个傻子</p>', '10', '2021/02/19', '1', '<p>啦啦啦啦啦我是卖报的小画家</p>', '6', '骨川小夫');
INSERT INTO `replypost` VALUES ('27', '1234567890', '1170559835', '<p>哈哈哈哈哈啦啦啦</p>', '10', '2021/02/19', '1', '<p>i love you</p>', '4', '源静香');
INSERT INTO `replypost` VALUES ('28', '1234567890', '1170559835', '<p>不太好吧</p>', '13', '2021/02/19', '1', '', null, '');
INSERT INTO `replypost` VALUES ('29', '1234567890', '12345', '<p>学到了学到了，谢谢楼主</p>', '21', '2021/02/19', '1', '', null, '');
INSERT INTO `replypost` VALUES ('30', '1234567890', '12345', '<p>爱你么么哒</p>', '21', '2021/02/19', '1', '', null, '');
INSERT INTO `replypost` VALUES ('31', '12345', '1170559835', '<p>你好恶心亚</p>', '21', '2021/02/19', '1', '<p>爱你么么哒</p>', '2', '骨川小夫');
INSERT INTO `replypost` VALUES ('32', '1170559835', '12345', '<p><br></p><p>确实挺可爱的，和我小夫一样</p><p><br></p>', '29', '2021/02/19', '1', '', null, '');
INSERT INTO `replypost` VALUES ('33', '12345', '1170559835', '<p>嗯嗯是的呢</p>', '29', '2021/02/19', '1', '<p><br></p><p>确实挺可爱的，和我小夫一样</p><p><br></p>', '1', '骨川小夫');
INSERT INTO `replypost` VALUES ('34', '1234567890', '1170559835', '<p>务啦啦啦务啦啦啦务辣务啦啦</p>', '10', '2021/02/19', '1', '<p>啦啦啦啦，我是卖报的小画家</p>', '5', '源静香');
INSERT INTO `replypost` VALUES ('35', '1170559835', '1170559835', '<p>好的啊</p>', '13', '2021/02/19', '1', '<p>不太好吧</p>', '1', '多啦a梦鸭');
INSERT INTO `replypost` VALUES ('36', '12345', '1170559835', '<p>骨川小夫好狗啊</p>', '10', '2021/02/19', '1', '<p>啦啦啦啦啦我是卖报的小画家</p>', '6', '骨川小夫');
INSERT INTO `replypost` VALUES ('37', '1170559835', '1170559835', '<p>咿呀咿呀哟</p>', '10', '2021/02/20', '1', '<p>务啦啦啦务啦啦啦务辣务啦啦</p>', '9', '多啦a梦鸭');
INSERT INTO `replypost` VALUES ('38', '1170559835', '12306', '<p>小哆啦小朵拉</p>', '10', '2021/02/20', '1', '<p>你好啊</p>', '1', '多啦a梦鸭');
INSERT INTO `replypost` VALUES ('39', '12345', '12306', '<p>又是你小夫</p>', '21', '2021/02/20', '1', '<p>学到了学到了，谢谢楼主</p>', '1', '骨川小夫');
INSERT INTO `replypost` VALUES ('40', '12306', '12306', '<p>你484傻</p>', '32', '2021/02/22', '1', '', null, '');
INSERT INTO `replypost` VALUES ('41', '12306', '1234567890', '<p>你也差不多啦</p>', '32', '2021/02/22', '1', '<p>你484傻</p>', '1', '野比大雄');
INSERT INTO `replypost` VALUES ('42', '12306', '1170559835', '<p>确实很不错</p>', '33', '2021/02/22', '1', '', null, '');
INSERT INTO `replypost` VALUES ('43', '1170559835', '12306', '<p>哈哈哈哈哈</p>', '33', '2021/02/22', '1', '<p>确实很不错</p>', '1', '多啦a梦鸭');
INSERT INTO `replypost` VALUES ('45', '1234567890', '12345', '<p>静香你在干嘛呢</p>', '32', '2021/02/27', '1', '<p>你也差不多啦</p>', '2', '源静香');
INSERT INTO `replypost` VALUES ('46', '12345', '1170559835', '<p>小夫小夫你在干嘛呢</p>', '34', '2021/02/27', '1', '', null, '');
INSERT INTO `replypost` VALUES ('47', '1170559835', '12345', '<p>没在干嘛啊</p>', '34', '2021/02/27', '1', '<p>小夫小夫你在干嘛呢</p>', '1', '多啦a梦鸭');
INSERT INTO `replypost` VALUES ('48', '12345', '12306', '<p>今天天气真的不错</p>', '32', '2021/02/28', '1', '<p>静香你在干嘛呢</p>', '3', '骨川小夫');
INSERT INTO `replypost` VALUES ('49', '12306', '12306', '<p>今天天气真的不错</p>', '32', '2021/02/28', '1', '<p>今天天气真的不错</p>', '4', '野比大雄');
INSERT INTO `replypost` VALUES ('50', '12345', '1170559835', '<p>哈哈哈哈</p>', '32', '2021/03/04', '1', '<p>静香你在干嘛呢</p>', '3', '骨川小夫');
INSERT INTO `replypost` VALUES ('51', '1234567890', '1234567890', '<p>好的好的</p>', '22', '2021/03/05', '1', '', null, '');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `tag` int(2) DEFAULT 0,
  `role` int(11) DEFAULT 0,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '123456', '123', '1', '2');
INSERT INTO `role` VALUES ('2', '12345', '123', '1', '1');

-- ----------------------------
-- Table structure for shoporder
-- ----------------------------
DROP TABLE IF EXISTS `shoporder`;
CREATE TABLE `shoporder` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(100) DEFAULT NULL,
  `otime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of shoporder
-- ----------------------------
INSERT INTO `shoporder` VALUES ('2', '202102211702581573', '20210221');
INSERT INTO `shoporder` VALUES ('3', '202102211704589514', '20210221');
INSERT INTO `shoporder` VALUES ('4', '202102211706287510', '20210221');
INSERT INTO `shoporder` VALUES ('5', '202102211805097208', '20210221');
INSERT INTO `shoporder` VALUES ('6', '202102211806077241', '20210221');
INSERT INTO `shoporder` VALUES ('7', '202102211806525788', '20210221');
INSERT INTO `shoporder` VALUES ('8', '202102211808122098', '20210221');
INSERT INTO `shoporder` VALUES ('9', '202102211858506516', '20210221');
INSERT INTO `shoporder` VALUES ('10', '202102212119475654', '20210221');
INSERT INTO `shoporder` VALUES ('11', '202102212121007728', '20210221');
INSERT INTO `shoporder` VALUES ('12', '20210222002357318', '20210222');
INSERT INTO `shoporder` VALUES ('13', '202102220024463856', '20210222');
INSERT INTO `shoporder` VALUES ('14', '202102220026123752', '20210222');
INSERT INTO `shoporder` VALUES ('15', '202102220134372981', '20210222');
INSERT INTO `shoporder` VALUES ('16', '202102220231142520', '20210222');
INSERT INTO `shoporder` VALUES ('17', '202102220241075790', '20210222');
INSERT INTO `shoporder` VALUES ('18', '202102221055144821', '20210222');
INSERT INTO `shoporder` VALUES ('19', '2021022211323078', '20210222');
INSERT INTO `shoporder` VALUES ('20', '202102221451231713', '20210222');
INSERT INTO `shoporder` VALUES ('21', '202102221729466426', '20210222');
INSERT INTO `shoporder` VALUES ('22', '202102222000462600', '20210222');
INSERT INTO `shoporder` VALUES ('23', '202102222024169942', '20210222');
INSERT INTO `shoporder` VALUES ('24', '202102222050332639', '20210222');
INSERT INTO `shoporder` VALUES ('25', '202102222111213665', '20210222');
INSERT INTO `shoporder` VALUES ('26', '202102222138396453', '20210222');
INSERT INTO `shoporder` VALUES ('27', '202102222144599410', '20210222');
INSERT INTO `shoporder` VALUES ('28', '202102222145041468', '20210222');
INSERT INTO `shoporder` VALUES ('29', '202102222145346249', '20210222');
INSERT INTO `shoporder` VALUES ('30', '202102222229154434', '20210222');
INSERT INTO `shoporder` VALUES ('31', '20210222224020722', '20210222');
INSERT INTO `shoporder` VALUES ('32', '2021022310582817', '20210223');
INSERT INTO `shoporder` VALUES ('33', '202102231131404299', '20210223');
INSERT INTO `shoporder` VALUES ('34', '202102232122506574', '20210223');
INSERT INTO `shoporder` VALUES ('35', '2021022322493717', '20210223');
INSERT INTO `shoporder` VALUES ('36', '202102281616366447', '20210228');
INSERT INTO `shoporder` VALUES ('37', '20210228195614515', '20210228');

-- ----------------------------
-- Table structure for sku
-- ----------------------------
DROP TABLE IF EXISTS `sku`;
CREATE TABLE `sku` (
  `skid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `store` int(11) DEFAULT NULL,
  PRIMARY KEY (`skid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sku
-- ----------------------------

-- ----------------------------
-- Table structure for skuatrr
-- ----------------------------
DROP TABLE IF EXISTS `skuatrr`;
CREATE TABLE `skuatrr` (
  `skaid` int(11) NOT NULL AUTO_INCREMENT,
  `skid` int(11) DEFAULT NULL,
  `atrrname` varchar(20) DEFAULT NULL,
  `atrrvalue` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`skaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of skuatrr
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `useraccount` varchar(10) NOT NULL,
  `password` varchar(8) NOT NULL,
  `tag` int(2) DEFAULT 0,
  `email` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `avator` varchar(100) DEFAULT NULL,
  `monney` double DEFAULT 0,
  PRIMARY KEY (`userid`,`useraccount`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '多啦a梦鸭', '1170559835', '132', '1', null, '广州市车陂南北三巷横二巷', 'http://localhost:8003/static/mamamiya202102161558319297.jpeg', '10000');
INSERT INTO `user` VALUES ('2', '源静香', '1234567890', '123', '1', null, '广州市车陂南北三巷横二巷', 'http://localhost:8003/static/mamamiya20210305173751868.jpg', '10000');
INSERT INTO `user` VALUES ('3', '骨川小夫', '12345', '123', '1', null, '大别墅', 'http://localhost:8003/static/mamamiya202102161544192104.jpg', '8190');
INSERT INTO `user` VALUES ('4', '野比大雄', '12306', '123', '1', null, '广州市天河区车陂南启明大街北三巷横二巷', 'http://localhost:8003/static/mamamiya202102201051406921.jpg', '10000');
INSERT INTO `user` VALUES ('5', '胖虎', '12333', '123', '1', null, '小木屋', 'http://localhost:8003/static/mamamiya202102211443071248.jpg', '10000');
