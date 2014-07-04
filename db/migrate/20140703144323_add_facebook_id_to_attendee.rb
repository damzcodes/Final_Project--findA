class AddFacebookIdToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :fb_id, :bigint
  end
end
