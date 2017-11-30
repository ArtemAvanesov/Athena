<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>Athena</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/style_tmp.css" />
  <style>
  p { color:  navy; }
  </style>
 </head>
 <body>
  <div id="header"><p id="logo">Athena</p></div>
  <div id="semester">
    <div id="nav_semester">
      <div class="number_semester">1 семестр</div>
      <div class="number_semester">2 семестр</div>
      <div class="number_semester">3 семестр</div>
      <div class="number_semester">4 семестр</div>
      <div class="number_semester_active"><p>2016</p>5 семестр</div>
      <div class="number_semester">6 семестр</div>
      <div class="number_semester">7 семестр</div>
      <div class="number_semester">8 семестр</div>
    </div>
    <div class="mounth">
      <div class="name">Сентябрь</div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <?php
        for ($x=1; $x<=30; $x++) {
          ?>
          <div class="day"><? echo $x;?></div>
          <?
        }
      ?>
      <div class="day_null"></div>
      <div class="day_null"></div>
    </div>
    <div class="mounth">
      <div class="name">Октябрь</div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <?php
        for ($x=1; $x<=31; $x++) {
          ?>
          <div class="day"><? echo $x;?></div>
          <?
        }
      ?>
      <div class="day_null"></div>
      <div class="day_null"></div>
    </div>
    <div class="mounth">
      <div class="name">Ноябрь</div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <?php
        for ($x=1; $x<=30; $x++) {
          if($x==2){
          ?>
          <div class="today"><? echo $x;?></div>
          <?
          }
          elseif($x>2){
          ?>
          <div class="future_day"><? echo $x;?></div>
          <?
          }
          else{
          ?>
          <div class="day"><? echo $x;?></div>
          <?
          }
        }
      ?>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <div class="day_null"></div>
    </div>
    <div class="mounth">
      <div class="name">Декабрь</div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <div class="day_null"></div>
      <?php
        for ($x=1; $x<=31; $x++) {
          ?>
          <div class="future_day"><? echo $x;?></div>
          <?
        }
      ?>
      <div class="day_null"></div>
    </div>
    <div class="clear"></div>
  <div/>

  
  
  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
 </body>
</html>