class Seo < ActiveRecord::Base
  #attr_accessible :description, :extra_id, :extra_type, :keywords, :title
  belongs_to :extra, :polymorphic => true
end
