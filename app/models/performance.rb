class Performance < ActiveRecord::Base
  attr_accessible :duration, :grade, :employee_id, :project_id,:start_date,:task,:client,:end_date,:commentable_id, :commentable_type
  belongs_to :project
  belongs_to :employee
  has_many :comments, :as => :commentable
end

class PerformancePdf < Prawn::Document
  def initialize(performance)
    super(top_margin: 70)
    @performance=performance
    p @performance
    performance_view
    performance_item
  end
  
  
  
  def performance_view
  text "performance show"
  end
  
  def performance_item
    move_down 20
    table performance_item_rows do
      row(0).font_style = :bold
      columns(1..3).align = :right
      self.row_colors = ["DDDDDD", "FFFFFF"]
      self.header = true
    end
  end
  
  def performance_item_rows
    [["Name", "Project", "Client", "Date", "Task", "Duration", "Grade"]]+
    [[@performance.employee.name,@performance.project.name,@performance.project.client,@performance.start_date,@performance.task,
    @performance.duration,@performance.grade]]
  end
  
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
 end 
end




