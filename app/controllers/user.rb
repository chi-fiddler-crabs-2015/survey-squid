get '/users/new' do #signup
  erb :'user/new'
end

post '/users' do
  @user = User.create(params[:user])
  if @user.valid?
    session[:user_id] = @user.id
    redirect '/'
  else
    @errors = @user.errors
    erb :'user/new'
  end
end

