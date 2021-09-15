<?php
$this_table = 'tbl_partners';
$this_prefix = 'part_';
$page_uri = 'partners';
if (isset($_POST['submit1'])) {
    global $conn;
    $vals = $_POST;
    unset($vals['submit1']);

    if ($img_rs = uploadImage($_FILES[$this_prefix . "image"], "../uploads/partners/", 1920, 1920)) {
        $vals[$this_prefix . 'image'] = $img_rs;
    }
    if ($sign_rs = uploadImage($_FILES[$this_prefix . "sign"], "../uploads/partners/", 1920, 1920)) {
        $vals[$this_prefix . 'sign'] = $sign_rs;
    }
    if ($logo_rs = uploadImage($_FILES[$this_prefix . "logo"], "../uploads/partners/", 1920, 1920)) {
        $vals[$this_prefix . 'logo'] = $logo_rs;
    }
    if ($_REQUEST['mode'] == 'add') {
        global $conn;
        $s1_max_orderid = "select max(part_order) as orderid from tbl_partners";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $vals['part_order'] = intval($r1_max_orderid["orderid"]) + 1;

        saveRecord($this_table, $vals);
        $_SESSION['successMsg'] = "Partner has been saved successfully !";
    } else if ($_REQUEST['mode'] == 'update') {

        updateRecord('tbl_partners', $vals, " `{$this_prefix}id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = "Partner has been updated successfully !";
    }
}
if (!empty($_REQUEST['code']))
    $data = getTable('tbl_partners', $this_prefix . "id = '" . $_REQUEST["code"] . "'");

if (isset($_POST[$this_prefix . 'delete']))
    deleteRows($this_table, $this_prefix . "id", $_POST[$this_prefix . 'delete']);

if (isset($_POST[$this_prefix . 'status']))
    updateRows($this_table, $this_prefix . "status", $this_prefix . "id", $_POST[$this_prefix . 'status']);
