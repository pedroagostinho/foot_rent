import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initMapbox } from '../plugins/init_mapbox';

initUpdateNavbarOnScroll();
initMapbox();

// import flatpickr from "flatpickr";

// flatpickr("#start_date, {enableTime: true, dateFormat: "Y-m-d H:i",}");


