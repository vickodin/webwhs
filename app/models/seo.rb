class Seo < ActiveRecord::Base
  belongs_to :extra, :polymorphic => true
  attr_accessible :description, :extra_id, :extra_type, :keywords, :title
  
end
