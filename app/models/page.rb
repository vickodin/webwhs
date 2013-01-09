# == Schema Information
#
# Table name: pages
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  content    :text
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

  before_save	:check_the_name
  after_find  :init_has_seo
  has_one :seo, :as => :extra, :dependent => :destroy

  accepts_nested_attributes_for :seo, :allow_destroy => true

  attr_accessible :content, :depth, :lft, :menu, :name, :parent_id, :redirect, :rgt, :system, :url, :seo_attributes, :has_seo

  attr_accessor :has_seo

  def title
  	self.name
  end

  def has_seo?
    self.has_seo #seo.blank?
  end

  def has_destroy_seo(cb_value)
     puts "====================destroy SEO! #{cb_value}"
     if cb_value.to_i == 0
      self.seo_attributes = {:id => self.seo.id , :_destroy => '1'}
    end
  end

  private#===========================================

  def check_the_name
  	unless self.system
  		# if self.parent_id.blank?
  		# 	reserved_names = ['sitemap','account','news','contacts','catalog','item','cart','checkout','login','logout','registration']

  		
  	end
  	
  end

  def init_has_seo
    @has_seo = !self.seo.nil?
  end

  
end

