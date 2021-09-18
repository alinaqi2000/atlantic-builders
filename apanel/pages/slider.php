<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> -->


<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-image"></i> Manage slider <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>
                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">
                                    <div class="form-group">
                                        <label for="slider_title">Title</label>
                                        <input class="form-control" name="slider_title" id="slider_title" value="<?= stripslashes($data['slider_title']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="sec_title">Secondary Title</label>
                                        <input class="form-control" name="sec_title" id="sec_title" value="<?= stripslashes($data['sec_title']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="slider_desc">Description</label>
                                        <textarea class="form-control" name="slider_desc" id="slider_desc" rows="3"><?= stripslashes($data['slider_desc']); ?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="slider_btn_text">Button Text</label>
                                        <input class="form-control" name="slider_btn_txt" id="slider_btn_txt" value="<?= stripslashes($data['slider_btn_txt']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="slider_btn_link">Button Link</label>
                                        <input class="form-control" name="slider_btn_link" id="slider_btn_link" value="<?= stripslashes($data['slider_btn_link']); ?>">
                                    </div>
                                    <?php formImageFile('Image', 'slider_image', $data['slider_image'], '720px', 'sliders') ?>
                                    <div class="form-group">
                                        <label for="slider_status">Status</label>
                                        <select name="slider_status" id="slider_status" class="form-control">
                                            <option value="1" <?= ($data['slider_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                            </option>
                                            <option value="0" <?= ($data['slider_status'] == '0' ? 'selected="selected"' : ''); ?>>
                                                Inactive</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center mb-3">
                                <hr>
                                <a href="<?= $apath; ?><?= $page_uri; ?>" class=" btn btn-default btn-lg mr-3"> <i class="fa fa-arrow-left"></i> Cancel</a>
                                <button type="submit" name="submit1" class=" btn btn-primary btn-lg"> <i class="fa fa-save"></i> Save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <?php include_once("pages/shared/sidebar.php"); ?>
        </div>
    </div>
<?
} else {
?>

    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">

            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid page__container">
                    <div class="page__heading d-flex align-items-center">
                        <div class="flex">
                            <h4 class="m-0"><i class="fa fa-image"></i> Manage Testimonials</h4>
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
                                            <th style="width: 15%;">Image</th>
                                            <th>Title</th>
                                            <th style="width: 10%;" class="text-center">Sort</th>
                                            <th style="width: 10%;">Status</th>
                                            <th width="10%" class="text-center">Delete</th>
                                            <th style="width: 15%;" class="text-center">Action</th>
                                            <!-- <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'slider_status\']').attr('checked', this.checked);" title="Select All"> Status</th>
                        <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'slider_delete\']').attr('checked', this.checked);" title="Select All"> Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $sr = 1;
                                        $paging =  "SELECT * FROM tbl_sliders LIMIT 0, 10";
                                        $exe = $conn->query($paging) or die(mysqli_error($conn));
                                        while ($row = $exe->fetch_array()) {
                                            $slider_id = $row['slider_id'];
                                        ?>
                                            <tr>
                                                <td>
                                                    <div class="badge badge-soft-dark">#<?= $sr++ ?></div>
                                                </td>

                                                <td><img src="<?= getImageSrc("../uploads/sliders/" . $row['slider_image']); ?>" class="tbl_img" /></td>

                                                <td><?= stripslashes($row['slider_title']); ?></td>

                                                <td style="width:80px" class="text-center"><input id="orderid<?= $slider_id ?>" type="text" name="orderid<?= $slider_id ?>" value="<?= $row['slider_order'] ?>" class="form-control" size="3" />
                                                </td>
                                                <td>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="slider_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $slider_id ?>" value="<?= $slider_id ?>">
                                                        <label class="custom-control-label" for="customCheck2_<?= $slider_id ?>"><?= getStatus($row['slider_status']); ?></label>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="slider_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $slider_id ?>" value="<?= $slider_id ?>">
                                                        <label class="custom-control-label" for="customCheckDelete_<?= $slider_id ?>"></label>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <a href="<?= $apath; ?><?= $page_uri; ?>?mode=update&code=<?= $row['slider_id'] ?><?= $pager; ?>" class="btn btn-sm btn-primary"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                    <!-- <a href="<?= $apath; ?><?= $page_uri; ?>?mode=delete&code=<?= $row['slider_id'] ?><?= $pager; ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a> -->
                                                </td>
                                            </tr>
                                        <?php
                                        }
                                        ?>
                                        <tr>
                                            <td colspan="7">
                                                <div class="text-center"><?= $pagination; ?></div>
                                            </td>
                                        </tr>

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
<?php }
?>