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

                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'slider') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>slider">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">list</i>
                        <span class="sidebar-menu-text">Sliders</span>
                    </a>
                </li>

                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'testimonials') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>testimonials">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">list</i>
                        <span class="sidebar-menu-text">Testimonials</span>
                    </a>
                </li>


                <!--End Module-->
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'aminities') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>aminities">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Aminities</span>
                    </a>
                </li>
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'projects') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>projects">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Projects</span>
                    </a>
                </li>
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'properties') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>properties">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Properties</span>
                    </a>
                </li>

                <!-- <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'subscribers') ? 'active' : ''; ?>">
                    <a class="sidebar-menu-button" href="<?= $apath; ?>subscribers">
                        <i class="sidebar-menu-icons sidebar-menu-icon--left material-icons">dvr</i>
                        <span class="sidebar-menu-text">Subscribers</span>
                    </a>
                </li> -->
                <li class="sidebar-menu-item <?= ($_REQUEST['page'] == 'site_module' || $_REQUEST['page'] == 'email' || $_REQUEST['page'] == 'site_backup' || $_REQUEST['page'] == 'site_settings' || $_REQUEST['page'] == 'site_contact' || $_REQUEST['page'] == 'site_email' || $_REQUEST['page'] == 'site_smtp' || $_REQUEST['page'] == 'site_meta' || $_REQUEST['page'] == 'site_scripts' || $_REQUEST['page'] == 'site_social' || $_REQUEST['page'] == 'site_captcha') ? 'active' : ''; ?>">
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