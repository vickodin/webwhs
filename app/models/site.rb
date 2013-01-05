class Site < ActiveRecord::Base
  belongs_to :user
  attr_accessible :active, :footer, :head, :name, :title, :translit
end
