import "bootstrap";
import flatpickr from 'flatpickr'

import "../plugins/flatpickr"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import 'flatpickr/dist/flatpickr.min.css'


flatpickr(".datepicker", {
  altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})]
})
