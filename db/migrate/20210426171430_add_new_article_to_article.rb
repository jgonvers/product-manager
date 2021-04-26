class AddNewArticleToArticle < ActiveRecord::Migration[6.0]
  def change
    add_reference :articles, :new_article, references: :articles, index: true
    add_foreign_key :articles, :articles, column: :new_article_id
  end
end