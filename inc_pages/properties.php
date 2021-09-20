<?php
$pageid = $_REQUEST['page'];
$paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
$exe = $conn->query($paging) or die(mysqli_error($conn));
$page = $exe->fetch_assoc();
?>
<!-- BREADCRUMB AREA START -->
<div class="ltn__breadcrumb-area text-left bg-overlay-white-30 bg-image " data-bs-bg="<?= $path ?>assets/img/bg/14.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="ltn__breadcrumb-inner">
                    <h1 class="page-title"><?php echo $page['page_title'] ?></h1>
                    <div class="ltn__breadcrumb-list">
                        <ul>
                            <li><a href="<?php echo $path ?>"><span class="ltn__secondary-color"><i class="fas fa-home"></i></span> Home</a></li>
                            <li><?php echo $page['page_meta_title'] ?></li>
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
            <div class="col-lg-4 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__product-item ltn__product-item-4 text-center---">
                    <div class="product-img">
                        <a href="<?= $path ?>property-detail"><img src="<?= $path ?>assets/img/product-3/1.jpg" alt="#"></a>
                        <div class="product-badge">
                            <ul>
                                <li class="sale-badge bg-green">For Rent</li>
                            </ul>
                        </div>
                        <div class="product-img-location-gallery">
                            <div class="product-img-location">
                                <ul>
                                    <li>
                                        <a href="locations.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">

                        <h2 class="product-title"><a href="<?= $path ?>property-detail">New Apartment Nice View</a></h2>
                        <div class="product-description">
                            <p>Beautiful Huge 1 Family House In Heart Of <br>
                                Westbury. Newly Renovated With New Wood</p>
                        </div>

                    </div>

                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-lg-4 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__product-item ltn__product-item-4 text-center---">
                    <div class="product-img">
                        <a href="<?= $path ?>property-detail"><img src="<?= $path ?>assets/img/product-3/2.jpg" alt="#"></a>
                        <div class="product-badge">
                            <ul>
                                <li class="sale-badge bg-green---">For Sale</li>
                            </ul>
                        </div>
                        <div class="product-img-location-gallery">
                            <div class="product-img-location">
                                <ul>
                                    <li>
                                        <a href="locations.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">

                        <h2 class="product-title"><a href="<?= $path ?>property-detail">Modern Apartments</a></h2>
                        <div class="product-description">
                            <p>Beautiful Huge 1 Family House In Heart Of <br>
                                Westbury. Newly Renovated With New Wood</p>
                        </div>

                    </div>

                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-lg-4 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__product-item ltn__product-item-4 text-center---">
                    <div class="product-img">
                        <a href="<?= $path ?>property-detail"><img src="<?= $path ?>assets/img/product-3/3.jpg" alt="#"></a>
                        <div class="product-badge">
                            <ul>
                                <li class="sale-badge bg-green">For Rent</li>
                            </ul>
                        </div>
                        <div class="product-img-location-gallery">
                            <div class="product-img-location">
                                <ul>
                                    <li>
                                        <a href="locations.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">

                        <h2 class="product-title"><a href="<?= $path ?>property-detail">Comfortable Apartment</a></h2>
                        <div class="product-description">
                            <p>Beautiful Huge 1 Family House In Heart Of <br>
                                Westbury. Newly Renovated With New Wood</p>
                        </div>

                    </div>

                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-lg-4 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__product-item ltn__product-item-4 text-center---">
                    <div class="product-img">
                        <a href="<?= $path ?>property-detail"><img src="<?= $path ?>assets/img/product-3/4.jpg" alt="#"></a>
                        <div class="product-badge">
                            <ul>
                                <li class="sale-badge bg-green">For Rent</li>
                            </ul>
                        </div>
                        <div class="product-img-location-gallery">
                            <div class="product-img-location">
                                <ul>
                                    <li>
                                        <a href="locations.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">

                        <h2 class="product-title"><a href="<?= $path ?>property-detail">Luxury villa in Rego Park </a></h2>
                        <div class="product-description">
                            <p>Beautiful Huge 1 Family House In Heart Of <br>
                                Westbury. Newly Renovated With New Wood</p>
                        </div>

                    </div>

                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-lg-4 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__product-item ltn__product-item-4 text-center---">
                    <div class="product-img">
                        <a href="<?= $path ?>property-detail"><img src="<?= $path ?>assets/img/product-3/5.jpg" alt="#"></a>
                        <div class="product-badge">
                            <ul>
                                <li class="sale-badge bg-green">For Rent</li>
                            </ul>
                        </div>
                        <div class="product-img-location-gallery">
                            <div class="product-img-location">
                                <ul>
                                    <li>
                                        <a href="locations.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">

                        <h2 class="product-title"><a href="<?= $path ?>property-detail">Beautiful Flat in Manhattan </a></h2>
                        <div class="product-description">
                            <p>Beautiful Huge 1 Family House In Heart Of <br>
                                Westbury. Newly Renovated With New Wood</p>
                        </div>

                    </div>

                </div>
            </div>
            <!--  -->
        </div>
    </div>
</div>
<!-- PRODUCT SLIDER AREA END -->