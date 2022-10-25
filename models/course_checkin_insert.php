<?php

$data = json_decode(file_get_contents("php://input"));
$course_id = $data->course_id;
$student_id = $data->student_id;
$status = $data->status;

require_once 'connect.php';
$smt = $pdo->prepare("INSERT INTO course_chektime(course_id, student_id, status, checkin) "
    . "VALUES( '$course_id','$student_id', '$status', now())");
$smt->execute();
echo json_encode($data);
