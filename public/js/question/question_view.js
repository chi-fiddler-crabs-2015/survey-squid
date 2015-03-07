$(document).ready(function(){


	// Creating a new question form
	$("#add-question").on("submit", function(e){
		e.preventDefault();

		var form = $(this)
		$.ajax({
			'url': form.attr('action'),
			'type': form.attr('method'),
			'success': function(response){
				$("#add-question").before(response)
			}
		});
	});

	// Create a new question (submitting)
	$('#question-button').on("submit", function(e){
		e.preventDefault();

		var form = $(this)
		$.ajax({
			'url': form.attr('action'),
			'type': form.attr('method'),
			'data': form.serialize(),
			'success': function(response){
				$("#question-button").before(response)
				$("#question-button").remove()
			}
		});
	});


	// Creating a new choice
	$("#choice-button").on("submit", function(e){
		e.preventDefault();

		var form = $(this)
		$.ajax({
			'url': form.attr('action'),
			'type': form.attr('method'),
			'data': form.serialize(),
			'success': function(response){
				console.log(response)
				$("#question p").after(response)
				$("#choice-button").remove()

			}
		});
	});

});