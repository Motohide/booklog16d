$(document).on('turbolinks:load',function(){
  var $netabare = $('.review-area__summary[spoiler_status=1]');
  $netabare.find('.review-area__summary__reaction').before('<span class="netabare_mark"><img src="/assets/netabare_mark.png"></span>');
  $netabare.find('.review-area__summary__review-text p').addClass('prepend-spoiler');
  $netabare.on('mouseover', function(){
    $('.prepend-spoiler').css('color','#000');
  }).on('mouseleave', function(){
    $('.prepend-spoiler').css('color','#f0f0f0');
  });
});
