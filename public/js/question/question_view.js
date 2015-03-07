$(document).ready(function(){


	// Creating a new question
	$("#add-question").on("submit", function(e){
		e.preventDefault();
		console.log('click');
		
		var form = $(this)
		$.ajax({
			'url': form.attr('action'),
			'type': form.attr('method'),
			'success': function(response){
				console.log(response);
				$("#add-question").prepend(response)
			}
		});
	});


	// Creating a new choice
	$("#choice-button").on("click", function(e){
		e.preventDefault();
		
		var request = $.ajax({
			url: "/surveys/:id/questions",
			type: "get"
		});
		
		request.done(function(response){
			$("#choice-button").prepend(response)
		});
	});
});