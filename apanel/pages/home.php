<link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
<style>
    .visiter_counter {
        border-radius: 5px;
        padding: 10px;
        border: 1px solid #f0f0f0;
        background-color: #ffffff;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        font-family: Arial;
        font-size: 14px;
    }

    .home_stats {
        border-radius: 0px 5px 5px 0px;
        border: 1px solid #f0f0f0;
        background-color: #ffffff;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
        font-family: Arial;
        font-size: 14px;
        text-align: center;
    }

    .home_stats_up {
        padding: 35px 0px 0px 0px;
        height: 80px;
    }

    .home_stats_down {
        border-radius: 0px 0px 5px 5px;
        background-color: #3e4694;
        padding: 8px;
    }

    .home_stats_link {
        color: #ffffff;
        display: block;
        text-decoration: none;
    }

    .home_stats_down a:hover {
        color: #ffffff;
        display: block;
        text-decoration: none;
    }

    #home_p {
        padding: 0px 31px 31px 31px;
    }

    .home_stats_side_heading {
        color: #ffffff;
        writing-mode: tb-rl;
        transform: rotate(-180deg);
        font-size: 25px;
        text-align: center;
        background-color: #3e4694;
        line-height: 2.0;
        letter-spacing: 5px;
        text-transform: uppercase;
    }

    .bg_setings {
        background-color: #3e4694;
    }

    .settings_cog {
        padding: 37px 27px 20px 27px;
        height: 125px;
    }

    .settings_cog i {
        color: #ffffff;
        font-size: 70px;
    }

    .bussiness_settings {
        text-align: center;
        color: #ffffff;
        height: 135px;
        padding: 15px 0px 15px 0px;
        font-size: 19px;
        line-height: 1.8;
        font-weight: bold;
        text-transform: uppercase;
        letter-spacing: 3px;
    }

    .bg-white {
        border-radius: 5px;
        border: 1px solid #f0f0f0;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
    }

    .visiter_counter .col-md-12 {
        font-size: 11px;
        line-height: 1.27;
        padding: 10px;
    }

    .visiter_counter .col-md-12 {
        font-size: 11px;
        line-height: 1.27;
        padding: 10px;
    }

    .visiter_counter .col-md-12 .sub_col {
        padding-left: 60px;
        padding-right: 60px;
    }

    .progress {
        height: 5px;
    }

    .history_heading {
        padding: 17px;
        color: rgba(55, 77, 103, 0.54);
    }

    .table {
        line-height: 20px;
    }
