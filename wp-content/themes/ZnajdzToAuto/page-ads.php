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
        <div class="container mt-5 ">
            <div class="row">
                <?php if ($ads_items->have_posts()) : while ($ads_items->have_posts()) : $ads_items->the_post() ?>
                <a href="<?php the_permalink(); ?>"><div class="col-lg-4 mb-3 mb-lg-0 mb-5">
                        <figure class="figure" style="height: 300px; width: 500px;">
                        <img src="<?php echo get_field('dodaj_zdjecie');?>" 
                            class="figure-img img-thumbnail img-fluid rounded" alt="<?php the_title(); ?>">
                            <figcaption class="figure-caption"><?php the_title(); ?></figcaption>
                              
                        </figure>
                    </div></a>
                <?php endwhile; ?>
                    <div class="pt-5 text-center"><p><?php posts_nav_link(); ?></p></div>
                <?php else : ?>    
                    <p class="text-muted text-center my-5">Brak wyników</p>
                <?php endif; ?>
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