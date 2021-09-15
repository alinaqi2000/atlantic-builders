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
<!--====== Start Pricing Section 
<section class="pricing-area pt-60 pb-60">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="section-title text-center mb-60">
                    <span class="span">Latest Package</span>
                    <h2>Choose Your Packages</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            //$priqry =  "SELECT * FROM tbl_pricing";
            //$priexe = $conn->query($priqry) or die(mysqli_error($conn));
            //while ($pri = $priexe->fetch_array()) {
            //$pri_id = $pri['pri_id'];
            ?>
                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="pricing-item">
                        <div class="title text-center">
                            <h4><?php //echo $pri['pri_title'] 
                                ?></h4>
                        </div>
                        <div class="price text-center">
                            <h2><span class="sign">$</span><?php //echo $pri['pri_price'] 
                                                            ?><span class="small-text">99</span></h2>
                        </div>
                        <?php //echo $pri['pri_features'] 
                        ?>
                        <div class="button text-center">
                            <a href="<?php //echo $path 
                                        ?>booking-details?code=<?php //echo $pri['pri_id'] 
                                                                ?>" class="main-btn">Book Now</a>
                        </div>
                    </div>
                </div>
            <?php // } 
            ?>

        </div>
    </div>
</section>
 End Pricing Section ======-->
<!--====== Start Pricing Section ======-->
<section id="pricing-area-page" class="pricing-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="section-title text-center mb-60">
                    <span class="span">Latest Package</span>
                    <h2>Choose Your Package</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="pricing-tabs mb-60">
                    <ul class="nav nav-tabs">
                        <?php
                        $no = 1;
                        $type_query =  "SELECT * FROM tbl_pri_types";
                        $type_exe = $conn->query($type_query) or die(mysqli_error($conn));
                        while ($type = $type_exe->fetch_array()) {
                            $type_ids[] = $type['type_id'];
                            $active = $no == 1;
                        ?>
                            <li class="nav-item">
                                <a class="nav-link <?= $active ? "active" : "" ?>" data-toggle="tab" href="#cat<?= $type['type_id'] ?>"><i class="<?php echo $type['type_image'] ?>"></i><?php echo $type['type_title'] ?></a>
                            </li>
                        <?php
                            $no++;
                        }
                        ?>
                    </ul>
                </div>
            </div>
        </div>
        <div class="tab-content">
            <?php
            foreach ($type_ids as $key => $type_id) {
            ?>
                <div id="cat<?= $type_id ?>" class="tab-pane <?= $key == 0 ? "active" : "" ?>">
                    <div class="row">
                        <?php
                        $no = 1;
                        $join_query =  "SELECT * FROM tbl_pricing_type st 
                        JOIN tbl_pricing t ON t.pri_id = st.pri_id WHERE st.type_id ='" . $type_id . "'";
                        $join_exe = $conn->query($join_query) or die(mysqli_error($conn));
                        while ($join = $join_exe->fetch_array()) {
                        ?>
                            <div class="col-lg-4 col-md-6 col-sm-12 pb-40">
                                <div class="pricing-item">
                                    <div class="title text-center">
                                        <h4><?php echo $join['pri_title'] ?></h4>
                                    </div>
                                    <div class="price text-center">
                                        <h2><span class="sign">$</span><?php echo $join['pri_price'] ?></h2>
                                    </div>
                                    <?php echo $join['pri_features'] ?>
                                    <div class="button text-center">
                                        <a href="<?php echo $path ?>booking-details?code=<?php echo $join['pri_id'] ?>" class="main-btn">Book Now</a>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>

                    </div>
                </div>
            <?php
            }
            ?>

        </div>
    </div>
</section>
<!--====== End Pricing Section ======-->