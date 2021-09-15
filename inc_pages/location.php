<?php
$pageid = $_REQUEST['page'];
$paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
$exe = $conn->query($paging) or die(mysqli_error($conn));
$page = $exe->fetch_assoc();
?>
<style>
    h2 {
        font-size: 40px;
    }
</style>
<!--====== Start breadcrumbs-area Section ======-->
<section class="breadcrumbs-area bg_cover" style="background-image: url(<?php echo $path ?>uploads/banners/<?php echo $page['page_image'] ?>);">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="breadcrumbs-content text-center">
                    <h1><?php echo $page['page_title'] ?></h1>
                    <ul>
                        <li><a href="<?php echo $path ?>">Home</a></li>
                        <li class="active"><?php echo $page['page_meta_title'] ?></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!--====== End breadcrumbs-area Section ======-->
<!--====== Start Our Locations Section ======-->
<section id="pricing-area-page" class="pricing-area pb-40">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="section-title text-center mb-30">
                    <h2>Our Location</h2>
                </div>
            </div>
        </div>

        <div class="row justify-content-center">
            <?php
            $locqry =  "SELECT * FROM tbl_location WHERE loc_state='texas' AND loc_type='1' ORDER BY loc_order ASC";
            $locexe = $conn->query($locqry) or die(mysqli_error($conn));
            $loc = $locexe->fetch_array();
            // while ($loc = $locexe->fetch_array()) {
            ?>
            <div class="col-lg-7 col-md-8 col-sm-12">
                <div class="sidebar-widget-area">
                    <div class="widget shadow-sm widget-categories pt-4 mb-50">
                        <div class="row">
                            <div class="col-lg-7">
                                <h4 style="font-size: 26px;" class="widget-title">
                                    Texas
                                </h4>
                                <h4 class="py-2 mb-1"><?php echo $loc['loc_city'] ?></h4>
                                <hr class="m-0 mb-3">
                                <p class="mb-3"><i class="fas fa-map-marker-alt mr-2"></i><?php echo $loc['loc_address'] ?>
                                    <strong><?php echo $loc['loc_postcode'] ?></strong>
                                </p>
                                <!-- <p><strong>Post Code: </strong></p> -->
                                <p> <i class="fas fa-phone-alt mr-2"></i> <?php echo $loc['loc_phone'] ?></p>
                            </div>
                            <div class="col-lg-5">
                                <div class="row">
                                    <img style="width: 100%;" src="<?= $path ?>uploads/media/<?= $loc['loc_image'] ?>" alt="">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php
            // } 
            ?>

        </div>
    </div>
</section>
<div class="container col-12">
    <hr>
</div>
<!--====== End Our Locations Section ======-->
<!--====== Start Comming Soon Section ======-->
<!-- <section id="pricing-area-page" class="pricing-area pb-40">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="section-title text-center mb-50">
                    <h2>Comming Soon</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            $locqry =  "SELECT * FROM tbl_location WHERE  loc_type='0'";
            $locexe = $conn->query($locqry) or die(mysqli_error($conn));
            while ($loc = $locexe->fetch_array()) {
            ?>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="pricing-item">
                        <div class="title text-center">
                            <h4><?php echo $loc['loc_city'] ?></h4>
                        </div>
                        <div class="container p-3">
                            <p><?php echo $loc['loc_address'] ?></p>
                            <p>Post Code : <?php echo $loc['loc_postcode'] ?></p>

                        </div>
                    </div>
                </div>
            <?php } ?>

        </div>
    </div>
</section> -->
<!--====== End Comming Soon Section ======-->