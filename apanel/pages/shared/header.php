<?php
if ((!isset($_SESSION['admin_id']) || empty($_SESSION['admin_id'])) && $_REQUEST['page'] != 'login') {
    redirectTo('apanel/login');
    exit;
}
if ($_REQUEST['page'] != 'login') {
?>
    <div id="header" class="mdk-header js-mdk-header m-0" data-fixed>
        <div class="mdk-header__content">
            <div class="navbar navbar-expand-sm navbar-main navbar-light bg-white pr-0" id="navbar" data-primary>
                <div class="container-fluid p-0">
                    <!-- Navbar toggler -->
                    <button class="navbar-toggler navbar-toggler-right d-block d-lg-none" type="button" data-toggle="sidebar">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <!-- Navbar Brand -->
                    <a href="<?= $apath; ?>" class="navbar-brand">
                        <img src="<?= $path; ?>uploads/logo/<?= $site_logo; ?>" style="width:40px;" class="mr-3">
                        <span><?= $site_name; ?></span>
                    </a>

                    <ul class="nav navbar-nav ml-auto d-none d-md-flex">
                        <!-- <li class="nav-item dropdown">
                            <a href="#notifications_menu" class="nav-link dropdown-toggle" data-toggle="dropdown" data-caret="false">
                                <i class="material-icons nav-icon navbar-notifications-indicator">notifications</i>
                            </a>
                            <div id="notifications_menu" class="dropdown-menu dropdown-menu-right navbar-notifications-menu">
                                <div class="dropdown-item d-flex align-items-center py-2">
                                    <span class="flex navbar-notifications-menu__title m-0">Notifications</span>
                                    <a href="javascript:void(0)" class="text-muted"><small>Clear all</small></a>
                                </div>
                                <div class="navbar-notifications-menu__content" data-perfect-scrollbar>
                                    <div class="py-2">

                                        <div class="dropdown-item d-flex">
                                            <div class="mr-3">
                                                <div class="avatar avatar-sm" style="width: 32px; height: 32px;">
                                                    <img src="<?= $apath; ?>assets/images/256_daniel-gaffey-1060698-unsplash.jpg" alt="Avatar" class="avatar-img rounded-circle">
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <a href="#">A.Demian</a> left a comment on <a href="#">FlowDash</a><br>
                                                <small class="text-muted">1 minute ago</small>
                                            </div>
                                        </div>
                                        <div class="dropdown-item d-flex">
                                            <div class="mr-3">
                                                <a href="#">
                                                    <div class="avatar avatar-xs" style="width: 32px; height: 32px;">
                                                        <span class="avatar-title bg-purple rounded-circle"><i class="material-icons icon-16pt">person_add</i></span>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="flex">
                                                New user <a href="#">Peter Parker</a> signed up.<br>
                                                <small class="text-muted">1 hour ago</small>
                                            </div>
                                        </div>
                                        <div class="dropdown-item d-flex">
                                            <div class="mr-3">
                                                <a href="#">
                                                    <div class="avatar avatar-xs" style="width: 32px; height: 32px;">
                                                        <span class="avatar-title rounded-circle">JD</span>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="flex">
                                                <a href="#">Big Joe</a> <small class="text-muted">wrote:</small><br>
                                                <div>Hey, how are you? What about our next meeting</div>
                                                <small class="text-muted">2 minutes ago</small>
                                            </div>
                                        </div>

                                        <div class="dropdown-item d-flex">
                                            <div class="mr-3">
                                                <div class="avatar avatar-sm" style="width: 32px; height: 32px;">
                                                    <img src="<?= $apath; ?>assets/images/256_daniel-gaffey-1060698-unsplash.jpg" alt="Avatar" class="avatar-img rounded-circle">
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <a href="#">A.Demian</a> left a comment on <a href="#">FlowDash</a><br>
                                                <small class="text-muted">1 minute ago</small>
                                            </div>
                                        </div>
                                        <div class="dropdown-item d-flex">
                                            <div class="mr-3">
                                                <a href="#">
                                                    <div class="avatar avatar-xs" style="width: 32px; height: 32px;">
                                                        <span class="avatar-title bg-purple rounded-circle"><i class="material-icons icon-16pt">person_add</i></span>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="flex">
                                                New user <a href="#">Peter Parker</a> signed up.<br>
                                                <small class="text-muted">1 hour ago</small>
                                            </div>
                                        </div>
                                        <div class="dropdown-item d-flex">
                                            <div class="mr-3">
                                                <a href="#">
                                                    <div class="avatar avatar-xs" style="width: 32px; height: 32px;">
                                                        <span class="avatar-title rounded-circle">JD</span>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="flex">
                                                <a href="#">Big Joe</a> <small class="text-muted">wrote:</small><br>
                                                <div>Hey, how are you? What about our next meeting</div>
                                                <small class="text-muted">2 minutes ago</small>
                                            </div>
                                        </div>

                                        <div class="dropdown-item d-flex">
                                            <div class="mr-3">
                                                <div class="avatar avatar-sm" style="width: 32px; height: 32px;">
                                                    <img src="<?= $apath; ?>assets/images/256_daniel-gaffey-1060698-unsplash.jpg" alt="Avatar" class="avatar-img rounded-circle">
                                                </div>
                                            </div>
                                            <div class="flex">
                                                <a href="#">A.Demian</a> left a comment on <a href="#">FlowDash</a><br>
                                                <small class="text-muted">1 minute ago</small>
                                            </div>
                                        </div>
                                        <div class="dropdown-item d-flex">
                                            <div class="mr-3">
                                                <a href="#">
                                                    <div class="avatar avatar-xs" style="width: 32px; height: 32px;">
                                                        <span class="avatar-title bg-purple rounded-circle"><i class="material-icons icon-16pt">person_add</i></span>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="flex">
                                                New user <a href="#">Peter Parker</a> signed up.<br>
                                                <small class="text-muted">1 hour ago</small>
                                            </div>
                                        </div>
                                        <div class="dropdown-item d-flex">
                                            <div class="mr-3">
                                                <a href="#">
                                                    <div class="avatar avatar-xs" style="width: 32px; height: 32px;">
                                                        <span class="avatar-title rounded-circle">JD</span>
                                                    </div>
                                                </a>
                                            </div>
                                            <div class="flex">
                                                <a href="#">Big Joe</a> <small class="text-muted">wrote:</small><br>
                                                <div>Hey, how are you? What about our next meeting</div>
                                                <small class="text-muted">2 minutes ago</small>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <a href="javascript:void(0);" class="dropdown-item text-center navbar-notifications-menu__footer">View All</a>
                            </div>
                        </li> -->
                        <!--<li class="nav-item dropdown">-->
                        <!--    <a href="https://www.alexa.com/siteinfo/<?php echo $site_domain ?>" target="_blank" class="nav-link">-->
                        <!--        <i class="fa fa-map"></i> Alexa Ranking-->
                        <!--    </a>-->
                        <!--</li>-->
                        <li class="nav-item dropdown">
                            <a href="<?= $path; ?>" target="_blank" class="nav-link">
                                <i class="fa fa-globe"></i> Website Preview
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav d-none d-sm-flex border-left navbar-height align-items-center">
                        <li class="nav-item dropdown">
                            <a href="#account_menu" class="nav-link dropdown-toggle" data-toggle="dropdown" data-caret="false">
                                <span class="mr-1 d-flex-inline">
                                    <span class="text-light">Admin</span>
                                </span>
                                <img src="<?= $apath; ?>assets/images/avatar.png" class="rounded-circle" width="32" alt="Frontted">
                            </a>
                            <div id="account_menu" class="dropdown-menu dropdown-menu-right">
                                <div class="dropdown-item-text dropdown-item-text--lh">
                                    <div><strong>Administrator</strong></div>
                                    <!-- <div class="text-muted">@adriandemian</div> -->
                                </div>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<?= $apath; ?>"><i class="material-icons">dvr</i> Dashboard</a>
                                <a class="dropdown-item" href="<?= $apath; ?>change_password"><i class="material-icons">lock</i> Change Password</a>
                                <a class="dropdown-item" href="<?= $apath; ?>site_settings"><i class="fa fa-cog material-icons"></i> Settings</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="<?= $apath; ?>logout"><i class="material-icons">power_settings_new</i> Logout</a>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>

        </div>
    </div>

    <!-- 
    <header class="main-header">

        <a href="<?= $apath; ?>" class="logo">

            <span class="logo-mini"><b>AP</b></span>

            <span class="logo-lg"><b>Admin</b>Panel</span>

        </a>

        <nav class="navbar navbar-static-top" role="navigation">

            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">

                <span class="sr-only">Toggle navigation</span>

            </a>

            <div class="navbar-custom-menu">

                <ul class="nav navbar-nav">

                    <li class="dropdown user user-menu">

                        <a href="javascript:void(0);">

                            <i class="fa fa-user"></i> <span class="hidden-xs"> Admin</span>

                        </a>

                    </li>

                    <li class="dropdown user user-menu">

                        <a href="<?= $path; ?>" target="_blank" class="dropdown-toggle">

                            <i class="fa fa-arrow-right"></i> <span class="hidden-xs"> Visit Website</span>

                        </a>

                    </li>

                    <li class="dropdown user user-menu">

                        <a href="<?= $apath; ?>logout" class="dropdown-toggle">

                            <i class="fa fa-sign-out"></i> <span class="hidden-xs"> Sign Out</span>

                        </a>

                    </li>

                </ul>

            </div>

        </nav>

    </header> -->

<?php } ?>