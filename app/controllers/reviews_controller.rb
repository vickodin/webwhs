class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:review])
    if @review.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def index
    @reviews = Review.approved.page(params[:page]).per(5) #order(:created_at)
  end
end
