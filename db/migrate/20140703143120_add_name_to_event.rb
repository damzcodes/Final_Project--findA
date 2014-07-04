class AddNameToEvent < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
    add_column :events, :type, :string
    add_column :events, :description, :text
    add_column :events, :start_time, :string
    add_column :events, :end_time, :string
    add_column :events, :date, :string
  end
end
