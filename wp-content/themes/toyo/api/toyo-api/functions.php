<?php
error_reporting(0);

$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

$conn;
if($_SERVER['SERVER_NAME']=='toyotires.localhost'){
    $conn = mysqli_connect('localhost', 'root', '', 'wp_toyotires');
}else{
     $conn = mysqli_connect('localhost', 'toyotir1', '8372742Rbb*', 'toyotir1_db');
}

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
        $q = "SELECT * FROM tb_model where car_id=".$row['car_id']." ORDER BY model_id desc";
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
                            "default_size"=>$rowz['default_size'],
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

    $sql = "INSERT INTO tb_cars(`maker`) VALUES('". strtolower($_POST['maker'])."')";
    $conn->query($sql);

    header('Content-Type: application/json');
    echo json_encode(array("success"=>1,"newID"=>$conn->insert_id));
}

else if ($fn==4) {

    //Parsing array string from hidden input form
    $pairs = $_POST['pairs'];
    $split = explode(',', $pairs);
    $prepared =  preg_replace('/[^A-Za-z0-9\-]/', '', $split);

    $car_id = $_POST['car_id'];
    $model = strtolower($_POST['model']);
    $size = $_POST['size'];

    $sql = "INSERT INTO tb_model(`car_id`,`model`,`default_size`) VALUES('".$car_id."','".$model."','".$size."')";
    $conn->query($sql);

    $lastID = $conn->insert_id;

    foreach ($prepared as $key) {
       $pairingInsert = "INSERT INTO tb_pairings(`car_id`,`model_id`,`item_code`) VALUES('".$car_id."','".$lastID."','".$key."')";
        $conn->query($pairingInsert);

    }

    header('Content-Type: application/json');
    echo json_encode(array("success"=>1,"newID"=>$lastID,"car_id"=>$car_id));
}

else if ($fn==5) {
    $sql = "SELECT * FROM tb_patterns order by pattern_id desc";
    $result = mysqli_query($conn, $sql);
    $arr = array();
    while($rows = mysqli_fetch_array($result))
    {
        array_push($arr , array(
                            "pattern_id"=>$rows["pattern_id"],
                            "pattern"=>$rows["pattern"],
                            "pattern_code"=>$rows["pattern_code"],
                            "pattern_fullDesc"=>strip_tags($rows["pattern_fullDesc"])
                        )
                );
    }

    header('Content-Type: application/json');
    echo json_encode(array_values($arr));
}

else if ($fn==6) {
    $sql = "SELECT * FROM tb_patterns where pattern LIKE '%".$_POST['data']."%'";
    $result = mysqli_query($conn, $sql);
    $arr = array();
    while($rows = mysqli_fetch_array($result))
    {
        array_push($arr , array(
                            "pattern_id"=>$rows["pattern_id"],
                            "pattern"=>$rows["pattern"],
                            "pattern_code"=>$rows["pattern_code"],
                            "pattern_fullDesc"=>strip_tags($rows["pattern_fullDesc"])
                        )
                );
    }

    header('Content-Type: application/json');
    echo json_encode(array_values($arr));
}