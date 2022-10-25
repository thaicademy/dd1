<?php
$data = json_decode(file_get_contents("php://input"));
$year = $data->year;
$project_id = $data->project_id;
$budget = $data->budget;
$title = $data->title;
$abstract = $data->abstract;
$keyword = $data->keyword;
$ahthor = $data->author;
$advisor = $data->advisor;
$level = $data->level;
$major = $data->major;
$groups = $data->groups;
$faculty = $data->faculty;
$files = $data->files;

require_once 'connect.php';

$smt = $pdo->prepare("INSERT INTO project(year, project_id, budget, title, abstract, keyword, author, advisor, level, major, groups, faculty) VALUES('$year','$project_id','$budget', '$title', '$abstract', '$keyword','$author', '$advisor', '$level', '$major','$groups','$faculty')");
$smt->execute();
echo json_encode($data);
