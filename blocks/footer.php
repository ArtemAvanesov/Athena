<div id="footer">
 <div class="center">
    <div class="Lbox">
        <h5>Контакты</h5>
        <div class="line"></div>
<?php
$rescon1 = mysql_query("SELECT contact FROM contacts WHERE place='bottom'");		  
$mrcon1 = mysql_fetch_array($rescon1);
    do{
        ?><p><?php echo $mrcon1['contact'];?></p><?
    }
    while($mrcon1 = mysql_fetch_array($rescon1));
?>
    </div>
    <div class="Rbox">
        <h5>Личный Кабинет</h5>
        <div class="line"></div>
        <li>Личный Кабинет</li>
        <li>История заказов</li>
        <li>Избранное</li>
        <li>Подписка</li>
    </div>
    <div class="Cbox">
        <h5>Информация</h5>
        <div class="line"></div>
        <li>Доставка и оплата</li>
        <li>Акции</li>
        <li>Персональный Box</li>
    </div>
    <div class="partners">
        <h5>Наши партнеры</h5>
        <div class="line"></div>
    </div>
    
 </div>
</div>
    <div class="futbottom">
        <div class='p' style='position:relative;'>
        © «ЗООСИТИ», ИП Нем Вячаслава Афанасьевича, 2010-2015<br/>
        Интернет-магазин кормов, аксессуаров и товаров для животных в Ростове-на-Дону
            <div class='createBY'>
                <a href='http://www.nnuweb.ru'>create by NNUweb</a>
            </div>
        </div>
    </div>