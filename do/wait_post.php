<?php
require(dirname(__FILE__)."/"."global.php");
if(!$lfjid)showerr("��¼��ʱ�����ȵ�¼����в�����");

if($job=="post"){
		if(!$slids)die('{"name":"ajax_submit","tips":"������ѡ��һ����¼��"}');
		if($action!="cancel")die('{"name":"action","tips":"��ָ�������������ͣ�"}');
		$db->query("UPDATE {$pre}sms_list SET state='ȡ������' WHERE slid IN (".implode(",",$slids).") AND username='$lfjid' ");
		die('{"name":"ok","tips":"�ѳɹ�ȡ�� '.count($slids).' ���ȴ����͵Ķ��ţ�"}');//urlΪ��ѡ����������ֵҳ���ύ��ɺ�ת���url
}
if($job=="delete"){
		if(!$id)die('{"name":"error","tips":"����ʧ�ܣ�ɾ�������idδ���ݣ�"}');
		$db->query("UPDATE {$pre}sms_list SET state='ȡ������' WHERE slid='$id' AND username='$lfjid' ");
		die('{"name":"ok"}');
}

$order=='sendtime'||$order="posttime";
$query = $db->query("SELECT * FROM {$pre}sms_list WHERE username = '$lfjid' AND state LIKE '�ȴ�����' ORDER BY $order");
while($rs = $db->fetch_array($query)){
	$rs[posttime]=date("Y-m-d H:i:s",$rs[posttime]);
	$rs[sendtime]=date("Y-m-d H:i:s",$rs[sendtime]);
	$listdb[]=$rs;
}

require(ROOT_PATH."inc/head.php");
require(html("wait_post"));
require(ROOT_PATH."inc/foot.php");
?>