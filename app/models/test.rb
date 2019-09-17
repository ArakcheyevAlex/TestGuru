class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :questions, dependent: :destroy
  has_many :test_results, dependent: :destroy
  has_many :users, through: :test_results

  def self.titles_by_category_name(category_name)
    joins('JOIN categories ON categories.id = category_id')
      .where(categories: { title: category_name })
      .order(title: :desc)
      .pluck(:title)
  end
end
