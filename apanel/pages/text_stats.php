<?php
$section_type = 'stats';
$section = 'Stats Section';
if (isset($_POST['formOne'])) {
    $vals = $_POST;
    unset($vals['formOne']);
    if ($img_rs = uploadImage($_FILES["image1"], "../uploads/stats/", 600)) {
        $vals['image1'] = $img_rs;
    }
    if ($img_rs = uploadImage($_FILES["image2"], "../uploads/stats/", 600)) {
        $vals['image2'] = $img_rs;
    }
    if ($img_rs = uploadImage($_FILES["image3"], "../uploads/stats/", 600)) {
        $vals['image3'] = $img_rs;
    }

    if ($img_rs = uploadImage($_FILES["image4"], "../uploads/stats/", 600)) {
        $vals['image4'] = $img_rs;
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
<div class="mdk-header-layout__content">
    <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
        <div class="mdk-drawer-layout__content page">
            <div class="container-fluid  page__heading-container">
                <div class="page__heading">
                    <h4 class="m-0"><i class="fa fa-file-alt"></i> Manage Content <i class="fa fa-chevron-right"></i> Stats Section</h4>
                </div>
            </div>
            <div class="container-fluid page__container">
                <div class="row">
                    <div class="col-md-3">
                        <ul class="list-group">
                            <li <?= ($_REQUEST['page'] == 'text_stats') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_stats"><strong>Stats</strong></a></li>
                            <li <?= ($_REQUEST['page'] == 'text_washclub') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_washclub"><strong>Wash Club</strong></a></li>
                        </ul>
                    </div>
                    <div class="col-md-9">
                        <form action="" id="form1" method="post" class="form-horizontal" enctype="multipart/form-data">
                            <input type="hidden" name="formOne" id="formOne" value="posted" />
                            <div class="card card-form">
                                <div class="row no-gutters">
                                    <div class="col-lg-10 offset-1 card-form__body card-body">
                                        <?= formText('Stat 1 Title', 'title1', $data['title1']); ?>
                                        <?= formText('Stat 1 Count', 'count1', $data['count1']); ?>
                                    </div>
                                    <br>
                                    <hr /><br>
                                    <div class="col-lg-10 offset-1 card-form__body card-body">
                                        <?= formText('Stat 2 Title', 'title2', $data['title2']); ?>
                                        <?= formText('Stat 2 Count', 'count2', $data['count2']); ?>
                                    </div>
                                    <br>
                                    <hr /><br>
                                    <div class="col-lg-10 offset-1 card-form__body card-body">
                                        <?= formText('Stat 3 Title', 'title3', $data['title3']); ?>
                                        <?= formText('Stat 3 Count', 'count3', $data['count3']); ?>
                                    </div>
                                    <br>
                                    <hr /><br>
                                    <div class="col-lg-10 offset-1 card-form__body card-body">
                                        <?= formText('Stat 4 Title', 'title4', $data['title4']); ?>
                                        <?= formText('Stat 4 Count', 'count4', $data['count4']); ?>
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