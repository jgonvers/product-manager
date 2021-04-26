class Client < ApplicationRecord
  has_many :client_articles

  validates :name, presence: true
end
