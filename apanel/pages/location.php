<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
?>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-file-alt"></i> Content Pages <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>

                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">
                                    <div class="form-group">
                                        <label for="field">Location Type</label>
                                        <select name="loc_type" id="loc_type" class="form-control">
                                            <option value="0" <?= ($data['loc_type'] == '0' ? 'selected="selected"' : ''); ?>>Comming Soon</option>
                                            <option value="1" <?= ($data['loc_type'] == '1' ? 'selected="selected"' : ''); ?>>Our Location</option>
                                        </select>
                                        <code><small>(Select the location Type)</small></code>
                                    </div>
                                    <div class="form-group">
                                        <label for="field">Manage State</label>
                                        <select name="loc_state" id="loc_state" class="form-control">
                                            <option value="texas" <?= ($data['loc_state'] == 'texas' ? 'selected="selected"' : ''); ?>>Texas</option>
                                        </select>
                                        <code><small>(Select the State)</small></code>
                                    </div>
                                    <div class="form-group">
                                        <h4>Details</h4>
                                        <hr />
                                    </div>
                                    <div class="form-group">
                                        <label for="field">Address</label>
                                        <textarea class="form-control" name="loc_address" id="loc_address" rows="2"><?= str($data['loc_address']); ?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="field">City</label>
                                        <input type="text" name="loc_city" id="loc_city" value="<?= stripslashes($data['loc_city']); ?>" required="required" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label for="field">Post Code</label>
                                        <input type="text" name="loc_postcode" id="loc_postcode" value="<?= stripslashes($data['loc_postcode']); ?>" required="required" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label for="field">Phone No</label>
                                        <input type="text" name="loc_phone" id="loc_phone" value="<?= stripslashes($data['loc_phone']); ?>" required="required" class="form-control" />
                                    </div>
                                    <?= formImageFile('Location Image', 'loc_image', $data['loc_image'], '', 'media') ?>

                                    <div class="form-group">
                                        <label for="field">Status</label>
                                        <select name="loc_status" id="loc_status" class="form-control">
                                            <option value="1" <?= ($data['loc_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                            </option>
                                            <option value="0" <?= ($data['loc_status'] == '0' ? 'selected="selected"' : ''); ?>>
                                                Inactive</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center mb-3">
                                <hr>
                                <a href="<?= $apath; ?>location" class=" btn btn-default btn-lg mr-3"> <i class="fa fa-arrow-left"></i> Cancel</a>
                                <button type="submit" name="submit1" class=" btn btn-primary btn-lg"> <i class="fa fa-save"></i> Save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <?php include_once("pages/shared/sidebar.php"); ?>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#editor1").summernote();
        })
    </script>
<?php
} else {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid page__container">
                    <div class="page__heading d-flex align-items-center">
                        <div class="flex">
                            <h4 class="m-0"><i class="fa fa-map"></i> Manage Locations</h4>
                        </div>
                        <a href="javascript:document.getElementById('updateForm').submit();" class="btn btn-primary ml-3" onclick="return confirm('Are you sure you want to update records?');">Update <i class="fa fa-arrow-up"></i></a>
                        <a href="<?= $apath; ?>location?mode=add" class="btn btn-success ml-3">Create New <i class="fa fa-plus"></i></a>
                    </div>
                    <div class="card">
                        <form name="updateForm" id="updateForm" action="" method="post">
                            <div class="table-responsive" data-toggle="lists" data-lists-values='["js-lists-values-employee-name"]'>
                                <table class="table mb-0 thead-border-top-0 table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 3%;" class="text-center">#ID</th>
                                            <th>Type</th>
                                            <th>State</th>
                                            <th style="width: 20%;">Code</th>
                                            <th style="width: 10%;" class="text-center">Sort Order</th>
                                            <th style="width: 10%;">Status</th>
                                            <th style="width: 15%;" class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $srNo = 1;
                                        $paging = getPaging('tbl_location', "WHERE 1 ORDER BY loc_order ASC", 10, $_REQUEST['page'], '?', $_GET['pager']);
                                        $pagination = $paging[1];
                                        if ($rf_pages = getList($paging[0])) {
                                            while ($row = fetch($rf_pages)) {
                                                $loc_id = $row['loc_id'];
                                                $SrNo++;
                                        ?>
                                                <td>
                                                    <div class="badge badge-soft-dark">#<?= $srNo++ ?></div>
                                                </td>
                                                <td><?= getLocationType($row['loc_type']); ?></td>
                                                <td><?= stripslashes($row['loc_state']); ?></td>
                                                <td><?= stripslashes($row['loc_postcode']); ?></td>
                                                <td style="width:80px" class="text-center"><input id="orderid<?= $loc_id ?>" type="text" name="orderid<?= $loc_id ?>" value="<?= $row['loc_order'] ?>" class="form-control" size="3" /></td>
                                                <td>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="loc_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $loc_id ?>" value="<?= $loc_id ?>">
                                                        <label class="custom-control-label" for="customCheck2_<?= $loc_id ?>"><?= getStatus($row['loc_status']); ?></label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="<?= $apath; ?>location?mode=update&code=<?= $row['loc_id'] ?>" class="btn btn-sm btn-primary mr-1"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                    <a href="<?= $apath; ?>location?mode=delete&code=<?= $row['loc_id'] ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a>
                                                </td>
                                                </tr>
                                            <?
                                            }
                                            ?><tr>
                                                <td colspan="10">
                                                    <div class="text-center"><?= $pagination; ?></div>
                                                </td>
                                            </tr><?
                                                } else {
                                                    ?>
                                            <tr>
                                                <td colspan="7" class="text-center">No Record Found</td>
                                            </tr>
                                        <? } ?>
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
<? } ?>