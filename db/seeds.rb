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

new_take = new_survey.takes.create!(taker: new_user_1)
new_response = new_choice_1.responses.create!(take: new_take)


new_survey_2 = new_user_2.surveys.create!(title: "Favorite Stuff")

new_question = new_survey_2.questions.create!(title: "What is your favorite Beatle?")
new_question.choices.create!(option: "John Lennon" )
new_question.choices.create!(option: "Paul McCartney")
new_question.choices.create!(option: "Ringo Starr" )
new_question.choices.create!(option: "George Harrison")

other_question = new_survey_2.questions.create!(title: "What is your favorite Spice Girl?")
other_question.choices.create!(option: "Sporty" )
other_question.choices.create!(option: "Baby")
other_question.choices.create!(option: "Scary" )
other_question.choices.create!(option: "Beckham")

other_question = new_survey_2.questions.create!(title: "Who is your favorite KISS member?")
other_question.choices.create!(option: "Peter Criss" )
other_question.choices.create!(option: "Ace Freeley")
other_question.choices.create!(option: "Gene Simmons" )
other_question.choices.create!(option: "Paul Stanley")

other_question = new_survey_2.questions.create!(title: "Who is going to win the 2018 World Cup?")
other_question.choices.create!(option: "Brasil")
other_question.choices.create!(option: "Germany")
other_question.choices.create!(option: "Argentina")
other_question.choices.create!(option: "France")

other_question = new_survey_2.questions.create!(title: "Who is going to win the Grammy's?")
other_question.choices.create!(option: "Beck")
other_question.choices.create!(option: "Queen Bey")
other_question.choices.create!(option: "Kanye")
other_question.choices.create!(option: "Imma let you finish")



new_survey_3 = new_user_1.surveys.create!(title: "Super Serious Survey")

new_question = new_survey_3.questions.create!(title: "What is your favorite Beatle?")
new_question.choices.create!(option: "John Lennon" )
new_question.choices.create!(option: "Paul McCartney")
new_question.choices.create!(option: "Ringo Starr" )
new_question.choices.create!(option: "George Harrison")

other_question = new_survey_3.questions.create!(title: "What is your favorite Spice Girl?")
other_question.choices.create!(option: "Sporty" )
other_question.choices.create!(option: "Baby")
other_question.choices.create!(option: "Scary" )
other_question.choices.create!(option: "Beckham")

other_question = new_survey_3.questions.create!(title: "Who is your favorite KISS member?")
other_question.choices.create!(option: "Peter Criss" )
other_question.choices.create!(option: "Ace Freeley")
other_question.choices.create!(option: "Gene Simmons" )
other_question.choices.create!(option: "Paul Stanley")

other_question = new_survey_3.questions.create!(title: "Who is going to win the 2018 World Cup?")
other_question.choices.create!(option: "Brasil")
other_question.choices.create!(option: "Germany")
other_question.choices.create!(option: "Argentina")
other_question.choices.create!(option: "France")

other_question = new_survey_3.questions.create!(title: "Who is going to win the Grammy's?")
other_question.choices.create!(option: "Beck")
other_question.choices.create!(option: "Queen Bey")
other_question.choices.create!(option: "Kanye")
other_question.choices.create!(option: "Imma let you finish")


new_survey_3 = new_user_1.surveys.create!(title: "Super Serious Corporate Synergy Survey")

new_question = new_survey_3.questions.create!(title: "What is your favorite Beatle?")
new_question.choices.create!(option: "John Lennon" )
new_question.choices.create!(option: "Paul McCartney")
new_question.choices.create!(option: "Ringo Starr" )
new_question.choices.create!(option: "George Harrison")

other_question = new_survey_3.questions.create!(title: "What is your favorite Spice Girl?")
other_question.choices.create!(option: "Sporty" )
other_question.choices.create!(option: "Baby")
other_question.choices.create!(option: "Scary" )
other_question.choices.create!(option: "Beckham")

other_question = new_survey_3.questions.create!(title: "Who is your favorite KISS member?")
other_question.choices.create!(option: "Peter Criss" )
other_question.choices.create!(option: "Ace Freeley")
other_question.choices.create!(option: "Gene Simmons" )
other_question.choices.create!(option: "Paul Stanley")

other_question = new_survey_3.questions.create!(title: "Who is going to win the 2018 World Cup?")
other_question.choices.create!(option: "Brasil")
other_question.choices.create!(option: "Germany")
other_question.choices.create!(option: "Argentina")
other_question.choices.create!(option: "France")

other_question = new_survey_3.questions.create!(title: "Who is going to win the Grammy's?")
other_question.choices.create!(option: "Beck")
other_question.choices.create!(option: "Queen Bey")
other_question.choices.create!(option: "Kanye")
other_question.choices.create!(option: "Imma let you finish")

