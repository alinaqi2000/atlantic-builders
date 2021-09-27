<div class="ltn__utilize-overlay"></div>
<?php
$about_us = getTable('tbl_texts', " `txt_type` = 'about' ");
$about = unserialize(stripslashes($about_us['txt_data']));
?>
<?php
$our_facilities = getTable('tbl_texts', " `txt_type` = 'facilities' ");
$facilities = unserialize(stripslashes($our_facilities['txt_data']));
?>
<style>
    .bg-image-right-before::before {
        background-image: url("<?= $path ?>uploads/media/<?= $facilities['image'] ?>");
    }
</style>
<!-- SLIDER AREA START (slider-11) -->
<div class="ltn__slider-area ltn__slider-11  ltn__slider-11-slide-item-count-show--- ltn__slider-11-pagination-count-show--- section-bg-1">
    <div class="ltn__slider-11-inner">
        <div class="ltn__slider-11-active">

            <!-- slide-item -->
            <?php
            $slider_qry =  "SELECT * FROM tbl_slider  WHERE slider_status='1' ORDER BY slider_order ASC";
            $slider_exe = $conn->query($slider_qry) or die(mysqli_error($conn));
            while ($slider = $slider_exe->fetch_array()) {
            ?>
                <div class="ltn__slide-item ltn__slide-item-2 ltn__slide-item-3-normal ltn__slide-item-3 ltn__slide-item-11">
                    <div class="ltn__slide-item-inner">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 align-self-center">
                                    <div class="slide-item-info">
                                        <div class="slide-item-info-inner ltn__slide-animation">
                                            <!-- <div class="slide-video mb-50 d-none">
                                            <a class="ltn__video-icon-2 ltn__video-icon-2-border" href="https://www.youtube.com/embed/tlThdr3O5Qo" data-rel="lightcase:myCollection">
                                                <i class="fa fa-play"></i>
                                            </a>
                                        </div> -->
                                            <h6 class="slide-sub-title white-color--- animated"><span><i class="fas fa-home"></i></span> <?= $slider['slider_sec_title'] ?></h6>
                                            <h1 class="slide-title animated "><?= $slider['slider_title'] ?></h1>
                                            <div class="slide-brief animated">
                                                <p><?= $slider['slider_desc'] ?></p>
                                            </div>
                                            <div class="btn-wrapper animated">
                                                <a href="<?= $slider['slider_btn_link'] ?>" class="theme-btn-1 btn btn-effect-1"><?= $slider['slider_btn_text'] ?></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="slide-item-img">
                                        <img src="<?= $path ?>uploads/sliders/<?= $slider['slider_image'] ?>" alt="Slider Image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            <?php } ?>
        </div>
        <!-- slider-4-pagination -->
        <div class="ltn__slider-11-pagination-count">
            <span class="count"></span>
            <span class="total"></span>
        </div>
        <!-- slider-sticky-icon -->
        <div class="slider-sticky-icon-2">
            <ul>
                <?php if ($site_facebook) { ?>
                    <li><a href="<?= $site_facebook ?>" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                <?php } ?>
                <?php if ($site_twitter) { ?>
                    <li><a href="<?= $site_twitter ?>" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                <?php } ?>
                <?php if ($site_linkedin) { ?>
                    <li><a href="<?= $site_linkedin ?>" title="Linkedin"><i class="fab fa-linkedin"></i></a></li>
                <?php } ?>
            </ul>
        </div>
        <!-- slider-4-img-slide-arrow -->
        <div class="ltn__slider-11-img-slide-arrow">
            <div class="ltn__slider-11-img-slide-arrow-inner">
                <div class="ltn__slider-11-img-slide-arrow-active">
                    <?php
                    $slider_qry_img =  "SELECT * FROM tbl_slider  WHERE slider_status='1' ORDER BY slider_order ASC";
                    $slider_exe_img = $conn->query($slider_qry_img) or die(mysqli_error($conn));
                    while ($slider_img = $slider_exe_img->fetch_array()) {
                    ?>
                        <div class="image-slide-item">
                            <img src="<?= $path ?>uploads/sliders/<?= $slider_img['slider_image'] ?>" alt="Flower Image">
                        </div>
                    <?php } ?>

                </div>
                <!-- slider-4-slide-item-count -->
                <div class="ltn__slider-11-slide-item-count">
                    <span class="count"></span>
                    <span class="total"></span>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- SLIDER AREA END -->

<!-- ABOUT US AREA START -->
<div class="ltn__about-us-area pt-115 pb-100 ">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 align-self-center">
                <div class="about-us-img-wrap about-img-left wow animated fadeInLeft">
                    <img src="<?= $path ?>uploads/media/<?= $about['image'] ?>" alt="About Us Image">
                    <div class="about-us-img-info about-us-img-info-2 about-us-img-info-3 d-none">

                    </div>
                </div>
            </div>
            <div class="col-lg-6 align-self-center">
                <div class="about-us-info-wrap">
                    <div class="section-title-area ltn__section-title-2--- mb-30">
                        <h6 class="section-subtitle section-subtitle-2 ltn__secondary-color wow animated fadeIn"><?= $about['sec_title'] ?></h6>
                        <h1 class="section-title wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="1s"><?= $about['title'] ?></h1>
                        <p class="wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="1s"><?= $about['short_desc'] ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ABOUT US AREA END -->

<!-- FACILITIES AREA START -->
<div class="ltn__about-us-area section-bg-2 bg-image-right-before pt-120 pb-90">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 align-self-center">
                <div class="about-us-info-wrap">
                    <div class="section-title-area ltn__section-title-2--- mb-20">
                        <h6 class="section-subtitle section-subtitle-2--- ltn__secondary-color wow animated fadeIn"><?= $facilities['sec_title'] ?></h6>
                        <h1 class="section-title wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="1s"><?= $facilities['title'] ?></h1>
                        <p class="wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="1s"><?= $facilities['short_desc'] ?></p>
                    </div>
                    <ul class="ltn__list-item-half ltn__list-item-half-2 list-item-margin clearfix">
                        <li class="wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                            <i class="icon-done"></i>
                            <?= $facilities['title1'] ?>
                        </li>
                        <li class="wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                            <i class="icon-done"></i>
                            <?= $facilities['title2'] ?>
                        </li>
                        <li class="wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                            <i class="icon-done"></i>
                            <?= $facilities['title3'] ?>
                        </li>
                        <li class="wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                            <i class="icon-done"></i>
                            <?= $facilities['title4'] ?>
                        </li>
                        <li class="wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                            <i class="icon-done"></i>
                            <?= $facilities['title5'] ?>
                        </li>
                        <li class="wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                            <i class="icon-done"></i>
                            <?= $facilities['title6'] ?>
                        </li>
                    </ul>
                    <!-- <div class="  ltn__animation-pulse2 text-center mt-30">
                            <a class="ltn__video-play-btn bg-white--- ltn__secondary-bg" href="https://www.youtube.com/embed/HnbMYzdjuBs?autoplay=1&amp;showinfo=0" data-rel="lightcase">
                                <i class="icon-play  ltn__secondary-color--- white-color"></i>
                            </a>
                        </div> -->
                </div>
            </div>
            <div class="col-lg-6 align-self-center">
                <div class="about-us-img-wrap about-img-left">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- FACILITIES AREA END -->
<!-- CATEGORY AREA START -->
<div class="ltn__category-area ltn__product-gutter section-bg-1--- pt-115 pb-70">
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
                    <?php
                    include("./inc_pages/widgets/service.php");
                    ?>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<!-- CATEGORY AREA END -->
<!-- UPCOMING PROJECT AREA START -->
<div class="ltn__upcoming-project-area section-bg-1--- bg-image-top pt-115 pb-65" data-bs-bg="<?= $path ?>assets/img/bg/22.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area ltn__section-title-2--- text-center---">
                    <h6 class="section-subtitle section-subtitle-2--- ltn__secondary-color--- white-color wow animated fadeIn">Upcoming Projects</h6>
                    <h1 class="section-title  white-color wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="1s">Dream Living Space <br>
                        Setting New Standards</h1>
                </div>
            </div>
        </div>
        <div class="row ltn__upcoming-project-slider-1-active slick-arrow-3">

            <!-- upcoming-project-item -->
            <?php
            $projects_qry =  "SELECT * FROM tbl_projects  WHERE proj_status='1' ORDER BY proj_order ASC";
            $projects_exe = $conn->query($projects_qry) or die(mysqli_error($conn));
            while ($project = $projects_exe->fetch_array()) {
            ?>
                <div class="col-lg-12 wow animated zoomInUp" data-wow-duration="1s" data-wow-delay="1s">
                    <div class="ltn__upcoming-project-item">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="ltn__upcoming-project-img">
                                    <img src="<?= $path ?>uploads/projects/<?= $project['proj_image'] ?>" alt="Project Image">
                                </div>
                            </div>
                            <div class="col-lg-5 section-bg-1">
                                <div class="ltn__upcoming-project-info ltn__menu-widget">
                                    <h6 class="section-subtitle ltn__secondary-color mb-0">About Projects</h6>
                                    <h1 class="mb-30">Upcoming Projects</h1>
                                    <ul class="mt">
                                        <li>1. Project Name: <span><?= $project['proj_title'] ?></span></li>
                                        <li>2. Project Type: <span><?= $project['proj_type'] ?></span></li>
                                        <li>3. Building Location: <span><?= $project['proj_location'] ?></span></li>
                                        <li>4. No. Of Apartments: <span><?= $project['proj_apts'] ?></span></li>
                                        <li>5. Total Investment: <span><?= $project['proj_investment'] ?></span></li>
                                    </ul>
                                    <div class="btn-wrapper animated">
                                        <a href="<?= $path ?>contact" class="theme-btn-1 btn btn-effect-1">Download Brochure</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <!-- upcoming-project-item End -->

        </div>
    </div>
</div>
<!-- UPCOMING PROJECT AREA END -->
<!-- TESTIMONIAL AREA START (testimonial-7) -->
<div class="ltn__testimonial-area pt-115 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area ltn__section-title-2--- text-center">
                    <h6 class="section-subtitle section-subtitle-2 ltn__secondary-color">Our Testimonial</h6>
                    <h1 class="section-title">Clients Feedback</h1>
                </div>
            </div>
        </div>
        <div class="row ltn__testimonial-slider-5-active slick-arrow-1">
            <?php
            $testimonials_qry =  "SELECT * FROM tbl_testimonials  WHERE test_status='1' ORDER BY test_order ASC";
            $testimonials_exe = $conn->query($testimonials_qry) or die(mysqli_error($conn));
            while ($testimonial = $testimonials_exe->fetch_array()) {
            ?>
                <div class="col-lg-4 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                    <div class="ltn__testimonial-item ltn__testimonial-item-7">
                        <div class="ltn__testimoni-info">
                            <p><i class="flaticon-left-quote-1"></i>
                                <?= $testimonial['test_desc'] ?>
                            </p>
                            <div class="ltn__testimoni-info-inner">
                                <div class="ltn__testimoni-img">
                                    <img src="<?= $path ?>uploads/testimonials/<?= $testimonial['test_image'] ?>" alt="Testimonial Image">
                                </div>
                                <div class="ltn__testimoni-name-designation">
                                    <h5><?= $testimonial['test_title'] ?></h5>
                                    <label><?= $testimonial['test_portfilio'] ?></label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<!-- TESTIMONIAL AREA END -->


<!-- PRODUCT SLIDER AREA START -->
<div class="ltn__product-slider-area ltn__product-gutter pt-115 pb-90 plr--7">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area ltn__section-title-2--- text-center">
                    <h6 class="section-subtitle section-subtitle-2 ltn__secondary-color">Properties</h6>
                    <h1 class="section-title">Featured Listings</h1>
                </div>
            </div>
        </div>
        <div class="row ltn__product-slider-item-four-active-full-width slick-arrow-1">
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
                <div class="col-lg-12 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
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