</style>
<link href="<?php echo $apath ?>assets/css/css-circular-prog-bar.css" media="all" rel="stylesheet" />
<div class="mdk-header-layout__content">
    <div class="mdk-drawer-layout js-mdk-drawer-layout" data-push data-responsive-width="992px">
        <div class="mdk-drawer-layout__content page">
            <div class="container-fluid page__container mt-5">
                <div class="row card-group-row">
                    <?php
                    // $home_links = array(
                    //     "content_pages" => array("file-alt", "Pages"),
                    //     // "list_deals" => array("th-list", "Deals"),  
                    //     // "list_menus" => array("th-list", "Menus"),
                    //     "services" => array("list", "Manage Services"),
                    //     "portfolio" => array("list", "Portfolio"),
                    //     "email" => array("file-alt", "Manage Emails"),
                    //     "gallery_photos" => array("images", "Manage Gallery"),
                    //     "faq" => array("list", "Manage FAQ's"),
                    //     "news" => array("list", "Manage News"),
                    //     "pricing-list" => array("cog", "Manage Pricing"),
                    //     // "list_services" => array("th-list", "Services"),
                    //     // "list_boxes" => array("cubes", "Boxes"),
                    //     // "text_faqs" => array("newspaper-o", "News"),
                    //     // "text_news" => array("question", "FAQs"),
                    //     // "text_banners" => array("image", "Banners"),
                    //     // "list_testimonials" => array("thumb-tack", "Testimonials"),
                    //     "site_settings" => array("cog", "Site Settings"),
                    //     "change_password" => array("lock", "Change Password"),
                    // );
                    // foreach ($home_links as $link => $rs) {
                    //     $fa = $rs[0];
                    //     $text = $rs[1];
                    ?>
                    <!-- <div class="col-lg-3 col-md-4 card-group-row__col">
                            <a href="<?= $apath . $link; ?>" class="card card-group-row__card text-dark">
                                <div>
                                    <div class="p-2 d-flex flex-row align-items-center">
                                        <div class="avatar avatar-xs mr-2">
                                            <span class="avatar-title rounded-circle text-center bg-primary">
                                                <i class="text-white icon-18pt fa  fa-<?= $fa; ?>"></i>
                                            </span>
                                        </div>
                                        <div>
                                            <strong><?= $text; ?></strong>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div> -->
                    <?
                    // }
                    ?>
                    <div id="home_p" class="container-fluid">
                        <div class="row">
                            <div class="home_stats_side_heading col-md-1">
                                HOME &nbsp; PAGE
                            </div>
                            <div class="p-4 col-md-11 home_stats">
                                <div class="row pb-4">
                                    <div class="col-md-3">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Header</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="text_header">Click Here</a></div>
                                        </div>
                                    </div>
                                    <!-- <div class="col-md-3">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Slider</b>
                                            </div>
                                            <div 
                                                class="home_stats_down col-md-12"><a class="home_stats_link"
                                                    href="slider">Click Here</a></div>
                                        </div>
                                    </div> -->
                                    <div class="col-md-3">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Portfolio</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="text_portfolio">Click Here</a></div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>About</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="text_about">Click Here</a></div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Services</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="text_services">Click Here</a></div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Testimonial</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="text_testimonials">Click Here</a></div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Newsletter</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="text_newsletter">Click Here</a></div>
                                        </div>
                                    </div>
                                    <!-- <div class="col-md-3">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Our Mission</b>
                                            </div>
                                            <div 
                                                class="home_stats_down col-md-12"><a class="home_stats_link"
                                                    href="text_mission">Click Here</a></div>
                                        </div>
                                    </div> -->
                                    <div class="col-md-3">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Footer</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="text_footer">Click Here</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container-fluid p-3">
                        <div class="row">
                            <div class="col-md-5">
                                <!-- First Row Of Settings -->
                                <div class="row pb-4">
                                    <div class="col-md-6">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>General Settings</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="site_settings">Click Here</a></div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Social Settings</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="site_social">Click Here</a></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 2nd Row Of Settings -->
                                <div class="row pb-4">

                                    <div class="col-md-6">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Contact Settings</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="site_contact">Click Here</a></div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Database Backup</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="site_backup">Click Here</a></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Business Colomn -->
                            </div>
                            <div class="col-md-2">
                                <div class="container bg_setings">
                                    <div class="settings_cog row"><i class="fa fa-cogs"></i></div>
                                    <div class="row bussiness_settings">WEBSITE SETTINGS</div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <!-- First Row Of Settings -->
                                <div class="row pb-4">
                                    <div class="col-md-6">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>SMTP Settings</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="site_smtp">Click Here</a></div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>ReCaptcha Settings</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="site_captcha">Click Here</a></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- 2nd Row Of Settings -->
                                <div class="row pb-4">
                                    <div class="col-md-6">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Scripts Settings</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="site_scripts">Click Here</a></div>
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="home_stats">
                                            <div class="home_stats_up col-md-12">
                                                <b>Meta Settings</b>
                                            </div>
                                            <div class="home_stats_down col-md-12"><a class="home_stats_link" href="site_meta">Click Here</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row pr-3">
                    <div class="col-md-6">
                        <!-- <script src="https://apps.elfsight.com/p/platform.js" defer></script>
                        <div class="elfsight-app-ab5d53cf-1810-4683-a5b4-4e419817a3a4"></div> -->
                        <?php
                        $date = date("Y-M-d");
                        $timeWidth = getTimeWidth();
                        getTimeWidth2();
                        $data = getVisitorCount("WHERE visit_count_date = '$date'");
                        // week
                        $week = new DateTime('-1 week');
                        $preweek = $week->format('Y-M-d');
                        $weekdata = getVisitorCount("WHERE visit_count_date > '$preweek'");
                        // month
                        $month = new DateTime('-1 month');
                        $premonth = $month->format('Y-M-d');
                        $mondata = getVisitorCount("WHERE visit_count_date < '$premonth'");
                        // year
                        $year = new DateTime('-1 year');
                        $preyear = $year->format('Y-M-d');
                        $yeardata = getVisitorCount("WHERE visit_count_date > '$preyear'");
                        ?>
                        <div class="container visiter_counter">
                            <div style="text-align: center;" class="col-md-12">
                                <h3 style="color: rgba(55, 77, 103, 0.54);"><b>VISITOR'S COUNTER</b></h3>
                            </div>
                            <div style="text-align: center;" class="col-md-12">
                                <div class="row">
                                    <div class="col-md-4"></div>
                                    <div class="col-md-4">
                                        <div class="progress-circle <?php echo $timeWidth ?>">
                                            <span><?php echo $data ?></span>
                                            <div class="left-half-clipper">
                                                <div class="first50-bar"></div>
                                                <div class="value-bar"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6 sub_col">
                                        <h4><?php echo $data ?></h4>
                                        <h6>TODAY</h6>
                                        <div class="progress custom-progress">
                                            <div class="progress-bar custom-bar wow slideInLeft animated" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo getTimeWidth1() ?>"></div>
                                        </div>
                                        <hr>
                                    </div>
                                    <div class="col-md-6 sub_col">
                                        <h4><?php echo $weekdata ?></h4>
                                        <h6>THIS WEEK</h6>
                                        <div class="progress custom-progress">
                                            <div class="progress-bar custom-bar wow slideInLeft animated" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo getTimeWidth2() ?>"></div>
                                        </div>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6 sub_col">
                                        <h4><?php echo $mondata ?></h4>
                                        <h6>THIS MONTH</h6>
                                        <div class="progress custom-progress">
                                            <div class="progress-bar custom-bar wow slideInLeft animated" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo getTimeWidth3() ?>"></div>
                                        </div>
                                        <hr>
                                    </div>
                                    <div class="col-md-6 sub_col">
                                        <h4><?php echo $yeardata ?></h4>
                                        <h6>THIS YEAR</h6>
                                        <div class="progress custom-progress">
                                            <div class="progress-bar custom-bar wow slideInLeft animated" role="progressbar" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo getTimeWidth4() ?>"></div>
                                        </div>
                                        <hr>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 bg-white">
                        <div style="text-align: center;" class="col-md-12">
                            <h3 class="history_heading"><b>LOGIN HISTORY</b></h3>
                        </div>
                        <div class="table-responsive" data-toggle="lists" data-lists-values='["js-lists-values-employee-name"]'>
                            <table class="table mb-0 thead-border-top-0 table-striped">
                                <thead>
                                    <tr>
                                        <th style="width: 10%;" class="text-center">#ID</th>
                                        <th>User Name</th>
                                        <th>IP Address</th>
                                        <th style="width: 30%;" class="text-center">Date & Time</th>
                                    </tr>
                                </thead>
                                <tbody class="list" id="listingTable">
                                    <?php
                                    $sr = 1;
                                    $paging = getPaging('tbl_visitadmins', "WHERE 1 ORDER BY visit_date DESC", 10, $_REQUEST['page'], '?', $_GET['pager']);
                                    if ($rlist_pages = getList($paging[0])) {
                                        while ($row = fetch($rlist_pages)) {
                                            $visit_id = $row['visit_admin_id'];
                                    ?>
                                            <tr>
                                                <td>
                                                    <div class="badge badge-soft-dark">#<?= $sr ?></div>
                                                </td>
                                                <td>
                                                    <div class="d-flex align-items-center">
                                                        <div class="d-flex align-items-center">
                                                            <strong><?= getVisitorAdmin($visit_id); ?></strong>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div><a target="_blank" href="https://whatismyipaddress.com/ip/<?= $row['visit_ip_address'] ?>"><?= $row['visit_ip_address'] ?></a>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="badge badge-soft-dark"><?= $row['visit_date'] ?></div>
                                                </td>
                                            </tr>
                                    <?php
                                            $sr++;
                                        }
                                    }
                                    ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php include_once("pages/shared/sidebar.php"); ?>
    </div>
</div>