<?php
$dir = 'blocks/';
 
$f = scandir($dir);
 
foreach ($f as $file){
    if(preg_match('/\.(php)/', $file)){
        echo $file.'<br/>';
    }
}
?>