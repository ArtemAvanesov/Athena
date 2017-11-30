<?php session_start();

?>
<!DOCTYPE HTML>
<html lang="ru">
<header>
    <meta charset="utf-8">
    
    <link href="css/style_tmp2.css" type="text/css" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="http://color.romanuke.com/wp-content/uploads/2015/12/cvetovaya-palitra-new_2.png">
    <title>Athena вашего любимого ИВТиПТ</title>
</header>
 
<body>
 <head>
       <!--h1 id="logo">Athena</h1-->
  <nav>
    <ul>
        
    </ul>
  </nav>
 </head>
 <main>

<?php
include("blocks/db_conn.php");

if (isset($_POST['login'])) {$login = $_POST['login']; if ($login == '') {unset($login);} }
if (isset($_POST['pass'])) {$pass = $_POST['pass']; if ($pass == '') {unset($pass);} }

if(isset($login) and isset($pass)){
    $query = "SELECT * FROM userlist WHERE login='$login'";

  if ($result = $mysqli->query($query)) {
      /* извлечение ассоциативного массива */
      $myrow = $result->fetch_assoc();
      /* удаление выборки */
     $result->free();
  }
  else{echo "error-mysql->query";exit();}
  /* закрытие соединения */
  $mysqli->close();
    
    if($pass==$myrow['pass']){
        $_SESSION['user']['n'] = $myrow['n'];
        $_SESSION['user']['login'] = $myrow['login'];
        $_SESSION['user']['flag'] = 'yes';
        if($myrow['status']=='1'){
          $_SESSION['user']['status']='преподаватель';
          ?>
            <script type="text/javascript">
              location.replace("/teacher/");
            </script>
          <?php
        }
        elseif($myrow['status']=='0'){
          $_SESSION['user']['status']='студент';
          ?>
            <script type="text/javascript">
              location.replace("/student/");
            </script>
          <?php
        }
    }else{echo "Ошибочка при входе, проверьте правильность введенных данных!";}
}
?>

<!--div id="account">
 <div id="login" class="innerBox sidebarForm" style="margin:0 auto;width: 350px;margin-top:30px;">
    <form action="login.php" method="post" id="formlogin" style="margin:0 auto;width: 250px;">
      <p>
        <span>Телефон или email</span><br>
        <input id="email" required pattern="\S+@[a-z]+.[a-z]+" name="login" maxlength="30">
      </p>        
      <p>
        <br>
        <span>Пароль</span>
        <br>
        <input type="password" name="pass"  maxlength="20">
      </p>
      <br>
      <button type="submit" class="buttonSub">Войти</button>
    </form>
    <div id="recoveryPassword" style="margin-left: 50px;">
      <br>
      <a class="recoveryPassword" href="user.php?login=zabil">Забыли пароль?</a>
    </div>
  </div>
</div-->

<div id="login-form">
        <h1>Athena</h1>

        <fieldset>
            <form action="index.php" method="POST">
                <input type="email" required value="Телефон или email" onBlur="if(this.value=='')this.value='Телефон или email'" onFocus="if(this.value=='Телефон или email')this.value='' " name="login" maxlength="30" pattern="\S+@[a-z]+.[a-z]+">
                <input type="password" required value="Пароль" onBlur="if(this.value=='')this.value='Пароль'" onFocus="if(this.value=='Пароль')this.value='' "  name="pass" maxlength="20">
                <input type="submit" value="ВОЙТИ">
                <footer class="clearfix">
                    <p><span class="info">?</span><a href="#">Забыли пароль?</a></p>
                </footer>
            </form>
        </fieldset>
</div>
 
 </main>
 

</body>
</html>