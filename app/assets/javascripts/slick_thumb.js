$(document).on('turbolinks:load',function() {
  $('.main-thumb').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    appendArrows: $('#arrows')
  });
});
