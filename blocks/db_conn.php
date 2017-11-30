<?php

$host = 'localhost';// адрес сервера 
$user = 'id3374301_root'; // имя пользователя
$password = '55791355f'; // пароль
$database = 'id3374301_athena_db'; // имя базы данных

/* Объектно-ориентированный стиль */
/* Подключение к серверу MySQL */
$mysqli = new mysqli($host, $user, $password, $database);

/* проверка соединения */
if ($mysqli->connect_errno) {
    printf("Соединение не удалось: %s\n", $mysqli->connect_error);
    exit();
}

/* Процедурный стиль */
/* Подключение к серверу MySQL *//*
$link = mysqli_connect ( 
            $host,  // Хост, к которому мы подключаемся 
            $user,       // Имя пользователя 
            $password,   // Используемый пароль 
            $database  // База данных для запросов по умолчанию 
           );     

if (mysqli_connect_errno()) {
       $this->error_tpl('Не удалось подключиться к базе данных', mysqli_connect_error());
       die();
   }
*/



















/*



$conn = new mysqli("localhost", "u992245470_athen", "u992245470_athen", "E3Ecjdjj3Go7");
  
  
if ($conn->connect_error) {
    die("Ошибка: не удается подключиться: " . $conn->connect_error);
  } 
 
 
 echo 'Подключение к базе данных.<br>';
 
  $result = $conn->query("SELECT login FROM userlist");
 
 
 echo "Количество строк: $result->num_rows";

 
  //$result->close();
 
 
 //$conn->close();

/*

/*$dbase=mysql_connect('localhost', 'u992245470_athen', 'XBht3WMiaEQ');
  if(!$dbase){

    
   /*?>
    <!DOCTYPE html>
    <html>
    <head>
      <meta http-equiv="content-type" content="text/html; charset=utf-8" />
      <title>Не могу подключиться к БД</title>
    </head>
    <body>
      <br /><br /><br />
      <h1 align="center">Проверьте настройки подключения к БД</h1>
    </body>
    </html>
    <?php
      echo "<h1 style='color:red;'>Проверьте настройки подключения к БД<h1>";
      
  }
  else{
    $dbase=mysql_connect('localhost', 'u992245470_athen', 'XBht3WMiaEQ');
    mysql_select_db('u992245470_athen');
    @mysql_query('set character_set_client="utf8"');
    @mysql_query('set character_set_results="utf8"');
    @mysql_query('set collation_connection="utf8_general_ci"');
    echo "База подключена успешно!";
    echo "<span style='color:yellow;'>&#10003;</span>";
  }

/**/


/*$host = 'localhost'; // адрес сервера 
$database = 'u992245470_athen'; // имя базы данных
$user = 'u992245470_athen'; // имя пользователя
$password = 'XBht3WMiaEQ'; // пароль


// подключаемся к серверу
$link = mysqli_connect($host, $user, $password, $database) 
    or die("Ошибка " . mysqli_error($link));
 
// выполняем операции с базой данных
     
// закрываем подключение
//mysqli_close($link);
*//*
class DB
{
	protected $host = 'localhost'; // адрес сервера 
	protected $database = 'u992245470_athen'; // имя базы данных
	protected $user = 'u992245470_athen'; // имя пользователя
	protected $password = 'XBht3WMiaEQ'; // пароль
    protected $pdo;
 
    public function __construct()
    {
        try
        {
            $this->pdo=new PDO('mysql:host=localhost;dbname=u992245470_athen','u992245470_athen','XBht3WMiaEQ');//пароль пустой-должна быть ошибка,так как в реальности он установлен
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->pdo->exec('SET NAMES "utf8"');
        }
        catch(PDOException $e)
		{ 
		    exit('Невозможно подключиться к серверу баз данных: '.$e->getMessage(););
		}
    }
    public function doo($sql)
    {
        return $this->pdo->query($sql);//Fatal error: Call to a member function query() on null in C:\xampp\htdocs\task3\index.php on line 22.... я так понимаю потому как собственно нет подключения и нечево извлекать неоткуда?
    }
}
$ob=new DB();
$res=$ob->doo('SELECT * FROM user');
var_dump($res);

*/

?>