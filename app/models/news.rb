class News < ActiveRecord::Base
  attr_accessible :autourl, :content, :name, :start, :url
end
