<?php

error_reporting(0);
$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$conn = mysqli_connect('localhost', 'root', '', 'wp_toyotires');


$desc = $_POST['term'];
$sql = "SELECT item_desc FROM tb_oitm WHERE  item_desc LIKE '%".$desc."%'";
$result = mysqli_query($conn, $sql);
while($row = mysqli_fetch_array($result)){
        $resultOITM[] = $row['item_desc'];
}

header('Content-Type: application/json');
echo json_encode(array_values($resultOITM));

?>