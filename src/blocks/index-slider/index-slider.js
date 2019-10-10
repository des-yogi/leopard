document.addEventListener('DOMContentLoaded', function() {

  var indexSlider = new Swiper ('.index-slider__container', {
    loop: true,

    pagination: {
      el: '.swiper-pagination',
    },

    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  })

});
