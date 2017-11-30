<?
header("Content-type: text/html; charset=utf-8");
echo "<p>генерация уникального id в зависимости от текущего времни:</p>";
$id = uniqid("");
echo "<h3>".$id."<h3>";

echo "<p>лучше, труднее взломать: ";
$better_token = md5(uniqid(rand(),1));
echo $better_token."</p>";
?>