(function () {
  'use strict';

  var timeEl = document.getElementById('time');
  var dayEl = document.getElementById('day');
  var dateEl = document.getElementById('date');

  var DAYS = [
    'SUNDAY',
    'MONDAY',
    'TUESDAY',
    'WEDNESDAY',
    'THURSDAY',
    'FRIDAY',
    'SATURDAY'
  ];

  function pad(n) {
    return n < 10 ? '0' + n : '' + n;
  }

  function render() {
    var now = new Date();
    timeEl.textContent = pad(now.getHours()) + ':' + pad(now.getMinutes());
    dayEl.textContent = DAYS[now.getDay()];
    dateEl.textContent = pad(now.getDate()) + '.' + pad(now.getMonth() + 1) + '.' + now.getFullYear();
  }

  function tick() {
    render();
    setTimeout(tick, 1000 - (Date.now() % 1000));
  }

  render();
  tick();
})();
