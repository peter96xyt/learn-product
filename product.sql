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
