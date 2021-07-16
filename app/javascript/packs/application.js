//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .
import 'bootstrap';
require("@rails/ujs").start()
require("turbolinks").start()
require("channels")

import { ScrollReveal } from '../components/reveal';
document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  ScrollReveal();

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
