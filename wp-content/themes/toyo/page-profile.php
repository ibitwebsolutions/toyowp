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
                        <p class="page-title">Find your fit</p>
                    </div>
                </div>
            </div>
            <div class="page-body">
                <div class="container">
                    <div class="row">
                        <div class="col-md-offset-4 col-sm-4">
                            <?php echo do_shortcode('[ultimatemember form_id=139]'); ?>
                        </div>
                    </div>
                </div>
            </div>
    </article>
</section>
<?php get_footer(); ?>
