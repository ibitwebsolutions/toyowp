<?php
		/*
		*	Template Name: News
		*/
		get_header();
?>
    <section>
        <article>
            <div class="page">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <p class="page-title">News</p>
                        </div>
                    </div>
                </div>
                <div class="page-body">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-12 news-title">
                                <div class="pull-left">
                                    <h2 class="title">Berlin 2018 Compilation</h2>
                                    <span class="date">August 30, 2018</span>
                                </div>
                            </div>

                            <div class="col-sm-12 news-body">
                                <div class="slide-box">
                                    <div class="news-slider">
                                        <?php
                                            $news = get_field('field_5bd281889aaac');
                                            foreach($news as $item) {
                                        ?>
                                            <div class="col-md-6  news-box">
                                                <div style="background-image:url('<?php echo $item['news_image'] ?>')" class="news-bg"></div>
                                                <img data-lazy="<?php echo $item['news_image'] ?>" alt="" class="item-img">
                                            </div>
                                        <?php
                                            }
                                        ?>
                                    </div>
                                    <a href="#" class="right-nav prev"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/right-nav.jpg" alt=""></a>
                                    <a href="#" class="left-nav next"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/left-nav.jpg" alt=""></a>
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