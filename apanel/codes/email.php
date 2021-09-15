<?php

if (isset($_POST['submit1'])) {
    $vals = $_POST;
    unset($vals['submit1']);

    if ($_REQUEST['mode'] == 'add') {
        saveRecord("tbl_emails", $vals);
        $_SESSION['successMsg'] = 'email has been saved successfully !';
    } else if ($_REQUEST['mode'] == 'update') {
        updateRecord("tbl_emails", $vals, " `email_id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = 'email has been updated successfully !';
    }
}

if (!empty($_REQUEST['code']))
    $data = getTable('tbl_emails', "email_id = '" . $_REQUEST["code"] . "'");

if (isset($_REQUEST['mode']))
    deleteRow("tbl_emails", $_REQUEST["mode"], "email_id = '" . $_REQUEST["code"] . "'");

if (isset($_POST['email_status']))
    updateRows("tbl_emails", "email_status", "email_id", $_POST['email_status']);

if (isset($_POST)) {
    global $conn;

    $query_rs_emails = "SELECT * FROM tbl_emails WHERE  1 ORDER BY email_order ASC";
    $rs_emails = $conn->query($query_rs_emails) or die('mysql_error');
    while ($row_rs_emails = $rs_emails->fetch_array()) {
        if (isset($_REQUEST["orderid" . $row_rs_emails["email_id"] . ""])) {
            $s35 = "update tbl_emails set email_order = '" . $_REQUEST["orderid" . $row_rs_emails["email_id"] . ""] . "' where email_id = '" . $row_rs_emails["email_id"] . "' ";
            $q35 = $conn->query($s35) or die($s35);
            $_SESSION['successMsg'] = 'Changings has been saved successfully !';
        }
    }
}

$pager = '&pager=' . $_REQUEST['pager'];


?>