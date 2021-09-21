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
                    <div class="ltn__product-item ltn__product-item-4 text-center---">
                        <div class="product-img">
                            <a href="<?= $path ?>property/<?= $property['prop_slug'] ?>"><img src="<?= $path ?>uploads/properties/<?= $property['prop_image'] ?>" alt="Property Image"></a>
                            <div class="product-badge">
                                <ul>
                                    <li class="sale-badge <?= $bg ?>">FOR <?= ucwords($property['prop_type']) ?></li>
                                </ul>
                            </div>
                            <div class="product-img-location-gallery">
                                <div class="product-img-location">
                                    <ul>
                                        <li>
                                            <a href="locations.html"><i class="flaticon-pin"></i> <?= $property['prop_location'] ?></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="product-info">

                            <h2 class="product-title"><a href="<?= $path ?>property/<?= $property['prop_slug'] ?>"><?= $property['prop_title'] ?></a></h2>
                            <div class="product-description">
                                <p><?= $property['prop_short_desc'] ?></p>
                            </div>

                        </div>

                    </div>
                </div>
            <?php } ?>
            <!-- ltn__product-item End -->
        </div>
    </div>
</div>
<!-- PRODUCT SLIDER AREA END -->