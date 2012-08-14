class Admin < ActiveRecord::Base
  attr_accessible :admin, :mobile_phone, :name, :user

  validates_presence_of :user
  has_one :user, :as => :role
  
end
