get '/surveys' do
  @user = current_user
  erb :"surveys/show"
end

get '/surveys/new' do
  erb :"surveys/new"
end

post '/surveys' do
  @user = current_user
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

get '/surveys/:id' do
  @survey = Survey.find_by(id: params[:id])
  erb :"questions/show"
end

get '/surveys/:id/edit' do ## Not working yet
  @user = current_user
  puts params
  @survey = Survey.find_by(id: params[:id])
  erb :"surveys/edit"
end

put '/surveys/:id' do
  survey = Survey.find_by(id: params[:id])
  survey.update_attributes(title: params[:title])
  redirect '/surveys'
end

delete '/surveys/:id' do
  survey = Survey.find_by(id: params[:id])
  survey.destroy
  redirect '/surveys'
end