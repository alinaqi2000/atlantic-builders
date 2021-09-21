<?php
$pageid = $_REQUEST['page'];
$paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
$exe = $conn->query($paging) or die(mysqli_error($conn));
$page = $exe->fetch_assoc();
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
                            <li> Upcoming Projects</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- BREADCRUMB AREA END -->

<!--====== Start service-area Section ======-->
<!-- UPCOMING PROJECT AREA START -->
<div class="ltn__upcoming-project-area  pt-10 pb-70" data-bs-bg="<?= $path ?>assets/img/bg/22.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area ltn__section-title-2--- text-center">
                    <h6 class="section-subtitle section-subtitle-2 ltn__secondary-color wow animated fadeIn">Upcoming Projects</h6>
                    <h1 class="section-title wow animated fadeInUp" data-wow-duration="1s" data-wow-delay="1s">Dream Living Space </h1>
                </div>
            </div>
        </div>
        <div class="row ">
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