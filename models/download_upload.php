<?php
if (!empty($_FILES)) {
//--------------------------------------------------------
    $data = json_decode(file_get_contents("php://input"));
    $download_id = $_GET['id'];
//--------------------------------------------------------
    $tempPath = $_FILES['file']['tmp_name'];
    $filename = $_FILES['file']['name'];
    $uploadPath = dirname(__FILE__) . DIRECTORY_SEPARATOR . '../public/download/original' . DIRECTORY_SEPARATOR . $_FILES['file']['name'];
    copy($tempPath, $uploadPath);
//-------------------------------------------------------
    $ext = strtolower(end(explode('.', $filename)));
//-------------------------------------------------------
    require_once 'connect.php';
    $smt = $pdo->prepare("INSERT INTO download_files(download_id, filename) VALUES('$download_id','$filename' )");
    if ($smt->execute()) {
        $id = $pdo->lastInsertId();
        $files = $download_id . '-' . $id . '.' . $ext;
        //---------------------------------------------
        $smt = $pdo->prepare("UPDATE download_files SET files='$files'  WHERE id='$id'");
        $smt->execute();
        //---------------------------------------------
        copy($tempPath, "../public/download/data/$files");
//--------------------------------------------------------
        $answer = array('answer' => 'File transfer completed');
        $json = json_encode($answer);
        echo $json;
    }
} else {
    echo 'No files';
}
