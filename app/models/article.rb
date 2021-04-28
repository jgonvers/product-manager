class Article < ApplicationRecord
  has_one :old_article, class_name: 'Article', foreign_key: "new_article_id"
  belongs_to :new_article, class_name: 'Article', foreign_key: "new_article_id", optional: true
  belongs_to :maker
  has_many :client_articles

  validates :unit_buy_cost, numericality: { only_integer: true, greater_than: 0 }
  validates :unit_buy_cost, :maker_reference, :description, :maker_id, presence: true
end
