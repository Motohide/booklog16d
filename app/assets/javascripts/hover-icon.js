$(document).on('turbolinks:load', function(){
  $('.global-navi__home').hover(function () {
        $('.hover-icon', this).fadeIn("3000").css('display','inline');
    }, function () {
        $('.hover-icon', this).fadeOut("3000");
    });

  $('.global-navi__bookshelf').hover(function () {
        $('.hover-icon', this).fadeIn("3000").css('display','inline');
    }, function () {
        $('.hover-icon', this).fadeOut("3000");
    });

  $('.global-navi__timeline').hover(function () {
        $('.hover-icon', this).fadeIn("3000").css('display','inline');
    }, function () {
        $('.hover-icon', this).fadeOut("3000");
    });
})
