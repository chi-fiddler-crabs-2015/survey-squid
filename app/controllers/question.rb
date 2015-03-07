get '/surveys/:id/questions' do
  @survey = Survey.find_by(id: params[:id])
  @question = @survey.questions.create(params[:question])
  @choice = @question.choices.create(params[:choice])

  if request.xhr?
  	erb :"/choices/new", locals: {choice: @choice}, layout: false
  else
  	redirect 'surveys/#{@survey.id}'
  end	
end