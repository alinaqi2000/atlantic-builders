<?php
if ($_REQUEST['mode'] == 'update' || $_REQUEST['mode'] == 'add') {
    $list = getPortfolioCategoriesString($_REQUEST['code']);
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

    <!-- <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet"> -->

    <!-- JQUERY -->
    <script src="assets/calender/js/jquery-3.3.1.min.js"></script>

    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <h4 class="m-0"><i class="fa fa-image"></i> Manage PortFolio <i class="fa fa-chevron-right
"></i> Create / Update</h4>
                    </div>
                </div>
                <div class="container-fluid page__container">
                    <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                        <div class="card card-form">
                            <div class="row no-gutters">
                                <div class="col-lg-10 offset-1 card-form__body card-body">
                                    <!-- <div class="form-group">
                                        <label for="field">Title</label>
                                        <input class="form-control" name="portfolio_title" id="portfolio_title" value="<?= stripslashes($data['portfolio_title']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="field">Clint Name</label>
                                        <input class="form-control" name="portfolio_client_name" id="portfolio_client_name" value="<?= stripslashes($data['portfolio_client_name']); ?>">
                                    </div>
                                    <div class="form-group">
                                        <label for="field">Project Detail</label>
                                        <textarea class="form-control" name="portfolio_detail" id="portfolio_detail"><?php echo stripslashes($data['portfolio_detail']); ?></textarea>
                                    </div>
                                    <div class="form-group">
                                        <div class="text-left">
                                            <div class="row justify-content-center">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="input_from">Select Date</label>
                                                        <input value="<?php echo $data['portfolio_project_date'] ?>" name="portfolio_project_date" id="portfolio_project_date" type="text" class="form-control">
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div> -->

                                    <div class="form-group">
                                        <label for="selectmulti">Categories</label>

                                        <select id="selectmulti" name="cat_id[]" class="selectpicker" multiple data-live-search="true">
                                            <?php
                                            $qry = "SELECT * FROM tbl_categories";
                                            $exe = $conn->query($qry) or die('mysql error');
                                            while ($row = $exe->fetch_array()) {
                                                $cat_id = $row['cat_id'];
                                                $cat_title = $row['cat_title'];
                                                $selected = FALSE;
                                                $list_arr = explode(", ", $list);
                                                if (in_array($row['cat_title'], $list_arr))
                                                    $selected = TRUE;
                                            ?>
                                                <option <?= $selected ? 'selected="selected"' : "" ?> value="<?php echo $cat_id; ?>"><?php echo $cat_title ?></option>

                                            <?php } ?>
                                        </select>
                                    </div>
                                    <?php formImageFile('Project Image', 'portfolio_image', $data['portfolio_image'],'405px X 305px', 'gallery') ?>
<!-- 
                                    <div class="form-group no_externel_pages">
                                        <label for="field">Project Features</label>
                                        <textarea name="portfolio_features" id="editor1" cols="30" rows="10"><?= stripslashes($data['portfolio_features']); ?></textarea>

                                    </div>
                                    <div class="form-group">
                                        <label for="field">Project Status</label>
                                        <select name="portfolio_project_status" id="portfolio_project_status" class="form-control">
                                            <option value="1" <?= ($data['portfolio_project_status'] == '1' ? 'selected="selected"' : ''); ?>>Complete
                                            </option>
                                            <option value="0" <?= ($data['portfolio_project_status'] == '0' ? 'selected="selected"' : ''); ?>>
                                                In Process</option>
                                            <option value="2" <?= ($data['portfolio_project_status'] == '2' ? 'selected="selected"' : ''); ?>>
                                                Upcomming</option>
                                        </select>
                                    </div> -->
                                    <div class="form-group">
                                        <label for="field">Status</label>
                                        <select name="portfolio_status" id="portfolio_status" class="form-control">
                                            <option value="1" <?= ($data['portfolio_status'] == '1' ? 'selected="selected"' : ''); ?>>Active
                                            </option>
                                            <option value="0" <?= ($data['portfolio_status'] == '0' ? 'selected="selected"' : ''); ?>>
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

    <!-- <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#editor1").summernote();
        })
    </script> -->
