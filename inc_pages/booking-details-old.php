<?php
$pageid = $_REQUEST['page'];
$paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
$exe = $conn->query($paging) or die(mysqli_error($conn));
$page = $exe->fetch_assoc();
?>
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
<!--====== Start Cart Breadcrumb Section
<section class="blog-standard-section pt-50 pb-50">
    <div class="container">
        <div class="row">
            <div class="offset-1 col-lg-10">
                <ul class="cart_ul">
                    <li class="cart_li"><span><i id="cart_i" class="fa fa-cart-plus"></i></span><span class="cart_span">Cart</span></li>
                    <li>
                        <hr class="cart_hr">
                    </li>
                    <li class="cart_li"><span><i id="cart_i" class="fa fa-book"></i></span><span class="cart_span">Booking Details</span></li>
                    <li>
                        <hr class="cart_hr">
                    </li>
                    <li class="cart_li"><span><i id="cart_i" class="fa fa-money-check-alt"></i></span><span class="cart_span">Payment</span></li>
                </ul>
            </div>

        </div>
    </div>
</section>
End Cart Breadcrumb Section ======-->
<!--====== Start Cart Section ======-->
<!-- <section class="blog-standard-section pt-50 pb-50">
    <?php if (isset($_SESSION['successMsg']) && !empty($_SESSION['successMsg'])) { ?>
        <div class="col-lg-10 offset-1">
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>Thank You!</strong> <?php echo $_SESSION['successMsg'] ?>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </div>
    <?php } ?>
    <div class="container">
        <div class="row">
            <div class="offset-1 col-lg-10">
                <h3>Pakage</h3>
                <hr>
            </div>
            <div class="offset-1 col-lg-10">
                <table class="table table-responsive">
                    <thead class="black text-white">
                        <tr width="100%">
                            <th width="40%">Pakage Code</th>
                            <th width="55%">Pakage Name</th>
                            <!-- <th width="38%">Detail</th> 
                            <th width="40%">Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <?php
                            $pkg_code = random_int(100000, 999999);
                            $id = $_REQUEST['code'];
                            $pkgrs =  "SELECT * FROM tbl_pricing WHERE pri_id='$id'";
                            $pkgexe = $conn->query($pkgrs) or die(mysqli_error($conn));
                            $pkg = $pkgexe->fetch_assoc()
                            ?>
                            <td><?php echo $pkg_code ?></td>
                            <td><?php echo $pkg['pri_title'] ?></td>
                            <!-- <td><?php echo $pkg['pri_title'] ?></td> 
                            <td>$ <?php echo $pkg['pri_price'] ?></td>

                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-3 offset-9">
                <a href="<?php echo $path ?>booking-details?code=<?php echo $pkg['pri_id'] ?>" class="main-btn">Continue</a>
            </div>
        </div>
    </div>
