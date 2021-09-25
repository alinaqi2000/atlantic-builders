<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-image"></i> Manage Agent <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>
                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">
                                    <div class="form-group">
                                        <label for="agent_name">Name</label>
                                        <input class="form-control" name="agent_name" id="agent_name" value="<?= stripslashes($data['agent_name']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="agent_portfolio">Portfolio</label>
                                        <input class="form-control" name="agent_portfolio" id="agent_portfolio" value="<?= stripslashes($data['agent_portfolio']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="agent_desc">Description</label>
                                        <textarea class="form-control" name="agent_desc" id="agent_desc" rows="3"><?= stripslashes($data['agent_desc']); ?></textarea>
                                    </div>
                                    <?php formImageFile('Image', 'agent_image', $data['agent_image'], '720px', 'agents') ?>
                                    <div class="form-group">
                                        <label for="agent_facebook">Facebook Link</label>
                                        <input class="form-control" name="agent_facebook" id="agent_facebook" value="<?= stripslashes($data['agent_facebook']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="agent_twitter">Twitter Link</label>
                                        <input class="form-control" name="agent_twitter" id="agent_twitter" value="<?= stripslashes($data['agent_twitter']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="agent_linkedin">LinkedIn Link</label>
                                        <input class="form-control" name="agent_linkedin" id="agent_linkedin" value="<?= stripslashes($data['agent_linkedin']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="agent_status">Status</label>
                                        <select name="agent_status" id="agent_status" class="form-control">
                                            <option value="1" <?= ($data['agent_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                            </option>
                                            <option value="0" <?= ($data['agent_status'] == '0' ? 'selected="selected"' : ''); ?>>
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
                            <h4 class="m-0"><i class="fa fa-image"></i> Manage Agents</h4>
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
                                            <th>Portfolio</th>
                                            <th style="width: 10%;" class="text-center">Sort</th>
                                            <th style="width: 10%;">Status</th>
                                            <th width="10%" class="text-center">Delete</th>
                                            <th style="width: 15%;" class="text-center">Action</th>
                                            <!-- <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'agent_status\']').attr('checked', this.checked);" title="Select All"> Status</th>
                        <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'agent_delete\']').attr('checked', this.checked);" title="Select All"> Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $sr = 1;
                                        $paging =  "SELECT * FROM tbl_agents ORDER BY agent_order ASC LIMIT 0, 10";
                                        $exe = $conn->query($paging) or die(mysqli_error($conn));
                                        while ($row = $exe->fetch_array()) {
                                            $agent_id = $row['agent_id'];
                                        ?>
                                            <tr>
                                                <td>
                                                    <div class="badge badge-soft-dark">#<?= $sr++ ?></div>
                                                </td>

                                                <td><img src="<?= getImageSrc("../uploads/agents/" . $row['agent_image']); ?>" class="tbl_img" /></td>

                                                <td><?= stripslashes($row['agent_name']); ?></td>

                                                <td><?= stripslashes($row['agent_portfolio']); ?></td>
                                                <td style="width:80px" class="text-center"><input id="orderid<?= $agent_id ?>" type="text" name="orderid<?= $agent_id ?>" value="<?= $row['agent_order'] ?>" class="form-control" size="3" />
                                                </td>
                                                <td>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agent_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $agent_id ?>" value="<?= $agent_id ?>">
                                                        <label class="custom-control-label" for="customCheck2_<?= $agent_id ?>"><?= getStatus($row['agent_status']); ?></label>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="agent_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $agent_id ?>" value="<?= $agent_id ?>">
                                                        <label class="custom-control-label" for="customCheckDelete_<?= $agent_id ?>"></label>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <a href="<?= $apath; ?><?= $page_uri; ?>?mode=update&code=<?= $row['agent_id'] ?><?= $pager; ?>" class="btn btn-sm btn-primary"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                    <!-- <a href="<?= $apath; ?><?= $page_uri; ?>?mode=delete&code=<?= $row['agent_id'] ?><?= $pager; ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a> -->
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