<?php
    /*
    Template Name: Contact
    */
    get_header();
?>
<section>
	<article>
		<div class="page">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<p class="page-title">Contact us</p>
					</div>
				</div>
			</div>
			<div class="page-body">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 col-xs-12 text-center contact">
						<?php if ( have_posts() ) : while ( have_posts() ) : the_post();
                            the_content();
                            endwhile; else: ?>
                            <p>Sorry, no posts matched your criteria.</p>
                            <?php endif; ?>
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