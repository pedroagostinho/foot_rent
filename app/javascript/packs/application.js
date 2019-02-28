import "bootstrap";

import flatpickr from "flatpickr";

import { initUpdateNavbarOnScroll } from '../components/navbar';

initUpdateNavbarOnScroll();

const currentDate = new Date();
const year = currentDate.getFullYear();
const month = currentDate.getMonth() + 1;
const day = currentDate.getDate();

flatpickr(".date-picker", {
});

flatpickr(".start-date", {
  minDate: `${year}-${month}-${day}`
});
// flatpickr("#start_date, {enableTime: true, dateFormat: "Y-m-d H:i",}");
