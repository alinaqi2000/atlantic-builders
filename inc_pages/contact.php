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

<!-- CONTACT ADDRESS AREA START -->
<div class="ltn__contact-address-area mb-90">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="ltn__contact-address-item ltn__contact-address-item-3 box-shadow">
                    <div class="ltn__contact-address-icon">
                        <img src="<?= $path ?>assets/img/icons/10.png" alt="Icon Image">
                    </div>
                    <h3>Email Address</h3>
                    <p><a href="mailto:<?= $site_email ?>"><?= $site_email ?></a>
                        <br><br>
                    </p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="ltn__contact-address-item ltn__contact-address-item-3 box-shadow">
                    <div class="ltn__contact-address-icon">
                        <img src="<?= $path ?>assets/img/icons/11.png" alt="Icon Image">
                    </div>
                    <h3>Phone Number</h3>
                    <p><a href="tel:<?= $site_phone ?>"><?= $site_phone ?></a>
                        <br><br>
                    </p>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="ltn__contact-address-item ltn__contact-address-item-3 box-shadow">
                    <div class="ltn__contact-address-icon">
                        <img src="<?= $path ?>assets/img/icons/12.png" alt="Icon Image">
                    </div>
                    <h3>Office Address</h3>
                    <p><?= $site_address ?></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- CONTACT ADDRESS AREA END -->

<!-- CONTACT MESSAGE AREA START -->
<div class="ltn__contact-message-area mb-120 mb--100">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="ltn__form-box contact-form-box box-shadow white-bg">
                    <h4 class="title-2">Get A Quote</h4>
                    <form action="#" method="post" data-url="<?= $path . 'send-contact-message' ?>" data-type="contact" class="contact-form contact">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="input-item input-item-name ltn__custom-icon">
                                    <input type="text" name="fullname" class="alpha" required placeholder="Enter your name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-item input-item-email ltn__custom-icon">
                                    <input type="email" name="email" required placeholder="Enter email address">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-item">
                                    <select class="nice-select" name="subject" required>
                                        <option value="">Select Service Type</option>
                                        <option>Property Management </option>
                                        <option>Mortgage Service </option>
                                        <option>Consulting Service</option>
                                        <option>Home Buying</option>
                                        <option>Home Selling</option>
                                        <option>Escrow Services</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-item input-item-phone ltn__custom-icon">
                                    <input type="text" name="phone" class="numeric" placeholder="Enter phone number">
                                </div>
                            </div>
                        </div>
                        <div class="input-item input-item-textarea ltn__custom-icon">
                            <textarea name="message" placeholder="Enter message"></textarea>
                        </div>
                        <!-- <p><label class="input-info-save mb-0"><input type="checkbox" name="agree"> Save my name, email, and website in this browser for the next time I comment.</label></p> -->
                        <?php if ($captcha_status == '1') { ?>
                            <div class="g-recaptcha" data-sitekey="<?php echo $public_key ?>"></div>
                        <?php } ?>
                        <div class="btn-wrapper mt-4">

                            <button class="btn theme-btn-1 btn-effect-1 text-uppercase main-btn submit" id="contact-submit" type="submit">
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
</div>
<!-- CONTACT MESSAGE AREA END -->

<!-- GOOGLE MAP AREA START -->
<div class="google-map mb-120">

    <iframe src="<?php echo $site_map ?>" width="100%" height="100%" frameborder="0" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

</div>
<!-- GOOGLE MAP AREA END -->
<script src='https://www.google.com/recaptcha/api.js'></script>