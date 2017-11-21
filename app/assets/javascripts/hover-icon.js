$(document).on('turbolinks:load', function(){
  $('.global-navi__home').hover(function () {
        $('.hover-home-icon', this).fadeIn("3000").css('display','inline');
    }, function () {
        $('.hover-home-icon', this).fadeOut("3000");
    });
})
