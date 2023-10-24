class StaticPagesController < ApplicationController
  def home
    @articles = []
    if params[:search].present?
      @articles = Article.where("title ILIKE ?", "%#{params[:search]}%").includes(:author, :publisher)
      @countries = Country.joins(:article_countries).distinct
    end
  end

  def about
  end
end
