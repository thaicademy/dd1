<?php
$data = json_decode(file_get_contents("php://input"));
$title = $data->title;
$detail = $data->detail;
$source = $data->source;

require_once 'connect.php';

$smt = $pdo->prepare("INSERT INTO news(title, detail, source, created) VALUES('$title','$detail','$source', now())");
$smt->execute();
echo json_encode($data);
