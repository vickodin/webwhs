class Admin::NewsController < ApplicationController
  layout 'admin'
  before_filter :require_login
  before_filter :check_the_site

  def index
    @news = News.order("start DESC")
  end

  def show
    @news = News.find(params[:id])
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(params[:news])
    if @news.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def update
    @news = News.find(params[:id])
    if @news.update_attributes(params[:news])
      redirect_to :action => "index"
    else
      render :action => "edit"
    end
  end

  def edit
    @news = News.find(params[:id])
  end

  def destroy
    @news = News.find(params[:id])
    @news.destroy
    redirect_to :action => "index"
  end
end
