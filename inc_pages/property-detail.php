<?php
$slugUrl = $_REQUEST['slug'];
$properties_qry =  "SELECT * FROM tbl_properties  WHERE prop_status='1' AND prop_slug='$slugUrl' ORDER BY prop_order ASC";
$properties_exe = $conn->query($properties_qry) or die(mysqli_error($conn));
$single_p = $properties_exe->fetch_assoc();

$multi_img = unserialize(stripslashes($single_p['prop_multi_images']));
if ($multi_img) {
    $count_image = count($multi_img);
} else {
    $count_image = 0;
}
$expo = explode(' ', $single_p['prop_location']);
$last_word = array_pop($expo);

?>
<!--====== Start service-area Section ======-->


<!-- IMAGE SLIDER AREA START (img-slider-3) -->
<div class="ltn__img-slider-area mb-90">
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row ltn__image-slider-5-active slick-arrow-1 slick-arrow-1-inner ltn__no-gutter-all">
                <?php for ($i = 0; $i < $count_image; $i++) { ?>
                    <div class="ltn__img-slide-item-4">
                        <a href="<?= $path ?>uploads/properties/<?= $multi_img[$i] ?>" data-rel="lightcase:myCollection">
                            <img src="<?= $path ?>uploads/properties/<?= $multi_img[$i] ?>" alt="Image">
                        </a>

                    </div>
                <?php } ?>
            </div>
        </div>

    </div>
</div>
<!-- IMAGE SLIDER AREA END -->

<!-- SHOP DETAILS AREA START -->
<div class="ltn__shop-details-area pb-10">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div class="ltn__shop-details-inner ltn__page-details-inner mb-60">
                    <div class="ltn__blog-meta">
                        <ul>
                            <?php if ($single_p['prop_featured'] == '1') { ?>
                                <li class="ltn__blog-category">
                                    <a href="#">Featured</a>
                                </li>
                            <?php } ?>
                            <li class="ltn__blog-category">
                                <a class="bg-orange" href="#">FOR <?= ucwords($single_p['prop_type']) ?></a>
                            </li>
                            <li class="ltn__blog-date">
                                <i class="far fa-calendar-alt"></i>May 19, 2021
                            </li>

                        </ul>
                    </div>
                    <h1><?= $single_p['prop_title'] ?></h1>
                    <label><span class="ltn__secondary-color"><i class="flaticon-pin"></i></span> <?= $single_p['prop_location'] ?></label>
                    <h4 class="title-2">Description</h4>
                    <p><?= $single_p['prop_detail'] ?></p>



                    <div class="ltn__shop-details-tab-content-inner--- ltn__shop-details-tab-inner-2 ltn__product-details-review-inner mb-60">
                        <h4 class="title-2">Get a Quote</h4>


                        <!-- comment-reply -->
                        <div class="ltn__comment-reply-area ltn__form-box mb-30">
                            <form action="#" method="post" data-url="<?= $path . 'send-property-message' ?>" data-type="property" class="contact-form property">

                                <input type="hidden" name="property_title">
                                <div class="input-item input-item-textarea ltn__custom-icon">
                                    <textarea name="message" placeholder="Type your comments...."></textarea>
                                </div>
                                <div class="input-item input-item-name ltn__custom-icon">
                                    <input type="text" name="name" placeholder="Type your name....">
                                </div>
                                <div class="input-item input-item-email ltn__custom-icon">
                                    <input type="email" name="email" placeholder="Type your email....">
                                </div>
                                <div class="input-item input-item-website ltn__custom-icon">
                                    <input type="text" name="website" placeholder="Type your website....">
                                </div>
                                <!-- <label class="mb-0"><input type="checkbox" name="agree"> Save my name, email, and website in this browser for the next time I comment.</label> -->
                                <div class="btn-wrapper mt-4">

                                    <button class="btn theme-btn-1 btn-effect-1 text-uppercase main-btn submit" id="property-submit" type="submit">
                                        <img id="btn-loader" style="height: 25px;display:none;" src="<?= $path ?>assets/img/illustrations/btn-loader.svg" alt="Please wait...">
                                        <div class="submit-text">send message</div>

                                    </button>
                                </div>
                                <p class="form-messege mb-0 mt-20"></p>
                            </form>
                        </div>
                    </div>


                </div>

            </div>
            <div class="col-lg-4">
                <aside class="sidebar ltn__shop-sidebar ltn__right-sidebar---">

                    <!-- Popular Product Widget -->
                    <div class="widget ltn__popular-product-widget">
                        <h4 class="ltn__widget-title ltn__widget-title-border-2">Popular Properties</h4>
                        <div class="row ltn__popular-product-widget-active slick-arrow-1">

                            <!-- ltn__product-item -->
                            <?php
                            $prop_featured_qry =  "SELECT * FROM tbl_properties  WHERE prop_status='1' ORDER BY prop_order ASC";
                            $featured_exe = $conn->query($prop_featured_qry) or die(mysqli_error($conn));
                            while ($property = $featured_exe->fetch_array()) {
                                if ($property['prop_type'] == 'Rent') {
                                    $bg = "bg-green";
                                } else {
                                    $bg = "bg-green---";
                                }
                            ?>
                                <div class="col-lg-12 wow animated fadeIn" data-wow-duration="1s" data-wow-delay="1s">
                                    <?php
                                    include("./inc_pages/widgets/property.php");
                                    ?>
                                </div>
                            <?php } ?>
                            <!-- ltn__product-item End -->

                        </div>
                    </div>
                </aside>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h4 class="title-2">Related Properties</h4>
                <div class="row owl-carousel">

                    <!-- ltn__product-item -->
                    <?php
                    $rel_prop_qry =  "SELECT * FROM tbl_properties WHERE prop_status='1' AND prop_location LIKE '%$last_word%' ORDER BY prop_order ASC LIMIT 6";
                    $rel_prop_exe = $conn->query($rel_prop_qry) or die(mysqli_error($conn));
                    while ($property = $rel_prop_exe->fetch_array()) {
                        if ($property['prop_type'] == 'Rent') {
                            $bg = "bg-green";
                        } else {
                            $bg = "bg-green---";
                        }
                    ?>
                        <div class="col-lg-4 col-sm-6 col-xl-4 col-md-4 col-12 wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                            <?php
                            include("./inc_pages/widgets/property.php");
                            ?>
                        </div>

                    <?php } ?>
                    <!-- ltn__product-item End -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- SHOP DETAILS AREA END -->