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
User.create!(
  [
    {
      name: 'Bob',
      email: 'bob@testguru.com',
      password: '11111111',
      type: 'Admin'
    },
    {
      name: 'Jack',
      email: 'jack@testguru.com',
      password: '11111111',
      type: 'User'
    },
    {
      name: 'Michael',
      email: 'michael@testguru.com',
      password: '11111111',
      type: 'User'
    }
  ]
)

Category.create!(
  [
    { title: 'Programming' },
    { title: 'Math' },
    { title: 'Chemistry' }
  ]
)

Test.create!(
  [
    { title: 'Ruby Beginners', category: Category.first, level: 1, author: User.first },
    { title: 'Go Professionals', category: Category.first, level: 3, author: User.first },
    { title: 'Crystal First Steps', category: Category.first, level: 2, author: User.first },
    { title: 'Algebra', category: Category.second, level: 1, author: User.second },
    { title: 'Differential equation', category: Category.second, level: 2, author: User.second },
    { title: 'Discontinuous Galerkin method', category: Category.second, level: 3, author: User.second },
    { title: 'Chemical physics', category: Category.third, level: 1, author: User.third },
    { title: 'Organometallic chemistry', category: Category.third, level: 2, author: User.third },
    { title: 'Biochemistry', category: Category.third, level: 3, author: User.third }
  ]
)

Question.create!(
  [
    { body: 'RB test Question 1', test: Test.first },
    { body: 'RB test Question 2', test: Test.first },
    { body: 'RB test Question 3', test: Test.first },
    { body: 'Go test Question 1 body', test: Test.second },
    { body: 'Go test Question 2 body', test: Test.second },
    { body: 'Go test Question 3 body', test: Test.second },
    { body: 'Crystal test Question 1 body', test: Test.third },
    { body: 'Crystal test Question 2 body', test: Test.third },
    { body: 'Crystal test Question 3 body', test: Test.third }
  ]
)

Answer.create!(
  [
    { body: 'answer A', question: Question.first, correct: true },
    { body: 'answer B', question: Question.first },
    { body: 'answer C', question: Question.first },
    { body: 'answer A', question: Question.second },
    { body: 'answer B', question: Question.second, correct: true },
    { body: 'answer C', question: Question.second },
    { body: 'answer A', question: Question.third },
    { body: 'answer B', question: Question.third },
    { body: 'answer C', question: Question.third, correct: true },
    { body: 'answer A', question: Question.fourth, correct: true },
    { body: 'answer B', question: Question.fourth },
    { body: 'answer C', question: Question.fourth }
  ]
)

TestPassage.create!(
  [
    { user: User.first, test: Test.first, correct_questions: 3 },
    { user: User.first, test: Test.second, correct_questions: 9 },
    { user: User.first, test: Test.third, correct_questions: 12 },
    { user: User.second, test: Test.first, correct_questions: 2 },
    { user: User.second, test: Test.second, correct_questions: 5 },
    { user: User.second, test: Test.third, correct_questions: 9 }
  ]
)
