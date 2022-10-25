<?php
$data = json_decode(file_get_contents("php://input"));
$title = $data->title;
$detail = $data->detail;
$source = $data->source;

require_once 'connect.php';
try {
    $smt = $pdo->prepare("UPDATE download SET  title='$title', detail='$detail',  source='$source', modified=now()  WHERE  id=$_GET[id] ");
    if ($smt->execute()) {
        echo "Has been Comleted $_GET[id]";
    }
} catch (PDOException $ex) {
    echo $ex->getMessage();
}

echo json_encode($smt);
