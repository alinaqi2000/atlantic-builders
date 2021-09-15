<?php

if (isset($_POST['submit1'])) {
    $vals = $_POST;
    unset($vals['submit1']);

    if ($_REQUEST['mode'] == 'add') {
        date_default_timezone_set('Asia/Karachi');
        $vals['sub_date'] = date('Y/m/d h:i:s');
        
        saveRecord("tbl_subscribers", $vals);
        $_SESSION['successMsg'] = 'Subscriber has been saved successfully !';
    } else if ($_REQUEST['mode'] == 'update') {
        updateRecord("tbl_subscribers", $vals, " `sub_id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = 'Subscriber has been updated successfully !';
    }
}

if (!empty($_REQUEST['code']))
    $data = getTable('tbl_subscribers', "sub_id = '" . $_REQUEST["code"] . "'");

if (isset($_REQUEST['mode']))
    deleteRow("tbl_subscribers", $_REQUEST["mode"], "sub_id = '" . $_REQUEST["code"] . "'");

if (isset($_POST['sub_status']))
    updateRows("tbl_subscribers", "sub_status", "sub_id", $_POST['sub_status']);

if (isset($_POST)) {
    global $conn;

    $query_rs_emails = "SELECT * FROM tbl_subscribers WHERE  1 ORDER BY sub_order ASC";
    $rs_emails = $conn->query($query_rs_emails) or die('mysql_error');
    while ($row_rs_emails = $rs_emails->fetch_array()) {
        if (isset($_REQUEST["orderid" . $row_rs_emails["sub_id"] . ""])) {
            $s35 = "update tbl_subscribers set sub_order = '" . $_REQUEST["orderid" . $row_rs_emails["sub_id"] . ""] . "' where sub_id = '" . $row_rs_emails["sub_id"] . "' ";
            $q35 = $conn->query($s35) or die($s35);
            $_SESSION['successMsg'] = 'Changings has been saved successfully !';
        }
    }
}

$pager = '&pager=' . $_REQUEST['pager'];
