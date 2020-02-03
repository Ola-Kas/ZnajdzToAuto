<?php 
    /* Template Name: Ads */

    $ads_items = new WP_Query(array(
        "post_type" => "advertisement",
        // "posts_per_page" => -1, to wyswietla wszystkie, a nam zalezy zeby bylo mniej i ewentualnie paginacja
        //standardowo WP ma wyswietlania 10, wiec mozna nad tym popracowac
    ));
    
    get_header(); 
?>
    <main>
        <div class="container mb-5">
            <?php if ($ads_items->have_posts()) : while ($ads_items->have_posts()) : $ads_items->the_post() ?>
                <div class="row mt-5">
                    <div class="col-lg-4 mb-3 mb-lg-0">
                        <a href="<?php the_permalink(); ?>"><img src="<?php echo get_field('dodaj_zdjecie');?>" alt="<?php the_title(); ?>" class="img-fluid img-thumbnail"></a>
                    </div>
                    <div class="col-lg-6">
                        <a href="<?php the_permalink(); ?>"><h2><?php the_title(); ?></h2></a>

                        <div class="text-muted py-1 my-3 border-top border-bottom">
                            Opublikowano: <?php the_date("d.m.Y"); ?> | Autor: <a href="<?php echo get_author_posts_url(get_the_author_meta('ID')); ?>"><?php echo get_the_author_meta("display_name"); ?></a>
                        </div>

                        <?php the_excerpt(); ?>

                        <a href="<?php the_permalink(); ?>" class="btn btn-primary">Czytaj więcej</a>
                    </div>
                </div>
                <?php endwhile; ?>
                    <div class="pt-5 text-center"><p><?php posts_nav_link(); ?></p></div>
                <?php else : ?>    
                    <p class="text-muted text-center my-5">Brak wyników</p>
                <?php endif; ?>
            </div>
        </div>



<!-- back to main page button -->

    <div class="button-container d-flex justify-content-center mt-5 mb-3">
        <a href="<?php echo get_home_url(); ?>">
            <button type="button" class="btn btn-outline-primary btn-lg">
            Powrót na stronę główną</button>
        </a>    
    </div>


</main>

<?php get_footer(); ?>