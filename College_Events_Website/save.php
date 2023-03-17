<?php

$severname = "localhost";
$username = "root";
$password = "";
$dbnname = "";

$con = mysqli_connect($severname,$username,$password,$dbnname);

if($con)
{
    echo "connected";
}
else
{
    "not connected";
}

$Name = $_POST['Name'];
$Email = $_POST['Email'];
$Message = $_POST['Message'];

$sql ="INSERT INTO `test`(`Name`, `Email`, `Message`) VALUES ('[$Name]','[$Email]','[$Message]')";

$result = mysqli_query($con,$sql);

if($result)
{
    echo "data sumitted";
}

else
{
    "querry failed.....";
}

?>

