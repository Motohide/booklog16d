$(document).on('turbolinks:load', function() {
    $('.global-navi__dropdown-menu-click a').on('click',function(e){
    e.preventDefault()
    $(this).parent().find('.dropdown-menu-icon').slideDown(300);
    //メニュー領域外をクリックしたらメニューを閉じる
    $(this).parent().find('.dropdown-menu-icon').mouseleave(function(){
      var thisUI = $(this);
      $('html').click(function(){
        thisUI.hide();
        $('html').unbind('click');
      });
    });
  });
});
