<?php
header("Content-type: text/html; charset=utf-8");
session_start();
?>
<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>Athena</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/style_tmp.css" />
 </head>
 <body>
  <?php include("blocks/sitebarL.php");?>
  <div id="header"><? echo "Сегодня ".date(" D, j F Y");/* h:i:s A*/?></div>

  
<div id="content">
    
  <div class="dz_box">Домашнее задание</div>
  <div class="dz_box">Индивидуальное задание</div>
  <div class="dz_box">тест</div>
  <div class="dz_box"></div>




 <div id="orange_line"></div>
</div>

  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
 </body>
</html>