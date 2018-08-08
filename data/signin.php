<?php
  require("init.php");
  @$phone = $_REQUEST["phone"];
  @$upwd = $_REQUEST["upwd"];
  if($phone!=null && $upwd!=null){
     $sql = "SELECT * FROM user WHERE phone='$phone' AND binary upwd = '$upwd'";
     $result = mysqli_query($conn,$sql);
     $row = mysqli_fetch_row($result);
     if($row!=null){
        session_start();
        $_SESSION["id"]=$row[0];
        echo "登录成功!";
     }else{
        echo "用户名或密码错误！！！";
     }
  }
?>