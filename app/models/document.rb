class Document < ActiveRecord::Base
  attr_accessible :name, :attachment, :attachment_cache
  mount_uploader :attachment, AttachmentUploader
end
