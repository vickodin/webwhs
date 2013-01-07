class Document < ActiveRecord::Base
  attr_accessible :name, :attachment, :attachment_cache
  mount_uploader :attachment, AttachmentUploader
end
# == Schema Information
#
# Table name: documents
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  attachment :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

