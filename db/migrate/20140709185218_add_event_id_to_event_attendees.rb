class AddEventIdToEventAttendees < ActiveRecord::Migration
  def change
    add_column :event_attendees, :event_id, :integer
    add_column :event_attendees, :attendee_id, :integer
  end
end
