class AddContentColumnToPerformances < ActiveRecord::Migration
  def change
    add_column :performances, :content, :string
  end
end
