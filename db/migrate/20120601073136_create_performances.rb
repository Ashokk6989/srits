class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :employee_id
      t.string :project_id
      t.string :duration
      t.string :grade

      t.timestamps
    end
  end
end
