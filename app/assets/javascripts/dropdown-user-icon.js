$(document).on('click', function(e) {
  if($(e.target).closest('.global-navi__user-icon-header').length){
      $('.dropdown-user-icon').toggle();
  }
  else if (!$(e.target).closest('.global-navi__user-icon-header').length){
      $('.dropdown-user-icon').hide();
  }
});
