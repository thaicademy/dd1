  <?php
require_once 'connect.php';
$smt = $pdo->prepare("SELECT * FROM  project ");
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