class AddFbIdToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :fb_id, :integer
  end
end
