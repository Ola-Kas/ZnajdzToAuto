<?php 
    /* Template Name: Contact */
    the_post();
    get_header();
?>

<main>
        <div class="container py-5">
            <div class="row justify-content-between">
                <div class="col-lg-4">
                    <?php the_content(); ?>
                </div>

                <div class="col-lg-6 mt-4 mt-lg-0">
                    <h3 class="text-primary font-weight-normal mb-4">Formularz kontaktowy</h3>

                    <?php echo do_shortcode('[contact-form-7 id="78" title="Formularz 1"]'); ?>
                </div>
            </div>
        </div>
    </main>

<?php 
    get_footer();
?>