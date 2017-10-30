$(document).ready(function () {
  $('#mass_form').validate({
    debug: false,
    rules: {
      "height": { minlength: 2, maxlength: 3, digits: true, required: true },
      "weight": { minlength: 1, maxlength: 3, digits: true, required: true }
    }
  })
})
