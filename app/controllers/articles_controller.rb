class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
  end

  def create
  end

  def show
    @article = Article.find(params[:id])
    @client_articles = @article.client_articles.sort_by(&:validity)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
