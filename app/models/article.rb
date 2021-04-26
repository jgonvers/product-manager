class Article < ApplicationRecord
  belongs_to :old_article, class_name: 'Article'
  has_one :new_article, class_name: 'Article', foreign_key: "new_article_id"
  belongs_to :maker
end
