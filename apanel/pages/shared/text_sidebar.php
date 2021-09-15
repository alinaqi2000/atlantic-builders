<ul class="list-group">
    <li <?= ($_REQUEST['page'] == 'text_header') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_header"><strong>Header</strong></a></li>
    <li <?= ($_REQUEST['page'] == 'text_hero') ? 'class="list_active"' : ''; ?> class="list-group-item check_list"><a class="list_hover" href="<?= $apath; ?>text_hero"><strong>Banner</strong></a></li>
    <li <?= ($_REQUEST['page'] == 'text_portfolio') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_portfolio"><strong>Portfolio</strong></a></li>
    <li <?= ($_REQUEST['page'] == 'text_about') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_about"><strong>About</strong></a></li>
    <li <?= ($_REQUEST['page'] == 'text_service') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_service"><strong>Service</strong></a></li>
    <!-- <li <?= ($_REQUEST['page'] == 'text_client') ? 'class="list_active"' : ''; ?> class="list-group-item"><a
            class="list_hover" href="<?= $apath; ?>text_client"><strong>Client</strong></a></li> -->
    <!-- <li <?= ($_REQUEST['page'] == 'text_contact') ? 'class="list_active"' : ''; ?> class="list-group-item"><a
            class="list_hover" href="<?= $apath; ?>text_contact"><strong>Conatct</strong></a></li> -->
    <li <?= ($_REQUEST['page'] == 'text_testimonials') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_testimonials"><strong>Testimonial</strong></a></li>
    <li <?= ($_REQUEST['page'] == 'text_newsletter') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_newsletter"><strong>Newsletter</strong></a></li>
    <li <?= ($_REQUEST['page'] == 'text_features') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_features"><strong>Features</strong></a></li>
    <li <?= ($_REQUEST['page'] == 'text_footer') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_footer"><strong>Footer</strong></a></li>
</ul>