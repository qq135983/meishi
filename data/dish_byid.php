<?php
header("Content-Type:application/json");

@$id = $_REQUEST['id'];
if(empty($id))
{
    echo '[]';
    return;
}

require("1_init.php");

$sql = "select did,name,img_lg,price,material from ms_main where did=$id";
$result = mysqli_query($conn,$sql);
$output = [];
$row = mysqli_fetch_assoc($result);
if(empty($row))
{
    echo '[]';
}
else
{
    $output[] = $row;
    echo json_encode($output);
}





?>