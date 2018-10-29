<?php
    /*
    * Template Name: Registration Form
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
                            <?php echo do_shortcode('[user_registration_form id="106"]'); ?>
                        </div>
                    </div>
                </div>
            </div>
    </article>
</section>
<?php get_footer(); ?>