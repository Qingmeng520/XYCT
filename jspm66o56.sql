/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80019
Source Host           : localhost:3306
Source Database       : jspm66o56

Target Server Type    : MYSQL
Target Server Version : 80019
File Encoding         : 65001

Date: 2022-06-27 18:22:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for caixileibie
-- ----------------------------
DROP TABLE IF EXISTS `caixileibie`;
CREATE TABLE `caixileibie` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1655688216397 DEFAULT CHARSET=utf8 COMMENT='菜系类别';

-- ----------------------------
-- Records of caixileibie
-- ----------------------------
INSERT INTO `caixileibie` VALUES ('31', '2022-06-24 12:42:38', '湘菜');
INSERT INTO `caixileibie` VALUES ('32', '2022-06-24 12:42:38', '粤菜');
INSERT INTO `caixileibie` VALUES ('33', '2022-06-24 12:42:38', '甜品');
INSERT INTO `caixileibie` VALUES ('35', '2022-06-24 12:42:38', '川菜');
INSERT INTO `caixileibie` VALUES ('1614665210530', '2022-06-24 14:06:50', '闽菜');
INSERT INTO `caixileibie` VALUES ('1655688216396', '2022-06-20 09:23:36', '全国知名美食');

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1656318999119 DEFAULT CHARSET=utf8 COMMENT='客服';

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES ('1656318999118', '2022-06-27 16:36:38', '1655685764928', null, '‍举报大盘鸡，全用鸡翘翘。\r\n', '感谢同学发来的信息，我们会去核实。\r\n', '0');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='配置文件';

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for discussxiaoyuanmeishi
-- ----------------------------
DROP TABLE IF EXISTS `discussxiaoyuanmeishi`;
CREATE TABLE `discussxiaoyuanmeishi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1656153454039 DEFAULT CHARSET=utf8 COMMENT='校园美食评论表';

-- ----------------------------
-- Records of discussxiaoyuanmeishi
-- ----------------------------
INSERT INTO `discussxiaoyuanmeishi` VALUES ('1656152763399', '2022-06-25 18:26:03', '1655688448236', '1655685668932', '用户评价黄焖鸡');
INSERT INTO `discussxiaoyuanmeishi` VALUES ('1656153454038', '2022-06-25 18:37:33', '1655688117224', '1655685668932', '感觉还行');

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1656317407126 DEFAULT CHARSET=utf8 COMMENT='美食论坛';

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES ('71', '2022-06-24 12:42:38', '关于小鸡炖蘑菇', '小鸡炖蘑菇仔鸡肉鲜嫩，芳香可口，营养价值更高，常吃蘑菇可增强机体免疫力，防止过早衰老，有强身健体等功效，价格也比较合理，对于学生来说是真的非常不错哦。\r\n', '1', '1', '用户名1', '开放');
INSERT INTO `forum` VALUES ('1656317047235', '2022-06-27 16:04:07', '别再吃大盘鸡拉！', '<p>相信同学们在家都吃过家人弄的鸡吧，都有不少的骨头，但是大盘鸡价格便宜肉还这么多还都没有骨头，个人经验来说这些肉全是鸡翘翘，它满足了鸡翘翘的所有特点：骨头少、只有一个中筒骨带脆骨、肉质细嫩。当然鸡翘翘也有许多人特别爱吃的，我的建议是吃了不会影响健康，喜欢吃的还是可以放心大胆吃</p>', '0', '1655685668932', '1001', '开放');
INSERT INTO `forum` VALUES ('1656317407125', '2022-06-27 16:10:06', '猪脚饭划算！', '<p>猪脚饭是我觉得超级划算的一家了，分量多不说味道还好，店家的态度也十分热情，价格中规中矩，每次进食堂问道所有食物窜味的味道就没有食欲，然后就去无脑选择猪脚饭好吧。</p>', '0', '1655685764928', '1002', '开放');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1655691498139 DEFAULT CHARSET=utf8 COMMENT='美食资讯';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1614662723778', '2022-06-24 13:25:22', '美食对生活的意义', '你爱美食吗？', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655687099068.jpeg', '美食的意义不仅在于满足味蕾，填饱我的肚子，更重要的是它让人们发现了一种新的生活方式，学到了更多的技能，成为了更好的自己。美食是一种文化，一种气氛，一种名俗，一种色彩。每个地方的美食代表了不同的地方特色，肠胃是一道门，美食就是钥匙，食物唤醒人们对食物的初始味蕾记忆，而在每位异乡客的眼中，那就是家的味。\r\n');
INSERT INTO `news` VALUES ('1614665471646', '2022-06-24 14:11:10', '春天应该吃什么', '你了解美食吗？了解春天该吃什么吗？', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655687315501.jpeg', '美食的意义不仅在于满足味蕾，填饱我的肚子，更重要的是它让人们发现了一种新的生活方式，学到了更多的技能，成为了更好的自己。美食是一种文化，一种气氛，一种名俗，一种色彩。每个地方的美食代表了不同的地方特色，肠胃是一道门，美食就是钥匙，食物唤醒人们对食物的初始味蕾记忆，而在每位异乡客的眼中，那就是家的味。\r\n');
INSERT INTO `news` VALUES ('1655690791650', '2022-06-24 10:06:31', '平时下课怎么吃', '下课后和同学吃点啥？这2道美食推荐给你，你喜欢哪一道?', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655690408555.jpg', '下课后和同学吃点啥？这2道美食推荐给你，你喜欢哪一道。第一道，炸排骨<img src=\"http://localhost:8080/jspm66o56_war_exploded/upload/1655690706845.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm66o56_war_exploded/upload/1655690706845.jpg\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n第二道：小鸡炖蘑菇<img src=\"http://localhost:8080/jspm66o56_war_exploded/upload/1655690765614.jpeg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm66o56_war_exploded/upload/1655690765614.jpeg\">。喜欢美味的吃客们建议收藏起来！\r\n');
INSERT INTO `news` VALUES ('1655691498138', '2022-06-20 10:18:17', '学校自营食堂', '学校食堂菜品每天更换，菜品是真的多，地点在一食堂大门进去直走到底', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655691063266.jpeg', '高新区唯一一所高校的食堂，而且性价比超高。\r\n想想自己都在这里吃了两年了，今天打饭的时候排了好长的队才想起自己已经是大三的学长就快要离开这里了，又有新生过来还是写点建议供大一参考吧。\r\n这食堂应该可以满足98%同学的需求，你要是每天不重样的吃估计也得一个月才能把这里所有菜吃遍，我两年已经过去我都还没有把这里面的商家都光顾一遍。\r\n最爱的还是套餐，漂汤，鱼骨粉和冒菜。早上偶尔也会去饺子店，对于一个175的男生来讲量不是很多但是味道够了。喜欢的菜:泡椒鱼丁黑椒味肥牛饭咖喱鸡饭\r\n\r\n');

-- ----------------------------
-- Table structure for shangjia
-- ----------------------------
DROP TABLE IF EXISTS `shangjia`;
CREATE TABLE `shangjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiahao` varchar(200) NOT NULL COMMENT '商家号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shangjiaming` varchar(200) NOT NULL COMMENT '商家名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shangjiadizhi` varchar(200) DEFAULT NULL COMMENT '商家地址',
  `yingyezhizhao` varchar(200) DEFAULT NULL COMMENT '营业执照',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiahao` (`shangjiahao`)
) ENGINE=InnoDB AUTO_INCREMENT=1655687657956 DEFAULT CHARSET=utf8 COMMENT='商家';

-- ----------------------------
-- Records of shangjia
-- ----------------------------
INSERT INTO `shangjia` VALUES ('1655686447543', '2022-06-20 08:54:07', '001', '123456', '黄焖鸡米饭', '14586455236', '一食堂01号', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655686445748.jpeg');
INSERT INTO `shangjia` VALUES ('1655686584643', '2022-06-20 08:56:24', '002', '123456', '隆江猪脚饭', '14458765243', '一食堂02号', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655686581789.jpeg');
INSERT INTO `shangjia` VALUES ('1655687547728', '2022-06-20 09:12:27', '003', '123456', '丽姐家常菜', '15689897542', '二食堂一楼2号', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655687546239.jpeg');
INSERT INTO `shangjia` VALUES ('1655687657955', '2022-06-20 09:14:17', '004', '123456', '一顿好菜', '16533659845', '二食堂二楼', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655687656694.jpeg');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1656155478879 DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES ('1614665812952', '2022-06-24 14:16:52', '1614665558093', '41', 'xiaoyuanmeishi', '蔬菜三明治', 'http://localhost:8080/jspm66o56/upload/xiaoyuanmeishi_tupian1.jpg');
INSERT INTO `storeup` VALUES ('1655867586344', '2022-06-22 11:13:05', '1655685668932', '1655688448236', 'xiaoyuanmeishi', '黄焖鸡', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655688414094.jpeg');
INSERT INTO `storeup` VALUES ('1656155478878', '2022-06-25 19:11:18', '1655685668932', '1655689356767', 'xiaoyuanmeishi', '炸排骨', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655689197732.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='token表';

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', '1', 'abo', 'users', '管理员', 'sr6bbgxvaodm3pzv1jitg428ryrxbvz2', '2022-06-24 13:15:40', '2022-06-27 19:16:52');
INSERT INTO `token` VALUES ('2', '1614662834244', '008', 'shangjia', '商家', 'e9aqkgldzolqfuanx6qudfc0k7jjtq2o', '2022-06-24 13:27:24', '2022-06-24 15:14:38');
INSERT INTO `token` VALUES ('3', '1614665558093', '009', 'shangjia', '商家', 'w3yhzj9td8n43nftdju919rssku0oavj', '2022-06-24 14:12:48', '2022-06-24 15:12:48');
INSERT INTO `token` VALUES ('4', '1614662255173', '001', 'yonghu', '用户', 'pcmnbdj48doinraprvh1tpx4hyeahcaq', '2022-06-13 11:00:39', '2022-06-13 12:03:59');
INSERT INTO `token` VALUES ('5', '1614662192634', '001', 'shangjia', '商家', 'ftmz1us6jqp0j0b30j12ozngjm5b6nu0', '2022-06-13 11:02:02', '2022-06-13 12:02:02');
INSERT INTO `token` VALUES ('6', '1655090079538', '001', 'shangjia', '商家', 'amohs6463kisulf2pf58d02gq4y3xx3q', '2022-06-13 11:15:01', '2022-06-13 12:15:02');
INSERT INTO `token` VALUES ('8', '1655686447543', '001', 'shangjia', '商家', 'fww02xiw4wpk4u2rxa58lr4oe0as30b7', '2022-06-20 09:16:16', '2022-06-27 19:10:44');
INSERT INTO `token` VALUES ('9', '1655686584643', '002', 'shangjia', '商家', 'khiiviuo377k916s9udigp4gjt1wdnlr', '2022-06-20 09:28:17', '2022-06-20 10:28:17');
INSERT INTO `token` VALUES ('10', '1655687547728', '003', 'shangjia', '商家', 'mrxd2ykg6ury5v0o012rmwz8bfzaonch', '2022-06-20 09:33:54', '2022-06-20 10:33:54');
INSERT INTO `token` VALUES ('11', '1655687657955', '004', 'shangjia', '商家', 'gxubvj1ql02ia3pz1dd65lgu2x06lv4e', '2022-06-20 09:37:14', '2022-06-25 18:42:14');
INSERT INTO `token` VALUES ('12', '1655685668932', '1001', 'yonghu', '用户', '5n5mdq1vtnyljwqym7iflofzf35utm99', '2022-06-20 09:46:41', '2022-06-27 18:35:53');
INSERT INTO `token` VALUES ('13', '1655685764928', '1002', 'yonghu', '用户', 'usix6o7ukcvtxy5fgiemkhemrz0d7lxl', '2022-06-27 16:04:39', '2022-06-27 17:04:39');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'abo', 'abo', '管理员', '2022-06-24 12:42:38');

-- ----------------------------
-- Table structure for xiaoyuanmeishi
-- ----------------------------
DROP TABLE IF EXISTS `xiaoyuanmeishi`;
CREATE TABLE `xiaoyuanmeishi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiahao` varchar(200) DEFAULT NULL COMMENT '商家号',
  `shangjiaming` varchar(200) DEFAULT NULL COMMENT '商家名',
  `caipin` varchar(200) DEFAULT NULL COMMENT '菜品',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `fenliang` varchar(200) DEFAULT NULL COMMENT '分量',
  `shicai` varchar(200) DEFAULT NULL COMMENT '食材',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1655689518160 DEFAULT CHARSET=utf8 COMMENT='校园美食';

-- ----------------------------
-- Records of xiaoyuanmeishi
-- ----------------------------
INSERT INTO `xiaoyuanmeishi` VALUES ('1655688117224', '2022-06-20 09:21:56', '001', '黄焖鸡米饭', '柠檬味无骨鸡爪', '湘菜', '100+', '鸡爪', '22', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655688012869.jpeg', '鸡爪是很多吃货心中的挚爱，特别是炎炎夏日，即使再没胃口，光听到“鸡爪”，就开始咽口水了，再加上“柠檬”，估计口水已经滴到了键盘上。\r\n市面上的无骨凤爪千千万，好吃又健康的可不多。\r\n这期给大家安利的乐爪哥无骨凤爪，美味酸爽，新鲜健康，吃过的人无不感叹：味道太绝了，比啃骨头爽10倍！！\r\n\r\n', '0', '0', '2022-06-27 16:24:53', '12');
INSERT INTO `xiaoyuanmeishi` VALUES ('1655688448236', '2022-06-20 09:27:27', '001', '黄焖鸡米饭', '黄焖鸡', '全国知名美食', '100+', '南充土鸡', '18', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655688414094.jpeg', '黄焖鸡是一种比较温和的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%A3%9F%E7%89%A9/85041\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">食物，含有的热量是比较高的，可以说是老少皆宜的美食。黄焖鸡的鸡汁经过特有的烹饪方式，自成独特风味，鲜香扑鼻，让人胃口大开，黄焖鸡讲求一个焖字，火候的掌握也是十分重要的。这道菜里，香菇起了绝对的提味作用，千万不能省略。菜炒至鸡肉上色后，还需要炖<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%85%AE/5877925\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">煮入味，所以鸡肉不要切的太小，以免最后煮碎了，肉质也可以不用选择三黄鸡等一类较早熟的鸡肉，用稍微肥一些的母鸡、土鸡来做，或者单买鸡腿，总之越炖鸡肉越香，汤汁越发鲜美，这才是最好吃的。\r\n', '1', '1', '2022-06-25 18:35:18', '19');
INSERT INTO `xiaoyuanmeishi` VALUES ('1655688640338', '2022-06-20 09:30:40', '002', '隆江猪脚饭', '猪脚饭', '川菜', '100+', '猪脚', '28', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655688623443.jpeg', '猪脚饭，感觉入口软烂无渣、肥而不腻、香气四溢、胶棉而不沾牙，达到了落口消融的境界，肘子丰富的胶质和蹄筋“筋、骨、肉的的错综复杂”体现得淋漓精致，真是大饱口福，果然名不虚传。\r\n', '0', '0', '2022-06-25 18:32:53', '2');
INSERT INTO `xiaoyuanmeishi` VALUES ('1655688823982', '2022-06-20 09:33:43', '002', '隆江猪脚饭', '锅烧猪蹄儿', '川菜', '100+', '猪蹄', '28', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655688714595.jpg', '红烧猪蹄是非常美味的一道菜，红烧猪蹄的味道非常鲜美，但是做菜的工序要比炖猪蹄麻烦一些，但是非常好吃，那怎么形容红烧猪蹄口感呢？红烧猪蹄软糯，而且入口即化非常嫩，首先把猪蹄用水慢慢冲洗干净，然后在锅里加入清水，清水开了把猪蹄放到锅里慢慢煮半个小时捞出来，在锅里加入食用油，食用油开了加入葱姜蒜末翻炒一会，再加入辣椒爆炒香，然后加入猪蹄翻炒一会，再加入调料和料汁慢慢炖半个小时，最后慢慢收汁就可以了，这样就做好了。\r\n', '0', '0', '2022-06-20 09:47:53', '1');
INSERT INTO `xiaoyuanmeishi` VALUES ('1655688952525', '2022-06-20 09:35:51', '003', '丽姐家常菜', '青椒肉丝', '全国知名美食', '100+', '猪肉', '12', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655688889600.jpeg', '青椒肉丝，是以青椒为主要食材的家常菜，属于<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B7%9D%E8%8F%9C/26409\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">川菜菜系。口味香辣，菜品色香味俱全，操作简单，营养价值丰富。\r\n青椒肉丝属于辛辣类菜品，眼疾患者、食管炎、胃肠炎、胃溃疡、痔疮患者应少吃或忌食。同时有火热病症或<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%98%B4%E8%99%9A%E7%81%AB%E6%97%BA/9547507\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">阴虚火旺，<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%AB%98%E8%A1%80%E5%8E%8B/195863\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">高血压，肺结核病的人慎食。\r\n\r\n', '0', '0', null, '0');
INSERT INTO `xiaoyuanmeishi` VALUES ('1655689024600', '2022-06-20 09:37:03', '003', '丽姐家常菜', '笋子炒肉', '全国知名美食', '100+', '猪肉', '15', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655688988563.jpeg', '竹笋炒肉，是一道常见菜肴。以<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%B2%9C%E7%AC%8B/1592608\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">鲜笋、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%8C%AA%E8%82%89/486463\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">猪肉、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%A6%99%E8%91%B1/6795315\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">香葱作为主要食材，盐、味精、糖、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%96%99%E9%85%92/5744989\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">料酒、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%85%B1%E6%B2%B9/1246\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">酱油、<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%A3%9F%E7%94%A8%E6%B2%B9/10955297\" style=\"color: rgb(19, 110, 194); text-decoration-line: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">食用油作为调料制作而成。口味咸鲜。\r\n', '0', '0', null, '0');
INSERT INTO `xiaoyuanmeishi` VALUES ('1655689160177', '2022-06-20 09:39:19', '004', '一顿好菜', '小鸡炖蘑菇', '全国知名美食', '100+', '鸡', '12', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655689079213.jpeg', '小鸡炖蘑菇是东北的一道名菜，虽然做法很简单，但是味道却非常的鲜美，鸡用家养的小笨鸡，肉质紧实、口味鲜美。加上山里采的野生榛蘑，滑嫩爽口、味道鲜美、营养丰富，炖好以后那鲜美的味道简直无法形容。\r\n', '0', '0', null, '0');
INSERT INTO `xiaoyuanmeishi` VALUES ('1655689356767', '2022-06-20 09:42:36', '004', '一顿好菜', '炸排骨', '川菜', '100+', '排骨', '28', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655689197732.jpg', '炸排骨是一道四川省的地方名菜，属于川菜系。外酥里嫩，不硬不软，块块不连，香甜咸淡适口。炸排骨的特色外酥里嫩，不硬不软，块块不连，香甜咸淡适口。\r\n', '5', '6', '2022-06-27 15:16:09', '12');
INSERT INTO `xiaoyuanmeishi` VALUES ('1655689518159', '2022-06-20 09:45:17', '004', '一顿好菜', '锅包肉', '全国知名美食', '100+', '猪肉', '18', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655689451619.jpg', '锅包肉（英文名：Fried Pork in Scoop），原名<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%94%85%E7%88%86%E8%82%89\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">锅爆肉，光绪年间始创自哈尔滨道台府府尹杜学瀛厨师<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%83%91%E5%85%B4%E6%96%87/9187552\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">郑兴文之手。 [20]  成菜后，色泽金黄，口味酸甜。\r\n锅包肉是为适应外宾口味，把咸鲜口味的“<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%84%A6%E7%83%A7%E8%82%89%E6%9D%A1/8837769\" style=\"color: rgb(19, 110, 194); text-decoration-line: none;\">焦烧肉条”改成了一道酸甜口味的菜肴。通常将猪里脊肉切片腌入味，裹上炸浆，下锅炸至金黄色捞起，再下锅拌炒勾芡即成。\r\n2022年，哈尔滨锅包肉入选国家《地标美食名录》。\r\n\r\n', '0', '0', null, '0');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1655686220143 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1655685668932', '2022-06-20 08:41:08', '1001', '123456', '小李', '20', '男', '17390415710', '2271309418@qq.com', '1栋1102', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655685665666.jpeg');
INSERT INTO `yonghu` VALUES ('1655685764928', '2022-06-20 08:42:44', '1002', '123456', '聪明的水獭', '21', '男', '15463255894', '2271309418@qq.com', '2栋2127', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655685759461.jpeg');
INSERT INTO `yonghu` VALUES ('1655685876971', '2022-06-20 08:44:36', '1003', '123456', '橙汁校草', '20', '女', '12547854236', '2271309418@qq.com', '6栋6514', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655685871994.jpeg');
INSERT INTO `yonghu` VALUES ('1655685956835', '2022-06-20 08:45:56', '1004', '123456', '红红', '19', '女', '15568426879', '2271309418@qq.com', '5栋5102', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655685956048.jpeg');
INSERT INTO `yonghu` VALUES ('1655686149120', '2022-06-20 08:49:09', '1005', '123456', '蒲学长', '20', '男', '19854658821', '2271309418@qq.com', '2栋2214', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655686147660.jpeg');
INSERT INTO `yonghu` VALUES ('1655686220142', '2022-06-20 08:50:20', '1006', '123456', '黄继东', '21', '男', '15587965245', '2271309418@qq.com', '3栋3421', 'http://localhost:8080/jspm66o56_war_exploded/upload/1655686219392.jpeg');

-- ----------------------------
-- Table structure for zaixianxiadan
-- ----------------------------
DROP TABLE IF EXISTS `zaixianxiadan`;
CREATE TABLE `zaixianxiadan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiahao` varchar(200) DEFAULT NULL COMMENT '商家号',
  `shangjiaming` varchar(200) DEFAULT NULL COMMENT '商家名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `caiming` varchar(200) DEFAULT NULL COMMENT '菜名',
  `caixi` varchar(200) DEFAULT NULL COMMENT '菜系',
  `fenliang` varchar(200) DEFAULT NULL COMMENT '分量',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `zongjia` int DEFAULT NULL COMMENT '总价',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1656149879027 DEFAULT CHARSET=utf8 COMMENT='在线下单';

-- ----------------------------
-- Records of zaixianxiadan
-- ----------------------------
INSERT INTO `zaixianxiadan` VALUES ('1655694930144', '2022-06-20 11:15:29', '001', '黄焖鸡米饭', '', '小李', '17390415710', '1栋1102', '', '全国知名美食', '100+', '18', null, '0', null, '否', null, '未支付');
INSERT INTO `zaixianxiadan` VALUES ('1656149879026', '2022-06-25 17:37:58', '004', '一顿好菜', '1001', '小李', '17390415710', '1栋1102', '炸排骨', '川菜', '100+', '28', '1', '28', '2022-06-25 17:37:57', '是', '审核回复', '已支付');
