class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true

  validate :validate_answers_count, on: :create

  scope :correct, -> { where(correct: true) }

  def validate_number_of_answers
    return if question.answers.count <= 4

    errors.add(:question, 'too many answers (must be less then 5')
  end
end
