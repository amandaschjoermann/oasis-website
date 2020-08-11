import 'bootstrap';


require("@rails/ujs").start()
// require("turbolinks").start()
// require("@rails/activestorage").start()
// require("channels")

$(window).on('load', function() {
  $("body").removeClass("preload");
});

function navbarDropdown() {
  $(document).ready(function(){
    $(document).click(function(){
      $(".drop-content").hide();
    });

    $(".drop-trigger").click(function(e){
      e.stopPropagation();
    });

    $('.drop-trigger').click(function(){
      $('.drop-content').toggle();
    });
  });
}

navbarDropdown();
