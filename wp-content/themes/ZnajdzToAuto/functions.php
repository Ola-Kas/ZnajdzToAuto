<?php

// Constants
    define('ROOT', get_template_directory_uri());
    define('IMAGES', ROOT . '/images');
    define('STYLES', ROOT . '/styles/css');
    define('SCRIPTS', ROOT . '/scripts');

    // Add styles
    function theme_styles() {
        wp_enqueue_style( 'bx-slider', STYLES . '/bx-slider.css' );
        wp_enqueue_style( 'styles', ROOT . '/style.css' );
    }
    add_action( 'wp_enqueue_scripts', 'theme_styles' );


    // Add scripts
    function theme_scripts() {
        wp_enqueue_script( 'bx-slider', SCRIPTS . '/bx-slider.min.js', array('jquery'), '1.0', true);
        wp_enqueue_script( 'scripts', SCRIPTS . '/scripts.js', array('jquery'), '1.0', true);
    }

    add_action( 'wp_enqueue_scripts', 'theme_scripts' );



    //Add menus

    function register_my_menus(){
        register_nav_menus(
            array(
                "main-menu" => "Main menu",
                "footer-menu" => "Footer menu"
            )
        );
    }
    
    add_action("init", "register_my_menus");



    // Enable post thumbnails
    add_theme_support( 'post-thumbnails' );

    
         // Add Custom Post Type
    function add_custom_post_types() {         
        $ads_args = array(
            'label'               => 'Ads',
            'labels'              => array('name' => 'Ads', 'menu_name' => 'Ads'),
            'supports'            => array( 'title', 'thumbnail', 'editor' ),
            'public'              => true,
            'exclude_from_search' => false,
            'menu_position'       => 20,
            'menu_icon'           => 'dashicons-admin-post',
            'taxonomies'          => array('ads_cats')
        );

        register_post_type( 'ads', $ads_args );
    }
    add_action( 'init', 'add_custom_post_types', 0);       