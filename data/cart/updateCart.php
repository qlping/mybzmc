<?php
//data/cart/updateCart.php
require_once("../init.php");
@$cid=$_REQUEST["cid"];
@$count=$_REQUEST["count"];
if($cid!=null&&$count!=null){
	if($count>0)
		$sql="update cart set count=$count where cid=$cid";
	else
		$sql="delete from cart where cid=$cid";
	$result=mysqli_query($conn,$sql);
}