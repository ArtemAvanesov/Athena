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
  <!--script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script-->
  <script type="text/javascript" src="../js/jquery-3.2.1.js"></script>
</head>
<body>

<div id="up_page" style="position: absolute;top: 0;left: 0;">
  <div id="up_opacity"></div>
  <div id="in_up_page"></div>
</div>

<div class="db_hide" style="display: none;">
  <?php include("../blocks/db_conn.php");?>
</div>
<?php include("blocks/SitebarL_Header.php");?>

<div id="content" style="background-color: #e9e9e9; margin-top: 10px;padding: 20px;">

<form name="askhomework" id="form_askhomework" enctype="multipart/form-data" method="post">
  <h3>Задать домашнее задание</h3>
  <p>
    <select>
      <option value="">Группа 2.1</option>
      <option value="">Группа 3.1</option>
      <option value="5843566489b19">Группа 4.1</option>
    </select>
  </p>
  <p><input type="text" name="theme" value="" placeholder="Имя домашней работы"></p>
  <p><textarea name="descr" value="" placeholder="Введите описание"></textarea></p>
  <p><img src="attach_file.png"><input type="submit" value="СОХРАНИТЬ"></p>
  <div class="clear"></div>
</form>
</div>
  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
  <div id="element"></div>
</body>
</html>