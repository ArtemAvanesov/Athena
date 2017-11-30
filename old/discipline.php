<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-9">
  <title>Athena</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/style_tmp.css" />
 </head>
 <body>
  <div id="sitebarL"><div id="logo">Athena</div>
    <div id="list">
      <div class="stl">Расписание <span>&#8250;</span></div>
      <div class="stl">Группы <span>&#8250;</span></div>
      <div class="stl">Документы <span>&#8250;</span></div>
      <div class="stl">Новости <span>&#8250;</span></div>
      <div class="stl">Домашнее задание <span>&#8250;</span></div>
    </div>

  </div>
  <div id="header"><? echo "Сегодня ".date(" D, j F Y");/* h:i:s A*/?></div>

<?php /*include("blocks/calandar.php");*/?>

  <div id="dz">
    <div class="db_hide">
      <?php /*include("blocks/db_conn.php");*/?>
    </div>
    <div id="name_discipline">Физика. Герасимов А.Н.</div>
  
    <div id="nav_tabs_box">
      <div class="dz_tab">Метод. материал</div>
      <div class="dz_tab action">Домашнее задание</div>
      <div class="dz_tab">Индивидуальное задание</div>
      <div class="dz_tab">Тесты</div>
    </div>



    <div class="dz_box">
      <p>на 16.11.2016</p>
      <div class="dz_line"></div>
    </div>
    <div class="dz_box">
      <p>на 18.11.2016</p>
      <div class="dz_line"></div>
    </div>
    <div class="dz_box">
      <p>на 20.11.2016</p>
      <div class="dz_line"></div>
    </div>
    <div class="dz_box">
      <p>на 5.12.2016</p>
      <div class="dz_line"></div>
    </div>
    <div class="dz_box">
      <p>на 7.12.2016</p>
      <div class="dz_line"></div>
    </div>
    <div class="dz_box">
      <p>на 9.12.2016</p>
      <div class="dz_line"></div>
    </div>
    <div class="dz_box">
      <p>на 10.12.2016</p>
      <div class="dz_line"></div>
    </div>
    <div class="dz_box">
      <p>на 14.12.2016</p>
      <div class="dz_line"></div>
    </div>



     <div class="clear"></div>
     <div id="orange_line"></div>
  </div>
  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
 </body>
</html>