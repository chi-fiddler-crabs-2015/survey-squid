get '/users' do
  @users = User.all
  erb :'users/index'
end

get '/users/new' do #signup

end

post '/users' do
  @user = User.create()
  if @user.valid?
  end
end

