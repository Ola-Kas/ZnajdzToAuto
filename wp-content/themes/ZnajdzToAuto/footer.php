<footer>

<div class="d-flex justify-content-around pt-3">

<!-- sociale  -->
    <div id="socialSites" class="d-flex flex-column align-items-center">
        <h4>Znajdź nas na:</h4>
        <a href="https://www.facebook.com/">Facebook</a>
        <a href="https://www.instagram.com/?hl=pl">Instagram</a>
    </div>

<!-- ads list  -->
<a href="<?php the_field('button'); ?>">
            <button type="button" class="btn btn-primary btn-lg btn-block" style="width: 60px;">
                Zobacz ogłoszenia</button>
        </a>


<!-- our pages  -->
    <div id="ourSites" class="d-flex flex-column">
        <h4>ZnajdźToAuto:</h4>
        <div class="d-flex flex-column align-items-center">
            <?php 
                wp_nav_menu([
                    'theme_location' => 'footer-menu',
                    'container' => 'ul',
                    'menu_class' => 'list-inline mb-0'
                ]); 
            ?>
        </div>
    </div>

</div>       




<div class="text-center text-dark py-4">&copy;
<a href="<?php echo get_home_url(); ?>"><?php bloginfo('name'); ?> <?php echo date("Y"); ?></a> 
</div>
        
</footer>
    
    <?php wp_footer(); ?>
</body>
</html>