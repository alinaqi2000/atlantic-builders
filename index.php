<?php
include_once("includes/conn.php");
include_once('includes/baseFunctions.php');
include_once('includes/siteFunctions.php');
include_once('includes/functions.php');
include_once("includes/confg.php");
$banners = unserialize(str($banners['txt_data']));
$header_sec = unserialize(str($header_sec['txt_data']));
$intake_sec = unserialize(str($intake_sec['txt_data']));
?>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Atlantic Marketing and Builders</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Place favicon.png in the root directory -->
    <link rel="shortcut icon" href="<?= $path ?>uploads/logo/<?= $site_favicon ?>" type="image/x-icon" />
    <!-- Font Icons css -->
    <link rel="stylesheet" href="<?= $path ?>assets/css/font-icons.css">
    <!-- plugins css -->
    <link rel="stylesheet" href="<?= $path ?>assets/css/plugins.css">
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="<?= $path ?>assets/css/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="<?= $path ?>assets/css/responsive.css">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="<?= $path ?>assets/css/custom.css">

    <!--====== Jquery js ======-->
    <script src="<?php echo $path ?>assets/js/vendor/jquery-1.12.4.min.js?v=<?php echo $site_version ?>"></script>
    <script>
        const BASE_URL = "<?= $path ?>";
    </script>
</head>

<body>


    <!-- Body main wrapper start -->
    <div class="body-wrapper">
        <?php @include_once('inc_pages/shared/header.php'); ?>

        <?php @include_once($includefile); ?>

        <?php @include_once('inc_pages/shared/footer.php'); ?>

    </div>
    <!-- Body main wrapper end -->

    <!-- preloader area start -->
    <div class="preloader d-none" id="preloader">
        <div class="preloader-inner">
            <div class="spinner">
                <div class="dot1"></div>
                <div class="dot2"></div>
            </div>
        </div>
    </div>
    <!-- preloader area end -->

    <!-- All JS Plugins -->
    <script src="<?= $path ?>assets/js/plugins.js"></script>
    <!-- Main JS -->
    <script src="<?= $path ?>assets/js/main.js"></script>
    <script>
        new WOW().init();
    </script>

    <!-- SweetAlert 2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.11/dist/sweetalert2.all.min.js"></script>
    <!-- Form submit -->
    <script src="<?= $path ?>assets/js/form-submit.js"></script>
    <!-- Form validation -->
    <script src="<?= $path ?>assets/js/form-validation.js"></script>


    <?php if (empty($_REQUEST['page'] || $_REQUEST['page'] == 'index' || $_REQUEST['page'] == 'home')) { ?>
        <script>
            $(document).ready(function() {
                $('.slick-slider').slick({
                    autoplay: true,
                    autoplaySpeed: 1500,
                    arrows: true,
                    prevArrow: '<button type="button" class="slick-prev"></button>',
                    nextArrow: '<button type="button" class="slick-next"></button>',
                    centerMode: true,
                    slidesToShow: 3,
                    slidesToScroll: 2
                });
            })
        </script>
    <?php } ?>
</body>

</html>