class RemoveFacebookIdFromAttendee < ActiveRecord::Migration
  def change
    remove_column :attendees, :fb_id, :bigint
  end
end
