class User < ApplicationRecord
  has_many :tests, through: :test_result

  def tests_by_level(level)
    Test.joins('INNER JOIN test_results ON test_results.test_id = tests.id')
        .where(test_results: { user_id: id })
        .where(tests: { level: level })
  end
end
