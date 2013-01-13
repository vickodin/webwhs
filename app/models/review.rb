class Review < ActiveRecord::Base
  attr_accessible :content, :email, :name, :url
  scope :approved,  -> {where(:approved => true)}
end
