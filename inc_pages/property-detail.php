<?php
$pageid = $_REQUEST['page'];
$paging =  "SELECT * FROM tbl_pages WHERE page_name='$pageid'";
$exe = $conn->query($paging) or die(mysqli_error($conn));
$page = $exe->fetch_assoc();
?>
<!-- BREADCRUMB AREA START -->
<div class="ltn__breadcrumb-area text-left bg-overlay-white-30 bg-image " data-bs-bg="<?= $path ?>assets/img/bg/14.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="ltn__breadcrumb-inner">
                    <h1 class="page-title">New Apartment Nice View</h1>
                    <div class="ltn__breadcrumb-list">
                        <ul>
                            <li><a href="<?php echo $path ?>"><span class="ltn__secondary-color"><i class="fas fa-home"></i></span> Home</a></li>
                            <li>Property Details</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- BREADCRUMB AREA END -->

<!--====== Start service-area Section ======-->


<!-- IMAGE SLIDER AREA START (img-slider-3) -->
<div class="ltn__img-slider-area mb-90">
    <div class="container-fluid">
        <div class="row ltn__image-slider-5-active slick-arrow-1 slick-arrow-1-inner ltn__no-gutter-all">
            <div class="col-lg-12">
                <div class="ltn__img-slide-item-4">
                    <a href="<?= $path ?>assets/img/img-slide/31.jpg" data-rel="lightcase:myCollection">
                        <img src="<?= $path ?>assets/img/img-slide/31.jpg" alt="Image">
                    </a>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="ltn__img-slide-item-4">
                    <a href="<?= $path ?>assets/img/img-slide/32.jpg" data-rel="lightcase:myCollection">
                        <img src="<?= $path ?>assets/img/img-slide/32.jpg" alt="Image">
                    </a>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="ltn__img-slide-item-4">
                    <a href="<?= $path ?>assets/img/img-slide/33.jpg" data-rel="lightcase:myCollection">
                        <img src="<?= $path ?>assets/img/img-slide/33.jpg" alt="Image">
                    </a>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="ltn__img-slide-item-4">
                    <a href="<?= $path ?>assets/img/img-slide/34.jpg" data-rel="lightcase:myCollection">
                        <img src="<?= $path ?>assets/img/img-slide/34.jpg" alt="Image">
                    </a>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="ltn__img-slide-item-4">
                    <a href="<?= $path ?>assets/img/img-slide/35.jpg" data-rel="lightcase:myCollection">
                        <img src="<?= $path ?>assets/img/img-slide/35.jpg" alt="Image">
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- IMAGE SLIDER AREA END -->

