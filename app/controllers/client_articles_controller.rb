class ClientArticlesController < ApplicationController
  def index
    @client_articles = ClientArticle.all.sort_by(&:validity)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
