class AddChurchIdToPastors < ActiveRecord::Migration
  def change
    add_column :pastors, :church_id, :integer
  end
end
