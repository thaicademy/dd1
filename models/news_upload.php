<?php
if (!empty($_FILES)) {
//--------------------------------------------------------
    $data = json_decode(file_get_contents("php://input"));
    $news_id = $_GET['id'];
//--------------------------------------------------------
    $tempPath = $_FILES['file']['tmp_name'];
    $filename = $_FILES['file']['name'];
    $uploadPath = dirname(__FILE__) . DIRECTORY_SEPARATOR . '../public/news/original' . DIRECTORY_SEPARATOR . $_FILES['file']['name'];
    copy($tempPath, $uploadPath);
//-------------------------------------------------------
    $ext = strtolower(end(explode('.', $filename)));
//-------------------------------------------------------
    require_once 'connect.php';
    $smt = $pdo->prepare("INSERT INTO news_files(news_id, filename) VALUES('$news_id','$filename' )");
    if ($smt->execute()) {
        $id = $pdo->lastInsertId();
        $files = $news_id . '-' . $id . '.' . $ext;
        //---------------------------------------------
        $smt = $pdo->prepare("UPDATE  news_files  SET files='$files'  WHERE id='$id'");
        $smt->execute();
        //---------------------------------------------
        copy($tempPath, "../public/news/data/$files");
//--------------------------------------------------------
        $answer = array('answer' => 'File transfer completed');
        $json = json_encode($answer);
        echo $json;
    }
} else {
    echo 'No files';
}
