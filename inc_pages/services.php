<?php
$pageid = $_REQUEST['page'];
$paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
$exe = $conn->query($paging) or die(mysqli_error($conn));
$page = $exe->fetch_assoc();
?>
<!-- BREADCRUMB AREA START -->
<div class="ltn__breadcrumb-area text-left bg-overlay-white-30 bg-image " data-bs-bg="<?= $path ?>uploads/banners/<?= $page['page_image'] ?>">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="ltn__breadcrumb-inner">
                    <h1 class="page-title"><?= $page['page_title'] ?></h1>
                    <div class="ltn__breadcrumb-list">
                        <ul>
                            <li><a href="<?= $path ?>"><span class="ltn__secondary-color"><i class="fas fa-home"></i></span> Home</a></li>
                            <li> Services</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- BREADCRUMB AREA END -->

<!--====== Start service-area Section ======-->
<!-- CATEGORY AREA START -->
<div class="ltn__category-area ltn__product-gutter section-bg-1--- pt-10 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area ltn__section-title-2--- text-center">
                    <h6 class="section-subtitle section-subtitle-2 ltn__secondary-color wow animated fadeIn">Our Services</h6>
                    <h1 class="section-title wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="1s">Building Services</h1>
                </div>
            </div>
        </div>
        <div class="row ltn__category-slider-active--- slick-arrow-1 justify-content-center">
            <?php
            $services_qry =  "SELECT * FROM tbl_services  WHERE service_status='1' ORDER BY service_order ASC";
            $services_exe = $conn->query($services_qry) or die(mysqli_error($conn));
            $presrNo = '0';
            $srNo = 1;
            while ($service = $services_exe->fetch_array()) {
                if ($srNo >= 10) {
                    $presrNo = '';
                }
            ?>
                <div class="col-lg-3 col-md-4 col-sm-6 col-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                    <div class="ltn__category-item ltn__category-item-5 ltn__category-item-5-2 text-center---">
                        <a href="javascript:void(0);">
                            <span class="category-icon"><i class="<?= $service['service_icon'] ?>"></i></span>
                            <span class="category-number"><?= $presrNo ?><?= $srNo++ ?></span>
                            <span class="category-title"><?= $service['service_title'] ?></span>
                            <span class="category-brief">
                                <?= $service['service_short_desc'] ?>
                            </span>
                            <span class="category-btn d-none"><i class="flaticon-right-arrow"></i></span>
                        </a>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<!-- CATEGORY AREA END -->