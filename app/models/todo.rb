class Todo < ActiveRecord::Base
  attr_accessible :date, :task, :time,:commentable_id, :commentable_type,:employee_id, :project_id
  belongs_to :project
  belongs_to :employee
  has_many :comments, :as => :commentable


  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |todo|
        csv << todo.attributes.values_at(*column_names)
      end
    end
  end
end
