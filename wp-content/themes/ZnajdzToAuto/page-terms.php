<?php 
    /* Template Name: Terms */
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


       <!-- main page button -->
       <div class="button-container d-flex justify-content-center mb-3">
            <a href="<?php echo get_home_url(); ?>">
                <button type="button" class="btn btn-warning btn-lg btn-block" style="width: 600px;">
                    Powrót na stronę główną</button>
            </a>    
        </div>



    </main>



<?php 
    get_footer();
?>