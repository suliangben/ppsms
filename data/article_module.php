<?php
unset($article_moduleDB);
$article_moduleDB[100]=array('name'=>'图片模型',
		'alias'=>'图片',
		'iftable'=>'0',
		'keywords'=>'photo',
		'config'=>'a:3:{s:8:\"field_db\";a:1:{s:8:\"photourl\";a:15:{s:5:\"title\";s:8:\"图片地址\";s:10:\"field_name\";s:8:\"photourl\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:9:\"upmorepic\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:10:\"IfListShow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"0\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"图片\";s:10:\"title_name\";s:8:\"图片名称\";s:12:\"content_name\";s:4:\"介绍\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"200\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"1\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}}'
		);
		$article_moduleDB[101]=array('name'=>'下载模型',
		'alias'=>'软件',
		'iftable'=>'0',
		'keywords'=>'download',
		'config'=>'a:4:{s:8:\"field_db\";a:8:{s:9:\"my_author\";a:13:{s:5:\"title\";s:8:\"软件作者\";s:10:\"field_name\";s:9:\"my_author\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"10\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:8;s:9:\"allowview\";N;}s:14:\"my_copyfromurl\";a:14:{s:5:\"title\";s:8:\"厂商主页\";s:10:\"field_name\";s:14:\"my_copyfromurl\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"50\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:7;s:9:\"allowview\";N;}s:7:\"my_demo\";a:14:{s:5:\"title\";s:8:\"演示网址\";s:10:\"field_name\";s:7:\"my_demo\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"50\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:6;s:9:\"allowview\";N;}s:15:\"operatingsystem\";a:14:{s:5:\"title\";s:8:\"运行环境\";s:10:\"field_name\";s:15:\"operatingsystem\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"60\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:902:\"<br>平台选择：<a href=\\\"javascript:ToSystem(\\\'Linux\\\')\\\">Linux</a>/<a href=\\\"javascript:ToSystem(\\\'DOS\\\')\\\">DOS</a>/<a href=\\\"javascript:ToSystem(\\\'9x\\\')\\\">9x</a>/<a href=\\\"javascript:ToSystem(\\\'NT\\\')\\\">NT</a>/<a href=\\\"javascript:ToSystem(\\\'2000\\\')\\\">2000</a>/<a href=\\\"javascript:ToSystem(\\\'2003\\\')\\\">2003</a>/<a href=\\\"javascript:ToSystem(\\\'XP\\\')\\\">XP</a>/<a href=\\\"javascript:ToSystem(\\\'.NET\\\')\\\">.NET</a>/<a href=\\\"javascript:ToSystem(\\\'ASP\\\')\\\">ASP</a>/<a href=\\\"javascript:ToSystem(\\\'PHP\\\')\\\">PHP</a>/<a href=\\\"javascript:ToSystem(\\\'JSP\\\')\\\">JSP</a>/<a href=\\\"javascript:ToSystem(\\\'CGI\\\')\\\">CGI</a>

<SCRIPT LANGUAGE=\\\"JavaScript\\\">
function ToSystem(va){
	cc=document.getElementById(\\\"atc_operatingsystem\\\").value
	if(cc==\\\'\\\'){
		document.getElementById(\\\"atc_operatingsystem\\\").value=va;
	}else{
		document.getElementById(\\\"atc_operatingsystem\\\").value+=\\\"/\\\"+va;
	}
	
}
</SCRIPT>\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:5;s:9:\"allowview\";N;}s:12:\"softlanguage\";a:14:{s:5:\"title\";s:8:\"软件语言\";s:10:\"field_name\";s:12:\"softlanguage\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:34:\"简体中文
繁体中文
英文
其他语言\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:4;s:9:\"allowview\";N;}s:9:\"copyright\";a:14:{s:5:\"title\";s:8:\"授权形式\";s:10:\"field_name\";s:9:\"copyright\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:30:\"免费版
试用版
破解版
商业版\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:3;s:9:\"allowview\";N;}s:8:\"softsize\";a:14:{s:5:\"title\";s:8:\"文件大小\";s:10:\"field_name\";s:8:\"softsize\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:1:\"M\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:2;s:9:\"allowview\";N;}s:7:\"softurl\";a:15:{s:5:\"title\";s:8:\"软件地址\";s:10:\"field_name\";s:7:\"softurl\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:10:\"upmorefile\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:10:\"IfListShow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"1\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"软件\";s:10:\"title_name\";s:8:\"软件名称\";s:12:\"content_name\";s:8:\"软件介绍\";s:6:\"edit_w\";s:3:\"600\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}'
		);
		$article_moduleDB[102]=array('name'=>'视频模型',
		'alias'=>'视频',
		'iftable'=>'0',
		'keywords'=>'mv',
		'config'=>'a:4:{s:8:\"field_db\";a:3:{s:5:\"mvurl\";a:15:{s:5:\"title\";s:8:\"在线观看\";s:10:\"field_name\";s:5:\"mvurl\";s:10:\"field_type\";s:10:\"mediumtext\";s:10:\"field_leng\";i:0;s:9:\"form_type\";s:8:\"upmoremv\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"1\";s:6:\"search\";s:1:\"0\";s:10:\"IfListShow\";s:1:\"0\";s:9:\"orderlist\";s:1:\"3\";s:9:\"allowview\";N;}s:7:\"my_role\";a:14:{s:5:\"title\";s:8:\"领衔主演\";s:10:\"field_name\";s:7:\"my_role\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:100;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"20\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:2;s:9:\"allowview\";N;}s:7:\"my_lang\";a:14:{s:5:\"title\";s:4:\"语言\";s:10:\"field_name\";s:7:\"my_lang\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:6:\"select\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:26:\"国语
粤语
英语
其它语言\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:1;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"视频\";s:10:\"title_name\";s:8:\"视频名称\";s:12:\"content_name\";s:8:\"视频介绍\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}'
		);
		$article_moduleDB[103]=array('name'=>'商城模型',
		'alias'=>'商品',
		'iftable'=>'0',
		'keywords'=>'shop',
		'config'=>'a:4:{s:8:\"field_db\";a:6:{s:7:\"shop_id\";a:14:{s:5:\"title\";s:8:\"商品编号\";s:10:\"field_name\";s:7:\"shop_id\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:30;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:8:\"shoptype\";a:13:{s:5:\"title\";s:8:\"商品型号\";s:10:\"field_name\";s:8:\"shoptype\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:50;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:9:\"shopmoney\";a:14:{s:5:\"title\";s:8:\"积分点数\";s:10:\"field_name\";s:9:\"shopmoney\";s:10:\"field_type\";s:3:\"int\";s:10:\"field_leng\";i:7;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"7\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"点\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:9:\"martprice\";a:14:{s:5:\"title\";s:8:\"市面价格\";s:10:\"field_name\";s:9:\"martprice\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:15;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"元\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:8:\"nowprice\";a:14:{s:5:\"title\";s:8:\"现售价格\";s:10:\"field_name\";s:8:\"nowprice\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:2:\"元\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}s:7:\"shopnum\";a:14:{s:5:\"title\";s:6:\"库存量\";s:10:\"field_name\";s:7:\"shopnum\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:5;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:1:\"8\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:4:\"不限\";s:10:\"form_units\";s:2:\"个\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:0;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"商品\";s:10:\"title_name\";s:8:\"商品名称\";s:12:\"content_name\";s:8:\"商品介绍\";s:6:\"edit_w\";s:3:\"600\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}'
		);
		$article_moduleDB[104]=array('name'=>'FLASH模型',
		'alias'=>'FLASH',
		'iftable'=>'0',
		'keywords'=>'flash',
		'config'=>'a:4:{s:8:\"field_db\";a:2:{s:11:\"flashauthor\";a:14:{s:5:\"title\";s:9:\"FLASH作者\";s:10:\"field_name\";s:11:\"flashauthor\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:20;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"12\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:8:\"mustfill\";s:1:\"0\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:2;s:9:\"allowview\";N;}s:8:\"flashurl\";a:13:{s:5:\"title\";s:9:\"FLASH地址\";s:10:\"field_name\";s:8:\"flashurl\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:150;s:9:\"form_type\";s:6:\"upplay\";s:15:\"field_inputleng\";s:0:\"\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";i:1;s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:5:\"FLASH\";s:10:\"title_name\";s:9:\"FLASH名称\";s:12:\"content_name\";s:9:\"FLASH介绍\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"300\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"1\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}'
		);
		$article_moduleDB[105]=array('name'=>'产品型模',
		'alias'=>'产品',
		'iftable'=>'0',
		'keywords'=>'',
		'config'=>'a:5:{s:8:\"field_db\";a:1:{s:7:\"my_type\";a:13:{s:5:\"title\";s:8:\"产品型号\";s:10:\"field_name\";s:7:\"my_type\";s:10:\"field_type\";s:7:\"varchar\";s:10:\"field_leng\";i:100;s:9:\"form_type\";s:4:\"text\";s:15:\"field_inputleng\";s:2:\"15\";s:8:\"form_set\";s:0:\"\";s:10:\"form_value\";s:0:\"\";s:10:\"form_units\";s:0:\"\";s:10:\"form_title\";s:0:\"\";s:6:\"search\";s:1:\"0\";s:9:\"orderlist\";s:1:\"0\";s:9:\"allowview\";N;}}s:7:\"is_html\";a:0:{}s:9:\"moduleSet\";a:11:{s:5:\"alias\";s:4:\"产品\";s:10:\"title_name\";s:8:\"产品名称\";s:12:\"content_name\";s:8:\"产品介绍\";s:6:\"edit_w\";s:3:\"500\";s:6:\"edit_h\";s:3:\"250\";s:11:\"description\";s:1:\"1\";s:5:\"etype\";s:1:\"0\";s:8:\"morepage\";s:1:\"1\";s:9:\"no_author\";s:1:\"1\";s:7:\"no_from\";s:1:\"1\";s:10:\"no_fromurl\";s:1:\"1\";}s:9:\"is_upfile\";a:0:{}s:5:\"tpldb\";a:5:{s:4:\"post\";s:0:\"\";s:9:\"adminpost\";s:0:\"\";s:4:\"list\";s:0:\"\";s:4:\"show\";s:0:\"\";s:6:\"search\";s:0:\"\";}}'
		);
		?>