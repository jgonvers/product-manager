class ClientsController < ApplicationController
  def index
    @clients = Client.all
  end

  def new
  end

  def create
  end

  def show
    @client = Client.find(params[:id])
    @articles = @client.client_articles.sort_by(&:validity)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
