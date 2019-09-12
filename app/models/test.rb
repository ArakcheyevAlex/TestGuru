class Test < ApplicationRecord
  def self.titles_by_category_name(category_name)
    categories_ids = Category.where(title: category_name)
    where(category_id: categories_ids).order(title: :desc).pluck(:title)
  end
end
