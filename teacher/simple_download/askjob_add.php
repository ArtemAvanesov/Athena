<?php

include_once '../scripts/translit.php';
//Папка куда будем загружать файлы
$updir = $_SERVER["DOCUMENT_ROOT"].'/files/';
//Добавляем к имени фала случайное число от 5 до 100 и сегодняшнюю дату
$fname = rand(5,100).date('dmy').'.'.translit(basename($_FILES['userfile']['name']));
$upfile = $updir.$fname;
//перемещаем файл из временной папки в заданную
echo '<pre>';
if (move_uploaded_file($_FILES['userfile']['tmp_name'], $upfile)) {
    echo "Файл {$fname} корректен и был успешно загружен.<br>";
} else {
    echo "Загрузка не удалась!<br>";
}
// echo 'Некоторая отладочная информация:';
// print_r($_FILES);
print "</pre>";
    echo "Путь к документам на сервере: " . $updir;

?>