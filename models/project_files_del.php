<?php
require_once 'connect.php';
$smt = $pdo->exec("DELETE  FROM  project_files  WHERE  files='$_GET[files]'");
if ($smt == 1) {
    if (file_exists("./public/project/data/$_GET[files]")) {
        unlink("./public/project/data/$_GET[files]");
    }
}
