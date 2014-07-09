class AddChurchIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :church_id, :integer
  end
end
