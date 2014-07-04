class AddEventIdToChurchEvent < ActiveRecord::Migration
  def change
    add_column :church_events, :event_id, :integer
  end
end
