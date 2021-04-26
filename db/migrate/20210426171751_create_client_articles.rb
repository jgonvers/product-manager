class CreateClientArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :client_articles do |t|
      t.string :article_code, null: false
      t.integer :unit_sell_cost, null: false
      t.date :validity, null: false
      t.references :article, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.string :DDP
      t.integer :unit_buy_cost

      t.timestamps
    end
  end
end
