# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  email            :string(255)      not null
#  crypted_password :string(255)
#  salt             :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class User < ActiveRecord::Base
  authenticates_with_sorcery!
  # attr_accessible :title, :body
  attr_accessible	:email, :password, :password_confirmation
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of	:email
  validates_uniqueness_of :email

  has_one :site
end
