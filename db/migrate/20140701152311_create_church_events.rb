class CreateChurchEvents < ActiveRecord::Migration
  def change
    create_table :church_events do |t|

      t.timestamps
    end
  end
end
