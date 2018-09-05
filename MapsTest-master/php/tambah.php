<?php
$id = $_GET['id'];
$latitude = $_GET['latitude'];
$longitude = $_GET['longitude'];
$isupdated = $_GET['isupdated'];
$link = mysqli_connect('localhost', 'fajar', 'p@ssw0rd') or die('Cannot connect to the DB');
mysqli_select_db($link, 'db_lokasi') or die('Cannot select the DB');
/* grab the posts from the db */
$query = "update lokasi set latitude = ".$latitude.",longitude =".$longitude.",isupdated =".$isupdated." where userid = ".$id ;
$result = mysqli_query($link,$query) or die('Error query: '.$query);
echo "SUCCESS";
?>