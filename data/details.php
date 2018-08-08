<?php
//详情
require_once("init.php");
@$id = $_REQUEST["id"];
$sql = "SELECT tname,img,weight,detail,price,amount FROM tea WHERE id = $id";
$rs = mysqli_query($conn,$sql);
if(mysqli_error($conn)){
  echo mysqli_error($conn);
}
$rows = mysqli_fetch_all($rs,1);
echo json_encode($rows);

?>