class Recruiter < ActiveRecord::Base
  attr_accessible :address, :city, :company_description, :mobile_phone, :name, :phone, 
  				:user, :website

  validates_presence_of :name, :phone, :address, :user

  belongs_to :user, :as => :role

end
