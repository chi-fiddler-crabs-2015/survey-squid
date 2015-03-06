get '/login' do
  erb :'users/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])

  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    redirect '/profile'
  else
    @errors = "login failed, try again"
    erb :'users/login'
  end
end

get '/profile' do
  if current_user
    @user = current_user
    @surveys = @user.surveys
    erb :'users/profile'
  else
    redirect '/'
  end
end

get '/logout' do
  session.delete :user_id
  redirect '/'
end