<?php

// $list_type = 'categories';
// $list_title = 'Categories';
// $list_short = 'Category';
$list_page = 'technologies';

if (isset($_POST['submit1'])) {
    $vals = $_POST;
    unset($vals['submit1']);
    // $vals['tec_slug'] = toSlugUrl($vals['tec_title']);

    if ($_REQUEST['mode'] == 'add') {
        global $conn;
        $s1_max_orderid = "select max(tec_order) as orderid from tbl_technologies";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $vals['tec_order'] = intval($r1_max_orderid["orderid"]) + 1;


        saveRecord("tbl_technologies", $vals);
        $_SESSION['successMsg'] =  'Technology has been saved successfully !';
    } else if ($_REQUEST['mode'] == 'update') {


        updateRecord("tbl_technologies", $vals, " `tec_id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = 'Technology has been updated successfully !';
    }
}


if (!empty($_REQUEST['code']))
    $data = getTable('tbl_technologies', "tec_id = '" . $_REQUEST["code"] . "'");

if (isset($_POST['tec_delete']))
    deleteRows("tbl_technologies", "tec_id", $_POST['tec_delete']);

if (isset($_POST['tec_status']))
    updateRows("tbl_technologies", "tec_status", "tec_id", $_POST['tec_status']);

// if (isset($_POST['cat_label']))
//     updateRows("tbl_technologies", "cat_label", "tec_id", $_POST['cat_label']);

if (isset($_POST)) {
    global $conn;
    $query_rs_pages = "SELECT * FROM tbl_technologies ORDER BY tec_order ASC";
    $rs_pages = $conn->query($query_rs_pages) or die('mysql error');
    while ($row_rs_pages = $rs_pages->fetch_array()) {
        if (isset($_REQUEST["orderid" . $row_rs_pages["tec_id"] . ""])) {
            $s35 = "update tbl_technologies set tec_order = '" . $_REQUEST["orderid" . $row_rs_pages["tec_id"] . ""] . "' where tec_id = '" . $row_rs_pages["tec_id"] . "' ";
            $q35 = $conn->query($s35) or die($s35);
            $_SESSION['successMsg'] = 'Changings has been saved successfully !';
        }
    }
}
$pager = '&pager=' . $_REQUEST['pager'];
