new_user_1 = User.create!(name: "a", email: "a@a.com", password: "a" )
new_user_2 = User.create!(name: "b", email: "b@b.com", password: "b" )
new_user_3 = User.create!(name: "c", email: "c@c.com", password: "c" )

new_survey = new_user_1.surveys.create!(title: "Hello pancakes")
new_question = new_survey.questions.create!(title: "DO you like to eat pancakes?")
new_choice_1 = new_question.choices.create!(option: "I fucking love Pancackes!" )
new_choice_2 = new_question.choices.create!(option: "Pancakes stink like a little turd!")
other_question = new_survey.questions.create!(title: "What about FLAPJACKS?")
other_choice_1 = other_question.choices.create!(option: "THOSE ARE YUMMY!!" )
other_choice_2 = other_question.choices.create!(option: "EWW?!")

new_take = new_survey.takes.create!(taker: new_user_2)
new_response = new_choice_1.responses.create!(take: new_take)
