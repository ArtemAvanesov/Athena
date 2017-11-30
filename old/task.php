<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
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

  <div id="calandar">
    <div id="title_cl">
      <div class="th">П</div>
      <div class="th">В</div>
      <div class="th">С</div>
      <div class="th">Ч</div>
      <div class="th">П</div>
      <div class="th">С</div>
      <div class="th">В</div>
    </div>
<?
/*?id_group=112782&year=2016&month=11&semester=5&updown=1&day=12*/

if(isset($_GET['year'])){$t_year=$_GET['year'];}else{$t_year=date("Y");}
if(isset($_GET['month'])){$t_month=$_GET['month'];}else{$t_month=date("n");}
if(isset($_GET['day'])){$n_day=$_GET['day'];}else{$n_day=date("j");}


$t_id_group='112782';
/*$t_year='2016';*/
/*$t_month='11';*/
$t_semester='5';
$t_updown='0';
/*Массив с именами дней недели*/
$name_day=array(
    1  => 'mon',
    2  => 'tue',
    3  => 'wed',
    4  => 'thu',
    5  => 'fri',
    6  => 'sat',
    7  => 'sun'
);

/*$strtt=$t_year."-".$t_month."-"."1";*/
/*echo "<br/>".strftime("%w",strtotime($strtt))."<br/>"; /*номер дня недели, 0 соответствует воскресенью */
/*echo $strtt=$t_year."-".$t_month."-".$today;*/

$today_year=date("Y"); /*сегодняшний год*/
$today_month=date("n"); /*сегодняшний месяц*/
$today=date("j"); /*сегодняшний день*/
$strtt=$t_year."-".$t_month."-"."8"; /*дата, например 2016-10-12*/
$mount=date("t",strtotime($strtt));/*кол-во дней в месяце*/
$n_mount=strftime("%w",strtotime($strtt));/*начало месяца со вторника*//*номер дня недели, 0 соответствует воскресенью */
$n_while=($mount+$n_mount-2)/7+1;/*минус 2 для округления*/
$n_while=round($n_while, 0, PHP_ROUND_HALF_UP);/*округление в большую сторону*/
/*echo $n_while;*/


$week=1;
$updw=0;

$day=0;
$j=1;
while ($j<=$n_while and $day<=$mount) {
  ?><div class="tr"><?
  $i=1;
  while ($i<=7 and $day<= $mount) {
    if($day==0){/*пустые блоки в начало месяца*/
      $k=1;
      while ($k<$n_mount) {
        ?><div class="td"></div><?
        $i++;
        $k++;
      }
      $day=1;
    }
    $name_daybyweek=$name_day[$i];
    $request_get="?id_group=".$t_id_group."&year=".$t_year."&month=".$t_month."&semester=".$t_semester."&updown=".$updw."&day=".$day;
    if($t_year==$today_year and $t_month==$today_month and $day==$today){
      printf("<div class='today'><a href='%s'>%s</a></div>",$request_get,$day);
    }
    elseif($day==$n_day){
      printf("<div class='td'><a href='%s' style='color: #7970e8;'>%s</a></div>",$request_get,$day);
    }
      else{
      printf("<div class='td'><a href='%s'>%s</a></div>",$request_get,$day);
      }
    $i++;
    $day++;
    $week++;
    /*echo $day;*/
  }
  ?></div><?
  if($updw==1) $updw=0;
  else $updw=1;
  $j++;
}
$day=1;

?>
    <div class="big_today"><? echo date("j");?></div>
    <div class="month">
      <span class="left">
<?
if($t_month<2){
  $t_year--;
  $t_month=12;
}
else{
  $t_month--;
}
$request_get="?id_group=".$t_id_group."&year=".$t_year."&month=".$t_month."&semester=".$t_semester."&updown=".$updw."&day=".$day;
printf("<a href='%s'>&#8249;</a>",$request_get);
?>
      </span>
<?
if($t_month>11){
  $t_year++;
  $t_month=1;
}
else{
  $t_month++;
}
$strtt=$t_year."-".$t_month."-".$today; /*дата, например 2016-10-12*/
echo strftime("%B",strtotime($strtt)); /*вывод имени месяца по дате*/
?>
      <span class="right">
<?
if($t_month>11){
  $t_year++;
  $t_month=1;
}
else{
  $t_month++;
}
$request_get="?id_group=".$t_id_group."&year=".$t_year."&month=".$t_month."&semester=".$t_semester."&updown=".$updw."&day=".$day;
printf("<a href='%s'>&#8250;</a>",$request_get);
if($t_month<2){
  $t_year--;
  $t_month=12;
}
else{
  $t_month--;
}
?>
      </span>
    </div>
<?
/*echo $strtt=$t_year."-".$t_month."-".$today;*/
?>
  </div>

  <div id="content">
    <div class="db_hide">
      <?php include("blocks/db_conn.php");?>
    </div>
    <div id="schedule">
     <div id="title_sh">Расписание на 
<?

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

$result=mysql_query("SELECT $name_day from schedule WHERE $request");
$data=mysql_fetch_assoc($result);

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
while ( $i<= 7) {
  if($number_discipline[$j][0]==($i)){
  ?>
  <div class="st">
    <div class="td1"><? echo $time[$i-1];?></div>
    <div class="td2"><p><? echo $number_discipline[$j][1];?></p></div>
    <div class="clear"></div>
  </div>
  <?
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
<?
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