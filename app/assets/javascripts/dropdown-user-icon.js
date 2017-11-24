$(document).on('turbolinks:load', function() {
   $(".global-navi__user-icon-header").on("click", function() {
            $(this).parent().find('.dropdown-user-icon').toggle(0);
            $(this).toggleClass("active");
            $(this).parent().find('.dropdown-user-icon').mouseleave(function(){
      var thisUI = $(this);
      $('html').click(function(){
        thisUI.hide();
        $('html').unbind('click');
      });
    });
  });
});

