document.addEventListener('DOMContentLoaded', function () {
  new Swiper ('.promo_carousel', {
    speed: 1000,
    wrapperClass: 'promo_carousel-wrapper',
    slideClass: 'promo_carousel-slide',
    autoplay: {
      speed: 4000
    },
    pagination: {
      clickable: true,
      el: '.promo_carousel-pagination',
      bulletClass: 'promo_carousel-bullet',
      bulletActiveClass: 'promo_carousel-bullet--active',
    },
  })
}, false)
