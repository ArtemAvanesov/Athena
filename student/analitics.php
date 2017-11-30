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


</head>
<body>
<div class="db_hide" style="display: none;">
  <?php include("../blocks/db_conn.php");?>
</div>
<?php include("blocks/SitebarL_Header.php");?>
<div id="content">

  <style>
   /* CSS-стили, формирующие оформление */
   /*body .stat { height:1em; display:inline-block; vertical-align:middle }*/
   /*span { display:inline-block; width:120px; margin-bottom: 5px; color: #666666;}*/
   .first { background:orange; height: 20px;}
   .second { background:#33CC66; height: 20px;}
   .third { background:yellow; height: 20px; }
   .fourth { background:red; height: 20px; }
   .fifth { background:green; height: 20px;}
   .sixth {background:gray; height: 20px; }
</style>

<?php
$first = 7;
$second = 99;
$third = 8;
$fourth = 9;
$fifth = 8;
$sixth = 8;
// Вывести результаты заказа
echo <<<EOT
   <h2 class = 'title'>Ваша статистика: </h2>
   <span>Моделирование: </span><div class="first" style="width:{$first}%"></div><br>
   <span>Психология: </span><div class="second" style="width:{$second}%"></div><br>
   <span>История: </span><div class="third" style="width:{$third}%"></div><br>
   <span>Физика: </span><div class="fourth" style="width:{$fourth}%"></div><br>
   <span>ТАУ: </span><div class="fifth" style="width:{$fifth}%"></div><br>
   <span>Нейросети: </span><div class="sixth" style="width:{$sixth}%"></div><br>
EOT;
?>
</div>
  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
  <div id="element"></div>
</body>
</html>