<?php

$news_title = 'News';
$news_short = 'News';
$news_page = 'news';
$page_uri = 'news';
$this_prefix= 'news_';
$this_table= 'tbl_news';

if (isset($_POST['submit1'])) {
    $vals = $_POST;
    unset($vals['submit1']);
    $techs  = $vals['cat_id'];
    unset($vals['cat_id']);
    $vals['news_slug'] = toSlugUrl($vals['news_title']);
    $vals['news_modify'] = date("Y-m-d H:i:s");
// print_r($vals);exit;
    if ($_REQUEST['mode'] == 'add') {
        global $conn;
        $s1_max_orderid = "select max({$this_prefix}order) as orderid from $this_table where 1 ";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $vals[$this_prefix . 'order'] = intval($r1_max_orderid["orderid"]) + 1;
        
        if ($img_rs = uploadImage($_FILES[$this_prefix . "image"], "../uploads/media/",820)) {
            $vals[$this_prefix . 'image'] = $img_rs;
            
        }
        if ($img_rs = uploadImage($_FILES[$this_prefix . "thumb"], "../uploads/media/",395)) {
            $vals[$this_prefix . 'thumb'] = $img_rs;
            
        }
        saveRecord($this_table, $vals);
        $last_id = $conn->insert_id;
        foreach ($techs as $cat_id) {
            $serTechVals['news_id']  = $last_id;
            $serTechVals['cat_id']  = $cat_id;
            saveRecord('tbl_news_categories', $serTechVals);
        }
        $_SESSION['successMsg'] = "News has been saved successfully !";
    } else if ($_REQUEST['mode'] == 'update') {

        if ($img_rs = uploadImage($_FILES[$this_prefix . "image"], "../uploads/media/",820)) {
            $vals[$this_prefix . 'image'] = $img_rs;
        }
        if ($img_rs = uploadImage($_FILES[$this_prefix . "thumb"], "../uploads/media/",395)) {
            $vals[$this_prefix . 'thumb'] = $img_rs;
            
        }
        updateRecord($this_table, $vals, " `{$this_prefix}id` = '" . $_REQUEST["code"] . "' ");
        
        deleteRow('tbl_news_categories', 'delete', "`{$this_prefix}id` = '" . $_REQUEST["code"] . "' ");
        foreach ($techs as $cat_id) {
            $serTechVals['news_id']  = $_REQUEST["code"];
            $serTechVals['cat_id']  = $cat_id;
            saveRecord('tbl_news_categories', $serTechVals);
        }
        $_SESSION['successMsg'] = "News has been updated successfully !";
    }
}


if (!empty($_REQUEST['code']))
    $data = getTable($this_table, $this_prefix . "id = '" . $_REQUEST["code"] . "'");

if (isset($_POST[$this_prefix . 'delete']))
    deleteRows($this_table, $this_prefix . "id", $_POST[$this_prefix . 'delete']);

if (isset($_POST[$this_prefix . 'status']))
    updateRows($this_table, $this_prefix . "status", $this_prefix . "id", $_POST[$this_prefix . 'status']);

if (isset($_POST)) {
    global $conn;

    $query_rs_pages = "SELECT * FROM $this_table WHERE 1 ORDER BY {$this_prefix}order ASC";
    $rs_pages = $conn->query($query_rs_pages) or die('mysql error');
    while ($row_rs_pages = $rs_pages->fetch_array()) {
        if (isset($_REQUEST["orderid" . $row_rs_pages[$this_prefix . "id"] . ""])) {
            $s35 = "update $this_table set {$this_prefix}order = '" . $_REQUEST["orderid" . $row_rs_pages[$this_prefix . "id"] . ""] . "' where {$this_prefix}id = '" . $row_rs_pages[$this_prefix . "id"] . "' ";
            $q35 = $conn->query($s35) or die($s35);
            $_SESSION['successMsg'] = 'Changes has been saved successfully !';
        }
    }
}

$pager = '&pager=' . $_REQUEST['pager'];
?>