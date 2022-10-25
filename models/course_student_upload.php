<?php
if (!empty($_FILES)) {
    $data = json_decode(file_get_contents("php://input"));
    $student_id = $_GET['student_id'];
    $tempPath = $_FILES['file']['tmp_name'];
    $name = $_FILES['file']['name'];
    $uploadPath = dirname(__FILE__) . DIRECTORY_SEPARATOR . './public/student/original' . DIRECTORY_SEPARATOR . $_FILES['file']['name'];
    //move_uploaded_file( $tempPath, $uploadPath );
    copy($tempPath, $uploadPath);

    $ext = strtolower(end(explode('.', $name)));

    require_once 'connect.php';
    $name = $student_id . '.' . $ext;

    $smt = $pdo->prepare("UPDATE  course_student  SET photo='$name' , modified=now()  WHERE student_id='$student_id' ");
    $smt->execute();

    if ($ext == "jpg") {
        $ori_img = imagecreatefromjpeg($uploadPath);
    } else if ($ext == "png") {
        $ori_img = imagecreatefrompng($uploadPath);
    } else if ($ext == "gif") {
        $ori_img = imagecreatefromgif($uploadPath);
    }
    $ori_size = getimagesize($uploadPath);
    $ori_w = $ori_size[0];
    $ori_h = $ori_size[1];

    if ($ori_w >= $ori_h) {
        $new_w = 800;
        $new_h = round(($new_w / $ori_w) * $ori_h);
    } else {
        $new_h = 800;
        $new_w = round(($new_h / $ori_h) * $ori_w);
    }
    $new_img = imagecreatetruecolor($new_w + 4, $new_h + 4);
    $dark = imagecolorallocate($new_img, 185, 185, 185);
    $light = imagecolorallocate($new_img, 230, 230, 230);
    $white = imagecolorallocate($new_img, 254, 254, 254);

    imagefilledrectangle($new_img, 0, 0, $new_w + 3, $new_h + 3, $white);
    imagefilledrectangle($new_img, 4, 4, $new_w + 4, $new_h + 4, $light);
    imagefilledrectangle($new_img, 3, 3, $new_w + 2, $new_h + 2, $dark);
    imagecopyresampled($new_img, $ori_img, 0, 0, 0, 0, $new_w, $new_h, $ori_w, $ori_h);
    imagestring($new_img, 5, 5, $new_h - 20, "www.sdtc.ac.th", $light);

    if ($ext == "jpg") {imagejpeg($new_img, "./public/student/large/$name");} else if ($ext == "png") {imagepng($new_img, "./public/student/large/$name");} else if ($ext == "gif") {imagegif($new_img, "./public/student/large/$name");}

    if ($ori_w >= $ori_h) {
        $new_w = 300;
        $new_h = round(($new_w / $ori_w) * $ori_h);
    } else {
        $new_h = 300;
        $new_w = round(($new_h / $ori_h) * $ori_w);
    }
    $new_img = imagecreatetruecolor($new_w + 2, $new_h + 2);
    $dark = imagecolorallocate($new_img, 185, 185, 185);
    $light = imagecolorallocate($new_img, 230, 230, 230);
    $white = imagecolorallocate($new_img, 254, 254, 254);

    imagefilledrectangle($new_img, 0, 0, $new_w + 1, $new_h + 1, $white);
    imagefilledrectangle($new_img, 2, 2, $new_w + 2, $new_h + 2, $light);
    imagefilledrectangle($new_img, 1, 1, $new_w + 0, $new_h + 0, $dark);

    imagecopyresampled($new_img, $ori_img, 0, 0, 0, 0, $new_w, $new_h, $ori_w, $ori_h);
    imagestring($new_img, 2, 2, $new_h - 15, "www.sdtc.ac.th", $light);

    if ($ext == "jpg") {
        imagejpeg($new_img, "./public/student/title/$name");
    } else if ($ext == "png") {
        imagepng($new_img, "./public/student/title/$name");
    } else if ($ext == "gif") {
        imagegif($new_img, "./public/student/title/$name");
    }

    imagedestroy($ori_img);
    imagedestroy($new_img);

    $answer = array('answer' => 'File transfer completed');
    $json = json_encode($answer);
    echo $json;
} else {
    echo 'No files';
}
