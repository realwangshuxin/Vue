SET NAMES UTF8;
DROP DATABASE IF EXISTS gs;
CREATE DATABASE gs CHARSET=UTF8;
USE gs;
CREATE TABLE gs_pro(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  p_img VARCHAR(360),
  p_title VARCHAR(32),
  p_img_t VARCHAR(360),
  p_name VARCHAR(32),
  p_tag VARCHAR(32)
);
INSERT INTO gs_pro VALUES(null,'img/pro/p1.jpg','让呼吸成为一种旅行|Tripper一次性电子烟 独家首发',
'img/pro/p1_t.jpg','最猛是我飞机','体验感');
INSERT INTO gs_pro VALUES(null,'img/pro/p2.jpg','supermean环保袋帆布包|HOWL原创设计品牌',
'img/pro/p2_t.jpg','HOWLSTUDIO','体验感');
INSERT INTO gs_pro VALUES(null,'img/pro/p3.jpg','Lime crime梦幻色染发膏',
'img/pro/p3_t.jpg','小姨子','夜店蹦迪');
INSERT INTO gs_pro VALUES(null,'img/pro/p4.jpg','《Love Theme From The Godfather》复古手摇音乐盒是教父中最深情地耳语',
'img/pro/p4_t.jpg','大鱼','体验感');
INSERT INTO gs_pro VALUES(null,'img/pro/p5.jpg','屁桃君限定款白桃茉莉夹心曲奇|Coookie9',
'img/pro/p5_t.jpg','coookie9','手工制品');
INSERT INTO gs_pro VALUES(null,'img/pro/p6.jpg','据说这个大众通病只有一罐肥宅快乐水可以治|MARSEVEN可乐耳饰',
'img/pro/p6_t.jpg','某某','配饰');
INSERT INTO gs_pro VALUES(null,'img/pro/p7.jpg','按下快门，用胶片记录0.66秒|ActionSampler四格相机',
'img/pro/p7_t.jpg','脑花厂长','复古');

-- #为商品表添加一列
--  ALTER TABLE xz_laptop ADD img_url VARCHAR(255);
-- #每一个商品图片 
--  UPDATE xz_laptop SET img_url = '01.jpg';
-- CREATE TABLE gs_fenlei(
--   fid INT PRIMARY KEY AUTO_INCREMENT,
--   bg VARCHAR(360),
--   img1 VARCHAR(360),
--   img2 VARCHAR(360),
--   img3 VARCHAR(360),
--   img4 VARCHAR(360),
--   img5 VARCHAR(360),
--   img6 VARCHAR(360),
--   p_title VARCHAR(36),
--   p_txt VARCHAR(36),
--   p1 VARCHAR(36),
--   p2 VARCHAR(36),
--   p3 VARCHAR(36),
--   p4 VARCHAR(36),
--   p5 VARCHAR(36),
--   p6 VARCHAR(36)
-- );

CREATE TABLE gs_login(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32)
);
INSERT INTO gs_login VALUES(null,'nancy','123456');
INSERT INTO gs_login VALUES(null,'wang','123456');
INSERT INTO gs_login VALUES(null,'baocheng','123456');

CREATE TABLE gs_chart(
  id INT,
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(360),
  title VARCHAR(100),
  price DECIMAL(5,2),
  count INT,
  size VARCHAR(36)
);
INSERT INTO gs_chart VALUES(2,null,"img/3.jpg",'[公路独家]三大殿堂级电子烟品牌，一次性小烟sqrd',35,12,'')