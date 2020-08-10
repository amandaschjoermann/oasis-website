import 'bootstrap';

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


function copyToClipboard(element) {
  var $temp = $(".bot-template");
  $("body").append($temp);
  $temp.val($(element).text()).select();
  document.execCommand("copy");
  $temp.remove();
}
