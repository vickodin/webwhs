class Admin::ReviewsController < ApplicationController
  layout 'admin'
  before_filter :require_login
  before_filter :check_the_site

  def index
    @reviews = Review.order("created_at DESC")
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update_attributes(params[:review])
      redirect_to :action => "index"
    else
      render :action => "edit"
    end
  end

  def create
    @review = Review.new(params[:review])
    if @review.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to :action => "index"
  end
end
