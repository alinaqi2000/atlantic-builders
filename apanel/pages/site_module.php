<?php
if (isset($_POST['formOne'])) {
    $vals = $_POST;

    unset($vals['formOne']);
    if ($_REQUEST['mode'] == 'add') {

        saveRecord("tbl_module", $vals);

        $_SESSION['successMsg'] = "Module has been saved successfully !";
    } else {
        $q1 =  "SELECT * FROM tbl_module";
        $exe1 = $conn->query($q1) or die(mysqli_error($conn));
        while ($rsv = $exe1->fetch_array()) {
            $id = $rsv['mod_id'];
            $new_vals['mod_title'] = $rsv['mod_title'];
            if ($vals['mod_status' . $id] == '1') {
                $new_vals['mod_status'] = $vals['mod_status' . $id];
            } else {
                $new_vals['mod_status'] = '0';
            }

            updateRecord("tbl_module", $new_vals, " `mod_id`=  " . $id);
        }

        $_SESSION['successMsg'] = 'Changing has been updated successfully !';
    }
}


?>
<?php
if ($_REQUEST['mode'] == 'add') {
?>
    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">


                <div class="container-fluid  page__heading-container">
                    <div class="page__heading">
                        <div class="row">
                            <div class="col"><?= showMsg(); ?></div>
                        </div>
                        <!-- <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0">
                            <li class="breadcrumb-item"><a href="#"><i class="material-icons icon-20pt">home</i></a></li>
                            <li class="breadcrumb-item active" aria-current="page">Account</li>
                        </ol>
                    </nav> -->
                        <h4 class="m-0"><i class="fa fa-cog"></i> Site Module</h4>
                    </div>
                </div>

                <div class="container-fluid page__container">
                    <div class="row">
                        <div class="col-md-3">

                            <?php include_once("pages/shared/settings_sidebar.php"); ?>
                        </div>

                        <div class="col-md-9">
                            <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                                <input type="hidden" name="formOne" id="formOne" value="posted" />
                                <div class="card card-form">
                                    <div class="row no-gutters">
                                        <div class="col-lg-10 offset-1 card-form__body card-body">

                                            <?= formText('Module Title', 'mod_title', $data['mod_title']); ?>
                                            <div class="card">
                                                <div class="form-group">
                                                    <div class="flex">
                                                        <label for="subscribe">Module Offline Status</label><br>
                                                        <div class="custom-control custom-checkbox-toggle custom-control-inline mr-1">
                                                            <input type="checkbox" id="mod_status" name="mod_status" value="1" <?= ($data['mod_status'] == '1' ? 'checked=""' : ''); ?> class="custom-control-input">
                                                            <label class="custom-control-label" for="mod_status">Active</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>



                                    <div class="text-center mb-3">
                                        <hr>
                                        <!-- <button type="submit" class="btn btn-lg btn-success"><i class="fa fa-save"></i> Save</button> -->

                                        <a href="<?= $apath; ?>site_module" class=" btn btn-default btn-lg"> <i class="fa fa-arrow-left"></i> Cancel</a> &nbsp;
                                        <button type="submit" class=" btn btn-primary btn-lg"> <i class="fa fa-save"></i> Save</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <?php include_once("pages/shared/sidebar.php"); ?>
        </div>
    </div>


<?php } else { ?>


    <div class="mdk-header-layout__content">
        <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page">
                <div class="container-fluid  page__heading-container">

                    <div class="page__heading">
                        <div class="row">
                            <div class="col"><?= showMsg(); ?></div>
                        </div>
                        <!-- <nav aria-label="breadcrumb">
                        <ol class="breadcrumb mb-0">
                            <li class="breadcrumb-item"><a href="#"><i class="material-icons icon-20pt">home</i></a></li>
                            <li class="breadcrumb-item active" aria-current="page">Account</li>
                        </ol>
                    </nav> -->
                        <h4 class="m-0"><i class="fa fa-cog"></i> Site Modules</h4>
                    </div>
                </div>

                <div class="container-fluid page__container">
                    <div class="row">
                        <div class="col-md-3">

                            <?php include_once("pages/shared/settings_sidebar.php"); ?>
                        </div>

                        <div class="col-md-9">
                            <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                                <input type="hidden" name="formOne" id="formOne" value="posted" />
                                <div class="card card-form">
                                    <div class="row no-gutters">
                                        <div class="col-lg-7 offset-1 card-form__body card-body">
                                            <?php
                                            $mod_qry =  "SELECT * FROM tbl_module";
                                            $exe = $conn->query($mod_qry) or die(mysqli_error($conn));
                                            while ($row = $exe->fetch_array()) {
                                                $mod_id = $row['mod_id'];
                                            ?>
                                                <div class="card">
                                                    <div class="row p-3">
                                                        <div class="container col-md-10"><label for="title"><?php echo $row['mod_title'] ?></label></div>
                                                        <div class="container col-md-2">
                                                            <div class="custom-control custom-checkbox-toggle custom-control-inline mr-1">
                                                                <input type="checkbox" id="mod_status<?php echo $mod_id ?>" name="<?php echo 'mod_status' . $mod_id ?>" value="1" <?= ($row['mod_status'] == '1' ? 'checked=""' : ''); ?> class="custom-control-input">
                                                                <label class="custom-control-label" for="mod_status<?php echo $mod_id ?>">Active</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php } ?>

                                        </div>
                                    </div>



                                    <div class="text-center mb-3">
                                        <hr>
                                        <!-- <button type="submit" class="btn btn-lg btn-success"><i class="fa fa-save"></i> Save</button> -->

                                        <a href="<?= $apath; ?>site_module?mode=add" class="btn btn-success ml-3">Create New <i class="fa fa-plus"></i></a>
                                        <button type="submit" class=" btn btn-primary btn-lg"> <i class="fa fa-save"></i> Update</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <?php include_once("pages/shared/sidebar.php"); ?>
        </div>
    </div>
<?php } ?>