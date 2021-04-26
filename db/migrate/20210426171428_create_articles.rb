class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :maker_reference, null: false
      t.integer :unit_buy_cost, null: false
      t.text :description, null: false
      t.string :short_description
      t.boolean :contracted
      t.boolean :obsolete
      t.references :maker, null: false, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end