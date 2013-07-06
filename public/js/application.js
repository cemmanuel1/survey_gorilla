$(document).ready(function() {
 $("#add_question").on('submit', function(e) {
  e.preventDefault();
  $.get('/load_partial', function(response) {
    $('.big_divver').append(response);
  });
 });
});
