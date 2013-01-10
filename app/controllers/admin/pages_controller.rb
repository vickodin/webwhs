class Admin::PagesController < ApplicationController
  include TheSortableTreeController::Rebuild
  layout 'admin'
  before_filter :require_login

  def index
     #@pages = Page.order(:lft)
     @pages = Page.nested_set.select('id, name, content, parent_id').all
  end

  def manage
     #@pages = Page.order(:lft)
     @pages = Page.nested_set.select('id, name, content, parent_id').all
  end

  def show
    @page = Page.find(params[:id])

  end

  def new
    @page = Page.new
    @page.build_seo

  end

  def edit
    @page = Page.find(params[:id])
    @page.build_seo unless @page.seo
    #@page =  Page.find_by_code(params[:id])
  end

  def create
    #check using seo
    if params[:page][:has_seo].to_i  == 0
      #if checkbox not set - remove seo attributes
      params[:page].delete :seo_attributes
    end
    @page = Page.new(params[:page])
    
    if @page.save
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end

  def update
    @page = Page.find(params[:id])
    @page.has_destroy_seo(params[:page][:has_seo])
    if @page.update_attributes!(params[:page])
      redirect_to :action => "index"
    else
      render :action => "edit"
    end
    
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy

    redirect_to :action => "index"
  end
end