<!-- SHOP DETAILS AREA START -->
<div class="ltn__shop-details-area pb-10">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <div class="ltn__shop-details-inner ltn__page-details-inner mb-60">
                    <div class="ltn__blog-meta">
                        <ul>
                            <li class="ltn__blog-category">
                                <a href="#">Featured</a>
                            </li>
                            <li class="ltn__blog-category">
                                <a class="bg-orange" href="#">For Rent</a>
                            </li>
                            <li class="ltn__blog-date">
                                <i class="far fa-calendar-alt"></i>May 19, 2021
                            </li>

                        </ul>
                    </div>
                    <h1>Diamond Manor Apartment</h1>
                    <label><span class="ltn__secondary-color"><i class="flaticon-pin"></i></span> Belmont Gardens, Chicago</label>
                    <h4 class="title-2">Description</h4>
                    <p>Massa tempor nec feugiat nisl pretium. Egestas fringilla phasellus faucibus scelerisque eleifend donec
                        Porta nibh venenatis cras sed felis eget velit aliquet. Neque volutpat ac tincidunt vitae semper
                        quis lectus. Turpis in eu mi bibendum neque egestas congue quisque. Sed elementum tempus egestas
                        sed sed risus pretium quam. Dignissim sodales ut eu sem. Nibh mauris cursus mattis molestee
                        iaculis at erat pellentesque. Id interdum velit laoreet id donec ultrices tincidunt.</p>
                    <p>To the left is the modern kitchen with central island, leading through to the unique breakfast family room which feature glass walls and doors out onto the garden and access to the separate utility room.</p>



                    <div class="ltn__shop-details-tab-content-inner--- ltn__shop-details-tab-inner-2 ltn__product-details-review-inner mb-60">
                        <h4 class="title-2">Get a Quote</h4>


                        <!-- comment-reply -->
                        <div class="ltn__comment-reply-area ltn__form-box mb-30">
                            <form action="#">
                                <div class="input-item input-item-textarea ltn__custom-icon">
                                    <textarea placeholder="Type your comments...."></textarea>
                                </div>
                                <div class="input-item input-item-name ltn__custom-icon">
                                    <input type="text" placeholder="Type your name....">
                                </div>
                                <div class="input-item input-item-email ltn__custom-icon">
                                    <input type="email" placeholder="Type your email....">
                                </div>
                                <div class="input-item input-item-website ltn__custom-icon">
                                    <input type="text" name="website" placeholder="Type your website....">
                                </div>
                                <!-- <label class="mb-0"><input type="checkbox" name="agree"> Save my name, email, and website in this browser for the next time I comment.</label> -->
                                <div class="btn-wrapper">
                                    <button class="btn theme-btn-1 btn-effect-1 text-uppercase" type="submit">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <h4 class="title-2">Related Properties</h4>
                    <div class="row">
                        <!-- ltn__product-item -->
                        <div class="col-xl-6 col-dm-6 col-12 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                            <div class="ltn__product-item ltn__product-item-4 text-center---">
                                <div class="product-img">
                                    <a href="<?= $path ?>property_detail"><img src="<?= $path ?>assets/img/product-3/1.jpg" alt="#"></a>
                                    <div class="product-badge">
                                        <ul>
                                            <li class="sale-badge bg-green">For Rent</li>
                                        </ul>
                                    </div>
                                    <div class="product-img-location-gallery">
                                        <div class="product-img-location">
                                            <ul>
                                                <li>
                                                    <a href="locations.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-info">

                                    <h2 class="product-title"><a href="<?= $path ?>property_detail">New Apartment Nice View</a></h2>
                                    <div class="product-description">
                                        <p>Beautiful Huge 1 Family House In Heart Of <br>
                                            Westbury. Newly Renovated With New Wood</p>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <!-- ltn__product-item -->
                        <div class="col-xl-6 col-dm-6 col-12 wow animated zoomIn" data-wow-duration="1s" data-wow-delay="1s">
                            <div class="ltn__product-item ltn__product-item-4 text-center---">
                                <div class="product-img">
                                    <a href="<?= $path ?>property_detail"><img src="<?= $path ?>assets/img/product-3/2.jpg" alt="#"></a>
                                    <div class="product-badge">
                                        <ul>
                                            <li class="sale-badge bg-green---">For Sale</li>
                                        </ul>
                                    </div>
                                    <div class="product-img-location-gallery">
                                        <div class="product-img-location">
                                            <ul>
                                                <li>
                                                    <a href="locations.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-info">

                                    <h2 class="product-title"><a href="<?= $path ?>property_detail">Modern Apartments</a></h2>
                                    <div class="product-description">
                                        <p>Beautiful Huge 1 Family House In Heart Of <br>
                                            Westbury. Newly Renovated With New Wood</p>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <!-- ltn__product-item -->
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <aside class="sidebar ltn__shop-sidebar ltn__right-sidebar---">
                    <!-- Author Widget -->
                    <!-- <div class="widget ltn__author-widget">
                        <div class="ltn__author-widget-inner text-center">
                            <img src="<?= $path ?>assets/img/team/4.jpg" alt="Image">
                            <h5>Rosalina D. Willaimson</h5>
                            <small>Traveller/Photographer</small>
                            <div class="product-ratting">
                                <ul>
                                    <li><a href="#"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#"><i class="fas fa-star"></i></a></li>
                                    <li><a href="#"><i class="fas fa-star-half-alt"></i></a></li>
                                    <li><a href="#"><i class="far fa-star"></i></a></li>
                                    <li class="review-total"> <a href="#"> ( 1 Reviews )</a></li>
                                </ul>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis distinctio, odio, eligendi suscipit reprehenderit atque.</p>
                            <div class="ltn__social-media">
                                <ul>
                                    <li><a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#" title="Linkedin"><i class="fab fa-linkedin"></i></a></li>

                                    <li><a href="#" title="Youtube"><i class="fab fa-youtube"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div> -->
                    <!-- Search Widget -->
                    <!-- <div class="widget ltn__search-widget">
                        <h4 class="ltn__widget-title ltn__widget-title-border-2">Search Objects</h4>
                        <form action="#">
                            <input type="text" name="search" placeholder="Search your keyword...">
                            <button type="submit"><i class="fas fa-search"></i></button>
                        </form>
                    </div> -->
                    <!-- Form Widget -->
                    <!-- <div class="widget ltn__form-widget">
                        <h4 class="ltn__widget-title ltn__widget-title-border-2">Drop Messege For Book</h4>
                        <form action="#">
                            <input type="text" name="yourname" placeholder="Your Name*">
                            <input type="text" name="youremail" placeholder="Your e-Mail*">
                            <textarea name="yourmessage" placeholder="Write Message..."></textarea>
                            <button type="submit" class="btn theme-btn-1">Send Messege</button>
                        </form>
                    </div> -->
                    <!-- Top Rated Product Widget -->
                    <!-- <div class="widget ltn__top-rated-product-widget">
                        <h4 class="ltn__widget-title ltn__widget-title-border-2">Top Rated Product</h4>
                        <ul>
                            <li>
                                <div class="top-rated-product-item clearfix">
                                    <div class="top-rated-product-img">
                                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product/1.png" alt="#"></a>
                                    </div>
                                    <div class="top-rated-product-info">
                                        <div class="product-ratting">
                                            <ul>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                            </ul>
                                        </div>
                                        <h6><a href="product-details.html">Luxury House In Greenville </a></h6>
                                        <div class="product-price">
                                            <span>$30,000.00</span>
                                            <del>$35,000.00</del>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="top-rated-product-item clearfix">
                                    <div class="top-rated-product-img">
                                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product/2.png" alt="#"></a>
                                    </div>
                                    <div class="top-rated-product-info">
                                        <div class="product-ratting">
                                            <ul>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                            </ul>
                                        </div>
                                        <h6><a href="product-details.html">Apartment with Subunits</a></h6>
                                        <div class="product-price">
                                            <span>$30,000.00</span>
                                            <del>$35,000.00</del>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="top-rated-product-item clearfix">
                                    <div class="top-rated-product-img">
                                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product/3.png" alt="#"></a>
                                    </div>
                                    <div class="top-rated-product-info">
                                        <div class="product-ratting">
                                            <ul>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star"></i></a></li>
                                                <li><a href="#"><i class="fas fa-star-half-alt"></i></a></li>
                                                <li><a href="#"><i class="far fa-star"></i></a></li>
                                            </ul>
                                        </div>
                                        <h6><a href="product-details.html">3 Rooms Manhattan</a></h6>
                                        <div class="product-price">
                                            <span>$30,000.00</span>
                                            <del>$35,000.00</del>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div> -->
                    <!-- Menu Widget (Category) -->
                    <!-- <div class="widget ltn__menu-widget ltn__menu-widget-2--- ltn__menu-widget-2-color-2---">
                        <h4 class="ltn__widget-title ltn__widget-title-border-2">Top Categories</h4>
                        <ul>
                            <li><a href="#">Apartments <span>(26)</span></a></li>
                            <li><a href="#">Picture Stodio <span>(30)</span></a></li>
                            <li><a href="#">Office <span>(71)</span></a></li>
                            <li><a href="#">Luxary Vilas <span>(56)</span></a></li>
                            <li><a href="#">Duplex House <span>(60)</span></a></li>
                        </ul>
                    </div> -->
                    <!-- Popular Product Widget -->
                    <div class="widget ltn__popular-product-widget">
                        <h4 class="ltn__widget-title ltn__widget-title-border-2">Popular Properties</h4>
                        <div class="row ltn__popular-product-widget-active slick-arrow-1">
                            <!-- ltn__product-item -->
                            <div class="col-12">
                                <div class="ltn__product-item ltn__product-item-4 ltn__product-item-5 text-center---">
                                    <div class="product-img">
                                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product-3/6.jpg" alt="#"></a>
                                        <div class="real-estate-agent">
                                            <div class="agent-img">
                                                <a href="team-details.html"><img src="<?= $path ?>assets/img/blog/author.jpg" alt="#"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-info">
                                        <div class="product-price">
                                            <span>$349,00<label>/Month</label></span>
                                        </div>
                                        <h2 class="product-title"><a href="product-details.html">New Apartment Nice View</a></h2>
                                        <div class="product-img-location">
                                            <ul>
                                                <li>
                                                    <a href="product-details.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <ul class="ltn__list-item-2--- ltn__list-item-2-before--- ltn__plot-brief">
                                            <li><span>3 </span>
                                                Bedrooms
                                            </li>
                                            <li><span>2 </span>
                                                Bathrooms
                                            </li>
                                            <li><span>3450 </span>
                                                square Ft
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- ltn__product-item -->
                            <div class="col-12">
                                <div class="ltn__product-item ltn__product-item-4 ltn__product-item-5 text-center---">
                                    <div class="product-img">
                                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product-3/4.jpg" alt="#"></a>
                                        <div class="real-estate-agent">
                                            <div class="agent-img">
                                                <a href="team-details.html"><img src="<?= $path ?>assets/img/blog/author.jpg" alt="#"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-info">
                                        <div class="product-price">
                                            <span>$349,00<label>/Month</label></span>
                                        </div>
                                        <h2 class="product-title"><a href="product-details.html">New Apartment Nice View</a></h2>
                                        <div class="product-img-location">
                                            <ul>
                                                <li>
                                                    <a href="product-details.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <ul class="ltn__list-item-2--- ltn__list-item-2-before--- ltn__plot-brief">
                                            <li><span>3 </span>
                                                Bedrooms
                                            </li>
                                            <li><span>2 </span>
                                                Bathrooms
                                            </li>
                                            <li><span>3450 </span>
                                                square Ft
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- ltn__product-item -->
                            <div class="col-12">
                                <div class="ltn__product-item ltn__product-item-4 ltn__product-item-5 text-center---">
                                    <div class="product-img">
                                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product-3/5.jpg" alt="#"></a>
                                        <div class="real-estate-agent">
                                            <div class="agent-img">
                                                <a href="team-details.html"><img src="<?= $path ?>assets/img/blog/author.jpg" alt="#"></a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-info">
                                        <div class="product-price">
                                            <span>$349,00<label>/Month</label></span>
                                        </div>
                                        <h2 class="product-title"><a href="product-details.html">New Apartment Nice View</a></h2>
                                        <div class="product-img-location">
                                            <ul>
                                                <li>
                                                    <a href="product-details.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <ul class="ltn__list-item-2--- ltn__list-item-2-before--- ltn__plot-brief">
                                            <li><span>3 </span>
                                                Bedrooms
                                            </li>
                                            <li><span>2 </span>
                                                Bathrooms
                                            </li>
                                            <li><span>3450 </span>
                                                square Ft
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!--  -->
                        </div>
                    </div>
                    <!-- Popular Post Widget -->
                    <!-- <div class="widget ltn__popular-post-widget">
                        <h4 class="ltn__widget-title ltn__widget-title-border-2">Leatest Blogs</h4>
                        <ul>
                            <li>
                                <div class="popular-post-widget-item clearfix">
                                    <div class="popular-post-widget-img">
                                        <a href="blog-details.html"><img src="<?= $path ?>assets/img/team/5.jpg" alt="#"></a>
                                    </div>
                                    <div class="popular-post-widget-brief">
                                        <h6><a href="blog-details.html">Lorem ipsum dolor sit
                                                cing elit, sed do.</a></h6>
                                        <div class="ltn__blog-meta">
                                            <ul>
                                                <li class="ltn__blog-date">
                                                    <a href="#"><i class="far fa-calendar-alt"></i>June 22, 2020</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="popular-post-widget-item clearfix">
                                    <div class="popular-post-widget-img">
                                        <a href="blog-details.html"><img src="<?= $path ?>assets/img/team/6.jpg" alt="#"></a>
                                    </div>
                                    <div class="popular-post-widget-brief">
                                        <h6><a href="blog-details.html">Lorem ipsum dolor sit
                                                cing elit, sed do.</a></h6>
                                        <div class="ltn__blog-meta">
                                            <ul>
                                                <li class="ltn__blog-date">
                                                    <a href="#"><i class="far fa-calendar-alt"></i>June 22, 2020</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="popular-post-widget-item clearfix">
                                    <div class="popular-post-widget-img">
                                        <a href="blog-details.html"><img src="<?= $path ?>assets/img/team/7.jpg" alt="#"></a>
                                    </div>
                                    <div class="popular-post-widget-brief">
                                        <h6><a href="blog-details.html">Lorem ipsum dolor sit
                                                cing elit, sed do.</a></h6>
                                        <div class="ltn__blog-meta">
                                            <ul>
                                                <li class="ltn__blog-date">
                                                    <a href="#"><i class="far fa-calendar-alt"></i>June 22, 2020</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="popular-post-widget-item clearfix">
                                    <div class="popular-post-widget-img">
                                        <a href="blog-details.html"><img src="<?= $path ?>assets/img/team/8.jpg" alt="#"></a>
                                    </div>
                                    <div class="popular-post-widget-brief">
                                        <h6><a href="blog-details.html">Lorem ipsum dolor sit
                                                cing elit, sed do.</a></h6>
                                        <div class="ltn__blog-meta">
                                            <ul>
                                                <li class="ltn__blog-date">
                                                    <a href="#"><i class="far fa-calendar-alt"></i>June 22, 2020</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div> -->
                    <!-- Social Media Widget -->
                    <!-- <div class="widget ltn__social-media-widget">
                        <h4 class="ltn__widget-title ltn__widget-title-border-2">Follow us</h4>
                        <div class="ltn__social-media-2">
                            <ul>
                                <li><a href="#" title="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#" title="Twitter"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#" title="Linkedin"><i class="fab fa-linkedin"></i></a></li>
                                <li><a href="#" title="Instagram"><i class="fab fa-instagram"></i></a></li>

                            </ul>
                        </div>
                    </div> -->
                    <!-- Tagcloud Widget -->
                    <!-- <div class="widget ltn__tagcloud-widget">
                        <h4 class="ltn__widget-title ltn__widget-title-border-2">Popular Tags</h4>
                        <ul>
                            <li><a href="#">Popular</a></li>
                            <li><a href="#">desgin</a></li>
                            <li><a href="#">ux</a></li>
                            <li><a href="#">usability</a></li>
                            <li><a href="#">develop</a></li>
                            <li><a href="#">icon</a></li>
                            <li><a href="#">Car</a></li>
                            <li><a href="#">Service</a></li>
                            <li><a href="#">Repairs</a></li>
                            <li><a href="#">Auto Parts</a></li>
                            <li><a href="#">Oil</a></li>
                            <li><a href="#">Dealer</a></li>
                            <li><a href="#">Oil Change</a></li>
                            <li><a href="#">Body Color</a></li>
                        </ul>
                    </div> -->
                    <!-- Banner Widget -->
                    <div class="widget ltn__banner-widget d-none">
                        <a href="shop.html"><img src="<?= $path ?>assets/img/banner/2.jpg" alt="#"></a>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</div>
