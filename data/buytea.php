<?php
//  加载init文件
require("init.php");
//  获取参数
@$pno = $_REQUEST["pno"];
@$pageSize = $_REQUEST["pageSize"];
@$id = $_REQUEST["id"];
@$kw = $_REQUEST["kw"];
//  如二个参数进行判断， 如果参数无法设置   默认值
if(!$pno){
  $pno = 1;
}
if(!$pageSize){
  $pageSize = 9;
}
//  创建sql语句查询总记录数
$sql = "SELECT count(id) as c FROM tea";
$rs = mysqli_query($conn,$sql);
if(mysqli_error($conn)){
  echo mysqli_error($conn);
}
$row = mysqli_fetch_row($rs);
$pageCount = ceil($row[0]/$pageSize);
//echo $pageCount;
//  创建sql语句查询当前页内容
$offset = ($pno-1)*$pageSize;
$sql = "SELECT id,tname,img,weight,detail,price,amount FROM tea LIMIT $offset,$pageSize";
$rs = mysqli_query($conn,$sql);
if(mysqli_error($conn)){
  echo mysqli_error($conn);
}
$rows = mysqli_fetch_all($rs,MYSQLI_ASSOC);
//  返回结果json
$output = ["pno"=>$pno,"pageSize"=>$pageSize,"pageCount"=>$pageCount,"data"=>$rows];
echo json_encode($output);

?>
