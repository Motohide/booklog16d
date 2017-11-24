$(document).on('click', function(e) {
  if(!$(e.target).closest('.dropdown-menu-icon').length && !$(e.target).closest('.global-navi__dropdown-menu-click').length){
      $('.dropdown-menu-icon').hide();
  }
  else if($(e.target).closest('.global-navi__dropdown-menu-click').length){
    if($('.dropdown-menu-icon').is(':hidden')){
       $('.dropdown-menu-icon').toggle();
    }
    else{
       $('.dropdown-menu-icon').hide();
    }
  }
});
