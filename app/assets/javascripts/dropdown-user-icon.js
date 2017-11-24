$(document).on('click', function(e) {
  if(!$(e.target).closest('.dropdown-user-icon').length && !$(e.target).closest('.global-navi__user-icon-header').length){
      $('.dropdown-user-icon').hide();
  }
  else if($(e.target).closest('.global-navi__user-icon-header').length){
    if($('.dropdown-user-icon').is(':hidden')){
      $('.dropdown-user-icon').toggle();
    }
    else{
        $('.dropdown-user-icon').hide();
    }
  }
});
