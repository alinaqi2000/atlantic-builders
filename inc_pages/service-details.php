<?php $pageid = $_REQUEST['page'];
$paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
$exe = $conn->query($paging) or die(mysqli_error($conn));
$page = $exe->fetch_array();

try {
    $id = $_REQUEST['slug'];
    $pagingsingle =  "SELECT * FROM tbl_services WHERE service_slug='$id'";
    $exesingle = $conn->query($pagingsingle) or die(mysqli_error($conn));
    $single = $exesingle->fetch_assoc();
} catch (\Throwable $th) {
    redirectTo("services");
}
?>

<!--====== Start breadcrumbs-area Section ======-->
<section class="breadcrumbs-area bg_cover" style="background-image: url(<?php echo $path ?>uploads/banners/<?php echo $page['page_image'] ?>);">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="breadcrumbs-content text-center">
                    <h1><?php echo $single['service_title'] ?></h1>
                    <ul>
                        <li><a href="<?php echo $path ?>">Home</a></li>
                        <li><a href="<?php echo $path ?>services">Services</a></li>
                        <li class="active"><?php echo $single['service_title'] ?></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!--====== End breadcrumbs-area Section ======-->
<!--====== Start service-details-section Section ======-->


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

                </div>
            </div>
            <div class="col-lg-4">
                <div class="sidebar-widget-area">
                    <div class="widget service-widget mb-40">
                        <h4 class="title">All Services
                            <!-- <span class="float-right"><i class="fas fa-angle-down"></i></span> -->
                        </h4>
                        <ul class="list">
                            <?php
                            $paging1 =  "SELECT * FROM tbl_services WHERE service_status='1'";
                            $exe1 = $conn->query($paging1) or die(mysqli_error($conn));
                            while ($row1 = $exe1->fetch_array()) {
                            ?>
                                <li <?= $_REQUEST['slug'] == $row1['service_slug'] ? 'class="active"' : "" ?>><a href="<?= $path ?>service/<?php echo $row1['service_slug'] ?>"><?php echo $row1['service_title'] ?></a></li>

                            <?php } ?>
                            <!-- <li><a href="#">Towel Hand Dry</a></li>
                            <li><a href="#">Windows In & Out</a></li>
                            <li><a href="#">Simple Hand Wash</a></li>
                            <li><a href="#">Wheel Shine</a></li> -->
                        </ul>
                        <style>
                            .list li.active a {
                                color: #252241;
                                font-weight: bold;
                            }

                            .list li.active li a {
                                color: #000000;
                                font-weight: normal;
                            }

                            .sub-menu li.active-child {
                                color: #252241;
                                font-weight: bold;
                            }

                            .list li .sub-menu {
                                margin: 0px 0 0 30px !important;
                            }

                            .sub-menu li a::before {
                                content: "\203A";
                                margin: 0 8px 0 0;
                            }
                        </style>
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