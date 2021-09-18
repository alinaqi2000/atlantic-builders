<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-file-alt"></i> Content Email <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>

                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">

                                    <div class="form-group">
                                        <label for="field">Email</label>
                                        <input type="email" name="sub_email" id="sub_email" value="<?= stripslashes($data['sub_email']); ?>" required="required" class="form-control" />
                                    </div>
                                    <?php if ($_REQUEST['mode'] == 'update') { ?>
                                        <div class="form-group">
                                            <p><span><b> Date : </b></span><span><?= $data['sub_date'] ?> </span></p>
                                        </div>
                                    <?php } ?>
                                    <div class="form-group">
                                        <label for="field">Status</label>
                                        <select name="sub_status" id="sub_status" class="form-control">
                                            <option value="1" <?= ($data['sub_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                            </option>
                                            <option value="0" <?= ($data['sub_status'] == '0' ? 'selected="selected"' : ''); ?>>
                                                Inactive</option>
                                        </select>
                                    </div>


                                </div>
                            </div>
                            <div class="text-center mb-3">
                                <hr>
                                <a href="<?= $apath; ?>email" class=" btn btn-default btn-lg mr-3"> <i class="fa fa-arrow-left"></i> Cancel</a>
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
                            <h4 class="m-0"><i class="fa fa-file-alt"></i> Manage Subscribers</h4>
                        </div>
                        <a href="javascript:document.getElementById('updateForm').submit();" class="btn btn-primary ml-3" onclick="return confirm('Are you sure you want to update records?');">Update <i class="fa fa-arrow-up"></i></a>
                        <a href="<?= $apath; ?>subscribers?mode=add" class="btn btn-success ml-3">Create New <i class="fa fa-plus"></i></a>
                    </div>
                    <div class="card">
                        <form name="updateForm" id="updateForm" action="" method="post">
                            <div class="table-responsive" data-toggle="lists" data-lists-values='["js-lists-values-employee-name"]'>
                                <table class="table mb-0 thead-border-top-0 table-striped">
                                    <thead>
                                        <tr>
                                            <th style="width: 3%;" class="text-center">#ID</th>
                                            <th>Email</th>
                                            <th style="width: 10%;" class="text-center">Sort</th>
                                            <th style="width: 15%;">Status</th>
                                            <th style="width: 15%;" class="text-center">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $paging =  "SELECT * FROM tbl_subscribers LIMIT 0, 10";
                                        $exe = $conn->query($paging) or die(mysqli_error($conn));
                                        while ($row = $exe->fetch_array()) {
                                            $sub_id = $row['sub_id'];
                                        ?>
                                            <td>
                                                <div class="badge badge-soft-dark">#<?= $sub_id ?></div>
                                            </td>
                                            <!-- <td>
                                                    <div class="d-flex align-items-center">
                                                        <div class="d-flex align-items-center">
                                                            <i class="material-icons icon-16pt mr-1 text-blue">link</i>
                                                            <a href="<?= $path; ?><?= stripslashes($row['sub_email']); ?>" target="_blank"><?= stripslashes($row['sub_email']); ?></a>
                                                        </div>
                                                    </div>
                                                </td> -->
                                            <td><?= stripslashes($row['sub_email']); ?></td>

                                            <td style="width:80px" class="text-center"><input id="orderid<?= $sub_id ?>" type="text" name="orderid<?= $sub_id ?>" value="<?= $row['sub_order'] ?>" class="form-control" size="3" /></td>
                                            <td>
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" name="sub_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $sub_id ?>" value="<?= $sub_id ?>">
                                                    <label class="custom-control-label" for="customCheck2_<?= $sub_id ?>"><?= getStatus($row['sub_status']); ?></label>
                                                </div>
                                            </td>
                                            <td>
                                                <a href="<?= $apath; ?>subscribers?mode=update&code=<?= $row['sub_id'] ?><?= $pager; ?>" class="btn btn-sm btn-primary mr-1"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                <a href="<?= $apath; ?>subscribers?mode=delete&code=<?= $row['sub_id'] ?><?= $pager; ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a>
                                            </td>
                                            </tr>
                                        <?php
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