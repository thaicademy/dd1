<?php
$data = json_decode(file_get_contents("php://input"));
$files = $data->files;
require_once 'connect.php';
//---------------------------------------------
$smt = $pdo->prepare("SELECT * FROM download_files  WHERE download_id=$_GET[id] ");
if ($smt->execute()) {
    while ($row = $smt->fetch()) {
        //   echo $row['id'];
        echo $row['files'];
        if (file_exists("../public/download/data/$row[files]")) {
            unlink("../public/download/data/$row[files]");
        }
        /*     if(file_exists("../public/activity/small/$row[photo]")){
    unlink("../public/activity/small/$row[photo]");
    }
     *
     */
    }
}
//--------------------------------------------
$smt = $pdo->exec("DELETE  FROM  download_files  WHERE download_id=$_GET[id] ");
//--------------------------------------------
$smt = $pdo->exec("DELETE  FROM  download  WHERE id=$_GET[id] ");
if ($smt == 1) {
    echo "Has been Comleted $_GET[id] ";
}
