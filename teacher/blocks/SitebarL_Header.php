<div id="sitebarL"><div id="logo">Athena</div>
    <div id="list">
      <div class="stl"><a href="index.php">Главная <span>&#8250;</a></span></div>
      <div class="stl"><a href="askjob.php">Задать задание <span>&#8250;</a></span></div>
      <div class="stl"><a href="homework.php">Проверить задание <span>&#8250;</a></span></div>
      <div class="stl"><a href="attendance.php">Посещаемость <span>&#8250;</a></span></div>
      <div class="stl"><a href="performance.php">Успеваемость <span>&#8250;</a></span></div>
      <div class="stl"><a href="methodical.php">Метод. материалы <span>&#8250;</a></span></div>
      <div class="stl"><a href="lecture.php">Лекторий <span>&#8250;</a></span></div>
      <div class="stl"><a href="analitics.php">Статистика <span>&#8250;</a></span></div>
      <div class="stl"><a href="tools.php">Настройки <span>&#8250;</a></span></div>

      <!--div class="stl"><a href="group.php">Группы <span>&#8250;</a></span></div>
      <div class="stl"><a href="inddz.php">Индивидуальные задания <span>&#8250;</a></span></div>
      <div class="stl"><a href="test.php">Тесты <span>&#8250;</a></span></div-->
      
    </div>
</div>
<div id="header">
<?php
$login=$_SESSION['user']['login'];


$query = "SELECT first_name,last_name from userlist WHERE login='$login'";

if ($result = $mysqli->query($query)) {
    /* извлечение ассоциативного массива */
    $data = $result->fetch_assoc();
    /* удаление выборки */
   $result->free();
}
else{echo "error-mysql->query";exit();}
/* закрытие соединения */
//$mysqli->close();

?>
	<?php echo "Сегодня ".date(" D, j F Y");/* h:i:s A*/
		echo " -----Страница преподавателя";
	?>
	<div id="head_accaunt">
		<p>
			<span class="name"><? echo $data['first_name']." ".$data['last_name'];?></span>
			<br>
			<span class="status">преподаватель</span>
		</p>
		<a id="exit" href="../">Выход</a>
		<div id="avatar"></div>
	</div>
	<div></div>
</div>