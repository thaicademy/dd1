<?php

include 'DB.php';
$db = new DB();
$tblName = 'course';
if (isset($_REQUEST['type']) && !empty($_REQUEST['type'])) {
    $type = $_REQUEST['type'];
    switch ($type) {
        case "view":
            $records = $db->getRows($tblName);
            if ($records) {
                $data['records'] = $db->getRows($tblName);
                $data['status'] = 'OK';
            } else {
                $data['records'] = array();
                $data['status'] = 'ERR';
            }
            echo json_encode($data);
            break;
        case "add":
            if (!empty($_POST['data'])) {
                $courseData = array(
                    'course_id' => $_POST['data']['course_id'],
                    'title' => $_POST['data']['title'],
                    'description' => $_POST['data']['description'],
                    'credit' => $_POST['data']['credit'],
                    'level' => $_POST['data']['level'],
                );
                $insert = $db->insert($tblName, $courseData);
                if ($insert) {
                    $data['data'] = $insert;
                    $data['status'] = 'OK';
                    $data['msg'] = 'Data data has been added successfully.';
                } else {
                    $data['status'] = 'ERR';
                    $data['msg'] = 'Some problem occurred, please try again.';
                }
            } else {
                $data['status'] = 'ERR';
                $data['msg'] = 'Some problem occurred, please try again.';
            }
            echo json_encode($data);
            break;
        case "edit":
            if (!empty($_POST['data'])) {
                $courseData = array(
                    'course_id' => $_POST['data']['course_id'],
                    'title' => $_POST['data']['title'],
                    'description' => $_POST['data']['description'],
                    'credit' => $_POST['data']['credit'],
                    'level' => $_POST['data']['level'],
                );
                $condition = array('id' => $_POST['data']['id']);
                $update = $db->update($tblName, $courseData, $condition);
                if ($update) {
                    $data['status'] = 'OK';
                    $data['msg'] = 'Data data has been updated successfully.';
                } else {
                    $data['status'] = 'ERR';
                    $data['msg'] = 'Some problem occurred, please try again.';
                }
            } else {
                $data['status'] = 'ERR';
                $data['msg'] = 'Some problem occurred, please try again.';
            }
            echo json_encode($data);
            break;
        case "delete":
            if (!empty($_POST['course_id'])) {
                $condition = array('course_id' => $_POST['course_id']);
                $delete = $db->delete($tblName, $condition);
                if ($delete) {
                    $data['status'] = 'OK';
                    $data['msg'] = 'Data has been deleted successfully.';
                } else {
                    $data['status'] = 'ERR';
                    $data['msg'] = 'Some problem occurred, please try again.';
                }
            } else {
                $data['status'] = 'ERR';
                $data['msg'] = 'Some problem occurred, please try again.';
            }
            echo json_encode($data);
            break;
        default:
            echo '{"status":"INVALID"}';
    }
}
