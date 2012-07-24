class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.date :date
      t.string :task
      t.string :time

      t.timestamps
    end
  end
end
