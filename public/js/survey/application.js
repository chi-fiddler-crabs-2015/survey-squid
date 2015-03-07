$(document).ready(function(){

	$.("#add-question").on("click", function(e){
		e.preventDefault();
		console.log("clicked")
		
		var request = $.ajax({
			url: "/",
			type: "get"
		});
		
		request.done(function(response){
			$("#add-question").append(response)
		});
	});
});




// <% if @question %>
// 	<%= erb :"/questions/_new", locals:{question: @question} %>
// <% end %>



// if request.xhr?
// 	erb :"/question/_new", locals: {question: @question}, layout: false
// else
// 	redirect ''
// end	


