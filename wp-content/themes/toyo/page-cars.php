<?php
    /*
    *   Template Name: Cars
    */
    get_header();
?>
    <section>
        <article>
            <div class="page">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <p class="page-title">Find your fit</p>
                        </div>
                    </div>
                </div>
                <div class="page-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="pull-left">
                                    <ul class="size-select">
                                        <li><a href="#" class="active">BY VEHICLE</a></li>
                                        <li><a href="<?php echo site_url(); ?>/tires/">BY SIZE</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-12 carsearch-box">
                                <div class="col-sm-6">
                                    <form action="#" id="car-search" class="col-sm-8 col-sm-offset-2 cars-form">
                                        <div class="input-group">
                                            <label for="#carbrand">Vehicle make</label>
                                            <select name="" id="maker"></select>
                                        </div>
                                        <div class="input-group">
                                            <label for="#carbrand">Models</label>
                                            <select name="" id="model"></select>
                                        </div>
                                        <input type="submit" value="Submit" class="btn btn-custom pull-right">
                                    </form>
                                </div>
                                <div class="col-sm-6">
                                    <div class="car-options">
                                        <div class="slide-box">
                                            <div class="car-select"></div>
                                            <a href="#" class="right-nav rightmain"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/right-nav.jpg" alt=""></a>
                                            <a href="#" class="left-nav leftmain"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/left-nav.jpg" alt=""></a>
                                        </div>

                                        <div class="car-thumb"></div>
                                    </div>
                                </div>
                                </div>
                            </div>

                            <div class="col-sm-12 result-box" style="display: none">
                                <div class="result-title">
                                    <p id="search-value">Isuzu MU-X</p>
                                    <span id="sublist">4 result for Isuzu MU-X</span>
                                </div>
                                <div class="slide-box">
                                    <div class="result-slide"></div>
                                    <a href="#" class="right-nav rightNav"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/right-nav.jpg" alt=""></a>
                                    <a href="#" class="left-nav leftNav"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/left-nav.jpg" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </article>
    </section>
<?php
    get_footer();
?>