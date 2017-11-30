<?php

$status = '404 Not Found';

include_once $_SERVER["DOCUMENT_ROOT"].'/scripts/translit.php';
/*
header("HTTP/1.0 {$status}");
header("HTTP/1.1 {$status}");
header("Status: {$status}");
*/
//$basename=basename($_FILES['my-pic']['name']);

$uploaddir =  $_SERVER["DOCUMENT_ROOT"].'/teacher/full2/files/';
$uploadfile = $uploaddir.translit(basename($_FILES['my-pic']['name']));

$file = pathinfo($uploadfile);

$i=1;$uploadfile_new=$uploadfile;
while(file_exists($uploadfile_new)){
	$uploadfile_new=$file['dirname']."/".$file['filename']."(".$i.").".$file['extension'];
	$i++;
}
$uploadfile=$uploadfile_new;

// Копируем файл из каталога для временного хранения файлов:
//copy($_FILES['my-pic']['tmp_name'], $uploadfile);

if(copy($_FILES['my-pic']['tmp_name'], $uploadfile))
	echo "PHP: Файл ".$file['filename'].".".$file['extension']." успешно сохранен.";
else
	echo "PHP: Ошибка при сохранении файла".$file['filename'].".".$file['extension'].".";
//echo 'Contents of $_FILES:<br/><pre>'.print_r($_FILES, true).'</pre>';
echo "<br/>---------------------<br/>";
?>