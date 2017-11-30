  <div id="checkhw">

<?php

//echo $id_P."1id_P<br>";
//echo $idHW_P."1idHW_P<br>";
//echo $message."1message<br>";

  unset($id_P);
  unset($idHW_P);
  unset($message);
if (isset($_POST['message'])) {$message = $_POST['message']; unset($_POST['message']); if ($message == '') {unset($message);} }
if (isset($_POST['idHW'])) {$idHW_P = $_POST['idHW']; unset($_POST['idHW']); if ($idHW_P == '') {unset($idHW_P);} }
if (isset($_POST['id'])) {$id_P = $_POST['id']; unset($_POST['id']); if ($id_P == '') {unset($id_P);} }

$time_mes = date("Y-m-d H:i:s");
if(isset($message) and isset($idHW_P) and isset($id_P)){
  $res_ins = "INSERT INTO `messagehw` (sender,idST,idHW,message,time_mes) VALUES ('0','$id_P','$idHW_P','$message','$time_mes')";
  $result = $mysqli->query($res_ins);
  if(!$result){echo "Ошибка отправки сообщения!";}
}

//echo $id_P."id_P<br>";
//echo $idHW_P."idHW_P<br>";
//echo $message."message<br>";
//echo $time_mes;
/*
echo "1".$message."<br>";
echo "2".$idHW_P."<br>";
echo "3".$id_P."<br>";
*/


$name_course='584382f41f414';// ключ 1. вырорка HW
$login=$_SESSION['user']['login'];

//$result=mysql_query("SELECT id,idGR from userlist WHERE login='$login'");
//$data=mysql_fetch_assoc($result);

$query = "SELECT id,idGR FROM userlist WHERE login='$login'";

if ($result = $mysqli->query($query)) {
    /* извлечение ассоциативного массива */
    $data = $result->fetch_assoc();
    /* удаление выборки */
   $result->free();
}
else{echo "error-mysql->query";exit();}
/* закрытие соединения */




$id=$data['id'];
$idGR=$data['idGR'];// ключ 2. вырорка HW
/*echo $id."<br>";
echo $idGR."<br>";*/

//$result=mysql_query("SELECT idHW,idTU,theme,descr,link from homework WHERE (idGR='$idGR' and idCO='$name_course')");
//$data=mysql_fetch_assoc($result);


$query = "SELECT * from homework WHERE (idHW ='584351a4ca721')";

if ($result = $mysqli->query($query)) {
    /* извлечение ассоциативного массива */
    $data = $result->fetch_assoc();
    /* удаление выборки */
   $result->free();
}
else{echo "error-mysql->query";exit();}
/* закрытие соединения */


/*
echo $data['idHW']."<br>";
echo $data['idPR']."<br>";
echo $data['theme']."<br>";
echo $data['descr']."<br>";
echo $data['link']."<br>";*/
$theme=$data['theme'];
$descr=$data['descr'];
$idCO = $data['idCO'];
$idTU = $data['idTU'];
$deadline = $data['deadline'];
$idHW=$data['idHW'];//key 1
//$id   key 2

//$result=mysql_query("SELECT sender,message,link from messagehw WHERE (idHW='$idHW' and idST='$id')");
//$data=mysql_fetch_assoc($result);


$today = date("Y-m-d H:i:s");
$number_of_sec = strtotime($deadline) - strtotime($today);
$number_of_days = (int) ($number_of_sec/(60*60*24));
$number_of_hours = (int) (($number_of_sec - $number_of_days*60*60*24)/(60*60));
$number_of_min = (int) (($number_of_sec - $number_of_days*60*60*24 - $number_of_hours*60*60)/60);

//echo $number_of_days.'дней';
//echo $number_of_hours.'часов';
//echo $number_of_min.'минут';
$query = "SELECT * from status_hw WHERE (idHW ='$idHW' and id = '$id')";

if ($result = $mysqli->query($query)) {
    /* извлечение ассоциативного массива */
    $data = $result->fetch_assoc();
    /* удаление выборки */
   $result->free();}
