<?php
header("Content-type: text/html; charset=utf-8");
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Athena</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/teacher_css_tmp1.css" />
</head>
<body>
<div class="db_hide" style="display: none;">
  <?php include("../blocks/db_conn.php");?>
</div>
<?php include("blocks/SitebarL_Header.php");?>

  <div class='groupe_box'>
<?php
if (isset($_GET['group'])) {$group = $_GET['group']; if ($group == '') {unset($group);} }

if(isset($group)){
  $result=mysql_query("SELECT * from userlist WHERE idGR='$group' ORDER BY last_name");
  $data=mysql_fetch_assoc($result);
  printf("<div class='title'>Выберите студента</div>");
  $i=1;
  do{
    $fio=$data['last_name']." ".$data['first_name']." ".$data['middle_name'];
    printf("<div class='group_list'>%s <a href=''>%s</a></div>",$i,$fio);
    $i++;
  }
  while ($data=mysql_fetch_assoc($result));
}
else{
  printf("
  
    <div class='title'>Выберите группу</div>
    <div class='group'><a href=''>2.1 САУ</a></div>
    <div class='group'><a href='?group=5843566489b19'>3.1 САУ</a></div>
    <div class='group'><a href=''>4.1 САУ</a></div>
    <div class='clear'></div>
  
  ");
}
?>
  </div>
  


  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
</body>
</html>