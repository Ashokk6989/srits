class Platform < ActiveRecord::Base
  attr_accessible :platform, :employee_id
  has_many :employees
end
