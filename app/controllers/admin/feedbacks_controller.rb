class Admin::FeedbacksController < ApplicationController
  layout 'admin'
  before_filter :require_login
  before_filter :check_the_site

  def index
    @feedbacks = Feedback.order("created_at DESC")
  end

  def show
    @feedback = Feedback.find(params[:id])
  end

  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy
    redirect_to :action => "index"
  end
end
