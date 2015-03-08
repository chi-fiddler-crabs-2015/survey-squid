get '/questions/:id/choices' do
  # Generates new choice via ajax
end

post '/questions/:id/choices' do
  question = Question.find_by(id: params[:id])
  all_choices = []
  params[:choice].each_value do |choice|
    all_choices << question.choices.create(option: choice)
  end
  puts all_choices
  erb :"choices/show", locals: {choices: all_choices}, layout: false
end
