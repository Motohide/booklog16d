$(document).on('turbolinks:load', function() {
    $('.global-navi__dropdown-menu-click a').on('click',function(e){
    e.preventDefault()
    $(this).parent().find('.dropdown-menu').toggle(400);
    // Hide menu when clicked outside
    $(this).parent().find('.dropdown-menu').mouseleave(function(){
      var thisUI = $(this);
      $('html').click(function(){
        thisUI.hide();
        $('html').unbind('click');
      });
    });
  });
});
