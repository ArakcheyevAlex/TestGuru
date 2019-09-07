class AddColumnsDefault < ActiveRecord::Migration[6.0]
  def up
    change_column_default(:tests, :level, 0)
    add_column(:answers, :correct, :boolean)
    change_column_default(:answers, :correct, false)
  end

  def down
    change_column_default(:tests, :level, nil)
    remove_column(:answers, :correct)
  end
end
