$(function() {
  const CLASS_SELECT_YEAR = '.signup-form__select-year'
  const CLASS_SELECT_MONTH = '.signup-form__select-month'
  const CLASS_SELECT_DAY = '.signup-form__select-day'

  function isValidDate(y, m, d) {
    let dt = new Date(y, m-1, d);
    return(dt.getFullYear() == y && dt.getMonth() == m-1 && dt.getDate() == d);
  }

  function set_birthday_selectbox() {
    let birth_year = Number($(CLASS_SELECT_YEAR).val());
    let birth_month = Number($(CLASS_SELECT_MONTH).val());
    
    if (isValidDate(birth_year, birth_month, 1)) {
      let birth_month_last_day = new Date(birth_year, birth_month, 0).getDate();
      let birth_month_days = [...Array(birth_month_last_day).keys()].map(i => ++i);

      $(CLASS_SELECT_DAY).empty();
      $(CLASS_SELECT_DAY).append(`<option>--</option>`)

      birth_month_days.forEach(function(day) {
        $(CLASS_SELECT_DAY).append(`<option value='${day}'>${day}</option>`);
      });
    }
  }

  set_birthday_selectbox();
  $(CLASS_SELECT_YEAR).on('change', set_birthday_selectbox);
  $(CLASS_SELECT_MONTH).on('change', set_birthday_selectbox);
});