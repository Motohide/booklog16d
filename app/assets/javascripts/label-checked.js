$(function(){
  $('.right-contents__edit-status label').on('click', function(){
    if($(this).not('checked')){
      $(this).addClass('checked').siblings().removeClass('checked');
    }
  });
});
