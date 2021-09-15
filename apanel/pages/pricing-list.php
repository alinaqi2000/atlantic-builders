<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
    $list = getPakageCategoriesString($data['pri_id']);
?>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="assets/calender/fonts/icomoon/style.css">

    <link rel="stylesheet" href="assets/calender/css/rome.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/calender/css/bootstrap.min.css">

    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Style for Multi Selector -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.css" />

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">

    <!-- JQUERY -->
    <script src="assets/calender/js/jquery-3.3.1.min.js"></script>

    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-image"></i> Manage Pakage <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>
                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">
                                    <div class="form-group">
                                        <label for="selectmulti">Pakage Type</label>

                                        <select id="selectmulti" name="type_id[]" class="selectpicker" multiple data-live-search="true">
                                            <?php
                                            $qry = "SELECT * FROM tbl_pri_types";
                                            $exe = $conn->query($qry) or die('mysql error');
                                            while ($row = $exe->fetch_array()) {
                                                $type_id = $row['type_id'];
                                                $type_title = $row['type_title'];
                                                $selected = FALSE;
                                                $list_arr = explode(", ", $list);
                                                if (in_array($row['type_title'], $list_arr))
                                                    $selected = TRUE;
                                            ?>
                                                <option <?= $selected ? 'selected="selected"' : "" ?> value="<?php echo $type_id; ?>"><?php echo $type_title ?></option>

                                            <?php } ?>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="field">Title</label>
                                        <input class="form-control" name="pri_title" id="pri_title" value="<?= stripslashes($data['pri_title']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="field">Price</label>
                                        <input class="form-control" name="pri_price" id="pri_price" value="<?= stripslashes($data['pri_price']); ?>">
                                    </div>
                                    <div class="form-group no_externel_pages">
                                        <label for="field">Pricing Features
                                            <br>
                                            <br>
                                            <span style="font-size: 12px;">1. Must be comma(,) separated.</span>  <br>
                                            <span style="font-size: 12px;">2. User hash(#) to make the feature prominent.</span>
                                        </label>
                                        <textarea name="pri_features" class="form-control" cols="30" rows="10"><?= stripslashes($data['pri_features']); ?></textarea>

                                    </div>

                                    <div class="form-group">
                                        <label for="field">Status</label>
                                        <select name="pri_status" id="pri_status" class="form-control">
                                            <option value="1" <?= ($data['pri_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                            </option>
                                            <option value="0" <?= ($data['pri_status'] == '0' ? 'selected="selected"' : ''); ?>>
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

    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#editor1").summernote();
        })
    </script>
<?php } else {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid page__container">
                    <div class="page__heading d-flex align-items-center">
                        <div class="flex">
                            <h4 class="m-0"><i class="fa fa-image"></i> Manage Pakages</h4>
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
                                            <th style="width: 15%;">Title</th>
                                            <th>Type</th>
                                            <th>Price</th>
                                            <th style="width: 10%;" class="text-center">Sort</th>
                                            <th style="width: 10%;">Status</th>
                                            <th width="10%" class="text-center">Delete</th>
                                            <th style="width: 15%;" class="text-center">Action</th>
                                            <!-- <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'pri_status\']').attr('checked', this.checked);" title="Select All"> Status</th>
                        <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'pri_delete\']').attr('checked', this.checked);" title="Select All"> Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $sr = 1;
                                        $paging = getPaging('tbl_pricing', "WHERE 1 ORDER BY pri_order ASC", 20, $_REQUEST['page'], '?', $_GET['pager']);
                                        $pagination = $paging[1];
                                        if ($rlist_pages = getList($paging[0])) {
                                            while ($row = fetch($rlist_pages)) {
                                                $pri_id = $row['pri_id'];
                                        ?>
                                                <tr>
                                                    <td>
                                                        <div class="badge badge-soft-dark">#<?= $sr++ ?></div>
                                                    </td>
                                                    <td><?= stripslashes($row['pri_title']); ?></td>
                                                    <td><?= getPakageCategoriesString($row['pri_id']) ?></td>
                                                    <td><?= stripslashes($row['pri_price']); ?></td>
                                                    <td style="width:80px" class="text-center"><input id="orderid<?= $pri_id ?>" type="text" name="orderid<?= $pri_id ?>" value="<?= $row['pri_order'] ?>" class="form-control" size="3" />
                                                    </td>
                                                    <td>
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="pri_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $pri_id ?>" value="<?= $pri_id ?>">
                                                            <label class="custom-control-label" for="customCheck2_<?= $pri_id ?>"><?= getStatus($row['pri_status']); ?></label>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <div class="custom-control custom-checkbox">
                                                            <input type="checkbox" name="pri_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $pri_id ?>" value="<?= $pri_id ?>">
                                                            <label class="custom-control-label" for="customCheckDelete_<?= $pri_id ?>"></label>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <a href="<?= $apath; ?><?= $page_uri; ?>?mode=update&code=<?php echo $row['pri_id'] ?>" class="btn btn-sm btn-primary"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                        <!-- <a href="<?= $apath; ?><?= $page_uri; ?>?mode=delete&code=<?= $row['pri_id'] ?><?= $pager; ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a> -->
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

<script src="assets/calender/js/popper.min.js"></script>
<script src="assets/calender/js/bootstrap.min.js"></script>
<script src="assets/calender/js/rome.js"></script>

<script src="assets/calender/js/main.js"></script>