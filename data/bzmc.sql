/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : bzmc

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-05-20 14:12:47
*/

SET FOREIGN_KEY_CHECKS=0;

SET NAMES UTF8;
DROP DATABASE IF EXISTS bzmc;
CREATE DATABASE bzmc CHARSET UTF8;
USE bzmc;

#轮播图
-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL COMMENT '标题',
  `img` varchar(128) NOT NULL,
  `href` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES (null, '不知名茶，广院红，不知名茶官网，不知名茶商城，高端茶叶，茶叶购物网站','img/index/banner.png','orderding.html');
INSERT INTO `carousel` VALUES (null, '不知名茶，广院红，不知名茶官网，不知名茶商城，高端茶叶，茶叶购物网站','img/index/banner.png','orderding.html');

#用户表
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `tea_user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) NOT NULL COMMENT '登录名',
  `upwd` varchar(16) NOT NULL COMMENT '密码',
  `email` varchar(64) NOT NULL COMMENT '邮箱',
  `img` varchar(64) NOT NULL COMMENT '头像',
  `phone` varchar(16) NOT NULL COMMENT '电话',
  `gender` int NOT NULL COMMENT '性别',
  `tage` int(2) NOT NULL COMMENT '茶龄',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (null, 'tom','123','ding@tedu.cn','','151','1','15');
INSERT INTO `user` VALUES (null, 'jerry','123456','ding@tedu.cn','','185412589','1','18');
INSERT INTO `user` VALUES (null, 'rose','123456','ding@tedu.cn','','18541541389','0','11');
INSERT INTO `user` VALUES (null, 'jack','123456','ding@tedu.cn','','15454513389','1','14');
INSERT INTO `user` VALUES (null, 'james','123456','ding@tedu.cn','','1514553389','0','1');
INSERT INTO `user` VALUES (null, 'dingding','123456','ding@tedu.cn','','1354654389','1','8');
INSERT INTO `user` VALUES (null, 'dangdang','123456','ding@tedu.cn','','18544589','0','6');
INSERT INTO `user` VALUES (null, 'xiaoxiao','123456','ding@tedu.cn','','15454113389','0','7');
INSERT INTO `user` VALUES (null, 'dada','123456','ding@tedu.cn','','18445642189','1','2');
INSERT INTO `user` VALUES (null,'zhongzhong','123456','ding@tedu.cn','','186545489','1','9');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(32) NOT NULL COMMENT '拍摄取景地',
  `top_title` varchar(100) NOT NULL COMMENT '上标题',
  `bottom_title` varchar(64) NOT NULL COMMENT '下标题',
  `img` varchar(64) NOT NULL COMMENT '茶图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('1', '拍摄取景地', '适宜茶叶生长的地区大都是灵山秀水的风水宝地，海拔高，环境好，特色多，是电影拍摄的绝佳取景地', '电影《卧虎藏龙》拍摄地（黄山毛峰的竹林，安吉白茶的竹海）', 'img/movie/move_01.gif');
INSERT INTO `movie` VALUES ('2', '拍摄取景地', '适宜茶叶生长的地区大都是灵山秀水的风水宝地，海拔高，环境好，特色多，是电影拍摄的绝佳取景地', '电影《卧虎藏龙》拍摄地（黄山毛峰的竹林，安吉白茶的竹海）', 'img/movie/move_01.gif');
INSERT INTO `movie` VALUES ('3', '拍摄取景地', '适宜茶叶生长的地区大都是灵山秀水的风水宝地，海拔高，环境好，特色多，是电影拍摄的绝佳取景地', '电影《卧虎藏龙》拍摄地（黄山毛峰的竹林，安吉白茶的竹海）', 'img/movie/move_01.gif');
INSERT INTO `movie` VALUES ('4', '拍摄取景地', '适宜茶叶生长的地区大都是灵山秀水的风水宝地，海拔高，环境好，特色多，是电影拍摄的绝佳取景地', '电影《卧虎藏龙》拍摄地（黄山毛峰的竹林，安吉白茶的竹海）', 'img/movie/move_01.gif');
INSERT INTO `movie` VALUES ('5', '拍摄取景地', '适宜茶叶生长的地区大都是灵山秀水的风水宝地，海拔高，环境好，特色多，是电影拍摄的绝佳取景地', '电影《卧虎藏龙》拍摄地（黄山毛峰的竹林，安吉白茶的竹海）', 'img/movie/move_01.gif');
INSERT INTO `movie` VALUES ('6', '拍摄取景地', '适宜茶叶生长的地区大都是灵山秀水的风水宝地，海拔高，环境好，特色多，是电影拍摄的绝佳取景地', '电影《卧虎藏龙》拍摄地（黄山毛峰的竹林，安吉白茶的竹海）', 'img/movie/move_01.gif');
INSERT INTO `movie` VALUES ('7', '拍摄取景地', '适宜茶叶生长的地区大都是灵山秀水的风水宝地，海拔高，环境好，特色多，是电影拍摄的绝佳取景地', '电影《卧虎藏龙》拍摄地（黄山毛峰的竹林，安吉白茶的竹海）', 'img/movie/move_01.gif');
INSERT INTO `movie` VALUES ('8', '拍摄取景地', '适宜茶叶生长的地区大都是灵山秀水的风水宝地，海拔高，环境好，特色多，是电影拍摄的绝佳取景地', '电影《卧虎藏龙》拍摄地（黄山毛峰的竹林，安吉白茶的竹海）', 'img/movie/move_01.gif');
INSERT INTO `movie` VALUES ('9', '拍摄取景地', '适宜茶叶生长的地区大都是灵山秀水的风水宝地，海拔高，环境好，特色多，是电影拍摄的绝佳取景地', '电影《卧虎藏龙》拍摄地（黄山毛峰的竹林，安吉白茶的竹海）', 'img/movie/move_01.gif');
INSERT INTO `movie` VALUES ('10', '拍摄取景地', '适宜茶叶生长的地区大都是灵山秀水的风水宝地，海拔高，环境好，特色多，是电影拍摄的绝佳取景地', '电影《卧虎藏龙》拍摄地（黄山毛峰的竹林，安吉白茶的竹海）', 'img/movie/move_01.gif');
INSERT INTO `movie` VALUES ('11', '电影衍生品', '2017年暑期上映的院线电影《绝世高手》制片方包下广院红茶山一片，用茶山所生产的广院红茶作为电影衍生品，用一泡而红的高品质红茶表达对电影上映的期许,由不知名茶提供全程定制。', 'null', 'img/movie/move_06.gif');
INSERT INTO `movie` VALUES ('12', '电影衍生品', '2017年暑期上映的院线电影《绝世高手》制片方包下广院红茶山一片，用茶山所生产的广院红茶作为电影衍生品，用一泡而红的高品质红茶表达对电影上映的期许,由不知名茶提供全程定制。', 'null', 'img/movie/move_07.gif');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL COMMENT '新闻标题',
  `img` varchar(100) NOT NULL,
  `detail` text NOT NULL COMMENT '副标题',
  `create_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of news
