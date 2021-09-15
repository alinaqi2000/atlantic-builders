<?php

// $list_type = 'categories';
// $list_title = 'Categories';
// $list_short = 'Category';
$list_page = 'faq';

if (isset($_POST['submit1'])) {
    $vals = $_POST;
    unset($vals['submit1']);
    // $vals['tec_slug'] = toSlugUrl($vals['tec_title']);

    if ($_REQUEST['mode'] == 'add') {
        global $conn;
        $s1_max_orderid = "select max(faq_order) as orderid from tbl_faq";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $vals['faq_order'] = intval($r1_max_orderid["orderid"]) + 1;


        saveRecord("tbl_faq", $vals);
        $_SESSION['successMsg'] =  'FAQ has been saved successfully !';
    } else if ($_REQUEST['mode'] == 'update') {


        updateRecord("tbl_faq", $vals, " `faq_id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = 'FAQ has been updated successfully !';
    }
}


if (!empty($_REQUEST['code']))
    $data = getTable('tbl_faq', "faq_id = '" . $_REQUEST["code"] . "'");

if (isset($_POST['faq_delete']))
    deleteRows("tbl_faq", "faq_id", $_POST['faq_delete']);

if (isset($_POST['faq_status']))
    updateRows("tbl_faq", "faq_status", "faq_id", $_POST['faq_status']);

// if (isset($_POST['cat_label']))
//     updateRows("tbl_faq", "cat_label", "faq_id", $_POST['cat_label']);

if (isset($_POST)) {
    global $conn;
    $query_rs_pages = "SELECT * FROM tbl_faq ORDER BY faq_order ASC";
    $rs_pages = $conn->query($query_rs_pages) or die('mysql error');
    while ($row_rs_pages = $rs_pages->fetch_array()) {
        if (isset($_REQUEST["orderid" . $row_rs_pages["faq_id"] . ""])) {
            $s35 = "update tbl_faq set faq_order = '" . $_REQUEST["orderid" . $row_rs_pages["faq_id"] . ""] . "' where faq_id = '" . $row_rs_pages["faq_id"] . "' ";
            $q35 = $conn->query($s35) or die($s35);
            $_SESSION['successMsg'] = 'Changes has been saved successfully !';
        }
    }
}
$pager = '&pager=' . $_REQUEST['pager'];
