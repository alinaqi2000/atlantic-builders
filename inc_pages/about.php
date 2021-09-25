<?php
$pageid = $_REQUEST['page'];
$paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
$exe = $conn->query($paging) or die(mysqli_error($conn));
$page = $exe->fetch_assoc();

$about_us = getTable('tbl_texts', " `txt_type` = 'about' ");
$about = unserialize(stripslashes($about_us['txt_data']));
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
<div class="ltn__about-us-area pt-20 pb-20 ">
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
            <?php
            $agents_qry =  "SELECT * FROM tbl_agents  WHERE agent_status='1' ORDER BY agent_order ASC";
            $agents_exe = $conn->query($agents_qry) or die(mysqli_error($conn));
            while ($agent = $agents_exe->fetch_array()) {
            ?>
                <div class="col-lg-4 col-sm-6 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                    <div class="ltn__team-item ltn__team-item-3---">
                        <div class="team-img">
                            <img src="<?= $path ?>uploads/agents/<?= $agent['agent_image'] ?>" alt="Image">
                        </div>
                        <div class="team-info">
                            <h4><a href="javascript:void(0);"><?= $agent['agent_name'] ?></a></h4>
                            <h6 class="ltn__secondary-color"><?= $agent['agent_portfolio'] ?></h6>
                            <div class="ltn__social-media">
                                <ul>
                                    <li><a href="<?= $agent['agent_facebook'] ?>"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="<?= $agent['agent_twitter'] ?>"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="<?= $agent['agent_linkedin'] ?>"><i class="fab fa-linkedin"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<!-- TEAM AREA END -->