DROP TABLE IF EXISTS pp_ad_compete_place;
CREATE TABLE `pp_ad_compete_place` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `price` mediumint(5) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `adnum` smallint(3) NOT NULL DEFAULT '0',
  `wordnum` smallint(3) NOT NULL DEFAULT '0',
  `autoyz` tinyint(1) NOT NULL DEFAULT '1',
  `demourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_ad_compete_user;
CREATE TABLE `pp_ad_compete_user` (
  `ad_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `money` mediumint(6) NOT NULL DEFAULT '0',
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `adlink` varchar(200) NOT NULL DEFAULT '',
  `adword` varchar(255) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `color` varchar(20) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`),
  KEY `id` (`id`,`endtime`,`money`,`yz`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_ad_config;
CREATE TABLE `pp_ad_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_ad_norm_place;
CREATE TABLE `pp_ad_norm_place` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '0',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `adcode` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(6) NOT NULL DEFAULT '0',
  `moneycard` mediumint(6) NOT NULL DEFAULT '0',
  `ifsale` tinyint(1) NOT NULL DEFAULT '0',
  `autoyz` tinyint(1) NOT NULL DEFAULT '0',
  `demourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_ad_norm_user;
CREATE TABLE `pp_ad_norm_user` (
  `u_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `u_uid` mediumint(7) NOT NULL DEFAULT '0',
  `u_username` varchar(30) NOT NULL DEFAULT '',
  `u_day` smallint(4) NOT NULL DEFAULT '0',
  `u_begintime` int(10) NOT NULL DEFAULT '0',
  `u_endtime` int(10) NOT NULL DEFAULT '0',
  `u_hits` mediumint(7) NOT NULL DEFAULT '0',
  `u_yz` tinyint(1) NOT NULL DEFAULT '0',
  `u_code` text NOT NULL,
  `u_money` mediumint(7) NOT NULL DEFAULT '0',
  `u_moneycard` mediumint(7) NOT NULL DEFAULT '0',
  `u_posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`u_id`),
  KEY `u_endtime` (`u_endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_admin_menu;
