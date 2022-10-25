<?php
require_once 'connect.php';
$smt = $pdo->exec("DELETE  FROM  news_files  WHERE  files='$_GET[files]'");
if ($smt == 1) {
    if (file_exists("../public/news/data/$_GET[files]")) {
        unlink("../public/news/data/$_GET[files]");
    }
}
