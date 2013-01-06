class Feedback < ActiveRecord::Base
  attr_accessible :content, :email, :name, :phone, :subject, :url
end