else{echo "error-mysql->query";exit();}
/* закрытие соединения */


 switch ($data['status']) {
    case '0':
      $status = "На выполнении";
      $img_dz = "/img/in_progres.png";
      break;
    case '1':
      $status = "На проверке";
      $img_dz = "/img/on_checking.png";
      break;
    case '2':
      $status = "Принят";
      $img_dz = "/img/adopted.png";
      break;
    case '3':
      $status = "Время вышло";
      $img_dz = "/img/time_out.png";
      break;
  }

   $ostalos = "Осталось";
   if ($number_of_days < 0 || $number_of_hours < 0 || $number_of_min < 0) {
     $number_of_days = 0;
     $number_of_hours = 0;
     $number_of_min = 0;
     $name_of_day = "дней";
   }
     else {
     if ($number_of_days == 11 || $number_of_days == 12)
     $name_of_day = "дней";
     elseif ($number_of_days%10 == 1) {
      $name_of_day = "день";
      $ostalos = "Остался";
     }
     elseif ($number_of_days%10 == 2 || $number_of_days%10 == 3 || $number_of_days%10 == 4)
     $name_of_day = "дня";
     else $name_of_day = "дней";
   }
    

if ($number_of_days == 0 && $number_of_hours == 0 && $number_of_min == 0) {
      $status = "Время вышло";
      $img_dz = "/img/time_out.png";
   }
?>

<?php if ($result = $mysqli->query($query)) ?>

<?php  $query = "SELECT name_course from courses WHERE (idCO='$idCO')";

if ($result = $mysqli->query($query)) {
    /* извлечение ассоциативного массива */
    $data = $result->fetch_assoc();
    /* удаление выборки */
}
else{echo "error-mysql->query"; exit();}
?>
<?php $name_course = $data['name_course'];  ?>

<?php  $query = "SELECT last_name, first_name, middle_name from userlist WHERE (id='$idTU')";

if ($result = $mysqli->query($query)) {
    /* извлечение ассоциативного массива */
    $data = $result->fetch_assoc();
    /* удаление выборки */
}
else{echo "error-mysql->query"; exit();}
?>
<?php $last_name = $data['last_name'];
      $first_name = $data['first_name']; 
      $middle_name = $data['middle_name']; ?>




<div class="clear"></div>
<div id="name_discipline"><?php echo $name_course.' '.$last_name.' '.$first_name.' '.$middle_name?></div>
<div id="theme"><?php echo $theme;?></div>
<div id="discription_box">
  <div id="discription">
    <?php echo $descr;?>
  </div>
  <div class="clear"></div>
</div>

<?php
$query = "SELECT sender,message,link, time_mes from messagehw WHERE (idHW='$idHW' and idST='$id') ORDER BY time_mes";

if ($result = $mysqli->query($query)) {
    /* извлечение ассоциативного массива */
    $data = $result->fetch_assoc();
    /* удаление выборки */
}
else{echo "error-mysql->query"; exit();}

do{
  if($data['sender']==0){
  printf("
    <div class='message'>
      <div class='you'>%s</div>
      <div class='clear'></div>
    </div>

  ",$data['message'].'<br><br>'.$data['time_mes']);
  }
  else{
printf("
    <div class='message'>
      <div class='he'>%s</div>
      <div class='clear'></div>
    </div>

  ",$data['message'].'<br><br>'.$data['time_mes']);
  }
  /*echo "1".$data['message']."<br>";*/
}
while($data = $result->fetch_assoc());
 $result->free();
 $mysqli->close();
?>



<div class="input_message">
  <form action="homework.php" method="post" style="position:relative;"> 
    <textarea class="text" name="message"></textarea>
    <input type="hidden" name="" value="">
    <?php
      printf("<input type='hidden' name='id' value='%s'>",$id);
      printf("<input type='hidden' name='idHW' value='%s'>",$idHW);
    ?>
    <br>
    <button type="submit" class="buttonSub">Отправить</button>
  </form>
</div>

</div>

  <div id="files">
    <div id="status_dz">
      <div id="image_status"><img height="110px" src="<?php echo $img_dz;?>"></div>
     <div id="status"><?php echo $status; ?></div>
    <div id="deadline_dz"><?php echo $ostalos." ".$number_of_days." ".$name_of_day." ".$number_of_hours." ч. ".$number_of_min." мин."; ?></div>
</div>
  </div>