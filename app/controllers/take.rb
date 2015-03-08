get '/takes' do
  @surveys = Survey.all
  erb :'takes/show'
end

get '/surveys/:id/takes/new' do
  @survey = find_survey(params[:id])
  erb :'takes/new'
end

post '/surveys/:id/takes' do
  puts params
  take = current_user.takes.create(survey_id: params[:id])
  puts take
  params[:response_ids].each do |response_id|
    puts response_id
    take.responses.create(choice_id: response_id)
  end
  redirect '/takes'
end
