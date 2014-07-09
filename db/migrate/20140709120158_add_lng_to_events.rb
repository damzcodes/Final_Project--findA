class AddLngToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :lng, :float
  end
end
