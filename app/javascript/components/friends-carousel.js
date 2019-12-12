import '../../../node_modules/slick-carousel/slick/slick.css'
import '../../../node_modules/slick-carousel/slick/slick-theme.css'
import 'slick-carousel'

const initFriendsCarousel = () => {
  document.addEventListener('DOMContentLoaded', () => {
    $('.slick').slick({
      centerMode: true,
      centerPadding: '24px',
      slidesToShow: 1,
    });

  });
}

export { initFriendsCarousel };
