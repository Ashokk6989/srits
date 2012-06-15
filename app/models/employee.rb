class Employee < ActiveRecord::Base
  attr_accessible :eamil, :location, :mobile, :name, :platform_id
  belongs_to :platform
  has_many :performances
end
