<?php
$data = json_decode(file_get_contents("php://input"));
$course_id = $data->course_id;
$student_id = $data->student_id;
$firstname = $data->firstname;
$lastname = $data->lastname;
$email = $data->email;
$phone = $data->phone;
$address = $data->address;

require_once 'connect.php';
try {
    $smt = $pdo->prepare("UPDATE  course_student  SET course_id='$course_id', student_id='$student_id', firstname='$firstname', lastname='$lastname', email='$email',  phone='$phone', address='$address', modified=now() "
        . "WHERE  id=$_GET[id] ");
    if ($smt->execute()) {
        echo "Has been Comleted $_GET[id]";
    }
} catch (PDOException $ex) {
    echo $ex->getMessage();
}

echo json_encode($smt);
