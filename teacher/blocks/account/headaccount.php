<div id="headlogin">
<?php
if (isset($_POST['login'])) {$login = $_POST['login']; if ($login == '') {unset($login);} }
if (isset($_POST['pass'])) {$pass = $_POST['pass']; if ($pass == '') {unset($pass);} }

if(isset($login) and isset($pass)){
    $result = mysql_query("SELECT * FROM userlist WHERE mail='$login'");          
    $myrow = mysql_fetch_array($result);
    
    if($pass==$myrow['pass']){
        $_SESSION['user']['id'] = $myrow['id'];
        $_SESSION['user']['mail'] = $myrow['mail'];
        $_SESSION['user']['flag'] = 'yes';
    }else{echo "Ошибочка при входе, проверьте правильность введенных данных!";}
}

if (isset($_GET['exit'])) {$exit = $_GET['exit']; if ($exit == '') {unset($exit);} }

if(isset($exit) and ($exit=='yes')){
    /* начало обработчика фотмы удаления*/
        unset($_SESSION['user']['id']);
        unset($_SESSION['user']['mail']);
        unset($_SESSION['user']['flag']);
        ?><meta http-equiv="refresh" content="0; url='exit.php'"><?
    /* конец обработчика фотмы удаления*/
}

if(isset($_SESSION['user']['id']) and $_SESSION['user']['flag']=='yes'){
    ?>
  <p class="inLogin" style="background: url(img/user_logo4.png) 0 1px no-repeat;">
    <a href="index.php"><?php echo $_SESSION['user']['mail'];?></a> | 
    <a href="?exit=yes" class="exit_but">Выход</a>
  </p>
    <?php 
}
else{?>
    <p class="inLogin">
    <a href="#openModal">Вход</a> | 
    <a href="account.php?slide=reg">Регистрация</a>
  </p>
<?php }
?>
  
  <div id="main-container">
    <div id="openModal" class="modalDialog">
        <div class="box">
        <a href="#close" title="Close" class="close">X</a>
        
                    <div id="login" class="innerBox sidebarForm">
                         <h4>Авторизация</h4>
                         <form action="#close" method="post">
                            <p>
                                <span>Телефон или email</span><br />
                                <input id="email" required pattern="\S+@[a-z]+.[a-z]+" name="login" maxlength="20">
                            </p>        
                            <p>
                                <span>Пароль</span><br />
                                <input type="password" name="pass"  maxlength="20">
                            </p>
                            
                            <button type="submit" class="buttonSub">Войти</button>
                            
                        </form>
                        <div id="recoveryPassword">
                            <a href="registration.php">Регистрация</a> <br> <a class="recoveryPassword" href="user.php?login=zabil">Забыли пароль?</a>
                        </div>
                    </div>
        </div>
    </div>
  </div>
</div>