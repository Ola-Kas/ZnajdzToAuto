<footer>

<div class="d-flex justify-content-around pt-3">

<!-- sociale  -->
    <div id="socialSites" class="d-flex flex-column align-items-center">
        <h4>Odwiedź nas:</h4>
        <a href="https://www.facebook.com/"><i class="fab fa-facebook-square"></i> Facebook</a>
        <a href="https://www.instagram.com/?hl=pl"><i class="fab fa-instagram"></i> Instagram</a>
    </div>




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




<div class="text-center text-dark py-2">&copy;
<a href="<?php echo get_home_url(); ?>"><?php bloginfo('name'); ?> <?php echo date("Y"); ?></a> 
</div>
        
</footer>
    
    <?php wp_footer(); ?>
</body>
</html>