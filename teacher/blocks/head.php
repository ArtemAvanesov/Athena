<?php include("blocks/db_conn.php");?>
<div id="header">
 <?php include("blocks/account/headaccount.php");?>
 <div id="logoOpac">
      <div id="logo"></div>
      <div id="contacts">
<?php
$rescon1 = mysql_query("SELECT contact FROM contacts WHERE place='phonetop'");		  
$mrcon1 = mysql_fetch_array($rescon1);
$rescon2 = mysql_query("SELECT contact FROM contacts WHERE place='mailtop'");		  
$mrcon2 = mysql_fetch_array($rescon2);
?>
        <div class="C_li" id="ICphone"><?php echo $mrcon1['contact'];?></div>
        <div class="C_li" id="ICpost"><?php echo $mrcon2['contact'];?></div>
      </div>
      <?php include("blocks/basket.php");?>
 </div>
</div>
<ul id="navigation">
    <li style="background-color: #A1CE2E;"><a href="index"><p>ГЛАВНАЯ</p></a></li>
    <li style="background-color: #85A5D6;"><a href="pricelist.php"><p>КАТАЛОГ</p></a></li>
    <li style="background-color: #30C3AD;"><a href="forus"><p>ИНФО</p></a></li>
    <li style="background-color: #E9E907;"><a href="ourshops"><p>АДРЕСА МАГАЗИНОВ</p></a></li>
    <li style="background-color: #FFD83F;"><a href="ourclinic"><p>АДРЕСА КЛИНИК</p></a></li>
</ul>