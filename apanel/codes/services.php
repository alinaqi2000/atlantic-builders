<?php
// $page_title = 'service';
// $page_short = 'service';
$this_table = 'tbl_services';
$this_prefix = 'service_';
$page_uri = 'services';
if (isset($_POST['submit1'])) {
    global $conn;
    $vals = $_POST;
    unset($vals['submit1']);
    $vals['service_slug'] = toSlugUrl($vals['service_title']);

    // if ($img_rs = uploadImage($_FILES[$this_prefix . "image"], "../uploads/services/", 720)) {
    //     $vals[$this_prefix . 'image'] = $img_rs;
    // }
    if ($_REQUEST['mode'] == 'add') {
        global $conn;
        $s1_max_orderid = "select max(service_order) as orderid from tbl_services";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $vals['service_order'] = intval($r1_max_orderid["orderid"]) + 1;

        saveRecord($this_table, $vals);
        $_SESSION['successMsg'] = "Service has been saved successfully !";
    } else if ($_REQUEST['mode'] == 'update') {

        updateRecord('tbl_services', $vals, " `{$this_prefix}id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = "Service has been updated successfully !";
    }
}
if (!empty($_REQUEST['code']))
    $data = getTable('tbl_services', $this_prefix . "id = '" . $_REQUEST["code"] . "'");

if (isset($_POST[$this_prefix . 'delete']))
    deleteRows($this_table, $this_prefix . "id", $_POST[$this_prefix . 'delete']);

if (isset($_POST[$this_prefix . 'status']))
    updateRows($this_table, $this_prefix . "status", $this_prefix . "id", $_POST[$this_prefix . 'status']);

if (isset($_POST[$this_prefix . 'featured']))
    updateRows($this_table, $this_prefix . "featured", $this_prefix . "id", $_POST[$this_prefix . 'featured']);
