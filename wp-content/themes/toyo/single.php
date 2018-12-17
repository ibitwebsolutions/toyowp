<?php
get_header();

?>
<style>
    .page-body img {
        width: 100%;
        height: auto;
    }
</style>
<section style="height: auto;">
    <article>
        <div class="page">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <p class="page-title">News</p>
                    </div>
                </div>
            </div>
            <div class="page-body" style="overflow: auto;">
                <div class="container">
                    <div class="col-md-8">
                        <h2><?php the_title(); ?></h2>
                        <span><?php the_field('news_date'); ?></span>
                        <br>
                        <?php
                            while ( have_posts() ) :
                            the_post();
                        ?>
                        <br>
                            <?php the_content(); ?>
                            
                        <?php
                            endwhile;
                        ?>
                    </div>
                    

                    <div class="col-md-4 col-xs-12">
                        <div class="col-xs-12 news-about">
                            <h3 class="title">Related News</h3>
                            <div class="slide-box">
                                <div class="newsmini-slider">
                                    <?php
                                        $args = array(
                                            'post_type' => 'post'
                                        );

                                        $the_query = new WP_Query( $args );
                                        if ( $the_query->have_posts() ) {
                                            while ( $the_query->have_posts() ) {
                                                $the_query->the_post();
                                    ?>
                                    <div>
                                        <div class="news-box row">
                                            <img data-lazy="<?php echo the_field('slide_image'); ?>" class="news-bg" alt="">
                                            <div class="col-md-12">
                                                <a href="<?php the_permalink(); ?>">
                                                    <img class="img-responsive item-img" data-lazy="<?php echo the_field('slide_image'); ?>" alt="">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <?php
                                            }
                                        }
                                    ?>
                                </div>
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