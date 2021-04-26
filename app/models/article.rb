class Article < ApplicationRecord
  belongs_to :old_article, class_name: 'Article'
  has_one :new_article, class_name: 'Article', foreign_key: "new_article_id"
  belongs_to :maker

  validates :unit_buy_cost, numericality: { only_integer: true, greater_than: 0 }
  validates :unit_buy_cost, :maker_reference, :description, :maker_id, presence: true
end
