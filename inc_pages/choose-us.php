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
<!--====== Start Pricing Section ======-->
<section class="pt-50 pb-50">
    <div class="container">
        <?php echo $page['page_detail'] ?>
    </div>
</section>
<!--====== End Pricing Section ======-->