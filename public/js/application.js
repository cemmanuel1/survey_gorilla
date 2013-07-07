$(document).ready(function() {
	$('#begin_survey').on("submit", function(e){
		e.preventDefault();
		$.post('/survey/new', $('#form_name').serialize()).done(function(){
			$('.survey_creation').fadeOut("slow").empty();
			$.get('/load_form_partial', function(response){
				$('.big_divver').append(response);
			});
		});
	});
	$('.big_divver').on("click", '#append_response', function(e){
		e.preventDefault();
		$('.response').append("<input type='text' name='survey[][response][]' placeholder='Response Here'>");
	});
});

