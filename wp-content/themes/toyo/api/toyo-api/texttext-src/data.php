<?php
error_reporting(0);

$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$conn = mysqli_connect('localhost', 'root', '', 'wp_toyotires');

$key = $_POST['q'];
// $sql = "SELECT item_code FROM tb_oitm WHERE LIKE '%".$key."%'";
$sql = "SELECT item_code FROM tb_oitm";
$result = mysqli_query($conn, $sql);
$arr = [];
$Cardata = array();
while($row = mysqli_fetch_array($result))
{

     array_push($arr , $row['item_code'] );

}


// header('Content-Type: application/json');
// echo json_encode(array_values($arr));

echo json_encode($arr);

?>