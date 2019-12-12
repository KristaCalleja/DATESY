import "bootstrap";
import "packs/match_button_with_modal";

import { initMatchForms } from "../components/match_form";
// import { initWaves } from "../components/waves";

initMatchForms();
// initWaves();



import '../../../node_modules/slick-carousel/slick/slick.css'
import '../../../node_modules/slick-carousel/slick/slick-theme.css'
import 'slick-carousel'

document.addEventListener('DOMContentLoaded', () => {
  $('.slick').slick({
    // initialSlide: 1,
    // slidesToShow: 1,
    // slidesToScroll: 1,
    // centerMode: true,
    // centerPadding: '16px',

    centerMode: true,
    centerPadding: '24px',
    slidesToShow: 1,
  });

});

