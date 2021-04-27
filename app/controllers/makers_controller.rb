class MakersController < ApplicationController
  def index
    @makers = Maker.all
  end

  def new
  end

  def create
  end

  def show
    @maker = Maker.find(params[:id])
    @articles = @maker.articles
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
