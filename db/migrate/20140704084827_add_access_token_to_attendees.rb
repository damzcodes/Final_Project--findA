class AddAccessTokenToAttendees < ActiveRecord::Migration
  def change
    add_column :attendees, :access_token, :string
  end
end
