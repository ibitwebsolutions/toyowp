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
                                        <li><a href="#">BY SIZE</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <form action="#" class="col-sm-8 col-sm-offset-2 cars-form">
                                    <div class="input-group">
                                        <label for="#carbrand">Vehicle make</label>
                                        <select name="" id="maker"></select>
                                    </div>
                                    <div class="input-group">
                                        <label for="#carbrand">Models</label>
                                        <select name="" id="model"></select>
                                    </div>
                                   <!--  <div class="input-group">
                                        <label for="#carbrand">Tire size</label>
                                        <select name="" id="sizes"></select>
                                    </div> -->
                                    <input type="submit" value="Submit" class="btn btn-custom pull-right">
                                </form>
                            </div>
                            <div class="col-sm-6">
                                <div class="car-options">
                                    <div class="slide-box">
                                        <div class="car-select"></div>
                                        <a href="#" class="right-nav"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/right-nav.jpg" alt=""></a>
                                        <a href="#" class="left-nav"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/left-nav.jpg" alt=""></a>
                                    </div>

                                    <div class="car-thumb"></div>
                                </div>
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