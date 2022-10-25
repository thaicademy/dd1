<?php
$data = json_decode(file_get_contents("php://input"));
$files = $data->files;
require_once 'connect.php';

$smt = $pdo->prepare("SELECT * FROM news_files  WHERE news_id=$_GET[id] ");
if ($smt->execute()) {
    while ($row = $smt->fetch()) {
        //   echo $row['id'];
        echo $row['files'];
        if (file_exists("./public/news/data/$row[files]")) {
            unlink("./public/news/data/$row[files]");
        }
        /* if(file_exists("../public/activity/small/$row[photo]")){
                unlink("../public/activity/small/$row[photo]");
            }*/
    }
}

$smt = $pdo->exec("DELETE  FROM  news_files  WHERE news_id=$_GET[id] ");
$smt = $pdo->exec("DELETE  FROM  news  WHERE id=$_GET[id] ");
if ($smt == 1) {
    echo "Has been Comleted $_GET[id] ";
}
