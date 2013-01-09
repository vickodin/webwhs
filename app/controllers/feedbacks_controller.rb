class FeedbacksController < ApplicationController
  def show
    redirect_to :action => "new"
  end
  def new
    @feedback = Feedback.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @feedback = Feedback.new(params[:feedback])
    if @feedback.save
      respond_to do |format|
        format.html
        format.js
      end
    else
      respond_to do |format|
        format.html
        format.js
      end
    end
  end
end
