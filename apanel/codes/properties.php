<?php

$page_title = 'properties';
// $page_short = 'service';
$page_uri = 'properties';
$this_table = 'tbl_properties';
$this_prefix = 'prop_';

if (isset($_POST['submit1'])) {
    $vals = $_POST;
    unset($vals['submit1']);

    $vals['prop_slug'] = toSlugUrl($vals['prop_title']);

    if ($_REQUEST['mode'] == 'add') {
        global $conn;
        $s1_max_orderid = "select max({$this_prefix}order) as orderid from $this_table where 1 ";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $vals[$this_prefix . 'order'] = intval($r1_max_orderid["orderid"]) + 1;

        if ($img_rs = uploadImage($_FILES[$this_prefix . "image"], "../uploads/properties/", 720)) {
            $vals[$this_prefix . 'image'] = $img_rs;
        }
        $imageArray = $_FILES["p_image"];
        // print_r($imageArray);
        for ($i = 0; $i < count($imageArray['name']); $i++) {
            $array = array(
                "name" => $imageArray['name'][$i],
                "type" => $imageArray['type'][$i],
                "tmp_name" => $imageArray['tmp_name'][$i]
            );
            if ($img_rs = uploadMultiImage($array, "../uploads/properties/", 720)) {


                $image[$i] .= $img_rs;
            }
        }
        unset($vals['p_image']);
        $vals["prop_multi_images"] = serialize($image);
        saveRecord($this_table, $vals);
        $_SESSION['successMsg'] = "Property has been saved successfully !";
    } else if ($_REQUEST['mode'] == 'update') {

        if ($img_rs = uploadImage($_FILES[$this_prefix . "image"], "../uploads/properties/", 720)) {
            $vals[$this_prefix . 'image'] = $img_rs;
        }

        $imageArray = $_FILES["p_image"];
        // print_r($imageArray);
        for ($i = 0; $i < count($imageArray['name']); $i++) {
            $array = array(
                "name" => $imageArray['name'][$i],
                "type" => $imageArray['type'][$i],
                "tmp_name" => $imageArray['tmp_name'][$i]
            );
            if ($img_rs = uploadMultiImage($array, "../uploads/properties/", 720)) {


                $image[$i] .= $img_rs;
            }
        }
        unset($vals['p_image']);
        $vals["prop_multi_images"] = serialize($image);
        updateRecord($this_table, $vals, " `{$this_prefix}id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = "Property has been updated successfully !";
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
