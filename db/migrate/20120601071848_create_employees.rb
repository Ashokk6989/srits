class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :platform_id
      t.string :eamil
      t.string :location
      t.string :mobile

      t.timestamps
    end
  end
end
