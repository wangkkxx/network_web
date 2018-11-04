SET NAMES UTF8;
DROP DATABASE IF EXISTS wshl;
CREATE DATABASE wshl CHARSET=UTF8;
USE wshl;
#用户数据表
CREATE TABLE `wshl_user`(
  `uid` INT(11)  NULL AUTO_INCREMENT,
  `uname` VARCHAR(32) DEFAULT NULL,
  `upwd` VARCHAR(32) DEFAULT NULL,
  `user_name` VARCHAR(32) DEFAULT NULL,
  `user_id` INT(18) DEFAULT NULL,
  `qq` INT(20) DEFAULT NULL,
  `phone` VARCHAR(32) DEFAULT NULL,
  `email` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY  (`uid`)
);
INSERT INTO `wshl_user` VALUES('1', 'dingding', '123456', '丁丁', '456214197805129625', '1234215123', '15824124562', '1234215123@qq.com');
INSERT INTO `wshl_user` VALUES('2', 'dangdang', '123456', '当当', '340812198006132962', '12345612', '18612345678', '12345612@qq.com');
INSERT INTO `wshl_user` VALUES('3', 'tom', '123456', 'tom', '251612199903154852', '89802531', '18362451245', '89802531@qq.com');
INSERT INTO `wshl_user` VALUES('4', 'jerry', '123456', 'jerry', '142456196808283215', '9984512', '13815241236', '9984512@qq.com');
INSERT INTO `wshl_user` VALUES('5', 'david', '123456', 'david', '541245197312063416', '45123652', '15312456213', '45123652@qq.com');
INSERT INTO `wshl_user` VALUES('6', 'lilei', '123456', '李雷', '341246199610234928', '1452638479', '15612345689', '1452638479@qq.com');
INSERT INTO `wshl_user` VALUES('7', 'hanmeimei', '123456', '韩梅梅', '234512199511261349', '884615326', '17612354896', '884615326@qq.com');
INSERT INTO `wshl_user` VALUES('8', 'ada', '123456', 'ada', '340827199202184920', '554216389', '18612354869', 'ada@sina.com');
INSERT INTO `wshl_user` VALUES('9', 'lisa', '123456', 'lisa', '234513199707071285', '234214562', '15345821687', 'lisa@123.com');
INSERT INTO `wshl_user` VALUES('10', 'red', '123456', 'red', '451286187011264903', '34221689', '18362475162', '34221689@qq.com');

#产品类别表
CREATE TABLE `wshl_product_family`(
  `fid` INT(11)  NULL AUTO_INCREMENT,
  `fname` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY  (`fid`)
);
INSERT INTO `wshl_product_family` VALUES ('1', 'domains');
INSERT INTO `wshl_product_family` VALUES ('2', 'hosts');
INSERT INTO `wshl_product_family` VALUES ('3', 'clouds');
INSERT INTO `wshl_product_family` VALUES ('4', 'idc');

