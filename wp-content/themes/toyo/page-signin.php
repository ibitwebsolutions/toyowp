<?php
    /*
    * Template Name: Login Form
    */
    get_header();
?>
<section>
    <article>
        <div class="page">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <p class="page-title">Sign In</p>
                    </div>
                </div>
            </div>
            <div class="page-body">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-offset-4 col-sm-4 col-xs-12">
                            <?php echo do_shortcode('[ultimatemember form_id=138]'); ?>
                        </div>
                    </div>
                </div>
            </div>
    </article>
</section>
<?php get_footer(); ?>