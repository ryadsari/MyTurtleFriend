import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    minDate: "today",
    dateFormat: "Y-m-d",
  });
}

export { initFlatpickr };
