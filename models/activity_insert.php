<?php
$data = json_decode(file_get_contents("php://input"));
$title = $data->title;
$detail = $data->detail;
$photo = $data->photo;

require_once 'connect.php';

$smt = $pdo->prepare("INSERT INTO activity(title, detail, photo, created) VALUES('$title','$detail','$photo', now() )");
$smt->execute();
echo json_encode($data);
