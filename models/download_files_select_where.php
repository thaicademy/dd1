  <?php
require_once 'connect.php';

$smt2 = $pdo->prepare("UPDATE  download_files  SET  views=views+1  WHERE  files='$_GET[files]' ");
if ($smt2->execute()) {
    echo "Has been Comleted $_GET[id]";
}

$smt = $pdo->prepare("SELECT  *  FROM  download_files  WHERE files='$_GET[files]' ");
if ($smt) {
    $data = array();
    if ($smt->execute()) {
        while ($row = $smt->fetch()) {
            $data[] = $row;
        }
    } else {
        $data[] = null;
    }
}
echo json_encode($data);
