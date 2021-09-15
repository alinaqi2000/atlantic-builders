<?php

if (isset($_POST['submit1'])) {
    $vals = $_POST;
    unset($vals['submit1']);
    if ($_REQUEST['mode'] == 'add') {
        global $conn;
        $s1_max_orderid = "select max(loc_order) as orderid from tbl_location where 1 ";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $vals['loc_order'] = intval($r1_max_orderid["orderid"]) + 1;

        if ($img_rs = uploadImage($_FILES[$this_prefix . "loc_image"], "../uploads/media/", 1920, 1920)) {
            $vals[$this_prefix . 'loc_image'] = $img_rs;
        }

        saveRecord("tbl_location", $vals);
        $_SESSION['successMsg'] = 'Location has been saved successfully !';
    } else if ($_REQUEST['mode'] == 'update') {

        if ($img_rs = uploadImage($_FILES[$this_prefix . "loc_image"], "../uploads/media/", 1920, 1920)) {
            $vals[$this_prefix . 'loc_image'] = $img_rs;
        }

        updateRecord("tbl_location", $vals, " `loc_id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = 'Location has been updated successfully !';
    }
}

if (!empty($_REQUEST['code']))
    $data = getTable('tbl_location', "loc_id = '" . $_REQUEST["code"] . "'");

if (isset($_REQUEST['mode']))
    deleteRow("tbl_location", $_REQUEST["mode"], "loc_id = '" . $_REQUEST["code"] . "'");

if (isset($_POST['loc_status']))
    updateRows("tbl_location", "loc_status", "loc_id", $_POST['loc_status']);

if (isset($_POST)) {
    global $conn;

    $query_rs_pages = "SELECT * FROM tbl_location WHERE  1 ORDER BY loc_order ASC";
    $rs_pages = $conn->query($query_rs_pages) or die(mysqli_error($conn));
    while ($row_rs_pages = $rs_pages->fetch_array()) {
        if (isset($_REQUEST["orderid" . $row_rs_pages["loc_id"] . ""])) {
            $s35 = "update tbl_location set loc_order = '" . $_REQUEST["orderid" . $row_rs_pages["loc_id"] . ""] . "' where loc_id = '" . $row_rs_pages["loc_id"] . "' ";
            $q35 = $conn->query($s35) or die($s35);
            $_SESSION['successMsg'] = 'Changings has been saved successfully !';
        }
    }
}

$pager = '&pager=' . $_REQUEST['pager'];
