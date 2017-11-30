<?php
header("Content-type: text/html; charset=utf-8");
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Athena</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/teacher_css_tmp.css" />
  <script type="text/javascript" src="../js/jquery-3.2.1.js"></script>

</head>
<body>


<div id="content">
  
<form name="upload" id="form" enctype="multipart/form-data" method="post">
    <input type="hidden" name="MAX_FILE_SIZE" value="3000000" id="upload-MAX_FILE_SIZE">
    <input type="file" name="myfile" id="myfile">
    <input type="submit" value="Загрузить">
</form>

<!-- Выводим количество загруженных байт -->
<p id="uploaded"></p>
<!-- Выводим прогресс-бар -->
<p><progress max="100" value="0" id="progress"></progress></p>
<!-- Выводим результат загрузки файла -->
<p id="result"></p>

</div>
<script type="text/javascript">
var progress    = document.getElementById("progress"),
    uploaded    = document.getElementById("uploaded"),
    result      = document.getElementById("result"),
    maxFileSize = document.getElementById("upload-MAX_FILE_SIZE");

document.getElementById("form").onsubmit = function(e) {
    e.preventDefault();
    var input = this.elements.myfile;
    var file = input.files[0];
    
    // проверка на размер файла
    if (file.size >= maxFileSize.value) {
        result.innerHTML = 'Слишком большой размер файла';
        return false;
    }
    
    if (file) {
        upload(file);
    }
}


function upload(file) {
    var ajax = new XMLHttpRequest();
    ajax.upload.onprogress = function(event) {
        uploaded.innerHTML = 'Загружено ' + event.loaded + ' из ' + event.total;
        progress.setAttribute('max', event.total);
        progress.value = event.loaded;
    }

    ajax.onload = ajax.onerror = function() {
        if (this.status == 200) {
            result.innerHTML = 'Файл успешно загружен';
        } else {
            result.innerHTML = 'Не удалось загрузить файл';
        }
    }

    var formData = new FormData();
    formData.append("userfile", file);
    
    ajax.open("POST", "index.php", true);
    ajax.send(formData);
}
</script>

  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
  <div id="element"></div>
</body>
</html>