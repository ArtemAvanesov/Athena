<?php session_start();
include("../db_conn.php");

if (isset($_POST['stcod'])) {$sitecod = $_POST['stcod']; if ($sitecod == '') {unset($sitecod);} }
$user=$_SESSION['user']['id'];

$result = mysql_query("SELECT sitecod_list FROM personal_box WHERE iduser='$user'"); 
$myrow = mysql_fetch_array($result);

$strpos = strpos($myrow['sitecod_list'], $sitecod);
$str_lenth=strlen($myrow['sitecod_list'])-8;
$sitecod_list = substr($myrow['sitecod_list'], 0, $strpos)."".substr($myrow['sitecod_list'], $strpos+8, $str_lenth);

$stcdsql = mysql_query ("UPDATE personal_box SET sitecod_list='$sitecod_list' WHERE iduser='$user'");
include("personal_box.php");
?>