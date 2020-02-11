<?php  

/* Template Name: Addition */

get_header();
    // input variables
    $tytul = $_POST['tytul'];
    $zdjecie = $_POST['zdjecie'];
    $opis = $_POST['opis'];
    $email = $_POST['email'];
    $telefon = $_POST['telefon'];
    $nazwa = $_POST['nazwa'];
    $kategoria = $_POST['kategoria'];
    $my_file = $_FILES['fileToUpload'];

    if($tytul){
        $image = save_file($my_file);
        add_post($tytul, $opis, $nazwa, $email, $telefon, $kategoria, $image);
    };

?>
<!-- <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->
                <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
                <!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> -->
    <main>
            <div class="container mt-5">
              <strong><p style="font-size: 18px">Zaczynamy!</p></strong>
              <hr>
     
                <form action="<?php echo get_permalink(get_the_ID()); ?>" method="post" class="form-horizontal" enctype="multipart/form-data" onsubmit="<?php if (count($_POST)>0) '<script>echo alert("Ogłoszenie wypełnione pomyślnie, prosimy czekać na publikację!")</script>';?>">
                    <div class="form-group row my-1">
                    <label class="col-sm-2 control-label"> 
                       <strong>Wpisz tytuł</strong><span style='color: red'>*</span>
                        </label>
                    <div class="col-sm-4 text-center">
                        <input class="form-control shadow rounded" id="tytul" type="text" name="tytul" required>
                    </div>
                    </div>

                    <div class="form-group row mt-3">
                    <label class="col-sm-2 control-label">
                      <strong>Wybierz Kategorie</strong><span style='color: red'>*</span>
                      </label>
                    <div class="col-sm-10">
                        <!-- pobranie kategorii z ogłoszeń -->
                        <?php
                            $taxonomies = get_terms( array(
                                'taxonomy' => 'addition_cats',
                                'hide_empty' => false
                            ) );
                        ?>
                        
                        <select name="kategoria">
                        <?php foreach($taxonomies as $taxonomie) : ?>
                            <option value="<?php echo $taxonomie->term_id; ?>"><?php echo $taxonomie->name; ?></option>
                        <?php endforeach; ?>
                        </select>                       

                    </div>
                    </div>
                    <hr>
                    <div class="form-group row mt-4">
                    <label class="col-sm-2 control-label"> 
                        <strong>Podaj opis</strong><span style='color: red'>*</span>
                        </label>
                    <div class="col-sm-3">
                        <textarea class="form-control shadow rounded" rows="5" id="opis" type="text" name="opis" required></textarea>
                    </div>
                    </div>

                    <div class="form-group row">
                    <label class="col-sm-2 control-label"> 
                        <strong>Dodaj zdjęcie</strong><span style='color: red'>*</span>
                        </label>
                    <div class="col-sm-3">
                        <input class="form-control shadow rounded" id="fileToUpload" type="file" name="fileToUpload" required>
                    </div>
                    </div>
                  <p style="font-size: 18px"><strong>Twoje dane kontaktowe</strong><p>
                  <hr>
                  <div class="form-group row mt-4">
                    <label class="col-sm-2 control-label"> 
                        <strong>Nazwa sprzedawcy</strong><span style='color: red'>*</span>
                        </label>
                    <div class="col-sm-3">
                        <input class="form-control shadow rounded" id="nazwa" type="text" name="nazwa" required>
                    </div>
                    </div>

                    <div class="form-group row mt-0">
                    <label class="col-sm-2 control-label"> 
                        <strong>Podaj email</strong><span style='color: red'>*</span>
                        </label>
                    <div class="col-sm-3">
                        <input class="form-control shadow rounded" id="email" type="email" name="email" required>
                    </div>
                    </div>
                    <div class="form-group row">
                    <label class="col-sm-2 control-label"> 
                        <strong>Podaj telefon</strong>
                    </label>
                    <div class="col-sm-3">
                        <input class="form-control shadow rounded" id="telefon" type="number" name="telefon" required>
                    </div>
                    </div>
                    
                    
                    
                    </div>
                    <!-- <div class="form-group"> -->
                        <div class="col-sm-7 mx-auto">
                        <input class="rounded" type="checkbox" id="warunki" value="" required> <label data-toggle="modal" data-target="#checkModal" id="terms"><strong> Czy akceptujesz warunki regulaminu ?</strong><span style='color: red'>*</span></label>
                    </div>
                    </div>
                    <div class="form-group">
                    <div class="col-sm-2 mx-auto">
                    <button type="submit" id="submit_form" class="btn btn-primary mb-5 mx-right shadow rounded">Potwierdź</button>
                    </div>
                    </div>
                </form>
                
              

        </div>
            
               <!-- Modal -->
<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel"><strong>Regulamin</strong></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
                            <textarea id="termsarea" rows="5" cols="55";>
                1. Regulamin określa zasady świadczenia przez ZnajdzToAuto Group na rzecz Użytkowników usług polegających na umożliwieniu zamieszczania ogłoszeń w Serwisie ZnajdzToAut
                2. Warunkiem uzyskania dostępu do funkcjonalności Serwisu ZnajdzToAuto jest skorzystanie z urządzenia komunikującego się z Internetem i wyposażonego w powszechnie używaną przeglądarkę internetową.
                            </textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Zamknij</button>
      </div>
    </div>
  </div>
</div>

                <!-- Modal form submit-->
                <!-- <div class="modal fade" id="submitModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                  <div class="modal-dialog" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Zasady regulaminu</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body d-flex justify-content-center">
                            <textarea id="conditions" name="conditions" rows="10" cols="50" >
                1. Regulamin określa zasady świadczenia przez ZnajdzToAuto Group na rzecz Użytkowników usług polegających na umożliwieniu zamieszczania ogłoszeń w Serwisie ZnajdzToAut
                2. Warunkiem uzyskania dostępu do funkcjonalności Serwisu ZnajdzToAuto jest skorzystanie z urządzenia komunikującego się z Internetem i wyposażonego w powszechnie używaną przeglądarkę internetową.
                            </textarea>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Zamknij</button>
                      </div>
                    </div>
                  </div>
                </div> -->

<!-- back to main page button -->

<div class="button-container d-flex justify-content-center mt-5 mb-3">
        <a href="<?php echo get_home_url(); ?>">
            <button type="button" class="btn btn-outline-primary btn-lg">
            Powrót na stronę główną</button>
        </a>    
    </div>




    </main>



<?php get_footer(); ?>