#域名表
CREATE TABLE `wshl_domains`(
  `did` INT(11)  NULL AUTO_INCREMENT,
  `domain` VARCHAR(32) DEFAULT NULL,
  `title` VARCHAR(32) DEFAULT NULL,
  `original_price` DECIMAL(6,2) DEFAULT NULL,
  `now_price` DECIMAL(6,2) DEFAULT NULL,
  `renewal_price` DECIMAL(6,2) DEFAULT NULL,
  `shift_price` DECIMAL(6,2) DEFAULT NULL,
  PRIMARY KEY  (`did`)
);
INSERT INTO `wshl_domains` VALUES ('1','.top','新顶级域名','65','15','65','65');
INSERT INTO `wshl_domains` VALUES ('2','.com','全球用户注册最多的域名','100','59','78','78');
INSERT INTO `wshl_domains` VALUES ('3','.cn','中国国家级通用域名','400','38','45','45');
INSERT INTO `wshl_domains` VALUES ('4','.net','全球广泛流行的通用域名','100','80','108','108');
INSERT INTO `wshl_domains` VALUES ('5','.org','广泛流行的通用域名','100','80','108','108');
INSERT INTO `wshl_domains` VALUES ('6','.cc','商业公司通用域名','100','280','280','280');
INSERT INTO `wshl_domains` VALUES ('7','.me','黑山国家域名','150','280','280','280');
INSERT INTO `wshl_domains` VALUES ('8','.wang','新顶级域名','600','300','300','300');
INSERT INTO `wshl_domains` VALUES ('9','.xyz','新顶级域名','NULL','300','300','300');
INSERT INTO `wshl_domains` VALUES ('10','.pw','专业网址域名','NULL','300','300','300');
INSERT INTO `wshl_domains` VALUES ('11','.biz','商业领域公司优选域名','NULL','160','160','160');
INSERT INTO `wshl_domains` VALUES ('12','.mobi','特指"移动设备"顶级域名','NULL','128','128','128');
INSERT INTO `wshl_domains` VALUES ('13','.name','适用个人注册的通用顶级域名','NULL','80','80','80');
INSERT INTO `wshl_domains` VALUES ('14','.us','美国国家域名','NULL','300','300','300');
INSERT INTO `wshl_domains` VALUES ('15','.info','提供信息服务的企业','NULL','180','180','180');
INSERT INTO `wshl_domains` VALUES ('16','.tv','网络视频服务提供者的优选域名','NULL','380','380','380');
INSERT INTO `wshl_domains` VALUES ('17','.hk','香港特别行政区域名','NULL','280','280','280');
INSERT INTO `wshl_domains` VALUES ('18','.tw','台湾域名','NULL','360','360','360');
INSERT INTO `wshl_domains` VALUES ('19','.tel','适用于电话方面的域名','NULL','160','160','160');
INSERT INTO `wshl_domains` VALUES ('20','.in','印度域名','NULL','300','300','300');
INSERT INTO `wshl_domains` VALUES ('21','.la','老挝域名','NULL','300','300','300');
INSERT INTO `wshl_domains` VALUES ('22','.co','国际通用的商业顶级域名','NULL','300','300','30');
INSERT INTO `wshl_domains` VALUES ('23','.cm','喀麦隆国家域名','NULL','300','300','300');
INSERT INTO `wshl_domains` VALUES ('24','.im','马恩岛的国家代码顶级域名','NULL','300','300','300');
INSERT INTO `wshl_domains` VALUES ('25','.gov.cn','中国政府机构专用域名','NULL','180','180','180');
INSERT INTO `wshl_domains` VALUES ('26','.com.cn','国家级域名','NULL','38','45','45');
INSERT INTO `wshl_domains` VALUES ('27','.net.cn','国家级域名','NULL','38','45','45');
INSERT INTO `wshl_domains` VALUES ('28','.org.cn','国家级域名','NULL','38','45','45');
INSERT INTO `wshl_domains` VALUES ('29','.中文.com','中文国际通用域名','NULL','120','120','120');
INSERT INTO `wshl_domains` VALUES ('30','.中国','中文国家域名','NULL','320','320','320');
INSERT INTO `wshl_domains` VALUES ('31','.公司','中文商业域名','NULL','300','300','300');
INSERT INTO `wshl_domains` VALUES ('32','.网络','中文互联网域名','NULL','320','320','320');
INSERT INTO `wshl_domains` VALUES ('33','.中文.biz','中文国家域名','NULL','160','160','160');
INSERT INTO `wshl_domains` VALUES ('34','.中文.cc','中文商业域名','NULL','280','280','280');
INSERT INTO `wshl_domains` VALUES ('35','.中文.tv','中文互联网域名','NULL','380','380','380');
INSERT INTO `wshl_domains` VALUES ('36','.中文.hk','中文国家域名','NULL','380','380','380');
INSERT INTO `wshl_domains` VALUES ('37','.中文.tw','中国台湾地区域名','NULL','450','450','450');

#云虚拟主机产品类别表
CREATE TABLE `wshl_hosts_family`(
  `hf_id` INT(11)  NULL AUTO_INCREMENT,
  `hf_name` VARCHAR(32) DEFAULT NULL,
  `intr` VARCHAR(64) DEFAULT NULL,
  PRIMARY KEY  (`hf_id`)
);
INSERT INTO `wshl_hosts_family` VALUES ('1','香港国际','香港虚拟主机，采用电信CN2直连网络，国内访问速度快。无需备案，即买即用，方便快捷！');
INSERT INTO `wshl_hosts_family` VALUES ('2','华中BGP','国内虚拟主机，采用BGP多线网络，全国全网访问无障碍。域名已有备案号即可绑定使用，自动识别域名白名单。');
INSERT INTO `wshl_hosts_family` VALUES ('3','美国高防','美国高防虚拟主机，独立IP免费获赠20G流量防御，CN2电信专线，国内访问速度快，免备案！');

#香港国际产品类别表
CREATE TABLE `wshl_hosts_hk_family`(
  `hkf_id` INT(8)  NULL AUTO_INCREMENT,
  `hkf_name` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY  (`hkf_id`)
);
INSERT INTO `wshl_hosts_hk_family` VALUES ('1','香港1入门型');
INSERT INTO `wshl_hosts_hk_family` VALUES ('2','香港1入门型D');
INSERT INTO `wshl_hosts_hk_family` VALUES ('3','香港1经济型');
INSERT INTO `wshl_hosts_hk_family` VALUES ('4','香港1经济型D');
INSERT INTO `wshl_hosts_hk_family` VALUES ('5','香港1标准型');
INSERT INTO `wshl_hosts_hk_family` VALUES ('6','香港1标准型D');
INSERT INTO `wshl_hosts_hk_family` VALUES ('7','香港1企业型');
INSERT INTO `wshl_hosts_hk_family` VALUES ('8','香港1企业型D');
INSERT INTO `wshl_hosts_hk_family` VALUES ('9','香港1发展型');
INSERT INTO `wshl_hosts_hk_family` VALUES ('10','香港1发展型D');
INSERT INTO `wshl_hosts_hk_family` VALUES ('11','香港1商务型');
INSERT INTO `wshl_hosts_hk_family` VALUES ('12','香港1商务型D');
INSERT INTO `wshl_hosts_hk_family` VALUES ('13','香港1豪华型');
INSERT INTO `wshl_hosts_hk_family` VALUES ('14','香港1豪华型D');
INSERT INTO `wshl_hosts_hk_family` VALUES ('15','香港1旗舰型');
INSERT INTO `wshl_hosts_hk_family` VALUES ('16','香港1旗舰型D');

