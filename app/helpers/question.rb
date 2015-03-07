helpers do

  def find_survey(id)
    Survey.find_by(id: id)
  end
  
end
