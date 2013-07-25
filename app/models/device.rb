class Device < ActiveRecord::Base
  attr_accessible :description, :user_id

  belongs_to :user  
  
  validates :description, :length => { :maximum => 100 }

end
