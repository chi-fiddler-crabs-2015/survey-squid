helpers do

  def find_survey(id)
    Survey.find_by(id: id)
  end

  def delete_choices(question)
    question.choices.each do |choice|
      choice.destroy
    end
  end

end
