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

CREATE TABLE gs_jiu(
  jid INT PRIMARY KEY AUTO_INCREMENT,
  j_img VARCHAR(360),
  j_title VARCHAR(32),
  j_price VARCHAR(32)
);
INSERT INTO gs_jiu VALUES(null,'img/jiu/1.jpg','【临期特价】来自澳洲的百年姜汁汽水|Angus o','85~165');
INSERT INTO gs_jiu VALUES(null,'img/jiu/2.jpg','世界上第一款桃子味的可乐','19~114');
INSERT INTO gs_jiu VALUES(null,'img/jiu/3.jpg','喝下樱花可乐满满都是少女心','24');
INSERT INTO gs_jiu VALUES(null,'img/jiu/4.jpg','一口干掉的日本160毫升迷你可乐是最小的可乐','15~55');
INSERT INTO gs_jiu VALUES(null,'img/jiu/5.jpg','李茶德挂耳茶系列九曲红梅茶叶，2018新茶红茶包','39~100');
INSERT INTO gs_jiu VALUES(null,'img/jiu/6.jpg','让你在DJ台前充满精力跳动的Mate Mate马黛茶|碳酸饮料 6瓶装','76~152');
INSERT INTO gs_jiu VALUES(null,'img/jiu/7.jpg','来自瑞典的液体燕麦，低脂肪、高纤维健康饮品|oatly燕麦奶','24~112');
INSERT INTO gs_jiu VALUES(null,'img/jiu/8.jpg','这就是一杯能喝七八年的饮料 一千个人喝有一千种味道','26~135');
INSERT INTO gs_jiu VALUES(null,'img/jiu/9.jpg','1966 年科幻小说描绘的“未来食物”成为了现实|Soylent 代餐饮品','85~95');
INSERT INTO gs_jiu VALUES(null,'img/jiu/10.jpg','澳洲四星庄Hesketh小仙女莫斯卡托甜白起泡酒葡萄酒','119');
INSERT INTO gs_jiu VALUES(null,'img/jiu/11.jpg','如同蓝天，拥有海盐味道的齐藤蓝色可乐','99~110');
INSERT INTO gs_jiu VALUES(null,'img/jiu/12.jpg','【预售】传说二战时期苏联领导人专供，时隔26年的透明可口可乐再次正式发售','138~200');
INSERT INTO gs_jiu VALUES(null,'img/jiu/13.jpg','咖啡味的可口可乐，香气与气泡的完美结合|Coca-Cola Plus Coffee','16~290');
INSERT INTO gs_jiu VALUES(null,'img/jiu/14.jpg','自带派对野餐气质的西西里柠檬“小香槟”|LOKALES柠檬气泡酒 六支装','1325');
INSERT INTO gs_jiu VALUES(null,'img/jiu/15.jpg','日本春季限定Gokuri飘逸果肉水蜜桃汁','213~1110');
INSERT INTO gs_jiu VALUES(null,'img/jiu/16.jpg','【临期特价】来自澳洲的百年姜汁汽水|Angus o','85~165');
INSERT INTO gs_jiu VALUES(null,'img/jiu/17.jpg','世界上第一款桃子味的可乐','19~114');
INSERT INTO gs_jiu VALUES(null,'img/jiu/18.jpg','喝下樱花可乐满满都是少女心','24');
INSERT INTO gs_jiu VALUES(null,'img/jiu/19.jpg','一口干掉的日本160毫升迷你可乐是最小的可乐','15~55');
INSERT INTO gs_jiu VALUES(null,'img/jiu/20.jpg','李茶德挂耳茶系列九曲红梅茶叶，2018新茶红茶包','39~100');
INSERT INTO gs_jiu VALUES(null,'img/jiu/21.jpg','让你在DJ台前充满精力跳动的Mate Mate马黛茶|碳酸饮料 6瓶装','76~152');
INSERT INTO gs_jiu VALUES(null,'img/jiu/22.jpg','来自瑞典的液体燕麦，低脂肪、高纤维健康饮品|oatly燕麦奶','24~112');
INSERT INTO gs_jiu VALUES(null,'img/jiu/23.jpg','这就是一杯能喝七八年的饮料 一千个人喝有一千种味道','26~135');
INSERT INTO gs_jiu VALUES(null,'img/jiu/24.jpg','1966 年科幻小说描绘的“未来食物”成为了现实|Soylent 代餐饮品','85~95');
INSERT INTO gs_jiu VALUES(null,'img/jiu/25.jpg','澳洲四星庄Hesketh小仙女莫斯卡托甜白起泡酒葡萄酒','119');
INSERT INTO gs_jiu VALUES(null,'img/jiu/27.jpg','如同蓝天，拥有海盐味道的齐藤蓝色可乐','99~110');
INSERT INTO gs_jiu VALUES(null,'img/jiu/28.jpg','【预售】传说二战时期苏联领导人专供，时隔26年的透明可口可乐再次正式发售','138~200');
INSERT INTO gs_jiu VALUES(null,'img/jiu/29.jpg','咖啡味的可口可乐，香气与气泡的完美结合|Coca-Cola Plus Coffee','16~290');
INSERT INTO gs_jiu VALUES(null,'img/jiu/30.jpg','自带派对野餐气质的西西里柠檬“小香槟”|LOKALES柠檬气泡酒 六支装','1325');
INSERT INTO gs_jiu VALUES(null,'img/jiu/7.jpg','来自瑞典的液体燕麦，低脂肪、高纤维健康饮品|oatly燕麦奶','24~112');
INSERT INTO gs_jiu VALUES(null,'img/jiu/8.jpg','这就是一杯能喝七八年的饮料 一千个人喝有一千种味道','26~135');
INSERT INTO gs_jiu VALUES(null,'img/jiu/9.jpg','1966 年科幻小说描绘的“未来食物”成为了现实|Soylent 代餐饮品','85~95');
INSERT INTO gs_jiu VALUES(null,'img/jiu/10.jpg','澳洲四星庄Hesketh小仙女莫斯卡托甜白起泡酒葡萄酒','119');
INSERT INTO gs_jiu VALUES(null,'img/jiu/11.jpg','如同蓝天，拥有海盐味道的齐藤蓝色可乐','99~110');
INSERT INTO gs_jiu VALUES(null,'img/jiu/12.jpg','【预售】传说二战时期苏联领导人专供，时隔26年的透明可口可乐再次正式发售','138~200');
INSERT INTO gs_jiu VALUES(null,'img/jiu/13.jpg','咖啡味的可口可乐，香气与气泡的完美结合|Coca-Cola Plus Coffee','16~290');
INSERT INTO gs_jiu VALUES(null,'img/jiu/14.jpg','自带派对野餐气质的西西里柠檬“小香槟”|LOKALES柠檬气泡酒 六支装','1325');
INSERT INTO gs_jiu VALUES(null,'img/jiu/15.jpg','日本春季限定Gokuri飘逸果肉水蜜桃汁','213~1110');
INSERT INTO gs_jiu VALUES(null,'img/jiu/16.jpg','【临期特价】来自澳洲的百年姜汁汽水|Angus o','85~165');
INSERT INTO gs_jiu VALUES(null,'img/jiu/17.jpg','世界上第一款桃子味的可乐','19~114');