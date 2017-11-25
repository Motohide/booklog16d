$(document).on('turbolinks:load',function() {
  var $spoiler = $('.review-area__summary[spoiler_status=1]');

  $spoiler.find('.review-area__summary__reaction').before('<span class="netabare_mark"><img src="/images/netabare_mark.png"></span>');
  $spoiler.find('.review-area__summary__review-text p').addClass('prepend-spoiler');

  $spoiler.on('mouseover', function(){
    $('.prepend-spoiler').css('color','#000');
  }).on('mouseleave', function(){
    $('.prepend-spoiler').css('color','#f0f0f0');
  });
});
