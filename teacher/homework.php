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

<?php
$login=$_SESSION['user']['login'];
//echo "s=".$login;

  $query = "SELECT id from userlist WHERE login='$login'";
  if ($result = $mysqli->query($query)) {
      /* извлечение ассоциативного массива */
      $data= $result->fetch_assoc();
      /* удаление выборки */
     //$result->free();
  }
  else{echo "error-mysql->query";exit();}
  /* закрытие соединения */
  //$mysqli->close();

$idTU=$data['id'];
//echo $idTU;

if (isset($_GET['id'])) {$id = $_GET['id']; if ($id == '') {unset($id);} }
if (isset($_GET['idCO'])) {$idCO = $_GET['idCO']; if ($idCO == '') {unset($idCO);}else{$course=$idCO;} }


if(isset($id) and isset($idCO)){
  include("blocks/messageHW.php");
}
else{
  ?>
    <div class='groupe_box'>
  <?php
    if (isset($_GET['group'])) {$group = $_GET['group']; if ($group == '') {unset($group);} }
    if(isset($group)){
      if (isset($_GET['course'])) {$course = $_GET['course']; if ($course == '') {unset($course);} }
      if(isset($course)){
        $query = "SELECT * from homework WHERE (idTU='$idTU' and idCO='$course' and idGR='$group') ORDER BY deadline";
        if ($result = $mysqli->query($query)) {
            /* извлечение ассоциативного массива */
            $data= $result->fetch_assoc();
            /* удаление выборки */
           //$result->free();
        }
        else{echo "error-mysql->query";exit();}
        /* закрытие соединения */
        //$mysqli->close();

        /*echo "<h1>".$data['idHW']."</h1>";*/
        if($data['idHW']==''){
          echo "<p style='color:black;padding-left:20px;'><br>Вы еще не создали задания этой группе по этому предмету.</p>";
        }
        else{
          if(isset($idCO)){
            if (isset($_GET['date'])) {$date = $_GET['date']; if ($date == '') {unset($date);} }

            $query = "SELECT * from userlist WHERE idGR='$group' ORDER BY last_name";
            if ($result = $mysqli->query($query)) {
                /* извлечение ассоциативного массива */
                $data= $result->fetch_assoc();
                /* удаление выборки */
               //$result->free();
            }
            else{echo "error-mysql->query";exit();}
            /* закрытие соединения */
            //$mysqli->close();

            printf("<div class='title'>Выберите студента</div>");
            $i=1;
            do{
              $fio=$data['last_name']." ".$data['first_name']." ".$data['middle_name'];
              printf("<div class='group_list'>%s <a href='?id=%s&idCO=%s&date=%s'> %s</a></div>",$i,$data['id'],$course,$date,$fio);
              $i++;
            }
            while ($data= $result->fetch_assoc());
          }
          else{
            echo "<div class='title'>Выберите дату по предмету ".$data['name_course']."</div>";
            do{
              printf("<div class='group'><a href='?group=%s&idCO=%s&date=%s'>%s</a></div>",$group,$course,$data['deadline'],$data['deadline']);
            }
            while ($data= $result->fetch_assoc());
            echo "<div class='clear'></div>";
          }
        }
      }
      else{
        echo "<div class='title'>Выберите предмет</div>";
        $query = "SELECT * from courses WHERE (idGR='$group' and idTU='$idTU') ORDER BY name_course";
            if ($result = $mysqli->query($query)) {
                /* извлечение ассоциативного массива */
                $data= $result->fetch_assoc();
                /* удаление выборки */
               //$result->free();
            }
            else{echo "error-mysql->query";exit();}
            /* закрытие соединения */
            //$mysqli->close();

        do{
          printf("<div class='group'><a href='?group=%s&course=%s'>%s</a></div>",$group,$data['idCO'],$data['name_course']);
        }
        while($data= $result->fetch_assoc());



        echo "<div class='clear'></div>";
      }
    }
  else{
    /*$result=mysql_query("SELECT * from userlist WHERE idGR='$group' ORDER BY last_name");
      $data=mysql_fetch_assoc($result);
      //добавить выборку групп из базы
      */
    printf("
        <div class='title'>Выберите группу</div>
        <div class='group'><a href=''>2.1 САУ</a></div>
        <div class='group'><a href='?group=5843566489b19'>3.1 САУ</a></div>
        <div class='group'><a href=''>4.1 САУ</a></div>
        <div class='clear'></div>
    ");
  }
}
?>
  </div>









  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
  <div id="element"></div>
</body>
</html>