class Product < ActiveRecord::Base
  attr_accessible :code, :issue_date, :name
end
