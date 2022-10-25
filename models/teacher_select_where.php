  <?php
require_once 'connect.php';
//----------------------------------------
$smt = $pdo->prepare("SELECT * FROM teacher  WHERE teacher_id='$_GET[teacher_id]' ");
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
