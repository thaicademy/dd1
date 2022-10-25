<?php
$data = json_decode(file_get_contents("php://input"));
$image = $data->image;
require_once 'connect.php';
//---------------------------------------------
$smt = $pdo->prepare("SELECT * FROM teacher  WHERE id=$_GET[id] ");
if ($smt->execute()) {
    while ($row = $smt->fetch()) {
        echo $row['image'];
        if (file_exists("../public/teacher/title/$row[image]")) {
            unlink("../public/teacher/title/$row[image]");
        }
    }
}
//--------------------------------------------
$smt = $pdo->exec("DELETE  FROM  teacher  WHERE id=$_GET[id] ");
if ($smt == 1) {
    echo "Has been Comleted $_GET[id] ";
}
