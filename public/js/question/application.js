$(document).ready(function(){

	$.("#choice-button").on("click", function(e){
		e.preventDefault();
		console.log("clicked")
		
		var request = $.ajax({
			url: "/surveys/:id/questions",
			type: "get"
		});
		
		request.done(function(response){
			$("#choice-button").prepend(response)
		});
	});
});