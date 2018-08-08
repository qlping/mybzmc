<?php
require_once("init.php");
@$phone = $_REQUEST["phone"];
@$upwd = $_REQUEST["upwd"];
@$tage = $_REQUEST["tage"];
@$gender = $_REQUEST["gender"];
@$id = $_REQUEST["id"];
if($phone===null || $phone===""){
	die('电话不能为空');
}
if($gender===null || $gender===""){
 	die('性别不能为空');
}
if($tage===null || $tage===""){
  	die('茶龄不能为空');
}
if($upwd===null || $upwd===""){
	die('密码不能为空');
}
//if($upwd===null || $upwd===""){
//	die('重复密码不能为空');
//}



$phonereg='/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/';
$rs = preg_match($phonereg,$phone);
if(!$rs){
   die('{code:-1,msg:"手机号格式有误"}');
};
$upwdreg = '/^[a-z0-9]{3,12}$/i';
$rs = preg_match($upwdreg,$upwd);
if(!$rs){
   die('{"code":-1,"msg":"密码格式不正确"}');
}
//$sql="SELECT id FROM user WHERE phone=$phone";
//$result = mysqli_query($conn,$sql);
//$row = mysqli_fetch_row($result);

$sql = "INSERT INTO user VALUES(null,'','$upwd', '', '','$phone','$gender','$tage')";
$result = mysqli_query($conn, $sql); #在指定的连接上执行指定的SQL语句

if($result===false){
	echo "用户注册执行失败!";
	echo "请检查SQL语法：$sql";
}else{
	echo "用户注册成功!";
	$id = mysqli_insert_id($conn);
	//echo "新用户在数据库中的编号为：$id";
}
?>