<?php } else {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid page__container">
                    <div class="page__heading d-flex align-items-center">
                        <div class="flex">
                            <h4 class="m-0"><i class="fa fa-image"></i> Manage PortFolio</h4>
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
                                            <!-- <th>Title</th> -->
                                            <th>Categories</th>
                                            <th style="width: 10%;" class="text-center">Sort</th>
                                            <th style="width: 10%;">Status</th>
                                            <th width="10%" class="text-center">Delete</th>
                                            <th style="width: 15%;" class="text-center">Action</th>
                                            <!-- <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'portfolio_status\']').attr('checked', this.checked);" title="Select All"> Status</th>
                        <th width="10%" class="text-center"><input type="checkbox" onclick="$('input[name*=\'portfolio_delete\']').attr('checked', this.checked);" title="Select All"> Delete</th> -->
                                        </tr>
                                    </thead>
                                    <tbody class="list" id="listingTable">
                                        <?php
                                        $sr=1;
                                        $paging = getPaging('tbl_portfolio', "WHERE 1 ORDER BY portfolio_order ASC", 20, $_REQUEST['page'], '?', $_GET['pager']);
                                        $pagination = $paging[1];
                                        if ($rlist_pages = getList($paging[0])) {
                                            while ($row = fetch($rlist_pages)) {
                                            $portfolio_id = $row['portfolio_id'];
                                        ?>
                                            <tr>
                                                <td>
                                                    <div class="badge badge-soft-dark">#<?= $sr++ ?></div>
                                                </td>
                                                <td><img src="<?= getImageSrc("../uploads/gallery/" . $row['portfolio_image']); ?>" class="tbl_img" /></td>
                                                <!-- <td>
                            <div class="d-flex align-items-center">
                                <div class="d-flex align-items-center">
                                    <i class="material-icons icon-16pt mr-1 text-blue">link</i>
                                    <a href="<?= $path; ?><?= stripslashes($row['service_name']); ?>" target="_blank"><?= stripslashes($row['portfolio_title']); ?></a>
                                </div>
                            </div>
                        </td> -->
                                                <td><?= getPortfolioCategoriesString($row['portfolio_id']) ?></td>
                                                <td style="width:80px" class="text-center"><input id="orderid<?= $portfolio_id ?>" type="text" name="orderid<?= $portfolio_id ?>" value="<?= $row['portfolio_order'] ?>" class="form-control" size="3" />
                                                </td>
                                                <td>
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="portfolio_status[]" class="custom-control-input js-check-selected-row" id="customCheck2_<?= $portfolio_id ?>" value="<?= $portfolio_id ?>">
                                                        <label class="custom-control-label" for="customCheck2_<?= $portfolio_id ?>"><?= getStatus($row['portfolio_status']); ?></label>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" name="portfolio_delete[]" class="custom-control-input js-check-selected-row" id="customCheckDelete_<?= $portfolio_id ?>" value="<?= $portfolio_id ?>">
                                                        <label class="custom-control-label" for="customCheckDelete_<?= $portfolio_id ?>"></label>
                                                    </div>
                                                </td>
                                                <td class="text-center">
                                                    <a href="<?= $apath; ?><?= $page_uri; ?>?mode=update&code=<?php echo $row['portfolio_id'] ?>" class="btn btn-sm btn-primary"><i class="fa fa-pencil-alt"></i> Edit</a>
                                                    <!-- <a href="<?= $apath; ?><?= $page_uri; ?>?mode=delete&code=<?= $row['portfolio_id'] ?><?= $pager; ?>" class="btn btn-sm btn-danger " onclick="return confirm('Are you sure you want to delete this page?');"><i class="fa fa-trash"></i> Delete</a> -->
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