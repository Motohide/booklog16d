$(document).on('click', function(e) {
  if($(e.target).closest('.global-navi__dropdown-menu-click').length){
      $('.dropdown-menu-icon').toggle();
  }
  else if(!$(e.target).closest('.global-navi__dropdown-menu-click').length){
      $('.dropdown-menu-icon').hide();
  }
});
