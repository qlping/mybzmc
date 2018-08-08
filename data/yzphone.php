<?php
require_once("init.php");
@$phone = $_REQUEST["phone"];
if($phone===null || $phone===""){
	die('电话不能为空');
}
$sql="SELECT id FROM user WHERE phone=$phone";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_row($result);
if(!$row){
   echo "用户可用";
}else{
   echo "此用户已存在";
}

?>