<!-- SHOP DETAILS AREA END -->

<!-- PRODUCT SLIDER AREA START -->
<div class="ltn__product-slider-area ltn__product-gutter pb-70 d-none">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title-area ltn__section-title-2--- text-center---">
                    <h1 class="section-title">Related Properties</h1>
                </div>
            </div>
        </div>
        <div class="row ltn__related-product-slider-two-active slick-arrow-1">
            <!-- ltn__product-item -->
            <div class="col-xl-6 col-sm-6 col-12">
                <div class="ltn__product-item ltn__product-item-4 ltn__product-item-5 text-center---">
                    <div class="product-img">
                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product-3/1.jpg" alt="#"></a>
                        <div class="real-estate-agent">
                            <div class="agent-img">
                                <a href="team-details.html"><img src="<?= $path ?>assets/img/blog/author.jpg" alt="#"></a>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-badge">
                            <ul>
                                <li class="sale-badg">For Rent</li>
                            </ul>
                        </div>
                        <h2 class="product-title"><a href="product-details.html">New Apartment Nice View</a></h2>
                        <div class="product-img-location">
                            <ul>
                                <li>
                                    <a href="product-details.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="ltn__list-item-2--- ltn__list-item-2-before--- ltn__plot-brief">
                            <li><span>3 </span>
                                Bed
                            </li>
                            <li><span>2 </span>
                                Bath
                            </li>
                            <li><span>3450 </span>
                                Square Ft
                            </li>
                        </ul>
                        <div class="product-hover-action">
                            <ul>
                                <li>
                                    <a href="#" title="Quick View" data-bs-toggle="modal" data-bs-target="#quick_view_modal">
                                        <i class="flaticon-expand"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="Wishlist" data-bs-toggle="modal" data-bs-target="#liton_wishlist_modal">
                                        <i class="flaticon-heart-1"></i></a>
                                </li>
                                <li>
                                    <a href="portfolio-details.html" title="Compare">
                                        <i class="flaticon-add"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-info-bottom">
                        <div class="product-price">
                            <span>$349,00<label>/Month</label></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-xl-6 col-sm-6 col-12">
                <div class="ltn__product-item ltn__product-item-4 ltn__product-item-5 text-center---">
                    <div class="product-img">
                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product-3/2.jpg" alt="#"></a>
                        <div class="real-estate-agent">
                            <div class="agent-img">
                                <a href="team-details.html"><img src="<?= $path ?>assets/img/blog/author.jpg" alt="#"></a>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-badge">
                            <ul>
                                <li class="sale-badg">For Sale</li>
                            </ul>
                        </div>
                        <h2 class="product-title"><a href="product-details.html">New Apartment Nice View</a></h2>
                        <div class="product-img-location">
                            <ul>
                                <li>
                                    <a href="product-details.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="ltn__list-item-2--- ltn__list-item-2-before--- ltn__plot-brief">
                            <li><span>3 </span>
                                Bed
                            </li>
                            <li><span>2 </span>
                                Bath
                            </li>
                            <li><span>3450 </span>
                                Square Ft
                            </li>
                        </ul>
                        <div class="product-hover-action">
                            <ul>
                                <li>
                                    <a href="#" title="Quick View" data-bs-toggle="modal" data-bs-target="#quick_view_modal">
                                        <i class="flaticon-expand"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="Wishlist" data-bs-toggle="modal" data-bs-target="#liton_wishlist_modal">
                                        <i class="flaticon-heart-1"></i></a>
                                </li>
                                <li>
                                    <a href="portfolio-details.html" title="Compare">
                                        <i class="flaticon-add"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-info-bottom">
                        <div class="product-price">
                            <span>$349,00<label>/Month</label></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-xl-6 col-sm-6 col-12">
                <div class="ltn__product-item ltn__product-item-4 ltn__product-item-5 text-center---">
                    <div class="product-img">
                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product-3/3.jpg" alt="#"></a>
                        <div class="real-estate-agent">
                            <div class="agent-img">
                                <a href="team-details.html"><img src="<?= $path ?>assets/img/blog/author.jpg" alt="#"></a>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-badge">
                            <ul>
                                <li class="sale-badg">For Rent</li>
                            </ul>
                        </div>
                        <h2 class="product-title"><a href="product-details.html">New Apartment Nice View</a></h2>
                        <div class="product-img-location">
                            <ul>
                                <li>
                                    <a href="product-details.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="ltn__list-item-2--- ltn__list-item-2-before--- ltn__plot-brief">
                            <li><span>3 </span>
                                Bed
                            </li>
                            <li><span>2 </span>
                                Bath
                            </li>
                            <li><span>3450 </span>
                                Square Ft
                            </li>
                        </ul>
                        <div class="product-hover-action">
                            <ul>
                                <li>
                                    <a href="#" title="Quick View" data-bs-toggle="modal" data-bs-target="#quick_view_modal">
                                        <i class="flaticon-expand"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="Wishlist" data-bs-toggle="modal" data-bs-target="#liton_wishlist_modal">
                                        <i class="flaticon-heart-1"></i></a>
                                </li>
                                <li>
                                    <a href="portfolio-details.html" title="Compare">
                                        <i class="flaticon-add"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-info-bottom">
                        <div class="product-price">
                            <span>$349,00<label>/Month</label></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-xl-6 col-sm-6 col-12">
                <div class="ltn__product-item ltn__product-item-4 ltn__product-item-5 text-center---">
                    <div class="product-img">
                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product-3/4.jpg" alt="#"></a>
                        <div class="real-estate-agent">
                            <div class="agent-img">
                                <a href="team-details.html"><img src="<?= $path ?>assets/img/blog/author.jpg" alt="#"></a>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-badge">
                            <ul>
                                <li class="sale-badg">For Rent</li>
                            </ul>
                        </div>
                        <h2 class="product-title"><a href="product-details.html">New Apartment Nice View</a></h2>
                        <div class="product-img-location">
                            <ul>
                                <li>
                                    <a href="product-details.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="ltn__list-item-2--- ltn__list-item-2-before--- ltn__plot-brief">
                            <li><span>3 </span>
                                Bed
                            </li>
                            <li><span>2 </span>
                                Bath
                            </li>
                            <li><span>3450 </span>
                                Square Ft
                            </li>
                        </ul>
                        <div class="product-hover-action">
                            <ul>
                                <li>
                                    <a href="#" title="Quick View" data-bs-toggle="modal" data-bs-target="#quick_view_modal">
                                        <i class="flaticon-expand"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="Wishlist" data-bs-toggle="modal" data-bs-target="#liton_wishlist_modal">
                                        <i class="flaticon-heart-1"></i></a>
                                </li>
                                <li>
                                    <a href="portfolio-details.html" title="Compare">
                                        <i class="flaticon-add"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-info-bottom">
                        <div class="product-price">
                            <span>$349,00<label>/Month</label></span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ltn__product-item -->
            <div class="col-xl-6 col-sm-6 col-12">
                <div class="ltn__product-item ltn__product-item-4 ltn__product-item-5 text-center---">
                    <div class="product-img">
                        <a href="product-details.html"><img src="<?= $path ?>assets/img/product-3/5.jpg" alt="#"></a>
                        <div class="real-estate-agent">
                            <div class="agent-img">
                                <a href="team-details.html"><img src="<?= $path ?>assets/img/blog/author.jpg" alt="#"></a>
                            </div>
                        </div>
                    </div>
                    <div class="product-info">
                        <div class="product-badge">
                            <ul>
                                <li class="sale-badg">For Rent</li>
                            </ul>
                        </div>
                        <h2 class="product-title"><a href="product-details.html">New Apartment Nice View</a></h2>
                        <div class="product-img-location">
                            <ul>
                                <li>
                                    <a href="product-details.html"><i class="flaticon-pin"></i> Belmont Gardens, Chicago</a>
                                </li>
                            </ul>
                        </div>
                        <ul class="ltn__list-item-2--- ltn__list-item-2-before--- ltn__plot-brief">
                            <li><span>3 </span>
                                Bed
                            </li>
                            <li><span>2 </span>
                                Bath
                            </li>
                            <li><span>3450 </span>
                                Square Ft
                            </li>
                        </ul>
                        <div class="product-hover-action">
                            <ul>
                                <li>
                                    <a href="#" title="Quick View" data-bs-toggle="modal" data-bs-target="#quick_view_modal">
                                        <i class="flaticon-expand"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="Wishlist" data-bs-toggle="modal" data-bs-target="#liton_wishlist_modal">
                                        <i class="flaticon-heart-1"></i></a>
                                </li>
                                <li>
                                    <a href="portfolio-details.html" title="Compare">
                                        <i class="flaticon-add"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="product-info-bottom">
                        <div class="product-price">
                            <span>$349,00<label>/Month</label></span>
                        </div>
                    </div>
                </div>
            </div>
            <!--  -->
        </div>
    </div>
</div>
<!-- PRODUCT SLIDER AREA END -->