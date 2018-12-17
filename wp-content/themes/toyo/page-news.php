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
                            <!-- <div class="col-sm-12 news-title">
                                <div class="pull-left">
                                    <h2 class="title">Berlin 2018 Compilation</h2>
                                    <span class="date">August 30, 2018</span>
                                </div>
                            </div> -->

                            <div class="col-sm-12 news-body">
                                <div class="slide-box">
                                        <?php
                                            $args = array(
                                                'post_type' => 'post'
                                            );
                                            $the_query = new WP_Query( $args );
                                            if ( $the_query->have_posts() ) {
                                                echo '<div class="news-slider">';
                                                while ( $the_query->have_posts() ) {
                                                    $the_query->the_post();
                                        ?>
                                            <div class="col-md-6  news-box">
                                                <a href="<?php the_permalink(); ?>">
                                                    <h3 class="title"><?php the_title(); ?></h3>        
                                                    <div style="background-image:url('<?php echo the_field('slide_image'); ?>')" class="news-bg"></div>
                                                    <img data-lazy="<?php echo the_field('slide_image'); ?>" alt="" class="item-img">
                                                </a>
                                            </div>
                                        <?php
                                                }
                                                echo '</div>';
                                                echo '<a href="#" class="right-nav prev"><img src="'.get_template_directory_uri().'/assets/img/right-nav.jpg" alt=""></a>';
                                                echo '<a href="#" class="left-nav next"><img src="'.get_template_directory_uri().'/assets/img/left-nav.jpg" alt=""></a>';
                                            } else {
                                                echo 'No News Found!';
                                            }
                                        ?>
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