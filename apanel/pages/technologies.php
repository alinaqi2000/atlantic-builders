<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-image"></i> Manage <?= $tec_title; ?> <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>
                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">
                                    <?= formText('Technology Title', 'tec_title', $data['tec_title']) ?>
                                    <!-- <div class="form-group">
                                    <label for="field">Status</label>
                                    <select name="tec_status" id="tec_status" class="form-control">
                                        <option value="1"
                                            <?= ($data['tec_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                        </option>
                                        <option value="0"
                                            <?= ($data['tec_status'] == '0' ? 'selected="selected"' : ''); ?>>Inactive
                                        </option>
                                    </select>
                                </div> -->
                                    <div class="form-group">
                                        <div class="flex">
                                            <label for="subscribe">Status</label><br>
                                            <div class="custom-control custom-checkbox-toggle custom-control-inline mr-1">
                                                <input type="checkbox" id="tec_status" name="tec_status" value="1" <?= ($data['tec_status'] == '1' ? 'checked=""' : ''); ?> class="custom-control-input">
                                                <label class="custom-control-label" for="tec_status">Active</label>
                                            </div>
                                            <!-- <label for="subscribe" class="mb-0">Yes</label> -->
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="text-center mb-3">
                                <hr>
                                <a href="<?= $apath; ?><?= $list_page; ?>" class=" btn btn-default btn-lg mr-3"> <i class="fa fa-arrow-left"></i> Cancel</a>
                                <button type="submit" name="submit1" class=" btn btn-primary btn-lg"> <i class="fa fa-save"></i> Save</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <?php include_once("pages/shared/sidebar.php"); ?>
        </div>
    </div>
<?php
} else {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid page__container">
                    <div class="page__heading d-flex align-items-center">
                        <div class="flex">
                            <h4 class="m-0"><i class="fa fa-image"></i> Manage <?= $tec_title; ?></h4>
                        </div>
                        <a href="javascript:document.getElementById('updateForm').submit();" class="btn btn-primary ml-3" onclick="return confirm('Are you sure you want to update records?');">Update <i class="fa fa-arrow-up"></i></a>
                        <a href="<?= $apath; ?><?= $list_page; ?>?mode=add" class="btn btn-success ml-3">Create New <i class="fa fa-plus"></i></a>
                    </div>
                    <div class="card">
                        <form name="updateForm" id="updateForm" action="" method="post">
                            <div class="table-responsive" data-toggle="lists" data-lists-values='["js-lists-values-employee-name"]'>
                                <table class="table mb-0 thead-border-top-0 table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 3%;" class="text-center">#ID</th>
                                            <th>Title</th>
                                            <th style="width: 10%;" class="text-center">Sort Order</th>
                                            <th style="width: 10%;">Status</th>
                                            <th width="10%" class="text-center">Delete</th>
                                            <th style="width: 15%;" class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $sr=1;
                                        $paging = getPaging('tbl_technologies', "WHERE 1 ORDER BY tec_order ASC", 20, $_REQUEST['page'], '?', $_GET['pager']);
                                        $pagination = $paging[1];
                                        if ($rlist_pages = getList($paging[0])) {
                                            while ($row = fetch($rlist_pages)) {
                                                $tec_id = $row['tec_id'];
                                        ?>
                                                <tr>
                                                    <td>
                                                        <div class="badge badge-soft-dark">#<?= $sr++ ?></div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex align-items-center">
                                                            <div class="d-flex align-items-center">
                                                                <strong><?= stripslashes($row['tec_title']); ?></strong>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td style="width:80px" class="text-center"><input id="orderid<?= $tec_id ?>" type="text" name="orderid<?= $tec_id ?>" value="<?= $row['tec_order'] ?>" class="form-control" size="3" /></td>
                                                    <td>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="tec_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $tec_id ?>" value="<?= $tec_id ?>">
                                                            <label class="custom-control-label" for="customCheck2_<?= $tec_id ?>"><?= getStatus($row['tec_status']); ?></label>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="tec_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $tec_id ?>" value="<?= $tec_id ?>">
                                                            <label class="custom-control-label" for="customCheckDelete_<?= $tec_id ?>"></label>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <a href="<?= $apath; ?><?= $list_page; ?>?mode=update&code=<?= $tec_id ?><?= $pager; ?>" class="btn btn-sm btn-primary"><i class="fa fa-pencil-alt"></i> Edit</a>
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
                                        <?php
                                        } else {
                                        ?>
                                            <tr>
                                                <td colspan="7" class="text-center">No Record Found</td>
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