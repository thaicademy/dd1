<?php
require_once 'connect.php';

$smt = $pdo->prepare("SELECT * FROM course_student  WHERE  student_id='$_GET[student_id]' ");
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
