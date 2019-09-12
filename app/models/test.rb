class Test < ApplicationRecord
  def self.titles_by_category_name(category_name)
    joins('JOIN categories ON categories.id = category_id')
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
