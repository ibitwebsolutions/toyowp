<?php

function register_plugin_styles() {
    wp_enqueue_style( 'custom', get_template_directory_uri().'/assets/css/styles.css');
    // wp_enqueue_script( 'bootstrap', get_stylesheet_directory_uri() . '/assets/plugins/bootstrap/js/bootstrap.min.js', array( 'jquery' ), null, true );
    // wp_enqueue_script( 'lazyload', get_stylesheet_directory_uri() . '/assets/plugins/lazyload/lazyload.min.js',array( 'jquery' ), null, true  );
    wp_enqueue_script( 'custom', get_stylesheet_directory_uri() . '/assets/js/index.js',null, null, true );
}

function load_custom_scripts() {
  wp_deregister_script( 'jquery' );
  wp_register_script('jquery', get_stylesheet_directory_uri() . '/assets/plugins/jquery/jquery.js', array(), '2.2.4', true);
  wp_enqueue_script( 'jquery' );
}


function register_my_menu() {
  register_nav_menus(
    array(
      'primary-menu' => __( 'Primary Menu' ),
      'secondary-menu' => __( 'Secondary Menu' )
    )
  );
}  

function theme_prefix_setup() {
	
	add_theme_support( 'custom-logo', array(
		'height'      => 100,
		'width'       => 400,
		'flex-width' => true,
	) );

}
add_action( 'after_setup_theme', 'theme_prefix_setup' );
add_action( 'after_setup_theme', 'register_my_menu' );
add_action( 'wp_enqueue_scripts', 'register_plugin_styles' );
if(!is_admin()) {
  add_action('wp_enqueue_scripts', 'load_custom_scripts', 99);
}


function wpdocs_register_my_custom_menu_page() {
  add_menu_page(
      __( 'Custom Menu Title', 'textdomain' ),
      'Pattern',
      'manage_options',
      'toyo-api/maker.php',
      '',
      'dashicons-art',
      null
  );

  add_menu_page(
      __( 'Custom Menu Title', 'textdomain' ),
      'Cars',
      'manage_options',
      'toyo-api/cars.php',
      '',
      'dashicons-admin-network',
      null
  );
}

add_action( 'admin_menu', 'wpdocs_register_my_custom_menu_page' );