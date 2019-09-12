# frozen_string_literal: true

# This file should contain all the record creation needed to seed the
# database with its default values.
# The data can then be loaded with the rails db:seed command (or created
# alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },
#   { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create!(
  [
    { title: 'Programming' },
    { title: 'Math' },
    { title: 'Chemistry' }
  ]
)

tests = Test.create!(
  [
    { title: 'Ruby Beginners', category_id: categories.first.id, level: 1 },
    { title: 'Go Professionals', category_id: categories.first.id, level: 3 },
    { title: 'Crystal First Steps', category_id: categories.first.id, level: 2 },
    { title: 'Algebra', category_id: categories.second.id, level: 1 },
    { title: 'Differential equation', category_id: categories.second.id, level: 2 },
    { title: 'Discontinuous Galerkin method', category_id: categories.second.id, level: 3 },
    { title: 'Chemical physics', category_id: categories.third.id, level: 1 },
    { title: 'Organometallic chemistry', category_id: categories.third.id, level: 2 },
    { title: 'Biochemistry', category_id: categories.third.id, level: 3 }
  ]
)

questions = Question.create!(
  [
    { body: 'RB test Question 1', test_id: tests.first.id },
    { body: 'RB test Question 2', test_id: tests.first.id },
    { body: 'RB test Question 3', test_id: tests.first.id },
    { body: 'Go test Question 1 body', test_id: tests.second.id },
    { body: 'Go test Question 2 body', test_id: tests.second.id },
    { body: 'Go test Question 3 body', test_id: tests.second.id },
    { body: 'Crystal test Question 1 body', test_id: tests.third.id },
    { body: 'Crystal test Question 2 body', test_id: tests.third.id },
    { body: 'Crystal test Question 3 body', test_id: tests.third.id }
  ]
)

Answer.create!(
  [
    { body: 'answer A', question_id: questions.first.id, correct: true },
    { body: 'answer B', question_id: questions.first.id },
    { body: 'answer C', question_id: questions.first.id },
    { body: 'answer A', question_id: questions.second.id },
    { body: 'answer B', question_id: questions.second.id, correct: true },
    { body: 'answer C', question_id: questions.second.id },
    { body: 'answer A', question_id: questions.third.id },
    { body: 'answer B', question_id: questions.third.id },
    { body: 'answer C', question_id: questions.third.id, correct: true },
    { body: 'answer A', question_id: questions.fourth.id, correct: true },
    { body: 'answer B', question_id: questions.fourth.id },
    { body: 'answer C', question_id: questions.fourth.id }
  ]
)

users = User.create!(
  [
    { name: 'Bob' },
    { name: 'Jack' },
    { name: 'Michael' },
    { name: 'John' },
    { name: 'Chuck' },
    { name: 'Alex' }
  ]
)

TestResult.create!(
  [
    { user_id: users.first.id, test_id: tests.first.id, result: 10 },
    { user_id: users.first.id, test_id: tests.second.id, result: 9 },
    { user_id: users.first.id, test_id: tests.third.id, result: 12 },
    { user_id: users.second.id, test_id: tests.first.id, result: 2 },
    { user_id: users.second.id, test_id: tests.second.id, result: 5 },
    { user_id: users.second.id, test_id: tests.third.id, result: 9 }
  ]

)
