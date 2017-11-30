<?php
    $usid=$_SESSION['user']['id'];
    $result = mysql_query("SELECT * FROM userlist WHERE id='$usid'");		  
    $myrow = mysql_fetch_array($result);
    ?>
        <form name="upload" id="form1" action="account.php" method="POST" enctype="multipart/form-data" style="margin-top: 30px;"> 
                <div id="table003" class="table2" style="margin: 20px auto;text-align: right;">
                <div class="tbody">
                        <div class="tr">
                            <div class="th">Ф.И.О<span class="red_zvezda">*</span></div>
                            <div class="td"><input type="text" name="z_fio" maxlength="40" value="<?php echo $myrow['fio'];?>" disabled /></div>
                        </div>
                        <div class="tr">
                            <div class="th">Телефон для связи<span class="red_zvezda">*</span></div>
                            <div class="td"><input type="text" name="z_phone" maxlength="10" value="<?php echo $myrow['fon'];?>" disabled></div>
                        </div>
                        <div class="tr">
                            <div class="th">E-mail<span class="red_zvezda">*</span></div>
                            <div class="td"><input type="text" name="z_mail" maxlength="40" value="<?php echo $myrow['mail'];?>" disabled></div>
                        </div>
                        <div class="tr">
                            <div class="th">Адрес для дставки<span class="red_zvezda">*</span></div>
                            <div class="td">
                                <input type="text" name="z_street" maxlength="40" style="width:100px;" value="<?php echo $myrow['street'];?>" disabled/>
                                <input type="text" name="z_house" maxlength="6" style="width:70px;" value="<?php echo $myrow['house'];?>" disabled/>
                                <input type="text" name="z_korpus" maxlength="6" style="width:70px;" value="<?php echo $myrow['korpus'];?>" disabled/>
                                <input type="text" name="z_kvartira" maxlength="6" style="width:80px;" value="<?php echo $myrow['kvartira'];?>" disabled/>
                            </div>
                        </div>
                        <div class="tr">
                            <div class="th">Комментарий к заказу</div>
                            <div class="td"><textarea name="z_komment" disabled><?php echo $myrow['komment'];?></textarea></div>
                        </div>
                        
                        
                        <p id="sub_enter_p"><input type='button' class="del_inbox"  value="Редактировать" title='удалить из MyBox' 
                        onclick="AjaxFormRequest('mydata', '', 'blocks/account/personal_data_edit.php')"/></p>
          
                </div>
                </div>
            </form>