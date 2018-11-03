<!DOCTYPE html>
<html lang="en">
<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
    <?php wp_head(); ?>
    <title><?php the_title(); ?></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <style>
        #menu-secondary-menu .menu-image-title {
            display: none;
        }
    </style>
    <script type="text/javascript">
        var templateUrl = '<?= get_bloginfo("template_url"); ?>/';
    </script>
</head>
<body>
	<header>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
                    <?php
                        $custom_logo_id = get_theme_mod( 'custom_logo' );
                        $image = wp_get_attachment_image_src( $custom_logo_id , 'full' );
                    ?>
					<div class="logo"><a href="<?php echo site_url(); ?>"><img src="<?php echo $image[0]; ?>" alt=""></a></div>
				</div>
				<div class="col-sm-9 desktop-menu">
					<div class="col-sm-12">
						<div class="top-menu">
                            <?php
                                wp_nav_menu( array(
                                    'menu'           => 'Secondary Menu',
                                    'theme-location' => 'secondary-menu'
                                ) );
                            ?>
						</div>
					</div>
					<div class="col-sm-12">
						<div id="menu">
                            <?php
                                wp_nav_menu( array(
                                    'menu'           => 'Primary Menu',
                                    'theme-location' => 'primary-menu'
                                ) );
                            ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>