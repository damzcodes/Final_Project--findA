class RemoveFbIdFromAttendee < ActiveRecord::Migration
  def change
    remove_column :attendees, :fb_id, :integer
  end
end
