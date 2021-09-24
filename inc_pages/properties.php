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
                            <li> Properties</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- BREADCRUMB AREA END -->

<!--====== Start service-area Section ======-->

<!-- PRODUCT SLIDER AREA START -->
<div class="ltn__product-slider-area ltn__product-gutter pt-10 pb-70 plr--7">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area ltn__section-title-2--- text-center">
                    <h6 class="section-subtitle section-subtitle-2 ltn__secondary-color">Properties</h6>
                    <h1 class="section-title">All Properties Listings</h1>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- ltn__product-item -->
            <?php
            $properties_qry =  "SELECT * FROM tbl_properties  WHERE prop_status='1' ORDER BY prop_order ASC";
            $properties_exe = $conn->query($properties_qry) or die(mysqli_error($conn));
            while ($property = $properties_exe->fetch_array()) {
                if ($property['prop_type'] == 'Rent') {
                    $bg = "bg-green";
                } else {
                    $bg = "bg-green---";
                }
            ?>
                <div class="col-lg-4 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                    <?php
                    include("./inc_pages/widgets/property.php");
                    ?>
                </div>
            <?php } ?>
            <!-- ltn__product-item End -->
        </div>
    </div>
</div>
<!-- PRODUCT SLIDER AREA END -->