<?php
//data/cart/checkOne.php
require_once("../init.php");
@$cid=$_REQUEST["cid"];
@$is_checked=$_REQUEST["is_checked"];
if($iid!=null&&$is_checked!=null){
	$sql="update cart set is_checked=$is_checked where cid=$cid";
	mysqli_query($conn,$sql);
}