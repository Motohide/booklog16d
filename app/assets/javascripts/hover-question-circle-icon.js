$(document).on('turbolinks:load', function() {
    $('.question-icon').on('mouseover',function(e){
    e.preventDefault()
    $(this).parent().find('.search-content').slideDown(0);
    //メニュー領域外をホバーしたらメニューを閉じる
    $(this).parent().find('.search-content').mouseout(function(){
      var thisUI = $(this);
      $('html').mouseout(function(){
        thisUI.slideUp(0);
      });
    });
  });
});
