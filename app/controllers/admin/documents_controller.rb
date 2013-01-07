class Admin::DocumentsController < ApplicationController
  layout 'admin'
  before_filter :require_login
  before_filter :check_the_site

  def index
    @documents = Document.order(:created_at)
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(params[:document])
    if @document.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def update
    @document = Document.find(params[:id])
    if @document.update_attributes(params[:document])
      redirect_to :action => "index"
    else
      render :action => "edit"
    end
  end

  def edit
    @document = Document.find(params[:id])
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
    redirect_to :action => "index"
  end
end
