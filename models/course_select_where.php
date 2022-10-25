<?php
require_once 'connect.php';

$smt = $pdo->prepare("SELECT * FROM course WHERE course_id='$_GET[course_id]'");
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