#华中BGP产品类别表
CREATE TABLE `wshl_hosts_hz_family`(
  `hzf_id` INT(8)  NULL AUTO_INCREMENT,
  `hzf_name` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY  (`hzf_id`)
);
INSERT INTO `wshl_hosts_hz_family` VALUES ('1','华中1入门型');
INSERT INTO `wshl_hosts_hz_family` VALUES ('2','华中1入门型D');
INSERT INTO `wshl_hosts_hz_family` VALUES ('3','华中1经济型');
INSERT INTO `wshl_hosts_hz_family` VALUES ('4','华中1经济型D');
INSERT INTO `wshl_hosts_hz_family` VALUES ('5','华中1标准型');
INSERT INTO `wshl_hosts_hz_family` VALUES ('6','华中1标准型D');
INSERT INTO `wshl_hosts_hz_family` VALUES ('7','华中1企业型');
INSERT INTO `wshl_hosts_hz_family` VALUES ('8','华中1企业型D');
INSERT INTO `wshl_hosts_hz_family` VALUES ('9','华中1发展型');
INSERT INTO `wshl_hosts_hz_family` VALUES ('10','华中1发展型D');
INSERT INTO `wshl_hosts_hz_family` VALUES ('11','华中1商务型');
INSERT INTO `wshl_hosts_hz_family` VALUES ('12','华中1商务型D');
INSERT INTO `wshl_hosts_hz_family` VALUES ('13','华中1豪华型');
INSERT INTO `wshl_hosts_hz_family` VALUES ('14','华中1豪华型D');
INSERT INTO `wshl_hosts_hz_family` VALUES ('15','华中1旗舰型');
INSERT INTO `wshl_hosts_hz_family` VALUES ('16','华中1旗舰型D');

#美国高防产品类别表
CREATE TABLE `wshl_hosts_mg_family`(
  `mgf_id` INT(8)  NULL AUTO_INCREMENT,
  `mgf_name` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY  (`mgf_id`)
);
INSERT INTO `wshl_hosts_mg_family` VALUES ('1','美国1入门型');
INSERT INTO `wshl_hosts_mg_family` VALUES ('2','美国1入门型D');
INSERT INTO `wshl_hosts_mg_family` VALUES ('3','美国1经济型');
INSERT INTO `wshl_hosts_mg_family` VALUES ('4','美国1经济型D');
INSERT INTO `wshl_hosts_mg_family` VALUES ('5','美国1标准型');
INSERT INTO `wshl_hosts_mg_family` VALUES ('6','美国1标准型D');
INSERT INTO `wshl_hosts_mg_family` VALUES ('7','美国1企业型');
INSERT INTO `wshl_hosts_mg_family` VALUES ('8','美国1企业型D');
INSERT INTO `wshl_hosts_mg_family` VALUES ('9','美国1发展型');
INSERT INTO `wshl_hosts_mg_family` VALUES ('10','美国1发展型D');
INSERT INTO `wshl_hosts_mg_family` VALUES ('11','美国1商务型');
INSERT INTO `wshl_hosts_mg_family` VALUES ('12','美国1商务型D');
INSERT INTO `wshl_hosts_mg_family` VALUES ('13','美国1豪华型');
INSERT INTO `wshl_hosts_mg_family` VALUES ('14','美国1豪华型D');
INSERT INTO `wshl_hosts_mg_family` VALUES ('15','美国1旗舰型');
INSERT INTO `wshl_hosts_mg_family` VALUES ('16','美国1旗舰型D');

