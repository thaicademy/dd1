<?php

$data = json_decode(file_get_contents("php://input"));
$course_id = $data->course_id;
$student_id = $data->student_id;
$firstname = $data->firstname;
$lastname = $data->lastname;
$email = $data->email;
$phone = $data->phone;
$address = $data->address;

require_once 'connect.php';
$smt = $pdo->prepare("INSERT INTO course_student(course_id, student_id, firstname, lastname, email, phone, address, created) "
    . "VALUES( '$course_id','$student_id', '$firstname', '$lastname', '$email', '$phone', '$address', now())");
$smt->execute();
echo json_encode($data);
