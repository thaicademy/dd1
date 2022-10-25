<?php
$data = json_decode(file_get_contents("php://input"));
$teacher_id = $data->teacher_id;
$firstname = $data->firstname;
$lastname = $data->lastname;
$position = $data->position;
$sex = $data->sex;
$address = $data->address;
$tel = $data->tel;
$email = $data->email;

require_once 'connect.php';
//*******************************************
$smt = $pdo->prepare("INSERT INTO teacher(teacher_id, firstname, lastname, position, sex, address, tel, email ) "
    . "VALUES('$teacher_id','$firstname','$lastname','$position','$sex','$address','$tel','$email' )");
$smt->execute();
echo json_encode($data);
