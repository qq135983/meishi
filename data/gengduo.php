<?php
    header('Content-Type:application/json;charset=utf-8');
    require('1_init.php');
    $sql="select did,name,detail,img_sm,price from ms_main";
    $result=mysqli_query($conn,$sql);
    $output=mysqli_fetch_all($result,MYSQLI_ASSOC);
    echo json_encode($output);
?>