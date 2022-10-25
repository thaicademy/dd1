<?php

$data = json_decode(file_get_contents("php://input"));
$course_id = $data->course_id;
$unit_id = $data->unit_id;
$title = $data->title;
$description = $data->description;
$recommend = $data->recommend;

require_once 'connect.php';
$smt = $pdo->prepare("INSERT INTO course_content(course_id, unit_id, title, description, recommend, created ) "
    . "VALUES( '$course_id', '$unit_id', '$title', '$description', '$recommend', now() )");
$smt->execute();
echo json_encode($data);
