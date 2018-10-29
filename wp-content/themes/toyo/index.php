<?php 
    /*
        Template Name: Home
    */
    get_header();
?>


	<div id="home-news">
		<ul>
			<li><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/home-news.jpg" alt=""></a></li>
	</div>
	<div id="quickmenu">
		<div class="quick-box">
            <?php
                $home_menu_bottom = get_field('home_menu_bottom');
                foreach($home_menu_bottom as $item) {
            ?>
                <div class="col-sm-4 <?php echo $item['home_menu_bottom_class']; ?>">
                    <a href="<?php echo $item['home_menu_bottom_link']; ?>">
                        <p><?php echo $item['home_menu_bottom_title']; ?></p>
                        <img src="<?php echo $item['home_menu_bottom_image']; ?>" alt="<?php echo $item['home_menu_bottom_title']; ?>">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/img/blue.png" alt="" class="light">
                    </a>
                </div>
            <?php
                }
            ?>
		
		</div>
	</div>


<?php
    get_footer();
?>