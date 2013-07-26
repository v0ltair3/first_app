# == Schema Information
#
# Table name: devices
#
#  id          :integer          not null, primary key
#  description :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Device < ActiveRecord::Base
  attr_accessible :description, :user_id

  belongs_to :user  
  
  validates :description, :length => { :maximum => 100 }

end
