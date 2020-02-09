jQuery(document).ready(function($) {

    // Slider
    $("#slider").bxSlider({
        mode: 'fade',
        captions: true,
        auto: true,
        controls: false,
      });
    
    //   Contact form
    $(document).on('shown.bs.modal', '#exampleModal', function (e) {
        var email = $('#userEmail').text();
        
        $('span.adresat input').val(email);

        var adNamee = $('#adName').text();
        
        $('span.your-subject input').val(adNamee);

        
    });

    //   Conditions terms form
    $(document).on('shown.bs.modal', '#checkModal', function (e) {        

        

        
    });

    // Choose category
    const all_category = $('#all_category');
    const kombi_container = $('#kombi_category');
    const sedan_container = $('#sedan_category');
    const suv_container = $('#suv_category');

    $('#category_all-button').click(function(e) {
        all_category.show();
        kombi_container.hide();
        sedan_container.hide();
        suv_container.hide();
    });

    $('#kombi-button').click(function(e) {
        all_category.hide();
        kombi_container.show();
        sedan_container.hide();
        suv_container.hide();
    });

    $('#sedan-button').click(function(e) {
        all_category.hide();
        kombi_container.hide();
        sedan_container.show();
        suv_container.hide();
    });

    $('#suv-button').click(function(e) {
        all_category.hide();
        kombi_container.hide();
        sedan_container.hide();
        suv_container.show();
    });

});


// show phone number 
//$(#phone-button).click()
