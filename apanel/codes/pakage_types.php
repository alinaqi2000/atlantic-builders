<?php

// $list_type = 'categories';
// $list_title = 'Categories';
// $list_short = 'Category';
$list_page = 'pakage_types';

if (isset($_POST['submit1'])) {
    $vals = $_POST;
    unset($vals['submit1']);
    $vals['type_slug'] = toSlugUrl($vals['type_title']);

    // if ($img_rs = uploadImage($_FILES["type_image"], "../uploads/pakages/")) {
    //     $vals['type_image'] = $img_rs;
    // }

    if ($_REQUEST['mode'] == 'add') {
        global $conn;
        $s1_max_orderid = "select max(type_order) as orderid from tbl_pri_types";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $vals['type_order'] = intval($r1_max_orderid["orderid"]) + 1;


        saveRecord("tbl_pri_types", $vals);

        $_SESSION['successMsg'] = 'Pakage Type has been saved successfully !';
    } else if ($_REQUEST['mode'] == 'update') {
        updateRecord("tbl_pri_types", $vals, " `type_id` = '" . $_REQUEST["code"] . "' ");

        $_SESSION['successMsg'] = 'Pakage Type has been updated successfully !';
    }
}


if (!empty($_REQUEST['code']))
    $data = getTable('tbl_pri_types', "type_id = '" . $_REQUEST["code"] . "'");

if (isset($_POST['type_delete']))
    deleteRows("tbl_pri_types", "type_id", $_POST['type_delete']);

if (isset($_POST['type_status']))
    updateRows("tbl_pri_types", "type_status", "type_id", $_POST['type_status']);

// if (isset($_POST['cat_label']))
//     updateRows("tbl_pri_types", "cat_label", "type_id", $_POST['cat_label']);

if (isset($_POST)) {
    global $conn;
    $query_rs_pages = "SELECT * FROM tbl_pri_types ORDER BY type_order ASC";
    $rs_pages = $conn->query($query_rs_pages) or die('mysql error');
    while ($row_rs_pages = $rs_pages->fetch_array()) {
        if (isset($_REQUEST["orderid" . $row_rs_pages["type_id"] . ""])) {
            $s35 = "update tbl_pri_types set type_order = '" . $_REQUEST["orderid" . $row_rs_pages["type_id"] . ""] . "' where type_id = '" . $row_rs_pages["type_id"] . "' ";
            $q35 = $conn->query($s35) or die($s35);
            $_SESSION['successMsg'] = 'Changes has been saved successfully !';
        }
    }
}
$pager = '&pager=' . $_REQUEST['pager'];