-- -----------------------
INSERT INTO `news` VALUES (null, '普洱熟茶才是黑茶？容易出错的十条茶知识', 'img/news/f03bc58d29ccc734f9cae020f4769fd8.jpg','中国的茶文化博大精深，不经过几年的苦学精进，很难成为高手。一些学茶的人，也会经常犯一些常识性的错误，看看这些知识你是不是错了好几年呢?', '2016-08-19');
INSERT INTO `news` VALUES (null, '茶不止能喝，还有这些妙用', 'img/news/046a6e3e68805c1d743d84879c049090.png', ' 立秋一到，气候虽然早晚凉爽，但仍有秋老虎肆虐，想要防暑，需要多喝茶。再者，立秋过后，很多人受到贴秋膘的老谚语的影响，饮食上过于油腻荤腥，此时不妨多喝茶来解油腻。 ', '2016-08-19');
INSERT INTO `news` VALUES (null, '秋季适合喝的十种茶', 'img/news/742724eae759d8d18b83eba4f7e56977.jpg', ' 立秋一到，气候虽然早晚凉爽，但仍有秋老虎肆虐，想要防暑，需要多喝茶。再者，立秋过后，很多人受到贴秋膘的老谚语的影响，饮食上过于油腻荤腥，此时不妨多喝茶来解油腻。 ' ,'2016-08-19');
INSERT INTO `news` VALUES (null, '柑普茶的选择关键', 'img/news/bc0f939b0d66e54fb11bec6575475b7a.jpg', ' 柑普茶无论是外表还是内涵，均浑然天成，堪称一绝。其特点一是入口甘醇、香甜，有独特的花香味和陈香味，这是由于新会柑的果香味特别，普洱茶叶长期吸附了柑皮的果香味所致。 ', '2016-08-17');
INSERT INTO `news` VALUES (null, '蒙顶石花【茶叶百科】', 'img/news/26c83d0a355598ef7df75f5d8d1a53ed.jpg', ' 蒙顶石花，产于四川名山蒙山，是一种扁直形的烘炒绿茶。其造型自然美观，冲泡后芽头舒展，形如山石上的石花。蒙顶石花是蒙顶山茶中最具代表性的茶叶之一，也是中国十大名茶，扁形绿茶的代表，是中国最早出现的扁形茶。 ', '2016-08-16');
INSERT INTO `news` VALUES (null, '普洱熟茶才是黑茶？容易出错的十条茶知识', 'img/news/f03bc58d29ccc734f9cae020f4769fd8.jpg','中国的茶文化博大精深，不经过几年的苦学精进，很难成为高手。一些学茶的人，也会经常犯一些常识性的错误，看看这些知识你是不是错了好几年呢?', '2016-08-19');
INSERT INTO `news` VALUES (null, '茶不止能喝，还有这些妙用', 'img/news/046a6e3e68805c1d743d84879c049090.png', ' 立秋一到，气候虽然早晚凉爽，但仍有秋老虎肆虐，想要防暑，需要多喝茶。再者，立秋过后，很多人受到贴秋膘的老谚语的影响，饮食上过于油腻荤腥，此时不妨多喝茶来解油腻。 ', '2016-08-19');
INSERT INTO `news` VALUES (null, '秋季适合喝的十种茶', 'img/news/742724eae759d8d18b83eba4f7e56977.jpg', ' 立秋一到，气候虽然早晚凉爽，但仍有秋老虎肆虐，想要防暑，需要多喝茶。再者，立秋过后，很多人受到贴秋膘的老谚语的影响，饮食上过于油腻荤腥，此时不妨多喝茶来解油腻。 ' ,'2016-08-19');
INSERT INTO `news` VALUES (null, '柑普茶的选择关键', 'img/news/bc0f939b0d66e54fb11bec6575475b7a.jpg', ' 柑普茶无论是外表还是内涵，均浑然天成，堪称一绝。其特点一是入口甘醇、香甜，有独特的花香味和陈香味，这是由于新会柑的果香味特别，普洱茶叶长期吸附了柑皮的果香味所致。 ', '2016-08-17');
INSERT INTO `news` VALUES (null, '蒙顶石花【茶叶百科】', 'img/news/26c83d0a355598ef7df75f5d8d1a53ed.jpg', ' 蒙顶石花，产于四川名山蒙山，是一种扁直形的烘炒绿茶。其造型自然美观，冲泡后芽头舒展，形如山石上的石花。蒙顶石花是蒙顶山茶中最具代表性的茶叶之一，也是中国十大名茶，扁形绿茶的代表，是中国最早出现的扁形茶。 ', '2016-08-16');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`(
  `cid`   INT(11) NOT NULL AUTO_INCREMENT,
  `uid`   INT(11) NOT NULL,      #用户编号
  `pid`   INT(11) NOT NULL,      #商品编号
  `count` INT(11) NOT NULL,      #购买数量
  `is_checked` BOOLEAN,          #是否已勾选，确定购买
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Table structure for tea
-- ----------------------------
DROP TABLE IF EXISTS `tea`;
CREATE TABLE `tea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(32) NOT NULL COMMENT '名称',
  `img` varchar(64) NOT NULL COMMENT '图片',
  `weight` varchar(32) NOT NULL COMMENT '重量',
  `price` double(10,2) NOT NULL COMMENT '价格',
  `detail` varchar(250) NOT NULL COMMENT '详情',
  `amount` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tea
