class Review < ActiveRecord::Base
  attr_accessible :content, :email, :name, :url
end
