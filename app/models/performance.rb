class Performance < ActiveRecord::Base
  attr_accessible :duration, :grade, :employee_id, :project_id
  belongs_to :project
  belongs_to :employee
end
