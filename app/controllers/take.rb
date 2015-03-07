get '/surveys/:id/takes/new' do
  puts params
  @survey = Survey.find(params[:id])
  erb :'takes/new'
end

post '/surveys/:id/takes' do
  puts params
  @survey = Survey.find(params[:id])
  @take = Take.create(taker: current_user, survey: @survey)

  if @take.valid?
    redirect '/surveys'
  else
    erb :'takes/new'
  end
end
