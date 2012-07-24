class AddFieldnameToComment < ActiveRecord::Migration
  def change
    add_column :comments, :time, :string
  end
end
