<?php session_start();
include("../db_conn.php");
    $usid=$_SESSION['user']['id'];
    $result = mysql_query("SELECT * FROM userlist WHERE id='$usid'");		  
    $myrow = mysql_fetch_array($result);
    ?>
        <form name="upload" id="form_datausersave" action="" method="POST" enctype="multipart/form-data" style="margin-top: 30px;"> 
                <div id="table003" class="table2" style="margin: 20px auto;text-align: right;">
                <div class="tbody">
                        <div class="tr">
                            <div class="th">Ф.И.О<span class="red_zvezda">*</span></div>
                            <div class="td"><input type="text" name="z_fio" maxlength="40" value="<?php echo $myrow['fio'];?>"/></div>
                        </div>
                        <div class="tr">
                            <div class="th">Телефон для связи<span class="red_zvezda">*</span></div>
                            <div class="td"><input type="text" name="z_phone" maxlength="10" value="<?php echo $myrow['fon'];?>"></div>
                        </div>
                        <div class="tr">
                            <div class="th">E-mail<span class="red_zvezda">*</span></div>
                            <div class="td"><input type="text" name="z_mail" maxlength="40" value="<?php echo $myrow['mail'];?>"></div>
                        </div>
                        <div class="tr">
                            <div class="th">Пароль<span class="red_zvezda">*</span></div>
                            <div class="td"><input type="text" name="z_pass" maxlength="20" value="<?php echo $myrow['pass'];?>"></div>
                        </div>
                        <div class="tr">
                            <div class="th">Адрес для дставки<span class="red_zvezda">*</span></div>
                            <div class="td">
                                <input type="text" name="z_street" maxlength="40" style="width:100px;" value="<?php echo $myrow['street'];?>" placeholder="Улица*"/>
                                <input type="text" name="z_house" maxlength="6" style="width:70px;" value="<?php echo $myrow['house'];?>" placeholder="Дом*"/>
                                <input type="text" name="z_korpus" maxlength="6" style="width:70px;" value="<?php echo $myrow['korpus'];?>" placeholder="Корпус"/>
                                <input type="text" name="z_kvartira" maxlength="6" style="width:80px;" value="<?php echo $myrow['kvartira'];?>" placeholder="Квартира"/>
                            </div>
                        </div>
                        <div class="tr">
                            <div class="th">Комментарий к заказу</div>
                            <div class="td"><textarea name="z_komment"><?php echo $myrow['komment'];?></textarea></div>
                        </div>
                        <p id="sub_enter_p"><input type='button' class="del_inbox"  value="Сохранить" title='удалить из MyBox' 
                        onclick="AjaxFormRequest('mydata', 'form_datausersave', 'blocks/account/personal_data_editadd.php')"/></p>
                </div>
                </div>
            </form>