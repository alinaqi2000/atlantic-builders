<?php

// $list_type = 'categories';
// $list_title = 'Categories';
// $list_short = 'Category';
$list_page = 'newscategories';

if (isset($_POST['submit1'])) {
    $vals = $_POST;
    unset($vals['submit1']);
    $vals['cat_slug'] = toSlugUrl($vals['cat_title']);

    if ($_REQUEST['mode'] == 'add') {
        global $conn;
        $s1_max_orderid = "select max(cat_order) as orderid from tbl_newscategories";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $vals['cat_order'] = intval($r1_max_orderid["orderid"]) + 1;


        saveRecord("tbl_newscategories", $vals);
        $_SESSION['successMsg'] = $list_page . ' has been saved successfully !';
    } else if ($_REQUEST['mode'] == 'update') {


        updateRecord("tbl_newscategories", $vals, " `cat_id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = $list_page . ' has been updated successfully !';
    }
}


if (!empty($_REQUEST['code']))
    $data = getTable('tbl_newscategories', "cat_id = '" . $_REQUEST["code"] . "'");

if (isset($_POST['cat_delete']))
    deleteRows("tbl_newscategories", "cat_id", $_POST['cat_delete']);

if (isset($_POST['cat_status']))
    updateRows("tbl_newscategories", "cat_status", "cat_id", $_POST['cat_status']);

if (isset($_POST['cat_label']))
    updateRows("tbl_newscategories", "cat_label", "cat_id", $_POST['cat_label']);

if (isset($_POST)) {
    global $conn;
    $query_rs_pages = "SELECT * FROM tbl_newscategories ORDER BY cat_order ASC";
    $rs_pages = $conn->query($query_rs_pages) or die('mysql error');
    while ($row_rs_pages = $rs_pages->fetch_array()) {
        if (isset($_REQUEST["orderid" . $row_rs_pages["cat_id"] . ""])) {
            $s35 = "update tbl_newscategories set cat_order = '" . $_REQUEST["orderid" . $row_rs_pages["cat_id"] . ""] . "' where cat_id = '" . $row_rs_pages["cat_id"] . "' ";
            $q35 = $conn->query($s35) or die($s35);
            $_SESSION['successMsg'] = 'Changings has been saved successfully !';
        }
    }
}
$pager = '&pager=' . $_REQUEST['pager'];
