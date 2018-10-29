<?php
    /*
    Template Name: About
    */
    get_header();
?>
<section>
		<article>
			<div class="page">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<p class="page-title"><?php the_title(); ?></p>
						</div>
					</div>
				</div>
				<div class="page-body">
					<div class="container">
						<div class="row">
							<div class="col-sm-8 col-xs-12">
                            <?php if ( have_posts() ) : while ( have_posts() ) : the_post();
                            the_content();
                            endwhile; else: ?>
                            <p>Sorry, no posts matched your criteria.</p>
                            <?php endif; ?>
							</div>

							<div class="col-sm-4 col-xs-12">
								<div class="col-xs-12">
									<h3 class="title">News</h3>
									<div class="news-box row">
										<?php
											$news = get_field('field_5bd281889aaac', 23);
                                            foreach($news as $item) {
                                        ?>
                                            <div class="col-md-6">
												<a href="<?php echo site_url().'/news/'; ?>">
													<img class="img-responsive" src="<?php echo $item['news_image'] ?>" alt="">
												</a>
											</div>
                                        <?php
                                            }
										?>
									</div>
									<h3 class="title">PROMOS</h3>
									<div class="news-box">
										<img src="assets/img/news.jpg" alt="">
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
?>