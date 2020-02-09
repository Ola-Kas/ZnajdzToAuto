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

    <main>
        <div class="container">
     
                <form action="<?php echo get_permalink(get_the_ID()); ?>" method="post" class="form-horizontal" enctype="multipart/form-data">
                    <div class="form-group mt-5">
                    <label class="col-sm-2 control-label"> 
                        <ul class="list-inline">
                            <li class="list-inline-item">Wpisz tytuł</li>
                            <li class="list-inline-item text-danger">*</li>
                        </ul></label>
                    <div class="col-sm-10">
                        <input class="form-control shadow rounded" id="tytul" type="text" name="tytul" required>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label"> 
                        <ul class="list-inline">
                            <li class="list-inline-item">Dodaj zdjęcie</li>
                            <li class="list-inline-item text-danger">*</li>
                        </ul></label>
                    <div class="col-sm-10">
                        <input class="form-control shadow rounded" id="fileToUpload" type="file" name="fileToUpload" required>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label"> 
                        <ul class="list-inline">
                            <li class="list-inline-item">Podaj opis</li>
                            <li class="list-inline-item text-danger">*</li>
                        </ul></label>
                    <div class="col-sm-10">
                        <textarea class="form-control shadow rounded" rows="5" id="opis" type="text" name="opis" required></textarea>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label"> 
                        <ul class="list-inline">
                            <li class="list-inline-item">Podaj email</li>
                            <li class="list-inline-item text-danger">*</li>
                        </ul></label>
                    <div class="col-sm-10">
                        <input class="form-control shadow rounded" id="email" type="email" name="email" required>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label"> 
                        <ul class="list-inline">
                            <li class="list-inline-item">Podaj telefon</li>
                            <li class="list-inline-item text-danger">*</li>
                        </ul>
                    </label>
                    <div class="col-sm-10">
                        <input class="form-control shadow rounded" id="telefon" type="number" name="telefon" required>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-3 control-label"> 
                        <ul class="list-inline">
                            <li class="list-inline-item">Nazwa sprzedawcy</li>
                            <li class="list-inline-item text-danger">*</li>
                        </ul></label>
                    <div class="col-sm-10">
                        <input class="form-control shadow rounded" id="nazwa" type="text" name="nazwa" required>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label">
                        <ul class="list-inline">
                            <li class="list-inline-item">Kategoria</li>
                            <li class="list-inline-item text-danger">*</li>
                        </ul>
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
                    <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                        <input class="rounded" type="checkbox" id="warunki" value="" required> <label data-toggle="modal" data-target="#checkModal"> Czy akceptujesz warunki regulaminu ?*</label>
                    </div>
                    </div>

                    <button type="submit" class="btn btn-primary mb-5 shadow rounded">Potwierdź</button>
                </form>
                <?php if (count($_POST)>0) echo '<script>alert("Ogłoszenie wypełnione pomyślnie, prosimy czekać na publikację!")</script>'; ?>

        </div>
            
                            <!-- Modal -->
<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
1. Regulamin określa zasady świadczenia przez ZnajdzToAuto Group na rzecz Użytkowników usług polegających na umożliwieniu zamieszczania ogłoszeń w Serwisie ZnajdzToAuto.

2. Warunkiem uzyskania dostępu do funkcjonalności Serwisu ZnajdzToAuto jest skorzystanie z urządzenia komunikującego się z Internetem i wyposażonego w powszechnie używaną przeglądarkę internetową.
            </textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Zamknij</button>
      </div>
    </div>
  </div>
</div>

    </main>



<?php get_footer(); ?>
