<?php 
    /* Template Name: About */
    the_post();
    get_header();
?>

    <main>
        <div class="container py-5">
            <div class="row">
            
                <?php if (get_the_post_thumbnail_url()) : ?>
                    <div class="col-lg-6">
                        <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="<?php the_title(); ?>" class="img-fluid img-thumbnail mb-4">
                    </div>
                <?php endif; ?>
                
                <div class="col-lg-6">
                    <?php the_content(); ?>
                </div>
            </div>
        </div>
    </main>

<?php get_footer(); ?>

<?php 
    get_footer();
?>