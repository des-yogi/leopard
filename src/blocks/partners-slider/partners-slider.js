document.addEventListener('DOMContentLoaded', function() {

  var partnersSlider = new Swiper ('.partners-slider__container', {
    initialSlide: 1,
    slidesPerView: 2,
    autoplay: {
      delay: 3000,
    },
    loop: true,
    //centeredSlides: true,
    breakpoints: {
    // when window width is >= 480px
    480: {
      slidesPerView: 3
    },
    // when window width is >= 640px
    768: {
      slidesPerView: 4
    },
    992: {
      slidesPerView: 5
    },
    1280: {
      slidesPerView: 6
    },
    1400: {
      slidesPerView: 7
    }
  }
  })

});
