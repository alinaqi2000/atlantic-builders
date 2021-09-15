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
<!--====== Start Gallery Section ======-->
<section class="gallery-section-area pt-50 pb-40" id="gallery-filter">
    <div class="container">
    <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="filter-button text-center mb-70">
                    <button class="filter-btn active" data-filter="*">All</button>
                    <?php
                    $sr = 0;
                    $catqry =  "SELECT * FROM tbl_categories";
                    $execat = $conn->query($catqry) or die(mysqli_error($conn));
                    while ($cat = $execat->fetch_array()) {
                        $cat_id = $cat['cat_id'];
                    ?>
                        <button class="filter-btn" data-filter=".<?php echo $cat['cat_slug'] ?>"><?php echo $cat['cat_title'] ?></button>
                    <?php } ?>
                </div>
            </div>
        </div>
        <div class="filter-grid row">

        <?php
            $portfolio =  "SELECT * FROM tbl_portfolio";
            $exeportfolio = $conn->query($portfolio) or die(mysqli_error($conn));
            while ($port = $exeportfolio->fetch_array()) {
                $portfolio_id = $port['portfolio_id'];
            ?>
                <div class="col-lg-4 col-md-6 col-sm-12 grid-column <?php echo strtolower(getPortfolioCategoriestoggleString($portfolio_id)) ?>">
                    <div class="gallery-item mb-30">
                        <div class="gallery-img">
                            <a href="<?php echo $path ?>uploads/gallery/<?php echo $port['portfolio_image'] ?>" class="image-popup">
                                <img src="<?php echo $path ?>uploads/gallery/<?php echo $port['portfolio_image'] ?>" class="img-fluid" alt="Project Image">
                            </a>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>
<!--====== End Gallery Section ======-->