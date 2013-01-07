class Admin::SitesController < ApplicationController
  layout 'admin'
  before_filter :require_login
  before_filter :check_the_site
  
  def show
  end

  def edit
  end

  def update
    if @site.update_attributes(params[:site])
      flash[:success] = t('site.update_success')
      redirect_to :action => "show"
    else
      render :action => "edit"
    end
  end
end
