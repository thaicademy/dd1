<?php
$data = json_decode(file_get_contents("php://input"));
$teacher_id = $data->teacher_id;
$firstname = $data->firstname;
$lastname = $data->lastname;
$position = $data->position;
$sex = $data->sex;
$tel = $data->tel;
$email = $data->email;
$address = $data->address;

require_once 'connect.php';
try {
    $smt = $pdo->prepare("UPDATE teacher SET teacher_id='$teacher_id', firstname='$firstname', lastname='$lastname', position='$position', sex='$sex', tel='$tel', email='$email', address='$address' WHERE  id=$_GET[id] ");
    if ($smt->execute()) {
        echo "Has been Comleted $_GET[id]";
    }
} catch (PDOException $ex) {
    echo $ex->getMessage();
}
echo json_encode($smt);
