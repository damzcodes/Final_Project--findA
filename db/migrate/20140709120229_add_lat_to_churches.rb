class AddLatToChurches < ActiveRecord::Migration
  def change
    add_column :churches, :lat, :float
  end
end
