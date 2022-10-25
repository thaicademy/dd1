<?php
require_once 'connect.php';
$smt2 = $pdo->prepare("UPDATE activity  SET  views=views+1  WHERE  id=$_GET[id] ");
$smt2->execute();

$smt = $pdo->prepare("SELECT * FROM activity_photo  WHERE activity_id='$_GET[id]' ");
if ($smt) {
    $data = array();
    if ($smt->execute()) {
        while ($row = $smt->fetch()) {
            $data[] = $row;
        }
    } else {
        $data[] = null;
    }
}

echo json_encode($data);
