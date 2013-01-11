class Seo < ActiveRecord::Base
  belongs_to :extra, :polymorphic => true
  attr_accessible :description, :extra_id, :extra_type, :keywords, :title
  
  before_create :check_necessity
  after_save :check_remove_necessity

  private

  def check_necessity
    return self.extra.use_seo
  end

  def check_remove_necessity
    unless self.extra.use_seo
      self.destroy
    end
  end
end
