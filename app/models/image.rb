class Image < ActiveRecord::Base
  belongs_to :album
  attr_accessible :name, :picture, :album_id
  mount_uploader :picture, PictureUploader
end
