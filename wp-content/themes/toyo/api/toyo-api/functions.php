<?php
error_reporting(0);

$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$conn = mysqli_connect('localhost', 'root', '', 'wp_toyotires');

$fn = $_POST['fnID'];
if ($fn==1) {
    $sql = "SELECT * FROM tb_cars";
    $result = mysqli_query($conn, $sql);
    $arr = [];
    $Cardata = array();
    while($row = mysqli_fetch_array($result))
    {
       // This will loop through each row, now use your loop here
        $q = "SELECT * FROM tb_model where car_id=".$row['car_id'];
        $res = mysqli_query($conn, $q);
        $arz = [];
        while($rowz = mysqli_fetch_array($res))
        {

             array_push($arz , array(
                            "model_id"=>$rowz['model_id'],
                            "name"=>$rowz['model']
                        ));
        }

         array_push($Cardata , array(
                            "maker_id"=>$row['car_id'],
                            "maker"=>$row['maker'],
                            "models"=> $arz
                            )
                    );

    }


    header('Content-Type: application/json');
    echo json_encode(array("cars"=>array_values($Cardata)));
}

else if ($fn==2) {
    $carID = $_POST['carID'];
    $sql = "SELECT * FROM tb_cars WHERE car_id=".$carID;
    $result = mysqli_query($conn, $sql);
    $arr = [];
    $Cardata = array();
    while($row = mysqli_fetch_array($result))
    {
       // This will loop through each row, now use your loop here
        $q = "SELECT * FROM tb_model where car_id=".$row['car_id'];
        $res = mysqli_query($conn, $q);
        $arz = [];
        while($rowz = mysqli_fetch_array($res))
        {

            $g = "SELECT * FROM tb_pairings where model_id=".$rowz['model_id']." and car_id=".$rowz['car_id'];
            $b = mysqli_query($conn, $g);
            $k = [];
            while($l = mysqli_fetch_array($b))
            {
                array_push($k , array(
                    "pair_codes"=>$l['item_code']
                ));
            }

             array_push($arz , array(
                            "model_id"=>$rowz['model_id'],
                            "name"=>$rowz['model'],
                            "pairs"=>$k
                        ));
        }


         array_push($Cardata , array(
                    "maker_id"=>$row['car_id'],
                    "maker"=>$row['maker'],
                    "models"=> $arz,
                )
        );

    }


    header('Content-Type: application/json');
    echo json_encode(array("cars"=>array_values($Cardata)));
}

else if ($fn==3) {

    $sql = "INSERT INTO tb_cars(`maker`) VALUES('". $_POST['maker']."')";
    $conn->query($sql);

    header('Content-Type: application/json');
    echo json_encode(array("success"=>1,"newID"=>$conn->insert_id));
}