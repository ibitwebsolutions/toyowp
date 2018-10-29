<?php

$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

echo '<br>';

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