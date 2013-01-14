class News < ActiveRecord::Base
  attr_accessible :autourl, :content, :name, :start, :url
  default_scope {where('start <= ?', Time.now)}
end
