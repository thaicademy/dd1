<?php

$data = json_decode(file_get_contents("php://input"));
require_once 'connect.php';
//--------------------------------------------
//$smt = $pdo->exec("DELETE  FROM  training_student  WHERE training_id='$_GET[id]' ");
//--------------------------------------------
$smt = $pdo->exec("DELETE  FROM  course  WHERE id='$_GET[id]' ");

echo json_encode($data);