</section> -->
<!--====== Start Pricing Section ======-->
<section id="pricing-area-page" class="pricing-area pb-50">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="section-title text-center mb-60">
                    <h3 class="text-center">Booking Details</h3>
                    <hr>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            $id = $_REQUEST['code'];
            $priqry =  "SELECT * FROM tbl_pricing WHERE pri_id=$id";
            $priexe = $conn->query($priqry) or die(mysqli_error($conn));
            $pri = $priexe->fetch_assoc()
            ?>
            <div class="offset-1 col-lg-4">
                <div class="pricing-item pb-10">
                    <div class="title text-center">
                        <h4><?php echo $pri['pri_title'] ?></h4>
                    </div>
                    <div class="price text-center">
                        <h2><span class="sign">$</span><?php echo $pri['pri_price'] ?><span class="small-text">99</span></h2>
                    </div>
                    <?php echo $pri['pri_features'] ?>
                    <!-- <div class="button text-center">
                            <a href="<?php echo $path ?>booking-details?code=<?php echo $pri['pri_id'] ?>" class="main-btn">Book Now</a>
                        </div> -->
                </div>
            </div>
            <div class="offset-2 col-lg-4">
                <div class="contact-wrapper">
                    <div class="section-title mb-40">
                        <h6>Please Fill The Required Data Carefully</h6>
                    </div>
                    <form action="processing" method="post">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form_group mb-4">
                                    <input type="text" class="form_control alpha" placeholder="Enter Name" name="fullname" required>
                                </div>
                            </div>
                            <?php
                            $id = $_REQUEST['code'];
                            $pkgrs =  "SELECT * FROM tbl_pricing WHERE pri_id='$id'";
                            $pkgexe = $conn->query($pkgrs) or die(mysqli_error($conn));
                            $pkg = $pkgexe->fetch_assoc()
                            ?>
                            <input type="hidden" class="form_control alpha" placeholder="Pakage Id" name="pkg_id" value="<?php echo $pkg['pri_id'] ?>">
                            <input type="hidden" class="form_control alpha" placeholder="Pakage Id" name="pkg_title" value="<?php echo $pkg['pri_title'] ?>">
                            <input type="hidden" class="form_control alpha" placeholder="Pakage Id" name="pkg_price" value="<?php echo $pkg['pri_price'] ?>">
                            <input type="hidden" class="form_control alpha" placeholder="Pakage Id" name="pkg_code" value="<?php echo $pkg_code ?>">
                            <div class="col-lg-12">
                                <div class="form_group mb-4">
                                    <input type="text" class="form_control numeric" placeholder="Phone Number" name="phone_no" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form_group mb-4">
                                    <input type="email" class="form_control alphanumeric" placeholder="Enter Email" name="email" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <!-- <div class="form_group form_button">
                                    <button name="submit1" type="submit" id="contact-submit" class="main-btn submit">
                                        <img id="btn-loader" style="height: 25px;display:none;" src="<?= $path ?>assets/images/illustrations/btn-loader.svg" alt="Please wait...">
                                        <span class="submit-text">Submit <i class="fa fa-chevron-right fa-icon"></i></span>
                                    </button>
                                    <button class="main-btn reset-btn">Reset</button>
                                </div> -->
                                <center>
                                    <button type="submit"><img class="paypal_img" width="200" src="<?php echo $path ?>assets/images/paypal.png" alt="Pay with PayPal"></button>
                                </center>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!--====== End Cart Section ======-->
<!--====== Start Booking Form Section 
<section class="blog-standard-section pb-50">
    <div class="container">
        <div class="row">
            <div class="offset-1 col-lg-10">
                <h3 class="text-center">Booking Details</h3>
                <hr>
            </div>
            <div class="col-lg-8 offset-2">
                <div class="contact-wrapper">
                    <div class="section-title mb-40">
                        <h6>Please Fill The Required Data Carefully</h6>
                    </div>
                    <form action="#" method="post" name="formOne">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form_group mb-4">
                                    <input type="text" class="form_control alpha" placeholder="Enter Name" name="fullname" required>
                                </div>
                            </div>
                            <?php
                            $id = $_REQUEST['code'];
                            $pkgrs =  "SELECT * FROM tbl_pricing WHERE pri_id='$id'";
                            $pkgexe = $conn->query($pkgrs) or die(mysqli_error($conn));
                            $pkg = $pkgexe->fetch_assoc()
                            ?>
                            <input type="hidden" class="form_control alpha" placeholder="Pakage Id" name="pkg_id" value="<?php echo $pkg['pri_id'] ?>">
                            <input type="hidden" class="form_control alpha" placeholder="Pakage Id" name="pkg_title" value="<?php echo $pkg['pri_title'] ?>">
                            <input type="hidden" class="form_control alpha" placeholder="Pakage Id" name="pkg_price" value="<?php echo $pkg['pri_price'] ?>">
                            <input type="hidden" class="form_control alpha" placeholder="Pakage Id" name="pkg_code" value="<?php echo $pkg_code ?>">
                            <div class="col-lg-6">
                                <div class="form_group mb-4">
                                    <input type="text" class="form_control numeric" placeholder="Phone Number" name="phone_no" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form_group mb-4">
                                    <input type="email" class="form_control alphanumeric" placeholder="Enter Email" name="email" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form_group mb-4 form_button">
                                    <button name="submit1" type="submit" class="main-btn">CHECKOUT</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
 End Booking Form Section ======-->