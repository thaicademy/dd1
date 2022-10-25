<?php
require_once 'connect.php';
$smt = $pdo->exec("DELETE  FROM  download_files  WHERE  files='$_GET[files]'");
if ($smt == 1) {
    //-------------------------------------------------
    if (file_exists("../public/download/data/$_GET[files]")) {
        unlink("../public/download/data/$_GET[files]");
    }
}
