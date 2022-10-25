<?php
$host = "localhost";
$user = "admin_it"; //admin_it
$pass = "6eba0874"; //6eba0874
$dbname = "admin_it"; //admin_it
try {
    $pdo = new PDO("mysql:host=" . $host . ";dbname=" . $dbname . "", $user, $pass,
        array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"));
} catch (PDOException $e) {
    echo $e->getMessage();
}