#香港主机产品表
CREATE TABLE `wshl_hosts_hongkong`(
  `hk_id` INT(8)  NULL AUTO_INCREMENT,
  `model_name` VARCHAR(16) DEFAULT NULL,
  `capacity` VARCHAR(8) DEFAULT NULL,
  `virtual_directory` INT(8) DEFAULT NULL,
  `database` VARCHAR(32) DEFAULT NULL,
  `post` VARCHAR(32) DEFAULT NULL,
  `bandwidth` VARCHAR(8) DEFAULT NULL,
  `ip` VARCHAR(32) DEFAULT NULL,
  `iis` VARCHAR(32) DEFAULT NULL,
  `duration` VARCHAR(8) DEFAULT NULL,
  `price` DECIMAL(8,2) DEFAULT NULL,
  PRIMARY KEY  (`hk_id`)
);
#香港1入门型1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('1','香港1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','1年','98');
INSERT INTO `wshl_hosts_hongkong` VALUES ('2','香港1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','2年','176');
INSERT INTO `wshl_hosts_hongkong` VALUES ('3','香港1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','3年','255');
INSERT INTO `wshl_hosts_hongkong` VALUES ('4','香港1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','4年','333');
INSERT INTO `wshl_hosts_hongkong` VALUES ('5','香港1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','2年','412');
#香港1经济型1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('6','香港1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','1年','168');
INSERT INTO `wshl_hosts_hongkong` VALUES ('7','香港1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','2年','302');
INSERT INTO `wshl_hosts_hongkong` VALUES ('8','香港1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','3年','437');
INSERT INTO `wshl_hosts_hongkong` VALUES ('9','香港1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','4年','571');
INSERT INTO `wshl_hosts_hongkong` VALUES ('10','香港1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','5年','706');
#香港1标准型1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('11','香港1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','1年','228');
INSERT INTO `wshl_hosts_hongkong` VALUES ('12','香港1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','2年','410');
INSERT INTO `wshl_hosts_hongkong` VALUES ('13','香港1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','3年','593');
INSERT INTO `wshl_hosts_hongkong` VALUES ('14','香港1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','4年','775');
INSERT INTO `wshl_hosts_hongkong` VALUES ('15','香港1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','5年','958');
#香港1企业型1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('16','香港1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','1年','298');
INSERT INTO `wshl_hosts_hongkong` VALUES ('17','香港1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','2年','536');
INSERT INTO `wshl_hosts_hongkong` VALUES ('18','香港1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','3年','775');
INSERT INTO `wshl_hosts_hongkong` VALUES ('19','香港1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','4年','1013');
INSERT INTO `wshl_hosts_hongkong` VALUES ('20','香港1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','5年','1252');
#香港1发展型1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('21','香港1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','1年','398');
INSERT INTO `wshl_hosts_hongkong` VALUES ('22','香港1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','2年','716');
INSERT INTO `wshl_hosts_hongkong` VALUES ('23','香港1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','3年','1035');
INSERT INTO `wshl_hosts_hongkong` VALUES ('24','香港1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','4年','1353');
INSERT INTO `wshl_hosts_hongkong` VALUES ('25','香港1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','5年','1672');
#香港1商务型1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('26','香港1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','1年','598');
INSERT INTO `wshl_hosts_hongkong` VALUES ('27','香港1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','2年','1076');
INSERT INTO `wshl_hosts_hongkong` VALUES ('28','香港1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','3年','1555');
INSERT INTO `wshl_hosts_hongkong` VALUES ('29','香港1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','4年','2033');
INSERT INTO `wshl_hosts_hongkong` VALUES ('30','香港1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','5年','2512');
#香港1豪华型1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('31','香港1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','1年','798');
INSERT INTO `wshl_hosts_hongkong` VALUES ('32','香港1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','2年','1436');
INSERT INTO `wshl_hosts_hongkong` VALUES ('33','香港1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','3年','2075');
INSERT INTO `wshl_hosts_hongkong` VALUES ('34','香港1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','4年','2713');
INSERT INTO `wshl_hosts_hongkong` VALUES ('35','香港1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','5年','3352');
#香港1旗舰型1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('36','香港1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','1年','998');
INSERT INTO `wshl_hosts_hongkong` VALUES ('37','香港1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','2年','1796');
INSERT INTO `wshl_hosts_hongkong` VALUES ('38','香港1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','3年','2595');
INSERT INTO `wshl_hosts_hongkong` VALUES ('39','香港1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','4年','3393');
INSERT INTO `wshl_hosts_hongkong` VALUES ('40','香港1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','5年','4192');
#香港1入门型D1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('41','香港1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','1年','198');
INSERT INTO `wshl_hosts_hongkong` VALUES ('42','香港1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','2年','356');
INSERT INTO `wshl_hosts_hongkong` VALUES ('43','香港1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','3年','515');
INSERT INTO `wshl_hosts_hongkong` VALUES ('44','香港1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','4年','673');
INSERT INTO `wshl_hosts_hongkong` VALUES ('45','香港1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','2年','832');
#香港1经济型D1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('46','香港1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','1年','298');
INSERT INTO `wshl_hosts_hongkong` VALUES ('47','香港1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','2年','536');
INSERT INTO `wshl_hosts_hongkong` VALUES ('48','香港1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','3年','775');
INSERT INTO `wshl_hosts_hongkong` VALUES ('49','香港1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','4年','1013');
INSERT INTO `wshl_hosts_hongkong` VALUES ('50','香港1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','5年','1252');
#香港1标准型D1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('51','香港1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','1年','398');
INSERT INTO `wshl_hosts_hongkong` VALUES ('52','香港1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','2年','716');
INSERT INTO `wshl_hosts_hongkong` VALUES ('53','香港1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','3年','1035');
INSERT INTO `wshl_hosts_hongkong` VALUES ('54','香港1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','4年','1353');
INSERT INTO `wshl_hosts_hongkong` VALUES ('55','香港1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','5年','1672');
#香港1企业型D1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('56','香港1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','1年','498');
INSERT INTO `wshl_hosts_hongkong` VALUES ('57','香港1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','2年','896');
INSERT INTO `wshl_hosts_hongkong` VALUES ('58','香港1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','3年','1295');
INSERT INTO `wshl_hosts_hongkong` VALUES ('59','香港1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','4年','1693');
INSERT INTO `wshl_hosts_hongkong` VALUES ('60','香港1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','5年','2092');
#香港1发展型D1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('61','香港1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','独立IP','无限制数量','1年','598');
INSERT INTO `wshl_hosts_hongkong` VALUES ('62','香港1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','2年','1076');
INSERT INTO `wshl_hosts_hongkong` VALUES ('63','香港1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','3年','1555');
INSERT INTO `wshl_hosts_hongkong` VALUES ('64','香港1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','4年','2033');
INSERT INTO `wshl_hosts_hongkong` VALUES ('65','香港1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','5年','2512');
#香港1商务型D1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('66','香港1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','1年','798');
INSERT INTO `wshl_hosts_hongkong` VALUES ('67','香港1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','2年','1436');
INSERT INTO `wshl_hosts_hongkong` VALUES ('68','香港1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','3年','2075');
INSERT INTO `wshl_hosts_hongkong` VALUES ('69','香港1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','4年','2713');
INSERT INTO `wshl_hosts_hongkong` VALUES ('70','香港1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','5年','3352');
#香港1豪华型D1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('71','香港1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','1年','998');
INSERT INTO `wshl_hosts_hongkong` VALUES ('72','香港1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','2年','1796');
INSERT INTO `wshl_hosts_hongkong` VALUES ('73','香港1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','3年','2595');
INSERT INTO `wshl_hosts_hongkong` VALUES ('74','香港1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','4年','3393');
INSERT INTO `wshl_hosts_hongkong` VALUES ('75','香港1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','5年','4192');
#香港1旗舰型D1~5年
INSERT INTO `wshl_hosts_hongkong` VALUES ('76','香港1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','1年','1298');
INSERT INTO `wshl_hosts_hongkong` VALUES ('77','香港1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','2年','2336');
INSERT INTO `wshl_hosts_hongkong` VALUES ('78','香港1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','3年','3375');
INSERT INTO `wshl_hosts_hongkong` VALUES ('79','香港1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','4年','4413');
INSERT INTO `wshl_hosts_hongkong` VALUES ('80','香港1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','5年','5452');

