<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
?>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> -->

    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-image"></i> Manage Partners <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>
                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">
                                    <div class="form-group">
                                        <label for="field">Partner Name</label>
                                        <input type="text" value="<?= stripslashes($data['part_name']); ?>" class="form-control" name="part_name" id="part_name">
                                    </div>
                                    <div class="form-group">
                                        <label for="field">Partner Type</label>
                                        <input type="text" value="<?= stripslashes($data['part_type']); ?>" class="form-control" name="part_type" id="part_type">
                                    </div>
                                    <div class="form-group">
                                        <label for="field">Partner Details</label>
                                        <textarea class="form-control" name="part_desc" id="part_desc" rows="6"><?= stripslashes($data['part_desc']); ?></textarea>
                                    </div>
                                    <?php formImageFile('Partner Image', 'part_image', $data['part_image'], '1600px x 575px', 'partners') ?>
                                    <?php formImageFile('Partner Signature', 'part_sign', $data['part_sign'], '1600px x 575px', 'partners') ?>
                                    <?php formImageFile('Partner Logo', 'part_logo', $data['part_logo'], '1600px x 575px', 'partners') ?>
                                    <div class="form-group">
                                        <label for="field">Status</label>
                                        <select name="part_status" id="part_status" class="form-control">
                                            <option value="1" <?= ($data['part_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                            </option>
                                            <option value="0" <?= ($data['part_status'] == '0' ? 'selected="selected"' : ''); ?>>
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
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>
<?
} else {
?>

    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">

            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid page__container">
                    <div class="page__heading d-flex align-items-center">
                        <div class="flex">
                            <h4 class="m-0"><i class="fa fa-image"></i> Manage Partners</h4>
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
                                            <th>Name</th>
                                            <th style="width: 10%;" class="text-center">Sort</th>
                                            <th style="width: 10%;">Status</th>
                                            <th width="10%" class="text-center">Delete</th>
                                            <th style="width: 8%;" class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $paging =  "SELECT * FROM tbl_partners LIMIT 0, 10";
                                        $exe = $conn->query($paging) or die(mysqli_error($conn));
                                        while ($row = $exe->fetch_array()) {
                                            $part_id = $row['part_id'];
                                        ?>
                                            <tr>
                                                <td>
                                                    <div class="badge badge-soft-dark">#<?= $part_id ?></div>
                                                </td>
                                                <td><img src="<?= getImageSrc("../uploads/partners/" . $row['part_image']); ?>" class="tbl_img" /></td>

                                                <td><?= stripslashes($row['part_name']); ?></td>

                                                <td style="width:80px" class="text-center"><input id="orderid<?= $part_id ?>" type="text" name="orderid<?= $part_id ?>" value="<?= $row['part_order'] ?>" class="form-control" size="3" />
                                                </td>
                                                <td>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="part_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $part_id ?>" value="<?= $part_id ?>">
                                                        <label class="custom-control-label" for="customCheck2_<?= $part_id ?>"><?= getStatus($row['part_status']); ?></label>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="part_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $part_id ?>" value="<?= $part_id ?>">
                                                        <label class="custom-control-label" for="customCheckDelete_<?= $part_id ?>"></label>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <a href="<?= $apath; ?><?= $page_uri; ?>?mode=update&code=<?= $row['part_id'] ?><?= $pager; ?>" class="btn btn-sm btn-primary"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                </td>
                                            </tr>
                                        <?
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

    </script>
<?php }
?>