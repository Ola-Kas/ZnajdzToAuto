<?php 
    /* Template Name: MyAccount */

get_header(); 

?>
<div class="myaccount-wrapper d-flex justify-content-center align-items-center">
    <h1 class="text-center">Not so fast, cowboy!</h1>
</div>

       <!-- main page button -->
       <div class="button-container d-flex justify-content-center mb-3">
            <a href="<?php echo get_home_url(); ?>">
                <button type="button" class="btn btn-warning btn-lg btn-block" style="width: 600px;">
                    Powrót na stronę główną</button>
            </a>    
        </div>
<?php get_footer(); ?>