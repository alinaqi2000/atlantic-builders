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
            <div class="col-lg-3 col-md-4 col-sm-6 col-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__category-item ltn__category-item-5 ltn__category-item-5-2 text-center---">
                    <a href="shop.html">
                        <span class="category-icon"><i class="flaticon-car"></i></span>
                        <span class="category-number">01</span>
                        <span class="category-title">Parking Space</span>
                        <span class="category-brief">
                            Enimad minim veniam quis no exercitation ullamco lab
                        </span>
                        <span class="category-btn d-none"><i class="flaticon-right-arrow"></i></span>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__category-item ltn__category-item-5 ltn__category-item-5-2 text-center---">
                    <a href="shop.html">
                        <span class="category-icon"><i class="flaticon-swimming"></i></span>
                        <span class="category-number">02</span>
                        <span class="category-title">Swimming Pool</span>
                        <span class="category-brief">
                            Enimad minim veniam quis no exercitation ullamco lab
                        </span>
                        <span class="category-btn d-none"><i class="flaticon-right-arrow"></i></span>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__category-item ltn__category-item-5 ltn__category-item-5-2 text-center---">
                    <a href="shop.html">
                        <span class="category-icon"><i class="flaticon-secure-shield"></i></span>
                        <span class="category-number">03</span>
                        <span class="category-title">Private Security</span>
                        <span class="category-brief">
                            Enimad minim veniam quis no exercitation ullamco lab
                        </span>
                        <span class="category-btn d-none"><i class="flaticon-right-arrow"></i></span>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__category-item ltn__category-item-5 ltn__category-item-5-2 text-center---">
                    <a href="shop.html">
                        <span class="category-icon"><i class="flaticon-stethoscope"></i></span>
                        <span class="category-number">04</span>
                        <span class="category-title">Medical Center</span>
                        <span class="category-brief">
                            Enimad minim veniam quis no exercitation ullamco lab
                        </span>
                        <span class="category-btn d-none"><i class="flaticon-right-arrow"></i></span>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__category-item ltn__category-item-5 ltn__category-item-5-2 text-center---">
                    <a href="shop.html">
                        <span class="category-icon"><i class="flaticon-book"></i></span>
                        <span class="category-number">05</span>
                        <span class="category-title">Library Area</span>
                        <span class="category-brief">
                            Enimad minim veniam quis no exercitation ullamco lab
                        </span>
                        <span class="category-btn d-none"><i class="flaticon-right-arrow"></i></span>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__category-item ltn__category-item-5 ltn__category-item-5-2 text-center---">
                    <a href="shop.html">
                        <span class="category-icon"><i class="flaticon-bed-1"></i></span>
                        <span class="category-number">06</span>
                        <span class="category-title">King Size Beds</span>
                        <span class="category-brief">
                            Enimad minim veniam quis no exercitation ullamco lab
                        </span>
                        <span class="category-btn d-none"><i class="flaticon-right-arrow"></i></span>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__category-item ltn__category-item-5 ltn__category-item-5-2 text-center---">
                    <a href="shop.html">
                        <span class="category-icon"><i class="flaticon-home-2"></i></span>
                        <span class="category-number">07</span>
                        <span class="category-title">Smart Homes</span>
                        <span class="category-brief">
                            Enimad minim veniam quis no exercitation ullamco lab
                        </span>
                        <span class="category-btn d-none"><i class="flaticon-right-arrow"></i></span>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__category-item ltn__category-item-5 ltn__category-item-5-2 text-center---">
                    <a href="shop.html">
                        <span class="category-icon"><i class="flaticon-slider"></i></span>
                        <span class="category-number">08</span>
                        <span class="category-title">Kid’s Playland</span>
                        <span class="category-brief">
                            Enimad minim veniam quis no exercitation ullamco lab
                        </span>
                        <span class="category-btn d-none"><i class="flaticon-right-arrow"></i></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- CATEGORY AREA END -->