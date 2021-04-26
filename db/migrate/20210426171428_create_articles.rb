class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :maker_reference
      t.integer :unit_buy_cost
      t.text :description
      t.string :short_description
      t.boolean :contracted
      t.boolean :obsolete
      t.references :new_article, null: false, foreign_key: true
      t.references :maker, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
