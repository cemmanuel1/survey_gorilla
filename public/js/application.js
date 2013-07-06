$(document).ready(function() {
	alert("hey everyone...so i have basically the creating a survey part. It is creating new objects and saving them in the database too. i am working from home and on my own branch, but i havent pushed anything to github yet. There are still a few things I need to do before i push. If you want to work on this, I'll come meet you at DBC. Just text me and let me know. My number is 334.399.4374. -McArthur");
 $("#add_question").on('submit', function(e) {
  e.preventDefault();
  $.get('/load_partial', function(response) {
    $('.big_divver').append(response);
  });
});
 $(".big_divver").on('submit', '.add_response' ,function(e) {
  e.preventDefault();
  $.get('/load_response_partial', function(response){
    $('.big_divver').append(response);
  });
});
});
