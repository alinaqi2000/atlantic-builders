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
<!--====== Start Wash Club Section ======-->
<?php
$washrs = getTable('tbl_texts', " `txt_type` = 'washclub' ");
$wash = (unserialize(base64_decode($washrs['txt_data'])));
?>
<section class="blog-grid-secton pb-30 bg_cover" style="background-image: url(assets/images/bg/map-bg-1.jpg);">
    <div class="container">
        <div class="row justify-content-center pb-30">
            <div class="col-lg-10">
                <div class="section-title text-center mb-50">
                    <span class="span"><?php echo $page['page_meta_title'] ?></span>
                    <h2><?php echo $page['page_title'] ?></h2>
                </div>
                <?php echo $page['page_detail'] ?>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="blog-post-item mb-50">
                    <div class="post-thumbnail">
                        <img src="<?php echo $path ?>uploads/media/<?php echo $wash['image1'] ?>" class="img-fluid" alt="">
                    </div>
                    <div class="entry-content">
                        <!-- <div class="post-meta">
                                    <ul>
                                        <li><span class="post-date"><i class="fas fa-calendar-alt"></i><a href="#">31 DEC 2020</a></span></li>
                                        <li><span class="comment"><i class="far fa-comment"></i><a href="#">Comments (03)</a></span></li>
                                    </ul>
                                </div> -->
                        <h3 class="title"><?php echo $wash['title1'] ?></h3>
                        <p><?php echo $wash['desc1'] ?></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="blog-post-item mb-50">
                    <div class="post-thumbnail">
                        <img src="<?php echo $path ?>uploads/media/<?php echo $wash['image2'] ?>" class="img-fluid" alt="">
                    </div>
                    <div class="entry-content">
                        <!-- <div class="post-meta">
                                    <ul>
                                        <li><span class="post-date"><i class="fas fa-calendar-alt"></i><a href="#">31 DEC 2020</a></span></li>
                                        <li><span class="comment"><i class="far fa-comment"></i><a href="#">Comments (03)</a></span></li>
                                    </ul>
                                </div> -->
                        <h3 class="title"><?php echo $wash['title2'] ?></h3>
                        <p><?php echo $wash['desc2'] ?></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="blog-post-item mb-50">
                    <div class="post-thumbnail">
                        <img src="<?php echo $path ?>uploads/media/<?php echo $wash['image3'] ?>" class="img-fluid" alt="">
                    </div>
                    <div class="entry-content">
                        <!-- <div class="post-meta">
                                    <ul>
                                        <li><span class="post-date"><i class="fas fa-calendar-alt"></i><a href="#">31 DEC 2020</a></span></li>
                                        <li><span class="comment"><i class="far fa-comment"></i><a href="#">Comments (03)</a></span></li>
                                    </ul>
                                </div> -->
                        <h3 class="title"><?php echo $wash['title3'] ?></h3>
                        <p><?php echo $wash['desc3'] ?></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12">
                <div class="blog-post-item mb-50">
                    <div class="post-thumbnail">
                        <img src="<?php echo $path ?>uploads/media/<?php echo $wash['image4'] ?>" class="img-fluid" alt="">
                    </div>
                    <div class="entry-content">
                        <!-- <div class="post-meta">
                                    <ul>
                                        <li><span class="post-date"><i class="fas fa-calendar-alt"></i><a href="#">31 DEC 2020</a></span></li>
                                        <li><span class="comment"><i class="far fa-comment"></i><a href="#">Comments (03)</a></span></li>
                                    </ul>
                                </div> -->
                        <h3 class="title"><?php echo $wash['title4'] ?></h3>
                        <p><?php echo $wash['desc4'] ?></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="row">
                    <div class="col-lg-12">
                        <div class="button-box text-center">
                            <a href="#" class="main-btn">Read More</a>
                        </div>
                    </div>
                </div> -->
    </div>
</section>
<!--====== End Wash Club Section ======-->