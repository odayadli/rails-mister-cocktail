// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.



require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")



import 'bootstrap';
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import { loadDynamicBannerText } from '../components/banner';
import {glideSlide} from "../components/loading_wine";

// document.querySelector(".wine").addEventListener("submit", function() {
//   document.getElementById("loading")
// });
import { initStarRating } from '../plugins/init_star_rating';

initStarRating();


document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  // [...]
  loadDynamicBannerText();

  // glideSlide()

});
document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})

import { initSelect2 } from '../components/init_select2';

document.addEventListener("turbolinks:load", function() {
  initSelect2();
});

// if( $(#check_box_id).is(':checked')) {
//   $("#div_id").show();
// } else {
//   $("#div_id").hide();
// }


require("trix")
require("@rails/actiontext")