$(document).on('turbolinks:load', function() {
    $('.global-navi__user-icon-header').on('click',function(){
    $(this).parent().find('.dropdown-user-icon').slideDown(0);
    //メニュー領域外をクリックしたらメニューを閉じる
    $(this).parent().find('.dropdown-user-icon').mouseleave(function(){
      var thisUI = $(this);
      $('html').click(function(){
        thisUI.hide();
        $('html').unbind('click');
      });
    });
  });
});
