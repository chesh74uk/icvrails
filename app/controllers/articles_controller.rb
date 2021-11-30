# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: %i[show edit update destroy]

  def index
    @articles = Article.all
  end

  def new

  end

  def show; end

  def preview
    # @preview = find_preview(params[:link])
    @preview = HTTParty.post('http://api.linkpreview.net/?key=91b947d8ad96d94eb94a67b2fdf887e5&q=https://www.bbc.co.uk/sounds/play/p01w66tg')
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
