<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
?>

    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-image"></i> Manage Project <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>
                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">
                                    <div class="form-group">
                                        <label for="proj_title">Title</label>
                                        <input class="form-control" name="proj_title" id="proj_title" value="<?= stripslashes($data['proj_title']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="proj_type">Type</label>
                                        <input class="form-control" name="proj_type" id="proj_type" value="<?= stripslashes($data['proj_type']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="proj_location">Location</label>
                                        <input class="form-control" name="proj_location" id="proj_location" value="<?= stripslashes($data['proj_location']); ?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="proj_apts">No. Of Apartments</label>
                                        <input class="form-control" name="proj_apts" id="proj_apts" value="<?= stripslashes($data['proj_apts']); ?>">
                                    </div>

                                    <div class="form-group">
                                        <label for="proj_investment">Total Investment</label>
                                        <input class="form-control" name="proj_investment" id="proj_investment" value="<?= stripslashes($data['proj_investment']); ?>">
                                    </div>
                                    <?php formImageFile('Project Image', 'proj_image', $data['proj_image'], '720px', 'projects') ?>

                                    <div class="form-group">
                                        <label for="proj_status">Status</label>
                                        <select name="proj_status" id="proj_status" class="form-control">
                                            <option value="1" <?= ($data['proj_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                            </option>
                                            <option value="0" <?= ($data['proj_status'] == '0' ? 'selected="selected"' : ''); ?>>
                                                Inactive</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="proj_featured">Featured</label>
                                        <select name="proj_featured" id="proj_featured" class="form-control">
                                            <option value="1" <?= ($data['proj_featured'] == '1' ? 'selected="selected"' : ''); ?>>Yes
                                            </option>
                                            <option value="0" <?= ($data['proj_featured'] == '0' ? 'selected="selected"' : ''); ?>>
                                                No</option>
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
<?php } else {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid page__container">
                    <div class="page__heading d-flex align-items-center">
                        <div class="flex">
                            <h4 class="m-0"><i class="fa fa-image"></i> Manage Projects</h4>
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
                                            <th style="width: 10%;">Featured</th>
                                            <th style="width: 10%;" class="text-center">Sort</th>
                                            <th style="width: 10%;">Status</th>
                                            <th width="10%" class="text-center">Delete</th>
                                            <th style="width: 15%;" class="text-center">Action</th>
                                            <!-- <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'proj_status\']').attr('checked', this.checked);" title="Select All"> Status</th>
                        <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'proj_delete\']').attr('checked', this.checked);" title="Select All"> Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $sr = 1;
                                        $paging = getPaging('tbl_projects', "WHERE 1 ORDER BY proj_order ASC", 20, $_REQUEST['page'], '?', $_GET['pager']);
                                        $pagination = $paging[1];
                                        if ($rlist_pages = getList($paging[0])) {
                                            while ($row = fetch($rlist_pages)) {
                                                $proj_id = $row['proj_id'];
                                        ?>
                                                <tr>
                                                    <td>
                                                        <div class="badge badge-soft-dark">#<?= $sr++ ?></div>
                                                    </td>
                                                    <td><img src="<?= getImageSrc("../uploads/projects/" . $row['proj_image']); ?>" class="tbl_img" /></td>

                                                    <td><?= $row['proj_title'] ?></td>
                                                    <td>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="proj_featured[]" class="custom-control-input js-check-selected-row" id="customCheck1_<?= $ami_id ?>" value="<?= $ami_id ?>">
                                                            <label class="custom-control-label" for="customCheck1_<?= $ami_id ?>"><?= getFeatureStatus($row['proj_featured']); ?></label>
                                                        </div>
                                                    </td>
                                                    <td style="width:80px" class="text-center"><input id="orderid<?= $proj_id ?>" type="text" name="orderid<?= $proj_id ?>" value="<?= $row['proj_order'] ?>" class="form-control" size="3" />
                                                    </td>
                                                    <td>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="proj_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $proj_id ?>" value="<?= $proj_id ?>">
                                                            <label class="custom-control-label" for="customCheck2_<?= $proj_id ?>"><?= getStatus($row['proj_status']); ?></label>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="proj_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $proj_id ?>" value="<?= $proj_id ?>">
                                                            <label class="custom-control-label" for="customCheckDelete_<?= $proj_id ?>"></label>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <a href="<?= $apath; ?><?= $page_uri; ?>?mode=update&code=<?php echo $row['proj_id'] ?>" class="btn btn-sm btn-primary"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                        <!-- <a href="<?= $apath; ?><?= $page_uri; ?>?mode=delete&code=<?= $row['proj_id'] ?><?= $pager; ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a> -->
                                                    </td>
                                                </tr>
                                            <?php
                                            }
                                            ?>
                                            <tr>
                                                <td colspan="12">
                                                    <div class="text-center"><?= $pagination; ?></div>
                                                </td>
                                            </tr>
                                        <?php
                                        } else {
                                        ?>
                                            <tr>
                                                <td colspan="12" class="text-center">No Record Found</td>
                                            </tr>
                                        <?php } ?>

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

<script src="assets/calender/js/popper.min.js"></script>
<script src="assets/calender/js/bootstrap.min.js"></script>
<script src="assets/calender/js/rome.js"></script>

<script src="assets/calender/js/main.js"></script>