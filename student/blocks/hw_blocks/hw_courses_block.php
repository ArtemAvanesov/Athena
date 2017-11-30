 <div id="checkhw">
<?php
 	$query = "SELECT id FROM userlist WHERE login='$login'";

	if ($result = $mysqli->query($query)) {
	    /* извлечение ассоциативного массива */
	    $data = $result->fetch_assoc();
	    /* удаление выборки */
	   $result->free();
	}
	else{echo "error-mysql->query";exit();}

	$id = $data['id'];
?>

<?php 

	$query = "SELECT * from status_hw WHERE (id ='$id')";

	if ($result1 = $mysqli->query($query)) {
	    /* извлечение ассоциативного массива */
	    $data1 = $result1->fetch_assoc();
	   
	}
	else{echo "error-mysql->query";exit();}
	do{
	$idHW = $data1['idHW'];
	//echo 'idHW = '.$idHW.'<br>';

	$query = "SELECT idCO from homework WHERE (idHW ='$idHW')";

	if ($result = $mysqli->query($query)) {
	    /* извлечение ассоциативного массива */
	    $data = $result->fetch_assoc();
	    /* удаление выборки */
	    $result->free();
	}
	else{echo "error-mysql->query";exit();}

	$idCO = $data['idCO'];
	//echo 'idCO = '.$idCO.'<br>';

	$query = "SELECT DISTINCT name_course, date_exist_course from courses WHERE (idCO = '$idCO') ORDER BY name_course";

	if ($result = $mysqli->query($query)) {
	    /* извлечение ассоциативного массива */
	   $data = $result->fetch_assoc();
	}
	else{echo "error-mysql->query";exit();}
	if ($data['date_exist_course'] > date("Y-m-d")) {
		 printf("  
	     <div class='name_discipline'>%s</div>
	  ",$data['name_course']
	);
	}


} while($data1 = $result1->fetch_assoc());
 $result1->free();
 $result->free();
 $mysqli->close();
 ?>



<!--<form id = 'form'>
		 <input.type="submit" onClick="alert('Ку-ку ёпта!')">
</form>

<script language="JavaScript">
alert("Ку-ку ёпта!");
</script>
-->
 </div>