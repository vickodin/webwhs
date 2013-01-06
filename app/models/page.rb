class Page < ActiveRecord::Base
  attr_accessible :code, :content, :depth, :lft, :menu, :name, :parent_id, :redirect, :rgt, :site_id, :system, :url
  belongs_to :site

  before_save	:check_the_name

  def title
  	self.name
  end


  private#===========================================

  def check_the_name
  	unless self.system
  		# if self.parent_id.blank?
  		# 	reserved_names = ['sitemap','account','news','contacts','catalog','item','cart','checkout','login','logout','registration']

  		
  	end
  	
  end

end
