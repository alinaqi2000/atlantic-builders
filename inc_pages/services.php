    <?php
    $pageid = $_REQUEST['page'];
    $paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
    $exe = $conn->query($paging) or die(mysqli_error($conn));
    $page = $exe->fetch_array();
    ?>
    <style>
        .col-lg-4 a {
            width: 100%;
        }

        .service-area-v2 .service-item {
            height: 390px;
        }

        .service-area-v2 {
            padding-bottom: 10px;
        }
    </style>
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
    <section class="service-area service-area-v2 pt-50">
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
                    if (strlen($row['service_short_desc']) > 77) {
                        $detail = substr($row['service_short_desc'], 0, 74);
                        $detail .= "...";
                    } else {
                        $detail = $row['service_short_desc'];
                    }
                ?>
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <a href="<?= $path ?>service/<?php echo $row['service_slug'] ?>">
                            <div class="service-item mb-50">
                                <div class="icon">
                                    <i class="<?php echo $row['service_icon'] ?>"></i>
                                </div>
                                <div class="info">
                                    <h4><?php echo $row['service_title'] ?></h4>
                                    <p><?php echo $detail ?></p>
                                </div>
                            </div>
                        </a>
                    </div>
                <?php } ?>

            </div>
        </div>
    </section>