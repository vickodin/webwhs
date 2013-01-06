# == Schema Information
#
# Table name: pages
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  content    :text
#  site_id    :integer
#  code       :string(255)
#  url        :string(255)
#  parent_id  :integer
#  lft        :integer
#  rgt        :integer
#  depth      :integer
#  system     :boolean
#  redirect   :string(255)
#  menu       :boolean
#  created_at :datetime        not null
#  updated_at :datetime        not null
#
class Page < ActiveRecord::Base
  include TheSortableTree::Scopes
  acts_as_nested_set
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


