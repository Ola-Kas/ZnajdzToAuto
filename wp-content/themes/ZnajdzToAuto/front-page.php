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
<div class="search-form-container d-flex justify-content-center pt-5">
    <div class="text-center border border-dark rounded bg-warning text-dark" style="width:600px; height:200px">
            <form action="<?php echo get_home_url(); ?>">
                <div class="mt-2">Szukaj w ogłoszeniach:</div>
                <input type="text" name="s" id="s" placeholder="wpisz nazwę..." class="mt-2">
                <button class="btn btn-primary" type="submit">Szukaj</button>
                <br>
                <span>lub</span>
                <br>
                <button class="btn btn-primary" type="submit">Przeglądaj ogłoszenia</button>

            </form>          
    </div>
</div>


 
<!-- slider  -->

<div class="slider-wrapper position-relative">
<?php if (count($slider) > 0) : ?>
        <div id="slider" class="text-center">
            <?php foreach ($slider as $slide) : ?>
                <div>
                    <div class="w-100 h-100 p-3">
                    <img src="<?php echo $slide; ?>" alt=""></div>
                </div>
            <?php endforeach; ?>
        </div>
    <?php endif; ?>
</div>



<!-- add button  -->
<div class="button-container d-flex justify-content-center">
    
        <a href="<?php the_field('add_button'); ?>">
            <button type="button" class="btn btn-primary btn-lg btn-block" style="width: 600px;">
                Dodaj nowe ogłoszenie</button>
        </a>
     
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
                            <div class="card-body text-center">                                
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
                            <div class="card-body text-center">                                
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
                            <div class="card-body text-center">                                
                                <p><?php echo $card_3['content']; ?></p>
                                <a href="<?php echo $card_3['url']; ?>" class="btn btn-block btn-warning">Czytaj więcej</a>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
                
            </div>
        </div>
    </div>


<!-- last ads  -->



<div class="last-ads-wrapper border border-danger mb-3">
    <h3 class="text-center">Ostatnio dodane:</h3>

    <?php
        $ads_items = new WP_Query(array(
            "post_type" => "advertisement",
            "posts_per_page" => 3,
        ));     
    ?>

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
    </div>


</main>

<?php get_footer(); ?>