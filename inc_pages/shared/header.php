<style>
    .site-logo img {
        max-height: 75px;
    }
</style>
<header class="ltn__header-area ltn__header-5 ltn__header-logo-and-mobile-menu-in-mobile ltn__header-logo-and-mobile-menu ltn__header-transparent--- gradient-color-4---">
    <!-- ltn__header-top-area start -->
    <div class="ltn__header-top-area py-1">
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <div class="ltn__top-bar-menu">
                        <ul>
                            <li><a href="mailto:<?= $site_email ?>?Subject=Flower%20greetings%20to%20you"><i class="icon-mail"></i> <?= $site_email ?></a></li>
                            <li><a href="<?= $path ?>contact"><i class="icon-placeholder"></i> <?= $site_address ?></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="top-bar-right text-end">
                        <div class="ltn__top-bar-menu">
                            <ul>
                                <!-- <li>
                                    <div class="ltn__drop-menu ltn__currency-menu ltn__language-menu">
                                        <ul>
                                            <li><a href="#" class="dropdown-toggle"><span class="active-currency">English</span></a>
                                                <ul>
                                                    <li><a href="#">Arabic</a></li>
                                                    <li><a href="#">Bengali</a></li>
                                                    <li><a href="#">Chinese</a></li>
                                                    <li><a href="#">English</a></li>
                                                    <li><a href="#">French</a></li>
                                                    <li><a href="#">Hindi</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                </li> -->
                                <li>
                                    <!-- ltn__social-media -->
                                    <div class="ltn__social-media">
                                        <ul>
                                            <?php if ($site_facebook) { ?>
                                                <li><a href="<?= $site_facebook ?>" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                                            <?php } ?>
                                            <?php if ($site_twitter) { ?>
                                                <li><a href="<?= $site_twitter ?>" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                                            <?php } ?>
                                            <?php if ($site_linkedin) { ?>
                                                <li><a href="<?= $site_linkedin ?>" title="Linkedin"><i class="fab fa-linkedin"></i></a></li>
                                            <?php } ?>
                                            <?php if ($site_instagram) { ?>
                                                <li><a href="<?= $site_instagram ?>" title="Instagram"><i class="fab fa-instagram"></i></a></li>
                                            <?php } ?>

                                            <?php if ($site_pinterest) { ?>
                                                <li><a href="<?= $site_pinterest ?>" title="Pinterest"><i class="fab fa-pinterest"></i></a></li>
                                            <?php } ?>
                                            <?php if ($site_youtube) { ?>
                                                <li><a href="<?= $site_youtube ?>" title="Youtube"><i class="fab fa-youtube"></i></a></li>
                                            <?php } ?>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ltn__header-top-area end -->

    <!-- ltn__header-middle-area start -->
    <div class="ltn__header-middle-area ltn__header-sticky ltn__sticky-bg-white">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="site-logo-wrap">
                        <div class="site-logo animated fadeIn">
                            <a href="<?= $path ?>"><img src="<?= $path ?>uploads/logo/<?= $site_logo ?>" alt="Logo"></a>
                        </div>
                        <div class="get-support clearfix d-none">
                            <div class="get-support-icon">
                                <i class="icon-call"></i>
                            </div>
                            <div class="get-support-info">
                                <h6>Get Support</h6>
                                <h4><a href="tel:<?= $site_phone ?>"><?= $site_phone ?></a></h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col header-menu-column">
                    <div class="header-menu d-none d-xl-block">
                        <nav>
                            <div class="ltn__main-menu">
                                <ul>
                                    <li><a href="<?= $path ?>">Home</a></li>
                                    <li><a href="<?= $path ?>about">About</a></li>

                                    <?php
                                    $mod_qry =  "SELECT * FROM tbl_module WHERE mod_status='1' ";
                                    $exe = $conn->query($mod_qry) or die(mysqli_error($conn));
                                    while ($row = $exe->fetch_array()) {
                                        $slug = toSlugUrl($row['mod_title']);
                                    ?>
                                        <li><a href="<?= $path ?><?= toSlugUrl($row['mod_title']) ?>"><?= $row['mod_title'] ?></a></li>
                                    <?php } ?>
                                    <li class="special-link">
                                        <a href="<?= $path ?>contact">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
                <div class="col--- ltn__header-options ltn__header-options-2 ">
                    <!-- Mobile Menu Button -->
                    <div class="mobile-menu-toggle d-xl-none">
                        <a href="#ltn__utilize-mobile-menu" class="ltn__utilize-toggle">
                            <svg viewBox="0 0 800 600">
                                <path d="M300,220 C300,220 520,220 540,220 C740,220 640,540 520,420 C440,340 300,200 300,200" id="top"></path>
                                <path d="M300,320 L540,320" id="middle"></path>
                                <path d="M300,210 C300,210 520,210 540,210 C740,210 640,530 520,410 C440,330 300,190 300,190" id="bottom" transform="translate(480, 320) scale(1, -1) translate(-480, -318) "></path>
                            </svg>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ltn__header-middle-area end -->
</header>
<!-- Utilize Mobile Menu Start -->
<div id="ltn__utilize-mobile-menu" class="ltn__utilize ltn__utilize-mobile-menu">
    <div class="ltn__utilize-menu-inner ltn__scrollbar">
        <div class="ltn__utilize-menu-head">
            <div class="site-logo">
                <a href="<?= $path ?>"><img src="<?= $path ?>uploads/logo/<?php echo $site_logo ?>" alt="Logo"></a>
            </div>
            <button class="ltn__utilize-close">??</button>
        </div>
        <div class="ltn__utilize-menu">
            <ul>
                <li><a href="<?= $path ?>">Home</a></li>
                <li><a href="<?= $path ?>about">About</a></li>
                <?php
                $mod_qry1 =  "SELECT * FROM tbl_module WHERE mod_status='1' ";
                $exe1 = $conn->query($mod_qry1) or die(mysqli_error($conn));
                while ($row1 = $exe1->fetch_array()) {
                    $slug1 = toSlugUrl($row1['mod_title']);
                ?>
                    <li><a href="<?= $path ?><?= $slug1 ?>"><?= $row1['mod_title'] ?></a></li>
                <?php } ?>
                <li><a href="<?= $path ?>contact">Contact</a>
                </li>
            </ul>
        </div>
        <div class="ltn__social-media-2">
            <ul>
                <?php if ($site_facebook) { ?>
                    <li><a href="<?= $site_facebook ?>" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                <?php } ?>
                <?php if ($site_twitter) { ?>
                    <li><a href="<?= $site_twitter ?>" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                <?php } ?>
                <?php if ($site_linkedin) { ?>
                    <li><a href="<?= $site_linkedin ?>" title="Linkedin"><i class="fab fa-linkedin"></i></a></li>
                <?php } ?>
                <?php if ($site_instagram) { ?>
                    <li><a href="<?= $site_instagram ?>" title="Instagram"><i class="fab fa-instagram"></i></a></li>
                <?php } ?>

                <?php if ($site_pinterest) { ?>
                    <li><a href="<?= $site_pinterest ?>" title="Pinterest"><i class="fab fa-pinterest"></i></a></li>
                <?php } ?>
                <?php if ($site_youtube) { ?>
                    <li><a href="<?= $site_youtube ?>" title="Youtube"><i class="fab fa-youtube"></i></a></li>
                <?php } ?>

            </ul>
        </div>
    </div>
</div>
<!-- Utilize Mobile Menu End -->