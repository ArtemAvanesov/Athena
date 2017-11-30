<?php
header("Content-type: text/html; charset=utf-8");
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Athena</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/student_css_tmp.css" />
  <script>
 window.onload=function(){
     window.scrollTo(0,document.body.scrollHeight);
 }
  </script>
  <script type="text/javascript" src="./ajax/ask_level_hw.js"></script>


</head>
<body>
<div class="db_hide" style="display: none;">
  <?php include("../blocks/db_conn.php");?>
</div>
<?php include("blocks/SitebarL_Header.php");?>





<div id="block_change">

 <?php include ("/blocks/hw_blocks/hw_block.php");

 //AjaxFormRequest(result_id,form_id,url); 
 ?>
</div>


<?php
/*echo $id = uniqid("");
/*
генерация уникального id в зависимости от текущего времни
echo $better_token = md5(uniqid(rand(),1)); // лучше, труднее взломать*/
?>


  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
  <div id="element"></div>


</body>
</html>