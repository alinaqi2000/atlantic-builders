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
                            <li> About</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- BREADCRUMB AREA END -->

<!-- ABOUT US AREA START -->
<div class="ltn__about-us-area pt-120--- pb-90 mt--30">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 align-self-center">
                <div class="about-us-img-wrap about-img-left wow animated fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
                    <img src="<?= $path ?>assets/img/others/16.jpg" alt="About Us Image">
                </div>
            </div>
            <div class="col-lg-6 align-self-center">
                <div class="about-us-info-wrap">
                    <div class="section-title-area ltn__section-title-2--- mb-20">
                        <h6 class="section-subtitle section-subtitle-2 ltn__secondary-color wow animated fadeIn" data-wow-duration="1s" data-wow-delay="1s">About Us</h6>
                        <h1 class="section-title wow animated fadeIn" data-wow-duration="1s" data-wow-delay="1s">The Leading Real Estate
                            Rental Marketplace<span>.</span></h1>
                        <p class="wow animated fadeIn" data-wow-duration="1s" data-wow-delay="1s">
                            Over 39,000 people work for us in more than 70 countries all over the This breadth of global coverage, combined with specialist services

                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                    </div>
                    <div class="btn-wrapper wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                        <a href="<?= $path ?>services" class="theme-btn-1 btn btn-effect-1">OUR SERVICES</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ABOUT US AREA END -->

<!-- TEAM AREA START (Team - 3) -->
<div class="ltn__team-area pt-115 pb-90">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area ltn__section-title-2--- text-center">
                    <h6 class="section-subtitle section-subtitle-2 ltn__secondary-color">Team</h6>
                    <h1 class="section-title">Property Agents</h1>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-4 col-sm-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__team-item ltn__team-item-3---">
                    <div class="team-img">
                        <img src="<?= $path ?>assets/img/team/4.jpg" alt="Image">
                    </div>
                    <div class="team-info">
                        <h4><a href="javascript:void(0);">Rosalina D. William</a></h4>
                        <h6 class="ltn__secondary-color">Real Estate Broker</h6>
                        <div class="ltn__social-media">
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__team-item ltn__team-item-3---">
                    <div class="team-img">
                        <img src="<?= $path ?>assets/img/team/2.jpg" alt="Image">
                    </div>
                    <div class="team-info">
                        <h4><a href="javascript:void(0);">Kelian Anderson</a></h4>
                        <h6 class="ltn__secondary-color">Selling Agents</h6>
                        <div class="ltn__social-media">
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                <div class="ltn__team-item ltn__team-item-3---">
                    <div class="team-img">
                        <img src="<?= $path ?>assets/img/team/5.jpg" alt="Image">
                    </div>
                    <div class="team-info">
                        <h4><a href="javascript:void(0);">Miranda H. Halim</a></h4>
                        <h6 class="ltn__secondary-color">Property Seller</h6>
                        <div class="ltn__social-media">
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- TEAM AREA END -->