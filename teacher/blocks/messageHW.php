  <script>
window.onload=function(){
     window.scrollTo(0,document.body.scrollHeight);
}

  </script>
<?
if (isset($_POST['message'])) {$message = $_POST['message']; if ($message == '') {unset($message);} }
if (isset($_POST['idHW'])) {$idHW_P = $_POST['idHW']; if ($idHW_P == '') {unset($idHW_P);} }
if (isset($_POST['id'])) {$id_P = $_POST['id']; if ($id_P == '') {unset($id_P);} }

if(isset($message) and isset($idHW_P) and isset($id_P)){
  $res_ins = mysql_query("INSERT INTO `messagehw` (sender,idST,idHW,message) VALUES ('1','$id_P','$idHW_P','$message')");
  if(!$res_ins){echo "Ошибка отправки сообщения.";}
}
?>
  <div id="checkhw">
<?php
/*
echo "1".$message."<br>";
echo "2".$idHW_P."<br>";
echo "3".$id_P."<br>";
*/



$result2=mysql_query("SELECT name_course from courses WHERE idCO='$idCO'");
$data2=mysql_fetch_assoc($result2);

$result1=mysql_query("SELECT idGR,first_name,last_name,middle_name from userlist WHERE id='$id'");
$data1=mysql_fetch_assoc($result1);
//$id    ключ 1
$idGR=$data1['idGR'];// ключ 2. вырорка HW
/*echo "id=".$id."<br>";
echo "gr=".$idGR."<br>";*/
if (isset($_GET['date'])) {$date = $_GET['date']; if ($date == '') {unset($date);} }

$result=mysql_query("SELECT idHW,descr,theme,link,deadline from homework WHERE (idCO='$idCO' and idGR='$idGR' and deadline='$date')");
$data=mysql_fetch_assoc($result);
/*
echo $data['idHW']."<br>";
echo $data['idPR']."<br>";
echo $data['theme']."<br>";
echo $data['descr']."<br>";
echo $data['link']."<br>";*/
$theme=$data['theme'];
$descr=$data['descr'];
$deadline=$data['deadline'];
//********************************************************
$idHW=$data['idHW'];//key 1
//$id   key 2

$result=mysql_query("SELECT sender,message,link from messagehw WHERE (idHW='$idHW' and idST='$id')");


?>

<div id="name_discipline">
  <? echo $data2['name_course'].". ".$data1['first_name']." ".$data1['last_name']." ".$data1['middle_name'];?>
  ------> д/з на <? echo $deadline;?></div>
<div id="theme"><?php echo $theme;?></div>
<div id="discription_box">
  <div id="discription">
    <?php echo $descr;?>
  </div>
  <div class="clear"></div>
</div>
<?php

while($data=mysql_fetch_assoc($result)){
  if($data['sender']==1){
  printf("
    <div class='message'>
      <div class='you'>%s</div>
      <div class='clear'></div>
    </div>

  ",$data['message']);
  }
  else{
printf("
    <div class='message'>
      <div class='he'>%s</div>
      <div class='clear'></div>
    </div>

  ",$data['message']);
  }
  /*echo "1".$data['message']."<br>";*/
}

?>

<div class="input_message">
  <form action="" method="post" style="position:relative;"> 
    <textarea class="text" name="message"></textarea>
    <input type="hidden" name="" value="">
    <?php
      printf("<input type='hidden' name='id' value='%s'>",$id);
      printf("<input type='hidden' name='idHW' value='%s'>",$idHW);
    ?>
    <br>
    <button type="submit" class="buttonSub">Send</button>
  </form>
</div>