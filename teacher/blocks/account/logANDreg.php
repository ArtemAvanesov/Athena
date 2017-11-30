<?php
if (isset($_POST['sub_reg'])) {$sub_reg = $_POST['sub_reg']; if ($sub_reg == '') {unset($sub_reg);} }

if(isset($sub_reg)){
        if (isset($_POST['z_fio'])) {$z_fio = $_POST['z_fio']; if ($z_fio == '') {unset($z_fio);} }
        if (isset($_POST['z_phone'])) {$z_phone = $_POST['z_phone']; if ($z_phone == '') {unset($z_phone);} }
        if (isset($_POST['z_mail'])) {$z_mail = $_POST['z_mail']; if ($z_mail == '') {unset($z_mail);} }
        if (isset($_POST['z_pass'])) {$z_pass = $_POST['z_pass']; if ($z_pass == '') {unset($z_pass);} }
        
        if (isset($_POST['z_street'])) {$z_street = $_POST['z_street']; if ($z_street == '') {unset($z_street);} }
        if (isset($_POST['z_house'])) {$z_house = $_POST['z_house']; if ($z_house == '') {unset($z_house);} }
        if (isset($_POST['z_korpus'])) {$z_korpus = $_POST['z_korpus']; if ($z_korpus == '') {$z_korpus = '';} }
        if (isset($_POST['z_kvartira'])) {$z_kvartira = $_POST['z_kvartira']; if ($z_kvartira == '') {$z_kvartira = '';} }
        
        if(isset($z_fio) and isset($z_phone) and isset($z_mail) and isset($z_pass)and isset($z_street) and isset($z_house)){
            
            $date = (date("Y.m.d"));
             /*Создаем id_user*/
                set_time_limit (0);
             $flag=true;
             do{
                $res_r = mysql_query("SELECT id FROM userlist");
                $myrow_r = mysql_fetch_array($res_r);
                $iduser="id".rand (10000,99999);
                $k=0;
                $i=1;
                do{
                    if($myrow_r['id']==$iduser){$k=1;}
                    $i++;
                }
                while($myrow_r = mysql_fetch_array($res_r));
                if($k==1){$flag=true;}
                else{$flag=false;}
             }
             while($flag==true);//условие продолжения цикла
             /*Создаем id_user*/
             
             /* начало занесения информации о накладной и получателе в базу*/
             $result_user = mysql_query ("INSERT INTO userlist (id,fio,date,pass,fon,mail,street,house,korpus,kvartira,komment) 
                VALUES ('$iduser','$z_fio','$date','$z_pass','$z_fon','$z_mail','$z_street','$z_house','$z_korpus','$z_kvartira','$z_komment')");
             /* конец занесения информации о накладной и получателе в базу*/
             if($result_user){echo "Вы успешно зарегистрированы!Проверьте свою почту!";}
             else{echo "Во время регистрации произошла ошибка, обратитесь к администрации сайта по адресу sup@zcrostov.ru.";}
         }
         else{echo "Все поля, обозначеныые *, должны быть заполены! Проверьте правильность введенных данных.";}
}
else{
    ?>
    
    <div class="reglogin_slide">
<?php
if($_GET['slide']=='reg'){?>
    <input  id="notebook1_1" type="radio" class="notebook_radio" name="reglogin_slide"/>
    <label for="notebook1_1" style="width:343px;">Вход</label>
        
    <input  id="notebook1_2" type="radio" class="notebook_radio" name="reglogin_slide" checked/>
    <label for="notebook1_2" style="width:343px;">Регистрация</label>
<?php }
else{?>
    <input  id="notebook1_1" type="radio" class="notebook_radio" name="reglogin_slide" checked/>
    <label for="notebook1_1" style="width:343px;">Вход</label>
            
    <input  id="notebook1_2" type="radio" class="notebook_radio" name="reglogin_slide"/>
    <label for="notebook1_2" style="width:343px;">Регистрация</label>
<?php }?>
            
        
     <div class="pages">
            <?php /*include("blocks/account/headaccount.php");*/?>
                        <div id="login" class="innerBox sidebarForm" style="margin:0 auto;width: 350px;margin-top:30px;">
                            <form action="#" method="post" style="margin:0 auto;width: 250px;">
                                <p>
                                    <span>Телефон или email</span>
                                    <input id="email" required pattern="\S+@[a-z]+.[a-z]+" name="login" maxlength="20">
                                </p>        
                                <p>
                                    <span>Пароль</span>
                                    <input type="password" name="pass"  maxlength="20">
                                </p>
                                <button type="submit" class="buttonSub">Войти</button>
                            </form>
                            <div id="recoveryPassword" style="margin-left: 50px;">
                                <a class="recoveryPassword" href="user.php?login=zabil">Забыли пароль?</a>
                            </div>
                        </div>
     </div>
     <div class="pages">
               <?php include("blocks/account/reg_form.php");?>
     </div>
    </div>
<?php 
}
?>