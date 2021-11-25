class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  private

  def set_article
    if current_user.try(:admin?)
      @article = Article.find(params[:id])
    else
      redirect_to action: 'index'
    end
  end

end
