class NewsController < ApplicationController
  def index
    @news = News.page(params[:page]).per(5)
  end
end
