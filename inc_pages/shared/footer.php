  <!-- CALL TO ACTION START (call-to-action-6) -->
  <?php
    $footer_qry = getTable('tbl_texts', " `txt_type` = 'footer' ");
    $footer = unserialize(stripslashes($footer_qry['txt_data']));
    ?>
  <div class="ltn__call-to-action-area call-to-action-6 before-bg-bottom wow animated fadeIn" data-wow-duration="1s" data-wow-delay="1s">
      <div class="container">
          <div class="row">
              <div class="col-lg-12">
                  <div class="call-to-action-inner call-to-action-inner-6 ltn__secondary-bg position-relative text-center---">
                      <div class="coll-to-info text-color-white">
                          <h1>Looking for a dream home?</h1>
                          <p>We help you make the dream of new house a reality</p>
                      </div>
                      <div class="btn-wrapper">
                          <a class="btn btn-effect-3 btn-white" href="<?= $path ?>properties">Explore Properties <i class="icon-next"></i></a>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- CALL TO ACTION END -->

  <!-- FOOTER AREA START -->
  <footer class="ltn__footer-area  ">
      <div class="footer-top-area  section-bg-2 plr--5">
          <div class="container">
              <div class="row">
                  <div class="col-xl-5 col-md-5 col-sm-6 col-12">
                      <div class="footer-widget footer-about-widget">
                          <div class="footer-logo">
                              <div class="site-logo">
                                  <img src="<?= $path ?>uploads/logo/<?= $site_logo ?>" alt="Logo">
                              </div>
                          </div>
                          <p><?= $footer['desc'] ?></p>
                          <div class="footer-address">
                              <ul>
                                  <li>
                                      <div class="footer-address-icon">
                                          <i class="icon-placeholder"></i>
                                      </div>
                                      <div class="footer-address-info">
                                          <p><?= $site_address ?></p>
                                      </div>
                                  </li>
                                  <li>
                                      <div class="footer-address-icon">
                                          <i class="icon-call"></i>
                                      </div>
                                      <div class="footer-address-info">
                                          <p><a href="tel:<?= $site_phone ?>"><?= $site_phone ?></a></p>
                                      </div>
                                  </li>
                                  <li>
                                      <div class="footer-address-icon">
                                          <i class="icon-mail"></i>
                                      </div>
                                      <div class="footer-address-info">
                                          <p><a href="mailto:<?= $site_email ?>"><?= $site_email ?></a></p>
                                      </div>
                                  </li>
                              </ul>
                          </div>
                          <div class="ltn__social-media mt-20">
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
                  <div class="col-xl-7 col-md-7 col-sm-6 col-12">
                      <div class="row">
                          <div class="col-xl-6 col-md-6 col-sm-6 col-12">
                              <div class="footer-widget footer-menu-widget clearfix">
                                  <h4 class="footer-title">Company</h4>
                                  <div class="footer-menu">
                                      <ul>
                                          <li><a href="<?= $path ?>about">About</a></li>
                                          <li><a href="<?= $path ?>terms-conditions">Terms & Conditions</a></li>
                                          <li><a href="<?= $path ?>privacy-policy">Privacy Policy</a></li>
                                          <li><a href="<?= $path ?>contact">Contact</a></li>
                                      </ul>
                                  </div>
                              </div>
                          </div>
                          <div class="col-xl-6 col-md-6 col-sm-6 col-12">
                              <div class="footer-widget footer-menu-widget clearfix">
                                  <h4 class="footer-title">Properties</h4>
                                  <div class="footer-menu">
                                      <ul>
                                          <?php
                                            $p_qry =  "SELECT * FROM tbl_properties  WHERE prop_status='1' AND prop_featured='1' ORDER BY prop_order ASC LIMIT 5";
                                            $p_exe = $conn->query($p_qry) or die(mysqli_error($conn));
                                            while ($pro = $p_exe->fetch_array()) {
                                            ?>
                                              <li><a href="<?= $path ?>property/<?= $pro['prop_slug'] ?>"><?= $pro['prop_title'] ?></a></li>
                                          <?php } ?>
                                      </ul>
                                  </div>
                              </div>
                          </div>
                      </div>

                  </div>

              </div>
          </div>
      </div>
      <div class="ltn__copyright-area ltn__copyright-2 section-bg-7  plr--5">
          <div class="container ltn__border-top-2">
              <div class="row">
                  <div class="col-md-6 col-12">
                      <div class="ltn__copyright-design clearfix">
                          <p><?= $footer['text_copyright'] ?></p>
                      </div>
                  </div>
                  <div class="col-md-6 col-12 align-self-center">
                      <div class="ltn__copyright-menu text-end">
                          <p class="m-0">Made with &hearts; by <a href="https://zairone.com/"><strong>Zairone Solutions</strong></a></p>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </footer>
  <!-- FOOTER AREA END -->