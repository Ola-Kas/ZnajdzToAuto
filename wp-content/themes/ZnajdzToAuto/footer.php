<footer>

<div class="d-flex justify-content-around">

<!-- sociale  -->
    <div id="socialSites" class="d-flex flex-column align-items-center">
        <h4>Znajdź nas na:</h4>
        <a href="https://www.facebook.com/">Facebook</a>
        <a href="https://www.instagram.com/?hl=pl">Instagram</a>
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


<div class="text-center text-muted py-4">&copy; <?php bloginfo('name'); ?> <?php echo date("Y"); ?></div>
        
</footer>
    
    <?php wp_footer(); ?>
</body>
</html>