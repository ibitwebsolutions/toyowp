<?php
error_reporting(0);

$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$conn = mysqli_connect('localhost', 'root', '', 'wp_toyotires');


if(isset($_POST['pattern_save'])) {

    $pattern_name = $_POST['pattern_name'];
    $pattern_code = $_POST['pattern_code'];
    $pattern_desc = $_POST['pattern_desc'];
   
    $sql = "SELECT * FROM tb_patterns WHERE pattern_code = '".$pattern_code."' ";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 1) {
      echo 'Pattern Code Already Exist';  
    } 
    else {
        $sql = "INSERT INTO tb_patterns (pattern, pattern_code, pattern_desc) VALUES ('".$pattern_name."', '".$pattern_code."', '".$pattern_desc."')";
        if (mysqli_query($conn, $sql)) {
            echo '<div class="alert alert-success" role="alert">New record created successfully</div>';
        } else {
            echo "Error: " . $sql . "" . mysqli_error($conn);
        }
        $conn->close();
    }

}

if(isset($_POST['pattern_update'])) {

    $pattern_name = $_POST['pattern_name'];
    $pattern_code = $_POST['pattern_code'];
    $pattern_desc = $_POST['pattern_desc'];
    $pattern_id   = $_POST['pattern_id'];

    $sql = "SELECT * FROM tb_patterns WHERE pattern_code = '".$pattern_code."' ";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 1) {
      echo 'Pattern Code Already Exist';  
    } else {
        $sql = 'UPDATE tb_patterns SET pattern="'.$pattern_name.'", pattern_code="'.$pattern_code.'", pattern_desc="'.$pattern_desc.'" WHERE pattern_id="'.$pattern_id.'" ';
        if (mysqli_query($conn, $sql)) {
        echo '<div class="alert alert-success" role="alert">Record updated successfully</div>';
        } else {
        echo "Error updating record: " . mysqli_error($conn);
        }
    }
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