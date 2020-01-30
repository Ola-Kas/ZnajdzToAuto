jQuery(document).ready(function($) {
    $("#slider").bxSlider({
        mode: 'fade',
        captions: true,
        auto: true,
        
      });
    
    $(document).on('shown.bs.modal', '#exampleModal', function (e) {
        var email = $('#userEmail').text();
        
        $('span.adresat input').val(email);

        var adNamee = $('#adName').text();
        
        $('span.your-subject input').val(adNamee);

        
    });
});

