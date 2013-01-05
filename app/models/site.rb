# == Schema Information
#
# Table name: sites
#
#  id         :integer          not null, primary key
#  name       :string(255)      not null
#  title      :string(255)
#  active     :boolean          default(FALSE), not null
#  translit   :boolean          default(TRUE), not null
#  head       :text
#  footer     :text
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Site < ActiveRecord::Base
  belongs_to :user
  attr_accessible :active, :footer, :head, :name, :title, :translit
end
