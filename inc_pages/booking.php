<?php
$pageid = $_REQUEST['page'];
$paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
$exe = $conn->query($paging) or die(mysqli_error($conn));
$page = $exe->fetch_assoc();


try {

    $pkg_code = random_int(100000, 999999);
    $id = doDecode($_REQUEST['code']);
    $priqry =  "SELECT * FROM tbl_pricing WHERE pri_id=$id";
    $priexe = $conn->query($priqry);
    $pri = $priexe->fetch_assoc();

    $no = 1;
    $type_query =  "SELECT * FROM tbl_pricing_type p JOIN tbl_pri_types t ON t.type_id = p.type_id WHERE p.pri_id = '" . $pri['pri_id'] . "'";
    $type_exe = $conn->query($type_query) or die(mysqli_error($conn));
    $pri_type = $type_exe->fetch_assoc();
} catch (\Throwable $th) {
    redirectTo("packages");
}
?>
<style>
    .cat-icon {
        color: #1b3255;
        margin: 0 6px 0 0;

    }

    .pricing-body .list li:not(:last-child)::after {
        content: ",";
    }

    .pricing-body .list li:last-child::before {
        content: " and ";
    }

    .pricing-body .list li:last-child::after {
        content: ".";
    }
</style>
<section class="breadcrumbs-area bg_cover" style="background-image: url(<?php echo $path ?>uploads/banners/<?php echo $page['page_image'] ?>);">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="breadcrumbs-content text-center">
                    <h1><?php echo $pri['pri_title'] ?></h1>
                    <ul>
                        <li><a href="<?php echo $path ?>">Home</a></li>
                        <li><a href="<?php echo $path ?>packages"><?= $pri_type['type_title'] ?></a></li>
                        <li class="active"><?php echo $pri['pri_title'] ?></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="pricing-area-page" class="pricing-area pb-50">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="section-title text-center mb-60">
                    <h3 class="text-center">Booking Details</h3>
                    <hr>
                </div>
            </div>
        </div>
        <div class="row">
            <?php

            ?>
            <div class="offset-1 col-lg-4">
                <div class="sidebar-widget-area">

                    <div class="widget widget-categories pt-4 mb-50">
                        <h4 class="widget-title">
                            Order Details

                        </h4>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th width="35%">
                                        <h5>Category</h5>
                                    </th>
                                    <td>

                                        <i class="cat-icon <?php echo $pri_type['type_image'] ?>"></i><?php echo $pri_type['type_title'] ?>
                                    </td>
                                </tr>
                                <tr>
                                    <th width="35%">
                                        <h5>Package</h5>
                                    </th>
                                    <td>
                                        <?php echo $pri['pri_title'] ?>
                                    </td>
                                </tr>
                                <tr>
                                    <th width="35%">
                                        <h5>Cost ($)</h5>
                                    </th>
                                    <td>
                                        <?php echo $pri['pri_price'] ?>
                                    </td>
                                </tr>
                                <tr>
                                    <th width="35%">
                                        <h5>
                                            Facilities
                                        </h5>
                                    </th>
                                    <td>
                                        <!-- <div class="pricing-area py-2">
                                            <div class="pricing-item"> -->
                                        <?php
                                        $feature = str_replace('#', "",  $pri['pri_features']);
                                        echo $feature;
                                        ?>
                                        <!-- </div>
                                        </div> -->
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">

                                    </td>

                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="contact-wrapper">
                    <div class="section-title mb-4">
                        <h6>Personal Information</h6>
                    </div>
                    <form action="<?= $path; ?>processing" method="post" id="paymentForm">
                        <input type="hidden" name="payment_method" id="payment_method" value="stripe">
                        <?php
                        $pkgrs =  "SELECT * FROM tbl_pricing WHERE pri_id='$id'";
                        $pkgexe = $conn->query($pkgrs) or die(mysqli_error($conn));
                        $pkg = $pkgexe->fetch_assoc()
                        ?>
                        <input type="hidden" class="form_control numeric" placeholder="Pakage Id" name="pkg_id" value="<?php echo $pkg['pri_id'] ?>">
                        <input type="hidden" class="form_control numeric" placeholder="Pakage Encoded Id" name="encode_id" value="<?php echo $_REQUEST['code'] ?>">
                        <input type="hidden" class="form_control alphanumeric" placeholder="Pakage Id" name="pkg_title" value="<?php echo $pkg['pri_title'] ?>">
                        <input type="hidden" class="form_control numeric" placeholder="Pakage Id" name="pkg_price" value="<?php echo $pkg['pri_price'] ?>">
                        <input type="hidden" class="form_control numeric" placeholder="Pakage Id" name="pkg_code" value="<?php echo $pkg_code ?>">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="form_group mb-4">
                                    <input type="text" class="form_control alpha" placeholder="Enter Full name" name="fullname" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form_group mb-4">
                                    <input type="email" class="form_control alphanumeric" placeholder="Enter Email" name="email" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form_group mb-4">
                                    <input type="text" class="form_control numeric" placeholder="Phone Number" name="phone_no" required>
                                </div>
                            </div>
                        </div>
                        <div class="section-title mb-4">
                            <h6>Payment Details</h6>
                        </div>
                        <div class="row">
                            <div class="col-lg-9">
                                <div class="form_group mb-4">
                                    <input type="text" id="cardnumber" maxlength="19" placeholder="Credit Card" class="form_control card-number" required="">
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <input type="text" id="cvv" value="" placeholder="CVV" maxlength="4" required="" class="card-cvc form_control">
                            </div>
                            <div class="col-lg-6">
                                <div class="form_group mb-4">
                                    <select class="card-expiry-month form_control" required="">
                                        <option value=""> - Expiry Month - </option>
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form_group mb-4">
                                    <select class="card-expiry-year form_control" required="">
                                        <option value=""> - Expiry Year - </option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                        <option value="2023">2023</option>
                                        <option value="2024">2024</option>
                                        <option value="2025">2025</option>
                                        <option value="2026">2026</option>
                                        <option value="2026">2026</option>
                                        <option value="2026">2026</option>
                                        <option value="2026">2026</option>
                                        <option value="2026">2026</option>
                                        <option value="2026">2026</option>
                                        <option value="2027">2027</option>
                                        <option value="2028">2028</option>
                                        <option value="2029">2029</option>
                                        <option value="2030">2030</option>
                                        <option value="2030">2030</option>
                                        <option value="2031">2031</option>
                                        <option value="2032">2032</option>
                                        <option value="2033">2033</option>
                                        <option value="2034">2034</option>
                                        <option value="2035">2035</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-6 text-left">
                                <div class="form_group mb-4">
                                    <button name="submit1" type="submit" id="contact-submit" class="main-btn submit btn-sm"><span class="submit-text">Pay Now <i class="fa fa-chevron-right fa-icon"></i></span></button>
                                </div>
                            </div>
                            <div class="col-lg-6 text-right">
                                <div class="form_group mb-4">
                                    <img class="img-responsive" src="<?php echo $path ?>assets/images/paypal.png" alt="Pay with PayPal" style="height:47px;" onclick="goToPaypal();">
                                </div>
                            </div>
                            <div class="col-lg-12 text-center">
                                <div id="msg-container"></div>
                                <div class="container">
                                    <?php showValidMsg(); ?>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<script>
    $(document).ready(function() {
        $(".uncheck").remove();
    });

    function goToPaypal() {
        document.getElementById('payment_method').value = "paypal";
        document.getElementById('paymentForm').submit();
    }
