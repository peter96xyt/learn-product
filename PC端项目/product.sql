DROP DATABASE IF EXISTS my_product;
CREATE DATABASE my_product CHARACTER SET utf8;
USE my_product;
CREATE TABLE index_top(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    pic         VARCHAR(256),
    lang_type   VARCHAR(16),
    author      VARCHAR(16),
    author_pic  VARCHAR(256),
    title       VARCHAR(32),
    up_time     DATETIME
);
INSERT INTO index_top VALUES(NULL,"./img/1345b851b2194b.png","国外网站","最美编辑部","img/1685b8aa8ef561_avatar.jpg","nipponcolors | 日本一个极富诗意的传统色配色网站","2018-8-28 10:16:05");
INSERT INTO index_top VALUES(NULL,"./img/1554b79c28da94.gif","zuimei-X专栏","","","推荐7款提高你的生活品质,既文艺简约又实用的APP","");
INSERT INTO index_top VALUES(NULL,"./img/link-1.png","zuimei-X专栏","","","简写社区|一个优质的创作社区","");
INSERT INTO index_top VALUES(NULL,"./img/huaban-33.png","中文网站","","","有格调|一个有逼格的优质内容精选网站","");

CREATE TABLE user_list(
    uid  INT PRIMARY KEY AUTO_INCREMENT,
    uname   VARCHAR(16),
    email   VARCHAR(64),
    upwd    VARCHAR(16)
);
INSERT INTO user_list VALUES(NULL,"dangdang","455798@qq.com","123456");
INSERT INTO user_list VALUES(NULL,"dingding","452198@qq.com","123789");
INSERT INTO user_list VALUES(NULL,"tom","135798@qq.com","456789");
INSERT INTO user_list VALUES(NULL,"jerry","sd25698@qq.com","789123");

CREATE TABLE main_thig(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    pic         VARCHAR(256),
    lang_type   VARCHAR(16),
    author      VARCHAR(16),
    author_pic  VARCHAR(256),
    title       VARCHAR(32),
    detail	VARCHAR(256),
    up_time     DATETIME
);
INSERT INTO main_thing VALUES(NULL,"img/main_L_1.jpg","中文网站","安逸余生","img/100.jpg","安逸导航丨致力于数字化资源的学术导航","安逸导航：https://anyi.life&nbsp;&nbsp;“安逸导航”是一个致力于学术研究及学术探索的学术导航，收录网站大多是具有数字化资源的网站","2018-09-05");
INSERT INTO main_thing VALUES(NULL,"img/main_L_2.png","中文网站","最美编辑部","img/200.jpg","安领贤简历 | 一款优秀的简历模板网站","网站地址： http://www.capabcv.com/&nbsp;&nbsp;网站介绍： 领贤简历，精心设计了领先的在线简历工具、提供专业的可下载的简历模板和大量职业发展...","2018-08-29");
INSERT INTO main_thing VALUES(NULL,"img/main_L_3.png","中文网站","最美编辑部","img/200.jpg","咚漫 | 一个可以在线看原创动漫的网站","网站地址： https://www.dongmanmanhua.cn/ 网站介绍： 咚漫是国内的一个可以在线看原创动漫的网站，聚集了很多爱画漫画的人，无意中发...","2018-08-29");
INSERT INTO main_thing VALUES(NULL,"img/main_L_4.jpg","互联网热点","最美编辑部","img/200.jpg","华住旗下1.3亿人开房数据恐遭泄露，涉及多个连锁酒店在暗网叫卖","北京时间8月28日早上6点，威胁猎人监测到暗网上出现了华住旗下多个连锁酒店开房信息数据的交易行为，数据标价8个比特币，约等于人民币35...","2018-08-28");
INSERT INTO main_thing VALUES(NULL,"img/1345b851b2194b.png","国外网站","最美编辑部","img/200.jpg","nipponcolors | 日本一个极富诗意的传统色配色网站","网站地址：http://nipponcolors.com网站介绍：这个关于日本传统色的网站非常漂亮，每个色彩都美，名字也好听，还有详细的色值可供设计工..","2018-08-28");
INSERT INTO main_thing VALUES(NULL,"img/4369dcc8350b6d2.jpg","国外网站","陳小偉HenryC","img/300.png","Local Panda | The China Travel Experts","网站地址：https://www.localpanda.com/网站介绍：LocalPanda，是一个全新的、与众不同的中国旅游平台，致力于改善游客的旅游体验。","2018-08-28");
INSERT INTO main_thing VALUES(NULL,"img/3251a5bafb057d4.jpg","国外网站","Personal","img/300.png","Icoeye | 新奇灵感插画设计博客","网站地址：http://www.icoeye.com/网站介绍：「IcoEye」是由一位设计师兼插画家Rogix所创建的博客网站，致力于分享他创作的插画作品","2018-08-28");
INSERT INTO main_thing VALUES(NULL,"img/Ez6fQn.jpg","互联网热点","凯度中国观察","img/300.png","全球Z世代即将成年，他们将如何改变世界?","很长时间以来，“千禧一代”（Millennials，在中国对应的是80后和90后）是品牌营销的重点人群。他们是全球化之后出生的第一代","2018-9-28");
INSERT INTO main_thing VALUES(NULL,"img/MRbaya.png","互联网热点","cnBeta","img/300.png","FB首次证实正在研发AR眼镜 多个相关项目齐头并进","据TechCrunch报道，Facebook增强现实（AR）业务主管菲克斯·柯尔克帕特里克（Ficus Kirkpatrick）日前证实，该公司正在研发AR眼镜。","2018-10-26");
