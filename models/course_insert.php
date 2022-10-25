<?php
$data = json_decode(file_get_contents("php://input"));
$course_id = $data->course_id;
$title = $data->title;
$description = $data->description;
$credit = $data->credit;
$theory = $data->theory;
$practice = $data->practice;
$level = $data->level;

require_once 'connect.php';

$smt = $pdo->prepare("INSERT INTO course(course_id, title, description , credit, theory, practice, level, created) "
    . "VALUES('$course_id', '$title', '$description', '$credit','$theory','$practice', '$level',now() )");
$smt->execute();
echo json_encode($data);
