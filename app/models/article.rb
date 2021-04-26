class Article < ApplicationRecord
  belongs_to :new_article
  belongs_to :maker
end
