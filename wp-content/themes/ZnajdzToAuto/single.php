<?php   
    the_post();
    get_header(); 
?>

    <main>
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-muted py-1 mb-3 border-top border-bottom">
                        Opublikowano: <?php the_date("d.m.Y"); ?> | Autor: <a href="<?php echo get_author_posts_url(get_the_author_meta('ID')); ?>"><?php echo get_the_author_meta("display_name"); ?></a>
                    </div>

                    <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php the_title(); ?>" class="img-fluid img-thumbnail mb-4">

                    <?php the_content(); ?>

                    <hr>

                    <!-- formularz kontaktowy do zamieszczajacego ogloszenie -->
                    <div class="col-lg-6 mt-4 mt-lg-0">
                    <h3 class="text-primary font-weight-normal mb-4">Skontaktuj się ze sprzedawcą:</h3>

                    <?php echo do_shortcode('[contact-form-7 id="116" title="Formularz do ogłoszenia"]'); ?>
                </div>



                </div>
            </div>
        </div>

       <!-- main page button -->
       <div class="button-container d-flex justify-content-center mb-3">
            <a href="<?php echo get_home_url(); ?>">
                <button type="button" class="btn btn-warning btn-lg btn-block" style="width: 600px;">
                    Powrót na stronę główną</button>
            </a>    
        </div>



    </main>

<?php get_footer(); ?>