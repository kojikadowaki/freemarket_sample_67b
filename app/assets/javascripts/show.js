$(window).on('load', function() {
  $('img.top_content__product_box__image--image_list').mouseover(function () {
    var $scr = $(this).attr('src');
    $('.top_content__product_box__image--main_image').attr('src', $scr);
  });
});

