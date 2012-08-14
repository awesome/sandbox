class Member < ActiveRecord::Base
  attr_accessible :address, :city, :dob, :mobile_phone, :name, :sex, :user

  validates_presence_of :name, :sex, :mobile_phone, :dob, :city, :address, :user

  has_one :user, :as => :role

  #has_many :resume, :requirement, :video, 
  #has_one :weibo


end
