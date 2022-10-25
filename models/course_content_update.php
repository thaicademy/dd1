<?php
$data = json_decode(file_get_contents("php://input"));
$course_id = $data->course_id;
$unit_id = $data->unit_id;
$title = $data->title;
$description = $data->description;
$recommend = $data->recommend;

require_once 'connect.php';
try {
    $smt = $pdo->prepare("UPDATE  course_content SET course_id='$course_id', unit_id='$unit_id', title='$title', description='$description', recommend='$recommend', modified=now() "
        . "WHERE  id=$_GET[id] ");
    if ($smt->execute()) {
        echo "Has been Comleted $_GET[id]";
    }
} catch (PDOException $ex) {
    echo $ex->getMessage();
}

echo json_encode($smt);
