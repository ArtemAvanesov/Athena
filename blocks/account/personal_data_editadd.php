<?php session_start();
include("../db_conn.php");

if (isset($_POST['z_fio'])) {$z_fio = $_POST['z_fio']; if ($z_fio == '') {unset($z_fio);} }
if (isset($_POST['z_phone'])) {$z_phone = $_POST['z_phone']; if ($z_phone == '') {unset($z_phone);} }
if (isset($_POST['z_mail'])) {$z_mail = $_POST['z_mail']; if ($z_mail == '') {unset($z_mail);} }
if (isset($_POST['z_pass'])) {$z_pass = $_POST['z_pass']; if ($z_pass == '') {unset($z_pass);} }
if (isset($_POST['z_street'])) {$z_street = $_POST['z_street']; if ($z_street == '') {unset($z_street);} }
if (isset($_POST['z_house'])) {$z_house = $_POST['z_house']; if ($z_house == '') {unset($z_house);} }
if (isset($_POST['z_korpus'])) {$z_korpus = $_POST['z_korpus'];}
if (isset($_POST['z_kvartira'])) {$z_kvartira = $_POST['z_kvartira'];}
if (isset($_POST['z_komment'])) {$z_komment = $_POST['z_komment'];}

$usid=$_SESSION['user']['id'];

if(isset($z_fio) and isset($z_phone) and isset($z_mail) and isset($z_pass) and isset($z_street) and isset($z_house) and ($usid!='')){
    $lasttime = (date("Y.m.d"));
    echo date("d.m.Y")." ";
    $result_user = mysql_query ("UPDATE userlist SET fio='$z_fio',fon='$z_phone',mail='$z_mail',pass='$z_pass',street='$z_street',house='$z_house',
    korpus='$z_korpus',kvartira='$z_kvartira',komment='$z_komment',lastime='$lasttime' WHERE id='$usid'");
    
    if($result_user){echo "Сохранено...";}
    else{echo "Во время сохранения произошла ошибка, обратитесь к администрации сайта по адресу sup@zcrostov.ru.";}
}
else{echo "Все поля, обозначеныые *, должны быть заполены! Проверьте правильность введенных данных.";}

include("personal_data.php");
?>