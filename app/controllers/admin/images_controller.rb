class Admin::ImagesController < ApplicationController
  layout 'admin'
  before_filter :require_login
  before_filter :check_the_site

  def index
    
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(params[:image])
    if @image.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  def edit
    @image = Image.find(params[:id])
  end

  def update
    @image = Image.find(params[:id])
    if @image.update_attributes(params[:image])
      redirect_to :action => "index"
    else
      render :action => "edit"
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to :action => "index"
  end
end
