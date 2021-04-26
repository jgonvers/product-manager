class ClientArticle < ApplicationRecord
  belongs_to :article
  belongs_to :client

  validates :article_code, :unit_sell_cost, :validity, :article_id, :client_id, presence: true
  validates :unit_sell_cost, numericality: { only_integer: true, greater_than: 0 }
  validates :unit_buy_cost, numericality: { only_integer: true, greater_than: 0, allow_nil: true }
end
