class AddFieldnameToPerformance < ActiveRecord::Migration
  def change
    add_column :performances, :start_date, :date
    add_column :performances, :task, :string
    add_column :performances, :client, :string
    add_column :performances, :end_date, :date
  end
end
