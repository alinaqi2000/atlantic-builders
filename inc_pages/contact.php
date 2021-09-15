<?php
$pageid = $_REQUEST['page'];
$paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
$exe = $conn->query($paging) or die(mysqli_error($conn));
$page = $exe->fetch_assoc();
?>
<!--====== Start breadcrumbs-area Section ======-->
<section class="breadcrumbs-area  bg_cover" style="background-image: url(<?php echo $path ?>uploads/banners/<?php echo $page['page_image'] ?>);">
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
<!--====== Start Contact-area Section ======-->
<section class="contact-area bg_cover pt-50 pb-50" style="background-image: url(assets/images/bg/contact-bg-1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="contact-wrapper">
                    <div class="section-title mb-40">
                        <h3>Discussig With Us</h3>
                    </div>
                    <form action="#" method="post" data-url="<?= $path . 'send-contact-message' ?>" data-type="contact" class="contact-form contact">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form_group">
                                    <input type="text" class="form_control alpha" placeholder="Enter Name" name="fullname" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form_group">
                                    <input type="email" class="form_control alphanumeric" placeholder="Enter Email" name="email" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form_group">
                                    <input type="text" class="form_control alphanumeric" placeholder="Subject" name="subject" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form_group">
                                    <input type="text" class="form_control numeric" placeholder="Phone Number" name="phone_no" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form_group">
                                    <textarea class="form_control" placeholder="Message" name="message"></textarea>
                                </div>
                            </div>
                            <?php if ($captcha_status == '1') { ?>
                                <div class="g-recaptcha mb-10 ml-20" data-sitekey="<?php echo $public_key ?>"></div>
                            <?php } ?>
                            <div class="col-lg-12">
                                <div class="form_group form_button">
                                    <button type="submit" id="contact-submit" class="main-btn submit">
                                        <img id="btn-loader" style="height: 25px;display:none;" src="<?= $path ?>assets/images/illustrations/btn-loader.svg" alt="Please wait...">
                                        <span class="submit-text">Submit <i class="fa fa-chevron-right fa-icon"></i></span>
                                    </button>
                                    <!-- <button class="main-btn reset-btn">Reset</button> -->
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="contact-information">
                    <div class="box">
                        <div class="icon">
                            <i class="flaticon-maps-and-flags"></i>
                        </div>
                        <div class="info">
                            <h5>Our Office Location</h5>
                            <p> <?php echo $site_address ?></p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="icon">
                            <i class="flaticon-phone-call"></i>
                        </div>
                        <div class="info">
                            <h5>Carwash:</h5>
                            <p><a href="tel:<?php echo $site_phone ?>"> <?php echo $site_phone ?></a></p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="icon">
                            <i class="flaticon-phone-call"></i>
                        </div>
                        <div class="info">
                            <h5>Lube Centre:</h5>
                            <p><a href="tel:<?php echo $site_phone2 ?>"> <?php echo $site_phone2 ?></a></p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="icon">
                            <i class="flaticon-envelope"></i>
                        </div>
                        <div class="info">
                            <h5>Our Contact E-mail</h5>
                            <p><a href="mailto:<?php echo $site_email ?>"> <?php echo $site_email ?></a></p>
                        </div>
                    </div>
                    <div class="box">
                        <div class="social-box">
                            <ul>
                                <li><span>Follow Us:</span></li>
                                <?php if ($site_facebook) { ?>
                                    <li><a href="<?php echo $site_facebook ?>"><i class="fab fa-facebook-f"></i></a></li>
                                <?php } ?>
                                <?php if ($site_twitter) { ?>
                                    <li><a href="<?php echo $site_twitter ?>"><i class="fab fa-twitter"></i></a></li>
                                <?php } ?>
                                <?php if ($site_instagram) { ?>
                                    <li><a href="<?php echo $site_instagram ?>"><i class="fab fa-instagram"></i></a></li>
                                <?php } ?>
                                <?php if ($site_skype) { ?>
                                    <li><a href="<?php echo $site_skype ?>"><i class="fab fa-skype"></i></a></li>
                                <?php } ?>
                                <?php if ($site_pinterest) { ?>
                                    <li><a href="<?php echo $site_pinterest ?>"><i class="fab fa-pinterest-p"></i></a></li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--====== End Contact-area Section ======-->
<!--====== Start contact-map-section Section ======-->
<section class="contact-map-section">
    <div class="map-box">
        <iframe id="gmap_canvas" src="<?php echo $site_map ?>"></iframe>
    </div>
</section>
<!--====== End contact-map-section Section ======-->

<script src='https://www.google.com/recaptcha/api.js'></script>