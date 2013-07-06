$(document).ready(function() {
	$('#begin_survey').on("submit", function(e){
		e.preventDefault();
		$.post('/survey/new', function(){
			$('#begin_survey').serialize();
		}).done(function(){
			$('.survey_creation').fadeOut("slow").empty();
			$.get('/load_form_partial', function(response){
				$('.big_divver').append(response);
			});
		});
	});
	$('.big_divver').on("submit", '.add_new_response', function(e){
		e.preventDefault();
		$.get('/load_response_partial', function(response){
			$('.big_divver').append(response);
		});
	});
	$('.big_divver').on("submit", '.submit_question', function(e){
		e.preventDefault();
		console.log($('.add_new_response').serialize());
		// $.post('/complete_question', function(){
		// 	console.
		// });
	});
});






// $("#add_question").on('submit', function(e) {
//   e.preventDefault();
//   $.get('/load_partial', function(response) {
//     $('.big_divver').append(response);
//   });
// });
//  $(".big_divver").on('submit', '.add_response' ,function(e) {
//   e.preventDefault();
//   $.get('/load_response_partial', function(response){
//   	$('.add_response').closest('.added_question').append(response);
//   });
// });