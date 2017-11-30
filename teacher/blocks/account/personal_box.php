<?php

    $usid=$_SESSION['user']['id'];
    $result = mysql_query("SELECT sitecod_list FROM personal_box WHERE iduser='$usid'");		  
    $myrow = mysql_fetch_array($result);

    $arr_cod = explode(';', $myrow['sitecod_list']);
$i=0;
do{
    $sitecod = $arr_cod[$i];
    
    $result = mysql_query("SELECT name,idprod FROM table2_actual WHERE sitecod='$sitecod'");		  
    $myrow = mysql_fetch_array($result);
    
    $idprod=$myrow['idprod'];
    ?><div class="box_element">
        
          <input type='button' class="del_inbox" value='x' title='удалить из MyBox' 
          onclick="document.getElementById('delete<?php echo $i?>').style.display='inline'; return false;"/>
            <span id="delete<?php echo $i?>" style="display:none;position:absolute;top:3px;left:20px;">
                <a onclick="AjaxFormRequest('mybox', 'form_outbox<?php echo $i?>', 'blocks/account/delmade_box.php')" style="cursor: pointer;">удалить</a> /
                <a href="#" onclick="document.getElementById('delete<?php echo $i?>').style.display='none'; return false;">отмена</a>
            </span>
          
          
          
          <form method='post' action='' id='form_outbox<?php echo $i?>'><input type='hidden' value='<?php echo $sitecod;?>' name='stcod'/></form>
    <?
    if($idprod!=0){
        $result2 = mysql_query("SELECT img FROM prod_list WHERE idprod='$idprod'");		  
        $myrow2 = mysql_fetch_array($result2);
        ?><img src="http://zcrostov.ru/<?php echo $myrow2['img'];?>" height="150"/><?}
    else{?><img src="img/fotonone.png" style="margin-top: 50px;opacity: 0.2;"/><?}
        
        ?><div class="price"><? echo $myrow['name'];?></div>
    </div><?
    $i++;
}
while($arr_cod[$i]!='');
?>
    <a class="box_element_plus" href="pricelist.php"></a>
    <div class="clear"></div>