#华中BGP产品表
CREATE TABLE `wshl_hosts_huazhong`(
  `hz_id` INT(8)  NULL AUTO_INCREMENT,
  `model_name` VARCHAR(16) DEFAULT NULL,
  `capacity` VARCHAR(8) DEFAULT NULL,
  `virtual_directory` INT(8) DEFAULT NULL,
  `database` VARCHAR(32) DEFAULT NULL,
  `post` VARCHAR(32) DEFAULT NULL,
  `bandwidth` VARCHAR(8) DEFAULT NULL,
  `ip` VARCHAR(32) DEFAULT NULL,
  `iis` VARCHAR(32) DEFAULT NULL,
  `duration` VARCHAR(8) DEFAULT NULL,
  `price` DECIMAL(8,2) DEFAULT NULL,
  PRIMARY KEY  (`hz_id`)
);
#华中1入门型1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('1','华中1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','1年','78');
INSERT INTO `wshl_hosts_huazhong` VALUES ('2','华中1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','2年','140');
INSERT INTO `wshl_hosts_huazhong` VALUES ('3','华中1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','3年','203');
INSERT INTO `wshl_hosts_huazhong` VALUES ('4','华中1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','4年','265');
INSERT INTO `wshl_hosts_huazhong` VALUES ('5','华中1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','5年','328');
#华中1经济型1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('6','华中1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','1年','108');
INSERT INTO `wshl_hosts_huazhong` VALUES ('7','华中1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','2年','194');
INSERT INTO `wshl_hosts_huazhong` VALUES ('8','华中1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','3年','281');
INSERT INTO `wshl_hosts_huazhong` VALUES ('9','华中1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','4年','367');
INSERT INTO `wshl_hosts_huazhong` VALUES ('10','华中1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','5年','454');
#华中1标准型1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('11','华中1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','1年','168');
INSERT INTO `wshl_hosts_huazhong` VALUES ('12','华中1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','2年','302');
INSERT INTO `wshl_hosts_huazhong` VALUES ('13','华中1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','3年','437');
INSERT INTO `wshl_hosts_huazhong` VALUES ('14','华中1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','4年','571');
INSERT INTO `wshl_hosts_huazhong` VALUES ('15','华中1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','5年','706');
#华中1企业型1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('16','华中1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','1年','268');
INSERT INTO `wshl_hosts_huazhong` VALUES ('17','华中1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','2年','482');
INSERT INTO `wshl_hosts_huazhong` VALUES ('18','华中1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','3年','697');
INSERT INTO `wshl_hosts_huazhong` VALUES ('19','华中1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','4年','911');
INSERT INTO `wshl_hosts_huazhong` VALUES ('20','华中1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','5年','1126');
#华中1发展型1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('21','华中1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','1年','368');
INSERT INTO `wshl_hosts_huazhong` VALUES ('22','华中1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','2年','662');
INSERT INTO `wshl_hosts_huazhong` VALUES ('23','华中1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','3年','957');
INSERT INTO `wshl_hosts_huazhong` VALUES ('24','华中1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','4年','1251');
INSERT INTO `wshl_hosts_huazhong` VALUES ('25','华中1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','5年','1546');
#华中1商务型1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('26','华中1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','1年','568');
INSERT INTO `wshl_hosts_huazhong` VALUES ('27','华中1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','2年','1022');
INSERT INTO `wshl_hosts_huazhong` VALUES ('28','华中1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','3年','1477');
INSERT INTO `wshl_hosts_huazhong` VALUES ('29','华中1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','4年','1931');
INSERT INTO `wshl_hosts_huazhong` VALUES ('30','华中1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','5年','2386');
#华中1豪华型1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('31','华中1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','1年','768');
INSERT INTO `wshl_hosts_huazhong` VALUES ('32','华中1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','2年','1382');
INSERT INTO `wshl_hosts_huazhong` VALUES ('33','华中1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','3年','1997');
INSERT INTO `wshl_hosts_huazhong` VALUES ('34','华中1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','4年','2611');
INSERT INTO `wshl_hosts_huazhong` VALUES ('35','华中1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','5年','3226');
#华中1旗舰型1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('36','华中1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','1年','968');
INSERT INTO `wshl_hosts_huazhong` VALUES ('37','华中1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','2年','1742');
INSERT INTO `wshl_hosts_huazhong` VALUES ('38','华中1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','3年','2517');
INSERT INTO `wshl_hosts_huazhong` VALUES ('39','华中1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','4年','3291');
INSERT INTO `wshl_hosts_huazhong` VALUES ('40','华中1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','5年','4066');
#华中1入门型D1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('41','华中1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','1年','298');
INSERT INTO `wshl_hosts_huazhong` VALUES ('42','华中1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','2年','536');
INSERT INTO `wshl_hosts_huazhong` VALUES ('43','华中1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','3年','775');
INSERT INTO `wshl_hosts_huazhong` VALUES ('44','华中1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','4年','1013');
INSERT INTO `wshl_hosts_huazhong` VALUES ('45','华中1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','5年','1252');
#华中1经济型D1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('46','华中1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','1年','398');
INSERT INTO `wshl_hosts_huazhong` VALUES ('47','华中1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','2年','716');
INSERT INTO `wshl_hosts_huazhong` VALUES ('48','华中1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','3年','1035');
INSERT INTO `wshl_hosts_huazhong` VALUES ('49','华中1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','4年','1353');
INSERT INTO `wshl_hosts_huazhong` VALUES ('50','华中1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','5年','1672');
#华中1标准型D1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('51','华中1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','1年','498');
INSERT INTO `wshl_hosts_huazhong` VALUES ('52','华中1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','2年','896');
INSERT INTO `wshl_hosts_huazhong` VALUES ('53','华中1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','3年','1295');
INSERT INTO `wshl_hosts_huazhong` VALUES ('54','华中1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','4年','1693');
INSERT INTO `wshl_hosts_huazhong` VALUES ('55','华中1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','5年','2092');
#华中1企业型D1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('56','华中1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','1年','598');
INSERT INTO `wshl_hosts_huazhong` VALUES ('57','华中1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','2年','1076');
INSERT INTO `wshl_hosts_huazhong` VALUES ('58','华中1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','3年','1555');
INSERT INTO `wshl_hosts_huazhong` VALUES ('59','华中1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','4年','2033');
INSERT INTO `wshl_hosts_huazhong` VALUES ('60','华中1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','5年','2512');
#华中1发展型D1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('61','华中1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','独立IP','无限制数量','1年','698');
INSERT INTO `wshl_hosts_huazhong` VALUES ('62','华中1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','独立IP','无限制数量','2年','1256');
INSERT INTO `wshl_hosts_huazhong` VALUES ('63','华中1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','独立IP','无限制数量','3年','
1815');
INSERT INTO `wshl_hosts_huazhong` VALUES ('64','华中1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','独立IP','无限制数量','4年','2373');
INSERT INTO `wshl_hosts_huazhong` VALUES ('65','华中1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','5年','2932');
#华中1商务型D1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('66','华中1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','1年','898');
INSERT INTO `wshl_hosts_huazhong` VALUES ('67','华中1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','2年','1616');
INSERT INTO `wshl_hosts_huazhong` VALUES ('68','华中1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','3年','2335');
INSERT INTO `wshl_hosts_huazhong` VALUES ('69','华中1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','4年','3053');
INSERT INTO `wshl_hosts_huazhong` VALUES ('70','华中1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','5年','3772');
#华中1豪华型D1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('71','华中1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','1年','1098');
INSERT INTO `wshl_hosts_huazhong` VALUES ('72','华中1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','2年','1976');
INSERT INTO `wshl_hosts_huazhong` VALUES ('73','华中1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','3年','2855');
INSERT INTO `wshl_hosts_huazhong` VALUES ('74','华中1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','4年','3733');
INSERT INTO `wshl_hosts_huazhong` VALUES ('75','华中1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','5年','4612');
#华中1旗舰型D1~5年
INSERT INTO `wshl_hosts_huazhong` VALUES ('76','华中1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','1年','1498');
INSERT INTO `wshl_hosts_huazhong` VALUES ('77','华中1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','2年','2696');
INSERT INTO `wshl_hosts_huazhong` VALUES ('78','华中1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','3年','3895');
INSERT INTO `wshl_hosts_huazhong` VALUES ('79','华中1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','4年','5093');
INSERT INTO `wshl_hosts_huazhong` VALUES ('80','华中1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','5年','6292');

#美国高防产品表
CREATE TABLE `wshl_hosts_meigao`(
  `mg_id` INT(8)  NULL AUTO_INCREMENT,
  `model_name` VARCHAR(16) DEFAULT NULL,
  `capacity` VARCHAR(8) DEFAULT NULL,
  `virtual_directory` INT(8) DEFAULT NULL,
  `database` VARCHAR(32) DEFAULT NULL,
  `post` VARCHAR(32) DEFAULT NULL,
  `bandwidth` VARCHAR(8) DEFAULT NULL,
  `ip` VARCHAR(32) DEFAULT NULL,
  `iis` VARCHAR(32) DEFAULT NULL,
  `duration` VARCHAR(8) DEFAULT NULL,
  `price` DECIMAL(8,2) DEFAULT NULL,
  PRIMARY KEY  (`mg_id`)
);
#美国1入门型1~5
INSERT INTO `wshl_hosts_meigao` VALUES ('1','美国1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','1年','88');
INSERT INTO `wshl_hosts_meigao` VALUES ('2','美国1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','2年','158');
INSERT INTO `wshl_hosts_meigao` VALUES ('3','美国1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','3年','229');
INSERT INTO `wshl_hosts_meigao` VALUES ('4','美国1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','4年','299');
INSERT INTO `wshl_hosts_meigao` VALUES ('5','美国1入门型','500M','0','MYSQL100M','500M 10用户','2M','共享IP','200个','5年','370');
#美国1经济型1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('6','美国1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','1年','128');
INSERT INTO `wshl_hosts_meigao` VALUES ('7','美国1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','2年','230');
INSERT INTO `wshl_hosts_meigao` VALUES ('8','美国1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','3年','333');
INSERT INTO `wshl_hosts_meigao` VALUES ('9','美国1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','4年','435');
INSERT INTO `wshl_hosts_meigao` VALUES ('10','美国1经济型','1000M','0','MYSQL300M','500M 10用户','3M','共享IP','500个','5年','538');
#美国1标准型1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('11','美国1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','1年','198');
INSERT INTO `wshl_hosts_meigao` VALUES ('12','美国1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','2年','356');
INSERT INTO `wshl_hosts_meigao` VALUES ('13','美国1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','3年','515');
INSERT INTO `wshl_hosts_meigao` VALUES ('14','美国1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','4年','673');
INSERT INTO `wshl_hosts_meigao` VALUES ('15','美国1标准型','2000M','0','MYSQL500M','500M 10用户','4M','共享IP','800个','5年','832');
#美国1企业型1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('16','美国1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','1年','268');
INSERT INTO `wshl_hosts_meigao` VALUES ('17','美国1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','2年','482');
INSERT INTO `wshl_hosts_meigao` VALUES ('18','美国1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','3年','697');
INSERT INTO `wshl_hosts_meigao` VALUES ('19','美国1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','4年','911');
INSERT INTO `wshl_hosts_meigao` VALUES ('20','美国1企业型','3000M','0','MYSQL1000M','1000M 10用户','5M','共享IP','1000个','5年','1126');
#美国1发展型1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('21','美国1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','1年','368');
INSERT INTO `wshl_hosts_meigao` VALUES ('22','美国1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','2年','662');
INSERT INTO `wshl_hosts_meigao` VALUES ('23','美国1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','3年','957');
INSERT INTO `wshl_hosts_meigao` VALUES ('24','美国1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','4年','1251');
INSERT INTO `wshl_hosts_meigao` VALUES ('25','美国1发展型','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','5年','1546');
#美国1商务型1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('26','美国1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','1年','598');
INSERT INTO `wshl_hosts_meigao` VALUES ('27','美国1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','2年','1076');
INSERT INTO `wshl_hosts_meigao` VALUES ('28','美国1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','3年','1555');
INSERT INTO `wshl_hosts_meigao` VALUES ('29','美国1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','4年','2033');
INSERT INTO `wshl_hosts_meigao` VALUES ('30','美国1商务型','5000M','2','MYSQL3000M','1000M 10用户','8M','共享IP','无限制数量','5年','2512');
#美国1豪华型1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('31','美国1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','1年','768');
INSERT INTO `wshl_hosts_meigao` VALUES ('32','美国1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','2年','1382');
INSERT INTO `wshl_hosts_meigao` VALUES ('33','美国1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','3年','1997');
INSERT INTO `wshl_hosts_meigao` VALUES ('34','美国1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','4年','2611');
INSERT INTO `wshl_hosts_meigao` VALUES ('35','美国1豪华型','10000M','3','MYSQL4000M','1000M 10用户','9M','共享IP','无限制数量','5年','3226');
#美国1旗舰型1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('36','美国1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','1年','968');
INSERT INTO `wshl_hosts_meigao` VALUES ('37','华中1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','2年','1742');
INSERT INTO `wshl_hosts_meigao` VALUES ('38','华中1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','3年','2517');
INSERT INTO `wshl_hosts_meigao` VALUES ('39','美国1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','4年','3291');
INSERT INTO `wshl_hosts_meigao` VALUES ('40','美国1旗舰型','20000M','5','MYSQL5000M','1000M 10用户','10M','共享IP','无限制数量','5年','4066');
#美国1入门型D1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('41','美国1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','1年','168');
INSERT INTO `wshl_hosts_meigao` VALUES ('42','美国1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','2年','302');
INSERT INTO `wshl_hosts_meigao` VALUES ('43','美国1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','3年','437');
INSERT INTO `wshl_hosts_meigao` VALUES ('44','美国1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','4年','571');
INSERT INTO `wshl_hosts_meigao` VALUES ('45','美国1入门型D','500M','0','MYSQL100M','500M 10用户','2M','独立IP','200个','5年','706');
#美国1经济型D1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('46','美国1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','1年','268');
INSERT INTO `wshl_hosts_meigao` VALUES ('47','美国1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','2年','482');
INSERT INTO `wshl_hosts_meigao` VALUES ('48','美国1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','3年','697');
INSERT INTO `wshl_hosts_meigao` VALUES ('49','美国1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','4年','911');
INSERT INTO `wshl_hosts_meigao` VALUES ('50','美国1经济型D','1000M','0','MYSQL300M','500M 10用户','3M','独立IP','500个','5年','1126');
#美国1标准型D1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('51','美国1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','1年','368');
INSERT INTO `wshl_hosts_meigao` VALUES ('52','美国1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','2年','662');
INSERT INTO `wshl_hosts_meigao` VALUES ('53','美国1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','3年','957');
INSERT INTO `wshl_hosts_meigao` VALUES ('54','美国1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','4年','1251');
INSERT INTO `wshl_hosts_meigao` VALUES ('55','美国1标准型D','2000M','0','MYSQL500M','500M 10用户','4M','独立IP','800个','5年','1546');
#美国1企业型D1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('56','美国1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','1年','468');
INSERT INTO `wshl_hosts_meigao` VALUES ('57','美国1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','2年','842');
INSERT INTO `wshl_hosts_meigao` VALUES ('58','美国1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','3年','1217');
INSERT INTO `wshl_hosts_meigao` VALUES ('59','美国1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','4年',1591');
INSERT INTO `wshl_hosts_meigao` VALUES ('60','美国1企业型D','3000M','0','MYSQL1000M','1000M 10用户','5M','独立IP','1000个','5年','1966');
#美国1发展型D1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('61','美国1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','独立IP','无限制数量','1年','568');
INSERT INTO `wshl_hosts_meigao` VALUES ('62','美国1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','独立IP','无限制数量','2年','1022');
INSERT INTO `wshl_hosts_meigao` VALUES ('63','美国1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','独立IP','无限制数量','3年','
1477');
INSERT INTO `wshl_hosts_meigao` VALUES ('64','美国1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','独立IP','无限制数量','4年','1931');
INSERT INTO `wshl_hosts_meigao` VALUES ('65','美国1发展型D','4000M','1','MYSQL2000M','1000M 10用户','7M','共享IP','无限制数量','5年','2386');
#美国1商务型D1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('66','美国1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','1年','768');
INSERT INTO `wshl_hosts_meigao` VALUES ('67','美国1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','2年','1382');
INSERT INTO `wshl_hosts_meigao` VALUES ('68','美国1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','3年','1997');
INSERT INTO `wshl_hosts_meigao` VALUES ('69','美国1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','4年','2611');
INSERT INTO `wshl_hosts_meigao` VALUES ('70','美国1商务型D','5000M','2','MYSQL3000M','1000M 10用户','8M','独立IP','无限制数量','5年','3226');
#美国1豪华型D1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('71','美国1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','1年','968');
INSERT INTO `wshl_hosts_meigao` VALUES ('72','美国1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','2年','1742');
INSERT INTO `wshl_hosts_meigao` VALUES ('73','美国1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','3年','2517');
INSERT INTO `wshl_hosts_meigao` VALUES ('74','美国1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','4年','3291');
INSERT INTO `wshl_hosts_meigao` VALUES ('75','美国1豪华型D','10000M','3','MYSQL4000M','1000M 10用户','9M','独立IP','无限制数量','5年','4066');
#美国1旗舰型D1~5年
INSERT INTO `wshl_hosts_meigao` VALUES ('76','美国1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','1年','1268');
INSERT INTO `wshl_hosts_meigao` VALUES ('77','美国1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','2年','2282');
INSERT INTO `wshl_hosts_meigao` VALUES ('78','美国1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','3年','3297');
INSERT INTO `wshl_hosts_meigao` VALUES ('79','美国1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','4年','4311');
INSERT INTO `wshl_hosts_meigao` VALUES ('80','美国1旗舰型D','20000M','5','MYSQL5000M','1000M 10用户','10M','独立IP','无限制数量','5年','5326');
