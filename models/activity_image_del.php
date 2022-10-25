<?php
require_once 'connect.php';
$smt = $pdo->exec("DELETE  FROM  activity_photo  WHERE photo='$_GET[photo]'");
if ($smt == 1) {
    if (file_exists("../public/activity/large/$_GET[photo]")) {
        unlink("../public/activity/large/$_GET[photo]");
    }
    if (file_exists("../public/activity/small/$_GET[photo]")) {
        unlink("../public/activity/small/$_GET[photo]");
    }
}
