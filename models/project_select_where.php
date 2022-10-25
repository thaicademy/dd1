  <?php
require_once 'connect.php';
/* $smt2=$pdo->prepare("UPDATE  project  SET  views=views+1  WHERE  id=$_GET[id] ");
    if($smt2->execute()){
        echo"Has been Comleted $_GET[id]";
    } */
$smt = $pdo->prepare("SELECT  *  FROM  project  WHERE id='$_GET[id]' ");
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
