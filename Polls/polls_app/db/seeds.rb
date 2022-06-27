# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Response.destroy_all
AnswerChoice.destroy_all
Question.destroy_all
Poll.destroy_all
User.destroy_all

# USERS

david = User.create!(
    username: "david_hong"
)

user1 = User.create!(
    username: "JimmyJohns"
)

user2 = User.create!(
    username: "LebronJames"
)

user3 = User.create!(
    username: "RIP_bean"
)

user4 = User.create!(
    username: "Ice_Traeee"
)

# POLLS
poll1 = Poll.create!(author_id: user4.id, title: "NBA Discussion")
poll2 = Poll.create!(author_id: user4.id, title: "Software Questions")
poll3 = Poll.create!(author_id: user4.id, title: "Political Poll")

# QUESTIONS
question1 = Question.create!(poll_id: poll1.id, text: "Who is the best basketball player of the 2000s?")
question2 = Question.create!(poll_id: poll1.id, text: "Who is the best basketball player of the 2010s?")
question3 = Question.create!(poll_id: poll1.id, text: "Who is the best basketball player of the 2020s?")

question4 = Question.create!(poll_id: poll2.id, text: "Is Ruby better than Python?")
question5 = Question.create!(poll_id: poll2.id, text: "What is your main programming language of choice?")
question6 = Question.create!(poll_id: poll2.id, text: "What was your first programming language?")

question7 = Question.create!(poll_id: poll2.id, text: "What is your political party?")
question8 = Question.create!(poll_id: poll2.id, text: "What age group are you in?")
question9 = Question.create!(poll_id: poll2.id, text: "What region of the USA are you from?")


# ANSWER CHOICES
ac01 = AnswerChoice.create!(question_id: question1.id, text: "Kobe Bryant")
ac02 = AnswerChoice.create!(question_id: question1.id, text: "Tim Duncan")
ac03 = AnswerChoice.create!(question_id: question1.id, text: "Allen Iverson")
ac04 = AnswerChoice.create!(question_id: question1.id, text: "Lebron James")

ac05 = AnswerChoice.create!(question_id: question2.id, text: "Lebron James")
ac06 = AnswerChoice.create!(question_id: question2.id, text: "Kevin Durant")
ac07 = AnswerChoice.create!(question_id: question2.id, text: "Steph Curry")
ac08 = AnswerChoice.create!(question_id: question2.id, text: "James Harden")

ac09 = AnswerChoice.create!(question_id: question3.id, text: "Steph Curry")
ac10 = AnswerChoice.create!(question_id: question3.id, text: "Lebron James")
ac11 = AnswerChoice.create!(question_id: question3.id, text: "Giannis Antetokounmpo")
ac12 = AnswerChoice.create!(question_id: question3.id, text: "Luka Doncic")

ac13 = AnswerChoice.create!(question_id: question4.id, text: "Yes")
ac14 = AnswerChoice.create!(question_id: question4.id, text: "No")

ac15 = AnswerChoice.create!(question_id: question5.id, text: "Ruby")
ac16 = AnswerChoice.create!(question_id: question5.id, text: "Python")
ac17 = AnswerChoice.create!(question_id: question5.id, text: "Java")
ac18 = AnswerChoice.create!(question_id: question5.id, text: "C")
ac19 = AnswerChoice.create!(question_id: question5.id, text: "JavaScript")
ac20 = AnswerChoice.create!(question_id: question5.id, text: "Other")

ac21 = AnswerChoice.create!(question_id: question6.id, text: "Ruby")
ac22 = AnswerChoice.create!(question_id: question6.id, text: "Python")
ac23 = AnswerChoice.create!(question_id: question6.id, text: "Java")
ac24 = AnswerChoice.create!(question_id: question6.id, text: "C")
ac25 = AnswerChoice.create!(question_id: question6.id, text: "JavaScript")
ac26 = AnswerChoice.create!(question_id: question6.id, text: "Other")

ac27 = AnswerChoice.create!(question_id: question7.id, text: "Democrat")
ac28 = AnswerChoice.create!(question_id: question7.id, text: "Republican")
ac29 = AnswerChoice.create!(question_id: question7.id, text: "Other")

ac30 = AnswerChoice.create!(question_id: question8.id, text: "18-25")
ac31 = AnswerChoice.create!(question_id: question8.id, text: "26-30")
ac32 = AnswerChoice.create!(question_id: question8.id, text: "30-40")
ac33 = AnswerChoice.create!(question_id: question8.id, text: "40-50")
ac34 = AnswerChoice.create!(question_id: question8.id, text: "50-60")
ac35 = AnswerChoice.create!(question_id: question8.id, text: "60+")

ac36 = AnswerChoice.create!(question_id: question9.id, text: "Northeast")
ac37 = AnswerChoice.create!(question_id: question9.id, text: "South")
ac38 = AnswerChoice.create!(question_id: question9.id, text: "Midwest")
ac39 = AnswerChoice.create!(question_id: question9.id, text: "Pacific Northwest")
ac40 = AnswerChoice.create!(question_id: question9.id, text: "Southwest")
ac41 = AnswerChoice.create!(question_id: question8.id, text: "Southeast")

# RESPONSES
puts "HII"
response01 = Response.create!(user_id: david.id, answer_choice_id: ac01.id)
response02 = Response.create!(user_id: david.id, answer_choice_id: ac05.id)
response03 = Response.create!(user_id: david.id, answer_choice_id: ac09.id)
response04 = Response.create!(user_id: david.id, answer_choice_id: ac13.id)
response05 = Response.create!(user_id: david.id, answer_choice_id: ac15.id)
response06 = Response.create!(user_id: david.id, answer_choice_id: ac21.id)
response07 = Response.create!(user_id: david.id, answer_choice_id: ac27.id)
response08 = Response.create!(user_id: david.id, answer_choice_id: ac30.id)
response09 = Response.create!(user_id: david.id, answer_choice_id: ac36.id)

response10 = Response.create!(user_id: user1.id, answer_choice_id: ac02.id)
response11 = Response.create!(user_id: user1.id, answer_choice_id: ac06.id)
response12 = Response.create!(user_id: user1.id, answer_choice_id: ac09.id)
response13 = Response.create!(user_id: user1.id, answer_choice_id: ac14.id)
response14 = Response.create!(user_id: user1.id, answer_choice_id: ac16.id)
response15 = Response.create!(user_id: user1.id, answer_choice_id: ac23.id)
response16 = Response.create!(user_id: user1.id, answer_choice_id: ac28.id)
response17 = Response.create!(user_id: user1.id, answer_choice_id: ac35.id)
response18 = Response.create!(user_id: user1.id, answer_choice_id: ac36.id)