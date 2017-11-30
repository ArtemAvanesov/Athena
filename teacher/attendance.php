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

<div class="hh">Посещаемость</div>

<div class="attendance">
  <div class="line l1">
    <div class="fioH">Ф И О</div>
    <div class="column">1</div>
    <div class="column">4</div>
    <div class="column">8</div>
    <div class="column">12</div>
    <div class="column">13</div>
    <div class="column">15</div>
    <div class="column">16</div>
    <div class="column">21</div>
    <div class="column">25</div>
  </div>
<?php
$group="5843566489b19";
$course="58436e1ba5007";


$query = "SELECT * from userlist WHERE (idGR='$group') ORDER BY last_name";
if ($result = $mysqli->query($query)) {
    /* извлечение ассоциативного массива */
    $data = $result->fetch_assoc(); 
}
else{echo "error-mysql->query";exit();}

$query2 = "SELECT * from attendance WHERE (idGR='$group' AND idCO='$course')";
  if ($result2 = $mysqli->query($query2)) {
    /* извлечение ассоциативного массива */
    $data2 = $result2->fetch_assoc();  
}
else{echo "error-mysql->query2";exit();}
echo "<div class = 'name'>";
$i=0;
$j=0;
do{
  if($i%2==0){
    printf("<div class='line l2'><div class='fio'>%s %s</div>",$data['last_name'],$data['first_name']);
  }
  else{
    printf("<div class='line l1'><div class='fio'>%s %s</div>",$data['last_name'],$data['first_name']);
  }
  echo "</div>";
  $i++;
  }while($data = $result->fetch_assoc());
$j++;
$i=0;
echo "</div>";
/* удаление выборки */
$result->free();

echo "<div class = 'date'>";
do{
  //if ($j>0 && $data['id'] =="584318bc576da" && $data2['date']=='2017-11-15') // Вставить внешнюю переменную
    echo "<div class='column' contenteditable=''></div>".$i;//временно
    $i++;
} while($i<10);//временно
echo "</div>";

/* удаление выборки */
$result2->free();
/* закрытие соединения */
$mysqli->close();
?>
<textarea id="cEdit" name="description" style="display:none"></textarea> 

<script>
    $(function(){
        $(".column").on('blur', function(){
            $("#textarea").val($(this).text());
        });
    })
</script>
</div>



  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
  <div id="element"></div>
</body>
</html>