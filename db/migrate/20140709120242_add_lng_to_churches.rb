class AddLngToChurches < ActiveRecord::Migration
  def change
    add_column :churches, :lng, :float
  end
end
