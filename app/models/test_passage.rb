class TestPassage < ApplicationRecord
  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :before_validation_set_current_question

  private

  def correct_answers
    current_question.answers.correct
  end

  def correct_answer?(answer_ids)
    correct_answers.ids.sort == Array(answer_ids).map(&:to_i).sort
  end

  def next_question
    if current_question
      test.questions.where('id > ?', current_question.id).first
    else
      test.questions.first
    end
  end

  def before_validation_set_current_question
    self.current_question = next_question
  end
end
