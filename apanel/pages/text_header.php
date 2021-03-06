<?php
$section_type = 'header';
$section = 'Header Section';
if (isset($_POST['formOne'])) {
    $vals = $_POST;
    unset($vals['formOne']);

    $exist = getField('tbl_texts', " `txt_type` = '$section_type'  ", 'txt_id');
    if (!isset($exist) || empty($exist)) {
        saveData('tbl_texts', array('txt_type' => $section_type));
    }

    $new_vals['txt_data'] = serialize($vals);
    updateRecord("tbl_texts", $new_vals, " `txt_type` = '$section_type' ");
    $_SESSION['successMsg'] = 'Changing has been updated successfully !';
}

$rs = getTable('tbl_texts', " `txt_type` = '$section_type' ");
$data = unserialize(stripslashes($rs['txt_data']));
// pr($data);
?>

<div class="mdk-header-layout__content">
    <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
        <div class="mdk-drawer-layout__content page">
            <div class="container-fluid  page__heading-container">
                <div class="page__heading">
                    <h4 class="m-0"><i class="fa fa-file-alt"></i> Manage Content <i class="fa fa-chevron-right
"></i> Header</h4>
                </div>
            </div>

            <div class="container-fluid page__container">
                <div class="row">
                    <div class="col-md-3">

                    <?php include_once("pages/shared/text_sidebar.php"); ?>
                    </div>
                    <div class="col-md-9">
                        <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                            <input type="hidden" name="formOne" id="formOne" value="posted" />
                            <div class="card card-form">
                                <div class="row no-gutters">
                                    <div class="col-lg-10 offset-1 card-form__body card-body">
                                        <!-- <div class="card">
                                            <div class="row p-3">
                                                <div class="container col-md-10"><label for="title">Module Offline Status</label></div>
                                                <div class="container col-md-2">
                                                    <div class="custom-control custom-checkbox-toggle custom-control-inline mr-1">
                                                        <input type="checkbox" id="mod_status" name="mod_status" value="1" <?= ($data['mod_status'] == '1' ? 'checked=""' : ''); ?> class="custom-control-input">
                                                        <label class="custom-control-label" for="mod_status">Active</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> -->
                                        <!--  Header Text -->
                                        <?= formText('Header Text', 'text', $data['text']); ?>
                                        <!--  First Icon Text -->
                                        <?= formText('Icon 1 Title', 'title1', $data['title1']); ?>
                                        <?= formText('Icon 1 desc', 'desc1', $data['desc1']); ?>
                                        <!--  2nd Icon Text -->
                                        <?= formText('Icon 2 Title', 'title2', $data['title2']); ?>
                                        <?= formText('Icon 2 desc', 'desc2', $data['desc2']); ?>
                                    </div>
                                </div>
                                <div class="text-center mb-3">
                                    <hr>
                                    <!-- <button type="submit" class="btn btn-lg btn-success"><i class="fa fa-save"></i> Save</button> -->

                                    <a href="<?= $apath; ?>" class=" btn btn-default btn-lg"> <i class="fa fa-arrow-left"></i> Cancel</a> &nbsp;
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