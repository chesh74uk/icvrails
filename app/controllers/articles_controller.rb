# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: %i[show edit update destroy]
  before_action :new_article, only: %i[new]

  def index
    @articles = Article.all
  end

  def new; end

  def edit; end

  def show; end

  private

  def new_article
    if current_user.try(:admin?)
      @article = Article.new
    else
      redirect_to action: 'index'
    end
  end

  def set_article
    if current_user.try(:admin?)
      @article = Article.find(params[:id])
    else
      redirect_to action: 'index'
    end
  end
end
