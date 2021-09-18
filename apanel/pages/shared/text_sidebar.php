<ul class="list-group">
        <li <?= ($_REQUEST['page'] == 'text_header') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_header"><strong>Header</strong></a></li>
        <li <?= ($_REQUEST['page'] == 'text_facilities') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_facilities"><strong>Faciliities</strong></a></li>
        <li <?= ($_REQUEST['page'] == 'text_about') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_about"><strong>About</strong></a></li>
        <li <?= ($_REQUEST['page'] == 'text_footer') ? 'class="list_active"' : ''; ?> class="list-group-item"><a class="list_hover" href="<?= $apath; ?>text_footer"><strong>Footer</strong></a></li>
</ul>