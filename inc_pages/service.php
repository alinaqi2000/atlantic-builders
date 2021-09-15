<?php if ($_REQUEST['mode'] == 'detail') { ?>
    <?php $pageid = $_REQUEST['page'];
    $paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
    $exe = $conn->query($paging) or die(mysqli_error($conn));
    $page = $exe->fetch_array();
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
    <!--====== Start service-details-section Section ======-->
    <?php
    $id = $_REQUEST['code'];
    $pagingsingle =  "SELECT * FROM tbl_services WHERE service_id=$id";
    $exesingle = $conn->query($pagingsingle) or die(mysqli_error($conn));
    $single = $exesingle->fetch_assoc();
    ?>
    <section class="service-details-section pt-50 pb-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="service-details-wrapper">
                        <!-- <div class="title">
                            <h3><?php echo $single['service_title'] ?></h3>
                        </div> -->
                        <div class="content-box">

                            <i class="<?php echo $single['service_icon'] ?>"></i>
                            <h4><?php echo $single['service_title'] ?></h4>
                            <P><?php echo $single['service_short_desc'] ?></P>
                        </div>
                        <img src="<?php echo $path ?>uploads/services/<?php echo $single['service_image'] ?>" class="img-fluid" alt="Service Image">
                        <?php echo $single['service_detail_desc'] ?>
                        <!-- <h6>Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet consectetur et adipisicing Lorem ipsum dolor sit amet  consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</h6>
                            <div class="row">
                                <div class="col-lg-6">
                                    <ul class="check_list mb-25">
                                        <li>We offer multiple services at a great value</li>
                                        <li>Multiple car wash locations throughout Portland</li>
                                        <li>We are very open and easy to reach company</li>
                                        <li>Multiple car wash locations throughout Portland</li>
                                    </ul>
                                </div>
                                <div class="col-lg-6">
                                    <ul class="check_list mb-25">
                                        <li>You can pay online for your appointment</li>
                                        <li>Book an appointment online under 3 minutes</li>
                                        <li>Pay for your wash electronically and securely</li>
                                        <li>Book an appointment online under 3 minutes</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="block-box-one mb-50">
                                        <h5>EXTERIOR HAND WASH</h5>
                                        <ul class="list-dot">
                                            <li>You can pay online for your appointment</li>
                                            <li>Book an appointment online minutes</li>
                                            <li>Pay for your wash electronically securely</li>
                                            <li>Book an appointment under 3 minutes</li>
                                            <li>You can online your appointment</li>
                                        </ul>
                                    </div>
                                </div> 
                        <div class="col-lg-6">
                            <div class="block-box-two mb-50">
                                <h5>All Car Wash Service</h5>
                                <ul class="list">
                                    <li><a href="#">Exterior Hand Wash <span>$25.85</span></a></li>
                                    <li><a href="#">Towel Hand Dry <span>$63.30</span></a></li>
                                    <li><a href="#">Wheel Shine <span>$63.30</span></a></li>
                                    <li><a href="#">Windows In & Out <span>$80.29</span></a></li>
                                    <li><a href="#">Exterior Hand Wash <span>$22.60</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>-->
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="sidebar-widget-area">
                        <div class="widget service-widget mb-40">
                            <h4 class="title">All Service <span class="float-right"><i class="fas fa-angle-down"></i></span></h4>
                            <ul class="list">
                                <?php
                                $paging1 =  "SELECT * FROM tbl_services WHERE service_status='1'";
                                $exe1 = $conn->query($paging1) or die(mysqli_error($conn));
                                while ($row1 = $exe1->fetch_array()) {
                                ?>
                                    <li><a href="<?= $path ?>service?mode=detail&code=<?php echo $row1['service_id'] ?>"><?php echo $row1['service_title'] ?></a></li>
                                <?php } ?>
                                <!-- <li><a href="#">Towel Hand Dry</a></li>
                            <li><a href="#">Windows In & Out</a></li>
                            <li><a href="#">Simple Hand Wash</a></li>
                            <li><a href="#">Wheel Shine</a></li> -->
                            </ul>
                        </div>
                        <div class="widget cta-widget">
                            <form action="#" method="post" data-url="<?= $path . 'send-quote' ?>" data-type="contact" class="contact-form contact">
                                <h3>Request A Call Back</h3>
                                <p>consectetur adipisicing tempor incididunt adipisicing.</p>
                                <div class="form_group">
                                    <label>Your Name</label>
                                    <input type="text" placeholder="Enter Name" class="form_control alpha" name="name">
                                </div>
                                <div class="form_group">
                                    <label>Phone Number</label>
                                    <input type="text" placeholder="Phone Number" class="form_control numeric" name="phone">
                                </div>
                                <div class="form_group">
                                    <label>Email Address</label>
                                    <input type="email" placeholder="example@gmail.com" class="form_control alphanumeric" name="email">
                                </div>
                                <!--<div class="form_group">-->
                                <!--    <label>Choose Service</label>-->
                                <!--    <input type="text" class="form_control" name="service">-->
                                <!--</div>-->
                                <div class="form_group form_button">
                                    <button type="submit" id="contact-submit" class="main-btn submit">
                                        <img id="btn-loader" style="height: 25px;display:none;" src="<?= $path ?>assets/images/illustrations/btn-loader.svg" alt="Please wait...">
                                        <span class="submit-text">Send Request <i class="fa fa-chevron-right fa-icon"></i></span>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--====== End service-details-section Section ======-->
<?php } else { ?>
    <?php
    $pageid = $_REQUEST['page'];
    $paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
    $exe = $conn->query($paging) or die(mysqli_error($conn));
    $page = $exe->fetch_array();
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
    <!--====== Start service-area Section ======-->
    <?php
    $servicers = getTable('tbl_texts', " `txt_type` = 'service' ");
    $service = unserialize(stripslashes($servicers['txt_data'])); ?>
    <section class="service-area service-area-v2 pt-110">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="section-title text-center mb-60">
                        <span class="span"><?php echo $service['sec_title'] ?></span>
                        <h2><?php echo $service['title'] ?></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php
                $paging =  "SELECT * FROM tbl_services  WHERE service_status='1'";
                $exe = $conn->query($paging) or die(mysqli_error($conn));
                while ($row = $exe->fetch_array()) {
                ?>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <a href="<?= $path ?>service?mode=detail&code=<?php echo $row['service_id'] ?>">
                            <div class="service-item mb-50">
                                <div class="icon">
                                    <i class="<?php echo $row['service_icon'] ?>"></i>
                                </div>
                                <div class="info">
                                    <h4><?php echo $row['service_title'] ?></h4>
                                    <p><?php echo $row['service_short_desc'] ?></p>
                                </div>
                            </div>
                        </a>
                    </div>
                <?php } ?>
                <!-- <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="service-item mb-50">
                    <div class="icon">
                        <i class="flaticon-car-service"></i>
                    </div>
                    <div class="info">
                        <h4>Cloth Wash</h4>
                        <p>consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="service-item mb-50">
                    <div class="icon">
                        <i class="flaticon-car-wash-1"></i>
                    </div>
                    <div class="info">
                        <h4>Free Service</h4>
                        <p>consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="service-item mb-50">
                    <div class="icon">
                        <i class="flaticon-car-service-1"></i>
                    </div>
                    <div class="info">
                        <h4>Express Extarior</h4>
                        <p>consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="service-item mb-50">
                    <div class="icon">
                        <i class="flaticon-vehicle"></i>
                    </div>
                    <div class="info">
                        <h4>Cloth Wash</h4>
                        <p>consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="service-item mb-50">
                    <div class="icon">
                        <i class="flaticon-polisher"></i>
                    </div>
                    <div class="info">
                        <h4>Free Service</h4>
                        <p>consectetur adipisicing elit eiusmod tempor tempor elit incididunt ut labore.</p>
                    </div>
                </div>
            </div> -->
            </div>
        </div>
    </section>
    <!--====== End service-area Section ======-->
    <!--====== Start why-choos-area Section 
<section class="why-choose-area pt-110 pb-120">
    <div class="choose-bg bg_cover" style="background-image: url(assets/images/service/choose-bg.jpg);"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="choose-content-box">
                    <div class="section-title section-white-title mb-20">
                        <span class="span">We Care Your Car</span>
                        <h2>Why Choose Us</h2>
                    </div>
                    <p>Sed perspiciatis unde atus voluptatem accusantium architecto dolorem que udantium totam rem aperiam eaque ipsa quae inventore veritatis et quasi architecto beatae dicta sunt explicabo aperiam eaque veritatis.</p>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="check_list">
                                <li>wash et dolore magna aliqua.</li>
                                <li>Soft - free rinse dolore magna.</li>
                                <li>wash et dolore magna aliqua.</li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="check_list">
                                <li>Rain shilde dolore magna aliqua.</li>
                                <li>Hand Wash magna aliqua.</li>
                                <li>Rain dol magna aliqua.</li>
                            </ul>
                        </div>
                    </div>
                    <a href="#" class="main-btn">Book Apointment</a>
                </div>
            </div>
        </div>
    </div>
</section>
 End why-choos-area Section ======-->
    <!--====== Start car-washing-section Section 
<section class="car-washing-section pb-110 bg_cover" style="background-image: url(assets/images/bg/map-bg-1.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="washing-img-box">
                    <img src="assets/images/service/car-wash-1.png" alt="">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="washing-content-box">
                    <div class="section-title mb-45">
                        <span class="span">Location</span>
                        <h2>Car Washing Point</h2>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="washing-location">
                                <i class="fas fa-map-marker-alt"></i>
                                <h6>Car Washing Point</h6>
                                <p>20 Main Road, D - Block 2nd Flor, 9690 New York</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="washing-location">
                                <i class="fas fa-map-marker-alt"></i>
                                <h6>Car Washing Point</h6>
                                <p>20 Main Road, D - Block 2nd Flor, 9690 New York</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="washing-location">
                                <i class="fas fa-map-marker-alt"></i>
                                <h6>Car Washing Point</h6>
                                <p>20 Main Road, D - Block 2nd Flor, 9690 New York</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="washing-location">
                                <i class="fas fa-map-marker-alt"></i>
                                <h6>Car Washing Point</h6>
                                <p>20 Main Road, D - Block 2nd Flor, 9690 New York</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
 End car-washing-section Section ======-->
<?php } ?>