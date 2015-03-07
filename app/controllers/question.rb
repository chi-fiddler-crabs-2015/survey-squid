get '/surveys/:id/questions' do
  @survey = find_survey(params[:id])
  @questions = @survey.questions
  if request.xhr?
    @question = @survey.questions.create(params[:question])
    @choice = @question.choices.create(params[:choice])
  	erb :"/choices/_new", locals: {choice: @choice}, layout: false
  else
  	erb :"questions/show"
  end	
end

get '/surveys/:id/questions/new' do
  @survey = find_survey(params[:id])
  erb :"/questions/_new", layout: false
end

post '/surveys/:id/questions' do
  puts params   
  survey = find_survey(params[:id])
  question = survey.questions.create(title: params[:question])
  if request.xhr?
    puts question.title
    erb :"/choices/_new", locals: {question: question}, layout: false
  else
    erb :"questions/show"
  end 
end