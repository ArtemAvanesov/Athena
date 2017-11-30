<?php
header("Content-type: text/html; charset=utf-8");
session_start();
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Athena</title>
  <link rel="stylesheet" type="text/css" media="all" href="css/student_css_tmp.css" />
</head>
<body>
<div class="db_hide" style="display: none;">
  <?php include("../blocks/db_conn.php");?>
</div>
<?php include("blocks/SitebarL_Header.php");?>
<div id="checkhw">
<iframe width="250" height="150" src="https://www.youtube.com/embed/eOn5I3cJw14" frameborder="0" gesture="media" allowfullscreen></iframe>
<iframe width="250" height="150" src="https://www.youtube.com/embed/r81NRWALQpw" frameborder="0" gesture="media" allowfullscreen></iframe>
<?php  ?>
</div>
  <div id="left"></div>
  <div id="right"></div>
  <div id="centr"></div>
  <div id="footer"></div>
  <div id="element"></div>
</body>
</html>