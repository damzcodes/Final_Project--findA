class CreateEventAttendees < ActiveRecord::Migration
  def change
    create_table :event_attendees do |t|

      t.timestamps
    end
  end
end
