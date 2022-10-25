<?php
require_once 'connect.php';
$smt = $pdo->exec("DELETE  FROM  teacher  WHERE  image='$_GET[image]'");
if ($smt == 1) {
    //-------------------------------------------------
    if (file_exists("../public/teacher/title/$_GET[image]")) {
        unlink("../public/teacher/title/$_GET[image]");
    }
}
