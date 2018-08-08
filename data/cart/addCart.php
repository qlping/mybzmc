<?php
//data/cart/addCart.php
require_once("../init.php");
session_start();
@$uid=$_SESSION["uid"];
@$lid=$_REQUEST["lid"];
@$count=$_REQUEST["count"];
if($uid!=null&&$lid!=null&&$count!=null){
	$sql="select * from cart where uid=$uid and pid=$lid";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	$iid=$row[0];
	if($row==null)
		$sql="insert into cart values (null, $uid, $lid, $count, 0)";
	else
		$sql="update cart set count=count+$count where cid=$cid";
	$result=mysqli_query($conn,$sql);
}