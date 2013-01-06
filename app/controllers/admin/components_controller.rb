class Admin::ComponentsController < ApplicationController
  layout 'admin'
  before_filter :require_login
  before_filter :check_the_site

  def index
    @components = Component.order(:title)
  end

  def new
    @component = Component.new
  end

  def edit
    @component = Component.find(params[:id])
  end

  def update
    @component = Component.find(params[:id])
    if @component.update_attributes(params[:component])
      redirect_to :action => "index"
    else
      render :action => "edit"
    end
  end

  def create
    @component = Component.new(params[:component])
    if @component.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def destroy
    @component = Component.find(params[:id])
    @component.destroy
    redirect_to :action => "index"
  end
end
