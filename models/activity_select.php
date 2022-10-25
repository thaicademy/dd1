  <?php
require_once 'connect.php';
$smt = $pdo->prepare("SELECT * FROM activity ORDER BY id DESC");
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
