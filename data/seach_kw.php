<?php
    header("Content-Type:application/json;charset=utf-8");
    @$kw=$_REQUEST['kw'];
    if(empty($kw)){
        echo '[]';
        return;
    }
    require('1_init.php');
    $sql="SELECT did,name,detail,img_sm,price FROM ms_main WHERE name like '%$kw%' or detail like '%$kw%'";
    $result=mysqli_query($conn,$sql);
    $output=[];
    while(true){
        $rows=mysqli_fetch_assoc($result);
        if(!$rows){
            break;
        }
       $output[]=$rows;
    }
    echo json_encode($output);
?>