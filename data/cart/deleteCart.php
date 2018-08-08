<?php
//data/cart/deleteCart.php
require_once("../init.php");
@$cid=$_REQUEST["cid"];
if($cid!=null){
	$sql="delete from cart where cid=$cid";
	mysqli_query($conn,$sql);
}