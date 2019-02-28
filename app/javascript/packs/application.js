import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import flatpickr from "flatpickr";

import { initUpdateNavbarOnScroll } from '../components/navbar';
import { initMapbox } from '../plugins/init_mapbox';

initUpdateNavbarOnScroll();
initMapbox();

const currentDate = new Date();
const year = currentDate.getFullYear();
const month = currentDate.getMonth() + 1;
const day = currentDate.getDate();

flatpickr(".date-picker", {
    enableTime: true,
    time_24hr: true,
    dateFormat: "Y-m-d H:i",
    minDate: `${year}-${month}-${day}`
});

flatpickr(".start-date", {
  enableTime: true,
  time_24hr: true,
  dateFormat: "Y-m-d H:i",
  minDate: `${year}-${month}-${day}`
});
// flatpickr("#start_date, {enableTime: true, dateFormat: "Y-m-d H:i",}");


