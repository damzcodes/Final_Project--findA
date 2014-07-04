class AddFacebooksIdToAttendee < ActiveRecord::Migration
  def change
    add_column :attendees, :fb_id, :string
  end
end
