$(document).on('turbolinks:load',function() {
  $('.right-contents__rating').each(function() {
    for (var i = 0; i < 5; i ++) {
      //グレーの星の画像star-off.pngを5個appendさせる
      $(this).append('<a><img src="/assets/rating/star-off.png"></a>');
    }
    //rateを0にするボタンを表示させる
    $(this).append('<img class="star-clear" src="/assets/rating/star_clear.png">');
  });

  $('.right-contents__rating a').on('click', function() {
    //クリックされた要素の順番をindexとして定義
     var index = $(this).index();
    //星の画像をクリックされたところまでオレンジ色のstar-on.pngに変更
     for (var i = 0; i < index; i++) {
        $(this).parent().find('a img').eq(i).attr('src','images/rating/star-on.png');
     }
    //残りの画像をstar-off.pngに変更
     for (var i = index; i < 5; i++) {
        $(this).parent().find('a img').eq(i).attr('src','images/rating/star-off.png');
     }
     //inputのvalueをindexに設定
    $(this).parent().find('.input-range').attr('value', index);
  });

    //評価なしボタンを押した時、inputのvalueを0にし、星の画像を全てstar-off.pngに変更
  $('.right-contents__rating .star-clear').on('click', function() {
    $(this).parent().find('.input-range').attr('value', 0);
     for (var i = 0; i < 5; i++) {
        $(this).parent().find('a img').eq(i).attr('src','/assets/rating/star-off.png');
     }
  });
});
