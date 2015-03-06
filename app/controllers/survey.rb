get '/surveys' do
  erb :"survey/show"
end

get '/surveys/new' do
  erb :"survey/new"
end

post '/surveys' do
  @user = User.find_by(id: session[:user_id])
  if @user
    survey = @user.surveys.create(params[:survey])
    if survey.valid?
      redirect "/surveys/#{survey.id}/questions"
    else 
      redirect "/surveys/new"
    end
  else 
    redirect '/login'
  end
end