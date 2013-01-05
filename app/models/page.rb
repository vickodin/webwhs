class Page < ActiveRecord::Base
  attr_accessible :code, :content, :depth, :lft, :menu, :name, :parent_id, :redirect, :rgt, :site_id, :system, :url
end
