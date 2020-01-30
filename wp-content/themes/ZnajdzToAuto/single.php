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

                    <img src="<?php echo get_field('dodaj_zdjecie');?>" alt="<?php the_title(); ?>" class="img-fluid img-thumbnail mb-4">

                    <?php the_content(); ?>

                    <hr>



<!-- formularz kontaktowy do zamieszczajacego ogloszenie -->

<!-- pobieranie z ogłoszenia odpowiednich danych, czyli adresu email i nazwy ogłoszenia  -->
<div id="userEmail" class="d-none">
    <?php echo get_field( "podaj_email" ); ?>
</div>

<div id="adName" class="d-none">
    <?php the_title(); ?>
</div>


<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Skontaktuj się ze sprzedającym
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Utwórz wiadomość</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <?php echo do_shortcode('[contact-form-7 id="116" title="Formularz do ogłoszenia"]'); ?>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Zamknij</button>
      </div>
    </div>
  </div>
</div>












<!-- main page button -->
       <div class="button-container d-flex justify-content-center mt-5 mb-3">
            <a href="<?php echo get_home_url(); ?>">
                <button type="button" class="btn btn-warning btn-lg btn-block" style="width: 600px;">
                    Powrót na stronę główną</button>
            </a>    
        </div>



    </main>

<?php get_footer(); ?>