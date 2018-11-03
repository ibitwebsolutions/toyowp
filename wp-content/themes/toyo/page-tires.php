<?php
    /*
    * Template Name: Tires
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
                                    <li><a href="<?php echo site_url(); ?>/cars/">BY VEHICLE</a></li>
                                    <li><a href="#" class="active">BY SIZE</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-sm-12 car-options carsearch-box">
                            <div class="col-sm-6 col-sm-push-6 col-xs-12 text-center">
                                <div class="chart-block">
                                    <h3 style="margin-top:0">HOW TO FIND YOUR TIRE SIZE</h3>
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/img/1-min.png" alt="" id="chart">
                                </div>
                                <div class="searchBlock">
                                    <form action="#" id="manual-searchForm" class="manualSearch" >
                                        <div class="input-group">
                                            <label for="#manualSearch">MANUAL SEARCH INPUT</label>
                                            <span>Note: This is for custom sizes</span>
                                            <input type="text" id="manualSearch" autocomplete="off">
                                            <ul class="suggestList"></ul>
                                            <input type="submit" value="Submit" id="submitmanual" class="btn custom-btn">
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-sm-6 col-sm-pull-6 col-xs-12">
                                <div class="size-box">
                                    <div class="size-options"></div>
                                </div>
                                <button class="sm-btn btn btn-custom pull-right btn-skip" id="skip">Skip</button>
                            </div>
                        </div>

                        <div class="col-sm-12 result-box" style="display: none">
                            <div class="result-title">
                                <p id="search-value">Isuzu MU-X</p>
                                <a href="#">Change</a>
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
<?php get_footer(); ?>