<?php
include 'koneksi.php';
$mysqli = new mysqli("localhost","root","","co-fight19");

$hasil = $mysqli->query("Select * from emergency_call");

if(mysqli_num_rows ($hasil) > 0 ){
  $response = array();
  $response["data"] = array();
  while($x = mysqli_fetch_array($hasil)){
    $h['number'] = $x["number"];
    $h['name'] = $x["name"];
    $h['city'] = $x["city"];
    array_push($response["data"], $h);
  }
  echo json_encode($response);
}else {
  $response["message"]="tidak ada data";
  echo json_encode($response);
}
?>