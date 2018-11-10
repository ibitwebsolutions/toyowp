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
else if ($fn==2){
        $resultOITM = array();
        $sql = "SELECT item_code FROM tb_pairings WHERE car_id='".$_POST['carID']."' and model_id='".$_POST['modelID']."'";
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_array($result)){
            $q = "SELECT * FROM tb_oitm, tb_patterns WHERE tb_oitm.pattern_id = tb_patterns.pattern_id and tb_oitm.item_code='".$row['item_code']."'";
            $res = mysqli_query($conn, $q);
            while($rowz = mysqli_fetch_array($res)){
                array_push($resultOITM , array(
                                "item_code"=>$rowz['item_code'],
                                "pattern_code"=>$rowz['pattern_code'],
                                "pattern_desc"=>$rowz['pattern_desc'],
                                "pattern_fullDesc"=>$rowz['pattern_fullDesc']
                            )
                        );
            }
        }

        header('Content-Type: application/json');
        echo json_encode(array("result"=>array_values($resultOITM)));
}
else if ($fn==3){
        $resultOITM = array();
        $desc = $_POST['width']."/".$_POST['ratio']." R ".$_POST['rim'];
        
        $sql = "SELECT * FROM tb_oitm, tb_patterns WHERE tb_oitm.pattern_id = tb_patterns.pattern_id and tb_oitm.item_desc LIKE '%".$desc."%'";
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_array($result)){
            array_push($resultOITM , array(
                    "item_code"=>$row['item_code'],
                    "pattern_code"=>$row['pattern_code'],
                    "pattern_desc"=>$row['pattern_desc']
                )
            );
        }

        header('Content-Type: application/json');
        echo json_encode(array("result"=>array_values($resultOITM)));
}
else if ($fn==4){
        $resultOITM = array();
        $desc = $_POST['term'];

        if($des){
            $sql = "SELECT * FROM tb_oitm, tb_patterns WHERE tb_oitm.pattern_id = tb_patterns.pattern_id and tb_oitm.item_desc LIKE '%".$desc."%'";
            $result = mysqli_query($conn, $sql);
            while($row = mysqli_fetch_array($result)){
                array_push($resultOITM , array(
                        "item_code"=>$row['item_code'],
                        "pattern_code"=>$row['pattern_code'],
                        "pattern_desc"=>$row['pattern_desc']
                    )
                );
            }
        }

        header('Content-Type: application/json');
        echo json_encode(array("result"=>array_values($resultOITM)));
}

?>