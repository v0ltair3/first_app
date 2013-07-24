class User < ActiveRecord::Base
  attr_accessible :email, :firstName, :lastName
  has_many :devices
end
