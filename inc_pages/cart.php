<style>
    .cart_ul {
        display: inline-flex;
        width: 100%;
    }

    .cart_li {
        font-size: 25px;
        padding: 0px 30px 0px 40px;
    }

    #cart_i {
        padding: 15px 0px 10px 0px;
        color: #ffffff;
        background: #426fa3;
        border-radius: 25px;
        font-size: 18px;
        width: 50px;
        height: 50px;
        vertical-align: middle;
        text-align: center;
    }

    .cart_span {
        padding: 15px;
        font-size: 25px;
        font-weight: bold;
        color: #252241;
    }

    .cart_hr {
        width: 80px;
        margin: 40px 0px 0px 0px;
        border: 1px solid #426fa3;
    }

    .black {
        background-color: #252241 !important;
        width: 100%;
    }

    table {
        border-collapse: separate;
    }
</style>
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
<!--====== Start Cart Breadcrumb Section ======-->
<section class="blog-standard-section pt-50 pb-50">
    <div class="container">
        <div class="row">
            <div class="offset-1 col-lg-10">
                <ul class="cart_ul">
                    <li class="cart_li"><span><i id="cart_i" class="fa fa-cart-plus"></i></span><span class="cart_span">Cart</span></li>
                    <li>
                        <hr class="cart_hr">
                    </li>
                    <li class="cart_li"><span><i id="cart_i" class="fa fa-book"></i></span><span class="cart_span">Booking Details</span></li>
                    <li>
                        <hr class="cart_hr">
                    </li>
                    <li class="cart_li"><span><i id="cart_i" class="fa fa-money-check-alt"></i></span><span class="cart_span">Payment</span></li>
                </ul>
            </div>

        </div>
    </div>
</section>
<!--====== End Cart Breadcrumb Section ======-->
<!--====== Start Cart Section ======-->
<section class="blog-standard-section pb-50">
    <div class="container">
        <div class="row">
            <div class="offset-1 col-lg-10">
                <h3>Pakage</h3>
                <hr>
            </div>
            <div class="offset-1 col-lg-10">
                <table class="table table-responsive">
                    <thead class="black text-white">
                        <tr width="100%">
                            <th width="30%">Action</th>
                            <th width="35%">Pakage Name</th>
                            <th width="38%">Detail</th>
                            <th width="40%">Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><a href="<?php echo $path ?>" class="btn btn-danger btn-sm">Cancel</a></td>
                            <?php
                            $id = $_REQUEST['code'];
                            $pkgrs =  "SELECT * FROM tbl_pricing WHERE pri_id='$id'";
                            $pkgexe = $conn->query($pkgrs) or die(mysqli_error($conn));
                            $pkg = $pkgexe->fetch_assoc()
                            ?>
                            <td><?php echo $pkg['pri_title'] ?></td>
                            <td><?php echo $pkg['pri_title'] ?></td>
                            <td>$ <?php echo $pkg['pri_price'] ?></td>

                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-3 offset-9">
                <a href="<?php echo $path ?>booking-details?code=<?php echo $pkg['pri_id'] ?>" class="main-btn">Continue</a>
            </div>
        </div>
    </div>
</section>
<!--====== End Cart Section ======-->