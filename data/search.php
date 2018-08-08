<?php
  //多条件查询
  require_once("init.php");
  @$kw = $_REQUEST["kw"];
  @$pno = $_REQUEST["pno"];
  @$pageSize = $_REQUEST["pageSize"];
  @$offset = ($pno-1)*$pagesize;
  //多条件查询
  $sql = "SELECT id,tname,img,weight,detail,price,amount FROM tea LIMIT $offset,$pageSize";
  $sql = "SELECT tname,img,weight,detail,price,amount FROM tea WHERE kw = $kw";
  $rs = mysqli_query($conn,$sql);
  if(mysqli_error($conn)){
    echo mysqli_error($conn);
  }
  $row = mysqli_fetch_all($rs,1);
  echo $row;
?>