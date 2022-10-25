<?php
$data = json_decode(file_get_contents("php://input"));
// $id=$data->id;
$photo = $data->photo;
require_once 'connect.php';
$smt = $pdo->prepare("SELECT * FROM activity_photo WHERE activity_id='$_GET[id]'");
if ($smt->execute()) {
    while ($row = $smt->fetch()) {
        echo $row['id'];
        echo $row['photo'];
        if (file_exists("../public/activity/large/$row[photo]")) {
            unlink("../public/activity/large/$row[photo]");
        }
        if (file_exists("../public/activity/small/$row[photo]")) {
            unlink("../public/activity/small/$row[photo]");
        }
    }
}
$smt = $pdo->exec("DELETE FROM activity_photo WHERE activity_id='$_GET[id]'");
$smt = $pdo->exec("DELETE FROM activity WHERE id='$_GET[id]'");
if ($smt == 1) {
    if (file_exists("../public/activity/title/$photo")) {
        unlink("../public/activity/title/$photo");
    }
}
echo json_encode($data);
