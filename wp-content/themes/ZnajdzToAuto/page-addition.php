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
    $samochody = $_POST['cars'];

    $count = get_field('nazwa');

    if($tytul){
        add_post($tytul, $opis, $nazwa, $email, $telefon, $samochody);
    };

?>

    <main>
        <div class="container">
     
                <form action="<?php echo get_permalink(get_the_ID()); ?>" method="post" class="form-horizontal">
                    <div class="form-group mt-5">
                    <label class="col-sm-2 control-label">Wpisz tytuł*</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="tytul" type="text" name="tytul" required>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label">Dodaj zdjęcie*</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="zdjecie" type="image" name="zdjecie" required>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label">Podaj opis*</label>
                    <div class="col-sm-10">
                        <textarea class="form-control" rows="5" id="opis" type="text" name="opis" required></textarea>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label">Podaj email*</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="email" type="email" name="email" required>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label">Podaj telefon*</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="telefon" type="number" name="telefon" required>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label">Nazwa sprzedającego*</label>
                    <div class="col-sm-10">
                        <input class="form-control" id="nazwa" type="text" name="nazwa" required>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label">Kategoria*</label>
                    <div class="col-sm-10">
                        <select name="cars" id="cars">
                            <option value="osobowe">Osobowe</option>
                            <option value="terenowe">Terenowe</option>
                            <option value="motocykle">Motocykle</option>
                        </select>
                    </div>
                    </div>
                    <div class="form-group">
                    <label class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                            <label><input type="checkbox" id="warunki" value="" required> Czy akceptujesz warunki regulaminu ?*</label>
                    </div>
                    </div>

                    <button type="submit" class="btn btn-primary">Potwierdź</button>
                </form>
        </div>
            
    </main>

<?php get_footer(); ?>