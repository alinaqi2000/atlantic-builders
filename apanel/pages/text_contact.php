<?php
$section_type = 'contact';
$section = 'Contact Section';
if (isset($_POST['formOne'])) {
    $vals = $_POST;
    unset($vals['formOne']);
    if ($img_rs = uploadImage($_FILES["image"], "../uploads/media/", 600)) {
        $vals['image'] = $img_rs;
    }


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
                    <h4 class="m-0"><i class="fa fa-file-alt"></i> Manage Content <i class="fa fa-chevron-right"></i> Contact Us Section</h4>
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
                                        <div class="card">
                                            <div class="row p-3">
                                                <div class="container col-md-10"><label for="title">Module Offline Status</label></div>
                                                <div class="container col-md-2">
                                                    <div class="custom-control custom-checkbox-toggle custom-control-inline mr-1">
                                                        <input type="checkbox" id="mod_status" name="mod_status" value="1" <?= ($data['mod_status'] == '1' ? 'checked=""' : ''); ?> class="custom-control-input">
                                                        <label class="custom-control-label" for="mod_status">Active</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <?= formText('Contact Title', 'title', $data['title']); ?>
                                        <div class="form-group no_externel_pages">
                                            <label for="field">Section Details</label>
                                            <textarea name="detail" id="editor1" cols="30" rows="10"><?= stripslashes($data['detail']); ?></textarea>

                                        </div>
                                        <?php formImageFile('Contact Image', 'image', $data['image'], '600px x 450px') ?>
                                        <?= formText('Working Time', 'duration', $data['duration']); ?>
                                        <?= formText('Button Text', 'text', $data['text']); ?>
                                        <?= formText('Button Link', 'link', $data['link']); ?>

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