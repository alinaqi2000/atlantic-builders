<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
    $multi_img = unserialize(stripslashes($data['prop_multi_images']));
    if ($multi_img) {
        $count_image = count($multi_img);
    } else {
        $count_image = 0;
    }
?>
    <link rel="stylesheet" href="<?= $apath ?>calender/fonts/icomoon/style.css">

    <link rel="stylesheet" href="<?= $apath ?>calender/css/rome.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?= $apath ?>calender/css/bootstrap.min.css">

    <script src="<?= $apath ?>calender/js/jquery-3.3.1.min.js"></script>

    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-image"></i> Manage Property <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>
                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">
                                    <div class="form-group">
                                        <label for="prop_title">Title</label>
                                        <input class="form-control" name="prop_title" id="prop_title" value="<?= stripslashes($data['prop_title']); ?>">
                                    </div>
                                    <div class="container text-left">
                                        <div class="row justify-content-left">

                                            <div class="form-group">
                                                <label for="input_from">Select Date</label>
                                                <input autocomplete="off" aria-expanded="false" aria-autocomplete="both" value="<?= $data['prop_date'] ?>" name="prop_date" type="text" class="form-control" id="input">
                                            </div>

                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <label for="prop_location">Location</label>
                                        <input class="form-control" name="prop_location" id="prop_location" value="<?= stripslashes($data['prop_location']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="prop_short_desc">Property Short Detail</label>
                                        <textarea class="form-control" name="prop_short_desc" id="prop_short_desc"><?php echo stripslashes($data['prop_short_desc']); ?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="prop_detail">Property Detail</label>
                                        <textarea class="form-control" name="prop_detail" id="prop_detail"><?php echo stripslashes($data['prop_detail']); ?></textarea>
                                    </div>
                                    <?php formImageFile('Property Thumbnail', 'prop_image', $data['prop_image'], '720px', 'properties') ?>

                                    <?= formImageMultiFile('Upload Multiple Property Images', 'p_image', $data['p_image'], ' 720px', 'properties') ?>
                                    <div class="card pt-10 pb-10">
                                        <div class="row p-2">
                                            <?php for ($i = 0; $i < $count_image; $i++) { ?>
                                                <div class="col-lg-3">
                                                    <img height="50px" src="<?= $path ?>uploads/properties/<?= $multi_img[$i] ?>" alt="Product Image">
                                                </div>
                                            <?php } ?>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="prop_type">Type</label>
                                        <select name="prop_type" id="prop_type" class="form-control">
                                            <option value="Sale" <?= ($data['prop_type'] == 'Sale' ? 'selected="selected"' : ''); ?>>Sale</option>
                                            <option value="Rent" <?= ($data['prop_type'] == 'Rent' ? 'selected="selected"' : ''); ?>>Rent</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="prop_status">Status</label>
                                        <select name="prop_status" id="prop_status" class="form-control">
                                            <option value="1" <?= ($data['prop_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                            </option>
                                            <option value="0" <?= ($data['prop_status'] == '0' ? 'selected="selected"' : ''); ?>>
                                                Inactive</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="prop_featured">Featured</label>
                                        <select name="prop_featured" id="prop_featured" class="form-control">
                                            <option value="1" <?= ($data['prop_featured'] == '1' ? 'selected="selected"' : ''); ?>>Yes
                                            </option>
                                            <option value="0" <?= ($data['prop_featured'] == '0' ? 'selected="selected"' : ''); ?>>
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

    <script src="<?= $apath ?>calender/js/popper.min.js"></script>
    <script src="<?= $apath ?>calender/js/bootstrap.min.js"></script>
    <script src="<?= $apath ?>calender/js/rome.js"></script>

    <script src="<?= $apath ?>calender/js/main.js"></script>
<?php } else {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid page__container">
                    <div class="page__heading d-flex align-items-center">
                        <div class="flex">
                            <h4 class="m-0"><i class="fa fa-image"></i> Manage Properties</h4>
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
                                            <!-- <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'prop_status\']').attr('checked', this.checked);" title="Select All"> Status</th>
                        <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'prop_delete\']').attr('checked', this.checked);" title="Select All"> Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $sr = 1;
                                        $paging = getPaging('tbl_properties', "WHERE 1 ORDER BY prop_order ASC", 20, $_REQUEST['page'], '?', $_GET['pager']);
                                        $pagination = $paging[1];
                                        if ($rlist_pages = getList($paging[0])) {
                                            while ($row = fetch($rlist_pages)) {
                                                $prop_id = $row['prop_id'];
                                        ?>
                                                <tr>
                                                    <td>
                                                        <div class="badge badge-soft-dark">#<?= $sr++ ?></div>
                                                    </td>
                                                    <td><img src="<?= getImageSrc("../uploads/properties/" . $row['prop_image']); ?>" class="tbl_img" /></td>

                                                    <td><?= $row['prop_title'] ?></td>
                                                    <td>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="prop_featured[]" class="custom-control-input js-check-selected-row" id="customCheck1_<?= $ami_id ?>" value="<?= $ami_id ?>">
                                                            <label class="custom-control-label" for="customCheck1_<?= $ami_id ?>"><?= getFeatureStatus($row['prop_featured']); ?></label>
                                                        </div>
                                                    </td>
                                                    <td style="width:80px" class="text-center"><input id="orderid<?= $prop_id ?>" type="text" name="orderid<?= $prop_id ?>" value="<?= $row['prop_order'] ?>" class="form-control" size="3" />
                                                    </td>
                                                    <td>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="prop_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $prop_id ?>" value="<?= $prop_id ?>">
                                                            <label class="custom-control-label" for="customCheck2_<?= $prop_id ?>"><?= getStatus($row['prop_status']); ?></label>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="prop_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $prop_id ?>" value="<?= $prop_id ?>">
                                                            <label class="custom-control-label" for="customCheckDelete_<?= $prop_id ?>"></label>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <a href="<?= $apath; ?><?= $page_uri; ?>?mode=update&code=<?php echo $row['prop_id'] ?>" class="btn btn-sm btn-primary"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                        <!-- <a href="<?= $apath; ?><?= $page_uri; ?>?mode=delete&code=<?= $row['prop_id'] ?><?= $pager; ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a> -->
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