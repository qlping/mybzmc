<?php
require("init.php");
session_start();
@$id=$_SESSION["id"];
if($id != null){
  $sql = "SELECT phone FROM user WHERE id=$id";
  $result = mysqli_query($conn,$sql);
  $row = mysqli_fetch_row($result);
  echo json_encode(["ok"=>1,"phone"=>$row[0]]);
}else{
  echo json_encode(["ok"=>0]);
}
?>