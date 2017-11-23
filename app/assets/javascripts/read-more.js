$(document).on('turbolinks:load',function() {
  $('.review-area__summary__review-text p').collapser({
    ellipsis: "",
    mode: 'chars',
    speed: 'fast',
    truncate: 120,
    showText: '</br>続きを読む',
    hideText: '閉じる',
    showClass: 'show-class',
    hideClass: 'hide-class'
  });
});
