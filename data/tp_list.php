<?php
header("Content-Type:application/json;charset=utf-8");

@$start = $_REQUEST['start'];

if(empty($start))
{
    $start = 0;
}
require("1_init.php");

$sql = "select did,name,img_sm,price,detail from ms_main limit $start,9";
$result = mysqli_query($conn,$sql);
$output = [];
while(true)
{
    $row = mysqli_fetch_assoc($result);
    if(!$row)
    {
        break;
    }
    $output[] = $row;
}

echo json_encode($output);



?>