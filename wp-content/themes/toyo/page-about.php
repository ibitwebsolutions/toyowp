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
							<div class="col-md-8  col-xs-12">
                            <?php if ( have_posts() ) : while ( have_posts() ) : the_post();
                            the_content();
                            endwhile; else: ?>
                            <p>Sorry, no posts matched your criteria.</p>
                            <?php endif; ?>
							</div>

							<div class="col-md-4 col-xs-12">
								<div class="col-xs-12 news-about">
									<h3 class="title">News</h3>
									<div class="slide-box">
										<div class="newsmini-slider">
											<?php
												$news = get_field('field_5bd281889aaac', 23);
		                                        foreach($news as $item) {
		                                    ?>
		                                    <div>
												<div class="news-box row">
													<img data-lazy="<?php echo $item['news_image'] ?>" class="news-bg" alt="">
			                                        <div class="col-md-12">
														<a href="<?php echo site_url().'/news/'; ?>">
															<img class="img-responsive item-img" data-lazy="<?php echo $item['news_image'] ?>" alt="">
														</a>
													</div>
												</div>
		                                    </div>
		                                    <?php
		                                        }
											?>
										</div>
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