-- ----------------------------
INSERT INTO `tea` VALUES ('1','广院红茶山VIP','img/buytea/1-1.jpg','1年','498.00','免费获赠 1、一套广院红双喜临门礼盒茶（价值453元） 2、一套不知名茶限量版白瓷功夫茶具（价值268元） 3、工艺定制免服务费，用本茶山鲜叶，定制白茶绿茶，成品茶依旧享受简易装VIP特权价（起定量30斤） 4、享受vip特权价，详细如下','100');
INSERT INTO `tea` VALUES ('2','山大王VIP(广院红茶山)','img/buytea/1-2.jpg','5年','1680.00','免费获赠 1、一套广院红双喜临门礼盒茶（价值453元） 2、一套不知名茶限量版白瓷功夫茶具（价值268元） 3、一亩广院红茶山挂牌五年（价值300元） 4、五份头春茶尝鲜装，包邮配送（价值1000元） 5、工艺定制免服务费，用本茶山鲜叶，定制白茶绿茶，成品茶依旧享受简易装VIP特权（起定量30斤） 6、享受山大王vip特权价，详细如下','100');
INSERT INTO `tea` VALUES ('3','广院红瓶装','img/buytea/1-3.jpg','50g','141.73','种植于中缅边境的佤族村寨之中，整个种植过程不使用任何化肥农药，完全原生态，茶汤透亮柔软，香气异于一般红茶，有一股野劲儿。','100');
INSERT INTO `tea` VALUES ('4','广院红袋装','img/buytea/1-4.jpg','75g','185.90','种植于中缅边境的佤族村寨之中，整个种植过程不使用任何化肥农药，完全原生态，茶汤透亮柔软，香气异于一般红茶，有一股野劲儿。','100');
INSERT INTO `tea` VALUES ('5','正山小种瓶装','img/buytea/1-5.jpg','50g','68.00','','100');
INSERT INTO `tea` VALUES ('6','梨花白-玉白瓷装','img/buytea/1-6.jpg','2陶瓷罐','5,888.61','茶山附近是澳洲坚果园，香蕉园，云南水果园，雨水时节过后，百花百果的香气被山上的小茶树吸收，采摘回来后使用最朴素的白茶晒青工艺，选特别时辰特别天气于竹楼里独家制成，相比一般白茶的素雅，梨花白天生带甜，泡开后即刻绽放浓郁花果香气，茶汤分外甘甜，比大部分白茶多一份清新清爽。品鉴间，美好画面从舌尖鼻翼传感至脑海，仿佛春风拂面而过，细雨滋润心田，遂名梨花白。','100');
INSERT INTO `tea` VALUES ('7','梨花白茶饼','img/buytea/1-7.jpg','100g','492.69','茶山附近是澳洲坚果园，香蕉园，云南水果园，雨水时节过后，百花百果的香气被山上的小茶树吸收，采摘回来后使用最朴素的白茶晒青工艺，选特别时辰特别天气于竹楼里独家制成，相比一般白茶的素雅，梨花白天生带甜，泡开后即刻绽放浓郁花果香气，茶汤分外甘甜，比大部分白茶多一份清新清爽。品鉴间，美好画面从舌尖鼻翼传感至脑海，仿佛春风拂面而过，细雨滋润心田，遂名梨花白。','100');
INSERT INTO `tea` VALUES ('8','梨花白瓶装','img/buytea/1-8.jpg','15g','92.61','茶山附近是澳洲坚果园，香蕉园，云南水果园，雨水时节过后，百花百果的香气被山上的小茶树吸收，采摘回来后使用最朴素的白茶晒青工艺，选特别时辰特别天气于竹楼里独家制成，相比一般白茶的素雅，梨花白天生带甜，泡开后即刻绽放浓郁花果香气，茶汤分外甘甜，比大部分白茶多一份清新清爽。品鉴间，美好画面从舌尖鼻翼传感至脑海，仿佛春风拂面而过，细雨滋润心田，遂名梨花白。','100');
INSERT INTO `tea` VALUES ('9','贡眉','img/buytea/1-9.jpg','30g','38.04','','100');
INSERT INTO `tea` VALUES ('10','贡眉茶饼','img/buytea/2-1.jpg','100g','83.32','','100');
INSERT INTO `tea` VALUES ('11','寿眉','img/buytea/2-2.jpg','30g','36.39','','100');
INSERT INTO `tea` VALUES ('12','寿眉','img/buytea/2-3.jpg','30g','28.00','','100');
INSERT INTO `tea` VALUES ('13','寿眉茶饼','img/buytea/2-4.jpg','100g','80.56','','100');
INSERT INTO `tea` VALUES ('14','大红袍瓶装','img/buytea/2-5.jpg','30g','76.24','外形褐润发乌，条索紧结壮实，香气高扬馥郁，茶汤红橙，通透清澈。','100');
INSERT INTO `tea` VALUES ('15','金边玫瑰瓶装','img/buytea/2-6.jpg','40g','74.46','精选含苞待放的新鲜花朵，采用自然晒干、烘干，制成花茶，富含维生素和氨基酸，具有很强的活血祛斑、调节机理功能。','100');
INSERT INTO `tea` VALUES ('16','限量珍藏mini滇红','img/buytea/2-7.jpg','100g','400.00','滇红生于西南边陲，长于山岭河谷之间。江水滋养，叶秀于林。外形重实，初见已是心悦。入口甘香，久品香郁不减。','100');
INSERT INTO `tea` VALUES ('17','天生一对情侣茶','img/buytea/2-8.jpg','金边玫瑰、广院红各1瓶','199.00','玉龙横卧在山巅，潺潺雪水绽金边。立身于这处玫瑰的花海，脚下是高原土地，茶马古道由此而过。原始的宁静让人感觉仿佛置身于天堂。 “天赋广院，一泡而红”。广院红茶，每年产4季。香气浓郁却异于一般红茶，个性张扬，与之生长的原始环境可谓是相得益彰，也符合广院人的特质，遂取名为广院红。茶山位于云南中缅边境，被阿佤山环抱，著名的佤山云海便可在此观赏。 茶山年平均气温18.9℃，气候终年湿润，降水量1032--1302mm，周围森林覆盖率80%以上。','100');
INSERT INTO `tea` VALUES ('18','广院红红盒套装','img/buytea/2-9.jpg','160g（32袋）','453.98','种植于中缅边境的佤族村寨之中，整个种植过程不使用任何化肥农药，完全原生态，茶汤透亮柔软，香气异于一般红茶，有一股野劲儿。','100');
INSERT INTO `tea` VALUES ('19','广院红红盒单盒装','img/buytea/3-1.jpg','80g（16袋）','239.49','种植于中缅边境的佤族村寨之中，整个种植过程不使用任何化肥农药，完全原生态，茶汤透亮柔软，香气异于一般红茶，有一股野劲儿。','100');
INSERT INTO `tea` VALUES ('20','广院红玻璃瓶套装','img/buytea/3-2.jpg','250g（5瓶）','654.58','种植于中缅边境的佤族村寨之中，整个种植过程不使用任何化肥农药，完全原生态，茶汤透亮柔软，香气异于一般红茶，有一股野劲儿。','100');
INSERT INTO `tea` VALUES ('21','原白瓶装','img/buytea/3-3.jpg','15g','92.54','原本云南佤部落的少数民族就是喝这种茶叶，茶树上摘下来的叶子直接晒，纯太阳晒干了自己留着家用，这种茶好喝没样子，可泡，可煮，凉水冲都是清香暗送，保有自然馈赠的原有品质。','100');
INSERT INTO `tea` VALUES ('22','功夫茶具——男版','img/buytea/3-4.jpg','套','268.00','内含1个滤网、1个盖碗、1个公道杯、7只品茗杯。','100');
INSERT INTO `tea` VALUES ('23','五彩斑斓瓶装','img/buytea/3-5.jpg','40g','181.58','','100');
INSERT INTO `tea` VALUES ('24','安吉白茶瓶装','img/buytea/3-6.jpg','35g','107.27','','100');
INSERT INTO `tea` VALUES ('25','茉莉银针袋装','img/buytea/3-7.jpg','80g','70.95','','100');
INSERT INTO `tea` VALUES ('26','红袍袋装','img/buytea/3-8.jpg','50g','95.51','','100');
INSERT INTO `tea` VALUES ('27','白牡丹瓶装','img/buytea/3-9.jpg','25g','65.60','白牡丹，叶如花瓣，芽如银蕊，汤色杏黄，清澈明亮，滋味鲜醇。叶底浅灰，芽叶各半，叶脉微红，嫩匀明亮。','100');
INSERT INTO `tea` VALUES ('28','白牡丹袋装','img/buytea/4-1.jpg','45g','82.66','太平猴魁生于世外桃源之地，享誉尖茶极品之名，产地多低温多湿、土质多黑沙壤土，得芽叶嫩绿匀亮成朵且肥壮为佳，茶汤绿意盎然，豆香或者兰花香扑鼻，回味甘甜，叶底清晰可见做型时的网格纹。','100');
INSERT INTO `tea` VALUES ('29','太平猴魁瓶装','img/buytea/4-2.jpg','25g','98.67','太平猴魁生于世外桃源之地，享誉尖茶极品之名，产地多低温多湿、土质多黑沙壤土，得芽叶嫩绿匀亮成朵且肥壮为佳，茶汤绿意盎然，豆香或者兰花香扑鼻，回味甘甜，叶底清晰可见做型时的网格纹。','100');
INSERT INTO `tea` VALUES ('30','太平猴魁袋装','img/buytea/4-3.jpg','45g','142.20','黄山毛峰清香冷韵、袭人断腭。上品形条索细扁，芽豪显露，有黄金叶伴身。冲泡后，第一杯就回甘极佳，舌苔上新甜记忆能令人咂味许久。','100');
INSERT INTO `tea` VALUES ('31','黄山毛峰瓶装','img/buytea/4-4.jpg','35g','80.26','恩施玉露，条索紧细、圆直，外形白毫显露，色泽苍翠润绿，形如松针，汤色清澈明亮，香气清鲜，滋味醇爽，叶底嫩绿匀整。冲泡过程小而嫩圆绿叶在杯中舒展，极具观赏价值。','100');
INSERT INTO `tea` VALUES ('32','恩施玉露（二级）瓶装','img/buytea/4-5.jpg','80g','187.69','生普洱是采自新鲜的茶叶采摘杀青后制成毛料，以自然的方式陈放，未经过渥堆发酵处理称为生茶。又因为茶树种年龄不同分为古树普洱（300年以上的茶龄），生态普洱（100多年茶龄），台地普洱（几十年的树种） 其特征：生茶茶性较列，刺激，新制或陈放不久的生茶有强烈的茶味，涩味，汤色较浅或黄绿，不适宜马上喝，尤其是胃不太好的茶友。','100');
INSERT INTO `tea` VALUES ('33','生态普洱饼茶','img/buytea/4-6.jpg','200g','597.18','生普洱是采自新鲜的茶叶采摘杀青后制成毛料，以自然的方式陈放，未经过渥堆发酵处理称为生茶。又因为茶树种年龄不同分为古树普洱（300年以上的茶龄），生态普洱（100多年茶龄），台地普洱（几十年的树种） 其特征：生茶茶性较列，刺激，新制或陈放不久的生茶有强烈的茶味，涩味，汤色较浅或黄绿，不适宜马上喝，尤其是胃不太好的茶友','100');
INSERT INTO `tea` VALUES ('34','古树普洱饼茶','img/buytea/4-7.jpg','357g','1,672.93','生普洱是采自新鲜的茶叶采摘杀青后制成毛料，以自然的方式陈放，未经过渥堆发酵处理称为生茶。又因为茶树种年龄不同分为古树普洱（300年以上的茶龄），生态普洱（100多年茶龄），台地普洱（几十年的树种） 其特征：生茶茶性较列，刺激，新制或陈放不久的生茶有强烈的茶味，涩味，汤色较浅或黄绿，不适宜马上喝，尤其是胃不太好的茶友。','100');
INSERT INTO `tea` VALUES ('35','六堡茶芽袋装','img/buytea/4-8.jpg','100g','81.74','六堡茶外形黑褐，冲泡后方显赤心，其中国红的特色，让每一个品茶之人都情有独钟，回味无穷。','100');
INSERT INTO `tea` VALUES ('36','宜红工夫瓶装','img/buytea/4-9.jpg','50g','80.21','宜红工夫生长在鄂西及神农架一带，山森茂密，河流纵横、气候温和，雨量充沛。其制作有萎凋、揉捻、发酵、干燥四道工序，工艺复杂，技术性强。','100');
INSERT INTO `tea` VALUES ('37','宜红工夫袋装','img/buytea/5-1.jpg','100g','119.20','宜红工夫生长在鄂西及神农架一带，山森茂密，河流纵横、气候温和，雨量充沛。其制作有萎凋、揉捻、发酵、干燥四道工序，工艺复杂，技术性强。','100');
INSERT INTO `tea` VALUES ('38','宁红工夫（三级）瓶装','img/buytea/5-2.jpg','60g','70.62','宁红工夫红香四海，驰名中外，被评价“誉满中华，价甲天下”。其外形美丽紧结，色黑，水色鲜红引人，在拼和茶中极有价值。','100');
INSERT INTO `tea` VALUES ('39','宁红工夫（三级）袋装','img/buytea/5-3.jpg','85g','75.72','宁红工夫红香四海，驰名中外，被评价“誉满中华，价甲天下”。其外形美丽紧结，色黑，水色鲜红引人，在拼和茶中极有价值。','100');
INSERT INTO `tea` VALUES ('40','六堡茶老茶婆砖茶','img/buytea/5-4.jpg','500g','127.20','山水美且秀，名茶出此间。黑石山是六堡名山，山高位置好，日照时长温差小，溪水环绕其间，故茶树得水足，浑身是宝，不仅嫩叶可以制成茶，老叶也被制成了老茶婆，干茶粗老，茶汤浓烈，经得起一泡再泡，依然回味无穷。','100');
INSERT INTO `tea` VALUES ('41','铁观音瓶装','img/buytea/5-5.jpg','75g','98.81','产自福建安溪，也常被称为［安溪铁观音］，以香气卓著闻名于世，世誉七泡有余香，因为该茶沉沉如铁，形美内蕴似观音而得名。工艺严谨，有一种独特的综合感受，被形象地称之为［观音韵］，除了香，还有骨，传统的铁观音，揉捏成颗粒，粒粒紧结，冲泡后扬扬花香下是隐隐内蕴。','100');
INSERT INTO `tea` VALUES ('42','铁观音袋装','img/buytea/5-6.jpg','125g','133.10','产自福建安溪，也常被称为［安溪铁观音］，以香气卓著闻名于世，世誉七泡有余香，因为该茶沉沉如铁，形美内蕴似观音而得名。工艺严谨，有一种独特的综合感受，被形象地称之为［观音韵］，除了香，还有骨，传统的铁观音，揉捏成颗粒，粒粒紧结，冲泡后扬扬花香下是隐隐内蕴。','100');
INSERT INTO `tea` VALUES ('43','信阳毛尖（二级）袋装','img/buytea/5-7.jpg','80g','131.30','信阳毛尖又称豫毛峰，是中国十大名茶之一，被誉为“绿茶之王”。具有“细、圆、光、直、多白毫、香高、味浓、汤色绿”的独特风格。','100');
INSERT INTO `tea` VALUES ('44','刺五加茶瓶装','img/buytea/5-8.jpg','65g','153.96','刺五加茶是东北当地制茶师傅借鉴日照绿茶和福建红茶工艺制成的，闻起来有种咖啡的味道，虽然入口有一点点中药味，但口感温润，微苦中带着清甜。','100');
INSERT INTO `tea` VALUES ('45','信阳毛尖（二级）瓶装','img/buytea/5-9.jpg','50g','100.60','信阳毛尖又称豫毛峰，是中国十大名茶之一，被誉为“绿茶之王”。具有“细、圆、光、直、多白毫、香高、味浓、汤色绿”的独特风格。','100');
INSERT INTO `tea` VALUES ('46','丁香红茶瓶装','img/buytea/6-1.jpg','90g','73.21','丁香红茶采自桃金娘科植物常绿乔木丁香树的干燥花叶制作，亦可作为中药药材，成长在长白山的大森林里面，有很好的清肺作用和止咳的功效。','100');
INSERT INTO `tea` VALUES ('47','凤冈锌硒茶袋装（绿宝石）','img/buytea/6-2.jpg','150g','352.40','富含人体所需的氨基酸和微量元素锌硒，能有效抗衰老。茶汤，叶底，香气都近似名茶碧螺春，价格实惠却远超碧螺春。','100');
INSERT INTO `tea` VALUES ('48','凤冈锌硒茶袋装（蓝宝石）','img/buytea/6-3.jpg','100g','240.50','富含人体所需的氨基酸和微量元素锌硒，能有效抗衰老。茶汤，叶底，香气都近似名茶碧螺春，价格实惠却远超碧螺春。','100');
INSERT INTO `tea` VALUES ('49','银骏眉瓶装','img/buytea/6-4.jpg','50g','251.08','银骏眉色呈银灰，或金黄带红，汤色橙红亮丽，香气甜而持久，茶汤顺滑，口味甘甜，叶底明亮匀整。','100');
INSERT INTO `tea` VALUES ('50','春笋茶袋装','img/buytea/6-5.jpg','110g','69.79','采摘自野茶树春天刚刚冒头的芽苞，用黑茶工艺制作而成。母树野茶生长于海拔3000米高的原始森林腹地，常年人迹罕至，多与野生动物相伴成长，因环境特殊，此茶产量极其有限，珍稀异常。','100');
INSERT INTO `tea` VALUES ('51','桑叶茶瓶装','img/buytea/6-6.jpg','40g','62.67','桑叶茶是采用乌龙茶和绿茶的工艺加工的，色泽清脆，味道和大麦茶相似，香气淡雅，口感温润，能促进胰岛素分泌，降低血糖，缓解糖尿病。','100');
INSERT INTO `tea` VALUES ('52','桑叶茶袋装','img/buytea/6-7.jpg','70g','84.22','桑叶茶是采用乌龙茶和绿茶的工艺加工的，色泽清脆，味道和大麦茶相似，香气淡雅，口感温润，能促进胰岛素分泌，降低血糖，缓解糖尿病。','100');
INSERT INTO `tea` VALUES ('53','蒲公英根茶瓶装','img/buytea/6-8.jpg','170g','95.32','蒲公英根茶使用的是切细且干燥的根，含有丰富的维生素和矿物质，有强化肝脏的作用，能降低胆固醇。在欧洲，蒲公英有“尿床草”之称，可见其利尿作用之强，适合有水肿毛病的人饮用。除此之外，它也能解除消化不良和便秘，清净血液，促进母乳的分泌。蒲公英茶适合（除低血压人群）所有人饮用，尤其适合肝胆功能低下及有炎症的患者、尿路感染者、三高患者饮用。','100');
INSERT INTO `tea` VALUES ('54','功夫茶具——女版','img/buytea/6-9.jpg','套','246.00','','100');
INSERT INTO `tea` VALUES ('55','安吉白茶袋装','img/buytea/7-1.jpg','60g','151.00','安吉白茶属于变异绿茶，轻发酵类。生长与竹乡之称的安吉县内，茶竹相伴，灵韵互发。唯有雨前采摘芽叶为白色，至夏则芽叶恢复绿色与普通绿茶无异。因其变异特性与采摘时间短而在众茶之中倍为珍罕。','100');


