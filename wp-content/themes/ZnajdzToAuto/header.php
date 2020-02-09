<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php bloginfo('name'); wp_title('|'); ?></title>
    <?php wp_head(); ?>
</head>

<!-- header menu  -->

<body <?php body_class(); ?>>

    <header class="sticky-top">
    
        <div class="container">
            <div class="row justify-content-between py-4">
                <div class="col-md-3 text-center text-md-left mb-4 mb-md-0">
                    <a href="<?php echo get_home_url(); ?>" class="h1 font-weight-light">
                    <?php bloginfo('name'); ?> 
                    </a>
                </div>
                <div class="col-md-9 d-flex justify-content-center justify-content-md-end align-items-center">
                    <?php 
                        wp_nav_menu([
                            'theme_location' => 'main-menu',
                            'container' => 'ul',
                            'menu_class' => 'list-inline mb-0 btn btn-outline-light'
                        ]); 
                    ?>
                    <?php 
                        wp_nav_menu([
                            'theme_location' => 'header-menu',
                            'container' => 'ul',
                            'menu_class' => 'list-inline mb-0 btn btn btn-primary btn-lg ml-3'
                        ]); 
                    ?>
                </div>
            </div>
        </div>
    </header>


<!-- breadcrumbs  -->

    <?php if (!is_front_page()) : ?>
        <div id="page-header" class="text-white bg-dark font-weight-light d-flex align-items-center">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h1 class="font-weight-normal"><?php wp_title(""); ?></h1>
                        <div class="breadcrumbs">
                            <?php if(function_exists('bcn_display')) bcn_display(); ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif; ?>