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
try {
    $smt = $pdo->prepare("UPDATE course SET course_id='$course_id', title='$title', description='$description', credit='$credit', theory='$theory', practice='$practice', level='$level', modified=now() "
        . "WHERE id='$_GET[id]' ");
    if ($smt->execute()) {
        echo "Has been Comleted $_GET[id]";
    }
} catch (PDOException $ex) {
    echo $ex->getMessage();
}

echo json_encode($smt);
