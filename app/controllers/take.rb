get '/surveys/:id/takes/new' do
  puts params
  @survey = Survey.find(1)
  erb :'takes/new'
end

post '/surveys/:id/takes' do
  puts params
  @survey = Survey.find(params[:id])
  @take = Take.create(taker: current_user, survey: @survey)
  # @responses = @take.tally_responses(params[:response_ids])
  # if @take.valid?
  #   redirect '/surveys'
  # else
  #   erb :'takes/new'
  # end
end
