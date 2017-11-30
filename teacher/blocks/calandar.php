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
<?php
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
  ?><div class="tr"><?php
  $i=1;
  while ($i<=7 and $day<= $mount) {
    if($day==0){/*пустые блоки в начало месяца*/
      $k=1;
      while ($k<$n_mount) {
        ?><div class="td"></div><?php
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
  ?></div><?php
  if($updw==1) $updw=0;
  else $updw=1;
  $j++;
}
$day=1;

?>
    <div class="big_today"><?php echo date("j");?></div>
    <div class="month">
      <span class="left">
<?php
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
<?php
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
<?php
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
<?php
/*echo $strtt=$t_year."-".$t_month."-".$today;*/
?>
</div>