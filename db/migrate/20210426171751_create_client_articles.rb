class CreateClientArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :client_articles do |t|
      t.string :article_code
      t.integer :unit_sell_cost
      t.date :validity
      t.references :article, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.string :DDP
      t.integer :unit_buy_cost

      t.timestamps
    end
  end
end
