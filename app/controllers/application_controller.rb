class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def not_authenticated
    redirect_to login_url, :alert => t('require_login')
  end
  
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
