class AddNotNullConstraints < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:answers, :questions_id, false)
    change_column_null(:categories, :title, false)
    change_column_null(:questions, :body, false)
    change_column_null(:questions, :tests_id, false)
    change_column_null(:tests, :title, false)
    change_column_null(:tests, :level, false)
    change_column_null(:tests, :categories_id, false)
    change_column_null(:users, :name, false)
  end
end
