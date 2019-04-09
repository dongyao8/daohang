
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dh_admin
-- ----------------------------
DROP TABLE IF EXISTS `dh_admin`;
CREATE TABLE `dh_admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_admin
-- ----------------------------
BEGIN;
INSERT INTO `dh_admin` VALUES (1, 'admin', '4297f44b13955235245b2497399d7a93', 1);
COMMIT;

-- ----------------------------
-- Table structure for dh_fenlei
-- ----------------------------
DROP TABLE IF EXISTS `dh_fenlei`;
CREATE TABLE `dh_fenlei` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(255) DEFAULT NULL,
  `f_sort` int(11) DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_fenlei
-- ----------------------------
BEGIN;
INSERT INTO `dh_fenlei` VALUES (1, '视频', 95);
INSERT INTO `dh_fenlei` VALUES (3, '体育', 5);
INSERT INTO `dh_fenlei` VALUES (4, '小说', 0);
INSERT INTO `dh_fenlei` VALUES (5, '购物', 100);
INSERT INTO `dh_fenlei` VALUES (6, '财经', 0);
INSERT INTO `dh_fenlei` VALUES (7, '旅游', 0);
INSERT INTO `dh_fenlei` VALUES (8, '新闻', 90);
INSERT INTO `dh_fenlei` VALUES (9, '汽车', 0);
INSERT INTO `dh_fenlei` VALUES (10, '手机', 0);
INSERT INTO `dh_fenlei` VALUES (11, '软件', 0);
INSERT INTO `dh_fenlei` VALUES (12, '社交', 0);
INSERT INTO `dh_fenlei` VALUES (13, '游戏', 0);
INSERT INTO `dh_fenlei` VALUES (14, '生活', 0);
INSERT INTO `dh_fenlei` VALUES (15, '银行', 0);
INSERT INTO `dh_fenlei` VALUES (16, '音乐', 0);
COMMIT;

-- ----------------------------
-- Table structure for dh_friend
-- ----------------------------
DROP TABLE IF EXISTS `dh_friend`;
CREATE TABLE `dh_friend` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(150) DEFAULT NULL,
  `l_url` text,
  `l_num` int(11) DEFAULT NULL COMMENT '访问热度',
  `l_sort` int(11) DEFAULT NULL COMMENT '网址排序',
  `l_state` int(11) DEFAULT NULL COMMENT '网址状态',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_friend
-- ----------------------------
BEGIN;
INSERT INTO `dh_friend` VALUES (70, '腾讯110', 'https://110.qq.com/', 0, 9, 1);
INSERT INTO `dh_friend` VALUES (71, '阿里安全', 'https://110.alibaba.com', 0, 8, 1);
INSERT INTO `dh_friend` VALUES (72, '申请链接', '#', 0, 7, 1);
INSERT INTO `dh_friend` VALUES (73, '骚扰举报', 'https://www.12321.cn', 0, 10, 1);
COMMIT;

-- ----------------------------
-- Table structure for dh_link
-- ----------------------------
DROP TABLE IF EXISTS `dh_link`;
CREATE TABLE `dh_link` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) DEFAULT NULL,
  `l_name` varchar(150) DEFAULT NULL,
  `l_url` text,
  `l_num` int(11) DEFAULT NULL COMMENT '访问热度',
  `l_sort` int(11) DEFAULT NULL COMMENT '网址排序',
  `l_state` int(11) DEFAULT NULL COMMENT '网址状态',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_link
-- ----------------------------
BEGIN;
INSERT INTO `dh_link` VALUES (2, 1, '优酷网', 'https://www.youku.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (3, 5, '爱淘宝', 'https://ai.taobao.com/?pid=mm_26820200_7656770_55752061', 0, 10, 1);
INSERT INTO `dh_link` VALUES (4, 7, '携程旅游', 'http://hotels.ctrip.com?AllianceID=11175&sid=555450&ouid=&app=0301C00', 0, 10, 1);
INSERT INTO `dh_link` VALUES (5, 5, '京东商城', 'https://u.jd.com/Xjhe3T', 0, 0, 1);
INSERT INTO `dh_link` VALUES (6, 5, '苏宁易购', 'https://www.suning.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (7, 5, '唯品会', 'https://t.vip.com/585OMys', 0, 0, 1);
INSERT INTO `dh_link` VALUES (8, 5, '聚划算', 'https://s.click.taobao.com/t?e=m%3D2%26s%3D1t1U6XTdQF0cQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAh6Ifwu4OR3Xzz6zgI1fZL0vuTCexJ5uFBzJRjY8Yc4N4zPKIuwZymiSm5usamS30eo0BcZWWIRYYA%2FDpPH01wJAFEHVckI7b7Sgd9R%2Fv5WktY4Qt2cZ1lVeY%2By0blbhscYl7w3%2FA2kb', 0, 0, 1);
INSERT INTO `dh_link` VALUES (9, 5, '当当网', 'http://www.dangdang.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (10, 1, '爱奇艺', 'http://www.iqiyi.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (11, 1, '腾讯视频', 'https://v.qq.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (12, 1, '百度视频', 'http://v.baidu.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (13, 1, '芒果TV', 'https://www.mgtv.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (14, 1, 'AcFun弹幕', 'http://www.acfun.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (15, 8, '新浪新闻', 'https://news.sina.com.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (16, 4, '起点中文网', 'https://www.qidian.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (17, 16, '随心听', 'http://fm.taihe.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (18, 6, '东方财富', 'http://www.eastmoney.com/', 0, 10, 1);
INSERT INTO `dh_link` VALUES (19, 6, '新浪财经', 'https://finance.sina.com.cn/', 0, 9, 1);
INSERT INTO `dh_link` VALUES (20, 10, '移动', 'http://www.10086.cn', 0, 10, 1);
INSERT INTO `dh_link` VALUES (21, 10, '电信', 'http://www.189.cn', 0, 9, 1);
INSERT INTO `dh_link` VALUES (22, 10, '联通', 'http://www.10010.com', 0, 8, 1);
INSERT INTO `dh_link` VALUES (23, 10, '苹果手机', 'https://www.apple.com/cn/', 0, 7, 1);
INSERT INTO `dh_link` VALUES (24, 9, '汽车之家', 'https://www.autohome.com.cn/', 0, 10, 1);
INSERT INTO `dh_link` VALUES (25, 9, '易车网', 'http://www.bitauto.com', 0, 9, 1);
INSERT INTO `dh_link` VALUES (26, 10, '小米手机', 'https://www.mi.com/', 0, 6, 1);
INSERT INTO `dh_link` VALUES (27, 3, 'CCTV体育', 'http://sports.cctv.com/', 0, 10, 1);
INSERT INTO `dh_link` VALUES (28, 10, '太平洋手机', 'https://mobile.pconline.com.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (29, 9, '新浪汽车', 'http://auto.sina.com.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (30, 7, '同程旅游', 'http://www.ly.com?refid=48050718', 0, 0, 1);
INSERT INTO `dh_link` VALUES (31, 7, '途牛网', 'http://www.tuniu.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (32, 13, '游民星空', 'https://www.gamersky.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (33, 13, '电玩巴士', 'http://www.tgbus.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (34, 13, '游侠网', 'http://www.ali213.net/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (35, 16, '网易云音乐', 'https://music.163.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (36, 12, '知乎', 'https://www.zhihu.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (37, 12, '猫扑', 'http://www.mop.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (38, 12, 'QQ空间', 'https://qzone.qq.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (39, 12, '百度贴吧', 'https://tieba.baidu.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (40, 12, '豆瓣', 'https://www.douban.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (41, 12, '领英', 'https://www.linkedin.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (42, 14, '大众点评', 'http://www.dianping.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (43, 16, 'QQ音乐', 'https://y.qq.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (44, 4, '懒人听书', 'http://www.lrts.me/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (45, 11, '华军软件园', 'http://www.onlinedown.net/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (46, 11, '天空下载', 'http://www.skycn.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (47, 11, '快科技', 'http://www.mydrivers.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (48, 11, '中关村下载', 'http://xiazai.zol.com.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (49, 4, '喜马拉雅', 'https://www.ximalaya.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (50, 4, '纵横中文网', 'http://www.zongheng.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (51, 3, '虎扑体育', 'https://www.hupu.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (52, 3, '凤凰体育', 'http://sports.ifeng.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (53, 3, '网易体育', 'http://sports.163.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (54, 15, '招商银行', 'http://www.cmbchina.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (55, 15, '工商银行', 'http://www.icbc.com.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (56, 15, '建设银行', 'http://www.ccb.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (57, 15, '农业银行', 'http://www.abchina.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (58, 15, '中国银行', 'http://www.boc.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (59, 15, '交通银行', 'http://www.bankcomm.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (60, 14, '链家网', 'https://www.lianjia.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (61, 8, '环球网', 'http://www.huanqiu.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (62, 13, '4399游戏', 'http://www.4399.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (63, 6, '雪球', 'https://xueqiu.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (64, 16, '酷狗音乐', 'http://www.kugou.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (65, 16, '虾米音乐', 'https://www.xiami.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (66, 16, '音悦台', 'http://www.yinyuetai.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (67, 3, 'NBA中文网', 'https://china.nba.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (69, 14, '下厨房', 'http://www.xiachufang.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (70, 14, '美团网', 'https://www.meituan.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (71, 8, '搜狐新闻', 'http://news.sohu.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (72, 8, '腾讯新闻', 'https://www.qq.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (73, 8, '凤凰资讯', 'http://news.ifeng.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (74, 8, '人民网', 'http://www.people.com.cn', 0, 0, 1);
INSERT INTO `dh_link` VALUES (75, 3, '直播吧', 'https://www.zhibo8.cc/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (76, 14, '豆果美食', 'https://www.douguo.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (77, 14, '果壳科技', 'https://www.guokr.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (78, 14, '丁香园', 'http://www.dxy.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (79, 13, '多玩游戏', 'http://www.duowan.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (80, 13, '网易游戏', 'http://game.163.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (81, 9, '爱卡汽车', 'http://www.xcar.com.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (82, 9, '太平洋汽车', 'https://www.pcauto.com.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (83, 9, '车168', 'https://www.che168.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (84, 7, '去哪儿', 'https://www.qunar.com', 0, 0, 1);
INSERT INTO `dh_link` VALUES (85, 7, '穷游网', 'https://www.qyer.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (86, 7, '驴妈妈', 'https://union.lvmama.com/tnt_cps/cps/newRedirect2.do?source=75484&lvmamakey=4dMp&isNew=new', 0, 0, 1);
INSERT INTO `dh_link` VALUES (87, 6, '金融界', 'http://www.jrj.com.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (88, 6, '和讯网', 'http://www.hexun.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (89, 6, '凤凰财经', 'http://finance.ifeng.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (90, 4, '红袖添香', 'https://www.hongxiu.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (91, 4, 'QQ阅读', 'http://book.qq.com/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (92, 11, '太平洋下载', 'https://dl.pconline.com.cn/', 0, 0, 1);
INSERT INTO `dh_link` VALUES (93, 11, '多特下载', 'http://www.duote.com/', 0, 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for dh_link_jp
-- ----------------------------
DROP TABLE IF EXISTS `dh_link_jp`;
CREATE TABLE `dh_link_jp` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `l_name` varchar(150) DEFAULT NULL,
  `l_url` text,
  `l_pic` varchar(255) DEFAULT NULL COMMENT '图标logo',
  `l_num` int(11) DEFAULT NULL COMMENT '访问热度',
  `l_sort` int(11) DEFAULT NULL COMMENT '网址排序',
  `l_state` int(11) DEFAULT NULL COMMENT '网址状态',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_link_jp
-- ----------------------------
BEGIN;
INSERT INTO `dh_link_jp` VALUES (21, '百度', 'https://www.baidu.com', '20190329/2f12ac2290231f8df500560249c29587.png', 0, 99, 1);
INSERT INTO `dh_link_jp` VALUES (22, '淘宝网', 'https://www.taobao.com', '20190329/4d44a51f41c2ae04b44fe645b63bffb5.png', 0, 95, 1);
INSERT INTO `dh_link_jp` VALUES (23, '京东商城', 'https://u.jd.com/Xjhe3T', '20190329/43ca84d8e00ed728efe8ed3e70e39907.png', 0, 90, 1);
INSERT INTO `dh_link_jp` VALUES (24, '携程旅游', 'http://hotels.ctrip.com?AllianceID=11175&sid=555450&ouid=&app=0301C00', '20190329/731a148c6e12472070aa5c4315ff6b00.png', 0, 85, 1);
INSERT INTO `dh_link_jp` VALUES (25, '优酷网', 'https://www.youku.com', '20190403/7ed8f9f8171b01ef87d22fe97cd8c380.png', 0, 80, 1);
INSERT INTO `dh_link_jp` VALUES (26, '新浪微博', 'https://weibo.com', '20190329/019f2f4817eca673235641a4d777d21f.png', 0, 93, 1);
INSERT INTO `dh_link_jp` VALUES (27, '唯品会', 'https://t.vip.com/585OMys', '20190329/9d5933c85d8bb2eff90b78e5713a3ff7.png', 0, 75, 1);
INSERT INTO `dh_link_jp` VALUES (28, '腾讯新闻', 'https://news.qq.com/', '20190329/64825038e1dcd50f78f8e64559d0e323.png', 0, 78, 1);
INSERT INTO `dh_link_jp` VALUES (29, '智联招聘', 'https://www.zhaopin.com', '20190329/247a663f98b183b22f66104ec15e4133.png', 0, 73, 1);
INSERT INTO `dh_link_jp` VALUES (30, '12306铁路', 'https://www.12306.cn', '20190329/1b359b2641bcc070056524ec0ae9af1c.png', 0, 70, 1);
INSERT INTO `dh_link_jp` VALUES (31, '天猫超市', 'https://s.click.taobao.com/t?e=m%3D2%26s%3DeXF9sr1QGOscQipKwQzePDAVflQIoZeppRe%2F8jaAHci5VBFTL4hn2UdfgXS2ACzlnwuRopoI2iPVmSPsqHnUtSpR8sRS6dFeCPoDpJEjhBVxlp2Qd2s0tWV10D5zBFYEcSpj5qSCmbA%3D', '20190403/4b01a6b9b40366a1085edd495b648ca9.png', 0, 68, 1);
INSERT INTO `dh_link_jp` VALUES (33, '58同城', 'https://58.com', '20190330/85ebb90db6f9269753bb902fc2162995.png', 0, 65, 1);
INSERT INTO `dh_link_jp` VALUES (34, '聚划算', 'https://s.click.taobao.com/t?e=m%3D2%26s%3Dx6i9Yt8FjvQcQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAuLnvWLIe7YQp484riHmHBUvuTCexJ5uFBzJRjY8Yc4N4zPKIuwZymiSm5usamS30eo0BcZWWIRYYA%2FDpPH01wK9AmARIwX9K%2BAjBDXvuqoU47FHjfsActnIQu5PdXpojKJn5AyUbPoV', '20190330/43e5f1d785e7bf71644eb9811f2ef460.png', 0, 63, 1);
INSERT INTO `dh_link_jp` VALUES (35, '飞猪旅行', 'https://s.click.taobao.com/t?e=m%3D2%26s%3DdgfW4OE04EQcQipKwQzePCperVdZeJviEViQ0P1Vf2kguMN8XjClAoRtGrUynetZ4Kufsm6okeMvuTCexJ5uFBzJRjY8Yc4N4zPKIuwZymiSm5usamS30X7uq6sLYIqu0Q7QOybCaQy9AmARIwX9K9E0MBlxnM%2FDnaYpFBIfC%2F2orLd93QuCUMYOae24fhW0', '20190330/453a3760d9f2dc5ffdc6ee315bc2945b.png', 0, 60, 1);
INSERT INTO `dh_link_jp` VALUES (36, '国美商城', 'https://www.gome.com.cn?cmpid=cps_20604_25079_&sid=20604&wid=25079', '20190402/2feae7d7aa0056a22cc9121ab7e090d3.png', 0, 58, 1);
INSERT INTO `dh_link_jp` VALUES (37, '网易考拉', 'http://163.lu/0LV963', '20190402/525c3d8f462f3cca6a24e7b445302096.jpg', 0, 59, 1);
INSERT INTO `dh_link_jp` VALUES (38, '同程旅游', 'http://www.ly.com?refid=48050718', '20190403/fc76db0ba87b9d6424bff0d22959773e.png', 0, 55, 1);
INSERT INTO `dh_link_jp` VALUES (39, '新华网', 'http://www.xinhuanet.com', '20190403/949b9a332bf7d82cf214618a2308740a.png', 0, 50, 1);
COMMIT;

-- ----------------------------
-- Table structure for dh_system
-- ----------------------------
DROP TABLE IF EXISTS `dh_system`;
CREATE TABLE `dh_system` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '网站名称',
  `url` varchar(255) DEFAULT NULL COMMENT '网址',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dh_system
-- ----------------------------
BEGIN;
INSERT INTO `dh_system` VALUES (1, '网址导航', 'http://123');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