CREATE TABLE `pp_admin_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `linkurl` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(15) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `groupid` mediumint(5) NOT NULL DEFAULT '0',
  `iftier` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_alonepage;
CREATE TABLE `pp_alonepage` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `tpl_head` varchar(50) NOT NULL DEFAULT '',
  `tpl_main` varchar(50) NOT NULL DEFAULT '',
  `tpl_foot` varchar(50) NOT NULL DEFAULT '',
  `filename` varchar(100) DEFAULT NULL,
  `filepath` varchar(30) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `hits` int(7) NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_area;
CREATE TABLE `pp_area` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM AUTO_INCREMENT=538 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article;
CREATE TABLE `pp_article` (
  `aid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL DEFAULT '',
  `smalltitle` varchar(100) NOT NULL DEFAULT '',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(5) NOT NULL DEFAULT '0',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `pages` smallint(4) NOT NULL DEFAULT '0',
  `comments` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `author` varchar(30) NOT NULL DEFAULT '',
  `copyfrom` varchar(100) NOT NULL DEFAULT '',
  `copyfromurl` varchar(150) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `fonttype` tinyint(1) NOT NULL DEFAULT '0',
  `picurl` varchar(150) NOT NULL DEFAULT '0',
  `ispic` tinyint(1) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `yzer` varchar(30) NOT NULL DEFAULT '',
  `yztime` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(2) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `iframeurl` varchar(150) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `lastfid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `allowdown` varchar(150) NOT NULL DEFAULT '',
  `allowview` varchar(150) NOT NULL DEFAULT '',
  `editer` varchar(30) NOT NULL DEFAULT '',
  `edittime` int(10) NOT NULL DEFAULT '0',
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `lastview` int(10) NOT NULL DEFAULT '0',
  `digg_num` mediumint(7) NOT NULL DEFAULT '0',
  `digg_time` int(10) NOT NULL DEFAULT '0',
  `forbidcomment` tinyint(1) NOT NULL DEFAULT '0',
  `ifvote` tinyint(1) NOT NULL DEFAULT '0',
  `heart` varchar(255) NOT NULL DEFAULT '',
  `htmlname` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `fid` (`fid`),
  KEY `hits` (`hits`,`yz`,`fid`,`ispic`),
  KEY `lastview` (`yz`,`lastview`,`fid`,`ispic`),
  KEY `list` (`list`,`yz`,`fid`,`ispic`),
  KEY `ispic` (`ispic`),
  KEY `uid` (`uid`),
  KEY `levels` (`levels`),
  KEY `digg_num` (`digg_num`),
  KEY `digg_time` (`digg_time`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_100;
CREATE TABLE `pp_article_content_100` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `photourl` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_101;
CREATE TABLE `pp_article_content_101` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `day_hits` mediumint(7) NOT NULL DEFAULT '0',
  `week_hits` mediumint(7) NOT NULL DEFAULT '0',
  `month_hits` mediumint(7) NOT NULL DEFAULT '0',
  `total_hits` mediumint(7) NOT NULL DEFAULT '0',
  `hits_time` int(10) NOT NULL DEFAULT '0',
  `hits_user` text NOT NULL,
  `my_author` varchar(30) NOT NULL DEFAULT '',
  `my_copyfromurl` varchar(150) NOT NULL DEFAULT '',
  `my_demo` varchar(150) NOT NULL DEFAULT '',
  `operatingsystem` varchar(150) NOT NULL DEFAULT '',
  `softlanguage` varchar(30) NOT NULL DEFAULT '',
  `copyright` varchar(30) NOT NULL DEFAULT '',
  `softsize` varchar(20) NOT NULL DEFAULT '',
  `softurl` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_102;
CREATE TABLE `pp_article_content_102` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `day_hits` mediumint(7) NOT NULL DEFAULT '0',
  `week_hits` mediumint(7) NOT NULL DEFAULT '0',
  `month_hits` mediumint(7) NOT NULL DEFAULT '0',
  `total_hits` mediumint(7) NOT NULL DEFAULT '0',
  `hits_time` int(10) NOT NULL DEFAULT '0',
  `hits_user` text NOT NULL,
  `mvurl` mediumtext NOT NULL,
  `my_role` varchar(100) NOT NULL DEFAULT '',
  `my_lang` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_103;
CREATE TABLE `pp_article_content_103` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `shoptype` varchar(50) NOT NULL DEFAULT '',
  `martprice` varchar(15) NOT NULL DEFAULT '',
  `nowprice` varchar(20) NOT NULL DEFAULT '',
  `shop_id` varchar(30) NOT NULL DEFAULT '',
  `shopmoney` int(7) NOT NULL DEFAULT '0',
  `shopnum` varchar(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_104;
CREATE TABLE `pp_article_content_104` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `flashurl` varchar(150) NOT NULL DEFAULT '',
  `flashauthor` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_content_105;
CREATE TABLE `pp_article_content_105` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `rid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `my_type` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_db;
CREATE TABLE `pp_article_db` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_article_module;
CREATE TABLE `pp_article_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `alias` varchar(30) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `style` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `config` mediumtext NOT NULL,
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `ifclose` tinyint(1) NOT NULL DEFAULT '0',
  `iftable` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_channel;
CREATE TABLE `pp_channel` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `sort` smallint(4) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `path` varchar(30) NOT NULL DEFAULT '',
  `phpname` varchar(255) NOT NULL DEFAULT '',
  `htmlname` varchar(255) NOT NULL DEFAULT '',
  `fids` varchar(255) NOT NULL DEFAULT '',
  `showfid` varchar(150) NOT NULL DEFAULT '',
  `style` varchar(15) NOT NULL DEFAULT '',
  `head_tpl` varchar(255) NOT NULL DEFAULT '',
  `main_tpl` varchar(255) NOT NULL DEFAULT '',
  `foot_tpl` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `admin` varchar(150) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_collection;
CREATE TABLE `pp_collection` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_comment;
CREATE TABLE `pp_comment` (
  `cid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `fid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `authorid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ifcom` tinyint(1) NOT NULL DEFAULT '0',
  `agree` mediumint(5) NOT NULL DEFAULT '0',
  `disagree` mediumint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `aid` (`aid`),
  KEY `fid` (`fid`),
  KEY `uid` (`uid`),
  KEY `ifcom` (`ifcom`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_config;
CREATE TABLE `pp_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_copyfrom;
CREATE TABLE `pp_copyfrom` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `keywords` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_crm_group;
CREATE TABLE `pp_crm_group` (
  `cgid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '��������',
  `order` int(10) NOT NULL COMMENT '����ֵ',
  `num` mediumint(7) NOT NULL COMMENT '�������û���',
  `username` varchar(30) NOT NULL COMMENT '�����û�',
  `posttime` int(10) NOT NULL COMMENT '����ʱ��',
  PRIMARY KEY (`cgid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk COMMENT='�ͻ����ڷ���';


DROP TABLE IF EXISTS pp_crontab;
CREATE TABLE `pp_crontab` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `minutetime` mediumint(4) NOT NULL DEFAULT '0',
  `daytime` varchar(4) NOT NULL DEFAULT '0',
  `whiletime` int(10) NOT NULL DEFAULT '0',
  `lasttime` int(10) NOT NULL DEFAULT '0',
  `filepath` varchar(50) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `ifstop` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ifstop` (`ifstop`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_config;
CREATE TABLE `pp_form_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content;
CREATE TABLE `pp_form_content` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` varchar(10) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hits` (`hits`,`yz`),
  KEY `list` (`list`,`yz`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_1;
CREATE TABLE `pp_form_content_1` (
  `id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `sex` int(1) NOT NULL DEFAULT '0',
  `oicq` varchar(10) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `interest` mediumtext NOT NULL,
  `introduce` mediumtext NOT NULL,
  `sortname` varchar(40) NOT NULL DEFAULT '',
  `webtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_2;
CREATE TABLE `pp_form_content_2` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `workplace` varchar(100) NOT NULL DEFAULT '',
  `nums` varchar(10) NOT NULL DEFAULT '',
  `jobrequire` mediumtext NOT NULL,
  `workwhere` varchar(50) NOT NULL DEFAULT '',
  `wage` varchar(30) NOT NULL DEFAULT '',
  `asksex` int(1) NOT NULL DEFAULT '0',
  `schoo_age` varchar(20) NOT NULL DEFAULT '',
  `wageyear` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_3;
CREATE TABLE `pp_form_content_3` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `advicetype` varchar(30) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `truename` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobphone` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_4;
CREATE TABLE `pp_form_content_4` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(2) NOT NULL DEFAULT '0',
  `mobphone` varchar(25) NOT NULL DEFAULT '',
  `metier` varchar(30) NOT NULL DEFAULT '',
  `my_song` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_5;
CREATE TABLE `pp_form_content_5` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `bday` varchar(25) NOT NULL DEFAULT '',
  `school_age` varchar(20) NOT NULL DEFAULT '',
  `native` varchar(30) NOT NULL DEFAULT '',
  `specialty` varchar(40) NOT NULL DEFAULT '',
  `skill` varchar(50) NOT NULL DEFAULT '',
  `sport` varchar(80) NOT NULL DEFAULT '',
  `height` int(3) NOT NULL DEFAULT '0',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `oicq` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `address` varchar(150) NOT NULL DEFAULT '',
  `telephone` varchar(15) NOT NULL DEFAULT '',
  `idcard` varchar(18) NOT NULL DEFAULT '',
  `cp_title` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_6;
CREATE TABLE `pp_form_content_6` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `workposition` varchar(50) NOT NULL DEFAULT '',
  `experience` mediumtext NOT NULL,
  `workyear` int(2) NOT NULL DEFAULT '0',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `schoo_age` varchar(15) NOT NULL DEFAULT '',
  `myage` int(2) NOT NULL DEFAULT '0',
  `graduateschool` varchar(40) NOT NULL DEFAULT '',
  `specialty` varchar(50) NOT NULL DEFAULT '',
  `skill` varchar(50) NOT NULL DEFAULT '',
  `sex` int(1) NOT NULL DEFAULT '0',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `wage` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `worktime` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_7;
CREATE TABLE `pp_form_content_7` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `product` varchar(50) NOT NULL DEFAULT '',
  `paymoney` varchar(15) NOT NULL DEFAULT '',
  `paytime` varchar(15) NOT NULL DEFAULT '',
  `paytype` varchar(25) NOT NULL DEFAULT '',
  `sendbank` varchar(30) NOT NULL DEFAULT '',
  `receivebank` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(15) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `mobphone` varchar(11) NOT NULL DEFAULT '',
  `address` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_content_8;
CREATE TABLE `pp_form_content_8` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `roomtype` varchar(30) NOT NULL DEFAULT '',
  `roomnum` int(3) NOT NULL DEFAULT '0',
  `numday` int(3) NOT NULL DEFAULT '0',
  `intotime` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_module;
CREATE TABLE `pp_form_module` (
  `id` smallint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `style` varchar(50) NOT NULL DEFAULT '',
  `config` mediumtext NOT NULL,
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `about` text NOT NULL,
  `usetitle` tinyint(1) NOT NULL DEFAULT '0',
  `repeatpost` tinyint(1) NOT NULL DEFAULT '0',
  `statename` varchar(30) NOT NULL DEFAULT '',
  `allowview` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_form_reply;
CREATE TABLE `pp_form_reply` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `mid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_friendlink;
CREATE TABLE `pp_friendlink` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` int(7) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `iswordlink` tinyint(1) DEFAULT NULL,
  `hits` tinyint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '1',
  `endtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `yz` (`yz`,`endtime`,`ifhide`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_friendlink_sort;
CREATE TABLE `pp_friendlink_sort` (
  `fid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_fu_article;
CREATE TABLE `pp_fu_article` (
  `fid` int(7) NOT NULL DEFAULT '0',
  `aid` int(10) NOT NULL DEFAULT '0',
  KEY `fid` (`fid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_fu_sort;
CREATE TABLE `pp_fu_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `fmid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(150) NOT NULL DEFAULT '',
  `domain_dir` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`),
  KEY `fmid` (`fmid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_gather_rule;
CREATE TABLE `pp_gather_rule` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `type` varchar(15) NOT NULL DEFAULT '0',
  `fixsystem` varchar(30) NOT NULL DEFAULT '',
  `filetype` varchar(50) NOT NULL DEFAULT '',
  `webname` varchar(150) NOT NULL DEFAULT '',
  `listurl` varchar(150) NOT NULL DEFAULT '',
  `firstpage` varchar(150) NOT NULL DEFAULT '',
  `page_begin` int(10) NOT NULL DEFAULT '0',
  `page_end` int(10) NOT NULL DEFAULT '0',
  `page_step` int(10) NOT NULL DEFAULT '0',
  `title_minleng` smallint(5) NOT NULL DEFAULT '0',
  `listmoreurl` text NOT NULL,
  `link_include_word` text NOT NULL,
  `link_noinclude_word` text NOT NULL,
  `link_replace_word` text NOT NULL,
  `title_replace_word` text NOT NULL,
  `list_begin_code` text NOT NULL,
  `list_end_code` text NOT NULL,
  `list_begin_preg` text NOT NULL,
  `list_end_preg` text NOT NULL,
  `gatherthesame` tinyint(1) NOT NULL DEFAULT '0',
  `show_begin_preg` text NOT NULL,
  `show_end_preg` text NOT NULL,
  `show_endfile_preg` text NOT NULL,
  `show_begin_code` text NOT NULL,
  `show_end_code` text NOT NULL,
  `show_replace_word` text NOT NULL,
  `show_morepage` varchar(100) NOT NULL DEFAULT '',
  `show_firstpage` varchar(100) NOT NULL DEFAULT '',
  `show_spe2page` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `copypic` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(4) NOT NULL DEFAULT '0',
  `file_type` varchar(50) NOT NULL DEFAULT '',
  `file_minleng` mediumint(6) NOT NULL DEFAULT '0',
  `file_minsize` int(9) NOT NULL DEFAULT '0',
  `file_includeword` text NOT NULL,
  `file_noincludeword` text NOT NULL,
  `file_explode` text NOT NULL,
  `file_picwidth` int(8) NOT NULL DEFAULT '0',
  `file_star_string` varchar(150) NOT NULL DEFAULT '',
  `title_rule` text NOT NULL,
  `content_rule` text NOT NULL,
  `title_morepage_rull` text NOT NULL,
  `content_morepage_rull` text NOT NULL,
  `charset_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_gather_sort;
CREATE TABLE `pp_gather_sort` (
  `fid` mediumint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '',
  `fup` mediumint(6) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `list` mediumint(5) NOT NULL DEFAULT '0',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_group;
CREATE TABLE `pp_group` (
  `gid` smallint(4) NOT NULL AUTO_INCREMENT,
  `gptype` tinyint(1) NOT NULL DEFAULT '0',
  `grouptitle` varchar(50) NOT NULL DEFAULT '',
  `levelnum` mediumint(7) NOT NULL DEFAULT '0',
  `totalspace` int(10) NOT NULL DEFAULT '0',
  `allowsearch` tinyint(1) NOT NULL DEFAULT '0',
  `powerdb` text NOT NULL,
  `allowadmin` tinyint(1) NOT NULL DEFAULT '0',
  `allowadmindb` text,
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_guestbook_config;
CREATE TABLE `pp_guestbook_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_guestbook_content;
CREATE TABLE `pp_guestbook_content` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `ico` tinyint(2) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '',
  `oicq` varchar(11) DEFAULT NULL,
  `weburl` varchar(150) NOT NULL DEFAULT '',
  `blogurl` varchar(150) NOT NULL DEFAULT '',
  `uid` int(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `reply` text NOT NULL,
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_guestbook_sort;
CREATE TABLE `pp_guestbook_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `mid` smallint(4) NOT NULL DEFAULT '0',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metatitle` varchar(250) NOT NULL DEFAULT '',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` mediumtext NOT NULL,
  `index_show` tinyint(1) NOT NULL DEFAULT '0',
  `contents` mediumint(4) NOT NULL DEFAULT '0',
  `tableid` varchar(30) NOT NULL DEFAULT '',
  `dir_name` varchar(50) NOT NULL DEFAULT '',
  `ifcolor` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_hack;
CREATE TABLE `pp_hack` (
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `isclose` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(30) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `htmlcode` text NOT NULL,
  `hackfile` text NOT NULL,
  `hacksqltable` text NOT NULL,
  `adminurl` varchar(150) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `class1` varchar(30) NOT NULL DEFAULT '',
  `class2` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `linkname` text NOT NULL,
  `isbiz` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `keywords` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_invoice;
CREATE TABLE `pp_invoice` (
  `inid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `type` varchar(4) NOT NULL COMMENT '����',
  `title` varchar(150) NOT NULL COMMENT '̧ͷ',
  `money` mediumint(7) NOT NULL COMMENT '���',
  `express_type` mediumint(4) NOT NULL COMMENT '�ʵ�����',
  `express_num` varchar(30) NOT NULL COMMENT '��ݺ�',
  `tax` varchar(30) NOT NULL COMMENT '˰��',
  `content` varchar(255) NOT NULL COMMENT '��Ʊ����',
  `receiver` varchar(30) NOT NULL COMMENT '�ռ���',
  `receiver_tel` varchar(25) NOT NULL COMMENT '�ռ��˵绰',
  `receiver_add` varchar(255) NOT NULL COMMENT '�ռ��˵�ַ',
  `remarks` varchar(255) NOT NULL COMMENT '��ע',
  `invoice_num` varchar(30) NOT NULL COMMENT '��Ʊ��',
  `username` varchar(30) NOT NULL COMMENT '�ύ��',
  `posttime` int(10) NOT NULL COMMENT '�ύʱ��',
  `state` varchar(12) NOT NULL COMMENT '״̬',
  PRIMARY KEY (`inid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk COMMENT='��Ʊ�����';


DROP TABLE IF EXISTS pp_jfabout;
CREATE TABLE `pp_jfabout` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_jfsort;
CREATE TABLE `pp_jfsort` (
  `fid` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_keyword;
CREATE TABLE `pp_keyword` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `ifhide` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `num` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `keywords` (`keywords`),
  KEY `num` (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_keywordid;
CREATE TABLE `pp_keywordid` (
  `id` mediumint(7) NOT NULL DEFAULT '0',
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  KEY `id` (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_label;
CREATE TABLE `pp_label` (
  `lid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `ch` smallint(4) NOT NULL DEFAULT '0',
  `chtype` tinyint(2) NOT NULL DEFAULT '0',
  `tag` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `typesystem` tinyint(1) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  `divcode` text,
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `js_time` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `pagetype` tinyint(3) NOT NULL DEFAULT '0',
  `module` mediumint(6) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `if_js` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`lid`),
  KEY `ch` (`ch`,`pagetype`,`module`,`fid`,`chtype`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=740 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_limitword;
CREATE TABLE `pp_limitword` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `oldword` varchar(50) NOT NULL DEFAULT '',
  `newword` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_memberdata;
CREATE TABLE `pp_memberdata` (
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `question` varchar(32) NOT NULL DEFAULT '',
  `groupid` smallint(4) NOT NULL DEFAULT '0',
  `grouptype` tinyint(1) NOT NULL DEFAULT '0',
  `groups` varchar(255) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  `newpm` tinyint(1) NOT NULL DEFAULT '0',
  `medals` varchar(255) NOT NULL DEFAULT '',
  `money` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `totalspace` bigint(13) NOT NULL DEFAULT '0',
  `usespace` bigint(13) NOT NULL DEFAULT '0',
  `oltime` int(10) NOT NULL DEFAULT '0',
  `lastvist` int(10) NOT NULL DEFAULT '0',
  `lastip` varchar(15) NOT NULL DEFAULT '',
  `regdate` int(10) NOT NULL DEFAULT '0',
  `regip` varchar(15) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `bday` date NOT NULL DEFAULT '0000-00-00',
  `icon` varchar(150) NOT NULL DEFAULT '',
  `introduce` text NOT NULL,
  `hits` int(7) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `msn` varchar(50) NOT NULL DEFAULT '',
  `homepage` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `provinceid` mediumint(6) NOT NULL DEFAULT '0',
  `cityid` mediumint(7) NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `postalcode` varchar(6) NOT NULL DEFAULT '',
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  `telephone` varchar(25) NOT NULL DEFAULT '',
  `idcard` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `moneycard` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `email_yz` tinyint(1) NOT NULL DEFAULT '0',
  `mob_yz` tinyint(1) NOT NULL DEFAULT '0',
  `idcard_yz` tinyint(1) NOT NULL DEFAULT '0',
  `company` mediumtext NOT NULL,
  `dept` mediumtext NOT NULL,
  `job` mediumtext NOT NULL,
  PRIMARY KEY (`uid`),
  KEY `groups` (`groups`),
  KEY `sex` (`sex`,`bday`,`cityid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_members;
CREATE TABLE `pp_members` (
  `uid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_menu;
CREATE TABLE `pp_menu` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(80) NOT NULL DEFAULT '',
  `linkurl` varchar(150) NOT NULL DEFAULT '',
  `color` varchar(15) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) NOT NULL DEFAULT '0',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `hide` tinyint(1) NOT NULL DEFAULT '0',
  `list` smallint(4) NOT NULL DEFAULT '0',
  `extend` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_module;
CREATE TABLE `pp_module` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `pre` varchar(20) NOT NULL DEFAULT '',
  `dirname` varchar(30) NOT NULL DEFAULT '',
  `domain` varchar(100) NOT NULL DEFAULT '',
  `admindir` varchar(20) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `list` mediumint(5) NOT NULL DEFAULT '0',
  `admingroup` varchar(150) NOT NULL DEFAULT '',
  `adminmember` text NOT NULL,
  `ifclose` tinyint(1) NOT NULL DEFAULT '0',
  `ifsys` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_moneycard;
CREATE TABLE `pp_moneycard` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `moneyrmb` int(7) NOT NULL DEFAULT '0',
  `moneycard` int(7) NOT NULL DEFAULT '0',
  `ifsell` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_moneylog;
CREATE TABLE `pp_moneylog` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `money` mediumint(7) NOT NULL DEFAULT '0',
  `about` varchar(255) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_olpay;
CREATE TABLE `pp_olpay` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) NOT NULL DEFAULT '0',
  `numcode` varchar(32) NOT NULL DEFAULT '',
  `money` varchar(15) NOT NULL DEFAULT '0',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `paytype` tinyint(3) NOT NULL DEFAULT '0',
  `moduleid` mediumint(5) NOT NULL DEFAULT '0',
  `formid` mediumint(5) NOT NULL DEFAULT '0',
  `banktype` varchar(15) NOT NULL DEFAULT '',
  `articleid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `numcode` (`numcode`),
  KEY `paytype` (`paytype`),
  KEY `formid` (`formid`),
  KEY `articleid` (`articleid`),
  KEY `moduleid` (`moduleid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_pm;
CREATE TABLE `pp_pm` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `touid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `togroups` varchar(80) NOT NULL DEFAULT '',
  `fromuid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(15) NOT NULL DEFAULT '',
  `type` enum('rebox','sebox','public') NOT NULL DEFAULT 'rebox',
  `ifnew` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(130) NOT NULL DEFAULT '',
  `mdate` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `touid` (`touid`),
  KEY `fromuid` (`fromuid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_propagandize;
CREATE TABLE `pp_propagandize` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `ip` bigint(11) NOT NULL DEFAULT '0',
  `day` smallint(3) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `fromurl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `day` (`day`,`uid`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_regnum;
CREATE TABLE `pp_regnum` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `num` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`num`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_reply;
CREATE TABLE `pp_reply` (
  `rid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `subhead` varchar(150) NOT NULL DEFAULT '',
  `postdate` int(10) NOT NULL DEFAULT '0',
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `topic` tinyint(1) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `orderid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rid`),
  KEY `aid` (`aid`,`topic`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_report;
CREATE TABLE `pp_report` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_shoporderproduct;
CREATE TABLE `pp_shoporderproduct` (
  `pid` int(7) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `orderid` mediumint(7) DEFAULT NULL,
  `shopid` int(10) NOT NULL DEFAULT '0',
  `shopuid` mediumint(7) NOT NULL DEFAULT '0',
  `ifsend` tinyint(1) NOT NULL DEFAULT '0',
  `amount` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_shoporderuser;
CREATE TABLE `pp_shoporderuser` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `truename` varchar(30) NOT NULL DEFAULT '',
  `sex` varchar(10) NOT NULL DEFAULT '',
  `telphone` varchar(20) NOT NULL DEFAULT '',
  `mobphone` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `oicq` varchar(11) NOT NULL DEFAULT '',
  `postalcode` varchar(6) NOT NULL DEFAULT '',
  `sendtype` varchar(50) NOT NULL DEFAULT '',
  `paytype` varchar(50) NOT NULL DEFAULT '',
  `olpaytype` varchar(25) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `othersay` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `ifsend` tinyint(1) NOT NULL DEFAULT '0',
  `totalmoney` varchar(15) NOT NULL DEFAULT '',
  `ifpay` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_sms_list;
CREATE TABLE `pp_sms_list` (
  `slid` mediumint(7) NOT NULL AUTO_INCREMENT,
  `receiver` mediumtext NOT NULL COMMENT '���պ���',
  `receiver_num` mediumint(5) NOT NULL DEFAULT '0' COMMENT '��������',
  `message` mediumtext NOT NULL COMMENT '��������',
  `message_words` mediumint(5) NOT NULL DEFAULT '0' COMMENT '��������',
  `message_num` mediumint(2) NOT NULL DEFAULT '1' COMMENT '��������',
  `posttime` int(10) NOT NULL COMMENT '����ʱ��',
  `sendtime` int(10) NOT NULL COMMENT 'ԤԼʱ��',
  `lasttime` int(10) NOT NULL COMMENT '�����ʱ��',
  `state` varchar(12) NOT NULL COMMENT '״̬',
  `username` varchar(30) NOT NULL COMMENT '�����˺�',
  `ip` varchar(15) CHARACTER SET gb2312 NOT NULL COMMENT '�˺�IP��ַ',
  `cost_num` mediumint(2) NOT NULL COMMENT '���Ͷ�������',
  `cost_sum` mediumint(7) NOT NULL COMMENT '���Ͷ��ŷ���',
  `money` mediumint(7) NOT NULL COMMENT '�˺Ų��������',
  `remarks` mediumtext NOT NULL COMMENT '��ע',
  PRIMARY KEY (`slid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_sort;
CREATE TABLE `pp_sort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `fmid` mediumint(5) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(150) NOT NULL DEFAULT '',
  `domain_dir` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`),
  KEY `fmid` (`fmid`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_special;
CREATE TABLE `pp_special` (
  `id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `titlecolor` varchar(15) NOT NULL DEFAULT '',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `style` varchar(25) NOT NULL DEFAULT '',
  `template` varchar(255) NOT NULL DEFAULT '',
  `picurl` varchar(150) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `aids` text NOT NULL,
  `tids` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `target` tinyint(1) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `hits` mediumint(7) NOT NULL DEFAULT '0',
  `lastview` int(10) NOT NULL DEFAULT '0',
  `levels` tinyint(1) NOT NULL DEFAULT '0',
  `levelstime` int(10) NOT NULL DEFAULT '0',
  `htmlfile` varchar(50) NOT NULL DEFAULT '',
  `banner` varchar(150) NOT NULL DEFAULT '',
  `allowpost` varchar(255) NOT NULL DEFAULT '',
  `ifbase` tinyint(1) NOT NULL DEFAULT '0',
  `htmlname` varchar(80) NOT NULL DEFAULT '',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`),
  KEY `ifbase` (`ifbase`),
  KEY `yz` (`yz`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_special_comment;
CREATE TABLE `pp_special_comment` (
  `id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `vid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aid` (`cid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_spsort;
CREATE TABLE `pp_spsort` (
  `fid` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `fup` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `name` varchar(200) NOT NULL DEFAULT '',
  `class` smallint(4) NOT NULL DEFAULT '0',
  `sons` smallint(4) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `admin` varchar(100) NOT NULL DEFAULT '',
  `list` int(10) NOT NULL DEFAULT '0',
  `listorder` tinyint(2) NOT NULL DEFAULT '0',
  `passwd` varchar(32) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `style` varchar(50) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `jumpurl` varchar(150) NOT NULL DEFAULT '',
  `maxperpage` tinyint(3) NOT NULL DEFAULT '0',
  `metakeywords` varchar(255) NOT NULL DEFAULT '',
  `metadescription` varchar(255) NOT NULL DEFAULT '',
  `allowcomment` tinyint(1) NOT NULL DEFAULT '0',
  `allowpost` varchar(150) NOT NULL DEFAULT '',
  `allowviewtitle` varchar(150) NOT NULL DEFAULT '',
  `allowviewcontent` varchar(150) NOT NULL DEFAULT '',
  `allowdownload` varchar(150) NOT NULL DEFAULT '',
  `forbidshow` tinyint(1) NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `list_html` varchar(255) NOT NULL DEFAULT '',
  `bencandy_html` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`fid`),
  KEY `fup` (`fup`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_template;
CREATE TABLE `pp_template` (
  `id` mediumint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `filepath` varchar(100) NOT NULL DEFAULT '',
  `descrip` text NOT NULL,
  `list` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_template_bak;
CREATE TABLE `pp_template_bak` (
  `bid` int(7) NOT NULL AUTO_INCREMENT,
  `id` int(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_upfile;
CREATE TABLE `pp_upfile` (
  `up_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `module_id` smallint(4) NOT NULL DEFAULT '0',
  `ids` varchar(255) NOT NULL DEFAULT '0',
  `fid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `url` varchar(150) NOT NULL DEFAULT '',
  `filename` varchar(100) NOT NULL DEFAULT '',
  `num` smallint(5) NOT NULL DEFAULT '0',
  `if_tmp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`up_id`),
  KEY `filename` (`filename`),
  KEY `if_tmp` (`if_tmp`),
  KEY `posttime` (`posttime`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_vote_comment;
CREATE TABLE `pp_vote_comment` (
  `id` mediumint(7) unsigned NOT NULL AUTO_INCREMENT,
  `cid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `vid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `icon` tinyint(3) NOT NULL DEFAULT '0',
  `yz` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aid` (`cid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_vote_config;
CREATE TABLE `pp_vote_config` (
  `c_key` varchar(50) NOT NULL DEFAULT '',
  `c_value` text NOT NULL,
  `c_descrip` text NOT NULL,
  PRIMARY KEY (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_vote_element;
CREATE TABLE `pp_vote_element` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `cid` int(7) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `votenum` int(7) NOT NULL DEFAULT '0',
  `list` int(10) NOT NULL DEFAULT '0',
  `img` varchar(100) NOT NULL DEFAULT '',
  `describes` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_vote_topic;
CREATE TABLE `pp_vote_topic` (
  `cid` int(7) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `about` text NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `limittime` int(10) NOT NULL DEFAULT '0',
  `limitip` tinyint(1) NOT NULL DEFAULT '0',
  `ip` text NOT NULL,
  `posttime` int(10) NOT NULL DEFAULT '0',
  `user` text NOT NULL,
  `begintime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `forbidguestvote` tinyint(1) NOT NULL DEFAULT '0',
  `ifcomment` tinyint(1) NOT NULL DEFAULT '0',
  `tplcode` text NOT NULL,
  `votetype` tinyint(2) NOT NULL DEFAULT '0',
  `aid` mediumint(7) NOT NULL DEFAULT '0',
  `uid` mediumint(7) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;


DROP TABLE IF EXISTS pp_yzimg;
CREATE TABLE `pp_yzimg` (
  `sid` varchar(8) NOT NULL DEFAULT '',
  `imgnum` varchar(6) NOT NULL DEFAULT '',
  `posttime` int(10) NOT NULL DEFAULT '0',
  UNIQUE KEY `sid` (`sid`),
  KEY `posttime` (`imgnum`,`posttime`)
) ENGINE=MEMORY DEFAULT CHARSET=gbk;


INSERT INTO `pp_ad_compete_place` VALUES ('3','����ҳ���۹��','0','0','50','5','8','36','1','/do/digg.php');
INSERT INTO `pp_ad_compete_user` VALUES ('11','1','admin','1239277578','1239709578','50','3','1','http://www.qibosoft.com/','�벩�ٷ�վ','0','','0');
INSERT INTO `pp_ad_compete_user` VALUES ('12','1','admin','1239279810','1239711810','50','3','1','http://www.qibosoft.com/bbs','�벩�ٷ���̳','0','','0');
INSERT INTO `pp_ad_config` VALUES ('module_pre','ad_','');
INSERT INTO `pp_ad_config` VALUES ('Info_webname','���ϵͳ','');
INSERT INTO `pp_ad_config` VALUES ('Info_webOpen','1','');
INSERT INTO `pp_ad_config` VALUES ('module_close','0','');
INSERT INTO `pp_ad_config` VALUES ('module_id','24','');
INSERT INTO `pp_ad_norm_place` VALUES ('1','article_list','�����б�ҳ������','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `pp_ad_norm_place` VALUES ('10','article_content','����������ߵĹ��','pic','1','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:32:\"other/1_20090326120324_mnfIi.jpg\";s:7:\"linkurl\";s:22:\"http://www.qibosoft.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','5','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `pp_ad_norm_place` VALUES ('2','article_show','��������ҳ����·����','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:1782:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.zxx6.com/\" target=_blank><font color=#ff0000><strong>վ��ѧϰ��</strong></font></a> ����<a href=\"http://www.angelyyl.cn/\" target=_blank>��������</a><a href=\"http://www.czin.cn/\" target=_blank><br />�������ߡ������˵����ϼ�԰</a> <br /><a href=\"http://www.sy50.com/\" target=_blank>�������� �˽����� ��������</a> <br /><a href=\"http://www.771881.cn/\" target=_blank>�����㱧����-����Ůͬ������-�ܼ�Ů��վ </a><br /><a href=\"http://www.aihut.com/\" target=_blank>���С��ԭ����������� </a><br /><a href=\"http://www.popyule.com/\" target=_blank>����������--�����ۺ�վqibosoft����</a> <br /><a href=\"http://www.china551.cn/\" target=_blank><font color=#ff0000>����������</font></a> ����<a href=\"http://www.ym988.com/\" target=_blank>Բ��ģ�幤���� </a><br /><a href=\"http://www.welights.com/\" target=_blank>���ʵƾ���</a> ����<a href=\"http://www.hnmssy.cn/\" target=_blank>����������Ӱ��</a> <br /><a href=\"http://www.nuoyue.net/\" target=_blank><font color=#ff0000>ŵԾվ������ - վ��������ѧϰ�ĺõط�</font></a> <br /><a href=\"http://www.qzfl.com/\" target=_blank>Ȫ�ݷ��� ����Ȫ����Ϣ�������������</a> <br /><a href=\"http://www.stmsn.com/\" target=_blank>�й���������</a> ����<a href=\"http://www.downcc.cn/\" target=_blank>�󵱼�����վ </a><br /><a href=\"http://www.yt12333.cn/\" target=_blank>�Ͷ��籣֮��-��ͤ�Ͷ�������</a> <br /><a href=\"http://www.gooyi.cn/\" target=_blank>������ - ��������Ż��� </a><br /><a href=\"http://www.idercn.com/\" target=_blank>I.D.����</a> ����<a href=\"http://www.tz0632.com/\" target=_blank>���ݳ�����</a> ����<a href=\"http://www.doubar.com/\" target=_blank>���� </a></div>\r\n<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://www.wfseo.org/\" target=_blank><font color=#d2691e>������վ�Ż�</font><br /></a><br /></div>\";}','0','0','0','0','0','5','0','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `pp_ad_norm_place` VALUES ('11','digg_list','�������а��߹��','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:813:\"<div style=\"LINE-HEIGHT: 200%\"><a href=\"http://www.ibioo.com/\" target=_blank><font color=#ff0000>�̹�������--������߻�������վ!</font> </a><br /><a href=\"http://www.51solo.net/\" target=_blank>���������Ż�����������������ҿ�ʼ </a><br /><a href=\"http://1.com/45/admin/www.china-highway.com\" target=_blank>�����·�߾����й����ٹ�·�� </a><br /><a href=\"http://www.nenbei.com/\" target=_blank><font color=#ff0000>�۱��ۺ���������ӭ���ĵ��� </font></a><br /><a href=\"http://www.liuv.net/\" target=_blank><font color=#ff0000>��ˮ���</font></a> <br /><a href=\"http://www.fming.net/\" target=_blank>����ԭ�� ��ѧ����Ӱ�Ĵ���ƽ̨ </a><br /><a href=\"http://www.netchinatown.com/\" target=_blank>ʱ���Ƴ�-���⻪�˾�Ӣ�������԰ </a><br /><a href=\"http://frp.ok586.cn/\" target=_blank>�Ϻ���������ȴ��רҵ��������. </a></div>\";}','0','0','0','0','0','5','0','1','/do/digg.php');
INSERT INTO `pp_ad_norm_place` VALUES ('19','list_page_topad','�б�ҳ��߶������λ','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:13:\"ad/listad.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"130\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','2','0','10','1','1','/do/job.php?job=jump&pagetype=list');
INSERT INTO `pp_ad_norm_place` VALUES ('18','show_topad','����ҳ����������','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:18:\"ad/ad_show_top.jpg\";s:7:\"linkurl\";s:22:\"http://www.yeepay.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','0','0','10','1','1','../do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `pp_ad_norm_place` VALUES ('17','show_right_top_picad','����ҳ��߶���ͼƬ���λ','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:15:\"ad/qyshowad.jpg\";s:7:\"linkurl\";s:43:\"http://www.qy.com.cn/idc/product_double.asp\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"290\";s:6:\"height\";s:3:\"110\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','29','0','10','1','1','/do/job.php?job=jump&pagetype=bencandy');
INSERT INTO `pp_ad_norm_place` VALUES ('20','AD_list_topad','�б�ҳ����������','pic','0','0','0','a:8:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:14:\"ad/cnidca1.gif\";s:7:\"linkurl\";s:21:\"http://www.cnidc.com/\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:0:\"\";s:5:\"width\";s:3:\"980\";s:6:\"height\";s:2:\"60\";s:9:\"pictarget\";s:5:\"blank\";}','0','0','0','4','0','10','1','1','/do/list.php?fid=1');
INSERT INTO `pp_ad_norm_place` VALUES ('21','sp_show_ad','ר��ҳ���λ','code','0','0','0','a:5:{s:4:\"word\";s:0:\"\";s:6:\"picurl\";s:0:\"\";s:7:\"linkurl\";s:0:\"\";s:8:\"flashurl\";s:0:\"\";s:4:\"code\";s:943:\"<div style=\"LINE-HEIGHT: 150%\"><a href=\"http://3cq.org/\" target=_blank>�����׶����� һ��Ϊ�����ǵĺ���</a> <br /><a href=\"http://www.liuv.net/\" target=_blank>��ˮ���</a> <br /><a href=\"http://www.21yao.com/\" target=_blank>����ҽҩ��</a><br /><a href=\"http://www.fming.net/\" target=_blank>����ԭ��</a> <br /><a href=\"http://www.jnrx.net/\" target=_blank>��������</a> <br /><a href=\"http://www.7mt.cn/\" target=_blank>��Ħ��-�й���һĦ�г�����ý�� </a><br /><a href=\"http://www.hnpolice.net/\" target=_blank>���Ϲ����ߵ�ר��ѧУУ�ѻ� </a><br /><a href=\"http://www.seo178.com/\" target=_blank>SEO��ѵѡ��--����SEO��ѵ����</a> <br /><a href=\"http://www.51solo.net/\" target=_blank>Ʒ���ƹ�,SEO��վ�Ż� </a><br /><a href=\"http://www.kljy.cn/\" target=_blank>�����ڶ�ͯ���� </a><br /><a href=\"http://www.eia8.com/job/\" target=_blank>�й���������Ƹ��ְ��</a> <br /><a href=\"http://www.wenzhang8.com/\" target=_blank>���°� ������þ��������� </a>�� </div>\";}','0','0','0','0','0','0','0','1','/do/showsp.php?fid=1&id=23');
INSERT INTO `pp_admin_menu` VALUES ('12','0','���ݹ���','','','0','8','3','0');
INSERT INTO `pp_admin_menu` VALUES ('81','12','��������','index.php?lfj=module_admin&dirname=form&file=form_content&job=list','','0','11','3','0');
INSERT INTO `pp_admin_menu` VALUES ('82','12','���Ա�����','index.php?lfj=module_admin&dirname=guestbook&file=content&job=list','','0','10','3','1');
INSERT INTO `pp_admin_menu` VALUES ('83','0','��ǩ/���ģ��/��̬ҳ','','','0','9','3','0');
INSERT INTO `pp_admin_menu` VALUES ('84','83','</a>\r\n<font color=\"#FF0000\">��ҳ</font><img src=../images/default/article_elite.gif> <a href=\"../index.php?&ch=1&chtype=0&jobs=show\" target=\"main\">��ǩ</a> <A HREF=\'../index.php?&ch=1&MakeIndex=1\' target=\'_blank\' onclick=\"return confirm(\'��ȷʵҪ����ҳ���ɾ�̬��?���ɾ�̬��,���и��������������,��Ҫ���µ������һ�ξ�̬.�ſ��Կ���Ч��.\');\">��̬</a> <a href=\"index.php?lfj=channel&job=list_fid&onlyshow=style\" target=\"main\">���</a><a> ','#','','0','4','3','0');
INSERT INTO `pp_admin_menu` VALUES ('85','83','</a>\r\n<a href=\'index.php?lfj=channel&job=list_fid&onlyshow=label\' target=\'main\'><font color=\"#FF0000\"><u>��Ŀ</u></font></a><img src=../images/default/article_elite.gif> <a href=\"../do/job.php?job=jump&pagetype=list_label\" target=\"main\">��ǩ</a> <A HREF=\'index.php?lfj=html&job=list\' target=\"main\">��̬</a> <a href=\"index.php?lfj=channel&job=list_fid&onlyshow=style\" target=\"main\">���</a><a> ','#','','0','3','3','0');
INSERT INTO `pp_admin_menu` VALUES ('86','83','</a>\r\n<font color=\"#FF0000\">ר��</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=special&job=list&onlyshow=label\" target=\"main\">��ǩ</a> <A HREF=\'index.php?lfj=html&job=listsp\' target=\"main\">��̬</a> <a href=\"index.php?lfj=special&job=list&onlyshow=style\" target=\"main\">���</a><a> ','#','','0','1','3','0');
INSERT INTO `pp_admin_menu` VALUES ('87','0','��Ա��ع���','','','0','7','3','0');
INSERT INTO `pp_admin_menu` VALUES ('88','87','��Ա���Ϲ���','index.php?lfj=member&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('89','87','�������Ȩ��','index.php?lfj=article_group&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('90','87','����Ȩ��','index.php?lfj=group&job=list','','0','0','3','1');
INSERT INTO `pp_admin_menu` VALUES ('91','87','����Ա��̨Ȩ������','index.php?lfj=group&job=list_admin','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('73','12','ר�����','index.php?lfj=special&job=list','','0','13','3','0');
INSERT INTO `pp_admin_menu` VALUES ('74','12','���۹���','index.php?lfj=comment&job=list','','0','12','3','1');
INSERT INTO `pp_admin_menu` VALUES ('75','12','</a>\r\n<font color=\"#FF0000\">����</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=0\" target=\"main\">����</a> <a href=\"index.php?lfj=artic&job=listartic&mid=0&only=1\" target=\"main\">����</a> <a href=\"index.php?lfj=sort&job=listsort&mid=0&only=1\" target=\"main\">��Ŀ</a><a> ','#','','0','20','3','0');
INSERT INTO `pp_admin_menu` VALUES ('76','12','</a>\r\n<font color=\"#FF0000\">ͼƬ</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=100\" target=\"main\">����</a> <a href=\"index.php?lfj=artic&job=listartic&mid=100&only=1\" target=\"main\">����</a> <a href=\"index.php?lfj=sort&job=listsort&mid=100&only=1\" target=\"main\">��Ŀ</a><a> ','#','','0','19','3','0');
INSERT INTO `pp_admin_menu` VALUES ('77','12','</a>\r\n<font color=\"#FF0000\">����</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=101\" target=\"main\">����</a> <a href=\"index.php?lfj=artic&job=listartic&mid=101&only=1\" target=\"main\">����</a> <a href=\"index.php?lfj=sort&job=listsort&mid=101&only=1\" target=\"main\">��Ŀ</a><a> ','#','','0','18','3','0');
INSERT INTO `pp_admin_menu` VALUES ('78','12','</a>\r\n<font color=\"#FF0000\">��Ƶ</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=102\" target=\"main\">����</a> <a href=\"index.php?lfj=artic&job=listartic&mid=102&only=1\" target=\"main\">����</a> <a href=\"index.php?lfj=sort&job=listsort&mid=102&only=1\" target=\"main\">��Ŀ</a><a> ','#','','0','17','3','0');
INSERT INTO `pp_admin_menu` VALUES ('79','12','</a>\r\n<font color=\"#FF0000\">��Ʒ</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=103\" target=\"main\">����</a> <a href=\"index.php?lfj=artic&job=listartic&mid=103&only=1\" target=\"main\">����</a> <a href=\"index.php?lfj=sort&job=listsort&mid=103&only=1\" target=\"main\">��Ŀ</a><a> ','#','','0','16','3','0');
INSERT INTO `pp_admin_menu` VALUES ('80','12','</a>\r\n<font color=\"#FF0000\">��Ʒ</font><img src=../images/default/article_elite.gif> <a href=\"index.php?lfj=post&job=postnew&only=1&mid=105\" target=\"main\">����</a> <a href=\"index.php?lfj=artic&job=listartic&mid=105&only=1\" target=\"main\">����</a> <a href=\"index.php?lfj=sort&job=listsort&mid=105&only=1\" target=\"main\">��Ŀ</a><a> ','#','','0','15','3','0');
INSERT INTO `pp_admin_menu` VALUES ('92','0','ϵͳ��������','','','0','6','3','0');
INSERT INTO `pp_admin_menu` VALUES ('93','92','����ȫ�ֲ�������','index.php?lfj=center&job=config','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('94','92','��վ�����˵�����','index.php?lfj=guidemenu&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('95','92','��վ����ģ�͹���','index.php?lfj=article_module&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('96','92','�������ӹ���','index.php?lfj=friendlink&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('97','92','����ҳ�����','index.php?lfj=alonepage&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('98','92','������վ���ݿ�','index.php?lfj=mysql&job=out','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('99','92','���ܱ���ģ�͹���','index.php?lfj=module_admin&dirname=form&file=form_module&job=list','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('100','92','���¹�����Ҫ����','index.php?lfj=article_more&job=config','','0','0','3','0');
INSERT INTO `pp_admin_menu` VALUES ('101','83','</a>\r\n<font color=\"#FF0000\">����</font><img src=../images/default/article_elite.gif> <a href=\"../do/job.php?job=jump&pagetype=bencandy_label\" target=\"main\">����ҳ��ǩ</a>\r\n<a> ','#','','0','2','3','0');
INSERT INTO `pp_admin_menu` VALUES ('102','0','��˵�','','','0','0','-3','0');
INSERT INTO `pp_admin_menu` VALUES ('103','0','���Ź���','','','0','9','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('104','103','�򵥷���','post_sms','','0','9','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('105','0','��ֵ����','','','0','8','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('106','0','�˻�����','','','0','7','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('107','103','�Զ��嵼�뷢��','import_post','','0','8','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('108','103','�ͻ�ͨѶ¼����','crm_post','','0','7','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('109','103','�ȴ������б�','wait_post','','0','6','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('110','105','�ͻ�ͨѶ¼����','crm','','0','8','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('111','105','���ռƻ�����','holiday_plans','','0','7','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('112','105','��ʷ���ͼ�¼','send_log','','0','9','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('113','105','����ͳ�Ʒ���','analysis','','0','6','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('114','106','���߳�ֵ����¼','pay','','0','9','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('115','106','����ѯ','money','','0','8','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('116','106','��Ʊ����','invoice','','0','7','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('118','106','������֤','validate','','0','6','-8','0');
INSERT INTO `pp_admin_menu` VALUES ('117','106','�˻���Ϣ����','account','','0','5','-8','0');
INSERT INTO `pp_alonepage` VALUES ('1','0','��������','��������','1229507597','0','','','','','','friendlink.htm','','','','<table cellSpacing=4 cellPadding=4 width=\"100%\" border=0>\r\n<tbody>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.mmcbbs.com/\" target=_blank>ݼݼ��̳</a></td>\r\n<td width=\"20%\"><a href=\"http://www.liuv.net/\" target=_blank>��ˮ���</a></td>\r\n<td width=\"20%\"><a href=\"http://pic.goodod.com/\" target=_blank>ŷ���ֻ�ͼƬ</a></td>\r\n<td width=\"20%\"><a href=\"http://www.tianyakezhan.com/\" target=_blank>���Ŀ�ջ</a></td>\r\n<td width=\"20%\"><a href=\"http://www.czin.cn/\" target=_blank>��������</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.jneg.com.cn/\" target=_blank>���ܼ�԰</a></td>\r\n<td width=\"20%\"><a href=\"http://www.wyrj.com/\" target=_blank>�����˼�</a></td>\r\n<td width=\"20%\"><a href=\"http://www.nenbei.com/\" target=_blank>�۱���</a></td>\r\n<td width=\"20%\"><a href=\"http://www.photosbar.com/\" target=_blank>ͼ��</a></td>\r\n<td width=\"20%\"><a href=\"http://www.ok586.cn/\" target=_blank>��������</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://www.51solo.net/\" target=_blank>�Ұ���������</a></td>\r\n<td width=\"20%\"><a href=\"http://www.toopd.com/\" target=_blank>�������</a></td>\r\n<td width=\"20%\"><a href=\"http://www.qiqig.com/\" target=_blank>����</a></td>\r\n<td width=\"20%\"><a href=\"http://www.jxsrjys.com.cn/\" target=_blank>���Ľ���</a></td>\r\n<td width=\"20%\"><a href=\"http://www.unok.net/\" target=_blank>������</a></td></tr>\r\n<tr>\r\n<td width=\"20%\"><a href=\"http://mmm.pudou.com/\" target=_blank>�˶��й�</a></td>\r\n<td width=\"20%\"><a href=\"http://www.itzhan.com/\" target=_blank>IT����</a></td>\r\n<td width=\"20%\"><a href=\"http://www.hkwtv.com/\" target=_blank>�������</a></td>\r\n<td width=\"20%\">&nbsp;</td>\r\n<td width=\"20%\">&nbsp;</td></tr></tbody></table>','54','0');
INSERT INTO `pp_area` VALUES ('1','0','������','1','18','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `pp_area` VALUES ('2','0','�Ϻ���','1','19','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `pp_area` VALUES ('3','0','�����','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('4','0','������','1','40','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('5','0','�ӱ�ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('6','0','ɽ��ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('7','0','���ɹ�������','1','12','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('8','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('9','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('10','0','������ʡ','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('11','0','����ʡ','1','13','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('12','0','�㽭ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('13','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('14','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('15','0','����ʡ','1','11','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('16','0','ɽ��ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('17','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('18','0','����ʡ','1','17','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('19','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('20','0','�㶫ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('21','0','����׳��������','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('22','0','����ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('23','0','�Ĵ�ʡ','1','21','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('24','0','����ʡ','1','9','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('25','0','����ʡ','1','16','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('26','0','����������','1','7','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('27','0','����ʡ','1','10','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('28','0','����ʡ','1','14','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('29','0','�ຣʡ','1','8','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('30','0','���Ļ���������','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('31','0','�½�ά���������','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('32','0','̨��ʡ','1','25','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('33','0','����ر�������','1','18','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('34','0','�����ر�������','1','5','1','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('35','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('36','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('37','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('38','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('39','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('40','1','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('41','1','ʯ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('42','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('43','1','��ͷ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('44','1','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('45','1','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('46','1','˳����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('47','1','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('48','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('49','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('50','1','ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('51','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('52','1','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('53','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('54','2','¬����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('55','2','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('56','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('57','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('58','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('59','2','բ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('60','2','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('61','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('62','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('63','2','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('64','2','�ζ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('65','2','�ֶ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('66','2','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('67','2','�ɽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('68','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('69','2','�ϻ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('70','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('71','2','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('72','3','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('73','3','�Ӷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('74','3','������','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `pp_area` VALUES ('75','3','�Ͽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('76','3','�ӱ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('77','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('78','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('79','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('80','3','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('81','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('82','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('83','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('84','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('85','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('86','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('87','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('88','3','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('89','3','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('90','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('91','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('92','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('93','4','��ɿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('94','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('95','4','ɳƺ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('96','4','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('97','4','�ϰ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('98','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('99','4','��ʢ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('100','4','˫����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('101','4','�山��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('102','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('103','4','ǭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('104','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('105','4','�뽭��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('106','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('107','4','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('108','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('109','4','�ٲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('110','4','�ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('111','4','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('112','4','�ǿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('113','4','�ᶼ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('114','4','�潭��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('115','4','��¡��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('116','4','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('117','4','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('118','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('119','4','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('120','4','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('121','4','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('122','4','ʯ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('123','4','��ɽ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('124','4','��������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('125','4','��ˮ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('126','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('127','4','�ϴ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('128','4','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('129','4','�ϴ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('130','5','ʯ��ׯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('131','5','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('132','5','�ػʵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('133','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('134','5','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('135','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('136','5','�żҿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('137','5','�е���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('138','5','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('139','5','�ȷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('140','5','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('141','6','̫ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('142','6','��ͬ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('143','6','��Ȫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('144','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('145','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('146','6','˷����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('147','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('148','6','�˳���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('149','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('150','6','�ٷ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('151','6','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('152','7','���ͺ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('153','7','��ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('154','7','�ں���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('155','7','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('156','7','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('157','7','������˹��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('158','7','���ױ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('159','7','�����׶���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('160','7','�����첼��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('161','7','�˰���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('162','7','���ֹ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('163','7','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('164','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('165','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('166','8','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('167','8','��˳��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('168','8','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('169','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('170','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('171','8','Ӫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('172','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('173','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('174','8','�̽���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('175','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('176','8','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('177','8','��«����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('178','9','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('179','9','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('180','9','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('181','9','��Դ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('182','9','ͨ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('183','9','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('184','9','��ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('185','9','�׳���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('186','9','�ӱ߳�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('187','10','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('188','10','���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('189','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('190','10','�׸���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('191','10','˫Ѽɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('192','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('193','10','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('194','10','��ľ˹��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('195','10','��̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('196','10','ĵ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('197','10','�ں���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('198','10','�绯��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('199','10','���˰������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('200','11','�Ͼ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('201','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('202','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('203','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('204','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('205','11','��ͨ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('206','11','���Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('207','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('208','11','�γ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('209','11','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('210','11','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('211','11','̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('212','11','��Ǩ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('213','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('214','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('215','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('216','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('217','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('218','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('219','12','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('220','12','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('221','12','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('222','12','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('223','12','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('224','13','�Ϸ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('225','13','�ߺ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('226','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('227','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('228','13','����ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('229','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('230','13','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('231','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('232','13','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('233','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('234','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('235','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('236','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('237','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('238','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('239','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('240','13','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('241','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('242','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('243','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('244','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('245','14','Ȫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('246','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('247','14','��ƽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('248','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('249','14','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('250','15','�ϲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('251','15','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('252','15','Ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('253','15','�Ž���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('254','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('255','15','ӥ̶��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('256','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('257','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('258','15','�˴���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('259','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('260','15','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('261','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('262','16','�ൺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('263','16','�Ͳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('264','16','��ׯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('265','16','��Ӫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('266','16','��̨��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('267','16','Ϋ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('268','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('269','16','̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('270','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('271','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('272','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('273','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('274','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('275','16','�ĳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('276','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('277','16','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('278','17','֣����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('279','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('280','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('281','17','ƽ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('282','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('283','17','�ױ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('284','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('285','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('286','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('287','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('288','17','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('289','17','����Ͽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('290','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('291','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('292','17','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('293','17','�ܿ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('294','17','פ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('295','18','�人��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('296','18','��ʯ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('297','18','ʮ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('298','18','�˲���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('299','18','�差��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('300','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('301','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('302','18','Т����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('303','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('304','18','�Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('305','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('306','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('307','18','��ʩ����������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('308','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('309','18','Ǳ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('310','18','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('311','18','��ũ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('312','19','��ɳ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('313','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('314','19','��̶��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('315','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('316','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('317','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('318','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('319','19','�żҽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('320','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('321','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('322','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('323','19','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('324','19','¦����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('325','19','��������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('326','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('327','20','�ع���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('328','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('329','20','�麣��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('330','20','��ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('331','20','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('332','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('333','20','տ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('334','20','ï����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('335','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('336','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('337','20','÷����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('338','20','��β��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('339','20','��Դ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('340','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('341','20','��Զ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('342','20','��ݸ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('343','20','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('344','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('345','20','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('346','20','�Ƹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('347','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('348','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('349','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('350','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('351','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('352','21','���Ǹ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('353','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('354','21','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('355','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('356','21','��ɫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('357','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('358','21','�ӳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('359','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('360','21','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('361','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('362','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('363','22','��ָɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('364','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('365','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('366','22','�Ĳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('367','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('368','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('369','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('370','22','�Ͳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('371','22','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('372','22','�ٸ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('373','22','��ɳ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('374','22','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('375','22','�ֶ�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('376','22','��ˮ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('377','22','��ͤ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('378','22','������������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('379','22','��ɳȺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('380','22','��ɳȺ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('381','22','��ɳȺ���ĵ������亣��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('382','23','�ɶ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('383','23','�Թ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('384','23','��֦����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('385','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('386','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('387','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('388','23','��Ԫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('389','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('390','23','�ڽ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('391','23','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('392','23','�ϳ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('393','23','üɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('394','23','�˱���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('395','23','�㰲��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('396','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('397','23','�Ű���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('398','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('399','23','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('400','23','���Ӳ���Ǽ��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('401','23','���β���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('402','23','��ɽ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('403','24','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('404','24','����ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('405','24','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('406','24','��˳��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('407','24','ͭ�ʵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('408','24','ǭ���ϲ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('409','24','�Ͻڵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('410','24','ǭ�������嶱��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('411','24','ǭ�ϲ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('412','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('413','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('414','25','��Ϫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('415','25','��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('416','25','��ͨ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('417','25','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('418','25','˼é��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('419','25','�ٲ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('420','25','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('421','25','��ӹ���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('422','25','��ɽ׳������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('423','25','��˫���ɴ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('424','25','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('425','25','�º���徰����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('426','25','ŭ��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('427','25','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('428','26','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('429','26','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('430','26','ɽ�ϵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('431','26','�տ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('432','26','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('433','26','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('434','26','��֥����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('435','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('436','27','ͭ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('437','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('438','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('439','27','μ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('440','27','�Ӱ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('441','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('442','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('443','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('444','27','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('445','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('446','28','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('447','28','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('448','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('449','28','��ˮ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('450','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('451','28','��Ҵ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('452','28','ƽ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('453','28','��Ȫ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('454','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('455','28','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('456','28','¤����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('457','28','���Ļ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('458','28','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('459','29','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('460','29','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('461','29','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('462','29','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('463','29','���ϲ���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('464','29','�������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('465','29','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('466','29','�����ɹ������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('467','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('468','30','ʯ��ɽ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('469','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('470','30','��ԭ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('471','30','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('472','31','��³ľ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('473','31','����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('474','31','��³������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('475','31','���ܵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('476','31','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('477','31','���������ɹ�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('478','31','���������ɹ�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('479','31','�����յ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('480','31','�������տ¶�����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('481','31','��ʲ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('482','31','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('483','31','���������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('484','31','���ǵ���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('485','31','����̩����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('486','31','ʯ������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('487','31','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('488','31','ͼľ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('489','31','�������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('490','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('491','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('492','32','��¡��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('493','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('494','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('495','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('496','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('497','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('498','32','��԰��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('499','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('500','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('501','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('502','32','�û���','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('503','32','��Ͷ��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('504','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('505','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('506','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('507','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('508','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('509','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('510','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('511','32','̨����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('512','32','�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('513','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('514','32','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('515','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('516','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('517','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('518','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('519','33','��������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('520','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('521','33','��ˮ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('522','33','�ƴ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('523','33','�ͼ�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('524','33','�뵺��','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('525','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('526','33','����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('527','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('528','33','ɳ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('529','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('530','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('531','33','������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('532','33','Ԫ����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('533','34','�����л���������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('534','34','������ʥ����������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('535','34','�����д�����','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('536','34','��������������','2','0','0','','0','0','','','','','','','0','','','0','','','','','0','');
INSERT INTO `pp_area` VALUES ('537','34','�����з�˳����','2','0','0','','0','0','','','','','N;','','0','','','0','','','','','0','b:0;');
INSERT INTO `pp_article_module` VALUES ('100','ͼƬģ��','ͼƬ','0','','','','a:3:{s:8:\"field_db\";a:1:{s:8:\"photourl\";a:15:{s:5:\"title\";s:8:\"ͼƬ��ַ\";s:10:\"field_name\";s:8:\"photourl\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:9:\"upmorepic\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:10:\"IfListShow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"0\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"ͼƬ\";s:10:\"title_name\";s:8:\"ͼƬ����\";s:12:\"content_name\";s:4:\"����\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"200\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"1\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}}','photo','0','0');
INSERT INTO `pp_article_module` VALUES ('101','����ģ��','����','0','','','','a:4:{s:8:\"field_db\";a:8:{s:9:\"my_author\";a:13:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:9:\"my_author\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:14:\"my_copyfromurl\";a:14:{s:5:\"title\";s:8:\"������ҳ\";s:10:\"field_name\";s:14:\"my_copyfromurl\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"50\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"my_demo\";a:14:{s:5:\"title\";s:8:\"��ʾ��ַ\";s:10:\"field_name\";s:7:\"my_demo\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"50\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:15:\"operatingsystem\";a:14:{s:5:\"title\";s:8:\"���л���\";s:10:\"field_name\";s:15:\"operatingsystem\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"60\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:902:\"<br>ƽ̨ѡ��<a href=\\\"javascript:ToSystem(\\\'Linux\\\')\\\">Linux</a>/<a href=\\\"javascript:ToSystem(\\\'DOS\\\')\\\">DOS</a>/<a href=\\\"javascript:ToSystem(\\\'9x\\\')\\\">9x</a>/<a href=\\\"javascript:ToSystem(\\\'NT\\\')\\\">NT</a>/<a href=\\\"javascript:ToSystem(\\\'2000\\\')\\\">2000</a>/<a href=\\\"javascript:ToSystem(\\\'2003\\\')\\\">2003</a>/<a href=\\\"javascript:ToSystem(\\\'XP\\\')\\\">XP</a>/<a href=\\\"javascript:ToSystem(\\\'.NET\\\')\\\">.NET</a>/<a href=\\\"javascript:ToSystem(\\\'ASP\\\')\\\">ASP</a>/<a href=\\\"javascript:ToSystem(\\\'PHP\\\')\\\">PHP</a>/<a href=\\\"javascript:ToSystem(\\\'JSP\\\')\\\">JSP</a>/<a href=\\\"javascript:ToSystem(\\\'CGI\\\')\\\">CGI</a>\r\n\r\n<SCRIPT LANGUAGE=\\\"JavaScript\\\">\r\nfunction ToSystem(va){\r\n	cc=document.getElementById(\\\"atc_operatingsystem\\\").value\r\n	if(cc==\\\'\\\'){\r\n		document.getElementById(\\\"atc_operatingsystem\\\").value=va;\r\n	}else{\r\n		document.getElementById(\\\"atc_operatingsystem\\\").value+=\\\"/\\\"+va;\r\n	}\r\n	\r\n}\r\n</SCRIPT>\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}s:12:\"softlanguage\";a:14:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:12:\"softlanguage\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"��������\r\n��������\r\nӢ��\r\n��������\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:4;s:9:\"allowview\";N;}s:9:\"copyright\";a:14:{s:5:\"title\";s:8:\"��Ȩ��ʽ\";s:10:\"field_name\";s:9:\"copyright\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:30:\"��Ѱ�\r\n���ð�\r\n�ƽ��\r\n��ҵ��\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:3;s:9:\"allowview\";N;}s:8:\"softsize\";a:14:{s:5:\"title\";s:8:\"�ļ���С\";s:10:\"field_name\";s:8:\"softsize\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:1:\"M\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:2;s:9:\"allowview\";N;}s:7:\"softurl\";a:15:{s:5:\"title\";s:8:\"������ַ\";s:10:\"field_name\";s:7:\"softurl\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:10:\"upmorefile\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:10:\"IfListShow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"1\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"����\";s:10:\"title_name\";s:8:\"��������\";s:12:\"content_name\";s:8:\"��������\";s:6:\"edit_w\";s:3:\"600\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}','download','0','0');
INSERT INTO `pp_article_module` VALUES ('102','��Ƶģ��','��Ƶ','0','','','','a:4:{s:8:\"field_db\";a:3:{s:5:\"mvurl\";a:15:{s:5:\"title\";s:8:\"���߹ۿ�\";s:10:\"field_name\";s:5:\"mvurl\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"upmoremv\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:10:\"IfListShow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"3\";s:9:\"allowview\";N;}s:7:\"my_role\";a:14:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:7:\"my_role\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:100;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:2;s:9:\"allowview\";N;}s:7:\"my_lang\";a:14:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:7:\"my_lang\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:26:\"����\r\n����\r\nӢ��\r\n��������\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:1;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"��Ƶ\";s:10:\"title_name\";s:8:\"��Ƶ����\";s:12:\"content_name\";s:8:\"��Ƶ����\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}','mv','0','0');
INSERT INTO `pp_article_module` VALUES ('103','�̳�ģ��','��Ʒ','0','','','','a:4:{s:8:\"field_db\";a:6:{s:7:\"shop_id\";a:14:{s:5:\"title\";s:8:\"��Ʒ���\";s:10:\"field_name\";s:7:\"shop_id\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:8:\"shoptype\";a:13:{s:5:\"title\";s:8:\"��Ʒ�ͺ�\";s:10:\"field_name\";s:8:\"shoptype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:9:\"shopmoney\";a:14:{s:5:\"title\";s:8:\"���ֵ���\";s:10:\"field_name\";s:9:\"shopmoney\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:7;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"7\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"��\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:9:\"martprice\";a:14:{s:5:\"title\";s:8:\"����۸�\";s:10:\"field_name\";s:9:\"martprice\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"Ԫ\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:8:\"nowprice\";a:14:{s:5:\"title\";s:8:\"���ۼ۸�\";s:10:\"field_name\";s:8:\"nowprice\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"Ԫ\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:7:\"shopnum\";a:14:{s:5:\"title\";s:6:\"�����\";s:10:\"field_name\";s:7:\"shopnum\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:5;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"8\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:4:\"����\";s:10:\"form_units\";s:2:\"��\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"��Ʒ\";s:10:\"title_name\";s:8:\"��Ʒ����\";s:12:\"content_name\";s:8:\"��Ʒ����\";s:6:\"edit_w\";s:3:\"600\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}','shop','0','0');
INSERT INTO `pp_article_module` VALUES ('104','FLASHģ��','FLASH','0','','','','a:4:{s:8:\"field_db\";a:2:{s:11:\"flashauthor\";a:14:{s:5:\"title\";s:9:\"FLASH����\";s:10:\"field_name\";s:11:\"flashauthor\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:2;s:9:\"allowview\";N;}s:8:\"flashurl\";a:13:{s:5:\"title\";s:9:\"FLASH��ַ\";s:10:\"field_name\";s:8:\"flashurl\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:6:\"upplay\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:1;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:5:\"FLASH\";s:10:\"title_name\";s:9:\"FLASH����\";s:12:\"content_name\";s:9:\"FLASH����\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"1\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}','flash','0','0');
INSERT INTO `pp_article_module` VALUES ('105','��Ʒ��ģ','��Ʒ','0','','','','a:5:{s:8:\"field_db\";a:1:{s:7:\"my_type\";a:13:{s:5:\"title\";s:8:\"��Ʒ�ͺ�\";s:10:\"field_name\";s:7:\"my_type\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:100;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"0\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"��Ʒ\";s:10:\"title_name\";s:8:\"��Ʒ����\";s:12:\"content_name\";s:8:\"��Ʒ����\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"250\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:9:\"is_upfile\";a:0:{}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}','','0','0');
INSERT INTO `pp_channel` VALUES ('1','0','0','��վ��ҳ','./','','index.htm','35,4,3,39','','default','','','','','','','','0','a:5:{s:4:\"line\";s:1:\"3\";s:4:\"rows\";s:1:\"8\";s:4:\"leng\";s:2:\"34\";s:5:\"order\";s:4:\"list\";s:8:\"fid_list\";N;}');
INSERT INTO `pp_config` VALUES ('yzImgComment','0','');
INSERT INTO `pp_config` VALUES ('flashtime','0','');
INSERT INTO `pp_config` VALUES ('showComment','1','');
INSERT INTO `pp_config` VALUES ('forbidComment','0','');
INSERT INTO `pp_config` VALUES ('showCommentRows','8','');
INSERT INTO `pp_config` VALUES ('viewNoPassGuestBook','1','');
INSERT INTO `pp_config` VALUES ('yzImgContribute','0','');
INSERT INTO `pp_config` VALUES ('groupPassContribute','3','');
INSERT INTO `pp_config` VALUES ('QQ_login','2','');
INSERT INTO `pp_config` VALUES ('MaxOnlineUser','1000','');
INSERT INTO `pp_config` VALUES ('groupPassShopYz','3,4','');
INSERT INTO `pp_config` VALUES ('groupPassPassGuestBook','3','');
INSERT INTO `pp_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `pp_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `pp_config` VALUES ('ContributeFid','2','');
INSERT INTO `pp_config` VALUES ('groupPassLogYz','3,4','');
INSERT INTO `pp_config` VALUES ('QQ_appkey','','');
INSERT INTO `pp_config` VALUES ('FtpPwd','admin','');
INSERT INTO `pp_config` VALUES ('PostSortStep','2','');
INSERT INTO `pp_config` VALUES ('ListSonline','2','');
INSERT INTO `pp_config` VALUES ('_Notice','29weSgiaHR0cDovL3d3dy5waHAxNjguY29tL05vdGljZS8/dXJsPSR3ZWJkYlt3d3dfdXJsXSIsUEhQMTY4X1BBVEguImNhY2hlL05vdGljZS5waHAiKTs=','');
INSERT INTO `pp_config` VALUES ('CommentTime','5','');
INSERT INTO `pp_config` VALUES ('weburl','/','');
INSERT INTO `pp_config` VALUES ('MailType','smtp','');
INSERT INTO `pp_config` VALUES ('yeepay_key','3L35o47Brm56Yj56F2Zbks9638938xw7fB0ah7U27n2eR3h3i8TqBgwM99SS','');
INSERT INTO `pp_config` VALUES ('allowMemberCommentPass','1','');
INSERT INTO `pp_config` VALUES ('AvoidGatherPre','','');
INSERT INTO `pp_config` VALUES ('AvoidCopy','0','');
INSERT INTO `pp_config` VALUES ('AvoidGather','0','');
INSERT INTO `pp_config` VALUES ('AvoidSave','0','');
INSERT INTO `pp_config` VALUES ('waterpos','7','');
INSERT INTO `pp_config` VALUES ('adminPostEditType','html','');
INSERT INTO `pp_config` VALUES ('article_show_step','0','');
INSERT INTO `pp_config` VALUES ('ifContribute','1','');
INSERT INTO `pp_config` VALUES ('allowGuestSearch','0','');
INSERT INTO `pp_config` VALUES ('kill_badword','0','');
INSERT INTO `pp_config` VALUES ('ShowKeywordColor','#F70968','');
INSERT INTO `pp_config` VALUES ('ifShowKeyword','1','');
INSERT INTO `pp_config` VALUES ('UseFtp','0','');
INSERT INTO `pp_config` VALUES ('FtpDir','111','');
INSERT INTO `pp_config` VALUES ('FtpWeb','','');
INSERT INTO `pp_config` VALUES ('FtpName','admin','');
INSERT INTO `pp_config` VALUES ('showsortlogo','0','');
INSERT INTO `pp_config` VALUES ('groupTime','180','');
INSERT INTO `pp_config` VALUES ('allowGuestCommentPass','1','');
INSERT INTO `pp_config` VALUES ('ShowMenu','0','');
INSERT INTO `pp_config` VALUES ('GuestBookNum','8','');
INSERT INTO `pp_config` VALUES ('ShopNormalSend','8','');
INSERT INTO `pp_config` VALUES ('ShopEmsSend','25','');
INSERT INTO `pp_config` VALUES ('groupUpType','1','');
INSERT INTO `pp_config` VALUES ('ListLeng','70','');
INSERT INTO `pp_config` VALUES ('waterimg','images/default/water.gif','');
INSERT INTO `pp_config` VALUES ('HideNopowerPost','1','');
INSERT INTO `pp_config` VALUES ('Listsortnameline','2','');
INSERT INTO `pp_config` VALUES ('allowGuestComment','1','');
INSERT INTO `pp_config` VALUES ('JsListRows','5','');
INSERT INTO `pp_config` VALUES ('JsListLeng','36','');
INSERT INTO `pp_config` VALUES ('ListSonRows','9','');
INSERT INTO `pp_config` VALUES ('ListSonLeng','34','');
INSERT INTO `pp_config` VALUES ('SideTitleStyle','side_tpl/2','');
INSERT INTO `pp_config` VALUES ('propagandize_jumpto','/','');
INSERT INTO `pp_config` VALUES ('propagandize_LogDay','5','');
INSERT INTO `pp_config` VALUES ('propagandize_close','0','');
INSERT INTO `pp_config` VALUES ('propagandize_Money','2','');
INSERT INTO `pp_config` VALUES ('YZ_MobMoney','60','');
INSERT INTO `pp_config` VALUES ('YZ_IdcardMoney','120','');
INSERT INTO `pp_config` VALUES ('YZ_EmailMoney','30','');
INSERT INTO `pp_config` VALUES ('MailServer','smtp.126.com','');
INSERT INTO `pp_config` VALUES ('sms_wi_pwd','wcb800321','');
INSERT INTO `pp_config` VALUES ('sms_ccell_id','82008','');
INSERT INTO `pp_config` VALUES ('SPlist_filename','html/4special{$fid}/list{$page}.htm','');
INSERT INTO `pp_config` VALUES ('SPbencandy_filename','html/5special{$fid}/show{$id}.htm','');
INSERT INTO `pp_config` VALUES ('close_count','0','');
INSERT INTO `pp_config` VALUES ('passport_TogetherLogin','1','');
INSERT INTO `pp_config` VALUES ('SideSortStyle','side_sort/2','');
INSERT INTO `pp_config` VALUES ('QQ_QBappkey','d12100d9366fbd6d92c9','');
INSERT INTO `pp_config` VALUES ('cache_time_js','-1','');
INSERT INTO `pp_config` VALUES ('list_filename','html/{$fid}/{$page}.htm','');
INSERT INTO `pp_config` VALUES ('bencandy_filename','html/{$fid}-{$dirid}/{$id}-{$page}.htm','');
INSERT INTO `pp_config` VALUES ('cache_time_com','-1','');
INSERT INTO `pp_config` VALUES ('heart_time','30','');
INSERT INTO `pp_config` VALUES ('ArticleHeart','Ƿ��|1.gif\r\n֧��|2.gif\r\n�ܰ�|3.gif\r\n����|4.gif\r\n��Ц|5.gif\r\n����|6.gif\r\n����|7.gif\r\n�Ծ�|8.gif','');
INSERT INTO `pp_config` VALUES ('heart_noRecord','1','');
INSERT INTO `pp_config` VALUES ('UseArticleHeart','1','');
INSERT INTO `pp_config` VALUES ('UseArticleDigg','0','');
INSERT INTO `pp_config` VALUES ('QQ_appid','','');
INSERT INTO `pp_config` VALUES ('sortNUM','24','');
INSERT INTO `pp_config` VALUES ('FtpPort','21','');
INSERT INTO `pp_config` VALUES ('articleNUM','78','');
INSERT INTO `pp_config` VALUES ('cache_time_like','-1','');
INSERT INTO `pp_config` VALUES ('cache_time_new','-1','');
INSERT INTO `pp_config` VALUES ('is_waterimg','1','');
INSERT INTO `pp_config` VALUES ('passport_path','../pw7','');
INSERT INTO `pp_config` VALUES ('label_cache_time','-1','');
INSERT INTO `pp_config` VALUES ('RewriteUrl','0','');
INSERT INTO `pp_config` VALUES ('Del_MoreUpfile','1','');
INSERT INTO `pp_config` VALUES ('passport_type','','');
INSERT INTO `pp_config` VALUES ('passport_url','','');
INSERT INTO `pp_config` VALUES ('passport_pre','`dz7`.cdb_','');
INSERT INTO `pp_config` VALUES ('cache_time_pic','-1','');
INSERT INTO `pp_config` VALUES ('list_cache_time','0','');
INSERT INTO `pp_config` VALUES ('bencandy_cache_time','0','');
INSERT INTO `pp_config` VALUES ('showsp_cache_time','0','');
INSERT INTO `pp_config` VALUES ('cache_time_hot','-1','');
INSERT INTO `pp_config` VALUES ('emailOnly','1','');
INSERT INTO `pp_config` VALUES ('alipay_transport','http','');
INSERT INTO `pp_config` VALUES ('MoneyRatio','100','');
INSERT INTO `pp_config` VALUES ('Money2card','0','');
INSERT INTO `pp_config` VALUES ('index_cache_time','0','');
INSERT INTO `pp_config` VALUES ('waterAlpha','80','');
INSERT INTO `pp_config` VALUES ('if_gdimg','1','');
INSERT INTO `pp_config` VALUES ('QQ_QBappid','1','');
INSERT INTO `pp_config` VALUES ('DefaultIndexHtml','0','');
INSERT INTO `pp_config` VALUES ('AutoPassCompany','1','');
INSERT INTO `pp_config` VALUES ('regmoney','5','');
INSERT INTO `pp_config` VALUES ('ForceDel','0','');
INSERT INTO `pp_config` VALUES ('AutoTitleNum','1','');
INSERT INTO `pp_config` VALUES ('deleteArticleMoney','-1','');
INSERT INTO `pp_config` VALUES ('postArticleMoney','1','');
INSERT INTO `pp_config` VALUES ('comArticleMoney','3','');
INSERT INTO `pp_config` VALUES ('hotArticleNum','100','');
INSERT INTO `pp_config` VALUES ('newArticleTime','24','');
INSERT INTO `pp_config` VALUES ('ListShowIcon','0','');
INSERT INTO `pp_config` VALUES ('autoGetKeyword','0','');
INSERT INTO `pp_config` VALUES ('autoGetSmallPic','1','');
INSERT INTO `pp_config` VALUES ('autoCutSmallPic','1','');
INSERT INTO `pp_config` VALUES ('ForbidRepeatTitle','1','');
INSERT INTO `pp_config` VALUES ('viewNoPassArticle','0','');
INSERT INTO `pp_config` VALUES ('ArticlePicHeight','600','');
INSERT INTO `pp_config` VALUES ('ArticlePicWidth','800','');
INSERT INTO `pp_config` VALUES ('ArticleDownloadDirTime','0','');
INSERT INTO `pp_config` VALUES ('ArticleDownloadUseFtp','0','');
INSERT INTO `pp_config` VALUES ('SortUseOtherModule','0','');
INSERT INTO `pp_config` VALUES ('KeepTodayCount','1','');
INSERT INTO `pp_config` VALUES ('ShopOtherSend','18','');
INSERT INTO `pp_config` VALUES ('ForbidShowPhpPage','0','');
INSERT INTO `pp_config` VALUES ('bencandy_filename2','bencandy.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `pp_config` VALUES ('MailPort','25','');
INSERT INTO `pp_config` VALUES ('alipay_scale','100','');
INSERT INTO `pp_config` VALUES ('guide_word','��ҳ|/|0||51\r\n����|list.php?fid=1|0||9\r\nͼƬ|list.php?fid=9|0||10\r\n����|list.php?fid=11|0||11\r\nӰ��|list.php?fid=13|0||12\r\n�̳�|list.php?fid=15|0||13','');
INSERT INTO `pp_config` VALUES ('list_filename2','list.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `pp_config` VALUES ('FtpHost','127.0.0.1','');
INSERT INTO `pp_config` VALUES ('RegYz','1','');
INSERT INTO `pp_config` VALUES ('YzImg_string','','');
INSERT INTO `pp_config` VALUES ('is_MathYZ','0','');
INSERT INTO `pp_config` VALUES ('upgrade_Record','v7','');
INSERT INTO `pp_config` VALUES ('alipay_partner','2088901156191908','');
INSERT INTO `pp_config` VALUES ('yeepay_id','10011205526','');
INSERT INTO `pp_config` VALUES ('SPlist_filename2','listsp.php?fid-{$fid}-page-{$page}.htm','');
INSERT INTO `pp_config` VALUES ('SPbencandy_filename2','showsp.php?fid-{$fid}-id-{$id}-page-{$page}.htm','');
INSERT INTO `pp_config` VALUES ('sms_wi_id','wcb800322','');
INSERT INTO `pp_config` VALUES ('pay99_id','','');
INSERT INTO `pp_config` VALUES ('pay99_key','','');
INSERT INTO `pp_config` VALUES ('sms_type','ccell','');
INSERT INTO `pp_config` VALUES ('sms_es_name','cb800322','');
INSERT INTO `pp_config` VALUES ('sms_es_key','cb800321','');
INSERT INTO `pp_config` VALUES ('MailId','wzcom@126.com','');
INSERT INTO `pp_config` VALUES ('alipay_service','create_direct_pay_by_user','');
INSERT INTO `pp_config` VALUES ('sms_ccell_pwd','celllxl','');
INSERT INTO `pp_config` VALUES ('PostNotice','<font face=SimSun>\r\n<p><font face=SimSun>1�������ת�����ݣ��������д�����Դ��ַ��������<br />2��������İ�Ȩ�����뷨�������ɷ����߳е���</font></p></font>','');
INSERT INTO `pp_config` VALUES ('photoShowType','0','');
INSERT INTO `pp_config` VALUES ('allowDownMv','0','');
INSERT INTO `pp_config` VALUES ('autoPlayFirstMv','1','');
INSERT INTO `pp_config` VALUES ('EditSystem','2','');
INSERT INTO `pp_config` VALUES ('XunLei_ID','08311','');
INSERT INTO `pp_config` VALUES ('FlashGet_ID','6370','');
INSERT INTO `pp_config` VALUES ('ListPageTitle_nojs','0','');
INSERT INTO `pp_config` VALUES ('view_sell_article','0','');
INSERT INTO `pp_config` VALUES ('YzImg_difficult','0','');
INSERT INTO `pp_config` VALUES ('YzImg_letter_differ','0','');
INSERT INTO `pp_config` VALUES ('is_chineseIMG','0','');
INSERT INTO `pp_config` VALUES ('reg_group','8','');
INSERT INTO `pp_config` VALUES ('forbidRegIp','','');
INSERT INTO `pp_config` VALUES ('forbidRegName','','');
INSERT INTO `pp_config` VALUES ('Reg_Field','a:1:{s:8:\"field_db\";a:3:{s:7:\"company\";a:13:{s:5:\"title\";s:8:\"��˾����\";s:10:\"field_name\";s:7:\"company\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:9:\"orderlist\";s:0:\"\";s:9:\"allowview\";N;}s:4:\"dept\";a:13:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:4:\"dept\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:9:\"orderlist\";s:0:\"\";s:9:\"allowview\";N;}s:3:\"job\";a:13:{s:5:\"title\";s:8:\"ְλ����\";s:10:\"field_name\";s:3:\"job\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:9:\"orderlist\";s:0:\"\";s:9:\"allowview\";N;}}}','');
INSERT INTO `pp_config` VALUES ('copyright','','');
INSERT INTO `pp_config` VALUES ('miibeian_gov_cn','��ICP��000403��','');
INSERT INTO `pp_config` VALUES ('bokecc_id','','');
INSERT INTO `pp_config` VALUES ('cookiePre','','');
INSERT INTO `pp_config` VALUES ('cookieDomain','','');
INSERT INTO `pp_config` VALUES ('forbid_show_bug','1','');
INSERT INTO `pp_config` VALUES ('mirror','http://down.qibosoft.com/other/testv6/upload_files/','');
INSERT INTO `pp_config` VALUES ('updir','upload_files','');
INSERT INTO `pp_config` VALUES ('time','0','');
INSERT INTO `pp_config` VALUES ('totalSpace','100','');
INSERT INTO `pp_config` VALUES ('upfileMaxSize','','');
INSERT INTO `pp_config` VALUES ('upfileType','.rar .txt .jpg .gif .bmp .png .zip .mp3 .wma .wmv .mpeg .mpg .rm .ram .htm .doc .swf .avi .flv .sql .doc .ppt .xls .chm .pdf','');
INSERT INTO `pp_config` VALUES ('NewsMakeHtml','0','');
INSERT INTO `pp_config` VALUES ('MakeIndexHtmlTime','0','');
INSERT INTO `pp_config` VALUES ('admin_url','admin','');
INSERT INTO `pp_config` VALUES ('www_url','http://127.0.0.1/sms','');
INSERT INTO `pp_config` VALUES ('style_member','default','');
INSERT INTO `pp_config` VALUES ('QQ_logintime','24','');
INSERT INTO `pp_config` VALUES ('RegCompany','0','');
INSERT INTO `pp_config` VALUES ('yzImgReg','0','');
INSERT INTO `pp_config` VALUES ('YzImg_voice','0','');
INSERT INTO `pp_config` VALUES ('yzNumReg','0','');
INSERT INTO `pp_config` VALUES ('forbidReg','0','');
INSERT INTO `pp_config` VALUES ('limitRegTime','','');
INSERT INTO `pp_config` VALUES ('style','default','');
INSERT INTO `pp_config` VALUES ('friendlink_open','0','');
INSERT INTO `pp_config` VALUES ('close_why','��վά������,\r\n��ͣ����.','');
INSERT INTO `pp_config` VALUES ('web_open','1','');
INSERT INTO `pp_config` VALUES ('MoneyDW','��','');
INSERT INTO `pp_config` VALUES ('MoneyName','���','');
INSERT INTO `pp_config` VALUES ('UserEmailAutoPass','1','');
INSERT INTO `pp_config` VALUES ('BuySpacesizeMoney','50','');
INSERT INTO `pp_config` VALUES ('UseMoneyType','cms','');
INSERT INTO `pp_config` VALUES ('webmail','wzcom@126.com','');
INSERT INTO `pp_config` VALUES ('description','����Ⱥ�� ���߷��� �й����� �Ϻ��ƶ� ��ͨ�ֻ�','');
INSERT INTO `pp_config` VALUES ('metakeywords','����Ⱥ�� ���߷��� �й����� �Ϻ��ƶ� ��ͨ�ֻ�','');
INSERT INTO `pp_config` VALUES ('EditYzEmail','0','');
INSERT INTO `pp_config` VALUES ('EditYzMob','0','');
INSERT INTO `pp_config` VALUES ('MailPw','1235239523123','');
INSERT INTO `pp_config` VALUES ('EditYzIdcard','0','');
INSERT INTO `pp_config` VALUES ('alipay_key','rnszccvvly5bbwwyayua4zrgtpro518q','');
INSERT INTO `pp_config` VALUES ('alipay_id','service@ivtsoft.com','');
INSERT INTO `pp_config` VALUES ('tenpay_id','1900000109','');
INSERT INTO `pp_config` VALUES ('tenpay_key','8934e7d15453e97507ef794cf7b0519d','');
INSERT INTO `pp_config` VALUES ('webname','������ PPSMS.COM','');
INSERT INTO `pp_config` VALUES ('mymd5','78286966ppsms','');
INSERT INTO `pp_config` VALUES ('companyTrade','���²�ҵ','');
INSERT INTO `pp_config` VALUES ('memberNotice','��ӭ���ӻԾͶ��,Ͷ��ɵû��ֽ���!!','');
INSERT INTO `pp_config` VALUES ('member_contact','','');
INSERT INTO `pp_config` VALUES ('AutoCutFace','0','');
INSERT INTO `pp_config` VALUES ('yzImgAdminLogin','0','');
INSERT INTO `pp_config` VALUES ('DownLoad_readfile','1','');
INSERT INTO `pp_config` VALUES ('path','','');
INSERT INTO `pp_config` VALUES ('hideFid','','');
INSERT INTO `pp_crm_group` VALUES ('1','�𿨻�Ա','7','0','admin3','1362646941');
INSERT INTO `pp_crm_group` VALUES ('2','��ʯ����Ա','9','0','admin3','1362648362');
INSERT INTO `pp_crm_group` VALUES ('6','�׽𿨻�Ա','8','0','admin3','1362648486');
INSERT INTO `pp_crm_group` VALUES ('8','�й�','6','0','admin3','1362659598');
INSERT INTO `pp_crm_group` VALUES ('9','����','3','0','admin3','1362660080');
INSERT INTO `pp_crontab` VALUES ('1','��ҳ��̬','3','','0','1292402491','inc/crontab/make_index_html.php','','1');
INSERT INTO `pp_crontab` VALUES ('2','�������ݿ�','0','0300','0','1292489459','inc/crontab/mysqlbak.php','','1');
INSERT INTO `pp_crontab` VALUES ('3','���CK�༭�����������ͼ','0','0330','0','1292489510','inc/crontab/delete_ckeditor_tmp.php','','1');
INSERT INTO `pp_crontab` VALUES ('4','��ո�����','0','','1296504125','0','inc/crontab/delete_table_upfile.php','','1');
INSERT INTO `pp_crontab` VALUES ('6','��ʱ��������','15','','0','0','inc/crontab/crontab_article.php','�����ʱ����������,��ʱ�Զ�����','1');
INSERT INTO `pp_crontab` VALUES ('7','�����б�ҳ��̬','0','0300','0','1292492030','inc/crontab/list_html_crontab.php','','1');
INSERT INTO `pp_crontab` VALUES ('8','��������ҳ��̬','0','0330','0','1292492050','inc/crontab/bencandy_html_crontab.php','','1');
INSERT INTO `pp_form_config` VALUES ('module_id','21','');
INSERT INTO `pp_form_config` VALUES ('module_pre','form_','');
INSERT INTO `pp_form_config` VALUES ('Info_webOpen','1','');
INSERT INTO `pp_form_config` VALUES ('Info_webname','���ܱ���','');
INSERT INTO `pp_form_content` VALUES ('22','','7','0','1237208241','1237208241','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('26','','6','7','1237250809','1237250809','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('27','','3','1','1237260673','1237260673','1','admin','','1','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('30','','2','7','1237269830','1237269830','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('29','','2','2','1237268864','1237268864','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('25','','3','2','1237214289','1237214289','1','admin','','1','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('24','','6','3','1237213169','1237213169','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('31','','2','6','1239780761','1239780761','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('18','','3','0','1236936110','1236936110','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('19','','5','0','1236939584','1236939584','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('20','','6','0','1237174883','1237174883','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content` VALUES ('23','','7','0','1237208253','1237208253','1','admin','','0','192.168.0.99');
INSERT INTO `pp_form_content_2` VALUES ('29','1','JAVA����Ա','5','������������','����','800Ԫ/��','2','����','��������');
INSERT INTO `pp_form_content_2` VALUES ('30','1','�г��ܼ�','2','�����Ʒ������.','����','8000Ԫ/��','0','����','��������');
INSERT INTO `pp_form_content_2` VALUES ('31','1','���۾���','8','�����ҹ�˾�Ĳ�Ʒ����.','������','3000','0','��ר','һ������');
INSERT INTO `pp_form_content_3` VALUES ('18','1','�ۺ�ͷ�','','222223','65223@qq.com','133444444443');
INSERT INTO `pp_form_content_3` VALUES ('25','1','�ۺ�ͷ�','hhhhhhhhhhhhhhhhhh','222223','65223@qq.com','13377777777');
INSERT INTO `pp_form_content_3` VALUES ('27','1','�ۺ�ͷ�','192.168.0.99/55 all righ\nts reserved \n��ICP��05047353�� \nPowered by PHP168','222223','65223@qq.com','13377777777');
INSERT INTO `pp_form_content_5` VALUES ('19','1','555555555555555','0000-00-00','��ר','����ʽ','','','','0','222223','444444','65223@qq.com','13355555555','3','һֱ��fgsgfd3','44444444444444443','');
INSERT INTO `pp_form_content_6` VALUES ('20','1','����Ա','55555555555\nkkkkkkkkkkkkkkkkkkkkkk','5','222223','����','56','','','','2','6767','����','3','65223@qq.com','444444','');
INSERT INTO `pp_form_content_6` VALUES ('24','1','C���Թ���ʦ','4444444444444','4','222223','��ר','4','','','','2','090-89766543','����','3','65223@qq.com','444444','1����');
INSERT INTO `pp_form_content_6` VALUES ('26','1','C���Թ���ʦ','rrrrrrrrrrrrrrrrrrrrrrrrrrr','4','222223','��ר','4','','','','1','090-89766543','1000Ԫ-2000Ԫ','3','65223@qq.com','444444','1����');
INSERT INTO `pp_form_content_7` VALUES ('6','1','��վϵͳ(����+����)','6655','','����ת��','','','222223','444444','3333333','13333333333','3trewtre');
INSERT INTO `pp_form_content_7` VALUES ('7','1','��վϵͳ(����+����)','23','2009-03-03','����֧��','fff','eee','222223','444444','333','13344444444','3');
INSERT INTO `pp_form_content_7` VALUES ('8','1','��վϵͳ(����+����)','5','','����֧��','','','222223','444444','һֱ��fgsgfd3','13355555555','3');
INSERT INTO `pp_form_content_7` VALUES ('9','1','��վϵͳ(����+����)','0.01','2009-03-13','����֧��','e','s','222223','444444','һֱ��fgsgfd3','13355555555','3');
INSERT INTO `pp_form_content_7` VALUES ('10','1','��վϵͳ(����+����)','1','2009-03-13','����֧��','e','s','222223','444444','һֱ��fgsgfd3','13355555555','3');
INSERT INTO `pp_form_content_7` VALUES ('11','1','��վϵͳ(����+����)','0.01','2009-03-13','olpay','e','s','222223','444444','һֱ��fgsgfd3','13355555555','3');
INSERT INTO `pp_form_content_7` VALUES ('12','1','��վϵͳ(����+����)/������Ϣϵͳ/�̳�ϵͳ','54','2009-03-03','����ת��','t','t','222223','444444','һֱ��fgsgfd3','13355555555','3');
INSERT INTO `pp_form_content_7` VALUES ('13','1','1/2/�̳�ϵͳ','4','','olpay','','','222223','444444','һֱ��fgsgfd3','13344444444','3');
INSERT INTO `pp_form_content_7` VALUES ('22','1','1','78','','olpay','','','222223','444444','һֱ��fgsgfd3','13377777777','3');
INSERT INTO `pp_form_content_7` VALUES ('23','1','1','78','','����ת��','','','222223','444444','һֱ��fgsgfd3','13377777777','3');
INSERT INTO `pp_form_module` VALUES ('1','��������','0','','a:3:{s:8:\"field_db\";a:8:{s:8:\"sortname\";a:14:{s:5:\"title\";s:18:\"�����ĸ���Ŀ�İ���\";s:10:\"field_name\";s:8:\"sortname\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:40;s:9:\"form_type\";s:8:\"checkbox\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:38:\"����Ƶ��\r\n����Ƶ��\r\nͼƬƵ��\r\n��ƵƵ��\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:9:\"orderlist\";s:2:\"11\";s:9:\"allowview\";N;}s:7:\"webtime\";a:15:{s:5:\"title\";s:16:\"ÿ����������Сʱ\";s:10:\"field_name\";s:7:\"webtime\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"4\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:4:\"Сʱ\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"��ʵ����\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"7\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"9\";s:9:\"allowview\";N;}s:3:\"sex\";a:15:{s:5:\"title\";s:4:\"�Ա�\";s:10:\"field_name\";s:3:\"sex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:18:\"1|��\r\n2|Ů\r\n0|����\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}s:4:\"oicq\";a:15:{s:5:\"title\";s:6:\"��ϵQQ\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:8:\"mobphone\";a:14:{s:5:\"title\";s:8:\"�ֻ�����\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:8:\"interest\";a:14:{s:5:\"title\";s:8:\"��Ȥ����\";s:10:\"field_name\";s:8:\"interest\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}s:9:\"introduce\";a:14:{s:5:\"title\";s:8:\"���ҽ���\";s:10:\"field_name\";s:9:\"introduce\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:4;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"����\";}s:11:\"listshow_db\";a:2:{s:8:\"truename\";s:8:\"��ʵ����\";s:3:\"sex\";s:4:\"�Ա�\";}}','3,4,8,9','0','<p><strong>������м���,������,�������������ǵİ�����!</strong></p>','0','0','����','');
INSERT INTO `pp_form_module` VALUES ('2','��Ƹ����','0','','a:3:{s:8:\"field_db\";a:8:{s:9:\"workplace\";a:15:{s:5:\"title\";s:8:\"ְλ����\";s:10:\"field_name\";s:9:\"workplace\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:100;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:4:\"nums\";a:15:{s:5:\"title\";s:8:\"��Ƹ����\";s:10:\"field_name\";s:4:\"nums\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"4\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"��\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"9\";s:9:\"allowview\";N;}s:10:\"jobrequire\";a:15:{s:5:\"title\";s:14:\"ְλ������Ҫ��\";s:10:\"field_name\";s:10:\"jobrequire\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:8:\"wageyear\";a:15:{s:5:\"title\";s:12:\"��������Ҫ��\";s:10:\"field_name\";s:8:\"wageyear\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:12;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:40:\"Ӧ���ҵ��\r\nһ������\r\n��������\r\n��������\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:9:\"workwhere\";a:15:{s:5:\"title\";s:8:\"�����ص�\";s:10:\"field_name\";s:9:\"workwhere\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:4:\"wage\";a:15:{s:5:\"title\";s:8:\"нˮ����\";s:10:\"field_name\";s:4:\"wage\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}s:6:\"asksex\";a:15:{s:5:\"title\";s:8:\"�Ա�Ҫ��\";s:10:\"field_name\";s:6:\"asksex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:1:\"1\";s:8:\"form_set\";s:18:\"1|��\r\n2|Ů\r\n0|����\";s:10:\"form_value\";s:1:\"0\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"4\";s:9:\"allowview\";N;}s:9:\"schoo_age\";a:15:{s:5:\"title\";s:8:\"ѧ��Ҫ��\";s:10:\"field_name\";s:9:\"schoo_age\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:46:\"Сѧ\r\n��ѧ\r\n��ר\r\n����\r\n��ר\r\n����\r\n˶ʿ\r\n��ʿ\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:4:\"����\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"3\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"����\";}s:11:\"listshow_db\";a:5:{s:8:\"wageyear\";s:12:\"��������Ҫ��\";s:9:\"workplace\";s:8:\"ְλ����\";s:4:\"nums\";s:8:\"��Ƹ����\";s:6:\"asksex\";s:8:\"�Ա�Ҫ��\";s:9:\"schoo_age\";s:8:\"ѧ��Ҫ��\";}}','','0','','0','1','���','');
INSERT INTO `pp_form_module` VALUES ('3','Ͷ�߽���','0','','a:3:{s:8:\"field_db\";a:5:{s:10:\"advicetype\";a:15:{s:5:\"title\";s:8:\"Ͷ������\";s:10:\"field_name\";s:10:\"advicetype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"��ǰ�ͷ�\r\n�ۺ�ͷ�\r\n��Ʒ����\r\n����\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"10\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"��ĵ绰\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}s:5:\"email\";a:14:{s:5:\"title\";s:8:\"�������\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"content\";a:15:{s:5:\"title\";s:8:\"Ͷ������\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"6\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"��ĳƺ�\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"8\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:10:\"advicetype\";s:8:\"Ͷ������\";s:8:\"truename\";s:8:\"��ĳƺ�\";}}','','0','','0','1','����','3,4');
INSERT INTO `pp_form_module` VALUES ('4','�������','0','','a:3:{s:8:\"field_db\";a:6:{s:8:\"truename\";a:15:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:3:\"sex\";a:14:{s:5:\"title\";s:4:\"�Ա�\";s:10:\"field_name\";s:3:\"sex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:18:\"1|��\r\n2|Ů\r\n0|����\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:3:\"age\";a:15:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:3:\"age\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:2;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"��\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:8:\"mobphone\";a:14:{s:5:\"title\";s:8:\"��ϵ�绰\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"my_song\";a:15:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:7:\"my_song\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:6:\"metier\";a:15:{s:5:\"title\";s:4:\"ְҵ\";s:10:\"field_name\";s:6:\"metier\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:32:\"����Ա\r\n����\r\n��Ա\r\n����ʦ\r\n����\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}}s:7:\"is_html\";a:2:{s:7:\"content\";s:4:\"����\";s:5:\"my_88\";s:13:\"�ҵ��ֶ�my_88\";}s:11:\"listshow_db\";a:4:{s:8:\"truename\";s:4:\"����\";s:3:\"age\";s:4:\"����\";s:6:\"metier\";s:4:\"ְҵ\";s:7:\"my_song\";s:8:\"��������\";}}','','0','<p>&nbsp;&nbsp; Ϊ��л����Ա�Ա���վ��֧�֣��صؾ��е�һ��質��������ӭ���ӻԾ�����μӡ������������£�</p>\r\n<p><strong>����ʱ�䣺</strong>�Ӽ����𡪡�9��4������8��00��ֹ</p>\r\n<p><strong>��Ŀʱ�䣺</strong>9��5�ţ�����һ������8��30����11��00</p>\r\n<p><strong>����Ҫ��</strong>����ע���Ա���������豸����������˵�����ڱ�������������̳ע�����ֵ�½������.</p>\r\n<p><strong>������Ŀ��</strong>��ѡ�����峪 �ɴ������ݳ�</p>\r\n<p><strong>��ί��</strong>�˳Ƽ�˳���ټ���ί���������е��� ������ ���� ���� ���߻����ϼ����Ա��</p>\r\n<p><strong>��ѡ��ʽ��</strong>�ڱ��������������л�Ա�ڴ�����ͶƱ��ÿ����Ͷ2Ʊ��ͶƱʱ����6�죬�ȴ�9��5��11��01����9��11����8��00ֹ���������ίͳ��Ʊ������ѡ��Ʊ������ǰ������</p>\r\n<p><strong>������</strong>���ڻ��ǰ�����ĸ��֣������費ͬ�̶ȵ������ͻ��ֽ�����</p>\r\n<p>���ڱ�������������ʱ����Ҫ�󣬽����ݴ�ұ���˳�򣬺�������ʱ�䣬Ϊ������ݳ�˳�򣬽���9��4������10��00��ǰ�ڸ��������ͷ�����֪ͨ����ʽ�μӴ˴α�����ѡ�����������ݳ�˳��</p>\r\n<p><strong>���֣�</strong>���� �α�</p>','0','1','���','');
INSERT INTO `pp_form_module` VALUES ('5','Ա�����ϵǼǱ�','0','','a:3:{s:8:\"field_db\";a:16:{s:8:\"cp_title\";a:15:{s:5:\"title\";s:8:\"��˾ְλ\";s:10:\"field_name\";s:8:\"cp_title\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:20;s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:19;s:9:\"allowview\";N;}s:4:\"bday\";a:14:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:4:\"bday\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"time\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:18;s:9:\"allowview\";N;}s:6:\"height\";a:15:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:6:\"height\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:3;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"3\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"CM\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:17;s:9:\"allowview\";N;}s:6:\"native\";a:15:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:6:\"native\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:16;s:9:\"allowview\";N;}s:10:\"school_age\";a:14:{s:5:\"title\";s:4:\"ѧ��\";s:10:\"field_name\";s:10:\"school_age\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:45:\"����\r\n��ר\r\n����\r\n��ר\r\n����\r\n˶ʿ\r\n��ʿ\r\nMBA\";s:10:\"form_value\";s:4:\"��ר\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:15;s:9:\"allowview\";N;}s:9:\"specialty\";a:15:{s:5:\"title\";s:4:\"רҵ\";s:10:\"field_name\";s:9:\"specialty\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:40;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:14;s:9:\"allowview\";N;}s:4:\"oicq\";a:15:{s:5:\"title\";s:6:\"QQ����\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:10;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:13;s:9:\"allowview\";N;}s:5:\"email\";a:15:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:12;s:9:\"allowview\";N;}s:8:\"mobphone\";a:15:{s:5:\"title\";s:8:\"�ֻ�����\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:11;s:9:\"allowview\";N;}s:5:\"skill\";a:15:{s:5:\"title\";s:4:\"�س�\";s:10:\"field_name\";s:5:\"skill\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:6:\"idcard\";a:15:{s:5:\"title\";s:10:\"����֤����\";s:10:\"field_name\";s:6:\"idcard\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:18;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"18\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:5:\"sport\";a:15:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:5:\"sport\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:80;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:9:\"telephone\";a:15:{s:5:\"title\";s:8:\"��ͥ�绰\";s:10:\"field_name\";s:9:\"telephone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"address\";a:15:{s:5:\"title\";s:8:\"��ͥ��ַ\";s:10:\"field_name\";s:7:\"address\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:7:\"content\";a:15:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:7:\"content\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:11:\"listshow_db\";a:2:{s:6:\"native\";s:4:\"����\";s:8:\"truename\";s:4:\"����\";}}','','0','','0','0','���','');
INSERT INTO `pp_form_module` VALUES ('6','��ְ����','0','','a:3:{s:8:\"field_db\";a:16:{s:12:\"workposition\";a:15:{s:5:\"title\";s:8:\"��ְ��λ\";s:10:\"field_name\";s:12:\"workposition\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"30\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"21\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:20;s:9:\"allowview\";N;}s:3:\"sex\";a:15:{s:5:\"title\";s:4:\"�Ա�\";s:10:\"field_name\";s:3:\"sex\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:1;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:18:\"1|��\r\n2|Ů\r\n0|����\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:19;s:9:\"allowview\";N;}s:5:\"myage\";a:15:{s:5:\"title\";s:4:\"����\";s:10:\"field_name\";s:5:\"myage\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:2;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"��\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:18;s:9:\"allowview\";N;}s:9:\"schoo_age\";a:15:{s:5:\"title\";s:4:\"ѧ��\";s:10:\"field_name\";s:9:\"schoo_age\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:45:\"����\r\n��ר\r\n����\r\n��ר\r\n����\r\n˶ʿ\r\n��ʿ\r\nMBA\";s:10:\"form_value\";s:4:\"��ר\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:17;s:9:\"allowview\";N;}s:14:\"graduateschool\";a:15:{s:5:\"title\";s:8:\"��ҵѧУ\";s:10:\"field_name\";s:14:\"graduateschool\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:40;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:16;s:9:\"allowview\";N;}s:9:\"specialty\";a:15:{s:5:\"title\";s:4:\"רҵ\";s:10:\"field_name\";s:9:\"specialty\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:15;s:9:\"allowview\";N;}s:5:\"skill\";a:15:{s:5:\"title\";s:4:\"�س�\";s:10:\"field_name\";s:5:\"skill\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:14;s:9:\"allowview\";N;}s:8:\"workyear\";a:15:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:8:\"workyear\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:2;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"��\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:13;s:9:\"allowview\";N;}s:10:\"experience\";a:15:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:10:\"experience\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:2;s:9:\"form_type\";s:8:\"textarea\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:12;s:9:\"allowview\";N;}s:4:\"wage\";a:15:{s:5:\"title\";s:8:\"������н\";s:10:\"field_name\";s:4:\"wage\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:73:\"����\r\n1000Ԫ����\r\n1000Ԫ-2000Ԫ\r\n2000Ԫ-3000Ԫ\r\n3000Ԫ-4000Ԫ\r\n4000Ԫ����\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:11;s:9:\"allowview\";N;}s:7:\"address\";a:15:{s:5:\"title\";s:10:\"��ǰ��ס��\";s:10:\"field_name\";s:7:\"address\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:255;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"70\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:9:\"telephone\";a:15:{s:5:\"title\";s:8:\"��ϵ�绰\";s:10:\"field_name\";s:9:\"telephone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:5:\"email\";a:15:{s:5:\"title\";s:8:\"��ϵ����\";s:10:\"field_name\";s:5:\"email\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:4:\"oicq\";a:15:{s:5:\"title\";s:6:\"QQ����\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"9\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:8:\"worktime\";a:15:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:8:\"worktime\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"��ʱ\r\n1����\r\n2����\r\n3����\r\n1������\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"����\";}s:11:\"listshow_db\";a:7:{s:6:\"my_537\";s:8:\"��������\";s:6:\"my_425\";s:8:\"��������\";s:8:\"truename\";s:4:\"����\";s:5:\"myage\";s:4:\"����\";s:8:\"workyear\";s:8:\"��������\";s:3:\"sex\";s:4:\"�Ա�\";s:12:\"workposition\";s:8:\"��ְ��λ\";}}','','0','','0','1','¼��','');
INSERT INTO `pp_form_module` VALUES ('7','��Ʒ����','0','','a:3:{s:8:\"field_db\";a:11:{s:7:\"product\";a:15:{s:5:\"title\";s:8:\"��Ʒ����\";s:10:\"field_name\";s:7:\"product\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"40\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"30\";s:9:\"allowview\";N;}s:7:\"paytype\";a:15:{s:5:\"title\";s:8:\"���ʽ\";s:10:\"field_name\";s:7:\"paytype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:25;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:70:\"olpay|����֧��\r\n����ת��\r\nATM��/���й�̨ת�ʻ��\r\n��������\r\n������ʽ\r\n\";s:10:\"form_value\";s:5:\"olpay\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"29\";s:9:\"allowview\";N;}s:7:\"paytime\";a:14:{s:5:\"title\";s:8:\"��������\";s:10:\"field_name\";s:7:\"paytime\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"time\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:28;s:9:\"allowview\";N;}s:11:\"receivebank\";a:14:{s:5:\"title\";s:12:\"����ת������\";s:10:\"field_name\";s:11:\"receivebank\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:27;s:9:\"allowview\";N;}s:8:\"sendbank\";a:14:{s:5:\"title\";s:12:\"����ת������\";s:10:\"field_name\";s:8:\"sendbank\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:26;s:9:\"allowview\";N;}s:8:\"paymoney\";a:15:{s:5:\"title\";s:8:\"֧�����\";s:10:\"field_name\";s:8:\"paymoney\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"Ԫ\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"25\";s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:10:\"��ϵ������\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"24\";s:9:\"allowview\";N;}s:4:\"oicq\";a:14:{s:5:\"title\";s:8:\"��ϵ��QQ\";s:10:\"field_name\";s:4:\"oicq\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"23\";s:9:\"allowview\";N;}s:9:\"telephone\";a:14:{s:5:\"title\";s:10:\"��ϵ�˵绰\";s:10:\"field_name\";s:9:\"telephone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"22\";s:9:\"allowview\";N;}s:8:\"mobphone\";a:14:{s:5:\"title\";s:10:\"��ϵ���ֻ�\";s:10:\"field_name\";s:8:\"mobphone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:11;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"11\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:21;s:9:\"allowview\";N;}s:7:\"address\";a:14:{s:5:\"title\";s:10:\"��ϵ�˵�ַ\";s:10:\"field_name\";s:7:\"address\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"60\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:2:\"20\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"����\";}s:11:\"listshow_db\";a:3:{s:7:\"paytype\";s:8:\"���ʽ\";s:8:\"truename\";s:10:\"��ϵ������\";s:8:\"paymoney\";s:8:\"֧�����\";}}','','0','','0','1','����','');
INSERT INTO `pp_form_module` VALUES ('8','�Ƶ귿��Ԥ��','0','','a:3:{s:8:\"field_db\";a:6:{s:8:\"roomtype\";a:15:{s:5:\"title\";s:12:\"Ԥ����������\";s:10:\"field_name\";s:8:\"roomtype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:5:\"radio\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:44:\"��׼˫�˷�\r\n��׼���˷�\r\n�������˷�\r\n��ͳ�׷�\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:10;s:9:\"allowview\";N;}s:7:\"roomnum\";a:15:{s:5:\"title\";s:8:\"Ԥ������\";s:10:\"field_name\";s:7:\"roomnum\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:3;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"��\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:9;s:9:\"allowview\";N;}s:6:\"numday\";a:15:{s:5:\"title\";s:8:\"��ס����\";s:10:\"field_name\";s:6:\"numday\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:3;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"2\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"��\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:8:\"intotime\";a:15:{s:5:\"title\";s:8:\"��סʱ��\";s:10:\"field_name\";s:8:\"intotime\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"time\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:8:\"truename\";a:15:{s:5:\"title\";s:8:\"�˿�����\";s:10:\"field_name\";s:8:\"truename\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:9:\"telephone\";a:15:{s:5:\"title\";s:8:\"��ϵ�绰\";s:10:\"field_name\";s:9:\"telephone\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:8:\"listshow\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}}s:7:\"is_html\";a:1:{s:7:\"content\";s:4:\"����\";}s:11:\"listshow_db\";a:3:{s:8:\"roomtype\";s:12:\"Ԥ����������\";s:7:\"roomnum\";s:8:\"Ԥ������\";s:8:\"truename\";s:8:\"�˿�����\";}}','','0','','0','1','���','');
INSERT INTO `pp_form_reply` VALUES ('6','25','3','1237255555','1','admin','<p><u>yyyyyy</u></p>\r\n<p><u>yyyyyyyy</u></p><strong>\r\n<hr width=\"100%\" color=#98fb98 SIZE=1 />\r\n</strong>','192.168.0.99');
INSERT INTO `pp_form_reply` VALUES ('10','27','3','1239591974','1','admin','ffffffffffff ','192.168.0.99');
INSERT INTO `pp_friendlink` VALUES ('12','0','PHPWIND�ٷ���̳','http://www.phpwind.net/','http://www.phpwind.net/logo.gif','PHPWIND�ٷ���̳','32','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('5','0','�벩CMS','http://www.qibosoft.com','../images/default/friendlink.gif','����������CMS��վϵͳ�ṩ��','40','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('39','3','��������','http://www.sudu.cn/','','','0','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('25','2','վ����','http://admin5.com/','friendlink/1_20090418160400_wqpAk.gif','վ����','37','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('26','2','�й�վ��վ','http://www.chinaz.com/','friendlink/1_20090418160432_JNCry.gif','�й�վ��վ','38','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('27','2','WEB������','http://www.cncms.com.cn/','friendlink/1_20090418160451_64IKO.gif','WEB������','34','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('29','3','�е绪ͨ','http://www.chinaccnet.com/','','�е绪ͨ','0','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink` VALUES ('34','2','CNZZ','http://www.cnzz.cn/','','CNZZ','26','0','0','0','0','0','','1','0');
INSERT INTO `pp_friendlink_sort` VALUES ('2','��������','0');
INSERT INTO `pp_friendlink_sort` VALUES ('3','�������','0');
INSERT INTO `pp_fu_sort` VALUES ('1','0','0','444','1','0','1','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `pp_gather_rule` VALUES ('1','0','article','article','','��Ѷ�˲ż���','','','0','0','1','0','http://edu.qq.com/job/jlgc_more.htm\r\nhttp://edu.qq.com/job/jlgc_more1.htm\r\nhttp://edu.qq.com/job/jlgc_more2.htm','','','','','','','','','0','','','','','','<table|<table style=\"display:none;\"','','','0','1172984270','1172984423','0','0','','0','0','','','','0','','<tr><td height=\"24\" class=\"font14px\"><div align=\"left\">��<a target=\"_blank\" class=\"blackul\" href=\"{url=NO\"}\">{title=NO<}</a> ','<div id=\"ArticleCnt\">{content=*}</div><div id=\"copyweb\">','','','0');
INSERT INTO `pp_gather_rule` VALUES ('2','0','article','article','','��������ԭ����ѧ�ռ�----->ɢ�� >> �������','http://wind.yinsha.com/ashow.php?sid=10&%20size=20&page=[page]','','1','3','1','0','','','','','','','','','','0','','','','<tr><td><p class=s11>','</td></tr>','','','','0','1165498531','1165498610','0','0','','0','0','','','','0','','<img src=images/{NO\"} border=0>\r\n                    \r\n            <a href=\"{url=NO\"}\" target=_blank>{title=NO<}</a> ','','','','0');
INSERT INTO `pp_gather_rule` VALUES ('3','0','article','article','','�̺���ɴ-> ɢ�� >> �������','http://wind.yinsha.com/ashow.php?sid=5&%20size=20&page=[page]','','1','8','1','0','','','','','','','','','','0','','','','','','','','','0','1166582291','1166582456','0','0','','0','0','','','','0','','<img src=images/{NO\"} border=0>\r\n                    \r\n            <a href=\"{url=NO }\" target=_blank>{title=NO<}</a> ','<div align=\"center\" class=\"s3\">����: {author=NO\"}��</div>{*}<tr><td><p class=s11>&nbsp;&nbsp;{content=*}</td></tr>\r\n\r\n','','','0');
INSERT INTO `pp_group` VALUES ('2','1','�ο���','0','0','0','a:54:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:17:\"SearchArticleType\";s:1:\"1\";s:16:\"PostArticleYzImg\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:16:\"PassContributeSP\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:2:\"10\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";}','0','');
INSERT INTO `pp_group` VALUES ('3','1','��������Ա','0','0','0','a:26:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"1\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"0\";s:15:\"buy_postauto_yz\";s:1:\"0\";s:15:\"post_pingpai_yz\";s:1:\"0\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:0:\"\";s:12:\"post_buy_num\";s:0:\"\";s:13:\"post_news_num\";s:0:\"\";s:14:\"post_photo_num\";s:0:\"\";s:11:\"post_hr_num\";s:0:\"\";s:17:\"post_zhanghui_num\";s:0:\"\";s:12:\"post_ZLG_num\";s:0:\"\";s:16:\"post_pingpai_num\";s:0:\"\";s:19:\"post_baojiadian_num\";s:0:\"\";s:19:\"post_xunjiadian_num\";s:0:\"\";s:24:\"post_info_collection_num\";s:0:\"\";s:18:\"allow_get_homepage\";s:1:\"1\";}','1','a:151:{s:13:\"center_config\";s:1:\"1\";s:17:\"set_comsort_index\";s:1:\"1\";s:8:\"user_reg\";s:1:\"1\";s:12:\"center_cache\";s:1:\"1\";s:19:\"article_more_config\";s:1:\"1\";s:11:\"cache_cache\";s:1:\"1\";s:14:\"article_module\";s:1:\"1\";s:11:\"comment_set\";s:1:\"1\";s:18:\"setmakeALLhtml_set\";s:1:\"1\";s:11:\"module_list\";s:1:\"1\";s:9:\"hack_list\";s:1:\"1\";s:9:\"blend_set\";s:1:\"1\";s:14:\"friendlink_mod\";s:1:\"1\";s:14:\"alonepage_list\";s:1:\"1\";s:12:\"channel_list\";s:1:\"1\";s:9:\"mysql_out\";s:1:\"1\";s:10:\"mysql_into\";s:1:\"1\";s:9:\"mysql_del\";s:1:\"1\";s:9:\"mysql_sql\";s:1:\"1\";s:9:\"menu_list\";s:1:\"1\";s:14:\"adminmenu_list\";s:1:\"1\";s:15:\"membermenu_list\";s:1:\"1\";s:13:\"sort_listsort\";s:1:\"1\";s:15:\"artic_listartic\";s:1:\"1\";s:12:\"comment_list\";s:1:\"1\";s:13:\"artic_postnew\";s:1:\"1\";s:12:\"artic_addpic\";s:1:\"1\";s:18:\"makeindexhtml_make\";s:1:\"1\";s:13:\"makehtml_make\";s:1:\"1\";s:15:\"spmakehtml_make\";s:1:\"1\";s:15:\"setmakehtml_set\";s:1:\"1\";s:11:\"index_label\";s:1:\"1\";s:10:\"s_list_fid\";s:1:\"1\";s:13:\"up_splist_fid\";s:1:\"1\";s:12:\"special_list\";s:1:\"1\";s:15:\"spsort_listsort\";s:1:\"1\";s:13:\"fu_sort_power\";s:1:\"1\";s:14:\"fu_artic_power\";s:1:\"1\";s:11:\"member_list\";s:1:\"1\";s:12:\"company_list\";s:1:\"1\";s:8:\"regfield\";s:1:\"1\";s:16:\"member_addmember\";s:1:\"1\";s:20:\"article_group_config\";s:1:\"1\";s:10:\"group_list\";s:1:\"1\";s:16:\"group_list_admin\";s:1:\"1\";s:9:\"group_add\";s:1:\"1\";s:10:\"alipay_set\";s:1:\"1\";s:9:\"shoporder\";s:1:\"1\";s:14:\"moneycard_make\";s:1:\"1\";s:7:\"js_list\";s:1:\"1\";s:12:\"propagandize\";s:1:\"1\";s:11:\"jfadmin_mod\";s:1:\"1\";s:15:\"attachment_list\";s:1:\"1\";s:9:\"area_list\";s:1:\"1\";s:10:\"upgrade_ol\";s:1:\"1\";s:14:\"limitword_list\";s:1:\"1\";s:11:\"report_list\";s:1:\"1\";s:13:\"copyfrom_list\";s:1:\"1\";s:17:\"limitword_replace\";s:1:\"1\";s:24:\"article_more_avoidgather\";s:1:\"1\";s:13:\"getkeyword_do\";s:1:\"1\";s:17:\"googlemap_makemap\";s:1:\"1\";s:15:\"gather_copysina\";s:1:\"1\";s:11:\"gather_list\";s:1:\"1\";s:16:\"gather_list_sort\";s:1:\"1\";s:12:\"message_send\";s:1:\"1\";s:9:\"mail_send\";s:1:\"1\";s:8:\"sms_send\";s:1:\"1\";s:8:\"cnzz_set\";s:1:\"1\";s:9:\"code_code\";s:1:\"1\";s:15:\"style_editstyle\";s:1:\"1\";s:13:\"template_list\";s:1:\"1\";s:15:\"logs_login_logs\";s:1:\"1\";s:18:\"logs_admin_do_logs\";s:1:\"1\";s:4:\"oicq\";s:1:\"1\";s:5:\"login\";s:1:\"1\";s:8:\"adminmap\";s:1:\"1\";s:8:\"moneylog\";s:1:\"1\";s:6:\"search\";s:1:\"1\";s:6:\"webmsg\";s:1:\"1\";s:7:\"crontab\";s:1:\"1\";s:23:\"Module_hy_center_config\";s:1:\"1\";s:14:\"Module_hy_sort\";s:1:\"1\";s:17:\"Module_hy_company\";s:1:\"1\";s:17:\"Module_hy_comment\";s:1:\"1\";s:18:\"Module_hy_renzheng\";s:1:\"1\";s:22:\"Module_hy_center_label\";s:1:\"1\";s:21:\"Module_hy_companynews\";s:1:\"1\";s:20:\"Module_hy_companypic\";s:1:\"1\";s:25:\"Module_exam_center_config\";s:1:\"1\";s:21:\"Module_exam_exam_sort\";s:1:\"1\";s:22:\"Module_exam_exam_title\";s:1:\"1\";s:21:\"Module_exam_exam_form\";s:1:\"1\";s:21:\"Module_exam_exam_read\";s:1:\"1\";s:24:\"Module_exam_center_label\";s:1:\"1\";s:23:\"Module_guestbook_center\";s:1:\"1\";s:21:\"Module_guestbook_sort\";s:1:\"1\";s:24:\"Module_guestbook_content\";s:1:\"1\";s:18:\"Module_form_center\";s:1:\"1\";s:23:\"Module_form_form_module\";s:1:\"1\";s:24:\"Module_form_form_content\";s:1:\"1\";s:22:\"Module_count_count_set\";s:1:\"1\";s:17:\"Module_count_sort\";s:1:\"1\";s:23:\"Module_count_count_list\";s:1:\"1\";s:26:\"Module_count_count_listall\";s:1:\"1\";s:27:\"Module_count_count_listmore\";s:1:\"1\";s:18:\"Module_vote_center\";s:1:\"1\";s:20:\"Module_vote_vote_add\";s:1:\"1\";s:21:\"Module_vote_vote_list\";s:1:\"1\";s:16:\"Module_ad_center\";s:1:\"1\";s:21:\"Module_ad_norm_listad\";s:1:\"1\";s:25:\"Module_ad_norm_listuserad\";s:1:\"1\";s:24:\"Module_ad_compete_listad\";s:1:\"1\";s:26:\"Module_ad_compete_listuser\";s:1:\"1\";s:25:\"Module_blog_center_config\";s:1:\"1\";s:16:\"Module_blog_list\";s:1:\"1\";s:16:\"Module_blog_sort\";s:1:\"1\";s:19:\"Module_blog_loglist\";s:1:\"1\";s:19:\"Module_blog_logsort\";s:1:\"1\";s:18:\"Module_blog_member\";s:1:\"1\";s:19:\"Module_blog_comment\";s:1:\"1\";s:17:\"Module_blog_class\";s:1:\"1\";s:24:\"Module_blog_center_label\";s:1:\"1\";s:23:\"Module_wn_center_config\";s:1:\"1\";s:22:\"Module_wn_center_label\";s:1:\"1\";s:19:\"Module_wn_sort_post\";s:1:\"1\";s:14:\"Module_wn_post\";s:1:\"1\";s:14:\"Module_wn_list\";s:1:\"1\";s:17:\"Module_wn_comment\";s:1:\"1\";s:23:\"Module_wn_sort_listsort\";s:1:\"1\";s:16:\"Module_wn_spsort\";s:1:\"1\";s:17:\"Module_wn_special\";s:1:\"1\";s:16:\"Module_wn_gather\";s:1:\"1\";s:17:\"Module_wn_replace\";s:1:\"1\";s:16:\"Module_wn_module\";s:1:\"1\";s:20:\"Module_wn_getkeyword\";s:1:\"1\";s:16:\"Module_wn_repair\";s:1:\"1\";s:17:\"Module_wn_getdata\";s:1:\"1\";s:19:\"Module_wn_adminwork\";s:1:\"1\";s:18:\"Module_wn_keepdata\";s:1:\"1\";s:23:\"Module_w8_center_config\";s:1:\"1\";s:17:\"Module_w8_bankuai\";s:1:\"1\";s:15:\"Module_w8_huati\";s:1:\"1\";s:15:\"Module_w8_level\";s:1:\"1\";s:22:\"Module_w8_center_label\";s:1:\"1\";s:14:\"Module_w8_list\";s:1:\"1\";s:14:\"Module_w8_sort\";s:1:\"1\";s:20:\"Module_w8_sort_baike\";s:1:\"1\";s:20:\"Module_w8_list_baike\";s:1:\"1\";s:22:\"Module_w8_professional\";s:1:\"1\";s:6:\"mymenu\";a:2:{s:13:\"sort_listsort\";s:1:\"1\";s:12:\"comment_list\";s:1:\"1\";}}');
INSERT INTO `pp_group` VALUES ('4','1','ǰ̨����Ա','0','0','0','a:6:{s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";}','0','a:1:{s:6:\"mymenu\";N;}');
INSERT INTO `pp_group` VALUES ('8','0','��ͨ��Ա','0','50','0','a:55:{s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:17:\"SearchArticleType\";s:1:\"1\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"1\";s:17:\"SetArticleKeyword\";s:1:\"1\";s:20:\"AddArticleKeywordNum\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:21:\"AddArticleCopyfromNum\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:17:\"CollectArticleNum\";s:2:\"30\";s:15:\"CreatSpecialNum\";s:1:\"7\";s:19:\"CommentArticleYzImg\";s:1:\"1\";s:11:\"SetHtmlName\";s:1:\"0\";s:7:\"SetVote\";s:1:\"1\";s:16:\"PassContributeSP\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"0\";s:16:\"useHomepageStyle\";s:1:\"0\";s:21:\"view_buy_view_contact\";s:1:\"0\";s:13:\"post_sell_num\";s:1:\"5\";s:12:\"post_buy_num\";s:1:\"5\";s:13:\"post_news_num\";s:1:\"5\";s:14:\"post_photo_num\";s:2:\"10\";s:11:\"post_hr_num\";s:1:\"5\";s:17:\"post_zhanghui_num\";s:1:\"5\";s:12:\"post_ZLG_num\";s:1:\"0\";s:16:\"post_pingpai_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:1:\"5\";s:19:\"post_xunjiadian_num\";s:1:\"5\";s:24:\"post_info_collection_num\";s:2:\"30\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `pp_group` VALUES ('9','0','VIP��Ա','10000','0','0','a:54:{s:17:\"SearchArticleType\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:17:\"SetSpecialArticle\";s:1:\"0\";s:17:\"SetArticleKeyword\";s:1:\"0\";s:20:\"AddArticleKeywordNum\";s:0:\"\";s:21:\"AddArticleCopyfromNum\";s:0:\"\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:13:\"SetSmallTitle\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:2:\"30\";s:10:\"comment_yz\";s:1:\"0\";s:11:\"comment_img\";s:1:\"0\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:9:\"topmyinfo\";s:0:\"\";s:12:\"topmyinfoday\";s:0:\"\";s:13:\"topcompanyday\";s:0:\"\";s:13:\"post_sell_num\";s:2:\"50\";s:12:\"post_buy_num\";s:2:\"50\";s:13:\"post_news_num\";s:2:\"50\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:2:\"20\";s:17:\"post_zhanghui_num\";s:2:\"20\";s:12:\"post_ZLG_num\";s:1:\"5\";s:19:\"post_baojiadian_num\";s:2:\"50\";s:19:\"post_xunjiadian_num\";s:2:\"50\";s:16:\"post_pingpai_num\";s:2:\"10\";s:24:\"post_info_collection_num\";s:3:\"100\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `pp_group` VALUES ('10','0','��ʯ��Ա','30000','0','0','a:50:{s:17:\"SearchArticleType\";s:1:\"0\";s:19:\"CommentArticleYzImg\";s:1:\"0\";s:17:\"CollectArticleNum\";s:0:\"\";s:15:\"CreatSpecialNum\";s:0:\"\";s:16:\"PassContributeSP\";s:1:\"0\";s:16:\"PostArticleYzImg\";s:1:\"0\";s:14:\"PassContribute\";s:1:\"1\";s:13:\"EditPassPower\";s:1:\"0\";s:13:\"PostNoDelCode\";s:1:\"0\";s:7:\"SetVote\";s:1:\"0\";s:12:\"SetTileColor\";s:1:\"0\";s:14:\"SetSellArticle\";s:1:\"0\";s:18:\"SelectArticleStyle\";s:1:\"0\";s:16:\"SelectArticleTpl\";s:1:\"0\";s:13:\"SetArticleTpl\";s:1:\"0\";s:18:\"SetArticlePosttime\";s:1:\"0\";s:18:\"SetArticleViewtime\";s:1:\"0\";s:16:\"SetArticleHitNum\";s:1:\"0\";s:18:\"SetArticlePassword\";s:1:\"0\";s:19:\"SetArticleDownGroup\";s:1:\"0\";s:19:\"SetArticleViewGroup\";s:1:\"0\";s:17:\"SetArticleJumpurl\";s:1:\"0\";s:19:\"SetArticleIframeurl\";s:1:\"0\";s:21:\"SetArticleDescription\";s:1:\"0\";s:16:\"SetArticleTopCom\";s:1:\"0\";s:11:\"SetHtmlName\";s:1:\"0\";s:14:\"AllowUploadMax\";s:1:\"0\";s:10:\"upfileType\";s:0:\"\";s:13:\"upfileMaxSize\";s:0:\"\";s:11:\"comment_num\";s:0:\"\";s:10:\"comment_yz\";s:1:\"1\";s:11:\"comment_img\";s:1:\"1\";s:16:\"sell_postauto_yz\";s:1:\"1\";s:15:\"buy_postauto_yz\";s:1:\"1\";s:15:\"post_pingpai_yz\";s:1:\"1\";s:10:\"use2domain\";s:1:\"1\";s:16:\"useHomepageStyle\";s:1:\"1\";s:21:\"view_buy_view_contact\";s:1:\"1\";s:13:\"post_sell_num\";s:3:\"100\";s:12:\"post_buy_num\";s:3:\"100\";s:13:\"post_news_num\";s:3:\"100\";s:14:\"post_photo_num\";s:3:\"100\";s:11:\"post_hr_num\";s:3:\"100\";s:17:\"post_zhanghui_num\";s:3:\"100\";s:12:\"post_ZLG_num\";s:2:\"10\";s:16:\"post_pingpai_num\";s:2:\"10\";s:19:\"post_baojiadian_num\";s:3:\"100\";s:19:\"post_xunjiadian_num\";s:3:\"100\";s:24:\"post_info_collection_num\";s:3:\"300\";s:18:\"allow_get_homepage\";s:1:\"1\";}','0','');
INSERT INTO `pp_guestbook_config` VALUES ('module_id','18','');
INSERT INTO `pp_guestbook_config` VALUES ('GuestBookNum','20','');
INSERT INTO `pp_guestbook_config` VALUES ('groupPassPassGuestBook','3,4','');
INSERT INTO `pp_guestbook_config` VALUES ('viewNoPassGuestBook','0','');
INSERT INTO `pp_guestbook_config` VALUES ('yzImgGuestBook','1','');
INSERT INTO `pp_guestbook_config` VALUES ('module_pre','guestbook_','');
INSERT INTO `pp_guestbook_config` VALUES ('ifOpenGuestBook','1','');
INSERT INTO `pp_guestbook_config` VALUES ('Info_webname','���Ա�','');
INSERT INTO `pp_guestbook_config` VALUES ('Info_webOpen','1','');
INSERT INTO `pp_guestbook_content` VALUES ('12','0','1','','','','','1','admin','192.168.0.99','��������ǿ�ƽ�����վ��̨�ķ�����:�޸�/data/global.php�ļ�,����$ForceEnter=0;��0�ĳ�1����,ǿ�ƽ�����վ�ĺ�̨.','1','1240206881','1240206881','','');
INSERT INTO `pp_guestbook_content` VALUES ('13','0','1','','','','','1','admin','192.168.0.99','��ͨ����Ա��Ϊ��������Ա�ķ�����,�޸��ļ�/data/admin.php,����ߵ��ʺŸ���һ�¼���','1','1240206958','1240206958','','');
INSERT INTO `pp_guestbook_content` VALUES ('14','0','1','','','','','1','admin','192.168.0.99','��վϵͳ�����ݿ������ļ���/data/mysql_config.php','1','1240207079','1240207079','','');
INSERT INTO `pp_guestbook_content` VALUES ('15','0','1','','','','','1','admin','192.168.0.99','������Ĭ�������ϴ��ļ���СΪ2M,��������޸ķ���������.��������վϵͳ�ϴ�����2M���ļ�.�ǲ����Ե�.�������޸ķ���������.һ����˵��������PHP�����ļ�����c:\\windows\\php.ini����.','1','1240207216','1240207216','','');
INSERT INTO `pp_guestbook_content` VALUES ('16','0','1','','','','','1','admin','192.168.0.99','�����������������.���޷�ʹ�òɼ�����.','1','1240207330','1240207330','','');
INSERT INTO `pp_guestbook_sort` VALUES ('1','0','��չ����','0','1','0','0','','0','0','','','','','','','0','','','','0','','','','','0','b:0;','0','0','','','0');
INSERT INTO `pp_guestbook_sort` VALUES ('2','0','���Ͷ��','0','1','0','0','','0','0','','','','','','','0','','','','1','','','','','0','','0','0','','','0');
INSERT INTO `pp_hack` VALUES ('adminmap','��̨�˵�','0','','','','','','index.php?lfj=adminmap&job=list','','other','�����ȫ','0','','0');
INSERT INTO `pp_hack` VALUES ('alipay_set','���߳�ֵ֧������','0','','','','','','index.php?lfj=alipay&job=list','','other','�����������','9','','0');
INSERT INTO `pp_hack` VALUES ('area_list','��������','0','','','','','','index.php?lfj=area&job=list','','other','��������','5','','0');
INSERT INTO `pp_hack` VALUES ('attachment_list','��������','0','','','','','','index.php?lfj=attachment&job=list','','other','��������','6','','0');
INSERT INTO `pp_hack` VALUES ('article_more_avoidgather','���ɼ�����','0','','','','','','index.php?lfj=article_more&job=avoidgather','','other','����ģ�Ͳ������','5','','1');
INSERT INTO `pp_hack` VALUES ('cnzz_set','CNZZ����ͳ��','0','','','','','','index.php?lfj=cnzz&job=ask','','other','վ�⹦��','3','','0');
INSERT INTO `pp_hack` VALUES ('code_code','PHPWINDӪ�����','0','','','','','','index.php?lfj=code&job=code','','other','վ�⹦��','2','','0');
INSERT INTO `pp_hack` VALUES ('copyfrom_list','��Դ��ַ����','0','','','','','','index.php?lfj=copyfrom&job=list','','other','����ģ�Ͳ������','7','','0');
INSERT INTO `pp_hack` VALUES ('crontab','��ʱ����','0','','','','','','index.php?lfj=crontab&job=list','','other','�����ȫ','0','','0');
INSERT INTO `pp_hack` VALUES ('dz_credit','DZ��̳���ֶһ�','0','','','','','','index.php?lfj=dz_credit&job=set','','other','','1','','0');
INSERT INTO `pp_hack` VALUES ('gather_list','�ɼ��������','0','','','','','','index.php?lfj=gather&job=list','','other','���ݲɼ���','2','','0');
INSERT INTO `pp_hack` VALUES ('gather_list_sort','�ɼ�����������','0','','','','','','index.php?lfj=gather&job=listsort','','other','���ݲɼ���','1','','0');
INSERT INTO `pp_hack` VALUES ('getkeyword_do','�ؼ��ֹ���','0','','','','','','index.php?lfj=getkeyword&job=list','','other','����ģ�Ͳ������','4','</a><A HREF=\'index.php?lfj=getkeyword&job=list\' target=\'main\'>�ؼ��ֹ���</A> | <A HREF=\'index.php?lfj=getkeyword&job=get\' target=\'main\'>��ȡ�ؼ���</A><a>','0');
INSERT INTO `pp_hack` VALUES ('googlemap_makemap','�ٶ�����Э��/googleЭ��','0','','','','','','index.php?lfj=googlemap&job=makemap','','other','����ģ�Ͳ������','3','','0');
INSERT INTO `pp_hack` VALUES ('jfadmin_mod','���ֽ��ܹ���','0','','','','','','index.php?lfj=jfadmin&job=listjf','','other','��������','7','','0');
INSERT INTO `pp_hack` VALUES ('js_list','JS���ݵ���','0','','','','','','index.php?lfj=js&job=list','','other','��������','9','','0');
INSERT INTO `pp_hack` VALUES ('labelstyle','��ǩ���ݵ����뵼��','0','','','','','','index.php?lfj=labelstyle&job=label','','other','���/ģ������','2','','0');
INSERT INTO `pp_hack` VALUES ('limitword_list','�����������','0','','','','','','index.php?lfj=limitword&job=list','','other','����ģ�Ͳ������','9','','0');
INSERT INTO `pp_hack` VALUES ('limitword_replace','�ַ��滻','0','','','','','','index.php?lfj=limitword&job=replace','','other','����ģ�Ͳ������','6','','0');
INSERT INTO `pp_hack` VALUES ('login','�û���¼���','0','','a:3:{s:10:\"systemType\";s:6:\"php168\";s:9:\"guestcode\";s:0:\"\";}','','','','index.php?lfj=hack&hack=login&job=list','','','','0','','0');
INSERT INTO `pp_hack` VALUES ('logs_login_logs','��̨��¼��־','0','','','','','','index.php?lfj=logs&job=login_logs','','other','��־����','2','','0');
INSERT INTO `pp_hack` VALUES ('logs_admin_do_logs','��̨������־','0','','','','','','index.php?lfj=logs&job=admin_logs','','other','��־����','1','','0');
INSERT INTO `pp_hack` VALUES ('mail_send','�ʼ�Ⱥ��','0','','','','','','index.php?lfj=mail&job=send','','other','��Ϣ/�ʼ�Ⱥ��','2','','0');
INSERT INTO `pp_hack` VALUES ('message_send','վ����ϢȺ��','0','','','','','','index.php?lfj=message&job=send','','other','��Ϣ/�ʼ�Ⱥ��','3','','0');
INSERT INTO `pp_hack` VALUES ('moneycard_make','�㿨��ֵ����','0','','','','','','index.php?lfj=moneycard&job=make','','other','�����������','7','','1');
INSERT INTO `pp_hack` VALUES ('moneylog','�û����ѻ��ּ�¼','0','','','','','','index.php?lfj=moneylog&job=list','','other','�����ȫ','0','','0');
INSERT INTO `pp_hack` VALUES ('oicq','QQ��������','0','','a:4:{s:8:\"qq_style\";s:2:\"11\";s:7:\"pic_alt\";s:10:\"���µ�����\";s:6:\"qq_num\";s:19:\"121727818\r\n37352529\";s:8:\"web_name\";s:10:\"PHP168��վ\";}','<a target=blank href=\'tencent://message/?uin=121727818&Site=PHP168��վ&Menu=yes\'><img border=\'0\' SRC=\'http://wpa.qq.com/pa?p=1:121727818:11\' alt=\'���µ�����\'></a><br><br><a target=blank href=\'tencent://message/?uin=37352529&Site=PHP168��վ&Menu=yes\'><img border=\'0\' SRC=\'http://wpa.qq.com/pa?p=1:37352529:11\' alt=\'���µ�����\'></a><br><br>','','','index.php?lfj=hack&hack=oicq&job=edit','','','','0','','0');
INSERT INTO `pp_hack` VALUES ('propagandize','�ƹ�׬ȡ���ֹ���','0','','','','','','index.php?lfj=propagandize&job=list','','other','��������','8','','0');
INSERT INTO `pp_hack` VALUES ('report_list','���ݺû��ٱ�����','0','','','','','','index.php?lfj=report&job=list','','other','����ģ�Ͳ������','8','','0');
INSERT INTO `pp_hack` VALUES ('search','����','0','','a:2:{s:10:\"systemType\";s:6:\"web168\";s:10:\"searchcode\";s:456:\"<table width=\\\"100%\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" border=\\\"0\\\">\r\n  <form name=\\\"formsearch\\\" method=\\\"post\\\" action=\\\"$webdb[www_url]/search.php\\\">\r\n    <tr> \r\n      <td height=\\\"14\\\"> �ؼ���:<input type=\\\"text\\\" name=\\\"keyword\\\" size=\\\"10\\\">\r\n        <input type=\\\"submit\\\" name=\\\"Submit32\\\" value=\\\"����\\\">\r\n        <input type=\\\"hidden\\\" name=\\\"searchTable\\\" value=\\\"article\\\">\r\n      </td>\r\n    </tr>\r\n   \r\n  </form>\r\n</table>\r\n                \";}','','','','index.php?lfj=hack&hack=search&job=list','','','','0','','0');
INSERT INTO `pp_hack` VALUES ('shoporder','�̳Ƕ�������','0','','','','','','index.php?lfj=shoporder&job=list','','other','�����������','8','','0');
INSERT INTO `pp_hack` VALUES ('smallpic','��ȡ����ͼ','0','','','','','','index.php?lfj=smallpic&job=list','','','','0','','0');
INSERT INTO `pp_hack` VALUES ('sms_send','�ֻ�����Ⱥ��','0','','','','','','index.php?lfj=sms&job=send','','other','��Ϣ/�ʼ�Ⱥ��','1','','0');
INSERT INTO `pp_hack` VALUES ('style_editstyle','������','0','','','','','','index.php?lfj=style&job=edittpl','','other','���/ģ������','2','','0');
INSERT INTO `pp_hack` VALUES ('template_list','ģ������','0','','','','','','index.php?lfj=template&job=list','','other','���/ģ������','1','','0');
INSERT INTO `pp_hack` VALUES ('upgrade_ol','ϵͳ��������','0','','','','','','index.php?lfj=upgrade&job=get','','other','��������','4','','0');
INSERT INTO `pp_hack` VALUES ('webmsg','վ��ͳ����Ϣ','0','PHP168�Ŷ�','a:3:{s:7:\"tplcode\";s:491:\"<table width=\\\"100%\\\" cellpadding=\\\"0\\\" cellspacing=\\\"0\\\" border=\\\"0\\\" id=\\\"webmsg\\\">\r\n     <tr> \r\n      <td height=\\\"14\\\">��������: {$article_num} ƪ</td>\r\n    </tr>\r\n    <tr> \r\n      <td height=\\\"7\\\" >������Ŀ: {$sort_num} ��</td>\r\n    </tr>\r\n    <tr> \r\n      <td height=\\\"7\\\" >��������: {$comment_num} ��</td>\r\n    </tr>\r\n	 <tr> \r\n      <td height=\\\"7\\\" >�ÿ�����: {$guestbook_num} ��</td>\r\n    </tr>\r\n    <tr>\r\n      <td height=\\\"7\\\" >ע���Ա: {$member_num} λ</td>\r\n    </tr>\r\n</table>\";s:6:\"cktime\";s:2:\"60\";s:6:\"system\";a:3:{s:7:\"article\";s:1:\"1\";s:4:\"sort\";s:1:\"1\";s:10:\"memberdata\";s:1:\"1\";}}','','','','index.php?lfj=hack&hack=webmsg&job=list','','','','0','','0');
INSERT INTO `pp_hack` VALUES ('webstat','����ͳ�Ʊ�','0','','','','','','index.php?lfj=webstat&job=list','','','','0','','0');
INSERT INTO `pp_invoice` VALUES ('1','��ҵ','�Ϻ�������Ϣ�Ƽ����޹�˾','2000','12','','33030419871026X','�ƶ���Ϣ�����','������','13636686104','�Ϻ����ɽ�����ͤ�����·900Ū56��901','��ʹ��˳���ݣ�лл','','admin3','2147483647','�ȴ�����');
INSERT INTO `pp_invoice` VALUES ('2','$����','$������','10000','0','','330304198710274516','��Ϣ�����','������','13636686104','�Ϻ������·900Ū56��901','','','','1357912255','�ȴ�����');
INSERT INTO `pp_invoice` VALUES ('3','����','������','20000','0','','330304198710264516','���ŷ��ͷ���','������','021-64250253','�Ϻ�����ɽ·900��������Ƽ���¥A1505','','','admin3','1357912523','�ȴ�����');
INSERT INTO `pp_jfabout` VALUES ('6','2','�������¿ɵ�{$webdb[postArticleMoney]}������','ֻ����˺�����²ſɵû���,û��˵����²��û���.','0');
INSERT INTO `pp_jfabout` VALUES ('7','2','ɾ�����¿۳�{$webdb[deleteArticleMoney]}������','','0');
INSERT INTO `pp_jfabout` VALUES ('5','1','�û�ע��ɵ�{$webdb[regmoney]}������','','0');
INSERT INTO `pp_jfabout` VALUES ('8','2','���±�����Ϊ�����ɵ�{$webdb[comArticleMoney]}������','','0');
INSERT INTO `pp_jfabout` VALUES ('9','1','ÿ���㿨�ɶһ�{$webdb[MoneyRatio]}������,�㿨����ͨ�����߳�ֵ���.','','0');
INSERT INTO `pp_jfsort` VALUES ('1','��Ա����','0');
INSERT INTO `pp_jfsort` VALUES ('2','��������','0');
INSERT INTO `pp_label` VALUES ('298','','1','0','bodyad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20090420140457_NOGYw.jpg\";s:7:\"imglink\";s:47:\"http://www.phpwind.net/read-htm-tid-761520.html\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:2:\"80\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240210319','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('299','','1','0','b2','comment','1','a:25:{s:9:\"tplpart_1\";s:579:\"<div>\r\n  <div style=\"float:left;\"><b><font color=\"#990000\">{$username}</font></b> �� <font color=\"#990000\">{$time_m}-{$time_d} \r\n    {$time_H}:{$time_i}</font> �� </div>\r\n  <a target=\'_blank\' href=\"$webdb[www_url]/do/comment.php?fid=$fid&id=$aid\" style=\"overflow:hidden;\r\n	text-overflow:ellipsis;\r\n	white-space:nowrap;width:230px;float:left;display:black;\"><font color=\"#0000FF\">{$article}</font></a><div style=\"float:left;\">������������</div></div>\r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:99%;\">��<font color=\"#666666\">{$title}</font></div>\";s:13:\"tplpart_1code\";s:579:\"<div>\r\n  <div style=\"float:left;\"><b><font color=\"#990000\">{$username}</font></b> �� <font color=\"#990000\">{$time_m}-{$time_d} \r\n    {$time_H}:{$time_i}</font> �� </div>\r\n  <a target=\'_blank\' href=\"$webdb[www_url]/do/comment.php?fid=$fid&id=$aid\" style=\"overflow:hidden;\r\n	text-overflow:ellipsis;\r\n	white-space:nowrap;width:230px;float:left;display:black;\"><font color=\"#0000FF\">{$article}</font></a><div style=\"float:left;\">������������</div></div>\r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:99%;\">��<font color=\"#666666\">{$title}</font></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"comment\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";N;s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:149:\" SELECT A.*,A.content AS title,B.title AS article FROM pp_comment A LEFT JOIN pp_article B ON A.aid=B.aid  WHERE A.yz=1  ORDER BY A.cid DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:8:\"titlenum\";s:2:\"80\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"468\";s:5:\"div_h\";s:3:\"190\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240996241','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('300','','1','0','listpic2','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"10\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:152:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (10)  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006574','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('301','','1','0','listpic3','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006730','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('152','','1','0','hotarticle','article','1','a:31:{s:13:\"tplpart_1code\";s:212:\"<div style=\"background:url($webdb[www_url]/images/default/i/$i.gif) no-repeat 0px 2px;height:23px;text-indent:1.3em;\"><A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:27:\"/common_title/2title_i2.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.hits\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:97:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE 1  AND A.mid=\'0\'   ORDER BY A.hits DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"228\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239609179','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('163','','1','0','listpic','article','1','a:31:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:7px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:0;s:5:\"fiddb\";s:2:\"33\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:1:\"1\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:167:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.levels=1  AND A.fid IN (33)  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"3\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"459\";s:5:\"div_h\";s:3:\"254\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1241074794','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('472','','1','0','index_ad8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141128_eq3o1.jpg\";s:7:\"imglink\";s:26:\"http://www.chinaccnet.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:3:\"269\";s:5:\"div_h\";s:2:\"57\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642659','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('182','','1','0','Title1','code','0','web����','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"220\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240127514','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('183','','1','0','Title2','code','0','��ְ��Ƹ','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"255\";s:5:\"div_h\";s:2:\"26\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239767486','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('184','','1','0','Title3','code','0','��������','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022710','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('185','','1','0','Title4','code','0','�������','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022689','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('186','','1','0','Title5','code','0','��������','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"455\";s:5:\"div_h\";s:2:\"24\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022487','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('187','','1','0','Title6','code','0','�����Ա','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899624','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('188','','1','0','Title01','code','0','��������','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:2:\"24\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022429','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('189','','1','0','Title02','code','0','���ܹ�ע','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"234\";s:5:\"div_h\";s:2:\"23\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022631','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('630','','0','0','special_sport_2','code','0','<a href=\"#\">��������</a> | <a href=\"#\">��������</a> | <a href=\"#\">��������</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('284','','1','0','Title_jinjaad','code','0','ͶƱ����','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"215\";s:5:\"div_h\";s:2:\"26\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022512','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('285','','1','0','jinjaad','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=6\'></SCRIPT>','a:4:{s:6:\"voteid\";s:1:\"6\";s:5:\"div_w\";s:3:\"229\";s:5:\"div_h\";s:3:\"138\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239010747','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('302','','1','0','listpic4','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006655','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('303','','1','0','listpic5','article','1','a:29:{s:13:\"tplpart_1code\";s:322:\"<div  class=\"listpic\" style=\"padding:5px 9px 3px 17px;\"> \r\n              <p class=img><a href=\"$url\" target=\"_blank\"><img width=\"120\" height=\"90\" src=\"$picurl\" border=\"0\"></a></p>\r\n              <p class=title style=\'text-align:center;\'><A HREF=\"$url\" title=\'$full_title\' target=\"_blank\">$title</A></p>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"104\";s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'104\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239006692','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('287','','1','0','c2','article','1','a:31:{s:13:\"tplpart_1code\";s:147:\"<div style=\"padding-top:5px;color:#ccc;\">��<A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a> $new $hot</div>\";s:13:\"tplpart_2code\";s:411:\"<table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:5px;\">\r\n  <tr>\r\n    <td align=\"left\"><a href=\"$url\" target=\"_blank\" style=\"font-weight:bold;color:#666;\" title=\"$full_title\">$title</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"left\" height=\"18\" valign=\"middle\" style=\"border-bottom:1px dotted #ccc;text-indent:2em;padding-bottom:5px;color:#929292;\">$content</td>\r\n  </tr>\r\n</table>\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:5:\"35,38\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:189:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (35,38)  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.posttime DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"68\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"34\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"222\";s:5:\"div_h\";s:3:\"159\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240192238','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('288','','1','0','comarticle','article','1','a:31:{s:13:\"tplpart_1code\";s:1110:\"<table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:6px;\">\r\n  <tr> \r\n    <td align=\"left\" style=\"border-bottom:1px dotted #eee;padding-bottom:5px;\"> \r\n      <div style=\"background:url($webdb[www_url]/images/default/sdigg.gif) no-repeat;width:44px;height:36px;float:left;\">\r\n        <div style=\"font-size:13px;text-align:center;padding:0px;font-weight:bold;background:#eee;\" id=\"DiggNum_$id\">$digg_num</div>\r\n        <div style=\"text-align:center;font-size:12px;color:#FFF;width:44px;height:20px;overflow:hidden;background:#ccc;\" id=\"DiggDo_$id\"><a href=\"$webdb[www_url]/do/job.php?job=digg&type=vote&id=$id\" target=\"DiggIframe_$id\" style=\"font-size:12px;color:#FFF;\">��һ��</a></div>\r\n      </div>\r\n      <div style=\"margin-left:4px;float:left;width:195px;\"> \r\n        <a href=\"$url\" target=\"_blank\" style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a>\r\n      </div>\r\n      <div style=\"display:none;\"><iframe src=\"$webdb[www_url]/do/job.php?job=digg&type=getnum&id=$id\" width=0 height=0 name=\"DiggIframe_$id\" id=\"DiggIframe_$id\"></iframe></div>\r\n    </td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:22:\"/article/title_dig.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.digg_num\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.digg_num DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:2:\"55\";s:8:\"titlenum\";s:2:\"60\";s:9:\"titlenum2\";s:2:\"26\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"246\";s:5:\"div_h\";s:3:\"243\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239193510','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('338','','1','0','bjsptitle','code','0','�Ƽ�ר��','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('339','','1','0','bjspecial','specialsort','1','a:34:{s:9:\"tplpart_1\";s:442:\"<div style=\"float:left;margin:5px 0px 0px 5px;width:155px;text-align:center;\"> \r\n             <a href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" target=\"_blank\" style=\"display:block;width:120px;height:160px;border:1px #333 solid;margin-bottom:5px;\"><img width=\"120\" height=\"160\" src=\"$picurl\" border=\"0\"></a> \r\n               <A HREF=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" title=\'$full_title\' target=\"_blank\">$title</A> \r\n</div>\";s:13:\"tplpart_1code\";s:442:\"<div style=\"float:left;margin:5px 0px 0px 5px;width:155px;text-align:center;\"> \r\n             <a href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" target=\"_blank\" style=\"display:block;width:120px;height:160px;border:1px #333 solid;margin-bottom:5px;\"><img width=\"120\" height=\"160\" src=\"$picurl\" border=\"0\"></a> \r\n               <A HREF=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\" title=\'$full_title\' target=\"_blank\">$title</A> \r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:11:\"specialsort\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";s:45:\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:3:\"fid\";s:0:\"\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:24:\"/common_pic/img_div1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";N;s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:1:\"1\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:113:\" SELECT A.* FROM pp_special A  WHERE `ifbase`=0  AND A.levels=1  AND A.picurl!=\'\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"953\";s:5:\"div_h\";s:3:\"177\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899961','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('289','','1','0','a1','article','1','a:31:{s:13:\"tplpart_1code\";s:147:\"<div style=\"padding-top:6px;color:#ccc;\">��<A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight;font-size:13px;\">$title</a> $new $hot</div>\";s:13:\"tplpart_2code\";s:558:\"<table width=\"98%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin:3px 0px 5px 0px;\">\r\n  <tr> \r\n    <td rowspan=\"2\" width=\"4%\" style=\"padding-right:3px;padding-bottom:7px;border-bottom:1px dotted #ccc;\"><a href=\"$url\"><img src=\"$picurl\" width=\"100\" height=\"70\" border=\"0\"></a></td>\r\n    <td width=\"96%\"> <a href=\"$url\" target=\"_blank\" style=\"color:#666;font-weight:bold;\">$title</a></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\"96%\" style=\"padding-bottom:7px;text-indent:1em;border-bottom:1px dotted #ccc;color:#929292;\">$content</td>\r\n  </tr>\r\n</table>\r\n\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:24:\"/common_zh_pic/zh_pc.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"39\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:171:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (39)   AND R.topic=1 ORDER BY A.posttime DESC LIMIT 6 \";s:4:\"sql2\";s:183:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.fid IN (39)  AND A.ispic=1 AND R.topic=1 ORDER BY A.posttime DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"60\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"221\";s:5:\"div_h\";s:3:\"186\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240192058','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('366','','1','0','show_34','article','1','a:31:{s:13:\"tplpart_1code\";s:809:\"<table  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"float:left;width:160px;margin-top:15px;\">\r\n  <tr>\r\n    <td align=\"center\"><a href=\"$url\" target=\"_blank\" style=\"border:1px solid #ccc;display:block;width:120px;height:90px;\"><img style=\"border:1px solid #fff;\" src=\'$picurl\' border=0 width=\"120\" height=\"90\"></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-top:5px;\"><a href=\"$url\" target=\"_blank\">$title</a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-top:3px;\"><strike><b>��$martprice</b></strike> <b><font color=\"#FF0000\">��$nowprice</font></b></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-bottom:18px;padding-top:3px;\"><a href=\"$url\" target=\"_blank\"><img src=\"$webdb[www_url]/images/default/order_button.gif\" border=\"0\"></a></td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"180\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:17:\"/article/shop.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.aid ASC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"450\";s:5:\"div_h\";s:3:\"200\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1241074246','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('293','','1','0','c1','article','1','a:31:{s:13:\"tplpart_1code\";s:254:\"<div style=\"line-height:130%;font-size:13px;color:#ccc;clear:both;\"><span style=\"float:left;\">��<A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;$fontweight\">$title </a></span><span style=\"float:right;padding-right:3px;color:#666;\">({$hits})</span></div>\";s:13:\"tplpart_2code\";s:302:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:4px;\">\r\n  <tr>\r\n    <td style=\"font-size:13px;font-weight:bold;\">[�Ƽ�]<A HREF=\"$url\" target=\"_blank\" style=\"font-size:15px;font-weight:bold;color:#990000;text-decoration: underline;\">$title</A></td>\r\n  </tr>\r\n</table>\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:32:\"/common_zh_title/zh_bigtitle.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:8:\"12,26,27\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (12,26,27)  AND A.mid=\'101\'   ORDER BY A.posttime DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"1\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"226\";s:5:\"div_h\";s:3:\"140\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240192810','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('304','','1','0','a2','member','1','a:19:{s:9:\"tplpart_1\";s:504:\"<div style=\"float:left;margin-right:5px;margin-top:7px;margin-bottom:3px;\"> <CENTER><a style=\"display:block;width:65px;height:65px;border:1px solid #ccc;\" href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img style=\"border:2px solid #fff;\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"65\" height=\"65\" src=\"$picurl\" border=\"0\"></a><A HREF=\"$webdb[www_url]/member/homepage.php?uid=$uid\" title=\'$full_title\' target=\"_blank\">$title</A></CENTER>\r\n            </div>\";s:13:\"tplpart_1code\";s:504:\"<div style=\"float:left;margin-right:5px;margin-top:7px;margin-bottom:3px;\"> <CENTER><a style=\"display:block;width:65px;height:65px;border:1px solid #ccc;\" href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img style=\"border:2px solid #fff;\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"65\" height=\"65\" src=\"$picurl\" border=\"0\"></a><A HREF=\"$webdb[www_url]/member/homepage.php?uid=$uid\" title=\'$full_title\' target=\"_blank\">$title</A></CENTER>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:7:\"group_1\";s:0:\"\";s:7:\"group_2\";s:0:\"\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"6\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"regdate\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:173:\" SELECT M.username AS title,D.*,D.icon AS picurl,D.introduce AS content FROM pp_members M LEFT JOIN pp_memberdata D ON M.uid=D.uid  WHERE 1  ORDER BY D.regdate DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"235\";s:5:\"div_h\";s:3:\"190\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240994881','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('305','','1','0','Title04','code','0','�ÿ�����','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('306','','1','0','c02','guestbook','1','a:25:{s:9:\"tplpart_1\";s:384:\"<div> <b><font color=\"#990000\">{$username}</font></b> ��<font color=\"#990000\"> {$time_m}-{$time_d} \r\n    {$time_H}:{$time_i} </font>����������:</div> \r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:98%;padding-bottom:6px;\">��<a href=\"$webdb[www_url]/do/guestbook.php?fid=$fid&id=$id#$id\" target=\"_blank\"><font color=\"#666666\">{$title}</font></a></div>\r\n\";s:13:\"tplpart_1code\";s:384:\"<div> <b><font color=\"#990000\">{$username}</font></b> ��<font color=\"#990000\"> {$time_m}-{$time_d} \r\n    {$time_H}:{$time_i} </font>����������:</div> \r\n<div style=\"clear:both;border-bottom:1px dotted #ccc;margin-bottom:5px;width:98%;padding-bottom:6px;\">��<a href=\"$webdb[www_url]/do/guestbook.php?fid=$fid&id=$id#$id\" target=\"_blank\"><font color=\"#666666\">{$title}</font></a></div>\r\n\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:9:\"guestbook\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";N;s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:86:\" SELECT A.*,content AS title FROM pp_guestbook A  WHERE 1  ORDER BY A.id DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:8:\"titlenum\";s:2:\"70\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"231\";s:5:\"div_h\";s:3:\"260\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240898314','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('470','','1','0','index_ad5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171021_fndoi.gif\";s:7:\"imglink\";s:26:\"http://www.chinaccnet.com/\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642651','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('471','','1','0','index_ad7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141121_uu6ot.gif\";s:7:\"imglink\";s:19:\"http://u.admin5.com\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"991\";s:5:\"div_h\";s:2:\"68\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291791530','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('296','','1','0','mainnews','article','1','a:31:{s:13:\"tplpart_1code\";s:630:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin-bottom:8px;\">\r\n  <tr>\r\n    <td align=\"center\" style=\"padding-bottom:5px;\"><a href=\"$url\" target=\"_blank\"><b><font color=\"#D50000\" style=\"font-size:16px;\">$title</font></b></a></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"left\" height=\"18\" valign=\"middle\" style=\"border-bottom:1px dotted #ccc;line-height:150%;text-indent:2em;color:#929292;padding-bottom:3px;\">{$content} ��<font color=\"#D50000\">{$hits}</font>�˹�ע  ����<font color=\"#D50000\">{$comments}</font>�� \r\n      [<a href=\"$url\" style=\"color:#D50000;\" target=\"_blank\">����</a>]</td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"31\";s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:166:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (31)   AND R.topic=1 ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"120\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"60\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"461\";s:5:\"div_h\";s:2:\"71\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240195933','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('364','','1','0','bb1','code','0','<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" bgcolor=\"#ffffff\">\r\n        <tr align=\"center\" bgcolor=\"#EBEBEB\"> \r\n          <td width=\"36%\">��ְ��λ</td>\r\n          <td width=\"13%\">ѧ��</td>\r\n          <td width=\"14%\">�Ա�</td>\r\n          <td width=\"13%\">��������</td>\r\n          <td width=\"13%\">����</td>\r\n          <td width=\"11%\">����</td>\r\n        </tr> \r\n</table>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"475\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239768502','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('365','','1','0','bb2','form','1','a:31:{s:9:\"tplpart_1\";s:527:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\"> $workposition</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$sex</td>\r\n          <td width=\"13%\">{$workyear} ��</td>\r\n          <td width=\"13%\">{$myage} ��</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">����</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_1code\";s:527:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\"> $workposition</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$sex</td>\r\n          <td width=\"13%\">{$workyear} ��</td>\r\n          <td width=\"13%\">{$myage} ��</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">����</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"form\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"6\";s:7:\"tplpath\";s:16:\"/form/askjob.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:195:\" SELECT A.*,R.*,config AS M_config FROM pp_form_content A LEFT JOIN pp_form_content_6 R ON A.id=R.id LEFT JOIN pp_form_module F ON A.mid=F.id  WHERE 1  AND A.mid=\'6\'  ORDER BY A.id DESC  LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899424','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('318','','1','0','b02','code','0','<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" bgcolor=\"#ffffff\">\r\n        <tr align=\"center\" bgcolor=\"#EBEBEB\"> \r\n          <td width=\"36%\">��Ƹְλ</td>\r\n          <td width=\"13%\">ѧ��Ҫ��</td>\r\n          <td width=\"14%\">�Ա�Ҫ��</td>\r\n          <td width=\"13%\">����Ҫ��</td>\r\n          <td width=\"13%\">��н����</td>\r\n          <td width=\"11%\">����</td>\r\n        </tr> \r\n      </table>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"490\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239022772','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('330','','1','0','mainnews2','article','1','a:31:{s:13:\"tplpart_1code\";s:397:\"<div style=\"clear:both;padding-top:2px;margin-bottom:4px;\"><span style=\"float:left;font-size:13px;color:#ccc;\">��<A HREF=\"$list_url\" style=\"font-size:13px;\">{$fname}</A>| <A HREF=\"$url\" target=\'_blank\' style=\"$fontcolor;font-size:13px;\">$title</a>$new$hot</span>                     \r\n    <span style=\"float:right;color:#993300;padding-right:3px;font-size:13px;\">[{$time_m}-{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:28:\"/common_fname/time_fname.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"32\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:10:\"A.posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:1:\"1\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:141:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.levels=1  AND A.fid IN (32)  AND A.mid=\'0\'   ORDER BY A.posttime DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"48\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"467\";s:5:\"div_h\";s:3:\"126\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240280500','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('314','','0','0','1236087504','article','1','a:28:{s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";s:1:\"0\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"default\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:54:\" SELECT A.* FROM pp_article A  WHERE A.yz=1   LIMIT 5 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','1','');
INSERT INTO `pp_label` VALUES ('316','tretre','0','0','1236087539','article','1','a:28:{s:3:\"SYS\";s:7:\"artcile\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:2:\"-1\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";s:1:\"0\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"default\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:54:\" SELECT A.* FROM pp_article A  WHERE A.yz=1   LIMIT 5 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','1','');
INSERT INTO `pp_label` VALUES ('317','','1','0','Title05','code','0','�̳ǹ���','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239778992','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('319','','1','0','b022','form','1','a:31:{s:9:\"tplpart_1\";s:521:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\">&nbsp;$workplace</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$asksex</td>\r\n          <td width=\"13%\">$wageyear</td>\r\n          <td width=\"13%\">$wage</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">����</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_1code\";s:521:\"<table width=\"100%\" border=\"0\" cellspacing=\"1\" cellpadding=\"3\" style=\"border-bottom:1px dotted #eee;\">\r\n        <tr align=\"center\"> \r\n          \r\n    <td width=\"36%\" align=\"left\">&nbsp;$workplace</td>\r\n          <td width=\"13%\">$schoo_age</td>\r\n          <td width=\"14%\">$asksex</td>\r\n          <td width=\"13%\">$wageyear</td>\r\n          <td width=\"13%\">$wage</td>\r\n          \r\n    <td width=\"11%\"><a href=\"$webdb[www_url]/do/bencandy_form.php?mid=$mid&id=$id\" target=\"_blank\">����</a></td>\r\n        </tr> \r\n      </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"form\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"2\";s:7:\"tplpath\";s:17:\"/form/givejob.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:195:\" SELECT A.*,R.*,config AS M_config FROM pp_form_content A LEFT JOIN pp_form_content_2 R ON A.id=R.id LEFT JOIN pp_form_module F ON A.mid=F.id  WHERE 1  AND A.mid=\'2\'  ORDER BY A.id DESC  LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"485\";s:5:\"div_h\";s:2:\"70\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240899392','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('322','','1','0','bodyad2','pic','0','a:4:{s:6:\"imgurl\";s:11:\"ad/cnad.jpg\";s:7:\"imglink\";s:22:\"http://www.qibosoft.com/\";s:5:\"width\";s:3:\"742\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"742\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239759405','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('323','','1','0','Title4d','code','0','��������֮PKս','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1237278157','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('324','','1','0','c2d','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=10\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"10\";s:5:\"div_w\";s:3:\"237\";s:5:\"div_h\";s:3:\"145\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239011013','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('325','','1','0','Title5d','code','0','2008���й�վ���˴�����','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240113989','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('326','','1','0','b2d','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/do/vote.php?job=js&cid=11\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"11\";s:5:\"div_w\";s:3:\"480\";s:5:\"div_h\";s:3:\"238\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239011483','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('327','','1','0','c02d','article','1','a:31:{s:13:\"tplpart_1code\";s:476:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"margin:3px 0px 12px 0px;\">\r\n  <tr> \r\n    <td rowspan=\"2\" width=\"4%\" style=\"padding-right:3px;\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\"100\" height=\"75\" border=\"0\"></a></td>\r\n    <td width=\"96%\"> <a href=\"$url\" target=\"_blank\" style=\"color:#666;font-weight:bold;\">$title</a></td>\r\n  </tr>\r\n  <tr> \r\n    <td width=\"96%\" style=\"color:#929292;text-indent:1em;\">$content</td>\r\n  </tr>\r\n</table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"34\";s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:211:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.fid IN (34)  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.aid DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"58\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"18\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"238\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240060985','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('328','','1','0','Title04d','code','0','�Ƽ�ͼ��','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"215\";s:5:\"div_h\";s:2:\"26\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239345594','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('329','','1','0','c2de','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20090420130440_bWzOZ.jpg\";s:7:\"imglink\";s:19:\"http://www.371.com/\";s:5:\"width\";s:3:\"242\";s:6:\"height\";s:2:\"98\";}','a:3:{s:5:\"div_w\";s:3:\"233\";s:5:\"div_h\";s:2:\"87\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240205249','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('347','','0','0','show_right_top_picad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=show_right_top_picad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"110\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893892','3','0','0','0','default');
INSERT INTO `pp_label` VALUES ('469','','1','0','index_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171018_bzfar.gif\";s:7:\"imglink\";s:21:\"http://www.eydns.com/\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642613','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('348','','0','0','show_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=show_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"990\";s:5:\"div_h\";s:2:\"60\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893880','3','0','0','0','default');
INSERT INTO `pp_label` VALUES ('349','','0','0','list_page_topad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=list_page_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"290\";s:5:\"div_h\";s:3:\"130\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893815','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('350','','0','0','article_list','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=article_list\'> </SCRIPT>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"273\";s:5:\"div_h\";s:2:\"56\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292548963','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('351','','0','0','article_list_tag','code','0','���λ','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279418','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('356','','0','0','bbsifmark_tag','code','0','��̳������','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('354','','0','0','article_show','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=article_show\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893904','3','0','0','0','default');
INSERT INTO `pp_label` VALUES ('355','','0','0','article_show_tag','code','0','���λ','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1239279430','3','0','0','0','default');
INSERT INTO `pp_label` VALUES ('358','','0','0','view_article_bbs_tag','code','0','��̳�Ƽ�ͼ��','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','3','0','0','0','default');
INSERT INTO `pp_label` VALUES ('360','','1','0','bodyad33','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20090418150428_gPa47.jpg\";s:7:\"imglink\";s:22:\"http://www.yeepay.com/\";s:5:\"width\";s:3:\"243\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"243\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240041136','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('468','','1','0','index_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101027171006_q2b2q.gif\";s:7:\"imglink\";s:18:\"http://www.sudu.cn\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642635','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('465','','1','0','index_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141123_k355a.jpg\";s:7:\"imglink\";s:36:\"http://www.chinaccnet.com/hyperv.php\";s:5:\"width\";s:3:\"740\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"737\";s:5:\"div_h\";s:2:\"67\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291714552','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('466','','1','0','index_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109141150_bnrt2.jpg\";s:7:\"imglink\";s:22:\"http://www.yeepay.com/\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:2:\"68\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289462758','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('467','','1','0','index_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"266\";s:6:\"height\";s:3:\"236\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101109141150_sfgyo.jpg\";i:2;s:32:\"label/1_20101109141154_f28xx.jpg\";}s:7:\"piclink\";a:2:{i:1;s:19:\"http://www.sudu.cn/\";i:2;s:26:\"http://www.chinaccnet.com/\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"265\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292642100','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('373','','1','99','head_guides','code','0','      <div class=\"ico_guide bbs\"><a href=\"http://www_qibosoft_com/bbs/\" target=\'_blank\'>����</a></div>\r\n	  <div class=\"ico_guide post\"><a href=\"http://www_qibosoft_com/do/post.php\">Ͷ��</a></div>\r\n	  <div class=\"ico_guide sell\"><a href=\"http://www_qibosoft_com/do/buymoneycard.php?paytype=yeepay\">��ֵ</a></div>\r\n	  <div class=\"ico_guide jf\"><a href=\"http://www_qibosoft_com/do/jf.php\">����</a></div>\r\n	  <div class=\"ico_guide user\"><a href=\"http://www_qibosoft_com/do/list_form.php?mid=2\">��Ƹ</a></div>\r\n	  <div class=\"ico_guide search\"><a href=\"http://www_qibosoft_com/do/search.php\">����</a></div>\r\n	  <div class=\"ico_guide book\"><a href=\"http://www_qibosoft_com/do/guestbook.php\">����</a></div>\r\n	  <div class=\"ico_guide digg\"><a href=\"http://www_qibosoft_com/do/listsp.php?fid=1\">ר��</a></div>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"700\";s:5:\"div_h\";s:2:\"50\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240898798','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('383','','0','0','list_page_mv','article','1','a:31:{s:13:\"tplpart_1code\";s:195:\"(mv,290,210,false)$mvurl(/mv)\r\n<div style=\"line-height:170%;text-align:center;padding-top:8px;\"><A HREF=\"$url\" target=\'_blank\'  style=\"$fontcolor;$fontweight\" title=\'$full_title\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','1','0','default');
INSERT INTO `pp_label` VALUES ('375','','0','0','list_top_ad','code','0','<SCRIPT LANGUAGE=\'JavaScript\' src=\'http://www_qibosoft_com/do/a_d_s.php?job=js&ad_id=AD_list_topad\'></SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"900\";s:5:\"div_h\";s:2:\"51\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240893857','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('376','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:149:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\">&nbsp;<A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:30:\"/common_title/1title_noico.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240201322','11','0','24','0','default');
INSERT INTO `pp_label` VALUES ('377','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','23','0','default');
INSERT INTO `pp_label` VALUES ('378','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('379','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('380','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('381','','0','0','mvshow','article','1','a:31:{s:13:\"tplpart_1code\";s:144:\"(mv,400,300,false)$mvurl(/mv)<div style=\"padding:8px 0 10px 0;\"> <A HREF=\"$url\" target=\'_blank\'  style=\"font-size:14px;\"><b>$title</b></a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('384','','0','0','list_page_mv','article','1','a:31:{s:13:\"tplpart_1code\";s:195:\"(mv,290,210,false)$mvurl(/mv)\r\n<div style=\"line-height:170%;text-align:center;padding-top:8px;\"><A HREF=\"$url\" target=\'_blank\'  style=\"$fontcolor;$fontweight\" title=\'$full_title\'>$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"A.aid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.aid DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1240292096','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('385','','1','0','showinfo','code','0','<SCRIPT LANGUAGE=\"JavaScript\">\r\n<!--\r\ndocument.write(\'<span id=\"num_info\"><img alt=\"���ݼ�����,���Ժ�...\" src=\"http://www_qibosoft_com/images/default/ico_loading3.gif\"></span>\');\r\ndocument.write(\'<div style=\"display:none;\"><iframe src=\"http://www_qibosoft_com/do/job.php?job=getinfo&iframeID=num_info\" width=0 height=0></iframe></div>\');\r\n//-->\r\n</SCRIPT>','a:4:{s:9:\"html_edit\";s:0:\"\";s:5:\"div_w\";s:3:\"235\";s:5:\"div_h\";s:2:\"55\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1241074422','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('387','','0','0','blog_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"310\";s:6:\"height\";s:3:\"200\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101108091153_pfput.jpg\";i:2;s:32:\"label/1_20101108091131_uive7.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289180839','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('388','','0','0','blog_hot','blog_log','1','a:24:{s:9:\"tplpart_1\";s:234:\" <div class=\"list\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" class=\"t$i\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"user\" target=\"_blank\">$username</a></div>\r\n                \";s:13:\"tplpart_1code\";s:234:\" <div class=\"list\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" class=\"t$i\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"user\" target=\"_blank\">$username</a></div>\r\n                \";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:59:\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:2:\"80\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:76:\" SELECT * FROM pp_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289182107','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('389','','0','0','blog_topic','blog_log','1','a:24:{s:9:\"tplpart_1\";s:446:\"<div class=\"list$i\">\r\n            	<div class=\"title\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\'_blank\'>$title</a></div>\r\n                <div class=\"user\"><a href=\"$webdb[www_url]/blog/?uid=$uid\">$username</a></div>\r\n                <div class=\"content\">��{$content}...<a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\'_blank\'>[��ϸ]</a>\r\n                </div>\r\n            </div>\";s:13:\"tplpart_1code\";s:446:\"<div class=\"list$i\">\r\n            	<div class=\"title\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\'_blank\'>$title</a></div>\r\n                <div class=\"user\"><a href=\"$webdb[www_url]/blog/?uid=$uid\">$username</a></div>\r\n                <div class=\"content\">��{$content}...<a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\'_blank\'>[��ϸ]</a>\r\n                </div>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:59:\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:3:\"110\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:76:\" SELECT * FROM pp_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 5 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289186800','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('390','','0','0','blog_member1','Info_blog_','1','a:28:{s:13:\"tplpart_1code\";s:406:\"<div class=\"listblog\">\r\n                	<a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\" class=\"pic\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"45\" height=\"45\" /></a>\r\n                    <a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\" class=\"name\">$title</a>\r\n                    <span>�����:<em>$hits</em>��</span>\r\n                </div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"blog\";s:6:\"wninfo\";s:5:\"blog_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:158:\"SELECT M.*,B.*,B.webname AS title,M.uid AS id,M.icon AS picurl FROM pp_blog_home B LEFT JOIN pp_memberdata M ON B.uid=M.uid  WHERE 1  ORDER BY 1 DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289186011','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('392','','0','0','blog_member2','Info_blog_','1','a:28:{s:13:\"tplpart_1code\";s:554:\"<div class=\"listReporter\">\r\n                	<a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\" class=\"pic\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/noface.gif\'\" width=\"70\" height=\"70\" /></a>\r\n                	<a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\" class=\"name\">$title</a>\r\n                    <span>�����:<em>$hits</em>��</span>\r\n                    <span><a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\"><img src=\"$webdb[www_url]/images/v7/blog/view.gif\"/></a></span>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"blog\";s:6:\"wninfo\";s:5:\"blog_\";s:6:\"cityId\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:5:\"B.uid\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:161:\"SELECT M.*,B.*,B.webname AS title,M.uid AS id,M.icon AS picurl FROM pp_blog_home B LEFT JOIN pp_memberdata M ON B.uid=M.uid  WHERE 1  ORDER BY B.uid ASC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289186087','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('393','','0','0','blog_title1','blog_log','1','a:24:{s:9:\"tplpart_1\";s:152:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\">$username</a></span></div>\";s:13:\"tplpart_1code\";s:207:\"<div class=\"list l$i\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\"_blank\">$title</a><span><a href=\"$webdb[www_url]/blog/?uid=$uid\" target=\"_blank\">$username</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:59:\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:2:\"80\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:76:\" SELECT * FROM pp_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('394','','0','0','blog_title2','blog_log','1','a:24:{s:9:\"tplpart_1\";s:146:\" <div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"u\" target=\"_blank\">$username</a></div>\";s:13:\"tplpart_1code\";s:201:\" <div class=\"list\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"u\" target=\"_blank\">$username</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:59:\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:2:\"80\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:75:\" SELECT * FROM pp_blog_log_article  WHERE 1  ORDER BY posttime ASC LIMIT 7 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('395','','0','0','blog_title3','blog_log','1','a:24:{s:9:\"tplpart_1\";s:146:\" <div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"u\" target=\"_blank\">$username</a></div>\";s:13:\"tplpart_1code\";s:201:\" <div class=\"list\"><a href=\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\" target=\"_blank\">$title</a><a href=\"$webdb[www_url]/blog/?uid=$uid\" class=\"u\" target=\"_blank\">$username</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:59:\"$webdb[www_url]/blog/index.php?file=viewlog&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:2:\"80\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:76:\" SELECT * FROM pp_blog_log_article  WHERE 1  ORDER BY posttime DESC LIMIT 7 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('396','','0','0','blog_photo1','blog_photo','1','a:24:{s:9:\"tplpart_1\";s:255:\"<div class=\"listpic\"> <a href=\"$url\" class=\"pic\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" /></a> \r\n              <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_1code\";s:369:\"<div class=\"listpic\"> <a href=\"$webdb[www_url]/blog/index.php?file=viewphoto&uid=$uid&id=$id\" class=\"pic\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" /></a> \r\n              <a href=\"$webdb[www_url]/blog/index.php?file=viewphoto&uid=$uid&id=$id\" class=\"title\" target=\"_blank\">$title</a> </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:3:\"url\";s:61:\"$webdb[www_url]/blog/index.php?file=viewphoto&uid=$uid&id=$id\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:11:\"content_num\";s:2:\"80\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:8:\"posttime\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:74:\" SELECT * FROM pp_blog_photo_pic  WHERE 1  ORDER BY posttime DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";s:9:\"titlenum2\";s:0:\"\";s:12:\"content_num2\";s:0:\"\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('397','','0','0','blog_t1','code','0','������־','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('398','','0','0','blog_t2','code','0','�Ƽ�ͼƬ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('399','','0','0','blog_t3','code','0','�Ƽ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('400','','0','0','blog_t4','code','0','���Ĺ���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('401','','0','0','blog_t5','code','0','<a href=\"log.php?fid=1\" class=\"F14\">����</a> | <a href=\"log.php?fid=2\" class=\"F14\">��ʳ</a> | <a href=\"log.php?fid=3\" class=\"F14\">����</a> <a href=\"log.php\" class=\"more\">����..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"200\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190367','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('402','','0','0','blog_t6','code','0','������־','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('403','','0','0','blog_t7','code','0','<a  href=\"log.php?fid=1\">�������</a> | <a href=\"log.php?fid=2\">�������</a> <a href=\"log.php\" class=\"more\" target=\"_blank\">����...</a>\r\n\r\n','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"150\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190226','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('404','','0','0','blog_t8','code','0','���²���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('405','','0','0','blog_t9','code','0','<a href=\"photo.php\" target=\"_blank\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190131','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('406','','0','0','blog_t10','code','0','<a href=\"member.php\" target=\"_blank\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190119','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('407','','0','0','blog_t11','code','0','<a href=\"member.php\" target=\"_blank\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190100','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('408','','0','0','blog_b1','code','0','<span class=\"l FB\">����</span><span class=\"r\"><a href=\"log.php?fid=1\">����...</a></span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190307','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('409','','0','0','blog_b2','code','0','<span class=\"l FB\">��ʳ</span><span class=\"r\"><a href=\"log.php?fid=2\">����...</a></span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289190336','0','25','0','0','default');
INSERT INTO `pp_label` VALUES ('410','','0','0','exam_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"160\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101108131113_7mfrt.jpg\";i:2;s:32:\"label/1_20101108131123_dyfe2.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('411','','0','0','exam_top1','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:185:\"<div class=\"uu$i\"><span class=\"L\"><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a></span><span class=\"R\">{$time_Y}-{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:162:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"50\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"400\";s:5:\"div_h\";s:3:\"250\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366253','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('412','','0','0','exam_top2','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:113:\"<div class=\"lista$i\"><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"11\";s:3:\"sql\";s:162:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 11 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"400\";s:5:\"div_h\";s:3:\"150\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366296','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('413','','0','0','exam_top3','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:134:\"<div class=\"list$i\"><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:162:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"28\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366305','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('414','','0','0','exam_a1','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:112:\"<div class=\"list$i\"><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366363','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('415','','0','0','exam_a2','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:112:\"<div class=\"list$i\"><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"230\";s:5:\"div_h\";s:3:\"112\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366375','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('416','','0','0','exam_a3','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:231:\"<div class=\"list\"><a href=\"$webdb[www_url]/exam/list.php?fid=$fid\" class=\"s\" target=\"_blank\">[{$fname}]</a><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366339','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('417','','0','0','exam_a4','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:231:\"<div class=\"list\"><a href=\"$webdb[www_url]/exam/list.php?fid=$fid\" class=\"s\" target=\"_blank\">[{$fname}]</a><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366351','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('418','','0','0','exam_a5','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:231:\"<div class=\"list\"><a href=\"$webdb[www_url]/exam/list.php?fid=$fid\" class=\"s\" target=\"_blank\">[{$fname}]</a><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366399','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('419','','0','0','exam_a6','Info_exam_','1','a:27:{s:13:\"tplpart_1code\";s:231:\"<div class=\"list\"><a href=\"$webdb[www_url]/exam/list.php?fid=$fid\" class=\"s\" target=\"_blank\">[{$fname}]</a><a href=\"$webdb[www_url]/exam/bencandy.php?fid=$fid&id=$id\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:4:\"exam\";s:6:\"wninfo\";s:5:\"exam_\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:1:\"1\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:161:\"SELECT A.*,A.name AS title,A.creattime AS posttime,B.name AS fname FROM pp_exam_form A LEFT JOIN pp_exam_sort B ON A.fid=B.fid  WHERE 1  ORDER BY 1 DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289366390','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('420','','0','0','exam_q1','code','0','	<a href=\"#\">����</a> | <a href=\"#\">ģ�⿼��</a> | <a href=\"#\">��У</a> | <a href=\"#\">����</a> | <a href=\"#\">�ٿ�</a> | <a href=\"#\">��Ƹ</a> | <a href=\"#\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('421','','0','0','exam_q2','code','0','	<a href=\"#\">����</a> | <a href=\"#\">ģ�⿼��</a> | <a href=\"#\">��У</a> | <a href=\"#\">����</a> | <a href=\"#\">�ٿ�</a> | <a href=\"#\">��Ƹ</a> | <a href=\"#\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('422','','0','0','exam_q3','code','0','	<a href=\"#\">����</a> | <a href=\"#\">ģ�⿼��</a> | <a href=\"#\">��У</a> | <a href=\"#\">����</a> | <a href=\"#\">�ٿ�</a> | <a href=\"#\">��Ƹ</a> | <a href=\"#\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('423','','0','0','exam_q4','code','0','<a href=\"#\">����</a> | <a href=\"#\">ģ�⿼��</a> | <a href=\"#\">��У</a> | <a href=\"#\">����</a> | <a href=\"#\">�ٿ�</a> | <a href=\"#\">��Ƹ</a> | <a href=\"#\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('424','','0','0','exam_tt1','code','0','�����1������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('425','','0','0','exam_tt2','code','0','�����2������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('426','','0','0','exam_tt3','code','0','�����3������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('427','','0','0','exam_tt4','code','0','�����4������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('428','','0','0','exam_tt5','code','0','������ȼ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('429','','0','0','exam_tt6','code','0','	<a href=\"#\">һ��</a> | <a href=\"#\">����</a> | <a href=\"#\">����</a> | <a href=\"#\">�ļ�</a> | <a href=\"#\">��Ƶ�̳�</a> | <a href=\"#\">���⸨��</a> | <a href=\"#\">��ϰ����</a> | <a href=\"#\">�������</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('430','','0','0','exam_tt7','code','0','�Ƽ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('431','','0','0','exam_tt8','code','0','�������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('432','','0','0','exam_tt9','code','0','<a href=\"#\">����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('433','','0','0','exam_tt10','code','0','�Ծ���ע����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289280336','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('434','','0','0','exam_tt11','code','0','<a href=\"#\">����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('435','','0','0','exam_tt12','code','0','ģ������һ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('436','','0','0','exam_tt13','code','0','<a href=\"#\">����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('437','','0','0','exam_tt14','code','0','ģ�������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('438','','0','0','exam_tt15','code','0','<a href=\"#\">����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('439','','0','0','exam_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101108161146_axggb.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"60\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('440','','0','0','exam_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101108161103_n32j4.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"490\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('441','','0','0','exam_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101108161125_s7nrb.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"490\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('442','','0','0','exam_top03','code','0','	<div class=\"list\"><a href=\"#\">2010���֤ǩԼ��</a></div>\r\n                        <div class=\"list\"><a href=\"#\">2010���֤ǩԼ��</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','17','0','0','default');
INSERT INTO `pp_label` VALUES ('443','','0','0','new_1','article','1','a:32:{s:13:\"tplpart_1code\";s:257:\"<div class=\"list$i\">\r\n            	\r\n          <div class=\"title\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                \r\n          <div class=\"content\">{$content}...<a href=\"$url\" target=\"_blank\">[��ϸ]</a> \r\n          </div>\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"110\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"390\";s:5:\"div_h\";s:3:\"250\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289208353','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('444','','0','0','new_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"310\";s:6:\"height\";s:3:\"260\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101108161159_zs6we.jpg\";i:2;s:32:\"label/1_20101108171103_f9fvv.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('445','','0','0','new_2','article','1','a:32:{s:13:\"tplpart_1code\";s:105:\"<div class=\"list\"><em>$i</em><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$hits}��</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"32\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289206999','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('446','','0','0','new_photo','article','1','a:32:{s:13:\"tplpart_1code\";s:274:\"<div class=\"listpic\">\r\n			 <a href=\"$url\" class=\"pic\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\" /></a> \r\n              <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> \r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('447','','0','0','new_ps','article','1','a:32:{s:13:\"tplpart_1code\";s:536:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" align=\"center\" cellpadding=\"0\" class=\"listtable\">\r\n                  <tr>\r\n                    \r\n                <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"70\" height=\"70\" /></a></td>\r\n                    <td class=\"word\">\r\n                    	<a href=\"$url\" class=\"title\">$title</a>\r\n                        $content\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:192:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list ASC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"56\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207490','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('448','','0','0','new_p1','article','1','a:32:{s:13:\"tplpart_1code\";s:110:\"<div class=\"list_t_c\"> <a href=\"$url\" class=\"title\" target=\"_blank\">$title</a> \r\n              $content </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"120\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207618','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('449','','0','0','new_u1','article','1','a:32:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207819','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('450','','0','0','new_p2','article','1','a:32:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289207948','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('451','','0','0','new_p3','article','1','a:32:{s:13:\"tplpart_1code\";s:108:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span><a>{$time_m}-{$time_d}</a></span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('452','','0','0','new_tt2','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('453','','0','0','new_tt1','code','0','�Ƽ��Ķ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('454','','0','0','new_tt3','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('455','','0','0','new_tt4','code','0','�����Ƽ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('456','','0','0','new_tt6','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('457','','0','0','new_tt5','code','0','�����Ƽ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('458','','0','0','new_tt8','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('459','','0','0','new_tt7','code','0','��������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('460','','0','0','new_tt9','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('461','','0','0','new_tt10','code','0','ͼƬ����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('462','','0','0','new_tt11','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('463','','0','0','new_tt12','code','0','���۽�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('464','','0','0','new_tt13','code','0','�������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('473','','1','0','index_hot1','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listb$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"206\";s:5:\"div_h\";s:3:\"204\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289464370','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('474','','1','0','index_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:249:\"<div class=\"lista$i\"> <span class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                <span class=\"d\">[{$time_m}-{$time_d}]</span> <span class=\"c\">��{$content}<a href=\"$url\" target=\"_blank\">[����]</a></span> \r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"130\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"54\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"446\";s:5:\"div_h\";s:3:\"209\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291793386','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('475','','1','0','index_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:308:\"<div class=\"listpic\">\r\n        	\r\n        <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n            \r\n        <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"991\";s:5:\"div_h\";s:3:\"142\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289462842','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('476','','1','0','index_down','article','1','a:32:{s:13:\"tplpart_1code\";s:90:\"<div class=\"listc$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"206\";s:5:\"div_h\";s:3:\"254\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463083','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('477','','1','0','index_j1','article','1','a:32:{s:13:\"tplpart_1code\";s:219:\"<div class=\"list$i\">\r\n                    	<span class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></span>\r\n                        <span class=\"c\">&nbsp;&nbsp;&nbsp;&nbsp;{$content}.</span>\r\n                    </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"94\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"271\";s:5:\"div_h\";s:3:\"237\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289462968','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('478','','1','0','index_j2','comment','1','a:25:{s:9:\"tplpart_1\";s:283:\"<div class=\"list\"> <span class=\"t\"><em>{$username}</em> �� {$time_m}-{$time_d} \r\n                      00:54 �� <a href=\"#\" target=\"_blank\">$article</a></span> \r\n                      <span class=\"a\">������������</span> <span class=\"c\">{$title}...</span> \r\n                    </div>\";s:13:\"tplpart_1code\";s:283:\"<div class=\"list\"> <span class=\"t\"><em>{$username}</em> �� {$time_m}-{$time_d} \r\n                      00:54 �� <a href=\"#\" target=\"_blank\">$article</a></span> \r\n                      <span class=\"a\">������������</span> <span class=\"c\">{$title}...</span> \r\n                    </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"comment\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";N;s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";N;s:3:\"asc\";N;s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:149:\" SELECT A.*,A.content AS title,B.title AS article FROM pp_comment A LEFT JOIN pp_article B ON A.aid=B.aid  WHERE A.yz=1  ORDER BY A.cid DESC LIMIT 3 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:8:\"titlenum\";s:2:\"50\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"407\";s:5:\"div_h\";s:3:\"194\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463071','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('479','','1','0','index_j3','article','1','a:33:{s:13:\"tplpart_1code\";s:501:\"	<div class=\"listpic\">\r\n                    \r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    \r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"p\"><strike>�г���:��{$martprice}</strike></div>\r\n                    <div class=\"p\"><em>���ۼ�:��{$nowprice}</em></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"fidtype\";s:1:\"0\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"739\";s:5:\"div_h\";s:3:\"180\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292549169','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('480','','1','0','index_member','member','1','a:20:{s:9:\"tplpart_1\";s:429:\"<div class=\"listuser\">\r\n                	\r\n                <div class=\"img\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nobody.gif\'\" width=\"50\" height=\"50\"/></a></div>\r\n                	\r\n                <div class=\"name\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_1code\";s:429:\"<div class=\"listuser\">\r\n                	\r\n                <div class=\"img\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nobody.gif\'\" width=\"50\" height=\"50\"/></a></div>\r\n                	\r\n                <div class=\"name\"><a href=\"$webdb[www_url]/member/homepage.php?uid=$uid\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:7:\"group_1\";s:0:\"\";s:7:\"group_2\";s:0:\"\";s:13:\"RollStyleType\";s:0:\"\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:7:\"regdate\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";N;s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:134:\" SELECT D.*,D.username AS title,D.icon AS picurl,D.introduce AS content FROM pp_memberdata D  WHERE 1  ORDER BY D.regdate ASC LIMIT 9 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"20\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:3:\"252\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463337','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('481','','1','0','index_c1','article','1','a:32:{s:13:\"tplpart_1code\";s:101:\"  <div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>[{$time_m}/{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:741:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tr>\r\n                            \r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                            <td>\r\n                                \r\n                      <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                                \r\n                      <div class=\"m\">����{$content}<a href=\"$url\" target=\"_blank\">[��ϸ]</a></div>\r\n                            </td>\r\n                          </tr>\r\n                        </table>\r\n                        \r\n               \";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:175:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"341\";s:5:\"div_h\";s:3:\"220\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463102','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('482','','1','0','index_c2','article','1','a:32:{s:13:\"tplpart_1code\";s:101:\"  <div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>[{$time_m}/{$time_d}]</span></div>\";s:13:\"tplpart_2code\";s:738:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                          <tr>                            \r\n                    <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                            <td>\r\n                                \r\n                      <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                                \r\n                      <div class=\"m\">����{$content}<a href=\"$url\" target=\"_blank\">[��ϸ]</a></div>\r\n                            </td>\r\n                          </tr>\r\n                        </table>\r\n                        \r\n              \";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_zh_content/zh_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:162:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";s:174:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"346\";s:5:\"div_h\";s:3:\"229\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463328','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('483','','1','0','index_cc1','code','0','<span>ITҵ��</span><a href=\"#\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('484','','1','0','index_cc2','code','0','<span>�������</span><a href=\"#\">����&gt;&gt;</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('485','','1','0','index_digg','article','1','a:32:{s:13:\"tplpart_1code\";s:587:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listConcern\">\r\n                  <tr>\r\n                    <td class=\"L\"><div class=\"n\" id=\"DiggNum_$id\">$digg_num</div><div class=\"d\"><a href=\"$webdb[www_url]/do/job.php?job=digg&type=vote&id=$id\" target=\"DiggIframe_$id\">��һ��</a></div></td>\r\n                    <td class=\"R\"><a href=\"$url\" class=\"a$i\" target=\"_blank\">$title</a></td>\r\n                  </tr>\r\n                </table>\r\n<div style=\"display:none;\"><iframe src=\"about:blank\" width=0 height=0 name=\"DiggIframe_$id\" id=\"DiggIframe_$id\"></iframe></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:22:\"/article/title_dig.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463372','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('487','','1','0','index_pk','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/vote/vote.php?job=js&cid=10\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"10\";s:5:\"div_w\";s:3:\"253\";s:5:\"div_h\";s:3:\"163\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463349','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('486','','1','0','index_tr1','specialsort','1','a:35:{s:9:\"tplpart_1\";s:370:\"<div class=\"listzt\">\r\n        	<div class=\"img\"><a target=\"_blank\" href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"160\"/></a></div>\r\n            <div class=\"t\"><a target=\"_blank\" href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_1code\";s:370:\"<div class=\"listzt\">\r\n        	<div class=\"img\"><a target=\"_blank\" href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"160\"/></a></div>\r\n            <div class=\"t\"><a target=\"_blank\" href=\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:11:\"specialsort\";s:13:\"RollStyleType\";s:0:\"\";s:11:\"roll_height\";s:2:\"50\";s:3:\"url\";s:45:\"$webdb[www_url]/do/showsp.php?fid=$fid&id=$id\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:3:\"fid\";s:0:\"\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"amodule\";N;s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";N;s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:4:\"list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:106:\" SELECT A.* FROM pp_special A  WHERE `ifbase`=0 AND yz=1  AND A.picurl!=\'\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";s:0:\"\";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:0:\"\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:0:\"\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"985\";s:5:\"div_h\";s:3:\"208\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289867209','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('488','','1','0','index_tr01','code','0','<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n          <tr>\r\n            <td class=\"choose\"><a href=\"#\" class=\"nbor\">����</a></td>\r\n            <td><a href=\"#\" class=\"nbor\">ͼƬ</a></td>\r\n            <td><a href=\"#\">Ӱ��</a></td>\r\n            <td><a href=\"#\">�̳�</a></td>\r\n            <td><a href=\"#\">flash</a></td>\r\n          </tr>\r\n        </table> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"670\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289292242','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('489','','1','0','index_vote2','hack_vote','0','<SCRIPT src=\'http://www_qibosoft_com/vote/vote.php?job=js&cid=12\'></SCRIPT>','a:4:{s:6:\"voteid\";s:2:\"12\";s:5:\"div_w\";s:3:\"444\";s:5:\"div_h\";s:3:\"227\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289463384','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('490','','0','0','wn_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"280\";s:6:\"height\";s:3:\"190\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101109181105_gzaok.jpg\";i:2;s:32:\"label/1_20101109181113_fwdej.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('491','','0','0','wn_topic1','Info_wn_','1','a:29:{s:13:\"tplpart_1code\";s:128:\"<div class=\"list\"><a href=\"$list_url\" class=\"sort\" target=\"_blank\">[{$fname}]</a><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:0:\"\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:73:\" SELECT A.* FROM pp_wn_content A   WHERE 1  ORDER BY A.list DESC LIMIT 8 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289303057','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('492','','0','0','wn_tg1','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:262:\"<div class=\"list$i\"> <span class=\"d\">{$time_y}/{$time_m}/{$time_d}</span> <span class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                <span class=\"c\">����{$content}<a href=\"$url\" target=\"_blank\">[�鿴ȫ��]</a></span> \r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:3:\"190\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289305481','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('493','','0','0','wn_tg2','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:83:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>09-14</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"36\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('494','','0','0','wn_tg3','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"12\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list ASC LIMIT 12 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289305655','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('495','','0','0','wn_tg4','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:328:\"<div class=\"listpic\">\r\n                	\r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:141:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE A.ispic=1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('496','','0','0','wn_tg01','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:235:\"<div class=\"list$i\">\r\n                	\r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"m\">���:<span>$hits</span> ����:<span>$comments</span></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('497','','0','0','wn_tgh1','Info_wn_','1','a:30:{s:13:\"tplpart_1code\";s:196:\"<div class=\"listtc\">\r\n                	\r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"c\">����$content</div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"66\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289306541','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('498','','0','0','wn_tgh2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101109201135_eoslv.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:2:\"50\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('499','','0','0','wn_ptg4','Info_wn_','1','a:32:{s:13:\"tplpart_1code\";s:156:\" <div class=\"list\"><a href=\"$url\" class=\"sort\" target=\"_blank\">[{$fname}]</a><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:682:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"pic_word\">\r\n                      <tr>\r\n                        \r\n                  <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                        <td class=\"word\">\r\n                        	\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    		\r\n                    <div class=\"c\">��$content<a href=\"$url\" target=\"_blank\">[�鿴ȫ��]</a></div>\r\n                        </td>\r\n                      </tr>\r\n                    </table>\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:133:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";s:147:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289308003','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('500','','0','0','wn_ptg5','Info_wn_','1','a:32:{s:13:\"tplpart_1code\";s:156:\" <div class=\"list\"><a href=\"$url\" class=\"sort\" target=\"_blank\">[{$fname}]</a><a href=\"$url\" target=\"_blank\">$title</a><span>{$time_m}-{$time_d}</span></div>\";s:13:\"tplpart_2code\";s:682:\"	<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"pic_word\">\r\n                      <tr>\r\n                        \r\n                  <td class=\"pic\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                        <td class=\"word\">\r\n                        	\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    		\r\n                    <div class=\"c\">��$content<a href=\"$url\" target=\"_blank\">[�鿴ȫ��]</a></div>\r\n                        </td>\r\n                      </tr>\r\n                    </table>\";s:3:\"SYS\";s:2:\"wn\";s:13:\"RollStyleType\";s:0:\"\";s:6:\"wninfo\";s:3:\"wn_\";s:7:\"typefid\";s:3:\"fid\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"70\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";s:1:\"1\";s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:132:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  ORDER BY A.list ASC LIMIT 7 \";s:4:\"sql2\";s:146:\"SELECT B.*,A.* FROM pp_wn_content A  LEFT JOIN pp_wn_content_1 B ON A.id=B.id   WHERE 1  AND A.mid=\'1\'  AND A.ispic=1 ORDER BY A.list ASC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('501','','0','0','wn_tsf','code','0','<a href=\"#\">��������</a> | <a href=\"#\">�˸�����</a> | <a href=\"#\">�������</a> &nbsp;&nbsp; <a href=\"#\">>>����</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"250\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289308157','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('502','','0','0','wn_tp5','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('503','','0','0','wn_tp3','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('504','','0','0','wn_tp4','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('505','','0','0','wn_tp2','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('506','','0','0','wn_tp1','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('507','','0','0','wn_g1','code','0','���Ż���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('508','','0','0','wn_g3','code','0','�������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('509','','0','0','wn_g2','code','0','��ό��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('510','','0','0','wn_g4','code','0','���չ�ע','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('511','','0','0','wn_g6','code','0','��������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('512','','0','0','wn_g5','code','0','ͼƬ����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','26','0','0','default');
INSERT INTO `pp_label` VALUES ('513','','0','0','photo_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"298\";s:6:\"height\";s:3:\"238\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101110141134_yuvgy.jpg\";i:2;s:32:\"label/1_20101110141112_eb6bm.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('514','','0','0','photo_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:313:\"	<div class=\"listpic\">\r\n                	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"125\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('515','','0','0','photo_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:312:\"<div class=\"listpic\">\r\n                	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'100\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('516','','0','0','photo_t3','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"lista$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'100\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289374054','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('517','','0','0','photo_t4','article','1','a:32:{s:13:\"tplpart_1code\";s:68:\"<div class=\"listb$i\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"100\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"11\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'100\'   ORDER BY A.list ASC LIMIT 11 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('518','','0','0','photo_t6','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('519','','0','0','photo_t5','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('520','','0','0','photo_t7','code','0','����ͼƬ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('521','','0','0','photo_t9','code','0','�Ƽ�ͼƬ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('522','','0','0','photo_t8','code','0','�������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('523','','0','0','photo_t10','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('524','','0','0','photo_t11','code','0','<a href=\"#\" class=\"sort choose\"><span>����</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>����</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>Ů��</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>����ʱ��</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>����</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>���</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>�Ļ�</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>��Ȥ</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('525','','0','0','video_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"318\";s:6:\"height\";s:3:\"248\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101111111131_dupyp.jpg\";i:2;s:32:\"label/1_20101111111135_0n6tg.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('526','','0','0','video_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:443:\"<div class=\"listvideo\">\r\n                	\r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"150\" height=\"100\"/></a></div>\r\n                    \r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"m\">����:<span>$comments</span> ����:<span>$hits</span>��</div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289446391','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('527','','0','0','video_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:148:\"<div class=\"list\"><a href=\"$list_url\" class=\"sort\">[{$fname}]</a><a href=\"$url\" class=\"title\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289449013','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('528','','0','0','video_t3','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div class=\"lista$i\"><a href=\"$url\" target=\"_blank\">$title</a>\r\n\r\n<span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289448993','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('529','','0','0','video_h1','article','1','a:32:{s:13:\"tplpart_1code\";s:673:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listtable\">\r\n                  <tr>\r\n                    \r\n                <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"75\"/></a></td>\r\n                    <td class=\"word\">\r\n                       \r\n                  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                       <div class=\"m\">����:<span>$hits</span></div>\r\n                       <div class=\"m\">����:<span>$comments</span></div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('530','','0','0','video_h2','article','1','a:32:{s:13:\"tplpart_1code\";s:415:\"	<div class=\"listvideo\">\r\n                	\r\n              <div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    \r\n              <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"m\">����:<span>$hits</span>��</div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"102\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:135:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'102\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289449096','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('531','','0','0','video_c1','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('532','','0','0','video_c2','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('533','','0','0','video_c3','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('534','','0','0','video_c5','code','0','Ӱ���Ȳ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('535','','0','0','video_c7','code','0','��ѡ��Ƶ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('536','','0','0','video_c9','code','0',' <a href=\"#\" class=\"sort choose\"><span>����</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>����</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>Ů��</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>����ʱ��</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>����</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>���</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>�Ļ�</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>��Ȥ</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('537','','0','0','video_c10','code','0','��Ƶ����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('538','','0','0','video_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111121107_nd3ch.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"720\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('539','','0','0','video_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111121116_80r2g.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"260\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('540','','0','0','shops_rollpic','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"530\";s:6:\"height\";s:3:\"210\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101111141159_txw13.jpg\";i:2;s:32:\"label/1_20101111141105_k2yzk.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('541','','0','0','shops_sort','code','0','	<dl>\r\n                	<dt><a href=\"list.php?fid=16\" target=\"_blank\">�����Ʒ</a></dt>\r\n                    <dd>\r\n                    	<div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                	<dt><a href=\"list.php?fid=16\" target=\"_blank\">�����Ʒ</a></dt>\r\n                    <dd>\r\n                    	<div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                    </dd>\r\n                </dl>\r\n                <dl>\r\n                	<dt><a href=\"list.php?fid=16\" target=\"_blank\">�����Ʒ</a></dt>\r\n                    <dd>\r\n                    	<div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n                        <div><a href=\"list.php?fid=16\" target=\"_blank\">��ʾ����</a></div>\r\n						\r\n                    </dd>\r\n                </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('542','','0','0','shops_p1','article','1','a:32:{s:13:\"tplpart_1code\";s:504:\"<div class=\"listshop\">\r\n                	\r\n              		<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    \r\n             		 <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"p\">�г���<strike>��{$martprice}</strike></div>\r\n                    <div class=\"p\">���ۼ�<span>��{$nowprice}</span></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('543','','0','0','shops_p2','article','1','a:32:{s:13:\"tplpart_1code\";s:386:\"<div class=\"listshop\">\r\n                	<div class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"120\" height=\"90\"/></a></div>\r\n                    <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                    <div class=\"p\">�ۼ�<span>��{$nowprice}</span></div>\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:134:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list ASC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('544','','0','0','shops_p3','article','1','a:32:{s:13:\"tplpart_1code\";s:70:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('545','','0','0','shops_p4','article','1','a:32:{s:13:\"tplpart_1code\";s:94:\"<div class=\"list l1\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}�˹�ע</span></div>\";s:13:\"tplpart_2code\";s:688:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"listt\">\r\n                  <tr>\r\n                    \r\n                <td class=\"img\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\"/></a></td>\r\n                    <td class=\"word\">\r\n                    	\r\n                  <div class=\"t\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n                        <div class=\"p\">�г���<strike>��{$martprice}</strike></div>\r\n                        <div class=\"p\">���ۼ�<span> ��{$nowprice}</span></div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"103\";s:7:\"tplpath\";s:25:\"/common_zh_pic/zh_pic.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";s:117:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'103\'  AND A.ispic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289457230','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('546','','0','0','shops_v1','article','1','a:32:{s:13:\"tplpart_1code\";s:65:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289457356','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('547','','0','0','shops_f1','code','0','<dl>\r\n                <dt><a href=\"#\">��Ա����</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">��������</a></div>\r\n                    <div><a href=\"#\">��Ҫ��</a></div>\r\n                    <div><a href=\"#\">�鿴�ѹ�����Ʒ</a></div>\r\n                    <div><a href=\"#\">�������</a></div>\r\n                    <div><a href=\"#\">���ע���Ϊ...</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('548','','0','0','shops_f2','code','0','<dl>\r\n                <dt><a href=\"#\">����֮��</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">������뿪��</a></div>\r\n                    <div><a href=\"#\">��ι�������</a></div>\r\n                    <div><a href=\"#\">�鿴�۳���Ʒ</a></div>\r\n                    <div><a href=\"#\">��η���</a></div>\r\n                    <div><a href=\"#\">�̳���Ʒ�Ƽ�</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('549','','0','0','shops_f3','code','0','<dl>\r\n                <dt><a href=\"#\">֧����ʽ</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">����֧��</a></div>\r\n                    <div><a href=\"#\">���ע��Ƹ�ͨ</a></div>\r\n                    <div><a href=\"#\">���ע�ᱴ��</a></div>\r\n                    <div><a href=\"#\">ʹ��Ԥ�����</a></div>\r\n                    <div><a href=\"#\">���ע��֧����</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('550','','0','0','shops_f4','code','0','<dl>\r\n                <dt><a href=\"#\">������</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">��ι�������</a></div>\r\n                    <div><a href=\"#\">�ٱ��������̼�</a></div>\r\n                    <div><a href=\"#\">Ͷ�ߵ���</a></div>\r\n                    <div><a href=\"#\">�����ϵ����</a></div>\r\n                    <div><a href=\"#\">�ٱ�����</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('551','','0','0','shops_f5','code','0','<dl>\r\n                <dt><a href=\"#\">�ͷ�����</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">��Ա�޸�����</a></div>\r\n                    <div><a href=\"#\">�޸��ջ���ַ</a></div>\r\n                    <div><a href=\"#\">��Ʒ��������</a></div>\r\n                    <div><a href=\"#\">��Ա�޸ĸ�����Ϣ</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('552','','0','0','shops_f6','code','0','<dl>\r\n                <dt><a href=\"#\">��������</a></dt>\r\n                <dd>\r\n                    <div><a href=\"#\">��������</a></div>\r\n                    <div><a href=\"#\">����������ͬ������������ͬ������������ͬ��</a></div>\r\n                </dd>\r\n            </dl>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('553','','0','0','shops_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141108_fefgd.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('554','','0','0','shops_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141125_iaj1l.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('555','','0','0','shops_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141143_r4drz.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('556','','0','0','shops_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141103_rpuaq.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"230\";s:6:\"height\";s:2:\"80\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('557','','0','0','shops_ad5','code','0','	<div class=\"list\"><a href=\"#\">�ñ����׶�԰��ʼ������</a><span>�����Ż�</span></div>\r\n                <div class=\"list\"><a href=\"#\">�����Ҹ��üҽ���:</a><em>010:88888888</em></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('558','','0','0','shops_ad6','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141126_b9tqw.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:2:\"55\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('559','','0','0','shops_a_d1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141115_ci14j.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289458738','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('560','','0','0','shops_a_d2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141129_5prhy.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('561','','0','0','shops_a_d3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141110_oqdpu.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('562','','0','0','shops_a_d4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141131_k3xih.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('563','','0','0','shops_a_d5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111141151_9lauy.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('564','','0','0','shops_a_d6','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151112_vin0e.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('565','','0','0','shops_a_d7','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151133_53hvd.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('566','','0','0','shops_a_d8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151150_avkih.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('567','','0','0','shops_a_d9','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151107_s9khw.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('568','','0','0','shops_a_d10','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111151123_lxocu.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:2:\"90\";s:6:\"height\";s:2:\"35\";}','a:3:{s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('569','','0','0','shops_pp2','code','0','<a href=\"#\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('570','','0','0','shops_pp1','code','0','<a href=\"#\" class=\"sort choose\"><span>�Ҿ�����</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>������Ʒ</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>��װЬñ</span></a>\r\n                <a href=\"#\" class=\"sort\"><span>�������</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('571','','0','0','shops_pp0','code','0','�̳ǲ�Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('572','','0','0','shops_pv3','code','0','�̳ǹ���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('573','','0','0','shops_pv4','code','0','������Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('574','','0','0','shops_pcv2','code','0','����֮��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('575','','0','0','shops_pcv3','code','0','�Ƽ���Ʒ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('576','','0','0','down_ad1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191127_zgile.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"710\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"707\";s:5:\"div_h\";s:2:\"69\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475404','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('577','','0','0','down_ad2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191154_ykdyp.jpg\";s:7:\"imglink\";s:21:\"http://www.1gftp.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"267\";s:5:\"div_h\";s:2:\"68\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292643191','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('578','','0','0','down_ad3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191142_bnynf.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"710\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"708\";s:5:\"div_h\";s:2:\"88\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475569','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('579','','0','0','down_ad4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191109_shrig.gif\";s:7:\"imglink\";s:21:\"http://www.zwidc.com/\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"90\";}','a:3:{s:5:\"div_w\";s:3:\"268\";s:5:\"div_h\";s:2:\"89\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1292643722','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('580','','0','0','down_ad5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111191153_sdera.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:2:\"85\";}','a:3:{s:5:\"div_w\";s:3:\"270\";s:5:\"div_h\";s:2:\"84\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289475675','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('581','','0','0','down_t1','article','1','a:32:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289479954','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('582','','0','0','down_t2','article','1','a:32:{s:13:\"tplpart_1code\";s:181:\"<div class=\"list l$i\"><a href=\"$list_url\" class=\"sort\" target=\"_blank\" >[{$fname}]</a><a href=\"$url\" class=\"title\" target=\"_blank\" >$title</a><span>{$time_m}-{$time_d} </span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"11\";s:3:\"sql\";s:105:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 11 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289480150','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('583','','0','0','down_t3','article','1','a:32:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list l$i\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289480275','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('584','','0','0','down_t4','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289480863','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('585','','0','0','down_t5','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:104:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'101\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"34\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('586','','0','0','down_b1','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"12\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (12)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481170','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('587','','0','0','down_b2','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:3:\"101\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"26\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (26)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481175','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('588','','0','0','down_b3','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"27\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (27)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"42\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481159','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('589','','0','0','down_b4','article','1','a:32:{s:13:\"tplpart_1code\";s:87:\"<div class=\"list\"><a href=\"$url\" target=\"_blank\">$title</a><span>{$hits}��</span></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";s:2:\"40\";s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:106:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.fid IN (40)   ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('590','','0','0','down_c4','code','0','<a href=\"list.php?fid=40\" target=\"_blank\">����..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('591','','0','0','down_c3','code','0','<a href=\"list.php?fid=27\" target=\"_blank\">����..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('592','','0','0','down_c2','code','0','<a href=\"list.php?fid=26\" target=\"_blank\">����..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('593','','0','0','down_c1','code','0','<a href=\"list.php?fid=12\" target=\"_blank\">����..</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('594','','0','0','down_bv1','code','0','��վ����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('595','','0','0','down_bv2','code','0','װ������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('596','','0','0','down_bv3','code','0','�칫����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('597','','0','0','down_bv4','code','0','ɱ������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('598','','0','0','down_a4','code','0','���¸���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('599','','0','0','down_a3','code','0','���հ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481643','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('600','','0','0','down_a2','code','0','�����Ƽ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('601','','0','0','down_a1','code','0','װ���Ƽ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('602','','0','0','down_d2','code','0','�����Ƽ�����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('603','','0','0','down_dp2','code','0','<a href=\"#\">����Դ��</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('604','','0','0','down_t3v','code','0','<div>���ո�������:<span>5</span>�� ��������:<span>1</span>��</div>\r\n                <div>������������:<em>651</em>�� ����������:<em>103</em>��</div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289481879','2','0','0','0','default');
INSERT INTO `pp_label` VALUES ('605','','0','0','w8_ad','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101111211144_j117r.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"990\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"987\";s:5:\"div_h\";s:2:\"67\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1289482282','0','27','0','0','default');
INSERT INTO `pp_label` VALUES ('606','','1','99','head_search','code','0','<a href=\"http://www_qibosoft_com/do/search.php?keyword=�벩CMS\" class=\"b\">�벩CMS</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=ע������\" target=\"_blank\">ע������</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=CEO\" target=\"_blank\">CEO</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=Դ������\" target=\"_blank\">Դ������</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=IT��Ѷ\" target=\"_blank\">IT��Ѷ</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=�����ռ�\" target=\"_blank\">�����ռ�</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=��վ�ֲ�\" class=\"b\" target=\"_blank\">��վ�ֲ�</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=��̳����\" target=\"_blank\">��̳����</a> \r\n        <a href=\"http://www_qibosoft_com/do/search.php?keyword=������ѯ\" class=\"b\" target=\"_blank\">������ѯ</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"617\";s:5:\"div_h\";s:2:\"32\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291859716','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('607','','0','0','special_sport_1','code','0','<a href=\"#\">�����ղ�</a> | <a href=\"#\">��Ϊ��ҳ</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"113\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290131646','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('608','','0','0','special_sport_2','code','0','<a href=\"#\">��������</a> | <a href=\"#\">��������</a> | <a href=\"#\">��������</a> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"191\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290131639','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('609','','0','0','special_sport_3','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101119091126_q0kjm.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"160\";}','a:3:{s:5:\"div_w\";s:3:\"961\";s:5:\"div_h\";s:3:\"159\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290137907','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('610','','0','0','special_sport_4','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"306\";s:6:\"height\";s:3:\"262\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101119101151_gvdry.jpg\";i:2;s:32:\"label/1_20101119101155_mqgga.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"310\";s:5:\"div_h\";s:3:\"262\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132179','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('611','','0','0','special_sport_5','swf','0','a:3:{s:8:\"flashurl\";s:58:\"http://player.youku.com/player.php/sid/XOTk1OTE2NjQ=/v.swf\";s:5:\"width\";s:3:\"305\";s:6:\"height\";s:3:\"275\";}','a:3:{s:5:\"div_w\";s:3:\"302\";s:5:\"div_h\";s:3:\"271\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132344','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('612','','0','0','special_sport_6','code','0','ϣ��˹���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('613','','0','0','special_sport_7','code','0','<table width=\"96%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"right_content1\">\r\n					  <tr>\r\n						<td width=\"45%\"><img src=\"http://www_qibosoft_com/images/special/sports/tiyu_photo3.gif\" width=\"100\" height=\"80\" /></td>\r\n					    <td width=\"55%\">ϣ��˹����Ϊ�����ɫ�ı�����ѡ�֣������ļ���ʹ���õ����20���������ھ�...[<a href=\"#\">��ϸ</a>]</td>\r\n					  </tr>\r\n					 </table>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"243\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132645','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('614','','0','0','special_sport_8','code','0','����ý��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('615','','0','0','special_sport_9','code','0','<img src=\"http://www_qibosoft_com/images/special/sports/tiyu_photo4.gif\" width=\"166\" height=\"78\" /><br />�Ϻ����¥���̶��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"187\";s:5:\"div_h\";s:3:\"104\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132805','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('616','','0','0','special_sport_10','code','0','���ѵ���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('617','','0','0','special_sport_11','code','0','<table width=\"96%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"right_content1 tiyu_top\">\r\n					  <tr>\r\n						<td id=\"vote_title\">���ϣ��˹����������������ô��?</td>\r\n				      </tr>\r\n					  <tr>\r\n						<td class=\"vote_cont\">\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> ������,ϣ��˹������˵��°ܻ�</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> ������,˹ŵ������Ҳ���Ǹɾ�����</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> ������,ϣ��˹��������ô��</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> ����,��Աȷʵ�⿿�����������Լ�</span>\r\n							<span><input type=\"radio\" name=\"radiobutton\" value=\"radiobutton\" /> ˵���壬����̬��չ��</span>\r\n						</td>\r\n				      </tr>\r\n				  </table>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"245\";s:5:\"div_h\";s:3:\"210\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290132887','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('618','','0','0','special_sport_12','code','0','<font face=\"����\"><a href=\"#\" >ϣ��˹ϴ�Ѷ�����</a> <a href=\"#\">����6���·�75000Ӣ��</a></font>\r\n\r\n\r\n ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"367\";s:5:\"div_h\";s:2:\"20\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133123','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('619','','0','0','special_sport_13','code','0','<font face=\"����\"><a href=\"#\" >ϣ��˹������ź�¶��</a> <a href=\"#\">�佱�񵱾ȳ��α�</a></font>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"366\";s:5:\"div_h\";s:2:\"20\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133184','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('620','','0','0','special_sport_14','code','0','<font face=\"����\"><a href=\"#\" >Ӣý��ϣ��˹�ջ�¸������</a> <a href=\"#\">����̨������</a></font> ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"370\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133258','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('621','','0','0','special_sport_15','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div class=\"content_list\">��<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"375\";s:5:\"div_h\";s:3:\"160\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133428','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('622','','0','0','special_sport_16','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div class=\"content_list\">��<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"373\";s:5:\"div_h\";s:3:\"163\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133420','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('623','','0','0','special_sport_17','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div class=\"content_list\">��<a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"50\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"375\";s:5:\"div_h\";s:3:\"108\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133507','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('624','','0','0','special_sport_18','article','1','a:32:{s:13:\"tplpart_1code\";s:235:\"<div class=\"photo_list\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"160\" height=\"110\" border=\"0\" /></a><br />\r\n  <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"925\";s:5:\"div_h\";s:3:\"134\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133716','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('625','','0','0','special_sport_19','code','0','ϣ��˹�ݶ������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"127\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290133781','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('626','','0','0','special_sport_20','code','0','���½�չ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('627','','0','0','special_sport_21','code','0','��������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('628','','0','0','special_sport_22','article','1','a:32:{s:13:\"tplpart_1code\";s:194:\"<div class=\"content_list\"><span>��[<a href=\"$list_url\" target=\"_blank\">$fname</a>]<a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                    <font>{$time_m}��{$time_d}��</font></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"468\";s:5:\"div_h\";s:3:\"466\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290134230','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('629','','0','0','special_sport_23','article','1','a:32:{s:13:\"tplpart_1code\";s:194:\"<div class=\"content_list\"><span>��[<a href=\"$list_url\" target=\"_blank\">$fname</a>]<a href=\"$url\" target=\"_blank\">$title</a></span> \r\n                    <font>{$time_m}��{$time_d}��</font></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"15\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 15 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"468\";s:5:\"div_h\";s:3:\"450\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290134248','11','0','19','0','default');
INSERT INTO `pp_label` VALUES ('631','','0','0','special_car_1','code','0','�����ղ� | ��Ϊ��ҳ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"147\";s:5:\"div_h\";s:2:\"20\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150121','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('632','','0','0','special_car_2','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101119151121_pnoj5.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:4:\"1014\";s:6:\"height\";s:3:\"166\";}','a:3:{s:5:\"div_w\";s:4:\"1008\";s:5:\"div_h\";s:3:\"153\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150338','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('633','','0','0','special_car_3','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"346\";s:6:\"height\";s:3:\"250\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101119151138_usu7n.jpg\";i:2;s:32:\"label/1_20101119151145_ysl0g.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"180\";s:5:\"div_h\";s:3:\"253\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150658','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('634','','0','0','special_car_4','swf','0','a:3:{s:8:\"flashurl\";s:58:\"http://player.youku.com/player.php/sid/XMjE3NjczMDQ0/v.swf\";s:5:\"width\";s:3:\"344\";s:6:\"height\";s:3:\"256\";}','a:3:{s:5:\"div_w\";s:3:\"172\";s:5:\"div_h\";s:3:\"257\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150893','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('635','','0','0','special_car_5','code','0','�µ�A3���౱����չ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"154\";s:5:\"div_h\";s:2:\"17\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290150943','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('636','','0','0','special_car_6','code','0','<a href=\"#\"><span class=\"STYLE1\">[�µ�A3Ƶ��]</span></a> <a href=\"#\"><span class=\"STYLE1\">[ʵ�ʳ�չ]</span></a> \r\n                  <a href=\"#\"><span class=\"STYLE1\">[�µϳ��ѻ�]</span></a> <a href=\"#\"><span class=\"STYLE1\">[΢�����۰µ�A3]</span></a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"339\";s:5:\"div_h\";s:2:\"16\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290152789','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('637','','0','0','special_car_7','article','1','a:32:{s:13:\"tplpart_1code\";s:300:\"<div class=\"Calign\"> \r\n                <div class=\"Text\"> <span><a href=\"$url\" target=\"_blank\">$title</a></span></div>\r\n                <div class=\"line_ys\"> <span style=\"text-indent:20px;\">$content<a href=\"$url\" style=\"color:#98122A;\">[ȫ��]</a></span></div>\r\n                 \r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"160\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"370\";s:5:\"div_h\";s:3:\"207\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290152800','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('638','','0','0','special_car_8','article','1','a:32:{s:13:\"tplpart_1code\";s:55:\" <div><a href=\"$url\" target=\"_blank\">$title</a> </div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"347\";s:5:\"div_h\";s:3:\"139\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153186','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('639','','0','0','special_car_9','code','0','�Լݰµ�A3','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('640','','0','0','special_car_10','article','1','a:32:{s:13:\"tplpart_1code\";s:653:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                  <tr> \r\n                    <td class=\"Czhouju\"> \r\n                      <div class=\"L left_tu\"><a href=\"$url\" target=\"_blank\"><img width=\'95\' height=\'64\' src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" /></a></div>\r\n                      <div class=\"L right_zi\"> <a href=\"$url\" style=\"color:#004276;\" target=\"_blank\">$title</a><br>\r\n                        $content<span href=\"$url\" style=\"color:#98122A;\">[��ϸ]</span><br>\r\n                      </div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:193:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"363\";s:5:\"div_h\";s:3:\"248\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153177','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('641','','0','0','special_car_11','code','0','�µ�A3����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('642','','0','0','special_car_12','article','1','a:32:{s:13:\"tplpart_1code\";s:56:\"<div><a href=\"$url\" target=\"_blank\">$title</a> </div>   \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"352\";s:5:\"div_h\";s:3:\"137\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153283','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('643','','0','0','special_car_13','article','1','a:32:{s:13:\"tplpart_1code\";s:595:\"<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                  <tr> \r\n                    <td class=\"Czhouju\"> \r\n                      <div class=\"L left_tu\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"80\" height=\"60\" /></div>\r\n                      <div class=\"L right_zi\"> <a href=\"$url\" target=\"_blank\" style=\"color:#004276;\">$title</a><br>����$content<a href=\"$url\" target=\"_blank\" style=\"color:#98122A;\">[ȫ��]</a><br>\r\n                      </div>\r\n                    </td>\r\n                  </tr>\r\n                </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"2\";s:3:\"sql\";s:192:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list ASC LIMIT 2 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"70\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"355\";s:5:\"div_h\";s:3:\"174\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153735','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('644','','0','0','special_car_14','code','0','�µ�A3����ָ���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('645','','0','0','special_car_15','code','0','<li>\r\n                            <div class=\"PA10\">1.4T���ʰ�<span>26.8��</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class=\"CALIGN_C2\">1.4T���ʰ�<span>26.8��</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class=\"PA10\">1.4T���ʰ�<span>26.8��</span></div>\r\n                          </li>\r\n                          <li>\r\n                            <div class=\"CALIGN_C2\">1.4T���ʰ�<span>26.8��</span></div>\r\n                          </li>\r\n                          <li class=\"CANSHU\">���������೵�Ͳ�������>></li>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"207\";s:5:\"div_h\";s:3:\"140\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153727','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('646','','0','0','special_car_16','code','0','�Ƽ�ָ��<span>4</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"118\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153782','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('647','','0','0','special_car_17','code','0','<img src=\"http://www_qibosoft_com/images/special/car/c5.gif\" /> <img src=\"http://www_qibosoft_com/images/special/car/c5.gif\" /> \r\n                        <img src=\"http://www_qibosoft_com/images/special/car/c5.gif\" /> <img src=\"http://www_qibosoft_com/images/special/car/c5.gif\" /> \r\n                        <img src=\"http://www_qibosoft_com/images/special/car/c6.gif\" />','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"212\";s:5:\"div_h\";s:2:\"34\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153844','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('648','','0','0','special_car_18','code','0','΢������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('649','','0','0','special_car_19','code','0','�ߵ����еľ�ƷС���µ�A3<br>\r\n                        �ܷ�Ӯ���й��г������ߵ��Ͽɣ�<br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"178\";s:5:\"div_h\";s:2:\"48\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290153966','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('650','','0','0','special_car_20','code','0','����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('651','','0','0','special_car_21','code','0','1.����ο����µ�A3��<br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"��ѡ\" />\r\n                        ��Ʒ��ʱ���³�</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"��ѡ\" />\r\n                        ��һ��һ�ڳ���Ϯ</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"��ѡ\" />\r\n                        ��߶���ͬƽ̨���ۼ۽ϸ�</label><br>\r\n                        <div style=\"margin-top:5px;\">2.����Ϊ�µϵ�����������ǣ�</div>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"��ѡ\" />\r\n                        MINI Cper</label> <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"��ѡ\" />\r\n                        �ֶ���C30</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"��ѡ\" />\r\n                        �߶��� GTI</label> <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"��ѡ\" />\r\n                        ����1ϵ</label><br>\r\n                        <label>\r\n                        <input type=\"radio\" name=\"RadioGroup1\" value=\"��ѡ\" />\r\n                        ����B��</label><br />\r\n                        <div style=\"margin:7px;\"> \r\n                          <input type=\"button\" value=\"�ύ\" />\r\n                          <input type=\"button\" value=\"�鿴\" />\r\n                        </div>\r\n                      ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"210\";s:5:\"div_h\";s:3:\"197\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154073','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('652','','0','0','special_car_22','code','0','���ѻ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('653','','0','0','special_car_23','article','1','a:32:{s:13:\"tplpart_1code\";s:49:\"��<A HREF=\"$url\" target=\'_blank\'  >$title</a><br>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:24:\"/common_title/0title.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"223\";s:5:\"div_h\";s:2:\"90\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154543','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('654','','0','0','special_car_24','article','1','a:32:{s:13:\"tplpart_1code\";s:304:\"<div class=\"hpic\">\r\n          <div class=\"auto_08\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\'150\' height=\'99\' onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" /></a></div>\r\n          <div class=\"SHIPAI\"><a href=\"$ur\" target=\"_blank\">$title</a></div>\r\n        </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:133:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"988\";s:5:\"div_h\";s:3:\"325\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154534','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('655','','0','0','special_car_25','article','1','a:32:{s:13:\"tplpart_1code\";s:298:\"<div class=\"spic\">\r\n        <div class=\"auto_08\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" width=\'150\' height=\'99\' onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" /></a></div>\r\n        <div class=\"SHIPAI\"><a href=\"$ur\" target=\"_blank\">$title</a></div>\r\n      </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 4 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"26\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"350\";s:5:\"div_h\";s:3:\"320\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154525','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('656','','0','0','special_car_26','code','0','�µ�A3ʵ��ͼ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('657','','0','0','special_car_27','code','0','�µ����۳��͵ģ����֣�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('658','','0','0','special_car_28','code','0','������������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('659','','0','0','special_car_29','article','1','a:32:{s:13:\"tplpart_1code\";s:53:\"<div><a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"13\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 13 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"326\";s:5:\"div_h\";s:3:\"312\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154677','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('660','','0','0','special_car_30','code','0','�������г���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('661','','0','0','special_car_31','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101119161159_20k4y.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"240\";s:6:\"height\";s:3:\"130\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"127\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154756','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('662','','0','0','special_car_32','article','1','a:32:{s:13:\"tplpart_1code\";s:48:\" ��<a href=\"$url\" target=\"_blank\">$title</a><br>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"36\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"243\";s:5:\"div_h\";s:3:\"175\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290154845','11','0','22','0','default');
INSERT INTO `pp_label` VALUES ('663','','0','0','special_finance_1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122151143_g4zey.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"960\";s:6:\"height\";s:3:\"150\";}','a:3:{s:5:\"div_w\";s:3:\"958\";s:5:\"div_h\";s:3:\"149\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290409679','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('664','','0','0','special_finance_2','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"298\";s:6:\"height\";s:3:\"261\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101122151110_kzqtx.jpg\";i:2;s:32:\"label/1_20101122151126_jorrb.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"294\";s:5:\"div_h\";s:3:\"257\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290411221','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('665','','0','0','special_finance_3','article','1','a:32:{s:13:\"tplpart_1code\";s:153:\"<div class=\"diao_bt\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n            <div class=\"yy\">$content<a href=\"$url\" target=\"_blank\">[��ϸ]</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"120\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"358\";s:5:\"div_h\";s:2:\"85\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290411923','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('666','','0','0','special_finance_4','article','1','a:32:{s:13:\"tplpart_1code\";s:129:\"<p><a href=\"$url\" target=\"_blank\">��{$title}</a> <span style=\"color:#727171;padding-left:10px;\">({$time_m}-{$time_d})</span> </p>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"8\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 8 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"380\";s:5:\"div_h\";s:3:\"218\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414223','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('667','','0','0','special_finance_5','article','1','a:32:{s:13:\"tplpart_1code\";s:129:\"<p><a href=\"$url\" target=\"_blank\">��{$title}</a> <span style=\"color:#727171;padding-left:10px;\">({$time_m}-{$time_d})</span> </p>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"9\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 9 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"385\";s:5:\"div_h\";s:3:\"234\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414238','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('668','','0','0','special_finance_6','article','1','a:32:{s:13:\"tplpart_1code\";s:75:\"<div><b><a href=\"$url\" target=\"_blank\">$title</a></b><br>\r\n��$content</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"28\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"205\";s:5:\"div_h\";s:3:\"405\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414247','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('669','','0','0','special_finance_7','article','1','a:32:{s:13:\"tplpart_1code\";s:67:\" <div class=\"al1\"><a href=\"$url\" target=\"_blank\">��$title</a></div>\";s:13:\"tplpart_2code\";s:421:\"<div style=\"width:100%;margin:7px\"> \r\n              <div class=\"al\"><a href=\"$url\" target=\"_blank\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"90\" height=\"65\" border=\"0\" /></a></div>\r\n              <div  class=\"sm\"> \r\n                <p><span style=\"font-weight:bold;\">$title</span></p>\r\n                <p>��$content</p>\r\n              </div>\r\n            </div> \r\n           \";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:24:\"/common_zh_pic/zh_pc.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 8 \";s:4:\"sql2\";s:175:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1 AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:2:\"60\";s:8:\"titlenum\";s:2:\"38\";s:9:\"titlenum2\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"304\";s:5:\"div_h\";s:3:\"303\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414230','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('670','','0','0','special_finance_8','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122161156_ehzhv.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"354\";s:6:\"height\";s:3:\"120\";}','a:3:{s:5:\"div_w\";s:3:\"354\";s:5:\"div_h\";s:3:\"119\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414265','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('671','','0','0','special_finance_9','article','1','a:32:{s:13:\"tplpart_1code\";s:424:\"<div class=\"ren_h\">\r\n                <div class=\"at\"><img src=\"$webdb[www_url]/images/special/finance/finace_3.jpg\" width=\"15\" height=\"16\" /></div>\r\n                <div class=\"ab\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n              </div>\r\n              <div class=\"ren_by\"> \r\n                \r\n  <p>{$content} <a href=\"$url\" target=\"_blank\"><font color=\"#990000\">[����]</font></a> \r\n  </p>\r\n              </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"1\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 1 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"270\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"553\";s:5:\"div_h\";s:3:\"144\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414255','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('672','','0','0','special_finance_10','article','1','a:32:{s:13:\"tplpart_1code\";s:165:\"  <div><span style=\"float:left;\"><a href=\"$url\" target=\"_blank\">��$title</a></span><span style=\"float:right;\">({$time_m} -{$time_d})</span><br />\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"459\";s:5:\"div_h\";s:3:\"320\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290413983','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('673','','0','0','special_finance_11','article','1','a:32:{s:13:\"tplpart_1code\";s:165:\"  <div><span style=\"float:left;\"><a href=\"$url\" target=\"_blank\">��$title</a></span><span style=\"float:right;\">({$time_m} -{$time_d})</span><br />\r\n            </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"371\";s:5:\"div_h\";s:3:\"306\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290413975','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('674','','0','0','special_finance_12','code','0','��������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('675','','0','0','special_finance_19','code','0','��������Ҫ����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('676','','0','0','special_finance_20','code','0','��ر���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('677','','0','0','special_finance_21','code','0','���±���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('678','','0','0','special_finance_22','code','0','׷�ٱ���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('679','','0','0','special_finance_23','code','0','��Ĵ��¼�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('680','','0','0','special_finance_24','code','0','��Ԫ�����������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('681','','0','0','special_finance_25','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122161134_anvod.jpg\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"211\";s:6:\"height\";s:3:\"133\";}','a:3:{s:5:\"div_w\";s:3:\"213\";s:5:\"div_h\";s:3:\"129\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290414346','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('682','','0','0','special_finance_28','code','0','admin@qibosoft.com','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','21','0','default');
INSERT INTO `pp_label` VALUES ('683','','0','0','special_sp1_1','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101122161145_th99u.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"950\";s:6:\"height\";s:3:\"150\";}','a:3:{s:5:\"div_w\";s:3:\"948\";s:5:\"div_h\";s:3:\"149\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416100','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('684','','0','0','special_sp1_2','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"220\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101122161104_gaaxz.jpg\";i:2;s:32:\"label/1_20101122161110_yoshc.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"147\";s:5:\"div_h\";s:3:\"219\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416339','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('685','','0','0','special_sp1_3','swf','0','a:3:{s:8:\"flashurl\";s:58:\"http://player.youku.com/player.php/sid/XMjIxMTM5MTMy/v.swf\";s:5:\"width\";s:3:\"301\";s:6:\"height\";s:3:\"261\";}','a:3:{s:5:\"div_w\";s:3:\"164\";s:5:\"div_h\";s:3:\"268\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416435','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('686','','0','0','special_sp1_4','code','0','<table width=\"95%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:23px;\">\r\n					  <tr>\r\n						\r\n                      <td width=\"39%\"><img src=\"http://i1.sinaimg.cn/dy/2010/0512/S11612T1273624471182.jpg\" width=82 height=98/></td>\r\n					    <td width=\"61%\">\r\n							<div class=\"Cor3\"><a href=\"#\">�Ӳ���������������</a></div>\r\n							<div class=\"TEXT\">������᣺��Ϊ�����������Ῠ÷����ѭ����켣������˽��Сѧ�����ٹ�ѧ��ţ���ѧ��\r\n</div>\r\n						</td>\r\n					  </tr>\r\n				  </table>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"237\";s:5:\"div_h\";s:3:\"106\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416780','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('687','','0','0','special_sp1_5','code','0','<div class=\"TANGBIAOT\">\r\n					   <a href=\"#\" style=\"font-weight:bold;\">��̳���ǣ�</a>\r\n					 <a href=\"#\">2005�꿨÷���ڼ������˿��õ�����£��Գ�ɫ�Ŀ��£��Գ�ɫ�Ŀ��£��Գ�ɫ�ĳɹ���ѡ�����£��Գ�ɫ���£��Գ�ɫ�ĵ��ص����ס�</a></div>\r\n					<div class=\"TANGBIAOT\">\r\n					  <a href=\"#\" style=\"font-weight:bold;\">������</a>\r\n				  <a href=\"#\">��÷���ԡ����ĿںŴ���ѡ���ڹ����쵼�����⻼֮�£��������뿴�������ɾ��ǡ�����</a> </div>\r\n					<div class=\"TANGBIAOT\">\r\n					  <a href=\"#\" style=\"font-weight:bold;\">�������⣺</a>\r\n				  <a href=\"#\">��÷�׳ƽ��ؽ����ڶ����ε����Σ������ʵ��Ŀ�ؽ����ڶ����ε����Σ������ʵ����Ȼ�д��۲졣</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"248\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290416775','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('688','','0','0','special_sp1_9','article','1','a:32:{s:13:\"tplpart_1code\";s:237:\"<div class=\"photo_list\">    \r\n<a href=\"$url\" target=\"_blank\">\r\n<img width=\"164\" height=\"123\" src=\"$picurl\" border=0 onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" /></a>\r\n\r\n<a href=\"$url\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"5\";s:3:\"sql\";s:132:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"20\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"904\";s:5:\"div_h\";s:3:\"153\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476968','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('689','','0','0','special_sp1_10','article','1','a:32:{s:13:\"tplpart_1code\";s:571:\"<table width=\"96%\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" class=\"right_content1\">\r\n					  <tr>\r\n						\r\n                <td width=\"37%\"><a href=\"$url\" target=\"_blank\">\r\n				<img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" border=\"0\" width=\"100\" height=\"68\" /></a></td>\r\n					    \r\n                <td width=\"63%\"><a href=\"$url\" style=\"color:#1F4363;\" target=\"_blank\">$title</a> \r\n                  <div style=\"color:#6A6A6A;\">��$content  [<a href=\"$url\" target=\"_blank\">��ϸ</a>]</div></td>\r\n					  </tr>\r\n					 </table>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:33:\"/common_pic/title_pic_content.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:2:\"cp\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:193:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'  AND A.ispic=1   AND A.ispic=1  AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"50\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"310\";s:5:\"div_h\";s:3:\"229\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476975','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('690','','0','0','special_sp1_11','article','1','a:32:{s:13:\"tplpart_1code\";s:71:\"<div class=\"Lianjie\">�� <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:103:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 10 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"351\";s:5:\"div_h\";s:3:\"326\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476984','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('691','','0','0','special_sp1_12','article','1','a:32:{s:13:\"tplpart_1code\";s:176:\"<div class=\"Tbiaoti\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n		\r\n<div class=\"xwzi\">{$content} <a href=\"$url\" target=\"_blank\" style=\"color:#990000;\">  [����] </a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:162:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list ASC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:3:\"100\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"236\";s:5:\"div_h\";s:3:\"232\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476992','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('692','','0','0','special_sp1_13','article','1','a:32:{s:13:\"tplpart_1code\";s:72:\" <div class=\"Lianjie\">�� <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"7\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 7 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"46\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"360\";s:5:\"div_h\";s:3:\"190\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476960','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('693','','0','0','special_sp1_14','article','1','a:32:{s:13:\"tplpart_1code\";s:72:\" <div class=\"Lianjie\">�� <a href=\"$url\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:3:\"ASC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:101:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list ASC LIMIT 6 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"359\";s:5:\"div_h\";s:3:\"162\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476946','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('694','','0','0','special_sp1_15','article','1','a:32:{s:13:\"tplpart_1code\";s:72:\"<div class=\"BJ_ljie\">�� <a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:73:\"<div class=\"BIAOTI\"><a href=\"$url\" target=\"_blank\">$title</a></div>\r\n				\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:32:\"/common_zh_title/zh_bigtitle.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"t\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 5 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"44\";s:9:\"titlenum2\";s:2:\"32\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"354\";s:5:\"div_h\";s:3:\"196\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476932','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('695','','0','0','special_sp1_16','code','0',' Ӧ����Ժ�����¼ұ����룬���е߼����������������������ά����÷�׽���11��9����10�ն��й�������ʽ���ʡ� ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"330\";s:5:\"div_h\";s:2:\"43\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476395','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('696','','0','0','special_sp1_17','article','1','a:32:{s:13:\"tplpart_1code\";s:102:\"<a href=\"$url\" target=\"blank\" class=\"t\" style=\"color:#013979;\">$title</a> \r\n						<div>$content </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:29:\"/common_content/content_1.jpg\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"c\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:163:\" SELECT A.*,A.aid AS id,R.content FROM pp_article A LEFT JOIN pp_reply R ON A.aid=R.aid   WHERE A.yz=1  AND A.mid=\'0\'   AND R.topic=1 ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"60\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"30\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"235\";s:5:\"div_h\";s:3:\"186\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476939','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('697','','0','0','special_sp1_18','article','1','a:32:{s:13:\"tplpart_1code\";s:72:\"<div class=\"BJ_ljie\">�� <a href=\"$url\" target=\"_blank\">$title</a></div> \";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"artcile\";s:13:\"RollStyleType\";s:0:\"\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:3:\"100\";s:7:\"amodule\";s:1:\"0\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:1:\"1\";s:7:\"hidefid\";N;s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:6:\"A.list\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"3\";s:3:\"sql\";s:102:\" SELECT A.*,A.aid AS id FROM pp_article A  WHERE A.yz=1  AND A.mid=\'0\'   ORDER BY A.list DESC LIMIT 3 \";s:4:\"sql2\";N;s:7:\"colspan\";s:1:\"1\";s:11:\"content_num\";s:2:\"80\";s:12:\"content_num2\";s:3:\"120\";s:8:\"titlenum\";s:2:\"40\";s:9:\"titlenum2\";s:2:\"40\";s:10:\"titleflood\";s:1:\"0\";s:10:\"c_rolltype\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"310\";s:5:\"div_h\";s:3:\"108\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1290476954','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('698','','0','0','special_sp1_19','code','0','�û��г�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('699','','0','0','special_sp1_20','code','0','�۽�Ӣ�����࿨÷��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('700','','0','0','special_sp1_21','code','0','ͼƬ����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('701','','0','0','special_sp1_22','code','0','ͼ�ı���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('702','','0','0','special_sp1_23','code','0','ʱ��׷��','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('703','','0','0','special_sp1_24','code','0','������','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('704','','0','0','special_sp1_25','code','0','������Ϣ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('705','','0','0','special_sp1_26','code','0','�༭�Ƽ�','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','11','0','20','0','default');
INSERT INTO `pp_label` VALUES ('706','','0','0','hy_1','rollpic','0','a:6:{s:8:\"rolltype\";s:1:\"0\";s:5:\"width\";s:3:\"470\";s:6:\"height\";s:3:\"185\";s:6:\"picurl\";a:2:{i:1;s:32:\"label/1_20101205111206_kttht.jpg\";i:2;s:32:\"label/1_20101205111212_fjnu8.jpg\";}s:7:\"piclink\";a:2:{i:1;s:1:\"#\";i:2;s:1:\"#\";}s:6:\"picalt\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}}','a:3:{s:5:\"div_w\";s:3:\"467\";s:5:\"div_h\";s:3:\"185\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291518928','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('707','','0','0','hy_2','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:91:\"<div class=\"list\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a></div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"6\";s:3:\"sql\";s:64:\"SELECT * FROM pp_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 6 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"240\";s:5:\"div_h\";s:3:\"139\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291709105','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('708','','0','0','hy_3','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:93:\"<div class=\"list\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"18\";s:3:\"sql\";s:65:\"SELECT * FROM pp_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 18 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"720\";s:5:\"div_h\";s:3:\"141\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291709113','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('709','','0','0','hy_4','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101205111241_4shk3.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"730\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"732\";s:5:\"div_h\";s:2:\"70\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291519747','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('710','','0','0','hy_5','pic','0','a:4:{s:6:\"imgurl\";s:32:\"label/1_20101205111239_s46xf.gif\";s:7:\"imglink\";s:1:\"#\";s:5:\"width\";s:3:\"250\";s:6:\"height\";s:2:\"70\";}','a:3:{s:5:\"div_w\";s:3:\"249\";s:5:\"div_h\";s:2:\"69\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291519795','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('711','','0','0','hy_6','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:99:\"	<div class=\"listmun$i\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:65:\"SELECT * FROM pp_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"236\";s:5:\"div_h\";s:3:\"250\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291709135','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('712','','0','0','hy_7','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:99:\"	<div class=\"listmun$i\"><a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n</div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"4\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:2:\"10\";s:3:\"sql\";s:65:\"SELECT * FROM pp_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 10 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"30\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"241\";s:5:\"div_h\";s:3:\"249\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291709124','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('713','','0','0','hy_10','Info_hy_','1','a:28:{s:13:\"tplpart_1code\";s:330:\"<div class=\"list$i\">\r\n                	<a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\" class=\"img\"><img src=\"$picurl\" onerror=\"this.src=\'$webdb[www_url]/images/default/nopic.jpg\'\" width=\"100\" height=\"35\" /></a>\r\n                <a href=\"$webdb[www_url]/home/?uid=$uid\" target=\"_blank\">$title</a>\r\n\r\n                </div>\";s:13:\"tplpart_2code\";s:0:\"\";s:3:\"SYS\";s:7:\"company\";s:7:\"typefid\";N;s:5:\"width\";s:3:\"250\";s:6:\"height\";s:3:\"187\";s:8:\"rolltype\";s:10:\"scrollLeft\";s:8:\"rolltime\";s:1:\"3\";s:11:\"roll_height\";s:2:\"50\";s:11:\"content_num\";s:2:\"80\";s:7:\"newhour\";s:2:\"24\";s:7:\"hothits\";s:2:\"30\";s:7:\"tplpath\";s:0:\"\";s:6:\"DivTpl\";i:1;s:5:\"fiddb\";N;s:8:\"moduleid\";N;s:5:\"stype\";s:1:\"p\";s:2:\"yz\";s:3:\"all\";s:8:\"renzheng\";s:3:\"all\";s:10:\"timeformat\";s:11:\"Y-m-d H:i:s\";s:5:\"order\";s:3:\"rid\";s:3:\"asc\";s:4:\"DESC\";s:6:\"levels\";s:3:\"all\";s:7:\"rowspan\";s:1:\"4\";s:3:\"sql\";s:64:\"SELECT * FROM pp_hy_company  WHERE 1  ORDER BY rid DESC LIMIT 4 \";s:7:\"colspan\";s:1:\"1\";s:8:\"titlenum\";s:2:\"18\";s:10:\"titleflood\";s:1:\"0\";}','a:3:{s:5:\"div_w\";s:3:\"244\";s:5:\"div_h\";s:3:\"141\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291709129','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('714','','0','0','hy_a5','code','0','<a href=\"#\" target=\"_blank\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('715','','0','0','hy_a3','code','0','<a href=\"#\" target=\"_blank\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('716','','0','0','hy_a2','code','0','<a href=\"#\" target=\"_blank\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('717','','0','0','hy_a1','code','0','<a href=\"#\" target=\"_blank\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('718','','0','0','hy_a4','code','0','<a href=\"#\" target=\"_blank\">����...</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('719','','0','0','hy_b4','code','0','���¼���','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('720','','0','0','hy_b3','code','0','�½���ҵ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('721','','0','0','hy_b1','code','0','�Ƽ���ҵ','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"78\";s:5:\"div_h\";s:2:\"32\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291520936','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('722','','0','0','hy_b7','code','0','���Ź�˾','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('723','','0','0','hy_c1','code','0','	<div class=\"h\"><a href=\"#\" target=\"_blank\">ΪʲôҪ������ƻ�Ա?</a></div>\r\n                    <div class=\"l\">| <a href=\"#\" target=\"_blank\">���ƻ�Ա��ͨ����</a></div>\r\n                    <div class=\"l\">| <a href=\"#\" target=\"_blank\">�������뿪ͨ���ƻ�Ա</a></div>\r\n                    <div class=\"l\">| <a href=\"#\" target=\"_blank\">���ƻ�Ա�������</a></div>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:3:\"239\";s:5:\"div_h\";s:2:\"97\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291520874','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('724','','0','0','hy_c2','code','0','<a href=\"#\" target=\"_blank\">��ô��Ϊ����?</a>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"81\";s:5:\"div_h\";s:2:\"34\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291520901','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('725','','0','0','hy_c3','code','0','��˾����','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"82\";s:5:\"div_h\";s:2:\"30\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1291520931','0','16','0','0','default');
INSERT INTO `pp_label` VALUES ('726','','1','0','index_t22','code','0','<br><br>������ʾ����,������������������<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('727','','1','0','index_t23','code','0','<br><br>2 ������ʾ����,������������������<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('728','','1','0','index_t24','code','0','<br><br>33������ʾ����,������������������<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('729','','1','0','index_t25','code','0','<br><br>44������ʾ����,������������������<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('730','','1','0','index_j32','code','0','dd<br><br>������ʾ����,������������������<br><br><br><br>dd','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:2:\"50\";s:5:\"div_h\";s:2:\"21\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','1293084023','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('731','','1','0','index_j33','code','0','<br><br>������ʾ����,������������������<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('732','','1','0','index_j34','code','0','d<br><br>������ʾ����,������������������<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('733','','1','0','index_tr12','code','0','1<br><br>������ʾ����,������������������<br><br><br><br>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('734','','1','0','index_tr13','code','0','2<br><br>������ʾ����,������������������<br><br><br><br>2','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('735','','1','0','index_tr14','code','0','3<br><br>������ʾ����,������������������<br><br><br><br>3','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('736','','1','0','index_tr15','code','0','4<br><br>������ʾ����,������������������<br><br><br><br>6','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('737','','1','0','index_trrr1','code','0','<span id=\"Span6\" onmouseover=\"ShowTab(6,6,11)\">����</span>\r\n            <span id=\"Span7\" onmouseover=\"ShowTab(7,6,11)\">ͼƬ</span>\r\n            <span id=\"Span8\" onmouseover=\"ShowTab(8,6,11)\">Ӱ��</span>\r\n            <span id=\"Span9\" onmouseover=\"ShowTab(9,6,11)\">�̳�</span>\r\n            <span id=\"Span10\" onmouseover=\"ShowTab(10,6,11)\">flash</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('738','','1','0','index_bfj3','code','0','<span id=\"Span11\" onmouseover=\"ShowTab(11,11,15)\">��װ</span>\r\n                    <span id=\"Span12\" onmouseover=\"ShowTab(12,11,15)\">����</span>\r\n                    <span id=\"Span13\" onmouseover=\"ShowTab(13,11,15)\">ʳƷ</span>\r\n                    <span id=\"Span14\" onmouseover=\"ShowTab(14,11,15)\">����</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_label` VALUES ('739','','1','0','index_5t2','code','0','	<span id=\"Span1\" onmouseover=\"ShowTab(1,1,6)\">����</span>\r\n            <span id=\"Span2\" onmouseover=\"ShowTab(2,1,6)\">ͼƬ</span>\r\n            <span id=\"Span3\" onmouseover=\"ShowTab(3,1,6)\">Ӱ��</span>\r\n            <span id=\"Span4\" onmouseover=\"ShowTab(4,1,6)\">�̳�</span>\r\n            <span id=\"Span5\" onmouseover=\"ShowTab(5,1,6)\">flash</span>','a:4:{s:9:\"html_edit\";N;s:5:\"div_w\";s:0:\"\";s:5:\"div_h\";s:0:\"\";s:11:\"div_bgcolor\";s:0:\"\";}','0','0','1','admin','0','0','0','0','0','default');
INSERT INTO `pp_limitword` VALUES ('1','�췴','��**');
INSERT INTO `pp_limitword` VALUES ('2','���ֹ�','��**��');
INSERT INTO `pp_memberdata` VALUES ('1','admin','','3','0','','1','0','','9999','999999','0','15285','1363578725','127.0.0.1','1353940733','127.0.0.1','0','0000-00-00','','','3','1354195510','','','','','0','0','','','','','','','','0','0','0','0','','','');
INSERT INTO `pp_memberdata` VALUES ('2','admi@','','8','0','','1','0','','0','0','0','2827','1354112020','127.0.0.1','1354109091','127.0.0.1','0','0000-00-00','','','0','0','','','','','0','0','','','','','','','a:1:{s:7:\"endtime\";s:0:\"\";}','0','0','0','0','','','');
INSERT INTO `pp_memberdata` VALUES ('3','admin3','','8','0','','1','0','','206','0','318820','186002','1363578695','127.0.0.1','1354113894','127.0.0.1','1','0000-00-00','','','3','1357194889','28829724','wzcom@126.com','','wzcom@126.com','0','0','�Ϻ������·900Ū56��901��','201615','','021-64250253','330304198710264516','������','a:1:{s:7:\"endtime\";s:0:\"\";}','0','1','0','1','a','b','c');
INSERT INTO `pp_memberdata` VALUES ('4','admin4','','8','0','','1','0','','0','0','15153','158','1357224945','127.0.0.1','1354113935','127.0.0.1','0','0000-00-00','','','0','0','','','','','0','0','','','','','330304198703224210','����','','0','0','0','-1','','','');
INSERT INTO `pp_memberdata` VALUES ('5','admin5','','8','0','','1','0','','300','0','256109','9727','1362378159','127.0.0.1','1354114434','127.0.0.1','1','0000-00-00','','','0','0','28829724','wz_boy@msn.com','','','0','0','�Ϻ����ɽ������·900Ū56-901','201615','','021-64250253','330304198710264516','������','','0','0','0','-1','�Ϻ�������Ϣ�Ƽ����޹�˾','�з�һ��','������ƹ���ʦ');
INSERT INTO `pp_memberdata` VALUES ('6','admin6','','8','0','','1','0','','0','0','0','73','1354114581','127.0.0.1','1354114507','127.0.0.1','0','0000-00-00','','','0','0','','','','','0','0','','','','','','','','0','0','0','0','','','');
INSERT INTO `pp_memberdata` VALUES ('7','admin7','','8','0','','1','0','','2','0','0','0','1354114588','127.0.0.1','1354114588','127.0.0.1','0','0000-00-00','','','0','0','','','','','0','0','','','','','','','a:1:{s:7:\"endtime\";s:0:\"\";}','0','0','0','0','','','');
INSERT INTO `pp_members` VALUES ('1','admin','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_members` VALUES ('2','admi@','96e79218965eb72c92a549dd5a330112');
INSERT INTO `pp_members` VALUES ('3','admin3','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_members` VALUES ('4','admin4','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_members` VALUES ('5','admin5','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_members` VALUES ('6','admin6','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_members` VALUES ('7','admin7','e72f4545eb68c96c754f91fc01573517');
INSERT INTO `pp_menu` VALUES ('9','0','����','list.php?fid=1','','0','0','0','0','18','');
INSERT INTO `pp_menu` VALUES ('10','0','ͼƬ','list.php?fid=9','','0','0','0','0','16','');
INSERT INTO `pp_menu` VALUES ('11','0','����','list.php?fid=11','','0','0','0','0','14','');
INSERT INTO `pp_menu` VALUES ('12','0','Ӱ��','list.php?fid=13','','0','0','0','0','12','');
INSERT INTO `pp_menu` VALUES ('13','0','�̳�','list.php?fid=15','','0','0','0','0','10','');
INSERT INTO `pp_menu` VALUES ('51','0','��ҳ','/','','0','0','0','0','20','');
INSERT INTO `pp_module` VALUES ('24','2','���ϵͳ','ad_','a_d','','','','0','','','0','0');
INSERT INTO `pp_module` VALUES ('21','2','���ܱ���','form_','form','','','','0','','','0','0');
INSERT INTO `pp_module` VALUES ('18','2','���Ա�','guestbook_','guestbook','','','','0','','','0','0');
INSERT INTO `pp_module` VALUES ('23','2','ͶƱϵͳ','vote_','vote','','','','0','','','0','0');
INSERT INTO `pp_moneylog` VALUES ('1','7','2','����Ա����','1355404020');
INSERT INTO `pp_moneylog` VALUES ('2','3','500','����Ա����','1356097645');
INSERT INTO `pp_moneylog` VALUES ('3','3','-6','����1������','1356098231');
INSERT INTO `pp_moneylog` VALUES ('4','3','-4','����Ա����','1356098284');
INSERT INTO `pp_moneylog` VALUES ('5','3','-60','����1������','1356155808');
INSERT INTO `pp_moneylog` VALUES ('6','3','-42','����1������','1356157426');
INSERT INTO `pp_moneylog` VALUES ('7','3','-90','����3������','1356158280');
INSERT INTO `pp_moneylog` VALUES ('8','3','-90','����3������','1356158605');
INSERT INTO `pp_moneylog` VALUES ('9','3','-36','����3������','1356158721');
INSERT INTO `pp_moneylog` VALUES ('10','3','-60','����2������','1356161115');
INSERT INTO `pp_moneylog` VALUES ('11','3','-18','����3������','1356265484');
INSERT INTO `pp_moneylog` VALUES ('12','3','-18','����3������','1356265532');
INSERT INTO `pp_moneylog` VALUES ('13','3','30','������˽���','1357216001');
INSERT INTO `pp_moneylog` VALUES ('14','5','100','pay_finish','1362295330');
INSERT INTO `pp_moneylog` VALUES ('15','5','100','���߳�ֵ','1362301707');
INSERT INTO `pp_moneylog` VALUES ('16','5','100','֧�������߳�ֵ','1362302092');
INSERT INTO `pp_moneylog` VALUES ('17','3','100','֧�������߳�ֵ','1362378334');
INSERT INTO `pp_olpay` VALUES ('1','0','itlhsi6ed8','1','0','1362294880','5','admin5','1','0','0','alipay','0');
INSERT INTO `pp_olpay` VALUES ('2','0','xqm3jlgedb','1','1','1362295266','5','admin5','1','0','0','alipay','0');
INSERT INTO `pp_olpay` VALUES ('3','0','r4lj4padyt','1','1','1362301664','5','admin5','1','0','0','alipay','0');
INSERT INTO `pp_olpay` VALUES ('4','0','z2elomeszw','1','1','1362302054','5','admin5','1','0','0','alipay','0');
INSERT INTO `pp_olpay` VALUES ('5','0','skfia9rbdf','1','1','1362378273','3','admin3','1','0','0','alipay','0');
INSERT INTO `pp_sms_list` VALUES ('10','13636686104,13636686103,13636686102,13636686101,13636686100,','5','������֡���happy new year.������֡���happy new year.������֡���happy new year.������֡���happy new year.������֡���happy new year.108','108','2','1356161115','1355973000','1356161115','ȡ������','admin3','127.0.0.1','10','60','112','');
INSERT INTO `pp_sms_list` VALUES ('11','13636686104,13636686105,13636686106,','3','��ʱ��Ԫ�����֡�@','9','1','1356265484','1385827200','1356265484','ȡ������','admin3','127.0.0.1','3','18','94','');
INSERT INTO `pp_sms_list` VALUES ('12','13636686104,13636686105,13636686106,','3','���µ�1��1�գ�Ԫ�����֡���','14','1','1356265532','1356969600','1356265532','ȡ������','admin3','127.0.0.1','3','18','76','');
INSERT INTO `pp_sort` VALUES ('1','0','0','��������','1','8','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:25:\"template/default/news.htm\";}','','0','','','0','','','','','0','a:11:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:14:\"label_bencandy\";s:0:\"\";s:10:\"channelDir\";s:4:\"nnew\";s:13:\"channelDomain\";s:0:\"\";s:10:\"label_list\";s:0:\"\";s:15:\"ListShowBigType\";s:13:\"bigsort_tpl/0\";}','','','','');
INSERT INTO `pp_sort` VALUES ('3','1','0','�������','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:9:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/6\";s:15:\"ListShowBigType\";N;s:10:\"label_list\";s:0:\"\";s:14:\"label_bencandy\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('4','1','0','ITҵ��','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','31','','','1','3','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:11:\"list_tpl/10\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('29','0','105','��Ʒ��','1','1','1','','0','0','','','','','','','0','','','1','','','','','0','a:1:{s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('30','29','105','���»�','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:8:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;s:14:\"label_bencandy\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('9','0','100','ͼƬ����','1','1','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:26:\"template/default/photo.htm\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:1:\"0\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('10','9','100','��Ů����','2','0','0','','0','0','','','22','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','11','','1','8','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('11','0','101','��������','1','4','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:29:\"template/default/download.htm\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:1:\"0\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('12','11','101','��վ����','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:6:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";}','','','','');
INSERT INTO `pp_sort` VALUES ('13','0','102','Ӱ��Ƶ��','1','1','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:26:\"template/default/video.htm\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:0:\"\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('14','13','102','������Ƶ','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:8:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:14:\"label_bencandy\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('15','0','103','�̳�Ƶ��','1','1','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:25:\"template/default/shop.htm\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:0:\"\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('16','15','103','�����Ʒ','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:6:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";s:0:\"\";s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";}','','','','');
INSERT INTO `pp_sort` VALUES ('17','0','104','FLASHƵ��','1','1','1','','0','0','','','','','a:3:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";}','','0','','','0','','','','','0','a:8:{s:11:\"sonTitleRow\";s:0:\"\";s:12:\"sonTitleLeng\";s:0:\"\";s:9:\"cachetime\";N;s:12:\"sonListorder\";s:1:\"0\";s:14:\"listContentNum\";N;s:12:\"ListShowType\";N;s:15:\"ListShowBigType\";s:1:\"0\";s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('18','17','104','MTV��','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','3','','','','0','a:8:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;s:10:\"label_list\";s:0:\"\";}','','','','');
INSERT INTO `pp_sort` VALUES ('26','11','101','װ������','2','0','0','','0','0','','','','','','','0','','','1','','','','','0','','','','','');
INSERT INTO `pp_sort` VALUES ('27','11','101','�칫����','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:1:\"0\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('31','1','0','����ͷ��','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/3\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('32','1','0','�Ƽ�����','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('33','1','0','ͼƬ����','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('34','1','0','�ȵ��¼�','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/2\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('38','1','0','һ�ﾪ��','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/4\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('39','1','0','web����','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','1','','','','','0','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:10:\"list_tpl/8\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_sort` VALUES ('40','11','101','ɱ������','2','0','0','','0','0','','','','','a:4:{s:4:\"head\";s:0:\"\";s:4:\"foot\";s:0:\"\";s:4:\"list\";s:0:\"\";s:8:\"bencandy\";s:0:\"\";}','','0','','','0','','','','','1','a:7:{s:11:\"sonTitleRow\";N;s:12:\"sonTitleLeng\";N;s:9:\"cachetime\";N;s:12:\"sonListorder\";N;s:14:\"listContentNum\";s:0:\"\";s:12:\"ListShowType\";s:0:\"\";s:15:\"ListShowBigType\";N;}','','','','');
INSERT INTO `pp_template` VALUES ('5','ͷ���װ�','7','template/default/none.htm','','0');
INSERT INTO `pp_template` VALUES ('6','�ײ��װ�','8','template/default/none.htm','','0');
INSERT INTO `pp_template` VALUES ('23','�����б�ҳ(�����խ)','2','template/default/list.htm','','0');
INSERT INTO `pp_template` VALUES ('22','����ҳ(�����խ)','3','template/default/bencandy.htm','','0');
INSERT INTO `pp_template` VALUES ('24','��ҳ(�����խ)','1','template/default/index.htm','','0');
INSERT INTO `pp_template` VALUES ('20','����ҳ(������)','3','template/default/bencandy_tpl_2.htm','','0');
INSERT INTO `pp_template` VALUES ('21','����ҳ','9','template/default/alonepage.htm','','0');
INSERT INTO `pp_template` VALUES ('25','ר��ģ��һ(ͷ���Ҫ�װ�)','11','template/special/showsp2.htm','','0');
INSERT INTO `pp_template` VALUES ('26','ר��ģ���(ͷ���Ҫ�װ�)','11','template/special/special_sport.htm','','0');
INSERT INTO `pp_template` VALUES ('27','ר��ģ����(ͷ���Ҫ�װ�)','11','template/special/special_car.htm','','0');
INSERT INTO `pp_template` VALUES ('28','ר��ģ����(ͷ���Ҫ�װ�)','11','template/special/special_finance.htm','','0');
INSERT INTO `pp_template` VALUES ('29','ר��ģ����(ͷ���Ҫ�װ�)','11','template/special/sp1.htm','','0');
INSERT INTO `pp_upfile` VALUES ('1','0','0','0','3','1357193970','3_20130103140130_qtaec.jpg','3','0','0');
INSERT INTO `pp_upfile` VALUES ('2','0','0','0','3','1357214409','3_20130103200109_gk2a9.jpg','3','0','0');
INSERT INTO `pp_upfile` VALUES ('3','0','0','0','3','1357222058','3_20130103220138_kjfhk.png','����Сlogo','0','0');
INSERT INTO `pp_upfile` VALUES ('4','0','0','0','3','1357222275','3_20130103220115_3epa5.png','����Сlogo','0','0');
INSERT INTO `pp_upfile` VALUES ('5','0','0','0','3','1357223850','3_20130103220130_1rgiu.png','����Сlogo','0','0');
INSERT INTO `pp_upfile` VALUES ('6','0','0','0','3','1357224041','3_20130103220141_0vztn.png','����Сlogo','0','0');
INSERT INTO `pp_upfile` VALUES ('7','0','0','0','3','1357224109','3_20130103220149_ajmrq.png','����Сlogo','0','0');
INSERT INTO `pp_upfile` VALUES ('8','0','0','0','3','1357224144','3_20130103220124_tljgp.png','����Сlogo','0','0');
INSERT INTO `pp_upfile` VALUES ('9','0','0','0','3','1357224359','3_20130103220159_01nfw.png','����Сlogo','0','0');
INSERT INTO `pp_upfile` VALUES ('10','0','0','0','3','1357224470','3_20130103220150_diqd0.jpg','4','0','0');
INSERT INTO `pp_upfile` VALUES ('11','0','0','0','3','1357224564','3_20130103220124_nb9oo.png','����Сlogo','0','0');
INSERT INTO `pp_upfile` VALUES ('12','0','0','0','4','1357224881','4_20130103220141_ezyda.png','����Сlogo','0','0');
INSERT INTO `pp_upfile` VALUES ('13','0','0','0','5','1362301636','5_20130303170316_7uo3p.jpg','����','0','0');
INSERT INTO `pp_vote_comment` VALUES ('11','10','0','1','admin','1237279209','rrrrrrrrrrrrrrr','192.168.0.99','0','1');
INSERT INTO `pp_vote_comment` VALUES ('12','10','0','1','admin','1237279223','dddddddddddddddd','192.168.0.99','0','1');
INSERT INTO `pp_vote_comment` VALUES ('14','6','0','1','admin','1239025849','&nbsp;֤&nbsp;��:','127.0.0.1','0','1');
INSERT INTO `pp_vote_comment` VALUES ('22','6','0','1','admin','1283825218','fdsadf','127.0.0.1','0','1');
INSERT INTO `pp_vote_comment` VALUES ('19','11','0','1','admin','1240210890','����ѽ','192.168.0.99','0','1');
INSERT INTO `pp_vote_comment` VALUES ('20','11','0','1','admin','1255082863','fdsa','127.0.0.1','0','1');
INSERT INTO `pp_vote_comment` VALUES ('21','11','0','1','admin','1283823884','ll','127.0.0.1','0','1');
INSERT INTO `pp_vote_config` VALUES ('module_id','23','');
INSERT INTO `pp_vote_config` VALUES ('Info_webOpen','1','');
INSERT INTO `pp_vote_config` VALUES ('Info_webname','ͶƱϵͳ','');
INSERT INTO `pp_vote_config` VALUES ('module_pre','vote_','');
INSERT INTO `pp_vote_element` VALUES ('37','6','������','4','10','','','');
INSERT INTO `pp_vote_element` VALUES ('38','6','������','4','7','','','');
INSERT INTO `pp_vote_element` VALUES ('39','6','����','2','5','','','');
INSERT INTO `pp_vote_element` VALUES ('41','6','�����','6','6','','','');
INSERT INTO `pp_vote_element` VALUES ('81','11','����������Ա��ϲ�','0','4','vote/1_20090418220434_DSazk.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('80','11','Chinaz֮CNIDC����������','0','9','vote/1_20090419090435_51j39.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('68','6','����','12','9','','','');
INSERT INTO `pp_vote_element` VALUES ('70','10','�ٶȷ�˿��','6','0','vote/1_20090317160304_1cyPh.gif','���ǰٶȷ�˿��','http://www.baidu.com');
INSERT INTO `pp_vote_element` VALUES ('71','10','�ȸ��˿��','2','0','vote/1_20090317160317_NO50S.gif','���ǹȸ��˿��','http://www.google.cn');
INSERT INTO `pp_vote_element` VALUES ('72','11','����������SNS����','1','8','vote/1_20090419090425_nkqeB.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('73','11','CN�����ײ˵�����','2','10','vote/1_20090419090455_L5Iz8.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('74','11','�ž�����������','1','3','vote/1_20090419090414_BVe9o.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('75','11','���ѻ�԰����','2','6','vote/1_20090419090445_qQiaW.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('76','11','����ȫ��վ�����','2','5','vote/1_20090419090445_QVf6M.jpg','','http://www.admin5.com/article/20081231/124093.shtml');
INSERT INTO `pp_vote_element` VALUES ('77','11','��������','0','7','vote/1_20090419090459_1MkWx.jpg','','http://bbs.chinaz.com/Shuiba/thread-1240750-1-1.html');
INSERT INTO `pp_vote_element` VALUES ('82','12','�е��Ƽ�','11','0','vote/1_20101109161100_eooqn.jpg','','http://www.chinaccnet.com/');
INSERT INTO `pp_vote_element` VALUES ('83','12','��������','11','0','vote/1_20101109161103_nulvn.jpg','','http://www.sudu.cn/');
INSERT INTO `pp_vote_element` VALUES ('84','12','ȺӢ����','11','0','vote/1_20101109161108_q5bre.jpg','','http://www.qy.com.cn/');
INSERT INTO `pp_vote_element` VALUES ('85','12','371����','12','0','vote/1_20101109161112_omvjo.jpg','','http://www.371.com/');
INSERT INTO `pp_vote_element` VALUES ('86','12','��������','11','0','vote/1_20101109161116_zlkqh.jpg','','http://www.zwidc.com/');
INSERT INTO `pp_vote_element` VALUES ('87','12','�ǻԻ���','11','0','vote/1_20101109161120_ylaj7.jpg','','http://www.eydns.com/');
INSERT INTO `pp_vote_topic` VALUES ('6','��������Щǰ������֧�ֵ�','��������Щǰ������֧�ֺ�Ӱ�쵽��ģ�','2','600','0','','1164793927','','1233749543','1265256743','0','1','<div class=\"voteid\" title=\"$describes\">{$button}{$title}({$votenum})</div>','0','0','0');
INSERT INTO `pp_vote_topic` VALUES ('11','2008���й�վ��ʮ�������¼�ͶƱ','-------��Ϊ�����2008�������ŵ�վ���¼�Ͷ��һƱ.','2','500','0','','1237281523','','1233749543','1580789543','0','1','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"width:118px;float:left;margin-top:4px;\" class=\"voteid\">\r\n  <tr> \r\n    <td align=\"center\"><A HREF=\"$url\" target=\"_blank\" style=\"border:1px solid #ccc;display:block;width:100px;height:75px;\"><img alt=\"{$title}\" style=\"border:1px solid #fff;\" src=\"$img\" border=\"0\" width=\"100\" height=\"75\"></A></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\">\r\n      <div  style=\"width:110px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;\">{$button}(<b><font color=\"#FF0000\" >{$votenum}</font></b>)<a HREF=\"$url\" target=\"_blank\" title=\"{$title}\">{$title}</a></div>\r\n    </td>\r\n  </tr>\r\n  <tr> \r\n    <td>{$describes}</td>\r\n  </tr>\r\n  <tr> \r\n    <td></td>\r\n  </tr>\r\n</table>\r\n\r\n','1','0','0');
INSERT INTO `pp_vote_topic` VALUES ('10','�ĸ����������?','��ϲ��ʹ���ĸ�����������,��Ͷ��һƱ?','1','15','0','','1237275830','','0','0','0','1','<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"width:90px;float:left;\">\r\n  <tr> \r\n    <td align=\"center\" valign=\"middle\" style=\"line-height:40px;\"> <a href=\"$url\" target=_blank> \r\n      <b>$title</b></a> </td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\"><a href=\"$url\" target=\"_blank\"><img alt=\"$describes\" src=\"$img\" width=\"80\" height=\"30\" border=\"0\"></a></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\" style=\"line-height:20px;\"> <font color=\"#990000\">�� <b><font color=\"#FF0000\">$votenum</font> Ʊ \r\n      </b></font></td>\r\n  </tr>\r\n  <tr> \r\n    <td align=\"center\" style=\"line-height:40px;\"><a href=\"$webdb[www_url]/do/vote.php?action=vote&voteId=$id\" target=\"_blank\"><u>ͶһƱ</u></a> \r\n      <a href=\"$webdb[www_url]/do/vote.php?job=show&cid=$cid#postcomment\" target=\"_blank\"><u>��һ��</u></a></td>\r\n  </tr>\r\n</table>','2','0','0');
INSERT INTO `pp_vote_topic` VALUES ('12','��Ϊ����ϲ����IDCͶ�ϱ����һƱ','','2','0','0','','1289292937','','0','0','0','0','<div class=\"listVote\" title=\"{$describes}\">\r\n                    	<div class=\"img\"><A HREF=\"$url\" target=\"_blank\"><img src=\"$img\" width=\"120\" height=\"60\"/></A></div>\r\n                        <div class=\"word\">{$button} (<span>{$votenum}</span>)$title</div>\r\n                    </div>','1','0','0');