</script>
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<script type="text/javascript">
    $(document).on('submit', '#paymentForm', function() {
        var payment_method = $('#payment_method').val();
        if (payment_method == 'stripe') {

            // createToken returns immediately - the supplied callback submits the form if there are no errors
            $('#contact-submit').prop("disabled", true);
            $("#msg-container").hide();
            Stripe.card.createToken({
                number: $('.card-number').val(),
                cvc: $('.card-cvc').val(),
                exp_month: $('.card-expiry-month').val(),
                exp_year: $('.card-expiry-year').val()
                //                    name: $('.card-holder-name').val()
            }, stripeResponseHandler);
            return false; // submit from callback

        }
    });

    Stripe.setPublishableKey('pk_test_51JEe8PDh1ruFgvzj1gIYbrK4ktAf1zNoZcvdAf737y7e9sp6S9TuyLci46asAnbudf7f55U5WpqaqXVU9lI17MRd00FNErwrUA');

    function stripeResponseHandler(status, response) {
        if (response.error) {
            $('#contact-submit').prop("disabled", false);
            $("#msg-container").html('<div class="alert alert-danger"><strong>Error:</strong> ' + response.error.message + '</div>');
            $("#msg-container").show();
        } else {
            var form$ = $("#paymentForm");
            var token = response['id'];
            form$.append("<input type='hidden' name='stripeToken' value='" + token + "' />");
            form$.get(0).submit();
        }
    }
</script>