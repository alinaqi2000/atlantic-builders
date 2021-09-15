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
<!--====== Start about-area Section ======-->
<?php
$aboutrs = getTable('tbl_texts', " `txt_type` = 'about' ");
$about = unserialize(stripslashes($aboutrs['txt_data'])); ?>
<section class="about-area gradient-bg about-area-v1 pt-50 pb-50">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="about-img-box">
                    <div class="img-box img-box-1">
                        <img src="<?php echo $path ?>uploads/media/<?php echo $about['image1'] ?>" class="img-fluid" alt="">
                    </div>
                    <div class="img-box img-box-2">
                        <img src="<?php echo $path ?>uploads/media/<?php echo $about['image2'] ?>" class="img-fluid" alt="">
                        <div class="experience-box">
                            <h2>25<span>Years Of Experience</span></h2>
                        </div>
                    </div>
                    <div class="img-box img-box-3">
                        <img src="<?php echo $path ?>uploads/media/<?php echo $about['image3'] ?>" class="img-fluid" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-content-box mt-45">
                    <div class="section-title mb-25">
                        <span class="span"><?php echo $about['title'] ?></span>
                        <?php echo $about['detail'] ?>
                        <a href="<?= $path ?><?php echo $about['link'] ?>" class="main-btn"><?php echo $about['text'] ?></a>
                    </div>
                </div>
            </div>
        </div>
</section>
<!--====== End about-area Section ======-->
<!--====== Start counter-area Section ======-->
<!-- <?php
$statsrs = getTable('tbl_texts', " `txt_type` = 'stats' ");
$stats = unserialize(stripslashes($statsrs['txt_data'])); ?>
<section class="counter-area bg_cover" style="background-image: url(assets/images/bg/project-bg.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="counter-box text-center">
                    <?php
                    $num1 = strpos($stats['count1'], "k");
                    if ($num1) {
                        $numstat1 = substr_replace($stats['count1'], '', $num1); ?>

                        <h2><span class="counter"><?php echo $numstat1 ?></span>K</h2>
                    <?php   } else {
                        $numstat1 = $stats['count1']; ?>
                        <h2><span class="counter"><?php echo $numstat1 ?></span></h2>
                    <?php   }
                    ?>
                    <h4><?php echo $stats['title1'] ?></h4>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="counter-box text-center">
                    <?php
                    $num2 = strpos($stats['count2'], "k");
                    if ($num2) {
                        $numstat2 = substr_replace($stats['count2'], '', $num2); ?>

                        <h2><span class="counter"><?php echo $numstat2 ?></span>K</h2>
                    <?php   } else {
                        $numstat2 = $stats['count2']; ?>
                        <h2><span class="counter"><?php echo $numstat2 ?></span></h2>
                    <?php   }
                    ?>
                    <h4><?php echo $stats['title2'] ?></h4>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="counter-box text-center">
                    <?php
                    $num3 = strpos($stats['count3'], "k");
                    if ($num3) {
                        $numstat3 = substr_replace($stats['count3'], '', $num3); ?>

                        <h2><span class="counter"><?php echo $numstat3 ?></span>K</h2>
                    <?php   } else {
                        $numstat3 = $stats['count3']; ?>
                        <h2><span class="counter"><?php echo $numstat3 ?></span></h2>
                    <?php   }
                    ?>
                    <h4><?php echo $stats['title3'] ?></h4>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="counter-box text-center">
                    <?php
                    $num4 = strpos($stats['count4'], "k");
                    if ($num4) {
                        $numstat4 = substr_replace($stats['count4'], '', $num4); ?>

                        <h2><span class="counter"><?php echo $numstat4 ?></span>K</h2>
                    <?php   } else {
                        $numstat4 = $stats['count4']; ?>
                        <h2><span class="counter"><?php echo $numstat4 ?></span></h2>
                    <?php   }
                    ?>
                    <h4><?php echo $stats['title4'] ?></h4>
                </div>
            </div>
        </div>
    </div>
</section> -->
<!--====== End counter-area Section ======-->


<!--====== Start About Detail Page Section =======-->
<section class="gradient-bg pt-50 pb-50">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="section-title text-center mb-50">
                    <span class="span"><?php echo $page['page_meta_title'] ?></span>
                    <h2><?php echo $page['page_title'] ?></h2>
                </div>
            </div>
            <div class="col-lg-12">
                <?php echo $page['page_detail'] ?>
            </div>
        </div>
    </div>
</section>
<!--====== End About Detail Page Section ======-->