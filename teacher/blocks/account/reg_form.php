<form name="upload" id="form1" action="account.php" method="POST" enctype="multipart/form-data" style="margin-top: 30px;"> 
                <div id="table003" class="table2" style="margin: 20px auto;text-align: right;">
                <div class="tbody">
                        <div class="tr">
                            <div class="th">Имя</div>
                            <div class="td"><input type="text" name="z_fio" maxlength="40"/></div>
                        </div>
                        <div class="tr">
                            <div class="th">Телефон для связи<span class="red_zvezda">*</span></div>
                            <div class="td"><input type="text" name="z_phone" maxlength="10" placeholder="Связь с курьером"/></div>
                        </div>
                        <div class="tr">
                            <div class="th">E-mail</div>
                            <div class="td"><input type="text" name="z_mail" maxlength="40" placeholder="Для восстановления пароля"/></div>
                        </div>
                        <div class="tr">
                            <div class="th">Пароль<span class="red_zvezda">*</span></div>
                            <div class="td"><input type="text" name="z_pass" maxlength="20"/></div>
                        </div>
                        <div class="tr">
                            <div class="th">Адрес для дставки<span class="red_zvezda">*</span></div>
                            <div class="td">
                                <input type="text" name="z_street" maxlength="40" style="width:100px;" placeholder="Улица*"/>
                                <input type="text" name="z_house" maxlength="6" style="width:70px;" placeholder="Дом*"/>
                                <input type="text" name="z_korpus" maxlength="6" style="width:70px;" placeholder="Корпус"/>
                                <input type="text" name="z_kvartira" maxlength="6" style="width:80px;" placeholder="Квартира"/>
                            </div>
                        </div>
                        <p id="sub_enter_p"><input type="submit" name="sub_reg" value="Зарегистрироваться"></p>
                </div>
                </div>
</form>