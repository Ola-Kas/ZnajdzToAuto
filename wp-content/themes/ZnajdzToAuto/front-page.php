<?php 

    get_header(); 

    $slider = [];


    if (get_field("slide_1")) $slider[] = get_field("slide_1");
    if (get_field("slide_2")) $slider[] = get_field("slide_2");
    if (get_field("slide_3")) $slider[] = get_field("slide_3");

    $card_1 = get_field("card_1");
    $card_2 = get_field("card_2");
    $card_3 = get_field("card_3");

?>

<main>

<!-- search  -->
<div class="search-form-container text-center">
    
    <div>Wyszukaj ogłoszenia:</div> 
    
    <form action="<?php echo get_home_url(); ?>">
        <input type="text" name="s" id="s" placeholder="szukaj...">
    </form>

</div>
 


<!-- slider  -->

    <?php if (count($slider) > 0) : ?>
        <div id="slider" class="text-center ">
            <?php foreach ($slider as $slide) : ?>
                <div>
                    <div><?php echo $slide; ?></div>
                </div>
            <?php endforeach; ?>
        </div>
    <?php endif; ?>


<!-- add button  -->
<div class="button-container d-flex justify-content-center">
    <button type="button" class="btn btn-primary btn-lg btn-block" style="width: 600px;">
        <a href="<?php the_field('add_button'); ?>">Dodaj nowe ogłoszenie</a>
    </button> 
</div>   


<!-- cards  -->
    <div id="cards">
        <div class="container py-5">
            <div class="row">
                <?php if ($card_1['title']) : ?>
                    <div class="col-lg-4 mb-3 mb-lg-0">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="text-center text-dark font-weight-normal mb-0"><?php echo $card_1['title']; ?></h2>
                            </div>
                            <div class="card-body">                                
                                <p><?php echo $card_1['content']; ?></p>
                                <a href="<?php echo $card_1['url']; ?>" class="btn btn-block btn-warning">Czytaj więcej</a>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>

                <?php if ($card_2['title']) : ?>
                    <div class="col-lg-4 mb-3 mb-lg-0">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="text-center text-dark font-weight-normal mb-0"><?php echo $card_2['title']; ?></h2>
                            </div>
                            <div class="card-body">                                
                                <p><?php echo $card_2['content']; ?></p>
                                <a href="<?php echo $card_2['url']; ?>" class="btn btn-block btn-warning">Czytaj więcej</a>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>

                <?php if ($card_3['title']) : ?>
                    <div class="col-lg-4 mb-3 mb-lg-0">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="text-center text-dark font-weight-normal mb-0"><?php echo $card_3['title']; ?></h2>
                            </div>
                            <div class="card-body">                                
                                <p><?php echo $card_3['content']; ?></p>
                                <a href="<?php echo $card_3['url']; ?>" class="btn btn-block btn-warning">Czytaj więcej</a>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
                
            </div>
        </div>
    </div>
</main>
<?php get_footer(); ?>