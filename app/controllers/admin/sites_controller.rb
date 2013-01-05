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
  
  private
  def check_the_site
    @site = current_user.site
    
    # todo: discuss case when no site
    unless @site
      @site = Site.new(
        :name     => 'test.local',
        :title    => 'Test',
        :active   => true,
        :translit => true,
        :head     => nil,
        :footer   => nil
      )
      @site.user = current_user
      @site.save
    end
  end
end
