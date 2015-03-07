get '/questions/:id/choices' do
  # Generates new choice via ajax
end

post '/questions/:id/choices' do
  puts params[:choice]
  question = Question.find_by(id: params[:id])
  params[:choice].each do |choice|
    question.choices.create(option: choice.last)
  end
  erb :"choices/show", locals: {choices: params[:choice]}, layout: false
end