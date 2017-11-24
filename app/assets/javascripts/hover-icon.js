$(document).on('turbolinks:load', function(){
  $('.global-navi__home').hover(function () {
        $('.hover-icon', this).fadeIn(500).css('display','inline');
    }, function () {
        $('.hover-icon', this).fadeOut(200);
    });

  $('.global-navi__bookshelf').hover(function () {
        $('.hover-icon', this).fadeIn(500).css('display','inline');
    }, function () {
        $('.hover-icon', this).fadeOut(200);
    });

  $('.global-navi__timeline').hover(function () {
        $('.hover-icon', this).fadeIn(500).css('display','inline');
    }, function () {
        $('.hover-icon', this).fadeOut(200);
    });
})
