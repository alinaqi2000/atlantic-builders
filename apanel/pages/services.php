<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
?>

    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-image"></i> Manage Service <i class="fa fa-chevron-right"></i> Create / Update</h4>
                    </div>
                </div>
                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">
                                    <div class="form-group">
                                        <label for="service_title">Title</label>
                                        <input type="text" value="<?= stripslashes($data['service_title']); ?>" class="form-control" name="service_title" id="service_title">
                                    </div>
                                    <div class="form-group">
                                        <label for="service_icon">Icon</label>
                                        <input type="text" value="<?= stripslashes($data['service_icon']); ?>" class="form-control" name="service_icon" id="service_icon">
                                    </div>
                                    <div class="form-group">
                                        <label for="service_short_desc">Short Details</label>
                                        <textarea class="form-control" name="service_short_desc" id="service_short_desc" rows="2"><?= stripslashes($data['service_short_desc']); ?></textarea>
                                    </div>
                                    <!-- <div class="form-group no_externel_pages">
                                        <label for="field">Section Detail</label>
                                        <textarea name="service_detail_desc" id="editor1" cols="30" rows="10"><?= stripslashes($data['service_detail_desc']); ?></textarea>
                                    </div> -->
                                    <?php // formImageFile('Service Image', 'service_image', $data['service_image'], '720px', 'services') 
                                    ?>
                                    <div class="form-group">
                                        <label for="service_status">Status</label>
                                        <select name="service_status" id="service_status" class="form-control">
                                            <option value="1" <?= ($data['service_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                            </option>
                                            <option value="0" <?= ($data['service_status'] == '0' ? 'selected="selected"' : ''); ?>>
                                                Inactive</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="service_featured">Featured</label>
                                        <select name="service_featured" id="service_featured" class="form-control">
                                            <option value="1" <?= ($data['service_featured'] == '1' ? 'selected="selected"' : ''); ?>>Yes
                                            </option>
                                            <option value="0" <?= ($data['service_featured'] == '0' ? 'selected="selected"' : ''); ?>>
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
<?
} else {
?>
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" /> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">

            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid page__container">
                    <div class="page__heading d-flex align-items-center">
                        <div class="flex">
                            <h4 class="m-0"><i class="fa fa-image"></i> Manage Services</h4>
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
                                            <!-- <th style="width: 15%;">Image</th> -->
                                            <th>Title</th>
                                            <th style="width: 10%;">Featured</th>
                                            <th style="width: 10%;" class="text-center">Sort</th>
                                            <th style="width: 10%;">Status</th>
                                            <th width="10%" class="text-center">Delete</th>
                                            <th style="width: 8%;" class="text-center">Action</th>
                                            <!-- <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'service_status\']').attr('checked', this.checked);" title="Select All"> Status</th>
                        <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'service_delete\']').attr('checked', this.checked);" title="Select All"> Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $sr = 1;
                                        $paging = getPaging('tbl_services', "WHERE 1 ORDER BY service_order ASC", 20, $_REQUEST['page'], '?', $_GET['pager']);
                                        $pagination = $paging[1];
                                        if ($rlist_pages = getList($paging[0])) {
                                            while ($row = fetch($rlist_pages)) {
                                                $service_id = $row['service_id'];

                                        ?>
                                                <tr>
                                                    <td>
                                                        <div class="badge badge-soft-dark">#<?= $sr++ ?></div>
                                                    </td>
                                                    <!-- <td><img src="< ?= getImageSrc("../uploads/services/" . $row['service_image']); ?>" class="tbl_img" /></td> -->

                                                    <td><?= stripslashes($row['service_title']); ?></td>
                                                    <td>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="service_featured[]" class="custom-control-input js-check-selected-row" id="customCheck1_<?= $service_id ?>" value="<?= $service_id ?>">
                                                            <label class="custom-control-label" for="customCheck1_<?= $service_id ?>"><?= getFeatureStatus($row['service_featured']); ?></label>
                                                        </div>
                                                    </td>
                                                    <td style="width:80px" class="text-center"><input id="orderid<?= $service_id ?>" type="text" name="orderid<?= $service_id ?>" value="<?= $row['service_order'] ?>" class="form-control" size="3" />
                                                    </td>
                                                    <td>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="service_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $service_id ?>" value="<?= $service_id ?>">
                                                            <label class="custom-control-label" for="customCheck2_<?= $service_id ?>"><?= getStatus($row['service_status']); ?></label>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="service_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $service_id ?>" value="<?= $service_id ?>">
                                                            <label class="custom-control-label" for="customCheckDelete_<?= $service_id ?>"></label>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <a href="<?= $apath; ?><?= $page_uri; ?>?mode=update&code=<?= $row['service_id'] ?><?= $pager; ?>" class="btn btn-sm btn-primary"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                        <!-- <a href="<?= $apath; ?><?= $page_uri; ?>?mode=delete&code=<?= $row['service_id'] ?><?= $pager; ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a> -->
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
    <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script> -->
    <script>
        $(document).ready(function() {
            // $('.hide').hide();
            // $(".readmore").click(function() {
            //     var theID = $(this).data("id");
            //     var hide = "#hide" + theID;
            //     $(hide).show();
            // });
            // $('#hide').hide();
            // $('.readmore').click(function() {
            //     $('.hide').show();
            // });
            $('.close').click(function() {
                $('.model').hide();
            });
            $(function() {
                $('[data-toggle="popover"]').popover()
            })
        });
    </script>
<?php }
?>