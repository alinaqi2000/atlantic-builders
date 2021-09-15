<?php
$page_uri = "gallery_videos";
$this_table = 'tbl_gallery_videos';
$this_prefix = 'v_';
if (isset($_POST['gallery_submit'])) {
    $vals = $_POST;
    unset($vals['gallery_submit']);
    global $conn;
    if ($img_rs = uploadImage($_FILES["v_image"], "../uploads/gallery/", 239)) {
        $vals['v_image'] = $img_rs;
        $image = $vals['v_image'];
    }

    $link = $vals['v_video'];
    function get_youtube_id_from_url($url)
    {
        preg_match('/(http(s|):|)\/\/(www\.|)yout(.*?)\/(embed\/|watch.*?v=|)([a-z_A-Z0-9\-]{11})/i', $url, $results);
        return $results[6];
    }


    $link_id = get_youtube_id_from_url($link);
    if ($_REQUEST['mode'] == 'add') {
        global $conn;

        $s1_max_orderid = "select max(v_order) as orderid from tbl_gallery_videos where 1 ";
        $q1_max_orderid = $conn->query($s1_max_orderid) or die($s1_max_orderid);
        $r1_max_orderid = $q1_max_orderid->fetch_array();
        $order = intval($r1_max_orderid["orderid"]) + 1;
        $query = "INSERT INTO `tbl_gallery_videos`(`v_image`,`v_video`, `v_status`, `v_order`) VALUES ('$image','$link_id','1','$order')";
        $exequery = $conn->query($query) or die('mysql error');
        $_SESSION['successMsg'] = 'Video has been Added successfully !';
    } else if ($_REQUEST['mode'] == 'update') {
        $vals['v_video'] = $link_id;
        updateRecord("tbl_gallery_videos", $vals, " `v_id` = '" . $_REQUEST["code"] . "' ");
        $_SESSION['successMsg'] = 'Video Link has been updated successfully !';
    }
}

if (!empty($_REQUEST['code']))
    $data = getTable("tbl_gallery_videos", "v_id = '" . $_REQUEST["code"] . "'");

if (isset($_POST[$this_prefix . 'delete']))
    deleteRows("tbl_gallery_videos", "v_id", $_POST['v_delete']);

if (isset($_POST['v_status']))
    updateRows("tbl_gallery_videos", "v_status", "v_id", $_POST['v_status']);


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
?>



<?php
if ($_REQUEST['mode'] == 'add' || $_REQUEST['mode'] == 'update') { ?>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="assets/css/gallery.css" rel="stylesheet">
    <!------ Include the above in your HEAD tag ---------->

    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <script src="//cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>

    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-image"></i> Manage Videos <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>
                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">

                                    <?= formText('Youtube Video Link', 'v_video', $data['v_video']); ?>
                                    <?= formImageFile('Video Image', 'v_image', $data['v_image'], '240px x 150px', 'gallery') ?>

                                </div>

                            </div>
                            <div class="text-center mb-3">
                                <hr>
                                <a href="<?= $apath; ?>gallery_videos" class=" btn g_btn btn-default btn-lg mr-3"> <i class="fa fa-arrow-left"></i> back</a>
                                <button type="submit" name="gallery_submit" class=" btn btn-primary btn-lg"> <i class="fa fa-save"></i> Save</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="clear"></div>

            </div>

            <?php include_once("pages/shared/sidebar.php"); ?>
        </div>


    </div>

<?php } else { ?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid page__container">
                    <div class="page__heading d-flex align-items-center">
                        <div class="flex">
                            <h4 class="m-0"><i class="fa fa-image"></i> Manage PortFolio</h4>
                        </div>
                        <a href="javascript:document.getElementById('updateForm').submit();" class="btn btn-primary ml-3" onclick="return confirm('Are you sure you want to update records?');">Update <i class="fa fa-arrow-up"></i></a>
                        <a href="<?= $apath; ?><?= $page_uri; ?>?mode=add" class="btn btn-success ml-3">Create New <i class="fa fa-plus"></i></a>
                    </div>
                    <div class="card">
                        <form name="updateForm" id="updateForm" action="" method="post">
                            <div class="table-responsive" data-toggle="lists" data-lists-values='["js-lists-values-employee-name"]'>
                                <table class="table mb-0 thead-border-top-0 table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 3%;" class="text-center">#ID</th>
                                            <th>Image</th>
                                            <th>Youtube Video Link</th>
                                            <th style="width: 10%;" class="text-center">Sort</th>
                                            <th style="width: 10%;">Status</th>
                                            <th width="10%" class="text-center">Delete</th>
                                            <th style="width: 15%;" class="text-center">Action</th>
                                            <!-- <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'v_status\']').attr('checked', this.checked);" title="Select All"> Status</th>
                        <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'v_delete\']').attr('checked', this.checked);" title="Select All"> Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $paging =  "SELECT * FROM tbl_gallery_videos LIMIT 0, 10";
                                        $exe = $conn->query($paging) or die(mysqli_error($conn));
                                        while ($row = $exe->fetch_array()) {
                                            $v_id = $row['v_id'];
                                        ?>
                                            <tr>
                                                <td>
                                                    <div class="badge badge-soft-dark">#<?= $v_id ?></div>
                                                </td>
                                                <td><img src="<?= getImageSrc("../uploads/gallery/" . $row['v_image']); ?>" class="tbl_img" /></td>
                                                <td><?= stripslashes($row['v_video']); ?></td>
                                                <td style="width:80px" class="text-center"><input id="orderid<?= $v_id ?>" type="text" name="orderid<?= $v_id ?>" value="<?= $row['v_order'] ?>" class="form-control" size="3" />
                                                </td>
                                                <td>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="v_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $v_id ?>" value="<?= $v_id ?>">
                                                        <label class="custom-control-label" for="customCheck2_<?= $v_id ?>"><?= getStatus($row['v_status']); ?></label>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="v_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $v_id ?>" value="<?= $v_id ?>">
                                                        <label class="custom-control-label" for="customCheckDelete_<?= $v_id ?>"></label>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <a href="<?= $apath; ?><?= $page_uri; ?>?mode=update&code=<?php echo $row['v_id'] ?>" class="btn btn-sm btn-primary"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                    <!-- <a href="<?= $apath; ?><?= $page_uri; ?>?mode=delete&code=<?= $row['v_id'] ?><?= $pager; ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a> -->
                                                </td>
                                            </tr>
                                        <?
                                        }
                                        ?>

                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>

                </div>
            </div>
            <?php include_once("pages/shared/sidebar.php"); ?>
        </div>
    </div>
<?php } ?>