<?php 
    /* Template Name: Ads */

    $ads_items = new WP_Query(array(
        "post_type" => "ads",
        "posts_per_page" => -1,
    ));

    get_header(); 
?>
    <main>
        <div class="container mt-5 ">
            <div class="row">
                <?php if ($ads_items->have_posts()) : while ($ads_items->have_posts()) : $ads_items->the_post() ?>
                    <div class="col-lg-4 col-md-6 mb-5">
                        <figure class="figure">
                            <img src="<?php echo get_the_post_thumbnail_url(); ?>" class="figure-img img-thumbnail img-fluid rounded" alt="<?php the_title(); ?>">
                            <figcaption class="figure-caption"><?php the_title(); ?></figcaption>
                        </figure>
                    </div>
                <?php endwhile; ?>
                    <div class="pt-5 text-center"><p><?php posts_nav_link(); ?></p></div>
                <?php else : ?>    
                    <p class="text-muted text-center my-5">Brak wyników</p>
                <?php endif; ?>
            </div>
        </div>
    </main>

<?php get_footer(); ?>