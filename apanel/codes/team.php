<?php
$this_table = 'tbl_team';
$this_prefix = 'team_';
$page_uri = 'team';
if (isset($_POST['submit1'])) {
    global $conn;
    $vals = $_POST;
    unset($vals['submit1']);

    if ($img_rs = uploadImage($_FILES[$this_prefix . "image"], "../uploads/team/", 348, 398)) {
        $vals[$this_prefix . 'image'] = $img_rs;
    }
    if ($_REQUEST['mode'] == 'add') {

        saveRecord($this_table, $vals);
        $_SESSION['successMsg'] = "Service has been saved successfully !";
    } else if ($_REQUEST['mode'] == 'update') {

        updateRecord('tbl_team', $vals, " `{$this_prefix}id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = "Service has been updated successfully !";
    }
}
if (!empty($_REQUEST['code']))
    $data = getTable('tbl_team', $this_prefix . "id = '" . $_REQUEST["code"] . "'");
    
if (isset($_POST[$this_prefix . 'delete']))
    deleteRows($this_table, $this_prefix . "id", $_POST[$this_prefix . 'delete']);

if (isset($_POST[$this_prefix . 'status']))
    updateRows($this_table, $this_prefix . "status", $this_prefix . "id", $_POST[$this_prefix . 'status']);
