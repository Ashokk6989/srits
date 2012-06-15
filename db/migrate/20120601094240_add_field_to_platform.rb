class AddFieldToPlatform < ActiveRecord::Migration
  def change
    add_column :platforms, :employee_id, :integer
  end
end
