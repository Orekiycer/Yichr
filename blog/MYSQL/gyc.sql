/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : gyc

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-03-07 23:19:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `picture` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `cid` (`cid`),
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('2', ' 欢迎来到LPL,第一赛区', '荣获 S8,S9全球总决赛冠军赛区', '2020-02-29 22:54:09', '5', '99999', null, '/static/img/s8.jpg');
INSERT INTO `article` VALUES ('3', '阿水去哪了，冠军ad何去何从？', '要说这个转会季热度最高的选手是谁，JackeyLove绝对算是大家的首选回答，自从他官宣成为自由人之后，关于他要加入XX俱乐部的消息就层出不穷。先是TES、SN再到RNG，最后在转会窗口关闭之后多方爆料称阿水已经续约了iG。但是最近又有人因为阿水可能没有参加iG的训练赛开始怀疑他是否真的续约起来。不过就在大家纷纷猜测的时候，央视官博出来暗示了：\"你们都别猜了，阿水去搞三农去了！\"（手动狗头）', '2020-02-28 21:50:49', '1', '45485', null, '/static/img/jkl2.png');
INSERT INTO `article` VALUES ('4', '英雄联盟职业联赛', '英雄联盟职业联赛，简称LPL(League of Legends Pro League)，是中国大陆最高级别的英雄联盟职业比赛，同时也是中国大陆赛区通往每年季中冠军赛和全球总决赛的唯一渠道。每年的LPL由春季赛和夏季赛组成，每季分为常规赛与季后赛两部分。常规赛积分排名前八的战队将晋级季后赛，为赛季总冠军以及高额的赛事奖金继续展开争夺。', '2020-02-28 22:43:53', '5', '45645', null, '/static/img/lpl.jpg');
INSERT INTO `article` VALUES ('5', 'S8冠军中单电竞“肖央”', '2018年在LPL春季赛，IG战队挺进季后赛，在季后赛\r\n\r\nS8夺冠(4张)\r\n 以2:3惜败RNG战队，随后又在季军赛上败于RW战队，止步四强   ；2018年LPL夏季赛上，IG战队成功杀进夏季赛决赛，在决赛上以2:3败于RNG战队取得亚军，同时以全年积分最高队伍获得参加S8全球总决赛的资格 ；接下来在全球总决赛上IG战队以3:0战胜FNC战队夺得LPL首个世界赛冠军 ；12月在西安的德玛西亚杯冬季赛上，以3：1击败TOP战队拿下德玛西亚杯冠军 ', '2020-02-28 22:48:58', '1', '96547', null, '/static/img/rookie2.png');
INSERT INTO `article` VALUES ('6', '你影响我发育了,我要把你们当兵补了', '2017年LPL夏季赛，TheShy在为数不多的出战场次中，六场兰博保持百分百胜率。2018年1月4日，德玛西亚杯青岛站，iG对阵JDG，第23分钟，TheShy的卡蜜尔在仅剩44滴血的情况下利用大招、金身、E技能以及被动的盾成功反杀敌方的卡兹克\r\n\r\n2017年LPL夏季赛，TheShy在为数不多的出战场次中，六场兰博保持百分百胜率。2018年1月4日，德玛西亚杯青岛站，iG对阵JDG，第23分钟，TheShy的卡蜜尔在仅剩44滴血的情况下利用大招、金身、E技能以及被动的盾成功反杀敌方的卡兹克\r\n\r\n2017年LPL夏季赛，TheShy在为数不多的出战场次中，六场兰博保持百分百胜率。2018年1月4日，德玛西亚杯青岛站，iG对阵JDG，第23分钟，TheShy的卡蜜尔在仅剩44滴血的情况下利用大招、金身、E技能以及被动的盾成功反杀敌方的卡兹克', '2020-02-29 22:50:45', '1', '99999', null, '/static/img/theshy2.jpg');
INSERT INTO `article` VALUES ('7', 'InvictusGaming', 'InvictusGaming进入季中冠军赛的班底与全球总决赛夺冠时并无二致。然而他们通往季中冠军赛的道路并非一帆风顺。全球总决赛之后，他们的教练离任，不过签约了新的教练之后，他们正逐渐恢复到世界冠军应有的状态。决赛中，他们以3比0击败JDGaming，首次获得LPL冠军。iG的中路和上路选手，Rookie和TheShy有望成为今年季中冠军赛的最佳选手。而作为一个团队，他们在LPL赛区以最迅捷、最刚猛的比赛风格著称。只要他们踏上战场，就一定会绽放光彩。拿下季中冠军赛，InvictusGaming就将补上大赛冠军拼图上的最后一角。', '2020-03-01 17:48:15', '1', '99999', null, '/static/img/igc.jpg');
INSERT INTO `article` VALUES ('8', 'FunPlusPhoenix', '趣加电子竞技俱乐部（FunPlusPhoenix）成立于2017年，LPL联盟成员之一，是LPL舞台上的新生势力。俱乐部Logo的浴火凤凰形象，代表着一飞冲天，追求极致，永不言弃，直面挑战的精神。凤凰在东西方文化中各自的独特寓意，也表达了趣加链接东西，多元并进的独特魅力。', '2020-03-01 17:49:55', '2', '99999', null, '/static/img/fpxc.jpg');
INSERT INTO `article` VALUES ('9', 'EdwardGaming', 'EDG的出道是在2014年的LPL春季赛上。从一开始，EDG就只有一个目标，那就是夺冠。他们斩获过2014年LPL春季赛和夏季赛的冠军，还有2015年LPL的春季赛，2016和2017年的夏季赛。除此之外，每一届全球总决赛也都有这支队伍的身影。除了参加了五届全球总决赛之外，他们也为中国赛区首次拿下了国际比赛的胜利，成为了2015年第一届季中冠军赛的获胜者。作为LPL赛区的一支老牌队伍，新赛季他们保持了18年的原班选手阵容，并引进了明星教练Heart，这支凶猛的队伍心态依然年轻，并且准备再次书写历史。', '2020-03-01 17:50:17', '4', '99999', null, '/static/img/edgc.jpg');
INSERT INTO `article` VALUES ('10', 'RoyalNeverGiveUp', '始创于2015年的RNG已经代表LPL出战了四届全球总决赛，也曾拿到过前四名的最好成绩。2018年RNG表现出了惊人的统治力，他们拿下了LPL春季赛和夏季赛、洲际对抗赛以及2018季中冠军赛在内的冠军，如今他们将以全新的精神面貌征战2019！', '2020-03-01 18:42:44', '3', '99999', null, '/static/img/rngc.jpg');
INSERT INTO `article` VALUES ('11', 'FPXS9半决赛队员数据公布', '现在LPL各战队都会有自己的品牌运营，比如今年LPL全明星庆典上就有三项奖项与战队品牌有关，分别是最佳节目奖、最佳品牌营销奖以及最佳商务运营案例奖，RNG战队一家独揽这三项大奖。如此看来，未来战队的品牌文化确实是一个发展方向。同样，FPX战队也有自己的战队节目，根据FPXS9世界赛的旅程，制作了回顾FPX五位选手在夺冠路上的台前幕后，从而让召唤师更加全面地了解每一位选手背后的故事。在12月6日，FPX战队再次更新S9纪录片《Next》第三章：FPX走向决赛之路。这一章的主要内容是以小天和金贡的口吻讲述8强赛和4强赛的故事。在战队复盘的时候，教练和小天对于上路的一波gank进行了一波争论，起因就是这波支援失败，在分析问题时产生了分歧，在争论中甚至小天发出“你觉得我打的很烂”的质问，最终金贡主动承认自己没打好。从这个片头可知，FPX战队在S9世界赛时确实遭遇了问题，不过就像小天说的那样“没有特别大的问题”，可见每一个夺冠的队伍都不是一帆风顺的。', '2020-03-06 16:20:25', '2', '56566', null, '/static/img/fosx.jpg');
INSERT INTO `article` VALUES ('12', '英雄联盟：FPX企业文化，我的兄弟只有我能骂，遇事一致对外', '相信大部分人都已经知道fpx战队的企业文化是什么了吧，其实他们战队里的头号黑粉就是来自于本队。相信大家都很熟悉doInb，金贡，刘青松和LWX这几个人，他们在平时就是真正的互相嘲讽互相喷，因此有很多人看到他们这种情况之后，都表示他们究竟是不是队友。在生活中也有很多人经常看他们的直播，相信有很多人看完直播之后，都在担心fpx究竟还能不能一起团结的去打比赛。后来还有一些人在doInb的直播间里直接说：Lwx打的特别菜，而且在生活中的脾气还非常差。后来DoInb看到有人这样留言的时候，就已经特别生气了，DoInb和lwx这两个人可是在s10世界赛上喷过lec整整一个区的人，这个时候又怎么会怕这些黑粉呢？于是doInb直接就上去正面硬刚黑粉：如果你觉着你打游戏非常好的话，那么就你上，你可以骂我，但是绝对不允许骂我的队友。甚至还让房管动用他的特权来进行封禁：你们这样特别容易让我和队友之间出现矛盾，把这些没有素质的黑粉都封禁一下。', '2020-03-06 16:25:16', '2', '45125', null, '/static/img/haoxi.jpg');
INSERT INTO `article` VALUES ('13', 'LPL赛区传来大消息，Uzi或将退役，Jackey将去RNG担任首发AD', '2020年的新赛季里面，Uzi是没有打过一场比赛的，他现在回到了湖北老家，因为疫情原因无法回归比赛，这只是一个问题；其二在新的赛季里面Uzi一直在家里直播，粉丝问他何时能够回RNG基地训练，Uzi一向爽朗的性格也开始支支吾吾无法回答；最后就是Uzi现在的状态像极了2019年麻辣香锅与严君泽的状态，都是企图直播一段时间隐退在LPL赛场之下，随后退役。RNG战队需要Jackeylove可以从下路补强以及队伍的商业营销上看，一方面下路Betty虽然稳定但是远远不如Jackeylove敢打敢拼，Uzi如果退役除了阿水能够弥补Uzi退役对队伍的影响之外，Betty并不能承担起Uzi退役后的影响；另一方面则是RNG失去了Uzi这个明星级别的选手，队伍粉丝的打击可想而知，所以需要打造零一个明星选手填补队伍的商业规划，那么阿水理所应当是第一人选。', '2020-03-06 16:31:47', '3', '78544', null, '/static/img/jku.jpg');
INSERT INTO `article` VALUES ('14', 'EDG官宣厂长转型主教练，网友：莫愁前路无知己，天下谁人不识7', 'EDG官方宣布功勋老将Clearlove选手转职教练，也代表着明凯职业选手生涯结束。\r\n\r\n明凯为LPL官方注册001号选手曾用比赛ID：Troll、Mann、Clearlove7、Clearlove，于2012年正式登上职业赛场，加入The phenixz战队担任中单，后以打野身份加盟WE战队，于2014年离开WE加入EDG征战至今。职业生涯期间获得5次LPL联赛冠军，为LPL选手中最多，联赛胜场306为历史第二。以下为明凯选手职业生涯荣誉：2012IPL5冠军\r\n\r\n2013英雄联盟全明星\r\n\r\n2014LPL春季赛冠军\r\n\r\n2014LPL夏季赛冠军\r\n\r\n2014德玛西亚杯冠军\r\n\r\n2015LPL春季赛冠军\r\n\r\n2015季中邀请赛冠军\r\n\r\n2015季中邀请赛MVP\r\n\r\n2015年度MVP，年度最佳打野\r\n\r\n2015英雄联盟全明星\r\n\r\n2016LPL夏季赛MVP\r\n\r\n2016LPL夏季赛冠军\r\n\r\n2016德玛西亚杯冠军\r\n\r\n2016英雄联盟全明星\r\n\r\n2017洲际赛冠军\r\n\r\n2017LPL夏季赛冠军\r\n\r\n2018洲际赛冠军\r\n\r\nEDG官宣厂长转型主教练，有网友表示：莫愁前路无知己，天下谁人不识7。', '2020-03-06 16:40:20', '4', '65557', null, '/static/img/cl.png');
INSERT INTO `article` VALUES ('15', 'LPL春季赛战火重燃，东鹏特饮携手RNG一同征战赛场！', '根据官方公布的赛程，RNG将会在比赛的第一天对阵TES。本场比赛中，Karsa将以TES打野的身份对战自己的老东家和前队友，这将是比赛的一大看点。\r\n\r\n作为RNG战队的指定官方能量饮料，东鹏特饮不管在平时的练习中，还是在正式的比赛场合，都及时为队员们补充能量，助力他们以良好的精神状态迎战对手。对于电竞选手而言，每一场比赛都是一次青春的回忆，是见证拼搏、坚韧、热血的存在，在追逐梦想的道路上，不管最终究竟输或赢，拥有多少光荣与遗憾，拼过就是值得的!\r\n\r\n这次由于疫情影响，电竞粉丝们无法像往常一样体验现场氛围，但是坐在电脑和电视机荧幕前，同样也可以为自己喜欢的队伍加油打气，东鹏特饮作为醒脑神器，也为观众们补充体力，不错过比赛的每一个精彩瞬间。\r\n\r\n近年来，电子竞技作为一个新兴体育产业，在国家各项政策的扶持下迅猛发展。据数据显示，预计2022年中国将会有4.3亿电竞用户，这意味着近1/4的中国人都在关注电竞。东鹏特饮作为一款不断年轻化的民族功能饮料品牌，也一直在电竞领域尝试和探索。\r\n\r\n从2016年赞助七彩虹CGU，2017年赞助NESO全国电子竞技公开赛，到2018年东鹏特饮成为RNG指定官方能量饮料，今年是与其合作的第三年，东鹏特饮持续压码电竞圈知名赛事，深度绑定知名电竞队伍，和游戏人群进行垂直互动，赢得了广大年轻人的喜好和认可。', '2020-03-06 16:44:09', '5', '45647', null, '/static/img/lpls.png');
INSERT INTO `article` VALUES ('16', 'Theshy苦练新套路，胜率堪称恐怖，VIT前教练：上单们要惨了！', '作为LPL赛区首个世界冠军，IG战队S9赛季虽然没有拿到冠军，但成绩也算相当不错了。而在之前的转会期中，JackeyLove离开虽然令人十分遗憾，但引入的南风+泡芙组合也是相当强力。今年春季赛开始后，IG以全胜战绩结束的年前的比赛，让粉丝们相当激动。而说起IG战队的选手，自然也不能不提Theshy。这两年世界赛上，Theshy已经用实力证明了自己，完全可以称得上是世界第一上单。无论是阿卡丽、吸血鬼，还是天使、剑魔等英雄，在他手中都能打出两人惊叹不已的表现，实力不可谓不强悍。而在最近，可能是春季赛马上就要开始了，所以Theshy也是在苦练新套路，那就是上单卡莉斯塔。虽然说滑板鞋这个英雄十分灵活，跳起来之后伤害也相当爆炸，但由于现在AD的处境比较艰难，所以现在登上赛场的几率也比较小。\r\n\r\n', '2020-03-06 16:50:03', '1', '89991', null, '/static/img/th1.jpg');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', 'IG', '5');
INSERT INTO `category` VALUES ('2', 'FPX', '3');
INSERT INTO `category` VALUES ('3', 'RNG', '2');
INSERT INTO `category` VALUES ('4', 'EDG', '2');
INSERT INTO `category` VALUES ('5', 'LPL', '3');

-- ----------------------------
-- Table structure for mark
-- ----------------------------
DROP TABLE IF EXISTS `mark`;
CREATE TABLE `mark` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`mid`),
  KEY `uid` (`uid`),
  CONSTRAINT `mark_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mark
-- ----------------------------
INSERT INTO `mark` VALUES ('4', '随便评论的', null, null, '16');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `aid` (`aid`),
  CONSTRAINT `tag_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `article` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `portrait` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regtime` datetime DEFAULT NULL,
  `isforbid` tinyint(1) DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '姜承禄', '369', null, null, null, null, null, '/static/img/theshy1.png');
INSERT INTO `user` VALUES ('2', '高振宁', '258', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', '宋义进', '147', null, null, null, null, null, '/static/img/rookie1.png');
INSERT INTO `user` VALUES ('4', '喻文波', '456', null, null, null, null, null, '/static/img/jkl1.png');
INSERT INTO `user` VALUES ('5', '王柳羿', '7', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6', 'gyc', '53389e591d829ff241412dd612bf77735e5acdfc', null, null, null, null, '0', null);
