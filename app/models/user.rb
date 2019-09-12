class User < ApplicationRecord
  def tests_by_level(level)
    users_tests_ids = TestResult.where(user_id: id).select(:test_id)

    Test.where(id: users_tests_ids, level: level)
  end
end
