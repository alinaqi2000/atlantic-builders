<?php
$section_type = 'about';
$section = 'About Section';
if (isset($_POST['formOne'])) {
    $vals = $_POST;
    unset($vals['formOne']);

    if ($img_rs = uploadImage($_FILES["image1"], "../uploads/media/", 215)) {
        $vals['image1'] = $img_rs;
    }
    if ($img_rs = uploadImage($_FILES["image2"], "../uploads/media/", 400)) {
        $vals['image2'] = $img_rs;
    }
    if ($img_rs = uploadImage($_FILES["image3"], "../uploads/media/", 215)) {
        $vals['image3'] = $img_rs;
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
                    <h4 class="m-0"><i class="fa fa-file-alt"></i> Manage Content <i class="fa fa-chevron-right"></i> About Us Section</h4>
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
                                        
                                        <?= formText('Title', 'title', $data['title']); ?>
                                        <div class="form-group no_externel_pages">
                                            <label for="field">Section Detail</label>
                                            <textarea name="detail" id="editor1" cols="30" rows="10"><?= stripslashes($data['detail']); ?></textarea>

                                        </div>
                                        <?php formImageFile('About Image 1', 'image1', $data['image1'], '215px x 215px') ?>
                                        <?php formImageFile('About Image 2', 'image2', $data['image2'], '400px x 400px') ?>
                                        <?php formImageFile('About Image 3', 'image3', $data['image3'], '215px x 215px') ?>
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
</div>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>
    $(document).ready(function() {
        $("#editor1").summernote();
    })
</script>