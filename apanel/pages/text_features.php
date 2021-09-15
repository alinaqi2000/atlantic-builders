<?php
$section_type = 'feature';
$section = 'Features Section';
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
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<div class="mdk-header-layout__content">
    <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
        <div class="mdk-drawer-layout__content page">
            <div class="container-fluid  page__heading-container">
                <div class="page__heading">
                    <h4 class="m-0"><i class="fa fa-file-alt"></i> Manage Content <i class="fa fa-chevron-right"></i> Our Mission Section</h4>
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
                                        
                                        <?= formText('Feature Title 1', 'title1', $data['title1']); ?>
                                        <?= formText('Feature Icon 1', 'icon1', $data['icon1']); ?>
                                        <?= formTextArea('Description 1', 'desc1', $data['desc1'],3); ?>

                                        <?= formText('Feature Title 2', 'title2', $data['title2']); ?>
                                        <?= formText('Feature Icon 2', 'icon2', $data['icon2']); ?>
                                        <?= formTextArea('Description 2', 'desc2', $data['desc2'],3); ?>

                                        <?= formText('Feature Title 3', 'title3', $data['title3']); ?>
                                        <?= formText('Feature Icon 3', 'icon3', $data['icon3']); ?>
                                        <?= formTextArea('Description 3', 'desc3', $data['desc3'],3); ?>

                                        <?= formText('Feature Title 4', 'title4', $data['title4']); ?>
                                        <?= formText('Feature Icon 4', 'icon4', $data['icon4']); ?>
                                        <?= formTextArea('Description 4', 'desc4', $data['desc4'],3); ?>
                                    </div>

                                </div>
                                <div class="text-center mb-3">
                                    <hr>
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
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
    <script>
        $(document).ready(function() {
            $("#editor1").summernote();
        })
    </script>
</div>