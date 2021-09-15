<div class="mdk-drawer  js-mdk-drawer" id="default-drawer" data-align="start">
    <div class="mdk-drawer__content">
        <div class="sidebar sidebar-dark bg-dark sidebar-left sidebar-p-t" style="overflow:scroll" data-perfect-scrollbar>
            <ul class="sidebar-menu">
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'index' || $_REQUEST['page'] == '') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Dashboard</span>
                    </a>
                </li>
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'content_pages') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>content_pages">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">insert_drive_file</i>
                        <span class="sidebar-menu-text">Manage Pages</span>
                    </a>
                </li>

                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'text_hero' || $_REQUEST['page'] == 'slider' || $_REQUEST['page'] == 'text_team' || $_REQUEST['page'] == 'text_testimonials' || $_REQUEST['page'] == 'text_features' || $_REQUEST['page'] == 'text_newsletter' || $_REQUEST['page'] == 'text_client' || $_REQUEST['page'] == 'text_service' || $_REQUEST['page'] == 'text_portfolio' || $_REQUEST['page'] == 'text_about' || $_REQUEST['page'] == 'text_header' || $_REQUEST['page'] == 'text_footer' || $_REQUEST['page'] == 'text_contact') ? 'active' : ''; ?> ">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>text_header">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">pages</i>
                        <span class="sidebar-menu-text">Home Page</span>
                    </a>
                </li>

                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'text_stats' || $_REQUEST['page'] == 'text_washclub') ? 'active' : ''; ?> ">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>text_stats">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Sections</span>
                    </a>
                </li>

                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'testimonials') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>testimonials">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">list</i>
                        <span class="sidebar-menu-text">Testimonials</span>
                    </a>
                </li>


                <!--End Module-->
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'services') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>services">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Services</span>
                    </a>
                </li>
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'orders') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>orders">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">list</i>
                        <span class="sidebar-menu-text">Orders</span>
                    </a>
                </li>
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'portfolio' || $_REQUEST['page'] == 'categories') ? 'active open' : ''; ?> ">
                    <a class="sidebar-menu-button" data-toggle="collapse" href="#menu_portfolio">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dashboard</i>
                        <span class="sidebar-menu-text">Portfolio Gallery</span>
                        <span class="ml-auto sidebar-menu-toggle-icon"></span>
                    </a>
                    <ul class="sidebar-submenu collapse" id="menu_portfolio">
                        <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'portfolio') ? 'active' : ''; ?>">
                            <a class="sidebar-menu-button" href="<?= $apath; ?>portfolio">
                                <span class="sidebar-menu-text">Portfolio</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'categories') ? 'active' : ''; ?>">
                            <a class="sidebar-menu-button" href="<?= $apath; ?>categories">
                                <span class="sidebar-menu-text">Categories</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'gallery_photos' || $_REQUEST['page'] == 'gallery_videos') ? 'active open' : ''; ?> ">
                            <a class="sidebar-menu-button" data-toggle="collapse" href="#menu_gallery">
                                <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dashboard</i>
                                <span class="sidebar-menu-text">Gallery</span>
                                <span class="ml-auto sidebar-menu-toggle-icon"></span>
                            </a>
                            <ul class="sidebar-submenu collapse" id="menu_gallery">
                                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'gallery_photos') ? 'active' : ''; ?>">
                                    <a class="sidebar-menu-button" href="<?= $apath; ?>gallery_photos">
                                        <span class="sidebar-menu-text">Photos</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'gallery_videos') ? 'active' : ''; ?>">
                                    <a class="sidebar-menu-button" href="<?= $apath; ?>gallery_videos">
                                        <span class="sidebar-menu-text">Videos</span>
                                    </a>
                                </li>
                            </ul>
                        </li> -->
                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'services' || $_REQUEST['page'] == 'technologies') ? 'active open' : ''; ?> ">
                    <a class="sidebar-menu-button" data-toggle="collapse" href="#menu_services">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dashboard</i>
                        <span class="sidebar-menu-text">Manage Services</span>
                        <span class="ml-auto sidebar-menu-toggle-icon"></span>
                    </a>
                    <ul class="sidebar-submenu collapse" id="menu_services">
                        <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'services') ? 'active' : ''; ?>">
                            <a class="sidebar-menu-button" href="<?= $apath; ?>services">
                                <span class="sidebar-menu-text">Services</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'technologies') ? 'active' : ''; ?>">
                            <a class="sidebar-menu-button" href="<?= $apath; ?>technologies">
                                <span class="sidebar-menu-text">Technologies</span>
                            </a>
                        </li>
                    </ul>
                </li> -->
                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'news' || $_REQUEST['page'] == 'newscategories') ? 'active open' : ''; ?> ">
                            <a class="sidebar-menu-button" data-toggle="collapse" href="#menu_news">
                                <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dashboard</i>
                                <span class="sidebar-menu-text">Manage News</span>
                                <span class="ml-auto sidebar-menu-toggle-icon"></span>
                            </a>
                            <ul class="sidebar-submenu collapse" id="menu_news">
                                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'news') ? 'active' : ''; ?>">
                                    <a class="sidebar-menu-button" href="<?= $apath; ?>news">
                                        <span class="sidebar-menu-text">News</span>
                                    </a>
                                </li>
                                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'newscategories') ? 'active' : ''; ?>">
                                    <a class="sidebar-menu-button" href="<?= $apath; ?>newscategories">
                                        <span class="sidebar-menu-text">Categories</span>
                                    </a>
                                </li>
                            </ul>
                        </li> -->
                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'faq') ? 'active' : ''; ?>">
                            <a class="sidebar-menu-button" href="<?= $apath; ?>faq">
                                <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                                <span class="sidebar-menu-text">FAQ's</span>
                            </a>
                        </li> -->


                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'news') ? 'active' : ''; ?>">
                        <a class="sidebar-menu-button" href="<?= $apath; ?>news">
                            <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                            <span class="sidebar-menu-text">News</span>
                        </a>
                    </li> -->
                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'team') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>team">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Manage Team</span>
                    </a>
                </li> -->
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'pricing-list' || $_REQUEST['page'] == 'pakage_types') ? 'active open' : ''; ?> ">
                    <a class="sidebar-menu-button" data-toggle="collapse" href="#menu_pricing-list">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dashboard</i>
                        <span class="sidebar-menu-text">Pakages</span>
                        <span class="ml-auto sidebar-menu-toggle-icon"></span>
                    </a>
                    <ul class="sidebar-submenu collapse" id="menu_pricing-list">
                        <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'pricing-list') ? 'active' : ''; ?>">
                            <a class="sidebar-menu-button" href="<?= $apath; ?>pricing-list">
                                <span class="sidebar-menu-text">Pakage List</span>
                            </a>
                        </li>
                        <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'pakage_types') ? 'active' : ''; ?>">
                            <a class="sidebar-menu-button" href="<?= $apath; ?>pakage_types">
                                <span class="sidebar-menu-text">Pakage Types</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'pricing-list') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>pricing-list">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Pricing List</span>
                    </a>
                </li> -->
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'location') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>location">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">map</i>
                        <span class="sidebar-menu-text">Locations</span>
                    </a>
                </li>
                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'partners') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>partners">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Manage Partners</span>
                    </a>
                </li> -->
                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'email') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>email">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Emails Templates</span>
                    </a>
                </li> -->
                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'subscribers') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>subscribers">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Subscribers</span>
                    </a>
                </li> -->
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'email' || $_REQUEST['page'] == 'site_backup' || $_REQUEST['page'] == 'site_settings' || $_REQUEST['page'] == 'site_contact' || $_REQUEST['page'] == 'site_email' || $_REQUEST['page'] == 'site_smtp' || $_REQUEST['page'] == 'site_meta' || $_REQUEST['page'] == 'site_scripts' || $_REQUEST['page'] == 'site_social' || $_REQUEST['page'] == 'site_captcha') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>site_settings">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">settings</i>
                        <span class="sidebar-menu-text">Settings</span>
                    </a>
                </li>
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'index' || $_REQUEST['page'] == '') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>logout">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">power_settings_new</i>
                        <span class="sidebar-menu-text">Logout</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>