<?php
$data = json_decode(file_get_contents("php://input"));
$year = $data->year;
$project_id = $data->project_id;
$title = $data->title;
$budget = $data->budget;
$abstract = $data->abstract;
$keyword = $data->keyword;
$author = $data->author;
$advisor = $data->advisor;
$level = $data->level;
$major = $data->major;
$groups = $data->groups;
$faculty = $data->faculty;
$files = $data->files;

require_once 'connect.php';
try {
    $smt = $pdo->prepare("UPDATE project SET year='$year', project_id='$project_id', title='$title', budget='$budget', abstract='$abstract',  keyword='$keyword', author='$author', advisor='$advisor', level='$level', major='$major', groups='$groups', faculty='$faculty'  WHERE  id='$_GET[id]' ");
    if ($smt->execute()) {
        echo "Has been Comleted $_GET[id]";
    }
} catch (PDOException $ex) {
    echo $ex->getMessage();
}
echo json_encode($smt);
