$(function(){
  $('.edit-tab li').on('click', function(e){
    e.preventDefault();
    if($(this).not('active')){
      $(this).addClass('active').siblings('li').removeClass('active');
      var index = $('.edit-tab li').index(this);
      $('#tab-box .review-form').eq(index).addClass('active').siblings('.review-form').removeClass('active');
    }
  });
});
