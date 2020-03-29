/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : lol

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-03-29 23:10:24
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
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cid` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `comments` int(11) DEFAULT NULL,
  `picture` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `cid` (`cid`) USING BTREE,
  CONSTRAINT `article_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `category` (`cid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
INSERT INTO `article` VALUES ('17', '在IG不断享受躺赢，Puff赛后狂吹中上野，身边的Rookie都害羞了', '本周万众期待的LPL春季赛开赛后，很快就来到了第三天。虽然很多战队还没来及登场亮相，但揭幕战中战胜FPX的IG今天已经迎来第二场比赛了。今天对阵DMO，IG没有像揭幕战和FPX打得有来有回，直接2比0轻松拿下。第一局碾压，第二局拿下男爵后一波结束比赛。获得这场胜利后，IG也暂时以2战全胜、小分4-1的战绩登上了春季赛积分榜第一名。在这三人的强力表现下，IG的获胜感觉就是上中野的全面压制。而这种状态，似乎就是S8时IG的巅峰感觉。只不过在Ning状态逐渐下滑后，打野如今换成了Leyan。在上中野优势明显的情况下，IG双人组今天的露脸机会并不是很多。当然，有IG这种强势的上中野在，双人组确实也没有太多的露脸机会。', '2020-03-13 21:04:50', '1', null, null, null);
INSERT INTO `article` VALUES ('18', 'FPX两连败的真正原因？国外教练出面分析：Khan的打法不适合队伍', 'LPL春季赛的比赛中，世界冠军FPX战队遭遇两连败可以说是所有观众都没有想到的，如果说第一场输给IG还可以理解的话，第二场输给新军战队ES就有点离谱了，很多观众都表示FPX战队是不是在走IG的老路，夺冠之后开始膨胀了还是怎么的。换言之，SPY的这位教练不是认为Khan的实力不行，而是认为Khan的打法与FPX的固有体系产生了冲突。对于这样的看法很多观众是认可的，但是同样有大量的观众表示反对，认为不是Khan扭曲了FPX的打法，而是版本要求FPX得这样打才行。\r\n\r\n', '2020-03-13 21:07:29', '2', null, null, null);
INSERT INTO `article` VALUES ('19', 'TheShy：你以为我滑的快乐？我的快乐你体会不到', '#2020LPL春季赛#常规赛已经第二周了。3月11日，IG对战VG。IG上单TheShy首发卡莉斯塔，让很多小朋友满脸问号。甚至解说也强调卡莉斯塔后期作用不大，但世界第一上单的男人又岂是旁人能看懂的。两战两胜，在对面上单眼皮底下滑来滑去，对面却完全没有办法。下面看看两局里TheShy卡莉斯塔在队伍中起到的作用。更无奈的是，不到塔下的兵连经验都不让吃。你想上来吃经验，那必然被TheShy插成刺猬，根本不给对面留活路。而且意识好，对面也打野也没办法，毕竟不能一直蹲在上路。不得不说，第一局VG上路被各种碾压的情况下，还放TheShy的卡莉斯塔。先不说VG是怎么想的，但我知道VG上单已经崩溃了，毕竟同样的碾压又要再来一局。\r\n\r\n同样的位置，同样的难受，这局的凯南已经有了第一局奥恩的影子，依然是被压在塔下寸步难行。两局下来，TheShy的卡莉斯塔基本没怎么参团，却起到了很好的压制和牵制能力，给人留下深刻的印象。大多玩家会感叹——卡莉斯塔居然还能这么玩。', '2020-03-13 21:09:44', '1', null, null, null);
INSERT INTO `article` VALUES ('20', '来自职业选手的哀嚎：名字不是Theshy请别玩滑板鞋上单，谢谢！', '按理来说英雄联盟现在这个版本的AD都比较脆弱，动不动就会被融化，但有个上单选手却带领了一波滑板鞋热潮。说到这名选手大家都知道了吧，IG在跟VG的比赛中Theshy连着两把拿出卡莉斯塔，结果将上路通关，10分钟推掉一塔，15分钟上高地，还要在人家基地前滑了一圈！比赛结束之后，无限模仿Theshy的玩家和职业选手就出现了，就连VG上单也立马去尝试了一番上单滑板鞋，看看这英雄到底有什么样的魅力，然而战绩却有点让人看不下去，这实在太差了，事实也证明不是每个人都叫Theshy。Thedshy这波滑板鞋上单可是害了不少玩家和职业选手，现在打开游戏对面就是滑板鞋，GLD的中单最近在推特上还发出这样一声哀嚎：如果你的名字不是Theshy，就不要给我玩滑板鞋上电脑，谢谢！从这句话中可以看出近来他遇到许多滑板鞋玩家，但效果跟Theshy截然相反，不然也不会发这么大的牢骚。\r\n\r\n', '2020-03-13 21:11:47', '1', null, null, null);
INSERT INTO `article` VALUES ('21', 'Rookie解锁2000杀引国外粉丝热议，网友：Faker第一，Rookie第二', '英雄联盟LPL赛区在经历了数年的不懈努力后凭借S8、S9的双冠军成功赢得了所有联盟玩家的一致认同。遥想两年前的系列S赛，LPL赛区所有玩家以及职业选手都处在无冠成绩的阴霾之下无法自拔，作为荣誉感极强的中国玩家在那段时间可谓是饱受冠军梦魇困扰。皇天不负苦心人，这两年LPL人才辈出，尤其是IG战队以及FPX战队先后向世界证明了LPL赛区的强悍实力也帮助LPL玩家一扫无冠困扰。不得不说，这些为LPL争取到无尽荣誉的职业选手值得所有玩家们的敬佩。作为IG战队中单Rookie在S8世界赛上一鸣惊人后更是受到了世界玩家的关注。\r\n\r\n在Rookie未成名之前联盟职业圈有名的中单多数被LCK、LEU占据，无数玩家对Faker、Caps等人耳熟能详却对LPL中单闻所未闻。这也难怪，选手的荣誉和名气总需要成绩来争取的。Rookie在S8世界赛上的表现有目共睹面对来自世界各地的顶尖中单Rookie非但没有陷入被动反而经常打出压制效果。\r\n\r\n不得不说，这位外国网友对Rookie的喜爱属实强烈，但Rookie的实力值得这样的喜欢。更有玩家将Rookie的职业生涯在职业圈进行排名，他认为Rookie在中单位置的地位仅次于T1 Faker之后名列联盟第二。这样的排名有待商榷但有一说一，Faker之所以排名第一是因为他的水平和意识几年内都没有下滑，Rookie在LPL征战多年实力也没有受到影响，排名第二也算中肯。', '2020-03-13 21:12:01', '1', null, null, null);
INSERT INTO `article` VALUES ('22', 'Rookie完成两千杀成就，他与Theshy相比，谁对IG更重要？', '2015年来到LPL赛区的Rookie只是打野Kakao的一个附赠品，说白了就是一个端茶倒水不值一提的十八线选手，当时的Rookie面对强援云集的LPL赛区适应能力还是很快的，当所有的LCK外援在LPL还坚持用翻译的时候，Rookie却很快地学会了中文，当LCK外援还高高在上对其他LPL选手不屑一顾的时候，Rookie已经和LPL其他选手建立起了不错的友谊，凭借着流利的中文、不错的情商，rookie在IG获得了首发中单的机会。Rookie的努力没有白费，他成为了IG中单之后，成为了LPL赛区的对线单杀王，更成为了IG一条大粗腿，因为队伍内沟通没有障碍，因为主动配合IG的各种打法，rookie渐渐成为了IG战队的打法核心，经过五年的磨砺，Rookie已经成了IG战队的定海神针，rookie也从个人追求压制打法，变成了配合队友建立团队优势的打法！\r\n\r\n每当队伍劣势的时候，Theshy都会通过操作站出来，而第一个站出来的人往往都是Rookie，我们看惯了Theshy在团队里面大杀四方，看多了Theshy天神下凡的非凡操作，可是每当队伍劣势的时候，rookie总是第一个尝试寻找突破口的人。', '2020-03-13 21:12:28', '1', null, null, null);
INSERT INTO `article` VALUES ('23', 'dawawd', 'awwww', '2020-03-17 19:35:46', '1', null, null, null);
INSERT INTO `article` VALUES ('24', 'dwadwadaw', 'dadwa', '2020-03-17 19:35:46', '1', null, null, null);
INSERT INTO `article` VALUES ('25', 'dwadwad', 'dwadwad', '2020-03-17 19:35:46', '1', null, null, null);
INSERT INTO `article` VALUES ('26', 'rrrrr', 'qqqq', '2020-03-17 19:35:47', '1', null, null, null);
INSERT INTO `article` VALUES ('27', 'qqqe', 'rqwrqwr', '2020-03-17 19:35:47', '2', null, null, null);
INSERT INTO `article` VALUES ('28', 'ewqe', 'eqweq', '2020-03-17 19:35:48', '2', null, null, null);
INSERT INTO `article` VALUES ('29', 'eqew', 'eqweq', '2020-03-17 19:35:50', '1', null, null, null);
INSERT INTO `article` VALUES ('30', 'eqeq', 'qweqwe', '2020-03-17 19:35:51', '2', null, null, null);
INSERT INTO `article` VALUES ('31', 'eqeqw', 'ewqeqw', '2020-03-17 19:35:58', '4', null, null, null);

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add article', '7', 'add_article');
INSERT INTO `auth_permission` VALUES ('26', 'Can change article', '7', 'change_article');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete article', '7', 'delete_article');
INSERT INTO `auth_permission` VALUES ('28', 'Can view article', '7', 'view_article');
INSERT INTO `auth_permission` VALUES ('29', 'Can add category', '8', 'add_category');
INSERT INTO `auth_permission` VALUES ('30', 'Can change category', '8', 'change_category');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete category', '8', 'delete_category');
INSERT INTO `auth_permission` VALUES ('32', 'Can view category', '8', 'view_category');
INSERT INTO `auth_permission` VALUES ('33', 'Can add mark', '9', 'add_mark');
INSERT INTO `auth_permission` VALUES ('34', 'Can change mark', '9', 'change_mark');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete mark', '9', 'delete_mark');
INSERT INTO `auth_permission` VALUES ('36', 'Can view mark', '9', 'view_mark');
INSERT INTO `auth_permission` VALUES ('37', 'Can add tag', '10', 'add_tag');
INSERT INTO `auth_permission` VALUES ('38', 'Can change tag', '10', 'change_tag');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete tag', '10', 'delete_tag');
INSERT INTO `auth_permission` VALUES ('40', 'Can view tag', '10', 'view_tag');
INSERT INTO `auth_permission` VALUES ('41', 'Can add user', '11', 'add_user');
INSERT INTO `auth_permission` VALUES ('42', 'Can change user', '11', 'change_user');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete user', '11', 'delete_user');
INSERT INTO `auth_permission` VALUES ('44', 'Can view user', '11', 'view_user');
INSERT INTO `auth_permission` VALUES ('45', 'Can add auth group', '12', 'add_authgroup');
INSERT INTO `auth_permission` VALUES ('46', 'Can change auth group', '12', 'change_authgroup');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete auth group', '12', 'delete_authgroup');
INSERT INTO `auth_permission` VALUES ('48', 'Can view auth group', '12', 'view_authgroup');
INSERT INTO `auth_permission` VALUES ('49', 'Can add auth group permissions', '13', 'add_authgrouppermissions');
INSERT INTO `auth_permission` VALUES ('50', 'Can change auth group permissions', '13', 'change_authgrouppermissions');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete auth group permissions', '13', 'delete_authgrouppermissions');
INSERT INTO `auth_permission` VALUES ('52', 'Can view auth group permissions', '13', 'view_authgrouppermissions');
INSERT INTO `auth_permission` VALUES ('53', 'Can add auth permission', '14', 'add_authpermission');
INSERT INTO `auth_permission` VALUES ('54', 'Can change auth permission', '14', 'change_authpermission');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete auth permission', '14', 'delete_authpermission');
INSERT INTO `auth_permission` VALUES ('56', 'Can view auth permission', '14', 'view_authpermission');
INSERT INTO `auth_permission` VALUES ('57', 'Can add auth user', '15', 'add_authuser');
INSERT INTO `auth_permission` VALUES ('58', 'Can change auth user', '15', 'change_authuser');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete auth user', '15', 'delete_authuser');
INSERT INTO `auth_permission` VALUES ('60', 'Can view auth user', '15', 'view_authuser');
INSERT INTO `auth_permission` VALUES ('61', 'Can add auth user groups', '16', 'add_authusergroups');
INSERT INTO `auth_permission` VALUES ('62', 'Can change auth user groups', '16', 'change_authusergroups');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete auth user groups', '16', 'delete_authusergroups');
INSERT INTO `auth_permission` VALUES ('64', 'Can view auth user groups', '16', 'view_authusergroups');
INSERT INTO `auth_permission` VALUES ('65', 'Can add auth user user permissions', '17', 'add_authuseruserpermissions');
INSERT INTO `auth_permission` VALUES ('66', 'Can change auth user user permissions', '17', 'change_authuseruserpermissions');
INSERT INTO `auth_permission` VALUES ('67', 'Can delete auth user user permissions', '17', 'delete_authuseruserpermissions');
INSERT INTO `auth_permission` VALUES ('68', 'Can view auth user user permissions', '17', 'view_authuseruserpermissions');
INSERT INTO `auth_permission` VALUES ('69', 'Can add django admin log', '18', 'add_djangoadminlog');
INSERT INTO `auth_permission` VALUES ('70', 'Can change django admin log', '18', 'change_djangoadminlog');
INSERT INTO `auth_permission` VALUES ('71', 'Can delete django admin log', '18', 'delete_djangoadminlog');
INSERT INTO `auth_permission` VALUES ('72', 'Can view django admin log', '18', 'view_djangoadminlog');
INSERT INTO `auth_permission` VALUES ('73', 'Can add django content type', '19', 'add_djangocontenttype');
INSERT INTO `auth_permission` VALUES ('74', 'Can change django content type', '19', 'change_djangocontenttype');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete django content type', '19', 'delete_djangocontenttype');
INSERT INTO `auth_permission` VALUES ('76', 'Can view django content type', '19', 'view_djangocontenttype');
INSERT INTO `auth_permission` VALUES ('77', 'Can add django migrations', '20', 'add_djangomigrations');
INSERT INTO `auth_permission` VALUES ('78', 'Can change django migrations', '20', 'change_djangomigrations');
INSERT INTO `auth_permission` VALUES ('79', 'Can delete django migrations', '20', 'delete_djangomigrations');
INSERT INTO `auth_permission` VALUES ('80', 'Can view django migrations', '20', 'view_djangomigrations');
INSERT INTO `auth_permission` VALUES ('81', 'Can add django session', '21', 'add_djangosession');
INSERT INTO `auth_permission` VALUES ('82', 'Can change django session', '21', 'change_djangosession');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete django session', '21', 'delete_djangosession');
INSERT INTO `auth_permission` VALUES ('84', 'Can view django session', '21', 'view_djangosession');
INSERT INTO `auth_permission` VALUES ('85', 'Can add captcha store', '22', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('86', 'Can change captcha store', '22', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete captcha store', '22', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('88', 'Can view captcha store', '22', 'view_captchastore');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('14', 'JQAA', 'jqaa', '8d3b5b0d0896db4e37a3ea429835b203c7d7ebb6', '2020-03-17 10:36:06.248309');
INSERT INTO `captcha_captchastore` VALUES ('16', 'ISSP', 'issp', 'de21842666fab1a44e0a3c23daf2af89686db09b', '2020-03-17 10:36:29.447537');
INSERT INTO `captcha_captchastore` VALUES ('18', 'WRYV', 'wryv', 'd93d93de7142b994daa939596af5d8de16825b5c', '2020-03-17 10:36:37.458044');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `name` (`name`) USING BTREE
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
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_results_taskresult
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_taskresult`;
CREATE TABLE `django_celery_results_taskresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `content_type` varchar(128) NOT NULL,
  `content_encoding` varchar(64) NOT NULL,
  `result` longtext,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext,
  `meta` longtext,
  `task_args` longtext,
  `task_kwargs` longtext,
  `task_name` varchar(255) DEFAULT NULL,
  `worker` varchar(100) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `django_celery_results_taskresult_date_done_49edada6` (`date_done`),
  KEY `django_celery_results_taskresult_status_cbbed23a` (`status`),
  KEY `django_celery_results_taskresult_task_name_90987df3` (`task_name`),
  KEY `django_celery_results_taskresult_worker_f8711389` (`worker`),
  KEY `django_celery_results_taskresult_date_created_099f3424` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_celery_results_taskresult
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('7', 'App', 'article');
INSERT INTO `django_content_type` VALUES ('12', 'App', 'authgroup');
INSERT INTO `django_content_type` VALUES ('13', 'App', 'authgrouppermissions');
INSERT INTO `django_content_type` VALUES ('14', 'App', 'authpermission');
INSERT INTO `django_content_type` VALUES ('15', 'App', 'authuser');
INSERT INTO `django_content_type` VALUES ('16', 'App', 'authusergroups');
INSERT INTO `django_content_type` VALUES ('17', 'App', 'authuseruserpermissions');
INSERT INTO `django_content_type` VALUES ('8', 'App', 'category');
INSERT INTO `django_content_type` VALUES ('18', 'App', 'djangoadminlog');
INSERT INTO `django_content_type` VALUES ('19', 'App', 'djangocontenttype');
INSERT INTO `django_content_type` VALUES ('20', 'App', 'djangomigrations');
INSERT INTO `django_content_type` VALUES ('21', 'App', 'djangosession');
INSERT INTO `django_content_type` VALUES ('9', 'App', 'mark');
INSERT INTO `django_content_type` VALUES ('10', 'App', 'tag');
INSERT INTO `django_content_type` VALUES ('11', 'App', 'user');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('22', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'App', '0001_initial', '2020-03-14 22:00:40.486474');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0001_initial', '2020-03-14 22:00:40.567666');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2020-03-14 22:00:40.717857');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0001_initial', '2020-03-14 22:00:41.303025');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0002_logentry_remove_auto_add', '2020-03-14 22:00:41.396217');
INSERT INTO `django_migrations` VALUES ('6', 'admin', '0003_logentry_add_action_flag_choices', '2020-03-14 22:00:41.405285');
INSERT INTO `django_migrations` VALUES ('7', 'contenttypes', '0002_remove_content_type_name', '2020-03-14 22:00:41.485787');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0002_alter_permission_name_max_length', '2020-03-14 22:00:41.532185');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0003_alter_user_email_max_length', '2020-03-14 22:00:41.572030');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0004_alter_user_username_opts', '2020-03-14 22:00:41.585028');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0005_alter_user_last_login_null', '2020-03-14 22:00:41.624913');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0006_require_contenttypes_0002', '2020-03-14 22:00:41.628878');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0007_alter_validators_add_error_messages', '2020-03-14 22:00:41.636856');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0008_alter_user_username_max_length', '2020-03-14 22:00:41.681384');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0009_alter_user_last_name_max_length', '2020-03-14 22:00:41.726729');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0010_alter_group_name_max_length', '2020-03-14 22:00:41.769903');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0011_update_proxy_permissions', '2020-03-14 22:00:41.783864');
INSERT INTO `django_migrations` VALUES ('18', 'sessions', '0001_initial', '2020-03-14 22:00:41.805576');
INSERT INTO `django_migrations` VALUES ('19', 'captcha', '0001_initial', '2020-03-16 15:47:12.548224');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('kz9t4e7mqd1g0e49p9i06d7ald3qc2qq', 'MTUyNGQ3MWRmNzM3YzFlNjIxYTJjNjM3YTMyNjE4ZTYyN2ZjMTJhZjp7InVzZXJuYW1lIjoiXHU1OWRjXHU2MjdmXHU3OTg0In0=', '2020-04-07 12:43:13.097661');
INSERT INTO `django_session` VALUES ('rk0xj3jkd90jtwjb0569setg7nlqf5dy', 'MTUyNGQ3MWRmNzM3YzFlNjIxYTJjNjM3YTMyNjE4ZTYyN2ZjMTJhZjp7InVzZXJuYW1lIjoiXHU1OWRjXHU2MjdmXHU3OTg0In0=', '2020-04-07 06:41:03.517151');

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
  KEY `uid` (`uid`) USING BTREE,
  CONSTRAINT `mark_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mark
-- ----------------------------
INSERT INTO `mark` VALUES ('4', '随便评论的', null, null, '16');

-- ----------------------------
-- Table structure for my_cache_table
-- ----------------------------
DROP TABLE IF EXISTS `my_cache_table`;
CREATE TABLE `my_cache_table` (
  `cache_key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  `expires` datetime(6) NOT NULL,
  PRIMARY KEY (`cache_key`),
  KEY `my_cache_table_expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of my_cache_table
-- ----------------------------
INSERT INTO `my_cache_table` VALUES (':1:all_users', 'gASV6ggAAAAAAACMFmRqYW5nby5kYi5tb2RlbHMucXVlcnmUjAhRdWVyeVNldJSTlCmBlH2UKIwFbW9kZWyUjApBUFAubW9kZWxzlIwEVXNlcpSTlIwDX2RilE6MBl9oaW50c5R9lIwFcXVlcnmUjBpkamFuZ28uZGIubW9kZWxzLnNxbC5xdWVyeZSMBVF1ZXJ5lJOUKYGUfZQoaAVoCIwOYWxpYXNfcmVmY291bnSUfZSMBHVzZXKUSwBzjAlhbGlhc19tYXCUjAtjb2xsZWN0aW9uc5SMC09yZGVyZWREaWN0lJOUKVKUaBSMI2RqYW5nby5kYi5tb2RlbHMuc3FsLmRhdGFzdHJ1Y3R1cmVzlIwJQmFzZVRhYmxllJOUKYGUfZQojAp0YWJsZV9uYW1llGgUjAt0YWJsZV9hbGlhc5RoFHVic4wQZXh0ZXJuYWxfYWxpYXNlc5SPlIwJdGFibGVfbWFwlH2UaBRdlGgUYXOMDGRlZmF1bHRfY29sc5SIjBBkZWZhdWx0X29yZGVyaW5nlIiMEXN0YW5kYXJkX29yZGVyaW5nlIiMDHVzZWRfYWxpYXNlc5SPlIwQZmlsdGVyX2lzX3N0aWNreZSJjAhzdWJxdWVyeZSJjAZzZWxlY3SUKYwFd2hlcmWUjBpkamFuZ28uZGIubW9kZWxzLnNxbC53aGVyZZSMCVdoZXJlTm9kZZSTlCmBlH2UKIwIY2hpbGRyZW6UXZSMCWNvbm5lY3RvcpSMA0FORJSMB25lZ2F0ZWSUiYwSY29udGFpbnNfYWdncmVnYXRllIl1YowLd2hlcmVfY2xhc3OUaDGMCGdyb3VwX2J5lE6MCG9yZGVyX2J5lCmMCGxvd19tYXJrlEsAjAloaWdoX21hcmuUTowIZGlzdGluY3SUiYwPZGlzdGluY3RfZmllbGRzlCmMEXNlbGVjdF9mb3JfdXBkYXRllImMGHNlbGVjdF9mb3JfdXBkYXRlX25vd2FpdJSJjB1zZWxlY3RfZm9yX3VwZGF0ZV9za2lwX2xvY2tlZJSJjBRzZWxlY3RfZm9yX3VwZGF0ZV9vZpQpjA5zZWxlY3RfcmVsYXRlZJSJjAltYXhfZGVwdGiUSwWMDXZhbHVlc19zZWxlY3SUKYwMX2Fubm90YXRpb25zlE6MFmFubm90YXRpb25fc2VsZWN0X21hc2uUTowYX2Fubm90YXRpb25fc2VsZWN0X2NhY2hllE6MCmNvbWJpbmF0b3KUTowOY29tYmluYXRvcl9hbGyUiYwQY29tYmluZWRfcXVlcmllc5QpjAZfZXh0cmGUTowRZXh0cmFfc2VsZWN0X21hc2uUTowTX2V4dHJhX3NlbGVjdF9jYWNoZZROjAxleHRyYV90YWJsZXOUKYwOZXh0cmFfb3JkZXJfYnmUKYwQZGVmZXJyZWRfbG9hZGluZ5QokZSIhpSME19maWx0ZXJlZF9yZWxhdGlvbnOUfZSMDWV4cGxhaW5fcXVlcnmUiYwOZXhwbGFpbl9mb3JtYXSUTowPZXhwbGFpbl9vcHRpb25zlH2UjApiYXNlX3RhYmxllGgUdWKMDV9yZXN1bHRfY2FjaGWUXZQojBVkamFuZ28uZGIubW9kZWxzLmJhc2WUjA5tb2RlbF91bnBpY2tsZZSTlIwDQVBQlGgHhpSFlFKUfZQojAZfc3RhdGWUaF+MCk1vZGVsU3RhdGWUk5QpgZR9lCiMBmFkZGluZ5SJjAJkYpSMB2RlZmF1bHSUdWKMA3VpZJRLAYwIdXNlcm5hbWWUjAnlp5zmib/npoSUjAhwYXNzd29yZJSMAzM2OZSMBXBob25llE6MBWVtYWlslE6MCHBvcnRyYWl0lE6MB3JlZ3RpbWWUTowIaXNmb3JiaWSUTowDaW1nlIwXL3N0YXRpYy9pbWcvdGhlc2h5MS5wbmeUjA9fZGphbmdvX3ZlcnNpb26UjAMyLjKUdWJoYWhiaAeGlIWUUpR9lChoZ2hpKYGUfZQoaGyJaG1obnViaG9LAmhwjAnpq5jmjK/lroGUaHKMAzI1OJRodE5odU5odk5od05oeE5oeU5oe4wDMi4ylHViaGFoYmgHhpSFlFKUfZQoaGdoaSmBlH2UKGhsiWhtaG51YmhvSwNocIwJ5a6L5LmJ6L+blGhyjAMxNDeUaHROaHVOaHZOaHdOaHhOaHmMFy9zdGF0aWMvaW1nL3Jvb2tpZTEucG5nlGh7jAMyLjKUdWJoYWhiaAeGlIWUUpR9lChoZ2hpKYGUfZQoaGyJaG1obnViaG9LBGhwjAnllrvmlofms6KUaHKMAzQ1NpRodE5odU5odk5od05oeE5oeYwUL3N0YXRpYy9pbWcvamtsMS5wbmeUaHuMAzIuMpR1YmhhaGJoB4aUhZRSlH2UKGhnaGkpgZR9lChobIlobWhudWJob0sFaHCMCeeOi+afs+e+v5RocowBN5RodE5odU5odk5od05oeE5oeU5oe4wDMi4ylHViaGFoYmgHhpSFlFKUfZQoaGdoaSmBlH2UKGhsiWhtaG51YmhvSwZocIwDZ3ljlGhyjCg1MzM4OWU1OTFkODI5ZmYyNDE0MTJkZDYxMmJmNzc3MzVlNWFjZGZjlGh0Tmh1Tmh2Tmh3Tmh4SwBoeU5oe4wDMi4ylHViaGFoYmgHhpSFlFKUfZQoaGdoaSmBlH2UKGhsiWhtaG51YmhvSwdocIwCaW+UaHKMKDUxZWFjNmI0NzFhMjg0ZDMzNDFkOGMwYzYzZDBmMWEyODYyNjJhMTiUaHROaHVOaHZOaHdOaHhLAGh5Tmh7jAMyLjKUdWJljA5fc3RpY2t5X2ZpbHRlcpSJjApfZm9yX3dyaXRllImMGV9wcmVmZXRjaF9yZWxhdGVkX2xvb2t1cHOUKYwOX3ByZWZldGNoX2RvbmWUiYwWX2tub3duX3JlbGF0ZWRfb2JqZWN0c5R9lIwPX2l0ZXJhYmxlX2NsYXNzlGgAjA1Nb2RlbEl0ZXJhYmxllJOUjAdfZmllbGRzlE5oe4wDMi4ylHViLg==', '2020-03-18 10:59:17.000000');
INSERT INTO `my_cache_table` VALUES (':1:views.decorators.cache.cache_header..17abf5259517d604cc9599a00b7385d6.zh-hans', 'gASVAwAAAAAAAABdlC4=', '2020-03-18 10:55:16.000000');
INSERT INTO `my_cache_table` VALUES (':1:views.decorators.cache.cache_header..7574ebd6ea939d47bf8dc25764a4c829.zh-hans', 'gASVAwAAAAAAAABdlC4=', '2020-03-18 10:55:03.000000');
INSERT INTO `my_cache_table` VALUES (':1:views.decorators.cache.cache_header..84fd80f545f40742f24eb42b0bca6c88.zh-hans', 'gASVAwAAAAAAAABdlC4=', '2020-03-18 10:16:17.000000');
INSERT INTO `my_cache_table` VALUES (':1:views.decorators.cache.cache_page..GET.17abf5259517d604cc9599a00b7385d6.d41d8cd98f00b204e9800998ecf8427e.zh-hans', 'gASVaAIAAAAAAACMFGRqYW5nby5odHRwLnJlc3BvbnNllIwMSHR0cFJlc3BvbnNllJOUKYGUfZQojAhfaGVhZGVyc5R9lCiMDGNvbnRlbnQtdHlwZZSMDENvbnRlbnQtVHlwZZSMGHRleHQvaHRtbDsgY2hhcnNldD11dGYtOJSGlIwHZXhwaXJlc5SMB0V4cGlyZXOUjB1XZWQsIDE4IE1hciAyMDIwIDAyOjU1OjE2IEdNVJSGlIwNY2FjaGUtY29udHJvbJSMDUNhY2hlLUNvbnRyb2yUjAptYXgtYWdlPTIwlIaUjA94LWZyYW1lLW9wdGlvbnOUjA9YLUZyYW1lLU9wdGlvbnOUjApTQU1FT1JJR0lOlIaUjA5jb250ZW50LWxlbmd0aJSMDkNvbnRlbnQtTGVuZ3RolIwDMTU1lIaUdYwRX2Nsb3NhYmxlX29iamVjdHOUXZSMDl9oYW5kbGVyX2NsYXNzlE6MB2Nvb2tpZXOUjAxodHRwLmNvb2tpZXOUjAxTaW1wbGVDb29raWWUk5QpgZSMBmNsb3NlZJSJjA5fcmVhc29uX3BocmFzZZROjAhfY2hhcnNldJROjApfY29udGFpbmVylF2UQ5s8IURPQ1RZUEUgaHRtbD4KPGh0bWwgbGFuZz0iZW4iPgo8aGVhZD4KICAgIDxtZXRhIGNoYXJzZXQ9IlVURi04Ij4KICAgIDx0aXRsZT5UaXRsZTwvdGl0bGU+CjwvaGVhZD4KPGJvZHk+CjxzcGFuPjIwMjAtMDMtMTggMTA6NTQ6NTY8L3NwYW4+CjwvYm9keT4KPC9odG1sPpRhdWIu', '2020-03-18 10:55:16.000000');
INSERT INTO `my_cache_table` VALUES (':1:views.decorators.cache.cache_page..GET.7574ebd6ea939d47bf8dc25764a4c829.d41d8cd98f00b204e9800998ecf8427e.zh-hans', 'gASViwQAAAAAAACMFGRqYW5nby5odHRwLnJlc3BvbnNllIwMSHR0cFJlc3BvbnNllJOUKYGUfZQojAhfaGVhZGVyc5R9lCiMDGNvbnRlbnQtdHlwZZSMDENvbnRlbnQtVHlwZZSMGHRleHQvaHRtbDsgY2hhcnNldD11dGYtOJSGlIwPeC1mcmFtZS1vcHRpb25zlIwPWC1GcmFtZS1PcHRpb25zlIwKU0FNRU9SSUdJTpSGlIwOY29udGVudC1sZW5ndGiUjA5Db250ZW50LUxlbmd0aJSMAzY5OZSGlIwHZXhwaXJlc5SMB0V4cGlyZXOUjB1XZWQsIDE4IE1hciAyMDIwIDAyOjU1OjAzIEdNVJSGlIwNY2FjaGUtY29udHJvbJSMDUNhY2hlLUNvbnRyb2yUjAptYXgtYWdlPTIwlIaUdYwRX2Nsb3NhYmxlX29iamVjdHOUXZSMDl9oYW5kbGVyX2NsYXNzlE6MB2Nvb2tpZXOUjAxodHRwLmNvb2tpZXOUjAxTaW1wbGVDb29raWWUk5QpgZSMBmNsb3NlZJSJjA5fcmVhc29uX3BocmFzZZROjAhfY2hhcnNldJROjApfY29udGFpbmVylF2UQrsCAAA8IURPQ1RZUEUgaHRtbD4KPGh0bWwgbGFuZz0iZW4iPgo8aGVhZD4KICAgIDxtZXRhIGNoYXJzZXQ9IlVURi04Ij4KICAgIDx0aXRsZT5UaXRsZTwvdGl0bGU+CjwvaGVhZD4KPGJvZHk+Cjx0YWJsZSBib3JkZXI9IjEiIHdpZHRoPSI4MCUiPgoKICAgIDx0cj4KICAgICAgICA8dGQ+5aec5om/56aEPC90ZD4KICAgICAgICA8dGQ+MzY5PC90ZD4KICAgIDwvdHI+CgogICAgPHRyPgogICAgICAgIDx0ZD7pq5jmjK/lroE8L3RkPgogICAgICAgIDx0ZD4yNTg8L3RkPgogICAgPC90cj4KCiAgICA8dHI+CiAgICAgICAgPHRkPuWui+S5iei/mzwvdGQ+CiAgICAgICAgPHRkPjE0NzwvdGQ+CiAgICA8L3RyPgoKICAgIDx0cj4KICAgICAgICA8dGQ+5Za75paH5rOiPC90ZD4KICAgICAgICA8dGQ+NDU2PC90ZD4KICAgIDwvdHI+CgogICAgPHRyPgogICAgICAgIDx0ZD7njovmn7Pnvr88L3RkPgogICAgICAgIDx0ZD43PC90ZD4KICAgIDwvdHI+CgogICAgPHRyPgogICAgICAgIDx0ZD5neWM8L3RkPgogICAgICAgIDx0ZD41MzM4OWU1OTFkODI5ZmYyNDE0MTJkZDYxMmJmNzc3MzVlNWFjZGZjPC90ZD4KICAgIDwvdHI+CgogICAgPHRyPgogICAgICAgIDx0ZD5pbzwvdGQ+CiAgICAgICAgPHRkPjUxZWFjNmI0NzFhMjg0ZDMzNDFkOGMwYzYzZDBmMWEyODYyNjJhMTg8L3RkPgogICAgPC90cj4KCgo8L3RhYmxlPgo8L2JvZHk+CjwvaHRtbD6UYXViLg==', '2020-03-18 10:55:03.000000');
INSERT INTO `my_cache_table` VALUES (':1:views.decorators.cache.cache_page..GET.84fd80f545f40742f24eb42b0bca6c88.d41d8cd98f00b204e9800998ecf8427e.zh-hans', 'gASVaAIAAAAAAACMFGRqYW5nby5odHRwLnJlc3BvbnNllIwMSHR0cFJlc3BvbnNllJOUKYGUfZQojAhfaGVhZGVyc5R9lCiMDGNvbnRlbnQtdHlwZZSMDENvbnRlbnQtVHlwZZSMGHRleHQvaHRtbDsgY2hhcnNldD11dGYtOJSGlIwPeC1mcmFtZS1vcHRpb25zlIwPWC1GcmFtZS1PcHRpb25zlIwKU0FNRU9SSUdJTpSGlIwOY29udGVudC1sZW5ndGiUjA5Db250ZW50LUxlbmd0aJSMAzE1NZSGlIwHZXhwaXJlc5SMB0V4cGlyZXOUjB1XZWQsIDE4IE1hciAyMDIwIDAyOjE2OjE3IEdNVJSGlIwNY2FjaGUtY29udHJvbJSMDUNhY2hlLUNvbnRyb2yUjAptYXgtYWdlPTIwlIaUdYwRX2Nsb3NhYmxlX29iamVjdHOUXZSMDl9oYW5kbGVyX2NsYXNzlE6MB2Nvb2tpZXOUjAxodHRwLmNvb2tpZXOUjAxTaW1wbGVDb29raWWUk5QpgZSMBmNsb3NlZJSJjA5fcmVhc29uX3BocmFzZZROjAhfY2hhcnNldJROjApfY29udGFpbmVylF2UQ5s8IURPQ1RZUEUgaHRtbD4KPGh0bWwgbGFuZz0iZW4iPgo8aGVhZD4KICAgIDxtZXRhIGNoYXJzZXQ9IlVURi04Ij4KICAgIDx0aXRsZT5UaXRsZTwvdGl0bGU+CjwvaGVhZD4KPGJvZHk+CjxzcGFuPjIwMjAtMDMtMTggMTA6MTU6NTc8L3NwYW4+CjwvYm9keT4KPC9odG1sPpRhdWIu', '2020-03-18 10:16:17.000000');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `aid` (`aid`) USING BTREE,
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
  `regtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '数据生成时间',
  `isforbid` tinyint(1) DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '姜承禄', '369', null, null, null, null, null, '/static/img/theshy1.png');
INSERT INTO `user` VALUES ('2', '高振宁', '258', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', '宋义进', '147', null, null, null, null, null, '/static/img/rookie1.png');
INSERT INTO `user` VALUES ('4', '喻文波', '456', null, null, null, null, null, '/static/img/jkl1.png');
INSERT INTO `user` VALUES ('5', '王柳羿', '7', null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6', 'gyc', '53389e591d829ff241412dd612bf77735e5acdfc', null, null, null, null, '0', null);
INSERT INTO `user` VALUES ('7', 'io', '51eac6b471a284d3341d8c0c63d0f1a286262a18', null, null, null, null, '0', null);
