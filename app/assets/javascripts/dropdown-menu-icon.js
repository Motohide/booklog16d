// $(document).on('turbolinks:load', function() {
//    $(".global-navi__dropdown-menu-click a").on("click", function(e) {
//     e.preventDefault()
//       $(this).parent().find('.dropdown-menu-icon').toggle(0);
//       $(this).toggleClass("active");
//       $(this).parent().find('.dropdown-menu-icon').mouseleave(function(){
//       var thisUI = $(this);
//       $('html').click(function(){
//         thisUI.hide();
//         $('html').unbind('click');
//       });
//     });
//   });
// });



$(document).on('click', function(e) {
  e.preventDefault()
  if(!$(e.target).closest('.dropdown-menu-icon').length && !$(e.target).closest('.global-navi__dropdown-menu-click a').length){
      $('.dropdown-menu-icon').hide();
  }
  else if($(e.target).closest('.global-navi__dropdown-menu-click a').length){
    if($('.dropdown-menu-icon').is(':hidden')){
       $('.dropdown-menu-icon').toggle();
    }
    else{
       $('.dropdown-menu-icon').hide();
    }
  }
});
