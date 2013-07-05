User.create name: "Joe Smoe", email: "j@gmail.com", password: "password"
User.create name: "Larry Davis", email: "ld@gmail.com", password: "password"

Survey.create title: "questions for your significant other or your hand", creator_id: 1
Question.create content: "Who is your favorite person", survey_id: 1
Choice.create answer: "Rowland", question_id: 1
Choice.create answer: "Rowland jr", question_id: 1
Choice.create answer: "Rowland jr jr", question_id: 1
Question.create content: "How many Rowlands do you want in your life", survey_id: 1
Choice.create answer: "all of them", question_id:2
Choice.create answer: "all of them and then some", question_id:2
Choice.create answer: "all of them plus one", question_id:2
