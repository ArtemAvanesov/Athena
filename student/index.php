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
<?php include("blocks/SitebarL_Header.php");
      include("blocks/calandar.php");?>

  
  <div id="content">
    
    <div id="schedule">
     <div id="title_sh">Расписание на 
<?php

if($t_year==date("Y") and $t_month==date("n") and $n_day==date("j")){
  echo "сегодня";
}
else{
  echo $n_day.".".$t_month.".".$t_year;
}
?>
     </div>
     <div class="sth">
      <div class="th">Время</div>
      <div class="th">Предмет</div>
     </div>
<?php
if(isset($_GET['id_group'])){$id_group=$_GET['id_group'];}else{$id_group=112782;}/*убрать,брать из куки*/
if(isset($_GET['year'])){$year=$_GET['year'];}else{$year=date("Y");}
if(isset($_GET['semester'])){$semester=$_GET['semester'];}else{$semester=5;}/*убрать, придумать */
if(isset($_GET['updown'])){$updown=$_GET['updown'];}else{$updown=0;} /*исправить, иначе расписание 'на сегодня' при входе на главную страницу будет сбиваться*/

/*
$week=array(
    'Mon'  => '8.00-9.35',
    'Tue'  => '9.50-11.25',
    2  => '11.55-13.30',
    3  => '13.45-15.20',
    4  => '15.50-17.25',
    5  => '17.40-19.15'
);*/

if(!isset($t_year) or !isset($t_month) or !isset($n_day)){
  $strtt=date("Y")."-".date("n")."-".date("j"); /*сегодняшняя дата*/
}
else{
  $strtt=$t_year."-".$t_month."-".$n_day;
}
$name_day=strftime("%a",strtotime($strtt));

/*echo $name_day."<br/>";*//*выводит с большой буквы, а в базе названия столбцов с маленькой*/

/*$name_day=$week[$n_day];*/

/*$id_group='112782';*/
/*$year='2016';*/
/*$semester='5';*/
/*$updown='0';*/
$request="(id_group='".$id_group."' and year='".$year."' and semester='".$semester."' and updown='".$updown."')";
/*echo $request;*/

/*echo $request."<br/>";*/

$query = "SELECT $name_day FROM schedule WHERE $request";

if ($result = $mysqli->query($query)) {
    /* извлечение ассоциативного массива */
    $data = $result->fetch_assoc();
    /* удаление выборки */
   $result->free();
}
else{echo "error-mysql->query"; exit();}
/* закрытие соединения */
$mysqli->close();





$time=array(
    0  => '8.00-9.35',
    1  => '9.50-11.25',
    2  => '11.55-13.30',
    3  => '13.45-15.20',
    4  => '15.50-17.25',
    5  => '17.40-19.15'
);

/*echo $data['mon'];*/
$discipline = explode(";", $data[$name_day]);
/*echo "data_name_day=".$data[$name_day]."<br/>";*/
/*echo "countDisc=".count($discipline)."<br/>";*/
$i=0;
while($i< (count($discipline)-1)){
  /*echo "discipline_i=".$discipline[$i]."<br/>";*/
  $number_discipline[$i] = explode("?", $discipline[$i]);
  /*echo $number_discipline[$i][1];*/
  /*echo "number_discipline_i=".$number_discipline[$i][0]."<br/>";
  echo "number_discipline_i=".$number_discipline[$i][1]."<br/>";*/
  $i++;
}

/*echo "<br/>".count($discipline)."<br/>";*/
$i=1;$j=0;
/*echo "countDisc=".count($discipline)."<br/>";*/
while ( $i<= 7 && $j < count($number_discipline)) {
  if($number_discipline[$j][0]==($i)){
  ?>
  <div class="st">
    <div class="td1"><?php echo $time[$i-1];?></div>
    <div class="td2"><p><a href="discipline.php"><?php echo $number_discipline[$j][1];?></a></p></div>
    <div class="clear"></div>
  </div>
  <?php
  $j++;
  }
  /*echo "i=".$i."<br/>";
  echo "j=".$j."<br/>";
  echo "number_discipline_i=".$number_discipline[$i][0]."<br/>";
  echo "number_discipline_i=".$number_discipline[$i][1]."<br/>";
  echo "number_discipline_j=".$number_discipline[$j][0]."<br/>";
  echo "number_discipline_j=".$number_discipline[$j][1]."<br/><br/>";*/

  $i++;
}

?>
     <!--div class="st"><div class="td1">8.00-9.35</div><div class="td2">Матан, 504, Преподаватель фоывл ф.ф.</div></div>
     <div class="st"><div class="td1">8.00-9.35</div><div class="td2">Матан, 504, Преподаватель фоывл ф.ф.</div></div>
     <div class="st"><div class="td1">8.00-9.35</div><div class="td2">Матан, 504, Преподаватель фоывл ф.ф.</div></div-->

     <div id="orange_line"></div>
    </div>
<?php
/*
$strtt=$t_year."-".$t_month."-"."8";
echo strftime("%a",strtotime($strtt));
echo $strtt;






$a=date("t",strtotime($strtt));
echo "<br/>".$a."<br/>";

*/
?>



  </div>



<!--/*Для одинаковой высоты вложенных блоков*/div id="content1">
  <div id="sideleft">Блок №1</div>
  <div id="sideright">Блок №2</div>
</div-->
  
  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
 </body>
</html>